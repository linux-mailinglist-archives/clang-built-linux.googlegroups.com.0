Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBR6K3CBQMGQEKZZRVIY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 3108035E987
	for <lists+clang-built-linux@lfdr.de>; Wed, 14 Apr 2021 01:12:09 +0200 (CEST)
Received: by mail-pf1-x438.google.com with SMTP id x26-20020aa7957a0000b0290250a7512179sf12378pfq.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 13 Apr 2021 16:12:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618355528; cv=pass;
        d=google.com; s=arc-20160816;
        b=GKM3Nq5wGQBywALf8a4ADml1mByYaA+a9d6lnWBb9bgTv3rv/Z53B9e3fy8kGzhPqn
         qgVV4ZIQYAXKSlwyiYicrEd7XGD4BKrCv5URzSR6hxgqMpmZH4El30PBzH33OSEWE9l/
         jNcZAPLrpuhOcg/owufyWAmGxYuuKgQIThrLrN6uUNyOp6jED6WAgpptoX5iElYFSMYU
         /tvbYpCUoZ1pRq6/fhizKlclLo1VTE/guE4qhFBaWUXcgfGEYfX4UdiQuxmyAC8HBvRE
         /Wb3WeOe0RJCHzwn2SIiUkJesa7fI2mpyYESIuAzT2RxNiRDrBaPAxoByvIbRoyTII/C
         jxeg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=kBVzu+l0uR7wnH18Iz4KkNnNSCTRLwCnQ4V1LCi8o2s=;
        b=vJlYrqSfEtuoCu2OJokUIUZwNsrFORJUsBSsCmu57uP48Z8Tw+Q3hbIHLtqfhFa89v
         7GytW1zFS2QFIFV0FiN0VTf3dHn3+cTXYCTP5T1GjQdT/S4hamDZf1DoW3Swo8uJNlY+
         kerfWYBkOR+NOjBO7u9aaHY1QwKPFXDLyPC77xke6f2zGglzlYQn1p2vGccrflEwkqMZ
         Tp9potv76oOJTJN9q17Sa75icaa4foW2Vse/XHbKC0ZrDT4KtfxkM82VOQNDp4KQJupj
         i9LljKe2eUzV61zjijD/fvWPIzV2hQkPOateF2HFskNefdzJBblJL6GZazCo7MKSCQPo
         MdSQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=n0LuWHUY;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=kBVzu+l0uR7wnH18Iz4KkNnNSCTRLwCnQ4V1LCi8o2s=;
        b=qlfaxND5qmfPtEAVCjcNGRdR+Iz0Xk4YGS5erDPiaRbn5wEr6UUZtgPEpaeHfaRcVG
         GwBjc5sPSjg5U4rONuCVJiihMtKrXZ9O6w9rZ0ZJYWVNfdXjU6a2dfu98vTG/CQk4q7j
         hp33FWo6A93ZqT9eQYw7UXrQPX1R2B2qlqfvfYzQqBPCrT2hsN2nGrsnNFYglfBMglkw
         XawXENbCRR/m1+hx4OvbG+FhOXl1TQnqDwfojAQFGxcpOqBCJIVMhhfEBdrtOCcBGjg6
         +sVpI3ccy7ePNpHRYSpGkYkZAB2Vvqh4MHXyfsco63vegSvlxiVZ7OZGvXyjf3YstFMD
         eO7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=kBVzu+l0uR7wnH18Iz4KkNnNSCTRLwCnQ4V1LCi8o2s=;
        b=Wx3zfmdgoPn30aqnTdtTahx7cDZrLVoYti5mCYaEcvBD2pqhrBxb7ePcsDuR+PxqHW
         Uer3xMRYMPX9rZDAszZSpQ1HE9zHVyWAmlmFMN8hIfh3DeoqY//exB/jPEcJ5pjjinv6
         L6TtdcwCACxLFfjrZaLAAID941lq88phtiMOkxBqULifdcn2zWKlAdZZfcgkXLE2IERw
         XyjTgveE2ZG/d+SUm9RFioBfKz714UKTCsT3aTWDIJYJnmBa6o18KCszlivHd5PDN/v1
         ooHb/ih0sP2ouMAV6Oi8QcdA2VxdqRraYC+I+AvC6YkbMx7pbZRt6G37cLqo2f88phbA
         fTPA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533ATY3PSwag9+chqHVlc/REDuZMsv0kvmx3cXgVgHPROcggjYrV
	ienSHSs2y7ZiMbklgcy7U+M=
X-Google-Smtp-Source: ABdhPJxS+WpsyWqDJtqEWxHbTGwyx5k7n/Mo6I5yim3CUJlrtWwEF7kuqgHegZPUOPzXy31lrX4OyA==
X-Received: by 2002:a65:47ca:: with SMTP id f10mr34950680pgs.206.1618355527922;
        Tue, 13 Apr 2021 16:12:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:8a57:: with SMTP id n23ls173469pfa.7.gmail; Tue, 13 Apr
 2021 16:12:07 -0700 (PDT)
