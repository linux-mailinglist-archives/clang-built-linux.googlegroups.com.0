Return-Path: <clang-built-linux+bncBDY3NC743AGBBXML2T5QKGQEUSOJSNA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103b.google.com (mail-pj1-x103b.google.com [IPv6:2607:f8b0:4864:20::103b])
	by mail.lfdr.de (Postfix) with ESMTPS id EFDAE27F513
	for <lists+clang-built-linux@lfdr.de>; Thu,  1 Oct 2020 00:25:34 +0200 (CEST)
Received: by mail-pj1-x103b.google.com with SMTP id o11sf578745pjj.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 30 Sep 2020 15:25:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601504733; cv=pass;
        d=google.com; s=arc-20160816;
        b=QLMtY2kQif6+k3i3ECp/MMikDmyFHk2LRME0IEnrXHIG4V+JPtprJ9BB95Atm+o2W/
         GiGhpAsFnhwN2QvgX8WaCJZHAzmisooZ6RiXWMLVxa72xWjo/PygfsyZXwJdOTFA8v1c
         QUL+M0gMElxhToc4oCTNuDHZJuXPvPrxedbsuCdLOgJoNli8WReUR8aQwbmAoMimQuna
         ALnPBMQ7ldfWkSK49an8WqlF6e3yvilnobcvgspO4JsWJsleT0Dwz3l2ZG99tRvzI1Lm
         qDgSQeStGO8an9+mdy95fSfoJdg5xzWczSbS/IX9ZR1C5e0mC84zA4fdGm3VU+ipbWIY
         Ey2Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=rLFt3K1TiL1Q7rvIRrsqCceX7CnenLbHloH6aEIWL1A=;
        b=dN6U0Wt3g2JeWoUNaOr4Qsf0CXgBAtJ89A7lSii+DbNBVLxz2f5Yt5ypSxW/gHXTN2
         IhQ7HMCUduPZXXiONR/8JF4haifsX9lesNgEpQ4IVIVon6FCbzbhQhwDvRvmyLk8h2SA
         uf3+xJKxC5wogZP3zhftHG8+yRx1kcZydc1+9oJi3DBLL/UCAC3SBKolOn7Ihd2f7BYf
         Zz2EGyyLIZ6nRnBCPyiqFF3vOYWGyemO0w4EccN0rFHABGjbXrHF2ooZ3I247kc32ID3
         lIweBGzFpsYFd+CPy3p7d5JdPrGpQusSNjkp6inCTQPw0qu//vJkkHDV6Yri/03qNwbr
         dARQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.116 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=rLFt3K1TiL1Q7rvIRrsqCceX7CnenLbHloH6aEIWL1A=;
        b=mzOg0QaQ1yyHYUnxyOnzLz03/XhvwlbPoS7ydIxQNN4vIVq5Cur+MFLad4I1ptAobp
         Rf0+bI1pWObBjGMFBmjEM/8oTqKS9wz/h5YGXozT94hNxaAqmR1jOY7zvg96bYWuqg5Y
         OdFwELnTprvp7E0/uqDVLTTrIhwTHH2g3U7TkXW5dE3pTtpcoUpPg0HCK+zPIcvCdCDF
         sXfRPjnoPQ5AUwKGRoCFjYVEStunk0PUPhWALJe5raBmaT7ipvjZVAFCxm6ODzCH/bY8
         iLSPsTgQY8KLnYzMKkBLQXhHWyfx3boLzDPKeYD0sPDh9RtrlxGNLccKh8PBmh2tRVJO
         IxFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rLFt3K1TiL1Q7rvIRrsqCceX7CnenLbHloH6aEIWL1A=;
        b=k3C6VZlP3T+vsRNu/Mv87USXYwBpHxKTt+XoryDWNB2wA4ndkdZ/r/mIGtmCqkrBno
         n7PurDp4QO42hS/XEglahUYTWYpLEB0mANMYDTGahPIWrb0LVG/XiusWiQH10hAOqOHy
         Gs0SfxdH8zCPDPYAX64FgACWMVp/3RhBB61z+7HIsIe5UeYwJnJsxbdSS8yZ9NCu46xj
         tDCBSmTWcg4dTy++3FjveeUzvRuLcBAgH8+QLUGfyhz2+R1yuZbLUIfUQIo6Yf8ryRNC
         G1owPpRUshnujarTSIWDjx/pyWLhzGIXdC+sgtoaACu5BlCAd70mviRMqYORD3vnd7LP
         T+tg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531WMxUrnIOJQBY7oWCw5yGODT0FA/s/jYWsit1XgTDDw9Dm3B47
	Xo197c4ZFGldYIaTL0U96UE=
