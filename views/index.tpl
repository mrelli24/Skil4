<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>Json</title>
	<link rel="stylesheet" type="text/css" href="static/style.css">
</head>
<body>
	<% 
	import json
	with open("gengi.json","r", encoding="utf-8") as skra:
		gengi = json.load(skra)
	end
	%>

	%include("header.tpl")
	<div class="row">
		<!--
		<section>
			<img src="/static/mynd4.jpg">
		</section>
	-->
		<section>
			<h1>Gengi gjaldmiðla</h1>
			<ul>
				%for i in gengi['results']:
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