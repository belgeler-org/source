#!/bin/bash
# Belgenin id'si argüman olarak verilirse belgeyi derler.
# Derlenecek belge belgeler.xml ağacında kayıtlı olmalıdır.
cd ..
echo "<?xml version='1.0' encoding=\"UTF-8\"?><?xml-stylesheet type=\"text/xsl\" href=\"#xslss\"?><!DOCTYPE belge [ <!ATTLIST xsl:stylesheet id ID #IMPLIED> ]><belge><xsl:stylesheet id=\"xslss\"  version='1.0' xmlns:xsl=\"http://www.w3.org/1999/XSL/Transform\"><xsl:output method=\"text\" encoding=\"UTF-8\" omit-xml-declaration=\"yes\" standalone=\"yes\" indent=\"no\"/><xsl:include href=\"docbook/xsl/belgeler/singledoc.xsl\"/><xsl:template match=\"/\"><xsl:variable name=\"node\" select=\"document('belgeler.xml')//*[@id='$1']\"/><xsl:choose><xsl:when test=\"name(\$node)!=''\"><xsl:apply-templates select=\"\$node\"/></xsl:when><xsl:otherwise><xsl:message  terminate=\"yes\"><xsl:text>Boyle bir belge yok</xsl:text></xsl:message></xsl:otherwise></xsl:choose></xsl:template><xsl:template match=\"xsl:stylesheet\"/></xsl:stylesheet></belge>" | xsltproc -
#cd -
