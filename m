Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBNEU5GDAMGQEQ6CTZTA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc39.google.com (mail-oo1-xc39.google.com [IPv6:2607:f8b0:4864:20::c39])
	by mail.lfdr.de (Postfix) with ESMTPS id A6D0C3B6AE6
	for <lists+clang-built-linux@lfdr.de>; Tue, 29 Jun 2021 00:16:21 +0200 (CEST)
Received: by mail-oo1-xc39.google.com with SMTP id z1-20020a4ab8810000b029024abe096a35sf12464893ooo.12
        for <lists+clang-built-linux@lfdr.de>; Mon, 28 Jun 2021 15:16:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624918580; cv=pass;
        d=google.com; s=arc-20160816;
        b=TbLnu1VVGdZg7Pd+5EjXWBWNrExJD5UDQDd/tbPdAlB08Frt9+jfQ91WqP/VJgSGTn
         sVYgER1RVYMzRU+1fbiKAkhEXoxB3KIozB8qppo3+03bqOvNufJAIVcrUJSC+t9lVYgT
         eNx90NxCRZjbgulfL0ajKbk4i2YbIK8+F7yHSEwC1KuChFXko4EP5P5nLiuIvr1KYqdr
         KWflBR9z4f6ZwyU9oxfe2ZgS+67uZ0jtl71iaZKfah9yCBhlWtKG4mhM0mwogWu1cOdk
         AhQEwBj5JsiaTBYQtraoh/4IaTO8L0/aldx2AhHRDcbVGRQ5SEa+XPI++/TNnrZT0fLm
         GzHA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=2n5XIaO4653XR3An/t1p+wlYx1GQrKkWgRUWkVyAOSA=;
        b=Ytqagg3Cuz3Vu2eTd2O83shtBjQQz3cwTt8mNy9x8iM5e++9zo21XS+aIScTrPxLZ3
         R0EZywRB2NMNS2gp48K2zmyBf1r+2p+XURz4q+xqdI+82DKPN/K7FMb20uajujzbg6F4
         NfOsW/j9CQ1qgAX7swRu4w4qdA2MLr0AvuA6uKhizVCstzjreK3bxUnvk9cPAuWkG2lC
         ulJW/mGD16Wzp6BbYzqcQ4whgFVQ++tJEPwytXRUqpnqkkP+YOBTKY0356rqChTcHry+
         rEkxNeY341QemhyCXR7UiNyaSWgA4tD/Pfv5cmA1AJjoTYp8mrlUPH/+1YskdaSW3MHS
         ePNw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=AEZvXZO1;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2n5XIaO4653XR3An/t1p+wlYx1GQrKkWgRUWkVyAOSA=;
        b=oTAWqAkNcxXoTlmssHeJ5H1EsBciluR0Ojg4joIArx8hQ3Qpdp7Fvu8gBg93GSsM8g
         LYboj9DwjnVqVflUMRVjockRtlDllG7eCOhj3QfCKyoJoLynFzUgbYX0kq3VOEh26Pa0
         5JqLg2I9FeEW6ajsELZk6M0Z2HXAT1Dz0oXQOtCjqmioNhVfVMSu2oebG6PSRKV1Ydgs
         secX5F6wD3bXi7G1bxauqS7KMpA5sDqAODyE18GdEWYqhXY7/+CScLnkkaeE3xDezCjA
         nNHB9JWz98dayw/p4xQpPnF4qR/ioirP4aNUnViAdMyjoTXVlhCyGMK5mOaP94GKRrd2
         oX+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=2n5XIaO4653XR3An/t1p+wlYx1GQrKkWgRUWkVyAOSA=;
        b=cz/zBo9e4KRr6vv3yOQzTJL9Itqkg0IgyS4htExreBVf326ZB/uURuhz4TO6BXYC6S
         TaX3+MDN/yg/hHVGyQIB8XIoJYpa3qZkHCzG4uDclvplxGi7cQ3PB1VACBhrXTadj/lX
         e5zuuDsNwWSrurqQtVGLISr1lDznG/jNNCbFkWcDyBAFLomOPzymJPZ+7Khak/7IDBkJ
         Xo9t/P6NAHHBvdTDrbrVMmMgm0drFHn6TVlsmXD8hsbJs9b57O1heqkMO5XVpkWFWkn5
         TMkM4fxtXbcEHZqEivRubzfWleL+2FCtjjZkvO1KtAc8wzC0+GnCdmhAPJF9w/H10H5B
         H36g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533UNY4aLRla82lCCwquNM0C6HV9KB6fb2N1vdSyn0dkhC1O3560
	qaEyM3s+hLZIHWIIDejvIQ4=
