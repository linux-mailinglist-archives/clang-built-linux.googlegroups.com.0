Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBLMM32BQMGQEBKRUJTA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83e.google.com (mail-qt1-x83e.google.com [IPv6:2607:f8b0:4864:20::83e])
	by mail.lfdr.de (Postfix) with ESMTPS id 68EEE35FEC9
	for <lists+clang-built-linux@lfdr.de>; Thu, 15 Apr 2021 02:17:50 +0200 (CEST)
Received: by mail-qt1-x83e.google.com with SMTP id x7-20020a05622a0007b029019d73c63053sf2945000qtw.16
        for <lists+clang-built-linux@lfdr.de>; Wed, 14 Apr 2021 17:17:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618445869; cv=pass;
        d=google.com; s=arc-20160816;
        b=UjiiHKFz51x60MqwdvXW//H8T9CCYq/BziB34qtX1QbW2m5nXuda94qv0LfhLqaipX
         Plv5RRXyVVdhq6scoNACf77A1kASg+Jsypl5TLDTU5rBZUn/OVglQs4ZPO4XTO4G/0pG
         iPEqqy09aNBoxVBzghobyiPCOiK0AUsO9udbYotEB9rpIHLHNwsLZNNY9nb6q/YiRp3r
         Wcmz2HzJC40TiaeUbwktqJF/dSWh0DSKLIcN0Qy7hiqp+eOkVXGoor68bApMZpNt6/RT
         uRVeBxvH0DcQ4610P0o0MHidNB0qqaoxcyWpTKrEGasDpPv07RJekNKCP45Yz9JLlK1l
         rIZQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=rDzr/Z1TAsSvl6eOSwCGuRf3M/RiS9yn0S5Ov6rVJZM=;
        b=sLwXu4sHcqI8O9Ly9fQWv5Z4ze1evolBp4kOYytb9j52aJjbidM1q/VyzjFJH+qDqB
         I7vewbZlRZXYWuU5p0XJNBJZdgFaM94ZmtJ7ogkQopgKUuI0WdKDS/dFP6/Peb1HiHsa
         WZ0zamuHDBxC+Gh5VdzDFvG6yjIFeeFjGt1FOdkPvGEl/7qSo32mDMefpx90G5GLiKDj
         VYg40pi6VcEeZQmgnNyNC6CsedmNxnz/MOXzz4M20+R8VlaujVhSCKWaSbmHTUiO1/+m
         LY55M0IxHOGxg9RdtYNQh6J7z1CpRvMX/n5zFh6m0Nq0l9JyCoQeL01i2m2dkC9L+peK
         DiEg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=syL0Jg0u;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=rDzr/Z1TAsSvl6eOSwCGuRf3M/RiS9yn0S5Ov6rVJZM=;
        b=VdjIU0sQN3CsaYJvwMpQy5VwfsFaFxVenWJZ9saoZhxstP/ox/50VjvutVUz+DMDni
         COX4wpUdTQ//WX450xyxidXj5VNXgJhVsxAQJf8K+15gZPyMDkg/a/WL+RstQ8lwVDrK
         4cJnPumuy9SzWgvvxGF19YZGvd9pjiIRHe5Xu2wPHeY7/Cx7v1iVW59XCR9qw0zKsLmD
         31ndKv9blC2ZJ6vkIVqZlN4es1b1Lbz347bkENEc+iy44/TLkNO4drbhEdOPcNByro/G
         1aLnm6MX3KReUkgkff4UwDz3IbM22VBF1Dtua19/klYRluRT4QVZ8u7J1kjF299sYf84
         bx9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=rDzr/Z1TAsSvl6eOSwCGuRf3M/RiS9yn0S5Ov6rVJZM=;
        b=YWnGoTPTzxQVX99eqB7AZAlJbH+U3eZe3N+GtOh3JMUMRfbtpTQYdrMnDcJ8h2DKp4
         vgspnwazT+tf42WvhI9/5QQZh/4udd94DE1xbHOuuNEzSKI72Vh74KucbtgNf+DZ5TQw
         Qj7vNlADjwJcuCM1m9esbldfCJuw2tSb+JDH9wRLcc/zUZaK0SE+IUOQyLxnfLp5kY1s
         3GF/kbw4UIDaQIwHkivSQxtseQ9jyr5EuryxzLvYQ4VCo/wtzv+kVWZZRVd1hGm83Fxx
         ZbxEXb6ztM/zrEFTyWQ7MUriZIZ/B+uEgfRVebW8LjJRV3Y/d7UHUz4Vtcn1M3pqr4bD
         QV1w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531X4LYj0C+k6BX8rjiNItJ9aiKzVilol5XWU8gY+DnDssHjN9Wr
	CMHY61GISX1nEHq6BSZsOeg=
X-Google-Smtp-Source: ABdhPJwdR9nrbk16Y+BE+Dh/JxFwgTyoK95WzJnJ8Mn/YXetVcLczDuWiX3bNt6r93AZ0wr9hCRSxg==
X-Received: by 2002:a37:6382:: with SMTP id x124mr968981qkb.337.1618445869577;
        Wed, 14 Apr 2021 17:17:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:7147:: with SMTP id m68ls2199113qkc.7.gmail; Wed, 14 Apr
 2021 17:17:49 -0700 (PDT)
