Return-Path: <clang-built-linux+bncBAABBWEMRP2QKGQE43PXM5Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x139.google.com (mail-lf1-x139.google.com [IPv6:2a00:1450:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id 297501B728C
	for <lists+clang-built-linux@lfdr.de>; Fri, 24 Apr 2020 12:58:33 +0200 (CEST)
Received: by mail-lf1-x139.google.com with SMTP id y19sf3753537lfk.13
        for <lists+clang-built-linux@lfdr.de>; Fri, 24 Apr 2020 03:58:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587725912; cv=pass;
        d=google.com; s=arc-20160816;
        b=tyluKHr1tilTLT7SvPIz/9fwsc+QC/emeHy9MxGjzSX3EPvyrJ8kF9W66DdZ6kxwW9
         Hljosq9eEtZ7HgDWlvybfqufDoWK3fnuHetbrKvV3ZK3a6P2UV7Ds3+fcbzjl4V3XMfu
         jZ70fJURoT39q3bWppjMf/3AQWcFT8D8gV9fk2ogoBRrV7sNrU/U1OrKIb+mvTHm9JaC
         BxvP8jlGuc4CQSGaEU8mINabE95OchU56OdE+jBDkDWDv2U9VMjCtHhMmzXdovDnG6Pw
         NSF4ITRk8rdpk5yZwHl8c0YYikU/A1lAY8wWAzRYn7LzhmixjdvAjn7abxT12/VyOAXm
         t4Ww==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:thread-index
         :mime-version:message-id:date:subject:to:from:sender:dkim-signature;
        bh=pa5pY7fy/177mub1BTkDOZhl1lkYpE8U0lXMa0GNVl4=;
        b=E55I0V5cc/EgX2tsUOwdeI6TMMc4i++Ap8V9RW1IaHfs0AD1n6WopDNi3xcXX8XXpD
         OtxDANl85D/+1NkV5wZCZEbuL7ZOZYWLWqRvLvnKnKreuALMahyXNS/nM/Jbx4CGhi3v
         osRFxR1BSFXxSSInZtKaLms62r7UFM87s0C+xUJVYUEUjqSSkC4jECI0CxaVn/gHv4o9
         D6IdkKtZ4qlzsvu1bYbz4FSElmDIRrrh9oYkqbNDJXtw86V4WpLSHzJdsmyM34u8ubD+
         AQgeRJDb0xBrKb0bvF8iJondgV4iCHdoBykiXZdAI1xPurhFMhDmHW2auz0MwCqA05n/
         YgQQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 193.46.215.83 is neither permitted nor denied by best guess record for domain of james@mrktresponse.com) smtp.mailfrom=james@mrktresponse.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:subject:date:message-id:mime-version:thread-index
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=pa5pY7fy/177mub1BTkDOZhl1lkYpE8U0lXMa0GNVl4=;
        b=Le/i0ZLXxn0+C+3i0FWM0jsxG+70dXM9rIgpK25Y3eMhYlg3cmUwqTW2Qfs3PYveK5
         onqG9vbVbQi8Cr+2dWUvMeZmxbxSplwy4kGeicTCmpwSDRO6VURfi55EC7w8I2waKzhG
         6CNusMDjFqJ8dAmYh9J1ho/K7/q7rO0Wlx0Lr9qUU+YXSaxY3cqRTY4GcM5nb/8VqzTp
         5eLBDCI4j6Kz51rna20MQDp51lj4u7x9Rz/k6XrFxAMHgr65ar8qCVFcZ4LsPGu5sDsN
         hmc2JTZcqhJBaaBJiC8JTbpImq5UNDzxJez3ljwNL9FutOrB8JWzUClV5Fv/+CITznhP
         gnog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:subject:date:message-id
         :mime-version:thread-index:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pa5pY7fy/177mub1BTkDOZhl1lkYpE8U0lXMa0GNVl4=;
        b=DPGTrfcfT5RbRaA1+LNtmTZyC0V4vLtomqljYN2/TOU2vyFxNo2mXk5Qmnbt+P1YyI
         KZSmFQDryKYQ81xsl3uRtR/86NmdH/WBRKdc/6Lo+huVNvlO1W/2bL+0uxVJQuvM9pk4
         01ECqrPV5OGFz1XlSNDG2lQ61FiVkVtGzLGm8vz4DD0OuA4wshzhlcAw5hxgzJYjutyo
         nshv9oiDaIniKeWJ+pm1HnAiVvL7rvGS2DTmcbJC/KeKSUP37ditNh8sazLnEZvBF2di
         Sbl/cGeo6ZDS94qwTp2daubpUuQB+saLf4oXUvLUH8xazlgWJEv1qoGyZPOYxPajQI9h
         dIZQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZwp5RcPE0R05OySZvOK420ZabKr9mOMX91I5RG0aUJmiXp5vsy
	yPOPIRKubwXV7vZZ/+47efc=
X-Google-Smtp-Source: APiQypIHlZJx2W2LuO/ihotesTMF90YgsmkP8EXa23H/ElknAxFA84Njcy5IKAGH/7KFzfpYNTDqCA==
X-Received: by 2002:a2e:b4a5:: with SMTP id q5mr5726873ljm.58.1587725912603;
        Fri, 24 Apr 2020 03:58:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:5a0e:: with SMTP id q14ls2110823lfn.3.gmail; Fri, 24 Apr
 2020 03:58:32 -0700 (PDT)
X-Received: by 2002:ac2:5dd7:: with SMTP id x23mr5973929lfq.48.1587725912097;
        Fri, 24 Apr 2020 03:58:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587725912; cv=none;
        d=google.com; s=arc-20160816;
        b=zffm44R9wCD4Z+/+Z94a7MpexPg0j+Xr8pppNd7MuAGO+9LLVRLJA2Qq26S4cJB7OK
         UiezAbRLtfAnBF6VI73ARP70QeTiL4Gl9R62u3ysu8Usyl0QPt2QkLs/243gVzRVpa4A
         jBPWusDomcuPELVRP0/tYY13bxmyAl45ap3IO6ivRCVEeYPAI2hQ1cKxWl0EaVE0oAJ7
         banqUXdC4gHHbfcIaT3+kltQ8FYf7yrOUIobG7AVjjR1hq5LpCDm6/ivUmKicpZgGgpU
         GzLyo9IibiJdAF7qnksgDk9aDvhtW+z8MH49eu1M3s1VuBbzInQJMTix2vr1hdz6xYEW
         Fq1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=disposition-notification-to:content-language:thread-index
         :mime-version:message-id:date:subject:to:from;
        bh=FaeL/nl6pdB5ga+K/nvB4B/2g4Pc0Sa0V/w1EfiTOUE=;
        b=bQnJVSpQkCtwPuUrMQ3PBp8J9WCTCPk8Wn/r1k+IJsYkk+GGLSkHcBZ9WoeCJBGmuU
         dkCUwepaZasd+p7145TR7Hya1bSjKht/Eoude+kSLubhDUrhnbuYxYHhWKrS4niZisC7
         TD78SVxHiNd/6lOye8llfOLmj2F4fmuz6u5eNp3CZLImBPa5oYwxhdnfrastQVVxff56
         9DmabIg0UR/TilMFB3zlLrTMUf18OwSDlmMOHAbD745RyizKfARPFvOUzDdV8/EV8ZDF
         Z0CcyjUQ/mDzW5L8YdvjiLaX3LWOKzYURppmV6OHohkyOSN+LPbXhjljUL0+bceLSsId
         ozUw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 193.46.215.83 is neither permitted nor denied by best guess record for domain of james@mrktresponse.com) smtp.mailfrom=james@mrktresponse.com
