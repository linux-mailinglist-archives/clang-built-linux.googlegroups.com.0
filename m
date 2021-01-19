Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBHVKTWAAMGQEUXWEEJI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3c.google.com (mail-io1-xd3c.google.com [IPv6:2607:f8b0:4864:20::d3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 0F5752FC2D1
	for <lists+clang-built-linux@lfdr.de>; Tue, 19 Jan 2021 22:54:40 +0100 (CET)
Received: by mail-io1-xd3c.google.com with SMTP id x7sf38210090ion.12
        for <lists+clang-built-linux@lfdr.de>; Tue, 19 Jan 2021 13:54:40 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611093279; cv=pass;
        d=google.com; s=arc-20160816;
        b=W05l3pApFkpPOLaOSRJMv/dwaPWqazGzC4iRJLCfYCJL8wtLAyRXrxAeC9iwLSuqlX
         DUMfTdCHlwY44f+yWgl1q6DTmLu+SLDzSW62tW+E0JPGsdpX4W7hgt8kzqofthKe8kFW
         7dW7EhD4ZNdHTJrGO+daARCraQrLP6ZGwPKUOJf2D1lCmAzd6vtSzesg4XEYDx7NAnax
         fqZm98xu9itt01hAFd6aPM0UjGrDmy+xCWHhtkUDjq0rXVNQoGDnhg1Y3EGbWv84iitQ
         my1KHC9LzTvakEh6XuifSyA+qlWTclQ57mttUCJGtc296eKY0w+IbU5asW3FDIvJx6d3
         uBUA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=r3HWI/8w4h87wY7Y+1ipPZLqAvcQcQtaFGwHEpRI1rE=;
        b=1FkpRgDpKSJ1baYthsRORrBETEAX2G/NPOyBtlzP3YHOg/71bZfvtkj6oAtuwB54a0
         rBkhz1KE8cETXzGVGiqVtKuifRPhpq6Yy+kjDHzl8N5P1Jw7U1Vk4G8Jc8V/GSzPSRkS
         LCaRrPTD/8OUhUIX7OS13VpMwj68xJ1Gg1eI0esx4l6sfyB/8YPavCCQTi/oIRlyfk8E
         S6iVfjQv/oUzpDeRac01KFZjLHdsIEJY1JGPc8odQaeUz5YHHP7e6iYk1ZP8w2qKAfux
         kHgjOnOZ1i352fQil/+Lkz1mUxIV35f1Yvdq7MyLleNyYyo6XCrkCUqJaVHtqQV0Gu2y
         3sYg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vZ8APkKl;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::729 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=r3HWI/8w4h87wY7Y+1ipPZLqAvcQcQtaFGwHEpRI1rE=;
        b=Kaxj2dFFv/4SHGExcbD1KGXuBNDnQzDvv+0wJbCPN/Yz2FfE8Fc9WXCd1ppD4LQHpU
         Ma1jAZNZI0+wfV7ydBoZLV2sEsddTrDWrI9HowDHozC+VNAXD2spZmzzrEggRWWg6kph
         lju1z81hjIBJ3y9j/nv2ED2OyK/2s5adZQtcTbaXx1HJgyP7MLBolemV3dOssbzhKPJP
         CM1d0nJO5Q+lNEieZbFO/hIX8CHmAGr+rdEcGnVUwI340F9R5pbaLUaPhcmIAWPSek6u
         tFWLJLw2rXIpfo0bs/NYEsQwyvW7dMHvqwLMKOAJNqUNX7/kh/kHv/kszTNvGaHvyiDL
         +rBw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=r3HWI/8w4h87wY7Y+1ipPZLqAvcQcQtaFGwHEpRI1rE=;
        b=sqWQkvRgofOkzLYTHqc3uUs9TuvnyZ9U/CKZxsxvil0Kqa0vppL3Y69gXo0Cxjf+Y2
         CIlFoVca7adhx261U9RoyRZWNPdBHuP3mCAsrQZShhaTs+GaVl4eq3OuKB4wKxEKQerM
         x+ggVaUGmzKWIYvNpLrp+GU/Pk3k+v6g8z2lIeQ9lKu05BIBrwQmRs8YXhs2wt/oHvQR
         3qbmIlKeWs3BYSlfbFWlkzpi8bKR4gWbMAK3HDeG+v8hbEnJYfgqsi10ymvk39w1GzJs
         LH2BukS6bBX1TjihzYoO6rQMkhIZMeyprjjH6esKFcchI+hS6CW28EAHPiJ09HbnTfwq
         WZwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=r3HWI/8w4h87wY7Y+1ipPZLqAvcQcQtaFGwHEpRI1rE=;
        b=KyHhLYOAy9EOzLXqgQCeV9HP8HhCYvoLju1tjK+aNbLx7HdGgow1uTCUHYdQh+Ew16
         IogJVA58Ci6+bFkLrXRjcTkE1/bMyoM138g84qAr5gJ0CKJJQvsfNfep2wvu1iuta+Ou
         ViA7UcmmZobWpHZGAl+MM/cvZZkKKD4Gr+Z+WxWrwLtJU/PljuJ4YJI1xSh5/iND69UN
         4TKifLiUQsl7KrAStDrkv/v4m7B4bBxvRF21Kg0O2yh47QzYk5MN/B+hU/dcM3ilZtvR
         TYP1qTwpCOhtMiWzCa96ghlHQTRJrE2/+MbYzFHvEC2lE3+xicWfYiBWSdFZWqjbLQzV
         0yzA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532S5kKtmNO7TG+GTM5yvCip4cGiyKe684zHvrAcRL7z2i4/vlUh
	qvga4IM52tsAVB6un0f96cQ=
X-Google-Smtp-Source: ABdhPJxFxWiUFAoDY+o2izCBmq4D8MLhD16KxJlexg+zC/xyYNyrUBaWoEpHWVU4BS6RuheK61EvQA==
X-Received: by 2002:a05:6602:1cb:: with SMTP id w11mr4465071iot.45.1611093278964;
        Tue, 19 Jan 2021 13:54:38 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6602:25c6:: with SMTP id d6ls3252523iop.8.gmail; Tue, 19
 Jan 2021 13:54:38 -0800 (PST)
X-Received: by 2002:a6b:8b4a:: with SMTP id n71mr2087610iod.82.1611093278517;
        Tue, 19 Jan 2021 13:54:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611093278; cv=none;
        d=google.com; s=arc-20160816;
        b=u9AUuGCbG1q4RgpzHn+6coNSquaYriTE+mVlAbVTJqw3MBE+dK3tOEUB1F/1nFRhSP
         X9NOkt/VnuKFt26ZrwA91Q76TaTmtqsMrcqHjOBZkSdpyEEFGMbDmFEwnrR1VVboFkP1
         IUa7hWj/AlX0a0w6hvvR7Kdh99AadMY59NCOV3O/LmviNAsSVhHW2P3ohtyyZ4jWKGo6
         B4053vj6Kdmf+zX/Ji89ingwdEnrF5O57ZSwrmt5ZbLP7r5/AGDQR/UfVigbnO1Rop2R
         7Jfh5IrrI4/rMS0A1u62nxPVbqV7LBFiYvcwE4q3KBzT6ArxOb5+BTcO9B/8PMfM6CAl
         QGXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=SbyUbNXiGA6Y5PlccSbIv65ItGeI9NDKaJPt5uKU/b0=;
        b=qZzMOetY5s8uubM+W1XodtLRrMgjx6xs99X4DxUHOQeUFJ0Rq318uoBEZTjWMTchSO
         ZTQSO3+1lDOEMc0n1hg3rF8iug1x3GLqFrqurVvQoZBAX+oap5k2pS22+JARJ/o6EOfy
         zCYv2yuJtvIeftjsSRNsOgYEcibvWBeHXMr0eeM1HTgaVIi1hCNluiWuIZvFAoOF1cUV
         auBBt8u7cRc00nAttFF6zCJZtbhh5wt2IP1jYEfxxMiv+eln46oCwAHCAtI6Sm29Mv0b
         t0RsGpgK869XCSr/7f2VOEaYHVg9JP/wrzCi1ixv7fOMTMU8SNoBUOt9Zywfexa53qt8
         vvxw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vZ8APkKl;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::729 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-qk1-x729.google.com (mail-qk1-x729.google.com. [2607:f8b0:4864:20::729])
        by gmr-mx.google.com with ESMTPS id b8si21581ile.1.2021.01.19.13.54.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Jan 2021 13:54:38 -0800 (PST)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::729 as permitted sender) client-ip=2607:f8b0:4864:20::729;
Received: by mail-qk1-x729.google.com with SMTP id d14so23447687qkc.13
        for <clang-built-linux@googlegroups.com>; Tue, 19 Jan 2021 13:54:38 -0800 (PST)
X-Received: by 2002:a37:a658:: with SMTP id p85mr2515080qke.422.1611093277837;
        Tue, 19 Jan 2021 13:54:37 -0800 (PST)
Received: from ubuntu-m3-large-x86 ([2604:1380:45f1:1d00::1])
        by smtp.gmail.com with ESMTPSA id i13sm21996qkk.83.2021.01.19.13.54.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Jan 2021 13:54:36 -0800 (PST)
Date: Tue, 19 Jan 2021 14:54:35 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Adrian Ratiu <adrian.ratiu@collabora.com>
Cc: linux-arm-kernel@lists.infradead.org,
	Nick Desaulniers <ndesaulniers@google.com>,
	Arnd Bergmann <arnd@arndb.de>, Russell King <linux@armlinux.org.uk>,
	Ard Biesheuvel <ardb@kernel.org>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	kernel@collabora.com,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v4 1/2] arm: lib: xor-neon: remove unnecessary GCC < 4.6
 warning
