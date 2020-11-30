Return-Path: <clang-built-linux+bncBCSPV64IYUKBBKUPSP7AKGQEC4COIYY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-f56.google.com (mail-wm1-f56.google.com [209.85.128.56])
	by mail.lfdr.de (Postfix) with ESMTPS id 4CF632C8204
	for <lists+clang-built-linux@lfdr.de>; Mon, 30 Nov 2020 11:21:32 +0100 (CET)
Received: by mail-wm1-f56.google.com with SMTP id n18sf856310wmk.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 30 Nov 2020 02:21:32 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606731691; cv=pass;
        d=google.com; s=arc-20160816;
        b=yA9B3jWJre1DhejLiWX05sEpBXI9zO1XtLtssQVY48aR4pxwXDBJgrkQTKRPT2klsQ
         YXsrCD2CNQJsZ6AWLhUmw0O2gB22KfkxQ6R1js7SMB4e6fYMeiMG7VGP4x8uW5raW+te
         bJl946j37rXrFSgchqDPM5iGm8/dzu31h9Gc2XHs44KUurL9rLLsBuHDlAbx7hzjGSNg
         VHBB95LonhSr7Krge2w9+wUrLHxwC9tgg7VDEEJTvfiDWd/dg8mM8AMItpc6idIc9XzE
         LutIW1DXHXXLwJE42c7A4A4CI5fXojuE3aoQHJBdGQH5rHOmSAZ9JWeWYtWK8F5t+tNH
         Nzwg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:sender:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date;
        bh=HO19IoF6VbQPJyQTtCPhgZpGHIFFtOZmdq7NAu4RYeU=;
        b=cIxr0FGZOR2VYn1VQ7gkE211yNl4DiCwCLW5E2MCKC7Wc2E0t2QxWB/leo/CkWFcIN
         Wf4ZSpVJEUqLCrw9L3cmUU3SaPLYzxY7TqMohgU8JqZPLHF8rOFcq1/xuyn6f320MJLp
         mkj/ia1wbrPTVKVnvhDXpygdp6DDzCmNPQ45NPcfPDVuEurDQ0EZD/RUHST8auUnt12S
         j+R1jLUqXk1RfqM28hfgfE4rzCfIIOz9SP4sg7c1elKqyX0s8lWUIVMZaeA+QwfIF8jU
         PKGQcJzgPrPs9mw6QSqjQrZrjvGknkWILxcm2TRSLafkRHSDDPinvtJMfqAzFJwng2u1
         2Byg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass (test mode) header.i=@armlinux.org.uk header.s=pandora-2019 header.b=PRbkhnQn;
       spf=pass (google.com: best guess record for domain of linux+clang-built-linux=googlegroups.com@armlinux.org.uk designates 2001:4d48:ad52:32c8:5054:ff:fe00:142 as permitted sender) smtp.mailfrom="linux+clang-built-linux=googlegroups.com@armlinux.org.uk";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=armlinux.org.uk
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent:sender
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=HO19IoF6VbQPJyQTtCPhgZpGHIFFtOZmdq7NAu4RYeU=;
        b=to70Tm4+J7vjvkqQnBWbpv7GT6k5y+/J7UWwWsuuyaw+pBGDKiOj5zIDo3JBBy+KW0
         rYTKYxZ2T4BHKwdjRMrxbaXQhLfXErRhA5YVSQP1Rx3URwe8Z0Xb55uys8YNslcEueji
         tpw4qK4jHaw1xIYPN3fjIkafst+ErcGEwDgnf0qVkYNxNIAya5TKK5tWDVZCM0IeEp43
         MC5UCqPOv9oC3AjXB9unK3AdYUesITZeLx+5II5qycTJM/UgjEabHsWf74Sc3lrS1KJi
         Gp/5veYwbud/pjjM8ob71ex1UVDyKCRzbCwFnyIX7MwXw4KTvx/7l/1uGNkA8Rzlchqj
         wHpg==
X-Gm-Message-State: AOAM533C12vqiDDd+RKrfkTRhMA6FhP9LfDiv2Cahxc0Az1iFXUT5j/9
	6LpG89dBhsEA9m1C2W95k4w=
