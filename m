Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBJFUSKEAMGQEST5DRSA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3b.google.com (mail-io1-xd3b.google.com [IPv6:2607:f8b0:4864:20::d3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F7AF3DC201
	for <lists+clang-built-linux@lfdr.de>; Sat, 31 Jul 2021 02:32:37 +0200 (CEST)
Received: by mail-io1-xd3b.google.com with SMTP id q137-20020a6b8e8f0000b02904bd1794d00esf6826692iod.7
        for <lists+clang-built-linux@lfdr.de>; Fri, 30 Jul 2021 17:32:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627691556; cv=pass;
        d=google.com; s=arc-20160816;
        b=eOuW/tDxgTYmOTi+wgZHDjrvtkJrmeeAnRrQkJsAM7pYJ7y3O9gTC+auKk7QfgN+jP
         K2+AeVmfdGIrJyDaBy2zLVFVJQjHJz6BphU8vz8KNVAt5tKfcvs/Kpy9nN7WvxvcJa0g
         AWPUQMc0QKs2gWK8iLSBlrSJZoJtcPDIeDInHoY4mG7moH6U8L1jNHkMiZ6HfCvwsE1o
         DJHxcwBjehbVcuSHyZOrnLK2ioy+Or9YoEu+wH2UsdCBIbp66HhxsDiKHcXqFBk32wq/
         t1ATRTvENCAbVjeOvQkO2sZHFkXfrKTac/mG99VmTYFXOktswumIH+n/lRoZrDj2SFAg
         DiYw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=1o/VqPKVY8I6kQdH9XQsvNFXOn/ZsAedhbVVaAjDv4g=;
        b=pyCrPSZh8D6tbDhOwmRjnLzK1xXxxCfBrRInp6gb7aXTYn5/JfarAegy9IXxCuGc3X
         cDUSld2NM6k9/hX/e/v5fZcpQpYldb+HszoGvTfPbj3XiH0At/+rHjp8RLN5MYW80rBg
         YKEsZopO64yiOHBJlaLQj94fpqGTt+oXQeaL9hjiiP4I7Ldqk0LxP00WF2hMSnAWKdi2
         NBW+05A7RqZVa06CtaOtcRWQHcVSYA8Qb6ytoGMB8cSgmpInw4GwbmjIOYDHiEBOinib
         jzCo8nNQFPEJRhOzeghkmAKGFL7zIJryCprDB0cXwwuq0TnTOLqKm60DFPdfLkLa+app
         kAdA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Fob9LrC7;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1o/VqPKVY8I6kQdH9XQsvNFXOn/ZsAedhbVVaAjDv4g=;
        b=XDuXqpYspA8USlXghy9qoNDoPBJEkYDtd0FG1XM76/xFcA3pcb/9jIbm+OZB3orpKz
         /6SH5Dk3GSBAWCuhGCXoWCvYxDZtdfx28VHAmP2wZEM6nBfQNLeqS075qD+XLn4MqKaa
         5MjYHzNApHJtiiIl8FH16CNHGxBb+nMkxyps00hA1DUOrS1fpkeeSv37hV5IBnOk0lBh
         N/2mHwla5X/NAC1yQ+T7pRUjpdsU7sxUW2w4QV1VrH3XtZGft9wclTxidqompGnHbCmU
         tNYP4EU/4lvW/JtiyMLXQcETSOBbomWtg4GM1xnOEXbOplAqVB3iJqVgt6oU619xw1ik
         tGFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1o/VqPKVY8I6kQdH9XQsvNFXOn/ZsAedhbVVaAjDv4g=;
        b=L3xMPsTqnxk4gCgK1xzwBoTje34cVsb2QC+tTCVjZ2kvNiqgho3ornrnPPIMvAp+3E
         i5vlUY+Ch9IjAjbUSiw3JxVOsSZIcxoxNHHyhrLPzqHlUU6o0GM/cTYOjuPnt0pyx4Zn
         NFS5VouAm9LwAsn4UcjWD4D1n3eNmquYnW31p8dVJyoVqjwfP8rJun5MllESxfxwR3vm
         4OjtE8MufCitanMD8qPWym+44hbeXRi+QlFO+N3APyFNhIaen4Y767Rpj4pMVh3SXoa9
         3KwLRLgxLI8J38ulGP6xNg1n0Off6Uc2HaArYn2C7t7Rhl8XO05nS7ICT4GhhcsVC++Y
         fxyg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533Dr1YhxbTKAj1sOEPxy0aE7c1jTiVddFxTFpmYxn+93gSOqXnu
	yxbdIDIvKmPG9LHJ1GVlFlQ=
X-Google-Smtp-Source: ABdhPJyx63Mzp7bez8F4jEwZVVr0gBXK/dNRnSwwIyJKU1khrWODjVj9MJWrodAF2L2dsViWaP5Nvw==
X-Received: by 2002:a02:cab9:: with SMTP id e25mr4123040jap.25.1627691556469;
        Fri, 30 Jul 2021 17:32:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:97c5:: with SMTP id k5ls380971ios.11.gmail; Fri, 30 Jul
 2021 17:32:36 -0700 (PDT)
X-Received: by 2002:a6b:490d:: with SMTP id u13mr4399531iob.176.1627691556088;
        Fri, 30 Jul 2021 17:32:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627691556; cv=none;
        d=google.com; s=arc-20160816;
        b=sjXTX4GTixUzZSrkRnmQ5v4Qav/ireX/Z3odsOe1J/Q6Tlf57p279NxXYiEXhh3VNI
         /uhxVmJnoUcy0k/qLbaMQDe8hNej8YF3L5h4GQXD/FoP0DVqclIHnQWoLLx+Spshbyoh
         pXCcQY0qAitP0ZY5U9nvVidatjCC0hCAmz4+PeVETrw7AvJxLu6DOZkCj5FH92M7cH6N
         lczQVp/vkURvdSs7mF7eiX9UYzjuiLBSdUXBKiRn6sgFEvGrMjv5+vcnXDuHk7hh1anh
         C8ItUBpep34uA/ZwbRV35wFnse0rEv14lNhlK2SoV31zFu88PyaRvGh7QRyIR7qFCFgY
         oLOg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=BfrLQHN2E9bM7oTxBZbgAR5WOEvY8Bj1JCo88Xnr2Pw=;
        b=eNAWV2DZSywrOXemId+ovtZiAD3ChqKjIRXxD8gCZQBJ47KjZVLPomEK/hEGLJFLZY
         hDhfRvDj0IxYOxxHUVqh1KjJ4plxC0GnbJPDMlaEfBkmCBBdabSvMUZX73OiyyKNydYQ
         91/mFmihqgROHPQ/t4q5DdTfrPOBGhOURmQSk9q/a5xyXj6qf/9QYeFPBtfo7vIZbX62
         41ddpWbqirgzoVmP7QzIBT+YkihipYoBpSCLAhtQl0qB0PXj8GvTuShwUPcl+HlBgd0V
         8nF+Y6aDw8alH2p88YKiDzUWpHfHMK9xAYnAOcW3sR08QM2Cjvhd2r8ClqHc5IwkepQt
         r0uw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Fob9LrC7;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q12si208569iog.2.2021.07.30.17.32.35
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Jul 2021 17:32:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 7E0A260FE7;
	Sat, 31 Jul 2021 00:32:34 +0000 (UTC)
Subject: Re: [PATCH] vmlinux.lds.h: Handle clang's module.{c,d}tor sections
To: Fangrui Song <maskray@google.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
 Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@arndb.de>,
 Marco Elver <elver@google.com>, linux-arch@vger.kernel.org,
 linux-kernel@vger.kernel.org, kasan-dev@googlegroups.com,
 clang-built-linux@googlegroups.com, stable@vger.kernel.org
References: <20210730223815.1382706-1-nathan@kernel.org>
 <CAKwvOdnJ9VMZfZrZprD6k0oWxVJVSNePUM7fbzFTJygXfO24Pw@mail.gmail.com>
 <20210730225936.ce3hcjdg2sptvbh7@google.com>
From: Nathan Chancellor <nathan@kernel.org>
Message-ID: <baf67422-8662-02f2-0bbf-6afb141875af@kernel.org>
Date: Fri, 30 Jul 2021 17:32:33 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <20210730225936.ce3hcjdg2sptvbh7@google.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=Fob9LrC7;       spf=pass
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

On 7/30/2021 3:59 PM, Fangrui Song wrote:
> On 2021-07-30, Nick Desaulniers wrote:
>> On Fri, Jul 30, 2021 at 3:38 PM Nathan Chancellor <nathan@kernel.org>=20
>> wrote:
>>>
>>> A recent change in LLVM causes module_{c,d}tor sections to appear when
>>> CONFIG_K{A,C}SAN are enabled, which results in orphan section warnings
>>> because these are not handled anywhere:
>>>
>>> ld.lld: warning:=20
>>> arch/x86/pci/built-in.a(legacy.o):(.text.asan.module_ctor) is being=20
>>> placed in '.text.asan.module_ctor'
>>> ld.lld: warning:=20
>>> arch/x86/pci/built-in.a(legacy.o):(.text.asan.module_dtor) is being=20
>>> placed in '.text.asan.module_dtor'
>>> ld.lld: warning:=20
>>> arch/x86/pci/built-in.a(legacy.o):(.text.tsan.module_ctor) is being=20
>>> placed in '.text.tsan.module_ctor'
>>
>> ^ .text.tsan.*
>=20
> I was wondering why the orphan section warning only arose recently.
> Now I see: the function asan.module_ctor has the SHF_GNU_RETAIN flag, so
> it is in a separate section even with -fno-function-sections (default).

Thanks for the explanation, I will add this to the commit message.

> It seems that with -ffunction-sections the issue should have been caught
> much earlier.
>=20
>>>
>>> Place them in the TEXT_TEXT section so that these technologies continue
>>> to work with the newer compiler versions. All of the KASAN and KCSAN
>>> KUnit tests continue to pass after this change.
>>>
>>> Cc: stable@vger.kernel.org
>>> Link: https://github.com/ClangBuiltLinux/linux/issues/1432
>>> Link:=20
>>> https://github.com/llvm/llvm-project/commit/7b789562244ee941b7bf2cefeb3=
fc08a59a01865=20
>>>
>>> Signed-off-by: Nathan Chancellor <nathan@kernel.org>
>>> ---
>>> =C2=A0include/asm-generic/vmlinux.lds.h | 1 +
>>> =C2=A01 file changed, 1 insertion(+)
>>>
>>> diff --git a/include/asm-generic/vmlinux.lds.h=20
>>> b/include/asm-generic/vmlinux.lds.h
>>> index 17325416e2de..3b79b1e76556 100644
>>> --- a/include/asm-generic/vmlinux.lds.h
>>> +++ b/include/asm-generic/vmlinux.lds.h
>>> @@ -586,6 +586,7 @@
>>>                =20
>>> NOINSTR_TEXT=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 \
>>>                =20
>>> *(.text..refcount)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 \
>>>                =20
>>> *(.ref.text)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 \
>>> +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 *(.text.asan=20
>>> .text.asan.*)=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 \
>>
>> Will this match .text.tsan.module_ctor?

No, I forgot to test CONFIG_KCSAN with this version, rather than the=20
prior one I had on GitHub so I will send v2 shortly.

> asan.module_ctor is the only function AddressSanitizer synthesizes in=20
> the instrumented translation unit.
> There is no function called "asan".
>=20
> (Even if a function "asan" exists due to -ffunction-sections
> -funique-section-names, TEXT_MAIN will match .text.asan, so the
> .text.asan pattern will match nothing.)

Sounds good, I will update it to remove the .text.asan and replace it=20
with .text.tsan.*

>> Do we want to add these conditionally on
>> CONFIG_KASAN_GENERIC/CONFIG_KCSAN like we do for SANITIZER_DISCARDS?

I do not think there is a point in doing so but I can if others feel=20
strongly.

Thank you both for the comments for the comments!

Cheers,
Nathan

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/baf67422-8662-02f2-0bbf-6afb141875af%40kernel.org.
