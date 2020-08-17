Return-Path: <clang-built-linux+bncBDX5FLHOXQPRBB7J5H4QKGQEAKNVJXY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13e.google.com (mail-il1-x13e.google.com [IPv6:2607:f8b0:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id 94630246619
	for <lists+clang-built-linux@lfdr.de>; Mon, 17 Aug 2020 14:14:00 +0200 (CEST)
Received: by mail-il1-x13e.google.com with SMTP id i66sf11827840ile.6
        for <lists+clang-built-linux@lfdr.de>; Mon, 17 Aug 2020 05:14:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597666439; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZeNq9u2wr3ExtS4PwZ357UTSMUeN2HEF8qkxoDI7EWqAJWJnW3S7WxD9Ym9IhioNbJ
         Vy+wLCAwaG4E2UE2mSWqZ6IXp0BdQCyqGrI1WmXTqa5jTAvWYqgMgVpjkhi+oLdMN+Hp
         GZmKJ7Tsss2GfjWaM/YKQLYIfUGsARoPcfq1hkcFt9mktBagbxVhnGSu4hG61RLm+Ds9
         ruSqLdbf4f+5zYKPBSh1Xr0w75t2VDJhtCaopedxvy2ee8bxWTzXpyONq0Rkv5upiEzq
         65RgV6I9IO7eLb8q7r0WvGqmdqTCIssL9WopMsQrcpqWRL41Ou6GrDJDCwiBWM78qI+A
         EFYQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:content-disposition
         :references:date:from:cc:to:subject:in-reply-to:mime-version:sender
         :dkim-signature;
        bh=YLZe8pAODfYenCFtsXwsq9PR12LaKXot03ayUwVmeVI=;
        b=oz50fvik5YaHqD3vm+Sh7tjH5LcxHKr7xIzHKTzyGTRGfly0YWseMuxM5lb7a86uH/
         R1vePyjpuqZ3GhQS8H02fxr3JaSRiRY/CmOAphtu2e37MkaYt638DellAFgwikvMPfSv
         8IUwhDURbV7qzCphyOPOKe/GuCh+mHPtIgIDt8lTTVDjIK5K2ZyP8c9Op8/VdP9Y0pwW
         ENWqyJdvYuEpKuD4gxC2EIglA1V4ptaDYABJW/kF0V11gHVwow4jzV3zU/Lv2rJorqPL
         TmTt77cjDLFtRx6TvE2I1W425/ua2aHv6WeOpKTh3+jw4K3btbonM2gLhwZMzJC9QSkh
         IDzg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=kFIU4Lha;
       spf=pass (google.com: domain of ulrich.weigand@de.ibm.com designates 148.163.156.1 as permitted sender) smtp.mailfrom=Ulrich.Weigand@de.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:in-reply-to:subject:to:cc:from:date:references
         :content-disposition:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=YLZe8pAODfYenCFtsXwsq9PR12LaKXot03ayUwVmeVI=;
        b=k7bZDtZk6SGMN0p8yhVk93rYfunkZIPX3UMFXAte128j4g7wr7e5BvQ2cuNPEflK6D
         Hd78fOo/87t48tatjiuIc/bO/p6J1oIf2ZCW5nloGDOIo/tYhkSf6mKaeUVt2glackJV
         h/Q5mpKX6cK2V/nxoOeoPGblYqw5ikCMoyZg7na5pW+XMo8m4Tk6NZ2zR6dKjkfsJPUZ
         mxmQRE9Lk5HmeiTwNSc5KcNe2bCrxUZoSWBD2bQ8HbyHRR81dAWfyf8azNViKL8iGIys
         PfgnDKxdszycY5XEaXG/YPqi/FSREFdFS4njYfQ4ZWoRMGiO8vGbB/nUNqwMVx2Fv2xa
         zaTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:in-reply-to:subject:to:cc
         :from:date:references:content-disposition:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=YLZe8pAODfYenCFtsXwsq9PR12LaKXot03ayUwVmeVI=;
        b=aPl+9U6c9th26nETbI3z2aai2KC/ByoUPvFYtHby/TruM0QxoF0kkCvZt+vZAREWdf
         kYgQWuRVKyxVK/2/fJMJ24d/NnL41yVIaKfYU1GtluaKI0OBQPT5i/uVQ7/4naMDR7Gz
         z2zPUeyIl3jtjpG8WV41HRWjZeBoO39OkAzND7KdjnA681uaMi4ByCRjzgE4fNVIraEp
         YgmYGHdk/h6GS1X9U5QXV01jG4eshi7L906KWQfKSmXVoe/b1r3WgIZTt7UETfDwPA0Z
         O3pRya+GDQlG5S64wOUqYsvUHHcLLfLP9R368ryWj85vZu3R2ow1NnBtiU5v/W+4NefF
         m4cw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531eGEentl8aNbnPS28m/Kc+PM719d4nqvg6JddQSJmiY4+YSjBl
	g+WrM6SsSVbayTUv55CDv9U=
X-Google-Smtp-Source: ABdhPJw6V+Zo0sXFN3hM65jCK7egfi8kjFyjkwaOWQT/JX3y+2BKuIKJetkEgSHEgLFO/NN9os9odQ==
X-Received: by 2002:a02:8384:: with SMTP id z4mr14521529jag.121.1597666439493;
        Mon, 17 Aug 2020 05:13:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:d18d:: with SMTP id z13ls3176936ilz.4.gmail; Mon, 17 Aug
 2020 05:13:59 -0700 (PDT)
X-Received: by 2002:a92:7310:: with SMTP id o16mr12952327ilc.23.1597666439151;
        Mon, 17 Aug 2020 05:13:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597666439; cv=none;
        d=google.com; s=arc-20160816;
        b=F3mhhSGQcMvWp8Euc/xNcTlLjEGPtm56qMPWm6Z7yIhOm5Z8lBizNB6+PVmKwftPO2
         tWLhpzKy/e+syMBRLyi59DHw+HrQtIH/u4vp8Z176Ta0CY5Xw+eutMJaUoCukwcWqbzo
         TNNhQlcWG8ZGogkOw6LEtLxNzxv82mViFzQIonLBhykSjOAGYk2TT5HZCXZgy5pHQZCI
         pBSRYKZZ8gWoeOGLP1T6+8ujIB8yoN2U312HYOWJpkaj/ePu9CvID9clhI0MMNB7DXfH
         nsvaCJV6PkbB8SCajoMJXyzl5tQZLxAETPWJ6QsmzIG925PhnJKeJnEbVNv9F9vUu/xs
         4M8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:content-disposition:references:date:from:cc:to:subject
         :in-reply-to:mime-version:dkim-signature;
        bh=Aysmy+IZLEpJ9XlcViCZXF6GXl5xLyY1/wJupj7qQXg=;
        b=hOM9v0C81hwjeSHjzw8yhtheVrpbDcffjkn4HILDZPGW+570dV9QT+kdoB1puoRbb1
         9ckABmf0XAllDgYC7Eb7H7Hozq884hvyYo0vyuwRdRWiv8GJv9zlbaeVciGAK7RtJDHa
         GhLqq8nq3Y7yrE9JNCxXl/y9qPApHq5U3OUzStw9WXZy1BGsGjD3buetiK4xvu0zANm8
         u6s9g3LTJn88StdU7VY2VPSCV0mo2fPxJOniyMjks33Dqe4I+oPiJ3v3D3HDLudyGLl3
         dlWz9hVCcdnuAXAv7zVz7EZVE/Wn0Jhxn2oLiA1EfFfmWJcXnqsXgG0DRwvMkI1aKCEH
         JI2A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=kFIU4Lha;
       spf=pass (google.com: domain of ulrich.weigand@de.ibm.com designates 148.163.156.1 as permitted sender) smtp.mailfrom=Ulrich.Weigand@de.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
Received: from mx0a-001b2d01.pphosted.com (mx0a-001b2d01.pphosted.com. [148.163.156.1])
        by gmr-mx.google.com with ESMTPS id t6si888543ioi.1.2020.08.17.05.13.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 17 Aug 2020 05:13:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of ulrich.weigand@de.ibm.com designates 148.163.156.1 as permitted sender) client-ip=148.163.156.1;
Received: from pps.filterd (m0098396.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.16.0.42/8.16.0.42) with SMTP id 07HC32iC190277
	for <clang-built-linux@googlegroups.com>; Mon, 17 Aug 2020 08:13:58 -0400
Received: from smtp.notes.na.collabserv.com (smtp.notes.na.collabserv.com [192.155.248.74])
	by mx0a-001b2d01.pphosted.com with ESMTP id 32y3ssc78q-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT)
	for <clang-built-linux@googlegroups.com>; Mon, 17 Aug 2020 08:13:58 -0400
