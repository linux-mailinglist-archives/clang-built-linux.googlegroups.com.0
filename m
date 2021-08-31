Return-Path: <clang-built-linux+bncBC7M5BFO7YCRBSULXKEQMGQEU34XOMA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93a.google.com (mail-ua1-x93a.google.com [IPv6:2607:f8b0:4864:20::93a])
	by mail.lfdr.de (Postfix) with ESMTPS id 176613FCDB9
	for <lists+clang-built-linux@lfdr.de>; Tue, 31 Aug 2021 21:41:00 +0200 (CEST)
Received: by mail-ua1-x93a.google.com with SMTP id 99-20020a9f266c000000b002b153fb0d7csf37753uag.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 31 Aug 2021 12:41:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630438859; cv=pass;
        d=google.com; s=arc-20160816;
        b=bEYDHZluiepi3O4hcNEjDqelxEtEKpU73Ae/T0WyeeDObxZHhBnz3w1L704uPLs0x2
         h3VGyq8WEfzTTM8D0Yy7vDW2wka4gul9b4IaRifQUBs4BUgavNHEUHMfZA6Nzd0kt6tv
         C02uiITklz5JRhOx2/D6e5C3kHcIFA8IK1DMeREQES5vSHBdBEvRLFoU1mHdGWUew6fL
         ESLtYtSfYARvPuhF3BU2fziLx6a01DzcRinAWeI7nxJ1nc0ctL+TjRK/bsKAlXku1mc+
         oEYVT1kEa8pQOJafTgOoYNGBhhGYC54/9R8qLhm08mqVK0Lh1w6fHhhzGrcNRv5Kf+LL
         L+Bw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:subject:from:references:cc
         :to:sender:dkim-signature;
        bh=SQmZOLrREMW1ojzShv7eZndIB9+vk4QGnmvNlqGs51M=;
        b=pJTgKQj8rA+wFtg9HFeO9LOG3yL02/7kdz8NBxhrDI7SGULsmkqhr7ts60QkXyBHQw
         0fN5412X5CX3Qey0IHv2nTy8sJgnvs+ve9ps3NTczVbS85I+B0xSWywuyfCFCKginyJT
         zfCp+Y8g2vz/6bA8tjPwvYGeBagPDhb9ji1yy/HfdTdohW32Tt1vXC+IIXoc8TT+Uf2i
         yw1I5CV3BCBsM/Orgh8zavRu5MSdvhWSFTKHDnKo8NOdX8x4Vni5z90B77+rtNkNv5z6
         W0GKotSW4397JaYca2x/344DcRSuG+o9Jqd7R87q9LkIHzJovtk3Kq0hBjHqRsAR506h
         USfw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mDsk+f1J;
       spf=pass (google.com: domain of groeck7@gmail.com designates 2607:f8b0:4864:20::22f as permitted sender) smtp.mailfrom=groeck7@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:to:cc:references:from:subject:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=SQmZOLrREMW1ojzShv7eZndIB9+vk4QGnmvNlqGs51M=;
        b=ogG09XkPdq2fzmmkDK07MEV4NBMT8aHaMr0xDnPFt6+wYpddIslNOhWok9zbsocjiS
         AYuT5FnEyIKlY2x3A8UmBVDMIuzwpQrv8PhwBaRDqTg+AkcPEX8QYuLcF+suR9Hyk+de
         AoSnHeH1wbNkJEHVUMdV/PfK78Of9nRKQzTWxl3mRxswMETmGOCpi89B9u9rCCOMXqWw
         6njFnZbPl7WB9ErAfzjchgxPz8OxefvBO6YsnjwVP7z+Z3okyPAmzkm2E3LIppn7CerU
         0mQTeIVSTTGAv6fuizwBNd4qV6ppPy96Uh9ptYmZjDtxDkBTUjg6+pAaDkzxcKNFT9E+
         MR/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:to:cc:references:from:subject:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=SQmZOLrREMW1ojzShv7eZndIB9+vk4QGnmvNlqGs51M=;
        b=PjK/OUOWbqpNV4ZFl+XtPeNdJT4JwZ+CWoMIaoy9yS+pFemP+ARXFSDfIKgbvVYZpT
         b0Zz2LJQzgeQs7C6I70yrtQHFJzDdPa7sN6UDemcyt6iE522hZeRZO66qNwPQbC0oCSA
         4/f7GXmki1UxAeDSkyHh5NRW0/AS/4CFtu7tXx2LOMGu7r0K91U9OghxPjmyyGDKxW3T
         iFrjB/UnIJj2vitsTRGSjxttIJ2KgIDGpRY9/GHVcBr07xmSpodaadwVE8caktgupAkH
         8SoEgwdgJ/HJNNmAg4tMbD72pe+hkNddhpYUht8Pfso+2l4XwaSYzBDy3cP1eZCw4OEi
         s9kQ==
