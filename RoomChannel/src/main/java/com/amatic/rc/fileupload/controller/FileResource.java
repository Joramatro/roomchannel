package com.amatic.rc.fileupload.controller;

import java.io.IOException;
import java.net.URISyntaxException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.ws.rs.Consumes;
import javax.ws.rs.DELETE;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.Response;
import javax.ws.rs.core.Response.Status;

import org.springframework.beans.factory.annotation.Autowired;

import com.amatic.rc.dto.Channel;
import com.amatic.rc.fileupload.dto.Entity;
import com.amatic.rc.fileupload.dto.FileMeta;
import com.amatic.rc.fileupload.dto.FileUrl;
import com.amatic.rc.service.UChannelService;
import com.google.appengine.api.blobstore.BlobInfo;
import com.google.appengine.api.blobstore.BlobInfoFactory;
import com.google.appengine.api.blobstore.BlobKey;
import com.google.appengine.api.blobstore.BlobstoreFailureException;
import com.google.appengine.api.blobstore.BlobstoreService;
import com.google.appengine.api.blobstore.BlobstoreServiceFactory;
import com.google.appengine.api.images.ImagesService;
import com.google.appengine.api.images.ImagesServiceFactory;
import com.google.appengine.api.images.ServingUrlOptions;
import com.google.appengine.labs.repackaged.com.google.common.collect.Lists;

@Path("/file")
public class FileResource {

	private final BlobstoreService blobstoreService = BlobstoreServiceFactory
			.getBlobstoreService();
	private final BlobInfoFactory blobInfoFactory = new BlobInfoFactory();

	@Autowired
	private UChannelService uChannelService;

	/* step 1. get a unique url */

	@DELETE
	@Path("/{key}")
	public Response delete(@PathParam("key") String key,
			@Context HttpServletRequest req, @Context HttpServletResponse res) {
		Status status;
		try {
			blobstoreService.delete(new BlobKey(key));
			status = Status.OK;
		} catch (BlobstoreFailureException bfe) {
			status = Status.NOT_FOUND;
		}
		HttpSession session = req.getSession();
		Channel channel = uChannelService.getChannel((String) session
				.getAttribute("newChannel"));
		List<String> lImages = channel.getlImages();
		lImages.remove(key);
		uChannelService.update(channel);

		return Response.status(status).build();
	}

	/* step 2. post a file */

	@GET
	@Path("/url")
	public Response getCallbackUrl() {
		/* this is /_ah/upload and it redirects to its given path */
		String url = blobstoreService.createUploadUrl("/rest/file");
		return Response.ok(new FileUrl(url)).build();
	}

	/* step 3. redirected to the meta info */

	@POST
	@Consumes(MediaType.MULTIPART_FORM_DATA)
	public Response post(@Context HttpServletRequest req,
			@Context HttpServletResponse res) throws IOException,
			URISyntaxException {
		Map<String, BlobKey> blobs = blobstoreService.getUploadedBlobs(req);
		BlobKey blobKey = blobs.get("files[]");
		// res.sendRedirect(blobKey.getKeyString() + "/meta");

		BlobInfo info = blobInfoFactory.loadBlobInfo(blobKey);
		HttpSession session = req.getSession();

		String name = info.getFilename();
		long size = info.getSize();

		ImagesService imagesService = ImagesServiceFactory.getImagesService();

		int sizeImage = ImagesService.SERVING_SIZES_LIMIT;
		String url = imagesService.getServingUrl(ServingUrlOptions.Builder
				.withBlobKey(blobKey).crop(true).imageSize(sizeImage));

		Channel channel = uChannelService.getChannel((String) session
				.getAttribute("newChannel"));
		List<String> lImages = channel.getlImages();
		lImages.add(url);
		List<String> lImagesKeys = channel.getlImagesKeys();
		lImagesKeys.add(blobKey.getKeyString());

		uChannelService.update(channel);

		int sizePreview = 80;
		String urlPreview = imagesService
				.getServingUrl(ServingUrlOptions.Builder.withBlobKey(blobKey)
						.crop(true).imageSize(sizePreview));

		FileMeta meta = new FileMeta(name, size, url, urlPreview);

		List<FileMeta> metas = Lists.newArrayList(meta);
		Entity entity = new Entity(metas);
		return Response.ok(entity, MediaType.APPLICATION_JSON).build();
	}

	/* step 4. download the file */

	@GET
	@Path("/{key}/meta")
	public Response redirect(@PathParam("key") String key) throws IOException {
		BlobKey blobKey = new BlobKey(key);
		BlobInfo info = blobInfoFactory.loadBlobInfo(blobKey);

		String name = info.getFilename();
		long size = info.getSize();
		String url = "/rest/file/" + key;

		ImagesService imagesService = ImagesServiceFactory.getImagesService();
		ServingUrlOptions.Builder.withBlobKey(blobKey).crop(true).imageSize(80);

		String urlPreview = imagesService
				.getServingUrl(ServingUrlOptions.Builder.withBlobKey(blobKey)
						.crop(true).imageSize(80));

		FileMeta meta = new FileMeta(name, size, url, urlPreview);

		List<FileMeta> metas = Lists.newArrayList(meta);
		Entity entity = new Entity(metas);
		return Response.ok(entity, MediaType.APPLICATION_JSON).build();
	}

	/* step 5. delete the file */

	@GET
	@Path("/{key}")
	public Response serve(@PathParam("key") String key,
			@Context HttpServletResponse response) throws IOException {
		BlobKey blobKey = new BlobKey(key);
		final BlobInfo blobInfo = blobInfoFactory.loadBlobInfo(blobKey);
		response.setHeader("Content-Disposition", "attachment; filename="
				+ blobInfo.getFilename());
		BlobstoreServiceFactory.getBlobstoreService().serve(blobKey, response);
		return Response.ok().build();
	}
}