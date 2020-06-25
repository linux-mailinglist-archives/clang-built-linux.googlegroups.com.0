Return-Path: <clang-built-linux+bncBC2ORX645YPRBO422P3QKGQE465DN6Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id 257C620A2B0
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Jun 2020 18:13:49 +0200 (CEST)
Received: by mail-pg1-x53a.google.com with SMTP id x184sf4433426pgb.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Jun 2020 09:13:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593101627; cv=pass;
        d=google.com; s=arc-20160816;
        b=S7pL+GWwQY4jSCcokHW9CQhxnSpYLBXpfDnygdZ5PpFDL2QnpUvzV/VnHfG9bG1Bwp
         Ue6cCjQ2GqIjJC/Z+Nmkz1HWFsbgcRn9gGUSENcdvnWTlykwgiw5vQ7JgjDigbHrCbv8
         fq/AwdcR4enQSj0LeCTBoQSYyjOjXXvzDGhmSQBvZZ4UR0paGiczvT8wuhC7UZX7EW2C
         K9DMoD2nISH5FfnDqwfufvJ03bmjVWaONwsB1qabtOQNs9NdC2b9KANBcVSjrS/Lum8X
         81mGFj90XD2Aa+LF+Ff2RsSxLDVXZG7sj7wMl9UNmgTl0WxEgSY8gD3DA0REJJ8feFV9
         ijJA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=biGA60CZTM+I6N1aN9glvmrB11C5eMY+F8u3cCaV4yE=;
        b=RnfZyISi1V3nRzZ8frWkFN+mRKNWkCshbRcO9ClmOxwZOQDSnTOjxDwAQ58mjfDGJp
         Dyu8fsArZy8NIN5oUM0GiLPHcBbKkctHJ/TzeDFp1v6FRUnODOpyPhjimoeRyg5XHikr
         KJu2uL8Ha5DRCI88nuQdg/Utu2X0jNY4iZTHYHrpEGBt1jdyUF51IHVeet12UfOSxwJj
         3nEAhOV3L3LhTD0QOgkVqGusWVUAxEbyt47dHQy45QiSXjZra7xMQgP5BUkdK2Yn5Mpe
         QvLTKx0jxfMJcCAuBDk5d0rfjoBMpoox7dN/JbSSJ+JSzsuXQ4wfcM2nazMs9OLNjEIE
         vChA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="FNy/7DFb";
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=biGA60CZTM+I6N1aN9glvmrB11C5eMY+F8u3cCaV4yE=;
        b=ilMT6dWOyRbjE3PqcTRrnA+j1vTNLD6WkHnhVW4Yn5SaYmZ0Wt4uKYNa1iZuKodsyK
         vOZ5/w3bqhDm5NjRql2Be4ZNt8XFcUgbb8bExCC/rX9hAl50c5DMwAyZ+ZjJo1mLjaJi
         gRV2yJI3G0iuwKh1d1dx2wMFxK85p6tRmfoPhHUo6LnIDFjxC3rrjhXXrlx4lph5i1IE
         LfGIN2C0e1UOyLFEwXg7UfJ+td+dPFSi0+symKBRljoe7IXVX2G4nhvNGb2mli+X1En3
         CghJ4jMsczVDvvAiDa3PJ3+ozx99tTWI/H0rmP45fmBA9eLRxl22uT0T3N1UzkIfSICQ
         9ARQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=biGA60CZTM+I6N1aN9glvmrB11C5eMY+F8u3cCaV4yE=;
        b=V/LEspy6wn1Fi+ZSRJnU9rcDDLPp7kM+EGops/aU4QxgHMS/Krn30sgk9imPDbgVLv
         v17OimPopdluxU1SaWSR2VryiqxVYqzt5pU9246aafTQD17yDawNOSo3bKitW4vNUQi3
         sBjxKxRZ8Wdf7Er8yI7Ez/KblphgqI73kYCM1v+ZGuXJRpJMM+UAvjKjuJEEUCNbXWvV
         /eHAirIq5Kg6Zq7hrorQp0CGFrgLdOwUsT4KI1R0YXcdmRLAxhuUur9zzqPptBv/cxG9
         ErpgjRNHAWHvuK7FNzhedNpfzmZcPj+T0HMCpdCFqefAjIuWqiVxRvEUZCtt54nAgLLM
         XRaQ==
X-Gm-Message-State: AOAM531/DyjMMILINWU9HdibByAno/5Ny/ziMThu2FyDGU8G1IDxHIhp
	q6bP5ByD6yRI1Y1T1z6a4gs=
X-Google-Smtp-Source: ABdhPJwSv7p0wJBOuqNE7RocXMxHHraXbXcKNW/D1I3p5SlMal/aXWVfK8IRrIE78S41KZT2UyJHew==
X-Received: by 2002:a63:8f46:: with SMTP id r6mr27529554pgn.257.1593101627546;
        Thu, 25 Jun 2020 09:13:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:7143:: with SMTP id g3ls2723445pjs.1.gmail; Thu, 25
 Jun 2020 09:13:47 -0700 (PDT)
