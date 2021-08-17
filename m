Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBI7656EAMGQEBFJCMMQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3c.google.com (mail-io1-xd3c.google.com [IPv6:2607:f8b0:4864:20::d3c])
	by mail.lfdr.de (Postfix) with ESMTPS id C183C3EF1D2
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 20:25:40 +0200 (CEST)
Received: by mail-io1-xd3c.google.com with SMTP id c14-20020a6bfd0e0000b02905b2d3028604sf6235445ioi.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 11:25:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629224739; cv=pass;
        d=google.com; s=arc-20160816;
        b=aSnJ6jkDQdpHwPwiCvCx8OWm/syj3VUypIHTUOm9S3xC5/7dTPXLbnhVurtkRV8Ra1
         NFLWubaLk0SDA9/K1U2St6tMf4RSzVb0lWGweQrnHNe10zxdxWLH/d2pzeGojXa3ufyK
         wJgi6YojFLZS2q0yYPS25UPOLN6/GEmcJUrsoOj8O6h3uLLEUCr1TnwhEnSPUIbRcp2P
         W7fA3rRiTRLpnY1oRCbNOTI88X/DXwRiAeCEnNoJynNTBv2Z/w2XgsAcjeJC1CTyn4d9
         gq49Uloe0OwAWMvClKdJHC39TOjFTHpdB6rFgbYiBm6lyLfnFI8AbQuwXMLCXcO6MkFl
         rupg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=jJ2qrOeEEu3fNwubWwVB9ffH/Knd+VopUItNXfqEy+M=;
        b=n6oxrinlY9lDBJunzwH1dXchvCcKaY+Fs9YX8tVjUyjyV6Hu7xbGLehk1nRSnjDX3R
         3j1one8ChTN4dM4tiQwcmMm8eKeZO3GMbIIj6HIhbg4belYTT9HDGl4iZHV3/a8GmuvI
         OKUOV9wWzggslNiMAyIgSREPIq+inWkPtSlGu7lYeZjEQ3uP2euoTtCEJvIw35zpLTDM
         KyJ6E5k5AAxpHl0H+3gLmVTrAA9O36bWtToacu1H+3WeBnT1O5F6GrH9n7xXgvpwfe3y
         K//p59y9CFmHv7r16tY75XbdlAubQbZt1/qdlRBxQmJs/hgBH07hSU1a+qlSth/XmDHo
         56ug==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=ZToh53CS;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=jJ2qrOeEEu3fNwubWwVB9ffH/Knd+VopUItNXfqEy+M=;
        b=X6piqY846/BHK5RNzRhgWGV8AQJZVVLKtgMwR/A65LgxdzvsYP0wdo/jDCSMv352KA
         9wgnjKWwX2BRMZ+/15YcbPRnAaP7JSsUQVsKFol+jvt/dgn26ULW4TYBbZVJN9T/YdRo
         Sq8e9J5YGgSL7MUM57NHNs+Um23zV+PQiOxk02LgmecMWeYOGen4Zo4yUAr0u7Wcd8JM
         XeRQBYHWS76pa5srLVo4iWjm7oRWW8EbTxjaOPWMm1Hx5uJHpruUZSthwx8EfzKEEYPI
         sUl6Lhp9L5fuNIh5rYUlI+RQwluyaI4CV0x8ZxMZQSFy2Yy3xKrL4HZ/Lyd9KIBMncth
         LFSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=jJ2qrOeEEu3fNwubWwVB9ffH/Knd+VopUItNXfqEy+M=;
        b=dedhmc+ZCZyACCsRyJi9kwXCsPCpKx02SnwBnvIC3yRNyEwjDp+tfaoXgdBIxkC2wB
         1RK09JG5WSDIGZx6tyqHQYHm1kQ6YJnya37YyWKlh5/NVnFLFt1bTnMcboi4GFDRmq6a
         /f4iwRmQOygooCItjpSV0MALhznijIAxYQ2zlUODtBQRaTogzRmmpCUrK7O4j2G4OJWW
         GIMC6uusxGlF1yodaoOvUASWKV56Jk0dBomEfXAQh6F1ZBStfkLzmXKS+ELS7lGmmboL
         ZdLs4ZbCekGHCapxjmqBcP3OQrkSiAM6nkfVDxe2o5qdpIF0F45iRpHyjMdqht+UO4qm
         hp1Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530jIWBaLaX/yIXEaNkjsTa4WJOwGoUuBw8OXsLIxAKsoM67ipNJ
	IZHkPrtmXIY/unrXpLeCQ/4=
X-Google-Smtp-Source: ABdhPJz4u/Vygy3aDdB265QZ7LmyTzGXipJhZ7pm4beOMJpOYywBlBoWp8eXyhay5kTpSPez3o70LQ==
X-Received: by 2002:a05:6638:168f:: with SMTP id f15mr4115880jat.85.1629224739717;
        Tue, 17 Aug 2021 11:25:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:fb19:: with SMTP id h25ls472429iog.3.gmail; Tue, 17 Aug
 2021 11:25:39 -0700 (PDT)
