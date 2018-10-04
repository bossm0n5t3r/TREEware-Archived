<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<%@ include file="/common/import.jsp" %>
</head>
<body>
	<div class="wrapper">
		<%@ include file="/common/top.jsp" %>
		<%@ include file="side.jsp" %>
		<div class="main-panel">
			<div class="content">
				<div class="container-fluid">
					<div class="col-md-12">
					hihihihihihi
									<div class="card">
										<div class="card-header">
											<div class="card-title">Form Control Styles</div>
										</div>
										<div class="card-body">
											<div class="form-group">
												<label for="squareInput">Square Input</label>
												<input type="text" class="form-control input-square" id="squareInput" placeholder="Square Input">
											</div>
											<div class="form-group">
												<label for="squareSelect">Square Select</label>
												<select class="form-control input-square" id="squareSelect">
													<option>1</option>
													<option>2</option>
													<option>3</option>
													<option>4</option>
													<option>5</option>
												</select>
											</div>
											<div class="form-group">
												<label for="pillInput">Pill Input</label>
												<input type="text" class="form-control input-pill" id="pillInput" placeholder="Pill Input">
											</div>
											<div class="form-group">
												<label for="pillSelect">Pill Select</label>
												<select class="form-control input-pill" id="pillSelect">
													<option>1</option>
													<option>2</option>
													<option>3</option>
													<option>4</option>
													<option>5</option>
												</select>
											</div>
											<div class="form-group">
												<label for="solidInput">Solid Input</label>
												<input type="text" class="form-control input-solid" id="solidInput" placeholder="Solid Input">
											</div>
											<div class="form-group">
												<label for="solidSelect">Solid Select</label>
												<select class="form-control input-solid" id="solidSelect">
													<option>1</option>
													<option>2</option>
													<option>3</option>
													<option>4</option>
													<option>5</option>
												</select>
											</div>											
										</div>
										<div class="card-action">
											<button class="btn btn-success">Submit</button>
											<button class="btn btn-danger">Cancel</button>
										</div>
									</div>
									<div class="card">
										<div class="card-header">
											<div class="card-title">Form Control Styles</div>
										</div>
										<div class="card-body">
											<div class="form-group">
												<label for="largeInput">Large Input</label>
												<input type="text" class="form-control form-control-lg" id="largeInput" placeholder="Large Input">
											</div>
											<div class="form-group">
												<label for="largeInput">Default Input</label>
												<input type="text" class="form-control form-control" id="defaultInput" placeholder="Default Input">
											</div>
											<div class="form-group">
												<label for="smallInput">Small Input</label>
												<input type="text" class="form-control form-control-sm" id="smallInput" placeholder="Small Input">
											</div>
											<div class="form-group">
												<label for="largeSelect">Large Select</label>
												<select class="form-control form-control-lg" id="largeSelect">
													<option>1</option>
													<option>2</option>
													<option>3</option>
													<option>4</option>
													<option>5</option>
												</select>
											</div>
											<div class="form-group">
												<label for="defaultSelect">Default Select</label>
												<select class="form-control form-control" id="defaultSelect">
													<option>1</option>
													<option>2</option>
													<option>3</option>
													<option>4</option>
													<option>5</option>
												</select>
											</div>
											<div class="form-group">
												<label for="smallSelect">Small Select</label>
												<select class="form-control form-control-sm" id="smallSelect">
													<option>1</option>
													<option>2</option>
													<option>3</option>
													<option>4</option>
													<option>5</option>
												</select>
											</div>
										</div>
										<div class="card-action">
											<button class="btn btn-success">Submit</button>
											<button class="btn btn-danger">Cancel</button>
										</div>
									</div>
								</div>
				</div>
			</div>
		<%@ include file="/common/footer.jsp" %>
		</div>
	</div>
</body>
</html>