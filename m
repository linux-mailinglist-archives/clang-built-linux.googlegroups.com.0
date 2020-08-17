Return-Path: <clang-built-linux+bncBAABBZXM5H4QKGQE5BNXOMQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1039.google.com (mail-pj1-x1039.google.com [IPv6:2607:f8b0:4864:20::1039])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BC2524663A
	for <lists+clang-built-linux@lfdr.de>; Mon, 17 Aug 2020 14:21:59 +0200 (CEST)
Received: by mail-pj1-x1039.google.com with SMTP id gl22sf10346064pjb.3
        for <lists+clang-built-linux@lfdr.de>; Mon, 17 Aug 2020 05:21:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597666918; cv=pass;
        d=google.com; s=arc-20160816;
        b=thPpAXe5zn6nDsUPW26w9olWVE+QwXBCkV9N/mJOb4wG8+bFifyOgofWS5sS2cF6HU
         htKib3yyTSCx/Hc27yHowNM/g0BAT+U+FbZBWwPBYJVoQSgpEVh2qDrUfgwDDSTaLUmX
         rIHBMzuwf5x7winHSSfWUbwsPruAeVRYWvBS7Bv18j3/xFoNW9HWv+0JCDfxn3oj7V34
         gY6eOqIoPjsQhpgOba2dNjsr8axasBZy4DLeBDXt/awMK3wRdLQbN+UOWsGdaS9ecHs9
         bXL2JYwg2xFv3NjngVOZjfD/7ailOapcd2q4UojKrOHgjzAnYTHri96xtFgbD64L+lrQ
         5mfw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id
         :content-transfer-encoding:importance:references:mime-version
         :sensitivity:date:cc:to:from:in-reply-to:subject:sender
         :dkim-signature;
        bh=7OFFPIs2xkU5Y4wf4XNDdFV5VvyYBf1WeasaV8STO7c=;
        b=uGYBnjMKh6mBKLYVsQzR9TDb+3OWLODgrKs7QTZjZy5Tvcqva279zsv+u0KW7p1GFp
         vnLboOOgdYNJXTc671Rroztd9p/geeZ5G1tu3wiTyxZ2HVT/fIzxpft2NwI4I39PuSiH
         D7S/XlAIRfVVjH92hsnK6ssgt8+Z0pGoRxfpDOZrkz+eLgMX31m3wuqQF6bYeUaEtJig
         Aemf4hd3bChvjhhB1pm2R1x0N4LXw6LnTcEjJGhwHl896ew2RLARV8HtqqxVy2Gb8rkI
         KAPAS/yV28Ym+YfzB+MIrUB7635Owu5PZUZjuglWX+t0xyF7GufHi9H9f95/4JHlRM25
         5rpQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=kniWdQAw;
       spf=pass (google.com: domain of stefan.schulze.frielinghaus@ibm.com designates 148.163.158.5 as permitted sender) smtp.mailfrom=Stefan.Schulze.Frielinghaus@ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:in-reply-to:from:to:cc:date:sensitivity:mime-version
         :references:importance:content-transfer-encoding:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7OFFPIs2xkU5Y4wf4XNDdFV5VvyYBf1WeasaV8STO7c=;
        b=OqtCDlKnMfFY4oPZOEaEVF5sqW0NncJ0ECtqCMp0B0Y5xFipKzw14lwcEstEb0NQoY
         /pnE816GVjKz392hPx88YwDkoX+RigMoUZKaO8XPYhY2yRUxtDZWuwX/mTWJbC45qr9V
         nfitLMa54qVAUvHSuNkpoeoC5FIrFc9Akis9Fet9ZL/BPYRqPXJSgJ6q1h2dztdu77fw
         UYfV/v9Lw+23fZdJLZSUHk/Dpg6NrdTsBK1LJBcQGTE0AwtDphmj90sk/k2ai69T9wLb
         s2zqj/6Wm49SqSmRRTLbhQcSDG57USyWhejhDR1h9nHT5S12DDl6fBe8vDO9xBtBy53J
         BBmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:in-reply-to:from:to:cc:date
         :sensitivity:mime-version:references:importance
         :content-transfer-encoding:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7OFFPIs2xkU5Y4wf4XNDdFV5VvyYBf1WeasaV8STO7c=;
        b=ERRNfq65Ww3rDUJFKJr1IZ2vmrt7bULYKlF7NXwi8+p4df8OavNqVKb9PbD48IpALN
         14RcVxSkbps1RJXmvnbWbS/ooVVw7WrXd0IbNlrjWq/0cdIAGl6BeKc29H2f23TWNRB9
         HRD2alrtWOSzsGDmdcBhERkc9yfReOQXKHXqw0CNysHG4kIPd7x/2Jj5JCpfcUTtK1l+
         DNpS+2iMPxKcdN9TmApChh0cVmsKFajKAthJag6aCILrdif3YIfguFZ3mkp8QYSs1JGJ
         xW12FaCKQ6Gilp2v7j8NlJtATuSuTyzAzkwgblmu/GAVrs+U23AZACjDi/sOGQg4WkI1
         HcLw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5318RqZNyn08nyws632ecwiw4sGOnHB2DG90UUXCQGMpOU5/vHqQ
	QZibRwgA68N8z0miDUz3Hhc=
