Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBZFQ4H6QKGQEQKXB3NQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33e.google.com (mail-ot1-x33e.google.com [IPv6:2607:f8b0:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id BC4A82BBA6D
	for <lists+clang-built-linux@lfdr.de>; Sat, 21 Nov 2020 00:59:33 +0100 (CET)
Received: by mail-ot1-x33e.google.com with SMTP id 23sf4855196otv.13
        for <lists+clang-built-linux@lfdr.de>; Fri, 20 Nov 2020 15:59:33 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605916772; cv=pass;
        d=google.com; s=arc-20160816;
        b=lcBgOsMV15hh0JqIy4UngxytJtX5y1NRlOpF1aAhHOlqA6J2z3+HGaY6X7W9MltnBZ
         XjWBH4lEQ1kx8Mf5HbtCAdDl3BpCi0Ab4/8/1Gy5ECnRRxTAo8oDidnBrV+YFGxKIw0c
         09RYf9nkbYE3zmGcbivIMtcMeoPmkz37vPMRMR+onGLMhFyhcccw4V/FuTmlcO/saYBd
         yamphicUk4hnDe/ykFSCTLTOTH841TWM1GsSKniDfRWyKvxm6c2K6QgrXJW2w2IDTvH4
         NboI7cUc5FJ3SWKIq/kKCoS9/IGOcerHYbQxm9EfaLKRLAQNwWr9ab5dbOtIbqTpojLr
         vigQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=JzXo/tNEThA4URAnM2uopj6Q2jrlli3aKWrsjrklK7o=;
        b=Fhz6B5+Nl4oJlJc7jR5RgvQY8q4eVVw5/eBUyaCIQMqI5HbxR+IajeobfXAN+5OJKY
         BhEQbcHR+5M9gdKobFyBoGo5KonGdYeAepP9RM0a/TP6hMm4ICh1rypQeVqT7CftXHFa
         OjrzsLm5bmKUV5hJP+casogr41kPcMNJIcUNd0RMR2+iN5CtxrMteLRk3jalSUgB3/i2
         PBx76b5R03/aYKOGhi8uY+b9k/9gMGN9IOnJ4IE3A6e+hRCTxHwlgP8TAqOencaD4Whf
         zyYiCVCX07hLkFXDQYi1ylL8KiCLi0kyWBJcvoqMEXiZ0Y70wFN1jbLxlmiq+c/Qj4ML
         UyKA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="EnMit/LS";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=JzXo/tNEThA4URAnM2uopj6Q2jrlli3aKWrsjrklK7o=;
        b=h7ScpLScQQ9FGldHbcO4G0uR4nGfPxEPqT+HSdbfKGBVGDU5dAKncvh6gutI0V0g4l
         34dwUnW17aLaqacRdm6mD8hBZ8g2acmgFo650FmLDQflndQsCwcb912yLt48KJDDKOyI
         lwW7KARila7Y5tpjqCHgUtNOWQBzeib4N1w6hqhPLX0HXMFRDMt+eM3Kjb4b8py1mP18
         ktIhU223gW+azT0rCChSpRcdIDLY2Qj41uu1dekp87cy/r1LLMll+ia3Nl0aUyRGRz8x
         mKLjZ2woR20gdtcJ0uyX5/zvh596JsWnx1RsIl+Y9pb5ERWj/iYTjxmz2+RHa9xDJJL1
         A+cQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=JzXo/tNEThA4URAnM2uopj6Q2jrlli3aKWrsjrklK7o=;
        b=pEoSTdL0oro3TJSn+K4hFpOdbTYAgDCSxNYR7Lki6943yR1dTKZHwRQqrZczJHJSaq
         x5BMpXXw5mx6SvhePM2wsQqAvbe15L7OPOntVnX8C+FroQBzNQsIWq97fB1CFK8ihulV
         OfPtILwjT1fhaotlTPJs8lOtjzNENQDbDJ33RMAIvqqzBppdzJW1Jd04NxQZOk6CTLVV
         QEk4V4O/ZvhuGh7AFwc2sZPsZjkchWCa7yKnh6w58HF6rFLNBHqPaHd+Z3EoljnLO5nu
         VyDC3NLDo0IXxUe0CmrwEJ2mammmzlHbBejP7hNtic7Avw+PND6uHj6Q5e0ywIj2HvL4
         JYng==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531ZVDgV/kh/v0TwioM1iC4DeBQ4tmypIr9/IPNokd8Tgovoo4V5
	mqHFVXs9noHe3qvRqevCFN0=
X-Google-Smtp-Source: ABdhPJz580pCZjEQuSEeV/2YaCUMFpY41HPjZkjnvn2Ax9umA5GinRAC3vzkMKE3YcDpLhyePxu8Ug==
X-Received: by 2002:a05:6830:1e95:: with SMTP id n21mr16314257otr.49.1605916772503;
        Fri, 20 Nov 2020 15:59:32 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:b784:: with SMTP id h126ls1995574oif.3.gmail; Fri, 20
 Nov 2020 15:59:32 -0800 (PST)
X-Received: by 2002:a05:6808:14e:: with SMTP id h14mr8473948oie.126.1605916772061;
        Fri, 20 Nov 2020 15:59:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605916772; cv=none;
        d=google.com; s=arc-20160816;
        b=JietzfJW2W4dq7Tl6/soiEk1e2Am07gFxovh2tl921iSfGdQWb8enAfPCqar7wSXF/
         7gWS3z0Hjx6VYnBhQPSLDaVnv7sBtEO8loj3PSkprcWguTZLTIOyWVLbMltgEaKCWu8b
         7I7sBhtiCZ3QCGkgZqkD1fzDb3pKDP0VIqoK9RE2h4JAhRj+b8hq1+KBXFx9vkpSKU1Y
         aAcLzQRZ1yJURhWWuwoB9A1JS+Quosc5zEorz/Fk7CbkNwyJrYo0cGY3jaXPEPqcePFo
         wU3BlTLCJ3KSYZfHKrXa7a65pmAfVRqpIgLn8VYoraNQLuDN7TBo8tu2Eg3/pMw8H8yl
         kUwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=jBGijJIY6Z+oa+4qlAfyy6WPNwc/Uit7UWvV3O3C13o=;
        b=TFSB9vY2ggvgh/1pCuq6YJp76J7KoDRYBVNlprRGQbfaEeQjszjw7BxEJwRYBYbf/b
         sTFY1ryy/fJ4KU/z1Tbxk6C+ICoqVHb13MZxOnqOf8bMVMrJyTFbNdhISQIGvRwt0bJs
         rF7uOtyv88FKs3UR2komDX7I/FmpdFlYTbKCkSKIPV8Iu03WaJsvzvhzVs+ugylrBgau
         QQBrhpE9qqFZYvpmftxlqWJ5qN/TE4dXdVucHkVhGvYqMeeAd/J5OED+8Dho0JAeYytb
         51fHVFkv9ISPHqxqfYrEOmUTdLpoWaC00QkIN+WwUZUWvl//0b1HtsLiI3oY3Gtxdku0
         KYlg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="EnMit/LS";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id b4si397447ots.4.2020.11.20.15.59.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Nov 2020 15:59:32 -0800 (PST)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id j19so8677040pgg.5
        for <clang-built-linux@googlegroups.com>; Fri, 20 Nov 2020 15:59:32 -0800 (PST)
X-Received: by 2002:aa7:9ddb:0:b029:18b:396b:70a3 with SMTP id g27-20020aa79ddb0000b029018b396b70a3mr16223347pfq.3.1605916771276;
        Fri, 20 Nov 2020 15:59:31 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id m30sm4375091pgn.49.2020.11.20.15.59.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Nov 2020 15:59:30 -0800 (PST)
Date: Fri, 20 Nov 2020 15:59:28 -0800
From: Kees Cook <keescook@chromium.org>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Steven Rostedt <rostedt@goodmis.org>, Will Deacon <will@kernel.org>,
	Josh Poimboeuf <jpoimboe@redhat.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Kernel Hardening <kernel-hardening@lists.openwall.com>,
	linux-arch <linux-arch@vger.kernel.org>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	LKML <linux-kernel@vger.kernel.org>, linux-pci@vger.kernel.org
Subject: Re: [PATCH v7 02/17] kbuild: add support for Clang LTO
Message-ID: <202011201556.3B910EF@keescook>
References: <20201118220731.925424-1-samitolvanen@google.com>
 <20201118220731.925424-3-samitolvanen@google.com>
 <CAKwvOdnYTMzaahnBqdNYPz3KMdnkp=jZ4hxiqkTYzM5+BBdezA@mail.gmail.com>
 <CABCJKucj_jUwoiLc35R7qFe+cNKTWgT+gsCa5pPiY66+1--3Lg@mail.gmail.com>
 <202011201144.3F2BB70C@keescook>
 <20201120202935.GA1220359@ubuntu-m3-large-x86>
 <202011201241.B159562D7@keescook>
 <CABCJKucJ87wa73YJkN_dYUyE7foQT+12gdWJZw1PgZ_decFr4w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CABCJKucJ87wa73YJkN_dYUyE7foQT+12gdWJZw1PgZ_decFr4w@mail.gmail.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b="EnMit/LS";       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::542
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Fri, Nov 20, 2020 at 12:58:41PM -0800, Sami Tolvanen wrote:
> On Fri, Nov 20, 2020 at 12:43 PM Kees Cook <keescook@chromium.org> wrote:
> >
> > On Fri, Nov 20, 2020 at 01:29:35PM -0700, Nathan Chancellor wrote:
> > > On Fri, Nov 20, 2020 at 11:47:21AM -0800, Kees Cook wrote:
> > > > On Fri, Nov 20, 2020 at 08:23:11AM -0800, Sami Tolvanen wrote:
> > > > > Changing the ThinLTO config to a choice and moving it after the main
> > > > > LTO config sounds like a good idea to me. I'll see if I can change
> > > > > this in v8. Thanks!
> > > >
> > > > Originally, I thought this might be a bit ugly once GCC LTO is added,
> > > > but this could be just a choice like we're done for the stack
> > > > initialization. Something like an "LTO" choice of NONE, CLANG_FULL,
> > > > CLANG_THIN, and in the future GCC, etc.
> > >
> > > Having two separate choices might be a little bit cleaner though? One
> > > for the compiler (LTO_CLANG versus LTO_GCC) and one for the type
> > > (THINLTO versus FULLLTO). The type one could just have a "depends on
> > > CC_IS_CLANG" to ensure it only showed up when needed.
> >
> > Right, that's how the stack init choice works. Kconfigs that aren't
> > supported by the compiler won't be shown. I.e. after Sami's future
> > patch, the only choice for GCC will be CONFIG_LTO_NONE. But building
> > under Clang, it would offer CONFIG_LTO_NONE, CONFIG_LTO_CLANG_FULL,
> > CONFIG_LTO_CLANG_THIN, or something.
> >
> > (and I assume  CONFIG_LTO would be def_bool y, depends on !LTO_NONE)
> 
> I'm fine with adding ThinLTO as another option to the LTO choice, but
> it would duplicate the dependencies and a lot of the help text. I
> suppose we could add another config for the dependencies and have both
> LTO options depend on that instead.

How about something like this? This separates the arch support, compiler
support, and user choice into three separate Kconfig areas, which I
think should work.


diff --git a/Makefile b/Makefile
index e397c4caec1b..af902718e882 100644
--- a/Makefile
+++ b/Makefile
@@ -897,7 +897,7 @@ export CC_FLAGS_SCS
 endif
 
 ifdef CONFIG_LTO_CLANG
-ifdef CONFIG_THINLTO
+ifdef CONFIG_LTO_CLANG_THIN
 CC_FLAGS_LTO	+= -flto=thin -fsplit-lto-unit
 KBUILD_LDFLAGS	+= --thinlto-cache-dir=$(extmod-prefix).thinlto-cache
 else
diff --git a/arch/Kconfig b/arch/Kconfig
index cdd29b5fdb56..5c22e10e4c12 100644
--- a/arch/Kconfig
+++ b/arch/Kconfig
@@ -600,6 +600,14 @@ config SHADOW_CALL_STACK
 
 config LTO
 	bool
+	help
+	  Selected if the kernel will be built using the compiler's LTO feature.
+
+config LTO_CLANG
+	bool
+	select LTO
+	help
+	  Selected if the kernel will be built using Clang's LTO feature.
 
 config ARCH_SUPPORTS_LTO_CLANG
 	bool
@@ -609,28 +617,25 @@ config ARCH_SUPPORTS_LTO_CLANG
 	  - compiling inline assembly with Clang's integrated assembler,
 	  - and linking with LLD.
 
-config ARCH_SUPPORTS_THINLTO
+config ARCH_SUPPORTS_LTO_CLANG_THIN
 	bool
 	help
-	  An architecture should select this option if it supports Clang's
-	  ThinLTO.
+	  An architecture should select this option if it can supports Clang's
+	  ThinLTO mode.
 
-config THINLTO
-	bool "Clang ThinLTO"
-	depends on LTO_CLANG && ARCH_SUPPORTS_THINLTO
-	default y
+config HAS_LTO_CLANG
+	def_bool y
+	# Clang >= 11: https://github.com/ClangBuiltLinux/linux/issues/510
+	depends on CC_IS_CLANG && CLANG_VERSION >= 110000 && LD_IS_LLD
+	depends on $(success,$(NM) --help | head -n 1 | grep -qi llvm)
+	depends on $(success,$(AR) --help | head -n 1 | grep -qi llvm)
+	depends on ARCH_SUPPORTS_LTO_CLANG
+	depends on !FTRACE_MCOUNT_USE_RECORDMCOUNT
+	depends on !KASAN
+	depends on !GCOV_KERNEL
 	help
-	  This option enables Clang's ThinLTO, which allows for parallel
-	  optimization and faster incremental compiles. More information
-	  can be found from Clang's documentation:
-
-	    https://clang.llvm.org/docs/ThinLTO.html
-
-	  If you say N here, the compiler will use full LTO, which may
-	  produce faster code, but building the kernel will be significantly
-	  slower as the linker won't efficiently utilize multiple threads.
-
-	  If unsure, say Y.
+	  The compiler and Kconfig options support building with Clang's
+	  LTO.
 
 choice
 	prompt "Link Time Optimization (LTO)"
@@ -644,20 +649,14 @@ choice
 
 config LTO_NONE
 	bool "None"
+	help
+	  Build the kernel normally, without Link Time Optimization (LTO).
 
-config LTO_CLANG
-	bool "Clang's Link Time Optimization (EXPERIMENTAL)"
-	# Clang >= 11: https://github.com/ClangBuiltLinux/linux/issues/510
-	depends on CC_IS_CLANG && CLANG_VERSION >= 110000 && LD_IS_LLD
-	depends on $(success,$(NM) --help | head -n 1 | grep -qi llvm)
-	depends on $(success,$(AR) --help | head -n 1 | grep -qi llvm)
-	depends on ARCH_SUPPORTS_LTO_CLANG
-	depends on !FTRACE_MCOUNT_USE_RECORDMCOUNT
-	depends on !KASAN
-	depends on !GCOV_KERNEL
-	select LTO
+config LTO_CLANG_FULL
+	bool "Clang Full LTO (EXPERIMENTAL)"
+	select LTO_CLANG
 	help
-          This option enables Clang's Link Time Optimization (LTO), which
+          This option enables Clang's full Link Time Optimization (LTO), which
           allows the compiler to optimize the kernel globally. If you enable
           this option, the compiler generates LLVM bitcode instead of ELF
           object files, and the actual compilation from bitcode happens at
@@ -667,9 +666,22 @@ config LTO_CLANG
 
 	    https://llvm.org/docs/LinkTimeOptimization.html
 
-	  To select this option, you also need to use LLVM tools to handle
-	  the bitcode by passing LLVM=1 to make.
+	  During link time, this option can use a large amount of RAM, and
+	  may take much longer than the ThinLTO option.
 
+config LTO_CLANG_THIN
+	bool "Clang ThinLTO (EXPERIMENTAL)"
+	depends on ARCH_SUPPORTS_LTO_CLANG_THIN
+	select LTO_CLANG
+	help
+	  This option enables Clang's ThinLTO, which allows for parallel
+	  optimization and faster incremental compiles compared to the
+	  CONFIG_LTO_CLANG_FULL option. More information can be found
+	  from Clang's documentation:
+
+	    https://clang.llvm.org/docs/ThinLTO.html
+
+	  If unsure, say Y.
 endchoice
 
 config CFI_CLANG
diff --git a/arch/arm64/Kconfig b/arch/arm64/Kconfig
index 8bf763307544..f39df315316e 100644
--- a/arch/arm64/Kconfig
+++ b/arch/arm64/Kconfig
@@ -74,7 +74,7 @@ config ARM64
 	select ARCH_SUPPORTS_MEMORY_FAILURE
 	select ARCH_SUPPORTS_SHADOW_CALL_STACK if CC_HAVE_SHADOW_CALL_STACK
 	select ARCH_SUPPORTS_LTO_CLANG
-	select ARCH_SUPPORTS_THINLTO
+	select ARCH_SUPPORTS_LTO_CLANG_THIN
 	select ARCH_SUPPORTS_ATOMIC_RMW
 	select ARCH_SUPPORTS_INT128 if CC_HAS_INT128 && (GCC_VERSION >= 50000 || CC_IS_CLANG)
 	select ARCH_SUPPORTS_NUMA_BALANCING
diff --git a/arch/x86/Kconfig b/arch/x86/Kconfig
index cb4c77a9b5ab..f99a4d3b55ae 100644
--- a/arch/x86/Kconfig
+++ b/arch/x86/Kconfig
@@ -93,7 +93,7 @@ config X86
 	select ARCH_SUPPORTS_ATOMIC_RMW
 	select ARCH_SUPPORTS_NUMA_BALANCING	if X86_64
 	select ARCH_SUPPORTS_LTO_CLANG		if X86_64
-	select ARCH_SUPPORTS_THINLTO		if X86_64
+	select ARCH_SUPPORTS_LTO_CLANG_THIN	if X86_64
 	select ARCH_USE_BUILTIN_BSWAP
 	select ARCH_USE_QUEUED_RWLOCKS
 	select ARCH_USE_QUEUED_SPINLOCKS
diff --git a/kernel/kallsyms.c b/kernel/kallsyms.c
index 3106636375c0..96505113b907 100644
--- a/kernel/kallsyms.c
+++ b/kernel/kallsyms.c
@@ -161,7 +161,7 @@ static unsigned long kallsyms_sym_address(int idx)
 	return kallsyms_relative_base - 1 - kallsyms_offsets[idx];
 }
 
-#if defined(CONFIG_CFI_CLANG) && defined(CONFIG_THINLTO)
+#if defined(CONFIG_CFI_CLANG) && defined(CONFIG_LTO_CLANG_THIN)
 /*
  * LLVM appends a hash to static function names when ThinLTO and CFI are
  * both enabled, which causes confusion and potentially breaks user space

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202011201556.3B910EF%40keescook.
