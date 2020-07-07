Return-Path: <clang-built-linux+bncBC2ORX645YPRB5FTSL4AKGQEVNOZBKY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53e.google.com (mail-pg1-x53e.google.com [IPv6:2607:f8b0:4864:20::53e])
	by mail.lfdr.de (Postfix) with ESMTPS id D56412172D6
	for <lists+clang-built-linux@lfdr.de>; Tue,  7 Jul 2020 17:51:17 +0200 (CEST)
Received: by mail-pg1-x53e.google.com with SMTP id u16sf32612334pgj.17
        for <lists+clang-built-linux@lfdr.de>; Tue, 07 Jul 2020 08:51:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594137076; cv=pass;
        d=google.com; s=arc-20160816;
        b=If/dyHmB/6T60A5IqXEny1Iz3H1Hf9OxCFiR71rIrm0SMpaQg91Uk9r2Z6lpAXbd3d
         eUfDGTauyzD4/fj7478lIVeJPlMM6ctAvq4nKGEr+xTGZzr9HB2rHko2bMVgsFi0kn9h
         77+pAUTBHXqfnL0enUKRZS0C/FG+iU3bkeDVGS45PAwnZpO2b6S8auln+DyIAYP78gnt
         otkA6IAhEevQ6PiXPrg9SI8MIm8GiosAtJlcGNzhjtIQlH/hd6Ix88nPtQ2GehsEWqQK
         NfdsBLs5U5RcR5a9xUopXk9OTgvrU+EDzfXnkK/014pc1Xk8Aa3LM/HM/7Pp9ZHz8VR3
         bRww==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=J/BzfDtcseyjmwmK31eAuYEGM2dXzcqenpPqCxQTr+4=;
        b=BD2rJzd8x4w+QnIHpMqE+VD87A9LajxVKiTMR3J6Ixnm/OTySAQa9ShhtlVzzVjeuq
         A6wkjA1wTACdFWaoQs5TuRnG90QR1AC/WLh6s0T7E42FuYMauC5zuIUFier02fziycF5
         9as4yafSWnjPkAvibTYGzO6JxN7Fu8JrsyewxlpKBpKTz7Hq2CIC8g1P40xy0FWc3ZsA
         WQgfzQsaRJHAKqERwy7trh6bRk7/mEKGXc3RwwrvBKxkIl3p/O1wWLrGLMNuy8r6hp/R
         JYrlOl5Vu8QynE9AcilJiAvA9PlLb+p2hbC4k4TYB6T0ZxVw3JKA45GnX5wkSoaqKIj/
         31vg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=qbZF9hTu;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=J/BzfDtcseyjmwmK31eAuYEGM2dXzcqenpPqCxQTr+4=;
        b=heTcg1Vjp35Fe4kq/zPgXC6KdWNRdSVTlELyOKjYkc0o3HHLOaIKD/5JLBOALWLN/A
         iqZVEUvbf9kg3WK5g6vQxS/f89CU3V3AVJEfRJkVr0kL5UxkdkWeCw4Mr8erSwSX7TEF
         xdPR0fNAhMqP47k/Ag3tHHdldcb5I0jMOksNdB/F3M3EdwCpag+rQUGx6r2zCr9ugKzF
         MUxM7DfnjG+nFWe1wYjxPnsBt9OjT6UOAT+5v1kuD7Xt0sGL4J45uYkvX7WunwdeCxdX
         T+gZAn4mgDpEwPdDlqVgBCULtfj6OUlwVDQ/F4hdRhPzPIkJNVvbr8sRA7GMubqVk1Rp
         ZuKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=J/BzfDtcseyjmwmK31eAuYEGM2dXzcqenpPqCxQTr+4=;
        b=EmrRXZJsU5XN5NNkGMdqSx1mLRJYQPAkzriyzjZRtnfzUL+gGBaqP3qxRcLMRYZlpM
         11u2NPOIprYGj4heLTOMuxpMIG0LcfA7Yt+ry8opzjhFs4F4XBkOs0Jk6kgeTozs5ugv
         nI6s+woc+PBccit/sCqlYv7o74kYKkxSxW3wTMKCBBscdSG4x0Fkeq7WAPBufq1CZdQe
         4wQzs5ARJYbCe5DdJ0f/hoFo87TE16vZf9SUjedhOR3Dqy4+Yr27R6Z3790b4mVqkb5p
         6b8WcJYVYB0shkp62CfNaZ7okW12SYHqOppVncZKnKb25Ste9DqZpMAEUf3bg4thwwZL
         xerA==
