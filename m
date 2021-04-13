Return-Path: <clang-built-linux+bncBCV4DH5YZYMBBRVB22BQMGQEUOIBLII@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3d.google.com (mail-vk1-xa3d.google.com [IPv6:2607:f8b0:4864:20::a3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 0CD3735DF05
	for <lists+clang-built-linux@lfdr.de>; Tue, 13 Apr 2021 14:38:32 +0200 (CEST)
Received: by mail-vk1-xa3d.google.com with SMTP id 131sf3616646vkz.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 13 Apr 2021 05:38:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618317511; cv=pass;
        d=google.com; s=arc-20160816;
        b=SsqloosIQMrw6HXrdL040lX2dT9NR5MolbOzMRRLvy1Rqyeh/JiwUWcu6UeOmCcDzT
         dQ5yUZixxPSUn071XomFzqyd5fqZFMn6gEYDWOwuhF1b3zoRE12MN37KCZYOZ10njiLF
         jGWiiiAoN4GgZCXoVyj7Ej4Xr8cfmIplHDws1jm8IyX8ywHavPP6FL5rSVtXbNOQP6Nj
         Hqwk9JCScY9AcIZV/+HPikUa52Z32ylDUggPGGZHpCGgYWcIROu5/bDFpdL0XqUqcL1S
         +wy4FtFL/EvQYZpWebhxGJCT9MuHnhLN/oG7EEO5UpCbW/ktghXRluWIpm1VYqmDjTpd
         99ig==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :date:cc:to:from:subject:message-id:sender:dkim-signature;
        bh=LV893gXvNIX7BMrwWH+oPZy7UTPubsk1YNyT2brSJLY=;
        b=wx2yocEPW08NNCdtX6ufxMLZAioA3mAK7bmS6p4w589fP6eMkA9eZIkG9OTCBhxsyS
         FLxT5Y7tde903KPY83ajLyZIpI4pjNMnus1gYqsZiBx2MTKvVL3g5mwdz8SyrMHOy9hT
         YQwFJrUZvs/KuL7JznAUt8wevUzyuS0FXeC5Rl00AWEYzDRKREhFpGqiFBEF8ehQctSG
         AD+8pRubEyuwDm87snEok7qy5cpD+1C5luYKv2U1CN5hEyQ+GGM15qrdrSk2zzCB3gSA
         j6ZSdCfsMaDzcIZqt+TyURiicHirSQ6jWzpw6H7WkGebGR3GEI1aLCFZPE0ukIWSwXY+
         qbSQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=PiCAvy7v;
       spf=pass (google.com: domain of schnelle@linux.ibm.com designates 148.163.158.5 as permitted sender) smtp.mailfrom=schnelle@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LV893gXvNIX7BMrwWH+oPZy7UTPubsk1YNyT2brSJLY=;
        b=KR4r8xAiT6qoiSHS2lV+kot8z3cNk0SkkSdhBnNZ5He0uzR1tPhGYf/GbrJ74JaHut
         xeAj7JpKdc6glybQurmYGHfl0XaZWAkQoM5UC57iHF7ajDizGBE//6Tt7ehDxY1Es9Si
         loxSlt6gDCTDwnvMfZBrpYUrodagmKJo43XOZi0EqeXAPlSiy4nf9/TvRGUhwOSlhJgb
         +SajYJ8P24sOp5qAIwhH9YVvTmi8/GxwkDB3OJV7bRke7wUy6obXptKsPwBUUVoGchb8
         uED87078+II/56g/eibSm02O7wnFT6kalfEbWNF9e3wbhIZLbdKEmP85hWLoZueoQ76O
         HnBw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LV893gXvNIX7BMrwWH+oPZy7UTPubsk1YNyT2brSJLY=;
        b=IfRfot+JngxWeLBQ8TSK3ha85jy4IiAWU26rB/pFTW8kAcuhki2NaUI0KYUaJOk9Sf
         nk1uwR4IoClF4Leg8LN1maUCFoVr+lXne+YD7ETLBqZgzI4gYSaqngqRdGAcSQ62Z5Og
         PJKMbdPcf1q+DKm8+KlwtpSlcIzJnIuBCg1fScTlHq7kan53EUr5SoOQI+uaVBMuCpGE
         Mc8xwFF5/uW1fVWio2jiixIxhwTsjun7+lHCyaEtY1Uls/lpb3M1RvUewFToW7RMaQ2S
         sHyMd/OjvbA/zHnjJ0a/JL4EnL+34Bc4Z7D1shH/xZl3jcvMB9zuQwunaQtLD25GMKcl
         Ao1A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531EG7GGXJ4/OTkXOmCc3+drhHUVe5ipJ/JzLQGwSY4hzTl6cU23
	uC33yjcWHFXjlAKjsQ21j70=
X-Google-Smtp-Source: ABdhPJzsTm+aE4n+VmfFfT7YNEQRrkuHxEYB0Ar0IM18NWhKewCo6FoyLZedSP8d53utCNcW1sSvMg==
X-Received: by 2002:a9f:3e97:: with SMTP id x23mr18712131uai.80.1618317510948;
        Tue, 13 Apr 2021 05:38:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:2702:: with SMTP id n2ls3087209vsn.2.gmail; Tue, 13 Apr
 2021 05:38:30 -0700 (PDT)
X-Received: by 2002:a05:6102:363:: with SMTP id f3mr23811639vsa.13.1618317510356;
        Tue, 13 Apr 2021 05:38:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618317510; cv=none;
        d=google.com; s=arc-20160816;
        b=Evt6ygegfUnfbS5+HD4ZAj5KEe6rHqCV86eO58uR0f/ay+M+UCrZgaSyJ3CAXqhlC3
         pK7nOqCqvDM4R/ErbJ5l5K4dHm61osfAoiukBqnK59crFmVyvs7hSPi2q/5JhBqQdsnl
         EqTJ/3TUfN2NQTs6CsEYfC4EWJWePw04PxP6O7Dj4dvcfXWlkJIeQBiqKI1ggOXpuBeX
         3jSiUUnVcTlLYAc+cV0kAI76hGeBkKxFuVez3o7Ve4gZJ++r77yQE/IwQvUAaXw8OEYQ
         uqJcFhOJmu66LRhAPExnXn8UCcCHlLBRR1AtyfGFBhDo1uMfNn3gmStaHk9Jjq7eqYtU
         cQXw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to:date
         :cc:to:from:subject:message-id:dkim-signature;
        bh=Pw9M3G9Sv8NSb3H3DbqXrJ2HXCzyntpYRr6tMbE39FM=;
        b=tPNf852xkoODMZXKfMEdgyVBjt5eRntukexVT2TrKGtiz7sJWgwcsSC9vQWUHbRINN
         Vy+v57h5nAfG0dqIUp3uONycsBhxr8+0JuLq8ZVv1SIJXq7KNVaNUraJd5DVB8r9q/p4
         hN9O/G52v44VaaoV+osEpNNEqbwcR37GDVb1KLP4/9FC0CxIUotKAMxf8GSxRiek4vHU
         5Vkx2Ck2WH/MKvlBtI+MmJQrDqqC7up31LYP1Pld1JjE9jnhxSo0XZh4hUOJ4GDnYQR6
         pXRrT+rpL+FGI5288CGbHFJGERKJwsKLd9x0RQ1D7r2kPBBtixZNWbm1LoDafVWyd+ie
         pN+g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ibm.com header.s=pp1 header.b=PiCAvy7v;
       spf=pass (google.com: domain of schnelle@linux.ibm.com designates 148.163.158.5 as permitted sender) smtp.mailfrom=schnelle@linux.ibm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=ibm.com
Received: from mx0b-001b2d01.pphosted.com (mx0b-001b2d01.pphosted.com. [148.163.158.5])
        by gmr-mx.google.com with ESMTPS id u142si935850vkb.3.2021.04.13.05.38.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Apr 2021 05:38:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of schnelle@linux.ibm.com designates 148.163.158.5 as permitted sender) client-ip=148.163.158.5;
Received: from pps.filterd (m0098417.ppops.net [127.0.0.1])
	by mx0a-001b2d01.pphosted.com (8.16.0.43/8.16.0.43) with SMTP id 13DCXw5h105879;
	Tue, 13 Apr 2021 08:38:28 -0400
Received: from pps.reinject (localhost [127.0.0.1])
	by mx0a-001b2d01.pphosted.com with ESMTP id 37wb4f8pcg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 13 Apr 2021 08:38:28 -0400
Received: from m0098417.ppops.net (m0098417.ppops.net [127.0.0.1])
	by pps.reinject (8.16.0.43/8.16.0.43) with SMTP id 13DCY4BH106532;
	Tue, 13 Apr 2021 08:38:27 -0400
Received: from ppma03ams.nl.ibm.com (62.31.33a9.ip4.static.sl-reverse.com [169.51.49.98])
	by mx0a-001b2d01.pphosted.com with ESMTP id 37wb4f8pbw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 13 Apr 2021 08:38:27 -0400
Received: from pps.filterd (ppma03ams.nl.ibm.com [127.0.0.1])
	by ppma03ams.nl.ibm.com (8.16.0.43/8.16.0.43) with SMTP id 13DCX7wF004270;
	Tue, 13 Apr 2021 12:38:26 GMT
Received: from b06avi18626390.portsmouth.uk.ibm.com (b06avi18626390.portsmouth.uk.ibm.com [9.149.26.192])
	by ppma03ams.nl.ibm.com with ESMTP id 37u3n8ap0h-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 13 Apr 2021 12:38:25 +0000
Received: from d06av26.portsmouth.uk.ibm.com (d06av26.portsmouth.uk.ibm.com [9.149.105.62])
	by b06avi18626390.portsmouth.uk.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id 13DCc10827459898
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=OK);
	Tue, 13 Apr 2021 12:38:01 GMT
