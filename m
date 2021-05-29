Return-Path: <clang-built-linux+bncBCRKNY4WZECBBKEVZKCQMGQEDZNQUWA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3c.google.com (mail-oo1-xc3c.google.com [IPv6:2607:f8b0:4864:20::c3c])
	by mail.lfdr.de (Postfix) with ESMTPS id B62F8394DAB
	for <lists+clang-built-linux@lfdr.de>; Sat, 29 May 2021 20:40:41 +0200 (CEST)
Received: by mail-oo1-xc3c.google.com with SMTP id z6-20020a4ad1a60000b029020e858bcefbsf4809349oor.17
        for <lists+clang-built-linux@lfdr.de>; Sat, 29 May 2021 11:40:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622313640; cv=pass;
        d=google.com; s=arc-20160816;
        b=q7ZtVaB2xGNDbWRQlip8OFTfA0YyUQNdTHUQxRBIBns3TD8dLrEuUlZgmvSgaIC+PJ
         uCW3jPIyurpa5okfBcPq8xm5H/htAC7ltcX+a+UQSTjnFCkrCNzpWmAVD6fx4u7h7SdM
         EkE0W6KXXmhT/coXrqptI/a3eqD2GxfIkt4FnkQjg9sOEDZv1GLF65yDDeQzOHbt7yeU
         dhmCfpG93t0lt5U1//BBUqEvujIC7Ij/P9CJJw33bsXeliS8u30mRk+NIEnylOxsjKvU
         po+0/6oe9SUsfsTM4b2lLYzkzW1HUE4iiRBge2V2zthu2q5rK+fmLX1OZsQ/YrDpNT45
         0yOg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:to:from:cc
         :in-reply-to:subject:date:sender:dkim-signature;
        bh=KdgVYE6gsPzFGErHXRG6R5tCFs1Pbkn/378HQ7+nGh4=;
        b=FL4VfU7YI2+IvrDzeEV6I+J8xHgArQ84YuCd5apz/CODt0TVSNXUabR14h8EMcEeuB
         qZhWvlTFsSjI71ERN5coiyHzTj7AO5IUtM63SI26ES1ggNml7tqkKNmMZADnG43JuWRd
         gtVFmbybotduuDBUmhZTKJgPM1McMMI0Op7dyvsRFrrdt1OhsZ7fTjZtAaNpm0Ngzzt9
         w2lNg7RtR9FQGLbnpHjpgMatz9nMHLfn9BHKpsldRVNN39Zt9taEJsai0zTjZCYTU28Q
         LuJRkfnCVwMVkrbeyHmCHN9icOdBuzigkwSauFu7RWc0XZviA7v/Ap5KNpKp8Tq23RTX
         I59g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@dabbelt-com.20150623.gappssmtp.com header.s=20150623 header.b=iKKFs34f;
       spf=pass (google.com: domain of palmer@dabbelt.com designates 2607:f8b0:4864:20::1034 as permitted sender) smtp.mailfrom=palmer@dabbelt.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:subject:in-reply-to:cc:from:to:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KdgVYE6gsPzFGErHXRG6R5tCFs1Pbkn/378HQ7+nGh4=;
        b=VV2Fk6feQxtxc81Kfmo/oE9EwFgzETExXqGz2ibfBD47AfiigpNWa3LDs2saWb5iAC
         vT8O9/tDlA1TEIIPA7DAy+TlOLmuq+MfwGHB4yRyWwsBqvDUbZCPG700XXpTwowgf6TF
         tuVY3oa/vFwxtS0zMf7cH1uo69OYx7LR5acgc9NHkejGmNxBDOIj6cVMaM4sWS7TrNI+
         qxA1+sezvk9NUwYC9SK4tC+TvQlNJB5WoTmdj9nCmrhpkuNvaEzrAtr4TnFRyGeRgajw
         r6aZdmetvlcY0z/AqzGD7seYq557Oqx2dzD6FZK/lXvPbd9kSnq04WxS8vAh3VnvhkgD
         35AA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:subject:in-reply-to:cc:from:to
         :message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KdgVYE6gsPzFGErHXRG6R5tCFs1Pbkn/378HQ7+nGh4=;
        b=HLXQ+u/n7l2ulqkFR7WjSXeIdB8QeVlOSyfcYnW324fcxEbiRvNu2XUHgZSEf0206W
         vr3m+5c/i/g1e5zQB/htNijbyX2ErtCrG5RSbv9EyQ0GT/VS+IB1S8/CT3vi23ACMRMv
         U/09IWcZDTNSpHxvg3o9+iro/r8Jf5qC+3gekcDbW2qCkaiV7mG3WgzcjQO/8J9+9rG+
         GNIEpt3x1wt8w85eW8m1usTa2qnAMdiHy19xMFVCzNQJDRNR6jtEaOUqxtYzUYVAt0xl
         tvWiqJTC4AJgCqV1eTvx/oFDiIY8cE1Us0RxB6iJ4fkYItnRRuCRlXOmWfehESux/xdu
         rT/g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531187VsEJj6w2QcBWZbYbfcrrvC8wJmSjUR359VD690WoPaFbJ1
	V/GStdHV0sOd+ABLlmJWU1E=
