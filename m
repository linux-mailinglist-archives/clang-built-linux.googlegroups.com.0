Return-Path: <clang-built-linux+bncBC27HSOJ44LBBN6N22BQMGQEKHHBLWQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33c.google.com (mail-wm1-x33c.google.com [IPv6:2a00:1450:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id 02B3835E107
	for <lists+clang-built-linux@lfdr.de>; Tue, 13 Apr 2021 16:12:09 +0200 (CEST)
Received: by mail-wm1-x33c.google.com with SMTP id b20-20020a7bc2540000b029010f7732a35fsf864248wmj.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 13 Apr 2021 07:12:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618323128; cv=pass;
        d=google.com; s=arc-20160816;
        b=oqUCkUzyzMnOO6OjOatzogvjd0AEPD9pCXFniCtuA1TLa8hZpRyDx4wHt+KVl27dX/
         6BxGYndXbrEDvO4wiSa6uywurCiDQDplxEm2rcsXJuyjf5PakSwrnaZjpbY7HcfTtC/N
         epSLmmEPow4+uQS95A/c0UtgDk9wYWSzPEtAPwaD7SxWpgWDxgDp5fwHeZ9lNQGFA4g4
         vHrRwXRxouTBC5fFta+5kIX9c4SD8MvCCixK6um9hVbAviTtVc/XEmJyLN2LoRIQ5+XB
         FPVw+B/zI5PDhFkupwLd9yG1j5+1u5rg54MeThOoU/UMm2C9gxQQXWtStlNmkAZM/66H
         QbiA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:mime-version
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=BcnndgzEN5Z3FGdx4rvqIkoXp9WqHO8nD5h2ee5/7V4=;
        b=S/yZM7WkFsZdgyyHjD+g47Ah33CEHjIiSW2qeilR1uHaB1QB8l532VkJM0CpclIhVQ
         91JGNdv7B0LsYnDyPSYsQ37v0OSF8a9p3CnWAgVG+jw2UCJ6/nZSuapuCb9sAYb8dvMS
         iMe7CpNL31ijW63FIff7emF8bnTQ+P2J2+mu8IfAdjwX0hJ7x1HjnOiU3DUk3zeKcKRq
         tFEDFblWUVMjj0xQBAdvgQ40HLMVybQcLQPr+o8Ub9QV5IaYbkZdz1lPHahxGiSsTPr7
         LpucLGEAcf+WamZngoQIRJbF9oU8krRmkY6AVYC0mejw2/pxQxovd9X3JXalkNX0RIQX
         nqiA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 185.58.85.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=aculab.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:mime-version
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=BcnndgzEN5Z3FGdx4rvqIkoXp9WqHO8nD5h2ee5/7V4=;
        b=gK2CrWf8ViKYwBAXCh4S84Yol8s1/f/ouxgKwCmh1jj1JeV7ufkW416unGDaPJQgxu
         lzjADfDPePKFaUA3d9HvSPCRSFts5Cf7BQ5k8Kqk7/RzhmaDkFgAQ+pEa7hbbVle8C1E
         j6/3D51xQNtfuBY3jw/gMVsG0kbY4BS672+q/9UWFySc8Gsil+cuFKZF17i268UUDVId
         7VepGvvZDk4HdFblMFzhyeVTOMq9k3Tv1+umX3gA6GV5bkoXcdFAwsR3lpJMT1CgfJYy
         qAPAzKZHICEhV9tX7MCmUX9uvJLBbiRCanel9gvbmhN369uOHySp9OU4lm0pNHdGweAq
         PQFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :mime-version:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BcnndgzEN5Z3FGdx4rvqIkoXp9WqHO8nD5h2ee5/7V4=;
        b=qlpbYK8MOhZ0YYj6QwL6NyY9+f9Rwo6414MRoRBIWKxqL1H0lZZDncs4EKKRsnr/9B
         1T917V7y/CsL93C36AoCKY6TPurHlz9PRlhiLy0SJ3UKMGNIqWNaASMwV5XOXSqUIKhX
         B7ajmi9LWPxkU7jUf3kK1lazazRmYX0/i8LxmkaRak4vGFZaF2PGdxZu09+MVPuvonQU
         AU7YrARwLGtg4mWH3jhXmx3zofAkvsVkMrEOpEQHvDAhXUS2LnetPqZCk4aIDTsTbPTZ
         3oB4D+UZnQSWuyp7YknA1C8v12o1VUm9JmaPWsEuzZ1Fa0OzfMecd3FAMnZZ3wWjfzqE
         4yPg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533dveURifV9uMl2ZtGuOqlwcT8lyvfhURsBmLGXXhXobMoiqGil
	uRxq+uigOOlbXGl2y2fuNiE=
X-Google-Smtp-Source: ABdhPJyitXzSXcSxR3Jf2yzED0i6QMXvEB1LHuywvnPCaoSLbfTUCUHDlX/sYNWMGlGFYXwWUL3DiA==
X-Received: by 2002:a5d:65ca:: with SMTP id e10mr36781631wrw.331.1618323128768;
        Tue, 13 Apr 2021 07:12:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:600c:3544:: with SMTP id i4ls1456860wmq.2.canary-gmail;
 Tue, 13 Apr 2021 07:12:06 -0700 (PDT)
X-Received: by 2002:a05:600c:4fd0:: with SMTP id o16mr193024wmq.123.1618323126662;
        Tue, 13 Apr 2021 07:12:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618323126; cv=none;
        d=google.com; s=arc-20160816;
        b=YSFJAnmF+C87UC9/YJUdlTnrBnUpRPMI3Sg9fMrbLVCDC1bYR1scRkUj630p28I/tW
         LLCG+vE1qPc5HBNhwpYiKGvtYo71zV9t3G87rVGYWL2proZGJgqc3BFwFGilO2tr2fyv
         6LqaZumzfI+iS7rbGiue2W93i6MaGoqM8FGNt4yW9VFLCbRRxFElmtsy/KwE7CcpNZSu
         LA/T+IOKtEvnTTQrdrAguE6RMlFbe+jRSsefnPhzHztncL1ri15k7iYcqGsgNhgzVHTM
         t3Y84QZMZ4wAGXWDdPX2dHDO1YopftYniZfBpqIXPxODmJsf/XdTnFCdbmf6YMJo3DTy
         vHYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:mime-version
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from;
        bh=D4sBmwVO7otgtNxf6fNIK7rtA5B0OVwtysqR1tGUpbA=;
        b=DV7yZX2nnC2pKjTU4MF5Sz+3xHpgnBVRXo+Z5909AbuVnTWZWngBjrB+KPSw0VQYR3
         tRASmygDpGU/Yp8Ke2QQ6Md8x2FAGVDazSzxk/rMNsJKiAkvzFhfijh/qQHksAYvQBGr
         1G1kpILumsd7zTL4NX8u2X5r8IRRR7hPv41JzpW/v6gLu6+DKqR3Huep2+8pXfrocU6u
         0fr6hEpa0h2TlWNavmUPptQt30WJVp23m1mYatMBhJsKOZAG0KeLhovX4Aw/PAYoUo5h
         MZYusKB5S8g2aNOFFY9i3/K2ktj2JIQ9xgFIhCD0JiiRPsFCJ1dYv3tnO4XYloubbAL4
         Y0Xw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 185.58.85.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=aculab.com
Received: from eu-smtp-delivery-151.mimecast.com (eu-smtp-delivery-151.mimecast.com. [185.58.85.151])
        by gmr-mx.google.com with ESMTPS id t124si146868wmb.3.2021.04.13.07.12.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Apr 2021 07:12:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of david.laight@aculab.com designates 185.58.85.151 as permitted sender) client-ip=185.58.85.151;
Received: from AcuMS.aculab.com (156.67.243.121 [156.67.243.121]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-278-AvhJ3iXtMyqzl2W9G4PAMw-1; Tue, 13 Apr 2021 15:12:05 +0100
X-MC-Unique: AvhJ3iXtMyqzl2W9G4PAMw-1
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:994c:f5c2:35d6:9b65) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:994c:f5c2:35d6:9b65) with Microsoft SMTP
 Server (TLS) id 15.0.1497.2; Tue, 13 Apr 2021 15:12:04 +0100