X-Received: by 2002:a63:df56:: with SMTP id h22mr34811777pgj.84.1618355527447;
        Tue, 13 Apr 2021 16:12:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618355527; cv=none;
        d=google.com; s=arc-20160816;
        b=Bt67SforQPHGPRJ+1a4KlxxyBKfi0T9AaWUVrx7SdQpCUGB2lRLAc5owhMsAlDuz4a
         fIMTjdrwsR+1wcYJk55yDo+CReoWOa7o4JQEc+tLNhhW8esKcy9/a9J1c2u0obAtKi1Z
         ItDSKiqAoQk+JpYEvePZANcedinNeb0FTPAxA8Dpa+ug8SScJcEqXjH2MlZTCnb88uJR
         AFFysaR8wo66YWWt6t5WqdFh0jY8NJo9uAk4/tJHpdIjTH2MXME0KFXOoaY6t/CHf0KL
         AXjVHhQ7a5CPINd159KXvv6wreLZmjO9DvyZuL7odDlKzuMrJji5IJEPM/UFAzTl0lSC
         LpBg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=ova/kLbFwlnelXNEgz1AUU7MEamvxIbMbHTIsubIKU4=;
        b=ztvo3Ra/z1kGBcQ47KpA4nDq/WafVyX55GGDt29uniwYpA0sXA/UpoSwDahkIq9SG2
         kIAQAHi7inXIV1mdpbeHKafOgQoXRqAPBa+e4bjUcfbRpMLE5cUST9Qu3g7LvkafXgUO
         wWhlFVApUley9tJs2DO8uW4P2ZwYnfpnJGYhGY7wTW7aDegBU/Ux3d/qPyopmpi8jIPR
         cbZu8uxsnG59YKNS3wdfLGn17931NvO2SoE+5nnSDw8wZ+U1jzxWZQkJAamHo8It8Aaw
         4VozINm/nfopOCF5IzkoDb0Tm8wTv7nZHYutkOvGWNtLAynxdYH/iqOtGq6g/l3GRXFQ
         eDBQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=n0LuWHUY;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id k70si1213232pga.2.2021.04.13.16.12.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Apr 2021 16:12:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7A3C360238;
	Tue, 13 Apr 2021 23:12:05 +0000 (UTC)
Date: Tue, 13 Apr 2021 16:12:02 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>, vincenzo.frascino@arm.com,
	Masahiro Yamada <masahiroy@kernel.org>,
	Bill Wendling <morbo@google.com>,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH] arm64: vdso32: drop -no-integrated-as flag
Message-ID: <YHYlQnFRMNdn/CDp@archlinux-ax161>
References: <20210413230609.3114365-1-ndesaulniers@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210413230609.3114365-1-ndesaulniers@google.com>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=n0LuWHUY;       spf=pass
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

On Tue, Apr 13, 2021 at 04:06:06PM -0700, Nick Desaulniers wrote:
> Clang can assemble these files just fine; this is a relic from the top
> level Makefile conditionally adding this.
> 
> To test building:
> $ ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- \
>   CROSS_COMPILE_COMPAT=arm-linux-gnueabi- make LLVM=1 LLVM_IAS=1 \
>   defconfig arch/arm64/kernel/vdso32/
> 
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
>  arch/arm64/kernel/vdso32/Makefile | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/kernel/vdso32/Makefile b/arch/arm64/kernel/vdso32/Makefile
> index 789ad420f16b..7812717f8b79 100644
> --- a/arch/arm64/kernel/vdso32/Makefile
> +++ b/arch/arm64/kernel/vdso32/Makefile
> @@ -15,7 +15,7 @@ COMPAT_GCC_TOOLCHAIN := $(realpath $(COMPAT_GCC_TOOLCHAIN_DIR)/..)
>  
>  CC_COMPAT_CLANG_FLAGS := --target=$(notdir $(CROSS_COMPILE_COMPAT:%-=%))
>  CC_COMPAT_CLANG_FLAGS += --prefix=$(COMPAT_GCC_TOOLCHAIN_DIR)$(notdir $(CROSS_COMPILE_COMPAT))
> -CC_COMPAT_CLANG_FLAGS += -no-integrated-as -Qunused-arguments
> +CC_COMPAT_CLANG_FLAGS += -Qunused-arguments

Might as well just eliminate '--prefix=' and '--gcc-toolchain=' along
with the variables COMPAT_GCC_TOOLCHAIN_DIR and COMPAT_GCC_TOOLCHAIN
while you are at it, they serve no purpose without '-no-integrated-as'.

>  ifneq ($(COMPAT_GCC_TOOLCHAIN),)
>  CC_COMPAT_CLANG_FLAGS += --gcc-toolchain=$(COMPAT_GCC_TOOLCHAIN)
>  endif
> -- 
> 2.31.1.295.g9ea45b61b8-goog
> 
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YHYlQnFRMNdn/CDp%40archlinux-ax161.
