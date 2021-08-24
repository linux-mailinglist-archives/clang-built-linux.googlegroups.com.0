Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBQOUSWEQMGQECSMZAJQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc39.google.com (mail-oo1-xc39.google.com [IPv6:2607:f8b0:4864:20::c39])
	by mail.lfdr.de (Postfix) with ESMTPS id 1CE043F6B5D
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Aug 2021 23:53:07 +0200 (CEST)
Received: by mail-oo1-xc39.google.com with SMTP id p68-20020a4a48470000b029028a81bd8ddcsf12531004ooa.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Aug 2021 14:53:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629841986; cv=pass;
        d=google.com; s=arc-20160816;
        b=H0ZtvyqyubllIsFMue42z3uFvdn2G86ojAEFYUYNDDIhprP0fpW0H1uGOJn/b3i2d9
         4oEyM10LvwlfRNB1XqLq1jmGXvcSl46IWTIbdfzRYlHuXZsKxZwJt67gTlPd/UTlLxNa
         KEVjjoh0fQ9Q02DSjLPy1dLpIcfKofmVmtzRTDjPrekSnude8688uC1zbu0iBEtQ7qkR
         I4i5rIsuypNIE+Z6MpQjbyMozc51vLwakkUGPFH6Y0cQ0XbPBpS+EImEqzMJP8HAK9bi
         TuBdCjTRmph8DsAS97p8EKs9vdy8QWPXZJuSD9lLk06rXmOIYTR2hl1qQmoF1EqeBVFG
         OwYA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=PZ2N+ehnSG4tpO5Bp4iiq7N48e9AiQupQ+FdlWw1CB0=;
        b=qPAd9bBum0DvQ066NyBkmsT0nZpJ8FYDoXvs98yZ5lvleuWWX8wC7KrgkQZtVTcrni
         FPpHpHk5hjndH0KUkxU6qVQsbz7zJ0Qq41jsxv/46BO5i0H01U1KymKnipVhAa6oOvbk
         MMiB09KrYW/0GO8G3P4KszOgaT3DkAD00QSIJL1zbG96o6WF4M4o1BMh+vewsjEVb0HS
         vS7iV6LVB8DghN2QhPBlXhE/8MC+Be4eaJJoA2gyKIkSbiINEHiHQF6aub/NqqDSOTXu
         DBTVa/bwj7JPXazaL2AuPTQkNFz2hbeYnrx1pvHXet4bnDrAAQMdIVluZI4vb1jCgRA+
         hXpA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=buJw1smE;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=PZ2N+ehnSG4tpO5Bp4iiq7N48e9AiQupQ+FdlWw1CB0=;
        b=DJMtaIgiTF9c46PPs1aXLdFCj6NVvp1AX5q9o3r4no92N3uLaV/j/sPOADX33O+wqe
         N1HQKz+BwwkeUXEXVy8Qr++CuTKylNmD/8NV5xPCTByMC5jhgMBEDjehoXQzhUSuFJN1
         sRMp85dzyGroaZwMCN9TkqGiANtwzBalc3TnLA30JtCkdYLd7Zza4/YWMQZdws7GUM6B
         E1KTa+/ErHpK83D4XtiN2CVEE032wqdKAWXp4fevW5Q+RcgF9OuQmAs3AhyJutINhYFs
         fhdvdF006m0ZaRdOkwvzLcYpp5/PsFQf/ZgWwG2H/JCYeVrU1ag2uPge3pkGzPA2J8pB
         Syyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=PZ2N+ehnSG4tpO5Bp4iiq7N48e9AiQupQ+FdlWw1CB0=;
        b=CVAw5NJ9fVI2YCZ/lbKZa3nwizRzGi/BlifmArjKJ0z9yxZyl5/y7Gs6aDM8AZPbN6
         /V9wzFr/B6SXcwV/ILna7CBfcs3KE/OpmAryTFJrHp1vUJo9+qYd09qiAMn1dMGrp5ze
         K+xB+tuu0OCWN5TaMmqK2X6wCf35Yluue5aIPkvQxjs/GyUHJK6FDzeoGQdQ2BLLHjbd
         IdupZeNu1a03Wm/6PTxsdpBGktgalDqEnrr3qzvl5bf2SWRvvU944OLKp1J3GcsjWZYQ
         xwvTOnWNcdYv1fbnPxxkZZ0ljt1Ajr+ioTc79SiZeHi0GCSRrMUWl6ilX1W7+NiPQrvn
         el+g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532Nn6nPc85wi4oHOHc5zcmJMsSfC7KrzlwWSjSnW6pt3jdRt6+F
	0sWOkYVJQz0RkYuLh1aU3uE=
X-Google-Smtp-Source: ABdhPJwCChFevsLv1/qMjzu64++Lh90VOF34JAc+eR6Xrbq8/xlpaWcPt6KUk2vQB/htE7Bcq3ttCw==
X-Received: by 2002:a05:6830:b86:: with SMTP id a6mr29229739otv.319.1629841985944;
        Tue, 24 Aug 2021 14:53:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6820:308:: with SMTP id l8ls19525ooe.0.gmail; Tue, 24
 Aug 2021 14:53:05 -0700 (PDT)
