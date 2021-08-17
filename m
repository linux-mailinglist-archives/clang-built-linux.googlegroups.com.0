Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBWFR5SEAMGQE3M5A5FA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103a.google.com (mail-pj1-x103a.google.com [IPv6:2607:f8b0:4864:20::103a])
	by mail.lfdr.de (Postfix) with ESMTPS id AFB273EE41F
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 04:03:05 +0200 (CEST)
Received: by mail-pj1-x103a.google.com with SMTP id k23-20020a17090a591700b001796382f0d7sf1015051pji.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Aug 2021 19:03:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629165784; cv=pass;
        d=google.com; s=arc-20160816;
        b=BJrP2hjZjXwQ1rNZfKSaLSSTlBdgqLreyTGAU4eD2KLQgOFR34B5Vsun5LW3DC40hQ
         CUMRAlEJ/xpKx6e2PRbyTCSCeSc349RohWzE5+HMUSZxVs+/h6EG3nzDQrZ3xmEJJGzN
         0ANWAWhUvYo7Px5QYaWkGnrls94K5WkKd7FSXpSm3q2w6kaSvUU7e0WtG9pM0R7pxi+J
         8oHvEBD5S2UYm7pgqZCWcpr0uhddEMDSHQoCc37foo9QgWhdxTm2ZU4oOCFZnJzx1aSA
         HYMveYKxvze0PFlt1nshIecAd97zTcrJf9Nsxgq38zwgs13Pn8QYU23EUsnL4efna77W
         dyQQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=LUajNZIS4eA+mMfzALgHXzpG6sXPyQvGcHX/XasvSdk=;
        b=cfF2s9/iBzVjrhE+KKIRfVN59Um/OWyIMksk88BBu16RwOAnMPzidHZpuH2buWLhWX
         1hbQbyzh40EtXoh8UUAp7/buUl8XBByljUmBxz95U3cRNe2MXIHN8SHeiGKLNNiSXttx
         Ik+l4gakibQpo2DFZrSvfVRIjYwMcDfbgfksM9h/6McLWwnPxcqetcQswKP3WWJHR4W0
         Z76FRK0GSf54WfJmG+FnhOo7trjxVEwMc4FS6Ach+/iKBH2epNN7J+kTzowQ9KLECQ4Y
         DPJ4dZHrDtdco8GXaPhZ0HR3G/CgmbfM0R+JtGPaFbAmpu0ksmrYh/AsJb0eltxuuyt2
         K4bg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=beFEPt13;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=LUajNZIS4eA+mMfzALgHXzpG6sXPyQvGcHX/XasvSdk=;
        b=Pq4Uc7hfa4WlJpk65J+sYxflAP5jJBAhFeMOUr5y5p1w3zbDBA+6epIMZG7YzGiGN2
         P9j5KQ9RpCo5/fo4WqU68p9Lg8Mzg1CbbAUeCyTEvVh1zDdxuFnzddpNNE+ts7NxWmjw
         6wl4ydoCXDC29C6/IzNYuPnEgWj/Aaf7dfDu+0sMBkGtRoUeRY9XcAvGs+oS28nUZxZA
         FzgiIhQzJSxs02Oxi93Ntxwe6apfTwanbF7MYs2cBudpAXWxYnO87EJLEsZcH8774RAp
         2V2PGj6XQ5L2mJOiSnzttAObOoEifCUQRHOSqv/2UeESCJ830gLnAza9OmN8HmOgBIcw
         +x3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=LUajNZIS4eA+mMfzALgHXzpG6sXPyQvGcHX/XasvSdk=;
        b=HikuKczrZkMWvrGzVvDLj6Xn5HiBSw5+nfYe9onxVTvrWGel7TJwyYATyZht4txYGw
         qaKwqnxAp4jetFaBTFvpKu6AqvZqoqJI3psHvYTxmVjTDFUdxiFa+qK+p9sTUnR8ZEqX
         QGA8UESAsok13h2Ah/socKmiZU6jVfXBVDEjrgz5EwCMa2trnnCDe8XFM5PLB2Lb0Rzm
         lGoMwGMDtO7BDCMvCVwDvRaGsXu5BMNT1wH+dDm1o9FkB3l/UMmxZiGp3itAQlfaxIZg
         5QN3zpric6AvCZA9iJDdfNGm2iOUdRoDICKHlCIZuA2h/XOQes8ncs9wZjLKDy2lfbUg
         wBjg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53152Q0xzfj5fkBswuwt1twB68CxLto4KrZC2L6+L7+ziuW8eeLB
	9I0ra0cXJtfc7P3XNDGwsuQ=