X-Google-Smtp-Source: ABdhPJyPAcxwQTqFQ4spz8QG/kCx64xo/hQidI8OeLy+hgRdqsVpoKzp5NeC3oTpQ8bk1CaabKm0ow==
X-Received: by 2002:a54:440d:: with SMTP id k13mr3591046oiw.178.1624918580671;
        Mon, 28 Jun 2021 15:16:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:bd6:: with SMTP id o22ls7100360oik.1.gmail; Mon, 28
 Jun 2021 15:16:20 -0700 (PDT)
X-Received: by 2002:aca:3147:: with SMTP id x68mr13004192oix.126.1624918580376;
        Mon, 28 Jun 2021 15:16:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624918580; cv=none;
        d=google.com; s=arc-20160816;
        b=NjdEsvezO1FCvtO6jfCX7tF7bJvgK+H3p3/7jzJH6B05gCy+pDw5ji/yBzkEMPGnHL
         JpBvGwh7woJ/LwfLbxYets3zibKZ20Ch5bHLyUj/lo3TXjzofdel+JfGYXdRjYYlqZVG
         oX7khGgEhpNXMXl/KQ70/9DBi3yZ9s02ArzaI64Okxh2DiiPsdOuc7wv4g/ywDUWbxRc
         uXjTcLvxQ3xbCWU60rhw+aa4Vv8Vtr9RC1+axgYHajyC4WSmTqWxk/4JMkeuYKGOr78I
         fFiKDpLioqPLHb2JN3vaNMRuvl0tVzg0Mq1zUZN4bZrHMI864LFmCVWO6v102lQaGdqc
         Mkhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=Qf/ZlD1XF0EzsNcLr5tQ8K8E39o+Sxjn4SRJacMpRRw=;
        b=PksYnObPSYshWMKZywrayzxlNi/ZhI1ss7cFLq8VDBzeZg0UcwGS72Sa12nLFCKc8W
         eqYCICBHnG6vSg4CIsGlJOy3pwxYCQQM+8YSt/myNqauDQnSm+KSmIWHGqiFSWvPXbXc
         2TjZW/3QlBtKL6cDSOHp5NMeSgGvG03tnU9qmxoIyOLTUbacd5DAQYTlPtGDayw7IRaZ
         SUe4DozB4qIf9liyQ8akCWOJ8nHTYMSg0rSvMgFnAznwaXMlGrea9vwpx1lCoFywlTpO
         SiGd6mG3rxMvik2Kg6ZNHim1rBWw6Nqgkm08Fm36NC7KPAaAknORAc5hZpdoh+kICPCp
         rJmg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=AEZvXZO1;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id b9si1865202ooq.1.2021.06.28.15.16.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 28 Jun 2021 15:16:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 738AA61CA2;
	Mon, 28 Jun 2021 22:16:18 +0000 (UTC)
Subject: Re: [PATCH v3] kallsyms: strip LTO suffixes from static functions
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Kees Cook <keescook@chromium.org>, Fangrui Song <maskray@google.com>,
 "KE . LI" <like1@oppo.com>, Andrew Morton <akpm@linux-foundation.org>,
 Stephen Rothwell <sfr@canb.auug.org.au>, Miguel Ojeda <ojeda@kernel.org>,
 Joe Perches <joe@perches.com>, "Gustavo A. R. Silva"
 <gustavoars@kernel.org>, Randy Dunlap <rdunlap@infradead.org>,
 Sami Tolvanen <samitolvanen@google.com>, Stephen Boyd <swboyd@chromium.org>,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
References: <a970613b-014f-be76-e342-4a51e792b56d@kernel.org>
 <20210628203109.2501792-1-ndesaulniers@google.com>
 <YNo8+PWPu5ssAcau@archlinux-ax161>
 <CAKwvOdks4o8A1o7Q49Pa43ZyY5Zh6+s-u67FL-fp=16FP-Y7yw@mail.gmail.com>
