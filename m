Return-Path: <clang-built-linux+bncBDYJPJO25UGBB5UB3WBQMGQEYZ4ZREI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13c.google.com (mail-lf1-x13c.google.com [IPv6:2a00:1450:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id 24DB735FB97
	for <lists+clang-built-linux@lfdr.de>; Wed, 14 Apr 2021 21:22:31 +0200 (CEST)
Received: by mail-lf1-x13c.google.com with SMTP id f11-20020ac2532b0000b02901aa350474f9sf1297082lfh.4
        for <lists+clang-built-linux@lfdr.de>; Wed, 14 Apr 2021 12:22:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618428150; cv=pass;
        d=google.com; s=arc-20160816;
        b=TNzOEeTiRwwoh/CgFWcrphM7oUK/QsHrm/HDnYsXHB51W6LFvUvWl0lY3j+p8kaafx
         sJtXV7k4bCYQrMKp0Tct5hBXifbSuuvqR6ZtEm+xnON2KsEBEIKKWiLEGHd9H8LFZppX
         /ry4yV2dmoG24hx6cXsupftErD79SqnomCoV2j5aIPv3EOgxtvb1habLG27W25ODkr54
         bV8Om3zGxQRSdDlXcQBgkip49TwmrtLxEhTK3B/CzCuDvCy7/34o9j4Exjtd2Ef26UCA
         7436Nn5q+J5etBhtlajdYiV3Oa7O/0lsey0FTrgkrYjEj5XXPeHArk+9Opn4xysM9+z0
         htmw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=jZ2+B5jP0wLILOCFxYbhap0ecoZRbA8vmTM1GHx0Fz0=;
        b=MciJ5KG2ErtAvJB9SCpLDiCjJyNqYUAcISQqV6oARlMQkGR7OU3MUQwQK7g9FVrKlB
         6nnvNjTcftbuzvOTHdJgD/cKfIn5j5jhuB8hCeIP1ikfvg5Bvus9NSk2Dlhv35+hHbl1
         gO+hZno+ZECPlFxVokpeSNlbkp21Ys3Y6co3VbTiACGrIcuJZ3cKYl4TRjvaiVHG+nlT
         2pdYNEuoC1z488pzhOaK/hNl/b82EfOGYtbnMlXMOAOZNXaAksLqP/AXxkcJUk55ef4p
         FI6QOe+zo4E5CDJyJumzF6GyZkCCS7ecgACQL4lHR3czHNcjAAq2JEmKOqwJxAY/vmiW
         o6CQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=thrADslz;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22e as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jZ2+B5jP0wLILOCFxYbhap0ecoZRbA8vmTM1GHx0Fz0=;
        b=N5uAerIZDz6agfD5W8/CO6yzAdynnecJCS4xBK08vT1mbbc2eQum8L8zwrrXbcwgRP
         V0eq9BYjPqg810Khgtz0R9J4F01hmNMyv4ExVcb3IXpLlSsPKkEnkKO5PxPMICENpJeW
         NSHPyJrqovZOyjVpMgNwjkJ7Owww7pGne+Lk3lKzdV1tUtE1Ibmbn2+Jj2RJol6Tnat1
         oz4T6//YMgHhNOE/skrG3D/G3BbueXKs7/rNKR5H/4nqq865+kiCYfg5sjPj1JhG+B27
         9tOzzG258uNJw4xu06toPqTasAHP2QK9UVho3rgJs9Tp/CnNUnqxycDaus5PxAMPwyAv
         SsgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jZ2+B5jP0wLILOCFxYbhap0ecoZRbA8vmTM1GHx0Fz0=;
        b=Eoalmj9mt1omubGYo0TVIJbERfGcmumtzAkAhrLFpZYd91oKKZER70bXoukFA4bBju
         7fjXSAGWbZbsIj3X3N8FOgYBDCqksvbqE8RgSvfT8dXMrqLuiGNlm5/Uo9IDIV7QcD+P
         9HTH35veFE1qR62OGAKwpYUr4dh2JP880g98r5/Cvc25CO3b7T6l7XhphsHzBlemfnjV
         A1S5eTfbe4P17umGGnfPqj/q/HEhzX7QUAVaMC9f0TZaHTvOztYD6bW1AdZlfMgyqC+Y
         uyAuZZpR23hJXabnFxdFAavtCIBsgSI8AtaKVnnsjkF2btudyDtdseUs8LPuU4cLTeMM
         R6jQ==
X-Gm-Message-State: AOAM533Tqh38Wc9Emh2H9bd+IC1aN/pncuuFJ/zXQMtZcY8jvJbTZDLd
	0KOBKCFnVL+HHhpFeY8t41w=
X-Google-Smtp-Source: ABdhPJxH7gc9FgkB1+9djoxZ73djDavl03CdozVLxg5gtNlt/av5ZfNk5C3ZO7GRrOIZXr+yFgWOdg==
X-Received: by 2002:a2e:98da:: with SMTP id s26mr25161599ljj.190.1618428150668;
        Wed, 14 Apr 2021 12:22:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9a48:: with SMTP id k8ls579631ljj.10.gmail; Wed, 14 Apr
 2021 12:22:29 -0700 (PDT)
X-Received: by 2002:a2e:bc0a:: with SMTP id b10mr24753048ljf.231.1618428149617;
        Wed, 14 Apr 2021 12:22:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618428149; cv=none;
        d=google.com; s=arc-20160816;
        b=Ig+UnErdc8ssXudNdvfNTuyZ3YXQuILeyIKYQ00yZivViYLQoJh4+tICkYuhj9Y6s5
         lUYwvrNf7o5+yOE0mkyV+E8kBYHvecfi9dDtk2SdZ6qSLLg5iHE+cY2zTQLJC0dgo/HE
         2vUBNpDIYAv83DcGodUf4ZILwl32wZipuJMh9kNSKaVq6XTSt3BdNtaEsrsRiNU4G4XN
         F1l5szzxocXeJsfQYj2r14ulPB7yIYiYARJW9kkt2Vswo6cmJsf75xD2JvBcBaEPA/PT
         OBCkSeGvc7o3nnTu0hGMr17t3VDeN4clAZvoF2ckfsLkuoCpvb/w7QhlSGcJ/KQVb9oS
         mMpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=PUOYXNfICZdC1+9G6F70MzTNDWMZ0Mz9R8OhGw2MATA=;
        b=jYOhUZXfHogZMYXEc48Ab5Jwna5oF8uJAiUo079uD+XLkePhz3U03TkvrW9WO/naZp
         OzXqKAWFoYq/PSH4TdYGak+VPs4EBKBCYJyC2LlmClqeZtSj1jEnnmNGtxxEvNF37iBt
         9CItGL9+ATyyrlGNrxLlSnpBNDmbls+8UFVd/IbZ2N1bjGbMSCxOCEX4l0DgkaQcUf/e
         NBL+8H1mjC8xU2tj9s79iswWmHLwB9nrfMEy9glMk6ocda8iuLfbUkBJPPXP4KJJEC0Z
         w6zBtx55VU7NLJviC7HN8zagkUNk738BAhwPdFp4p5AAYmqufpqyAWuUbadxTfO3ZTQg
         +kyw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=thrADslz;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22e as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com. [2a00:1450:4864:20::22e])
        by gmr-mx.google.com with ESMTPS id j7si21379lfm.9.2021.04.14.12.22.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Apr 2021 12:22:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22e as permitted sender) client-ip=2a00:1450:4864:20::22e;
