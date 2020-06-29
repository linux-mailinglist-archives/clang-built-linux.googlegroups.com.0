Return-Path: <clang-built-linux+bncBC2ORX645YPRBYXO5H3QKGQEQBXGRXQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63e.google.com (mail-pl1-x63e.google.com [IPv6:2607:f8b0:4864:20::63e])
	by mail.lfdr.de (Postfix) with ESMTPS id 09FA820E92C
	for <lists+clang-built-linux@lfdr.de>; Tue, 30 Jun 2020 01:21:08 +0200 (CEST)
Received: by mail-pl1-x63e.google.com with SMTP id q5sf4028039plr.14
        for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 16:21:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593472866; cv=pass;
        d=google.com; s=arc-20160816;
        b=yHvVATkQCPJgmDzQ0NoNZkNTeKOVSPmDQoZT1dTdFeXsrJH7tzDaPHVwcvOEQtv46R
         krXxtcDzy+jF4TsqfaGKQibClf0noykLnPKPNxQfk17dy3OIvUyYXFiRTdQsPmZ5m0PK
         X7stItxgOt2jKY1k1Tuwbx7617d2mlIZPm7tYGFX0CN3vDBVJf+evSEL7uix0/mSzhyo
         tbtdKDTqb8jVcXbcIqH17o19hrOOk+X8WuzZS4aUHL93l2N/ZbqytyQfXtYM8jw0m7wW
         k+Bzr6qFz9y3nx1tZlZc6ZLwhPtxBeSPUKllrzJbr4JVUVB/rf/9M8eMIsOd/tJMWMWl
         nJdw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=LyO3ltwfDQe6IaSeyFdEtBYdw9qvtS+c5iKPIEXeIMM=;
        b=SHjsvtXGCMD3zir/q50uTd9WjMzPf6lrKZAt3FnKG6DB9KdiU0/GPmSOCFJllxzg8j
         670tZ3NqbmNsSsHWICsEtmWYPDtjnwDXjw4mO4tfynte4sGRgJZEeAqQ1Jq8Dg/K1zAb
         h+1TZRj8y88rAy6gjY51MG4K5kGTCpEZ2TfVB4CJzFA/I0Aoyk/JX8C9aLbPjsAmosmC
         nXzsLS1lK2x3n7KWcRw4DFU/W3F61Z7h5iVS2ifJUxOAsxBv6lNg9Fbq31Ig/8iUxvRv
         tszT9G/gErwv0RnyapaierqmqBq5RUvwGHXs0qDPBSW0rw5LDTls5uEoFdEU/Q8yB3+t
         X47g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=wE7nxuQQ;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=LyO3ltwfDQe6IaSeyFdEtBYdw9qvtS+c5iKPIEXeIMM=;
        b=sTWTNhYNPMvkY90CdhEZ00zb/2McK7uQPU4hNXCl2NwGK4m3lKKRsAMr+KoEkt0o5w
         eWHfQfzBYm5uN+5u7A7T0QQkWKKDBmCOyFf2oy0fTz9/kJ/WGlPsJxGuZPFRmFXUghzM
         zOh9e7dVj0jTsZ9xG6YzOHMoWSA6RjpQ3awoZLlFvlzo7dSd5jxrgG9cGaVszy+R2r1W
         GazK3ZZ8g5Uks6QGU5AsU2L2Ys1ycdiWWJvG1EjvHX/lrFtQFU1LFUsVZuIC5mxQZ1XC
         L12eXix+U2NFqoJcM2xccVPMvfPkdqaFOyhFYGthQ+25JYDepZnnBNQAfMQhtJCLRncJ
         NnIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LyO3ltwfDQe6IaSeyFdEtBYdw9qvtS+c5iKPIEXeIMM=;
        b=lW99Vf/WxjhmyKdYBMc+bga/19PKfChvOgj5MMwvzHQ7wW+GLSmnSn56ynCb4MQg5x
         zAgr3im4Ot4Pgea8TSvHajUZtov8IcJF6xYq8BPj0ukXzmzENWFFAzszN0+uMOPNcjf7
         cvZBF6ByUIQxT4cnjdlT9vmbUR5eR26ckGQCNzI2igOKQ7nhL7eJhGaQ6tABuNWlAPCk
         fLHFLY0K8OtRmtnxU+lcvyMC7o8a79Sj2QIL2hdq2oHdL6mAoM8IVEYB/ReT2M2hmoaY
         MbnsZuPRluUF4NBqw8gyHZpmx2rUoWsAUTii4uyFRbApmGIELuBA+o2uhIKVK0iX1Oj2
         rJnA==
