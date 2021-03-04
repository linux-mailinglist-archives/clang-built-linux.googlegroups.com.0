Return-Path: <clang-built-linux+bncBDYJPJO25UGBB35VQSBAMGQEQ6T3U3Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x239.google.com (mail-lj1-x239.google.com [IPv6:2a00:1450:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id 4235D32D8AD
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Mar 2021 18:37:52 +0100 (CET)
Received: by mail-lj1-x239.google.com with SMTP id b14sf10835962ljf.22
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Mar 2021 09:37:52 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614879471; cv=pass;
        d=google.com; s=arc-20160816;
        b=iEC+PaCoa9wWIBTNk6IsVQ8I3lrygKHynBwT0ISXVNUHSKmlu1D26wE3dG7X+ostJe
         HU2UUrS/PV490S6vgJXmsDC5ekwFErh5hw7B4pLhr+oaq4LNOaLPeYpthvqnOhMo3pbl
         9sLwiAFDMBwaxM9SzHOa40Z7jJwluElMeDd2ePQk2ImIQz06HgKt6y2UCH/nC5a4uFO6
         S/P9Ntzz3gCyd448yjzsufhQDWEHtJLlmC5PwEobw1a8TBDe2p740gOaBZWUX5LDzZS6
         BhfUewIF2qFJy9INGQaITsxZtuBs47ECC6MsjbFdysxtZi7x5XaujtUGC0G3ARj6lZxP
         XgTw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=N3zxFNjyG23CiA1hxYM+xuOkD3SKmSOKgSPVFVUqgv0=;
        b=kpVi1u/O4+CBKhic+03ReCa/FVByjoMS5izzvoO6B03oBL51gwLCR33KrAN2CbnVNj
         rVT1vkt62BoUDtIh7iBdctiSchTEds4rI3EvRjVzRp5Vex9ueV5Hvm6WoiG2WXREdDb1
         nr9LIM+VksBVh4NCNtGLtXEVVHUmsAzk3I29tS5nkZs38sWdwqNI77noej1978efPb3M
         RM4Ojfi4EAoMS6xl9kewqG+zq9DJTD4psp83fJeEQ9Q2OVeSOaKiLSjp1PbzfbE2awYz
         zN3Un1Y9coMFQrmWx9U7tyf6RYSbbBg4WshVAhKlEt7S/Wtl/jDHLCro8YNxx8jaSTS2
         VDUA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Tqlqhenu;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12a as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=N3zxFNjyG23CiA1hxYM+xuOkD3SKmSOKgSPVFVUqgv0=;
        b=ONRFuEUMFYLwKaPkbjxAnt1eGyh5Tx15pLdN6GIE57TeJrcXDjjpU17JSGvxBZI7Vj
         Qje7hVvbuy+bkws9QcqFsTUmiVI6rVtCgyor2HjR83VSonfyUYTcT8jkDcjQqQasV4hO
         YJQIQi6MR/wobL5zSYfD54pxjqqly7zAU0Cq8noWnz2uQKHiUxCU5yFbI4m0lp1D9ZA6
         UOuExCETgy/Tegy+CG8w2z4NF/M8DRL5zb1LE84Z+FjAcC8DSX9qZUqvlu/o2sdmrwhe
         6wez0rkNtXhJpL4M1Ktozp8E6aSRkNEa8KCESWeFZyrW9DVPpCDDCJgLzLolyMZfEv5C
         Hm6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=N3zxFNjyG23CiA1hxYM+xuOkD3SKmSOKgSPVFVUqgv0=;
        b=mrbdobjzME9RjM74H8/NLnbNmEK/R5ASNRCb2gnwiDZweqshmljibhifCbE5bVFt9O
         6r2rGm0jjU25GUmqcxhd5ccDO/slaEjNOZvV/PZahg32YuFKFtiVitOC9FHUojOhNki0
         qGI20qZAEWNnlwhkekxainnB4LilxluHY1w5HWoFOfAUdwwTmHzTVMtZ1dJVhBV/fUYj
         BRYeItQaZVWq4/+qQ3lMuneHb3o96dUbFXesi5WaPvrlJCmV2JkmYK5miBFNNu9AZS/P
         OZDn7/p5v3FrzjKQEIXgw73JEWXLPSlJVPqP6bZFDG77u4Xc4Cvpdu4XSA0hspAaLlf6
         qUoA==
X-Gm-Message-State: AOAM533PwTgA2hS3kWP2T4toiXAM4M9/t4iG/3WniruN/RZThtEJCI6b
	+wdJ5pn1z4oBq4TvAhrwX54=
X-Google-Smtp-Source: ABdhPJzxO2DdtE52ejzzg0RICeyrx+DKd7hRF/flMt0ekXlX78MLI6fPnuzEuSrq8f5VW5uRdkQGSA==
X-Received: by 2002:a19:f508:: with SMTP id j8mr2052102lfb.153.1614879471842;
        Thu, 04 Mar 2021 09:37:51 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:3993:: with SMTP id j19ls1660234lfu.3.gmail; Thu,
 04 Mar 2021 09:37:50 -0800 (PST)
X-Received: by 2002:a05:6512:3fb:: with SMTP id n27mr3047736lfq.338.1614879470815;
        Thu, 04 Mar 2021 09:37:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614879470; cv=none;
        d=google.com; s=arc-20160816;
        b=JXxB3A3WbeZpJCQdMMyV715VgLc/D1JFm5doHjNAQDaHVLYS5KZL9JtX2GlyBwd66P
         hsveWgvUiLC3nQzdFelD3jHu/jmKu1OaeOfIXPthUkWAcFxBxyTKWSSibcIx2WvGOT6P
         dEPV2UIOsbKEGtIy9+5SGp7OshBbt6+G/PKSPu+LG3MK1CYVofBRyv3nvJckUqQz1xuG
         Q7qAmVqjK4L6nBotwiIfmsupk13sDnmZETJer9cJX3praZDVCRV/FK6L2CAOwMYr/gKq
         27BcM2kwiM1m+DtfPwfcTecDGIYoqtC4thoPKIx7zHPK/xLU9vLUPGVeFLKhu8vG6c9A
         llQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=UUm+wrU+zPffvuvuqzEDrb7B5867dCk2K+ib6TOEEgo=;
        b=O2LhW8yBAOdYy6sUbH1JYpuowBMZ1TdzsB7gDvmpV1KiSsdqrqVTTcA1usfS82B7+1
         bgK89HT2JdXimrJiUlx/zlQu1ll1Y7efd9z35gfSxdvaSpYiPanHOKXP+K5kYejPss6H
         4qab3TAmRFAQi4k790xeXaw2++/nScg1hvIAK4de+zRPTJGnsoxTGfCG4Qx77wv54hSf
         mNq8wuIRiNWuXzxB09OVH7zzD4kqqDs1qismHybEEYDsJpINIJ5UcrOwLYMcBFCEcxIA
         a2WwMOY0TWF4yHk0IyND0GlLf6rup8Iqs5Gbz3EF9aNtFtvuKnJcoZ8jEloFy202owzy
         OzYQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Tqlqhenu;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12a as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com. [2a00:1450:4864:20::12a])
        by gmr-mx.google.com with ESMTPS id a17si1168ljq.5.2021.03.04.09.37.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Mar 2021 09:37:50 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12a as permitted sender) client-ip=2a00:1450:4864:20::12a;
