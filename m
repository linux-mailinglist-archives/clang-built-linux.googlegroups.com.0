Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB5FZVOEAMGQEC4MEBJQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1039.google.com (mail-pj1-x1039.google.com [IPv6:2607:f8b0:4864:20::1039])
	by mail.lfdr.de (Postfix) with ESMTPS id 72D5C3E07A2
	for <lists+clang-built-linux@lfdr.de>; Wed,  4 Aug 2021 20:31:18 +0200 (CEST)
Received: by mail-pj1-x1039.google.com with SMTP id s2-20020a17090a0742b0290177b02e795esf2794036pje.7
        for <lists+clang-built-linux@lfdr.de>; Wed, 04 Aug 2021 11:31:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628101877; cv=pass;
        d=google.com; s=arc-20160816;
        b=QTruR4vztDXOFov9+21Ip2g/VqVkzfTJQ4PR7WdUWhexv98RodvQz5HxMI0oQxIDH5
         QHz3zlEvTekjhbpf46OdAm4LRNhfvDDdIGwOEcccI1JOED0dBwsMl/HV3sMAeJuc7NZH
         GdOYHHgmQsLzL1cA1oylrEfsmzCxQMoPsCWCYkmeiQDeY1WKlMHAC/T0HGfIFPBd/zv3
         ECN12qN2tWO0s7+1/zFKK88DQ2VB8lI+Lfuf+1rk2ZR3mxRvlNd0jEQACRJQD6is7MQO
         7RIaqoaFYc5d+zRaUyCNKS07vbyZTugDQ+36ng4I3p8wtP7y06O6IBRpDxl/b9RqA7c8
         JenA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=d+gEbX/IG/pq5+F5gtxKJm2fV836ycp3UgEZSFkZv38=;
        b=P9Il3KNGcDBbauHDEow7cq7DOFJgA18E+Hm3X7qJMNrBGcbmXzZCog3pPSQ96yCCvu
         1xxVCpobeobOowk/+UKPblkQ8ASUItAjpVgJEKmRANzWbKXC9uaHU94x7H3G+7DExHVv
         c8Bu/P9rJfapL7OtGwhbiq4qDGN9Aarr23ooDFaasLhU4oD6tej34y7dg9MV0GRMtw4+
         XE4yaabuHHaYvavq48gsWO2VSIjNqtrg+tnRgvA3NTk1SWCgq3jj0+PgKf8SIuN8N0SE
         B6SEM8N5sEzaVkhWUlWOWhjDwGDAFdcCssWTx0vWDjJbn52vWixRGYUZacLy6maQ3AXB
         PpKQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=DpDZH+KF;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=d+gEbX/IG/pq5+F5gtxKJm2fV836ycp3UgEZSFkZv38=;
        b=hOA/uYNlVX9CyJNNqETaMPEGDpi3/mO2UhZCgu1C9yYooNVhEpywj4GfYUy3mZ5gBC
         LJMtgg7eMoDDiZf+v9HVZHJiskaVb7EU9fpvbWq3KjHoZa3sSU03D+8fTYWTV/DilaE7
         H7SQpfXaN9q/uCOlIxmgIur8suoM3gilpuwOFkTcb9emRjex4eRNSYqcTNx0kIzhY50R
         clDnBQEy6WgHus8incoWz53JUI+JAmN8tqf15zmQRpL8luB25uSxHeGEzLLt46K804oy
         +FH/QixwPrKtXXfPYgOZApTioVIw2hgXckTfCeUfExNONt/IX/92MPbR7LqaSqJ6wPuv
         5w+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=d+gEbX/IG/pq5+F5gtxKJm2fV836ycp3UgEZSFkZv38=;
        b=PaYNBG3UercooP6VFPgQOoayv43dxXak1cEbJFMggm/hRX+qnZdFXMKfPLwBehBV9j
         zvC+6Fi7ojLuZZiSw1Ws7/QcEE6TE1qWsMWTuPK/0LYY7IOnS4h8Y4X0ikhRX/tovM6c
         nkGsNU3nl/27zufBgRXnWirP3+ObddUNh6XZ3sNAaxpAftAB7GO2PY8uHQVQDUaWsizy
         Dtfy0t2VGgw95RfSKCTB3SKNvDAbnDN9Pn9RnRwiKpmFlRHJTmW6KDMpcpAAQYCQAmCF
         H2JyeioauoKj5gT64J0DgNVkSPKn/XSTzaY6C0joAASWkWNbQoaHcqTyuLJ3MpH+H+oP
         Dvcw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533qW4on6wdBGGdJ/HQn+4mfRRnWajIl70Wd43o1En9zZT5eSyQk
	1xB2wosoef6iXTbkiwmdcLw=
