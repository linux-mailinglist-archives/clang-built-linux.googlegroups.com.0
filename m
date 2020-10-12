Return-Path: <clang-built-linux+bncBCS5NQE5SUJBBQM6SP6AKGQEZOIOXGI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43f.google.com (mail-pf1-x43f.google.com [IPv6:2607:f8b0:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 31E8828C450
	for <lists+clang-built-linux@lfdr.de>; Mon, 12 Oct 2020 23:48:51 +0200 (CEST)
Received: by mail-pf1-x43f.google.com with SMTP id s12sf13455569pfu.11
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Oct 2020 14:48:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602539330; cv=pass;
        d=google.com; s=arc-20160816;
        b=BKqO7DrYxPuJeYF/BnspfCU/4Fk86j/wkNLqcVQtnG2yevh4DgsQaBchkj2THQeD7L
         vLiVxeyKDe2gYklAK0n0DnHxFIAUo8TNkYOwaGtp4T96YJ/brHbOVd+rQccaUryCJY1n
         IuEMs5xCOnVIQcTNyu6nXLQ0HLg/GaAzO4IjUFkxAaTtKe+Ec3+XD1ZEmPmQ5odvKsuP
         MLd+NKoSe7BR5rF3zBqzOtSAA7isTSpRNpN+tjuWihJF+LYYBhwzbd3gRAYy3hTELPwS
         20TofoZY+wterbLQCO19Lzv98GlDW40reRwd/Y0P//lrEPGPikgexFvXL1PCy+orWqYU
         iXMQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature:dkim-signature;
        bh=OH7HVaEaOScTdXICKpquKNvESXHSEaj3vlP0pLZHyzc=;
        b=lC0UE6NIv3kvfcexVBO/dfzMPDswMRV5Wn9N4FisiCG3VzFiSzcL0MWxryQ5oqUaNC
         EPFxSwn/LnQT+8dSjStHEPpCyYfxH14TXVJ/zTaTsFCg8jFHbSLf8nLuJm+C1yin2LRV
         qOK3uXeekcLK1XbWK4zUoyZsuRQtwsjcQXgNfNVvGm5ia9jbNIy2PnnXqD67BspNbm7r
         RA95yPZvhm5El2LaUo872qGVYAig0u5sT07W9lcVZGK05rWxbSRG2LxRzOZo72vbCZNf
         Op60dv2L8VwoswrGZEwTuWOEXu5Pgp1oYbtyoAnb1n6b0ydNocJqueotpmbpkoZ8WE9I
         /52w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LTRLFCNL;
       spf=pass (google.com: domain of ujjwalkumar0501@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=ujjwalkumar0501@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=OH7HVaEaOScTdXICKpquKNvESXHSEaj3vlP0pLZHyzc=;
        b=Kp/elN1ZmxJ/GrVnXXbWSQBblJpY1v+oLqA/gMMwJrV6UC52dsK4e4LnWh9aG00dqQ
         AuQk4XdB2AfFWrHwo5k5s9boF8UKYmvcRLPXihth0XPR7vq4GHtBzGkmrOVnXAvvk4eT
         qJEOM6rr/px+iGyXnU2AkXhJOxbcza3h4okcgWjeaMwa0QIPGTw5myvWVmkOQuBYNUVN
         NV+rZhbMetYMuqv+hVwAN4p1mPEcoq5FV5B3yT3qZaPanC1P/oXfwoHO5mWxqgxbqG4y
         VKyoD+Qw0MPn/UUv5btBUiXGb5MaOsYgPZTWAYzvQPD6oeL1MX5/FccqeYl80kk8yc9Z
         wq1A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=OH7HVaEaOScTdXICKpquKNvESXHSEaj3vlP0pLZHyzc=;
        b=ku9KMklAC0eDt0hQDYk0KCT+GuoWj39o1z76TjMwey6+tIZ4B7ngXgrETnPdZ25dXw
         FD4AnP3PZnp482OS5ulY95JS8kgK6CA9ph+vMzB30BDCvjY8qTmYXhyv1CJoqfZwtcr5
         ficExLKDDBTnOYY5I7L0f1/i3+cakZcaF24dpMkSio3eoMx1yZ0H0jAl0rTTVdzUFst3
         RgYOQVFvxrrOKPCJa6ADWwB9Q25YTSfi6/ByuihjCFIfr4obPjjJ6ERrpaqOPK85CSSe
         ab9GxQWmBfklz8k0er8xJBkXSXenXnWVcxRvxCBxydyrL/kG7BjkjKRvibPMgBtAE59d
         XMVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=OH7HVaEaOScTdXICKpquKNvESXHSEaj3vlP0pLZHyzc=;
        b=KmmX3d1M73H2ygm4Oj7aiV2p66rijHpGMfguYgYKs3vH1egXJbRMt3eIG/zamJviNa
         I3lmtMhiGi6VBlShPPKheI/Yuy5hWPpZrv2ZoZmhucs8p/+Wl9fgD3I712mFPxAUvV//
         pEPL5SlFFHavVtiHsx70owa80hmK0ad3A7MpKy/5CCipiNuPBJhW+930Lg82sdpbCSYp
         NNU9nBk68llWP/URoydB6HlKFlU1fj3SVh7Tpn7ZT/JjkM2fmZaNVMjRMYQ2HfkEvpm7
         0YZDjCGGj5o4DmZmQaCNpxeoZyuCc2yZaWrfsxF8KuA0p8NJzjIuz/N9lPGYWeOz9mTb
         J91Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531t83kRFuQ5td18pI2kQ7cEP8hB2Y9AFkgPND2iD42wVBSpTaq2
	VEorZduxM2iDAphUIX/6Ne0=
X-Google-Smtp-Source: ABdhPJyNTPY9gXS1P/EbMjhWqW0Xs9z9360NIi2Mhj5/zJNvyzSJXt8L/jDz1jDgcnooYLIqMevAfg==
X-Received: by 2002:aa7:954b:0:b029:154:8ee9:e4d with SMTP id w11-20020aa7954b0000b02901548ee90e4dmr25898597pfq.11.1602539329923;
        Mon, 12 Oct 2020 14:48:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:f993:: with SMTP id cq19ls10064217pjb.0.gmail; Mon,
 12 Oct 2020 14:48:49 -0700 (PDT)
X-Received: by 2002:a17:90a:d341:: with SMTP id i1mr22612294pjx.18.1602539329395;
        Mon, 12 Oct 2020 14:48:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602539329; cv=none;
        d=google.com; s=arc-20160816;
        b=CAk9LKDWELHsmJxFgXWZTdqjnvq2V21oF/SE+FtbF9f6cd4djkGkivzj7kGMKrT7Rq
         iDfIbY4jP7I/KezX9acDyDu4JqyJGg8tNW/8bfzvHp6fEDGB+MAWpFiYlCz1UCSQwVtM
         YB8HAEgS3g9CkgcXyW+VM3XMz09FlLIkdy4k+sv9ADRcfjt6TBVMO4Suf0g9E/tbmzIO
         ILfFnl0zwVZy1f4PzE7UUbUjmFNSoJdban/L0ZzTqDXjm8j2ky8XZCDy3roqagjZJH3s
         6XPVH3/p3s9ZLUhZ6M2Nblzh3C3M4YoBOXbEXgSDCO0FvvJcgFs09znd5PpOehhqtEw3
         /NpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=5hpUBhYkynzWSO/MyOJOUvzRQxBbeKodFS5ENFGt1Cw=;
        b=u6TB8Prr88hYzyq3K4qDIVpX5SmUAVTCmYbuC4Z7TcqA2kTN8EAEA5Pw7ZXhQpk4Np
         5qscvjyhniTCJPxWRTMnHcGEG/3Bnk1IjmX+nouRGwR0p5V2/mjMxyxPQKFGY673XMdJ
         tTUrHQiNwjbf843wvUxZoPsw2eOnkJlINoFiYUh8MdZ1rU/Kom1E5KxjxbzL1GQrDyrc
         ydDGOAsC6XGYCZA4GgPimYPB7xHlwA+WKv5FTIbd5pNMsrbWl4LCmR/Xf9o0X87NNSbl
         HWP3JIozrrdZFqxa2MNqx44UxT94EwDnD0Ey/14Br4mLIVH1oPHzKztJWFrojW1i+Cgk
         QnXw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LTRLFCNL;
       spf=pass (google.com: domain of ujjwalkumar0501@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=ujjwalkumar0501@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id n8si1297418pfd.4.2020.10.12.14.48.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Oct 2020 14:48:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of ujjwalkumar0501@gmail.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Received: by mail-pg1-x543.google.com with SMTP id q21so4494231pgi.13
        for <clang-built-linux@googlegroups.com>; Mon, 12 Oct 2020 14:48:49 -0700 (PDT)
X-Received: by 2002:a17:90a:ec13:: with SMTP id l19mr22866654pjy.51.1602539328974;
        Mon, 12 Oct 2020 14:48:48 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:a404:280a:90bd:7a49:dcda:1fb1])
        by smtp.gmail.com with ESMTPSA id y80sm16836402pfb.144.2020.10.12.14.48.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Oct 2020 14:48:48 -0700 (PDT)
Subject: Re: [PATCH v2 2/2] kbuild: use interpreters to invoke scripts
To: Bernd Petrovitsch <bernd@petrovitsch.priv.at>
Cc: Lukas Bulwahn <lukas.bulwahn@gmail.com>,
 Masahiro Yamada <masahiroy@kernel.org>,
 Michal Marek <michal.lkml@markovi.net>,
 Andrew Morton <akpm@linux-foundation.org>, Kees Cook
 <keescook@chromium.org>, Nathan Chancellor <natechancellor@gmail.com>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kbuild@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-ia64@vger.kernel.org, clang-built-linux@googlegroups.com,
 linux-kernel-mentees@lists.linuxfoundation.org
References: <20201012170631.1241502-1-ujjwalkumar0501@gmail.com>
 <20201012170631.1241502-3-ujjwalkumar0501@gmail.com>
 <alpine.DEB.2.21.2010122019410.17866@felia>
 <b4fdc7c5-8edf-3895-69fc-1bcf9efb5d4a@gmail.com>
 <53b7257e-b192-07da-9dd3-06497ce826f0@petrovitsch.priv.at>
From: Ujjwal Kumar <ujjwalkumar0501@gmail.com>
Message-ID: <4969477f-8833-9b5e-6756-0d72fe59ef4d@gmail.com>
Date: Tue, 13 Oct 2020 03:18:39 +0530
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.3.1
MIME-Version: 1.0
In-Reply-To: <53b7257e-b192-07da-9dd3-06497ce826f0@petrovitsch.priv.at>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: ujjwalkumar0501@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=LTRLFCNL;       spf=pass
 (google.com: domain of ujjwalkumar0501@gmail.com designates
 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=ujjwalkumar0501@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On 13/10/20 12:24 am, Bernd Petrovitsch wrote:
> Hi all!
> 
>>>> diff --git a/arch/ia64/Makefile b/arch/ia64/Makefile
>>>> index 703b1c4f6d12..86d42a2d09cb 100644
>>>> --- a/arch/ia64/Makefile
>>>> +++ b/arch/ia64/Makefile
>>>> @@ -27,8 +27,8 @@ cflags-y	:= -pipe $(EXTRA) -ffixed-r13 -mfixed-range=f12-f15,f32-f127 \
>>>>  		   -falign-functions=32 -frename-registers -fno-optimize-sibling-calls
>>>>  KBUILD_CFLAGS_KERNEL := -mconstant-gp
>>>>
>>>> -GAS_STATUS	= $(shell $(srctree)/arch/ia64/scripts/check-gas "$(CC)" "$(OBJDUMP)")
>>>> -KBUILD_CPPFLAGS += $(shell $(srctree)/arch/ia64/scripts/toolchain-flags "$(CC)" "$(OBJDUMP)" "$(READELF)")
>>>> +GAS_STATUS	= $(shell $(CONFIG_SHELL) $(srctree)/arch/ia64/scripts/check-gas "$(CC)" "$(OBJDUMP)")
>>>> +KBUILD_CPPFLAGS += $(shell $(CONFIG_SHELL) $(srctree)/arch/ia64/scripts/toolchain-flags "$(CC)" "$(OBJDUMP)" "$(READELF)")
>>>
>>> Here is an instance of what Masahiro-san pointed out being wrong.
>>>
>>> Ujjwal, will you send a v3?
>>
>> Following is the quoted text from the reply mail from Masahiro
>>
>>>> -GAS_STATUS     = $(shell $(srctree)/arch/ia64/scripts/check-gas "$(CC)" "$(OBJDUMP)")
>>>> -KBUILD_CPPFLAGS += $(shell $(srctree)/arch/ia64/scripts/toolchain-flags "$(CC)" "$(OBJDUMP)" "$(READELF)")
>>>> +GAS_STATUS     = $($(CONFIG_SHELL) $(srctree)/arch/ia64/scripts/check-gas "$(CC)" "$(OBJDUMP)")
>>>> +KBUILD_CPPFLAGS += $($(CONFIG_SHELL) $(srctree)/arch/ia64/scripts/toolchain-flags "$(CC)" "$(OBJDUMP)" "$(READELF)")
>>>
>>>
>>>
>>> These changes look wrong to me.
>>>
>>> $($(CONFIG_SHELL)    ->  $(shell $(CONFIG_SHELL)
>>>
>>
>> From the above text, I understand as follows:
> 
> Did you actually *test* that (expecially) these lines work
> afterwards as good as before?

Yes, I did check my changes. TBH, I spent a considerable
amount of time in doing so (given that I'm new to the
community). And I explicitly mentioned the ones I couldn't
test in the cover letter.

But I'm afraid this particular change that Masahiro pointed
must have been overlooked by me (and possibly by others
involved in the process). Being the author of the patch I
accept my mistake.

Because this construct was new to me I read about it
thoroughly in the docs.
As soon as it was pointed out to me, I at once realised
that the change proposed by me was wrong (i didn't
have to look at the docs).

> 
>> That my proposed change:
>> $(shell $(src...)    ->  $($(CONFIG_SHELL) $(src...)
>>
>> is WRONG
> 
> Yup, as it's in a Makefile and that's a Makefile construct> 
>> and in the next line he suggested the required correction.
>> That being:
>> $($(CONFIG_SHELL)    ->  $(shell $(CONFIG_SHELL)
> 
> Such stuff should generally not be needed as the to-be-used
> shell can be set in Makefiles via a "SHELL = " assignment

It's not about setting shell but rather using it at required
place. The 'shell function' is meant to execute provided 
commands in an environment outside of make; and executing
commands in that environment is somewhat similar to running
commands on a terminal.
Invoking a script file without setting the x bits will give
a permission denied error.
Similar thing happens when 'shell function' tries to invoke
the provided script. So the task was simply to prepend the
$CONFIG_SHELL (or $SHELL whichever is configured; simple sh
would also suffice) with the script file in 'shell function'.

> (defaulting to /bin/sh - what else;-).
> Flags for the shell can BTW set with ".SHELLFLAGS = ".

setting flags might not be the solution either.

> 
> So please
> -) learn basic "Makefile" + "make" before brainlessly patching
>    a Makefile.
> -) actually testy your changes to make sure the patch didn't
>    broke anything
> -) and - last but not least - check if there isn't a shell
>    already set (and which).

btw, I do agree with your points.

> 
> MfG,
> 	Bernd
> 

If I said anything incorrect please correct me.


Thanks
Ujjwal Kumar

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/4969477f-8833-9b5e-6756-0d72fe59ef4d%40gmail.com.
