Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRBHUA4GBQMGQE5JYR6GQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x637.google.com (mail-pl1-x637.google.com [IPv6:2607:f8b0:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id AFE93360A84
	for <lists+clang-built-linux@lfdr.de>; Thu, 15 Apr 2021 15:31:12 +0200 (CEST)
Received: by mail-pl1-x637.google.com with SMTP id d29-20020a17090259ddb02900eadb61377asf7797410plj.22
        for <lists+clang-built-linux@lfdr.de>; Thu, 15 Apr 2021 06:31:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618493471; cv=pass;
        d=google.com; s=arc-20160816;
        b=gYG2nQdpShFp2wPiVvrcPqLyO2CpULTpVbR/7/QFRSjl8Avy5isgd5+aNoHZVnwwx6
         K9BXFlZfh88IKVTyPu6L2T1tFJfP2irUZNJBIfEDH1HU2CTNEhDLuEKMARX896yY+gqa
         OT1NsPh+cA2Ex7Wdf9ThcrS0kkt7wrzooy5zcE1roiCBwxqj7M58icN5UqPgAflUXWih
         +9K6FN65RqoXz//Z4JiupoReAQ3lmWpPRIi5O7ws2eD4wsjsoMhyVaMO1m+rHpq3E/pE
         5gNPjmtnrryZzpIrSwbTB9WiB0Hp3N2BVnvTmSCunMsTOVr6mWlxdyNQCWM94vN+VTcP
         kuWA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=Z9rVnp32ry3IPRiqmh4vK5mi9tDKRla9p5q+oYJdpBE=;
        b=aeod3n5RihPh9l5Ph3kwW4bmcAEKQyETa4W2icDS/blKF/XWvkr6JsOvpkQ8GcGLnz
         8NTIM9guKiipyWSY0sPMPrhi7bNCvaukTWmgXW+GLhUWbGgqnE/hFySYHUjbLxsyqK0S
         Lbgp7jQFqELsmhqwwdMRpKiTnoGIdnkP+7oGbr8CeRO0jyTDNvNFrnKm04f/dTsXDuum
         jo+J73MuKobplbXGNQp0k3YwflsHLCWtZkXe2vYE9zVxNYe0JrzGo0haP0HnQ7da6wno
         H0D+We3PWbvhkNd5PMfwMU+M5VT/RyJgl4ZFJGndDbItgKFiWV5N2JAdIDMA+3fvoQAs
         IHiQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Z9rVnp32ry3IPRiqmh4vK5mi9tDKRla9p5q+oYJdpBE=;
        b=T/9yHG5yDW46gdAs1LQofLOyFRhDX+eLu5liQ6UXudz3eggXv5IS1+gt1YF0QPWVN8
         z4Dsh5PH8vVbghv8ue56G1K9lgXffnt4uHIDdZjqhYEa+cQkHdFbb3wO+VB/VpfsikBo
         3OJkt9RzFPnqEq2Tuc7Wk+5Va08616K4R9EXxKAgtr/sNlBeqcyEGXBYuEL9cmDhL/pj
         hIzdm08WBgptG9C5x1y/90UWsLMpUJs4J/VOhqMCWxVlSgd0xMtFPIjw1SpRVGwy7d/Z
         CZJ2SLNG0TzFGI8w+cpP4BT8tdECGPvzDRcl+3Oyz3zweqCtUPsP9qxv6NCva/XpUX5y
         t5YA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Z9rVnp32ry3IPRiqmh4vK5mi9tDKRla9p5q+oYJdpBE=;
        b=KW0ar0XDCoKwbfytOhHCpL8JPQkbk3YFoDE0fvrWZcJU40xuOabrjzTgaiRPO5l7NB
         k1yEWzEyhxQVHB2C9eCn0kW7Y0lAwYsn/5UvpddS3KEyjMVK819m0sQS1Pl4a4grEkhR
         RPTJYfT3DUnJpGtuR8eeZDpwPtvEw/1C2CyfJaAmOtWRonXMsc6EQbzGAfDMWpg1mPxb
         wM4gGDZn5Jtoqef8m2pKfMfOVnkAexc+pc+2KV7FBC9hauz7FydfDaeMrFT6unonuq/t
         GrVWhJ/S0I7ZYkFi09EKmbtFA+0NJFM825MbfQ5B6t90JZOQSgaiTbeUter2A4cAyHcJ
         P09Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532hjHSnLh/RLr0751prMzUM+xXnQ3lnlqyL0LcJO5JS9Sm0xalV
	OmOYR+2NCfSpPDDC2q3CGaM=
X-Google-Smtp-Source: ABdhPJxJ/crBvEPyRqBiy/Hdk/PaQV5Zpj2nuhFrNNsMJror8FvF4SYPrmG4JVgfQpM1f7rORhYTsA==
X-Received: by 2002:a17:902:8b83:b029:e8:bfa4:12d5 with SMTP id ay3-20020a1709028b83b02900e8bfa412d5mr3823353plb.21.1618493470807;
        Thu, 15 Apr 2021 06:31:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:9d88:: with SMTP id k8ls2747290pjp.1.canary-gmail;
 Thu, 15 Apr 2021 06:31:10 -0700 (PDT)
X-Received: by 2002:a17:902:525:b029:e8:e347:b07f with SMTP id 34-20020a1709020525b02900e8e347b07fmr3909765plf.34.1618493470222;
        Thu, 15 Apr 2021 06:31:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618493470; cv=none;
        d=google.com; s=arc-20160816;
        b=YdSVGpAVR6gGiurh4TlkJ+ZVqyVMgYvGTkDxA+LpyO4jbNqTpPGIbRatTZggt/XRld
         RLfd3HIVqkvoJjSdkZjdQmUvUVlo3uD+Ku4zTLvpNGQVLl9ATUv1aYd/HP7NOT6w+pCD
         /+UgutKtZAVAMLoU/hGFkqS9GoQLjDgiQMgAT9KcLn8SRzmVxaQVYABEBfms0ZVRCsaD
         Du56zd/GTmiVvML0X0t/Ka6pzTxHbxbu2Hbey0vfSAWxWtX3IcfHEoRyr0SEt/sSpYyU
         0rER+fs85G778/egI/aR/Xiy8REvvlXpDnzSOOKpPeC3lM7zpH+0upXysU75rwSSBCtu
         IsAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=FkV8x282LziP7ET2HeASiBqAovpZf5TtwRD+WZhqcvM=;
        b=HwET8NTJtNW4iluBkPlkIzcVCRMcKZGuYOLH9y6Pvf1AlAFsCwDaZ5tMF6+IRXvtx+
         AWVT6xyfZ78yVUHA+dPLQCekgKv5TlADWBCLRpe30YtUcYKT5pEvqEENeDIBvhLpA1Gy
         qdt9Ruuq+vZoezNG21yU1TIYb3XORU8dfvApZp6W4WVN9CCkINoxf/SjICDd7pxffheN
         o+/sO3NHK5iVVbrcbRFWmFE6fpS4mk0nCEGfLrQir9G06Rsu2xYqPqFXJxl5xFVCgg2V
         6JffQH33c+Hcbj/QXYPoIBkdZiXCQkAA7T/AxVhRtcVWFC2r8XgtpNlVmTDckvqGOzVf
         8FKw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id t19si240317pjq.3.2021.04.15.06.31.10
        for <clang-built-linux@googlegroups.com>;
        Thu, 15 Apr 2021 06:31:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 581A711B3;
	Thu, 15 Apr 2021 06:31:09 -0700 (PDT)
Received: from [10.37.12.1] (unknown [10.37.12.1])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 07E393F694;
	Thu, 15 Apr 2021 06:31:07 -0700 (PDT)
Subject: Re: [PATCH v2] arm64: vdso32: drop -no-integrated-as flag
To: Nick Desaulniers <ndesaulniers@google.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Cc: Nathan Chancellor <nathan@kernel.org>,
 Masahiro Yamada <masahiroy@kernel.org>, Stephen Boyd <swboyd@chromium.org>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com
References: <YHYlQnFRMNdn/CDp@archlinux-ax161>
 <20210414214548.700993-1-ndesaulniers@google.com>
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
Message-ID: <a2ddf4d2-110a-9290-f766-3925e451ddef@arm.com>
Date: Thu, 15 Apr 2021 14:31:06 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <20210414214548.700993-1-ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: vincenzo.frascino@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172
 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=arm.com
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



On 4/14/21 10:45 PM, Nick Desaulniers wrote:
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

The patch looks fine, but I have one question: the kernel requires as a minimum
Clang/LLVM version 10.0.1. Did you verify that with that version compat vDSOs
still builds and works correctly?

Otherwise:

Reviewed-by: Vincenzo Frascino <vincenzo.frascino@arm.com>

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
> 

-- 
Regards,
Vincenzo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/a2ddf4d2-110a-9290-f766-3925e451ddef%40arm.com.
