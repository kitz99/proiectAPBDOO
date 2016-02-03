<%@ taglib uri="/WEB-INF/lib/reports_tld.jar" prefix="rw" %>
<%@ page language="java" import="java.io.*" errorPage="/rwerror.jsp" session="false" %>
<!--
<rw:report id="report">
<rw:objects id="objects">
<?xml version="1.0" encoding="WINDOWS-1252" ?>
<report name="Pacienti" DTDVersion="9.0.2.0.10">
  <xmlSettings xmlTag="PACIENTI" xmlPrologType="text">
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
      <![CDATA[SELECT ALL PACIENTI.ID_PACIENT, 
PACIENTI.NUME, PACIENTI.ADRESA, PACIENTI.DETALII_PACIENT
FROM PACIENTI ]]>
      </select>
      <displayInfo x="1.65002" y="1.00000" width="0.69995" height="0.19995"/>
      <group name="G_NUME">
        <displayInfo x="1.12097" y="1.94995" width="1.75818" height="0.97949"
        />
        <dataItem name="NUME" datatype="vchar2" columnOrder="12" width="20"
         defaultWidth="100000" defaultHeight="10000" columnFlags="33"
         defaultLabel="Nume">
          <dataDescriptor expression="PACIENTI.NUME"
           descriptiveExpression="NUME" order="2" width="20"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="ADRESA" datatype="vchar2" columnOrder="13" width="50"
         defaultWidth="100000" defaultHeight="10000" columnFlags="33"
         defaultLabel="Adresa">
          <dataDescriptor expression="PACIENTI.ADRESA"
           descriptiveExpression="ADRESA" order="3" width="50"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="DETALII_PACIENT" datatype="vchar2" columnOrder="14"
         width="2000" defaultWidth="100000" defaultHeight="10000"
         columnFlags="33" defaultLabel="Detalii Pacient">
          <dataDescriptor expression="PACIENTI.DETALII_PACIENT"
           descriptiveExpression="DETALII_PACIENT" order="4" width="2000"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="ID_PACIENT" oracleDatatype="number" columnOrder="11"
         width="22" defaultWidth="20000" defaultHeight="10000" columnFlags="1"
         defaultLabel="Id Pacient">
          <dataDescriptor expression="PACIENTI.ID_PACIENT"
           descriptiveExpression="ID_PACIENT" order="1" width="22"
           scale="-127"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
      </group>
    </dataSource>
  </data>
  <layout>
  <section name="main">
    <body>
      <frame name="M_G_NUME_GRPFR">
        <geometryInfo x="0.00000" y="0.00000" width="4.50000" height="0.37500"
        />
        <generalLayout verticalElasticity="variable"/>
        <visualSettings fillPattern="transparent"/>
        <repeatingFrame name="R_G_NUME" source="G_NUME" printDirection="down"
         minWidowRecords="1" columnMode="no">
          <geometryInfo x="0.00000" y="0.18750" width="4.50000"
           height="0.18750"/>
          <generalLayout verticalElasticity="expand"/>
          <visualSettings fillPattern="transparent"
           fillBackgroundColor="TableCell"/>
          <field name="F_NUME" source="NUME" minWidowLines="1" spacing="0"
           alignment="start">
            <font face="helvetica" size="10"/>
            <geometryInfo x="0.00000" y="0.18750" width="1.50000"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
          </field>
          <field name="F_ADRESA" source="ADRESA" minWidowLines="1" spacing="0"
           alignment="start">
            <font face="helvetica" size="10"/>
            <geometryInfo x="1.50000" y="0.18750" width="1.50000"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
          </field>
          <field name="F_DETALII_PACIENT" source="DETALII_PACIENT"
           minWidowLines="1" spacing="0" alignment="start">
            <font face="helvetica" size="10"/>
            <geometryInfo x="3.00000" y="0.18750" width="1.50000"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
          </field>
        </repeatingFrame>
        <frame name="M_G_NUME_HDR">
          <geometryInfo x="0.00000" y="0.00000" width="4.50000"
           height="0.18750"/>
          <advancedLayout printObjectOnPage="allPage"
           basePrintingOn="anchoringObject"/>
          <visualSettings fillPattern="transparent"
           fillBackgroundColor="TextColor"/>
          <text name="B_NUME" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="0.00000" y="0.00000" width="1.50000"
             height="0.18750"/>
            <visualSettings fillBackgroundColor="r25g50b75"/>
            <textSegment>
              <font face="helvetica" size="10" bold="yes" textColor="white"/>
              <string>
              <![CDATA[Nume]]>
              </string>
            </textSegment>
          </text>
          <text name="B_ADRESA" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="1.50000" y="0.00000" width="1.50000"
             height="0.18750"/>
            <visualSettings fillBackgroundColor="r25g50b75"/>
            <textSegment>
              <font face="helvetica" size="10" bold="yes" textColor="white"/>
              <string>
              <![CDATA[Adresa]]>
              </string>
            </textSegment>
          </text>
          <text name="B_DETALII_PACIENT" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="3.00000" y="0.00000" width="1.50000"
             height="0.18750"/>
            <visualSettings fillBackgroundColor="r25g50b75"/>
            <textSegment>
              <font face="helvetica" size="10" bold="yes" textColor="white"/>
              <string>
              <![CDATA[Detalii Pacient]]>
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
  <rw:style id="9">
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
<rw:dataArea id="MGNUMEGRPFR15">
<table class="OraTable">
<caption>  </caption>
 <!-- Header -->
 <thead>
  <tr>
   <th <rw:id id="HBNUME15" asArray="no"/> class="OraColumnHeader"> Nume </th>
   <th <rw:id id="HBADRESA15" asArray="no"/> class="OraColumnHeader"> Adresa </th>
   <th <rw:id id="HBDETALIIPACIENT15" asArray="no"/> class="OraColumnHeader"> Detalii Pacient </th>
  </tr>
 </thead>
 <!-- Body -->
 <tbody>
  <rw:foreach id="RGNUME151" src="G_NUME">
   <tr>
    <td <rw:headers id="HFNUME15" src="HBNUME15"/> class="OraCellText"><rw:field id="FNUME15" src="NUME" nullValue="&nbsp;"> F_NUME </rw:field></td>
    <td <rw:headers id="HFADRESA15" src="HBADRESA15"/> class="OraCellText"><rw:field id="FADRESA15" src="ADRESA" nullValue="&nbsp;"> F_ADRESA </rw:field></td>
    <td <rw:headers id="HFDETALIIPACIENT15" src="HBDETALIIPACIENT15"/> class="OraCellText"><rw:field id="FDETALIIPACIENT15" src="DETALII_PACIENT" nullValue="&nbsp;"> F_DETALII_PACIENT </rw:field></td>
   </tr>
  </rw:foreach>
 </tbody>
</table>
</rw:dataArea> <!-- id="MGNUMEGRPFR15" -->
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
