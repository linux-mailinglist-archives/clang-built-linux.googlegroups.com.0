Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBZUCYSDAMGQEQXECVVY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103f.google.com (mail-pj1-x103f.google.com [IPv6:2607:f8b0:4864:20::103f])
	by mail.lfdr.de (Postfix) with ESMTPS id 791663AF742
	for <lists+clang-built-linux@lfdr.de>; Mon, 21 Jun 2021 23:15:19 +0200 (CEST)
Received: by mail-pj1-x103f.google.com with SMTP id r17-20020a17090aa091b029016eedf1dd17sf470017pjp.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 21 Jun 2021 14:15:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624310118; cv=pass;
        d=google.com; s=arc-20160816;
        b=fZc/zgWOB/uCXuq9LUaVUoRqMeSQtuSSk2O4AgbTIHz1ksGIFJh19OD8wf1HCLLStA
         Sh+rBINkvkBKFQc5GpSf/u8N58Bdk01HCLDHbWUW3xjRA0+5CEB1zVW3lcEij1fdTmEB
         y7YRu0BxoZuyCh6gU9Pn15pWnA5rGna580se+LhNnCrJoiA0m6lwVBk7hbRHMLHYzltB
         YuCybh0x+b/i6lLfcfI9Gr5Bg9yiiNX9v99waUbmW+AWx+IVZlnypSdgDLVsQEAf6aVZ
         9/qeuV4OlMm6zlirp0KagtKwmiOodK8gxeKc3rm6+5uTu+PkwUSlEjkOoFAwwynhPOkA
         egJA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=5c9g/uWfxpRT7ntWGn9BZzZ2ceH60lJrPbsUFb5Rszc=;
        b=Q7NduLtOV3gBwy/Rb7ClkkgwKEkQhA6PR7ZkZmxBWe/dJMkgBNfpKMdaMLMtOw72HI
         yrzZerz99277JUfvC7/lMju8igL7YtP0PXKsq2g0rDciZUa3VXyu7KfkaSfLFw+KXlEC
         WQpw9j773wtGZLjwmXDLNdria2X6v8ijbViMkFXwFp1d1rsjuCFO05/jRo7d0tF0MysO
         ++qHTNkhTP9zDWGeWgUHyb3Rx55Bex5dxXNQrpX5A8IPVPYY6RLcZTGtS6Q1E6ssMegs
         LNhHyhl3eXf900CZxXUAmlcdVrY1vwReyaqTia1tqQNZ8PWvxHfYbvZ4iOYoDPatymSn
         1+JA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=tfG4rh81;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=5c9g/uWfxpRT7ntWGn9BZzZ2ceH60lJrPbsUFb5Rszc=;
        b=G3j7JFH1oo8VQ9Y3gRBmvecncTb8jAhXV9uOtwC2vBE5B2k4sI11+wgYUUEWWxTF/N
         vnIGLgrcZ20vEKEgXuIi73dODyt8yE+yoCqppQTV/9vBdkg9PErs5XZ6H8DAMpjOUEhG
         4RrBlZgXbAY+zeelXdBVWXbJE43//X1Bi5DlpBd8IKVOTL5S/ra73KeYoG74OrIlHWHK
         FKwB3pJihUVhl9tbO3j7SjjDsKU/YKRTiaJxYVszgYbppvW6BOvNvAQVe08RLYp/JP7Y
         2KIMLOcbRmOjz3OWrdRSZb3vCMhqTyKq2zJGNgzqllh5TNVZyu0FRrXd+gDuVVU4zphb
         3fPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=5c9g/uWfxpRT7ntWGn9BZzZ2ceH60lJrPbsUFb5Rszc=;
        b=kW89hiSpQ4WBvzuv31/741c2fA97iICwB53sYibqYL3atGK9TR9WzVue1xVeuNQBIR
         zIeByix2K5cVQPBCPRST7331yg5aBRxwjl8Js9AWG3h+vRDgY5U6lIsPk1OI8X94COG0
         JSWfs93/NZk19x+rWyafxKYj3zcWccDuZR6BaiWHX96ybb+tEwILE3c98X4NcMIVvYvF
         W5E+RfLcoefHn7nJKyXTtSJCKGAy6/794J6wxH/SZ/PnZ9vaTMTQ9W9P0Qg7h4CEUxSl
         vc8VrSAuIz8aFJc+ZVQWaOWqhT8YpfxVCt+jusA+s6iphDlSkUxvWht7LFOQri5FI1eJ
         saFg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530UfpTwu1DF+DpFwGk/fjmgMNln+Pk+lSgV5zDHIhJeurKPrXsO
	MZmIdL30ZZiGgSZNlHpAWYo=
