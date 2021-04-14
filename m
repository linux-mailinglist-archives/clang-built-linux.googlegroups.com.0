Return-Path: <clang-built-linux+bncBC2ORX645YPRBFOV3SBQMGQEDGDB5GY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3b.google.com (mail-yb1-xb3b.google.com [IPv6:2607:f8b0:4864:20::b3b])
	by mail.lfdr.de (Postfix) with ESMTPS id B40CF35FA00
	for <lists+clang-built-linux@lfdr.de>; Wed, 14 Apr 2021 19:47:02 +0200 (CEST)
Received: by mail-yb1-xb3b.google.com with SMTP id g7sf97315ybm.13
        for <lists+clang-built-linux@lfdr.de>; Wed, 14 Apr 2021 10:47:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618422421; cv=pass;
        d=google.com; s=arc-20160816;
        b=nwUaEkgqQ//FKsBewMbFw8Ql4ZH1IqkxzNBdoc7z/43uTKPqVnXR5btb2kTy4oJAqD
         cStyi9poMPzZFvny41QT/4P5XLtoyNPGff670ZgOsulgFicoWxZrG/bu8ERYXPO7I5ZF
         8unH9hhJZO/wzTPVIRLJfEVO84xHMrP3NbcVQj6QGy3NWC04geVCaqAlMpFK5ZiFBbUG
         N8GY8oRrau0pajTzwfrOYD+lKScH9CCBePdWfyvgm3J8sE6A/GgCFqAGsXdlbPw9QRrB
         pv708cA2JRo1mnXBqpmygKnPptouq9qG+2FY55vKLG2esk0iWG4UaZASoVhyminCMMSd
         TmBg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=KOBg0BT+Z/gpTp9qEkmz6x3jT3Ank9Sq3VPMGeeMesU=;
        b=OhOnHOtSkXrrjvYpRIaQe7UW8bu4ZEAieg/P1fRhhiyPOmSKcoaHh1g2CNH1UCHmy+
         qj3xanNUSPaNSaGW14129zRYBaeeZ5fBQXqYW4o41VgY4dUDPWvki0LUtKos27MfSqIE
         wFRiD1c4dHOLFOpQaixp29k71yKL0z3qU73iAUUqvmPURQ249h/0dg0CDMCkP3zCciXL
         64e5Xv6gRfyLzAHYqPSkOOFx7THe4LWacpS+gLFS8wrV4YL/ZaGzKiUHblf06EYDCeRy
         S67htz+NyWyMmqWQOMa3RuIpP4RGCBxx4XSS1J8WpjsGEOxncFAiVfqmRRcP0/4U8ZVy
         1ADw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=FASsM6Mq;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::933 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KOBg0BT+Z/gpTp9qEkmz6x3jT3Ank9Sq3VPMGeeMesU=;
        b=lct9RG5LGpbHtxJndrq4ab+lLpeXlAFu0ykkDLdf7WNQ/4bTOAQv5p47kRN62m+Lbb
         8xhK7gkdUx6l6YVV8LDVnHgVAiismpeDGR61Gu2s4mtcDsdaCGuH/PufVVqbvrBSGylN
         OkunPgRcH7MglmNM7dCbi5X6Yr1WnCS2P8oXNFnPHxcjW8VBzBP/T0NwH9OhVAZcdajy
         RyaivPIlj7fYz9gxxx3znTb2b3Yv0EgbAIN1Qg/Ve0+/o7vzhBy+LbCo5QkCfVSykIxF
         WSevh/j7Ej4IKCuGP7X9ylE6C6XpZM7V5FGp+NP6FUgo3cjfjn5WqPgVJ0XRgC240Kr+
         u+uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KOBg0BT+Z/gpTp9qEkmz6x3jT3Ank9Sq3VPMGeeMesU=;
        b=WDL28YjKn0V3b8zX0c1wLi4hJpYSCWICNjUxXmjCvM36gKi8Nd9lbsRe3Yt/DefS+k
         FQTmDoAI+C0aPaHkjYL7IjmB3Hk0pOvZ/KmOkBvvkHsOJThlJNtjOGrczG2q2ro6cw8v
         n69L/wUG81F91d33ulvP7WpNi1Usicrazz4XMejUfceH/RvP6et8O0K27abtZzEuXxhX
         yxnPWug/T8r4R8igrRYveJDMmbKcp6L0fzXo6zZMo5JcDsT/6SwjvmKN9ggzPIFWR65Z
         nWpfQ0y3UU3FZBDKVI7I0sq8cSB2i8+O1CtWnN2zYExun9bQn/jCbPF0rkbqIx16gnxo
         Wktg==