Received: from newsgw-01.dd24.net (newsgw-01.dd24.net. [193.46.215.83])
        by gmr-mx.google.com with ESMTPS id q24si455250ljg.4.2020.04.24.03.58.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 24 Apr 2020 03:58:31 -0700 (PDT)
Received-SPF: neutral (google.com: 193.46.215.83 is neither permitted nor denied by best guess record for domain of james@mrktresponse.com) client-ip=193.46.215.83;
Received: from lenovoPC (unknown [1.39.152.106])
	(using TLSv1.2 with cipher DHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by newsrelay.moniker.com (Postfix) with ESMTPSA id A5F4160271
	for <clang-built-linux@googlegroups.com>; Fri, 24 Apr 2020 10:58:30 +0000 (UTC)
From: "James Miller" <james@mrktresponse.com>
To: <clang-built-linux@googlegroups.com>
Subject: Target Audience
Date: Fri, 24 Apr 2020 06:56:12 -0400
Message-ID: <!&!AAAAAAAAAAAYAAAAAAAAABaWRVkw9bNPu65QUHt0KBjCgAAAEAAAACap0JCOYI9FpgfDZG/LJl0BAAAAAA==@mrktresponse.com>
MIME-Version: 1.0
Content-Type: multipart/alternative;
	boundary="----=_NextPart_000_031A_01D61A05.C48186F0"
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AdYaJtXbwMquWuPsRz+Neencoovhjg==
Content-Language: en-us
X-Original-Sender: james@mrktresponse.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 193.46.215.83 is neither permitted nor denied by best guess
 record for domain of james@mrktresponse.com) smtp.mailfrom=james@mrktresponse.com
