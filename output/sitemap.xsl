<xsl:stylesheet
  version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:sitemap="http://www.sitemaps.org/schemas/sitemap/0.9"
  exclude-result-prefixes="sitemap"
>
  <xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes"/>
  <xsl:template match="/">
    <html xmlns="http://www.w3.org/1999/xhtml">
      <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>
        <title>KittyFarren.dev Site Map</title>
        <style type="text/css">
body {
    font-family: sans-serif;
    font-size: 1rem;
    background-color: #1c1b22;
    color: #dddddd;
}

article {
    font-family: sans-serif;
    line-height: 1.2em;
    letter-spacing: 0.3px;
}

@media only screen and (min-width: 51rem) {
    body {
        width: 50rem;
        margin: auto;
        font-size: 1.2rem;
        letter-spacing: 0.3px;
        line-height: 1.3em;
    }
}

.header p {
    font-size: 1.2em;
    margin-bottom: 2em;
    text-decoration: underline wavy #808080;
    font-style: italic;
    color: inherit;
}

.header a {
    text-decoration: underline wavy #808080;
    color: inherit;
}

.footer {
    margin-bottom: 15rem;
}

.footer p {
    padding-bottom: 1.5em;
}

.footlink {
    color: inherit;
    font-size: 1em;
    margin-right: 2em;
    white-space: nowrap;
}

.plain {
    color: inherit;
    letter-spacing: 0.8px;
    font-weight: bolder;
}

hr {
    margin-top: 2em;
    margin-bottom: 2em;
}

ul .linklist {
    list-style-type: none;
    margin: 0;
    line-height: 1.7em;
    padding: 0;
}

.title a {
    color: inherit;
    text-decoration: none;
}

h3 {
    letter-spacing: 1px;
    margin-top: 2em;
    color: #eeeeee;
}

h2 {
    letter-spacing: 1px;
    margin-top: 2em;
    color: #eeeeee;
}

h1 {
    letter-spacing: 1px;
    color: #eeeeee;
}

.fullwidth {
    width:95%;
    height:200%;
    display: block;
    margin-left: auto;
    margin-right: auto;
}

.halfwidth {
    display: block;
    margin-left: auto;
    margin-right: auto;
    width: 55%;
    height: auto;
}

.entry {
    margin-bottom: 2em;
}

        </style>
      </head>
      <body>
        <section>
          <xsl:apply-templates select="sitemap:urlset" />
        </section>
        <hr/>
        <section>
          <xsl:apply-templates select="sitemap:urlset/sitemap:url">
            <xsl:sort select="sitemap:lastmod" order="descending"/>
          </xsl:apply-templates>
        </section>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="sitemap:urlset">
    <h1>kittyfarren.dev Site Map</h1>
    <p>Posts from

    <a class="head_link" target="_blank">
      <xsl:attribute name="href">
          https://kittyfarren.dev
      </xsl:attribute>
      <xsl:attribute name="class">
        plain
      </xsl:attribute>
      kittyfarren.dev</a>, most recent first.
    </p>
  </xsl:template>

  <xsl:template match="sitemap:url">
    <div class="entry">
        
        <a target="_blank">
          <xsl:attribute name="href">
            <xsl:value-of select="sitemap:loc"/>
          </xsl:attribute>
          <xsl:attribute name="class">
            plain
          </xsl:attribute>
          <time>
        <xsl:attribute name="datetime">
          <xsl:value-of select="sitemap:lastmod" />
        </xsl:attribute>
        <xsl:value-of select="sitemap:lastmod" />
        </time>
        - 
          <xsl:value-of select="sitemap:loc"/>
        </a>
    </div>
  </xsl:template>

</xsl:stylesheet>