Received: from AcuMS.Aculab.com ([fe80::994c:f5c2:35d6:9b65]) by
 AcuMS.aculab.com ([fe80::994c:f5c2:35d6:9b65%12]) with mapi id
 15.00.1497.012; Tue, 13 Apr 2021 15:12:03 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: 'Arnd Bergmann' <arnd@arndb.de>
CC: Niklas Schnelle <schnelle@linux.ibm.com>, Nathan Chancellor
	<nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>, linux-arch
	<linux-arch@vger.kernel.org>, Linux Kernel Mailing List
	<linux-kernel@vger.kernel.org>, linux-s390 <linux-s390@vger.kernel.org>, "Guo
 Ren" <guoren@kernel.org>
Subject: RE: [PATCH] asm-generic/io.h: Silence -Wnull-pointer-arithmetic
 warning on PCI_IOBASE
Thread-Topic: [PATCH] asm-generic/io.h: Silence -Wnull-pointer-arithmetic
 warning on PCI_IOBASE
Thread-Index: AQHXMGSVFmL3q8InjEiRDqC8qAyY5Kqyacdg///5xgCAABWwYA==
Date: Tue, 13 Apr 2021 14:12:03 +0000
Message-ID: <40d4114fa34043d0841b81d09457c415@AcuMS.aculab.com>
References: <20210413115439.1011560-1-schnelle@linux.ibm.com>
 <CAK8P3a1WTZOYpJ2TSjnbytQJWgtfwkQ8bXXdnqCnOn6ugJqN_w@mail.gmail.com>
 <84ab737edbe13d390373850bf317920b3a486b87.camel@linux.ibm.com>
 <CAK8P3a2NR2nhEffFQJdMq2Do_g2ji-7p3+iWyzw+aXD6gov05w@mail.gmail.com>
 <11ead5c2c73c42cbbeef32966bc7e5c2@AcuMS.aculab.com>
 <CAK8P3a3PK9zyeP4ymELtc2ZYnymECoACiigw9Za+pvSJpCk5=g@mail.gmail.com>
