Return-Path: <clang-built-linux+bncBCH6BRHDXYLRB4OM7GDAMGQEH5XCC3I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23b.google.com (mail-oi1-x23b.google.com [IPv6:2607:f8b0:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id 5666A3B9A69
	for <lists+clang-built-linux@lfdr.de>; Fri,  2 Jul 2021 03:05:55 +0200 (CEST)
Received: by mail-oi1-x23b.google.com with SMTP id r3-20020aca44030000b02902241b7398a8sf4281794oia.19
        for <lists+clang-built-linux@lfdr.de>; Thu, 01 Jul 2021 18:05:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625187954; cv=pass;
        d=google.com; s=arc-20160816;
        b=qm8DDFij1PkBN+ld4gSZ1CE58/vQkFIKm1rMWhHjtoEyEkfdZJ/iKdvvbBUPz0Rgbl
         pPA26X5ZtZqoVkDpbluY+JnmMZwpE2ISnG9cNTcpnnpeaGR/FrWK6WFJzF/6dyldASSo
         kxMteimbkuGXdmZxhSB+r1WLyj6L9XzR1l2tXpRjd2q/3TqKexeG49e/ntwixvZPs9Dv
         OgrLUZS25kV56L5qq5vi4DJbtMel4r/THdgR93mpUW/WVJAXvL/hZNaq5XA6pC3R1gWw
         g4xoav8wlmAoIekv8mboELUFv/g8NVRirUryeK5MKApISJY97Dsz4Dq8omGqijOWdzhQ
         nJTg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=kxEBG6M9JEg6xSOI/Q3rv7ySNN1MGX26nLcGzhSNJQs=;
        b=OvYhCYLvLTtNGZqP5GVT/xdfymsHc582tZ+os7YWLKlnoWUztIcBkCtw9bKr53hOx5
         1bwaA9loF5NXCvXhny9Af6fs4BhQ7X3l7q5ZPGP+8E1lZyrlO8cRucsyuSH1xeaBHwJr
         SHCEofrrnz+o4HXdU//9CAAfNRW+MhkkATkRIDpINJGfJ196n/lYuWuSX8AmVcVsaD3r
         QMmnA8+MO08+h+I96umfsypO3fHyBOBn7EdxeHLf64M5mX1jZSAqyzjTg+cmRgI5j62i
         t5Ur1gSG8qRlBa1vJk8PGxjSozhmcAY/1aSgOg6VH0PbaYBmm4mDJn1aWpPLHQYLlArK
         TrNw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=EvPMmXCv;
       spf=pass (google.com: domain of tstellar@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=tstellar@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=kxEBG6M9JEg6xSOI/Q3rv7ySNN1MGX26nLcGzhSNJQs=;
        b=Km4EjVQPa6dO9CQRo0P1KSRlgBlsqlCCJxAqH5wuc4edX65KQ58EZ18dFxcC44gLbF
         5Kz5SaLBoIRLEZ+wNGmjkXK/TfCRAiUm2akGd+WGppLENqYPNt99fYGWxchXBG9Wo7SQ
         Z4YFBZCT6yxNQeYSu177tbj/NsmvUNPc6YgWdU0eR3b5ifAJpT+EVRIySvxeuBCTPAqG
         tc4hpqqY0PbBVUlxdUHQd0WuVano2R/Xv+R+MZC2+BvpYWQjgoeGXXJ442EMej4w5fnq
         O7sMalMOdUilR2DwTIr1JRMoWflDfD2g2Q90tX3sp6AhVQfoDeIm8nTi0FVGnnxE/JQs
         JECw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=kxEBG6M9JEg6xSOI/Q3rv7ySNN1MGX26nLcGzhSNJQs=;
        b=G5HfL94yklnI6FPFSzylvHm81eEYvdh9qR13XRVxN59kQT8H3BFygSq0wlQlUVGU3b
         9PldKcsLBfZkAAzDAw0wGNLopXalcj754VCMaKL6VQT8Z5u+7Uy5WvNh0NzFZHXDr+VD
         rEuRPnkWi8izr6ai1gWh3+ehnqqInG0EtfwDfB7LwezqY9bmJNhNtMvZDRI5fuLI9Xy2
         Qw5msl+/NRUbsgOSWYLcEVSHh01Mh6U0cciIX5BGfbPgipWsFuaUtdjGmRHhpmPvrCq3
         B4jFAT6fnofl+RFyc126Zr9/nYwpYR7+yfY7MXnOdQXiyBBAVun9CeR4OAx54wL2y4HQ
         hzqA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532Knj/3/h7Q7qwb/nzCf9I4DRmVcmmeJ2ELyPm56vzu8o/tZJBo
	vYf9w4fIYa/tacgFCnV1XLI=
X-Google-Smtp-Source: ABdhPJwiwfiUGOMFSvBigc7vLTwDsTjEO4c1cyksBJN8gptYkHSOSwJOiYpvgPDnGMBrzNehjDcpgQ==
X-Received: by 2002:a9d:6287:: with SMTP id x7mr2300286otk.339.1625187953873;
        Thu, 01 Jul 2021 18:05:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1e2c:: with SMTP id t12ls2781196otr.11.gmail; Thu,
 01 Jul 2021 18:05:53 -0700 (PDT)
X-Received: by 2002:a9d:57ca:: with SMTP id q10mr2301637oti.224.1625187953168;
        Thu, 01 Jul 2021 18:05:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625187953; cv=none;
        d=google.com; s=arc-20160816;
        b=Ov9Crd+iZrN+qpXoUONqRSjfnsNaAa8y9r5tni+VgT+k16ztT0EvjHbTfkdIl8iUDv
         x02rS519XM6mjiMgfF+r8gStcUGxeS9mND/u0q8/4afQV6cweeZPIfDvfC9hL3O77Drz
         3OgRqJKBFZJ9t8Xn680w2sQCw3YEMb/PCeG7gpAL0Ln7vSzAo9WDfkJnZePDCTJ9PhJ4
         Y7l54QXRq3o6vJVZ+7k6Z2ONdZPaK4ykBbJqonksDfP94fRuGClHKi04SIpSRB3ETvMR
         CQuWbCIx/dOAslZ39ocIESzK8mtNcXIIuLqFOGfQgH+dmSfUNYM+xTCm96j6yDHOnp18
         42pA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=n9OaAW86hfdiO1VA98CCVRDLl1o7BbOpKsYQYRGdLwU=;
        b=uDKuYt/M21FuxE0e3rvFIxnVcRYgWZ6HX3IqSX3jKxEELfqFSgy7ByENhbKzHrBXsO
         R1igEuxWCBYcNHY125Pqq4QHeOHBbm89XQ7vsrBWcB6B58JgBNoeqFU0UkJaPzWg/yOe
         zforypDcx1Dp9h+FOih6L0wZf9feI4gNG9KtUAphrscvXIaKsWdXeu9Q+J2IMzJMeJcV
         smyCozwsnfH9vjycs2pzdaGQhECPpI+Bl4GBevA3aFZfcgwj561mN9WZk40w7KaYcrfH
         MdlpcgjabX4MKvTVYGHl/eTKLigsM93kiu5XQxJb7zwUawqlgOTqwiA6AZwwl/hVsc2D
         Zu1w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=EvPMmXCv;
       spf=pass (google.com: domain of tstellar@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=tstellar@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id j26si139616ooj.0.2021.07.01.18.05.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Jul 2021 18:05:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of tstellar@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mail-ot1-f69.google.com (mail-ot1-f69.google.com
 [209.85.210.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-95-FsUFhZ1zOh6673oeRBF6sQ-1; Thu, 01 Jul 2021 21:05:51 -0400
X-MC-Unique: FsUFhZ1zOh6673oeRBF6sQ-1
Received: by mail-ot1-f69.google.com with SMTP id 97-20020a9d02ea0000b0290474af71c1e8so4130924otl.19
        for <clang-built-linux@googlegroups.com>; Thu, 01 Jul 2021 18:05:51 -0700 (PDT)
X-Received: by 2002:a9d:1d23:: with SMTP id m32mr2320708otm.16.1625187950191;
        Thu, 01 Jul 2021 18:05:50 -0700 (PDT)
X-Received: by 2002:a9d:1d23:: with SMTP id m32mr2320687otm.16.1625187949940;
        Thu, 01 Jul 2021 18:05:49 -0700 (PDT)
Received: from tstellar.remote.csb (97-120-209-236.ptld.qwest.net. [97.120.209.236])
        by smtp.gmail.com with ESMTPSA id m126sm349784oib.55.2021.07.01.18.05.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Jul 2021 18:05:49 -0700 (PDT)
Subject: Re: [PATCH] arm64: drop CROSS_COMPILE for LLVM=1 LLVM_IAS=1
To: Nick Desaulniers <ndesaulniers@google.com>,
 Catalin Marinas <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Arnd Bergmann <arnd@kernel.org>,
 Fangrui Song <maskray@google.com>, Nathan Chancellor <nathan@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com
References: <20210701235505.1792711-1-ndesaulniers@google.com>
From: Tom Stellard <tstellar@redhat.com>
Message-ID: <bea79143-b2b8-b7a4-0456-4a593f03907f@redhat.com>
Date: Thu, 1 Jul 2021 18:05:47 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.1
MIME-Version: 1.0
In-Reply-To: <20210701235505.1792711-1-ndesaulniers@google.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: tstellar@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=EvPMmXCv;
       spf=pass (google.com: domain of tstellar@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=tstellar@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

On 7/1/21 4:55 PM, 'Nick Desaulniers' via Clang Built Linux wrote:
> We get constant feedback that the command line invocation of make is too
> long. CROSS_COMPILE is helpful when a toolchain has a prefix of the
> target triple, or is an absolute path outside of $PATH, but it's mostly
> redundant for a given ARCH.
> 
> If CROSS_COMPILE is not set, simply set --target=aarch64-linux for
> CLANG_FLAGS, KBUILD_CFLAGS, and KBUILD_AFLAGS.
> 
> Previously, we'd cross compile via:
> $ ARCH=arm64 CROSS_COMPILE=aarch64-linxu-gnu make LLVM=1 LLVM_IAS=1
> Now:
> $ ARCH=arm64 make LLVM=1 LLVM_IAS=1
> 
> We can drop gnu from the triple, but dropping linux from the triple
> produces different .config files for the above invocations for the
> defconfig target.
> 
> Link: https://github.com/ClangBuiltLinux/linux/issues/1399
> Suggested-by: Arnd Bergmann <arnd@kernel.org>
> Suggested-by: Fangrui Song <maskray@google.com>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
>   arch/arm64/Makefile | 11 +++++++++++
>   1 file changed, 11 insertions(+)
> 
> diff --git a/arch/arm64/Makefile b/arch/arm64/Makefile
> index 7bc37d0a1b68..016873fddcc3 100644
> --- a/arch/arm64/Makefile
> +++ b/arch/arm64/Makefile

Are there plans to do this for other architectures?

-Tom

> @@ -34,6 +34,17 @@ $(warning LSE atomics not supported by binutils)
>     endif
>   endif
>   
> +ifneq ($(LLVM),)
> +ifneq ($(LLVM_IAS),)
> +ifeq ($(CROSS_COMPILE),)
> +CLANG_TARGET	:=--target=aarch64-linux
> +CLANG_FLAGS	+= $(CLANG_TARGET)
> +KBUILD_CFLAGS	+= $(CLANG_TARGET)
> +KBUILD_AFLAGS	+= $(CLANG_TARGET)
> +endif
> +endif
> +endif
> +
>   cc_has_k_constraint := $(call try-run,echo				\
>   	'int main(void) {						\
>   		asm volatile("and w0, w0, %w0" :: "K" (4294967295));	\
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/bea79143-b2b8-b7a4-0456-4a593f03907f%40redhat.com.