From: Nathan Chancellor <nathan@kernel.org>
Message-ID: <08a2e179-3f5f-639e-946f-54cd07ae12fa@kernel.org>
Date: Mon, 28 Jun 2021 15:16:16 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <CAKwvOdks4o8A1o7Q49Pa43ZyY5Zh6+s-u67FL-fp=16FP-Y7yw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=AEZvXZO1;       spf=pass
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

On 6/28/2021 3:01 PM, Nick Desaulniers wrote:
> On Mon, Jun 28, 2021 at 2:20 PM Nathan Chancellor <nathan@kernel.org> wrote:
>>
>> On Mon, Jun 28, 2021 at 01:31:06PM -0700, Nick Desaulniers wrote:
>>> Similar to:
>>> commit 8b8e6b5d3b01 ("kallsyms: strip ThinLTO hashes from static
>>> functions")
>>>
>>> It's very common for compilers to modify the symbol name for static
>>> functions as part of optimizing transformations. That makes hooking
>>> static functions (that weren't inlined or DCE'd) with kprobes difficult.
>>>
>>> LLVM has yet another name mangling scheme used by thin LTO.  Strip off
>>> these suffixes so that we can continue to hook such static functions.
>>>
>>> Reported-by: KE.LI(Lieke) <like1@oppo.com>
>>> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
>>> ---
>>> Changes v2 -> V3:
>>> * Un-nest preprocessor checks, as per Nathan.
>>>
>>> Changes v1 -> v2:
>>> * Both mangling schemes can occur for thinLTO + CFI, this new scheme can
>>>    also occur for thinLTO without CFI. Split cleanup_symbol_name() into
>>>    two function calls.
>>> * Drop KE.LI's tested by tag.
>>> * Do not carry Fangrui's Reviewed by tag.
>>> * Drop the inline keyword; it is meaningless.
>>>   kernel/kallsyms.c | 32 +++++++++++++++++++++++++++++---
>>>   1 file changed, 29 insertions(+), 3 deletions(-)
>>>
>>> diff --git a/kernel/kallsyms.c b/kernel/kallsyms.c
>>> index 4067564ec59f..143c69e7e75d 100644
>>> --- a/kernel/kallsyms.c
>>> +++ b/kernel/kallsyms.c
>>> @@ -171,6 +171,26 @@ static unsigned long kallsyms_sym_address(int idx)
>>>        return kallsyms_relative_base - 1 - kallsyms_offsets[idx];
>>>   }
>>>
>>> +#ifdef CONFIG_LTO_CLANG_THIN
>>> +/*
>>> + * LLVM appends a suffix for local variables that must be promoted to global
>>> + * scope as part of thin LTO. foo() becomes foo.llvm.974640843467629774. This
>>> + * can break hooking of static functions with kprobes.
>>> + */
>>> +static bool cleanup_symbol_name_thinlto(char *s)
>>> +{
>>> +     char *res;
>>> +
>>> +     res = strstr(s, ".llvm.");
>>> +     if (res)
>>> +             *res = '\0';
>>> +
>>> +     return res != NULL;
>>> +}
>>> +#else
>>> +static bool cleanup_symbol_name_thinlto(char *s) { return false; }
>>> +#endif /* CONFIG_LTO_CLANG_THIN */
>>> +
>>>   #if defined(CONFIG_CFI_CLANG) && defined(CONFIG_LTO_CLANG_THIN)
>>>   /*
>>>    * LLVM appends a hash to static function names when ThinLTO and CFI are
>>> @@ -178,7 +198,7 @@ static unsigned long kallsyms_sym_address(int idx)
>>>    * This causes confusion and potentially breaks user space tools, so we
>>>    * strip the suffix from expanded symbol names.
>>>    */
>>> -static inline bool cleanup_symbol_name(char *s)
>>> +static bool cleanup_symbol_name_thinlto_cfi(char *s)
>>>   {
>>>        char *res;
>>>
>>> @@ -189,8 +209,14 @@ static inline bool cleanup_symbol_name(char *s)
>>>        return res != NULL;
>>>   }
>>>   #else
>>> -static inline bool cleanup_symbol_name(char *s) { return false; }
>>> -#endif
>>> +static bool cleanup_symbol_name_thinlto_cfi(char *s) { return false; }
>>> +#endif /* CONFIG_CFI_CLANG && CONFIG_LTO_CLANG_THIN */
>>> +
>>> +static bool cleanup_symbol_name(char *s)
>>> +{
>>> +     return cleanup_symbol_name_thinlto(s) &&
>>> +             cleanup_symbol_name_thinlto_cfi(s);
>>> +}
>>>
>>>   /* Lookup the address for this symbol. Returns 0 if not found. */
>>>   unsigned long kallsyms_lookup_name(const char *name)
>>> --
>>> 2.32.0.93.g670b81a890-goog
>>>
>>
>> Is there any reason that we cannot eliminate the stubs and combine the
>> functions, or am I missing something? Completely untested diff.
>>
>> diff --git a/kernel/kallsyms.c b/kernel/kallsyms.c
>> index c851ca0ed357..014b59ad68a3 100644
>> --- a/kernel/kallsyms.c
>> +++ b/kernel/kallsyms.c
>> @@ -161,26 +161,36 @@ static unsigned long kallsyms_sym_address(int idx)
>>          return kallsyms_relative_base - 1 - kallsyms_offsets[idx];
>>   }
>>
>> -#if defined(CONFIG_CFI_CLANG) && defined(CONFIG_LTO_CLANG_THIN)
>> -/*
>> - * LLVM appends a hash to static function names when ThinLTO and CFI are
>> - * both enabled, i.e. foo() becomes foo$707af9a22804d33c81801f27dcfe489b.
>> - * This causes confusion and potentially breaks user space tools, so we
>> - * strip the suffix from expanded symbol names.
>> - */
>> -static inline bool cleanup_symbol_name(char *s)
>> +static inline bool cleanup_symbol_name_thinlto(char *s)
> 
> Drop inline while touching this line.