X-Gm-Message-State: AOAM533iPUhLxWISmJ4s60WcEIjo3tpRQeKFCSz8dlRRWoZhtuvNf7EI
	7+SuJh5SniVrLbXVM6deOXk=
X-Google-Smtp-Source: ABdhPJyGE4kp/8DZHFRYMdsVYJVJTPsU0Eww14C6w9WG9o7pBD98pN0+OW1jUgOUYnsgMC2pLpd0Ug==
X-Received: by 2002:a25:3c86:: with SMTP id j128mr40726439yba.404.1618422421827;
        Wed, 14 Apr 2021 10:47:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6902:6ad:: with SMTP id j13ls1332256ybt.5.gmail; Wed, 14
 Apr 2021 10:47:01 -0700 (PDT)
X-Received: by 2002:a05:6902:4a8:: with SMTP id r8mr31182503ybs.173.1618422421368;
        Wed, 14 Apr 2021 10:47:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618422421; cv=none;
        d=google.com; s=arc-20160816;
        b=I31yExOPN+TR1TO3eqvGAy2Yq8xyvGGE8uNc3fKxgg6PPXQTYV1RtR9frMTw09o+yz
         NNJmWgWsrH17CINTV26MF+Ukho4AtD/bgA67vyYUCptO7ipOO4U1zyfa/gntFhQQ667C
         dhyVWw547hbQygoVlfpyafIPfR/A3MuZgJWWkjgAHpGxIcmVk5//3F1jGER+DIZsmdNv
         C+NPOtrHJx9AxYdV+wLSWozOSred0L+yHdAL/QGgv4IFkDjanYtpCPdorCVPl3UqPWcK
         Y75rQLmQVbrw7zEPw1J2cqDkPXhb3BU0ddwaKjHIpFwjpqwbZzkoI0m3cvQcO5C6Wfmd
         b01Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=q97lT2gtlL/ZYrFbpq2z+qcIs3qeeq4P5EG52TEAcdM=;
        b=mtoTjGjXWKdZR5ckpv31be1sl75xoH7RxsUY+idsVKZLrmxyFDUqjrjouHox+Xo//Q
         IrMLCw0IC3WgRpMGB8YjoFXA8/Xls2nR9HGosPU+i076YRzl7O0GEhmTsS2b5/KrB/Rq
         wByH1x3s0IvJ1OxukNBwAeAuaBEVBmXkff0GePrfjUjRtrCMyiwQc4QsmVOWabYeVL76
         9tJ+yotYxtz1aOVWPTNzycCpUD0w+p7G9Mf1Zl+FHs1TaXdBiO0dIT79Q1mTLa3JRZZ+
         MvjQ4EysWFopSxF7n2120H4jhV05fjyYjqv3DZ8nl+STTq/CPQlJWIJT1LI9Z/qJ+WYm
         J7aw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=FASsM6Mq;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::933 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ua1-x933.google.com (mail-ua1-x933.google.com. [2607:f8b0:4864:20::933])
        by gmr-mx.google.com with ESMTPS id t17si28570ybi.3.2021.04.14.10.47.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Apr 2021 10:47:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::933 as permitted sender) client-ip=2607:f8b0:4864:20::933;
Received: by mail-ua1-x933.google.com with SMTP id 33so6660032uaa.7
        for <clang-built-linux@googlegroups.com>; Wed, 14 Apr 2021 10:47:01 -0700 (PDT)