Received: from d06av26.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id AF038AE04D;
	Tue, 13 Apr 2021 12:38:23 +0000 (GMT)
Received: from d06av26.portsmouth.uk.ibm.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 4EE22AE045;
	Tue, 13 Apr 2021 12:38:23 +0000 (GMT)
Received: from sig-9-145-159-22.de.ibm.com (unknown [9.145.159.22])
	by d06av26.portsmouth.uk.ibm.com (Postfix) with ESMTP;
	Tue, 13 Apr 2021 12:38:23 +0000 (GMT)
Message-ID: <84ab737edbe13d390373850bf317920b3a486b87.camel@linux.ibm.com>
Subject: Re: [PATCH] asm-generic/io.h: Silence -Wnull-pointer-arithmetic
 warning on PCI_IOBASE
From: Niklas Schnelle <schnelle@linux.ibm.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: Nathan Chancellor <nathan@kernel.org>,
        Nick Desaulniers
 <ndesaulniers@google.com>,
        clang-built-linux
 <clang-built-linux@googlegroups.com>,
        linux-arch
 <linux-arch@vger.kernel.org>,
        Linux Kernel Mailing List
 <linux-kernel@vger.kernel.org>,
        linux-s390 <linux-s390@vger.kernel.org>
Date: Tue, 13 Apr 2021 14:38:22 +0200
In-Reply-To: <CAK8P3a1WTZOYpJ2TSjnbytQJWgtfwkQ8bXXdnqCnOn6ugJqN_w@mail.gmail.com>
References: <20210413115439.1011560-1-schnelle@linux.ibm.com>
	 <CAK8P3a1WTZOYpJ2TSjnbytQJWgtfwkQ8bXXdnqCnOn6ugJqN_w@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.28.5 (3.28.5-14.el8)