Received: from localhost
	by smtp.notes.na.collabserv.com with smtp.notes.na.collabserv.com ESMTP
	for <clang-built-linux@googlegroups.com> from <Ulrich.Weigand@de.ibm.com>;
	Mon, 17 Aug 2020 12:13:57 -0000
Received: from us1a3-smtp04.a3.dal06.isc4sb.com (10.106.154.237)
	by smtp.notes.na.collabserv.com (10.106.227.92) with smtp.notes.na.collabserv.com ESMTP;
	Mon, 17 Aug 2020 12:13:55 -0000
Received: from us1a3-mail201.a3.dal06.isc4sb.com ([10.146.77.216])
          by us1a3-smtp04.a3.dal06.isc4sb.com
          with ESMTP id 2020081712135458-381725 ;
          Mon, 17 Aug 2020 12:13:54 +0000
MIME-Version: 1.0
In-Reply-To: <CAKwvOdn+kdrXp3qn0sbpYzBG+wO0RRhS6UsM3JUMK8My08-uFg@mail.gmail.com>
Subject: Re: buildroot on s390x
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Arnd Bergmann <arnd@arndb.de>,
        clang-built-linux
 <clang-built-linux@googlegroups.com>,
        Vasily Gorbik <gor@linux.ibm.com>,
        Ilya
 Leoshkevich <iii@linux.ibm.com>,
        Guenter Roeck <linux@roeck-us.net>,
        Stefan
 Schulze Frielinghaus <Stefan.Schulze.Frielinghaus@ibm.com>
