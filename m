Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBKH3QODQMGQEWFRKB6Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1037.google.com (mail-pj1-x1037.google.com [IPv6:2607:f8b0:4864:20::1037])
	by mail.lfdr.de (Postfix) with ESMTPS id F19173BAAAD
	for <lists+clang-built-linux@lfdr.de>; Sun,  4 Jul 2021 02:15:37 +0200 (CEST)
Received: by mail-pj1-x1037.google.com with SMTP id d1-20020a17090ae281b0290170ba1f9948sf10293026pjz.7
        for <lists+clang-built-linux@lfdr.de>; Sat, 03 Jul 2021 17:15:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625357736; cv=pass;
        d=google.com; s=arc-20160816;
        b=bVaOVEL6Ypvj4G6tRCtKKMQU/FIrLv+C9GDqZA0i64PcZsnoLSSMFIjzy3kbvWT0jC
         xsgQgo7B+gsLfMmPpHDzFXHpbU3hhLXcTeuNBdzrpXzWWoNNzF1s5FZbnbORfD0IpdIu
         EawKr6LhBmbQkSjC9p9jxVtOdepsQ3bDmm/C0nD5sU3Mv/yH6zrU1XpF+Pr5gJadk+gR
         GC3u6m1dMD8+Eh1rYA/7TODzxnFIe27NunSAJN71XLtqG8p1w4aOSkuRWMZp79VrD8I3
         rjTq6tC34p2/c0HTe39vMoK1anA3LnKzIF1f31R9xKOPhpmji16mBECKEb44ko9Mm/PO
         cVIA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=P8bVv+fvMlDZSX6wwoWRB8xg1Otg+FC3yw8bK9mB16o=;
        b=gXPjAc5frggL4Z4BReYqTd2CPWdjcMP5p6F/b2OH1wwmChuB31Hl8J5VrpJhcK6Wt1
         Sn/fvh3sIyTslqK/e/Ppj8+tzglVwIrW1OQ6fKHUsMAndMgC/+uQxJAWSI6Cz7/er3A1
         G1XSaUa4A+tQO5wJF+AJ7puoGShMfvIExq3r0IMdnCMSV2FN8UEAnP/wzHOq6ah4LcmM
         VCjITKbrPUpEpR+yhJxuZY5li3E4M+zKFV7iaMmNJ5ib58EpBK0JotPryll6Tje/HEXt
         LGEg7L9VwDoWc4ZnCShrsrWKBoxlE39qhC5aKrkmcoRkMwGuodxbGEaXTRouSzybyqBj
         A/HA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=TwTr8CiI;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=P8bVv+fvMlDZSX6wwoWRB8xg1Otg+FC3yw8bK9mB16o=;
        b=WJuAHAtD5HjTj0KZw8kgr9+bSmxarkaqnzYbZHUh8NRSoEErXFNClg5dx7WYfiTusb
         1xJn7hOsgbl+vxUTPZy5w8tkzO8JB6IgB82qnWq4erSJCm390sdXMGLfXsibsVYVyW0U
         88s0ZXi9jnjsb/fX99oLeT8nQnuRiAnP1HohPGFTVxe2V5gHmLM7fj1n26nIFnoAf1Qb
         Fzg32wjLzlx7uZGrednaIGm4aIoqhOYqbxYAhU87hEWws+QoKBXlPEjOWJlRSAjpTdEp
         dUK23FSIIKu2YAn1KgV0iORmLxXDerj0o2W2TGeKC0BpO4squogk2gxYgrb04Mu6DIw2
         /geQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=P8bVv+fvMlDZSX6wwoWRB8xg1Otg+FC3yw8bK9mB16o=;
        b=LRp4I9CviykE9EVjudukrnDkiWvSrPc4nxHe5WVFlMGD6Y3Pl+8+HzFqINZumRCln8
         3cXPBwJPoIzE33JL8ezH+f6TGbXg+yk0qWsdWJ4wJpGZ7lQKAWnVrzzPo4xYG/dNuml7
         G55YDL3AdeYN7qUKVhKEpYS+ZrgmcHGF97e8fry3Y3XmNBkd+bdRwfmsJ6vVFjh/jfYn
         KGI1dskAMMRKiYjWL0jzVQ0qCX96vZFXCpD1LysRciGl+3psc+eIqGcsQNeTsOgjc9wZ
         yTG+hmtG5vF7RKW/yGeA4STjjjnUoJgGMubZ3v65inHf7JTQifDoL6/xITuMuRyrneRk
         SaRw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530R2b/bmpYTQJ00Gtf19Quq+SXz4To7dRHGV0iNMm5AvZpbCs7Q
	dvruMJe4+PNgFpG7k5J+Xmk=
