Return-Path: <clang-built-linux+bncBDYJPJO25UGBBQ6326DQMGQES2PCL5Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43d.google.com (mail-wr1-x43d.google.com [IPv6:2a00:1450:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 11E213CEE16
	for <lists+clang-built-linux@lfdr.de>; Mon, 19 Jul 2021 23:25:24 +0200 (CEST)
Received: by mail-wr1-x43d.google.com with SMTP id i12-20020adffc0c0000b0290140ab4d8389sf9447613wrr.10
        for <lists+clang-built-linux@lfdr.de>; Mon, 19 Jul 2021 14:25:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626729923; cv=pass;
        d=google.com; s=arc-20160816;
        b=N5tOb43YpEvc32DyANRCPpDZuUDHvjcGyQFpciPpV+5qU8FI2uDPXD5QtN7Onzi/2S
         bxNQDN3qBnVG1PF1Gv2DC1+bPvQxBy+aU/PXK4hkHMDTKwZ4iFpRLG2bi7qZvju18cvK
         SgE+ROsOT+eCDIEDqYnu6AJI6qZS4sTvAGh+bWu9A1w0OGYOhcVmV74DYlY+V3diKcLg
         estlxf7OlH21YL7CwWQXnjAd802Y1O/x/y4b8FPoZS1dym9PDH8JguijPra4Spq+Mk17
         dt8U5U5BiM4CyA4d1ao8lQFagaJ5d+89hGbqvTnkatynI+MaWzBgUGrFzu9MtoDWxrKA
         1Tlg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=V/Q2QGI8gpLTeyYWrzonXpBbRxv1118iXe9KVXn8Pms=;
        b=grZJDjc5lFhMRP1vyMmV5NfZjm93WT80tKtJTrnRPB1evnPUDw979w4JrMMOuGDg9T
         sc0KMm18S3M2SP86SfWxCQh2Km9n1vxsMC6POMwrn4b/s5bDjBagHdl6vIdHs+nbf6D+
         5rGNAWIA+SA7b9vggdZcRV39i8iwNn384XPHp7oxSX40bJaTnbfq33B14tafmkF3JYzF
         yC/6VT7+2R4EGLCUGC47vF1y1nSHbOWGo5yiTxAFYXUyR14caZsu5558gCbd66sKkIaA
         7VAT48qDdm642V+cqlAob0E5rbt8zXASExz7GY8XjSlYAg1TI9WkLPghPmnb1iT9RJ49
         bd9w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=n7HxxrtV;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::229 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=V/Q2QGI8gpLTeyYWrzonXpBbRxv1118iXe9KVXn8Pms=;
        b=NMzRMLgHpxtrkvSRs9jAlWxGxM8IeTnoYLJhDdF5Oxtlr4Agycmjvx/tha6Bg/qt51
         9R07KP3RGzRlfsi8osSMPK27GGaGdfjV8bQU1yPCYFbwmMxNsafS5XZ/sHWDGZ2ff6lL
         bO83slVFIigKnpbAM7ePJf/CuDuqGu32DLaGLex+byu6xArNxMkHzHs2FqXijn5vhnZ3
         sTAwcR9+YAEY8a+BysI2naiGVyL8P9eg4hRaJccSbv4oFZ7nQil+mlDq/EKTJbm45jMR
         t6g5NY99hVjD+9RGsgFt23QtHEXaFl2k6P0CPGlvnYPZhaa/RfjMkTTss5RZp6YrjJWp
         +sMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=V/Q2QGI8gpLTeyYWrzonXpBbRxv1118iXe9KVXn8Pms=;
        b=ueI3XqbofdraEsv2oZvILtU8z0PbL8Dz1BsUnXZlatAU2nVMGbOKwlZERZsr3Q5YFJ
         9kUMX5f+4OZyISq9KQhfhDLad2nwIVnu+HW6rEyTCbL1p/Q86Uv+KobrzHb25cOA7Rc0
         AbtkEt9bSiEjzjw3t7+P1vXStalKamw6NTrtr9H5l9vSxGkmnMeuqRPUAm9b0sVb8Q/B
         hd4aG0J6/wonhSJw18xj6NjojRWyxQ8kguqUHcATapyrwl5zWB2s2+V0wbENZbpNpGv/
         cDHGk0Q0U0pU3qg60IGKNYiW2o+FEMTcSa0nyAZ7tElTr7oqTKCuOQukEJ+/bUidL27Y
         8I0Q==
X-Gm-Message-State: AOAM532VcZnvChyoY3AmDdT32dUCp/8xbxYRMv/InVjgHUNO/pwAwjx8
	ZQBofAqbhJwt3V5O01GzWkw=
X-Google-Smtp-Source: ABdhPJwBzLL5jILk8OGqT5wd2Ngal/Gpw+tvbbndB4lS5qiwkFU9+bae4ttvH4pg9bRw4a/zOsfspg==
X-Received: by 2002:a7b:cbda:: with SMTP id n26mr27823719wmi.179.1626729923738;
        Mon, 19 Jul 2021 14:25:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:600c:198b:: with SMTP id t11ls2015384wmq.2.gmail; Mon,
 19 Jul 2021 14:25:22 -0700 (PDT)
X-Received: by 2002:a7b:c4d9:: with SMTP id g25mr33067818wmk.108.1626729922801;
        Mon, 19 Jul 2021 14:25:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626729922; cv=none;
        d=google.com; s=arc-20160816;
        b=XHRPpcRVcWHvxeupqtTVZ3cAe34SxzHWcoeLl2cploNEY7JHvNCSWDvDhcxnTP8dcY
         HLTLv4F2CTWcXh4igudUdkU49w0xUpWWGV5B3rfH3MmSzcZhY0prs3Rn+Mq0XuPAP1ec
         x9rt03juKHT1gywjrYKhK+0TM1eFO0r7Mydqye0Ew9FaMZ6b1WtdhQ4U9oeK3BiPc/cU
         FcwGjmjSBEC1oCRvJ68U+/i2FGl02ooZHJz3blFwDCPsCKY/WDOKEakTu9gXoQ4Rv/iL
         0yXXqaGkcsfd3+qXQ9kzGKDpY7CHyywYCY/yYPIIogzbkNcCYfqiVWiLCpjyWW+Enu5i
         vJBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Et4dge6Y/jTpFBPK+Pgbi+bw6foeZdWyNd8Covlgvm4=;
        b=vRqjUweqxGebNJmbuavChlTKHnas9sduX4xoK0+yZDk9PxwLlerEWLA0UXwIDSKupX
         pTMR+ew8dmyRf4cFbFIjs3Jr4efJ+oHUeTBPv8DfEFsvlVCAeWsgTBvzifIcmAJOsJJr
         RhZhz3QPcs1EegO5xTpKvqwMxMKyVLbtumOlvwV28G3nXYO/teNoVGf/IutSJH+RuA4I
         YH6tYcGCPZNa9z4yUCVVTxT6iS+/2y/4DKLDTpAj1Cxk/aPun4/kU1j78aIW3v6A/v0Q
         S2HAR1b1gK5L0C7nx4d0JV7dfH5Yhe8cc0oBz9BKwEV3R5TYfB3iP7f0/moTiMroMARr
         YSTw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=n7HxxrtV;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::229 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x229.google.com (mail-lj1-x229.google.com. [2a00:1450:4864:20::229])
        by gmr-mx.google.com with ESMTPS id z2si784362wml.2.2021.07.19.14.25.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Jul 2021 14:25:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::229 as permitted sender) client-ip=2a00:1450:4864:20::229;
Received: by mail-lj1-x229.google.com with SMTP id e14so9857040ljo.7
        for <clang-built-linux@googlegroups.com>; Mon, 19 Jul 2021 14:25:22 -0700 (PDT)
X-Received: by 2002:a05:651c:329:: with SMTP id b9mr24396863ljp.116.1626729922093;
 Mon, 19 Jul 2021 14:25:22 -0700 (PDT)
MIME-Version: 1.0
References: <20210719205339.1023572-1-twd2.me@gmail.com>
In-Reply-To: <20210719205339.1023572-1-twd2.me@gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 19 Jul 2021 14:25:11 -0700
Message-ID: <CAKwvOd=H-UN7dgHYgsvubv7t82UiPaOHCF09GAi6kTvjxpT4iA@mail.gmail.com>
Subject: Re: [PATCH 3/3] RISC-V: build: Allow LTO to be selected
To: Wende Tan <twd2.me@gmail.com>
Cc: palmer@dabbelt.com, paul.walmsley@sifive.com, aou@eecs.berkeley.edu, 
	linux-riscv@lists.infradead.org, clang-built-linux@googlegroups.com, 
	Nathan Chancellor <nathan@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=n7HxxrtV;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::229
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

Consider adding a little more detail to the commit message.

In our experience with other architectures, we've hit numerous
compiler and kernel issues especially with allyesconfigs. Has that
been your experience with riscv?  It would be good to know if you've
hit issues with LTO plus certain configs, so that we have confirmation
others have seen these issues and so that we can triage fixes.

>
> Signed-off-by: Wende Tan <twd2.me@gmail.com>
> ---
>  arch/riscv/Kconfig | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/arch/riscv/Kconfig b/arch/riscv/Kconfig
> index 8fcceb8eda07..b593e5031c79 100644
> --- a/arch/riscv/Kconfig
> +++ b/arch/riscv/Kconfig
> @@ -34,6 +34,8 @@ config RISCV
>         select ARCH_OPTIONAL_KERNEL_RWX if ARCH_HAS_STRICT_KERNEL_RWX
>         select ARCH_OPTIONAL_KERNEL_RWX_DEFAULT
>         select ARCH_SUPPORTS_HUGETLBFS if MMU
> +       select ARCH_SUPPORTS_LTO_CLANG
> +       select ARCH_SUPPORTS_LTO_CLANG_THIN
>         select ARCH_USE_MEMTEST
>         select ARCH_WANT_DEFAULT_TOPDOWN_MMAP_LAYOUT if MMU
>         select ARCH_WANT_FRAME_POINTERS
> --

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DH-UN7dgHYgsvubv7t82UiPaOHCF09GAi6kTvjxpT4iA%40mail.gmail.com.
