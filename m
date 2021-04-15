Return-Path: <clang-built-linux+bncBDYJPJO25UGBBTG64GBQMGQEU3LQ2XI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33e.google.com (mail-wm1-x33e.google.com [IPv6:2a00:1450:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id 76AD8361072
	for <lists+clang-built-linux@lfdr.de>; Thu, 15 Apr 2021 18:52:28 +0200 (CEST)
Received: by mail-wm1-x33e.google.com with SMTP id 26-20020a05600c021ab029012e366eff83sf753501wmi.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 15 Apr 2021 09:52:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618505548; cv=pass;
        d=google.com; s=arc-20160816;
        b=W/bF6iBKqSsCSSfIBArai92FSHRiqnG87Kw0fPwqz8wYl+DZoBjj6bUMumm3SzloFa
         w+ALzbhxxGzUY2mIHOV42tScIc6KPPvNinx6OM371PsFHkIrN/NKg5pjCu/q4Fjy/6gg
         U9PQpaWLAINHuqTiMCKmzGOj1qvjq8ZUpgWe1Uz8vwPg/uyiqsV26mPaFg27xZInrzC0
         2ZPFlhXDZu6UBHyD0Wik/v0HCPvmR8721Wjq1BLVZq7vijBss6OtP8WeEtNgkYbh3/C3
         1MUGFaQ68fXl41sBtuOoZs9o5DX+shfo047XvWYVq8wGCkiUVPdoTMQ2b4ReSAEk2+JF
         o2QA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=1sbuDbzhvlwqX/5fpxWKO3vxr48l0nM5pRFxqBLR7og=;
        b=dWdPkWr8U3KFYNFxviWMVtFKSndYOxDhYivf0ZHS8NauNgzV0V7tP8po3JSC7AEgkw
         yoMEQ8U+70VyN3oKo3jG/StW0EX7wGx6NjuP8vciWxwC6i8jqfAOu1OUskQ5rIsjp9j2
         DfA0Y+YSodRMDzSgoyoRVL7EQk7UPVrjSsVgE9JmTdrNM3n2D3AsHEqWPWQ3PACZIlwU
         0H9L9UaGRPN2TW4rTOipYx4U5m/yO6NDIdCNuOVoBM5ZJIYQbahG41oLATYMDT9HYc+w
         qckC8TeB32WAxlqWf6AyZVzAwtlDGcrZSWvaEGOGnrn/KWOlkbctmj+rOHA/4I1bRReN
         SuZg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=o0LZ7oRT;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22d as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1sbuDbzhvlwqX/5fpxWKO3vxr48l0nM5pRFxqBLR7og=;
        b=oN5TKXwQGybRZhazJdfa019Obp2+ZXAQmfa+NruCXsTK1LY3p0RP+hOlix1dkQmPFG
         0NEe9rw8aa2Tv1abEXSE4L/qIYsbJ6XmxaEr9AIzULrEcwD50QOyDc6aGuqWdR6Cb/Mk
         vzXlcHVggayJBFld+JwSwJog2dFAoygoJSe2hXLH2kOYQRB+GfK5EmJ3F1+ak7evQz1J
         DghZ4i6ZY+Lm6Is4IvV6imHh+LMIHjU4aA9wIDPJrQYBTiazzzxpNS+yfZxYCEnzp5uM
         7oOEIoIoI0oedJ+4tTCrdChVc6yRePvRRhbVfROh4Rl4n6FzANHyOMY1wSfLmD0046p3
         J1AA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1sbuDbzhvlwqX/5fpxWKO3vxr48l0nM5pRFxqBLR7og=;
        b=ACv5ymNrhhQn6OtOeYF/b+5YjSIfQYwjgbeIV5sy8SgCdOsHZhpJPC6UstJcRsyTO3
         W75RTQZzV2HYYqNIQeDuhT0v3b324ZIZ32tRQODtjZfoRV4v5T6hga5/LzuAsztb/C6J
         Itrfeq1j41UIcXR9jYmHjSqV2DqBHzOkeb9MllqqLXgrR4vwDiWeBN5kuxvDtuaqniUf
         3uaQlmbUXsGApLF9GOJnkFMKNrKMLWsrOCLKzfSUumsSPT494XHJMNsvBo4ZRjEh6ok2
         u+cIxs6EnUKz+4+IDr0WZZU8BiEe8KfLGSNBFdZhj+ElTy8BlCvqO2q5IIoC+IdffSak
         4tNA==
X-Gm-Message-State: AOAM5301Lz45TQCdSPK3QzRPXlo7i2IB2AAspaLOc227FXPisgDWwmav
	9EXnXaretjhBllsCPkxxovM=
X-Google-Smtp-Source: ABdhPJx0yLvKUocHF5+jg+jTBLPsh1YmSDouS9wheNfXBKdiq8eaXEYAMJqc+BIT1T7qHfSSUGE2KQ==
X-Received: by 2002:a05:6000:1acd:: with SMTP id i13mr4463157wry.48.1618505548243;
        Thu, 15 Apr 2021 09:52:28 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:1b06:: with SMTP id b6ls3122627wmb.1.canary-gmail; Thu,
 15 Apr 2021 09:52:27 -0700 (PDT)
X-Received: by 2002:a7b:cb45:: with SMTP id v5mr4224806wmj.2.1618505547407;
        Thu, 15 Apr 2021 09:52:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618505547; cv=none;
        d=google.com; s=arc-20160816;
        b=kCJhpU6l3u7orEaxqK8Vz19/8fo6b74ED1RJTtsG06ZZPUTrhute1A84ksMTisrN2q
         ohucX9pbp3vyG+Wz0cNUdXQVnHNt+lFrpIj4txSSFM8VfnFimjLCFc5TwyiaEx4wENMc
         KU0EDtDmVZrZrL/7kMRisQ0SqnkBm4YF1z1xUVoTDa+hZPymx+Wej3M0Fk8fL7EtWgZR
         hfNc8VePQjnbRFTqyj6mha9MOQZpaSdL1y3PMNqw6awGEQ5k29UYg1l8iC7pueqkjycP
         I4CrL/BoKt2ITBrNGx1PDqXRE6hZKgGweqg4aXknVhNVDDkFJNtDE5U/zfDI8GzIrcwp
         S3uQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=U37DmZ+J3T6SaAA0HXrJNqq/8z5wrCoZ7qw6igvtpHg=;
        b=Kdq1QwbIlrBbIxtHxpLFzY/KpPQfo03B17j/hhy4pt/UC7ZtUZXiUbW74W82W36gPP
         G/XwJBd+uaam39S/u0QvgLO9FDqarxdydH2LKmI5YledRlQwgfzUJvn47HWOGrog2RLR
         9mPuX5WhFyJcKwfWC/PXAgFJruM1kYHkWzU+Xxi4syHIpIEEXe8TyatLQhPVpuu94TRE
         XgGne1oZWgvyf4T8uvcDwZuRLDvzQ4bPlu3ddpyy/DNJAUYa727QmIChQjmeESmqz2wK
         3C/1DdYHH/yta6d+1NM9W7J5KE2ZGctw96QB9tVmwELoogn9tszLCBuXmcy6i5xWo1JB
         vPiA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=o0LZ7oRT;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22d as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com. [2a00:1450:4864:20::22d])
        by gmr-mx.google.com with ESMTPS id e17si166487wrx.1.2021.04.15.09.52.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Apr 2021 09:52:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22d as permitted sender) client-ip=2a00:1450:4864:20::22d;
