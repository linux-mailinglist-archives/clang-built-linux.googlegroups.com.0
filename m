Return-Path: <clang-built-linux+bncBC2ORX645YPRBA4H5H5AKGQEISMHSIY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83b.google.com (mail-qt1-x83b.google.com [IPv6:2607:f8b0:4864:20::83b])
	by mail.lfdr.de (Postfix) with ESMTPS id 35BC126489E
	for <lists+clang-built-linux@lfdr.de>; Thu, 10 Sep 2020 17:17:25 +0200 (CEST)
Received: by mail-qt1-x83b.google.com with SMTP id a16sf4363517qtj.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 10 Sep 2020 08:17:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599751044; cv=pass;
        d=google.com; s=arc-20160816;
        b=yOYUVSzytCVOoTOJISb3N9BzpkTny42eIMhqpfArbg1guGwlq5/eaZUR1JN8fMXMBo
         vTbCsYy/4iFgQ7wNOG7h2aLrSzuO/Zp7QCnFke4A3p3GMA3K4OBktJQ1DheIVzep8QWS
         gTssyvjTtMvk8MbvNmHt/zdJicOJtOJPXdxKQfKGijHAWt+DUDXBusaHVSGIQr8jSxed
         uPeE1hWYfnt/e+UZPDm9tQaugGC/ZXxYEyY+5RFry2QEcrNjKjbWesEcYkbCmbyV2899
         9nIkMrf5yUA2q2e1hYTD6BSX6ZKu0Ew7eRBgzWsUVQcV77oX1ewOGlCI464VMWBc2Adr
         M6Zw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=XlAcrrWGivJn0xs8ayvaKmTWgO6KfIHHYykzd+zpjik=;
        b=af1bkgueA4hLI0APbFK3QsOCn54jpwnc/Mf6s3qQl0VAcGQIWFZqE/Ndtw3a3EwvD0
         plY8/SOr0c/ww2eGFqyT60PMSYK+S5DbUM0IACoWeHDEFqpLX02EbGDx42pFGqaVQgaC
         3EtdjDmYk/V8/iRMI+FGg1BnwGhnic1Y3ENbZw4COTHnHQw41F1Y0AM9dHxmyjgpEb8I
         qAz1YyAMGeQHlau7FtYBkrmIf4T7XL7Q1E4MSVQnnyKxspTUG64yUFAcZZpUgBCWjbiV
         VWYr0WJsx9UUR5H03Ou8G4NiELVnAM4gRkAzCZhYXy1lWsljh4oA5I/AIj0qoGQsmFw0
         yM0g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=DChiCwze;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=XlAcrrWGivJn0xs8ayvaKmTWgO6KfIHHYykzd+zpjik=;
        b=BtoI3RrFLzB3nutkOC3+BmW64SlSPhzeJ5PF5tFBWD86ZlvQluQmCPW2Y1kni+UcJT
         ik8ISOuZd6dXFq5UYJTBSiAAhDF6Iy8Ts3YZid6oMT+Zqm9xsPfzFkErNAWGIUng/0ax
         m3AwleXAG1kUZKd1S2H7nNoxopK+fsDjgjaXkIxPuHo2kuNjshAP/+sbCbdUy2DXrroH
         206YNKVEAt6xEzV7ZkNXmOWIpDto/J8omFRpXB8/hiUepBr5MdBVF80rp2c/pqOu72Pl
         Kl2Bi5L01/Bp/tUouEMJ38TSzLre7j0iZkxDY3loyv27R1ixg99DoGLAUuasay94ILNH
         WJRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XlAcrrWGivJn0xs8ayvaKmTWgO6KfIHHYykzd+zpjik=;
        b=mUINAmfux6QRxDiRticDhu/tRxHpLtNar+aU77rJ5D2RNggCxhgfucv5q1c1LYW9EG
         O8L7NMm2rPyjFpQiC/dWmoWaz/PUefJzJ0pgmNFsBcXSXrONYajWG4iVuu2QS4gm44Zk
         XA4n/YS6DDJ8fuNd56otz8HOEpIDYLEO4hgqdd4BxWrMrSC6RDjk2QSVD3jxLLFf76CD
         sIxdaHQOJhSWxPKNjxaOlh+mzcrOGjXQcGiit/zlquBe1eVh/WzpqxJfrsyz4L2o+S4f
         p3mNSwc3phd8eWuiW8MPbFzX7livK8bgRRZpAy5ZfsEOdDDO52Fg4pAJGrc0f3DiDJ+3
         JCeA==
X-Gm-Message-State: AOAM530KeXMoNXsn/c7yKJnMzxgE5YUBfjOugBF7r39eMB87n2qy55pw
	0r2dV+ZeF/NQSv8RfxmR9lo=
