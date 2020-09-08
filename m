Return-Path: <clang-built-linux+bncBC2ORX645YPRB2XX335AKGQE4RS3JDY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb40.google.com (mail-yb1-xb40.google.com [IPv6:2607:f8b0:4864:20::b40])
	by mail.lfdr.de (Postfix) with ESMTPS id 13809261691
	for <lists+clang-built-linux@lfdr.de>; Tue,  8 Sep 2020 19:14:20 +0200 (CEST)
Received: by mail-yb1-xb40.google.com with SMTP id a6sf5225134ybr.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 08 Sep 2020 10:14:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599585259; cv=pass;
        d=google.com; s=arc-20160816;
        b=S/jPGGMBW3iCWQjBoM94p8Nm39S25vKtZh5450GlG7KtXBT8tDVuzQfi2SqGNWw9G8
         vA+Cv4jdSQyFz8ZYlzijjk00eGmXduxBqxTOW2Akys1bisah0SGPZbb+Galj+1ry8acv
         EB/MrgcLuBM8JB13tlJEXGnQeJJpWXOqe0OtJ6cP0cWQSvN1Riqq/62FrXjRLp53LX0V
         ou3rN/vVZ/qyqGudqt8LIY11yCnNrMBw1TWPXJXjMHrBoW2v2sWIbfnDOZIZkPil7CaK
         3BYCCwZTRVgNnljdREvUcWrwAbl4ilBiYFUEzJOG9OjwtHTcTppUEs5sswje871YMPGL
         PZXQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=UuEb0/B0fv+dOZM3TESS8gkktW8SNJzc11uG1lKc+/4=;
        b=AX4SPN0+ACkJXL7+uvWrz4csvMJvNebm2u13QoKkseIqVZQYdLEMB59HaMfGTWjb4b
         UjjtjToiwRSVsG14FrwhBXZ9xScNjJUbdbv+8O994rLFgcC4LaN2CKD516J4M+v2rkqf
         TkJ3WN2Mx+43bt52SLGTin85VgwLJrq2IqlPy8++emKBa7HdA7HIYCmqj8u9cj8poRw6
         Nksx5EEGcej+YqJ5pCEL4GhQqXQHZbZpPOGrBbKDAfAI/wzdafcOlVwoRHOUGNW9vy55
         Ai4kpussndqJqPvVjQ55muufzNZhzgHwHCHyGISmSKCpQ3LQWXxS84ZW1arHLXM56X3u
         u+dg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=l8TFfPPi;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=UuEb0/B0fv+dOZM3TESS8gkktW8SNJzc11uG1lKc+/4=;
        b=BGvnNKsxz5FOh5xRm9fBOEfDcQS/v4Btq7RdJNmX/5pNN4MFKeAABMZbzsupuxMORp
         sid8sl/BGSPXgtiSFemEaXpKFHOfQRBhhuep3lPm4UqBVfqfpzbvDcPR20QFjfrpQJMd
         EaSi+27HdcMjcFZqiHKm9ESbDedOGpMTO8k4sh1bO5XlXEeaYisoAt90mV8v/H/As6MK
         nZSMopHcmzSR/EugCTfTDSDO5p1ormhuGQ6J6jcy/3M+jp3WGfajIk6lzIlNlX1M39EO
         YHXwIFc4Mu/yzUexzbdx2zdRhqzkCuegENSFrZ+P33p6Vkj2qzpLdjyeNLycpa07Mc9V
         Px2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UuEb0/B0fv+dOZM3TESS8gkktW8SNJzc11uG1lKc+/4=;
        b=QMDs7f5Zm3SeUOxYMex/7tEc8ilnRAq6YW/k0Q1UXUBBRZOSRNb73NAVTYBFLh21G4
         fHFsJmC1zbsTgo1HOhgzMZvaWzqaW2cq8A3TGwISvLB4vS9zh3YmUADdmQKzt9V8tcBz
         8bNFCwC0WCfSwEm+57cRpT5JBWmSFD+QMnNfwxzNbxkdR+wm/Dsn30vPwHVleSaiXvKC
         MQ6+EsFO6s8871vWt1Yn/mvBltybhfKRLBl4CMnEmBbeoKaLj7yyPWxlX92HbBKs+Xkn
         eHECpimnGIoX933jQlwdWhX8Cp1gpKQ3X+96Q+2ARl3McwGF6PrbEvPOnZlyB2tm/WzV
         yUfg==
X-Gm-Message-State: AOAM531HR6NtWzZe19jl1cmea6wPMY43bkThWhD/CEpna7XDwB8Df6E9
	+p/Rbgtaos22mImxQnusbzM=
X-Google-Smtp-Source: ABdhPJzQ4rEYq/t0RVj4KgvflWRzjGiM1MxJfE31qInkYf+BkqvJOnoFwE50PpJMLDd7hqDNb/jl6g==
X-Received: by 2002:a25:750a:: with SMTP id q10mr891449ybc.185.1599585259085;
        Tue, 08 Sep 2020 10:14:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:1042:: with SMTP id 63ls4366511ybq.11.gmail; Tue, 08 Sep
 2020 10:14:18 -0700 (PDT)
