<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
            <head>
                <style>
                .employee
                {
                margin-left:auto;
                margin-right:auto;
                }
            div
            {
                text-align:center;
                width:49%;
            }
            td,th
            {
                font-size:larger;
                padding:10px;
                text-align:center !important;
            }
                </style>
            </head>
            <body>
                <h1 style="text-align:center;">Employee Management System</h1>
                <div class='employee'>
                    <table border="2" align="center">
                        <tr bgcolor="#80bfff">
                            <th style="text-align:left">ID</th>
                            <th style="text-align:left">NAME</th>
                            <th style="text-align:left">AGE</th>
                            <th style="text-align:left">SALARY</th>
                            <th style="text-align:left">EMAIL</th>
                            <th style="text-align:left">PHONE NO</th>
                            <th style="text-align:left">DESIGNATION</th>
                        </tr>
                        <xsl:for-each select="company/employee">
                            <tr>
                            <td>
                                    <xsl:value-of select="empid"/>
                                </td>
                                <td>
                                    <xsl:value-of select="empname"/>
                                </td>
                                <td>
                                    <xsl:value-of select="empage"/>
                                </td>
                                <td>
                                    <xsl:value-of select="empsalary"/>
                                </td>
                                <td>
                                    <xsl:value-of select="empemail"/>
                                </td>
                                <td>
                                    <xsl:value-of select="empphone"/>
                                </td>
                                <td>
                                    <xsl:value-of select="empdesignation"/>
                                </td>
                            </tr>
                        </xsl:for-each>
                    </table>
                </div>

            </body>
        </html>
</xsl:template>
</xsl:stylesheet>
