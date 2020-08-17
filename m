Return-Path: <clang-built-linux+bncBAABBDXR5H4QKGQEZPMHX4A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa37.google.com (mail-vk1-xa37.google.com [IPv6:2607:f8b0:4864:20::a37])
	by mail.lfdr.de (Postfix) with ESMTPS id 2651E246664
	for <lists+clang-built-linux@lfdr.de>; Mon, 17 Aug 2020 14:31:13 +0200 (CEST)
Received: by mail-vk1-xa37.google.com with SMTP id n185sf5675335vkg.19
        for <lists+clang-built-linux@lfdr.de>; Mon, 17 Aug 2020 05:31:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597667471; cv=pass;
        d=google.com; s=arc-20160816;
        b=Xv3uj5K5JLmB7ZLtGW8sPY64sIV0l65vKKmER26xlYE9UMmJPMFH1Z7B32llyS2lMO
         drf5V/l/DcQ3fDkd6MkdIZqlDNb7Mjn0V1SPMCm9zArrdXSFD2Li/Lmzm2HQHm2MQLlq
         WTr+1Fvnwi8acSDC+glhiaK7s0i3WyA9YcncWh2gFIsIBav3fEBnYTdU5f5pUy1gisBf
         oKyMontiM3UxD12gg3rDQ+RG8JdUYsnyJl8KAIeXxJ/rfbJR3oXY6pDeSQuHhto+1TnK
         rQtYhFJiyCm1IPK/hNsFCmc7+q2DCSqaERUO6BjWXNL+39o5bKcud+Z0z+dJ4P6wwdsV
         hOrA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id
         :content-transfer-encoding:importance:references:mime-version
         :sensitivity:date:cc:to:from:in-reply-to:subject:sender
         :dkim-signature;
        bh=ZJlWPooDB8q4eWCfR6rx7aHJYOydIww9QZjT14GQ5ek=;
        b=v86bIfiCXY2Tvx8cyOurtGA9rpvk10h9pkgLk/13MF6GhysXqBYc0RA6BfOMlzw2yO
         /+RKKkVgXJ0NOWHpwwuRQ3/goprOLDzjjhSwR8dMxP1IleavGt+u1IIOXEtycjuN1AEQ
         TSegZIueTYauLfoBz10rVAlH+YsFZC+1O4J6GVpXcITE2cuoAlnWth7eo+e719p+CD6l
         x9/EsPIUqHxus7XSiWxD8X8fmIJAN06rYgJ6gaGuf0pz1gU/3hJZ2n36GEyX9zQlJu/A
         68lfUgqTJxrHbRwjDvEZMtLjwISR0w/5dMBJPg4r0TGFvSLJZWvwJFLGuLFP5Uj6XbwF
         nR1A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=TFhNtxGB;
       spf=pass (google.com: domain of stefan.schulze.frielinghaus@ibm.com designates 148.163.156.1 as permitted sender) smtp.mailfrom=Stefan.Schulze.Frielinghaus@ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:in-reply-to:from:to:cc:date:sensitivity:mime-version
         :references:importance:content-transfer-encoding:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZJlWPooDB8q4eWCfR6rx7aHJYOydIww9QZjT14GQ5ek=;
        b=WD6CpbmYfdzPnMUTFti8a3qxc2dwfW6qlSuvrQE4uscNg47p2ADS4lTl638DYA8ej3
         /Un6K15DarxgRApEbylZ6E9tnMFELT7rylwBsyXnwuZ6jxeRAiN7Uh+VxtTXX9n7XXDu
         QqDqD3zs+coffJ88/UTj/nfObRfU2KKy4htUOUbNsFa+JwNPUQJGlLVLz+0kNV85uK1y
         527S5/lnym/ywPXfC5T2aNhJM76pGudMyu4ZAdBr0cG14dcA/FA/IAHG1mPvrDa1fd5i
         VrKkHdpYGJeHHe7a2MYmjXhD68Sn27DqIkXwrO904VNwJ4Y0rwYbvpaF5uDGIqRR3/N1
         nYwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:in-reply-to:from:to:cc:date
         :sensitivity:mime-version:references:importance
         :content-transfer-encoding:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZJlWPooDB8q4eWCfR6rx7aHJYOydIww9QZjT14GQ5ek=;
        b=EF/TmL4pETer7+9o05PaFx5pgEnoSP/MgrpghilZ0yTrFqy2s0wEQDSXpw74pv+CLX
         GHdcmJDHbIurEBBG63O2i6OPr12koZvQszcY8odJ8w/a3duzOrAdZLWM8sZW5G6gHu+a
         fDs9kwMWYHZpnLDc8Dgwm+Xma8YuiKdP/ePMHNh05XQHv5YWv8ORVojNTWxW96SD8KDZ
         0LTFU5W2CLjy3P4KJOm7VsWWWCW11636q7Nfds/PG9TP5mhfKRqNvswK800YNJqtyogQ
         yuIGTxMRNUf4ggwXTvNVxyiYaKCg2IV6BbKCqq5OKHHbWqIay7x9m4WRDxt15nor4FM1
         5Xhw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532FLAmzJN+TLO/Pa0JxcwF/flqSso2qArZhDFFRdbjW6HwPPPnz
	o+SyjoUbwmPWYKGkL8fEngU=
