Return-Path: <clang-built-linux+bncBD5JHS4X5YBBBVHC66CAMGQEJF2BNQI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x439.google.com (mail-pf1-x439.google.com [IPv6:2607:f8b0:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id 869B8380291
	for <lists+clang-built-linux@lfdr.de>; Fri, 14 May 2021 05:41:10 +0200 (CEST)
Received: by mail-pf1-x439.google.com with SMTP id s5-20020aa78d450000b02902ace63a7e93sf13574564pfe.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 13 May 2021 20:41:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620963669; cv=pass;
        d=google.com; s=arc-20160816;
        b=0y84Y/j++Xei9SdVOjrYmctR5cewtyadxZUiKmF/pKYW7hRdMQ9uDrbsrMmkxmLEKP
         sHMBX4FdbONsoAsE3xcaAglXz0zLv6ziMeQWCdqq+WFeNbuYlhn2w7L6IHu0MwXMftfs
         LPYs0kEWV9+eoEezC2WZUi/rzuyGSz3kn4AxeIec1QesJNj7lDaMeP+pE9wwHd6eWWZp
         281BOcNsbgcqLo+fKN0gJcrWgNNvmSZ1FUm1AQ4WsjAv+n0IPqUHNpKe1URAYV0FCyQd
         dVPMkKh+Oq7l2xEnqAZmeGGPtPgq8Q2u1nK4ipq9tqskHWShVTRhuioY1eVA9oylMzS5
         8OFw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :sender:dkim-signature;
        bh=iWzg7K7ORAmY+4vXijROLLfU0VTl8wwYftTQR9vhJ4c=;
        b=HcKV6Z3DpFXiSMiGsRM7ad0U6TkINUw22qHfm9uKHTSlZuj5tRXGb6J3sbQ3udbRKd
         Np9wcskFfnIkdnisrjjnUjuYfdoIJyupoUrw8lDZ0IGj03kqvSq3x2OvbjWTUYoGeWlI
         LygqqB157H8UJQn4TfQuHqi/OUdBAJvD1xe2arO0f9sDBqcfGdl0kBB2kMOVgPPo2K1/
         ZVVhd3G/BOdjsDqCUOIImXP77A+01wI+5pnqrKjsyaAumJcRQrj7zWi302k6a2wlCY8Y
         gXhUZYyDcUNgwEdVEfKhQLkbgsmCon+71YQN9UnHHracFbkWbBJwW3kh5qoJ7afNXbCc
         Cl1w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ozlabs-ru.20150623.gappssmtp.com header.s=20150623 header.b=XRV57b2A;
       spf=pass (google.com: domain of aik@ozlabs.ru designates 2607:f8b0:4864:20::52a as permitted sender) smtp.mailfrom=aik@ozlabs.ru
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iWzg7K7ORAmY+4vXijROLLfU0VTl8wwYftTQR9vhJ4c=;
        b=qPpL6hobDN30AyDv7cRjXAFQ44BhHTjTw9g2esJPHkO+ctrXoCB0tDV3bQHOCXEm1M
         QRSbFjUWg0Mohs+gnQqtYped2mB/VQwsBYXWPLRZq0JvPFCEOlysOLcqEmC2GZW4qg8a
         /M2tP0eOOaB3nORVXYFYZ15r1evV7uRp34jKkkOUlVO14VjkKcB6A72ZSgYdLno8ahkr
         zAVU8QOBw6PNAqsylaEVDrbRWDA/Fjucl239QoT1Y9Jxk/dFxoljQ1pADYk7S4ZrqmJw
         rvzpSG9iwZHZHcHgUGrv8GP3DpLIhGIRauGQwm/IK0J9zJtG2+niBT2xOonvFVGoG0vE
         zL5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:date:mime-version:user-agent
         :subject:content-language:to:cc:references:from:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=iWzg7K7ORAmY+4vXijROLLfU0VTl8wwYftTQR9vhJ4c=;
        b=kZczx/bgMDu7W1B7akV8BM9MgmfB74w0ePT9bkHNUW0LKwBNSIEweokUMbzCAw+6wY
         QFQsD0fspaM5QTcmxyPWrxahJb9ZIap3zE3VUyL7B8b0BwSTREo5XiU74flGr8sRwPzh
         CpQ/BlAqAfz6YwQ5Ztynpt3jwUqTKs0jQTELcoD7PtsGdIDiWLKnYk2yzCLsV30Rp6r2
         6+UnHx6TtzUbKwXj3Z8EIHLD6Hqwv58wj+QEacnhjzmfjKyAfw+bDpVB5MrSh+ynlqX3
         kpvxuB31prKg7p4QqjpPq/ZLklvn3wqNt9JMrghwhzRInz9OTtxSQVaWnK41LOiBWOBZ
         fLaQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533ILUfwioH57v/2OInBuQ/Md77kDbXUWp2u1EHUj/fSTphvGcVy
	lDB/u+U1t54/nfZB07h3b9o=
X-Google-Smtp-Source: ABdhPJyHyN5rIruNkoayUq6rU0vfE059pN0j9RyiSds/ian3Gf93lasJZrLvdl35cg4YF2hJPJV2Tg==
X-Received: by 2002:a17:902:d2d1:b029:ef:8d29:3a64 with SMTP id n17-20020a170902d2d1b02900ef8d293a64mr9474643plc.38.1620963668992;
        Thu, 13 May 2021 20:41:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6a00:d5c:: with SMTP id n28ls3236514pfv.1.gmail; Thu, 13
 May 2021 20:41:08 -0700 (PDT)
X-Received: by 2002:a63:184a:: with SMTP id 10mr43566537pgy.426.1620963668290;
        Thu, 13 May 2021 20:41:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620963668; cv=none;
        d=google.com; s=arc-20160816;
        b=h6IevE36OxPPRbHPl3ZibURIcRvUdszJIppvy8QZxTUCMl1wKxnyiQxs/qI0vf1m4g
         T/tUmp1rpI42M3w8FHb9YEROaqWQCShQBcEk7SbEaQs0G1c6DIyokH0s4zYGpTcqBzu8
         fgob8T1uBSSVVBPVvTTOx963xO+8ujEyneveR+0CsKhcspyjXY9elzBAORoZydaaOWcF
         IJG5hY+ES8m8oZldAQLvdqswcjmdNmm4FI5yZVz7rnj07zndI7Hja0eUsPBT3RTJQaON
         yJg8gVt+6VRKCWZNI2/kw1dEOPtNWoow/RiGHTsMrrbig//YZgNXX0psTZexnGhzuj0c
         z/zw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :dkim-signature;
        bh=a/zMUy57MWnxHZLesj+6X4PZo6CPB1vuMRE2rbZo+5A=;
        b=AM5OQA8ssjwiY+1GxmKZN4eHYXydPLpCRqPpx3CDKkc/Dt3bia6RaW9CPwTlpvNB2L
         AkROyruNn5IdmBVWSXf2+/pXP/fxW1Rcy6QFRYtsVH+trVndnhsiQwzTyQyM7QqI/cC9
         k3//GcwsLByJOwZ6Kl09UOHx0NY3EpHay3fqweAa8XCu+lu8ezrOh7/BgGuuBjogvCaF
         oOgUr0mFzeMGiNeZ3bBLe6Sn3oApj+Egr7ReY2vzibgjH/+S5N76bHyyDhY31DTSGJQt
         RFdD9lHU51W+yDt/FQ5FbNffN7DHkoxcnT+XB2F6yulu7H3ajIjDvhaGLczy3/1Z3Ewa
         AkfQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ozlabs-ru.20150623.gappssmtp.com header.s=20150623 header.b=XRV57b2A;
       spf=pass (google.com: domain of aik@ozlabs.ru designates 2607:f8b0:4864:20::52a as permitted sender) smtp.mailfrom=aik@ozlabs.ru
Received: from mail-pg1-x52a.google.com (mail-pg1-x52a.google.com. [2607:f8b0:4864:20::52a])
        by gmr-mx.google.com with ESMTPS id 131si352612pfa.2.2021.05.13.20.41.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 May 2021 20:41:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of aik@ozlabs.ru designates 2607:f8b0:4864:20::52a as permitted sender) client-ip=2607:f8b0:4864:20::52a;
Received: by mail-pg1-x52a.google.com with SMTP id s22so23235283pgk.6
        for <clang-built-linux@googlegroups.com>; Thu, 13 May 2021 20:41:07 -0700 (PDT)
X-Received: by 2002:a62:1c0c:0:b029:2b7:6dd2:adb3 with SMTP id c12-20020a621c0c0000b02902b76dd2adb3mr28081537pfc.44.1620963667012;
        Thu, 13 May 2021 20:41:07 -0700 (PDT)
Received: from localhost (ppp121-45-194-51.cbr-trn-nor-bras38.tpg.internode.on.net. [121.45.194.51])
        by smtp.gmail.com with UTF8SMTPSA id dw18sm8506655pjb.36.2021.05.13.20.41.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 13 May 2021 20:41:06 -0700 (PDT)
Message-ID: <193e9c74-fcd6-e232-327d-f803a017af76@ozlabs.ru>
Date: Fri, 14 May 2021 13:41:00 +1000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:88.0) Gecko/20100101
 Thunderbird/88.0
