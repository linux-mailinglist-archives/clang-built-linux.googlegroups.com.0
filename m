Return-Path: <clang-built-linux+bncBD63HSEZTUIBBN7XRP5QKGQE5INBAVA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb39.google.com (mail-yb1-xb39.google.com [IPv6:2607:f8b0:4864:20::b39])
	by mail.lfdr.de (Postfix) with ESMTPS id 3FAA726D359
	for <lists+clang-built-linux@lfdr.de>; Thu, 17 Sep 2020 08:01:28 +0200 (CEST)
Received: by mail-yb1-xb39.google.com with SMTP id r9sf1198899ybd.20
        for <lists+clang-built-linux@lfdr.de>; Wed, 16 Sep 2020 23:01:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600322487; cv=pass;
        d=google.com; s=arc-20160816;
        b=tVQ+wOIlcekiUcEjw6+plP9u/MG6Njbv8pjfzLSuLy8HfQd09ZrANQVzWSRdGE3iXX
         Uvm7fGl9WY5yHoCkefgGofWPt8CYi8s1ekvpjoxUdRxRT1qKRoEn+4iQEb7Q/EjfeSuT
         nbLuC1SLUhwdcPKyEUYU0jO9xSJ5TfvyCKIREkwA6iR51eRE61cTXYmZvWZ2sy/0P+D6
         h6kJNVtT1/MVpq7Ph+Y+gsF4M44i3kFQ9JRu62x34X8Zm+Q2YNqcJSxfggl2krhoJtN9
         uqHe3AkbeiMtQnLKW8F8ZEcT+tjqRXTajh2kP5jMH8jgoluzKmYHI04CvH8Tdqg+NNdQ
         tO0w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=gfyJ7Klr5kAqq7A/hxa8mMFhiHft/HHof3LY4XHCCmg=;
        b=F8FQhDXwA97tRj7rHNvAt5hWAeYhJSHGpzMymZsbxzHgpGubDEwQ8UUA6OHoNPG+Ze
         FRr10uX2jHuVTVGTwh/ScxzG7qWtPq/0acOy1LYi6mbDRQPaR2NffuWMILxJUp3vdZW/
         mW5D5krInMpWK/zjCEpoCXxBsZlOG7PYptS15Qr7r7D3Rnd/UzZkN0I7Z9Qp+BAIomO8
         X/EeYWZPP9eTcAhJrNxK0lt33E39umF+u+DCv5HWEpKdF/PKiS+rq5yEM2uAk10QyYag
         k9EnKf+v4WGvOnZIaP7huTjanxOawmd6FcMv0p8bgzsBU6ZkQcg0Sf8ZbTP8ZxRbx2q9
         ds6A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=XSLn6+0V;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gfyJ7Klr5kAqq7A/hxa8mMFhiHft/HHof3LY4XHCCmg=;
        b=WJoIVipRkYNGE761OvetRirydrbD9yq7yphP4dmwVhz9zCtJvpMC7i0rgzrtERVE9D
         U007uWqllL20+64jA/B7c2buX8qYTGrd7z/ARu1WpqbZgSLtMKg6rdvHiniAjdwea5nt
         Buf3Ql8oSFBhzz6yiNiZEeWa27D+7gf0rML0b3MBVGzUHvO4w3LH7X84VNfEf3xNQOMH
         D6ip2uGT6ql+vo13YxlNLQQWVIkUReuWcfbqOGEmHqcsxbNrGQSCflFBnbOCicYHmMpQ
         qIGG60Vj4wNDZlBFpHhwM85z+iYXKF3xifnkwS4KZL1KYHkuvpeovTmClokggaV/6noy
         GZyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=gfyJ7Klr5kAqq7A/hxa8mMFhiHft/HHof3LY4XHCCmg=;
        b=uIOBsJWQCl1Ni7waiEBOt1HrLfgz1vsFGiB+ClmDS07auSZqYHcbV1o9FPirYxCL2y
         1gJ12nAZhiGJKACk54aX5oWHGokon7znLAnXlcuRoZajZRDDbJv+h7VPQWVO4Gxf5Qwq
         1+4rDUOT14XgpNjcW+8qOlB2Pa4wlox3LhZcip9kh7HCIl1fhxHhRtwvYNlLxPIPPCxl
         RTBEabyZoOjKkcwOXhLkutVPxXR0m09JB7JvywMkLuT2zp+YwjJkhfbF2+14wtlMV1Xc
         2FJT8lDTfuCbyKp85zM4T5BceBXPbstf/BNACtBPJYRXN2khKgrgidNAMe/4k2WZWTq8
         cHeQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530RQuJmJ70lQivryVy3I8bXFxRTsGclIZRhLHpdjk+QXfMyt2sv
	ACCe8Rhm8qIBVG0yyIqBNh8=
