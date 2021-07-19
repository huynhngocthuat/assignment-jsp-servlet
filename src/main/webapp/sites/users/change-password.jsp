<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<div class="offset-3 col-6 mt-4">
	<form action="" method="post">
		<div class="card">
			<div class="card-header">Change Password</div>
			<div class="card-body">
				<div class="row">
					<div class="col">
						<div class="form-group">
							<label for="username">Username</label> <input type="text"
								class="form-control" name="username" id="username"
								aria-describedby="usernameHid" placeholder="username"> <small
								id="usernameHid" class="form-text text-muted">Username
								is required</small>
						</div>
						<div class="form-group">
							<label for="password">Password</label> <input type="password"
								class="form-control" name="password" id="password"
								placeholder="password">
						</div>
					</div>
					<div class="col">
						<div class="form-group">
							<label for="currentPassword">Current password</label> <input
								type="password" class="form-control" name="currentPassword"
								id="currentPassword" placeholder="currentPassword">
						</div>
						<div class="form-group">
							<label for="confirmPassword">Confirm Password</label> <input
								type="password" class="form-control" name="confirmPassword"
								id="confirmPassword" placeholder="confirmPassword">
						</div>
					</div>
				</div>
			</div>
			<div class="card-footer text-muted">
				<button class="btn btn-success">Change Password</button>
			</div>
		</div>
	</form>
</div>