Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBLPXS6DQMGQEQ5JER3Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53b.google.com (mail-pg1-x53b.google.com [IPv6:2607:f8b0:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id 706F33BF00B
	for <lists+clang-built-linux@lfdr.de>; Wed,  7 Jul 2021 21:08:31 +0200 (CEST)
Received: by mail-pg1-x53b.google.com with SMTP id m2-20020a6562c20000b029022885db5d8fsf2460685pgv.12
        for <lists+clang-built-linux@lfdr.de>; Wed, 07 Jul 2021 12:08:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625684910; cv=pass;
        d=google.com; s=arc-20160816;
        b=fIPnjkbPLoWJCrcbTtmI6R6fzru9CC9Da6CQSeiRZaK/TvH4JWvBdmHz+TjYhKkGX+
         kj85sE9EvIUOB20+hqToB0l2pFWtgl2YZcQW5zd5i4OGDgc8U9KnhVgC/NLgyA76tmgD
         ihqDHj4ea5pF2gmjQO8vsgeH9EZ5ab4l4Rp2vEb48r2dWa4r1adU4B7HfvrnQiN6GLK0
         uDQBBUTXEYHhQvvJPVlqXGEAGx9l7Dlm75pU9czfUU7rjbrQMNKhBQRtdBrnLaLsrXEQ
         URLXiIUJpC4Q0a2fS0smRW3InxxjXiJfGAupDXzNz3gCah/Pj13OdVVbBgCoIcI5qp5+
         qK4w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=t7HtLzCZDKj/46fe3SWf3fedMl0+LPfdTao1NQh/8t4=;
        b=FhoowDZHZhloWvzE6Rcaz6jPcqoKi7DX2Rb2X38r23czfDGlzao6DU/ReCRQcnkEFM
         wfgSKQmI1529FGRrq7aNunzDK1IVKAGiHrhWKaEIZZiOTQZ2BgcudUgtTCDqSO/8AQNI
         ROA9D6FouELeRFM0Zl+/7aSQfA25UTP4DZn5zkyaJZ4puP8wta2pT6mtdklONNeFeC9N
         le3dUyjDlgsSH/hdYlZKRnp3hNXtul4dIW4RFo49zcKhMbj2rPuPrrv6lqX1Fu6V+fv3
         S3SElL/4e1SkwQjASgOTvpt9yckRCRqFmMHL/Rdv1+kIU0yWSdbOajEbnc0CJASlslUU
         Amdw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=jn0dMWnm;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=t7HtLzCZDKj/46fe3SWf3fedMl0+LPfdTao1NQh/8t4=;
        b=N2DptAe2wzbhqeO7qUm8LsxSwlwcDcQ005Sq9uXEaiUXplAYKZ5zOlqeDp4AMdjjTi
         xZIhjYYe1jDJwngXqQLzWKkm83mws+5OrQvb7iajT4AjzvOIFGfXa7vNLgiN7O7cEwhR
         wzp5ORcK7XhjpWC8LuZvuti1gbAuvM288G7NTVzTIMK4BnSBe8FU6P5cW8zi1f9kKnYx
         8rfkqkDTXe9dM9YN+RMjTJScyWE7rjShEsAkkyS4taAa31bmJjpbvaIGyeESU+cNAvM9
         IQJl++JqpOh4DmN6uZW1ylRRGPczhPctqr77FJZeDKyS25ouHW4SV99Ow6Hm+dwDeg6i
         H66g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=t7HtLzCZDKj/46fe3SWf3fedMl0+LPfdTao1NQh/8t4=;
        b=gfz0oD4J04+dGPObKIgfuMZDR984jOzQ9P3tY23w+o5p7bE1IXP1aBnU9DojrnBPyS
         chpVmhiodDUHILhfGknW0HOW2w2B/IAcjnWc0Y4WQoV5HwMctu4PB1OxLnDoCMgA1DRr
         6K0CSGa0DlKt0UkcC0rCMs+KSclEsbNog4n4EGdajOI4yyM+Vr41JGyMcrRDgjzwWc/V
         iZpUW0bYn6Vk6LxTG4YGIvY4n1k6riipTQ36XJMSua8hDL7nuVlCn7qJsuj3TUwgsLkE
         CJrA9YY5VXj1IwYbWcXJUgnE2YTrf0316FUa/su/N7Dp3l0W74m21v3cx1RvpzCDmB+S
         /QqQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531mVemcmJ20H5uttWibwpSeFuOltqyZRF658BD+rEkHfyEukqAO
	B+0tBPp9nfd5CvxZSktORRg=
X-Google-Smtp-Source: ABdhPJzTnALk4L9ufSv+egwb+kDJiKUpNs61rOWZ+MBN7EJkj0PwtJ69kHulnVRMEmL3sCiec+M5KA==
X-Received: by 2002:a62:e90f:0:b029:307:8154:9ff7 with SMTP id j15-20020a62e90f0000b029030781549ff7mr26971117pfh.79.1625684910081;
        Wed, 07 Jul 2021 12:08:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:1bd1:: with SMTP id b200ls1148415pfb.2.gmail; Wed, 07
 Jul 2021 12:08:29 -0700 (PDT)
X-Received: by 2002:a62:e111:0:b029:31b:8150:38b4 with SMTP id q17-20020a62e1110000b029031b815038b4mr22016080pfh.48.1625684909559;
        Wed, 07 Jul 2021 12:08:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625684909; cv=none;
        d=google.com; s=arc-20160816;
        b=nucH6x+7ALp9mDlyl41TZkdWY5FDOGAolwdKiAafRg3Ufm4YsxlC9fPVdeOxTLclFZ
         zzafT2z4SN4V7rmwjwop0sxTlA1gyxl+1l6P3EsSh29FR2XbyNSYaQj5c+IMvKM0di8C
         7/t0KebcONpUSruysMlg6gPvF98oXqz0oDR9A3a28cCTEsIZjFrbo+YSASL7oUj/aM+J
         485KRccUXrCFJbtTfnPDeJQEgupmSZwdX0QSut9cv04CMDVAFvBmWqstMxzVYvM5H/7T
         y6tNzy2snfeS5ixG0KlMV6+aJ9sdQHTlLXOJN7FoC7mZ7DTqE5D0K0lZfH7EBpaMIyzF
         Uztw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=X51qaLogMykVReLUGUYEUByeFJgPhSxmfSUwOmTWLnE=;
        b=HwojHCeGmFfHU3hMKQsHRxMQZ5XrxhmeKTEplIXBawYrM3D1w88cNDBZ+urvZJHykk
         F15aS3Ed8nm6iuyI9gMNKjDSTfMlEyvV59T6EtxleanURytQjOGpEnpJHzaaA8gSO+oe
         JmDYPwB7jHnXEECprxA6HpQCZRtJ/X1zH2H/dMELjLDIfWjCsQhQI7QdKHcPpG2b5XOv
         Kzb+pIAbjPVuNbhH3GpFI4riFEGtXFRlzjBs/J+10yxaMyZKF7ZGaR3z8TFaVwSNC394
         XL3V+ZBFak5x4tBXRebq4byMKzekljSbSkuxiBmjEcXg2PhKW0et4lGcAN6tzk3EYwYl
         HDHQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=jn0dMWnm;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q7si2531711pgf.3.2021.07.07.12.08.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Jul 2021 12:08:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 1FF3D61CC2;
	Wed,  7 Jul 2021 19:08:28 +0000 (UTC)
Subject: Re: [PATCH] arm64: drop CROSS_COMPILE for LLVM=1 LLVM_IAS=1
To: Nick Desaulniers <ndesaulniers@google.com>,
 Masahiro Yamada <masahiroy@kernel.org>, Miguel Ojeda <ojeda@kernel.org>
Cc: Arnd Bergmann <arnd@kernel.org>, Catalin Marinas
 <catalin.marinas@arm.com>, Will Deacon <will@kernel.org>,
 Fangrui Song <maskray@google.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>
References: <20210701235505.1792711-1-ndesaulniers@google.com>
 <CAK8P3a1EfBNxaMbsp+s2BiYHGKPK4NeRR+ugM82jfY43Pq7-Uw@mail.gmail.com>
 <CAKwvOdkgEeQktLgEN7CAh7bTjTN+TQNE27aETgvbXep9=xb1DQ@mail.gmail.com>
 <YOEFGcTJC6AWFgs1@Ryzen-9-3900X.localdomain>
 <CAKwvOdnNWKDGOEqCg5g0GX=zPJce9gBoCLcYs8nayLA7ud2XPQ@mail.gmail.com>
From: Nathan Chancellor <nathan@kernel.org>
Message-ID: <546f3d11-8580-7f23-875d-ef856913cb6d@kernel.org>
Date: Wed, 7 Jul 2021 12:08:24 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <CAKwvOdnNWKDGOEqCg5g0GX=zPJce9gBoCLcYs8nayLA7ud2XPQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=jn0dMWnm;       spf=pass
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

On 7/7/2021 12:04 PM, Nick Desaulniers wrote:
> On Sat, Jul 3, 2021 at 5:47 PM Nathan Chancellor <nathan@kernel.org> wrote:
>>
>> On Fri, Jul 02, 2021 at 11:29:31AM -0700, Nick Desaulniers wrote:
>>> On Fri, Jul 2, 2021 at 4:59 AM Arnd Bergmann <arnd@kernel.org> wrote:
>>>>
>>>> On Fri, Jul 2, 2021 at 1:55 AM 'Nick Desaulniers' via Clang Built
>>>> Linux <clang-built-linux@googlegroups.com> wrote:
>>>>>
>>>>> +ifneq ($(LLVM),)
>>>>> +ifneq ($(LLVM_IAS),)
>>>>> +ifeq ($(CROSS_COMPILE),)
>>>>> +CLANG_TARGET   :=--target=aarch64-linux
>>>>> +CLANG_FLAGS    += $(CLANG_TARGET)
>>>>> +KBUILD_CFLAGS  += $(CLANG_TARGET)
>>>>> +KBUILD_AFLAGS  += $(CLANG_TARGET)
>>>>> +endif
>>>>> +endif
>>>>> +endif
>>>>
>>>> I think only the "CLANG_TARGET   :=--target=aarch64-linux" line should
>>>> go into the
>>>> per-architecture Makefile. It doesn't hurt to just set that
>>>> unconditionally here,
>>>> and then change the CLANG_FLAGS logic in the top-level Makefile to use this
>>>> in place of $(notdir $(CROSS_COMPILE:%-=%)).
>>>
>>> I don't think we can do that. Based on the order the arch/ specific
>>> Makefiles are included, if we don't eagerly add --target to the
>>> KBUILD_{C|A}FLAGS, then cc-option, as-option, and as-instr macros
>>> (defined in scripts/Makefile.compiler) checks in per arch/ Makefiles
>>> may fail erroneously because --target was not set for
>>> KBUILD_{C|A}FLAGS yet.
>>>
>>> Another issue is the order of operations between the top level
>>> Makefile and the per arch/ Makefiles.  The `notdir` block you
>>> reference occurs earlier than the per-arch includes:
>>>
>>>   609 TENTATIVE_CLANG_FLAGS += --target=$(notdir $(CROSS_COMPILE:%-=%))
>>> ...
>>>   648 include $(srctree)/arch/$(SRCARCH)/Makefile
>>>
>>> We would need the opposite order to do what you describe. Reordering
>>> these would effectively be a revert of
>>> commit ae6b289a3789 ("kbuild: Set KBUILD_CFLAGS before incl. arch Makefile")
>>> which I'm not sure we want to do.  But maybe there's another way I'm
>>> not seeing yet?
>>
>> Is there any reason we cannot just add this sort of logic to the main
>> Makefile?
>>
>> Such as (indentation to emphasis diff):
>>
>> ifeq ($(CROSS_COMPILE),)
>> ifneq ($(LLVM),)
>> ifeq ($(LLVM_IAS),1)
>>          ifeq ($(ARCH),arm64)
>>                  TENTATIVE_CLANG_FLAGS   += --target=aarch64-linux
>>          else ifeq ($(ARCH),s390)
>>                  TENTATIVE_CLANG_FLAGS   += --target=s390x-linux
>>          else ifeq ($(ARCH),x86_64)
>>                  TENTATIVE_CLANG_FLAGS   += --target=x86_64-linux
>>          else
>>                  $(error Specify CROSS_COMPILE or add '--target=' option to Makefile)
>>          endif
>> endif
>> endif
>> else
>> TENTATIVE_CLANG_FLAGS   += --target=$(notdir $(CROSS_COMPILE:%-=%))
>> ifeq ($(LLVM_IAS),1)
>> TENTATIVE_CLANG_FLAGS   += -integrated-as
>> else
>> TENTATIVE_CLANG_FLAGS   += -no-integrated-as
>> GCC_TOOLCHAIN_DIR := $(dir $(shell which $(CROSS_COMPILE)elfedit))
>> TENTATIVE_CLANG_FLAGS   += --prefix=$(GCC_TOOLCHAIN_DIR)$(notdir $(CROSS_COMPILE))
>> endif
>> endif
>>
>> I know this looks a little cumbersome but it does help us avoid
>> duplication across architecture Makefiles and ordering dependencies.
> 
> Yeah, ok.
> 
> I like the use of `include` to compartmentalize the top level Makefile
> further.  We can move this whole block of LLVM related flag handling
> into something under scripts, then add this block and it doesn't look
> too bad IMO.  Masahiro, are you ok with that?  If so, I'd break this
> into 2 patches:
> 1. moving this block of existing code into a new file.
> 2. adding the CROSS_COMPILE functionality.
> 
> See https://groups.google.com/g/clang-built-linux/c/s-voh6WQFxM for
> the gist of what I was thinking (though not broken into 2 patches yet,
> just testing that it works; it does).

Yeah, I think that looks okay. Not sure how I feel about the name since 
it is handling more than just the target triple but that is a bikeshed 
for another time :)

> This approach will collide with Miguel's series in -next.  Should I
> base the patches on mainline, or linux-kbuild, then have Miguel rebase
> his patches on that or what?

Yes, the patches should be based on mainline or linux-kbuild then Miguel 
will have to solve the conflicts and let Stephen Rothwell know about 
them so that -next keeps working.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/546f3d11-8580-7f23-875d-ef856913cb6d%40kernel.org.