X-Google-Smtp-Source: ABdhPJyM0BZI1BFWA9ymn/qHDvSC6R7JI2XkrVTitWLwKsx900g1kTGzw63fMVFVCs06NnuWRXczcA==
X-Received: by 2002:a17:902:ea10:b029:12c:ce56:c2a9 with SMTP id s16-20020a170902ea10b029012cce56c2a9mr776487plg.51.1628101877122;
        Wed, 04 Aug 2021 11:31:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:e787:: with SMTP id cp7ls1486610plb.10.gmail; Wed,
 04 Aug 2021 11:31:16 -0700 (PDT)
X-Received: by 2002:a17:90b:1bce:: with SMTP id oa14mr430164pjb.221.1628101876511;
        Wed, 04 Aug 2021 11:31:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628101876; cv=none;
        d=google.com; s=arc-20160816;
        b=L+be59VbUOBrsfPuqbodiGHHwevBGIAK7RkcSq6crmXAO9kTbkXYlsFe2XHAE7UxoD
         ae04rRgAvd1OzJ2hYEthpsdYs23lo4RaKFDZQytqgV3kn/gENrTphWHmyV0us4+9B5K0
         SvLON6F8EVCtsSgsm6TcqXTTNxFQ/wQgUtWYcfWAAoJlsaDDceRcsUzJjHuGPQW1Nq+v
         GX6QIuDbtoQ108O02WZWzrGpZCuNWpW0/MSGhpiEPw3mZ9htMFWERWMR0UrbcvZQHzXS
         ofePOjX3aWUyNYbgWCeS30HckBJlXrxLOoqB+81ShMuDaIWpIJAETxSl1BmCH0SdssYf
         OXFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=NWyHXPrYirNvyIKpPAjSpJgjqBuBT6T5AozerLOVhWQ=;
        b=vpb2unSpgYAefoZK4YL/3ydOfS118Cwv+fE8xjuzlPaxg5JPUoOpiZBndAOIp47kL8
         qxroUk6DLAalAuMVX2IhzPy8bRnh5JNtoIONcDhDk3t1uHt5OTDt2UWddSkqQ35oh5vv
         mx+S1gV0VU9iLleZlQ6iSciKWqxrg9K+iS9U6WesKE9qLoqsxLKNEOj7aWMl7mzE2CXx
         ViVj9mTizEGgdfPEaW59aMFNbJKKMuDv/rhQHkTqD0Itpiv8LgUr3SZimzKBkR7fk3VG
         pi/DSSraxYISMkN/ucYCUT7/rUVeCDxNsOn8xE8YxX5z+iSFM8T6Vti/c8G20bdIoFVq
         J7XQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=DpDZH+KF;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id o15si104122pfu.0.2021.08.04.11.31.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Aug 2021 11:31:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 94A4C60F35;
	Wed,  4 Aug 2021 18:31:15 +0000 (UTC)
Date: Wed, 4 Aug 2021 11:31:13 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Andrew Morton <akpm@linux-foundation.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	linux-hexagon@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Sid Manning <sidneym@quicinc.com>,
	Brian Cain <bcain@codeaurora.org>
Subject: Re: [PATCH] hexagon: Clean up timer-regs.h
Message-ID: <YQrc8SE+T7++BLaG@Ryzen-9-3900X.localdomain>
References: <20210728001729.1960182-1-nathan@kernel.org>
 <03bc01d783c2$52e6f200$f8b4d600$@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <03bc01d783c2$52e6f200$f8b4d600$@codeaurora.org>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=DpDZH+KF;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Wed, Jul 28, 2021 at 10:07:45AM -0500, Brian Cain wrote:
