<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<div class="col mt-4">
	<ul class="nav nav-tabs" id="myTab" role="tablist">
		<li class="nav-item" role="presentation"><a
			class="nav-link active" id="videoEditing-tab" data-toggle="tab"
			href="#videoEditing" role="tab" aria-controls="videoEditing"
			aria-selected="true">Video Editing</a></li>
		<li class="nav-item" role="presentation"><a class="nav-link"
			id="videoList-tag-tab" data-toggle="tab" href="#videoList-tag"
			role="tab" aria-controls="videoList-tag" aria-selected="false">Video
				List</a></li>
	</ul>
	<div class="tab-content" id="myTabContent">
		<div class="tab-pane fade show active" id="videoEditing"
			role="tabpanel" aria-labelledby="videoEditing-tab">
			<form action="" method="post">
				<div class="card">
					<div class="card-body">
						<div class="row">
							<div class="col-3">
								<div class="border p-3">
									<img src="../images/PC.jpg" alt="" class="img-fluid">
								</div>
							</div>
							<div class="col-9">
								<div class="form-group">
									<label for="youtubeId">Youtube ID</label> <input type="text"
										class="form-control" name="youtubeId" id="youtubeId"
										aria-describedby="youtubeIdHid" placeholder="youtubeId">
									<small id="youtubeIdHid" class="form-text text-muted">Youtube
										ID is required</small>
								</div>
								<div class="form-group">
									<label for="videoTitle">Video Title</label> <input type="text"
										class="form-control" name="videoTitle" id="videoTitle"
										aria-describedby="videoTitleHid" placeholder="videoTitle">
									<small id="videoTitleHid" class="form-text text-muted">Video
										Title is required</small>
								</div>
								<div class="form-group">
									<label for="viewCount">View Count</label> <input type="text"
										class="form-control" name="viewCount" id="viewCount"
										aria-describedby="viewCountHid" placeholder="viewCount">
									<small id="viewCountHid" class="form-text text-muted">View
										Count is required</small>
								</div>
								<div class="form-check form-check-inline">
									<label> <input type="radio" class="form-check-input"
										value="true" name="status" id="status">Active
									</label> <label> <input type="radio" class="form-check-input"
										value="false" name="status" id="status">Inactive
									</label>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col">
								<label for="description">Description</label>
								<textarea name="description" id="description" cols="30" rows="4"
									class="form-control"></textarea>
							</div>
						</div>
					</div>
					<div class="card-footer text-muted">
						<div class="btn btn-primary">Create</div>
						<div class="btn btn-warning">Update</div>
						<div class="btn btn-danger">Delete</div>
						<div class="btn btn-info">Reset</div>
					</div>
				</div>
			</form>
		</div>
		<div class="tab-pane fade" id="videoList-tag" role="tabpanel"
			aria-labelledby="videoList-tag-tab">
			<table class="table table-stripe">
				<tr>
					<td>Youtube ID</td>
					<td>Video Title</td>
					<td>View Count</td>
					<td>Status</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>YTT</td>
					<td>Java</td>
					<td>101</td>
					<td>Active</td>
					<td><a href=""><i class="fa fa-edit" aria-hidden="true"></i>Edit</a>
						<a href=""><i class="fa fa-trash" aria-hidden="true"></i>Delete</a>
					</td>
				</tr>
			</table>
		</div>
	</div>
</div>