X-Google-Smtp-Source: ABdhPJzEy8VwhkBv5+Yu4lSefeInpxhHxh2PRiQ5YuuzER7MMp16mwitOk1WosiYXVgj6cruElCthA==
X-Received: by 2002:a17:90a:db98:: with SMTP id h24mr6899235pjv.62.1625357736685;
        Sat, 03 Jul 2021 17:15:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:903:18d:: with SMTP id z13ls6915599plg.11.gmail; Sat, 03
 Jul 2021 17:15:36 -0700 (PDT)
X-Received: by 2002:a17:90a:e381:: with SMTP id b1mr6683744pjz.201.1625357736214;
        Sat, 03 Jul 2021 17:15:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625357736; cv=none;
        d=google.com; s=arc-20160816;
        b=yJBQ6jNOzv4+nzvFU3Y1wP4gUeT0BhxnGsatCZdhTPEwbQP6SnQRxFLSPFxxMHtWgg
         4zoRK9r7fLzJGiIdTgsMwYV1AKsKDndwCBkXJLckBvpg918d2R1FPvQu7EPe7ZDUGlXt
         W14Zzp9QxwEtWI9tW2alJz3TtOBCIp798D2rzVRb1hWkSGJXK7I8ytXV023TjERYqbuq
         5ZSeAcen5qPKm1Ux2zXYYY2mvchMeo9qwWjVZbIg+F0No+wbxW9eZhKmFd8Pg1o/GO23
         42EWXtYXKt0Mdq7b+dx/HzJF58xHTgoiDmfs7YV0aaQIYjv9tk4CNlFWFL9z7ZU4YwcY
         i3mA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=bH6BDNRP/yKtypiwWjjS3Pf7V486wf/AeK/4BUqihfs=;
        b=zzVzdU1ZMsCzF830Yt/lpvJBdLwWAarzDaKgRb78Y7wOtK0wYBdPEyiSH2XwWnZ+5H
         W0AVrXoRJQUxG6RWLh/UXTbnDx82gz73Z2JGP6+5IDDLIDlB53LwHN8v+8H9MwkAiE96
         Y+1JbzSeA5gO89hy5nEgA9X5KvERUrFAXR9QyuRx+vopRs+ip6JU6zbUDPeJQ5s9n8TW
         8kayWLCgaUUd0FfyNMho6TTI+i4jVoOcFemzyC7y4x8hEBkf2JnixsRBLaw1cXUUzCmj
         JQN8k8B8+XNP5+68g62Dl0pP4I3pKazR24w1i+oBoTpK+BjCS38/DsXKl9NZSJdPT2nN
         bibg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=TwTr8CiI;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id c12si551217plo.2.2021.07.03.17.15.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 03 Jul 2021 17:15:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 0F28A61443;
	Sun,  4 Jul 2021 00:15:34 +0000 (UTC)
Date: Sat, 3 Jul 2021 17:15:32 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Lecopzer Chen <lecopzer.chen@mediatek.com>
Cc: ndesaulniers@google.com, keescook@chromium.org, samitolvanen@google.com,
	linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org, yj.chiang@mediatek.com,
	masahiroy@kernel.org, michal.lkml@markovi.net