X-Google-Smtp-Source: ABdhPJwRPkmnXQA2sBl3BMZ6vEm5UrOPNr9urGjStjtP84kCuzdCWtkz1oQ+WOsHcazzih4W4uYnlw==
X-Received: by 2002:a17:90b:470f:: with SMTP id jc15mr12504217pjb.166.1597666918316;
        Mon, 17 Aug 2020 05:21:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:620d:: with SMTP id d13ls4526291pgv.0.gmail; Mon, 17 Aug
 2020 05:21:58 -0700 (PDT)
X-Received: by 2002:a62:178d:: with SMTP id 135mr11266307pfx.192.1597666917903;
        Mon, 17 Aug 2020 05:21:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597666917; cv=none;
        d=google.com; s=arc-20160816;
        b=GN5Cr/GpDDpPIAQajuLuuAU6nikljIAqUhCu+vd9lRIMjmgOJmSgaLTOL6YdZYwTib
         rnM6PySKKpIvqjHkADHbwBbHEr9JUndLkLAfJl4JnpouYXEabwlrAcl02Oul/xko4qGN
         88cDY5TOM7YBztnh3pomz/Omvr93byFMJHSeW9F/CaVH2QHvABXRPdKdCM7aiQZXYtd0
         UZaIcF5wT1+F0WR8kYBe8DUndY3kBOV3zLtf93N9vdwFevr4D9XqQvmm+Cr0vWE8B8iu
         3QuMSffLdiSM4eToMgj/pK0LSzxEkTZ717VHJokYPK68Sjuh7Aq6KL1m8a7vvAn9bO++
         Tu1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:content-transfer-encoding:importance:references
         :mime-version:sensitivity:date:cc:to:from:in-reply-to:subject
         :dkim-signature;
        bh=OwRm9RRg34860Uxje+TS2TMEI7hTHUNM7ygKbNGonlI=;
        b=n3meJzCr6i4cArv9XknHg21YsL9dAyOvLzZ7+jAPHAs3g5kwyL18ZD4ZL/Zmr6QSaB
         5ICs3G+CrLxaccwGcbNOq9XRKREp1O5S+XiUVRSegl780Kvk1JbV/vwkm65xqyQyRBgL
         9eTJVQr9d0iBRR4QOhEbWE6cExEJlVxRTOITuWiPC2giZy3qiW9w4da47/KBZoc4cxib
         Vaz0v3F8K8oDbs9r8KUU+/QuM/AFBNJHOYgUG94DXPMCOZHr+apx4Ck8BDN88wiWdB6X
         UW7GSPBBp20DHYlVpVKPKaoybHE13J2TfkQ8ItNfdkwxXA7lKe896oz2MaL3XBDDQVg4
         vczw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=kniWdQAw;
       spf=pass (google.com: domain of stefan.schulze.frielinghaus@ibm.com designates 148.163.158.5 as permitted sender) smtp.mailfrom=Stefan.Schulze.Frielinghaus@ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
