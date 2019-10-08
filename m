Return-Path: <clang-built-linux+bncBAABBQ4V6HWAKGQEDU5LLZQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x537.google.com (mail-ed1-x537.google.com [IPv6:2a00:1450:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E399CF51B
	for <lists+clang-built-linux@lfdr.de>; Tue,  8 Oct 2019 10:37:24 +0200 (CEST)
Received: by mail-ed1-x537.google.com with SMTP id y66sf10714322ede.16
        for <lists+clang-built-linux@lfdr.de>; Tue, 08 Oct 2019 01:37:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570523843; cv=pass;
        d=google.com; s=arc-20160816;
        b=GDQYiTwas2tElTvFNn0yoae+Y31752RprpJRcgw/Oq7UDGBV4rTYUQTIJeFzoyMVhc
         0488AFxCKfBjpnRKxaCTFFBFPIPZQcsvRY/NSMeLD+0QRrFSoWkmqtHhvCq+Vh3fUyPn
         ZApvAvLF/rxMQdWffuvRLpYtFi7tx7uuXeaQCFQFVjERkaPhjurK9l0KrLUgqsewS/Ck
         Sry1gw4guuQbebJJ3D8Ix6X1RBmQ5iPXRUjF0yvlKIpBrhgZH5bI1tg24YJ74uIEOXVm
         pkB7w51h31J2csQzijV3K1f4CpQBt1KPyL3meRtS8RVC/o6Cyj1VkYq0U6rzqDQGiU7l
         yucA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=gVMUfiP38/5jhlpe3GXum24M7Cr0moXMifOIvft1Jbk=;
        b=SlGscBZB5IP+UopaWjJdoPYSgogmvqRZIgKmTYs4WsTw62a1PzZX/2uKa6ZquzFOgp
         jQ2UTyE+6Bmy8ekEyj0ycYu2ZSo2wJji2EqqUdz6ickX175xcsFRl6LsUgn/947mVnj7
         Gi/vXe1X5/3gweyQ0QtNglG3fHjiaUSaPfGxeCZ6CNzbWA4JYirb5mXpN079qUrhA5JC
         lD39OtHY0PfihRF8xrmCNx8Jdek3Lwri5A1HYZmlljahppWpLR+ZtUuNtalMG8Xwdcqs
         LJy9mZFuoeM1Ow4djif5+Du39HJIaNbGSAY1Ynjn4b7VsK9uF74SgQxkjddVmXkXbvHk
         roIw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of andrew.murray@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=andrew.murray@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=gVMUfiP38/5jhlpe3GXum24M7Cr0moXMifOIvft1Jbk=;
        b=VBZVzQEkV7Iq1PN33bOTo0hzRBcaBaAKhE2Hi4o4EdlyrI+PT6L+agLdsw0YM1t0Cv
         1FbSNGKZz7WRuYrqfTWQdthRyEJjkF5lxYUSuGln+KE+ZDGRWkFaUhjmYRpOURq+XOEg
         Ka4hzOymxDTGPNjF3Vu4PMnyls2l0YZYWJi1krp/02kyMD9CDauc0nsFZYMuuj1AeytW
         jSu5SHyh7wVZCFdOx6CZXdEib9P1VsGKqdnkQcKMsQyrLAbYa5Af64/QbBhJtsPA95if
         UPQ25niGxA+eNjkaWg4euq5PMtAmhypOl15td6o6YXQ88NK/ZTlh3e6uoFBg/c+9+XYG
         z8yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=gVMUfiP38/5jhlpe3GXum24M7Cr0moXMifOIvft1Jbk=;
        b=fK5P4IgHpZvW9srPkCp0LFfHe7lc9Qdsq7uUYVLvGeM8rP22mv8dsA1UG24gANksWe
         oAXpgCC2tl1VHzpOadU/jvHZ8TnkYClH82zVocC3OC5qEvGm/XIJ9PutI/4LElyUouTr
         BgrCOYcP1JiKhFanRI55rhlwJbhQl53dKrQm29DupATVaO2olZX5bvTEgRf1bBrX+0pP
         J4NhxPm68c1wIj4MsECTdHx1PICOsMbQfwpmc+N/2iXwS5XiPbqkAAXyaWH9l/9N3GCS
         8Dg6fDBGr4AvXp4jarIC7WBv/Ev59olzdlTjtrapdVfzKxoX7ZlKVwYav1RJ4fBGuetq
         NNCQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWgnzAfZkAjJTxSeQxRt1micYWkNy5LTPXlrZ59vHg0keyiHF2w
	DOcvmbNsmplrkZ92DUctM5A=
X-Google-Smtp-Source: APXvYqzug6m5vOK0u2CFFFssjg4LsLelQusdbpRKnOnRxUu/maKIAc5kYECBhWxBn7QuIJp/shwRDw==
X-Received: by 2002:a05:6402:13cd:: with SMTP id a13mr32205280edx.6.1570523843714;
        Tue, 08 Oct 2019 01:37:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:a859:: with SMTP id dx25ls659573ejb.16.gmail; Tue,
 08 Oct 2019 01:37:23 -0700 (PDT)
X-Received: by 2002:a17:906:5957:: with SMTP id g23mr27233226ejr.312.1570523843399;
        Tue, 08 Oct 2019 01:37:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570523843; cv=none;
        d=google.com; s=arc-20160816;
        b=IeTJtdAPTNgSIiGWlKJ1RmrP3KBEhkUSXQLnGpKDvNGDhTqSIlwnEt1Du0Kv+PYuIL
         FBSZXd3l+dY7b7V9VkJ2Xwv25dI1FWzEvPbgjCCHTfTNObECtMmV6cg+vclyBNZ6utmm
         pDcRDw2wvFzJXjDJh22SFGZa7mtb4blKplhHUBj+WaeE38jnSZO/dzKNaeGwwrmzOTz6
         YRWa15KjJjAT0KhSKu4qYyx/D7f3X15ekhFnSIwPHSxDbvfp2xPchssd+k440adGNLcj
         gU73gZRspI1qepJvkDVJrO9nsSbC5X9IbtfcXPdhOTsGmo0Uwuc3gPUPmEwslRhySotJ
         JeNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=kxpItFOaWI3OUhs8YClnnMwfmJlaxCUgPXtba94vsnk=;
        b=DpPuX0VYYyUngAo+Pt2k5yFnjx81eSkGUsZ3ngYRkNAp9J8wrVDxbVdKqt+FE55uaJ
         kAJzLMr8rcOG9C6AkvFBXKzHo0U+3jTLUPmA1ugcT9WovgHEpwPv/IgQNcPOXRjibX9j
         UhNBg8CMRSVBxGx13P5FRjS7p/J90XAmQP/zIWGfZr75kk62e+SdpT3yqbvO1W+JD4hQ
         zDgE+znOgYm70lsPzzMknc2r4IPcmd9qXeJEUd8N3c1fvFNpAY9p0yEWXi9rcZt0V5JB
         qVUvoQT/tvjPausu4rLZJSGbGdLCZurm7Ol68pbbMY7zq8oyGDeQVgQXNc5qCrlfj0dq
         82EA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of andrew.murray@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=andrew.murray@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id r3si1099543eds.2.2019.10.08.01.37.23
        for <clang-built-linux@googlegroups.com>;
        Tue, 08 Oct 2019 01:37:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of andrew.murray@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 936341570;
	Tue,  8 Oct 2019 01:37:22 -0700 (PDT)
Received: from localhost (unknown [10.37.6.20])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 164273F6C4;
	Tue,  8 Oct 2019 01:37:21 -0700 (PDT)
Date: Tue, 8 Oct 2019 09:37:20 +0100
From: Andrew Murray <andrew.murray@arm.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Sami Tolvanen <samitolvanen@google.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>, Kees Cook <keescook@chromium.org>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] arm64: lse: fix LSE atomics with LLVM's integrated
 assembler
Message-ID: <20191008083719.GG42880@e119886-lin.cambridge.arm.com>
References: <20191007201452.208067-1-samitolvanen@google.com>
 <CAKwvOdmaMaO-Gpv2x0CWG+CRUCNKbNWJij97Jr0LaRaZXjAiTA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdmaMaO-Gpv2x0CWG+CRUCNKbNWJij97Jr0LaRaZXjAiTA@mail.gmail.com>
User-Agent: Mutt/1.10.1+81 (426a6c1) (2018-08-26)
X-Original-Sender: andrew.murray@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of andrew.murray@arm.com designates 217.140.110.172 as
 permitted sender) smtp.mailfrom=andrew.murray@arm.com
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