Received: by mail-lj1-x22d.google.com with SMTP id r20so27868157ljk.4
        for <clang-built-linux@googlegroups.com>; Thu, 15 Apr 2021 09:52:27 -0700 (PDT)
X-Received: by 2002:a2e:988a:: with SMTP id b10mr57627ljj.341.1618505546655;
 Thu, 15 Apr 2021 09:52:26 -0700 (PDT)
MIME-Version: 1.0
References: <YHYlQnFRMNdn/CDp@archlinux-ax161> <20210414214548.700993-1-ndesaulniers@google.com>
 <a2ddf4d2-110a-9290-f766-3925e451ddef@arm.com>
In-Reply-To: <a2ddf4d2-110a-9290-f766-3925e451ddef@arm.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 15 Apr 2021 09:52:14 -0700
Message-ID: <CAKwvOdms0SVJMMLOwK-w=fzsw1FmCSK9qjZ_Syq0A-kRzYkHLQ@mail.gmail.com>
Subject: Re: [PATCH v2] arm64: vdso32: drop -no-integrated-as flag
To: Vincenzo Frascino <vincenzo.frascino@arm.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Nathan Chancellor <nathan@kernel.org>, Masahiro Yamada <masahiroy@kernel.org>, 
	Stephen Boyd <swboyd@chromium.org>, Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=o0LZ7oRT;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22d
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Thu, Apr 15, 2021 at 6:31 AM Vincenzo Frascino
<vincenzo.frascino@arm.com> wrote:
>
>
>
> On 4/14/21 10:45 PM, Nick Desaulniers wrote:
> > Clang can assemble these files just fine; this is a relic from the top
> > level Makefile conditionally adding this. We no longer need --prefix,
> > --gcc-toolchain, or -Qunused-arguments flags either with this change, so
> > remove those too.
> >
> > To test building:
> > $ ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- \
> >   CROSS_COMPILE_COMPAT=arm-linux-gnueabi- make LLVM=1 LLVM_IAS=1 \
> >   defconfig arch/arm64/kernel/vdso32/
> >
> > Suggested-by: Nathan Chancellor <nathan@kernel.org>
> > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
>
> The patch looks fine, but I have one question: the kernel requires as a minimum
> Clang/LLVM version 10.0.1. Did you verify that with that version compat vDSOs
> still builds and works correctly?

