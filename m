Return-Path: <clang-built-linux+bncBAABBC7U6L7QKGQETFW5MNQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x239.google.com (mail-lj1-x239.google.com [IPv6:2a00:1450:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id 20B452F211F
	for <lists+clang-built-linux@lfdr.de>; Mon, 11 Jan 2021 21:50:20 +0100 (CET)
Received: by mail-lj1-x239.google.com with SMTP id z26sf161015ljm.18
        for <lists+clang-built-linux@lfdr.de>; Mon, 11 Jan 2021 12:50:20 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610398219; cv=pass;
        d=google.com; s=arc-20160816;
        b=0h/TZYGLk68NPflwAB2tWrAK0DXZasgB253piDHpqlVtasoGE5qFETDH1mKHWOM42W
         h5fMFgo4Pmm2pHQVwG1XNUQ2QEowpk3jkNc60/DLPeYsvQ/S0aGO1Dq5MkVzu6lTvKkq
         Hj4FlXZ2NJ4Sdj7wQhCb/Q1Srqtc+2JHkk+/sJ3TMG6GGFTPhtUDKydPIC31IwcYu1sh
         4lKwMLlprrFhrYbLnl2fofaAPHGNPrtEPuQ6GGhsENfkjfOL/UjIol4g7LYykZlrm5Fi
         WZYu/JpxSmhKpzvPysw5vjcWf7po7rohklD9NMDcLpy6KtkCBTFSmX5aIdecf4lKsgHq
         bGPw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:reply-to:cc:from:to:date:dkim-signature;
        bh=2qULm9ATWPhAMJc4M7lwioNjdttizVs3QaMj2Nu+8kA=;
        b=rtqzgsjQDgDxlikOrINXOHljNQ6+RJGm2fcbfJQprAnXEnsISwigBeQDPW1I22im/J
         PEg8S2YUZIyMWTcrGHUkm2/sXf0UMucXHplmGDpuDetTuyMUvLYvZfbPr4zdceJfOZFl
         hv2y9xEat8BPmJRDwu8HK1pxhoTJpUILGaHXXXi8daWajwlfx9bF+GK11ds79WUxN0G1
         czsOXWOY9K9uGjQhhEzYBMKLF29c1hWDPc+J07/p9/ugtTPy7QKago1Mj0w/VMTSj6eE
         nMQ/42nzv/ePporoWm0vhcrSl61RTPo7gizX+rmLtKL8Vp+g4jRS2v1jT5FEQHqa8o11
         ZgyA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@pm.me header.s=protonmail header.b=c8P8tAhK;
       spf=pass (google.com: domain of alobakin@pm.me designates 185.70.40.131 as permitted sender) smtp.mailfrom=alobakin@pm.me;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:to:from:cc:reply-to:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2qULm9ATWPhAMJc4M7lwioNjdttizVs3QaMj2Nu+8kA=;
        b=GDl8X1eqM2f8HaAmI7h1jaQmgcYniZZ/lOmKV911eOzZnFRFiXq+n923FFoVjb9TAy
         FlmM3ZnwxYYS6YU8P4VGbPdBhnbzF3z5jY1qo3dEKqeZqbFlDvhuVpwmJ7tQz1BDsBTj
         2hN1Y70lI6HHX8BzUJjaFjfyEstIkXq18tsZHUkhprgHI6pNA3FBFigCUUtbGfaBW+Kc
         FG7HTbk5jB+jPbTRCAbAVtpTfoI/IPstuURIhUyn1mlAKNug+tlZuFJuJhZjF9/2NBNu
         xFiIcYh//eICgAmwdytiBZQoHleEkz8XddeTgUOEeSYT638dTnR1znFM3TnvxA5NRbee
         IDwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:to:from:cc:reply-to:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2qULm9ATWPhAMJc4M7lwioNjdttizVs3QaMj2Nu+8kA=;
        b=NOWntr/UZyrvcwhlN0vyhPgvvZD+ZB9cDhvuIUo62Jg3EKi/ztz8oum9S2OdEm5GAw
         JpmGX4fT6ikbHtdAjNHdt04IzFo/N0eMi9714R/uzqkoworOYHGdAY/vbB5I+CSqn5x0
         DwIRU/5UgZDv68T/zOYKeISABTUUyVkYjuGUXr8/gbVWRj2AyNp61H3tvEpHatCpLut0
         YOy2JWs9zXaLm8d5i72a+hcfiwlgy7lNEq5mRy1WhHG8FSQOj234iRsBWcztUAtXtt/0
         oQsz7p6OFqqQGbwjggQ4/o7LKw1o/R2mh9sDnE4lHSfJPlkXqr7crSegZcVsDBLxZIH5
         uz+Q==
X-Gm-Message-State: AOAM533MPUd7L8crLG0kZN/LWbjQMIKrve09vyllHJ2zKQvpVGL09QEt
	7Vsaro0tFMcHMo9KIrfx7NQ=
X-Google-Smtp-Source: ABdhPJwhPSl7jAVgMGNBlrEPtEL4PYvM55ydYOHVE7QDpZ6AJ/bw7xEqsApSB/Smg9gJy1vaSwSxqg==
X-Received: by 2002:a2e:3201:: with SMTP id y1mr559796ljy.12.1610398219580;
        Mon, 11 Jan 2021 12:50:19 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:89d3:: with SMTP id c19ls161194ljk.0.gmail; Mon, 11 Jan
 2021 12:50:18 -0800 (PST)
X-Received: by 2002:a05:651c:20b:: with SMTP id y11mr526029ljn.176.1610398218762;
        Mon, 11 Jan 2021 12:50:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610398218; cv=none;
        d=google.com; s=arc-20160816;
        b=icN1jUOx1vvzO9IaXQMdAWdatJVa2SRodfxg7SRX8SC5+nsad37fIqJH2S8u8XF9hT
         UWf73dCjnZkCoDu+FO964SaFXmdYDofINN6GRTZ3XQ9BzBWAJCzbbK/gCAcp9kdJany0
         bjdOVH1/twB/tfmS81BqTWuQ2ZEGoFlKC93p7Cnh5OFWqlAbB1SBb2F/7/rsu3pQ/GvK
         ir39l/uDwSwn5wnJfsKaPpsP8Mqd7N5BCcbVHLSrACr8dbKGsyXrDkHZIIAoMxzfiumg
         nOY6cUuOgTpPumJhFGcQWSrOpwJS7fiKiHBf5ZQTHFtJG1FATnwGz55lVAuOybjzliCp
         1xfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:reply-to:cc:from:to:dkim-signature:date;
        bh=kKnWxxrWxwgfI6kxECg1SUIMdZPoLoXXPPWbaq8BfMM=;
        b=ZcB1kNlkTBhNGTUTvDlO7F+bq2FLogiaqRhFCymKo2Pmo4nu0AKETP+d1KNru/buqo
         UL6H9NP9pnRAgHIqEEbVEwHFAOojSYWUf0ePfI+HYEc7TxplKmvrc2L69rj18TjOWOzL
         q/19PxkhoWTnePcMoqj2MSwhNIMXOBi31I6GuUe3XFfnLJY2xirP6+tDOjz2BtJ34bNg
         X6Q/d7wdYy+S/yt9sOl3kC26RcVL3t5iZC1c/BRn9T6wQZZzelAwx7UFygG5gKorwyeq
         JGBsPqSEgS1fkEOOOpPlDF0W0Tzs64kPqpiW44ez8g23j3wiiBtjHK5bCkoagk/0tI/D
         RC2Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pm.me header.s=protonmail header.b=c8P8tAhK;
       spf=pass (google.com: domain of alobakin@pm.me designates 185.70.40.131 as permitted sender) smtp.mailfrom=alobakin@pm.me;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=pm.me
Received: from mail-40131.protonmail.ch (mail-40131.protonmail.ch. [185.70.40.131])
        by gmr-mx.google.com with ESMTPS id i22si40029ljj.8.2021.01.11.12.50.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Jan 2021 12:50:18 -0800 (PST)
Received-SPF: pass (google.com: domain of alobakin@pm.me designates 185.70.40.131 as permitted sender) client-ip=185.70.40.131;
Date: Mon, 11 Jan 2021 20:50:08 +0000
To: Nick Desaulniers <ndesaulniers@google.com>
From: "'Alexander Lobakin' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Cc: Alexander Lobakin <alobakin@pm.me>, Fangrui Song <maskray@google.com>, clang-built-linux <clang-built-linux@googlegroups.com>, linux-mips@vger.kernel.org, Thomas Bogendoerfer <tsbogend@alpha.franken.de>, Kees Cook <keescook@chromium.org>, Nathan Chancellor <natechancellor@gmail.com>, Sami Tolvanen <samitolvanen@google.com>, Ralf Baechle <ralf@linux-mips.org>, LKML <linux-kernel@vger.kernel.org>, linux-arch <linux-arch@vger.kernel.org>
Reply-To: Alexander Lobakin <alobakin@pm.me>
Subject: Re: [BUG mips llvm] MIPS: malformed R_MIPS_{HI16,LO16} with LLVM
Message-ID: <20210111204936.17905-1-alobakin@pm.me>
In-Reply-To: <CAKwvOdnOXXaz+S1agu5kCQLm+qEkXE2Hpd2_V8yPsbUTQH7JZw@mail.gmail.com>
References: <20210109171058.497636-1-alobakin@pm.me> <CAKwvOdmV2tj4Uyz1iDkqCj+snWPpnnAmxJyN+puL33EpMRPzUw@mail.gmail.com> <20210109191457.786517-1-alobakin@pm.me> <CAKwvOdnOXXaz+S1agu5kCQLm+qEkXE2Hpd2_V8yPsbUTQH7JZw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=0.8 required=10.0 tests=ALL_TRUSTED,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,LOTS_OF_MONEY,MONEY_NOHTML
	shortcircuit=no autolearn=disabled version=3.4.4
X-Spam-Checker-Version: SpamAssassin 3.4.4 (2020-01-24) on
	mailout.protonmail.ch
X-Original-Sender: alobakin@pm.me
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@pm.me header.s=protonmail header.b=c8P8tAhK;       spf=pass
 (google.com: domain of alobakin@pm.me designates 185.70.40.131 as permitted
 sender) smtp.mailfrom=alobakin@pm.me;       dmarc=pass (p=QUARANTINE
 sp=QUARANTINE dis=NONE) header.from=pm.me
X-Original-From: Alexander Lobakin <alobakin@pm.me>
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

From: Nick Desaulniers <ndesaulniers@google.com>
Date: Mon, 11 Jan 2021 12:03:29 -0800

> Hi Alexander,
> I'm genuinely trying to reproduce/understand this report, questions below:

Hi Nick!

> On Sat, Jan 9, 2021 at 11:15 AM Alexander Lobakin <alobakin@pm.me> wrote:
>>
>> From: Nick Desaulniers <ndesaulniers@google.com>
>> Date: Sat, 9 Jan 2021 09:50:44 -0800
>>
>>> On Sat, Jan 9, 2021 at 9:11 AM Alexander Lobakin <alobakin@pm.me> wrote:
>>>>
>>>> Machine: MIPS32 R2 Big Endian (interAptiv (multi))
>>>>
>>>> While testing MIPS with LLVM, I found a weird and very rare bug with
>>>> MIPS relocs that LLVM emits into kernel modules. It happens on both
>>>> 11.0.0 and latest git snapshot and applies, as I can see, only to
>>>> references to static symbols.
>>>>
>>>> When the kernel loads the module, it allocates a space for every
>>>> section and then manually apply the relocations relative to the
>>>> new address.
>>>>
>>>> Let's say we have a function phy_probe() in drivers/net/phy/libphy.ko.
>>>> It's static and referenced only in phy_register_driver(), where it's
>>>> used to fill callback pointer in a structure.
>>>>
>>>> The real function address after module loading is 0xc06c1444, that
>>>> is observed in its ELF st_value field.
>>>> There are two relocs related to this usage in phy_register_driver():
>>>>
>>>> R_MIPS_HI16 refers to 0x3c010000
>>>> R_MIPS_LO16 refers to 0x24339444
>
> Sorry, how are these calculated?  (Explicit shell commands invoked
> would be appreciated)

Just look at the disassembly below and you'll see the similar
instructions in your module.

> I'm doing:
> $ ARCH=mips CROSS_COMPILE=mips-linux-gnu- make CC=clang -j71 32r2_defconfig
> $ ARCH=mips CROSS_COMPILE=mips-linux-gnu- make CC=clang -j71 modules
> $ llvm-nm --format=sysv drivers/net/phy/phy_device.o | grep phy_probe
> $ llvm-objdump -Dr --disassemble-symbols=phy_driver_register drivers/net/phy/phy_device.o
> $ llvm-readelf -r drivers/net/phy/phy_device.o  | grep -e R_MIPS_HI16 -e R_MIPS_LO16
>
> for some of the commands trying to verify.
>
>>>>
>>>> The address of .text is 0xc06b8000. So the destination is calculated
>>>> as follows:
>>>>
>>>> 0x00000000 from hi16;
>>>> 0xffff9444 from lo16 (sign extend as it's always treated as signed);
>>>> 0xc06b8000 from base.
>>>>
>>>> = 0xc06b1444. The value is lower than the real phy_probe() address
>>>> (0xc06c1444) by 0x10000 and is lower than the base address of
>>>> module's .text, so it's 100% incorrect.
>
> The disassembly for me produces:
>     399c: 3c 03 00 00   lui     $3, 0 <phy_device_free>
>                         0000399c:  R_MIPS_HI16  .text
> ...
>     39a8: 24 63 3a 5c   addiu   $3, $3, 14940 <phy_probe>
>                         000039a8:  R_MIPS_LO16  .text

So, in your case the values of the instructions that relocs refer are:

0x3c030000 R_MIPS_HI16
0x24633a5c R_MIPS_LO16

Mine were:

0x3c010000
0x24339444

Your second one doesn't have bit 15 set, so I think this pair won't
break the code.
Try to hunt for R_MIPS_LO16 that have this bit set, i.e. they have
'8', '9', 'a', 'b', 'c', 'd' or 'e' as their [15:12].

> I'm not really sure how to manually resolve the relocations; Fangrui
> do you have any tips? (I'm coincidentally reading through Linkers &
> Loaders currently, but only just started chpt. 4).
>
>>>>
>>>> This results in:
>>>>
>>>> [    2.204022] CPU 3 Unable to handle kernel paging request at virtual
>>>> address c06b1444, epc == c06b1444, ra == 803f1090
>>>>
>>>> The correct instructions should be:
>>>>
>>>> R_MIPS_HI16 0x3c010001
>>>> R_MIPS_LO16 0x24339444
>>>>
>>>> so there'll be 0x00010000 from hi16.
>>>>
>>>> I tried to catch those bugs in arch/mips/kernel/module.c (by checking
>>>> if the destination is lower than the base address, which should never
>>>> happen), and seems like I have only 3 such places in libphy.ko (and
>>>> one in nf_tables.ko).
>>>> I don't think it should be handled somehow in mentioned source code
>>>> as it would look rather ugly and may break kernels build with GNU
>>>> stack, which seems to not produce such bad codes.
>>>>
>>>> If I should report this to any other resources, please let me know.
>>>> I chose clang-built-linux and LKML as it may not happen with userland
>>>> (didn't tried to catch).
>>>
>>> Thanks for the report.  Sounds like we may indeed be producing an
>>> incorrect relocation.  This is only seen for big endian triples?
>>
>> Unfortunately I don't have a LE board to play with, so can confirm
>> only Big Endian.
>>
>> (BTW, if someone can say if it's possible for MIPS (and how if it is)
>> to launch a LE kernel from BE-booted preloader and U-Boot, that would
>> be super cool)
>>
>>> Getting a way for us to deterministically reproduce would be a good
>>> first step.  Which config or configs beyond defconfig, and which
>>> relocations specifically are you observing this with?
>>
>> I use `make 32r2_defconfig` which combines several configs from
>> arch/mips/configs:
>>  - generic_defconfig;
>>  - generic/32r2.config;
>>  - generic/eb.config.
>>
>> Aside from that, I enable a bunch of my WIP drivers and the
>> Netfilter. On my setup, this bug is always present in libphy.ko,
>> so CONFIG_PHYLIB=m (with all deps) should be enough.
>>
>> The three failed relocs belongs to this part of code: [0]
>>
>> llvm-readelf on them:
>>
>> Relocation section '.rel.text' at offset 0xbf60 contains 2281 entries:
>> [...]
>> 00005740  00029305 R_MIPS_HI16            00000000   .text
>> 00005744  00029306 R_MIPS_LO16            00000000   .text
>> 00005720  00029305 R_MIPS_HI16            00000000   .text
>> 00005748  00029306 R_MIPS_LO16            00000000   .text
>> 0000573c  00029305 R_MIPS_HI16            00000000   .text
>> 0000574c  00029306 R_MIPS_LO16            00000000   .text
>>
>> The first pair is the one from my first mail:
>> 0x3c010000 <-- should be 0x3c010001 to work properly
>> 0x24339444
>>
>> I'm planning to hunt for more now, will let you know.
>>
>> [0] https://elixir.bootlin.com/linux/v5.11-rc2/source/drivers/net/phy/phy_device.c#L2989
>>
>> > Thanks,
>> > ~Nick Desaulniers
>>
>> Thanks,
>> Al
>>
>
> Thanks,
> ~Nick Desaulniers

Thanks,
Al

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210111204936.17905-1-alobakin%40pm.me.
