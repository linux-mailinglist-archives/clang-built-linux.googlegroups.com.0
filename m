Return-Path: <clang-built-linux+bncBAABBU5WZD6QKGQEKVHXKPY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63a.google.com (mail-pl1-x63a.google.com [IPv6:2607:f8b0:4864:20::63a])
	by mail.lfdr.de (Postfix) with ESMTPS id 886A22B3D0C
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Nov 2020 07:25:24 +0100 (CET)
Received: by mail-pl1-x63a.google.com with SMTP id h2sf1218564pll.22
        for <lists+clang-built-linux@lfdr.de>; Sun, 15 Nov 2020 22:25:24 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605507923; cv=pass;
        d=google.com; s=arc-20160816;
        b=xWifkRwfTp+wGCex/GwWroMTGbIRYaB9ZAwLXZVryB8y71aH6J3fRetRePnq5mSF6L
         1W6VHa5x68PNe2SsGJcKEZhJVQGnt34zPdkb7urxiicKvkBvKuxQWR1Fm60aKqB+U/0L
         7O8x+8tbKa06Bh4mzjd+xPCokVqZ6ZUtiq4eFNHa8Aky4HsmUv1ADa8yFbWi4AYXX1ki
         w75HygqVmxKHZqSdd+Wojyh/JaVzWT1m8oKhLchta18jb8u2iZh8uLAiCw5Ca3kCkqPC
         TXW7U7SMDBrOf2bh3umbEAgZRKMOIcNriSYXAf5DZrRWMhcXeuU61UegaIKGcx8Eb2+0
         cYug==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=OHuxwFb5B3RtCC8Qd7D4E4K7ECd+a+Zb8Vru6Af2XcY=;
        b=j+uH3U3ARlrfe6sUVpFq3QORsbUHb2Q7VGiRri4TcyFB3mw5w1z4IWwIUiKGOraRf+
         x53LqtW+o5LVoRZG1Ud6T/ehQCS/jtnNFSmE8VdLcFh31sZqPsYNjsfkb4gg9Qil/obS
         SyHkcsv5Iz/P63DVeRMm5FVtEBwl5U0fGixUbi4utAyUhv1CAgUnZTHY3MM8rkgWNvvK
         HnhZeuODJYysg9Rkb0XRTPSaIE0HJH2tviITzaB6cSruHEcS9tuWcxqtXoDOuu50kAAu
         0NjOIJhMQKyxSIzKFrdlU8635qpj9sj4pykb+bIHAhF2n2KRlI7dnoakFYGsuMkwdbBO
         2UfA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="Aqxp/8zP";
       spf=pass (google.com: domain of gustavoars@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gustavoars@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=OHuxwFb5B3RtCC8Qd7D4E4K7ECd+a+Zb8Vru6Af2XcY=;
        b=AVYg5y2kVmThdAb9seaZk+jo5vJyd1Gq3pl/wb0rJUhWy4sOLEZIult7JQ6D4wGxbR
         L89Tu1jg9PzKu+s9KKHSPLBaa3eEfjFfelYJ1Op0COGCStxGaXbzsSAej6F1cp7O+Dmn
         OWu+pIm3+uvffLtS84DcOys/nXberxSbEoyX9164aUnLcsmbcJCCICv/OW9eAAAVdssB
         2P02GLqPknHyhCBqfNsdvvT8CYoGS6P/Uo9EGcK+4iIgRI21lwPOX9HBrBBF2mwy7fsS
         iWT1tAaui/UBQOgCr//aqHnPcnRrbpxOBxV9kB0bkAdTnwge6Lz0nRQoaQLaAdHZRF5C
         THvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=OHuxwFb5B3RtCC8Qd7D4E4K7ECd+a+Zb8Vru6Af2XcY=;
        b=G8O5wzGQFadWVFRGnSkk0d1wth2hScyXeVeYWOVVhTerB0wtt9tGObpiGSb2vXm+GK
         lJQCZ8c3uqcETpjQTZasMzc6Uom0LkS7zejGy9l7MOt0/ro3O+pVycTAQaTJ+UNqboyB
         cx4OsFO6ckzuK0C3sFwEX64r7ZYA0AnYTsyH/E2UAbeh0QDb+27RvzFyvKcFQ0JDEnKK
         hxzcB9sw6ZDw8sV9/f8XXgOO0FLqX3eGAMIJoweUX1kQRNle4ty1wdqnP7WFMAR7oRTF
         DLjN6uSGnL6PMxYwBbyX+cB5GVavSCw/rDN7Th4+ewV+RlGmIASOO42R0YtJtX4kxFLU
         LDhQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Qz/i3Hk7g5aMkMAHw3Uy39OOVSkihU9LVYxlSeCKE00+wgFWF
	Z5qJdcaK0vEK3mpzeyZd+CQ=
X-Google-Smtp-Source: ABdhPJx7MwdVb/eJrBZ8/oM+s4D4IbvOU2BVuHLUV1SGNMqxr3/GWXHpHxD9Q05j9jl/ZswMXUCZHw==
X-Received: by 2002:a17:90a:b782:: with SMTP id m2mr14826337pjr.185.1605507923272;
        Sun, 15 Nov 2020 22:25:23 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:bd8d:: with SMTP id q13ls5948458pls.0.gmail; Sun, 15
 Nov 2020 22:25:22 -0800 (PST)
X-Received: by 2002:a17:90b:a54:: with SMTP id gw20mr8689398pjb.178.1605507922787;
        Sun, 15 Nov 2020 22:25:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605507922; cv=none;
        d=google.com; s=arc-20160816;
        b=waLegY7XtTbmjn2xZL/uSD/62LsrybPBrqMm1QBnW8ZzTF7zYq+3xFga/n9d8nRasg
         uGcpsQypSBCgzS40YMyeTseLBF6luRjQX8gxSAy68Tfkkjy8pOWE3St0mpAMZmBjW16U
         zSWHvO5AoManWiuTb8E4F2E8mxojQmslM98pH+jHSjOvmBQVTBxAn06ODhf25XUmRyoW
         4G7I4HKU+DisbE/bLwGaVZoFrq6zGv2CPIGyfdKl9WQ/JXGtKTSp8m/zzjaN1YMib0kt
         Zwk4S+viZlCeoKInsc6La1uxWBQ4T3jt3M/gYr5O3UZOCzyFZfHB13MDOrOUkb0nP0yZ
         VHaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=7JbWAr83iY4LeqPINcB0erQeDdyMTwYHw6k4k4nAEpg=;
        b=ZgcIHTke66qIFKmZU3zXV6fp4a7/nFHgabv9Lqi0xC28Z87pOCciHxeis214Hat4Ap
         w0VLdkNrNZFSMZh5ou9MGAg0lTTsj3/lj2nWppcja59K4/ltuSa5rBYU+Ey37mqyT0f5
         69kBLlNx0C7ffMpGqJqMAmgPzaJdO3FSNwW6r2Ci00W4h/5xFXA4AUHFzooNAd4Br30V
         Lu2XcvFYzx4evpY7b5E4yjOvuVnWgrlL95G0ndYFoyQzgKALpMvo5LJ7h/eQrZeXajFT
         F//KrxuaVh9nhnZBBI4wvAm1jYLMknHRLeyEoVxPGibFC49K64L5eeT194AaNthA2gwd
         LY0Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="Aqxp/8zP";
       spf=pass (google.com: domain of gustavoars@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gustavoars@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id i5si1764538pjz.1.2020.11.15.22.25.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 15 Nov 2020 22:25:22 -0800 (PST)
Received-SPF: pass (google.com: domain of gustavoars@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from embeddedor (187-162-31-110.static.axtel.net [187.162.31.110])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 37E3C2222E;
	Mon, 16 Nov 2020 06:25:21 +0000 (UTC)
Date: Mon, 16 Nov 2020 00:25:15 -0600
From: "Gustavo A. R. Silva" <gustavoars@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Michael Ellerman <mpe@ellerman.id.au>,
	Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Paul Mackerras <paulus@samba.org>,
	clang-built-linux@googlegroups.com, linuxppc-dev@lists.ozlabs.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/3] powerpc: boot: include compiler_attributes.h
Message-ID: <20201116062515.GA7265@embeddedor>
References: <20201116043532.4032932-1-ndesaulniers@google.com>
 <20201116043532.4032932-2-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201116043532.4032932-2-ndesaulniers@google.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: gustavoars@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="Aqxp/8zP";       spf=pass
 (google.com: domain of gustavoars@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gustavoars@kernel.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Sun, Nov 15, 2020 at 08:35:30PM -0800, Nick Desaulniers wrote:
> The kernel uses `-include` to include include/linux/compiler_types.h
> into all translation units (see scripts/Makefile.lib), which #includes
> compiler_attributes.h.
> 
> arch/powerpc/boot/ uses different compiler flags from the rest of the
> kernel. As such, it doesn't contain the definitions from these headers,
> and redefines a few that it needs.
> 
> For the purpose of enabling -Wimplicit-fallthrough for ppc, include
> compiler_types.h via `-include`.
> 
> Link: https://github.com/ClangBuiltLinux/linux/issues/236
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>

Acked-by: Gustavo A. R. Silva <gustavoars@kernel.org>

Thanks, Nick.
--
Gustavo

> ---
> We could just `#include "include/linux/compiler_types.h"` in the few .c
> sources used from lib/ (there are proper header guards in
> compiler_types.h).
> 
> It was also noted in 6a9dc5fd6170 that we could -D__KERNEL__ and
> -include compiler_types.h like the main kernel does, though testing that
> produces a whole sea of warnings to cleanup. This approach is minimally
> invasive.
> 
>  arch/powerpc/boot/Makefile     | 1 +
>  arch/powerpc/boot/decompress.c | 1 -
>  2 files changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/powerpc/boot/Makefile b/arch/powerpc/boot/Makefile
> index f8ce6d2dde7b..1659963a8f1d 100644
> --- a/arch/powerpc/boot/Makefile
> +++ b/arch/powerpc/boot/Makefile
> @@ -31,6 +31,7 @@ endif
>  BOOTCFLAGS    := -Wall -Wundef -Wstrict-prototypes -Wno-trigraphs \
>  		 -fno-strict-aliasing -O2 -msoft-float -mno-altivec -mno-vsx \
>  		 -pipe -fomit-frame-pointer -fno-builtin -fPIC -nostdinc \
> +		 -include $(srctree)/include/linux/compiler_attributes.h \
>  		 $(LINUXINCLUDE)
>  
>  ifdef CONFIG_PPC64_BOOT_WRAPPER
> diff --git a/arch/powerpc/boot/decompress.c b/arch/powerpc/boot/decompress.c
> index 8bf39ef7d2df..6098b879ac97 100644
> --- a/arch/powerpc/boot/decompress.c
> +++ b/arch/powerpc/boot/decompress.c
> @@ -21,7 +21,6 @@
>  
>  #define STATIC static
>  #define INIT
> -#define __always_inline inline
>  
>  /*
>   * The build process will copy the required zlib source files and headers
> -- 
> 2.29.2.299.gdc1121823c-goog
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201116062515.GA7265%40embeddedor.
