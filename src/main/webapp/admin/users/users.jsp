<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<div class="col mt-4">
	<ul class="nav nav-tabs" id="myTab" role="tablist">
		<li class="nav-item" role="presentation"><a
			class="nav-link active" id="videoEditing-tab" data-toggle="tab"
			href="#videoEditing" role="tab" aria-controls="videoEditing"
			aria-selected="true">User Editing</a></li>
		<li class="nav-item" role="presentation"><a class="nav-link"
			id="userList-tag-tab" data-toggle="tab" href="#userList-tag"
			role="tab" aria-controls="userList-tag" aria-selected="false">User
				List</a></li>
	</ul>
	<div class="tab-content" id="myTabContent">
		<div class="tab-pane fade show active" id="videoEditing"
			role="tabpanel" aria-labelledby="videoEditing-tab">
			<form action="" method="post">
				<div class="card">
					<div class="card-body">
						<div class="row">
							<div class="col">
								<div class="form-group">
									<label for="username">Username</label> <input type="text"
										class="form-control" name="username" id="username"
										aria-describedby="usernameHid" placeholder="username">
									<small id="usernameHid" class="form-text text-muted">Username
										is required</small>
								</div>
								<div class="form-group">
									<label for="fullname">Fullname</label> <input type="text"
										class="form-control" name="fullname" id="fullname"
										aria-describedby="fullnameHid" placeholder="fullname">
									<small id="fullnameHid" class="form-text text-muted">Fullname
										is required</small>
								</div>
							</div>
							<div class="col">
								<div class="form-group">
									<label for="password">Password</label> <input type="password"
										class="form-control" name="password" id="password"
										aria-describedby="passwordHid" placeholder="password">
									<small id="passwordHid" class="form-text text-muted">Password
										is required</small>
								</div>
								<div class="form-group">
									<label for="email">Email</label> <input type="text"
										class="form-control" name="email" id="email"
										aria-describedby="emailHid" placeholder="email"> <small
										id="emailHid" class="form-text text-muted">Email is
										required</small>
								</div>
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
					<td>Username</td>
					<td>Fullname</td>
					<td>Email</td>
					<td>Role</td>
					<td>&nbsp;</td>
				</tr>
				<tr>
					<td>huynhngocthuat</td>
					<td>Huynh Ngoc Thuat</td>
					<td>huynhthuat852@gmail.com</td>
					<td>Admin</td>
					<td><a href=""><i class="fa fa-edit" aria-hidden="true"></i>Edit</a>
						<a href=""><i class="fa fa-trash" aria-hidden="true"></i>Delete</a>
					</td>
				</tr>
			</table>
		</div>
	</div>
</div>