X-Google-Smtp-Source: ABdhPJxuacRtw67Z4mfGH2RcZNdCaurgUa9eUs/PLUoZcvxJ/kvpIds8NvfrMBsFiaOpRGZFInT5jQ==
X-Received: by 2002:a05:6102:2247:: with SMTP id e7mr7358207vsb.181.1597667470922;
        Mon, 17 Aug 2020 05:31:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:2304:: with SMTP id a4ls1065105uao.6.gmail; Mon, 17 Aug
 2020 05:31:10 -0700 (PDT)
X-Received: by 2002:ab0:65c3:: with SMTP id n3mr7586563uaq.100.1597667470567;
        Mon, 17 Aug 2020 05:31:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597667470; cv=none;
        d=google.com; s=arc-20160816;
        b=nAeWg2Xni4FyrhP+AQVAGTsUL0gAv6MJUEFmeCTRB4zycNgiOswVMBDjBWfaCodSdr
         fui386p69W4Go38wTu4K1oElqinws1+QDaN7GsMZ46Auu2X6S5Ttk319IO3Yr9uqtJYb
         WugyKWoG7pbxyaJCJUXxzbv3TAlBEpaETpLfe6P7BH4Iuowcdo1j+jMWLuDjSO7PHXds
         wIx7GVPeR7QxXY1K0xx7n8bUJLS0ciegLaOu9SfoXGRB1ZRCPs4rNoJP6WS9J56W0gUi
         qTvgEbnZPtxXK5TlHQ7mqYVBk2cV2CIHDtermpIRdghjWgLz/OsrFtmqJiL2/jeTDxGD
         qeqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:content-transfer-encoding:importance:references
         :mime-version:sensitivity:date:cc:to:from:in-reply-to:subject
         :dkim-signature;
        bh=s1tYSHk8epQl+ukOrj2rpWZRPQrX0iCcget+ciAe5ic=;
        b=K4MyJv7s/3TVNaZnx57YaFCVhW3ytwrnLQpCVSSd0FN2eJ7KtLAHQR/PX6wyjUWSSP
         yMuuqjg1ivG4otXGLmm6F70m8Sq5tofCzVkj2XMC4Ylhet8a3/lxz3Zgi6kfWFnAWVoI
         Zf4qaYsK5I2ry1v/utjyRoIpeG3zkhMHkI3A4STAOfXuFjkoUgcouXQC6+aALM6NZU0Y
         QqNOSVN2YifKOnztTAFbYNsSsgC6OaLNE8U3cXweNc6T1s8lPQhc2xGKpf/Ap4Z/oWbV
         mTzfxU2aSdR0CCrVeT27B+wx/UDiEor3z/3YkYFUb7w/ft4D+FjgAIabr8jA0tf4rlLn
         narw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=TFhNtxGB;
       spf=pass (google.com: domain of stefan.schulze.frielinghaus@ibm.com designates 148.163.156.1 as permitted sender) smtp.mailfrom=Stefan.Schulze.Frielinghaus@ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com. [148.163.156.1])
        by gmr-mx.google.com with ESMTPS id k201si904155vka.4.2020.08.17.05.31.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 17 Aug 2020 05:31:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of stefan.schulze.frielinghaus@ibm.com designates 148.163.156.1 as permitted sender) client-ip=148.163.156.1;
