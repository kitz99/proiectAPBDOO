<%@ taglib uri="/WEB-INF/lib/reports_tld.jar" prefix="rw" %> 
<%@ page language="java" import="java.io.*" errorPage="/rwerror.jsp" session="false" %>
<%@ page contentType="text/html;charset=ISO-8859-1" %>
<!--
<rw:report id="report"> 
<rw:objects id="objects">
<?xml version="1.0" encoding="WINDOWS-1252" ?>
<report name="Utilizatori" DTDVersion="9.0.2.0.10">
  <xmlSettings xmlTag="UTILIZATORI" xmlPrologType="text">
  <![CDATA[<?xml version="1.0" encoding="&Encoding"?>]]>
  </xmlSettings>
  <reportHtmlEscapes>
    <beforeReportHtmlEscape>
    <![CDATA[<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html dir=&Direction>
<head>
<meta http-equiv="Content-Type"  content="text/html; charset=&Encoding">
</head>
<body bgcolor="#ffffff">

]]>
    </beforeReportHtmlEscape>
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
    <dataSource name="APP_USER">
      <select>
      <![CDATA[select USER_ID USER_ID, LANGUAGE_ID LANGUAGE_ID, USERNAME USERNAME, PASSWORD PASSWORD, FIRST_NAME FIRST_NAME, LAST_NAME LAST_NAME, EMAIL EMAIL, CREATED_AT CREATED_AT from APP_USER]]>
      </select>
      <displayInfo x="1.65002" y="1.00000" width="0.69995" height="0.19995"/>
      <group name="G_USER_ID">
        <displayInfo x="1.26746" y="1.94995" width="1.46521" height="1.69922"
        />
        <dataItem name="USER_ID" oracleDatatype="number" columnOrder="11"
         width="22" defaultWidth="80000" defaultHeight="10000"
         columnFlags="33" defaultLabel="User Id">
          <dataDescriptor expression="USER_ID" descriptiveExpression="USER_ID"
           order="1" width="22" precision="6"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="LANGUAGE_ID" oracleDatatype="number" columnOrder="12"
         width="22" defaultWidth="80000" defaultHeight="10000"
         columnFlags="33" defaultLabel="Language Id">
          <dataDescriptor expression="LANGUAGE_ID"
           descriptiveExpression="LANGUAGE_ID" order="2" width="22"
           precision="6"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="USERNAME" datatype="vchar2" columnOrder="13"
         width="510" defaultWidth="100000" defaultHeight="10000"
         columnFlags="33" defaultLabel="Username">
          <dataDescriptor expression="USERNAME"
           descriptiveExpression="USERNAME" order="3" width="510"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="PASSWORD" datatype="vchar2" columnOrder="14"
         width="510" defaultWidth="100000" defaultHeight="10000"
         columnFlags="33" defaultLabel="Password">
          <dataDescriptor expression="PASSWORD"
           descriptiveExpression="PASSWORD" order="4" width="510"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="FIRST_NAME" datatype="vchar2" columnOrder="15"
         width="510" defaultWidth="100000" defaultHeight="10000"
         columnFlags="33" defaultLabel="First Name">
          <dataDescriptor expression="FIRST_NAME"
           descriptiveExpression="FIRST_NAME" order="5" width="510"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="LAST_NAME" datatype="vchar2" columnOrder="16"
         width="510" defaultWidth="100000" defaultHeight="10000"
         columnFlags="33" defaultLabel="Last Name">
          <dataDescriptor expression="LAST_NAME"
           descriptiveExpression="LAST_NAME" order="6" width="510"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="EMAIL" datatype="vchar2" columnOrder="17" width="510"
         defaultWidth="100000" defaultHeight="10000" columnFlags="33"
         defaultLabel="Email">
          <dataDescriptor expression="EMAIL" descriptiveExpression="EMAIL"
           order="7" width="510"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="CREATED_AT" datatype="date" oracleDatatype="date"
         columnOrder="18" width="9" defaultWidth="90000" defaultHeight="10000"
         columnFlags="33" defaultLabel="Created At">
          <dataDescriptor expression="CREATED_AT"
           descriptiveExpression="CREATED_AT" order="8" width="9"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
      </group>
    </dataSource>
    <summary name="CountUSER_IDPerReport" source="USER_ID" function="count"
     precision="8" reset="report" compute="report" defaultWidth="100000"
     defaultHeight="10000" columnFlags="552" defaultLabel="Count:">
      <displayInfo x="0.00000" y="0.00000" width="0.00000" height="0.00000"/>
    </summary>
  </data>
  <layout>
  <section name="main">
    <body>
      <frame name="M_G_USER_ID_GRPFR">
        <geometryInfo x="0.00000" y="0.00000" width="6.87500" height="0.56250"
        />
        <generalLayout verticalElasticity="variable"/>
        <visualSettings fillPattern="transparent"
         fillBackgroundColor="r100g100b100"/>
        <repeatingFrame name="R_G_USER_ID" source="G_USER_ID"
         printDirection="down" minWidowRecords="1" columnMode="no">
          <geometryInfo x="0.00000" y="0.18750" width="6.87500"
           height="0.18750"/>
          <generalLayout verticalElasticity="expand"/>
          <visualSettings fillPattern="transparent"
           fillBackgroundColor="Background2"/>
          <field name="F_USER_ID" source="USER_ID" minWidowLines="1"
           spacing="0" alignment="start">
            <font face="helvetica" size="9"/>
            <geometryInfo x="0.00000" y="0.18750" width="1.37500"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
          </field>
          <field name="F_LANGUAGE_ID" source="LANGUAGE_ID" minWidowLines="1"
           spacing="0" alignment="start">
            <font face="helvetica" size="9"/>
            <geometryInfo x="1.37500" y="0.18750" width="1.06250"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
          </field>
          <field name="F_USERNAME" source="USERNAME" minWidowLines="1"
           spacing="0" alignment="start">
            <font face="helvetica" size="9"/>
            <geometryInfo x="2.43750" y="0.18750" width="0.62500"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
          </field>
          <field name="F_PASSWORD" source="PASSWORD" minWidowLines="1"
           spacing="0" alignment="start">
            <font face="helvetica" size="9"/>
            <geometryInfo x="3.06250" y="0.18750" width="0.62500"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
          </field>
          <field name="F_FIRST_NAME" source="FIRST_NAME" minWidowLines="1"
           spacing="0" alignment="start">
            <font face="helvetica" size="9"/>
            <geometryInfo x="3.68750" y="0.18750" width="0.68750"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
          </field>
          <field name="F_LAST_NAME" source="LAST_NAME" minWidowLines="1"
           spacing="0" alignment="start">
            <font face="helvetica" size="9"/>
            <geometryInfo x="4.37500" y="0.18750" width="0.68750"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
          </field>
          <field name="F_EMAIL" source="EMAIL" minWidowLines="1" spacing="0"
           alignment="start">
            <font face="helvetica" size="9"/>
            <geometryInfo x="5.06250" y="0.18750" width="0.62500"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
          </field>
          <field name="F_CREATED_AT" source="CREATED_AT" minWidowLines="1"
           spacing="0" alignment="start">
            <font face="helvetica" size="9"/>
            <geometryInfo x="5.68750" y="0.18750" width="1.18750"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
          </field>
        </repeatingFrame>
        <frame name="M_G_USER_ID_FTR">
          <geometryInfo x="0.00000" y="0.37500" width="6.87500"
           height="0.18750"/>
          <advancedLayout printObjectOnPage="lastPage"
           basePrintingOn="anchoringObject"/>
          <visualSettings fillPattern="transparent"
           fillBackgroundColor="Background3"/>
          <field name="F_CountUSER_IDPerReport" source="CountUSER_IDPerReport"
           minWidowLines="1" spacing="0" alignment="start">
            <font face="helvetica" size="9" bold="yes"/>
            <geometryInfo x="0.00000" y="0.37500" width="1.37500"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
          </field>
        </frame>
        <frame name="M_G_USER_ID_HDR">
          <geometryInfo x="0.00000" y="0.00000" width="6.87500"
           height="0.18750"/>
          <advancedLayout printObjectOnPage="allPage"
           basePrintingOn="anchoringObject"/>
          <visualSettings fillPattern="transparent"
           fillBackgroundColor="custom6"/>
          <text name="B_USER_ID" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="0.00000" y="0.00000" width="1.37500"
             height="0.18750"/>
            <visualSettings fillBackgroundColor="custom6"/>
            <textSegment>
              <font face="helvetica" size="9" bold="yes"
               textColor="r100g100b100"/>
              <string>
              <![CDATA[User Id]]>
              </string>
            </textSegment>
          </text>
          <text name="B_LANGUAGE_ID" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="1.37500" y="0.00000" width="1.06250"
             height="0.18750"/>
            <visualSettings fillBackgroundColor="custom6"/>
            <textSegment>
              <font face="helvetica" size="9" bold="yes"
               textColor="r100g100b100"/>
              <string>
              <![CDATA[Language Id]]>
              </string>
            </textSegment>
          </text>
          <text name="B_USERNAME" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="2.43750" y="0.00000" width="0.62500"
             height="0.18750"/>
            <visualSettings fillBackgroundColor="r25g50b75"/>
            <textSegment>
              <font face="helvetica" size="9" bold="yes"
               textColor="r100g100b100"/>
              <string>
              <![CDATA[Username]]>
              </string>
            </textSegment>
          </text>
          <text name="B_PASSWORD" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="3.06250" y="0.00000" width="0.62500"
             height="0.18750"/>
            <visualSettings fillBackgroundColor="r25g50b75"/>
            <textSegment>
              <font face="helvetica" size="9" bold="yes"
               textColor="r100g100b100"/>
              <string>
              <![CDATA[Password]]>
              </string>
            </textSegment>
          </text>
          <text name="B_FIRST_NAME" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="3.68750" y="0.00000" width="0.68750"
             height="0.18750"/>
            <visualSettings fillBackgroundColor="r25g50b75"/>
            <textSegment>
              <font face="helvetica" size="9" bold="yes"
               textColor="r100g100b100"/>
              <string>
              <![CDATA[First Name]]>
              </string>
            </textSegment>
          </text>
          <text name="B_LAST_NAME" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="4.37500" y="0.00000" width="0.68750"
             height="0.18750"/>
            <visualSettings fillBackgroundColor="r25g50b75"/>
            <textSegment>
              <font face="helvetica" size="9" bold="yes"
               textColor="r100g100b100"/>
              <string>
              <![CDATA[Last Name]]>
              </string>
            </textSegment>
          </text>
          <text name="B_EMAIL" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="5.06250" y="0.00000" width="0.62500"
             height="0.18750"/>
            <visualSettings fillBackgroundColor="r25g50b75"/>
            <textSegment>
              <font face="helvetica" size="9" bold="yes"
               textColor="r100g100b100"/>
              <string>
              <![CDATA[Email]]>
              </string>
            </textSegment>
          </text>
          <text name="B_CREATED_AT" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="5.68750" y="0.00000" width="1.18750"
             height="0.18750"/>
            <visualSettings fillBackgroundColor="custom6"/>
            <textSegment>
              <font face="helvetica" size="9" bold="yes"
               textColor="r100g100b100"/>
              <string>
              <![CDATA[Created At]]>
              </string>
            </textSegment>
          </text>
        </frame>
      </frame>
    </body>
    <margin>
      <image name="B_1_SEC2" templateSection="main">
        <geometryInfo x="0.50000" y="0.43750" width="1.40625" height="0.37500"
        />
        <visualSettings fillPattern="transparent" fillBackgroundColor="black"
         linePattern="transparent" lineBackgroundColor="black"/>
        <points>
          <point x="0.00000" y="0.00000"/>
          <point x="1.40625" y="0.37500"/>
          <point x="0.50000" y="0.43750"/>
          <point x="1.40625" y="0.37500"/>
        </points>
        <binaryData encoding="hexidecimal" dataId="image.B_1_SEC2">
          