X-Received: by 2002:a17:90a:ef8b:: with SMTP id m11mr4134359pjy.143.1593101627029;
        Thu, 25 Jun 2020 09:13:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593101627; cv=none;
        d=google.com; s=arc-20160816;
        b=s8eUStwg/l5LRtz1vH9rclrKnh31ggZiqI4sdB90i7NaIsvhIom/LWy23LgqSPDkJA
         L2pWYcKEM69NQFDBx1xMCE6zFxEMnq1h2XUYOCcEy88/W1CSxwgXAbnNGFSHHvKH8FwU
         0C7mmMUCBU2U/S+nszp7en34Xe/vILL4BtFKjc6ymOO5rVP/ibiEsXXDL9CeP5XbLOEo
         w1AZ/iog4JiUFmpu5v8niGH04ijYp7/Exry6CZa4GWhBbQ35Naa97Jl3Ey5VTWLqofDd
         hIg2odnU0Ov08GBQH8wSBQSkIALuOJH47b2QpdsJ9xdXHw1KnoU7R6mzerQH/3N2+FKW
         HSKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=tN3RRFkW8H40rA8SGu1JDOigZLSzT5qVO0+D16XtuLc=;
        b=ilpC/zqBbhv6dRelIXFm/Cvb5QWdABTJC8gnM2pjQrO7SWa55nXi38NGHr5eBizZ6U
         ZyJz6oDwe1arBJAvESDfeOPgvql6L/gDSEe1VlP75qvII5zf98qBvFny78qpI/ovo82R
         6eMg2ohwNu72rlkVNiflN51+Vkz3zwXzZHZepDg3Y+kBHGKn0wfexWnn7KWj9tH8O+Qk
         TueSMP3yAonEEoaFEJwdFl4vcmRRcF+xMja0IrQm8u0u/b1w1qcitkawNmIN9ghE3IfA
         oP5hlbE/uz5H1D0pwrcKfnRZnt9+psSGg2J+IzbIG8PK3F1vkQze9TIlDYwODUID0D16
         eKUA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="FNy/7DFb";
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id q13si98585pfc.6.2020.06.25.09.13.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Jun 2020 09:13:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Received: by mail-pl1-x644.google.com with SMTP id j4so2993482plk.3
        for <clang-built-linux@googlegroups.com>; Thu, 25 Jun 2020 09:13:47 -0700 (PDT)
X-Received: by 2002:a17:90a:7c4e:: with SMTP id e14mr4310401pjl.52.1593101626297;
        Thu, 25 Jun 2020 09:13:46 -0700 (PDT)
Received: from google.com ([2620:15c:201:2:ce90:ab18:83b0:619])
        by smtp.gmail.com with ESMTPSA id v7sm22710119pfn.147.2020.06.25.09.13.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Jun 2020 09:13:45 -0700 (PDT)
Date: Thu, 25 Jun 2020 09:13:39 -0700
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Kees Cook <keescook@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com, linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	x86@kernel.org
Subject: Re: [PATCH 02/22] kbuild: add support for Clang LTO
Message-ID: <20200625161339.GA173089@google.com>
References: <20200624203200.78870-1-samitolvanen@google.com>
 <20200624203200.78870-3-samitolvanen@google.com>
 <20200625022647.GB2871607@ubuntu-n2-xlarge-x86>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200625022647.GB2871607@ubuntu-n2-xlarge-x86>
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="FNy/7DFb";       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::644
 as permitted sender) smtp.mailfrom=samitolvanen@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