X-Gm-Message-State: AOAM532agHAYEc9Ucaec48QU9ZcxIPn6xLI6DW/fcDkfA1KZsIYDpp7w
	X662wduZ/d6BsUo5s8lY/tc=
X-Google-Smtp-Source: ABdhPJx3JUy777RtJxokRZfdBBw6PigmqCeRnvBWGtusdSnn1DNO9+99gYKidekjrG5cZZpQgBdpog==
X-Received: by 2002:a17:90a:7785:: with SMTP id v5mr20463249pjk.31.1593472866443;
        Mon, 29 Jun 2020 16:21:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:730d:: with SMTP id o13ls4942904pgc.1.gmail; Mon, 29 Jun
 2020 16:21:06 -0700 (PDT)
X-Received: by 2002:a63:1408:: with SMTP id u8mr12674799pgl.282.1593472865997;
        Mon, 29 Jun 2020 16:21:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593472865; cv=none;
        d=google.com; s=arc-20160816;
        b=h+MwpICHs2JZ4h9a6pAxNu4qhs9rkn2mR6IjTBsagoJQpKwNl7K6VjBPW1XazT3bX0
         UDsNVI4QlcUbLJyVhAj4oociLAjJDac8G/IqWneyZNfkxL4P0R/x5iq35f4BFCtNEabx
         ESLxEyPGr6FKWkJ72p/BLhG01K4WBpn/Ol4vl1caPIdgNsYmr8R5QzrA1vzx6mHuUfPa
         2u/cI2C4ITNbNUhUhBJ+ZWyDvpsRKk7WkdEVpVPaAWvplG7nSFIqtwh+9j9u7n2sxxsu
         UhpbHWNKADqr9rvCTxgcBCOd1S2O0QACWyuH7A4++7axBCc2Sg1pcD6nkD/uOyRrZ4DN
         YXaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Y3eOZWqjsfvFABJlAWadxHNb9WOoW2QZW11FNR7qgIM=;
        b=g1FtTi0ALF5TuFnd7yWdVr7Io6xEmzRcDWdLRTs+YXwDF6IJFIhzhgBZxhqgxV9saQ
         mek0ypZ2R6k8S4SQRjZouAQ4wqNSO4mFly57RJEBNUUJdRVlGIGlbshfxZiftCRq9ZZj
         rAzoMd22l0j+IUBCJcc3R8yhRzvhX8tKF9QBFDBHFFf/zzygUTwP5ckmLO4TuiDU5udD
         t6yD9AzBWGldCzJtyeAfZXQyUG2tvC+4XNqLzrPuQ3KMITleAccjOeLDaHDOxlG7vHVp
         6KxL9S1oKTIV7DTT7Kf2cKDhf9n6y+jfRYHnYC2p3q82fovKOzty2O5a5HCeBEb9Fbjy
         DQxw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=wE7nxuQQ;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id y9si58942pgv.0.2020.06.29.16.21.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Jun 2020 16:21:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Received: by mail-pg1-x543.google.com with SMTP id e18so9020681pgn.7
        for <clang-built-linux@googlegroups.com>; Mon, 29 Jun 2020 16:21:05 -0700 (PDT)
