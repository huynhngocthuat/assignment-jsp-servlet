<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<div class="offset-4 col-4">
	<form action="" method="post">
		<div class="card mt-5">
			<div class="card-header">
				<b>Forgot Password</b>
			</div>
			<div class="card-body">
				<div class="form-group">
					<label for="username">Username</label> <input type="text"
						class="form-control" name="username" id="username"
						aria-describedby="usernameHid" placeholder="username"> <small
						id="usernameHid" class="form-text text-muted">Username is
						required</small>
				</div>
				<div class="form-group">
					<label for="email">Email</label> <input type="email"
						class="form-control" name="email" id="email" placeholder="email"
						required>
				</div>
			</div>
			<div class="card-footer text-muted">
				<button class="btn btn-success">Retrieve</button>
			</div>
		</div>
	</form>
</div>