Received: by mail-lf1-x12a.google.com with SMTP id f1so44601186lfu.3
        for <clang-built-linux@googlegroups.com>; Thu, 04 Mar 2021 09:37:50 -0800 (PST)
X-Received: by 2002:a19:da19:: with SMTP id r25mr2737199lfg.368.1614879470392;
 Thu, 04 Mar 2021 09:37:50 -0800 (PST)
MIME-Version: 1.0
References: <1614845040-12995-1-git-send-email-yangtiezhu@loongson.cn>
In-Reply-To: <1614845040-12995-1-git-send-email-yangtiezhu@loongson.cn>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 4 Mar 2021 09:37:39 -0800
Message-ID: <CAKwvOd=TXBzBb-nJsAMHO99P7y7eOZRJB=veDtesPFNDPuhy2w@mail.gmail.com>
Subject: Re: [PATCH v3] MIPS: Make MIPS32_O32 depends on !CC_IS_CLANG
To: Tiezhu Yang <yangtiezhu@loongson.cn>
Cc: Thomas Bogendoerfer <tsbogend@alpha.franken.de>, Nathan Chancellor <nathan@kernel.org>, 
	linux-mips@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Xuefeng Li <lixuefeng@loongson.cn>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Tqlqhenu;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12a
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

On Thu, Mar 4, 2021 at 12:04 AM Tiezhu Yang <yangtiezhu@loongson.cn> wrote:
>
> When building with Clang [1]:
>
> $ make CC=clang loongson3_defconfig
> $ make CC=clang
>
> there exists the following error:
>
>   Checking missing-syscalls for O32
>   CALL    scripts/checksyscalls.sh
> error: ABI 'o32' is not supported on CPU 'mips64r2'
> make[1]: *** [Kbuild:48: missing-syscalls] Error 1
> make: *** [arch/mips/Makefile:419: archprepare] Error 2
>
> This is a known bug [2] with Clang, as Simon Atanasyan said,
> "There is no plan on support O32 for MIPS64 due to lack of
> resources".

It's my hope we will fix the resourcing issue.  I'm working on that;
it's a non-technical challenge though.
Acked-by: Nick Desaulniers <ndesaulniers@google.com>

>
> It is not a good idea to remove CONFIG_MIPS32_O32=y directly
> in defconfig because GCC works, as Nathan said, the config
> should not even be selectable when building with Clang, so
> just make MIPS32_O32 depends on !CC_IS_CLANG.
>
> [1] https://www.kernel.org/doc/html/latest/kbuild/llvm.html
> [2] https://bugs.llvm.org/show_bug.cgi?id=38063
>
> Signed-off-by: Tiezhu Yang <yangtiezhu@loongson.cn>
> Acked-by: Nathan Chancellor <nathan@kernel.org>
> ---
>
> v3: Update the commit message suggested by Nathan, thank you!
>
>  arch/mips/Kconfig | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/arch/mips/Kconfig b/arch/mips/Kconfig
> index 3a38d27..f6ba59f 100644
> --- a/arch/mips/Kconfig
> +++ b/arch/mips/Kconfig
> @@ -3318,6 +3318,8 @@ config SYSVIPC_COMPAT
>  config MIPS32_O32
>         bool "Kernel support for o32 binaries"
>         depends on 64BIT
> +       # https://bugs.llvm.org/show_bug.cgi?id=38063
> +       depends on !CC_IS_CLANG
>         select ARCH_WANT_OLD_COMPAT_IPC
>         select COMPAT
>         select MIPS32_COMPAT
> --
> 2.1.0
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/1614845040-12995-1-git-send-email-yangtiezhu%40loongson.cn.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DTXBzBb-nJsAMHO99P7y7eOZRJB%3DveDtesPFNDPuhy2w%40mail.gmail.com.