X-Google-Smtp-Source: ABdhPJyFbUHIDjFbq8x8kgTDYdWQp/mzWHkGAB5stibR8mvNm+YzP4HDZKcCeDB8OCWkx7ynyf/12g==
X-Received: by 2002:a17:90a:8a95:: with SMTP id x21mr57059pjn.154.1624310118113;
        Mon, 21 Jun 2021 14:15:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:1547:: with SMTP id 68ls2487585pfv.6.gmail; Mon, 21 Jun
 2021 14:15:17 -0700 (PDT)
X-Received: by 2002:a63:4554:: with SMTP id u20mr435538pgk.23.1624310117511;
        Mon, 21 Jun 2021 14:15:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624310117; cv=none;
        d=google.com; s=arc-20160816;
        b=z2g8VX6otvalzqJ7R4Zlk1x1A3uDKVKpcXWxK6EpeGGtsbhzxgaGFwaKga2z6kfnD2
         8ow8upaOf30aDMh4+zi5wRCdKcbGvjV5LT59fMead3wXAAwp1EKjJ6ZUnsKaBTZAI2Ws
         Bgb089YjZ0kzCIK0xbZWW5Okj2acwcKLhh1JXkQitdd1r1AOKvRedMQBSWEAhtWAhE7z
         4SuPqUXxOWlnsPBk8h0SRecLoGBpjw7tpF3w3t0EzG4MqokUmquox6VZkB/+nIUi4q8Q
         eNo4WxZYc9zz6P+P/rBK3QvrHwiycA8e6ScrTtsnfJ5W2Kp3WxvtLFacRjlb6pKA9wdO
         Dt8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=iRluRevREr+fsQOeMMBY+Pa1NmhO4LEf6ia/pMx99yI=;
        b=VlKZxDNHGJIAUuUl/JDkpv9/4fTYnRODJL4LeE6+sd+C+ndsRlopJpUorAWuJsjHue
         F7/0hsZ8PdbHa49c+t5UwYCRLX9JSi+z6MS3wOhSSs1FFtG6DjIheI+RRjwkoHBiApro
         K+GuFo90Eav74iLHO+JVKUb5PTRw4znL8m30ivsYP20zri4/uNPHpJUKJHHOXpgDrqYC
         CeEOH+C2r6te/cdcOIw03jMcMlXp63lA1MCQ0BXC4JKvSb4Pa+NPYYc5R9TKKo1+9nur
         /8jhXee/1Ehf6hTqLCWlPETF/2xIRA0A+0TTnTeQoQSte8TwHOw/XnJpFaMhyEZJawh2
         08zQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=tfG4rh81;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id z18si11708pfc.5.2021.06.21.14.15.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 21 Jun 2021 14:15:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 62E2461289;
	Mon, 21 Jun 2021 21:15:15 +0000 (UTC)
Subject: Re: [PATCH 2/2] Kconfig: CC_HAS_NO_PROFILE_FN_ATTR, depend on for
 GCOV and PGO
To: Nick Desaulniers <ndesaulniers@google.com>,
 Bill Wendling <morbo@google.com>, Masahiro Yamada <masahiroy@kernel.org>
Cc: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>,
 Mark Rutland <mark.rutland@arm.com>, Ard Biesheuvel <ardb@kernel.org>,
 Heiko Carstens <hca@linux.ibm.com>, Vasily Gorbik <gor@linux.ibm.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>,
 Peter Oberparleiter <oberpar@linux.ibm.com>,
 Kees Cook <keescook@chromium.org>, Peter Zijlstra <peterz@infradead.org>,
 Bill Wendling <wcw@google.com>, Sami Tolvanen <samitolvanen@google.com>,
 Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 Luc Van Oostenryck <luc.vanoostenryck@gmail.com>,
 Arnd Bergmann <arnd@arndb.de>, Andrew Morton <akpm@linux-foundation.org>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 LKML <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 "maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
 Borislav Petkov <bp@alien8.de>, Martin Liska <mliska@suse.cz>,
 Jonathan Corbet <corbet@lwn.net>, Fangrui Song <maskray@google.com>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
 Dmitry Vyukov <dvyukov@google.com>, Johannes Berg <johannes.berg@intel.com>,
 linux-toolchains@vger.kernel.org, Marco Elver <elver@google.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 linux-s390 <linux-s390@vger.kernel.org>