X-Google-Smtp-Source: ABdhPJwZTP4U05cHu6EJrTN8/1OY9F3ZbU0CT7RypMqijD7wMDXrDgRjS4ZHn8HcfpdjRogBUJRYdg==
X-Received: by 2002:a1c:48d:: with SMTP id 135mr15168418wme.147.1606731691025;
        Mon, 30 Nov 2020 02:21:31 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:990e:: with SMTP id b14ls2469799wme.1.canary-gmail; Mon,
 30 Nov 2020 02:21:30 -0800 (PST)
X-Received: by 2002:a05:600c:2308:: with SMTP id 8mr4962031wmo.188.1606731690204;
        Mon, 30 Nov 2020 02:21:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606731690; cv=none;
        d=google.com; s=arc-20160816;
        b=jWgOcoIfB624QxJ9x/+Ah0J/0MOMrgLq46oDf67eLHWeaVw03SzQPanvPuOgofWzYH
         a67DvYERUN7vYc09SODpUC02gVgGKLEZ2DOWb1Tql0wABSui/CfK+P/fOqfi3F786+G3
         Nfk+3m10n3McnVxSdHdqNEY38TXp29fvBRkD/LvC7vByvonqVUAzmCOP8eYqoAJi8iku
         d4HNijyQAbujcpEmtxW/xybGGi48q0lvY6xy1W136z+wbi7FShdx0VWoveS2sBT9NN3F
         XXDhBFzhhh9/o4LPu47NGy3b9znxl2PapqeDaGI/t1MejgRGwC+oJRDC2HsIwwmReePr
         ASWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=sender:user-agent:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:dkim-signature;
        bh=MLqKD3jRFo8FpPzkYIL73PYY1dH6RWPaiQHEkCwMjmw=;
        b=zyVm7psxqQdhJGn8gEOHNdMKWjVgibcMjCJRKe9PUanyS+8VU0CCJcPsyeGWZ011tv
         F8kvQtyCI0tQkfJNjcy+hIJalRDuYaYrwrxQFq0/TEqhkB3Xqk8ruTOSAuICHEnOxcE8
         24SxM9ydne1Qr1ak8eAQ8He1McXPkXCxZKodvckRyJplEFKc/ueWLYWaVUjChbUNLQZJ
         X6JWkjgSUL1ywbFcJd0oBZoNISoNLtjz2jgWGUoyaUt92TIoFZMCs/7/LOMPLofzUIqG
         kB35aMShaMJSSGHYwyzTzhSM6Mnan/CyZwmcu+b2Pp6OBLUQNWhPg316SFPH9h6xkAJG
         PzqA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass (test mode) header.i=@armlinux.org.uk header.s=pandora-2019 header.b=PRbkhnQn;
       spf=pass (google.com: best guess record for domain of linux+clang-built-linux=googlegroups.com@armlinux.org.uk designates 2001:4d48:ad52:32c8:5054:ff:fe00:142 as permitted sender) smtp.mailfrom="linux+clang-built-linux=googlegroups.com@armlinux.org.uk";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=armlinux.org.uk
Received: from pandora.armlinux.org.uk (pandora.armlinux.org.uk. [2001:4d48:ad52:32c8:5054:ff:fe00:142])
        by gmr-mx.google.com with ESMTPS id r21si885707wra.4.2020.11.30.02.21.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Nov 2020 02:21:30 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of linux+clang-built-linux=googlegroups.com@armlinux.org.uk designates 2001:4d48:ad52:32c8:5054:ff:fe00:142 as permitted sender) client-ip=2001:4d48:ad52:32c8:5054:ff:fe00:142;