Precedence: list
Mailing-list: list clang-built-linux@googlegroups.com; contact clang-built-linux+owners@googlegroups.com
List-ID: <clang-built-linux.googlegroups.com>
X-Spam-Checked-In-Group: clang-built-linux@googlegroups.com
X-Google-Group-Id: 357212215037
List-Post: <https://groups.google.com/group/clang-built-linux/post>, <mailto:clang-built-linux@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:clang-built-linux+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/clang-built-linux
List-Subscribe: <https://groups.google.com/group/clang-built-linux/subscribe>, <mailto:clang-built-linux+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+357212215037+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/clang-built-linux/subscribe>

This is a multipart message in MIME format.

------=_NextPart_000_031A_01D61A05.C48186F0
Content-Type: text/plain; charset="UTF-8"

Hi, 

 

I hope all your families are staying safe and healthy! The coronavirus
crisis will test us all, but marketers need to think long-term and keep
building their brands

 

Preparing your marketing plans for the Coronavirus downturn?

Marketing automation is the lowest cost, easiest, and most effective way of
keeping in touch with your customers. Marketing helps drive commerce

 

I believe you would be interested in getting a contact list

 

Industries we cover: Printing/Publishing, IT, Healthcare, Insurance,
Finance/Banking, Telecom, Retail, Consulting, K-12, Construction,
Engineering, Computer Software/Hardware, Transportation, Education, Business
Services, Oil and Gas, Energy and Utilities, Media, Marketing/Advertising
etc

 

All we need from you is the criteria to pull out the companies (example
revenue / industry / employee size / SIC code / Zip code etc.) along with
the job titles

(Any job titles like sales / IT/ operations / "C" level / manager /
procurement / HR etc.)

 

If you could send me your target audience, I'll come up with the data counts
& Samples for your review.

 

Thanks

James Miller

Lead Generation

US Data | Technology Data | UK Data | AUS Data| European & MEA Regions |
APAC | List Suppression | Data Appending | CRM | SEO | Email
Campaign/Broadcast |

 

Note: If you do not wish to receive our emails you can reply remove in the
subject line

 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/!%26!AAAAAAAAAAAYAAAAAAAAABaWRVkw9bNPu65QUHt0KBjCgAAAEAAAACap0JCOYI9FpgfDZG/LJl0BAAAAAA%3D%3D%40mrktresponse.com.

------=_NextPart_000_031A_01D61A05.C48186F0
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html xmlns:o=3D"urn:schemas-microsoft-com:office:office" xmlns:w=3D"urn:sc=
hemas-microsoft-com:office:word" xmlns:m=3D"http://schemas.microsoft.com/of=
fice/2004/12/omml" xmlns=3D"http://www.w3.org/TR/REC-html40"><head><META HT=
TP-EQUIV=3D"Content-Type" CONTENT=3D"text/html; charset=3Dus-ascii"><meta n=
ame=3DGenerator content=3D"Microsoft Word 15 (filtered medium)"><style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:Cambria;
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Consolas;
	panose-1:2 11 6 9 2 2 4 3 2 4;}
@font-face
	{font-family:Georgia;
	panose-1:2 4 5 2 5 4 5 2 3 3;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;
	mso-fareast-language:EN-IN;}
p.MsoPlainText, li.MsoPlainText, div.MsoPlainText
	{mso-style-priority:99;
	mso-style-link:"Plain Text Char";
	margin:0in;
	margin-bottom:.0001pt;
	font-size:10.5pt;
	font-family:Consolas;}
p
	{mso-style-priority:99;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;}