X-Google-Smtp-Source: ABdhPJxZWpJaew99LZo7wQlBUYJSgZQkymCJ4YgFQZIMCcTVtv0sdXvwzYDPYKtbytLAqfa4zVFtAw==
X-Received: by 2002:a25:ca09:: with SMTP id a9mr31784116ybg.178.1600322487258;
        Wed, 16 Sep 2020 23:01:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:ceca:: with SMTP id x193ls446128ybe.2.gmail; Wed, 16 Sep
 2020 23:01:26 -0700 (PDT)
X-Received: by 2002:a25:1381:: with SMTP id 123mr41386403ybt.406.1600322486731;
        Wed, 16 Sep 2020 23:01:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600322486; cv=none;
        d=google.com; s=arc-20160816;
        b=yLczSzHuho3piHsMdLy8r2z8aKVD07bQnQcu0yIr8yE/eoh0D6lF0MhkvxPu2QHIN/
         tnvCrRq8NeoX2prqdWfOyDDlXsWlUEszrMPn8fohWuBpb/rws/Z+Kp4LFdzmtKjGuSdH
         cGa9BQZR0qjOjB5lWKefkFDLaRBgMRqEOu5b91dq8med1MQy0yC90s+xrE7sUReEN1mL
         ++PFo3iMulCvYCbtz25L+XCyWLZCiTXA2TLqrsXvfBbyZvGHHkoMFCASG5DI1+DyOyCI
         uZRRRhKcIJBsBmBmRQEEMvDYSDh7TOy2fWp/4ed1CtG+Nf9Ew5+UG9BN4FZdXdiphGQa
         o0gA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=iC6FrIU1cJTNhnxqUPkAB+mWW/pPcdYWLCyxEpDYgps=;
        b=n19xHnc977bPhjSK4AV7pTn5L+IQ0o+A5CXrloteJ2j54lVyZ0+z9Ypo7dtgkMcNBE
         U5sEhNCtXVS49sszFD0es7qPSWEOguXNrPjZ/yYYy4VMZIpy8kol1d6YRWOLx8yAme9+
         5uW+DLNZAbVHd1te2qS6eSnDuGk21WjuoJ4rdTOEyiNVPwYyN2Dy66MEE2PZ8sCcfzWf
         g4CvCTd4PnURAguIVqS/eCrU9k8p9Azi/vAQN7gj/8BaN0ln3xuvbVByXLLUM5LQHqqh
         kvMLDyyYtRX23TYa9eMRls/HLIbI9WrjJLS1MtAjmNdiSwerBkdbXxKH/wfIdtk8slHD
         BkjQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=XSLn6+0V;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id e17si629583ybp.1.2020.09.16.23.01.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 16 Sep 2020 23:01:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail-ot1-f41.google.com (mail-ot1-f41.google.com [209.85.210.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 5697A21974
	for <clang-built-linux@googlegroups.com>; Thu, 17 Sep 2020 06:01:25 +0000 (UTC)
Received: by mail-ot1-f41.google.com with SMTP id h17so865383otr.1
        for <clang-built-linux@googlegroups.com>; Wed, 16 Sep 2020 23:01:25 -0700 (PDT)
X-Received: by 2002:a9d:6250:: with SMTP id i16mr19900890otk.77.1600322484572;
 Wed, 16 Sep 2020 23:01:24 -0700 (PDT)
MIME-Version: 1.0
References: <20200914095706.3985-1-ardb@kernel.org> <CAKwvOdmSXm7cV3hB_Yp=DD0RwwDHtPzzDBU8Xj5kBREn3xqYdA@mail.gmail.com>
 <CAMj1kXGuFFUyT48EYvzFmjCP4QZi_Sk_GpBrBCaHjP7HKLhjBA@mail.gmail.com>
 <CAKwvOdmkNgi_+kfauTSLwtpVChipW851_KGJG+gBbhwRxJJORA@mail.gmail.com>
 <CAMj1kXHTkP7-8xscGZGXN_0Sq=BCSnt3zWqkcm8xdO11xmditA@mail.gmail.com>
 <CAKwvOd=G2Rr3StUJ=oWu1L4b5y615m+uYNW-Y5sis13uqBvrYQ@mail.gmail.com>
 <CAMj1kXHEpPc0MSoMrCxEkyb44AkLM2NJJGtOXLpr6kxBHS0vfA@mail.gmail.com> <CAKwvOd=Sq3XOquw4ACEi+cYCQp0-LW-JXoecFt+yy+jtmtuhiQ@mail.gmail.com>
In-Reply-To: <CAKwvOd=Sq3XOquw4ACEi+cYCQp0-LW-JXoecFt+yy+jtmtuhiQ@mail.gmail.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Thu, 17 Sep 2020 09:01:13 +0300
X-Gmail-Original-Message-ID: <CAMj1kXG9WBZb9WYCCng7CkJ+v8X=xHVhih274iuXMd5ua2nKPg@mail.gmail.com>
Message-ID: <CAMj1kXG9WBZb9WYCCng7CkJ+v8X=xHVhih274iuXMd5ua2nKPg@mail.gmail.com>
Subject: Re: [PATCH 00/12] ARM: use adr_l/ldr_l macros for PC-relative references
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: linux-efi <linux-efi@vger.kernel.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, Russell King <linux@armlinux.org.uk>, 
	Linus Walleij <linus.walleij@linaro.org>, Nicolas Pitre <nico@fluxnic.net>, 
	Stefan Agner <stefan@agner.ch>, Peter Smith <Peter.Smith@arm.com>, Marc Zyngier <maz@kernel.org>, 
	Will Deacon <will@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	Jian Cai <jiancai@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ardb@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=XSLn6+0V;       spf=pass
 (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=ardb@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Thu, 17 Sep 2020 at 00:25, Nick Desaulniers <ndesaulniers@google.com> wrote:
>
> On Wed, Sep 16, 2020 at 1:45 PM Ard Biesheuvel <ardb@kernel.org> wrote:
> >
> > On Wed, 16 Sep 2020 at 22:53, Nick Desaulniers <ndesaulniers@google.com> wrote:
> > >
> > > On Tue, Sep 15, 2020 at 10:55 PM Ard Biesheuvel <ardb@kernel.org> wrote:
> > > >
> > > > On Wed, 16 Sep 2020 at 02:31, Nick Desaulniers <ndesaulniers@google.com> wrote:
> > > > >
> > > > > On Tue, Sep 15, 2020 at 2:30 PM Ard Biesheuvel <ardb@kernel.org> wrote:
> > > > > >
> > > > > > Excellent, thanks for testing. Do you have any coverage for Thumb2
> > > > > > builds as well? (CONFIG_THUMB2_KERNEL=y)
> > > > >
> > > > > Ah, right, manually testing ARCH=arm defconfig with
> > > > > CONFIG_THUMB2_KERNEL enabled via menuconfig:
> > > > >
> > > > > Builds and boots for clang.
> > > > >
> > > > > (Also needed https://lore.kernel.org/lkml/20200915225751.274531-1-ndesaulniers@google.com/T/#u
> > > > > for an unrelated issue).
> > > > >
> > > > > For GCC, I observe:
> > > > >
> > > > > arch/arm/vfp/vfphw.o: in function `vfp_support_entry':
> > > > > (.text+0xa): relocation truncated to fit: R_ARM_THM_JUMP19 against
> > > > > symbol `vfp_kmode_exception' defined in .text.unlikely section in
> > > > > arch/arm/vfp/vfpmodule.o
> > > > >
> > > >
> > > > Interesting. And this is using ld.bfd ?
> > >
> > > $ arm-linux-gnueabihf-ld --version
> > > GNU ld (GNU Binutils for Debian) 2.34
> > >
> > > .text.unlikely reminds me of the sections created when profiling data
> > > is present.  That's obviously not the case here, so maybe there's
> > > other ways this section can be created by GCC?  I may have added a
> > > patch recently for placing this section explicitly, which was a
> > > prerequisite for Kees' series explicitly placing all sections.
> > > https://lore.kernel.org/lkml/159896087937.20229.4955362311782724603.tip-bot2@tip-bot2/
> > > Maybe that can be improved?
> > >
> > > IIRC, LLD is able to emit range extension thunks for these cases, but
> > > BFD does not.
> >
> > ld.bfd will usually emit veneers for branches that turn out to be out
> > of range in the final link stage.
> >
> > Does the following help?
> >
> > diff --git a/arch/arm/vfp/vfphw.S b/arch/arm/vfp/vfphw.S
> > index 4fcff9f59947..f1468702fbc9 100644
> > --- a/arch/arm/vfp/vfphw.S
> > +++ b/arch/arm/vfp/vfphw.S
> > @@ -82,6 +82,7 @@ ENTRY(vfp_support_entry)
> >         ldr     r3, [sp, #S_PSR]        @ Neither lazy restore nor FP exceptions
> >         and     r3, r3, #MODE_MASK      @ are supported in kernel mode
> >         teq     r3, #USR_MODE
> > +THUMB( it      ne                      )
> >         bne     vfp_kmode_exception     @ Returns through lr
> >
> >         VFPFMRX r1, FPEXC               @ Is the VFP enabled?
>
> Yes, it does!  I'm curious why though?  I've seen the "it prefixes"
> before (is that what they're called?), but I don't recall what they're
> for.  How come that solves this issue?
>

It forces the use of an instruction encoding that has more space for
an immediate.

> (Feel free to use my tested by tag on a subsequent resulting patch
> that uses that).  That fix is irrespective of this series, so you
> should send it maybe separately?
>

I will, thanks.

> Also, it looks like the GCC build of milbeaut_m10v_defconfig fails to
> boot for me in QEMU; so maybe not just a Clang bug (or maybe, more
> than one bug).  (or maybe one of my command line params to QEMU is
> wrong).
>

I understand that this is actually an existing issue in -next, but in
general, why would you expect to be able to boot
milbeaut_m10v_defconfig on anything other than a Milbeaut MV10
machine? (whatever it is) Or does QEMU emulate a milbeaut machine? If
not, better to stick with configs that are intended to boot on the
QEMU machine emulation that you are using.

Also, while I see the point of regression testing of -next, using it
as a base to test arbitrary series and then report failures against it
produces a lot of noise. -next is *not* a good base for development,
because you get everybody else's half baked crap as well. When you
test my stuff, please use a known good base so we're not off on a
goose chase every time.



> Stepping through start_kernel(), the call to setup_arch() seems to
> hang in qemu.  For both GCC and Clang builds. A breakpoint in panic()
> never gets hit.  Looks like the deepest I can get is:
>
> Looks like:
> #0  memblock_alloc_try_nid (size=108, align=4, min_addr=0, max_addr=0,
> nid=-1) at mm/memblock.c:1601
> #1  0xc060f0b4 in memblock_alloc (size=<optimized out>,
> align=<optimized out>) at ./include/linux/memblock.h:409
> #2  cma_init_reserved_mem (base=1543503872, size=67108864,
> order_per_bit=0, name=0xc04b9240 "reserved", res_cma=0xc07ccbdc
> <dma_contiguous_default_area>) at mm/cma.c:190
> #3  0xc060f2c0 in cma_declare_contiguous_nid (base=1543503872,
> size=67108864, limit=1610612736, alignment=8388608, order_per_bit=0,
> fixed=false, name=0xc04b9240 "reserved",
>     res_cma=0xc07ccbdc <dma_contiguous_default_area>, nid=-1) at mm/cma.c:352
> #4  0xc0608cb6 in cma_declare_contiguous (alignment=<optimized out>,
> order_per_bit=<optimized out>, name=<optimized out>,
> res_cma=<optimized out>, fixed=<optimized out>,
>     limit=<optimized out>, size=<optimized out>, base=<optimized out>)
> at ./include/linux/cma.h:28
> #5  dma_contiguous_reserve_area (size=<optimized out>, base=<optimized
> out>, limit=<optimized out>, res_cma=0xc07ccbdc
> <dma_contiguous_default_area>, fixed=false)
>     at kernel/dma/contiguous.c:201
> #6  0xc0608d22 in dma_contiguous_reserve (limit=<optimized out>) at
> kernel/dma/contiguous.c:171
> #7  0xc0604584 in arm_memblock_init (mdesc=0xc061bfe8
> <__mach_desc_GENERIC_DT.35641>) at arch/arm/mm/init.c:230
> #8  0xc060302c in setup_arch (cmdline_p=<optimized out>) at
> arch/arm/kernel/setup.c:1132
> #9  0xc06007d2 in start_kernel () at init/main.c:857
>
> there's a call to memset that seems to hang.  I wonder if memset() was
> defined in terms of __builtin_memset, which oft can result in infinite
> loops?  (IIRC there's an AEABI related memset; this kind of thing has
> hit android userspace before).
>
> (gdb) layout asm
>
> shows that the source call to memset is transformed into a call to mmioset.
>
> (gdb) bt
> #0  mmioset () at arch/arm/lib/memset.S:19
> #1  0xc060e2dc in memblock_alloc_try_nid (size=108, align=<optimized
> out>, min_addr=0, max_addr=0, nid=-1) at mm/memblock.c:1602
> #2  0xc060f0b4 in memblock_alloc (size=<optimized out>,
> align=<optimized out>) at ./include/linux/memblock.h:409
> #3  cma_init_reserved_mem (base=1543503872, size=67108864,
> order_per_bit=0, name=0xc04b9240 "reserved", res_cma=0xc07ccbdc
> <dma_contiguous_default_area>) at mm/cma.c:190
> #4  0xc060f2c0 in cma_declare_contiguous_nid (base=1543503872,
> size=67108864, limit=1610612736, alignment=8388608, order_per_bit=0,
> fixed=false, name=0xc04b9240 "reserved",
>     res_cma=0xc07ccbdc <dma_contiguous_default_area>, nid=-1) at mm/cma.c:352
> #5  0xc0608cb6 in cma_declare_contiguous (alignment=<optimized out>,
> order_per_bit=<optimized out>, name=<optimized out>,
> res_cma=<optimized out>, fixed=<optimized out>,
>     limit=<optimized out>, size=<optimized out>, base=<optimized out>)
> at ./include/linux/cma.h:28
> #6  dma_contiguous_reserve_area (size=<optimized out>, base=<optimized
> out>, limit=<optimized out>, res_cma=0xc07ccbdc
> <dma_contiguous_default_area>, fixed=false)
>     at kernel/dma/contiguous.c:201
> #7  0xc0608d22 in dma_contiguous_reserve (limit=<optimized out>) at
> kernel/dma/contiguous.c:171
> #8  0xc0604584 in arm_memblock_init (mdesc=0xc061bfe8
> <__mach_desc_GENERIC_DT.35641>) at arch/arm/mm/init.c:230
> #9  0xc060302c in setup_arch (cmdline_p=<optimized out>) at
> arch/arm/kernel/setup.c:1132
> #10 0xc06007d2 in start_kernel () at init/main.c:857
>
> Using `si` in gdb, it looks like we maybe hit an exception vector?
> x   1202                .section .vectors, "ax", %progbits
>
>                                             x
> x   1203        .L__vectors_start:
>
>                                             x
> x   1204                W(b)    vector_rst
>
>                                             x
> x   1205                W(b)    vector_und
>
>                                             x
> x   1206                W(ldr)  pc, .L__vectors_start + 0x1000
>
>                                             x
> x  >1207                W(b)    vector_pabt
>
> Is the last thing I see, then `si` stops working.  Not sure if `pabt`
> is a recognizable acronym to anyone more familiar with ARM?
>
> Happens regardless of your series, FWIW.
> --
> Thanks,
> ~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMj1kXG9WBZb9WYCCng7CkJ%2Bv8X%3DxHVhih274iuXMd5ua2nKPg%40mail.gmail.com.
