Return-Path: <clang-built-linux+bncBDU475XUS4GBBFME776AKGQESF55FRA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x437.google.com (mail-wr1-x437.google.com [IPv6:2a00:1450:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 60DE82A2608
	for <lists+clang-built-linux@lfdr.de>; Mon,  2 Nov 2020 09:23:50 +0100 (CET)
Received: by mail-wr1-x437.google.com with SMTP id 31sf6111196wrg.12
        for <lists+clang-built-linux@lfdr.de>; Mon, 02 Nov 2020 00:23:50 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604305430; cv=pass;
        d=google.com; s=arc-20160816;
        b=jzxifdHgP0w+e/KOBXLOMVtiWhwdIo311a9pXMDde9eBtfAl86HOOlkd12+mUPE8nw
         N/8AxAx6Zw7KhoK75Ss+RxIS+qwDSI+q+I4LSVYA9Ok31fJeXiuuFRejg89K11p9gx/v
         jMubhR8YId2GwWvatff4Z1lKUNo38kW+wFkbnfJY5APLtl/iQnIR4WyYnZRbiljVXL9E
         R4LAcjIVgJWdc9Lm57n68bF0N2PA8C4EVJ2wVYDKZuopxXH/b47DURV05WHkx2/Ct51a
         7usFRdzyfIa4bBXq/AmI9C/S2Nemr8QsU6E+O6cHUoBm5XmLAf8+PiYGx9uJqcgPfwkp
         BeoA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=6Jcyd8E/RrNNi9hYJnRhyFcddftoI6JolU8AouwZMVc=;
        b=RM5herO4yIO+9vnHgI+eYXtVaMv555Aex/uG8S9phjOZeMGG1MPLvS7S2RG/U/AO4Y
         EIBX5BEa15oP8y+lCLmirNfplDOw9F8udx5g/ut9RU2G8n415+fWmwTe3UCfqSvLcdfM
         r2eYE3Z9rpdCgeXXmLeR82nNDNmKZp7wB0cYjkNwgsiJv533xhz2gNz6eAql/lDYTHYr
         AdXseZGi/F8fnBBRPnTQV/ECXNPXDomuOi2ilG4mXFOW3wOfjIyJ+/xa4vUArrlHkLbS
         2h8Kuw5D76ju8jm7y0IRyoi5adgeH0+keP24Bc7tT+vD3LMn2v+A1blLCNplTDv7tbc5
         Bu5Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of jirislaby@gmail.com designates 209.85.208.65 as permitted sender) smtp.mailfrom=jirislaby@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6Jcyd8E/RrNNi9hYJnRhyFcddftoI6JolU8AouwZMVc=;
        b=Cy6zoPQApHBcvJgBa2VCg8siJ7WnJVbpfXHWsJ7AnR7tKU5aQ197+k4JccZ9sqKnc4
         alg7DgGwmPC9uiKibts3GnvsW9ZbceyzyklboRQdgv7W/vKb04LOzBMISizhyZgJXEEG
         3rWfFyOzmrgN+YUqk/N7L0hZGi122uEsN0JZ2NElFgO7tY6trh0jb3Qdk3cD8zLnjfTJ
         Q3ITn808P/vozprA5gcLBKKQfZ2W9RKyJOFCFJL5pOBhI43EHvMFJne8IgXlStfvPKVX
         KsxclGvZuS46gl/WZXo2PfZZwF6ni9IIDRJOqTHWkjbfmk1pItQFKdjzrva2icd9/F11
         TqtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6Jcyd8E/RrNNi9hYJnRhyFcddftoI6JolU8AouwZMVc=;
        b=BXQiW2kyVYLtVmhRrCzkTRM3lN0eWg1aGne+YudCNApoqLxWONiaQisH1UQKT2MDZn
         pjjVpNoGOOCcO0vo7qD6jQMOYxNhjRNv1/X9mM28H7UbZwrmCKmAuut01x31YENNw/Cp
         xU0jO3zgBuDTGW7oAEImphIxQzZyrJNYtTmuKy37GkP7LdUIYhSPVyJTotkCz4lZQO7N
         p6TlW3eLplGU7Y/bRa1eQLh32DrHXDknnceLfUcn5R1UrBbGJMJ3KblJGWfr/Zs68BYq
         yMPPp84d/IZg6qFPBBx5eQCqMYipLxfVORfSsI4UY4HlcudwQwXs1R4+D4REutY7vuI1
         FOkg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5316xoQqnhBOtovFyajPCK/YQKl+BIfL49TPOP16ItCeghSZX58y
	AE2ILfoSd3QorQhIaQGdpiU=
X-Google-Smtp-Source: ABdhPJx++16NL9lyenyXdngtJ1I/Ih5LCKLj39jsJmoCWpUFaq1qYMaFtPjEfRLUwVR9nut0w3aOtw==
X-Received: by 2002:adf:cd81:: with SMTP id q1mr19718827wrj.410.1604305430139;
        Mon, 02 Nov 2020 00:23:50 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:f00f:: with SMTP id j15ls6304573wro.2.gmail; Mon, 02 Nov
 2020 00:23:49 -0800 (PST)
X-Received: by 2002:adf:cd82:: with SMTP id q2mr19640175wrj.118.1604305429297;
        Mon, 02 Nov 2020 00:23:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604305429; cv=none;
        d=google.com; s=arc-20160816;
        b=MFt6FmynedfURTd5TJWdS4rYG6H3PZ1nRwWDgCj2RP7BgZ9wO9Um+doLeJt7gvQsNU
         7Qe0x/mJNseHai+iBZFRp6D5tJ71OUH5c9z0OdoX8tLnrptCMUcB3/DyY99Etjpcvvbb
         sLvnGj6/cQKvj4YH5iMMmiisvgHLWqyxO9RNTNIU3sbVkj4Huk8jdKndtKijBXXn4EZE
         ptw4Lcl5m/YWk+ursX4HziYqr7YXnutwmUsXEs0IAncoup5bBxymK/abwM92XsN3Q86u
         cJ9EeSohxYqsdSr7auuYxCRml+hxsqn8vvRhWrj0FRdNszVhlWzcc1tuCJRGrnaEe/kX
         bdTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=+TZs0TcvSWLBHOqopWkTRDgLTMK1vu9BumbKPDaVCEo=;
        b=icHucDyO7rhIi2LqEhgIpE0YbVlR9w0vVuK7a/lpnjU2JyimtncZKzbuhrgfHU63SH
         RtKNt9eWhkSUkzlH4B5ugssk3ZjRswQ39+pKDuiIYZux+SA7molCucDgTGryDhBPXEZ8
         qqKy+NLoOr8G0aCiYxE3UFqHsZ6BUb1bI2ebtfE4RD5ziZ2Ygx0SNIE6tPd7j72wdupo
         us2HaVYKDo65jibRo0pYXg0SlyAUMXouz51EHejV2cZ6/2m2KCw7CXlEme5YWRztuire
         jFf6FJMmx/mG5wtP/X8q0KY+1TEF737a82Es3dxQldwjQ598WQdcSQTu/tT92zVrNDUm
         v0qw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of jirislaby@gmail.com designates 209.85.208.65 as permitted sender) smtp.mailfrom=jirislaby@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail-ed1-f65.google.com (mail-ed1-f65.google.com. [209.85.208.65])
        by gmr-mx.google.com with ESMTPS id f198si201714wme.2.2020.11.02.00.23.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Nov 2020 00:23:49 -0800 (PST)