X-Google-Smtp-Source: ABdhPJxvc2z8FmWBHXfPSABlTsdGpNgOMwFL9wUmbWWDmGpa/s8Y9TD+4AdCy812NN/20dIMNh6QrQ==
X-Received: by 2002:a17:90a:8d05:: with SMTP id c5mr4249159pjo.222.1601504733549;
        Wed, 30 Sep 2020 15:25:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:441d:: with SMTP id r29ls1084264pga.4.gmail; Wed, 30 Sep
 2020 15:25:32 -0700 (PDT)
X-Received: by 2002:a63:e602:: with SMTP id g2mr3818856pgh.427.1601504732822;
        Wed, 30 Sep 2020 15:25:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601504732; cv=none;
        d=google.com; s=arc-20160816;
        b=J6HCV35e5T1RDspGVll7Sycjdl93rWoA9aigWfeikElW99FN3ygQvqQVbXKjhEGwva
         oAZkf7oV8hcBCnGwxFFVy0zqDp/UeYCN5avj1+G4eapkfkW7ah+yN7/OFO/auYUK0Ol0
         6po5iVOAGCWr9OkrGPwZdK3h2qncJM3kfL7E4CK99j7VV1rgERNjbDT1pYVeQ4PobZ9c
         VCUpxeKpnEsYQhge/3Kzxmtn14Mp0XTm9zCaUOF9d/ikBqjvhrtwS+LKPJQsnhtYd12q
         0JwuoNsTywav4bIKBCS7xi7uySsofTx6b5mOAFv1g9Nv/LP4beMpxDFVCNuugM9Jt3mZ
         RS8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=nPl9SxXZo7b4ovdrLNyrsGxKKNXT1LWXpkzMbhSfSMI=;
        b=cwqiPLbv9XlNjB9cUutKjj/SnkBRkvyz6tggPkq0SWzzcvk4vAmIuoh30ZNfPeOsjN
         cVeXhXmbjQ80owhGjwIkxPCJnw4vTfAAzODKwHJmz2bqfOqpY9FF/GCLi2h1IBBnO76L
         anGtPZOlDmBRT7RQD2DPZG9Nyclksu5R0dCEkOk8y6mbASJZKgefVEyK7ksPbGx1s95+
         56pv9+en4jMpmJvyYxYG4E1m2o1X2qza0UPJGgjTBcvFOYa1qZExcQzaaJMkrF72JtaM
         0bfIFH/vipatwX7pKhrRX0M8Ub11tW71pirmIs0SnlGg3Efszvi8jB9qon9YezVc8Fso
         8vXQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.116 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0116.hostedemail.com. [216.40.44.116])
        by gmr-mx.google.com with ESMTPS id f6si205313pgk.3.2020.09.30.15.25.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Sep 2020 15:25:32 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.116 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.116;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay06.hostedemail.com (Postfix) with ESMTP id 56D1B18224519;
	Wed, 30 Sep 2020 22:25:31 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 50,0,0,,d41d8cd98f00b204,joe@perches.com,,RULES_HIT:41:355:379:599:800:857:960:967:968:973:982:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1535:1543:1593:1594:1605:1711:1730:1747:1777:1792:1981:2194:2198:2199:2200:2393:2525:2553:2560:2563:2682:2685:2828:2859:2902:2933:2937:2939:2942:2945:2947:2951:2954:3022:3138:3139:3140:3141:3142:3622:3865:3866:3867:3868:3870:3871:3872:3873:3874:3934:3936:3938:3941:3944:3947:3950:3953:3956:3959:4321:4384:4605:5007:6119:6120:6742:7875:7903:9010:9025:10004:10394:10400:10471:10848:11026:11232:11473:11658:11914:12043:12296:12297:12438:12555:12740:12760:12895:12986:13019:13255:13439:14096:14097:14181:14659:14721:21080:21433:21451:21627:21773:21789:21811:21939:30054:30070:30089:30090:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:1,LUA_SUMMARY:none