Received: from shell.armlinux.org.uk ([fd8f:7570:feb6:1:5054:ff:fe00:4ec]:37940)
	by pandora.armlinux.org.uk with esmtpsa (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
	(Exim 4.92)
	(envelope-from <linux@armlinux.org.uk>)
	id 1kjgJA-0006Yt-SU; Mon, 30 Nov 2020 10:21:24 +0000
Received: from linux by shell.armlinux.org.uk with local (Exim 4.92)
	(envelope-from <linux@shell.armlinux.org.uk>)
	id 1kjgJ8-0004vR-V5; Mon, 30 Nov 2020 10:21:22 +0000
Date: Mon, 30 Nov 2020 10:21:22 +0000
From: Russell King - ARM Linux admin <linux@armlinux.org.uk>
To: Ard Biesheuvel <ardb@kernel.org>
Cc: Antony Yu <swpenim@gmail.com>, Nicolas Pitre <nico@fluxnic.net>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>
Subject: Re: [RESEND,PATCH] ARM: fix __div64_32() error when compiling with
 clang
Message-ID: <20201130102122.GT1551@shell.armlinux.org.uk>
References: <20201123073634.6854-1-swpenim@gmail.com>
 <CAMj1kXGsQ9K57SvZ74pmD+_=338sGXjc_t+hCXMh-9BPanXnhA@mail.gmail.com>
 <CAMj1kXGs-woGGnM2QkhY5NbRRKP8_N4BY9ScBtga8mcyHoK2+A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAMj1kXGs-woGGnM2QkhY5NbRRKP8_N4BY9ScBtga8mcyHoK2+A@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: Russell King - ARM Linux admin <linux@armlinux.org.uk>
X-Original-Sender: linux@armlinux.org.uk
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass (test
 mode) header.i=@armlinux.org.uk header.s=pandora-2019 header.b=PRbkhnQn;
       spf=pass (google.com: best guess record for domain of
 linux+clang-built-linux=googlegroups.com@armlinux.org.uk designates
 2001:4d48:ad52:32c8:5054:ff:fe00:142 as permitted sender) smtp.mailfrom="linux+clang-built-linux=googlegroups.com@armlinux.org.uk";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=armlinux.org.uk
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

On Mon, Nov 30, 2020 at 11:12:33AM +0100, Ard Biesheuvel wrote:
> (+ Nico)
> 
> On Mon, 30 Nov 2020 at 11:11, Ard Biesheuvel <ardb@kernel.org> wrote:
> >
> > On Mon, 23 Nov 2020 at 08:39, Antony Yu <swpenim@gmail.com> wrote:
> > >
> > > __do_div64 clobbers the input register r0 in little endian system.
> > > According to the inline assembly document, if an input operand is
> > > modified, it should be tied to a output operand. This patch can
> > > prevent compilers from reusing r0 register after asm statements.
> > >
> > > Signed-off-by: Antony Yu <swpenim@gmail.com>
> > > ---
> > >  arch/arm/include/asm/div64.h | 5 +++--
> > >  1 file changed, 3 insertions(+), 2 deletions(-)
> > >
> > > diff --git a/arch/arm/include/asm/div64.h b/arch/arm/include/asm/div64.h
> > > index 898e9c78a7e7..809efc51e90f 100644
> > > --- a/arch/arm/include/asm/div64.h
> > > +++ b/arch/arm/include/asm/div64.h
> > > @@ -39,9 +39,10 @@ static inline uint32_t __div64_32(uint64_t *n, uint32_t base)
> > >         asm(    __asmeq("%0", __xh)
> > >                 __asmeq("%1", "r2")
> > >                 __asmeq("%2", "r0")
> > > -               __asmeq("%3", "r4")
> > > +               __asmeq("%3", "r0")
> > > +               __asmeq("%4", "r4")
> > >                 "bl     __do_div64"
> > > -               : "=r" (__rem), "=r" (__res)
> > > +               : "=r" (__rem), "=r" (__res), "=r" (__n)
> > >                 : "r" (__n), "r" (__base)
> > >                 : "ip", "lr", "cc");
> > >         *n = __res;
> > > --
> > > 2.23.0
> > >
> >
> > Agree that using r0 as an input operand only is incorrect, and not
> > only on Clang. The compiler might assume that r0 will retain its value
> > across the asm() block, which is obviously not the case.

However, you can _not_ have an asm block that names two outputs using
the same physical register - that's why both the original patch and
the posted v2 will fail.

You also can't mark r0 as clobbered because it's used as an operand
and that is not allowed by gcc.

The fact is, we have two register variables occupying the same register,
which are __n and __rem. It doesn't matter which endian-ness __rem is,
r0 will be used for both __n (input) and __rem (output).

If the compiler can't work out that if a physical register used as an
output operand will be written by the assembler, then the compiler is
quite simply buggy.

The code is correct as it stands; Clang is buggy.

-- 
RMK's Patch system: https://www.armlinux.org.uk/developer/patches/
FTTP is here! 40Mbps down 10Mbps up. Decent connectivity at last!

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201130102122.GT1551%40shell.armlinux.org.uk.
