<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">

        <xsl:text>Paris:</xsl:text>
        <xsl:value-of select="count(timeTable/couples/couple[@auditorium='Paris'])" />
        <xsl:text> &#10; </xsl:text>

        <xsl:text>Geneva:</xsl:text>
        <xsl:value-of select="count(timeTable/couples/couple[@auditorium='Geneva'])" />
        <xsl:text> &#10; </xsl:text>

        <xsl:text>Brussel:</xsl:text>
        <xsl:value-of select="count(timeTable/couples/couple[@auditorium='Brussels'])" />
        <xsl:text> &#10; </xsl:text>


        <xsl:text>Количество занятий в 09:00:</xsl:text>
        <xsl:value-of select="count(timeTable/couples/couple/time[time='09:00'])" />
        <xsl:text> &#10; </xsl:text>

        <xsl:text>Количество занятий в 11:25:</xsl:text>
        <xsl:value-of select="count(timeTable/couples/couple/time[time='10:30'])" />
        <xsl:text> &#10; </xsl:text>

        <xsl:text>Количество занятий в 16:00:</xsl:text>
        <xsl:value-of select="count(timeTable/lessons/lesson/time[time='14:25'])" />
        <xsl:text> &#10; </xsl:text>


        <xsl:text>Первая пара:</xsl:text>
        <xsl:value-of select="timeTable/couples/couple[1]/pair" />
        <xsl:text>Состоялся:</xsl:text>
        <xsl:value-of select="timeTable/couples/couple[1]/date" />

        <xsl:text>Последняя пара:</xsl:text>
        <xsl:value-of select="timeTable/couples/couple[last()]/pair" />
        <xsl:text>Состоялся:</xsl:text>
        <xsl:value-of select="timeTable/couples/couple[last()]/date" />


        <xsl:text>Пара по Базам Данных:</xsl:text>
        <xsl:value-of select="timeTable/couples/couple[contains(pair, 'СУБД')]" />

    </xsl:template>
</xsl:stylesheet>