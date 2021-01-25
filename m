Return-Path: <clang-built-linux+bncBCR3TMGTR4ORBI4DXSAAMGQEPYJ6PTI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93c.google.com (mail-ua1-x93c.google.com [IPv6:2607:f8b0:4864:20::93c])
	by mail.lfdr.de (Postfix) with ESMTPS id 88902302901
	for <lists+clang-built-linux@lfdr.de>; Mon, 25 Jan 2021 18:36:36 +0100 (CET)
Received: by mail-ua1-x93c.google.com with SMTP id q25sf5241138uao.14
        for <lists+clang-built-linux@lfdr.de>; Mon, 25 Jan 2021 09:36:36 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611596195; cv=pass;
        d=google.com; s=arc-20160816;
        b=RUbSj2SVdjLZ7WIHJ8MZa8eLkKlGDHs5li3SNIXCu/0MymgZbsKhTxYjPagPSWWWfb
         w5rCMqZaWOLiwdd2BaQpDKw0XH7ExXB0ZDPuLH9kFpnPOx4ybc1qskkAlTvpLU4Np7tY
         Gh6O7rhBz5V+lVESxZ0dBrwPl0O3v5Av+juuRli+5cX1x4g964dxDv62/LBdi0ZISNCW
         B1hf1o5LqABwk5AZj3PZg8eE+hRwXUOqaSfg6YqW671AUlm9urOSGCju77akvw8MXaoy
         sCtJQsT0seLG+PKCw6jDvX/zttopcKCZ6UCYejhLfuCrjQEXjSqlKfUKkPGPInog6HK/
         2J0g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:subject:message-id
         :from:date:sender:dkim-signature;
        bh=U6Rj5xC8mLdDL/TL4R0YpWMrfeRZz9WHF5sRrxO52S0=;
        b=w0l3zw8VEURfEA6jjDFsTcbTaFvIi/VIX7oQJXqWIiStC3mVfXFvygW949Uh4jqOL9
         gKzgul0T59SiUcs3899ga+tNjFc4U91/GMwE6iiXrfesApz4Jj4Z3ab64Kqc/XG6vMQ2
         FuAhl2oHXTowMH18zozGvpVqNgKFOMtA7O3gowJ5IENmA9RYwH+Bo8Ww5svNG/E4vyNh
         ZiYv5akazqv4Fq9tJHsyOjpzz4T49ylsln/Lzyjq8uvcMy+vRYKjzVIoRTSo2P/rLsEc
         gtHG11ZJ1CF2pBg4doKcPom7SoWJYzvQKXgpd0IwqF/Z/M0uAMmIOzfvEn2oedxifVv8
         O7Bg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of recruiter.recruit.intercoae.com=gmail.com__0-4faoc4mc7i68gc@5hnj2mufr87e4htv.z8av9w6ga66ox18b.61bv18b.4x-4z0h4eai.na150.bnc.salesforce.com designates 13.110.74.200 as permitted sender) smtp.mailfrom="recruiter.recruit.intercoae.com=gmail.com__0-4faoc4mc7i68gc@5hnj2mufr87e4htv.z8av9w6ga66ox18b.61bv18b.4x-4z0h4eai.na150.bnc.salesforce.com";
       dmarc=fail (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:message-id:subject:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=U6Rj5xC8mLdDL/TL4R0YpWMrfeRZz9WHF5sRrxO52S0=;
        b=sQS7OZYldb/AiW552uEMTF78gf8u/hyNs4N0CKUyANovc2QRf8WEA1+I3I+CAh331D
         OuzO9fQ0W7NoPhJn9VhMqdm08WQpmEJU/SeDLWEKUWsgRVzG204vxGwoKvs/czbgBmcF
         w4FMlGeIQKyfU80nxtrqwG828Xio9X/q2yy/38sc+jMCb18mWaXfrAOtMGASb+03JpG1
         CSri0RDqI03YGdwymKI/tbkKsO5RG2uC+WbhQkXRyra564HmuHf+dag9WsVjTneueEJW
         E2VHdhz7KFCF7DIQtvFIHDqiRQotx7FcHcECUZ+wB1VLtknMxjDK/fcxpB+6rT73+NCh
         BDPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:message-id:subject:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=U6Rj5xC8mLdDL/TL4R0YpWMrfeRZz9WHF5sRrxO52S0=;
        b=EgunpthMH9fbfeRCXcZwOzDvflxPKbPNyUn8tmVsSLKsH7hToR/cihYB+uBhgbqBHw
         8lsPqWtNjbsnOB+T4t4iHk9dszGqEdzwP3XqHwPzpWvvx1yKe+EnMGnJVkqfyR2wNweA
         sjpKuJkbTD/P2EOleo5D+r2EnnX6TfJpgRRxl0LxmU+X7loK5ixE2xC8Xl2YaD5tU/Bs
         UgeW/n4sv3bMbY9No1RKysooeYbiY3nyUbosR25/vj7wKoaVaFUKVNdMipBJb9J9HkKv
         VptHKPxjNksSuJcs1FhM4N3CqC8fzQlJzLGRlisr0T+MddgwXsrOVGyIQBaxDdCA18lb
         dAAQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530YgvSW6LOE5t8luP3EH88sm5l29SYSkvtSW2uvbj7ZkiZPIU0I
	cNzxawhUTnIDMJkNORcLiIk=
X-Google-Smtp-Source: ABdhPJxVhmQqPY+m2kXDjfgFVojWMMgAsqjk9+qfIrCBofzKklaV8dayYc+kVOinvF1gsWRYbeWi7Q==
X-Received: by 2002:a1f:3889:: with SMTP id f131mr1610183vka.22.1611596195526;
        Mon, 25 Jan 2021 09:36:35 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:f515:: with SMTP id u21ls1475124vsn.2.gmail; Mon, 25 Jan
 2021 09:36:35 -0800 (PST)
X-Received: by 2002:a67:2547:: with SMTP id l68mr1659480vsl.44.1611596195002;
        Mon, 25 Jan 2021 09:36:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611596194; cv=none;
        d=google.com; s=arc-20160816;
        b=FNxN1kcN1SG9H2NYS2C0UvVlwL9fd6NpEWLmDjPYmY0kulUluNyN4ngwo1ow+EczEc
         ZGyJ3VbzXDb4RELlw3XmaDRAqLVm/W6OcwnkhRfiFOidodX0ihYRwAPUteY1HCuYnOJt
         Yjp7XEk4c15+yjA0i1tNlzUpYXTZNZFr5sJguZTmeFk24cr1bhGslyXpFWo6GjJd3Rm8
         Zlg5AAC96Bbzu17G1WMQEfSFzj2FIqUDZOGFuy2NAAicPyx3jEj7+DU4oUdy9qYAPi3b
         XjnO+l7EdmWLma0i38nop8lC9DJuF1A99FiyBczWYp6RTSTbPsNXXPNhJxEZrbrcmwnz
         Us4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:subject:message-id:from:date;
        bh=A/27UFzW3z77L/IZVDxDWOkOCHxrsh6CSk1S6TH/AdQ=;
        b=NXk8I9cW6xYk5nCrYrkmhkOH/uAxW6+v4xOe1HZR90z7q19qRUhMzn+jHhO8Qul2Nr
         95/XpMyIj4BPDiSHxWlqtATMILhRvqIVUidmA1useBqgieyb4dv5yJ+Fbg/i67JOFzgh
         ZKtG+u9eu5mCg5DuHQT3wGohxajdfy1QJFhxq6jlYo2PtHFrn2/xf0rwZhrDZwQGLFnF
         CdU2v17c19woXpWkGDxaQhXXx4ArUl6losKZBjLBtypaM7qn/FAn94CEQ8P8jMqvrPak
         B6aRS+Ed7ucgMUUrBAVPDV1lJttBqL8AotB9b5jcfVF1XujNakIJ8WXMk85STET39VRE
         Qqkg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of recruiter.recruit.intercoae.com=gmail.com__0-4faoc4mc7i68gc@5hnj2mufr87e4htv.z8av9w6ga66ox18b.61bv18b.4x-4z0h4eai.na150.bnc.salesforce.com designates 13.110.74.200 as permitted sender) smtp.mailfrom="recruiter.recruit.intercoae.com=gmail.com__0-4faoc4mc7i68gc@5hnj2mufr87e4htv.z8av9w6ga66ox18b.61bv18b.4x-4z0h4eai.na150.bnc.salesforce.com";
       dmarc=fail (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from smtp09-ia4-sp3.mta.salesforce.com (smtp09-ia4-sp3.mta.salesforce.com. [13.110.74.200])
        by gmr-mx.google.com with ESMTPS id y127si794972vsc.0.2021.01.25.09.36.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Jan 2021 09:36:34 -0800 (PST)
Received-SPF: pass (google.com: domain of recruiter.recruit.intercoae.com=gmail.com__0-4faoc4mc7i68gc@5hnj2mufr87e4htv.z8av9w6ga66ox18b.61bv18b.4x-4z0h4eai.na150.bnc.salesforce.com designates 13.110.74.200 as permitted sender) client-ip=13.110.74.200;
Received: from [10.180.202.54] ([10.180.202.54:46816] helo=na150-app2-24-ia4.ops.sfdc.net)
	by mx1-ia4-sp3.mta.salesforce.com (envelope-from <recruiter.recruit.intercoae.com=gmail.com__0-4faoc4mc7i68gc@5hnj2mufr87e4htv.z8av9w6ga66ox18b.61bv18b.4x-4z0h4eai.na150.bnc.salesforce.com>)
	(ecelerity 4.2.38.62368 r(Core:release/4.2.38.0)) with ESMTPS (cipher=ECDHE-RSA-AES256-GCM-SHA384
	subject="/C=US/ST=California/L=San Francisco/O=salesforce.com, inc./OU=0:app;1:ia4;2:ia4-sp3;3:na150;4:prod/CN=na150-app2-24-ia4.ops.sfdc.net") 
	id 80/CE-46015-0A10F006; Mon, 25 Jan 2021 17:36:33 +0000
Date: Mon, 25 Jan 2021 17:36:32 +0000 (GMT)
From: Sarah Ibrahim <recruiter.recruit.intercoae.com@gmail.com>
Message-ID: <B71lI000000000000000000000000000000000000000000000QNI3KW00qztUdkZGR9aU5xiOdROwZw@sfdc.net>
Subject: CV/Resume
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_2477_198998957.1611596192725"
X-Priority: 3
X-SFDC-LK: 00D4x000004z0H4
X-SFDC-User: 0054x000002vFfK
X-Sender: postmaster@salesforce.com
X-mail_abuse_inquiries: http://www.salesforce.com/company/abuse.jsp
X-SFDC-TLS-NoRelay: 1
X-SFDC-Binding: 82eopsuF2FE0HK7B
X-SFDC-EmailCategory: apiSingleMail
X-SFDC-Interface: internal
X-Original-Sender: recruiter.recruit.intercoae.com@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of recruiter.recruit.intercoae.com=gmail.com__0-4faoc4mc7i68gc@5hnj2mufr87e4htv.z8av9w6ga66ox18b.61bv18b.4x-4z0h4eai.na150.bnc.salesforce.com
 designates 13.110.74.200 as permitted sender) smtp.mailfrom="recruiter.recruit.intercoae.com=gmail.com__0-4faoc4mc7i68gc@5hnj2mufr87e4htv.z8av9w6ga66ox18b.61bv18b.4x-4z0h4eai.na150.bnc.salesforce.com";
       dmarc=fail (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

------=_Part_2477_198998957.1611596192725
Content-Type: multipart/alternative; 
	boundary="----=_Part_2476_10003287.1611596192725"

------=_Part_2476_10003287.1611596192725
Content-Type: text/plain; charset="UTF-8"

Dear Sir,

Job Opportunity @ Interco Petroleum Company IPC- Abu Dhabi, United Arab Emirates invites you for a job opening, submit cv.

Regards
Sarah Ibrahim
Recruitment Team

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/B71lI000000000000000000000000000000000000000000000QNI3KW00qztUdkZGR9aU5xiOdROwZw%40sfdc.net.

------=_Part_2476_10003287.1611596192725
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
	<title></title>
</head>
<body style=3D"height: auto; min-height: auto;">Dear Sir,<br />
<br />
Job Opportunity @ Interco Petroleum Company IPC- Abu Dhabi, United Arab Emi=
rates invites you for a job opening, submit cv.<br />
<br />
Regards<br />
Sarah Ibrahim<br />
Recruitment Team<br />
&nbsp;</body>
</html>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/B71lI00000000000000000000000000000000000000000=
0000QNI3KW00qztUdkZGR9aU5xiOdROwZw%40sfdc.net?utm_medium=3Demail&utm_source=
=3Dfooter">https://groups.google.com/d/msgid/clang-built-linux/B71lI0000000=
00000000000000000000000000000000000000QNI3KW00qztUdkZGR9aU5xiOdROwZw%40sfdc=
.net</a>.<br />

------=_Part_2476_10003287.1611596192725--

------=_Part_2477_198998957.1611596192725--