Message-ID: <20210119215435.GA1727211@ubuntu-m3-large-x86>
References: <20210119131724.308884-1-adrian.ratiu@collabora.com>
 <20210119131724.308884-2-adrian.ratiu@collabora.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210119131724.308884-2-adrian.ratiu@collabora.com>
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=vZ8APkKl;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::729 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Tue, Jan 19, 2021 at 03:17:23PM +0200, Adrian Ratiu wrote:
> From: Nathan Chancellor <natechancellor@gmail.com>
> 
> Drop warning because kernel now requires GCC >= v4.9 after
> commit 6ec4476ac825 ("Raise gcc version requirement to 4.9")
> and clarify that -ftree-vectorize now always needs enabling
> for GCC by directly testing the presence of CONFIG_CC_IS_GCC.
> 
> Another reason to remove the warning is that Clang exposes
> itself as GCC < 4.6 so it triggers the warning about GCC
> which doesn't make much sense and misleads Clang users by
> telling them to update GCC.
> 
> Because Clang is now supported by the kernel print a clear
> Clang-specific warning.
> 
> Link: https://github.com/ClangBuiltLinux/linux/issues/496
> Link: https://github.com/ClangBuiltLinux/linux/issues/503
> Reported-by: Nick Desaulniers <ndesaulniers@google.com>
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
> Signed-off-by: Adrian Ratiu <adrian.ratiu@collabora.com>