On Mon, Oct 07, 2019 at 01:28:19PM -0700, Nick Desaulniers wrote:
> On Mon, Oct 7, 2019 at 1:14 PM 'Sami Tolvanen' via Clang Built Linux
> <clang-built-linux@googlegroups.com> wrote:
> >
> > Unlike gcc, clang considers each inline assembly block to be independent
> > and therefore, when using the integrated assembler for inline assembly,
> > any preambles that enable features must be repeated in each block.
> >
> > Instead of changing all inline assembly blocks that use LSE, this change
> > adds -march=armv8-a+lse to KBUILD_CFLAGS, which works with both clang
> > and gcc.
> >
> > Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> 
> Thanks Sami, looks like this addresses:
> Link: https://github.com/ClangBuiltLinux/linux/issues/671
> I tried adding `.arch armv8-a+lse` directives to all of the inline asm:
> https://github.com/ClangBuiltLinux/linux/issues/573#issuecomment-535098996
> though that quickly ran aground in some failed assertion using the
> alternatives system that I don't quite yet understand.

I think these issues somehow are related to the strange way we used to
jump to the out-of-line fallbacks. Since around addfc38672c7 ("arm64:
atomics: avoid out-of-line ll/sc atomics") this approach was removed.

I reproduced your patch on 5.4-rc2 and no longer get the clang build
errors. Therefore this approach is viable option.

> 
> One thing to be careful about is that blankets the entire kernel in
> `+lse`, allowing LSE atomics to be selected at any point.  The
> assembler directive in the header (or per inline asm block) is more
> fine grained.  I'm not sure that they would be guarded by the
> alternative system.  Maybe that's not an issue, but it is the reason I
> tried to localize the assembler directive first.
> 
> Note that Clang really wants the target arch specified by either:
> 1. command line argument (as in this patch)

This makes me nervous, as we're telling the compiler that the machine
we're building for has LSE - obviously it would be perfectly acceptable
for the compiler to then throw in some LSE instructions at some point.
Thus something may break further down the line.

> 2. per function function attribute
> 3. per asm statement assembler directive

Keen to hear Will's thoughts - but I'd suggest this is probably the
safest way forward.

Thanks,

Andrew Murray

> 
> 1 is the smallest incision.
> 
> > ---
> >  arch/arm64/Makefile          | 2 ++
> >  arch/arm64/include/asm/lse.h | 2 --
> >  2 files changed, 2 insertions(+), 2 deletions(-)
> >
> > diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
> > index 84a3d502c5a5..7a7c0cb8ed60 100644
> > --- a/arch/arm64/Makefile
> > +++ b/arch/arm64/Makefile
> > @@ -36,6 +36,8 @@ lseinstr := $(call as-instr,.arch_extension lse,-DCONFIG_AS_LSE=1)
> >  ifeq ($(CONFIG_ARM64_LSE_ATOMICS), y)
> >    ifeq ($(lseinstr),)
> >  $(warning LSE atomics not supported by binutils)
> > +  else
> > +KBUILD_CFLAGS  += -march=armv8-a+lse
> >    endif
> >  endif
> >
> > diff --git a/arch/arm64/include/asm/lse.h b/arch/arm64/include/asm/lse.h
> > index 80b388278149..8603a9881529 100644
> > --- a/arch/arm64/include/asm/lse.h
> > +++ b/arch/arm64/include/asm/lse.h
> > @@ -14,8 +14,6 @@
> >  #include <asm/atomic_lse.h>
> >  #include <asm/cpucaps.h>
> >
> > -__asm__(".arch_extension       lse");
> > -
> >  extern struct static_key_false cpu_hwcap_keys[ARM64_NCAPS];
> >  extern struct static_key_false arm64_const_caps_ready;
> >
> > --
> > 2.23.0.581.g78d2f28ef7-goog
> >
> > --
> > You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191007201452.208067-1-samitolvanen%40google.com.
> 
> 
> 
> -- 
> Thanks,
> ~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191008083719.GG42880%40e119886-lin.cambridge.arm.com.