In-Reply-To: <CAK8P3a3PK9zyeP4ymELtc2ZYnymECoACiigw9Za+pvSJpCk5=g@mail.gmail.com>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.202.205.107]
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: aculab.com
Content-Language: en-US
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: david.laight@aculab.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of david.laight@aculab.com designates 185.58.85.151 as
 permitted sender) smtp.mailfrom=david.laight@aculab.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=aculab.com
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

From: Arnd Bergmann
> Sent: 13 April 2021 14:40
> 
> On Tue, Apr 13, 2021 at 3:06 PM David Laight <David.Laight@aculab.com> wrote:
> >
> > From: Arnd Bergmann
> > > Sent: 13 April 2021 13:58
> > ...
> > > The remaining ones (csky, m68k, sparc32) need to be inspected
> > > manually to see if they currently support PCI I/O space but in
> > > fact use address zero as the base (with large resources) or they
> > > should also turn the operations into a NOP.
> >
> > I'd expect sparc32 to use an ASI to access PCI IO space.
> > I can't quite remember whether IO space was supported at all.
> 
> I see this bit in arch/sparc/kernel/leon_pci.c
> 
>  * PCI Memory and Prefetchable Memory is direct-mapped. However I/O Space is
>  * accessed through a Window which is translated to low 64KB in PCI space, the
>  * first 4KB is not used so 60KB is available.
> ...
>         pci_add_resource_offset(&resources, &info->io_space,
>                                 info->io_space.start - 0x1000);
> 
> which means that there is I/O space, which gets accessed through whichever
> method readb() uses. Having the offset equal to the resource means that
> the '(void *)0' start is correct.

It must have been the VMEbus (and maybe sBus) sparc that used an ASI.

I do remember issues with Solaris of some PCI cards not liking
being assigned a BAR address of zero.
That may be why the low 4k IO space isn't assigned here.
(I've never run Linux on sparc, just SVR4 and Solaris.)

I guess setting PCI_IOBASE to zero is safer when you can't trust
drivers not to use inb() instead of readb().
Or whatever io_read() ends up being.

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/40d4114fa34043d0841b81d09457c415%40AcuMS.aculab.com.