> > -----Original Message-----
> > From: Nathan Chancellor <nathan@kernel.org>
> ...
> > When building allmodconfig, there is a warning about TIMER_ENABLE being
> > redefined:
> > 
> >  drivers/clocksource/timer-oxnas-rps.c:39:9: warning: 'TIMER_ENABLE'
> >  macro redefined [-Wmacro-redefined]
> >  #define TIMER_ENABLE            BIT(7)
> >          ^
> >  arch/hexagon/include/asm/timer-regs.h:13:9: note: previous definition
> >  is here
> >  #define TIMER_ENABLE            0
> >          ^
> >  1 warning generated.
> > 
> > The values in this header are only used in one file each, if they are
> > used at all. Remove the header and sink all of the constants into their
> > respective files.
> > 
> > TCX0_CLK_RATE is only used in arch/hexagon/include/asm/timex.h
> > 
> > TIMER_ENABLE, RTOS_TIMER_INT, RTOS_TIMER_REGS_ADDR are only used in
> > arch/hexagon/kernel/time.c.
> > 
> > SLEEP_CLK_RATE and TIMER_CLR_ON_MATCH have both been unused since
> > the
> > file's introduction in commit 71e4a47f32f4 ("Hexagon: Add time and timer
> > functions").
> > 
> > TIMER_ENABLE is redefined as BIT(0) so the shift is moved into the
> > definition, rather than its use.
> > 
> > Signed-off-by: Nathan Chancellor <nathan@kernel.org>
> > ---
> >  arch/hexagon/include/asm/timer-regs.h | 26 --------------------------
> >  arch/hexagon/include/asm/timex.h      |  3 +--
> >  arch/hexagon/kernel/time.c            | 12 ++++++++++--
> >  3 files changed, 11 insertions(+), 30 deletions(-)
> >  delete mode 100644 arch/hexagon/include/asm/timer-regs.h
> > 
> > diff --git a/arch/hexagon/include/asm/timer-regs.h
> > b/arch/hexagon/include/asm/timer-regs.h
> > deleted file mode 100644
> > index ee6c61423a05..000000000000
> > --- a/arch/hexagon/include/asm/timer-regs.h
> > +++ /dev/null
> > @@ -1,26 +0,0 @@
> > -/* SPDX-License-Identifier: GPL-2.0-only */
> > -/*
> > - * Timer support for Hexagon
> > - *
> > - * Copyright (c) 2010-2011, The Linux Foundation. All rights reserved.
> > - */
> > -
> > -#ifndef _ASM_TIMER_REGS_H
> > -#define _ASM_TIMER_REGS_H
> > -
> > -/*  This stuff should go into a platform specific file  */
> > -#define TCX0_CLK_RATE		19200
> > -#define TIMER_ENABLE		0
> > -#define TIMER_CLR_ON_MATCH	1
> > -
> > -/*
> > - * 8x50 HDD Specs 5-8.  Simulator co-sim not fixed until
> > - * release 1.1, and then it's "adjustable" and probably not defaulted.
> > - */
> > -#define RTOS_TIMER_INT		3
> > -#ifdef CONFIG_HEXAGON_COMET
> > -#define RTOS_TIMER_REGS_ADDR	0xAB000000UL
> > -#endif
> > -#define SLEEP_CLK_RATE		32000
> > -
> > -#endif
> > diff --git a/arch/hexagon/include/asm/timex.h
> > b/arch/hexagon/include/asm/timex.h
> > index 8d4ec76fceb4..dfe69e118b2b 100644
> > --- a/arch/hexagon/include/asm/timex.h
> > +++ b/arch/hexagon/include/asm/timex.h
> > @@ -7,11 +7,10 @@
> >  #define _ASM_TIMEX_H
> > 
> >  #include <asm-generic/timex.h>
> > -#include <asm/timer-regs.h>
> >  #include <asm/hexagon_vm.h>
> > 
> >  /* Using TCX0 as our clock.  CLOCK_TICK_RATE scheduled to be removed. */
> > -#define CLOCK_TICK_RATE              TCX0_CLK_RATE
> > +#define CLOCK_TICK_RATE              19200
> > 
> >  #define ARCH_HAS_READ_CURRENT_TIMER
> > 
> > diff --git a/arch/hexagon/kernel/time.c b/arch/hexagon/kernel/time.c
> > index feffe527ac92..febc95714d75 100644
> > --- a/arch/hexagon/kernel/time.c
> > +++ b/arch/hexagon/kernel/time.c
> > @@ -17,9 +17,10 @@
> >  #include <linux/of_irq.h>
> >  #include <linux/module.h>
> > 
> > -#include <asm/timer-regs.h>
> >  #include <asm/hexagon_vm.h>
> > 
> > +#define TIMER_ENABLE		BIT(0)
> > +
> >  /*
> >   * For the clocksource we need:
> >   *	pcycle frequency (600MHz)
> > @@ -33,6 +34,13 @@ cycles_t	pcycle_freq_mhz;
> >  cycles_t	thread_freq_mhz;
> >  cycles_t	sleep_clk_freq;
> > 
> > +/*
> > + * 8x50 HDD Specs 5-8.  Simulator co-sim not fixed until
> > + * release 1.1, and then it's "adjustable" and probably not defaulted.
> > + */
> > +#define RTOS_TIMER_INT		3
> > +#define RTOS_TIMER_REGS_ADDR	0xAB000000UL
> > +
> >  static struct resource rtos_timer_resources[] = {
> >  	{
> >  		.start	= RTOS_TIMER_REGS_ADDR,
> > @@ -80,7 +88,7 @@ static int set_next_event(unsigned long delta, struct
> > clock_event_device *evt)
> >  	iowrite32(0, &rtos_timer->clear);
> > 
> >  	iowrite32(delta, &rtos_timer->match);
> > -	iowrite32(1 << TIMER_ENABLE, &rtos_timer->enable);
> > +	iowrite32(TIMER_ENABLE, &rtos_timer->enable);
> >  	return 0;
> >  }
> > 
> > 
> > base-commit: 7d549995d4e0d99b68e8a7793a0d23da6fc40fe8
> 
> Acked-by: Brian Cain <bcain@codeaurora.org>

Thanks Brian. Andrew, if you would not mind picking this up, I would
appreciate it!

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YQrc8SE%2BT7%2B%2BBLaG%40Ryzen-9-3900X.localdomain.
