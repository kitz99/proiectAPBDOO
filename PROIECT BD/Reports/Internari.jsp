<%@ taglib uri="/WEB-INF/lib/reports_tld.jar" prefix="rw" %>
<%@ page language="java" import="java.io.*" errorPage="/rwerror.jsp" session="false" %>
<!--
<rw:report id="report">
<rw:objects id="objects">
<?xml version="1.0" encoding="WINDOWS-1252" ?>
<report name="Internari" DTDVersion="9.0.2.0.10">
  <xmlSettings xmlTag="INTERNARI" xmlPrologType="text">
  <![CDATA[<?xml version="1.0" encoding="&Encoding"?>]]>
  </xmlSettings>
  <reportHtmlEscapes>
    <beforePageHtmlEscape>
    <![CDATA[#NULL#]]>
    </beforePageHtmlEscape>
    <afterPageHtmlEscape>
    <![CDATA[<hr size=5 noshade>
]]>
    </afterPageHtmlEscape>
    <beforeFormHtmlEscape>
    <![CDATA[<html dir=&Direction>
<body bgcolor="#ffffff">
<form method=post action="_action_">
<input name="hidden_run_parameters" type=hidden value="_hidden_">
<font color=red><!--error--></font>
<center>
<p><table border=0 cellspacing=0 cellpadding=0>
<tr>
<td><input type=submit></td>
<td width=15>
<td><input type=reset></td>
</tr>
</table>
<p><hr><p>
]]>
    </beforeFormHtmlEscape>
    <pageNavigationHtmlEscape>
    <![CDATA[<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html dir=&Direction>
<head>
<meta http-equiv="Content-Type"  content="text/html; charset=&Encoding">
<TITLE>Oracle HTML Navigator</TITLE>
<SCRIPT type="text/javascript" LANGUAGE = "JavaScript">

var jump_index = 1			// Jump to this page
var num_pages = &TotalPages			// Total number of pages
var basefilename = "&file_name"		// Base file name
var fileext = "&file_ext"		//File extension

/* jumps to "new_page" */
function new_page(form, new_page)
{
	form.reqpage.value = new_page;
	parent.frames[0].location = basefilename + "_" + new_page + "."+fileext;
}

/* go back one page */
function back(form)
{
	/* if we are not in first page */
	if (jump_index > 1)
	{
		jump_index--;
		new_page(form, jump_index);
	}
}

/* go forward one page */
function forward(form)
{
	/* if we are not in last page */
	if (jump_index < num_pages)
	{
		jump_index++;
		new_page(form, jump_index);
	}
}

/* go to first page */
function first(form)
{
	if(jump_index != 1)
	{
		jump_index = 1;
		new_page(form, jump_index);
	}
}

/* go to last page */
function last(form)
{
	if(jump_index != num_pages)
	{
		jump_index = num_pages;
		new_page(form, jump_index);
	}
}

/* go to the user specified page number */
function pagenum(form)
{
	/* sanity check */
	if (form.reqpage.value < 1)
	{
		form.reqpage.value = 1;
	}
	if (form.reqpage.value > num_pages)
	{
		form.reqpage.value = num_pages;
	}
	jump_index = form.reqpage.value;
	new_page(form, jump_index);
}
</SCRIPT>
</HEAD>

<BODY>
<FORM NAME="ThisForm" action="" onSubmit="pagenum(this); return false;">
<center><table><tr>
<td> <INPUT TYPE="button"  VALUE="<< " onClick="first(this.form)">
<td> <INPUT TYPE="button"  VALUE=" < " onClick="back(this.form)">
<td> <INPUT TYPE="button"  VALUE="Page:" onClick="pagenum(this.form)">
<td> <INPUT NAME="reqpage" VALUE="1" SIZE=2>
<td> <INPUT TYPE="button"  VALUE=" > " onClick="forward(this.form)">
<td> <INPUT TYPE="button"  VALUE=" >>" onClick="last(this.form)">
</table></center>
</FORM>
</body></html>]]>
    </pageNavigationHtmlEscape>
  </reportHtmlEscapes>
  <data>
    <dataSource name="Q_1">
      <select>
      <![CDATA[SELECT ALL INTERNARI.ID_PACIENT, 
INTERNARI.ID_CLINICA, INTERNARI.NUMAR_INTERNARE, INTERNARI.PERIOADA, 
INTERNARI.DETALII_AVIZARE, INTERNARI.DETALII_SUPLIMNETARE
FROM INTERNARI ]]>
      </select>
      <displayInfo x="1.65002" y="1.00000" width="0.69995" height="0.19995"/>
      <group name="G_ID_PACIENT">
        <displayInfo x="0.93787" y="1.94995" width="2.12439" height="1.28516"
        />
        <dataItem name="ID_PACIENT" oracleDatatype="number" columnOrder="11"
         width="22" defaultWidth="20000" defaultHeight="10000"
         columnFlags="33" defaultLabel="Id Pacient">
          <dataDescriptor expression="INTERNARI.ID_PACIENT"
           descriptiveExpression="ID_PACIENT" order="1" width="22"
           scale="-127"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="ID_CLINICA" oracleDatatype="number" columnOrder="12"
         width="22" defaultWidth="20000" defaultHeight="10000"
         columnFlags="33" defaultLabel="Id Clinica">
          <dataDescriptor expression="INTERNARI.ID_CLINICA"
           descriptiveExpression="ID_CLINICA" order="2" width="22"
           scale="-127"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="NUMAR_INTERNARE" oracleDatatype="number"
         columnOrder="13" width="22" defaultWidth="20000"
         defaultHeight="10000" columnFlags="33" defaultLabel="Numar Internare">
          <dataDescriptor expression="INTERNARI.NUMAR_INTERNARE"
           descriptiveExpression="NUMAR_INTERNARE" order="3" width="22"
           scale="-127"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="PERIOADA" datatype="vchar2" columnOrder="14"
         width="25" defaultWidth="100000" defaultHeight="10000"
         columnFlags="33" defaultLabel="Perioada">
          <dataDescriptor expression="INTERNARI.PERIOADA"
           descriptiveExpression="PERIOADA" order="4" width="25"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="DETALII_AVIZARE" datatype="vchar2" columnOrder="15"
         width="2000" defaultWidth="100000" defaultHeight="10000"
         columnFlags="33" defaultLabel="Detalii Avizare">
          <dataDescriptor expression="INTERNARI.DETALII_AVIZARE"
           descriptiveExpression="DETALII_AVIZARE" order="5" width="2000"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="DETALII_SUPLIMNETARE" datatype="vchar2"
         columnOrder="16" width="2000" defaultWidth="100000"
         defaultHeight="10000" columnFlags="33"
         defaultLabel="Detalii Suplimnetare">
          <dataDescriptor expression="INTERNARI.DETALII_SUPLIMNETARE"
           descriptiveExpression="DETALII_SUPLIMNETARE" order="6" width="2000"
          />
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
      </group>
    </dataSource>
  </data>
  <layout>
  <section name="main">
    <body>
      <frame name="M_G_ID_PACIENT_GRPFR">
        <geometryInfo x="0.00000" y="0.00000" width="7.00000" height="0.37500"
        />
        <generalLayout verticalElasticity="variable"/>
        <visualSettings fillPattern="transparent"/>
        <repeatingFrame name="R_G_ID_PACIENT" source="G_ID_PACIENT"
         printDirection="down" minWidowRecords="1" columnMode="no">
          <geometryInfo x="0.00000" y="0.18750" width="7.00000"
           height="0.18750"/>
          <generalLayout verticalElasticity="expand"/>
          <visualSettings fillPattern="transparent"
           fillBackgroundColor="TableCell"/>
          <field name="F_ID_PACIENT" source="ID_PACIENT" minWidowLines="1"
           spacing="0" alignment="start">
            <font face="helvetica" size="10"/>
            <geometryInfo x="0.00000" y="0.18750" width="0.68750"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
          </field>
          <field name="F_ID_CLINICA" source="ID_CLINICA" minWidowLines="1"
           spacing="0" alignment="start">
            <font face="helvetica" size="10"/>
            <geometryInfo x="0.68750" y="0.18750" width="0.68750"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
          </field>
          <field name="F_NUMAR_INTERNARE" source="NUMAR_INTERNARE"
           minWidowLines="1" spacing="0" alignment="start">
            <font face="helvetica" size="10"/>
            <geometryInfo x="1.37500" y="0.18750" width="1.12500"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
          </field>
          <field name="F_PERIOADA" source="PERIOADA" minWidowLines="1"
           spacing="0" alignment="start">
            <font face="helvetica" size="10"/>
            <geometryInfo x="2.50000" y="0.18750" width="1.50000"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
          </field>
          <field name="F_DETALII_AVIZARE" source="DETALII_AVIZARE"
           minWidowLines="1" spacing="0" alignment="start">
            <font face="helvetica" size="10"/>
            <geometryInfo x="4.00000" y="0.18750" width="1.50000"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
          </field>
          <field name="F_DETALII_SUPLIMNETARE" source="DETALII_SUPLIMNETARE"
           minWidowLines="1" spacing="0" alignment="start">
            <font face="helvetica" size="10"/>
            <geometryInfo x="5.50000" y="0.18750" width="1.50000"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
          </field>
        </repeatingFrame>
        <frame name="M_G_ID_PACIENT_HDR">
          <geometryInfo x="0.00000" y="0.00000" width="7.00000"
           height="0.18750"/>
          <advancedLayout printObjectOnPage="allPage"
           basePrintingOn="anchoringObject"/>
          <visualSettings fillPattern="transparent"
           fillBackgroundColor="TextColor"/>
          <text name="B_ID_PACIENT" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="0.00000" y="0.00000" width="0.68750"
             height="0.18750"/>
            <visualSettings fillBackgroundColor="TextColor"/>
            <textSegment>
              <font face="helvetica" size="10" bold="yes" textColor="white"/>
              <string>
              <![CDATA[Id Pacient]]>
              </string>
            </textSegment>
          </text>
          <text name="B_ID_CLINICA" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="0.68750" y="0.00000" width="0.68750"
             height="0.18750"/>
            <visualSettings fillBackgroundColor="TextColor"/>
            <textSegment>
              <font face="helvetica" size="10" bold="yes" textColor="white"/>
              <string>
              <![CDATA[Id Clinica]]>
              </string>
            </textSegment>
          </text>
          <text name="B_NUMAR_INTERNARE" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="1.37500" y="0.00000" width="1.12500"
             height="0.18750"/>
            <visualSettings fillBackgroundColor="TextColor"/>
            <textSegment>
              <font face="helvetica" size="10" bold="yes" textColor="white"/>
              <string>
              <![CDATA[Numar Internare]]>
              </string>
            </textSegment>
          </text>
          <text name="B_PERIOADA" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="2.50000" y="0.00000" width="1.50000"
             height="0.18750"/>
            <visualSettings fillBackgroundColor="r25g50b75"/>
            <textSegment>
              <font face="helvetica" size="10" bold="yes" textColor="white"/>
              <string>
              <![CDATA[Perioada]]>
              </string>
            </textSegment>
          </text>
          <text name="B_DETALII_AVIZARE" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="4.00000" y="0.00000" width="1.50000"
             height="0.18750"/>
            <visualSettings fillBackgroundColor="r25g50b75"/>
            <textSegment>
              <font face="helvetica" size="10" bold="yes" textColor="white"/>
              <string>
              <![CDATA[Detalii Avizare]]>
              </string>
            </textSegment>
          </text>
          <text name="B_DETALII_SUPLIMNETARE" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="5.50000" y="0.00000" width="1.50000"
             height="0.18750"/>
            <visualSettings fillBackgroundColor="r25g50b75"/>
            <textSegment>
              <font face="helvetica" size="10" bold="yes" textColor="white"/>
              <string>
              <![CDATA[Detalii Suplimnetare]]>
              </string>
            </textSegment>
          </text>
        </frame>
      </frame>
    </body>
  </section>
  </layout>
  <colorPalette>
    <color index="190" displayName="TextColor" value="#336699"/>
    <color index="191" displayName="TableHeading" value="#336699"/>
    <color index="192" displayName="TableCell" value="#e0f0ff"/>
    <color index="193" displayName="Totals" value="#c5e3ff"/>
  </colorPalette>
  <reportPrivate defaultReportType="tabular" versionFlags2="0"
   templateName="rwblue"/>
  <reportWebSettings>
  <![CDATA[#NULL#]]>
  </reportWebSettings>
</report>
</rw:objects>
-->

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<HTML>

<HEAD>
  <TITLE> Your Title </TITLE>
  <rw:style id="55">
<link rel="StyleSheet" type="text/css" href="css/rwbeige.css">
</rw:style>

  <META http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</HEAD>

<BODY bgColor="#ffffff" link="#000000" vLink="#000000">

<TABLE border=0 cellPadding=0 cellSpacing=0 width="100%">
  <TBODY>
  <TR>
    <TD bgColor="#ffffff" rowSpan=2 vAlign=middle width=188><IMG alt="" src="images/rwbeige_logo.gif" width="135" height="36"></TD>
    <TD bgColor="#ffffff" height=40 vAlign=top><IMG alt="" height=1 src="images/stretch.gif" width=5></TD>
    <TD align=right bgColor="#ffffff" vAlign=bottom>&nbsp;</TD>
  </TR>
  </TBODY>
</TABLE>

<TABLE bgColor="#ff0000" border=0 cellPadding=0 cellSpacing=0 width="100%">
  <TBODY>
  <TR>
    <TD bgColor="#ff0000" class="OraColumnHeader">&nbsp;</TD>
  </TR>
  </TBODY>
</TABLE>

<TABLE border=0 cellPadding=0 cellSpacing=0 width="100%">
  <TBODY>
  <TR>
    <TD bgColor="#ff0000" vAlign=top class="OraColumnHeader"><IMG alt="" border=0 height=17 src="images/topcurl.gif" width=30></TD>
    <TD vAlign=top width="100%">
      <TABLE border=0 cellPadding=0 cellSpacing=0 width="100%">
        <TBODY>
        <TR>
          <TD bgColor="#000000" height=1><IMG alt="" border=0 height=1 src="images/stretch.gif" width=1></TD>
        </TR>
        <TR>
          <TD bgColor="#9a9c9a" height=1><IMG alt="" border=0 height=1 src="images/stretch.gif" width=1></TD>
        </TR>
        <TR>
          <TD bgColor="#b3b4b3" height=1><IMG alt="" border=0 height=1 src="images/stretch.gif" width=1></TD>
        </TR>
        </TBODY>
      </TABLE>
    </TD>
  </TR>
  </TBODY>
</TABLE>

<TABLE width="100%" border="0" cellspacing="0" cellpadding="0">
  <TR>
    <TD width="29%" valign="top">
      <TABLE width="77%" border="0" cellspacing="0" cellpadding="0">
        <TR>
          <TD width="10%" class="OraCellText"><IMG alt="" src="images/blue_d_arrow.gif" width="10" height="10"></TD>
          <TD width="90%" class="OraCellText">Navigation goes here </TD>
        </TR>
        <TR>
          <TD width="10%" class="OraCellText"><IMG alt="" src="images/blue_r_arrow.gif" width="10" height="10"></TD>
          <TD width="90%" class="OraCellText">Navigation Item</TD>
        </TR>
      </TABLE>
    </TD>
    <TD width="71%">
      <DIV align="center">
      <!-- Data Area Generated by Reports Developer -->
<rw:dataArea id="MGIDPACIENTGRPFR80">
<table class="OraTable">
<caption>  </caption>
 <!-- Header -->
 <thead>
  <tr>
   <th <rw:id id="HBIDPACIENT80" asArray="no"/> class="OraColumnHeader"> Id Pacient </th>
   <th <rw:id id="HBIDCLINICA80" asArray="no"/> class="OraColumnHeader"> Id Clinica </th>
   <th <rw:id id="HBNUMARINTERNARE80" asArray="no"/> class="OraColumnHeader"> Numar Internare </th>
   <th <rw:id id="HBPERIOADA80" asArray="no"/> class="OraColumnHeader"> Perioada </th>
   <th <rw:id id="HBDETALIIAVIZARE80" asArray="no"/> class="OraColumnHeader"> Detalii Avizare </th>
   <th <rw:id id="HBDETALIISUPLIMNETARE80" asArray="no"/> class="OraColumnHeader"> Detalii Suplimnetare </th>
  </tr>
 </thead>
 <!-- Body -->
 <tbody>
  <rw:foreach id="RGIDPACIENT801" src="G_ID_PACIENT">
   <tr>
    <td <rw:headers id="HFIDPACIENT80" src="HBIDPACIENT80"/> class="OraCellNumber"><rw:field id="FIDPACIENT80" src="ID_PACIENT" nullValue="&nbsp;"> F_ID_PACIENT </rw:field></td>
    <td <rw:headers id="HFIDCLINICA80" src="HBIDCLINICA80"/> class="OraCellNumber"><rw:field id="FIDCLINICA80" src="ID_CLINICA" nullValue="&nbsp;"> F_ID_CLINICA </rw:field></td>
    <td <rw:headers id="HFNUMARINTERNARE80" src="HBNUMARINTERNARE80"/> class="OraCellNumber"><rw:field id="FNUMARINTERNARE80" src="NUMAR_INTERNARE" nullValue="&nbsp;"> F_NUMAR_INTERNARE </rw:field></td>
    <td <rw:headers id="HFPERIOADA80" src="HBPERIOADA80"/> class="OraCellText"><rw:field id="FPERIOADA80" src="PERIOADA" nullValue="&nbsp;"> F_PERIOADA </rw:field></td>
    <td <rw:headers id="HFDETALIIAVIZARE80" src="HBDETALIIAVIZARE80"/> class="OraCellText"><rw:field id="FDETALIIAVIZARE80" src="DETALII_AVIZARE" nullValue="&nbsp;"> F_DETALII_AVIZARE </rw:field></td>
    <td <rw:headers id="HFDETALIISUPLIMNETARE80" src="HBDETALIISUPLIMNETARE80"/> class="OraCellText"><rw:field id="FDETALIISUPLIMNETARE80" src="DETALII_SUPLIMNETARE" nullValue="&nbsp;"> F_DETALII_SUPLIMNETARE </rw:field></td>
   </tr>
  </rw:foreach>
 </tbody>
</table>
</rw:dataArea> <!-- id="MGIDPACIENTGRPFR80" -->
<!-- End of Data Area Generated by Reports Developer -->

      </DIV>
    </TD>
  </TR>
</TABLE>

<P>
  <BR>
</P>

<TABLE border=0 cellPadding=0 cellSpacing=0 width="100%">
  <TBODY>
  <TR>
    <TD bgColor="#000000" colSpan=2><IMG alt="" border=0 height=1 src="images/stretch.gif" width=1></TD>
  </TR>
  <TR>
    <TD bgColor="#ff0000" colSpan=2 class="OraColumnHeader"><IMG alt="" border=0 height=4 src="images/stretch.gif" width=1></TD>
  </TR>
  <TR>
    <TD bgColor="#000000" colSpan=2><IMG alt="" border=0 height=1 src="images/stretch.gif" width=1></TD>
  </TR>
  <TR>
    <TD bgColor="#ffffff">&nbsp;</TD>
    <TD align=right bgColor="#ffffff">&nbsp;</TD>
  </TR>
  </TBODY>
</TABLE>

</BODY>

</HTML>

<!--
</rw:report>
-->
