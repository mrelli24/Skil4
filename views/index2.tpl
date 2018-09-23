<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Json</title>
	<link rel="stylesheet" type="text/css" href="static/style.css">
</head>
<body>
	%include("header.tpl")

	<div class="row">
		<!--
		<section>
			<img src="/static/mynd4.jpg">
		</section>
	-->
		<section>
			<h1>Gengi gjaldmiðla frá apis.is/currency</h1>
			<ul>
				%for i in data['results']:
					<li>
						{{i['shortName']}} ( {{i['longName']}} ) = ISK: {{i['value']}}
					</li>
				%end
			</ul>
		</section>
	</div>
	%include("footer.tpl")
</body>
</html>