X-HE-Tag: watch95_3a0f65f27196
X-Filterd-Recvd-Size: 5748
Received: from XPS-9350.home (unknown [47.151.133.149])
	(Authenticated sender: joe@perches.com)
	by omf01.hostedemail.com (Postfix) with ESMTPA;
	Wed, 30 Sep 2020 22:25:29 +0000 (UTC)
Message-ID: <aefe941251d5d58062d06099afb58dea1d1d4e17.camel@perches.com>
Subject: Re: [RFC PATCH next-20200930] treewide: Convert macro and uses of
 __section(foo) to __section("foo")
From: Joe Perches <joe@perches.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Sedat Dilek <sedat.dilek@gmail.com>, "Paul E . McKenney"
 <paulmck@kernel.org>, Steven Rostedt <rostedt@goodmis.org>, Mathieu
 Desnoyers <mathieu.desnoyers@efficios.com>, Lai Jiangshan
 <jiangshanlai@gmail.com>,  Josh Triplett <josh@joshtriplett.org>, Kees Cook
 <keescook@chromium.org>, LKML <linux-kernel@vger.kernel.org>, 
 rcu@vger.kernel.org, Clang-Built-Linux ML
 <clang-built-linux@googlegroups.com>,  Miguel Ojeda
 <miguel.ojeda.sandonis@gmail.com>, Michael Ellerman <mpe@ellerman.id.au>
Date: Wed, 30 Sep 2020 15:25:28 -0700
In-Reply-To: <CAKwvOd=P+j0RaQfHsXPfB0EL3oRgAu8Q0+spUOn_v-p2+3=3pw@mail.gmail.com>
References: <CAKwvOd=s+N4+X94sTams_hKn8uV5Hc6QyCc7OHyOGC-JFesS8A@mail.gmail.com>
	 <20200929192549.501516-1-ndesaulniers@google.com>
	 <CA+icZUVgfnVQ1=zjUGhGKnJAs9g3Q06sWN3ffNdrfZMZLCEkbA@mail.gmail.com>
	 <133589afbe999347454dfcc46ae782897bf9e3a2.camel@perches.com>
	 <46f69161e60b802488ba8c8f3f8bbf922aa3b49b.camel@perches.com>
	 <CAKwvOdkhyvTpY6pHT+CLSsBFuKRWsXucjbwN_tyJAsryZXvG1A@mail.gmail.com>
	 <417ffa3fd3fba5d4a481db6a0b0c9b48cbbb17c4.camel@perches.com>
	 <CAKwvOd=P+j0RaQfHsXPfB0EL3oRgAu8Q0+spUOn_v-p2+3=3pw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.36.4-0ubuntu1
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.116 is neither permitted nor denied by best guess
 record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
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

