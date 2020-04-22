Return-Path: <clang-built-linux+bncBCG6FGHT7ALRBWNDQH2QKGQE5F4MWAY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x240.google.com (mail-lj1-x240.google.com [IPv6:2a00:1450:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id CDF171B46FA
	for <lists+clang-built-linux@lfdr.de>; Wed, 22 Apr 2020 16:16:57 +0200 (CEST)
Received: by mail-lj1-x240.google.com with SMTP id 82sf396814ljf.22
        for <lists+clang-built-linux@lfdr.de>; Wed, 22 Apr 2020 07:16:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587565017; cv=pass;
        d=google.com; s=arc-20160816;
        b=v5B4KKUsD3qDl6xhubpI9LtndM8Tyf/V2NXlpyZzJjNBitUHTzpchoveiKFbiKShzj
         tDu4V2MxDtcbdNbbIE08nZf9XagovjE0rSs+N0CqEvuzuVE+zc8unzyfgBe7RppRcWrU
         kz5goeGyrlyCjwIRcgbOXE5iJAME4NKpnJ05C+ZjYO0lVBtMMC/iqlAPCLCPHsjeHcal
         /cuTTspQuMU3xrOpFWN/U36OK3s24C9IJlHpw4DGVHyjBM2WDjbPJlj8YIktBrTGN7x5
         NFEtPG2Yg8DJHpxuwQs1hJ+1KVPN71QKOvWCsic7TQvSllWIOKQAze5TgHjyOzPO9bBd
         TL8g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=OhnL7ZAe9EhHYL1hN/aGejpw/YGrrg9LTShrAf5SOuU=;
        b=VPS4tF501fg314wLQZegn3rcv6QV880zRa+c6gY97p4qRvqTUltlF3wrtEG5DEq0dW
         lp0T3GokA4UsChX4pZcc1B9axVoLgMT6XabciG5y/mbEdBnEJni96AQECo2k/EOXhKIc
         YESZN3mBRoFGydgAilbclZVqgrdjnjJu11Sg0z4og7uSz9mr44oXXmx+Ybm1mngtk+XE
         Kfh3EQ1wSdPKW6kbSCvv05jCp5Fwk78UXm+0b62zjLqiSlJmzScX7f3DE0vkCrY/mFMZ
         Edkmh4J473txinPCnjgEZZmRxBULTbgdP4KJq4bgweSftVk0Sr9IJQKp7LJtwlV5xowx
         jAbg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of mliska@suse.cz designates 195.135.220.15 as permitted sender) smtp.mailfrom=mliska@suse.cz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=OhnL7ZAe9EhHYL1hN/aGejpw/YGrrg9LTShrAf5SOuU=;
        b=gOuxywEdr1/nV3+BtrsDEKC81812vkJWpnV5aQQxma6C+0BxTUIKNKw3tehwd7V1Oe
         ku3PkTHzeB94BtRGtuGYItM0Hl6T0JOiihcYPjg1xCf1GjUsxh54NEC7of9+lfa64EUi
         Jtdgo3GByuEI2srtEm9lk+1W3N+iUq4MnSqoayHppsGkciW/jyyxu4G19XDmfhKk/N3S
         7EtyJFYn9QmdS1G4TyFsw42R3oBFf6Fcb8oftiDoeU45SZTvlvT0fXjhf8BG/6Vzxijz
         lId4jRpT+1Px6VUVYg+QCnsEfq2c94E0Mex0TdRYJn4S/JV4sdOKIhmJNvg7Xbw9YdHr
         QaSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=OhnL7ZAe9EhHYL1hN/aGejpw/YGrrg9LTShrAf5SOuU=;
        b=IhXHQ2laboR4C+e6TdQK4TJC76swTeoB9re5Oppir9PBOro3DtiJ6pApmWKimXp80d
         NBi8cRYXqnuwFUG7NC0DnlpHmP7LT7IyhlUwqfH5E3JXImndAkTTfXjqZH265OgtN/vs
         gv1WrlkNTIyTSfOjPtxIUg7NCHmVk4KFLQSS/69G/OoD64iLt9YZER7lTdikc0AZJkpR
         9EziCsDJqETvpnCLjqn+v8k9FmpzUBvYDSNGwHfEih8n8lD3FEhZv9txL1scDEnxTrcV
         Z99I2I23SMMug4OVAvQ3HRxBnFBVOypcLWK6xLbgohDCudTmBZEJ1BmymUPSitQMIQZ4
         ZWRw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuYBTJj0I/X0ccn1x/oGkQ9MRy7dkUnmNCI8pvW/NFWlOTXaWyWg
	16l0yRhKCdMLtfHPj5sSSjU=
X-Google-Smtp-Source: APiQypIyPhLHEQaXpxI+uIIKS5/m6EMJ8P5j5nH6vz4V4geiWqLmqTOxIN8s8Oqg8Yr8fgICTcgb9Q==
X-Received: by 2002:a19:c14e:: with SMTP id r75mr17232259lff.62.1587565017295;
        Wed, 22 Apr 2020 07:16:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:b883:: with SMTP id r3ls598950ljp.2.gmail; Wed, 22 Apr
 2020 07:16:56 -0700 (PDT)
X-Received: by 2002:a2e:b0d4:: with SMTP id g20mr16726877ljl.18.1587565016674;
        Wed, 22 Apr 2020 07:16:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587565016; cv=none;
        d=google.com; s=arc-20160816;
        b=jDlV95XElLpBVrxaL9lZh/39m57dJ+9Do2sx1Kfy+6dasAUDnuurSCJnbhJug4a9yr
         guJKVdoaJAwkaltuMrDIK1IlM8vsJ/HujYPJMukk4IZNZVWSgugc5n0CEzTKvrqJmlkX
         q0dNuPiKkDI4hQgX06DP2jul5n5po5sWrpXQcDa5Wrojw32I5FjApUTZGy8tf30BGR6m
         GMS6bWzcO0heoZxFnwrom0ydp4nRmyBcb7B2tHnTIgfUtODZbckgo4gtyBuz1RH8QT6e
         yULBt+qU6Oyv7FKpvkzca9XDYv8J+fsWEZ/U58ga/KFSalxUVPn4GhA5RkEthHcG/kkd
         yw9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=dpk6DwADuC9GGZXNf4vDkuxSq/4VK2Z9DdSJM2OsUFE=;
        b=Hq4zZJrw2b0KUT5q4uk0kijUpE1x76w7L3b/GPPHVzSFPxhLgnm5SkT+YJa2aUyRnn
         9sq59GnMS5+aOM3RzFY8skEEJtzmzKqGeAtu06aIUIbh/UE8nA3t1sxUqzvkbartJlHk
         ttLa32/6i97Vw48DlWX5W9fyF9/V3qMchJGl1xtX8520R2cMZpm21zzDGhPBQ43Cyslz
         p9oUusWMeXr1bNhyfveUe0JvtxFacRo9tJGrZcGul8j3xMoXX3Cvd59NkXHf195L0a+1
         PmiN3mUeYhFTAgfhcnRm7UF1jlWX+l0JpSTFWF1i2BocW/s2X6wn95FmIRpuU1VMC94I
         gwWQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of mliska@suse.cz designates 195.135.220.15 as permitted sender) smtp.mailfrom=mliska@suse.cz
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id c16si435021ljk.5.2020.04.22.07.16.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 22 Apr 2020 07:16:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of mliska@suse.cz designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
	by mx2.suse.de (Postfix) with ESMTP id 83D49ACF1;
	Wed, 22 Apr 2020 14:16:54 +0000 (UTC)