X-Google-Smtp-Source: ABdhPJwv+nP0OStxYUB+nRPNGbV7jMpdJmm0OxqluEU7kWfYqOBazHFB3pK1d/NmNjR4VQ4WIQ7NAA==
X-Received: by 2002:a05:6820:169:: with SMTP id k9mr11520527ood.92.1622313640419;
        Sat, 29 May 2021 11:40:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a54:4705:: with SMTP id k5ls3017909oik.3.gmail; Sat, 29 May
 2021 11:40:40 -0700 (PDT)
X-Received: by 2002:aca:1910:: with SMTP id l16mr9383749oii.69.1622313640088;
        Sat, 29 May 2021 11:40:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622313640; cv=none;
        d=google.com; s=arc-20160816;
        b=UzZNbW03HROlwYvFjxKRSqjY53R+YHFa0Xix0wwutHE4Kc8nnTB+J5mQs54lUNmLRJ
         228flwP2SLPV8D7kAgRHJDX2wNBqRdbEDF0mpr8cuoPKiR3Bvsq0rt7746h0EjIMAOJK
         G1aOlHjO8Nb1/+DTlls1m4DWZxKpy4xvYn3oJpC5T1xVboQk6Op2zeteLYhj+zxs4Pni
         AbH2K9R9ymVGmtLt/666+IOG3C1N+GNt0HNYQPaE2YiHuMWfuSIVuRodVtzyzcqCP4N0
         tLvKS/Eh+AUlamyqL3m/DXxjNAPgD5Crdiz1/LCGZ9Zxc+EiZp1AMwJaJ/oEcweXcZIt
         2fwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:to:from:cc
         :in-reply-to:subject:date:dkim-signature;
        bh=wUlCbnys0eqW915jnbNuaHW9wIXlmhiIpLYJvmfP+lw=;
        b=JweAeyuFlQAa7A+ZG7vF3OxWXpW01BR8u3F1mrP9c77j1cVJ8upXkMwILTZ68mqKGe
         414DvPnATxjj1pfoZdSyGq8GieEytTL4xffCHMfU5UkLWnJuvAUKN7nekLQUxSZGlL05
         JV0Wxb+exi++GrKmu/JMlty+OMFsvPD3O3xwHnGn0hbrxYb7sXOi64ddOWmQExsX7TMh
         wTvjNmJSp/ASoygbivbP/VhV3qwiluG38CUvH+zVOfgKqfWhsP4MzzkJUSe4i7yQr+vk
         p91mcZf8gHstc04RnAl6g4e0lsf2ofreqhUOq9R94cIev03Riz/t5hwxynbj1WcMhNbJ
         SCuw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@dabbelt-com.20150623.gappssmtp.com header.s=20150623 header.b=iKKFs34f;
       spf=pass (google.com: domain of palmer@dabbelt.com designates 2607:f8b0:4864:20::1034 as permitted sender) smtp.mailfrom=palmer@dabbelt.com
Received: from mail-pj1-x1034.google.com (mail-pj1-x1034.google.com. [2607:f8b0:4864:20::1034])
        by gmr-mx.google.com with ESMTPS id a25si763687otp.1.2021.05.29.11.40.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 29 May 2021 11:40:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of palmer@dabbelt.com designates 2607:f8b0:4864:20::1034 as permitted sender) client-ip=2607:f8b0:4864:20::1034;
