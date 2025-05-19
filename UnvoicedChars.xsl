<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html lang="en">
      <head>
        <title>Unvoiced Genshin Characters</title>
        <style>
          #main-header {
          padding: 20px;
          text-align: center;
          border: 2px solid;
          text-decoration: underline;
          margin-bottom: 1em;
          }

          #main-header > h1 {
          font-size: xx-large;
          }

          #main-header > p {
          font-size: larger;
          }

          table {
          width: 50%;
          margin: auto;
          border: 1px solid;
          text-align: center;
          }

          table, thead, tbody, tfoot, tr, th, td {
          border: 1px solid;
          border-collapse: collapse;
          }
        </style>
      </head>
      <body>
        <header id="main-header">
          <h1>
            Genshin Impact Unvoiced Characters
          </h1>
          <p>
            As of <xsl:value-of select="/unvoicedChars/@startVersion" />
          </p> 
        </header>
        <main>
          <table>
            <thead>
              <tr>
                <th>Character</th>
                <th>Unvoiced In</th>
                <th>Where Unvoiced</th>
              </tr>
            </thead>
            <xsl:for-each select="/unvoicedChars/character">
              <xsl:sort select="unvoicedIn" />
              <tr>
                <td><xsl:value-of select="charName" /></td>
                <td><xsl:value-of select="unvoicedIn" /></td>
                <td><xsl:value-of select="event | quest | cutscene | voiceline" /></td>
              </tr>
            </xsl:for-each>
          </table>
        </main>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