X-Received: by 2002:a4a:e4ce:: with SMTP id w14mr25342676oov.76.1629841985574;
        Tue, 24 Aug 2021 14:53:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629841985; cv=none;
        d=google.com; s=arc-20160816;
        b=oXOlrRaApnitCDmUSzr9vN5BVQPkLfVhRm1jHvytQKI/pZKTF80brEUajqciJWt+k9
         DK0aFybV3J26vou7PEIjrKqbQi79VSJrkdB36+z3PcFBp0xu6coyktR9dRn4lWNL8aXC
         xE4O17O2U7gMOo64sYVgkQoHYu1GxpWJPNUwLLHZJvLG4WK72evtvs7SThUWOp/s4coK
         l2QmFlfe4LaJngr07bFFNDi/b/B0pUkNmnt5fH3ujLOCReh4K+Uu4J0EYHzmC8bjlgq9
         3IOOrncpNOB2djHN7kPT6hGEXcnlQZIikK70A+hd3UBG3mm6TV1hvGX0cku8p8LH9WEV
         pvrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=hOLTGQR0v2sVNLQwEON67hoiWu313bhjAKczWgOfAP0=;
        b=PLJ+d6RKBNiHhhHqGnp8hxjp2kTc+pTLyKgR7tMFXZY3ZpfMo734Lx8au55WGH8pUV
         Y/OGjeFw9ne3vgZAnnmWZvW73p/IDWP1kaz2QFflC5vuDL5QHxqpGdM8h7CYs5cUCVyz
         DcL+guq4XlZ8DlFxCB56gtwNzK8KreZUlLzl8+/WBqdi/QgWvQ5C3YolflbIj2DIR/C2
         BZog67qPVcL3PDafbpMg0qTcfDO4l3uyXhtgwYJHdBON9fQbcbwyIjcX83splgpp16DZ
         U8GK/9JTn1M92NziTcXIf0wDuyK0zwrxgVL/7C8KQCo0gNSsELSpWCvOFmnmZYjnew7O
         GX7g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=buJw1smE;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id p6si77637oto.0.2021.08.24.14.53.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Aug 2021 14:53:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id BDFA06127B;
	Tue, 24 Aug 2021 21:53:03 +0000 (UTC)
Date: Tue, 24 Aug 2021 14:53:00 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Fangrui Song <maskray@google.com>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>, x86@kernel.org,
	Masahiro Yamada <masahiroy@kernel.org>,
	"H. Peter Anvin" <hpa@zytor.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	linux-kernel@vger.kernel.org, linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com, llvm@lists.linux.dev,
	kernel test robot <lkp@intel.com>
Subject: Re: [PATCH 1/2] x86: Do not add -falign flags unconditionally for
 clang
Message-ID: <YSVqPNPOewbFS7U8@Ryzen-9-3900X.localdomain>
References: <20210824022640.2170859-1-nathan@kernel.org>
 <20210824022640.2170859-2-nathan@kernel.org>
 <20210824025647.tssnp7qtccbgvdq7@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210824025647.tssnp7qtccbgvdq7@google.com>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=buJw1smE;       spf=pass
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

