<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" 
                xmlns:html="http://www.w3.org/TR/REC-html40"
                xmlns:sitemap="http://www.sitemaps.org/schemas/sitemap/0.9"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" version="1.0" encoding="UTF-8" indent="yes"/>
  <xsl:template match="/">
    <html xmlns="http://www.w3.org/1999/xhtml">
      <head>
        <title>XML Sitemap</title>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <style type="text/css">
          body {
            font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, Oxygen, Ubuntu, Cantarell, sans-serif;
            font-size: 14px;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            margin: 0;
            padding: 20px;
          }
          
          .container {
            max-width: 1000px;
            margin: 0 auto;
            background: white;
            border-radius: 12px;
            padding: 30px;
            box-shadow: 0 10px 40px rgba(0,0,0,0.2);
          }
          
          h1 {
            color: #333;
            margin: 0 0 10px 0;
            font-size: 2em;
          }
          
          .description {
            color: #666;
            margin-bottom: 30px;
            line-height: 1.6;
          }
          
          table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
          }
          
          th {
            background: #667eea;
            color: white;
            padding: 12px;
            text-align: left;
            font-weight: 600;
          }
          
          td {
            padding: 12px;
            border-bottom: 1px solid #eee;
          }
          
          tr:hover {
            background: #f5f5f5;
          }
          
          a {
            color: #667eea;
            text-decoration: none;
            word-break: break-all;
          }
          
          a:hover {
            text-decoration: underline;
          }
          
          .url-count {
            background: #667eea;
            color: white;
            padding: 8px 16px;
            border-radius: 20px;
            display: inline-block;
            font-size: 0.9em;
            margin-bottom: 20px;
          }
          
          .footer {
            margin-top: 30px;
            text-align: center;
            color: #999;
            font-size: 0.9em;
          }
        </style>
      </head>
      <body>
        <div class="container">
          <h1>XML Sitemap</h1>
          <p class="description">
            This is an XML sitemap for search engines like Google, Bing, and Yahoo. 
            It helps them discover and index the pages on this website.
          </p>
          <div class="url-count">
            Total URLs: <xsl:value-of select="count(sitemap:urlset/sitemap:url)"/>
          </div>
          <table>
            <tr>
              <th>URL</th>
              <th>Last Modified</th>
              <th>Change Frequency</th>
              <th>Priority</th>
            </tr>
            <xsl:for-each select="sitemap:urlset/sitemap:url">
              <tr>
                <td>
                  <a href="{sitemap:loc}">
                    <xsl:value-of select="sitemap:loc"/>
                  </a>
                </td>
                <td>
                  <xsl:value-of select="sitemap:lastmod"/>
                </td>
                <td>
                  <xsl:value-of select="sitemap:changefreq"/>
                </td>
                <td>
                  <xsl:value-of select="sitemap:priority"/>
                </td>
              </tr>
            </xsl:for-each>
          </table>
          <div class="footer">
            Generated for rtbruhan.github.io
          </div>
        </div>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>