X-Google-Smtp-Source: ABdhPJzVO8Xd1KwGtPFaKqdZXbvItFuWCDntpkcXP07T5m3XLcpEdCqvC2Yjt4vDFsOvR6lJS6lbqg==
X-Received: by 2002:a37:952:: with SMTP id 79mr8260663qkj.57.1599751043978;
        Thu, 10 Sep 2020 08:17:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:b987:: with SMTP id j129ls3211760qkf.5.gmail; Thu, 10
 Sep 2020 08:17:23 -0700 (PDT)
X-Received: by 2002:a05:620a:16b5:: with SMTP id s21mr8613794qkj.281.1599751043436;
        Thu, 10 Sep 2020 08:17:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599751043; cv=none;
        d=google.com; s=arc-20160816;
        b=gkGztulpRg/UMYqXq4M6WT5MVfPBdHtIkil7CcWKAXb25HFHmokXSzEZ2LJEUwRPhT
         9J56Ltlscg/hnpTFnoGr3JOFlCM4elGh9fNA4eHb/EpwB4Ad1EPNEoXZtQpUqxI9V5uq
         pAm2AosXok7QhYkBJ36+Mk/hcy0xk984/SChf179rrrqKqf5GponqgdqWEak5sA5d/GE
         VDtDvzl42Ue04wI4ZfR1wtV1X2yg73EJm+paqUK/cBXcYhSV8pyXSX32j7w7764Vxj57
         5TQEy7PI8RoPU4UPGaLSJaMUviSpIZJaGul/W1RPNq+5ZNxm91XM+NDSFWzSxxMQqfr/
         7TNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=tPQ89cuIIRpR65Gxj5ecjevE7KdkPR+rkFKg2EWJ1Wo=;
        b=rh2w6OCldG89EeZeGi4JcYJl64Mo+3cjIi25Zue2gQ0bQ9UTNcpEeLqqzO3ewmTwn6
         DceaP1tM1S9bD5OFzXkgtPpz5cOWKaEbE3MmqcKXd3+YjSJG65gniF2W7XZXvVkRjMcF
         3tlIixOhPTuol0zN//xc0UxkEy7YX0nPaDIfLEpKR/UaS/FJZ/GWH2deB0gMn08nCZhR
         wVXVnboYs+4IFvcCHS0AIyFsSa4MYoNiykRMo2csMEJ+fRx1vN0TK8uJL+A5Mr7CxcAz
         naWTXv2kGNzNli6qgBQrK/fUkoOVJUfXPU1LafrYzOCjt46Ctyv5d8aYmP0AiYWR08bZ
         VhYg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=DChiCwze;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id q5si379837qkc.2.2020.09.10.08.17.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Sep 2020 08:17:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Received: by mail-pl1-x644.google.com with SMTP id j7so1073322plk.11
        for <clang-built-linux@googlegroups.com>; Thu, 10 Sep 2020 08:17:23 -0700 (PDT)
X-Received: by 2002:a17:90b:1915:: with SMTP id mp21mr407790pjb.116.1599751042106;
        Thu, 10 Sep 2020 08:17:22 -0700 (PDT)
Received: from google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
        by smtp.gmail.com with ESMTPSA id z23sm5241512pgv.57.2020.09.10.08.17.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Sep 2020 08:17:20 -0700 (PDT)
Date: Thu, 10 Sep 2020 08:17:15 -0700
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
Subject: Re: [PATCH v2 00/28] Add support for Clang LTO
Message-ID: <20200910151715.GB2041735@google.com>
References: <20200624203200.78870-1-samitolvanen@google.com>
 <20200903203053.3411268-1-samitolvanen@google.com>
 <CAK7LNASDUkyJMDD0a5K_HT=1q5NEc6dcN4=FUb330yK0BCKcTw@mail.gmail.com>
 <20200908234643.GF1060586@google.com>
 <CAK7LNAR9zzP0ZU3b__PZv8gRtKrwz6-8GE1zG5UyFx1wDpOBzQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAK7LNAR9zzP0ZU3b__PZv8gRtKrwz6-8GE1zG5UyFx1wDpOBzQ@mail.gmail.com>
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=DChiCwze;       spf=pass
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

