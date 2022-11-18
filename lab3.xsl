<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html> 
<body>

<!-- 1 -->
  <h2>Feedback of Photographs</h2>
  <table border="1">
    <tr bgcolor="#9acd32">
      <th style="text-align:left">Name</th>
      <th style="text-align:left">Email</th>
      <th style="text-align:left">Phone Number</th>
      <th style="text-align:left">Birthday</th>
      <th style="text-align:left">Picture</th>
      <th style="text-align:left">Description</th>
      <th style="text-align:left">Genre</th>
      <th style="text-align:left">Rating</th>
    </tr>
    
    <xsl:for-each select="review/data">
    <tr>
      <td><xsl:value-of select="name"/></td>
      <td><xsl:value-of select="email"/></td>
      <td><xsl:value-of select="phone"/></td>
      <td><xsl:value-of select="birthday"/></td>
      <td><xsl:value-of select="pic"/></td>
      <td><xsl:value-of select="desc"/></td>
      <td><xsl:value-of select="genre"/></td>
      <td><xsl:value-of select="rating"/></td>
    </tr>
    </xsl:for-each>
  </table>


<!--2 -->
  <h2>Feedback of Photographs sorted by genre</h2>
   <table border="1">
    <tr bgcolor="#9acd32">
      <th style="text-align:left">Name</th>
      <th style="text-align:left">Email</th>
      <th style="text-align:left">Phone Number</th>
      <th style="text-align:left">Birthday</th>
      <th style="text-align:left">Picture</th>
      <th style="text-align:left">Genre</th>
      <th style="text-align:left">Rating</th>
    </tr>

    <xsl:for-each select="review/data">
    <xsl:sort select="genre"/>
    <tr>
      <td><xsl:value-of select="name"/></td>
      <td><xsl:value-of select="email"/></td>
      <td><xsl:value-of select="phone"/></td>
      <td><xsl:value-of select="birthday"/></td>
      <td><xsl:value-of select="pic"/></td>
      <td><xsl:value-of select="genre"/></td>
      <td><xsl:value-of select="rating"/></td>
    </tr>
    </xsl:for-each> 
  </table>


<!--3 if condition -->
  <h2>Feedback of Photographs if phone number invalid(grater than 10 digits)</h2>
   <table border="1">
    <tr bgcolor="#9acd32">
      <th style="text-align:left">Name</th>
      <th style="text-align:left">Email</th>
      <th style="text-align:left">Phone Number</th>
    </tr>

    <xsl:for-each select="review/data">
     <xsl:if test="phone &gt; 999999999">
    <tr>
      <td><xsl:value-of select="name"/></td>
      <td><xsl:value-of select="email"/></td>
      <td><xsl:value-of select="phone"/></td>
    </tr>
    </xsl:if>
    </xsl:for-each> 
  </table>

  
  <!--4 choose condition -->
  <h2>Using when condtion if phone number invalid(grater than 10 digits)</h2>
   <table border="1">
    <tr bgcolor="#9acd32">
      <th style="text-align:left">Name</th>
    </tr>

    <xsl:for-each select="review/data">
     <xsl:if test="phone &gt; 999999999">
    <tr>
        <xsl:choose>
        <xsl:when test="phone &gt; 999999999">
          <td bgcolor="##FF0000">
          <xsl:value-of select="name"/></td>
        </xsl:when>
        <xsl:otherwise>
          <td><xsl:value-of select="name"/></td>
        </xsl:otherwise>
      </xsl:choose>

    </tr>
    </xsl:if>
    </xsl:for-each> 

    
  </table>

</body>
</html>
</xsl:template>
</xsl:stylesheet>

