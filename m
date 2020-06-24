Return-Path: <clang-built-linux+bncBAABBTNTZX3QKGQEQHZCK6I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3c.google.com (mail-vs1-xe3c.google.com [IPv6:2607:f8b0:4864:20::e3c])
	by mail.lfdr.de (Postfix) with ESMTPS id A841A2074DD
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 15:49:02 +0200 (CEST)
Received: by mail-vs1-xe3c.google.com with SMTP id 184sf1044942vsl.0
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 06:49:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593006541; cv=pass;
        d=google.com; s=arc-20160816;
        b=T1swRg342H4iK9DWNk53mXJ+dlxGYV7NuWr7Ztm/STeNIARv/NFTrcYdVI8f6iqmrP
         JAh7wh7IRG1ay6Fzyf4mX5YDTCYF7Q4cycIXuRDvZPFfBe4Kt4OLmyMWpZC6LSnlwa9M
         5JKToSRQu4/kqh9Zw5IeOK79jV0Ud39u5wqmC8An6ymq+P0DtwHj/EuH8zwprf6qgtGC
         TEJ0k+QJmMo2CP5Dc/70lNzT/7610sj0xY6GdmOdXPDkP7aIkBCMavOH+Ed06KhGXBUh
         mwSzEE8ONMTcgdd8nwNmwu/7K4vAu0s7pGFm6ysiQp7OhkHKd3+e5LoZUmqUyNyyYbZw
         eCTQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=DsQ8+Dm/fgRrcOoXcvybR679tjPx4bH8AffPUfCIu3A=;
        b=mQf9cpgOPo+f78/xVBRqzzS2Cn9swZMG8aD0oBOOjp7VTp/7pNFpjB1l8M6VkSTSy4
         iVRVfXLCecopH65AZbwM9zl6dbqRLos5ybpBaU4BKzGtoeVIjY/eUR1p/OAY4yvMT4mK
         d6nuE5d6iFEzYQsq2LT0S/iCYUggF1qMjynWbLVn8gBbIHdd/GWPsYmLAIZ+ND4xT68M
         zh/hwHW59YI5UtHPqKxv5jI+OslzkmrB8xGHBC+wAmYhYrEMGPXcnh6xldWWljw8ojzs
         Htl5/NNyelkkA4iFdz301ymPni1YYmXivgbA+eTMIPGrg/71bOF6RvXp9c/xyn2j8gKX
         PzFA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of dave.martin@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=Dave.Martin@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=DsQ8+Dm/fgRrcOoXcvybR679tjPx4bH8AffPUfCIu3A=;
        b=crpGx2nfgXLIuSFaQOiBDIeZB0uB/cGLA2HD3Wt5nKqRnvIzRFtAAma5TxEtDyyYGF
         jDNK2l61Y4pHf4Zgp071fHHgwy9QYfpowMV7L+jTaGwZWGPgtYlSTYTmewsABA1UPBJJ
         mhhu5tJTcAugCzbB+4MUyv9Eq866D2hTUHeJxLHfDj1DX8i5qbhH58werIQAAOPSRCFd
         5NumzFPYXh9qGqy6rgblsmRy1vMvcE3ngrhTfEFOaq7XoY7YEyJ53uhlrkpQ3giSfV74
         WIUTtTiC8dvBTKipWbW9w8dv5/S5AfRe/WwPr4m43cGjVOKQJFmKyJywL1HViiNpNRvn
         /NKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=DsQ8+Dm/fgRrcOoXcvybR679tjPx4bH8AffPUfCIu3A=;
        b=YUsDw19pI0w991OmJTYrl0YPGd/yyFjiDlG3m3nOZHo4ihoU9qPk9Rex7Vtb8WE9/F
         ZZBrDHiqJuC6BEJGdfWmsLWD6bAuKxFmtgW1OpUflN07ti2QAcJv/rV4mw+L6IsoOzTw
         A2iH6OpAZuvxh2737jO74AA+taMLZGrFMG80AzUKiW1zessUKglSEgulTIpUXCflkLZ3
         hFUGf7D+IyCpF3ikwMapcX93xlXqvbi25AoXhnR4tRn1zJT0aafKsyFOpNR0d2zqsCZH
         euM3FUeXFihi9uqslJlgPgcjQECVL0sfU/kVRkvX1/Hx0IKpFiIAKhTTC3eCGVeCJYmn
         lbYw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Ub/V/brpr6aP6uv+Xy2MRmgEviMdrIm+/K8DBBEluGlMFygNw
	wOOvGjDmSgPo7oV1YjprtE4=
