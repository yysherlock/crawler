
<!DOCTYPE HTML>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
    <title>
        检索—中国知网</title>
    <script src="http://piccache.cnki.net//KNS/script/jquery-1.4.2.min.js" type="text/javascript"></script>
    <link rel="stylesheet" type="text/css" href="http://piccache.cnki.net//KNS/css/gb_min/simple.min.css?v=00E263BABE23AAFD" />
    <script type="text/javascript" src="http://piccache.cnki.net//KNS/script/min/gb.ResultPage.min.js?v=D59787997F3B8FCE" ></script>
    <link rel="stylesheet" type="text/css" href="http://piccache.cnki.net//KNS/css/gb_min/colortip.min.css?v=D59787997F3B8FCE" />
    <script type="text/javascript" src="http://piccache.cnki.net//KNS/script/min/colortip.min.js?v=D59787997F3B8FCE" ></script>
</head>
<body onload="ge('txt_1_value1').focus();JugeHideGroup();" onkeydown="if(event.keyCode==13) {SubmitKey();return false;}else{}">
    <a id="ys" name="ys"></a>
    <div id="HeaderDiv">
    </div>
    <form id="Form1" name="Form1" action="#" method="post" autocomplete="off">
    <div class="main_sh">
        
        <div class="relayoutbig" id="relayContent" name="relayContent">
    <div class="renav">
        <ul id="dbTag">
        </ul>
    </div>
    <div id="TopSearchBar" class="researchbox">
        <div class="reallclass" id="floatnavi" >
            <a class="reclassname" href="javascript:void(0);" >文献全部分类</a>
            <!--[if lt IE 9]><s class="radiusfix radiusfixlt"></s><![endif]-->
            <div class="reclasslist" id="rehidenavlist"></div>
        </div>
        <div class="research">
            <span class="reopt" id="typeSelect">
                <select id="txt_1_sel" name="txt_1_sel" class="searchw8">
                    <option value='FT$%=|' selected=''>全文</option>
                    <option value='SU$%=|' >主题</option>
                    <option value='TI$%=|'>篇名</option>
                    <option value='AU$=|'>作者</option>
                    <option value='AF$%'>单位</option>
                    <option value='KY$=|' >关键词</option>
                    <option value='AB$%=|'>摘要</option>
                    <option value='RF$%=|' >参考文献</option>
                    <option value='CLC$=|??'>中图分类号</option>
                    <option value='JN$=|'>文献来源</option>
                </select>               
            </span>          
            <input class="rekeyword"  value="" id="txt_1_value1" name="txt_1_value1"
                       maxlength="100" type="text" onFocus="if(KeywordVal(this.value)==false) this.value='';this.style.color='#000000';document.getElementById('currentid').value=this.id;" onkeypress="SignVal(this,'sign',event)" onpaste="return SignVal(this,'value',event)"  onkeyup="SignVal1(this)" />
            <select id="txt_1_special1" name="txt_1_special1" style="display:none;">
                <option value='%' selected=''>模糊</option>
                <option value='='>精确</option>
            </select>
            <input type="hidden" id="txt_1_extension" name ="txt_extension" value=""/>
            <input type="button" id="btnSearch" class="researchbtn" onclick="javascript:IndexSearchOnclick('&ua=1.11');"/>
            <!--[if lt IE 9]><s class="radiusfix radiusfixrt"></s><![endif]-->
        </div>
        <div class="readvce" >
            <a href="javascript:void(0);" onclick="javascript:SearchSourse('/KNS/in/')" class="readvceNav">出版物检索</a>
            <a id="allselectdblistbtn" name="allselectdblistbtn" href="javascript:void(0);" class="recoresear" style="display:block;">跨库选择<em></em></a>
            <div class="readvceDiv">
                <a id ="divresult" style="display:none;" href="javascript:void(0);" onclick="javascript:SearchBarSubmitResult('','&ua=1.16')">结果中检索</a>
                <a id ="advacneId" href="/KNS/brief/result.aspx?dbprefix=scdb&action=scdbsearch&db_opt=SCDB">高级检索</a>
            </div>
        </div>
    </div>
    <div class="recoredb" style="display:none;" id="coreContent"></div>
    
    <div id="reselectboxNavi" name="reselectboxNavi" class="reselectbox2">
        <span class="" id="checkcatalog"></span>
        <span class="SearchHisTip" id="SearchHisTip"></span>
        <div  class="aptitudeTip" id="aptitudeTip"></div>
        <div style="margin-left:10px;" id="RecommendTip"></div>
    </div>
    <div class="reselectbox" id="displayCheckDB" name="displayCheckDB" style="display:none;">
        <div class="clear"></div>
    </div>
    <input type="hidden"  id="expertvalue" name="expertvalue" />
    <input type="hidden" value="" name="cjfdcode" id="cjfdcode" />
    <input type="hidden" id="currentid" name="currentid" value="" />
    <input type="hidden" id="dbJson" name="dbJson" value="coreJson"/>
    <input id="dbPrefix" value="SCDB" name="dbPrefix" type="hidden" />
    <input id="db_opt" value="中国学术文献网络出版总库" type="hidden" name="db_opt" />
    <input id="db_value" value="" type="hidden" name="db_value" />
    <input id="hidTabChange" value="" name="hidTabChange" type="hidden" />
    <input id="hidDivIDS" name="hidDivIDS" value="" type="hidden"/>
    <input id="singleDB" name="singleDB" value="SCDB" type="hidden"/>
    <input id="db_codes" name="db_codes" value="" type="hidden"/>
    <input id="singleDBName" name="singleDBName" value ="" type="hidden"/>
    <div id="hiddenNavi" style="display:none;">
        <input type="checkbox" id="selectbox" value="*" name="" checked="true" />
        <input type="checkbox" id="selectbox" value="" name="" />
        <input type='hidden' id='selecteboxname' value='' />
    </div>
    <input id="againConfigJson" name="againConfigJson" value="false" type="hidden"/>