X-Gm-Message-State: AOAM5315YAIWzJB2X1h9rzdSLdGMlzvW0D7CzMkgk0V5iKc7btuYVWxn
	7w57FfQrIvYMLpaU1rtVX7Q=
X-Google-Smtp-Source: ABdhPJxkOMAJWZwDEPKAA1oBoPXN6SpWYCVwfBAt1QsuDYQ0r20GqHe/2nWzGGN8epdRlgp13pHB7g==
X-Received: by 2002:a17:90b:f05:: with SMTP id br5mr5113544pjb.42.1594137076185;
        Tue, 07 Jul 2020 08:51:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:86c3:: with SMTP id y3ls1639528pjv.0.gmail; Tue, 07
 Jul 2020 08:51:15 -0700 (PDT)
X-Received: by 2002:a17:902:684e:: with SMTP id f14mr17785863pln.166.1594137075715;
        Tue, 07 Jul 2020 08:51:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594137075; cv=none;
        d=google.com; s=arc-20160816;
        b=Ed9gOVVSPNENuXubuhw5bchh1CQvsYTOaRGNByUMADLusjSt0I0s/Yf2aC4YXaBohK
         F286Gx9Gf3o5Qu0f9VX8Sqcdpk5EI8kaxiaciodyAK5fE6peZVbfD3/K2vSjFCTWbe4+
         YOdW28/vROzKZz3LzLKab2gRZIhJQOHdgfZqstwO9HXBIwiaKE5aj1oU52uWQKB7JY0E
         TR/az+cFR7RWAtOnekxKLINIpEW8mCoPFk6PZYl/jOIbfy9NBOijslpHIEF0HVkfcUc4
         VNO/sPb6uiF6whP2IZ+2kXNb/tIQyY8h02oZ7NaGiIn3Tleyfd1UmIY3sE0r9Y7tjApd
         4qEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=6nbLKEvdqqtu0DOxk+RX2NCeuVjz/d5/WDsGYxOKe+A=;
        b=nLToSPF1psPaAOoa5O3RmiEiWWN2BIy2rJGIN/mZSqAHYBUozX9kItfqLoHKEsbG/a
         6sg/SreyCUMGhuU4OSo3Oa1GFW3Ki68HDGTZBezQnFQMM026EqNaBmp0m8HMuhYnSxgK
         uySwqwLhiXrfKQJtbgoXUsuDHyB0EFJfQLqwMdbKTjPY8Zc6cwJuRN40G+JA7vy2SRBn
         DqpnvWD/XBm0/BlHp8CQu52v3XP4CQ5VPHe3sXDtlrp8fpkPi/gyb8uBxZ+3mRdwHATE
         YqMwArzM5TiYtWBnvQTe4N3O1CPIz2bNGuuJKcjdzYjI4IM0mwdml1nG4Ekee0xiwpDB
         n+Rg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=qbZF9hTu;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id ob1si69916pjb.1.2020.07.07.08.51.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Jul 2020 08:51:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Received: by mail-pl1-x643.google.com with SMTP id p1so7640829pls.4
        for <clang-built-linux@googlegroups.com>; Tue, 07 Jul 2020 08:51:15 -0700 (PDT)
X-Received: by 2002:a17:90a:a106:: with SMTP id s6mr5003560pjp.53.1594137075030;
        Tue, 07 Jul 2020 08:51:15 -0700 (PDT)
Received: from google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
        by smtp.gmail.com with ESMTPSA id b10sm22289026pft.59.2020.07.07.08.51.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Jul 2020 08:51:14 -0700 (PDT)
Date: Tue, 7 Jul 2020 08:51:07 -0700
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>,
	Jiong Wang <jiong.wang@netronome.com>,
	Jakub Kicinski <kuba@kernel.org>