Received-SPF: pass (google.com: domain of jirislaby@gmail.com designates 209.85.208.65 as permitted sender) client-ip=209.85.208.65;
Received: by mail-ed1-f65.google.com with SMTP id l24so13444240edj.8
        for <clang-built-linux@googlegroups.com>; Mon, 02 Nov 2020 00:23:49 -0800 (PST)
X-Received: by 2002:a05:6402:742:: with SMTP id p2mr15667840edy.107.1604305428975;
        Mon, 02 Nov 2020 00:23:48 -0800 (PST)
Received: from ?IPv6:2a0b:e7c0:0:107::70f? ([2a0b:e7c0:0:107::70f])
        by smtp.gmail.com with ESMTPSA id y1sm10228448edj.76.2020.11.02.00.23.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Nov 2020 00:23:47 -0800 (PST)
Subject: Re: [PATCH] x86_64: Change .weak to SYM_FUNC_START_WEAK for
 arch/x86/lib/mem*_64.S
To: =?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>
Cc: X86 ML <x86@kernel.org>, Thomas Gleixner <tglx@linutronix.de>,
 Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Jian Cai <jiancai@google.com>, Sami Tolvanen <samitolvanen@google.com>,
 "# 3.4.x" <stable@vger.kernel.org>
References: <20201029180525.1797645-1-maskray@google.com>
 <a7d7b3d9-a902-346c-0b9c-d2364440e70b@kernel.org>
 <CAFP8O3JEOXJumFtPh4dwiYT2FHt+27epqnBUQ-2622Mm29trcQ@mail.gmail.com>