Received: from mx0a-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com. [148.163.158.5])
        by gmr-mx.google.com with ESMTPS id s76si761975pfc.1.2020.08.17.05.21.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 17 Aug 2020 05:21:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of stefan.schulze.frielinghaus@ibm.com designates 148.163.158.5 as permitted sender) client-ip=148.163.158.5;
Received: from pps.filterd (m0098414.ppops.net [127.0.0.1])
	by mx0b-001b2d01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id 07HC2vEe006041
	for <clang-built-linux@googlegroups.com>; Mon, 17 Aug 2020 08:21:57 -0400
Received: from smtp.notes.na.collabserv.com (smtp.notes.na.collabserv.com [192.155.248.93])
	by mx0b-001b2d01.pphosted.com with ESMTP id 32y6yw09t6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <clang-built-linux@googlegroups.com>; Mon, 17 Aug 2020 08:21:57 -0400
Received: from localhost
	by smtp.notes.na.collabserv.com with smtp.notes.na.collabserv.com ESMTP
	for <clang-built-linux@googlegroups.com> from <Stefan.Schulze.Frielinghaus@ibm.com>;
	Mon, 17 Aug 2020 12:21:56 -0000
Received: from us1a3-smtp01.a3.dal06.isc4sb.com (10.106.154.95)
	by smtp.notes.na.collabserv.com (10.106.227.39) with smtp.notes.na.collabserv.com ESMTP;
	Mon, 17 Aug 2020 12:21:53 -0000
Received: from us1a3-mail177.a3.dal06.isc4sb.com ([10.146.71.149])
          by us1a3-smtp01.a3.dal06.isc4sb.com
          with ESMTP id 2020081712215272-407101 ;
          Mon, 17 Aug 2020 12:21:52 +0000
Subject: Re: buildroot on s390x
In-Reply-To: <OFC0683E5D.D5BC712E-ONC12585C7.00430794-C12585C7.00432E67@LocalDomain>
From: "Stefan Schulze Frielinghaus" <Stefan.Schulze.Frielinghaus@ibm.com>
To: "Ulrich Weigand" <Ulrich.Weigand@de.ibm.com>
Cc: arnd@arndb.de, clang-built-linux@googlegroups.com, gor@linux.ibm.com,
        iii@linux.ibm.com, linux@roeck-us.net, ndesaulniers@google.com
Date: Mon, 17 Aug 2020 12:21:52 +0000
Sensitivity: 
MIME-Version: 1.0
References: <OFC0683E5D.D5BC712E-ONC12585C7.00430794-C12585C7.00432E67@LocalDomain>,<OF75D816C6.F1CD6CB2-ONC12585C3.0047C644-C12585C3.00484578@notes.na.collabserv.com>
 <CAKwvOdmmUFVRG53w68B2YaS22MMO1k+2yyaxO7QGqJnqEDKxug@mail.gmail.com>
 <CAKwvOdn+kdrXp3qn0sbpYzBG+wO0RRhS6UsM3JUMK8My08-uFg@mail.gmail.com>
Importance: Normal
X-Priority: 3 (Normal)
X-Mailer: IBM Verse Build 17652-1661 | IBM Domino Build SCN1812108_20180501T0841_FP65
 April 15, 2020 at 09:48
X-LLNOutbound: False
X-Disclaimed: 13119
X-TNEFEvaluated: 1
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset="UTF-8"
x-cbid: 20081712-8889-0000-0000-00000354170B
X-IBM-SpamModules-Scores: BY=0; FL=0; FP=0; FZ=0; HX=0; KW=0; PH=0;
 SC=0.417846; ST=0; TS=0; UL=0; ISC=; MB=0.000008
X-IBM-SpamModules-Versions: BY=3.00013666; HX=3.00000242; KW=3.00000007;
 PH=3.00000004; SC=3.00000295; SDB=6.01421388; UDB=6.00762649; IPR=6.01204058;
 MB=3.00033563; MTD=3.00000008; XFM=3.00000015; UTC=2020-08-17 12:21:54