X-Google-Smtp-Source: ABdhPJzlrKT4WJKlHQI++OSv4RYHyQ0xTTm+gjh2neGk6yuyq5jzjED3YQDM9oGyw9MTFkTynnlDmA==
X-Received: by 2002:a05:6a00:1903:b029:3b6:7918:7ddf with SMTP id y3-20020a056a001903b02903b679187ddfmr1118063pfi.53.1629165784320;
        Mon, 16 Aug 2021 19:03:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:aa8d:: with SMTP id d13ls348265plr.4.gmail; Mon, 16
 Aug 2021 19:03:03 -0700 (PDT)
X-Received: by 2002:a17:90b:154:: with SMTP id em20mr966715pjb.92.1629165783625;
        Mon, 16 Aug 2021 19:03:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629165783; cv=none;
        d=google.com; s=arc-20160816;
        b=jtv/aI0DjjmfO6lOK2rW4muNNmU8bJCdnerQAKrvXaKUjI2SIceV4t07xRvHNTwiGF
         4cqB8QATP2w2dAx0EzGb7zqBpSbTli+kbgffs6dRR07goHwpW1/9+6W+pN1EmdmUrgeL
         KwwEvUp1JLhl+njz2+Ud9vGnFz3aDp4M2k1cNblzRgdlUOq7O7LiV9oF+Z1kqJRYMIYU
         8zquqIv9os9bNROS0vvf3/88wHEpB1izupjKulfmmM9EHs+EP31A3UjE4a/DH1Yv3agw
         hl3VQ/nArHzUjWS/4+p6hwkNN+/2te2UTp5bnqTxh5rT+gMHy++nwwkcJgv4Hielolri
         FPAQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=rpLbYqPgwKZ3RleQyTQq13Cdjt8YgLFAPtjNAgq+YY4=;
        b=b8zDOmbf575izAcwk05IO2xgMjH/dUZTax84g+cvjEmYaM1TKAuQE+ckYeKv1o/++V
         RwkFBexF0x2q061j8eWWLHNw5pSGfjXJ6hMhJGlTeZ6luE418bb9l+ykoloG66BEtynQ
         OeiEcn7VyOrLj00V6aJWLYnlsPEcdl7DhAhzDQFpaJ1dn01GWxMiDpiFylF1wkjP6TPD
         IW/+btIdJBaMQJFaItIQ2tDhUvogJ0abnrhcLnBPALKU/k3T2tScIBxO4OX+52jaM07C
         u5Y74J+bYetIw9OjNVaoFCx5EJwH/2QdRXakEC0iKZ4HeOvaUaZg04DX5vA0whxEn4Nf
         15NA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=beFEPt13;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id p1si36964plo.3.2021.08.16.19.03.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Aug 2021 19:03:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id ACF6060F4B;
	Tue, 17 Aug 2021 02:03:02 +0000 (UTC)
Subject: Re: [PATCH 2/7] s390: replace cc-option-yn uses with cc-option
To: Nick Desaulniers <ndesaulniers@google.com>,
 Masahiro Yamada <masahiroy@kernel.org>
Cc: linux-kbuild@vger.kernel.org, clang-built-linux@googlegroups.com,
 Heiko Carstens <hca@linux.ibm.com>, Vasily Gorbik <gor@linux.ibm.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>, linux-s390@vger.kernel.org
References: <20210817002109.2736222-1-ndesaulniers@google.com>
 <20210817002109.2736222-3-ndesaulniers@google.com>
From: Nathan Chancellor <nathan@kernel.org>
Message-ID: <5cb6d40b-1c45-415e-47fb-a844265e7f34@kernel.org>
Date: Mon, 16 Aug 2021 19:03:01 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210817002109.2736222-3-ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=beFEPt13;       spf=pass
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