Received: by mail-pj1-x1034.google.com with SMTP id h20-20020a17090aa894b029015db8f3969eso4343111pjq.3
        for <clang-built-linux@googlegroups.com>; Sat, 29 May 2021 11:40:39 -0700 (PDT)
X-Received: by 2002:a17:90a:1d0c:: with SMTP id c12mr11066337pjd.122.1622313639577;
        Sat, 29 May 2021 11:40:39 -0700 (PDT)
Received: from localhost (76-210-143-223.lightspeed.sntcca.sbcglobal.net. [76.210.143.223])
        by smtp.gmail.com with ESMTPSA id f9sm6801608pfc.42.2021.05.29.11.40.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 29 May 2021 11:40:39 -0700 (PDT)
Date: Sat, 29 May 2021 11:40:39 -0700 (PDT)
Subject: Re: [PATCH] riscv: Use -mno-relax when using lld linker
In-Reply-To: <20210514205643.383422-1-raj.khem@gmail.com>
CC: linux-riscv@lists.infradead.org, clang-built-linux@googlegroups.com,
  Khem Raj <raj.khem@gmail.com>, Paul Walmsley <paul.walmsley@sifive.com>, aou@eecs.berkeley.edu,
  nathan@kernel.org, ndesaulniers@google.com
From: Palmer Dabbelt <palmer@dabbelt.com>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <mhng-d39fe45d-7a16-4287-8cbb-1233abe46729@palmerdabbelt-glaptop>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: palmer@dabbelt.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@dabbelt-com.20150623.gappssmtp.com header.s=20150623
 header.b=iKKFs34f;       spf=pass (google.com: domain of palmer@dabbelt.com
 designates 2607:f8b0:4864:20::1034 as permitted sender) smtp.mailfrom=palmer@dabbelt.com
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

On Fri, 14 May 2021 13:56:43 PDT (-0700), Khem Raj wrote:
> lld does not implement the RISCV relaxation optimizations like GNU ld
> therefore disable it when building with LLVM=1, Also pass it to
> assembler when using external GNU assembler ( LLVM_IAS != 1 ), this
> ensures that relevant assembler option is also enabled along. if these
> options are not used then we see following relocations in objects
>
> 0000000000000000 R_RISCV_ALIGN     *ABS*+0x0000000000000002
>
> These are then rejected by lld
> ld.lld: error: capability.c:(.fixup+0x0): relocation R_RISCV_ALIGN requires unimplemented linker relaxation; recompile with -mno-relax but the .o is already compiled with -mno-relax
>
> Signed-off-by: Khem Raj <raj.khem@gmail.com>
> Cc: Paul Walmsley <paul.walmsley@sifive.com>
> Cc: Palmer Dabbelt <palmer@dabbelt.com>
> Cc: Albert Ou <aou@eecs.berkeley.edu>
> Cc: Nathan Chancellor <nathan@kernel.org>
> Cc: Nick Desaulniers <ndesaulniers@google.com>
> ---
>  arch/riscv/Makefile | 9 +++++++++
>  1 file changed, 9 insertions(+)
>
> diff --git a/arch/riscv/Makefile b/arch/riscv/Makefile
> index 3eb9590a0775..519f133e0d53 100644
> --- a/arch/riscv/Makefile
> +++ b/arch/riscv/Makefile
> @@ -38,6 +38,15 @@ else
>  	KBUILD_LDFLAGS += -melf32lriscv
>  endif
>
> +ifeq ($(LLVM),1)
> +	KBUILD_CFLAGS += -mno-relax
> +	KBUILD_AFLAGS += -mno-relax
> +ifneq ($(LLVM_IAS),1)
> +	KBUILD_CFLAGS += -Wa,-mno-relax
> +	KBUILD_AFLAGS += -Wa,-mno-relax
> +endif
> +endif
> +
>  # ISA string setting
>  riscv-march-$(CONFIG_ARCH_RV32I)	:= rv32ima
>  riscv-march-$(CONFIG_ARCH_RV64I)	:= rv64ima

Thanks, this is on fixes.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/mhng-d39fe45d-7a16-4287-8cbb-1233abe46729%40palmerdabbelt-glaptop.