Subject: Re: [PATCH kernel v3] powerpc/makefile: Do not redefine $(CPP) for
 preprocessor
Content-Language: en-US
To: Masahiro Yamada <masahiroy@kernel.org>,
 Nathan Chancellor <nathan@kernel.org>
Cc: linuxppc-dev <linuxppc-dev@lists.ozlabs.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 Michal Marek <michal.lkml@markovi.net>, Michael Ellerman
 <mpe@ellerman.id.au>, Segher Boessenkool <segher@kernel.crashing.org>
References: <20210513115904.519912-1-aik@ozlabs.ru>
 <dedc7262-2956-37b2-ebfd-ae8eb9b56716@kernel.org>
 <CAK7LNASFhRE=1EBj9AoTMMEd2YJdu7bCxARAGJfZ7aXcBrMAUw@mail.gmail.com>
From: Alexey Kardashevskiy <aik@ozlabs.ru>
In-Reply-To: <CAK7LNASFhRE=1EBj9AoTMMEd2YJdu7bCxARAGJfZ7aXcBrMAUw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Original-Sender: aik@ozlabs.ru
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ozlabs-ru.20150623.gappssmtp.com header.s=20150623
 header.b=XRV57b2A;       spf=pass (google.com: domain of aik@ozlabs.ru
 designates 2607:f8b0:4864:20::52a as permitted sender) smtp.mailfrom=aik@ozlabs.ru
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



