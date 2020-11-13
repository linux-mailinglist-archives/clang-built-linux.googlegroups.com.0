Return-Path: <clang-built-linux+bncBCXKBPVPXAFRBEP2W76QKGQE5CQSX6I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x438.google.com (mail-wr1-x438.google.com [IPv6:2a00:1450:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 429132B14B0
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Nov 2020 04:27:14 +0100 (CET)
Received: by mail-wr1-x438.google.com with SMTP id k1sf3100830wrg.12
        for <lists+clang-built-linux@lfdr.de>; Thu, 12 Nov 2020 19:27:14 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605238034; cv=pass;
        d=google.com; s=arc-20160816;
        b=zJBj1o4eJbC7DilDSPgSyLHZnQi2sGl8+f4oyedlhceVnyj7vde90tRTLREWTpm2HZ
         1zH5NwjvTgn17yVg3fAcxidvFzCzAmJZObSb3YAaAcfBBRhx0Iu80PiNHUWwI202O1GO
         RLdy5TBgXazA12UXIt/JfcOABIoRH8SjVAtn7TcXTIwBVkvrtjlSiqpzVgFM0KJT1QOl
         N3oDjpxOxN5SpTCv4eDpT3MidlZ+FgobdMbkm/4E38AoUJaKLdH6PKvZ0R28yYHNcbqv
         nAsm78y2EOLQE+DTjJiXEAEksK23tZ2WpvQDQdLLe0vbp23Tqrud3avdpn/sY32LibBT
         o7Cg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:sender:dkim-signature;
        bh=ypxqOKDVuGiVA+SlKINaMi5ZtKBRa+FveKlQidbjQyE=;
        b=Vid+yLfN7WfX9L/vLixsdqXfbroG/rl1zSjOgmWrt3BFZV2kCNp3LRZvgDxcZsLt+0
         UBEtIgBRhGYtddXtPbBUWIBn9a4ejTgEOb4bL3INtXOzoMZ5ClkPlELeoUTrs8mVS1FY
         y3mEwQuy7WMCNhU3f4vKh6mXal4qWFOIOPsQISg9rNylKo6MSmlmXbtvmAPpLTO+Z88U
         jOyKGEg5iuPk2/1Tq5cMHILpPBiWcuAL+mPHACSOHX6iKcwX4Dti9mRXmtEtclS+YdvF
         Zs857fZmi+XFQMs11MOdgwp0zAnHJ5XRLfsz2BFoxd6T+wC14MYve9pHYzii/6B1OtIg
         3fjA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of macro@linux-mips.org designates 148.251.95.138 as permitted sender) smtp.mailfrom=macro@linux-mips.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:in-reply-to:message-id:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ypxqOKDVuGiVA+SlKINaMi5ZtKBRa+FveKlQidbjQyE=;
        b=iOrRer7j5uVP5aOXlfPOGUdeF17Raw4VcQMDXCWrsUvohwC1hkBPy2UxgILCUav12D
         N1agKVt6B1YmE2Ci1TrYrU4MSGlCVwDjElqehwpmS2cUgA3K6pUT6kO1NgXQimiIRR4J
         MqxHzFk1rRStY8ZliD/edDFYs67iuGZwvZ+RuQbE0z6RpRTy+Mj3r/cPqGDz8j1aaAtK
         cyZTJtlCimtuDn/QkhQZv+bnmSyP2KF87eQIMMjyZNdGYQanYGbvafqlcIuvtB4B0b1L
         GnxXqfy7yqprvaLjXEkTBhAIwU1fx8GpGr0GvDOxxMH+dF8xokLHE14tALWJPASj87Px
         wweA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:in-reply-to
         :message-id:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ypxqOKDVuGiVA+SlKINaMi5ZtKBRa+FveKlQidbjQyE=;
        b=Jc5BpPdtR6PV+lfLi8323pHkdUk1sjRAnAdaO60RXM6URZAkX3PVJWhh9kPe8n7ZB9
         DDRNTAX/F7BRuoE63XqPSeKeMj0n9jig8ny4cuvT57rtd5OLs5Z7kxLSU5Bk/4/DsM1l
         4MqkximHoKj3AfNr0ov++MontWaqPOEVEfS/4et4a4n/VmNNJcjeeNkITekpNGqimK5Z
         1UI5AvaJ6VMH8ERBOGKr2KutgBPnSs0zrubrjiqzdT5jXT6r8YHQmgaIrMYiOA2aOuxT
         D2ePgfaocmS6+TT/89/0BvENzHZW7cM7AvV+kUCKV6jf5vUZLPwN0Hdu8ZTxH2ENyGpa
         2Sqw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5313CLnrcHZvqCeQnUuzj8NPQIuRPNdKPkVckikGRw6ki7uiU6yR
	Awr895Kyt/IShZaMZ4UVYDU=
X-Google-Smtp-Source: ABdhPJxA49KdnAfCr9zb/VxluQ0OUcniZ8tbQMo2GJGXHsXNe49rwqoaJQPZzJe1z00r6tbOyXXPEA==
X-Received: by 2002:adf:e5c4:: with SMTP id a4mr546517wrn.56.1605238033996;
        Thu, 12 Nov 2020 19:27:13 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:408a:: with SMTP id n132ls2393509wma.2.gmail; Thu, 12
 Nov 2020 19:27:13 -0800 (PST)
X-Received: by 2002:a05:600c:214a:: with SMTP id v10mr293828wml.20.1605238033117;
        Thu, 12 Nov 2020 19:27:13 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605238033; cv=none;
        d=google.com; s=arc-20160816;
        b=c+ij8g1OLNdKAz4oYLsAsxETdWyIOQzQ6kpNft67xcPxSSSCi167ofdOfPxqn4ol/l
         hVwY0IxMEXXOKpqfX4AVCRG5icQ3e1J8+eOLF2p3reU0w8G2Hoc7OZk1QcCVRYlavQhq
         ONBlov87gqK/peI4eVM+vOGP9dmPQjfZfdquPjynkQ0agrwR/aEy+Vxd2kwNlQdBFe04
         b3cEGUboAy1J1Pmh1Sl+VgrO/XLkig7/KXNSEs1///rpuWa+6WMvefDAoYwLRwmSn3Kv
         4ZhZSc5xtEursqCq/6ME6/PbwueR5rYQ3d57McozW7fHlbri11pjnYDZ5G7zgvpZOfOs
         9RMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date;
        bh=l5EqCu8W7PGf8I8T+SyqDNAoUc+uIHYeW05CoYF2PFI=;
        b=0LO0aeKTkqOnUFjO4Pkqv2ntqN5giPx41U7Xwo9Lz7AvTyWxLAQzqyERytoO+U/m70
         HKvTUp0axszpJJP+0M4Ak8XL6wdAmsPofPPQ3jqZp96PKt/HVmrSHOUQVml5ALlQKnut
         M/V134hHd/RRd0VfP2+fslaWd6KEqVWa6OfUr1UgubHVFMtWfNwnm8BIBDjCmz/lol3e
         +51FIWp1C9o/qZ2XoE1VXtukJiyT8iL2/Kgxn9B0ZAubNasqR1YtJMxq2LsViQ+UHw5s
         jz+/xP1krMr8EKj0feboRuQ9EqjP3tUVIBlDIVXBUZht+BcT6PIgI2AqsDDZoPm2IReR
         G35g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of macro@linux-mips.org designates 148.251.95.138 as permitted sender) smtp.mailfrom=macro@linux-mips.org