On Wed, 2020-09-30 at 15:20 -0700, Nick Desaulniers wrote:
> On Wed, Sep 30, 2020 at 3:06 PM Joe Perches <joe@perches.com> wrote:
> > On Wed, 2020-09-30 at 14:40 -0700, Nick Desaulniers wrote:
> > > On Wed, Sep 30, 2020 at 12:16 PM Joe Perches <joe@perches.com> wrote:
> > > > Use a more generic form for __section that requires quotes to avoid
> > > > complications with clang and gcc differences.
> > > > 
> > > > Remove the quote operator # from compiler_attributes.h __section macro.
> > > > 
> > > > Convert all unquoted __section(foo) uses to quoted __section("foo").
> > > > Also convert __attribute__((section("foo"))) uses to __section("foo")
> > > > even if the __attribute__ has multiple list entry forms.
> > > > 
> > > > Signed-off-by: Joe Perches <joe@perches.com>
> > > > ---
> > > > 
> > > > This is the current output from the script against next-20200930
> > > > attached in this link:
> > > > 
> > > > https://lore.kernel.org/lkml/0e582a7f5144a33f465978d97701f9b3dcc377f3.camel@perches.com/
> > > > 
> > > > It might be useful to run the script immediately before
> > > > the next -rc1.
> > > 
> > > $ ARCH=powerpc CROSS_COMPILE=powerpc64le-linux-gnu- make CC=clang -j71
> > > powernv_defconfig
> > > $ ARCH=powerpc CROSS_COMPILE=powerpc64le-linux-gnu- make CC=clang -j71
> > > ...
> > > arch/powerpc/boot/main.c:193:44: error: expected ';' after top level declarator
> > > static char cmdline[BOOT_COMMAND_LINE_SIZE]
> > 
> > The script does not convert files in
> > 
> >         scripts/
> >         tools/
> >         uapi/
> >         and include/linux/compiler_attributes.h
> > 
> > It otherwise assumes that any __attribute__((__section__
> > use should be converted to __section.
> > 
> > If this ppc file is the only file outside of the
> > listed exclusions, I can either exclude it directly
> > or add compiler.h to it.
> > 
> > You have a preference?
> 
> If compiler_types.h which includes compiler_attributes.h is being
> implicitly including by Kbuild add `-include` flags to most
> translation units in the kernel, it would be nice to be able to use it
> everywhere.  I consider open coded __attribute__'s a portability bug.
> So including the header in arch/powerpc/boot/*.c would be my
> preference.
> 
> > Perhaps these are also possible files that need exclusions:
> > 
> > ./arch/x86/boot/video.h:#define __videocard struct card_info __section(".videocards") __attribute__((used))
> > ./arch/x86/boot/compressed/pgtable_64.c:unsigned long *trampoline_32bit __section(".data");
> > ./arch/x86/boot/tty.c:static void __section(".inittext") serial_putchar(int ch)
> > ./arch/x86/boot/tty.c:static void __section(".inittext") bios_putchar(int ch)
> > ./arch/x86/boot/tty.c:void __section(".inittext") putchar(int ch)
> > ./arch/x86/boot/tty.c:void __section(".inittext") puts(const char *str)
> > ./arch/s390/boot/startup.c:static struct diag210 _diag210_tmp_dma __section(".dma.data");
> > ./arch/powerpc/boot/main.c:     __section("__builtin_cmdline");
> > ./arch/powerpc/boot/ps3.c:      __section("__builtin_cmdline");
> > 
> > 
> 

no ppc cross compiler here, so can't test but maybe:
---
 arch/powerpc/boot/main.c | 2 ++
 arch/powerpc/boot/ps3.c  | 2 ++
 2 files changed, 4 insertions(+)

diff --git a/arch/powerpc/boot/main.c b/arch/powerpc/boot/main.c
index 6a5b937a7f5c..ce6e27798f79 100644
--- a/arch/powerpc/boot/main.c
+++ b/arch/powerpc/boot/main.c
@@ -6,6 +6,8 @@
  */
 #include <stdarg.h>
 #include <stddef.h>
+#include <linux/compiler.h>
+
 #include "elf.h"
 #include "page.h"
 #include "string.h"
diff --git a/arch/powerpc/boot/ps3.c b/arch/powerpc/boot/ps3.c
index a71714b454b1..86ca9c30562a 100644
--- a/arch/powerpc/boot/ps3.c
+++ b/arch/powerpc/boot/ps3.c
@@ -8,6 +8,8 @@
 
 #include <stdarg.h>
 #include <stddef.h>
+#include <linux/compiler.h>
+
 #include "types.h"
 #include "elf.h"
 #include "string.h"



-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/aefe941251d5d58062d06099afb58dea1d1d4e17.camel%40perches.com.