X-Gm-Message-State: AOAM533MzFhpN0Y7gnl8G5zy3VR+Iv7QCwr0cKDP1H9ReaRTe7/DcJ6d
	rSqD0q+245GVfr3JozsrZtY=
X-Google-Smtp-Source: ABdhPJzpX6dldVc4YOD5Uz8+BuWfgl3vQ/hFzDDML5ZefrPx4sfAVuoWcD/ctULeYc+SxXxeW5yTnQ==
X-Received: by 2002:a67:e911:: with SMTP id c17mr20658480vso.13.1630438858929;
        Tue, 31 Aug 2021 12:40:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac5:cd47:: with SMTP id n7ls224148vkm.5.gmail; Tue, 31 Aug
 2021 12:40:58 -0700 (PDT)
X-Received: by 2002:a1f:2055:: with SMTP id g82mr2120660vkg.11.1630438858385;
        Tue, 31 Aug 2021 12:40:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630438858; cv=none;
        d=google.com; s=arc-20160816;
        b=thLcOK5ILNfb6l8XQ66Z3qY6WrQ2Z3HOVrbtPNm2MwfpdL0mMkKnZMOVY9I9BAz9dA
         d1MgGUDiF51pEg2hX6uADEWTfkZrAj4/eC9Dn5R94aLOz1W2bTOxFjCF6jtHAD1VsB2c
         kwfmSh7b7nAAbtky7+12gRoRscZWlwQY8VfxuRmzcOfzv01ewBTimYYclGj0zzoKKZ3l
         CWzwIwVmiFqDcsOPmYrgxBP3tNcz35iToV0XyifAqXheRutGUy4NE0PW3XcIxapBsVkD
         j15Zbj8dmCjzYYFwcZuO87aI6t3149kM1HflXsiGa3+iyGTj7wvMFZ1+tIHXOqrS3Ltn
         gJqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:subject:from:references:cc:to:sender
         :dkim-signature;
        bh=qvcMN2KJSm0Glt1zzqTqjBfpcMvYb7sh/Q3A1fId/Sg=;
        b=SJTxM0oT8MDnOEt9LA4XLa8mbjUKe9K0rizdgcjqx5gbN1lN3DGmsfRjR+DBF4lHSH
         tXlmVZWZHxCI5H2nW9T0N2gnujLhlOFg5Y0kKAqBLyJFCHhnUag5YGFAx0jnC6brRcpR
         iyfMfNldZtUwhiH6eb/ibvjdce76Gpdc5x1+nX5ExZC60aDx2Fg5+i5OBYg5uUJv7vRb
         ROQITZ8S7+1Cs/rUqJ0Hca4veAGmlG/Lgu8L9oSwew+KE+y7wayV747YJQTtkvCKxZN8
         VcvuvfazQ8udqgsK1vfpqxq0F5UEz7FDxm3zh2x9jYe4bUkgEef/cFthcUesMpfJHRr3
         eq7A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mDsk+f1J;
       spf=pass (google.com: domain of groeck7@gmail.com designates 2607:f8b0:4864:20::22f as permitted sender) smtp.mailfrom=groeck7@gmail.com
Received: from mail-oi1-x22f.google.com (mail-oi1-x22f.google.com. [2607:f8b0:4864:20::22f])
        by gmr-mx.google.com with ESMTPS id m15si1386730uab.1.2021.08.31.12.40.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 31 Aug 2021 12:40:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of groeck7@gmail.com designates 2607:f8b0:4864:20::22f as permitted sender) client-ip=2607:f8b0:4864:20::22f;
Received: by mail-oi1-x22f.google.com with SMTP id 6so596011oiy.8
        for <clang-built-linux@googlegroups.com>; Tue, 31 Aug 2021 12:40:58 -0700 (PDT)
X-Received: by 2002:aca:e10b:: with SMTP id y11mr4436924oig.172.1630438857917;
        Tue, 31 Aug 2021 12:40:57 -0700 (PDT)
Received: from server.roeck-us.net ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
        by smtp.gmail.com with ESMTPSA id y24sm4191795oto.40.2021.08.31.12.40.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 31 Aug 2021 12:40:57 -0700 (PDT)
Sender: Guenter Roeck <groeck7@gmail.com>
To: Kees Cook <keescook@chromium.org>
Cc: linux-kernel@vger.kernel.org, Arnd Bergmann <arnd@arndb.de>,
 Masahiro Yamada <masahiroy@kernel.org>, linux-kbuild@vger.kernel.org,
 "Gustavo A . R . Silva" <gustavoars@kernel.org>,
 Rasmus Villemoes <linux@rasmusvillemoes.dk>,
 Keith Packard <keithp@keithp.com>, Dan Williams <dan.j.williams@intel.com>,
 Daniel Vetter <daniel.vetter@ffwll.ch>, clang-built-linux@googlegroups.com,
 linux-hardening@vger.kernel.org
