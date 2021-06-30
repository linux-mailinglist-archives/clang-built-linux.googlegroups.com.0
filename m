Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBOWH6KDAMGQE5UWB4MA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3f.google.com (mail-oo1-xc3f.google.com [IPv6:2607:f8b0:4864:20::c3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 0665F3B8757
	for <lists+clang-built-linux@lfdr.de>; Wed, 30 Jun 2021 19:02:52 +0200 (CEST)
Received: by mail-oo1-xc3f.google.com with SMTP id x24-20020a4a9b980000b0290249d5c08dd6sf1764084ooj.15
        for <lists+clang-built-linux@lfdr.de>; Wed, 30 Jun 2021 10:02:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625072570; cv=pass;
        d=google.com; s=arc-20160816;
        b=HmiC6KbM10D1MU28HWqeUS4qTaJvgZNmJBr1BxxJoXQ9tTsfo1AGuZVlXMpV+YNFBc
         HaJvIJyLfI4S0LBUSwxClEHKlWRVqwItUK2b3z4Rq16Mm6OWb9h7xtqB5t9zhW3I5FZ+
         uqB3AdT6GgbNkbh1npX7rRNQBmdJ7Y11adj9m/6oP+PZc7bkM7uUq5XylIpI5lPnTO/9
         JSmX+RQD7T/KK0wBpkGIngVCZO2nb4xmQxZGasm48i74MKVF8F9+4CXTJ2+SRYO7Saqd
         7AG0VXmfzpwBLwSqF+ce5VgpeZNlvHK6AB7hxmB3K+oVD4l39tDgAJ9PIgYONM7DCJ8P
         xvtg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=u1uS8/ZT2/xderm9fOQD6/bacNJtvcjp2hyvu2zVkgY=;
        b=WY9uqYN9lQUo9RqCurF9ZDMC+zs2E8hoBzvGTpAu1+62B1a/rGaJTRldEOdikBhmhf
         a85xNgK2J7hsrrKZSURz/SUIl4jmt81pUpDSAWstsxRybXCltPw/VBxNb6WzvrIk4rRE
         q2G/1iPmq1bK3IGF3kfhi9ncl0DMl12M1sTcx+wlcJlcZlILXgJxfNcCGY+jJG41OWDC
         VVEj+AK5EtLZ9eAewnRQjFvh0Sbp0bThQmvM6kOSV9EP/nrm3HQSwaD2xo5JDtvl8B7U
         4xfeJtDUJO3M+FyrHCvSfFoJJr33khOg75BpntQnTcfwwRJumY91gGsK6b+pKmFBl+9F
         Hsjw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=XehvqsVK;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=u1uS8/ZT2/xderm9fOQD6/bacNJtvcjp2hyvu2zVkgY=;
        b=XtvKfc1xyHjMrJokiVFjAnfCnqCDiHGycUIhhnsKGil1avi2v/bsEIVNoGlN26O6s/
         bc66U+YlELrONRTNxR6yQ5wCBED4PxmPmLce1oXKPYUm8NAdvcIZjeDX912TOJwZ1gpr
         1wD/C4gvxYzt3gIWqM5HHmjqpkz+NRer4YPi7Jm7kMI5sHYwA7ZCi1SD9sdw2MG/A+2E
         gdIGJwVMOwJkNK5GzeSBlgzVEv+6eCu4YIbmpc6Pxf8Nl4vYZK4Ruszr0I7z3GXtenF8
         OgltKxXHDNqyX6gZUsQMKrsGdxkqyWZMQuvoDIS622kFPlvJGGMt0p1qdULiYtP6k33C
         +xHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=u1uS8/ZT2/xderm9fOQD6/bacNJtvcjp2hyvu2zVkgY=;
        b=BMVgzxKM7exzQOoNSOieAohZ03oJSRRfRi+Od2Nqrtc8kOFxnutRygqWyTwlbMDvux
         MpYYPjOQuUcuF14/k0rKl81VgsCWScz74L8BGPDMoaMm2InL239WfS0I+DcCt+LfGxfP
         kMlpgO3i4GwT6EcJRqfgARjahB/iFEjnXCJSBp7flvV525/1lgn6gar2eDP+lvHzowOE
         tFFdc1m9Qyh+/c+ycn4didiHRSMOq1QHR1Did7BAjPCTCQHOX4eB5zifxtYdNF5XNK4r
         5UDwK4qz5vpgqZsV1BkCpONggYgPcDU38U1ykafZYiMM0aQxh+tYu6yJvB0cAvuHAF2U
         WxPQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531z5fnEoVfBfYHrkwQH5rlknFLyes+whcW6src4qOiPyioGdJYj
	hDrVeg034DlZNTVa5O5wzzo=
X-Google-Smtp-Source: ABdhPJyoDJ474gq6HDGlcV5s3yNrhbPAtNqCknqoUWSd1xFHyVDRIR0N+037nmSZqcoZD5AWCRRUmg==
X-Received: by 2002:a4a:e1c5:: with SMTP id n5mr9102014oot.5.1625072570710;
        Wed, 30 Jun 2021 10:02:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:5a83:: with SMTP id o125ls1033940oib.7.gmail; Wed, 30
 Jun 2021 10:02:49 -0700 (PDT)
X-Received: by 2002:a05:6808:b33:: with SMTP id t19mr1105941oij.88.1625072569530;
        Wed, 30 Jun 2021 10:02:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625072569; cv=none;
        d=google.com; s=arc-20160816;
        b=r9hxEVF4ymFyx7JABs3nGPIneyyd6a/IPGsxMcuVRYyKDLWKAZM3ooCpP5L6lBQ5X4
         lhcdwBB5QOjoyfUrw6cXVQ0bGBVmfPu2C7yqQyrxz/pwiJ44mAoigSmCqvZOSpuxKbYr
         Ri/8TZ6ay8W5Sjp9JAzYbdk46jN4XTN3ueQ6p04DKGx8V1qYRuw2KT48DiuniVqt3WuD
         cIRaTDM0flMuGVcABedHNxspZsET9cvO8SVkAx/Q7fCuP+igoEWm+tmqv19C0BGn4D0f
         GkAgSjc21/PsIblOhw6/kJJTa9eR5D6dg7wdzoxDcpv9JotFM964f53KAGvuqHi3syG2
         VfCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=LJycCyWvECWznL7bD5j5y35L/wQIegnTrNN24M95L9Y=;
        b=vkSW5G+HTVYvaERcKozlUnzssULgX1nZGE5SsvTaqYsaGqkrAPLVPdOG6Gz5qFBktk
         PxrwfC8xoEw4yYu9fA9Lf0aXiTJJDe2yiX51QZbgoVWaei3Ps8SPmyCO6uRg7jAEG8H9
         34SoJMtwb7uncuaoFgV+HyVNpQ3ac3aEIqJ2fTu/ovVioIA8dTaZnvxJFKnw8kSR3NEr
         EW12ZV4CAEpioPuvY1YQRyUjH7e9bINjFYkCzuOea0ULulO9y7twgV5xW8KQco06X05F
         Cb9ELYIMl5c6przn+fG8oQTpUQftJtG8u9FEX41Zn6PAkRFZU7iIzw1qe7yR5qVjG545
         g8iw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=XehvqsVK;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id v20si863144ott.2.2021.06.30.10.02.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 30 Jun 2021 10:02:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 394086146E;
	Wed, 30 Jun 2021 17:02:48 +0000 (UTC)
Subject: Re: [PATCH 1/2] Kbuild: lto: add make-version macros
To: Lecopzer Chen <lecopzer.chen@mediatek.com>, keescook@chromium.org,
 samitolvanen@google.com, linux-kbuild@vger.kernel.org
Cc: clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org,
 yj.chiang@mediatek.com, masahiroy@kernel.org, michal.lkml@markovi.net
References: <20210630121436.19581-1-lecopzer.chen@mediatek.com>
 <20210630121436.19581-2-lecopzer.chen@mediatek.com>
From: Nathan Chancellor <nathan@kernel.org>
Message-ID: <fdcb8b80-00dd-dd59-1283-836736d4a773@kernel.org>
Date: Wed, 30 Jun 2021 10:02:47 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <20210630121436.19581-2-lecopzer.chen@mediatek.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=XehvqsVK;       spf=pass
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

Hi Lecopzer,

On 6/30/2021 5:14 AM, Lecopzer Chen wrote:
> To check the GNU make version. Used by the LTO Kconfig.
> 
> LTO with MODVERSION will fail in generating correct CRC because
> the makefile rule doesn't work for make with version 3.8X.[1]
> 
> Thus we need to check make version during selecting on LTO Kconfig.
> The MAKE_VERSION_INT means MAKE_VERSION in canonical digits integer and
> implemnted by imitating CLANG_VERSION.

implemented

> 
> [1] https://lore.kernel.org/lkml/20210616080252.32046-1-lecopzer.chen@mediatek.com/
> Signed-off-by: Lecopzer Chen <lecopzer.chen@mediatek.com>
> ---
>   Makefile                |  2 +-
>   init/Kconfig            |  4 ++++
>   scripts/Kconfig.include |  3 +++
>   scripts/make-version.sh | 13 +++++++++++++
>   4 files changed, 21 insertions(+), 1 deletion(-)
>   create mode 100755 scripts/make-version.sh
> 
> diff --git a/Makefile b/Makefile
> index 88888fff4c62..2402745b2ba9 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -516,7 +516,7 @@ CLANG_FLAGS :=
>   
>   export ARCH SRCARCH CONFIG_SHELL BASH HOSTCC KBUILD_HOSTCFLAGS CROSS_COMPILE LD CC
>   export CPP AR NM STRIP OBJCOPY OBJDUMP READELF PAHOLE RESOLVE_BTFIDS LEX YACC AWK INSTALLKERNEL
> -export PERL PYTHON3 CHECK CHECKFLAGS MAKE UTS_MACHINE HOSTCXX
> +export PERL PYTHON3 CHECK CHECKFLAGS MAKE MAKE_VERSION UTS_MACHINE HOSTCXX
>   export KGZIP KBZIP2 KLZOP LZMA LZ4 XZ ZSTD
>   export KBUILD_HOSTCXXFLAGS KBUILD_HOSTLDFLAGS KBUILD_HOSTLDLIBS LDFLAGS_MODULE
>   
> diff --git a/init/Kconfig b/init/Kconfig
> index a61c92066c2e..9f2b71fdf23e 100644
> --- a/init/Kconfig
> +++ b/init/Kconfig
> @@ -83,6 +83,10 @@ config TOOLS_SUPPORT_RELR
>   config CC_HAS_ASM_INLINE
>   	def_bool $(success,echo 'void foo(void) { asm inline (""); }' | $(CC) -x c - -c -o /dev/null)
>   
> +config MAKE_VERSION_INT

It might be cleaner to make this "config MAKE_VERSION". It will not 
conflict with the builtin MAKE_VERSION because this is really 
CONFIG_MAKE_VERSION, which is how MAKE_VERSION will be handled in Kconfig.

> +	int
> +	default $(make-version)
> +
>   config CONSTRUCTORS
>   	bool
>   
> diff --git a/scripts/Kconfig.include b/scripts/Kconfig.include
> index 0496efd6e117..f956953d0236 100644
> --- a/scripts/Kconfig.include
> +++ b/scripts/Kconfig.include
> @@ -63,3 +63,6 @@ ld-version := $(shell,set -- $(ld-info) && echo $2)
>   cc-option-bit = $(if-success,$(CC) -Werror $(1) -E -x c /dev/null -o /dev/null,$(1))
>   m32-flag := $(cc-option-bit,-m32)
>   m64-flag := $(cc-option-bit,-m64)
> +
> +# Get the GNU make version with a canonical digit.
> +make-version := $(shell,$(srctree)/scripts/make-version.sh $(MAKE_VERSION))

It might be better for this to just be used directly by "config 
MAKE_VERSION":

config MAKE_VERSION
	int
	default $(shell,$(srctree)/scripts/make-version.sh $(MAKE_VERSION))

> diff --git a/scripts/make-version.sh b/scripts/make-version.sh
> new file mode 100755
> index 000000000000..ce5af96696cc
> --- /dev/null
> +++ b/scripts/make-version.sh
> @@ -0,0 +1,13 @@
> +#!/bin/sh
> +# SPDX-License-Identifier: GPL-2.0
> +#
> +# Print the linker name and its version in a 5 or 6-digit form.
> +
> +set -e
> +
> +# Convert the version string x.y.z to a canonical 5 or 6-digit form.
> +IFS=.
> +set -- $1
> +
> +# If the 2nd or 3rd field is missing, fill it with a zero.
> +echo $((10000 * $1 + 100 * ${2:-0} + ${3:-0}))
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/fdcb8b80-00dd-dd59-1283-836736d4a773%40kernel.org.