X-Google-Smtp-Source: ABdhPJzFWX7rKvtJIqOAAG8b5iXwWZDc4MxITEAFGiCfvGPx9wdyHF02PJmS+F0nk3ustAh6uyP4iw==
X-Received: by 2002:ab0:648e:: with SMTP id p14mr19218488uam.14.1593006541343;
        Wed, 24 Jun 2020 06:49:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:fdd7:: with SMTP id l23ls269292vsq.4.gmail; Wed, 24 Jun
 2020 06:49:01 -0700 (PDT)
X-Received: by 2002:a67:e90e:: with SMTP id c14mr24958220vso.185.1593006540965;
        Wed, 24 Jun 2020 06:49:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593006540; cv=none;
        d=google.com; s=arc-20160816;
        b=SbPPD7wQASnG5gEIEP5VnljsfOTTagbFyuLSoMCkYajsWErsllPwYrmWuEJOCAfFtU
         B5453Wc9ouCWYSSGullaQ/zz3OOkHA4RKlq7kM/ndBcBoeG+f5aXBGWwKidc6XFz62Hy
         /baVXyIbrhmYlmj5cFwoMq5/tx4nZKDqSQXvxhlM9/VZqCcDZZutFsImXPcqIcmbVF2U
         Kd/rLb03fw76ZqbT5hw6UsE4Sk1+/omJqAwwh2G3XSzDoAXqu4hzeOngObr3sA1Vew+R
         5ObWAwcGWbdYj6/DmHnKX+lrtwAmoyIM3qAmYiCb7RJ9sVbNOJ1yKyncu9Jy65euFw76
         j5MQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=QJl0ICDfUrXmXoP6VK70zTy+gh2G1ZiyLGrAGyJ7tH0=;
        b=c9HQj3HXrk6KaqHshsHbwfFHURsYa0NlkFmS579URkkB/3OKzHC1EyT/9KHho1uLgG
         uIVQOwj1lPtK8/iRGfcC6LZ7s/xnLlkW5H9LFoVYDT5ByENXiZSrttAj7GsFtZGL3EKo
         yor9kwIzPCIp+4bizsRtn4DTkn00IR3rqIXQysB2a781lSfh6vOcZofp5KVej0WuL3EC
         n7XjFuHRhSchSvp4IPIiaVwn8NWFC/K9B7yPS+JCB9WU2L+O3kV+QqH08K0n4OQ9+/Nj
         RVbNP2ZzagVIO6bgKpHtPbLrd5jxVzE1Sfs7FA5InZ6F8fO7Tz7KvOWx+F2whNR7UsBs
         O7xg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of dave.martin@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=Dave.Martin@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id t24si1309361uaq.0.2020.06.24.06.49.00
        for <clang-built-linux@googlegroups.com>;
        Wed, 24 Jun 2020 06:49:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of dave.martin@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2F21631B;
	Wed, 24 Jun 2020 06:49:00 -0700 (PDT)
Received: from arm.com (usa-sjc-imap-foss1.foss.arm.com [10.121.207.14])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 6E3913F6CF;
	Wed, 24 Jun 2020 06:48:57 -0700 (PDT)
Date: Wed, 24 Jun 2020 14:48:55 +0100
From: Dave Martin <Dave.Martin@arm.com>
To: Will Deacon <will@kernel.org>
Cc: Ard Biesheuvel <ardb@kernel.org>, Mark Rutland <mark.rutland@arm.com>,
	linux-arch <linux-arch@vger.kernel.org>,
	linux-efi <linux-efi@vger.kernel.org>,
	Kees Cook <keescook@chromium.org>,
	Fangrui Song <maskray@google.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Masahiro Yamada <masahiroy@kernel.org>, X86 ML <x86@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Russell King <linux@armlinux.org.uk>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Ingo Molnar <mingo@redhat.com>, James Morse <james.morse@arm.com>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	Thomas Gleixner <tglx@linutronix.de>, Borislav Petkov <bp@suse.de>,
	Peter Collingbourne <pcc@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>