</div>

<script type="text/javascript">
  var fieldJson = [{'key':'SCDB','value':[{'key':'全文','value':'FT$%=|'},{'key':'主题','value':'SU$%=|'},{'key':'篇名','value':'TI$%=|'},{'key':'作者','value':'AU$=|'},{'key':'单位','value':'AF$%'},{'key':'关键词','value':'KY$=|'},{'key':'摘要','value':'AB$%=|'},{'key':'参考文献','value':'RF$%=|'},{'key':'中图分类号','value':'CLC$=|??'},{'key':'文献来源','value':'LY$%=|'}]},{'key':'CJFQ','value':[{'key':'全文','value':'FT$%=|'},{'key':'主题','value':'SU$%=|'},{'key':'篇名','value':'TI$%=|'},{'key':'关键词','value':'KY$=|'},{'key':'作者','value':'AU$=|'},{'key':'单位','value':'AF$%'},{'key':'刊名','value':'LY$%=|'},{'key':'ISSN','value':'SN$=|??'},{'key':'CN','value':'CN$=|??'},{'key':'基金','value':'FU'},{'key':'摘要','value':'AB$%=|'},{'key':'参考文献','value':'RF$%=|'},{'key':'中图分类号','value':'CLC$=|??'},{'key':'DOI','value':'DOI$=|??'},{'key':'栏目信息','value':'QKLM$%=|??'}]},{'key':'CDMD','value':[{'key':'全文','value':'FT$%=|'},{'key':'主题','value':'SU$%=|'},{'key':'题名','value':'TI$%=|'},{'key':'作者','value':'AU$=|'},{'key':'导师','value':'TU$=|'},{'key':'第一导师','value':'FTU$=|'},{'key':'学位授予单位','value':'DF$%|'},{'key':'关键词','value':'KY$=|'},{'key':'摘要','value':'AB$%=|'},{'key':'目录','value':'CO$%=|'},{'key':'参考文献','value':'RF$%=|'},{'key':'中图分类号','value':'CLC$=|??'},{'key':'学科专业名称','value':'XF'}]},{'key':'CLKD','value':[{'key':'全文','value':'FT'},{'key':'主题','value':'SU$%=|'},{'key':'题名','value':'TI$%=|'},{'key':'作者','value':'AU$=|'},{'key':'作者单位','value':'AF'},{'key':'来源','value':'LY'},{'key':'关键词','value':'KY$=|'},{'key':'摘要','value':'AB$%=|'}]},{'key':'CIPD','value':[{'key':'全文','value':'FT$%=|'},{'key':'主题','value':'SU$%=|'},{'key':'篇名','value':'TI$%=|'},{'key':'关键词','value':'KY$=|'},{'key':'作者','value':'AU$=|'},{'key':'单位','value':'AF$%'},{'key':'会议名称','value':'CV'},{'key':'基金','value':'FU'},{'key':'摘要','value':'AB$%=|'},{'key':'论文集名称','value':'CP'},{'key':'参考文献','value':'RF$%=|'},{'key':'中图分类号','value':'CLC$=|??'}]},{'key':'CCND','value':[{'key':'全文','value':'FT$%=|'},{'key':'主题','value':'SU$%=|'},{'key':'题名','value':'TI$%=|'},{'key':'关键词','value':'KY$=|'},{'key':'作者','value':'AU$=|'},{'key':'报纸','value':'LY'},{'key':'中图分类号','value':'CLC$=|??'}]},{'key':'CYFD','value':[{'key':'正文','value':'FT'},{'key':'题名','value':'TI$%=|'},{'key':'出版者','value':'PU'},{'key':'年鉴','value':'LY'}]},{'key':'CRDD','value':[{'key':'','value':'FT$='},{'key':'','value':'TI$='}]},{'key':'CRPD','value':[{'key':'','value':'FT$='},{'key':'','value':'TI$='}]},{'key':'CRMD','value':[{'key':'','value':'FT$='},{'key':'','value':'TI$='}]},{'key':'CSYD','value':[{'key':'正文','value':'FT$%=|'},{'key':'题名','value':'TI$%=|'},{'key':'出版者','value':'PU'},{'key':'年鉴','value':'LY$%'},{'key':'卷','value':'JA'}]},{'key':'IMAGE','value':[{'key':'图片主题','value':'SU$='},{'key':'图片标题','value':'TI$='},{'key':'图片关键词','value':'KY$='},{'key':'图片说明','value':'AB$='}]},{'key':'SCOD','xls':'1','value':[{'key':'全文','value':'FT$%=|'},{'key':'专利名称','value':'TI$%=|'},{'key':'关键词','value':'KY$=|'},{'key':'申请号','value':'SQH$=|??'},{'key':'公开号','value':'GKH$=|??'},{'key':'分类号','value':'CLC$=|??'},{'key':'主分类号','value':'CLZ$=|??'},{'key':'申请人','value':'SQR$%=|'},{'key':'发明人','value':'FMR$%=|'},{'key':'同族专利项','value':'TSC'},{'key':'优先权','value':'YXQ'},{'key':'代理人','value':'DLR$=|'}]},{'key':'CISD','value':[{'key':'全文','value':'FT$%=|'},{'key':'标准名称','value':'TI$%=|'},{'key':'标准号','value':'BZH$=|??'},{'key':'关键词','value':'KY'},{'key':'摘要','value':'AB$%=|'},{'key':'发布日期','value':'PD'},{'key':'实施日期','value':'SD'},{'key':'发布单位名称','value':'DF$%'},{'key':'出版单位','value':'SDF$%'},{'key':'中国标准分类号','value':'CLC$=|??'},{'key':'国际标准分类号','value':'CLZ$=|??'},{'key':'起草人','value':'DLR'}]},{'key':'WWJD','xls':'1','value':[{'key':'主题','value':'SU$%=|'},{'key':'篇名','value':'TI$%=|'},{'key':'作者','value':'AU'},{'key':'关键词','value':'KY'},{'key':'机构','value':'AF'},{'key':'刊名','value':'JN'},{'key':'摘要','value':'AB$%=|'},{'key':'年','value':'YE'},{'key':'ISSN','value':'SN'}]},{'key':'SNAD','value':[{'key':'全文','value':'FT$%=|'},{'key':'成果名称','value':'TI$%=|'},{'key':'关键词','value':'KY$=|'},{'key':'成果简介','value':'AB$%=|'},{'key':'中图分类号','value':'CLC$=|??'},{'key':'学科分类号','value':'CLZ'},{'key':'成果完成人','value':'SQR$=|'},{'key':'第一完成单位','value':'FDR'},{'key':'单位所在省市','value':'SZS$=|?'},{'key':'合作完成单位','value':'SDF'}]},{'key':'GXDB_SECTION','value':[{'key':'全文','value':'FT$%=|'},{'key':'书名','value':'LY$%=|'},{'key':'著者','value':'AU'},{'key':'卷名','value':'TI'}]},{'key':'CIDX','value':[{'key':'','value':'sval'}]},{'key':'CHCF','value':[{'key':'姓名','value':'AU$=|'},{'key':'单位','value':'AF%'},{'key':'研究领域','value':'YL'},{'key':'所在地域','value':'SY'}]},{'key':'CRLD','value':[{'key':'被引题名','value':'TI$%=|'},{'key':'被引作者','value':'AU$=|'},{'key':'被引第一作者','value':'FI$=|'},{'key':'被引单位','value':'AF'},{'key':'被引来源','value':'LY'},{'key':'被引文献关键词','value':'KY$=|'},{'key':'被引摘要','value':'AB$%=|'},{'key':'被引文献分类号','value':'CLC$=|??'}]}];
