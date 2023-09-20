<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions" xmlns:math="http://www.w3.org/2005/xpath-functions/math" xmlns:array="http://www.w3.org/2005/xpath-functions/array" xmlns:map="http://www.w3.org/2005/xpath-functions/map" xmlns:xhtml="http://www.w3.org/1999/xhtml" xmlns:err="http://www.w3.org/2005/xqt-errors" exclude-result-prefixes="array fn map math xhtml xs err" version="3.0">
	<xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes"/>
	<xsl:template match="/" name="xsl:initial-template">
		<html>
			<head>
				<title>Cuestionario</title>
				<link rel="stylesheet" type="text/css" href="estilos.css"/>
			</head>
			<body>
				<header>
					<img src="img1.png" alt="img1"/>
				</header>
				<nav class="topnav">
					<a href="index.html">Inicio</a>
					<a href="#">Novedades</a>
					<a href="cuestionarioXML.xml">Cuestionario XML</a>
					<a href="#">Sobre nosotros</a>
					<a href="#">Regístrate</a>
				</nav>
				<nav class="sidenav">
					<img src="img2.jpg" alt="img2"/>
					<hr/>
					<a href="#">Lenguaje de marcas</a>
					<br/>
					<a href="#">Cursos</a>
					<br/>
					<a href="#">Certificaciones</a>
					<br/>
					<a href="#">Visual Studio</a>
					<br/>
					<a href="#">Ejercicios</a>
					<br/>
					<a href="#">Exámenes</a>
					<br/>
					<a href="#">Centros de estudio</a>
					<br/>
					<a href="#">Métodos de aprendizaje</a>
					<br/>
					<a href="#">Trabaja con nosotros</a>
				</nav>
				<section>
					<h1>Cuestionario</h1>
					<form>
						<xsl:for-each select="formulario/pregunta">
							<div class="question">
								<h2>
									<xsl:value-of select="."/>
								</h2>
								<xsl:for-each select="respuesta">
									<div class="option">
										<input type="radio" name="question-{position()}" value="{.}"/>
										<label>
											<xsl:value-of select="."/>
										</label>
									</div>
								</xsl:for-each>
							</div>
							<hr/>
						</xsl:for-each>
						<input type="submit" value="Enviar"/>
						<input type="reset" value="Reiniciar"/>
					</form>
				</section>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