Subject: Re: [PATCH v3 3/9] efi/libstub: Remove .note.gnu.property
Message-ID: <20200624134854.GF25945@arm.com>
References: <20200624014940.1204448-1-keescook@chromium.org>
 <20200624014940.1204448-4-keescook@chromium.org>
 <20200624033142.cinvg6rbg252j46d@google.com>
 <202006232143.66828CD3@keescook>
 <20200624104356.GA6134@willie-the-truck>
 <CAMj1kXHBT4ei0xhyL4jD7=CNRsn1rh7w6jeYDLjVOv4na0Z38Q@mail.gmail.com>
 <20200624112647.GC6134@willie-the-truck>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200624112647.GC6134@willie-the-truck>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Original-Sender: dave.martin@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of dave.martin@arm.com designates 217.140.110.172 as
 permitted sender) smtp.mailfrom=Dave.Martin@arm.com
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

On Wed, Jun 24, 2020 at 12:26:47PM +0100, Will Deacon wrote:
> On Wed, Jun 24, 2020 at 12:46:32PM +0200, Ard Biesheuvel wrote:
> > On Wed, 24 Jun 2020 at 12:44, Will Deacon <will@kernel.org> wrote:
> > > On Tue, Jun 23, 2020 at 09:44:11PM -0700, Kees Cook wrote:
> > > > On Tue, Jun 23, 2020 at 08:31:42PM -0700, 'Fangrui Song' via Clang Built Linux wrote:
> > > > > arch/arm64/Kconfig enables ARM64_PTR_AUTH by default. When the config is on
> > > > >
> > > > > ifeq ($(CONFIG_ARM64_BTI_KERNEL),y)
> > > > > branch-prot-flags-$(CONFIG_CC_HAS_BRANCH_PROT_PAC_RET_BTI) := -mbranch-protection=pac-ret+leaf+bti
> > > > > else
> > > > > branch-prot-flags-$(CONFIG_CC_HAS_BRANCH_PROT_PAC_RET) := -mbranch-protection=pac-ret+leaf
> > > > > endif
> > > > >
> > > > > This option creates .note.gnu.property:
> > > > >
> > > > > % readelf -n drivers/firmware/efi/libstub/efi-stub.o
> > > > >
> > > > > Displaying notes found in: .note.gnu.property
> > > > >   Owner                Data size        Description
> > > > >   GNU                  0x00000010       NT_GNU_PROPERTY_TYPE_0
> > > > >       Properties: AArch64 feature: PAC
> > > > >
> > > > > If .note.gnu.property is not desired in drivers/firmware/efi/libstub, specifying
> > > > > -mbranch-protection=none can override -mbranch-protection=pac-ret+leaf
> > > >
> > > > We want to keep the branch protection enabled. But since it's not a
> > > > "regular" ELF, we don't need to keep the property that identifies the
> > > > feature.
> > >
> > > For the kernel Image, how do we remove these sections? The objcopy flags
> > > in arch/arm64/boot/Makefile look both insufficient and out of date. My
> > > vmlinux ends up with both a ".notes" and a ".init.note.gnu.property"
> > > segment.
> > >
> > 
> > The latter is the fault of the libstub make rules, that prepend .init
> > to all section names.
> 
> Hmm. I tried adding -mbranch-protection=none to arm64 cflags for the stub,
> but I still see this note in vmlinux. It looks like it comes in via the
> stub copy of lib-ctype.o, but I don't know why that would force the
> note. The cflags look ok to me [1] and I confirmed that the note is
> being generated by the compiler.
> 
> > I'm not sure if there is a point to having PAC and/or BTI in the EFI
> > stub, given that it runs under the control of the firmware, with its
> > memory mappings and PAC configuration etc.
> 
> Agreed, I just can't figure out how to get rid of the note.

Because this section is generated by the linker itself I think you might
have to send it to /DISCARD/ in the link, or strip it explicitly after
linking.

Cheers
---Dave

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200624134854.GF25945%40arm.com.