From: "Ulrich Weigand" <Ulrich.Weigand@de.ibm.com>
Date: Mon, 17 Aug 2020 14:13:47 +0200
References: <OF75D816C6.F1CD6CB2-ONC12585C3.0047C644-C12585C3.00484578@notes.na.collabserv.com>
 <CAKwvOdmmUFVRG53w68B2YaS22MMO1k+2yyaxO7QGqJnqEDKxug@mail.gmail.com>
 <CAKwvOdn+kdrXp3qn0sbpYzBG+wO0RRhS6UsM3JUMK8My08-uFg@mail.gmail.com>
X-KeepSent: C0683E5D:D5BC712E-C12585C7:00430794;
 type=4; name=$KeepSent
X-Mailer: IBM Notes Release 9.0.1FP7 Octobe4, 2013
X-LLNOutbound: False
X-Disclaimed: 52027
X-TNEFEvaluated: 1
Content-type: multipart/alternative; 
	Boundary="0__=4EBB0F54DFD081048f9e8a93df938690918c4EBB0F54DFD08104"
Content-Disposition: inline
x-cbid: 20081712-3165-0000-0000-0000042C1CA3
X-IBM-SpamModules-Scores: BY=0; FL=0; FP=0; FZ=0; HX=0; KW=0; PH=0;
 SC=0.417846; ST=0; TS=0; UL=0; ISC=; MB=0.022269
X-IBM-SpamModules-Versions: BY=3.00013666; HX=3.00000242; KW=3.00000007;
 PH=3.00000004; SC=3.00000295; SDB=6.01421385; UDB=6.00762648; IPR=6.01204056;
 MB=3.00033563; MTD=3.00000008; XFM=3.00000015; UTC=2020-08-17 12:13:56