74946483 93167800 42007F00 00FFFFFF 9C28DA2F 0EBE3950 C54E1C6D 7D1A2CCC
A82B8FFE 5FCF7FAF DD1BCCAD 9A7C0D29 7BBE0D0E 7E8CBDEE 8D5E5F8E 0F3D99CB
1E9B1DA9 51665B35 F8CB3699 2C273A7A 43B79C28 EAEA4458 1A42070D 298B6CA7
8AFBB6E9 BAC3F769 D0160000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00000000 00000000 00000000 00000000 00000000
00000000 00000000 00000000 00129F40 00000000 00C20000 00007800 42000080
FF003080 C1840B0A 1C388031 A2C58C01 1E60C091 6084C10E 1A3C4868 8133E043
08000874 0020A061 8F820A0C 143040A3 E7400408 0E8C5912 90E7C69B 031C1859
8317E189 830804EC F90438A0 51811A06 2859B080 A18B9C27 1E2870B2 96A0C794
2B0ECC68 C15829C9 8614BA7D FA8350A0 05050508 749A20B1 87C60855 563D1845
D36CC187 5B1E15FA A1626500 BC7DBA85 40608024 00070203 C5F870C0 A2020112
921CBBF6 7A2EC9B2 0BEA0480 20233307 C20D0C7D 9031D76F D1DF35C2 00705090
89CD8C43 18258AF1 D53146A8 63E284BA 76D5EA44 D23DBA40 98212821 06AC2983
05202A5B A9600467 36145BE1 D0B0C4EE 1103148E 5B723EE8 C102E230 5AE590C4
FFC90B2F 04508830 2387C20F B3381F99 31034284 021C67EC 5E808371 450F1313
148DB292 010C0810 CD540018 108D6200 2810C747 02180180 02121060 02809505
51C00A1A D670460A 12500046 8A1E004D 97491288 00C50304 0724D086 6974B023
810810E6 5C840EF4 F0E08F25 E8902E46 3E08E0AC 824A10FE DF461C88 F2EA4218
68904103 18603223 08315030 060E1130 A1AA7D26 00942001 18C8E0CA 4F363893
1F8B3228 A023814A 09862081 49003267 583169A1 21002610 A12B8F19 A842A747
0C196F1E 4E2EA480 C20802F7 26AA9562 A9E1999E 3A2A000F 823A100D 97587A68
B71E4C7E 4041CD43 1C7826A6 8276F538 EA450028 52220C06 79E1D9A4 0640D823
FFA98228 B6AE8004 30C02CAE 5D7A576E 474EA825 200326C5 45E00710 965AE74E
AE085220 06821871 20070038 1CA3080A 76B21EA4 0E205B6F 8E523816 A65B4EA8
931C9A1E 1B004203 2A173E64 BF552BDA 2AAB8228 59E10010 38A2D4B6 1E74F045
80D67BF2 120EFE08 B08B583E 884E1E47 9A40C498 83A20047 6F914110 542CB00C
2B1043B2 03386041 07F2384D 16C33A7C 23629E8E 5902B052 2E00A14E 4CB66A00
8786C200 F2210326 4BC4DF90 CA0AC5A2 C2F69BC6 2380181C F040DBF2 0CB2D7C3
021914DF A300BA2C 23903E88 40C50F2E 1032A59B 7EB405A6 890F7461 36CDCA74
E0C0C24A 2060F596 6BC85081 C723C8C0 ABBD8E88 30CB7AE2 9B37F781 716095F5
FF051840 4557D30C 7DE158DF 3FF48001 0FCE1A05 F7470420 B6700014 0BB2DBDE
1908802B A50CFD47 36071017 5CE7D20C 29083E47 041BF167 9A3B4049 71E78619
E1530197 6CD19482 00082082 DCCAF8F5 218596DA E596B806 8BB25FE0 929DB105
0B1CEEE0 E60C18EA E7E0C414 BE0006E3 0ACDB251 D7D63E83 520783FB 80AB91B2
091CF5BF 396F7CF5 EFDF380D F8FEDE74 6D21818E CB3025F1 492D36BF B8D2E493
285B87BF B2950400 60840CC9 020C0040 4AE01080 8CA21060 0C837042 0E30172D
08208208 5580C008 D6E00110 B025F400 90CF9820 608882C9 C2070883 920C0010
890020A8 FE32D009 02A0372E 0801E74E 48108508 1C04852A 11210703 B2961AB0
FFF32700 F121F000 708C0EA0 17201810 627004C0 81065A00 483C41E0 1F68304E
6D74C10E 69308C09 C4931F1A 2052800C 215D0528 4D9708C0 B00D0840 830768F1
112A40D8 372C4E80 0E54E5C9 0200EE88 5483A744 58304A3A 31752118 32631528
04980E81 528CD300 44052874 C81E7156 804CF8CB 1908DAB3 3AD1393B 00D22008
0094AA22 12D28744 00002D83 B08B0541 119049A1 E2290860 84BD7400 9C8C590E
0729304B DC429A30 2C008D19 A29008C4 10249504 FA4E1B29 84CC1EA4 010234C9
479410FA 42069075 22949167 9E698B4D 5E719793 84F8080F 32C00AC5 00889E7C
44E12F77 294739F0 BC9A3CF8 020E778D C1069239 839CB6E7 1F29A14C 9821908F
FFBBE5AD 17C9E193 00350484 E4036B2F 09A7CF36 73D32BAC 276006A9 62C94EEF
C32BE491 27352838 970450B8 9F19A8E0 0DD457CF 80F0372B 0C282E4A 38508200
24948ECC B3A8F498 83197205 2E95E4A5 AC012A79 C6DDA2DD 4DB420AD 64C822DC
7A51D4AB 21B9AC0D E7041936 C43001BC F90D4D0A 6A4C5624 100F0051 A10A7830
C86930A9 86084081 C899B0DE 56E46084 4D95A455 69DA4E8A 744A9E45 C5A51179
0150A4E1 F3A06193 EF310A14 5CBE725D A15D9426 F082E0C5 AAC432A3 9C7B2E21
9ABCC596 B35B2D05 F56E5719 56558E42 F88A6490 E4410011 0782C23D 6F453C2E
2F778314 0CA43B8D 84404661 D897D8B0 0232BD75 91E56F4B 09C59456 50BC25B5
84AB5B8A 25520E20 A1094240 800220BF C53230A7 BFBD0E60 02107741 045339BD
35EDED15 E8CC510C 863791DD 9E22799B 80C8EE71 D9BFC5C5 65737B0E D0FA877C
B4ED2FA9 7FCB5ED0 8000B3DC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC
DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC
DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC
DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC
DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC
DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC
DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC
DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC
DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC
DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC
DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC
DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC
DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC
DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC
DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC
DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC
DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC
DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC
DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC
DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC
DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC
DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC
DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC
DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC
DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC
DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC
DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC
DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC DCDCDCDC
DCDCDCDC DCDCDCDC DCDCDCDC DCDCDFDF
        </binaryData>
      </image>
    </margin>
  </section>
  </layout>
  <colorPalette>
    <color index="190" displayName="TextColor" value="#ffffff"/>
    <color index="191" displayName="custom6" value="#93065d"/>
    <color index="192" displayName="Background2" value="#e4c1d6"/>
    <color index="193" displayName="Background3" value="#c982ae"/>
  </colorPalette>
  <reportPrivate defaultReportType="tabular" versionFlags2="0"
   templateName="rwwine"/>
  <reportWebSettings>
  <![CDATA[]]>
  </reportWebSettings>
</report>
</rw:objects>
-->

<html>

<head>
<meta name="GENERATOR" content="Oracle 9i Reports Developer"/>
<title> Your Title </title>

<rw:style id="yourStyle">
   <!-- Report Wizard inserts style link clause here -->
</rw:style>

</head>


<body>

<rw:dataArea id="yourDataArea">
   <!-- Report Wizard inserts the default jsp here -->
</rw:dataArea>



</body>
</html>

<!--
</rw:report> 
-->