X-Received: by 2002:a6b:8f4e:: with SMTP id r75mr3974824iod.172.1629224739376;
        Tue, 17 Aug 2021 11:25:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629224739; cv=none;
        d=google.com; s=arc-20160816;
        b=hpsHAvF+9SCxD2G3GSuRcekF57Nq0O9C8YhMpLNVTh/PCmMPX4DBJoaXMn722DrcBK
         d1I1fhO7U+T06+uctBaqo48zyuaNw15liblgr2y+asnMWyqLHMYc8gAwJrfTSEPJAyfY
         +1LWHI6GST3foB/MWX4JgOfeUlWL/VV5D3qgnYGTG3X2ebuayUuU6CtarKOxytf6mXqH
         F72waRTRObLcANv32S6cVzFxqm8RGZSA1xKE056WRf8c7BFt/+G2G7hTZy61i7r8JCWP
         0/eaykMAhWN4wEHysFVsgjvBTIWMY13CP4VTAEmEHtPkI1kQyc2vB5clI9EJsBG2WpVb
         7kgQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=DOVX/oFvrEr1yoGGSkepp1V2jv/aOK/FCzOvgtXevjs=;
        b=JyUv4YNe45H47QrWDn0uO41RxSI1m8ZendSg1MxFfTDh1t/M7zYLnyc+gXrzWt8Qh4
         V5x3g24p84z0UBMf87T5dWlefCwW7NE9hhjy6GAYgBdqi4SnLIHJ0WQKd5rVYQFVQbf1
         G4HJV604LuM5mizZ8HQygXSP49q+QWYPY6GVgoCN9Lq54C/WCZUqX997y5B6huivuZ2+
         MTAq7D2xVRhrHQ1/hzQRXVUf2iEGw0u+NJTTZYEEB/7sJoPo8PNs4h69T7EnGbe0tLiP
         coCPEkQXPt8EtVa7Q6PIGwreunpVAlVN+o+ZF+jWZ9sWu6BQcVUfgbZCzSlB3dlCCCH7
         xZ4w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=ZToh53CS;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id o21si78369iov.2.2021.08.17.11.25.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Aug 2021 11:25:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id DD4F461042;
	Tue, 17 Aug 2021 18:25:37 +0000 (UTC)
Subject: Re: [PATCH] kbuild: Enable -Wimplicit-fallthrough for clang 14.0.0+
To: Kees Cook <keescook@chromium.org>
Cc: Linus Torvalds <torvalds@linux-foundation.org>,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>,
 Masahiro Yamada <masahiroy@kernel.org>,
 Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 linux-hardening@vger.kernel.org
References: <20210817005624.1455428-1-nathan@kernel.org>
 <80fa539a-b767-76ed-dafa-4d8d1a6b063e@kernel.org>
 <CAHk-=wgFXOf9OUh3+vmWjhp1PC47RVsUkL0NszBxSWhbGzx4tw@mail.gmail.com>
 <5c856f36-69a7-e274-f72a-c3aef195adeb@kernel.org>
 <202108171056.EDCE562@keescook>
From: Nathan Chancellor <nathan@kernel.org>
Message-ID: <3f28b45e-e725-8b75-042a-d34d90c56361@kernel.org>
Date: Tue, 17 Aug 2021 11:25:36 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <202108171056.EDCE562@keescook>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=ZToh53CS;       spf=pass
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

On 8/17/2021 11:03 AM, Kees Cook wrote:
> On Mon, Aug 16, 2021 at 09:55:28PM -0700, Nathan Chancellor wrote:
>> If you/Gustavo would prefer, I can upgrade that check to
>>
>> ifneq ($(call cc-option, -Wunreachable-code-fallthrough),)
>>
>> I was just trying to save a call to the compiler, as that is more expensive
>> than a shell test call.
> 
> I prefer the option test -- this means no changes are needed on the
> kernel build side if it ever finds itself backported to earlier versions
> (and it handles the current case of "14" not meaning "absolute latest").
> 
> More specifically, I think you want this (untested):

That should work but since -Wunreachable-code-fallthrough is off by 
default, I did not really see a reason to include it in KBUILD_CFLAGS. I 
do not have a strong opinion though, your version is smaller than mine 
is so we can just go with that. I'll defer to Gustavo on it since he has 
put in all of the work cleaning up the warnings.

Cheers,
Nathan

> diff --git a/Makefile b/Makefile
> index b5fd51e68ae9..9845ea50a368 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -859,11 +859,11 @@ KBUILD_CFLAGS += -Wno-gnu
>   # source of a reference will be _MergedGlobals and not on of the whitelisted names.
>   # See modpost pattern 2
>   KBUILD_CFLAGS += -mno-global-merge
> +# Warn about unmarked fall-throughs in switch statement only if we can also
> +# disable the bogus unreachable code warnings.
> +KBUILD_CFLAGS += $(call cc-option,-Wimplicit-fallthrough -Wno-unreachable-code-fallthrough,)
>   else
> -
>   # Warn about unmarked fall-throughs in switch statement.
> -# Disabled for clang while comment to attribute conversion happens and
> -# https://github.com/ClangBuiltLinux/linux/issues/636 is discussed.
>   KBUILD_CFLAGS += $(call cc-option,-Wimplicit-fallthrough=5,)
>   endif
>   
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/3f28b45e-e725-8b75-042a-d34d90c56361%40kernel.org.