On 14/05/2021 12:42, Masahiro Yamada wrote:
> On Fri, May 14, 2021 at 3:59 AM Nathan Chancellor <nathan@kernel.org> wrote:
>>
>> On 5/13/2021 4:59 AM, Alexey Kardashevskiy wrote:
>>> The $(CPP) (do only preprocessing) macro is already defined in Makefile.
>>> However POWERPC redefines it and adds $(KBUILD_CFLAGS) which results
>>> in flags duplication. Which is not a big deal by itself except for
>>> the flags which depend on other flags and the compiler checks them
>>> as it parses the command line.
>>>
>>> Specifically, scripts/Makefile.build:304 generates ksyms for .S files.
>>> If clang+llvm+sanitizer are enabled, this results in
>>>
>>> -emit-llvm-bc -fno-lto -flto -fvisibility=hidden \
>>>    -fsanitize=cfi-mfcall -fno-lto  ...
>>>
>>> in the clang command line and triggers error:
> 
> I do not know how to reproduce this for powerpc.
> Currently, only x86 and arm64 select
> ARCH_SUPPORTS_LTO_CLANG.
> 
> Is this a fix for a potential issue?

Yeah, it is work in progress to enable LTO_CLANG for PPC64:

https://github.com/aik/linux/commits/lto