X-IBM-AV-DETECTION: SAVI=unsuspicious REMOTE=unsuspicious XFE=unused
X-IBM-AV-VERSION: SAVI=2020-08-17 05:10:23 - 6.00011734
x-cbparentid: 20081712-8890-0000-0000-0000ACF81775
Message-Id: <OFF00E0E50.C2C52D87-ON002585C7.0043DE22-002585C7.0043EBBA@notes.na.collabserv.com>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.235,18.0.687
 definitions=2020-08-17_06:2020-08-17,2020-08-17 signatures=0
X-Proofpoint-Spam-Reason: orgsafe
X-Original-Sender: stefan.schulze.frielinghaus@ibm.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ibm.com header.s=pp1 header.b=kniWdQAw;       spf=pass (google.com:
 domain of stefan.schulze.frielinghaus@ibm.com designates 148.163.158.5 as
 permitted sender) smtp.mailfrom=Stefan.Schulze.Frielinghaus@ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
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

<div class=3D"socmaildefaultfont" dir=3D"ltr" style=3D"font-family:Arial, H=
elvetica, sans-serif;font-size:10pt" ><blockquote data-history-content-modi=
fied=3D"1" data-history-expanded=3D"1" dir=3D"ltr" style=3D"border-left:sol=
id #aaaaaa 2px; margin-left:5px; padding-left:5px; direction:ltr; margin-ri=
ght:0px" >----- Original message -----<br>From: Ulrich Weigand/Germany/IBM<=
br>To: Nick Desaulniers &lt;ndesaulniers@google.com&gt;<br>Cc: Arnd Bergman=
n &lt;arnd@arndb.de&gt;, clang-built-linux &lt;clang-built-linux@googlegrou=
ps.com&gt;, Vasily Gorbik &lt;gor@linux.ibm.com&gt;, Ilya Leoshkevich &lt;i=
ii@linux.ibm.com&gt;, Guenter Roeck &lt;linux@roeck-us.net&gt;, Stefan Schu=
lze Frielinghaus &lt;Stefan.Schulze.Frielinghaus@ibm.com&gt;<br>Subject: Re=
: buildroot on s390x<br>Date: Mon, Aug 17, 2020 14:13<br>&nbsp;<br><tt><fon=
t size=3D"3" face=3D"" >Nick Desaulniers &lt;ndesaulniers@google.com&gt; wr=
ote on 16.08.2020 00:02:13:<br>&gt; Ah, sorry, I may have spoken too soon. =
&nbsp;I manually used BR2_s390=3Dy in<br>&gt; our config; buildroot ignores=
 that then proceeds to build an image<br>&gt; based on my host's triple, wh=
ich is not what I want. &nbsp;In buildroot, if<br>&gt; I run `make menuconf=
ig`, then open the first menu for target<br>&gt; architecture, there is no =
s390/SystemZ in the list of supported target<br>&gt; architecture.<br>&gt;<=
br>&gt; Can you or Stefan confirm that the resulting image you were able to=
<br>&gt; produce via buildroot was targeting s390/SystemZ and in fact,<br>&=
gt; bootable?</font></tt><br><br><tt><font size=3D"3" face=3D"" >Hmm, I thi=
nk Stefan probably did a native build - correct, Stefan?</font></tt><br><br=
><tt><font size=3D"3" face=3D"" >Maybe the issue is that native builds work=
, but cross-builds require</font></tt><br><tt><font size=3D"3" face=3D"" >a=
dditional setup in the buildroot sources that is missing?</font></tt></bloc=
kquote></div><BR>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/OFF00E0E50.C2C52D87-ON002585C7.0043DE22-002585=
C7.0043EBBA%40notes.na.collabserv.com?utm_medium=3Demail&utm_source=3Dfoote=
r">https://groups.google.com/d/msgid/clang-built-linux/OFF00E0E50.C2C52D87-=
ON002585C7.0043DE22-002585C7.0043EBBA%40notes.na.collabserv.com</a>.<br />