X-Received: by 2002:a37:64c3:: with SMTP id y186mr1057936qkb.244.1618445869177;
        Wed, 14 Apr 2021 17:17:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618445869; cv=none;
        d=google.com; s=arc-20160816;
        b=s5x+orKgUaiTGoOyfcAGHu+sMWxFcuyYUC8zflPftRuDKz9cUqIAC2GcbsvQTWuIh0
         7kQ7dMaB730w2aHD99kg1peeJsdBSZLuWcn8D1n4h4taFP2IYcniUmq9BrwPOQ19hYH+
         zc5sYeuxs5Kp9BvxMEpzJ6ifseNFcElnPkLUnK76bSn951ktACI6lmxL96k1J2o0TWSG
         sBwzASvO/WWlr11OCtRptBXxKX+QPplmGbfGRLywpAGAc7YDUXUnjvlOEfthBQ8XHV0t
         c8Yik7sJYJpIsz72wQQiW8DdbbZ1pMluJsOzwJQVUShoqJOGzfSOunBpOrwOf2x7k6Zy
         k0yg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=2kGBps+M9BA0hMZFArAEqMezqxlXENlh7hQmnRZl50c=;
        b=xhdplq6hJ8+zsdSi1FftqZak13d5EXFHP3Cr9q9PM3d9OfzEPaot4aZvKUtcDcba2g
         RgFKh1YoSJnlu4xcu+CqhNn6+1IKQV7vRZN3JiqxhcvYasTB2MXrqbgIOqclXuebPQZ7
         nWvyq57Jq5l8DM3QJRJSow5HdAKY92FUU4fZs8rhrCZ76/91Eqx2pwDKne25SjjR+9C1
         kOjLut1SvjSgzXRkCMubeFo/byroez6ubLh8Fx74DCMPFRhw+h4KmAUutSWCBW/gn42D
         8Fb7MGF5PeeIxMb1P/CF+qZihRFH4ju+8L3GE3ZdCAmAPmEXLj/9kqcSdOOUU+MfQhyG
         lg9g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=syL0Jg0u;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id b4si74032qkh.2.2021.04.14.17.17.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Apr 2021 17:17:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 8894161158;
	Thu, 15 Apr 2021 00:17:46 +0000 (UTC)
Date: Wed, 14 Apr 2021 17:17:43 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>, vincenzo.frascino@arm.com,
	Masahiro Yamada <masahiroy@kernel.org>,
	Stephen Boyd <swboyd@chromium.org>,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH v2] arm64: vdso32: drop -no-integrated-as flag
Message-ID: <YHeGJzhIhSFJLprr@archlinux-ax161>
References: <YHYlQnFRMNdn/CDp@archlinux-ax161>
 <20210414214548.700993-1-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210414214548.700993-1-ndesaulniers@google.com>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=syL0Jg0u;       spf=pass
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

On Wed, Apr 14, 2021 at 02:45:45PM -0700, Nick Desaulniers wrote:
> Clang can assemble these files just fine; this is a relic from the top
> level Makefile conditionally adding this. We no longer need --prefix,
> --gcc-toolchain, or -Qunused-arguments flags either with this change, so
> remove those too.
> 
> To test building:
> $ ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- \
>   CROSS_COMPILE_COMPAT=arm-linux-gnueabi- make LLVM=1 LLVM_IAS=1 \
>   defconfig arch/arm64/kernel/vdso32/
> 
> Suggested-by: Nathan Chancellor <nathan@kernel.org>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>

Reviewed-by: Nathan Chancellor <nathan@kernel.org>

> ---
> Changes V1 -> V2:
> * Remove --prefix, --gcc-toolchain, COMPAT_GCC_TOOLCHAIN, and
>   COMPAT_GCC_TOOLCHAIN_DIR as per Nathan.
> * Credit Nathan with Suggested-by tag.
> * Remove -Qunused-arguments.
> * Update commit message.
> 
>  arch/arm64/kernel/vdso32/Makefile | 8 --------
>  1 file changed, 8 deletions(-)
> 
> diff --git a/arch/arm64/kernel/vdso32/Makefile b/arch/arm64/kernel/vdso32/Makefile
> index 789ad420f16b..3dba0c4f8f42 100644
> --- a/arch/arm64/kernel/vdso32/Makefile
> +++ b/arch/arm64/kernel/vdso32/Makefile
> @@ -10,15 +10,7 @@ include $(srctree)/lib/vdso/Makefile
>  
>  # Same as cc-*option, but using CC_COMPAT instead of CC
>  ifeq ($(CONFIG_CC_IS_CLANG), y)
> -COMPAT_GCC_TOOLCHAIN_DIR := $(dir $(shell which $(CROSS_COMPILE_COMPAT)elfedit))
> -COMPAT_GCC_TOOLCHAIN := $(realpath $(COMPAT_GCC_TOOLCHAIN_DIR)/..)
> -
>  CC_COMPAT_CLANG_FLAGS := --target=$(notdir $(CROSS_COMPILE_COMPAT:%-=%))
> -CC_COMPAT_CLANG_FLAGS += --prefix=$(COMPAT_GCC_TOOLCHAIN_DIR)$(notdir $(CROSS_COMPILE_COMPAT))
> -CC_COMPAT_CLANG_FLAGS += -no-integrated-as -Qunused-arguments
> -ifneq ($(COMPAT_GCC_TOOLCHAIN),)
> -CC_COMPAT_CLANG_FLAGS += --gcc-toolchain=$(COMPAT_GCC_TOOLCHAIN)
> -endif
>  
>  CC_COMPAT ?= $(CC)
>  CC_COMPAT += $(CC_COMPAT_CLANG_FLAGS)
> -- 
> 2.31.1.295.g9ea45b61b8-goog
> 
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YHeGJzhIhSFJLprr%40archlinux-ax161.