> 
> 
>>> clang-13: error: invalid argument '-fsanitize=cfi-mfcall' only allowed with '-flto'
>>>
>>> This removes unnecessary CPP redefinition. Which works fine as in most
>>> place KBUILD_CFLAGS is passed to $CPP except
>>> arch/powerpc/kernel/vdso64/vdso(32|64).lds. To fix vdso, this does:
>>> 1. add -m(big|little)-endian to $CPP
>>> 2. add target to $KBUILD_CPPFLAGS as otherwise clang ignores -m(big|little)-endian if
>>> the building platform does not support big endian (such as x86).
>>>
>>> Signed-off-by: Alexey Kardashevskiy <aik@ozlabs.ru>
>>> ---
>>> Changes:
>>> v3:
>>> * moved vdso cleanup in a separate patch
>>> * only add target to KBUILD_CPPFLAGS for CLANG
>>>
>>> v2:
>>> * fix KBUILD_CPPFLAGS
>>> * add CLANG_FLAGS to CPPFLAGS
>>> ---
>>>    Makefile              | 1 +
>>>    arch/powerpc/Makefile | 3 ++-
>>>    2 files changed, 3 insertions(+), 1 deletion(-)
>>>
>>> diff --git a/Makefile b/Makefile
>>> index 15b6476d0f89..5b545bef7653 100644
>>> --- a/Makefile
>>> +++ b/Makefile
>>> @@ -576,6 +576,7 @@ CC_VERSION_TEXT = $(subst $(pound),,$(shell $(CC) --version 2>/dev/null | head -
>>>    ifneq ($(findstring clang,$(CC_VERSION_TEXT)),)
>>>    ifneq ($(CROSS_COMPILE),)
>>>    CLANG_FLAGS += --target=$(notdir $(CROSS_COMPILE:%-=%))
>>> +KBUILD_CPPFLAGS      += --target=$(notdir $(CROSS_COMPILE:%-=%))
>>
>> You can avoid the duplication here by just doing:
>>
>> KBUILD_CPPFLAGS += $(CLANG_FLAGS)
>>
>> I am still not super happy about the flag duplication but I am not sure
>> I can think of a better solution. If KBUILD_CPPFLAGS are always included
>> when building .o files, maybe we should just add $(CLANG_FLAGS) to
>> KBUILD_CPPFLAGS instead of KBUILD_CFLAGS?
> 
> Hmm, I think including --target=* in CPP flags is sensible,
> but not all CLANG_FLAGS are CPP flags.
> At least, -(no)-integrated-as is not a CPP flag.
> 
> We could introduce a separate CLANG_CPP_FLAGS, but
> it would require more code changes...
> 
> So, I do not have a strong opinion either way.
> 
> 
> 
> BTW, another approach might be to modify the linker script.
> 
> 
> In my best guess, the reason why powerpc adding the endian flag to CPP
> is this line in arch/powerpc/kernel/vdso64/vdso64.lds.S
> 
> #ifdef __LITTLE_ENDIAN__
> OUTPUT_FORMAT("elf64-powerpcle", "elf64-powerpcle", "elf64-powerpcle")
> #else
> OUTPUT_FORMAT("elf64-powerpc", "elf64-powerpc", "elf64-powerpc")
> #endif
> 
> 
> You can use the CONFIG option to check the endian-ness.
> 
> #ifdef CONFIG_CPU_BIG_ENDIAN
> OUTPUT_FORMAT("elf64-powerpc", "elf64-powerpc", "elf64-powerpc")
> #else
> OUTPUT_FORMAT("elf64-powerpcle", "elf64-powerpcle", "elf64-powerpcle")
> #endif
> 
> 
> All the big endian arches define CONFIG_CPU_BIG_ENDIAN.
> (but not all little endian arches define CONFIG_CPU_LITTLE_ENDIAN)


This should work with .lds. But missing --target=* might still hit us 
somewhere else later, these include 3 header files each and there might 
be endianness dependent stuff.


> 
> 
> So,
> #ifdef CONFIG_CPU_BIG_ENDIAN
>     < big endian code >
> #else
>    < little endian code >
> #endif
> 
> works for all architectures.
> 
> 
> Only the exception is you cannot replace the one in uapi headers.
>    arch/powerpc/include/uapi/asm/byteorder.h: #ifdef __LITTLE_ENDIAN__
> since it is exported to userspace, where CONFIG options are not available.
> 
> 
> 
> BTW, various flags are historically used.
> 
>   -  CONFIG_CPU_BIG_ENDIAN   /  CONFIG_CPU_LITTLE_ENDIAN
>   -  __BIG_ENDIAN   / __LITTLE_ENDIAN
>   -  __LITTLE_ENDIAN__     (powerpc only)
> 
> 
> 
> __LITTLE_ENDIAN__  is defined by powerpc gcc and clang.
> 
> My experiments...
> 
> 
> [1] powerpc-linux-gnu-gcc    -> __BIG_ENDIAN__ is defined
> 
> masahiro@grover:~$ echo | powerpc-linux-gnu-gcc -E  -dM -x c - | grep ENDIAN
> #define __ORDER_LITTLE_ENDIAN__ 1234
> #define __BIG_ENDIAN__ 1
> #define __FLOAT_WORD_ORDER__ __ORDER_BIG_ENDIAN__
> #define __ORDER_PDP_ENDIAN__ 3412
> #define _BIG_ENDIAN 1
> #define __BYTE_ORDER__ __ORDER_BIG_ENDIAN__
> #define __VEC_ELEMENT_REG_ORDER__ __ORDER_BIG_ENDIAN__
> #define __ORDER_BIG_ENDIAN__ 4321
> 
> 
> [2] powerpc-linux-gnu-gcc + -mlittle-endian    -> __LITTLE_ENDIAN__ is defined
> 
> masahiro@grover:~$ echo | powerpc-linux-gnu-gcc  -E  -dM   -x c -
> -mlittle-endian  | grep ENDIAN
> #define __ORDER_LITTLE_ENDIAN__ 1234
> #define _LITTLE_ENDIAN 1
> #define __FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__
> #define __ORDER_PDP_ENDIAN__ 3412
> #define __LITTLE_ENDIAN__ 1
> #define __BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__
> #define __VEC_ELEMENT_REG_ORDER__ __ORDER_LITTLE_ENDIAN__
> #define __ORDER_BIG_ENDIAN__ 4321
> 
> 
> [3] other arch gcc    -> neither of them is defined
> 
> masahiro@grover:~$ echo | gcc -E  -dM   -x c -  | grep ENDIAN
> #define __ORDER_LITTLE_ENDIAN__ 1234
> #define __FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__
> #define __ORDER_PDP_ENDIAN__ 3412
> #define __ORDER_BIG_ENDIAN__ 4321
> #define __BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__
> 
> masahiro@grover:~$ echo | arm-linux-gnueabihf-gcc   -E  -dM   -x c -
> -mlittle-endian  | grep ENDIAN
> #define __ORDER_LITTLE_ENDIAN__ 1234
> #define __FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__
> #define __ORDER_PDP_ENDIAN__ 3412
> #define __BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__
> #define __ORDER_BIG_ENDIAN__ 4321
> 
> masahiro@grover:~$ echo | arm-linux-gnueabihf-gcc   -E  -dM   -x c -
> -mbig-endian  | grep ENDIAN
> #define __ORDER_LITTLE_ENDIAN__ 1234
> #define __FLOAT_WORD_ORDER__ __ORDER_BIG_ENDIAN__
> #define __ORDER_PDP_ENDIAN__ 3412
> #define __ARM_BIG_ENDIAN 1
> #define __BYTE_ORDER__ __ORDER_BIG_ENDIAN__
> #define __ORDER_BIG_ENDIAN__ 4321
> 
> 
> [4] Clang  --target=powerpc-linux-gnu      -> __BIG_ENDIAN__ is defined
> 
> masahiro@grover:~$ echo |  ~/tools/clang-latest/bin/clang -E
> --target=powerpc-linux-gnu -dM -x c -    | grep ENDIAN
> #define _BIG_ENDIAN 1
> #define __BIG_ENDIAN__ 1
> #define __BYTE_ORDER__ __ORDER_BIG_ENDIAN__
> #define __ORDER_BIG_ENDIAN__ 4321
> #define __ORDER_LITTLE_ENDIAN__ 1234
> #define __ORDER_PDP_ENDIAN__ 3412
> 
> 
> 
> [5] very recent Clang understands --target=powerpcle-linux-gnu     -->
> __LITTLE_ENDIAN__ is defined
> 
> masahiro@grover:~$ echo |  ~/tools/clang-latest/bin/clang -E
> --target=powerpcle-linux-gnu -dM -x c -   | grep ENDIAN
> #define _LITTLE_ENDIAN 1
> #define __BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__
> #define __LITTLE_ENDIAN__ 1
> #define __ORDER_BIG_ENDIAN__ 4321
> #define __ORDER_LITTLE_ENDIAN__ 1234
> #define __ORDER_PDP_ENDIAN__ 3412
> 
> 
> [6] very recent Clang, --target=powerpc-linux-gnu  + -mlittle-endian
>   --> __LITTLE_ENDIAN__ is defined
> 
> masahiro@grover:~$ echo |  ~/tools/clang-latest/bin/clang -E
> --target=powerpc-linux-gnu -dM -x c -  -mlittle-endian  | grep ENDIAN
> #define _LITTLE_ENDIAN 1
> #define __BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__
> #define __LITTLE_ENDIAN__ 1
> #define __ORDER_BIG_ENDIAN__ 4321
> #define __ORDER_LITTLE_ENDIAN__ 1234
> #define __ORDER_PDP_ENDIAN__ 3412
> 
> 
> 
> 
> [7] Clang, target with little endian only ,   -mbig-endian is ignored
> masahiro@grover:~$ echo |  clang -E   -dM -x c -    | grep ENDIAN
> #define __BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__
> #define __LITTLE_ENDIAN__ 1
> #define __ORDER_BIG_ENDIAN__ 4321
> #define __ORDER_LITTLE_ENDIAN__ 1234
> #define __ORDER_PDP_ENDIAN__ 3412
> masahiro@grover:~$ echo |  clang -E   -dM -x c -  -mbig-endian  | grep ENDIAN
> #define __BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__
> #define __LITTLE_ENDIAN__ 1
> #define __ORDER_BIG_ENDIAN__ 4321
> #define __ORDER_LITTLE_ENDIAN__ 1234
> #define __ORDER_PDP_ENDIAN__ 3412



Nice research :) Thanks,

> 
> 
> --
> Best Regards
> Masahiro Yamada
> 

-- 
Alexey

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/193e9c74-fcd6-e232-327d-f803a017af76%40ozlabs.ru.