</script>
<script language="javascript" type="text/javascript"> 
function SetInputByID(strIDS)
{
	var input='db_opt||CJFQ,CJFN,CDFD,CMFD,CPFD,IPFD,CCND,CCJD,HBRD$$txt_1_sel||FT$%=|$$txt_1_special1||%$$db_opt||CJFQ,CJFN,CDFD,CMFD,CPFD,IPFD,CCND,CCJD,HBRD$$txt_1_sel||FT$%=|$$txt_1_special1||%$$';
	var arrInput = input.split('$$');
	for (var i=0;i<arrInput.length;i++)
	{
		var arrKeyValue=arrInput[i].split('||');
		if (arrKeyValue[0]==strIDS&&document.getElementById(arrKeyValue[0]) != null && arrKeyValue[1] != null)
		{
			document.getElementById(arrKeyValue[0]).value = arrKeyValue[1];
          break;
		}
	}
}
function SetInput()
{
	var input='db_opt||CJFQ,CJFN,CDFD,CMFD,CPFD,IPFD,CCND,CCJD,HBRD$$txt_1_sel||FT$%=|$$txt_1_special1||%$$db_opt||CJFQ,CJFN,CDFD,CMFD,CPFD,IPFD,CCND,CCJD,HBRD$$txt_1_sel||FT$%=|$$txt_1_special1||%$$';
	var arrInput = input.split('$$');
	for (var i=0;i<arrInput.length;i++)
	{
		var arrKeyValue=arrInput[i].split('||');
		if (document.getElementById(arrKeyValue[0]) != null && arrKeyValue[1] != null)
		{
			document.getElementById(arrKeyValue[0]).value = arrKeyValue[1];
		}
	}
}
SetInput();
function SearchParam()
{
	var param="&PageName=ASP.brief_default_result_aspx&DbPrefix=SCDB&DbCatalog=%e4%b8%ad%e5%9b%bd%e5%ad%a6%e6%9c%af%e6%96%87%e7%8c%ae%e7%bd%91%e7%bb%9c%e5%87%ba%e7%89%88%e6%80%bb%e5%ba%93&ConfigFile=SCDBINDEX.xml";
	var ids='db_opt$$db_value$$db_name$$NaviCode$$NaviName$$NaviField$$expertvalue$$txt_1||$$';
attachLists = [{'code':'SCDB','value':'db_opt$$db_value$$db_name$$NaviCode$$NaviName$$NaviField$$txt_1||$$expertvalue$$'},{'code':'CJFQ','value':'db_opt$$db_value$$db_name$$NaviCode$$NaviName$$NaviField$$expertvalue$$txt_1||$$'},{'code':'CIPD','value':'db_opt$$db_value$$db_name$$NaviCode$$NaviName$$NaviField$$txt_1||$$expertvalue$$'},{'code':'CCND','value':'db_opt$$db_value$$db_name$$NaviCode$$NaviName$$NaviField$$expertvalue$$txt_1||$$'},{'code':'CYFD','value':'db_opt$$db_value$$db_name$$NaviCode$$NaviName$$NaviField$$expertvalue$$txt_1||$$'},{'code':'CRFD','value':'db_opt$$db_value$$db_name$$NaviCode$$NaviName$$NaviField$$txt_1||$$expertvalue$$'},{'code':'CRDD','value':'db_opt$$db_value$$db_name$$NaviCode$$NaviName$$NaviField$$txt_1||$$expertvalue$$'},{'code':'CRPD','value':'db_opt$$db_value$$db_name$$NaviCode$$NaviName$$NaviField$$txt_1||$$expertvalue$$'},{'code':'CRMD','value':'db_opt$$db_value$$db_name$$NaviCode$$NaviName$$NaviField$$txt_1||$$expertvalue$$'},{'code':'IMAGE','value':'db_opt$$db_value$$db_name$$NaviCode$$NaviName$$NaviField$$txt_1||$$expertvalue$$'},{'code':'CISD','value':'db_opt$$db_value$$db_name$$NaviCode$$NaviName$$NaviField$$txt_1||$$expertvalue$$'},{'code':'CLKD','value':'db_opt$$db_value$$db_name$$NaviCode$$NaviName$$NaviField$$txt_1||$$expertvalue$$'},{'code':'WWJD','value':'db_opt$$db_value$$db_name$$NaviCode$$NaviName$$NaviField$$txt_1||$$expertvalue$$'},{'code':'WWBD','value':'db_opt$$db_value$$db_name$$NaviCode$$NaviName$$NaviField$$txt_1||$$expertvalue$$'},{'code':'CDMD','value':'db_opt$$db_value$$db_name$$NaviCode$$NaviName$$NaviField$$txt_1||$$expertvalue$$'},{'code':'SCOD','value':'db_opt$$db_value$$db_name$$NaviCode$$NaviName$$NaviField$$txt_1||$$expertvalue$$'},{'code':'CFED','value':'db_opt$$db_value$$db_name$$NaviCode$$NaviName$$NaviField$$txt_1||$$expertvalue$$'},{'code':'CLKT','value':'db_opt$$db_value$$db_name$$NaviCode$$NaviName$$NaviField$$txt_1||$$expertvalue$$'},{'code':'SMSD','value':'db_opt$$db_value$$db_name$$NaviCode$$NaviName$$NaviField$$txt_1||$$expertvalue$$'}];
	param += SetParam(ids,'$$');
	return param;
}
</script>

        <div class="clear">
        </div>
        <input type="hidden" value="false" id="isHiddenBookBtn" />
        <div class="newsh_right" id="newsh_right_histroy">
            <div class="newsh_right_box">
                <div id="LeftGroupContent" style="display: none">
                </div>
                <!-- 检索历史 -->
                <div class="wx_jsframe_jiao" id="history_js" style="display: none">
                    <a class="switchOff" onclick="ChangeDiv('cookichistory');ChangeDivClass(this);return false;" href=""></a>
                    <strong>检索历史：</strong>
                </div>
                <div class="riginside" id="newsearchhis" style="display: none">
                </div>
                <div class="wx_jsls_frame" id="cookichistory" style="display: none; word-break: break-all;
                    height: auto;">
                </div>
                <!-- 浏览历史 -->
                <div class="wx_jsframe_jiao" id="history_ll" style="display: none">
                    <a onclick="historyoperater.hisoperatForSeeShow('http://piccache.cnki.net//KNS/images/gb');return false;"
                        href="javascript:void(0);">
                        <img id="s_jiantoull" src="http://piccache.cnki.net//KNS/images/gb/s_jiantou01.gif" border="0" />
                    </a><strong>浏览历史</strong>
                </div>
                <div id="newsearchhis1" class="riginside" style="display: none">
                </div>
                <div class="wx_jsls_frame" id="cookichistory1" style="display: none; word-break: break-all;
                    height: auto;">
                </div>
                <!-- 下载历史 -->
                <div class="wx_jsframe_jiao" id="history_xz" style="display: none">
                    <a onclick="historyoperater.hisoperatForDownShow('http://piccache.cnki.net//KNS/images/gb');return false;"
                        href="javascript:void(0);">
                        <img id="s_jiantoudown" src="http://piccache.cnki.net//KNS/images/gb/s_jiantou01.gif" border="0" />
                    </a><strong>下载历史</strong>
                </div>
                <div id="newsearchhis2" class="riginside" style="display: none">
                </div>
                <div class="wx_jsls_frame" id="cookichistory2" style="display: none; word-break: break-all;
                    height: auto;">
                </div>
                <!-- 检索下载历史关键词 -->
                <div class="wx_jsframe_jiao" id="history_kd" style="display: none">
                    <strong>近期关注</strong>
                </div>
                <div id="newsearchhis3" class="riginside" style="display: none">
                </div>
            </div>
        </div>
        <div class="newsh_mid">
            <input type="hidden" id="curdbcode" name="curdbcode" value="SCDB" />
            <div style="position: relative;">
                <div id="CustomizeSearch">
                    <a id="subTheme" name="subTheme" class="cBlue" onclick="SubthemeDefault();" target="_blank">
                        免费订阅</a> <a class="cBlue" onclick="javascript:SubmitCustomizeSearch('../popup/CustomizedToLibrary.aspx?Type=Search&DbPrefix=SCDB&dbCatalog=%e4%b8%ad%e5%9b%bd%e5%ad%a6%e6%9c%af%e6%96%87%e7%8c%ae%e7%bd%91%e7%bb%9c%e5%87%ba%e7%89%88%e6%80%bb%e5%ba%93&CustomizeType=1');return false;"
                            href="" style="display: ">定制检索式</a>
                </div>
            </div>
            <div>
                <!--class="searchCol"-->
                
                <div class="divsearch" id="resultFilter" style="padding: 3px 10px;">
                    <div class="GroupButtonOn" id="webGroup">
                    </div>
                    <div id="group" class="hide" style="width: 732px; position: relative; z-index: 2">
                    </div>
                    <script type="text/javascript">
                        function ShorFirstPage() {
                            document.getElementById("history").style.display = "none";
                            document.getElementById("group").style.display = "none";
                            document.getElementById("resultFilter").style.display = "none";
                        }
                        try {
                            setDivRow();
                        }
                        catch (err1) { }
                    </script>
                </div>
                
                <div>
                    <iframe id="iframeResult" frameborder="no" height="200" hspace="0" marginheight="0"
                        name="iframeResult" scrolling="no" src="" vspace="0" width="765">
                    </iframe>
                    <div id="searchrelevent" style="word-break: break-all;">
                    </div>
                    <div class="notetip" id="result_tit" style="display: none">
                    </div>
                </div>
            </div>
        </div>
        <div class="clear">
        </div>
    </div>
    <div class="fixedbar">
        <div class="backtop hiddenV" id="backtop">
            <div class="window_suspend">
                <a href="javascript:scroll(0,0);">
                    <img id="backTopSide" alt="" src="http://piccache.cnki.net//KNS/images/gb/backTop2.gif" title="返回顶端" /></a>
            </div>
        </div>
        <div class="adviceside">
            <a style="border-bottom: 0; border-radius: 5px 5px 0 0;" href="http://help.cnki.net/"
                target="_blank">在线<br />
                咨询</a> 
       
        </div>
    </div>
    
    <div id="QkYxyz" name="QkYxyz" class="qkyxyz" style="display: none">
    </div>
    <div style="clear: both;">
    </div>
    <input id="defaultResultGroup" type="hidden" name="defaultResultGroup" value='defaultResultGroup' />
    <input id="isTagSearch" type="hidden" name="isTagSearch" value='1' />
    </form>
    <form id="CustomizeForm" name="CustomizeForm" action="#" method="post" autocomplete="off"
    target="CustomizeSearchExp_Page">
    <input id="param" name="param" type="hidden" />
    </form>
    <input id="basePath" type="hidden" name="basePath" value='/KNS' />
    <input id="SugConfigPath" type="hidden" name="SugConfigPath" value='http://acad.cnki.net' />
    
    <input type="hidden" id="coreJson" name="coreJson" value="{'defaultseldb':'CJFQ,CJFN,CDFD,CMFD,CPFD,IPFD,CCND,CCJD,HBRD,MTRD','dbinfo':[{'code':'SCDB','view':'','name':'文献','tagname':'文献','dbt':'1'},{'code':'CJFQ','view':'','name':'期刊','tagname':'期刊','dbt':'2'},{'code':'CJFN','view':'','name':'特色期刊','tagname':'特色期刊','dbt':'0'},{'code':'CDMD','view':'','name':'博硕士','tagname':'博硕士','dbt':'1'},{'code':'CDFD','view':'','name':'博士','tagname':'','dbt':'0'},{'code':'CMFD','view':'','name':'硕士','tagname':'','dbt':'0'},{'code':'CIPD','view':'','name':'会议','tagname':'会议','dbt':'1'},{'code':'CPFD','view':'','name':'国内会议','tagname':'','dbt':'0'},{'code':'IPFD','view':'','name':'国际会议','tagname':'','dbt':'0'},{'code':'CCND','view':'','name':'报纸','tagname':'报纸','dbt':'2'},{'code':'WWJD','view':'','name':'外文文献','tagname':'外文文献','dbt':'1'},{'code':'CYFD','view':'','name':'年鉴','tagname':'年鉴','dbt':'2'},{'code':'CRPD','view':'','name':'百科','tagname':'百科','dbt':'1'},{'code':'CRDD','view':'','name':'词典','tagname':'词典','dbt':'1'},{'code':'CSYD','view':'','name':'统计数据','tagname':'统计数据','dbt':'1'},{'code':'SCOD','view':'','name':'专利','tagname':'专利','dbt':'2'},{'code':'CISD','view':'','name':'标准','tagname':'标准','dbt':'2'},{'code':'IMAGE','view':'','name':'图片','tagname':'图片','dbt':'1'},{'code':'SNAD','view':'','name':'成果','tagname':'成果','dbt':'2'},{'code':'CIDX','view':'','name':'指数','tagname':'指数','dbt':'1'},{'code':'CLKD','view':'','name':'法律','tagname':'法律','dbt':'1'},{'code':'GXDB_SECTION','view':'','name':'古籍','tagname':'古籍','dbt':'1'},{'code':'CRLD','view':'','name':'引文','tagname':'引文','dbt':'1'},{'code':'CRMD','view':'','name':'手册','tagname':'手册','dbt':'1'},{'code':'CCJD','view':'','name':'学术辑刊','tagname':'','dbt':'0'},{'code':'HBRD','view':'','name':'商业评论','tagname':'','dbt':'0'}]}"/>
    
    <div id="FooterDiv">
    </div>
    <script type="text/javascript">
    //以下函数位置不能移动 end
    FillValue('singleDB','SCDB');
    FillValue('db_codes','');
   
    CreateDBJson();        
    SwichNaviTag(ge('singleDB').value, '');
    try {
    SetInput();
    }
    catch (e) { }
    initDBselect();
    autoTurnSearch(0);
    LoadScript("../script/Json_Category.js",function(){ try{DefaultClickNavi('E','医药卫生科技');CollectDBList();SubmitForm('','&ua=1.15');}catch(e){} ;CreateFloatNavi();});   
    var basePath = ge("basePath").value;
    LoadUC("HeaderDiv","skin/kns/ResultHeader.ascx",null,basePath);
    LoadUC("FooterDiv","skin/kns/SiteFooter.ascx",null,basePath);  
    var firstTag = true;
    var sugpath="http://acad.cnki.net";
    LoadScript('http://piccache.cnki.net//KNS/script/min/cnkisug.min.js?v=AEC50DC0F3F390D6',function(){InitSug('http://acad.cnki.net');});
    LoadScript('http://piccache.cnki.net//KNS/script/min/jquery.hoverdelay.min.js?v=D59787997F3B8FCE',function(){InitHover()});
    toTop();
    InitHistory();
    searchBarer.SetSearchHisTip();
    recommender.getRecommendTip();
    </script>
   
</body>
</html>