Received: by mail-lj1-x22e.google.com with SMTP id m7so13661743ljp.10
        for <clang-built-linux@googlegroups.com>; Wed, 14 Apr 2021 12:22:29 -0700 (PDT)
X-Received: by 2002:a2e:b008:: with SMTP id y8mr23815586ljk.233.1618428149110;
 Wed, 14 Apr 2021 12:22:29 -0700 (PDT)
MIME-Version: 1.0
References: <20210414000803.662534-1-nathan@kernel.org>
In-Reply-To: <20210414000803.662534-1-nathan@kernel.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 14 Apr 2021 12:22:17 -0700
Message-ID: <CAKwvOdmHA-5BLVMTViJuuqnHTLnVHaJeHf7M0nbfscxPFKYSPQ@mail.gmail.com>
Subject: Re: [PATCH] arm64: alternatives: Move length validation in alternative_{insn,endif}
To: Nathan Chancellor <nathan@kernel.org>
Cc: Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>, 
	Sami Tolvanen <samitolvanen@google.com>, Jian Cai <jiancai@google.com>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, "# 3.4.x" <stable@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=thrADslz;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22e
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

Thanks Nathan.
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Tested-by: Nick Desaulniers <ndesaulniers@google.com>

I did some additional disassembly comparison.  In case we ever need it
again, I'll copy it below for posterity.

$ ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu make LLVM=1 LLVM_IAS=1
-j72 O=/tmp/a defconfig all
$ b4 am https://lore.kernel.org/lkml/20210414000803.662534-1-nathan@kernel.org/
-o - | git am -3
$ ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu make LLVM=1 LLVM_IAS=1
-j72 O=/tmp/b defconfig all
$ for f in $(find /tmp/a/arch/arm64 -name \*.o); do llvm-objdump -dr
$f > $f.txt; done
$ for f in $(find /tmp/b/arch/arm64 -name \*.o); do llvm-objdump -dr
$f > $f.txt; done
$ for f in $(find /tmp/a/arch/arm64 -name \*.o); do diff -u $f.txt
$(echo $f.txt|sed 's/a/b/'); done | less

For no difference.  You can check more sections than .text by changing
`-d` to `-D` for llvm-objdump, though you're going to get a lot of
noise related to changes in .strtab and relocations referring to debug
info (.debug_str).  But if I drop your patch, rebuild, and recompare,
I see the same differences.

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
>
> base-commit: 738fa58ee1328481d1d7889e7c430b3401c571b9
> --
> 2.31.1.272.g89b43f80a5
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmHA-5BLVMTViJuuqnHTLnVHaJeHf7M0nbfscxPFKYSPQ%40mail.gmail.com.