Received: from cvs.linux-mips.org (eddie.linux-mips.org. [148.251.95.138])
        by gmr-mx.google.com with ESMTP id r21si213333wra.4.2020.11.12.19.27.13
        for <clang-built-linux@googlegroups.com>;
        Thu, 12 Nov 2020 19:27:13 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of macro@linux-mips.org designates 148.251.95.138 as permitted sender) client-ip=148.251.95.138;
Received: from localhost.localdomain ([127.0.0.1]:52474 "EHLO localhost"
        rhost-flags-OK-OK-OK-OK) by eddie.linux-mips.org with ESMTP
        id S23990394AbgKMD1Kg70XQ (ORCPT
        <rfc822;clang-built-linux@googlegroups.com>);
        Fri, 13 Nov 2020 04:27:10 +0100
Date: Fri, 13 Nov 2020 03:27:10 +0000 (GMT)
From: "Maciej W. Rozycki" <macro@linux-mips.org>
To: Nick Desaulniers <ndesaulniers@google.com>
cc: Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Serge Semin <Sergey.Semin@baikalelectronics.ru>,
        Alexey Malahov <Alexey.Malahov@baikalelectronics.ru>,
        linux-mips@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH] MIPS: remove GCC < 4.9 support
In-Reply-To: <CAKwvOdnqcKGqSAS0BmTP70M-5e+gOvzRefuL9rBNGvm+jpR==Q@mail.gmail.com>
Message-ID: <alpine.LFD.2.21.2011130322040.4064799@eddie.linux-mips.org>
References: <20201111032105.2346303-1-ndesaulniers@google.com> <20201111230314.GB19275@alpha.franken.de> <alpine.LFD.2.21.2011130017330.4064799@eddie.linux-mips.org> <CAKwvOdnqcKGqSAS0BmTP70M-5e+gOvzRefuL9rBNGvm+jpR==Q@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: macro@linux-mips.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of macro@linux-mips.org designates
 148.251.95.138 as permitted sender) smtp.mailfrom=macro@linux-mips.org
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

On Thu, 12 Nov 2020, Nick Desaulniers wrote:

> >  It probably makes sense to get rid of GCC_OFF_SMALL_ASM altogether, as
> > this syntactical indirection brings us nothing at this point and only
> > obfuscates sources.
> 
> Sure, that sounds good. Send a patch!

 Well, I have felt satisfied enough with making the original patch, commit 
b0984c43702f ("MIPS: Fix microMIPS LL/SC immediate offsets"), so I'll give 
someone else the chance to take the pride of undoing it now, now that it's 
not needed anymore.

  Maciej

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/alpine.LFD.2.21.2011130322040.4064799%40eddie.linux-mips.org.