Sure.

>>   {
>>          char *res;
>>
>> -       res = strrchr(s, '$');
>> +       if (!IS_ENABLED(CONFIG_LTO_CLANG_THIN))
>> +               return false;
>> +
>> +       /*
>> +        * LLVM appends a suffix for local variables that must be promoted to global
>> +        * scope as part of ThinLTO. foo() becomes foo.llvm.974640843467629774. This
>> +        * can break hooking of static functions with kprobes.
>> +        */
>> +       res = strstr(s, ".llvm.");
>>          if (res)
>>                  *res = '\0';
> 
> Sure, this is nicer though within the true block we should `return
> true;` early rather than additionally check the $ mangling, I suppose.

I am not sure I follow? Are you talking about moving this into an else 
block in the if statement below this?

This should probably be two separate patches, with the first one 
eliminating the stub, dropping the inline, and renaming the function 
then the second patch do what this one does but I do not have a strong 
opinion.

I do not mind if you take ownership of this diff, with or without 
attribution.

>>
>> +       /*
>> +        * LLVM appends a hash to static function names when ThinLTO and CFI are
>> +        * both enabled, i.e. foo() becomes foo$707af9a22804d33c81801f27dcfe489b.
>> +        * This causes confusion and potentially breaks user space tools, so we
>> +        * strip the suffix from expanded symbol names.
>> +        */
>> +       if (IS_ENABLED(CONFIG_CFI_CLANG)) {
>> +               res = strrchr(s, '$');
>> +               if (res)
>> +                       *res = '\0';
>> +       }
>> +
>>          return res != NULL;
>>   }
>> -#else
>> -static inline bool cleanup_symbol_name(char *s) { return false; }
>> -#endif
>>
>>   /* Lookup the address for this symbol. Returns 0 if not found. */
>>   unsigned long kallsyms_lookup_name(const char *name)
>> @@ -195,7 +205,7 @@ unsigned long kallsyms_lookup_name(const char *name)
>>                  if (strcmp(namebuf, name) == 0)
>>                          return kallsyms_sym_address(i);
>>
>> -               if (cleanup_symbol_name(namebuf) && strcmp(namebuf, name) == 0)
>> +               if (cleanup_symbol_name_thinlto(namebuf) && strcmp(namebuf, name) == 0)
>>                          return kallsyms_sym_address(i);
>>          }
>>          return module_kallsyms_lookup_name(name);
> 
> 
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/08a2e179-3f5f-639e-946f-54cd07ae12fa%40kernel.org.