X-Received: by 2002:a9f:3728:: with SMTP id z37mr27839924uad.89.1618422420730;
 Wed, 14 Apr 2021 10:47:00 -0700 (PDT)
MIME-Version: 1.0
References: <20210414000803.662534-1-nathan@kernel.org>
In-Reply-To: <20210414000803.662534-1-nathan@kernel.org>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 14 Apr 2021 10:46:49 -0700
Message-ID: <CABCJKueJjOguo7-PUR1yhZm4sX4F7t-7ZMcjU8pAMBQyv6Pmnw@mail.gmail.com>
Subject: Re: [PATCH] arm64: alternatives: Move length validation in alternative_{insn,endif}
To: Nathan Chancellor <nathan@kernel.org>
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Jian Cai <jiancai@google.com>, 
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, "# 3.4.x" <stable@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=FASsM6Mq;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::933
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

Hi Nathan,

On Tue, Apr 13, 2021 at 5:09 PM Nathan Chancellor <nathan@kernel.org> wrote:
>
> After commit 2decad92f473 ("arm64: mte: Ensure TIF_MTE_ASYNC_FAULT is
> set atomically"), LLVM's integrated assembler fails to build entry.S:
>
> <instantiation>:5:7: error: expected assembly-time absolute expression
>  .org . - (664b-663b) + (662b-661b)
>       ^
> <instantiation>:6:7: error: expected assembly-time absolute expression
>  .org . - (662b-661b) + (664b-663b)
>       ^
>
> The root cause is LLVM's assembler has a one-pass design, meaning it
> cannot figure out these instruction lengths when the .org directive is
> outside of the subsection that they are in, which was changed by the
> .arch_extension directive added in the above commit.
>
> Apply the same fix from commit 966a0acce2fc ("arm64/alternatives: move
> length validation inside the subsection") to the alternative_endif
> macro, shuffling the .org directives so that the length validation
> happen will always happen in the same subsections. alternative_insn has
> not shown any issue yet but it appears that it could have the same issue
> in the future so just preemptively change it.
>
> Cc: stable@vger.kernel.org
> Fixes: f7b93d42945c ("arm64/alternatives: use subsections for replacement sequences")
> Link: https://github.com/ClangBuiltLinux/linux/issues/1347
> Signed-off-by: Nathan Chancellor <nathan@kernel.org>
> ---
>
> Apologies if my explanation or terminology is off, I am only now getting
> more familiar with assembly.
>
>  arch/arm64/include/asm/alternative-macros.h | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/arch/arm64/include/asm/alternative-macros.h b/arch/arm64/include/asm/alternative-macros.h
> index 5df500dcc627..8a078fc662ac 100644
> --- a/arch/arm64/include/asm/alternative-macros.h
> +++ b/arch/arm64/include/asm/alternative-macros.h
> @@ -97,9 +97,9 @@
>         .popsection
>         .subsection 1
>  663:   \insn2
> -664:   .previous
> -       .org    . - (664b-663b) + (662b-661b)
> +664:   .org    . - (664b-663b) + (662b-661b)
>         .org    . - (662b-661b) + (664b-663b)
> +       .previous
>         .endif
>  .endm
>
> @@ -169,11 +169,11 @@
>   */
>  .macro alternative_endif
>  664:
> +       .org    . - (664b-663b) + (662b-661b)
> +       .org    . - (662b-661b) + (664b-663b)
>         .if .Lasm_alt_mode==0
>         .previous
>         .endif
> -       .org    . - (664b-663b) + (662b-661b)
> -       .org    . - (662b-661b) + (664b-663b)
>  .endm
>
>  /*

Thank you for fixing these!

The patch looks correct to me, next-20210413 builds with LLVM_IAS=1
after I applied it, and defconfig built with both Clang and gcc boots
normally. Please feel free to add:

Reviewed-by: Sami Tolvanen <samitolvanen@google.com>
Tested-by: Sami Tolvanen <samitolvanen@google.com>

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKueJjOguo7-PUR1yhZm4sX4F7t-7ZMcjU8pAMBQyv6Pmnw%40mail.gmail.com.
