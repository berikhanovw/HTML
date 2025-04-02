<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" indent="yes" />
    <xsl:template match="/">

        <html lang="en">
        <head>
            <title>Статистика занятий</title>

            <style>
            
                body {
                    font-family: Arial, sans-serif; 
                    margin: 20px;
                }

                h1 {
                    color: #333;
                }

                ul {
                    list-style-type: none;
                    padding: 0;
                }

                li {
                    margin-bottom: 10px;
                    padding: 8px;
                    background-color: #f5f5f5;
                    border-radius: 4px;
                }

                .spanHeight {
                    background-color: #e6f7ff;
                    font-weight: bold;
                }

            </style>
        </head>
        <body>
            <h1>Статистика занятий</h1>
            <ul>
                <li>
                    Paris:
                    <span>
                        <xsl:value-of select="count(timeTable/couples/couple[@auditorium='Paris'])" />
                    </span>
                </li>
                <li>
                    Geneva:
                    <span>
                        <xsl:value-of select="count(timeTable/couples/couple[@auditorium='Geneva'])" />
                    </span>
                </li>
                <li>
                    Brussel:
                    <span>
                        <xsl:value-of select="count(timeTable/couples/couple[@auditorium='Brussels'])" />
                    </span>
                </li>

                <li>
                    Количество занятий в 09:00:
                    <span>
                        <xsl:value-of select="count(timeTable/couples/couple[time='09:00'])" />
                    </span>
                </li>
                <li>
                    Количество занятий в 11:25:
                    <span>
                        <xsl:value-of select="count(timeTable/couples/couple[time='10:30'])" />
                    </span>
                </li>
                <li>
                    Количество занятий в 16:00:
                    <span>
                        <xsl:value-of select="count(timeTable/couples/couple[time='14:25'])" />
                    </span>
                </li>

                <li>
                    Первая пара:
                    <span>
                        <xsl:value-of select="timeTable/couples/couple[1]/pair" />
                    </span>
                </li>
                <li>
                    Последняя пара:
                    <span>
                        <xsl:value-of select="timeTable/couples/couple[last()]/pair" />
                    </span>
                </li>

                <li>
                    Пара по Базам Данных:
                    <span>
                        <xsl:value-of select="timeTable/couples/couple[contains(pair, 'СУБД')]" />
                    </span>
                </li>

                <li></li>
                <li></li>
            </ul>
        </body>
        </html>

    </xsl:template>
</xsl:stylesheet>