References: <20210827163015.3141722-1-keescook@chromium.org>
 <20210827163015.3141722-5-keescook@chromium.org>
 <20210831043128.GA2749311@roeck-us.net> <202108311042.FFE1818D@keescook>
From: Guenter Roeck <linux@roeck-us.net>
Subject: Re: [PATCH v3 4/5] Makefile: Enable -Warray-bounds
Message-ID: <3ab153ec-2798-da4c-f7b1-81b0ac8b0c5b@roeck-us.net>
Date: Tue, 31 Aug 2021 12:40:53 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <202108311042.FFE1818D@keescook>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: linux@roeck-us.net
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=mDsk+f1J;       spf=pass
 (google.com: domain of groeck7@gmail.com designates 2607:f8b0:4864:20::22f as
 permitted sender) smtp.mailfrom=groeck7@gmail.com
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

Hi Kees,

On 8/31/21 10:46 AM, Kees Cook wrote:
> On Mon, Aug 30, 2021 at 09:31:28PM -0700, Guenter Roeck wrote:
>> On Fri, Aug 27, 2021 at 09:30:14AM -0700, Kees Cook wrote:
>>> With the recent fixes for flexible arrays and expanded FORTIFY_SOURCE
>>> coverage, it is now possible to enable -Warray-bounds. Since both
>>> GCC and Clang include -Warray-bounds in -Wall, we just need to stop
>>> disabling it.
>>>
>>> Cc: Arnd Bergmann <arnd@arndb.de>
>>> Cc: Masahiro Yamada <masahiroy@kernel.org>
>>> Cc: linux-kbuild@vger.kernel.org
>>> Co-developed-by: Gustavo A. R. Silva <gustavoars@kernel.org>
>>> Signed-off-by: Gustavo A. R. Silva <gustavoars@kernel.org>
>>> Signed-off-by: Kees Cook <keescook@chromium.org>
>>> ---
>>>   Makefile | 1 -
>>>   1 file changed, 1 deletion(-)
>>>
>>> diff --git a/Makefile b/Makefile
>>> index e4f5895badb5..8e7e73a642e2 100644
>>> --- a/Makefile
>>> +++ b/Makefile
>>> @@ -995,7 +995,6 @@ KBUILD_CFLAGS += $(call cc-disable-warning, stringop-truncation)
>>>   
>>>   # We'll want to enable this eventually, but it's not going away for 5.7 at least
>>>   KBUILD_CFLAGS += $(call cc-disable-warning, zero-length-bounds)
>>> -KBUILD_CFLAGS += $(call cc-disable-warning, array-bounds)
>>>   KBUILD_CFLAGS += $(call cc-disable-warning, stringop-overflow)
>>>   
>>
>> This patch causes 'alpha' builds to fail when trying to build an image with
>> gcc 11.2.
>>
>> In file included from include/linux/string.h:20,
>>                   from include/linux/bitmap.h:11,
>>                   from include/linux/cpumask.h:12,
>>                   from include/linux/smp.h:13,
>>                   from include/linux/lockdep.h:14,
>>                   from include/linux/spinlock.h:63,
>>                   from include/linux/mmzone.h:8,
>>                   from include/linux/gfp.h:6,
>>                   from include/linux/mm.h:10,
>>                   from include/linux/pagemap.h:8,
>>                   from arch/alpha/mm/init.c:10:
>> In function '__memset',
>>      inlined from '__bad_pagetable' at arch/alpha/mm/init.c:79:2:
>> arch/alpha/include/asm/string.h:37:32: error: '__builtin_memset' offset [0, 8191] is out of the bounds [0, 0] [-Werror=array-bounds]
>>     37 |                         return __builtin_memset(s, c, n);
>>        |                                ^~~~~~~~~~~~~~~~~~~~~~~~~
>> In function '__memset',
>>      inlined from '__bad_page' at arch/alpha/mm/init.c:86:2:
>> arch/alpha/include/asm/string.h:37:32: error: '__builtin_memset' offset [0, 8191] is out of the bounds [0, 0] [-Werror=array-bounds]
>>     37 |                         return __builtin_memset(s, c, n);
>>        |                                ^~~~~~~~~~~~~~~~~~~~~~~~~
>> In function '__memset',
>>      inlined from 'paging_init' at arch/alpha/mm/init.c:256:2:
>> arch/alpha/include/asm/string.h:37:32: error: '__builtin_memset' offset [0, 8191] is out of the bounds [0, 0] [-Werror=array-bounds]
>>     37 |                         return __builtin_memset(s, c, n);
>>
>> Seen in next-20210830.
> 
> Ah-ha, thanks for the report! I didn't see this in my builds -- what
> config target did you use for this?
> 

The configuration doesn't matter; it fails for me for all configurations,
including defconfig, alllnoconfig, and allmodconfig.
Key is to use gcc 11.2. The image builds just fine with gcc 9.4 and 10.3.

Guenter

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/3ab153ec-2798-da4c-f7b1-81b0ac8b0c5b%40roeck-us.net.
