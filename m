Return-Path: <clang-built-linux+bncBDYJPJO25UGBBXWW26DQMGQE6DMOUVI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x240.google.com (mail-lj1-x240.google.com [IPv6:2a00:1450:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D4E23CEE08
	for <lists+clang-built-linux@lfdr.de>; Mon, 19 Jul 2021 23:15:11 +0200 (CEST)
Received: by mail-lj1-x240.google.com with SMTP id h18-20020a05651c1592b0290191f8d27e33sf8254159ljq.23
        for <lists+clang-built-linux@lfdr.de>; Mon, 19 Jul 2021 14:15:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626729310; cv=pass;
        d=google.com; s=arc-20160816;
        b=T4LSCrkJp8pzidbcW6+fVL6A7TYI/0suWq3VOJfVj1q3u9XBUe3mvGHXUSZnluZ993
         trOYo05kASKmZxSBz4I3COlwPN38H3MxOVNCYlCpQ0LxIqyAK6K8BEReiaJyqdgbhsHQ
         DNOE08VajRQR7SjJcrNmcGKkIobMD3+ivbCudaWYju/hCuudNzVY+tZSckXJ6WY17gr2
         XzfC3rpnsIoMODwEJxVAj+GxC7UpwCws+MtZTkTt6U3Q5ydlar05qZ0dyfBBBrDoLALU
         F5qMRdKOJ6oscCjgzcn7Ig5MUfK6rG5rx66OjySmR5k8Fdg0lI4C3HjE9lr0pVK5uvAF
         gcQA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=R46+50LQ/Qx8+OZNP7zl9C6OgclQccLWwbGoUaKbyP4=;
        b=pGzqJh7qlGhLExYnFoTl9RIqL4yZFonSGsXzZ3Fy1sSo7pmQb93Q5kTZMteB7XPohH
         ZPHUpzbuSrpkQ0vLMEmDpp7QLaCjAX0eBM6bN/cwuVVG+H89/UL7iuwAX0qYwcWERA7a
         umD1XFEptUTYRu5lnD6RCkvstnwFgrmtSqdI649uVXWU7Bn9gULpFRy/xqn3Ia4wcjF4
         DgCrocj9dnjAtSa6O7G9lFtgTgZ8yhoLI76fiY0ILLC6RnVP0RDhZ0A8mNJpDahpEBaN
         YkUAQ+1YqzMzfTlg7T53BmqZGIgtDNL3EgzEUWoYKFb3yJ7U7xund61dd5cZLlS8+k45
         qWhw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=PjN4k5YC;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::133 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=R46+50LQ/Qx8+OZNP7zl9C6OgclQccLWwbGoUaKbyP4=;
        b=jGv3D8uDoHWrzvgRsHATosXoKLxK5mTORGzHBTTgznhVr9MvpByv7Vow554s6/lqe2
         bnE2z2MVU+flSPnptwixt9O/8d6qim5lSptw3CXb1V/mFguT40j2NRFwpvpQmaIouIwp
         H4dgAB4Ygwtnf/6ylCHl+2qoDQGUqCbN/IZs+s0Yr3Kj+fG3aPMZTi3saqJqWpV4BM6d
         gVaOcbGZZ/YnzRpDOn/Y6hb3KvSZw/nsZpE2o8Pq3njObA1WHxwbsxfX8Xi7OK+xzrty
         Gh06jrtOkvzSzL6ykjS9z/ir8YxNmMS2MLH0br2FmqrQMBrGddCa9EqWCn2rTt5gDNQm
         oyuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=R46+50LQ/Qx8+OZNP7zl9C6OgclQccLWwbGoUaKbyP4=;
        b=JBBikaBPwVCC2MFBBreX77mmO9PSWKKdoAdqKQjN39cqU+7nibbmvzX80ZyjhDziI8
         k9kr8d16jCaCunUlDqRi6MGlw0ns2fZsCQzCCHdFeWe9tkp0TN2VE2pUGfsnNNn0VUeD
         RSNfm1iUomcfSaOjWXaM8bCC4e/fwA5dB2bZOSI3lFVRwhJ7CH5K5GL3VB0nCRsd1cKH
         4Tg/obc+1z/JSn+PSwO2pqFjnt65EiqmSYvvRKFhEYdQh1wVt9nqIdDJSzA/l1+Rbzf9
         Q8cdH6W7Pl+wpl3ggUk5DfrzhkpaUZc0SnC8LvjUZw0QCfHT5Vh2x8maX305PI7lzVXq
         y/tA==
X-Gm-Message-State: AOAM530qQ7EywqyV2PZQQZz+Zl+e3O/pB0O6uMW7hdnJS7r0hIF9TBHb
	sKm7rP6xuxujvRMMS7PhW6A=
X-Google-Smtp-Source: ABdhPJzhNf929A64U3D6EGNe/+qysSMkWSgsXz4Vu4I47VzC1OqdBiJFTUV5Yv0J98osBnLr4F+GzA==
X-Received: by 2002:a2e:9ad3:: with SMTP id p19mr4989948ljj.12.1626729310837;
        Mon, 19 Jul 2021 14:15:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:430b:: with SMTP id l11ls1022446lfh.1.gmail; Mon, 19 Jul
 2021 14:15:09 -0700 (PDT)
X-Received: by 2002:a05:6512:21c7:: with SMTP id d7mr4170837lft.301.1626729309811;
        Mon, 19 Jul 2021 14:15:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626729309; cv=none;
        d=google.com; s=arc-20160816;
        b=JcNjQ+LSv5D2Bc6nqL0whz4B8OUmXq0O9pcoJnFtey5KLqIm5tctsO+gWh/rcSedoe
         /eOSKQjkAE9jbPzf2gjSngY9L69H/ZoptWGUIB3OK+0bOaWd5INyul68vRIYEZ4YI2Ch
         ks5RRNvjEPom95Ej+wPk7r8eXh14Dfs3W/d/RoYn2EMTNFd/ggZfQ9mW5QbyhdEHLdON
         VKiCakAtM8/srxcmhJtHZ44en3vI8b7GdIL/hCK4Xrtb+styQMG/yqjn2FOAmF97gOpP
         AaooBw6bu7HjR+ZHIjbfRWykHKZ99EsRLyfSqPWCzf/BWDr8tKNvHeGyuVHDz6TE9nTy
         754Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=qFtdMgkLQc2YmuYFFmmTPa+0DMBOVtiSjJ3Lih49niU=;
        b=IzyFxGv79HI3scxMovvHPvq1r35fDE7ApFXa3eKx9yx5q2zqX8GdT6sBCJPNnA6MuV
         WF3c13L5BzAlDtMEf/Rppv+utJ+a4/9VWRxyNFxhzykdv7PQoVscwhv56T/CQR2e3K8o
         QGcGpK3/+FM38jT7ARQVNyp3S9STAVc1JmD0w9Wq1NPZrf8gca6CFJS1HOT5uRXCZA4N
         1vVxdNeqOSGT9eRS21uo0u3ZlqEuLf+hQqi+OugGJfDe8CqtyiyJnf8ovPnSnoHXLd/Q
         UGAmeJAXRwfR0Han2C2429SeKoplWxHeHacO9R1B7E1LY6kEZ2IGHPmV1f1cYFRXKrHy
         H72Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=PjN4k5YC;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::133 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com. [2a00:1450:4864:20::133])
        by gmr-mx.google.com with ESMTPS id z24si860069lfq.5.2021.07.19.14.15.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Jul 2021 14:15:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::133 as permitted sender) client-ip=2a00:1450:4864:20::133;
