Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB47DWCEAMGQEMQYKVIY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd38.google.com (mail-io1-xd38.google.com [IPv6:2607:f8b0:4864:20::d38])
	by mail.lfdr.de (Postfix) with ESMTPS id B696A3E1BA4
	for <lists+clang-built-linux@lfdr.de>; Thu,  5 Aug 2021 20:46:12 +0200 (CEST)
Received: by mail-io1-xd38.google.com with SMTP id e7-20020a0566020447b029050017e563a6sf4231096iov.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 05 Aug 2021 11:46:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628189171; cv=pass;
        d=google.com; s=arc-20160816;
        b=eaZ6/NBT6TISkLkF5IruNCHpcSYwume4jiksbZNU1Amcw/0OfiaE6BjaTSuOb6nlIY
         /PqbWEMfB+yWf5DCx2x9kgFl1x8gvAQnqlYM/ATNnmgDn0k6x2kzl80WFoFP2D3cK4jB
         rttpyMjZME3BrfVGPdMkSgchYjHGan6cyKWKIHz1+wC8+OTO4c8PEnUS2eqOC/T//Tw2
         P5upniE/OwcaOZSPx1w88A4ama8zA9Sz+HE/JEf0YEsW7XjrkigwbhB9dffRJ22n0KLn
         xkRux96jjeTTRV48p9ZC4bwyPffkGIiU3FmkEcrYzkXscTqWDl6lNZzpc/hmpYQ29m3T
         pRsw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=15HSXDwbJcAuEc9pVgRSSZipSx6fqV6tL4jxocpXxy0=;
        b=AA679qo1PbdD67MekYoalhsyZzrHPb0Nyc/E5BkAagj1oZ7Wzke3S0gbIKyv4TzTY9
         3icrMgq/kWpwo5wZr/7zS96cCTyNlXshA+o/tMF29DUSRd1atfrtzhlk6eU9TP/tpbq0
         5nMJhBsGYLUUJtBGGafjsL+Ao9qJbkZXFB60m41ffEQS7J4JeC8cfSIyxCDBoQzWini/
         ZodBuSmH2JamXupMu5LyaKDctJWBi5b435Dq84ddX3eeS+NLGS3O9Z40mnOE6Nr40pl0
         RECbO9eK1/u5+1yNm4EVhEeqI3OTwSNjbMhvFWoI9EDj3twj75JGyeEhZ9uXnU6jYE1y
         hzdw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=RIRPV49x;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=15HSXDwbJcAuEc9pVgRSSZipSx6fqV6tL4jxocpXxy0=;
        b=c/h/xn4pxgfZ4iH+7M08sPFrEcDaH8ScCLOVwYfYTbA/4D7AF0vcgpqRWPS696R1lf
         vHznO1Jtl98u6aZryTR3dfRNifqOa0vepJZCVeuXiZP8CVcsxguR1lHD2QzwjILZfHeL
         zy3U31udHKa6+Ok/1hgDfUEAYlAebe1gJ62J2rIhbyZlXEreWymBUHpmQEnGAFCKvX26
         xD69oTDp6QMy0oN3ekm/13bQfhJw+kTPDEhwpd7zSNU2A6JDpAON100jUyXefM1REtcZ
         dExD8WTDe4uwNYfO4uxRFdaeVmdIArj+XKp6O6EzHjDUR9bYDPXVi4dyyrkTMU0Qtjqw
         ZS9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=15HSXDwbJcAuEc9pVgRSSZipSx6fqV6tL4jxocpXxy0=;
        b=HcqTW/bBE+fV4BaJfRrIff96H9jgfUI3xXfE1bC+dUz5BU86HKCRnxNVSKOFD2pZwD
         hSxAxoZuzwKrw4BLYelRFrRsWBZL7Tu9qItUXjU7FICJ4NKR+VrJE03ExIM2eKxoMuiK
         LOyx+Ra6zPbzlyPo3ZyM/RrQZv6uji/lQHllNNHkVMINSbidxipHgCMrE4slASt3E+Pc
         ufoU1JNMVvCU5wMJ4LxEMBxeYywgREpj36pa+RBLnVYhnDEUYGKjLzwj2fA/Dn/P+u0Q
         mSKdXU+M7K+m3M3K6JgoZPUsYJu9rZLwH6V8x/2LIZcENegiJJGpHCV8/V5Hgo7HrRLQ
         RMDw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531NDmQBc8goALd1AkRM40WkZbHl48GoIEbxLuHg3S3nteXsQ+q4
	e33BKZ/4+Mgb6O6pVP7vtoE=
X-Google-Smtp-Source: ABdhPJwcS+kr++RpgcG4wFboUgvVuLEInysA9XjVJWBGp9muNPnxYeE98fsd6nEWf/9sU/80nabWNw==
X-Received: by 2002:a05:6602:2bc9:: with SMTP id s9mr1610309iov.64.1628189171630;
        Thu, 05 Aug 2021 11:46:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:144b:: with SMTP id p11ls1407513ilo.8.gmail; Thu,
 05 Aug 2021 11:46:11 -0700 (PDT)