The commit message looks like it is written by me but I never added a
Clang specific warning. I appreciate wanting to give me credit but when
you change things about my original commit message, please make it
clear that you did the edits, something like:

Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>
[adrian: Add clang specific warning]
Signed-off-by: Adrian Ratiu <adrian.ratiu@collabora.com>

> ---
>  arch/arm/lib/xor-neon.c | 18 ++++++++++--------
>  1 file changed, 10 insertions(+), 8 deletions(-)
> 
> diff --git a/arch/arm/lib/xor-neon.c b/arch/arm/lib/xor-neon.c
> index b99dd8e1c93f..f9f3601cc2d1 100644
> --- a/arch/arm/lib/xor-neon.c
> +++ b/arch/arm/lib/xor-neon.c
> @@ -14,20 +14,22 @@ MODULE_LICENSE("GPL");
>  #error You should compile this file with '-march=armv7-a -mfloat-abi=softfp -mfpu=neon'
>  #endif
>  
> +/*
> + * TODO: Even though -ftree-vectorize is enabled by default in Clang, the
> + * compiler does not produce vectorized code due to its cost model.
> + * See: https://github.com/ClangBuiltLinux/linux/issues/503
> + */
> +#ifdef CONFIG_CC_IS_CLANG
> +#warning Clang does not vectorize code in this file.
> +#endif

I really do not like this. With the GCC specific warning, the user could
just upgrade their GCC. With this warning, it is basically telling them
don't use clang, in which case, it would just be better to disable this
code altogether. I would rather see:

1. Just don't build this file with clang altogether, which I believe was
   v1's 2/2 patch.

OR

2. Use the pragma:

#pragma clang loop vectorize(enable)

as Nick suggests in v1's 2/2 patch.

Alternatively, __restrict__ sounds like it might be beneficial for both
GCC and clang:

https://lore.kernel.org/lkml/20201112215033.GA438824@rani.riverdale.lan/

>  /*
>   * Pull in the reference implementations while instructing GCC (through
>   * -ftree-vectorize) to attempt to exploit implicit parallelism and emit
>   * NEON instructions.
>   */
> -#if __GNUC__ > 4 || (__GNUC__ == 4 && __GNUC_MINOR__ >= 6)
> +#ifdef CONFIG_CC_IS_GCC
>  #pragma GCC optimize "tree-vectorize"
> -#else
> -/*
> - * While older versions of GCC do not generate incorrect code, they fail to
> - * recognize the parallel nature of these functions, and emit plain ARM code,
> - * which is known to be slower than the optimized ARM code in asm-arm/xor.h.
> - */
> -#warning This code requires at least version 4.6 of GCC
>  #endif
>  
>  #pragma GCC diagnostic ignored "-Wunused-variable"
> -- 
> 2.30.0
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210119215435.GA1727211%40ubuntu-m3-large-x86.