On Thu, Sep 10, 2020 at 10:18:05AM +0900, Masahiro Yamada wrote:
> On Wed, Sep 9, 2020 at 8:46 AM Sami Tolvanen <samitolvanen@google.com> wrote:
> >
> > On Sun, Sep 06, 2020 at 09:24:38AM +0900, Masahiro Yamada wrote:
> > > On Fri, Sep 4, 2020 at 5:30 AM Sami Tolvanen <samitolvanen@google.com> wrote:
> > > >
> > > > This patch series adds support for building x86_64 and arm64 kernels
> > > > with Clang's Link Time Optimization (LTO).
> > > >
> > > > In addition to performance, the primary motivation for LTO is
> > > > to allow Clang's Control-Flow Integrity (CFI) to be used in the
> > > > kernel. Google has shipped millions of Pixel devices running three
> > > > major kernel versions with LTO+CFI since 2018.
> > > >
> > > > Most of the patches are build system changes for handling LLVM
> > > > bitcode, which Clang produces with LTO instead of ELF object files,
> > > > postponing ELF processing until a later stage, and ensuring initcall
> > > > ordering.
> > > >
> > > > Note that patches 1-4 are not directly related to LTO, but are
> > > > needed to compile LTO kernels with ToT Clang, so I'm including them
> > > > in the series for your convenience:
> > > >
> > > >  - Patches 1-3 are required for building the kernel with ToT Clang,
> > > >    and IAS, and patch 4 is needed to build allmodconfig with LTO.
> > > >
> > > >  - Patches 3-4 are already in linux-next, but not yet in 5.9-rc.
> > > >
> > >
> > >
> > > I still do not understand how this patch set works.
> > > (only me?)
> > >
> > > Please let me ask fundamental questions.
> > >
> > >
> > >
> > > I applied this series on top of Linus' tree,
> > > and compiled for ARCH=arm64.
> > >
> > > I compared the kernel size with/without LTO.
> > >
> > >
> > >
> > > [1] No LTO  (arm64 defconfig, CONFIG_LTO_NONE)
> > >
> > > $ llvm-size   vmlinux
> > >    text    data     bss     dec     hex filename
> > > 15848692 10099449 493060 26441201 19375f1 vmlinux
> > >
> > >
> > >
> > > [2] Clang LTO  (arm64 defconfig + CONFIG_LTO_CLANG)
> > >
> > > $ llvm-size   vmlinux
> > >    text    data     bss     dec     hex filename
> > > 15906864 10197445 490804 26595113 195cf29 vmlinux
> > >
> > >
> > > I compared the size of raw binary, arch/arm64/boot/Image.
> > > Its size increased too.
> > >
> > >
> > >
> > > So, in my experiment, enabling CONFIG_LTO_CLANG
> > > increases the kernel size.
> > > Is this correct?
> >
> > Yes. LTO does produce larger binaries, mostly due to function
> > inlining between translation units, I believe. The compiler people
> > can probably give you a more detailed answer here. Without -mllvm
> > -import-instr-limit, the binaries would be even larger.
> >
> > > One more thing, could you teach me
> > > how Clang LTO optimizes the code against
> > > relocatable objects?
> > >
> > >
> > >
> > > When I learned Clang LTO first, I read this document:
> > > https://llvm.org/docs/LinkTimeOptimization.html
> > >
> > > It is easy to confirm the final executable
> > > does not contain foo2, foo3...
> > >
> > >
> > >
> > > In contrast to userspace programs,
> > > kernel modules are basically relocatable objects.
> > >
> > > Does Clang drop unused symbols from relocatable objects?
> > > If so, how?
> >
> > I don't think the compiler can legally drop global symbols from
> > relocatable objects, but it can rename and possibly even drop static
> > functions.
> 
> 
> Compilers can drop static functions without LTO.
> Rather, it is a compiler warning
> (-Wunused-function), so the code should be cleaned up.
> 
> 
> 
> > This is why we need global wrappers for initcalls, for
> > example, to have stable symbol names.
> >
> > Sami
> 
> 
> 
> At first, I thought the motivation of LTO
> was to remove unused global symbols, and
> to perform further optimization.
> 
> 
> It is true for userspace programs.
> In fact, the example of
> https://llvm.org/docs/LinkTimeOptimization.html
> produces a smaller binary.
> 
> 
> In contrast, this patch set produces a bigger kernel
> because LTO cannot remove any unused symbol.
> 
> So, I do not understand what the benefit is.
> 
> 
> Is inlining beneficial?
> I am not sure.
> 
> 
> Documentation/process/coding-style.rst
> "15) The inline disease"
> mentions that inlining is not always
> a good thing.
> 
> 
> As a whole, I still do not understand
> the motivation of this patch set.

Clang produces faster code with LTO even if unused functions are not
removed, and I'm not sure how many unused globals there really are in
the kernel that aren't exported for modules. However, as I mentioned in
the cover letter, we also need LTO for Control-Flow Integrity (CFI),
which we have used in Pixel kernels for a couple of years now, and plan
to use in more Android devices in future:

  https://clang.llvm.org/docs/ControlFlowIntegrity.html

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200910151715.GB2041735%40google.com.