X-Received: by 2002:a92:c5c5:: with SMTP id s5mr418766ilt.271.1628189171335;
        Thu, 05 Aug 2021 11:46:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628189171; cv=none;
        d=google.com; s=arc-20160816;
        b=GoSzS+yeiikTcn1LZuR7pUwuY3rE6SNb/8KsJEGHyH81LDHTluOljfVC3UyX2QmoFx
         2ATFzk6YskERCNlgsIGOlL8JRQcZTapKNh3LwAIe8z1juJPtRNYHeNEJS4h8124DdGR+
         X9tww5oYFUsm6BWz5U8hfupvuogmmygBFQJI1p3JK2M4mKa+zdW1U83+Y/L3DtOo5KXu
         3f3ud4XdxASo8TNHrO+w4mWalNIMa3MEW9PP/4Jh0kF8wcTjsiYSSiC7bUr42eOKtaoP
         HPW23UiXaLUflNDIHCZNjt1PxDU/SrfP5q1e61pxcelMhWazmkJ1B2gxzVinStLn07Xc
         uVtw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=ImNgKqndIK6e3jolu5jEYlGW11oAJS7/ev2HoTAK87E=;
        b=NKm7XaRnGwN2dXMOYa+wU6uW9ctquh/YsUkyStEyiLoRM9gTrQAX1JbnEhDPMADcLs
         wQUq8SbeMKtE74MTq3fGEWTrKsjAyYcOq+aXV1/Rn6jngZ2+3+ls6vsBYJaYjisF6oqP
         2p6rxzoLFLULVhpxpdRm7k9GiFNkMyt3S29A913FP7g3hfPqIScOHIQH45IZAjwasBJw
         qnPNHsV9bwdnhsogaGcWJGkH58/IQZWnk0qui/jXskHnBBWov8rh1pDSKEfr9GzQWa8y
         bQLTsO5c2QmHXNMNKM6+zXWAqOLYCQYUCPgTCfi+hvL09CAT31Y48ZcVSyFkmd7z6QnB
         n6uw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=RIRPV49x;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id b11si289907iln.5.2021.08.05.11.46.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 Aug 2021 11:46:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id B215F60F01;
	Thu,  5 Aug 2021 18:46:09 +0000 (UTC)
Subject: Re: [PATCH] kbuild: check CONFIG_AS_IS_LLVM instead of LLVM_IAS
To: Masahiro Yamada <masahiroy@kernel.org>, linux-kbuild@vger.kernel.org
Cc: Albert Ou <aou@eecs.berkeley.edu>, Michal Marek
 <michal.lkml@markovi.net>, Nick Desaulniers <ndesaulniers@google.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley
 <paul.walmsley@sifive.com>, clang-built-linux@googlegroups.com,
 linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org
References: <20210805150102.131008-1-masahiroy@kernel.org>
From: Nathan Chancellor <nathan@kernel.org>
Message-ID: <59ce441e-8deb-39ff-700f-4e1c4e871177@kernel.org>
Date: Thu, 5 Aug 2021 11:46:10 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <20210805150102.131008-1-masahiroy@kernel.org>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=RIRPV49x;       spf=pass
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

On 8/5/2021 8:01 AM, Masahiro Yamada wrote:
> LLVM_IAS is the user interface to set the -(no-)integrated-as flag,
> and it should be used only for that purpose.
> 
> LLVM_IAS is checked in some places to determine the assembler type,
> but it is not precise.
> 
>   $ make CC=gcc LLVM_IAS=1
> 
> ... will use the GNU assembler since LLVM_IAS=1 is effective only when
> $(CC) is clang.
> 
> Of course, the combination of CC=gcc and LLVM_IAS=1 does not make
> sense, but the build system can be more robust against such insane
> input.
> 
> Commit ba64beb17493a ("kbuild: check the minimum assembler version in
> Kconfig") introduced CONFIG_AS_IS_GNU/LLVM, which is more precise
> because Kconfig checks the version string from the assembler in use.
> 
> Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>

Reviewed-by: Nathan Chancellor <nathan@kernel.org>

> ---
> 
>   Makefile            | 2 +-
>   arch/riscv/Makefile | 2 +-
>   2 files changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/Makefile b/Makefile
> index 4ab151060931..8b56c9692c3c 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -844,7 +844,7 @@ else
>   DEBUG_CFLAGS	+= -g
>   endif
>   
> -ifneq ($(LLVM_IAS),1)
> +ifndef CONFIG_AS_IS_LLVM
>   KBUILD_AFLAGS	+= -Wa,-gdwarf-2
>   endif
>   
> diff --git a/arch/riscv/Makefile b/arch/riscv/Makefile
> index bc74afdbf31e..dcfbd2a87d41 100644
> --- a/arch/riscv/Makefile
> +++ b/arch/riscv/Makefile
> @@ -41,7 +41,7 @@ endif
>   ifeq ($(CONFIG_LD_IS_LLD),y)
>   	KBUILD_CFLAGS += -mno-relax
>   	KBUILD_AFLAGS += -mno-relax
> -ifneq ($(LLVM_IAS),1)
> +ifndef CONFIG_AS_IS_LLVM
>   	KBUILD_CFLAGS += -Wa,-mno-relax
>   	KBUILD_AFLAGS += -Wa,-mno-relax
>   endif
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/59ce441e-8deb-39ff-700f-4e1c4e871177%40kernel.org.