X-Received: by 2002:a05:6902:1029:: with SMTP id x9mr898685ybt.21.1599585258600;
        Tue, 08 Sep 2020 10:14:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599585258; cv=none;
        d=google.com; s=arc-20160816;
        b=btmGXTVrxvIFPelkQAWWf3g8d5HXu2pRVXYFUSRYmYiQw6kNrd78YIAqcKtKiFSFrF
         akX4w2fhKDsRE0YHe20I58mpDS6uTTHpFcDKpm/Q2ZP5KLfjJR0KQxF1VP2C5x+kQ6i5
         BRtPJsimR7HX/RkKnrekSCnuA0B+j4MdqhpLnAeW4ZhVMm0Tl/ilsAmZRzWPcBB0RPNk
         O8sfH7cUnyVklc3Mx7hjQHvm13apfTpIPHSCERPTw+7fUG4S84qnMinOg2XO6gHt4L+u
         ZUW3D5f4BZGY4fIRBGoy8Lnf5SIsrdWOt7PJTDqoxxqRT9kwtcGK5x1WF7xtsoCFkuuU
         SUqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=/gCc+KLpNK9ExlVMZwWTulckz89Pa9STYRhLISVmRXE=;
        b=k4Qc7M/pUn7CpNcLpjSBhvqtOzvVJOlVNn+/hxHBwhLxhwX55kJui31d27FfFxtL01
         iQTmocIbaZzhMqrclf99G4sapEeV4dxvtax7uV5zykU878E77VUih4B2zMPXEV7/CGYJ
         sbmoQe/xLr5Q9WJzRfCP1cuugIOdN2V1kOVrRwsKz6DwseFlwHShgdlQqGdDYtM5qDWM
         HTpfw+UuFnBMwnTo9L/OHvS9qM5kdXxGuOeoxExy2ELdixeYYPUBG2uUNZONa4uSuoUZ
         3Y6Vuyfu1DM0TbCXEwGuUsCNOO13fGP5FaFSbLhuQPXJ2q54A+Fe1Su/BVPeJrIYaEio
         xdLw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=l8TFfPPi;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com. [2607:f8b0:4864:20::1041])
        by gmr-mx.google.com with ESMTPS id 192si7889ybn.0.2020.09.08.10.14.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Sep 2020 10:14:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::1041 as permitted sender) client-ip=2607:f8b0:4864:20::1041;
Received: by mail-pj1-x1041.google.com with SMTP id mm21so51063pjb.4
        for <clang-built-linux@googlegroups.com>; Tue, 08 Sep 2020 10:14:18 -0700 (PDT)
X-Received: by 2002:a17:90a:ea0c:: with SMTP id w12mr105528pjy.65.1599585257422;
        Tue, 08 Sep 2020 10:14:17 -0700 (PDT)
Received: from google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
        by smtp.gmail.com with ESMTPSA id z18sm9322pfn.186.2020.09.08.10.14.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Sep 2020 10:14:16 -0700 (PDT)
Date: Tue, 8 Sep 2020 10:14:11 -0700
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Will Deacon <will@kernel.org>, Peter Zijlstra <peterz@infradead.org>,
	Steven Rostedt <rostedt@goodmis.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Kees Cook <keescook@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Kernel Hardening <kernel-hardening@lists.openwall.com>,
	linux-arch <linux-arch@vger.kernel.org>,
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	linux-pci@vger.kernel.org, X86 ML <x86@kernel.org>
Subject: Re: [PATCH v2 09/28] kbuild: add support for Clang LTO
Message-ID: <20200908171411.GC2743468@google.com>
References: <20200624203200.78870-1-samitolvanen@google.com>
 <20200903203053.3411268-1-samitolvanen@google.com>
 <20200903203053.3411268-10-samitolvanen@google.com>
 <CAK7LNASTtxJ7OCMM_KxmaoSL3CDfTY-65Pu=-MYkMo7iz-_NOQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAK7LNASTtxJ7OCMM_KxmaoSL3CDfTY-65Pu=-MYkMo7iz-_NOQ@mail.gmail.com>
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=l8TFfPPi;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::1041
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

On Sun, Sep 06, 2020 at 05:17:32AM +0900, Masahiro Yamada wrote:
> On Fri, Sep 4, 2020 at 5:31 AM Sami Tolvanen <samitolvanen@google.com> wrote:
> >
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
> >  Makefile                          | 18 +++++++-
> >  arch/Kconfig                      | 68 +++++++++++++++++++++++++++++++
> >  include/asm-generic/vmlinux.lds.h | 11 +++--
> >  scripts/Makefile.build            |  9 +++-
> >  scripts/Makefile.modfinal         |  9 +++-
> >  scripts/Makefile.modpost          | 24 ++++++++++-
> >  scripts/link-vmlinux.sh           | 32 +++++++++++----
> >  7 files changed, 154 insertions(+), 17 deletions(-)
> >
> > diff --git a/Makefile b/Makefile
> > index a9dae26c93b5..dd49eaea7c25 100644
> > --- a/Makefile
> > +++ b/Makefile
> > @@ -909,6 +909,22 @@ KBUILD_CFLAGS      += $(CC_FLAGS_SCS)
> >  export CC_FLAGS_SCS
> >  endif
> >
> > +ifdef CONFIG_LTO_CLANG
> > +ifdef CONFIG_THINLTO
> > +CC_FLAGS_LTO_CLANG := -flto=thin -fsplit-lto-unit
> > +KBUILD_LDFLAGS += --thinlto-cache-dir=.thinlto-cache
> > +else
> > +CC_FLAGS_LTO_CLANG := -flto
> > +endif
> > +CC_FLAGS_LTO_CLANG += -fvisibility=default
> > +endif
> > +
> > +ifdef CONFIG_LTO
> > +CC_FLAGS_LTO   := $(CC_FLAGS_LTO_CLANG)
> 
> 
> $(CC_FLAGS_LTO_CLANG) is not used elsewhere.
> 
> Why didn't you add the flags to CC_FLAGS_LTO
> directly?
> 
> Will it be useful if LTO_GCC is supported ?

The idea was to allow compiler-specific LTO flags to be filtered out
separately if needed, but you're right, this is not really necessary
right now. I'll drop CC_FLAGS_LTO_CLANG in v3.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200908171411.GC2743468%40google.com.