Received: by mail-lf1-x133.google.com with SMTP id 8so32475774lfp.9
        for <clang-built-linux@googlegroups.com>; Mon, 19 Jul 2021 14:15:09 -0700 (PDT)
X-Received: by 2002:a19:4916:: with SMTP id w22mr20358536lfa.374.1626729309240;
 Mon, 19 Jul 2021 14:15:09 -0700 (PDT)
MIME-Version: 1.0
References: <20210719205247.1023289-1-twd2.me@gmail.com>
In-Reply-To: <20210719205247.1023289-1-twd2.me@gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 19 Jul 2021 14:14:59 -0700
Message-ID: <CAKwvOdmNji0AbYUiOSfb5cLD+g7YCpXk4oDupa8gTfgzYmxvBg@mail.gmail.com>
Subject: Re: [PATCH 1/3] RISC-V: build: Pass `-mattr` to `lld`
To: Wende Tan <twd2.me@gmail.com>
Cc: palmer@dabbelt.com, paul.walmsley@sifive.com, aou@eecs.berkeley.edu, 
	linux-riscv@lists.infradead.org, clang-built-linux@googlegroups.com, 
	Masahiro Yamada <masahiroy@kernel.org>, Kees Cook <keescook@chromium.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=PjN4k5YC;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::133
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

On Mon, Jul 19, 2021 at 1:53 PM Wende Tan <twd2.me@gmail.com> wrote:
>
> Pass `-mattr` to `lld` so that it can generate proper machine code.
> By the way, it seems that `-march` does not work well now.
>
> Signed-off-by: Wende Tan <twd2.me@gmail.com>
> ---
>  arch/riscv/Makefile | 7 +++++++
>  1 file changed, 7 insertions(+)
>
> diff --git a/arch/riscv/Makefile b/arch/riscv/Makefile
> index bc74afdbf31e..bbc186a3ab45 100644
> --- a/arch/riscv/Makefile
> +++ b/arch/riscv/Makefile
> @@ -52,9 +52,16 @@ riscv-march-$(CONFIG_ARCH_RV32I)     := rv32ima
>  riscv-march-$(CONFIG_ARCH_RV64I)       := rv64ima
>  riscv-march-$(CONFIG_FPU)              := $(riscv-march-y)fd
>  riscv-march-$(CONFIG_RISCV_ISA_C)      := $(riscv-march-y)c
> +riscv-mattr-y                          := +m,+a
> +riscv-mattr-$(CONFIG_FPU)              := $(riscv-mattr-y),+f,+d
> +riscv-mattr-$(CONFIG_RISCV_ISA_C)      := $(riscv-mattr-y),+c
>  KBUILD_CFLAGS += -march=$(subst fd,,$(riscv-march-y))
>  KBUILD_AFLAGS += -march=$(riscv-march-y)
>
> +ifeq ($(CONFIG_LD_IS_LLD),y)
> +       KBUILD_LDFLAGS += -mllvm -mattr=$(riscv-mattr-y)

We should prevent the proliferation of the compiler internal `-mllvm`
flags from Kbuild Makefiles; these are indicative of LLVM IR specific
issues with regards to LTO.  Can you please file a bug against LLVM
that `-mattr` should be encoded in the IR for LTO's sake?

See also:
commit 0236526d76b8 ("Makefile: lto: Pass -warn-stack-size only on LLD
< 13.0.0")
commit 2398ce80152a ("x86, lto: Pass -stack-alignment only on LLD < 13.0.0")

> +endif
> +
>  KBUILD_CFLAGS += -mno-save-restore
>  KBUILD_CFLAGS += -DCONFIG_PAGE_OFFSET=$(CONFIG_PAGE_OFFSET)
>
> --


--
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmNji0AbYUiOSfb5cLD%2Bg7YCpXk4oDupa8gTfgzYmxvBg%40mail.gmail.com.