On 8/16/2021 5:21 PM, 'Nick Desaulniers' via Clang Built Linux wrote:
> cc-option-yn can be replaced with cc-option. ie.
> Checking for support:
> ifeq ($(call cc-option-yn,$(FLAG)),y)
> becomes:
> ifneq ($(call cc-option,$(FLAG)),)
> 
> Checking for lack of support:
> ifeq ($(call cc-option-yn,$(FLAG)),n)
> becomes:
> ifeq ($(call cc-option,$(FLAG)),)
> 
> This allows us to pursue removing cc-option-yn.
> 
> Cc: Heiko Carstens <hca@linux.ibm.com>
> Cc: Vasily Gorbik <gor@linux.ibm.com>
> Cc: Christian Borntraeger <borntraeger@de.ibm.com>
> Cc: linux-s390@vger.kernel.org
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>

Reviewed-by: Nathan Chancellor <nathan@kernel.org>

> ---
>   arch/s390/Makefile | 14 +++++++-------
>   1 file changed, 7 insertions(+), 7 deletions(-)
> 
> diff --git a/arch/s390/Makefile b/arch/s390/Makefile
> index 17dc4f1ac4fa..a3cf33ad009f 100644
> --- a/arch/s390/Makefile
> +++ b/arch/s390/Makefile
> @@ -70,7 +70,7 @@ cflags-y += -Wa,-I$(srctree)/arch/$(ARCH)/include
>   #
>   cflags-$(CONFIG_FRAME_POINTER) += -fno-optimize-sibling-calls
>   
> -ifeq ($(call cc-option-yn,-mpacked-stack -mbackchain -msoft-float),y)
> +ifneq ($(call cc-option,-mpacked-stack -mbackchain -msoft-float),)
>   cflags-$(CONFIG_PACK_STACK)  += -mpacked-stack -D__PACK_STACK
>   aflags-$(CONFIG_PACK_STACK)  += -D__PACK_STACK
>   endif
> @@ -78,22 +78,22 @@ endif
>   KBUILD_AFLAGS_DECOMPRESSOR += $(aflags-y)
>   KBUILD_CFLAGS_DECOMPRESSOR += $(cflags-y)
>   
> -ifeq ($(call cc-option-yn,-mstack-size=8192 -mstack-guard=128),y)
> +ifneq ($(call cc-option,-mstack-size=8192 -mstack-guard=128),)
>   cflags-$(CONFIG_CHECK_STACK) += -mstack-size=$(STACK_SIZE)
> -ifneq ($(call cc-option-yn,-mstack-size=8192),y)
> +ifeq ($(call cc-option,-mstack-size=8192),)
>   cflags-$(CONFIG_CHECK_STACK) += -mstack-guard=$(CONFIG_STACK_GUARD)
>   endif
>   endif
>   
>   ifdef CONFIG_WARN_DYNAMIC_STACK
> -  ifeq ($(call cc-option-yn,-mwarn-dynamicstack),y)
> +  ifneq ($(call cc-option,-mwarn-dynamicstack),)
>       KBUILD_CFLAGS += -mwarn-dynamicstack
>       KBUILD_CFLAGS_DECOMPRESSOR += -mwarn-dynamicstack
>     endif
>   endif
>   
>   ifdef CONFIG_EXPOLINE
> -  ifeq ($(call cc-option-yn,$(CC_FLAGS_MARCH) -mindirect-branch=thunk),y)
> +  ifneq ($(call cc-option,$(CC_FLAGS_MARCH) -mindirect-branch=thunk),)
>       CC_FLAGS_EXPOLINE := -mindirect-branch=thunk
>       CC_FLAGS_EXPOLINE += -mfunction-return=thunk
>       CC_FLAGS_EXPOLINE += -mindirect-branch-table
> @@ -104,10 +104,10 @@ ifdef CONFIG_EXPOLINE
>   endif
>   
>   ifdef CONFIG_FUNCTION_TRACER
> -  ifeq ($(call cc-option-yn,-mfentry -mnop-mcount),n)
> +  ifeq ($(call cc-option,-mfentry -mnop-mcount),)
>       # make use of hotpatch feature if the compiler supports it
>       cc_hotpatch	:= -mhotpatch=0,3
> -    ifeq ($(call cc-option-yn,$(cc_hotpatch)),y)
> +    ifneq ($(call cc-option,$(cc_hotpatch)),)
>         CC_FLAGS_FTRACE := $(cc_hotpatch)
>         KBUILD_AFLAGS	+= -DCC_USING_HOTPATCH
>         KBUILD_CFLAGS	+= -DCC_USING_HOTPATCH
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/5cb6d40b-1c45-415e-47fb-a844265e7f34%40kernel.org.