Subject: Re: [PATCH v3 1/2] Kbuild: lto: add CONFIG_MAKE_VERSION
Message-ID: <YOD9pHmdaU48V4AZ@Ryzen-9-3900X.localdomain>
References: <20210702032943.7865-1-lecopzer.chen@mediatek.com>
 <20210702032943.7865-2-lecopzer.chen@mediatek.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210702032943.7865-2-lecopzer.chen@mediatek.com>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=TwTr8CiI;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Fri, Jul 02, 2021 at 11:29:42AM +0800, Lecopzer Chen wrote:
> To check the GNU make version. Used by the LTO Kconfig.
> 
> LTO with MODVERSIONS will fail in generating correct CRC because
> the makefile rule doesn't work for make with version 3.8X.[1]
> 
> Thus we need to check make version during selecting on LTO Kconfig.
> Add CONFIG_MAKE_VERSION which means MAKE_VERSION in canonical digits
> for arithmetic comparisons.
> 
> [1] https://lore.kernel.org/lkml/20210616080252.32046-1-lecopzer.chen@mediatek.com/
> Signed-off-by: Lecopzer Chen <lecopzer.chen@mediatek.com>

Reviewed-by: Nathan Chancellor <nathan@kernel.org>

> ---
>  Makefile                |  2 +-
>  init/Kconfig            |  4 ++++
>  scripts/make-version.sh | 13 +++++++++++++
>  3 files changed, 18 insertions(+), 1 deletion(-)
>  create mode 100755 scripts/make-version.sh
> 
> diff --git a/Makefile b/Makefile
> index 88888fff4c62..2402745b2ba9 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -516,7 +516,7 @@ CLANG_FLAGS :=
>  
>  export ARCH SRCARCH CONFIG_SHELL BASH HOSTCC KBUILD_HOSTCFLAGS CROSS_COMPILE LD CC
>  export CPP AR NM STRIP OBJCOPY OBJDUMP READELF PAHOLE RESOLVE_BTFIDS LEX YACC AWK INSTALLKERNEL
> -export PERL PYTHON3 CHECK CHECKFLAGS MAKE UTS_MACHINE HOSTCXX
> +export PERL PYTHON3 CHECK CHECKFLAGS MAKE MAKE_VERSION UTS_MACHINE HOSTCXX
>  export KGZIP KBZIP2 KLZOP LZMA LZ4 XZ ZSTD
>  export KBUILD_HOSTCXXFLAGS KBUILD_HOSTLDFLAGS KBUILD_HOSTLDLIBS LDFLAGS_MODULE
>  
> diff --git a/init/Kconfig b/init/Kconfig
> index 55f9f7738ebb..ecc110504f87 100644
> --- a/init/Kconfig
> +++ b/init/Kconfig
> @@ -86,6 +86,10 @@ config CC_HAS_ASM_INLINE
>  config CC_HAS_NO_PROFILE_FN_ATTR
>  	def_bool $(success,echo '__attribute__((no_profile_instrument_function)) int x();' | $(CC) -x c - -c -o /dev/null -Werror)
>  
> +config MAKE_VERSION
> +	int
> +	default $(shell,$(srctree)/scripts/make-version.sh $(MAKE_VERSION))
> +
>  config CONSTRUCTORS
>  	bool
>  
> diff --git a/scripts/make-version.sh b/scripts/make-version.sh
> new file mode 100755
> index 000000000000..3a451db3c067
> --- /dev/null
> +++ b/scripts/make-version.sh
> @@ -0,0 +1,13 @@
> +#!/bin/sh
> +# SPDX-License-Identifier: GPL-2.0
> +#
> +# Print the GNU make version in a 5 or 6-digit form.
> +
> +set -e
> +
> +# Convert the version string x.y.z to a canonical 5 or 6-digit form.
> +IFS=.
> +set -- $1
> +
> +# If the 2nd or 3rd field is missing, fill it with a zero.
> +echo $((10000 * $1 + 100 * ${2:-0} + ${3:-0}))
> -- 
> 2.18.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YOD9pHmdaU48V4AZ%40Ryzen-9-3900X.localdomain.
