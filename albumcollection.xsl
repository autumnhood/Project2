<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/albumcollection">
<html>
	<head>
	</head>
<body>
	<div class= "album_collection">
	<table class="sortable">
			<tr>
				<th>Artist</th>
				<th>Album Title</th>
				<th>Album Length</th>
				<th>Number of Tracks</th>
				<th>Record Label</th>
				<th>Decade Released</th>
				<th>Year Released</th>
				<th>Month Released</th>
				<th>Day Released</th>
				<th>Album Genre</th>
				<th>Album Condition</th>
			</tr>
			
		<xsl:for-each select="album">
			<tr>
				<td class="medium"><xsl:value-of select="artist" /></td>
				<td class="medium"><xsl:value-of select="album_title" /></td>
				<td class="narrow"><xsl:value-of select="album_length" /></td>
				<td class="narrow"><xsl:value-of select="number_of_tracks" />
				<td class="narrow"><xsl:value-of select="track_number" /></td>
				<td class="medium"><xsl:value-of select="track_title" /></td>
				<td class="narrow"><xsl:value-of select="track_length" /></td>
				
				<xsl:for-each select="credit"><td class="medium">
				<ul><xsl:for-each select="track_credit">
				<li><xsl:value-of select="." /></li>
				</xsl:for-each></ul></td></xsl:for-each>

				<td class="narrow"><xsl:value-of select="record_label" /></td>
				<td class="narrow"><xsl:value-of select="decade_released" /></td>
				<td class="narrow"><xsl:value-of select="year_released" /></td>
				<td class="narrow"><xsl:value-of select="month_released" /></td>
				<td class="narrow"><xsl:value-of select="day_released" /></td>

				<xsl:for-each select="genre">
				<td class="medium">	<ul><xsl:for-each select="album_genre">
				<li><xsl:value-of select="." />
				</li></xsl:for-each></ul></td></xsl:for-each>
				
				<td class="narrow"><xsl:value-of select="album_condition" /></td>
				
			</tr>
		</xsl:for-each>
	</table>
</div>
</body>
</html>

</xsl:template>
</xsl:stylesheet>