Received: from pps.filterd (m0098394.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id 07HC51dA061241
	for <clang-built-linux@googlegroups.com>; Mon, 17 Aug 2020 08:31:09 -0400
Received: from smtp.notes.na.collabserv.com (smtp.notes.na.collabserv.com [192.155.248.73])
	by mx0a-001b2d01.pphosted.com with ESMTP id 32y24j64c0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <clang-built-linux@googlegroups.com>; Mon, 17 Aug 2020 08:31:09 -0400
Received: from localhost
	by smtp.notes.na.collabserv.com with smtp.notes.na.collabserv.com ESMTP
	for <clang-built-linux@googlegroups.com> from <Stefan.Schulze.Frielinghaus@ibm.com>;
	Mon, 17 Aug 2020 12:31:08 -0000
Received: from us1a3-smtp08.a3.dal06.isc4sb.com (10.146.103.57)
	by smtp.notes.na.collabserv.com (10.106.227.90) with smtp.notes.na.collabserv.com ESMTP;
	Mon, 17 Aug 2020 12:31:05 -0000
Received: from us1a3-mail177.a3.dal06.isc4sb.com ([10.146.71.149])
          by us1a3-smtp08.a3.dal06.isc4sb.com
          with ESMTP id 2020081712310527-361290 ;
          Mon, 17 Aug 2020 12:31:05 +0000
Subject: Re: buildroot on s390x
In-Reply-To: <OFF00E0E50.C2C52D87-ON002585C7.0043DE22-002585C7.0043EBBA@LocalDomain>
From: "Stefan Schulze Frielinghaus" <Stefan.Schulze.Frielinghaus@ibm.com>
To: "Ulrich Weigand" <Ulrich.Weigand@de.ibm.com>
Cc: arnd@arndb.de, clang-built-linux@googlegroups.com, gor@linux.ibm.com,
        iii@linux.ibm.com, linux@roeck-us.net, ndesaulniers@google.com
Date: Mon, 17 Aug 2020 12:31:05 +0000
Sensitivity: 
MIME-Version: 1.0
References: <OFF00E0E50.C2C52D87-ON002585C7.0043DE22-002585C7.0043EBBA@LocalDomain>,<OFC0683E5D.D5BC712E-ONC12585C7.00430794-C12585C7.00432E67@LocalDomain>,<OF75D816C6.F1CD6CB2-ONC12585C3.0047C644-C12585C3.00484578@notes.na.collabserv.com>
 <CAKwvOdmmUFVRG53w68B2YaS22MMO1k+2yyaxO7QGqJnqEDKxug@mail.gmail.com>
 <CAKwvOdn+kdrXp3qn0sbpYzBG+wO0RRhS6UsM3JUMK8My08-uFg@mail.gmail.com>
Importance: Normal
X-Priority: 3 (Normal)
X-Mailer: IBM Verse Build 17652-1661 | IBM Domino Build SCN1812108_20180501T0841_FP65
 April 15, 2020 at 09:48
X-LLNOutbound: False
X-Disclaimed: 46371
X-TNEFEvaluated: 1
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html; charset="UTF-8"
x-cbid: 20081712-8877-0000-0000-000004322278
X-IBM-SpamModules-Scores: BY=0; FL=0; FP=0; FZ=0; HX=0; KW=0; PH=0;
 SC=0.417846; ST=0; TS=0; UL=0; ISC=; MB=0.005696
X-IBM-SpamModules-Versions: BY=3.00013666; HX=3.00000242; KW=3.00000007;
 PH=3.00000004; SC=3.00000295; SDB=6.01421391; UDB=6.00762651; IPR=6.01204061;
 MB=3.00033563; MTD=3.00000008; XFM=3.00000015; UTC=2020-08-17 12:31:07
X-IBM-AV-DETECTION: SAVI=unsuspicious REMOTE=unsuspicious XFE=unused
X-IBM-AV-VERSION: SAVI=2020-08-17 05:39:57 - 6.00011734
x-cbparentid: 20081712-8878-0000-0000-0000B413239C
Message-Id: <OFED0BC1CD.FBAECBF3-ON002585C7.0043F877-002585C7.0044C3BD@notes.na.collabserv.com>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.235,18.0.687
 definitions=2020-08-17_06:2020-08-17,2020-08-17 signatures=0
X-Proofpoint-Spam-Reason: orgsafe
X-Original-Sender: stefan.schulze.frielinghaus@ibm.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ibm.com header.s=pp1 header.b=TFhNtxGB;       spf=pass (google.com:
 domain of stefan.schulze.frielinghaus@ibm.com designates 148.163.156.1 as
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
elvetica, sans-serif;font-size:10pt" ><div dir=3D"ltr" >From: Ulrich Weigan=
d/Germany/IBM
<blockquote data-history-content-modified=3D"1" style=3D"border-left:solid =
#aaaaaa 2px; margin-left:5px; padding-left:5px; direction:ltr; margin-right=
:0px" ><div dir=3D"ltr" style=3D"font-family:Arial, Helvetica, sans-serif;f=
ont-size:10pt" ><blockquote data-history-content-modified=3D"1" data-histor=
y-expanded=3D"1" dir=3D"ltr" style=3D"border-left:solid #aaaaaa 2px; margin=
-left:5px; padding-left:5px; direction:ltr; margin-right:0px" >To: Nick Des=
aulniers &lt;ndesaulniers@google.com&gt;<br>Cc: Arnd Bergmann &lt;arnd@arnd=
b.de&gt;, clang-built-linux &lt;clang-built-linux@googlegroups.com&gt;, Vas=
ily Gorbik &lt;gor@linux.ibm.com&gt;, Ilya Leoshkevich &lt;iii@linux.ibm.co=
m&gt;, Guenter Roeck &lt;linux@roeck-us.net&gt;, Stefan Schulze Frielinghau=
s &lt;Stefan.Schulze.Frielinghaus@ibm.com&gt;<br>Subject: Re: buildroot on =
s390x<br>Date: Mon, Aug 17, 2020 14:13<br>&nbsp;<br><tt><font size=3D"3" fa=
ce=3D"" >Nick Desaulniers &lt;ndesaulniers@google.com&gt; wrote on 16.08.20=
20 00:02:13:<br>&gt; Ah, sorry, I may have spoken too soon. &nbsp;I manuall=
y used BR2_s390=3Dy in<br>&gt; our config; buildroot ignores that then proc=
eeds to build an image<br>&gt; based on my host's triple, which is not what=
 I want. &nbsp;In buildroot, if<br>&gt; I run `make menuconfig`, then open =
the first menu for target<br>&gt; architecture, there is no s390/SystemZ in=
 the list of supported target<br>&gt; architecture.<br>&gt;<br>&gt; Can you=
 or Stefan confirm that the resulting image you were able to<br>&gt; produc=
e via buildroot was targeting s390/SystemZ and in fact,<br>&gt; bootable?</=
font></tt><br><br><tt><font size=3D"3" face=3D"" >Hmm, I think Stefan proba=
bly did a native build - correct, Stefan?</font></tt><br><br><tt><font size=
=3D"3" face=3D"" >Maybe the issue is that native builds work, but cross-bui=
lds require</font></tt><br><tt><font size=3D"3" face=3D"" >additional setup=
 in the buildroot sources that is missing?</font></tt></blockquote></div></=
blockquote>
<div>&nbsp;</div>
<div>My initial build was on S/390, however, it turned out that the default=
 target of buildroot is x86 and not the hosts architecture. Thus my test bu=
ild from last week was for x86+glibc.<br><br>As Nick already pointed out it=
 looks like that the architecture S/390 is not available in buildroot so fa=
r. I'm looking into this. Maybe we can add it.</div>
<div>&nbsp;</div>
<div>Cheers,</div>
<div>Stefan</div></div></div><BR>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/OFED0BC1CD.FBAECBF3-ON002585C7.0043F877-002585=
C7.0044C3BD%40notes.na.collabserv.com?utm_medium=3Demail&utm_source=3Dfoote=
r">https://groups.google.com/d/msgid/clang-built-linux/OFED0BC1CD.FBAECBF3-=
ON002585C7.0043F877-002585C7.0044C3BD%40notes.na.collabserv.com</a>.<br />
