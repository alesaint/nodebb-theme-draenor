<html>
	<head>
		<title>NodeBB Setup</title>
		<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet">
		<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
		<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
		<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
	</head>
	<body>
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-6 col-sm-10 col-md-offset-3 col-sm-offset-1 well">
					<p class="lead">
						Welcome to your new NodeBB community!
					</p>
					<p>
						Please fill in the following server configuration details in order to get started.
					</p>
					<form role="form">
						<div class="form-group">
							<label for="base_url">Base URL</label>
							<input type="text" id="base_url" class="form-control" placeholder="http://localhost:4567" value="http://localhost:4567" />
							<span class="help-block">The <strong>Base URL</strong> is the publically accessible address of your NodeBB</span>
						</div>
						<div class="form-group">
							<label for="port">Port</label>
							<input type="number" min="0" max="65535" id="port" class="form-control" placeholder="4567" value="4567" />
							<span class="help-block"><strong>Protip</strong>: Even if a proxy server is used to route to your NodeBB, a port is still required.</span>
						</div>
						<div class="form-group">
							<label for="secret">Secret</label>
							<input type="text" id="secret" class="form-control" />
							<span class="help-block">The NodeBB secret is used to encode user cookie sessions only.</span>
						</div>
						<div class="form-group">
							<label for="bind_address">Bind Address</label>
							<input type="text" id="bind_address" class="form-control" placeholder="0.0.0.0" />
							<span class="help-block"><strong>Protip</strong>: For most forums, a bind address of <code>0.0.0.0</code> is correct.</span>
						</div>
						<div class="form-group">
							<label for="database">Database</label>
							<select class="form-control" id="database">
								<option value="redis">Redis</option>
								<option value="mongo">MongoDB</option>
								<option value="level">LevelDB</option>
							</select>
						</div>

						<button type="button" class="btn btn-primary btn-large btn-block">Setup NodeBB</button>
					</form>
				</div>
			</div>
		</div>
	</body>
</html>