From: Jiri Slaby <jirislaby@kernel.org>
Message-ID: <aa69278b-c07b-99b7-ebb0-b1a0adb4efd5@kernel.org>
Date: Mon, 2 Nov 2020 09:23:47 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.3
MIME-Version: 1.0
In-Reply-To: <CAFP8O3JEOXJumFtPh4dwiYT2FHt+27epqnBUQ-2622Mm29trcQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: jirislaby@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of jirislaby@gmail.com designates 209.85.208.65 as
 permitted sender) smtp.mailfrom=jirislaby@gmail.com;       dmarc=fail (p=NONE
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

On 30. 10. 20, 17:08, F=C4=81ng-ru=C3=AC S=C3=B2ng wrote:
> On Fri, Oct 30, 2020 at 2:48 AM Jiri Slaby <jirislaby@kernel.org> wrote:
>>
>> On 29. 10. 20, 19:05, Fangrui Song wrote:
>>> Commit 393f203f5fd5 ("x86_64: kasan: add interceptors for
>>> memset/memmove/memcpy functions") added .weak directives to
>>> arch/x86/lib/mem*_64.S instead of changing the existing SYM_FUNC_START_=
*
>>> macros.
>>
>> There were no SYM_FUNC_START_* macros in 2015.
>=20
> include/linux/linkage.h had WEAK in 2015 and WEAK should have been
> used instead. Do I just need to fix the description?
>=20
>>> This can lead to the assembly snippet `.weak memcpy ... .globl
>>> memcpy`
>>
>> SYM_FUNC_START_LOCAL(memcpy)
>> does not add .globl, so I don't understand the rationale.
>=20
> There is no problem using
> .weak
> SYM_FUNC_START_LOCAL
> just looks suspicious so I changed it, too.

So the commit log doesn't correspond to your changes ;). You need to=20
update it and describe the difference from memmove/memset properly.

>>> which will produce a STB_WEAK memcpy with GNU as but STB_GLOBAL
>>> memcpy with LLVM's integrated assembler before LLVM 12. LLVM 12 (since
>>> https://reviews.llvm.org/D90108) will error on such an overridden symbo=
l
>>> binding.
>>>
>>> Use the appropriate SYM_FUNC_START_WEAK instead.
>>>
>>> Fixes: 393f203f5fd5 ("x86_64: kasan: add interceptors for memset/memmov=
e/memcpy functions")
>>> Reported-by: Sami Tolvanen <samitolvanen@google.com>
>>> Signed-off-by: Fangrui Song <maskray@google.com>
>>> Cc: <stable@vger.kernel.org>
>>> ---
>>>    arch/x86/lib/memcpy_64.S  | 4 +---
>>>    arch/x86/lib/memmove_64.S | 4 +---
>>>    arch/x86/lib/memset_64.S  | 4 +---
>>>    3 files changed, 3 insertions(+), 9 deletions(-)
>>>
>>> diff --git a/arch/x86/lib/memcpy_64.S b/arch/x86/lib/memcpy_64.S
>>> index 037faac46b0c..1e299ac73c86 100644
>>> --- a/arch/x86/lib/memcpy_64.S
>>> +++ b/arch/x86/lib/memcpy_64.S
>>> @@ -16,8 +16,6 @@
>>>     * to a jmp to memcpy_erms which does the REP; MOVSB mem copy.
>>>     */
>>>
>>> -.weak memcpy
>>> -
>>>    /*
>>>     * memcpy - Copy a memory block.
>>>     *
>>> @@ -30,7 +28,7 @@
>>>     * rax original destination
>>>     */
>>>    SYM_FUNC_START_ALIAS(__memcpy)
>>> -SYM_FUNC_START_LOCAL(memcpy)
>>> +SYM_FUNC_START_WEAK(memcpy)
>>>        ALTERNATIVE_2 "jmp memcpy_orig", "", X86_FEATURE_REP_GOOD, \
>>>                      "jmp memcpy_erms", X86_FEATURE_ERMS
>>>
>>> diff --git a/arch/x86/lib/memmove_64.S b/arch/x86/lib/memmove_64.S
>>> index 7ff00ea64e4f..41902fe8b859 100644
>>> --- a/arch/x86/lib/memmove_64.S
>>> +++ b/arch/x86/lib/memmove_64.S
>>> @@ -24,9 +24,7 @@
>>>     * Output:
>>>     * rax: dest
>>>     */
>>> -.weak memmove
>>> -
>>> -SYM_FUNC_START_ALIAS(memmove)
>>> +SYM_FUNC_START_WEAK(memmove)
>>>    SYM_FUNC_START(__memmove)
>>>
>>>        mov %rdi, %rax
>>> diff --git a/arch/x86/lib/memset_64.S b/arch/x86/lib/memset_64.S
>>> index 9ff15ee404a4..0bfd26e4ca9e 100644
>>> --- a/arch/x86/lib/memset_64.S
>>> +++ b/arch/x86/lib/memset_64.S
>>> @@ -6,8 +6,6 @@
>>>    #include <asm/alternative-asm.h>
>>>    #include <asm/export.h>
>>>
>>> -.weak memset
>>> -
>>>    /*
>>>     * ISO C memset - set a memory block to a byte value. This function =
uses fast
>>>     * string to get better performance than the original function. The =
code is
>>> @@ -19,7 +17,7 @@
>>>     *
>>>     * rax   original destination
>>>     */
>>> -SYM_FUNC_START_ALIAS(memset)
>>> +SYM_FUNC_START_WEAK(memset)
>>>    SYM_FUNC_START(__memset)
>>>        /*
>>>         * Some CPUs support enhanced REP MOVSB/STOSB feature. It is rec=
ommended
>>>
>>
>>
>> --
>> js
>> suse labs
>=20
>=20
>=20


--=20
js

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/aa69278b-c07b-99b7-ebb0-b1a0adb4efd5%40kernel.org.
