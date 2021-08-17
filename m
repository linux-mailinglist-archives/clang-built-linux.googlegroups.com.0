Return-Path: <clang-built-linux+bncBD763O5S5UARB44A6CEAMGQEIJNL4UQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x237.google.com (mail-lj1-x237.google.com [IPv6:2a00:1450:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FF5A3EF1DA
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 20:31:16 +0200 (CEST)
Received: by mail-lj1-x237.google.com with SMTP id o5-20020a2ebd850000b02901b783135369sf46026ljq.23
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 11:31:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629225076; cv=pass;
        d=google.com; s=arc-20160816;
        b=mwwcKPHnQewgRPqOnpj5GO43T0GyIamvg+o8s/OE5p/6cBo6MZDqYkjQVo5F7VmE34
         cylMxiMCqRYyfH2cfgRfLlDp9nSG2+1NvIpYApV0bveEoPGflgXkXyBFQ4aB3BDS46JW
         yDpOHKLT2FA8oR9od/afex04MxL0cOO9m0hR6YpE1A6BnuBpL2NCBuo48zoSxYTTDRgq
         WhPvDt8S+TS4ZCbE8QZfVUq2+EnMup686gFVSGtc6BoGkeJ7fxg8bZ1W/kqmGiiRfB55
         /zbcszJ9+ePpgW2diEBQKLy1JwRA3Hd4fJwdrbs2n58MebNO289pQxgOWSJ5YADSqN7g
         ruxg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-language
         :in-reply-to:mime-version:date:message-id:from:references:cc:to
         :subject:dkim-signature;
        bh=Qlqg0f/DcnpIfSmazvAlma6cL1tgYaC3zjYTtRb2lDY=;
        b=L77/DCpfUysNWqrKz25iRsPVQJokItNUPm6q4eMQ9LL5jv9XKaK/V+kGVObnJDOKc6
         KJfWVwdrPWx14eo5zTTDosz0wnlqBjlxtyUw9sKmsJOLqaSqQr0pLZ6IF+HOewQV8P4y
         DNfIii5/QOS3zGMbB+AfdnVwQ6i9b41Tu99IA1EKJQBpk3wAlbPwQieKzJ5nFgJCzpmb
         f2lWFvCziTZo/ImxOSF+pvjD3bB58LUBQlU6FoGixfU+KatgADO20AYn4xP4I7DVHiYa
         ze6PzHPoYazdGVT69qiIOE4qyoNpHuEIUSoa9NB3hLI09w9jgP5STTXILC0qovUVIOyh
         ZiFg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mailbox.org header.s=mail20150812 header.b="c6g/bf7a";
       dkim=pass header.i=@mailbox.org header.s=mail20150812 header.b="D/mUoOPV";
       spf=pass (google.com: domain of torvic9@mailbox.org designates 2001:67c:2050::465:102 as permitted sender) smtp.mailfrom=torvic9@mailbox.org;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=mailbox.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:mime-version
         :in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=Qlqg0f/DcnpIfSmazvAlma6cL1tgYaC3zjYTtRb2lDY=;
        b=gy5nMNuMvuVLtsd+9MqPX4ODZNYOoU/Q+oWddKGq7K3CiclOJ4hbRUyvZJaazF5U6P
         NolmBxDPWK1FEwyxYbz14bxpWPH736KxNQcANOdz/ffFMlymmwtx5LfIR4/0ebR0Dc6y
         E0qM+WP99O98x3DiSzqfFjWkaveVUjCIjD9mZlCgq1x8R1Hv6rc9a8CsRA0uvVjkIF6O
         gDjM543NZZUhjz3TbGjjkRBjVYmwiHVm8aTjqYKhRKRjPKvSTX7FR+TkGBtdFgRgvsG2
         zDJn1P1JquB/gf6bk2OM27hWJ3Mxfd1Aq9NvF9JJ4bL7gLOrvxlY1AaBY5llN/fZO9jC
         FYiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Qlqg0f/DcnpIfSmazvAlma6cL1tgYaC3zjYTtRb2lDY=;
        b=s+ihOOmvkphwXPrLBgeza5aEQ3ScTV1AdinDTqz1U2EpXgYUvFK8+4wLm1dleVhTLo
         IdXs3FLgZS2QapEeLYECEKbdcdD3Zs5OQ4eq4xLsFtd1gHxZLNRuy3aNzYHddWCb04YI
         BERYdvBm2ODG030ELR0boQSXm7z1E+Nc/xJutxikSzuvmry6yBXUD93qkjyyortGfvH+
         J1+P1u2D/x1T46QKfGTpS8GgeJkAfReq5ckpo+iuS1NU6l6AuAaYH1Ic0RMgbkfm5En6
         om+5qAhBLyayx/6WnLRD6OfTc/VQHIUScnd0f+7Hh1+DeiQ6tvPFDDv6RD4eteC6YOQ5
         Pm3g==
X-Gm-Message-State: AOAM531swhkd6y1Dkb0IYoaDqlHg84ehI2Vm10JOH9KDM8zBf4Ra/BcQ
	KM+G8MJyD9DkgrtzeAJhdfI=
X-Google-Smtp-Source: ABdhPJwKV3ENKxMJ7ByMEMb7QOzA4Cz9rBK+JVO60bEo8BucQM+UHm5B2SiBFZCagGhXjjFBQmn3CQ==
X-Received: by 2002:a05:6512:1589:: with SMTP id bp9mr3358550lfb.567.1629225076086;
        Tue, 17 Aug 2021 11:31:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:597:: with SMTP id 145ls698757ljf.7.gmail; Tue, 17 Aug
 2021 11:31:15 -0700 (PDT)
X-Received: by 2002:a2e:bf07:: with SMTP id c7mr4370587ljr.386.1629225075190;
        Tue, 17 Aug 2021 11:31:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629225075; cv=none;
        d=google.com; s=arc-20160816;
        b=bzxXWz4bAJJ89mCHfz8B+DfDiaYeHPYTXzsfNq1h5sgLrtwxrNfYjXz6Vt8nDokuqw
         JHmLgn9TNd+VYSsoHGkc20BaiSpRNAul7x/eQ9o2M5aE84nnrlGY/zRURVbH5xJoc/mV
         4naYvF95F8dJJ7svN+Yvqn7KPQlKf2mmQuhdYTx1JSqbuHIpbF+2Et2cZH2EclVVRbPZ
         Jk7AG5vdvZEUPe7yQzsaeewNBwnMRUabq2SsG14mi6IBfRm8yh2YGtxL7XUHRneUp8ye
         +8b34R6jcAtEaVuiR90n96rdQ4uZI9ntzTZPJNAluO0almpyhvUNVsRY8w8PrfZ6RYUc
         KRXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :date:message-id:from:references:cc:to:subject:dkim-signature
         :dkim-signature;
        bh=eBpIX9+4h+iTtsDgTrJiVn6hmmLt8ME01UUjZ+g11QU=;
        b=eEAewbgxTviGMPtSfGMn4dOeWTyuYt54Fv5EES506rbBPwwDPLPEHIhEvRQEBy9CJX
         g9dW9u3+2mfZlg0iWE8dapdKSNChcosByVoAneiV2BQMNabLAcLLkKCiqUCtVjDmqkNe
         +gzdB3vst+y5NxoD2F3bRBVxPGIHa3zJ4fWFqBW8VirHjxr8LK6AsoNDjbGz//SmP+vy
         J3DjIMO35R12Z4GjFy+Yn+KKXNwjJ2cLpjhgVXpbSklDv5fuqC3R2uHMLLuWpDEl8Iuk
         GzW60GFioTwX6JOBv3rqZrgWmCCS5lWVPfbSNGMn5MVe9vjHiJgS6Oz0qNlqg6qHz4eM
         5wdQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mailbox.org header.s=mail20150812 header.b="c6g/bf7a";
       dkim=pass header.i=@mailbox.org header.s=mail20150812 header.b="D/mUoOPV";
       spf=pass (google.com: domain of torvic9@mailbox.org designates 2001:67c:2050::465:102 as permitted sender) smtp.mailfrom=torvic9@mailbox.org;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=mailbox.org
Received: from mout-p-102.mailbox.org (mout-p-102.mailbox.org. [2001:67c:2050::465:102])
        by gmr-mx.google.com with ESMTPS id q8si141537ljb.6.2021.08.17.11.31.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Aug 2021 11:31:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of torvic9@mailbox.org designates 2001:67c:2050::465:102 as permitted sender) client-ip=2001:67c:2050::465:102;
Received: from smtp1.mailbox.org (smtp1.mailbox.org [80.241.60.240])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mout-p-102.mailbox.org (Postfix) with ESMTPS id 4Gq03Q3PP7zQk03;
	Tue, 17 Aug 2021 20:31:14 +0200 (CEST)
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp1.mailbox.org ([80.241.60.240])
	by gerste.heinlein-support.de (gerste.heinlein-support.de [91.198.250.173]) (amavisd-new, port 10030)
	with ESMTP id P015znEdfxzk; Tue, 17 Aug 2021 20:31:08 +0200 (CEST)
Subject: Re: [PATCH 2/2] x86, Makefile: Add new generic x86-64 settings
 v2/v3/v4
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 "x86@kernel.org" <x86@kernel.org>,
 "clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>,
 "graysky@archlinux.us" <graysky@archlinux.us>,
 Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
 Borislav Petkov <bp@alien8.de>, "H. Peter Anvin" <hpa@zytor.com>,
 Masahiro Yamada <masahiroy@kernel.org>
References: <269701460.117528.1629210189833@office.mailbox.org>
 <796036867.117557.1629210288168@office.mailbox.org>
 <CAKwvOdkYgC4pU0Ta+vS-UkyAYFTkg8MaLuR+OAsSX63_BY+1vA@mail.gmail.com>
 <CAKwvOdk+fwHQDe23Ttva46tyB9yGGxB73zXzNPkcMCggSRWUdQ@mail.gmail.com>
From: "'Tor Vic' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Message-ID: <ec0f00b1-04c7-9972-d28b-122964a127dd@mailbox.org>
Date: Tue, 17 Aug 2021 18:31:06 +0000
MIME-Version: 1.0
In-Reply-To: <CAKwvOdk+fwHQDe23Ttva46tyB9yGGxB73zXzNPkcMCggSRWUdQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Rspamd-Queue-Id: 2341618C1
X-Rspamd-UID: ca6434
X-Original-Sender: torvic9@mailbox.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mailbox.org header.s=mail20150812 header.b="c6g/bf7a";
       dkim=pass header.i=@mailbox.org header.s=mail20150812
 header.b="D/mUoOPV";       spf=pass (google.com: domain of
 torvic9@mailbox.org designates 2001:67c:2050::465:102 as permitted sender)
 smtp.mailfrom=torvic9@mailbox.org;       dmarc=pass (p=REJECT sp=REJECT
 dis=NONE) header.from=mailbox.org
X-Original-From: Tor Vic <torvic9@mailbox.org>
Reply-To: Tor Vic <torvic9@mailbox.org>
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



On 17.08.21 18:22, Nick Desaulniers wrote:
> On Tue, Aug 17, 2021 at 11:17 AM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
>>
>> On Tue, Aug 17, 2021 at 7:24 AM torvic9 via Clang Built Linux
>> <clang-built-linux@googlegroups.com> wrote:
>>>
>>> Add new generic x86-64 CPU tunings introduced with recent versions of
>>> gcc and clang, as documented in x86-64-psABI [1].
>>>
>>> This is taken straight from graysky's CPU optimization patch with minor
>>> modifications [2].
>>>
>>> [1] https://gitlab.com/x86-psABIs/x86-64-ABI/-/commit/77566eb03bc6a326811cb7e9a6b9396884b67c7c
>>> [2] https://github.com/graysky2/kernel_compiler_patch
>>>
>>> Signed-off-by: Tor Vic <torvic9@mailbox.org>
>>> ---
>>>  arch/x86/Kconfig.cpu  | 26 +++++++++++++++++++++++++-
>>>  arch/x86/Makefile.cpu |  6 ++++++
>>>  2 files changed, 31 insertions(+), 1 deletion(-)
>>>
>>> diff --git a/arch/x86/Kconfig.cpu b/arch/x86/Kconfig.cpu
>>> index 814fe0d349b0..a2c872aa5a0b 100644
>>> --- a/arch/x86/Kconfig.cpu
>>> +++ b/arch/x86/Kconfig.cpu
>>> @@ -294,6 +294,30 @@ config GENERIC_CPU
>>>           Generic x86-64 CPU.
>>>           Run equally well on all x86-64 CPUs.
>>>
>>> +config GENERIC_CPU_V2
>>> +       bool "Generic-x86-64-v2"
>>> +       depends on ( CC_IS_GCC && GCC_VERSION > 110000 ) || ( CC_IS_CLANG && CLANG_VERSION >= 120000 )
>>
>> Can we stick with either > or >=, but at least be consistent? Also,
>> there's unnecessary whitespace inside the parens that could be
>> removed.
> 
> Ah, cc-option can be used from Kconfig. Perhaps a cc-option call to
> -march=x86-64-vX with a comment about which compiler versions first
> supported these (so that we can remove the feature test when the
> minimum supported toolchains are advanced) would be better?
> 

That makes sense. Will do a v2.
Which of these possibilities is more "expensive"?
I remember a recent patch where some of these calls were removed.

>>
>>> +       depends on X86_64
>>> +       help
>>> +         Generic x86-64 CPU.
>>> +         Run equally well on all x86-64 CPUs with min support of x86-64-v2.
>>> +
>>> +config GENERIC_CPU_V3
>>> +       bool "Generic-x86-64-v3"
>>> +       depends on ( CC_IS_GCC && GCC_VERSION > 110000 ) || ( CC_IS_CLANG && CLANG_VERSION >= 120000 )
>>> +       depends on X86_64
>>> +       help
>>> +         Generic x86-64-v3 CPU with v3 instructions.
>>> +         Run equally well on all x86-64 CPUs with min support of x86-64-v3.
>>> +
>>> +config GENERIC_CPU_V4
>>> +       bool "Generic-x86-64-v4"
>>> +       depends on ( CC_IS_GCC && GCC_VERSION > 110000 ) || ( CC_IS_CLANG && CLANG_VERSION >= 120000 )
>>> +       depends on X86_64
>>> +       help
>>> +         Generic x86-64 CPU with v4 instructions.
>>> +         Run equally well on all x86-64 CPUs with min support of x86-64-v4.
>>> +
>>>  endchoice
>>>
>>>  config X86_GENERIC
>>> @@ -318,7 +342,7 @@ config X86_INTERNODE_CACHE_SHIFT
>>>  config X86_L1_CACHE_SHIFT
>>>         int
>>>         default "7" if MPENTIUM4 || MPSC
>>> -       default "6" if MK7 || MK8 || MPENTIUMM || MCORE2 || MATOM || MVIAC7 || X86_GENERIC || GENERIC_CPU
>>> +       default "6" if MK7 || MK8 || MPENTIUMM || MCORE2 || MATOM || MVIAC7 || X86_GENERIC || GENERIC_CPU || GENERIC_CPU_V2 || GENERIC_CPU_V3 || GENERIC_CPU_V4
>>>         default "4" if MELAN || M486SX || M486 || MGEODEGX1
>>>         default "5" if MWINCHIP3D || MWINCHIPC6 || MCRUSOE || MEFFICEON || MCYRIXIII || MK6 || MPENTIUMIII || MPENTIUMII || M686 || M586MMX || M586TSC || M586 || MVIAC3_2 || MGEODE_LX
>>>
>>> diff --git a/arch/x86/Makefile.cpu b/arch/x86/Makefile.cpu
>>> index fb407ae94d90..f190feefe964 100644
>>> --- a/arch/x86/Makefile.cpu
>>> +++ b/arch/x86/Makefile.cpu
>>> @@ -10,3 +10,9 @@ cflags-$(CONFIG_MCORE2) += \
>>>  cflags-$(CONFIG_MATOM) += $(call cc-option,-march=atom) \
>>>         $(call cc-option,-mtune=atom,$(call cc-option,-mtune=generic))
>>>  cflags-$(CONFIG_GENERIC_CPU) += $(call cc-option,-mtune=generic)
>>> +
>>> +# New generic x86-64 CPU options.
>>> +# Don't call the compiler, we have Kconfig compiler checks for these.
>>
>> You'd be surprised how quickly using time-relative words like "New"
>> bitrot. My copy of "Modern C++" already doesn't feel very "modern" for
>> example.  I'd just drop the comment block here; we don't need a
>> comment every time we skip cc-option checks.  Thanks for the patches!
>>
>>> +cflags-$(CONFIG_GENERIC_CPU_V2) += -march=x86-64-v2
>>> +cflags-$(CONFIG_GENERIC_CPU_V3) += -march=x86-64-v3
>>> +cflags-$(CONFIG_GENERIC_CPU_V4) += -march=x86-64-v4
>>> --
>> --
>> Thanks,
>> ~Nick Desaulniers
> 
> 
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/ec0f00b1-04c7-9972-d28b-122964a127dd%40mailbox.org.