X-IBM-AV-DETECTION: SAVI=unsuspicious REMOTE=unsuspicious XFE=unused
X-IBM-AV-VERSION: SAVI=2020-08-17 05:29:37 - 6.00011734
x-cbparentid: 20081712-3166-0000-0000-00001B001D42
Message-Id: <OFC0683E5D.D5BC712E-ONC12585C7.00430794-C12585C7.00432E67@notes.na.collabserv.com>
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.235,18.0.687
 definitions=2020-08-17_06:2020-08-17,2020-08-17 signatures=0
X-Proofpoint-Spam-Reason: orgsafe
X-Original-Sender: ulrich.weigand@de.ibm.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ibm.com header.s=pp1 header.b=kFIU4Lha;       spf=pass (google.com:
 domain of ulrich.weigand@de.ibm.com designates 148.163.156.1 as permitted
 sender) smtp.mailfrom=Ulrich.Weigand@de.ibm.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=ibm.com
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


--0__=4EBB0F54DFD081048f9e8a93df938690918c4EBB0F54DFD08104
Content-type: text/plain; charset="UTF-8"

Nick Desaulniers <ndesaulniers@google.com> wrote on 16.08.2020 00:02:13:
> Ah, sorry, I may have spoken too soon.  I manually used BR2_s390=y in
> our config; buildroot ignores that then proceeds to build an image
> based on my host's triple, which is not what I want.  In buildroot, if
> I run `make menuconfig`, then open the first menu for target
> architecture, there is no s390/SystemZ in the list of supported target
> architecture.
>
> Can you or Stefan confirm that the resulting image you were able to
> produce via buildroot was targeting s390/SystemZ and in fact,
> bootable?

Hmm, I think Stefan probably did a native build - correct, Stefan?

Maybe the issue is that native builds work, but cross-builds require
additional setup in the buildroot sources that is missing?

Bye,
Ulrich

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/OFC0683E5D.D5BC712E-ONC12585C7.00430794-C12585C7.00432E67%40notes.na.collabserv.com.

--0__=4EBB0F54DFD081048f9e8a93df938690918c4EBB0F54DFD08104
Content-Transfer-Encoding: quoted-printable
Content-type: text/html; charset="UTF-8"
Content-Disposition: inline

<html><body><p><tt><font size=3D"2">Nick Desaulniers &lt;ndesaulniers@googl=
e.com&gt; wrote on 16.08.2020 00:02:13:<br>&gt; Ah, sorry, I may have spoke=
n too soon. &nbsp;I manually used BR2_s390=3Dy in<br>&gt; our config; build=
root ignores that then proceeds to build an image<br>&gt; based on my host'=
s triple, which is not what I want. &nbsp;In buildroot, if<br>&gt; I run `m=
ake menuconfig`, then open the first menu for target<br>&gt; architecture, =
there is no s390/SystemZ in the list of supported target<br>&gt; architectu=
re.<br>&gt; <br>&gt; Can you or Stefan confirm that the resulting image you=
 were able to<br>&gt; produce via buildroot was targeting s390/SystemZ and =
in fact,<br>&gt; bootable?<br></font></tt><br><tt><font size=3D"2">Hmm, I t=
hink Stefan probably did a native build - correct, Stefan?</font></tt><br><=
br><tt><font size=3D"2">Maybe the issue is that native builds work, but cro=
ss-builds require</font></tt><br><tt><font size=3D"2">additional setup in t=
he buildroot sources that is missing?</font></tt><br><br><tt><font size=3D"=
2">Bye,</font></tt><br><tt><font size=3D"2">Ulrich</font></tt><br><BR>
</body></html>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/OFC0683E5D.D5BC712E-ONC12585C7.00430794-C12585=
C7.00432E67%40notes.na.collabserv.com?utm_medium=3Demail&utm_source=3Dfoote=
r">https://groups.google.com/d/msgid/clang-built-linux/OFC0683E5D.D5BC712E-=
ONC12585C7.00430794-C12585C7.00432E67%40notes.na.collabserv.com</a>.<br />

--0__=4EBB0F54DFD081048f9e8a93df938690918c4EBB0F54DFD08104--