Hi Vincenzo,
Great question, let's check.
$ cd path/to/llvm-project
$ git checkout origin/release/10.x
$ cd llvm/build && ninja
$ cd path/to/linux
$ b4 am https://lore.kernel.org/lkml/20210413230609.3114365-1-ndesaulniers@google.com/
-o - | git am -3

We can't generally build ARCH=arm64 defconfig with LLVM_IAS=1 with
clang-10, but dropping LLVM_IAS=1 it looks like we can still build
without that.

$ ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu-
CROSS_COMPILE_COMPAT=arm-linux-gnueabi- make LLVM=1 -j72 defconfig
clean all
$ ls -l arch/arm64/kernel/vdso32
total 116
-rw-r----- 1 ndesaulniers primarygroup  7534 Apr 14 14:41 Makefile
-rw-r----- 1 ndesaulniers primarygroup   387 Mar 31 10:47 note.c
-rw-r----- 1 ndesaulniers primarygroup  2544 Apr 15 09:48 note.o
-rw-r----- 1 ndesaulniers primarygroup  4552 Apr 15 09:48 vdso.lds
-rw-r----- 1 ndesaulniers primarygroup  1587 Apr  1 12:55 vdso.lds.S
-rw------- 1 ndesaulniers primarygroup  3576 Apr 15 09:48 vdso.so
-rw------- 1 ndesaulniers primarygroup 24380 Apr 15 09:48 vdso.so.dbg
-rwxr-x--- 1 ndesaulniers primarygroup 24380 Apr 15 09:48 vdso.so.raw
-rw-r----- 1 ndesaulniers primarygroup   828 Apr  1 12:55 vgettimeofday.c
-rw-r----- 1 ndesaulniers primarygroup 29084 Apr 15 09:48 vgettimeofday.o

FWIW, clang-10 was missing support for R_AARCH64_PREL32, which affects
building arch/arm64/kvm/hyp/nvhe/hyp-reloc.S.

>
> Otherwise:
>
> Reviewed-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
>
> > ---
> > Changes V1 -> V2:
> > * Remove --prefix, --gcc-toolchain, COMPAT_GCC_TOOLCHAIN, and
> >   COMPAT_GCC_TOOLCHAIN_DIR as per Nathan.
> > * Credit Nathan with Suggested-by tag.
> > * Remove -Qunused-arguments.
> > * Update commit message.
> >
> >  arch/arm64/kernel/vdso32/Makefile | 8 --------
> >  1 file changed, 8 deletions(-)
> >
> > diff --git a/arch/arm64/kernel/vdso32/Makefile b/arch/arm64/kernel/vdso32/Makefile
> > index 789ad420f16b..3dba0c4f8f42 100644
> > --- a/arch/arm64/kernel/vdso32/Makefile
> > +++ b/arch/arm64/kernel/vdso32/Makefile
> > @@ -10,15 +10,7 @@ include $(srctree)/lib/vdso/Makefile
> >
> >  # Same as cc-*option, but using CC_COMPAT instead of CC
> >  ifeq ($(CONFIG_CC_IS_CLANG), y)
> > -COMPAT_GCC_TOOLCHAIN_DIR := $(dir $(shell which $(CROSS_COMPILE_COMPAT)elfedit))
> > -COMPAT_GCC_TOOLCHAIN := $(realpath $(COMPAT_GCC_TOOLCHAIN_DIR)/..)
> > -
> >  CC_COMPAT_CLANG_FLAGS := --target=$(notdir $(CROSS_COMPILE_COMPAT:%-=%))
> > -CC_COMPAT_CLANG_FLAGS += --prefix=$(COMPAT_GCC_TOOLCHAIN_DIR)$(notdir $(CROSS_COMPILE_COMPAT))
> > -CC_COMPAT_CLANG_FLAGS += -no-integrated-as -Qunused-arguments
> > -ifneq ($(COMPAT_GCC_TOOLCHAIN),)
> > -CC_COMPAT_CLANG_FLAGS += --gcc-toolchain=$(COMPAT_GCC_TOOLCHAIN)
> > -endif
> >
> >  CC_COMPAT ?= $(CC)
> >  CC_COMPAT += $(CC_COMPAT_CLANG_FLAGS)
> >
>
> --
> Regards,
> Vincenzo



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdms0SVJMMLOwK-w%3Dfzsw1FmCSK9qjZ_Syq0A-kRzYkHLQ%40mail.gmail.com.