On Mon, Aug 23, 2021 at 07:56:47PM -0700, Fangrui Song wrote:
> On 2021-08-23, Nathan Chancellor wrote:
> > clang does not support -falign-jumps and only recently gained support
> > for -falign-loops. When one of the configuration options that adds these
> > flags is enabled, clang warns and all cc-{disable-warning,option} that
> > follow fail because -Werror gets added to test for the presence of this
> > warning:
> 
> [I implemented clang -falign-loops :) It doesn't affect LTO, though.
> LTO ld.lld may use -Wl,-mllvm,-align-loops=32 for now.  ]
> 
> > clang-14: warning: optimization flag '-falign-jumps=0' is not supported
> > [-Wignored-optimization-argument]
> 
> grub made a similar mistake:) It thought the availability of -falign-X
> implies the availability of other -falign-*
> https://lists.gnu.org/archive/html/grub-devel/2021-08/msg00076.html
> 
> > To resolve this, add a couple of cc-option calls when building with
> > clang; gcc has supported these options since 3.2 so there is no point in
> > testing for their support. -falign-functions was implemented in clang-7,
> > -falign-loops was implemented in clang-14, and -falign-jumps has not
> > been implemented yet.
> > 
> > Link: https://lore.kernel.org/r/YSQE2f5teuvKLkON@Ryzen-9-3900X.localdomain/
> > Reported-by: kernel test robot <lkp@intel.com>
> > Signed-off-by: Nathan Chancellor <nathan@kernel.org>
> > ---
> > arch/x86/Makefile_32.cpu | 12 +++++++++---
> > 1 file changed, 9 insertions(+), 3 deletions(-)
> > 
> > diff --git a/arch/x86/Makefile_32.cpu b/arch/x86/Makefile_32.cpu
> > index cd3056759880..e8c65f990afd 100644
> > --- a/arch/x86/Makefile_32.cpu
> > +++ b/arch/x86/Makefile_32.cpu
> > @@ -10,6 +10,12 @@ else
> > tune		= $(call cc-option,-mcpu=$(1),$(2))
> > endif
> > 
> > +ifdef CONFIG_CC_IS_CLANG
> > +align		:= -falign-functions=0 $(call cc-option,-falign-jumps=0) $(call cc-option,-falign-loops=0)
> > +else
> > +align		:= -falign-functions=0 -falign-jumps=0 -falign-loops=0
> > +endif
> > +
> > cflags-$(CONFIG_M486SX)		+= -march=i486
> > cflags-$(CONFIG_M486)		+= -march=i486
> > cflags-$(CONFIG_M586)		+= -march=i586
> > @@ -25,11 +31,11 @@ cflags-$(CONFIG_MK6)		+= -march=k6
> > # They make zero difference whatsosever to performance at this time.
> > cflags-$(CONFIG_MK7)		+= -march=athlon
> > cflags-$(CONFIG_MK8)		+= $(call cc-option,-march=k8,-march=athlon)
> > -cflags-$(CONFIG_MCRUSOE)	+= -march=i686 -falign-functions=0 -falign-jumps=0 -falign-loops=0
> > -cflags-$(CONFIG_MEFFICEON)	+= -march=i686 $(call tune,pentium3) -falign-functions=0 -falign-jumps=0 -falign-loops=0
> > +cflags-$(CONFIG_MCRUSOE)	+= -march=i686 $(align)
> > +cflags-$(CONFIG_MEFFICEON)	+= -march=i686 $(call tune,pentium3) $(align)
> > cflags-$(CONFIG_MWINCHIPC6)	+= $(call cc-option,-march=winchip-c6,-march=i586)
> > cflags-$(CONFIG_MWINCHIP3D)	+= $(call cc-option,-march=winchip2,-march=i586)
> > -cflags-$(CONFIG_MCYRIXIII)	+= $(call cc-option,-march=c3,-march=i486) -falign-functions=0 -falign-jumps=0 -falign-loops=0
> > +cflags-$(CONFIG_MCYRIXIII)	+= $(call cc-option,-march=c3,-march=i486) $(align)
> > cflags-$(CONFIG_MVIAC3_2)	+= $(call cc-option,-march=c3-2,-march=i686)
> > cflags-$(CONFIG_MVIAC7)		+= -march=i686
> > cflags-$(CONFIG_MCORE2)		+= -march=i686 $(call tune,core2)
> > -- 
> > 2.33.0
> 
> https://gcc.gnu.org/onlinedocs/gcc/Optimize-Options.html says
> "If n is not specified or is zero, use a machine-dependent default."
> 
> Unless some other files specify -falign-loops=N and expect 0 to reset to
> the machine default, -falign-jumps=0 -falign-loops=0 -falign-functions=0 should just be dropped.

Grepping the tree, I see:

rg "align-(functions|jumps|loops)"
Makefile
977:KBUILD_CFLAGS += -falign-functions=64

arch/x86/Makefile
101:        KBUILD_CFLAGS += $(call cc-option,-falign-jumps=1)
104:        KBUILD_CFLAGS += $(call cc-option,-falign-loops=1)

arch/x86/Makefile_32.cpu
28:cflags-$(CONFIG_MCRUSOE)     += -march=i686 -falign-functions=0 -falign-jumps=0 -falign-loops=0
29:cflags-$(CONFIG_MEFFICEON)   += -march=i686 $(call tune,pentium3) -falign-functions=0 -falign-jumps=0 -falign-loops=0
32:cflags-$(CONFIG_MCYRIXIII)   += $(call cc-option,-march=c3,-march=i486) -falign-functions=0 -falign-jumps=0 -falign-loops=0

arch/ia64/Makefile
26:                -falign-functions=32 -frename-registers -fno-optimize-sibling-calls

The two cc-options calls in arch/x86/Makefile are for x86_64 only and
the Makefile use of -falign-functions=64 is for
DEBUG_FORCE_FUNCTION_ALIGN_64B, which is a debug option so it does not
seem like the flags are going to get overridden in a normal case.

However, I read the GCC docs as if functions are not aligned by default
and -falign-functions / -falign-functions=0 aligns them to a machine
specific default, so I am not sure if these flags can just be dropped?
These flags have been in the tree for 19 years though and there is very
little history that I can find around why they are there.

https://git.kernel.org/pub/scm/linux/kernel/git/tglx/history.git/tree/arch/i386/Makefile?id=7a2deb32924142696b8174cdf9b38cd72a11fc96

-O2 turns on -falign-{functions,jumps,loops} by default but the kernel
can use -Os, which omits those, so it is possible that is why they are
there? Some input from the x86 folks might be helpful around this :)

> BTW: I believe GCC 8 (likely when fixing another issue with a large refactor
> https://gcc.gnu.org/bugzilla/show_bug.cgi?id=84100) introduced a bug
> that -falign-X=0 was essentially -falign-X=1.
> GCC 11.0 (https://gcc.gnu.org/bugzilla/show_bug.cgi?id=96247) fixed the bug.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YSVqPNPOewbFS7U8%40Ryzen-9-3900X.localdomain.