Cc: Will Deacon <will@kernel.org>,
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
Subject: Re: [PATCH 00/22] add support for Clang LTO
Message-ID: <20200707155107.GA3357035@google.com>
References: <20200624203200.78870-1-samitolvanen@google.com>
 <CAK7LNASvb0UDJ0U5wkYYRzTAdnEs64HjXpEUL7d=V0CXiAXcNw@mail.gmail.com>
 <20200629232059.GA3787278@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200629232059.GA3787278@google.com>
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=qbZF9hTu;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::643
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

On Mon, Jun 29, 2020 at 04:20:59PM -0700, Sami Tolvanen wrote:
> Hi Masahiro,
> 
> On Mon, Jun 29, 2020 at 01:56:19AM +0900, Masahiro Yamada wrote:
> > I also got an error for
> > ARCH=arm64 allyesconfig + CONFIG_LTO_CLANG=y
> > 
> > 
> > 
> > $ make ARCH=arm64 LLVM=1 LLVM_IAS=1
> > CROSS_COMPILE=~/tools/aarch64-linaro-7.5/bin/aarch64-linux-gnu-
> > -j24
> > 
> >   ...
> > 
> >   GEN     .version
> >   CHK     include/generated/compile.h
> >   UPD     include/generated/compile.h
> >   CC      init/version.o
> >   AR      init/built-in.a
> >   GEN     .tmp_initcalls.lds
> >   GEN     .tmp_symversions.lds
> >   LTO     vmlinux.o
> >   MODPOST vmlinux.symvers
> >   MODINFO modules.builtin.modinfo
> >   GEN     modules.builtin
> >   LD      .tmp_vmlinux.kallsyms1
> > ld.lld: error: undefined symbol: __compiletime_assert_905
> > >>> referenced by irqbypass.c
> > >>>               vmlinux.o:(jeq_imm)
> > make: *** [Makefile:1161: vmlinux] Error 1
> 
> I can reproduce this with ToT LLVM and it's BUILD_BUG_ON_MSG(..., "value
> too large for the field") in drivers/net/ethernet/netronome/nfp/bpf/jit.c.
> Specifically, the FIELD_FIT / __BF_FIELD_CHECK macro in ur_load_imm_any.
> 
> This compiles just fine with an earlier LLVM revision, so it could be a
> relatively recent regression. I'll take a look. Thanks for catching this!

After spending some time debugging this with Nick, it looks like the
error is caused by a recent optimization change in LLVM, which together
with the inlining of ur_load_imm_any into jeq_imm, changes a runtime
check in FIELD_FIT that would always fail, to a compile-time check that
breaks the build. In jeq_imm, we have:

    /* struct bpf_insn: _s32 imm */
    u64 imm = insn->imm; /* sign extend */
    ...
    if (imm >> 32) { /* non-zero only if insn->imm is negative */
    	/* inlined from ur_load_imm_any */
	u32 __imm = imm >> 32; /* therefore, always 0xffffffff */

        /*
	 * __imm has a value known at compile-time, which means
	 * __builtin_constant_p(__imm) is true and we end up with
	 * essentially this in __BF_FIELD_CHECK:
	 */
	if (__builtin_constant_p(__imm) && __imm <= 255)
	      __compiletime_assert_N();

The compile-time check comes from the following BUILD_BUG_ON_MSG:

    #define __BF_FIELD_CHECK(_mask, _reg, _val, _pfx)		\
    ...
	BUILD_BUG_ON_MSG(__builtin_constant_p(_val) ?		\
			 ~((_mask) >> __bf_shf(_mask)) & (_val) : 0, \
			 _pfx "value too large for the field"); \

While we could stop the compiler from performing this optimization by
telling it to never inline ur_load_imm_any, we feel like a better fix
might be to replace FIELD_FIT(UR_REG_IMM_MAX, imm) with a simple imm
<= UR_REG_IMM_MAX check that won't trip a compile-time assertion even
when the condition is known to fail.

Jiong, Jakub, do you see any issues here?

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200707155107.GA3357035%40google.com.