References: <20210618233023.1360185-1-ndesaulniers@google.com>
 <20210618233023.1360185-3-ndesaulniers@google.com>
 <CANpmjNNK-iYXucjz7Degh1kJPF_Z_=8+2vNLtUW17x0UnfgtPg@mail.gmail.com>
 <CAKwvOdmxGt6nAj+dDZEPdQtXNbYb8N6y3XwoCvCD+Qazskh7zw@mail.gmail.com>
 <CAGG=3QXeAxaf0AhKsg8P1-j2uHOoXne2KCOCEhq9SKa-e2dnag@mail.gmail.com>
 <CAKwvOd=9oAGPeuQmWnAMOxZn2ii_CRmyWnheoyXGcd09-U_CwA@mail.gmail.com>
From: Nathan Chancellor <nathan@kernel.org>
Message-ID: <c9308265-5822-5097-f2e7-030045c94463@kernel.org>
Date: Mon, 21 Jun 2021 14:15:14 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <CAKwvOd=9oAGPeuQmWnAMOxZn2ii_CRmyWnheoyXGcd09-U_CwA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=tfG4rh81;       spf=pass
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

On 6/21/2021 1:43 PM, Nick Desaulniers wrote:
> On Mon, Jun 21, 2021 at 11:50 AM Bill Wendling <morbo@google.com> wrote:
>>
>> On Mon, Jun 21, 2021 at 11:22 AM Nick Desaulniers
>> <ndesaulniers@google.com> wrote:
>>>
>>> On Fri, Jun 18, 2021 at 11:23 PM Marco Elver <elver@google.com> wrote:
>>>>
>>>> On Sat, 19 Jun 2021 at 01:30, Nick Desaulniers <ndesaulniers@google.com> wrote:
>>>>>
>>>>> We don't want compiler instrumentation to touch noinstr functions, which
>>>>> are annotated with the no_profile function attribute. Add a Kconfig test
>>>>> for this and make PGO and GCOV depend on it.
>>>>>
>>>>> Cc: Masahiro Yamada <masahiroy@kernel.org>
>>>>> Cc: Peter Oberparleiter <oberpar@linux.ibm.com>
>>>>> Link: https://lore.kernel.org/lkml/YMTn9yjuemKFLbws@hirez.programming.kicks-ass.net/
>>>>> Link: https://lore.kernel.org/lkml/YMcssV%2Fn5IBGv4f0@hirez.programming.kicks-ass.net/
>>>>> Suggested-by: Peter Zijlstra <peterz@infradead.org>
>>>>> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
>>>>> ---
>>>>>   init/Kconfig        | 3 +++
>>>>>   kernel/gcov/Kconfig | 1 +
>>>>>   kernel/pgo/Kconfig  | 3 ++-
>>>>>   3 files changed, 6 insertions(+), 1 deletion(-)
>>>>>
>>>>> diff --git a/init/Kconfig b/init/Kconfig
>>>>> index 1ea12c64e4c9..540f862b40c6 100644
>>>>> --- a/init/Kconfig
>>>>> +++ b/init/Kconfig
>>>>> @@ -83,6 +83,9 @@ config TOOLS_SUPPORT_RELR
>>>>>   config CC_HAS_ASM_INLINE
>>>>>          def_bool $(success,echo 'void foo(void) { asm inline (""); }' | $(CC) -x c - -c -o /dev/null)
>>>>>
>>>>> +config CC_HAS_NO_PROFILE_FN_ATTR
>>>>> +       def_bool $(success,echo '__attribute__((no_profile)) int x();' | $(CC) -x c - -c -o /dev/null -Werror)
>>>>> +
>>>>>   config CONSTRUCTORS
>>>>>          bool
>>>>>
>>>>> diff --git a/kernel/gcov/Kconfig b/kernel/gcov/Kconfig
>>>>> index 58f87a3092f3..19facd4289cd 100644
>>>>> --- a/kernel/gcov/Kconfig
>>>>> +++ b/kernel/gcov/Kconfig
>>>>> @@ -5,6 +5,7 @@ config GCOV_KERNEL
>>>>>          bool "Enable gcov-based kernel profiling"
>>>>>          depends on DEBUG_FS
>>>>>          depends on !CC_IS_CLANG || CLANG_VERSION >= 110000
>>>>> +       depends on !X86 || (X86 && CC_HAS_NO_PROFILE_FN_ATTR)
>>>>
>>>> [+Cc Mark]
>>>>
>>>> arm64 is also starting to rely on noinstr working properly.
>>>
>>> Sure,
>>> Will, Catalin, other arm64 folks:
>>> Any thoughts on requiring GCC 7.1+/Clang 13.0+ for GCOV support?  That
>>> way we can better guarantee that GCOV (and eventually, PGO) don't
>>> touch noinstr functions?
>>>
>>> If that's ok, I'll add modify the above like:
>>>
>>> + depends on !ARM64 || (ARM64 && CC_HAS_NO_PROFILE_FN_ATTR)
>>>
>> Wouldn't "!ARM64 || CC_HAS_NO_PROFILE_FN_ATTR" be more succinct?
> 
> We need to be able to express via Kconfig "GCOV should not be enabled
> for architectures that use noinstr when the toolchain does not support
> __attribute__((no_profile_instrument_function))."
> 
> Where "architectures that use noinstr" are currently arm64, s390, and
> x86.  So I guess we could do:
> 
> + depends on !ARM64 || !S390 || !X86 || CC_HAS_NO_PROFILE_FN_ATTR
> 
> (We could add a Kconfig for ARCH_WANTS_NO_INSTR, which might be more
> informative than listed out architectures which might be non-obvious
> to passers-by).