span.PlainTextChar
	{mso-style-name:"Plain Text Char";
	mso-style-priority:99;
	mso-style-link:"Plain Text";
	font-family:Consolas;}
p.gmail-m-1001893104257294750xmsonormal, li.gmail-m-1001893104257294750xmso=
normal, div.gmail-m-1001893104257294750xmsonormal
	{mso-style-name:gmail-m_-1001893104257294750x_msonormal;
	mso-margin-top-alt:auto;
	margin-right:0in;
	mso-margin-bottom-alt:auto;
	margin-left:0in;
	font-size:12.0pt;
	font-family:"Times New Roman",serif;
	mso-fareast-language:EN-IN;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:"Calibri",sans-serif;}
.MsoPapDefault
	{mso-style-type:export-only;
	margin-bottom:10.0pt;
	line-height:115%;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style></head><body lang=3DEN-US><div class=3DWordSection1><p class=3Dg=
mail-m-1001893104257294750xmsonormal style=3D'margin:0in;margin-bottom:.000=
1pt'><span lang=3DEN-IN style=3D'font-size:11.0pt;font-family:"Cambria",ser=
if;color:#002060'>Hi, <o:p></o:p></span></p><p class=3Dgmail-m-100189310425=
7294750xmsonormal style=3D'margin:0in;margin-bottom:.0001pt'><span lang=3DE=
N-IN style=3D'font-size:11.0pt;font-family:"Cambria",serif;color:#002060'><=
o:p>&nbsp;</o:p></span></p><p style=3D'margin:0in;margin-bottom:.0001pt'><s=
pan lang=3DEN-IN style=3D'font-size:11.0pt;font-family:"Cambria",serif;colo=
r:#002060'>I hope all your families are staying safe and healthy! The coron=
avirus crisis will test us all, but marketers need to think long-term and k=
eep building their brands<o:p></o:p></span></p><p class=3DMsoNormal><b><spa=
n lang=3DEN-IN style=3D'font-size:11.0pt;font-family:"Cambria",serif;color:=
#002060'><o:p>&nbsp;</o:p></span></b></p><p class=3DMsoNormal><span lang=3D=
EN-IN style=3D'font-size:11.0pt;font-family:"Cambria",serif;color:#002060'>=
Preparing your marketing plans for the Coronavirus downturn?<o:p></o:p></sp=
an></p><p class=3DMsoNormal><span lang=3DEN-IN style=3D'font-size:11.0pt;fo=
nt-family:"Cambria",serif;color:#002060'>Marketing automation is the lowest=
 cost, easiest, and most effective way of keeping in touch with your custom=
ers. Marketing helps drive commerce</span><span lang=3DEN-IN style=3D'font-=
size:11.0pt;font-family:"Cambria",serif;color:#002060;mso-fareast-language:=
EN-US'><o:p></o:p></span></p><p style=3D'margin:0in;margin-bottom:.0001pt'>=
<span style=3D'font-size:11.0pt;font-family:"Cambria",serif;color:#002060'>=
<o:p>&nbsp;</o:p></span></p><p style=3D'margin:0in;margin-bottom:.0001pt'><=
span style=3D'font-size:11.0pt;font-family:"Cambria",serif;color:#002060'>I=
 believe you would be interested in getting a contact list</span><b><span l=
ang=3DEN-IN style=3D'font-size:11.0pt;font-family:"Cambria",serif;color:#00=
2060'><o:p></o:p></span></b></p><p class=3DMsoPlainText><span style=3D'font=
-size:11.0pt;font-family:"Cambria",serif;color:#002060'><o:p>&nbsp;</o:p></=
span></p><p class=3DMsoPlainText><span style=3D'font-size:11.0pt;font-famil=
y:"Cambria",serif;color:#002060'>Industries we cover: Printing/Publishing, =
IT, Healthcare, Insurance, Finance/Banking, Telecom, Retail, Consulting, K-=
12, Construction, Engineering, Computer Software/Hardware, Transportation, =
Education, Business Services, Oil and Gas, Energy and Utilities, Media, Mar=
keting/Advertising etc<o:p></o:p></span></p><p class=3DMsoNormal><span lang=
=3DEN-IN style=3D'font-size:11.0pt;font-family:"Cambria",serif;color:#00206=
0'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span lang=3DEN-IN styl=
e=3D'font-size:11.0pt;font-family:"Cambria",serif;color:#002060'>All we nee=
d from you is the criteria to pull out the companies (example revenue / ind=
ustry / employee size / SIC code / Zip code etc.) along with the job titles=
<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-IN style=3D'font=
-size:11.0pt;font-family:"Cambria",serif;color:#002060'>(Any job titles lik=
e sales / IT/ operations / &#8220;C&#8221; level / manager / procurement / =
HR etc.)<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3DEN-IN style=
=3D'font-size:11.0pt;font-family:"Cambria",serif;color:#002060'><o:p>&nbsp;=
</o:p></span></p><p class=3DMsoNormal><span lang=3DEN-IN style=3D'font-size=
:11.0pt;font-family:"Cambria",serif;color:#002060'>If you could send me you=
r target audience, I&#8217;ll come up with the data counts &amp; Samples fo=
r your review.<o:p></o:p></span></p><p class=3Dgmail-m-1001893104257294750x=
msonormal style=3D'margin:0in;margin-bottom:.0001pt'><span lang=3DEN-IN sty=
le=3D'font-size:11.0pt;font-family:"Cambria",serif;color:#002060'><o:p>&nbs=
p;</o:p></span></p><p class=3Dgmail-m-1001893104257294750xmsonormal style=
=3D'margin:0in;margin-bottom:.0001pt'><span lang=3DEN-IN style=3D'font-size=
:11.0pt;font-family:"Cambria",serif;color:#002060'>Thanks<o:p></o:p></span>=
</p><p class=3Dgmail-m-1001893104257294750xmsonormal style=3D'margin:0in;ma=
rgin-bottom:.0001pt'><span lang=3DEN-IN style=3D'font-size:11.0pt;font-fami=
ly:"Georgia",serif;color:#548DD4'>James Miller<o:p></o:p></span></p><p clas=
s=3Dgmail-m-1001893104257294750xmsonormal style=3D'margin:0in;margin-bottom=
:.0001pt'><span lang=3DEN-IN style=3D'font-size:11.0pt;font-family:"Cambria=
",serif;color:#002060'>Lead Generation<o:p></o:p></span></p><p class=3DMsoN=
ormal><span lang=3DEN-IN style=3D'font-size:11.0pt;font-family:"Calibri",sa=
ns-serif;color:#002060'>US&nbsp;Data&nbsp;|&nbsp;Technology&nbsp;Data&nbsp;=
|&nbsp;UK&nbsp;Data&nbsp;|&nbsp;AUS&nbsp;Data|&nbsp;European&nbsp;&amp;&nbs=
p;MEA&nbsp;Regions&nbsp;|<br>APAC&nbsp;|&nbsp;List&nbsp;Suppression&nbsp;|&=
nbsp;Data&nbsp;Appending&nbsp;|&nbsp;CRM&nbsp;|&nbsp;SEO&nbsp;|&nbsp;Email =
Campaign/Broadcast&nbsp;|<o:p></o:p></span></p><p class=3DMsoNormal><span l=
ang=3DEN-IN style=3D'font-size:11.0pt;font-family:"Calibri",sans-serif;colo=
r:#002060'><o:p>&nbsp;</o:p></span></p><p class=3DMsoNormal><span lang=3DEN=
-IN style=3D'font-size:9.0pt;font-family:"Calibri",sans-serif;color:black'>=
Note: If you do not wish to receive our emails you can reply <b>remove</b> =
in the subject line<o:p></o:p></span></p><p class=3DMsoNormal><span lang=3D=
EN-IN><o:p>&nbsp;</o:p></span></p></div></body></html>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/!%26!AAAAAAAAAAAYAAAAAAAAABaWRVkw9bNPu65QUHt0K=
BjCgAAAEAAAACap0JCOYI9FpgfDZG/LJl0BAAAAAA%3D%3D%40mrktresponse.com?utm_medi=
um=3Demail&utm_source=3Dfooter">https://groups.google.com/d/msgid/clang-bui=
lt-linux/!%26!AAAAAAAAAAAYAAAAAAAAABaWRVkw9bNPu65QUHt0KBjCgAAAEAAAACap0JCOY=
I9FpgfDZG/LJl0BAAAAAA%3D%3D%40mrktresponse.com</a>.<br />

------=_NextPart_000_031A_01D61A05.C48186F0--

