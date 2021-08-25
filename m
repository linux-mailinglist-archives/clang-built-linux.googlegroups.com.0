Return-Path: <clang-built-linux+bncBDRPZAGFRAFBBQ4STGEQMGQETLGBC7A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23b.google.com (mail-lj1-x23b.google.com [IPv6:2a00:1450:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id 2796B3F7638
	for <lists+clang-built-linux@lfdr.de>; Wed, 25 Aug 2021 15:44:36 +0200 (CEST)
Received: by mail-lj1-x23b.google.com with SMTP id 192-20020a2e05c90000b02901b91e6a0ebasf8886868ljf.13
        for <lists+clang-built-linux@lfdr.de>; Wed, 25 Aug 2021 06:44:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629899075; cv=pass;
        d=google.com; s=arc-20160816;
        b=d0z9QU79cyOBX32iyMuJ+TV99I01SBh7/DENaYXbTIc+gxS4LMI7OU/6aV8/RqPtZI
         8GzscZXdZcBfDZi8v+aa0YGl8GDZwSYP8tzXcf6OPGYxWZYusWYo4FrNnmEVLuztEOPa
         ch+MaZbbIlUGDUotv6nOiMO0RlJdohikvWpXXNjZ6nj4CrZM7RmMpXcU363TfHv+iFYa
         LTt8E0AlrVyqRdyFvDhIUiGT0Xp1DF/xMH+8Uyg4R25PJUT4EbPkT9Yxf+vwxkmaRzA6
         K2zHGfmnq3KpAgXa/z9Y5RZSmbvb71iRu+nh+HyxaKPXBqYPeX7my2lTXi3Jyle06eJ4
         z5Fg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature:dkim-signature;
        bh=ir2xlsLvwkeZx9FMivYVbWtyY2xy4oXCHEh/Wp+q7HY=;
        b=IZwkPR+adenvV/z7FOZ34aXbbLfiRvpGkVq1et0mJ3N31fN+/guKIKU6wrJ2j6hf6B
         KeyH4vPaGTkUyyQW6uwJsWQrBiEgbAclQPhvCplBhFuu8txUpTqjDHv8XMcsq2k4YZII
         Sz6Cm6zm9fXrWXbQeIq4b4b1shivZ5Dv7Odu4wQjRQQivpMa6QduZrwrlmnjcPTlazWt
         xtDQmCYIlD2KZYNkoAirTQW7QgBEwPnO2vVaHRARzi4swFT1BNhZJPOVV7upZ9yOyxe3
         jJuXTzZ7ktxFvlfFzwzx8HYG3Xknnt80vrgVhPmFodVWdq2nj3zo1GMkwVnwxh6bOiHQ
         dr/A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=keo1I2aU;
       spf=pass (google.com: domain of paskripkin@gmail.com designates 2a00:1450:4864:20::230 as permitted sender) smtp.mailfrom=paskripkin@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ir2xlsLvwkeZx9FMivYVbWtyY2xy4oXCHEh/Wp+q7HY=;
        b=Z3CddzjkdrpypXNGPm4If2q+U6CoPp9ymOxePV+enJuvCcW76eHT7jSUW7nB7bUMid
         Zlr/oD0643nbPaGnL6zwWI2heAJ9EZzsr4+1XJefRG6FRofVsVOfX0qk/U7Zmvb/pIGP
         B0t1GJyyLCvqaV686exkBibZmenNmYEg4Uad3nl3mi3rlEKdzETW9gPih3cW1VhVI4Xk
         y2tOFdVX7lpDIN6QVJbk8EQW09e9AawNhN7LydJIUuqSS5B/g0flYApVRfHnsSeh4JKA
         GYADI49xmztuOrCJqXnAc2XZWz7XWcUz+YKn5KBeqB2F3et8BNT2OTrExpDLXsRrCiux
         2VVg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ir2xlsLvwkeZx9FMivYVbWtyY2xy4oXCHEh/Wp+q7HY=;
        b=KtRgdsZBmLkSWykgIVtJpmfNaLAkGVaG181u/L6XSmq+JsowpBTlJs1U7/W9wlOcYa
         897iKG8gvbXIzeax5T+U7Vc4Z2iXwW9IaOsg0vkr+Ndi9TVAbF2qMN5p4xrMvcMTh6mR
         2Q9om29pUE/dpPUhoSxpUPgddWWCusxibl6KdtIPZev+wwIht8qRzVpduNJEDs8FMnUL
         Q6xCfd0Lg5cKzO7nHvThMU9rtfQ4Faf0mskzXUdI2YENb4G33pvRu7NgTNTYa7XkTH/H
         V66fXLEhJEMbw2YOuandmsZwpFUV5SmA/0jYDRtsavCxRpvWN039n5KwpOO6FOgu200M
         UjHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ir2xlsLvwkeZx9FMivYVbWtyY2xy4oXCHEh/Wp+q7HY=;
        b=d4Ngctd6Lr4senvGnhZG41Xmr+vBaGnWtLHbAhkFEnCTgNXQkHeyNktxRndEGhBjil
         4IDwPJX2n8tUOs8oZsBIN72d61V+b2W3ubyB8p8mrqv0Jk+rtkYfwrTfQg04DZcT99ZX
         ih1UxqCTTMP9xzimnvVUC1lHycFMfQVemUnZr+69EZA+mlKUEUdJgpHgK4aUuAn1hDpE
         SgtofMGhdjjAcdodeTdmtbwJsu4yEsL1uMpp3mErVCePhqdoEpk+Z/+gld+mNli2AkBU
         3xhqXv2VsVYb2lxk/qZSjOyo52AfoXqG8c7UBwMUeeZ3tkHZe7jtz3xWVNNozQKbUxlW
         lMfQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533DzGYUjuvarNTIgBX98AYEgM/v3oMywOFS2dUIxZytg24yWDq8
	Aj1FmW0NN2uneeJZozxAAGk=
X-Google-Smtp-Source: ABdhPJyrxDgfvXERQk4ILtGbHDKmnqTX3al7aH+GV5BuSVvc3nT4kDNNEOnb1tCzY0O+f1/uPNhxVQ==
X-Received: by 2002:a05:6512:ac9:: with SMTP id n9mr32328000lfu.635.1629899075686;
        Wed, 25 Aug 2021 06:44:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:9d43:: with SMTP id y3ls441677ljj.4.gmail; Wed, 25 Aug
 2021 06:44:34 -0700 (PDT)
X-Received: by 2002:a2e:2406:: with SMTP id k6mr34781732ljk.258.1629899074630;
        Wed, 25 Aug 2021 06:44:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629899074; cv=none;
        d=google.com; s=arc-20160816;
        b=pGwc72ZawvIaNyoOuQdWWV9JWQ3aHlvKr4ZIkWNI/cShumbN4XyxRU4tTXj54dD/xy
         XmYMUSUon7QrwiEB57i7LNw7/39XONghsP/6TLFcoQzsoxxW8r7uMflu77KvgPe28Dye
         dbZOiJRfhveLa0p/y+MWnyAe/rLuTHt+uhALG0Lpzw6M/e5g9A94Dzuk5DtR/y8EDA6w
         gy0Szsc5zJcfFSmxVRow3gtROnZYo4x4jddfaTGjciX/Tmh/Es7/QhPYJGaWrjzsT1Hq
         d0orgy6epq2/qFX1qEKz7PTZAWS5LSTnmR906TH4ywLNOiE5mHqfxRuIndRgeBVu9xO6
         A3PQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=rYkXVeoS0VQkQDH+la46zmVl272xw9ola2W/w/JjUaA=;
        b=qjhJs48789I4EwUgByCQUPt1ReevPsBrRntJwJ9uMKASn+mb95sg/d86up6IYgDWz8
         1pDuifHAev3hx4cI36TRgaPZvhiQEDmm688JOOOa0sssO2/0hgXaeGiSeSVdJ25wP0Cn
         L+4hMmmua6P8DEXIiM/PeTStAVrcvDmPmtxIHRt0cPViT/HSbw7xKYYKu1DXWLF31jRy
         Fk3ulbSXCZ0wCMMfPlowmprrCCMr5wfwF7jPapPbneXq5EjWcwxWYoQ39Fbc82Ascma9
         +FYhmRlOyqulwAmS1ifs8kJB/c28dKIMk9s86D/sNElradRHmV2ibawna5TggnE/toyJ
         7qHw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=keo1I2aU;
       spf=pass (google.com: domain of paskripkin@gmail.com designates 2a00:1450:4864:20::230 as permitted sender) smtp.mailfrom=paskripkin@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lj1-x230.google.com (mail-lj1-x230.google.com. [2a00:1450:4864:20::230])
        by gmr-mx.google.com with ESMTPS id j7si1431213ljc.1.2021.08.25.06.44.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Aug 2021 06:44:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of paskripkin@gmail.com designates 2a00:1450:4864:20::230 as permitted sender) client-ip=2a00:1450:4864:20::230;
Received: by mail-lj1-x230.google.com with SMTP id s3so43704561ljp.11
        for <clang-built-linux@googlegroups.com>; Wed, 25 Aug 2021 06:44:34 -0700 (PDT)
X-Received: by 2002:a2e:bd09:: with SMTP id n9mr36757665ljq.76.1629899074428;
        Wed, 25 Aug 2021 06:44:34 -0700 (PDT)
Received: from [192.168.1.11] ([46.235.66.127])
        by smtp.gmail.com with ESMTPSA id r7sm8818lfr.60.2021.08.25.06.44.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 25 Aug 2021 06:44:33 -0700 (PDT)
Subject: Re: [PATCH v3 3/6] staging: r8188eu: add error handling of rtw_read8
To: Dan Carpenter <dan.carpenter@oracle.com>
Cc: kernel test robot <lkp@intel.com>, Larry.Finger@lwfinger.net,
 phil@philpotter.co.uk, gregkh@linuxfoundation.org, straube.linux@gmail.com,
 fmdefrancesco@gmail.com, clang-built-linux@googlegroups.com,
 kbuild-all@lists.01.org, linux-staging@lists.linux.dev,
 linux-kernel@vger.kernel.org
References: <c59d5d850bf9aab208704182c83086609289cb9c.1629789580.git.paskripkin@gmail.com>
 <202108251911.Vwmzl4rI-lkp@intel.com>
 <9743e1ee-75f4-6231-427b-8c7f659fb252@gmail.com>
 <20210825125159.GU1931@kadam>
 <bd50c00e-1814-dc32-36cf-73cf58123201@gmail.com>
 <20210825133432.GW1931@kadam>
From: Pavel Skripkin <paskripkin@gmail.com>
Message-ID: <c982eea8-3b16-656b-dcb3-1b6e0d3e995d@gmail.com>
Date: Wed, 25 Aug 2021 16:44:30 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <20210825133432.GW1931@kadam>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: paskripkin@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=keo1I2aU;       spf=pass
 (google.com: domain of paskripkin@gmail.com designates 2a00:1450:4864:20::230
 as permitted sender) smtp.mailfrom=paskripkin@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On 8/25/21 4:34 PM, Dan Carpenter wrote:
> On Wed, Aug 25, 2021 at 04:02:26PM +0300, Pavel Skripkin wrote:
>> > This is not related to your patch.  Ignore it.
>> > 
>> > 
>> > > > vim +2022 drivers/staging/r8188eu/hal/usb_halinit.c
>> > > >
>> > > 
>> > > >    2020		case HW_VAR_BCN_VALID:
>> > > >    2021			/* BCN_VALID, BIT(16) of REG_TDECTRL = BIT(0) of REG_TDECTRL+2, write 1 to clear, Clear by sw */
>> > > > > 2022				u8 tmp;
>> > > 
>> > > Hm, I don't know anything about ARM compilers, so should I wrap this code
>> > > block with {}?
>> > 
>> > Yep.
>> > 
>> > > 
>> > > My local gcc 11.1.1 (x86_64) does not produce any warnings/errors
>> > > 
>> > 
>> > You should figure out whats up with that because it shouldn't compile
>> > with the gcc options that the kernel uses.
>> > 
>> 
>> AFAIK, at least 2 guys except me in this CC list compiled my series without
>> errors/warnings. Maybe, staging tree is missing some Makefile updates?
>> 
>> 
>> I'll resend series this evening anyway, but this is strange....
> 
> Hm...  In my version of GCC the error is:
> 
> drivers/staging/r8188eu/hal/usb_halinit.c:1870:3: error: a label can only be part of a statement and a declaration is not a statement
> 
> That's a different error from what I was expecting.  It's caused by
> having a declaration directly after a case statement.  The warning that
> I was expecting was from -Wdeclaration-after-statement and it looks
> like this:
> 
> warning: ISO C90 forbids mixed declarations and code [-Wdeclaration-after-statement]
> 
> You really should try investigate why this compiles for you because
> something is going wrong.  It should not build without a warning.
> 

Looks like it's bug in gcc 11.1.1. I've rebuilt this module with gcc 10 
(gcc-10 (SUSE Linux) 10.3.1 20210707 [revision 
048117e16c77f82598fca9af585500572d46ad73]) and build fails with error 
described above


My default gcc is

gcc (SUSE Linux) 11.1.1 20210721 [revision 
076930b9690ac3564638636f6b13bbb6bc608aea]


Any idea? :)


With regards,
Pavel Skripkin

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/c982eea8-3b16-656b-dcb3-1b6e0d3e995d%40gmail.com.
