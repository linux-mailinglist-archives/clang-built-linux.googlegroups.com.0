Return-Path: <clang-built-linux+bncBC2ORX645YPRBFU557WAKGQEMNSBHAQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x540.google.com (mail-pg1-x540.google.com [IPv6:2607:f8b0:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FF60CEFBA
	for <lists+clang-built-linux@lfdr.de>; Tue,  8 Oct 2019 01:47:36 +0200 (CEST)
Received: by mail-pg1-x540.google.com with SMTP id h36sf11254384pgb.3
        for <lists+clang-built-linux@lfdr.de>; Mon, 07 Oct 2019 16:47:35 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1570492054; cv=pass;
        d=google.com; s=arc-20160816;
        b=AdjQcgLgjSsNVzbdoE6XQNhFDugYaF2BanK7tyKQViHn+f78Y2q+JAopjv3fQd1t/u
         v9ku4v0sNDTccV3BTRfVvi0X+qIQ8Fu4v7vDVV9Ki7zAzXwvD27kmD/ckL56P+MnTt2R
         IZGBKtKyzTiBBuJYmtK6jCvN2AoB0u661uuzVnLduIAsSYbQEmIxNYrHP1h7ZFKQ/tp5
         vtYgDQeV7PHh7gRS3fKuVPGGDRrrX09J23gS50/2sZLPJrROU35VxHLwze093ULuIA0I
         PqbLmcertW8XR+IUbwvYHRyc8q0vy2M8toDcEvAlt4ZGPGZuwzt3O7oXRURHamryJ403
         Djqg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=D2QfLCzFmEqX3FEqNWb5vjM5BTAIl/xsK3kMgxNHGLI=;
        b=qvKwR/hhrZphsNZ8SZLEBva+l2vC8bCtLRh6KPQRh6Uzx+9FixfQuYK9mzSE0BuriL
         cp/B7w2xLspKaopftOGr1zxQPlevRaCGbKD4QQH8Nz4h26OKYCfYeKwt4/Ah4xX6Angb
         ob22AJb8p9cOjXAef1tmy9Py+dtGRLDJ1w/lUflHuXL6QgA9Mf2/9XRW9F1ybZb896mL
         XkITIWxwUBd4MaRz2oq2icSx5RzS6fdNXG+FvFjrBQBuh37JiJELDgeYNd61HUGqXDn9
         ea9yOneBx/hRHiVdqCkgaqeDFnZ5EinaGKYU+xqq1K6VXIILnROKj2Jx3Qvd25SXRr4H
         hkow==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=nqfCPKIk;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::d42 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=D2QfLCzFmEqX3FEqNWb5vjM5BTAIl/xsK3kMgxNHGLI=;
        b=JVECexTpzd9IJtvJeM1jQGcGyLez1NEqXf3hOF+490HC1oQat8twVfm953+MNYpXAh
         EcnRbkIaTDfNHQ43MoMhxIBYjgYsTYN3V30K4xRcpJ10P469/7QTxQM1zH4w9VdmuHz2
         CppUg84OUp84THkt8YAM3be3nqm9LisRD2bcMbjMq0bdpnPL9T+1xikqSFbhvwUATWTe
         K2VbXpiLnvKE2cgMwMsA0L8apWo6o9lRj6tlDS+sh7Pe6h1+S+OU4hqdS+rrQ5//bMI/
         xvd+DSwz1LD8+Fkb93z+Bk0ek4dAN1UQ0Nf/j0HXIGpHsb1+XAJsOoZQLGWfvHe3SS/l
         DOVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=D2QfLCzFmEqX3FEqNWb5vjM5BTAIl/xsK3kMgxNHGLI=;
        b=lstO6XmWF9l9lf+XdJB9/muVLVM4YTh+g9IxciO6r84XeYgvw5bUammJtncy9Fb0s0
         aBWoBfnVQLFE9VDfs1S/PI5pCNNobyImFz31pCFb0UNtF0B3sbvgzOwXVZNNEhX1Ddop
         ZVU7tRmTb1awTxlithAr+0NHNiTu3Nob/5Fbmb9PrMX078PcuNtKjzyaGTO4yZQNz7BX
         4dU1NDPjdZe6c/fqaoulqDtfHrjP1FbpmBZD8f5pQXv9B7gd0kWkxoT325boj5RYNwAf
         qrHYq4kRp/HMoYuJjPQL7mJb01TETg0OKee71roWtKtpOjHc8eJKA29zisatDnNQIZ2b
         d1Gw==
X-Gm-Message-State: APjAAAWmIdvNDs4xkFwtf2+0kB+Qlo2C5q6I6NbIeA83U4uzWYSXnjcC
	2K9ECiQeIwgDRhvOQP90Dis=
X-Google-Smtp-Source: APXvYqz3WsCRSLsw2ismq1l7MVDoSiyrUQwOf8qTVZd6lBcEb8jrn871LmLk/ixSGYLZYzebBZ9uwA==
X-Received: by 2002:a63:d515:: with SMTP id c21mr736140pgg.97.1570492054311;
        Mon, 07 Oct 2019 16:47:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:f004:: with SMTP id bt4ls281634pjb.1.gmail; Mon, 07
 Oct 2019 16:47:33 -0700 (PDT)
X-Received: by 2002:a17:90a:9f81:: with SMTP id o1mr2187499pjp.60.1570492053845;
        Mon, 07 Oct 2019 16:47:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570492053; cv=none;
        d=google.com; s=arc-20160816;
        b=q/KiVAm3Hs0NUW6bgEKl7q5lmMBwLHFK56PbDGVYQp4lUvqQP8vSiJGtO/A4O72A52
         JS+iEw7U7s0VR8awllt0w+gO6kmQAENd+HBYy1q3pJxgNSgP0KPCKCScRDZ1l7yjXPnS
         yxtpYD+/+N5e4xm1HDOLvug8GqL+ZXkqYU0EsDlLtkrGY4P6i68AcydHjoSjuGnwJoz+
         QnELQAKJBxEY/dPfVKhaV2KYhzrJ4YRBvWAEIPyaO3PPxfrx4cntslWbnFXcZ1Ngn81r
         khnxUfyLO+TCYjo5lbEOXRV4YQqaOSs5B8eWdswglIrn57HhHFaS+kI3WWnM5+oWvi+0
         FySQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=xnyKJXgvVV5y+/tv5Bz/6ObFZv040M9Q4q4p9btukJg=;
        b=0bJBy/8x5oUcmdGakSeT+2NNv8pyv3vW3ZBHZpHdw3hfvDe/C/UICF+30rDlEwB7hM
         4rSlhcjQFDpGApUECoNnOpKEyo9k5fhyqPxH7TKxs0Hhar6wOM8KhBJJFKioLUdoVMRr
         ltFonDEIbIWfN8KwCK0OGDIM1nUlsJRaiIlQP5fDU0rcuHaU31COjxnCHGp4XNVDkQ7N
         npXIF68fwx4JH9lAioitMzaFWndabMZd9Zn0T1ueMcZ/PvJkXRrUocT/JuhjXK3ghRUw
         0yBQMUFxyZ1op6v/sW2RxdzsavdzQkQzE9m1VQct1T4tA3TpFDqNS5yx0LZT0NhKwpmN
         q/ZQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=nqfCPKIk;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::d42 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-io1-xd42.google.com (mail-io1-xd42.google.com. [2607:f8b0:4864:20::d42])
        by gmr-mx.google.com with ESMTPS id o23si37107pjt.2.2019.10.07.16.47.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Oct 2019 16:47:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::d42 as permitted sender) client-ip=2607:f8b0:4864:20::d42;
Received: by mail-io1-xd42.google.com with SMTP id z19so32770801ior.0
        for <clang-built-linux@googlegroups.com>; Mon, 07 Oct 2019 16:47:33 -0700 (PDT)
X-Received: by 2002:a6b:f411:: with SMTP id i17mr27210166iog.201.1570492052741;
 Mon, 07 Oct 2019 16:47:32 -0700 (PDT)
MIME-Version: 1.0
References: <20191007211418.30321-1-samitolvanen@google.com> <CAKwvOdnX6O0Grth11R8JLoD9bp-BECheucZKHbiHt4=XpQferA@mail.gmail.com>
In-Reply-To: <CAKwvOdnX6O0Grth11R8JLoD9bp-BECheucZKHbiHt4=XpQferA@mail.gmail.com>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 7 Oct 2019 16:47:20 -0700
Message-ID: <CABCJKudGtvVazLpZFdbhe9z-4mx_t16zxzkcwYbdAJriakrWqw@mail.gmail.com>
Subject: Re: [PATCH] arm64: fix alternatives with LLVM's integrated assembler
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Marc Zyngier <maz@kernel.org>, Kees Cook <keescook@chromium.org>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=nqfCPKIk;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::d42
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

On Mon, Oct 7, 2019 at 2:34 PM Nick Desaulniers <ndesaulniers@google.com> wrote:
> Should the definition of the ALTERNATIVE macro
> (arch/arm64/include/asm/alternative.h#L295) also be updated in this
> patch to not pass `1` as the final parameter?

No, that's the default value for cfg in case the caller omits the
parameter, and it's still needed.

> I get one error on linux-next that looks related:
> $ ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- make CC=clang AS=clang
> -j71 arch/arm64/kvm/
> ...

This patch only touches the inline assembly version (i.e. when
compiling without -no-integrated-as), while with AS=clang you are
using clang also for stand-alone assembly code. I believe some
additional work is needed before we can do that.

> arch/arm64/kvm/hyp/entry.S:109:87: error: too many positional arguments
>  alternative_insn nop, .inst (0xd500401f | ((0) << 16 | (4) << 5) |
> ((!!1) << 8)), 4, 1
>
>                ^
>
> Since __ALTERNATIVE_CFG now takes one less arg, with your patch?

__ALTERNATIVE_CFG (with two underscores) is only defined for C code,
and this patch doesn't change the definition of _ALTERNATIVE_CFG (with
one underscore) that's used for stand-alone assembly.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKudGtvVazLpZFdbhe9z-4mx_t16zxzkcwYbdAJriakrWqw%40mail.gmail.com.