Subject: Re: [PATCH v2] x86: fix early boot crash on gcc-10
To: Jakub Jelinek <jakub@redhat.com>, Borislav Petkov <bp@alien8.de>
Cc: Peter Zijlstra <peterz@infradead.org>,
 Nick Desaulniers <ndesaulniers@google.com>, Michael Matz <matz@suse.de>,
 Sergei Trofimovich <slyfox@gentoo.org>, LKML <linux-kernel@vger.kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
 "H. Peter Anvin" <hpa@zytor.com>, Andy Lutomirski <luto@kernel.org>,
 "maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>
References: <20200417085859.GU2424@tucnak> <20200417090909.GC7322@zn.tnic>
 <CAKwvOdnFXPBJsAUD++HtYS5JiR2KmX73M5GAUe-tvX-JYV7DaA@mail.gmail.com>
 <CAKwvOdmNwNwa6rMC27-QZq8VDrYdTQeQqss-bAwF1EMmnAHxdw@mail.gmail.com>
 <20200417190607.GY2424@tucnak>
 <CAKwvOdkkbWgWmNthq5KijCdtatM9PEAaCknaq8US9w4qaDuwug@mail.gmail.com>
 <alpine.LSU.2.21.2004201401120.11688@wotan.suse.de>
 <20200422102309.GA26846@zn.tnic>
 <20200422114007.GC20730@hirez.programming.kicks-ass.net>
 <20200422134924.GB26846@zn.tnic> <20200422135531.GM2424@tucnak>
From: =?UTF-8?Q?Martin_Li=c5=a1ka?= <mliska@suse.cz>
Message-ID: <20a91f2e-0f25-8dba-e441-3233cc1ef398@suse.cz>
Date: Wed, 22 Apr 2020 16:16:53 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200422135531.GM2424@tucnak>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: mliska@suse.cz
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of mliska@suse.cz designates 195.135.220.15 as permitted
 sender) smtp.mailfrom=mliska@suse.cz
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

On 4/22/20 3:55 PM, Jakub Jelinek wrote:
> On Wed, Apr 22, 2020 at 03:49:24PM +0200, Borislav Petkov wrote:
>> On Wed, Apr 22, 2020 at 01:40:07PM +0200, Peter Zijlstra wrote:
>>> You haz a whitespace issue there.
>>
>> Fixed.
>>
>>> Also, can we get this in writing, signed in blood, from the various
>>> compiler teams ;-)
>>
>> Yah, I wouldn't want to go fix this again in gcc11 or so. That's why I
>> wanted the explicit marking but let's try this first - it is too simple
>> to pass over without having tested it.
> 
> If virtual blood is enough, AFAIK GCC has never tried to accept volatile
> inline asm (asm ("") is such; non-volatile asm such as int x; asm ("" : "=r" (x));
> could be e.g. dead code eliminated) in the statements between function call and
> return when deciding about what function can be tail-called or can use
> tail-recursion and there are no plans to change that.
> 
> 	Jakub
> 
> 
> 

One possible solution can be usage of a GCC pragma that will disable the tail-call optimization:

$ cat tail.c
int foo(int);

#pragma GCC push_options
#pragma GCC optimize("-fno-optimize-sibling-calls")
int baz(int a)
{
   int r = foo(a);
   return r;
}
#pragma GCC pop_options

I'm not sure if clang provides something similar (the -foptimize-sibling-calls option
is supported as well).

And as I talked to Boris, I would recommend to come up with a "configure" check
that a compiler does not optimize the key code sequence:

$ cat asm-detect.c
int foo(int a);
int bar(int a)
{
   int r = foo(a);
   asm ("");
   return r;
}

$ gcc -O2 -c asm-detect.c -S -o/dev/stdout | grep jmp
[no output]

Martin

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20a91f2e-0f25-8dba-e441-3233cc1ef398%40suse.cz.