X-Received: by 2002:a62:ce48:: with SMTP id y69mr15584876pfg.208.1593472865320;
        Mon, 29 Jun 2020 16:21:05 -0700 (PDT)
Received: from google.com ([2620:15c:201:2:ce90:ab18:83b0:619])
        by smtp.gmail.com with ESMTPSA id d9sm722596pgg.74.2020.06.29.16.21.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Jun 2020 16:21:04 -0700 (PDT)
Date: Mon, 29 Jun 2020 16:20:59 -0700
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>
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
Message-ID: <20200629232059.GA3787278@google.com>
References: <20200624203200.78870-1-samitolvanen@google.com>
 <CAK7LNASvb0UDJ0U5wkYYRzTAdnEs64HjXpEUL7d=V0CXiAXcNw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAK7LNASvb0UDJ0U5wkYYRzTAdnEs64HjXpEUL7d=V0CXiAXcNw@mail.gmail.com>
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=wE7nxuQQ;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::543
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

Hi Masahiro,

On Mon, Jun 29, 2020 at 01:56:19AM +0900, Masahiro Yamada wrote:
> On Thu, Jun 25, 2020 at 5:32 AM 'Sami Tolvanen' via Clang Built Linux
> <clang-built-linux@googlegroups.com> wrote:
> >
> > This patch series adds support for building x86_64 and arm64 kernels
> > with Clang's Link Time Optimization (LTO).
> >
> > In addition to performance, the primary motivation for LTO is to allow
> > Clang's Control-Flow Integrity (CFI) to be used in the kernel. Google's
> > Pixel devices have shipped with LTO+CFI kernels since 2018.
> >
> > Most of the patches are build system changes for handling LLVM bitcode,
> > which Clang produces with LTO instead of ELF object files, postponing
> > ELF processing until a later stage, and ensuring initcall ordering.
> >
> > Note that first objtool patch in the series is already in linux-next,
> > but as it's needed with LTO, I'm including it also here to make testing
> > easier.
> 
> 
> I put this series on a testing branch,
> and 0-day bot started reporting some issues.

Yes, I'll fix those issues in v2.

> (but 0-day bot is quieter than I expected.
> Perhaps, 0-day bot does not turn on LLVM=1 ?)

In order for it to test an LTO build, it would need to enable LTO_CLANG
explicitly though, in addition to LLVM=1.

> I also got an error for
> ARCH=arm64 allyesconfig + CONFIG_LTO_CLANG=y
> 
> 
> 
> $ make ARCH=arm64 LLVM=1 LLVM_IAS=1
> CROSS_COMPILE=~/tools/aarch64-linaro-7.5/bin/aarch64-linux-gnu-
> -j24
> 
>   ...
> 
>   GEN     .version
>   CHK     include/generated/compile.h
>   UPD     include/generated/compile.h
>   CC      init/version.o
>   AR      init/built-in.a
>   GEN     .tmp_initcalls.lds
>   GEN     .tmp_symversions.lds
>   LTO     vmlinux.o
>   MODPOST vmlinux.symvers
>   MODINFO modules.builtin.modinfo
>   GEN     modules.builtin
>   LD      .tmp_vmlinux.kallsyms1
> ld.lld: error: undefined symbol: __compiletime_assert_905
> >>> referenced by irqbypass.c
> >>>               vmlinux.o:(jeq_imm)
> make: *** [Makefile:1161: vmlinux] Error 1

I can reproduce this with ToT LLVM and it's BUILD_BUG_ON_MSG(..., "value
too large for the field") in drivers/net/ethernet/netronome/nfp/bpf/jit.c.
Specifically, the FIELD_FIT / __BF_FIELD_CHECK macro in ur_load_imm_any.

This compiles just fine with an earlier LLVM revision, so it could be a
relatively recent regression. I'll take a look. Thanks for catching this!

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200629232059.GA3787278%40google.com.
