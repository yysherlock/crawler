# -*- coding: UTF-8 -*-
# Navie crawler
import sys
import urllib2
import cookielib
import string
import re
import time
import os

cj = cookielib.CookieJar()
cookie_support = urllib2.HTTPCookieProcessor(cj)
opener = urllib2.build_opener(cookie_support, urllib2.HTTPHandler)
urllib2.install_opener(opener)

cf = open('cookie', 'r')
cookie1 = cf.readline().strip()
cookie2 = cf.readline().strip()

for page_idx in range(eval(sys.argv[2]), eval(sys.argv[2]) + 1):
	url = 'http://epub.cnki.net/kns/brief/brief.aspx?curpage=' + str(page_idx) + \
	'&RecordsPerPage=50&QueryID=' + str(page_idx + 1) + \
	'&ID=&turnpage=1&tpagemode=L&dbPrefix=SCDB&Fields=&DisplayMode=listmode&SortType=%e5%b9%b4&PageName=ASP.brief_default_result_aspx&ctl=ea404f0c-26a2-41ee-a863-4339130c83d8&Param=%e5%b9%b4+%3d+%27' + sys.argv[1] + '%27#J_ORDER'
	h = {
		'Referer': url,
		'User-Agent': 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.110 Safari/537.36',
		'Cookie': cookie1
		# 'Cookie': 'RsPerPage=20; ASP.NET_SessionId=e0vt3e23ggm32l55bb1yg0ao; SID_grid=120101; AutoIpLogin=; LID=WEEvREcwSlJHSldTTGJhYkhWbGtrS01tVHdJN0drbklIY3BWVm1ZQ3hrKzB6TTgzUEhxOG1hcXk4SVl1bHVOLzNYZz0=$9A4hF_YAuvQ5obgVAqNKPCYcEjKensW4IQMovwHtwkF4VYPoHbKxJw!!; c_m_LinID=LinID=WEEvREcwSlJHSldTTGJhYkhWbGtrS01tVHdJN0drbklIY3BWVm1ZQ3hrKzB6TTgzUEhxOG1hcXk4SVl1bHVOLzNYZz0=$9A4hF_YAuvQ5obgVAqNKPCYcEjKensW4IQMovwHtwkF4VYPoHbKxJw!!&ot=04/13/2016 23:43:13'
		# 'Cookie': 'RsPerPage=20; ASP.NET_SessionId=e0vt3e23ggm32l55bb1yg0ao; SID_grid=120101; AutoIpLogin=; c_m_LinID=LinID=WEEvREcwSlJHSldTTGJhYkhWbGtrS01tVHdJN0drbklIY3BWVm1ZQ3hrKzB6TTgzUEhxOG1hcXk4SVl1bHVOLzNYZz0=$9A4hF_YAuvQ5obgVAqNKPCYcEjKensW4IQMovwHtwkF4VYPoHbKxJw!!&ot=04/13/2016 23:13:51; LID=WEEvREcwSlJHSldTTGJhYkhWbGtrS01tVHdJN0drbklIY3BWVm1ZQ3hrKzB6TTgzUEhxOG1hcXk4SVl1bHVOLzNYZz0=$9A4hF_YAuvQ5obgVAqNKPCYcEjKensW4IQMovwHtwkF4VYPoHbKxJw!!'
		# 'Cookie': 'SID=91001; ASP.NET_SessionId=1yevem55uc1cqy2gvbmcjc55; SID_kcms=202123; LID=WEEvREcwSlJHSldTTGJhYkg1OUpZdzZJVGp0alBueXpycTdJc290L2tLUFRoY0hGVE1PZGc2VzhEVnhjUHN5bTcrVT0=$9A4hF_YAuvQ5obgVAqNKPCYcEjKensW4IQMovwHtwkF4VYPoHbKxJw!!; c_m_LinID=LinID=WEEvREcwSlJHSldTTGJhYkg1OUpZdzZJVGp0alBueXpycTdJc290L2tLUFRoY0hGVE1PZGc2VzhEVnhjUHN5bTcrVT0=$9A4hF_YAuvQ5obgVAqNKPCYcEjKensW4IQMovwHtwkF4VYPoHbKxJw!!&ot=04/13/2016 09:55:51; UserSeesKcms=%u4E2D%u56FD%u9AD8%u8840%u538B%u60A3%u8005%u6559%u80B2%u6307%u5357%21cjfq%21cjfdhis2%21zggz201312011%7C70%u5C81%u4EE5%u4E0A%u8001%u5E74%u60A3%u8005%u51A0%u72B6%u52A8%u8109%u65C1%u8DEF%u79FB%u690D%u672F%u4E34%u5E8A%u7ED3%u679C%u53CA10%u5E74%u968F%u8BBF%u5206%u6790%21%21%21%7C%u6291%u90C1%u4E0E%u51A0%u72B6%u52A8%u8109%u75C5%u53D8%u7279%u70B9%u7684%u76F8%u5173%u6027%21%21%21%7C%u51A0%u5FC3%u75C5%u4ECB%u5165%u6CBB%u7597%u540E%u8840%u7CD6%u6C34%u5E73%u5BF9%u4E34%u5E8A%u7597%u6548%u53CA%u9884%u540E%u7684%u5F71%u54CD%21%21%21%7CKRT8%u3001ANK1%u4E0E%u51A0%u5FC3%u75C5%u7684%u76F8%u5173%u6027%21%21%21%7C%u51A0%u5FC3%u75C5%u60A3%u8005%u5FC3%u7387%u53D8%u5F02%u6027%u53CA%u8840%u6D46%u540C%u578B%u534A%u80F1%u6C28%u9178%u6C34%u5E73%u4E0E%u51A0%u8109%u75C5%u53D8%u7A0B%u5EA6%u6709%u76F8%u5173%u6027%21%21%21%7C%u6269%u5F20%u6027%u5FC3%u808C%u75C5%u60A3%u8005%u5DE6%u5BA4%u5C04%u8840%u5206%u6570%u4E0E%u80C6%u56FA%u9187%u6C34%u5E73%u7684%u76F8%u5173%u6027%21%21%21%7C%u8840%u6E05proBNP%u8BCA%u65AD%u51A0%u5FC3%u75C5%u7684%u4EF7%u503C%21%21%21%7C%u8870%u8001%u5FC3%u808C%u7F3A%u8840/%u518D%u704C%u6CE8%u635F%u4F24%u589E%u52A0%u7684%u65B0%u673A%u5236%u2014%u7A0B%u5E8F%u6027%u574F%u6B7B%u7684%u5173%u952E%u4F5C%u7528%21%21%21%7C%u8840%u7BA1%u7D27%u5F20%u7D20II%u5BF9%u5FC3%u810F%u6210%u7EA4%u7EF4%u7EC6%u80DEEts1%u8868%u8FBE%u7684%u5F71%u54CD%u53CA%u673A%u5236%u7814%u7A76%20%21%21%21%7C; UserDownLoadsKcms=70%u5C81%u4EE5%u4E0A%u8001%u5E74%u60A3%u8005%u51A0%u72B6%u52A8%u8109%u65C1%u8DEF%u79FB%u690D%u672F%u4E34%u5E8A%u7ED3%u679C%u53CA10%u5E74%u968F%u8BBF%u5206%u6790%21%21%21%7C%u6291%u90C1%u4E0E%u51A0%u72B6%u52A8%u8109%u75C5%u53D8%u7279%u70B9%u7684%u76F8%u5173%u6027%21%21%21%7C%u51A0%u5FC3%u75C5%u4ECB%u5165%u6CBB%u7597%u540E%u8840%u7CD6%u6C34%u5E73%u5BF9%u4E34%u5E8A%u7597%u6548%u53CA%u9884%u540E%u7684%u5F71%u54CD%21%21%21%7CKRT8%u3001ANK1%u4E0E%u51A0%u5FC3%u75C5%u7684%u76F8%u5173%u6027%21%21%21%7C%u51A0%u5FC3%u75C5%u60A3%u8005%u5FC3%u7387%u53D8%u5F02%u6027%u53CA%u8840%u6D46%u540C%u578B%u534A%u80F1%u6C28%u9178%u6C34%u5E73%u4E0E%u51A0%u8109%u75C5%u53D8%u7A0B%u5EA6%u6709%u76F8%u5173%u6027%21%21%21%7C%u6269%u5F20%u6027%u5FC3%u808C%u75C5%u60A3%u8005%u5DE6%u5BA4%u5C04%u8840%u5206%u6570%u4E0E%u80C6%u56FA%u9187%u6C34%u5E73%u7684%u76F8%u5173%u6027%21%21%21%7C%u8840%u6E05proBNP%u8BCA%u65AD%u51A0%u5FC3%u75C5%u7684%u4EF7%u503C%21%21%21%7C%u8870%u8001%u5FC3%u808C%u7F3A%u8840/%u518D%u704C%u6CE8%u635F%u4F24%u589E%u52A0%u7684%u65B0%u673A%u5236%u2014%u7A0B%u5E8F%u6027%u574F%u6B7B%u7684%u5173%u952E%u4F5C%u7528%21%21%21%7C%u8840%u7BA1%u7D27%u5F20%u7D20II%u5BF9%u5FC3%u810F%u6210%u7EA4%u7EF4%u7EC6%u80DEEts1%u8868%u8FBE%u7684%u5F71%u54CD%u53CA%u673A%u5236%u7814%u7A76%20%21%21%21%7C%u5178%u578B%u5FC3%u623F%u6251%u52A8%u5BFC%u7BA1%u6D88%u878D%u6CBB%u7597%u7684%u65B0%u7406%u5FF5%21%21%21%7C'
	}
	r = urllib2.urlopen(urllib2.Request(url, headers = h))

	# for item in cj:
	# 	print item.name + ": " + item.value

	# r = urllib2.urlopen(urllib2.Request(r.geturl(), headers = h))
	# r = urllib2.urlopen(urllib2.Request(r.geturl(), headers = h))
	# r = urllib2.urlopen(urllib2.Request(r.geturl(), headers = h))

	filename = 'page' + str(page_idx)
	res = open(filename, 'w')
	page = r.read()
	res.write(page)
	res.close()
	# time.sleep(2)

	# f = open('page1', 'r')
	# page = f.read()
	# f.close()

	# Find the links
	pattern = re.compile(r'<table class=\"GridTableContent\".*?<\/table>', re.S)
	links = []
	try:
		table = re.search(pattern, page).group(0)
	except:
		table = ''
	# print table
	if table != '':
		pattern = re.compile(r'<a class=\"fz14\" href=\'(.*?)\'.*?<\/a>', re.S)
		links = re.findall(pattern, table)
	# print links
	# raw_input()
	cnt = 0
	if not os.path.exists(str(page_idx)):
		os.makedirs(str(page_idx))
	for link in links:
		cnt = cnt + 1
		print str(page_idx) + '_' + str(cnt)
		link = 'http://epub.cnki.net' + link
		# print link

		url = link
		h = {
			'Referer': url,
			'User-Agent': 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.110 Safari/537.36',
			'Cookie': cookie2
		}
		r = urllib2.urlopen(urllib2.Request(url, headers = h))
		# print r.read()
		paperPage = r.read()
		paperf = open('paperPage' + str(cnt), 'w')
		paperf.write(paperPage)
		paperf.close()

		pattern = re.compile(r'<span id=\"chTitle\">(.*?)<\/span>')
		try:
			filename = str(page_idx) + '/' + re.search(pattern, paperPage).group(1) + '.pdf'
		except:
			filename = str(page_idx) + '/' + str(page_idx) + '_' + str(cnt) + '.pdf'
		# filename = filename.encode('UTF-8') + '.pdf'
		# print filename

		# Find the pdf link
		pattern = re.compile(r'<li class=\".*?pdf.*?\"(.*?)<\/li>')
		try:
			li_str = re.search(pattern, paperPage).group(1)
		except:
			continue
		# print li_str

		pattern = re.compile(r'href=\"&#xA;\s*(.*?)&#xA;\s*\"')
		try:
			pdfLink = re.search(pattern, li_str).group(1)
		except:
			continue
		print pdfLink

		url = 'http://www.cnki.net' + pdfLink
		# url = 'http://www.cnki.net/kcms/download.aspx?filename=GetB1YHRmRMR2aCZncxlUephHVnZEM1oFc5UnYudVV3F3VXRVYqRHNBRXQBl3Zw8SM5dnWkxmWuplZ=0zdxgkU3lzZMlHSkF3LhtyKxdVM3QlcvUEOtZURX1GOsxEarlGVJdzcmJFTBR0K3lTNWhnNvVHVuZ&tablename=CJFD2012&dflag=pdfdown'
		h = {
			'Referer': url,
			'User-Agent': 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_11_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/49.0.2623.110 Safari/537.36',
			'Cookie': cookie2
		}
		r = urllib2.urlopen(urllib2.Request(url, headers = h))

		print r.geturl()
		r = urllib2.urlopen(urllib2.Request(r.geturl(), headers = h))
		# print r.geturl()
		# r = urllib2.urlopen(urllib2.Request(r.geturl(), headers = h))
		# print r.geturl()
		# r = urllib2.urlopen(urllib2.Request(r.geturl(), headers = h))

		try:
			pdf = open(filename, 'wb')
		except:
			filename = str(page_idx) + '/' + str(page_idx) + '_' + str(cnt) + '.pdf'
			pdf = open(filename, 'wb')
		pdf.write(r.read())
		pdf.close()

		time.sleep(1)