Mime-Version: 1.0
X-TM-AS-GCONF: 00
X-Proofpoint-ORIG-GUID: EE0ZgieKHyKBFyYO1857tiAUAblL3cm0
X-Proofpoint-GUID: c3jl4UEZNnDTMwPWeaTHrOxhamOfk3ta
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10434:6.0.391,18.0.761
 definitions=2021-04-13_07:2021-04-13,2021-04-13 signatures=0
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 suspectscore=0 mlxscore=0 impostorscore=0 bulkscore=0 phishscore=0
 adultscore=0 spamscore=0 malwarescore=0 lowpriorityscore=0 clxscore=1015
 mlxlogscore=999 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2104060000 definitions=main-2104130088
X-Original-Sender: schnelle@linux.ibm.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ibm.com header.s=pp1 header.b=PiCAvy7v;       spf=pass (google.com:
 domain of schnelle@linux.ibm.com designates 148.163.158.5 as permitted
 sender) smtp.mailfrom=schnelle@linux.ibm.com;       dmarc=pass (p=NONE
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

On Tue, 2021-04-13 at 14:26 +0200, Arnd Bergmann wrote:
> On Tue, Apr 13, 2021 at 1:54 PM Niklas Schnelle <schnelle@linux.ibm.com> wrote:
> > When PCI_IOBASE is not defined, it is set to 0 such that it is ignored
> > in calls to the readX/writeX primitives. While mathematically obvious
> > this triggers clang's -Wnull-pointer-arithmetic warning.
> 
> Indeed, this is an annoying warning.
> 
> > An additional complication is that PCI_IOBASE is explicitly typed as
> > "void __iomem *" which causes the type conversion that converts the
> > "unsigned long" port/addr parameters to the appropriate pointer type.
> > As non pointer types are used by drivers at the callsite since these are
> > dealing with I/O port numbers, changing the parameter type would cause
> > further warnings in drivers. Instead use "uintptr_t" for PCI_IOBASE
> > 0 and explicitly cast to "void __iomem *" when calling readX/writeX.
> > 
> > Signed-off-by: Niklas Schnelle <schnelle@linux.ibm.com>
> > ---
> >  include/asm-generic/io.h | 26 +++++++++++++-------------
> >  1 file changed, 13 insertions(+), 13 deletions(-)
> > 
> > diff --git a/include/asm-generic/io.h b/include/asm-generic/io.h
> > index c6af40ce03be..8eb00bdef7ad 100644
> > --- a/include/asm-generic/io.h
> > +++ b/include/asm-generic/io.h
> > @@ -441,7 +441,7 @@ static inline void writesq(volatile void __iomem *addr, const void *buffer,
> >  #endif /* CONFIG_64BIT */
> > 
> >  #ifndef PCI_IOBASE
> > -#define PCI_IOBASE ((void __iomem *)0)
> > +#define PCI_IOBASE ((uintptr_t)0)
> >  #endif
> > 
> >  #ifndef IO_SPACE_LIMIT
> 
> Your patch looks wrong in the way it changes the type of one of the definitions,
> but not the type of any of the architecture specific ones. It's also
> awkward since
> 'void __iomem *' is really the correct type, while 'uintptr_t' is not!

Yeah I see your point. The way I justified it for myself is that the
above define really only serves to ignore the PCI_IOBASE and the
explicit cast in the function makes the actual type more clear since
the parameters have the "wrong" type too. I do agree that this still
leaves things somewhat awkward.

> 
> I think the real underlying problem is that '0' is a particularly bad
> default value,
> we should not have used this one in asm-generic, or maybe have left it as
> mandatory to be defined by an architecture to a sane value. Note that
> architectures that don't actually support I/O ports will cause a NULL
> pointer dereference when loading a legacy driver, which is exactly what clang
> is warning about here. Architectures that to support I/O ports in PCI typically
> map them at a fixed location in the virtual address space and should put that
> location here, rather than adding the pointer value to the port resources.
> 
> What we might do instead here would be move the definition into those
> architectures that actually define the base to be at address zero, with a
> comment explaining why this is a bad location, and then changing the
> inb/outb style helpers to either an empty function or a WARN_ONCE().
> 
> On which architectures do you see the problem? How is the I/O port
> actually mapped there?
> 
>       Arnd

I'm seeing this on s390 which indeed has no I/O port support at all.
I'm not sure how many others there are but I feel like us having to
define these functions as empty is also kind of awkward. Maybe we could
put them into the asm-generic/io.h for the case that PCI_IOBASE is not
defined? Then at least every platform not supporting I/O ports would
share them.


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/84ab737edbe13d390373850bf317920b3a486b87.camel%40linux.ibm.com.