I agree that spelling this out might be nicer for the future, in case 
instances like this crop up again. ARCH_REQUIRES_NO_INSTR might be a 
better wording?

> It would be most succinct to raise the requirements to: "GCOV should
> not be enabled when the toolchain does not support
> __attribute__((no_profile_instrument_function))." Then we could do:
> 
> + depends on CC_HAS_NO_PROFILE_FN_ATTR

Then this could become

depends on !ARCH_REQUIRES_NO_INSTR || (ARCH_REQUIRES_NO_INSTR && 
CC_HAS_NO_PROFILE_FN_ATTR)

(sorry for the potential wrap).

Cheers,
Nathan

> Assuming no one has the requirement to support GCOV on PPC with GCC <
> 7.1, for example.
> 
>>
>>> to the above hunk in v2.  Oh, looks like arch/s390 also uses noinstr.
>>> Same question applies then:
>>>
>>> + depends on !S390 || (S390 && CC_HAS_NO_PROFILE_FN_ATTR)
>>>
>>> Or, we could just do
>>>
>>> + depends on CC_HAS_NO_PROFILE_FN_ATTR
>>>
>>> Though that will penalize architectures not using noinstr, that still
>>> would like to use GCOV with versions of GCC older than 7.1.  Perhaps
>>> there are no such such users, or they should consider upgrading their
>>> tools to we can stick with the simpler Kconfig? Thoughts?
>>>
>>>>
>>>> This should probably be a 'select ARCH_HAS_GCOV_PROFILE_ALL if
>>>> CC_HAS_NO_PROFILE_FN_ATTR' in the relevant arch/../Kconfig.
>>>>
>>>> Alternatively, using:
>>>> https://lkml.kernel.org/r/YMcssV/n5IBGv4f0@hirez.programming.kicks-ass.net
>>>>
>>>> But I'd probably not overcomplicate things at this point and just use
>>>> ARCH_HAS_GCOV_PROFILE_ALL, because GCOV seems to be a) rarely used,
>>>> and b) if someone decides to selectively instrument stuff like entry
>>>> code, we can just say it's user error.
>>>>
>>>>
>>>>>          select CONSTRUCTORS
>>>>>          default n
>>>>>          help
>>>>> diff --git a/kernel/pgo/Kconfig b/kernel/pgo/Kconfig
>>>>> index d2053df1111c..26f75ac4c6c1 100644
>>>>> --- a/kernel/pgo/Kconfig
>>>>> +++ b/kernel/pgo/Kconfig
>>>>> @@ -8,7 +8,8 @@ config PGO_CLANG
>>>>>          bool "Enable clang's PGO-based kernel profiling"
>>>>>          depends on DEBUG_FS
>>>>>          depends on ARCH_SUPPORTS_PGO_CLANG
>>>>> -       depends on CC_IS_CLANG && CLANG_VERSION >= 120000
>>>>> +       depends on CC_IS_CLANG
>>>>> +       depends on CC_HAS_NO_PROFILE_FN_ATTR
>>>>>          help
>>>>>            This option enables clang's PGO (Profile Guided Optimization) based
>>>>>            code profiling to better optimize the kernel.
>>>>> --
>>>>> 2.32.0.288.g62a8d224e6-goog
>>>>>
>>>
>>>
>>>
>>> --
>>> Thanks,
>>> ~Nick Desaulniers
> 
> 
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/c9308265-5822-5097-f2e7-030045c94463%40kernel.org.