On Wed, Jun 24, 2020 at 07:26:47PM -0700, Nathan Chancellor wrote:
> Hi Sami,
> 
> On Wed, Jun 24, 2020 at 01:31:40PM -0700, 'Sami Tolvanen' via Clang Built Linux wrote:
> > This change adds build system support for Clang's Link Time
> > Optimization (LTO). With -flto, instead of ELF object files, Clang
> > produces LLVM bitcode, which is compiled into native code at link
> > time, allowing the final binary to be optimized globally. For more
> > details, see:
> > 
> >   https://llvm.org/docs/LinkTimeOptimization.html
> > 
> > The Kconfig option CONFIG_LTO_CLANG is implemented as a choice,
> > which defaults to LTO being disabled. To use LTO, the architecture
> > must select ARCH_SUPPORTS_LTO_CLANG and support:
> > 
> >   - compiling with Clang,
> >   - compiling inline assembly with Clang's integrated assembler,
> >   - and linking with LLD.
> > 
> > While using full LTO results in the best runtime performance, the
> > compilation is not scalable in time or memory. CONFIG_THINLTO
> > enables ThinLTO, which allows parallel optimization and faster
> > incremental builds. ThinLTO is used by default if the architecture
> > also selects ARCH_SUPPORTS_THINLTO:
> > 
> >   https://clang.llvm.org/docs/ThinLTO.html
> > 
> > To enable LTO, LLVM tools must be used to handle bitcode files. The
> > easiest way is to pass the LLVM=1 option to make:
> > 
> >   $ make LLVM=1 defconfig
> >   $ scripts/config -e LTO_CLANG
> >   $ make LLVM=1
> > 
> > Alternatively, at least the following LLVM tools must be used:
> > 
> >   CC=clang LD=ld.lld AR=llvm-ar NM=llvm-nm
> > 
> > To prepare for LTO support with other compilers, common parts are
> > gated behind the CONFIG_LTO option, and LTO can be disabled for
> > specific files by filtering out CC_FLAGS_LTO.
> > 
> > Note that support for DYNAMIC_FTRACE and MODVERSIONS are added in
> > follow-up patches.
> > 
> > Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> > ---
> >  Makefile                          | 16 ++++++++
> >  arch/Kconfig                      | 66 +++++++++++++++++++++++++++++++
> >  include/asm-generic/vmlinux.lds.h | 11 ++++--
> >  scripts/Makefile.build            |  9 ++++-
> >  scripts/Makefile.modfinal         |  9 ++++-
> >  scripts/Makefile.modpost          | 24 ++++++++++-
> >  scripts/link-vmlinux.sh           | 32 +++++++++++----
> >  7 files changed, 151 insertions(+), 16 deletions(-)
> > 
> > diff --git a/Makefile b/Makefile
> > index ac2c61c37a73..0c7fe6fb2143 100644
> > --- a/Makefile
> > +++ b/Makefile
> > @@ -886,6 +886,22 @@ KBUILD_CFLAGS	+= $(CC_FLAGS_SCS)
> >  export CC_FLAGS_SCS
> >  endif
> >  
> > +ifdef CONFIG_LTO_CLANG
> > +ifdef CONFIG_THINLTO
> > +CC_FLAGS_LTO_CLANG := -flto=thin $(call cc-option, -fsplit-lto-unit)
> > +KBUILD_LDFLAGS	+= --thinlto-cache-dir=.thinlto-cache
> > +else
> > +CC_FLAGS_LTO_CLANG := -flto
> > +endif
> > +CC_FLAGS_LTO_CLANG += -fvisibility=default
> > +endif
> > +
> > +ifdef CONFIG_LTO
> > +CC_FLAGS_LTO	:= $(CC_FLAGS_LTO_CLANG)
> > +KBUILD_CFLAGS	+= $(CC_FLAGS_LTO)
> > +export CC_FLAGS_LTO
> > +endif
> > +
> >  # arch Makefile may override CC so keep this after arch Makefile is included
> >  NOSTDINC_FLAGS += -nostdinc -isystem $(shell $(CC) -print-file-name=include)
> >  
> > diff --git a/arch/Kconfig b/arch/Kconfig
> > index 8cc35dc556c7..e00b122293f8 100644
> > --- a/arch/Kconfig
> > +++ b/arch/Kconfig
> > @@ -552,6 +552,72 @@ config SHADOW_CALL_STACK
> >  	  reading and writing arbitrary memory may be able to locate them
> >  	  and hijack control flow by modifying the stacks.
> >  
> > +config LTO
> > +	bool
> > +
> > +config ARCH_SUPPORTS_LTO_CLANG
> > +	bool
> > +	help
> > +	  An architecture should select this option if it supports:
> > +	  - compiling with Clang,
> > +	  - compiling inline assembly with Clang's integrated assembler,
> > +	  - and linking with LLD.
> > +
> > +config ARCH_SUPPORTS_THINLTO
> > +	bool
> > +	help
> > +	  An architecture should select this option if it supports Clang's
> > +	  ThinLTO.
> > +
> > +config THINLTO
> > +	bool "Clang ThinLTO"
> > +	depends on LTO_CLANG && ARCH_SUPPORTS_THINLTO
> > +	default y
> > +	help
> > +	  This option enables Clang's ThinLTO, which allows for parallel
> > +	  optimization and faster incremental compiles. More information
> > +	  can be found from Clang's documentation:
> > +
> > +	    https://clang.llvm.org/docs/ThinLTO.html
> > +
> > +choice
> > +	prompt "Link Time Optimization (LTO)"
> > +	default LTO_NONE
> > +	help
> > +	  This option enables Link Time Optimization (LTO), which allows the
> > +	  compiler to optimize binaries globally.
> > +
> > +	  If unsure, select LTO_NONE.
> > +
> > +config LTO_NONE
> > +	bool "None"
> > +
> > +config LTO_CLANG
> > +	bool "Clang's Link Time Optimization (EXPERIMENTAL)"
> > +	depends on CC_IS_CLANG && CLANG_VERSION >= 110000 && LD_IS_LLD
> 
> I am curious, what is the reason for gating this at clang 11.0.0?
> 
> Presumably this? https://github.com/ClangBuiltLinux/linux/issues/510
> 
> It might be nice to notate this so that we do not have to wonder :)

Yes, that's the reason. I'll add a note about it. Thanks!

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200625161339.GA173089%40google.com.
