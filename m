Return-Path: <clang-built-linux+bncBAABBDVH5H7QKGQEOCNRZGQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43e.google.com (mail-wr1-x43e.google.com [IPv6:2a00:1450:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id D61DE2F04A8
	for <lists+clang-built-linux@lfdr.de>; Sun, 10 Jan 2021 02:08:30 +0100 (CET)
Received: by mail-wr1-x43e.google.com with SMTP id r11sf5810914wrs.23
        for <lists+clang-built-linux@lfdr.de>; Sat, 09 Jan 2021 17:08:30 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610240910; cv=pass;
        d=google.com; s=arc-20160816;
        b=1IfAZlENVcuJaQxf2fF7nO9cMsg9z2W6LCc0qKKLX5N2gaZWC4UoSwZlPbjfjdWOoW
         JH6JnVrl5Fb5VUSPxNzrxTFrgJxVKptkcEybbMIAhbc8cSkZbNMZHS1Dnnd4FO1Zoo4A
         W9MdXd8ptEHFdUuDySv97jKlSsqSpt++fI1dize3vik42ZmdvReZTpY7VxX75PanhINO
         Vg6GahnbmebDEoz9xlRWY1w41wqDOgt3GFjjYFp9PnUgYHyb9qp1gZcxD1Tua17T+BxO
         Zcadrijo1T4q/hjjUqZT7t2gIvQ7JtvCzBgrUD598Yv9jFRoAaXfzK1JxE4ZjHrrDwNl
         yupw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:reply-to:cc:from:to:date:dkim-signature;
        bh=YWfNg50op9Eyp2f8gJPZodQcTo1oostZC3mFYNlC1eg=;
        b=J8qZjyH/VA+rpNnrvL7q+H4waZMhiZq9SWd4vM59NZuLc+xndiiRNVlPVx4CDppJyj
         Zfyj0W/trpJ4Fq8+6I3kjYI++lWIVHEr5UWZkPcN/AKaaT0KF5Pqo6tQ2GedJIPqVUHT
         qhmx1rsaKe5SnAfHMMIjtvCMMWp47G9bbt3tO96yeaCrvl5Fhdn5ocWUNSoofCHOuPOO
         0BbNQpshtLQUgnlBOrEsXvIIU7PO2/iwEeNTxlei6PzV9zL36NWhMISMRv+O9JXSRU9V
         GCVEjZw4OC6HdLrk/qqTXYqSdYfT/aQopl94/CCq0D/7tz/yOgM8uvfGfhUpQyLmcpaU
         Y+Zg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@pm.me header.s=protonmail header.b="fi2Mc/EU";
       spf=pass (google.com: domain of alobakin@pm.me designates 185.70.40.131 as permitted sender) smtp.mailfrom=alobakin@pm.me;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:to:from:cc:reply-to:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YWfNg50op9Eyp2f8gJPZodQcTo1oostZC3mFYNlC1eg=;
        b=CJ+x5zSsyL5kOpAOcgyu9ggp4RWbiZAVgmaJ7L6Kzwth1vjU81oqA4Z8vadzUiJKnY
         vr8u8qR+WdXQKt8AxJWLN4cs+VzFLQewvSBpzYIYGhWSvT8fu9FDPY6hgbR2n9nVidWA
         2ODa4zyHLSkKWilImQR0CE/CNBMP7nidCewXHKqc+Ij47LmEGGn7NM9TbOYj8IAoBaKa
         9O02ys/cHUe3+FkdJCvSAqKCmb4b++3WnDpLiBeH7Xn51U3xPK/aBtAFd7zOdxsb+e6e
         wF77k061nBsjNVV6DTeF7o8S9we11PyuN1mcp4+sTUcjtwZjFhH//JArfs/Wl4rDjXOu
         VPoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:to:from:cc:reply-to:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YWfNg50op9Eyp2f8gJPZodQcTo1oostZC3mFYNlC1eg=;
        b=Rxa5VA7rtEDoN3K0S6wPypqjiLKHt2rasl7ewxzpM9UulJKH0NL7ROACN3TXZCO+QP
         nB682zzkWgh4UBG5QcL1WGGkeWoG95rnQ1k5U/u2xZgPbc1ZhX5kWH1yblQDG4lNIka3
         ajF1N8yehX1G6f6akfp1le0KvrwoNOPmlVwoP6cxid9DDwr3gbfl4bz5XQSAUggwxAhp
         wHEbPH6dLwde/TAgia3ry2vUwqkOUjvMrTZDWnr7WS+er8JJTKeNO+8SDGp/7vKun5gj
         dvZKbakqKA4XGoKlEcS6nYB9tPcA9rbGRBY0ZgywS6RG+jJ2427nPDymLxjnkSfplV1x
         3Xaw==
X-Gm-Message-State: AOAM530tTi8lNq72QZSCQwldtfdlMmT0AOFoitq4dO9+J6fMSy464fpR
	y4ROMZLFp0RNY1ImdCZnbCk=
X-Google-Smtp-Source: ABdhPJx2e0lKpIt/NSPObplXLF0Yi5wku21RHrY8+jZf0V7ZJ4MzchGpYgxQF7GKNtH6uC/ToEtCuQ==
X-Received: by 2002:a5d:63c8:: with SMTP id c8mr10028114wrw.5.1610240910651;
        Sat, 09 Jan 2021 17:08:30 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:5543:: with SMTP id g3ls1800076wrw.0.gmail; Sat, 09 Jan
 2021 17:08:30 -0800 (PST)
X-Received: by 2002:a5d:400c:: with SMTP id n12mr10149278wrp.218.1610240909985;
        Sat, 09 Jan 2021 17:08:29 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610240909; cv=none;
        d=google.com; s=arc-20160816;
        b=yb3eYssQTY/eVSInF/7ICAozjyYp9UKu7keWcZS9x+3EIiDcfxWsucyDb+WlHAJkB1
         PogeqiXFOQPPr6tKFNhvl2VlVFaDHXT0frTapsj0yjlGOCA8TiTW644+3A2yK3vBFGou
         5Z1PBWEkt78g/3M67r5335n/VHQxt8xRbDGh1+/sftWi0pJ2RXCdE3z46hyEmkCWAtsq
         0FrHqNEzzBoMEBLREmb3YRvUUAXUzBs0zOdx26uA8X32QYoKzfDSok4QQ4xurrKwRyMk
         T17djzwcgSHJgpmd/bj7oiHl3Vbft4Qqs5AynEqOW3/z3htWFpuz9Ha/h3Kg8PVNmPk1
         qYsw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:reply-to:cc:from:to:dkim-signature:date;
        bh=9sBxWmzjqipIQOnoNEK/AoPt0kN5IhdKUZVARrJ77Yc=;
        b=SDil0MSFHJgvF0SMytfkRN2CAlyqLC3+NQjA4r1np4/iZW6cvy2EjccnpdWuEWQz+x
         bgaRPq3ta/jHbIt6ORTjFy0vumNaCEjfsyTP/UYT1p/Jh/LOZMSOIGJ48DKzbmPM89jl
         Aqn2+8R+7fg0ob8838Fs8T2lOY45kxA9RuQ/ia+eW1t7mHg3KiOF2Scxu/kYTFmD0FoW
         PxpRlpVel2dpy1xNhidm1PFCuLrJ/bL3M2o49gQmhYBebuiQm8V4zm+rkbB7SyO5Ct5d
         nw40ZWZe7g2SgC6horXMQpc5qYddI8xGycMzzm/ASqSRxlQl237pqOOkzGQMt9C3Ns/c
         OyXw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pm.me header.s=protonmail header.b="fi2Mc/EU";
       spf=pass (google.com: domain of alobakin@pm.me designates 185.70.40.131 as permitted sender) smtp.mailfrom=alobakin@pm.me;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=pm.me
Received: from mail-40131.protonmail.ch (mail-40131.protonmail.ch. [185.70.40.131])
        by gmr-mx.google.com with ESMTPS id v16si776923wmh.1.2021.01.09.17.08.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 09 Jan 2021 17:08:29 -0800 (PST)
Received-SPF: pass (google.com: domain of alobakin@pm.me designates 185.70.40.131 as permitted sender) client-ip=185.70.40.131;
Date: Sun, 10 Jan 2021 01:08:26 +0000
To: Nick Desaulniers <ndesaulniers@google.com>
From: "'Alexander Lobakin' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Cc: Alexander Lobakin <alobakin@pm.me>, clang-built-linux <clang-built-linux@googlegroups.com>, linux-mips@vger.kernel.org, Thomas Bogendoerfer <tsbogend@alpha.franken.de>, Kees Cook <keescook@chromium.org>, Nathan Chancellor <natechancellor@gmail.com>, Fangrui Song <maskray@google.com>, Sami Tolvanen <samitolvanen@google.com>, Ralf Baechle <ralf@linux-mips.org>, LKML <linux-kernel@vger.kernel.org>, linux-arch <linux-arch@vger.kernel.org>
Reply-To: Alexander Lobakin <alobakin@pm.me>
Subject: Re: [BUG mips llvm] MIPS: malformed R_MIPS_{HI16,LO16} with LLVM
Message-ID: <20210110010811.1007005-1-alobakin@pm.me>
In-Reply-To: <20210109232854.954832-1-alobakin@pm.me>
References: <20210109171058.497636-1-alobakin@pm.me> <CAKwvOdmV2tj4Uyz1iDkqCj+snWPpnnAmxJyN+puL33EpMRPzUw@mail.gmail.com> <20210109191457.786517-1-alobakin@pm.me> <20210109232854.954832-1-alobakin@pm.me>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.2 required=10.0 tests=ALL_TRUSTED,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF shortcircuit=no
	autolearn=disabled version=3.4.4
X-Spam-Checker-Version: SpamAssassin 3.4.4 (2020-01-24) on
	mailout.protonmail.ch
X-Original-Sender: alobakin@pm.me
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@pm.me header.s=protonmail header.b="fi2Mc/EU";       spf=pass
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

From: Alexander Lobakin <alobakin@pm.me>
Date: Sat, 09 Jan 2021 23:29:26 +0000

> From: Alexander Lobakin <alobakin@pm.me>
> Date: Sat, 09 Jan 2021 19:15:31 +0000
>
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
>
> Unfortunately, R_MIPS_32 also suffers from that. And unlikely
> R_MIPS_{HI,LO}16, they can't be handled runtime as the values
> are pure random.
> I expanded arch/mips/kernel/module.c a bit, so it tries to find
> the actual symbol in .symtab after each applied relocation and
> print the detailed info. Here's an example from nf_defrag_ipv6
> loading:
>
> [  429.789793] nf_defrag_ipv6: final section addresses:
> [  429.795409] =090xc07214fc __ksymtab_gpl
> [  429.799574] =090xc0720000 .text
> [  429.802902] =090xc07216b0 .data
> [  429.806249] =090xc0721790 .bss
> [  429.809474] =090xc0721508 __ksymtab_strings
> [  429.813977] =090xc0728000 .init.text
> [  429.817781] =090xc07214c0 .exit.text
> [  429.821606] =090xc0721520 .rodata
> [  429.825120] =090xc0721578 .rodata.str1.1
> [  429.829322] =090xc0721638 .note.Linux
> [  429.833226] =090xc0721800 .gnu.linkonce.this_module
> [  429.838503] =090xc0721650 .MIPS.abiflags
> [  429.842702] =090xc0721668 .reginfo
> [  429.846326] =090xc0721680 .note.gnu.build-id
> [  429.851129] nf_defrag_ipv6: R_MIPS_32 [0x00000008]: 0xc07216b0 -> 0xc07216b8 is broken
> [  429.860017] nf_defrag_ipv6: R_MIPS_32 [0x00000008]: 0xc07216b0 -> 0xc07216b8 is broken
> [  429.868875] nf_defrag_ipv6: R_MIPS_32 [0x00000138]: 0xc0720000 -> 0xc0720138 is defrag6_net_exit
> [  429.878706] nf_defrag_ipv6: R_MIPS_32 [0x000012c8]: 0xc0720000 -> 0xc07212c8 is nf_ct_net_init
> [  429.888335] nf_defrag_ipv6: R_MIPS_32 [0x0000142c]: 0xc0720000 -> 0xc072142c is nf_ct_net_pre_exit
> [  429.898367] nf_defrag_ipv6: R_MIPS_32 [0x00001440]: 0xc0720000 -> 0xc0721440 is nf_ct_net_exit
> [  429.907994] nf_defrag_ipv6: R_MIPS_32 [0x00000057]: 0xc0721578 -> 0xc07215cf is broken
> [  429.916872] nf_defrag_ipv6: R_MIPS_32 [0x00000000]: 0x80f297f0 -> 0x80f297f0 is proc_dointvec_jiffies
> [  429.927177] nf_defrag_ipv6: R_MIPS_32 [0x00000039]: 0xc0721578 -> 0xc07215b1 is broken
> [  429.936044] nf_defrag_ipv6: R_MIPS_32 [0x00000000]: 0x80f29374 -> 0x80f29374 is proc_doulongvec_minmax
> [  429.946453] nf_defrag_ipv6: R_MIPS_32 [0x00000072]: 0xc0721578 -> 0xc07215ea is broken
> [  429.955320] nf_defrag_ipv6: R_MIPS_32 [0x00000000]: 0x80f29374 -> 0x80f29374 is proc_doulongvec_minmax
> [  429.965737] nf_defrag_ipv6: R_MIPS_32 [0x000000a4]: 0xc0720000 -> 0xc07200a4 is ipv6_defrag
> [  429.975094] nf_defrag_ipv6: R_MIPS_32 [0x000000a4]: 0xc0720000 -> 0xc07200a4 is ipv6_defrag
> [  429.984431] nf_defrag_ipv6: R_MIPS_32 [0x0000106c]: 0xc0720000 -> 0xc072106c is ip6frag_key_hashfn
> [  429.994470] nf_defrag_ipv6: R_MIPS_32 [0x00001090]: 0xc0720000 -> 0xc0721090 is ip6frag_obj_hashfn
> [  430.004486] nf_defrag_ipv6: R_MIPS_32 [0x000010b8]: 0xc0720000 -> 0xc07210b8 is ip6frag_obj_cmpfn
> [  430.014425] nf_defrag_ipv6: R_MIPS_32 [0x00000000]: 0xc0720000 -> 0xc0720000 is nf_defrag_ipv6_enable
> [  430.024742] nf_defrag_ipv6: R_MIPS_32 [0x00000001]: 0xc0721508 -> 0xc0721509 is __kstrtab_nf_defrag_ipv6_enable
> [  430.036074] nf_defrag_ipv6: R_MIPS_32 [0x00000000]: 0xc0721508 -> 0xc0721508 is __kstrtabns_nf_defrag_ipv6_enable
> [  430.047561] nf_defrag_ipv6: R_MIPS_32 [0x00000000]: 0xc0728000 -> 0xc0728000 is init_module
> [  430.056930] nf_defrag_ipv6: R_MIPS_32 [0x00000000]: 0xc07214c0 -> 0xc07214c0 is cleanup_module
>
> At least five symbols are broken and lead to nowhere: two from .data
> and three from .rodata. Values in square braces are initial references
> that can be observed via `nm -n` -- and for broken ones they really
> don't correspond to any symbols, mismatching the neighbours' addresses
> by 0x40-0x50.

Oops, my bad. I forgot that they can point to the middle of the struct
or array or what else. Nevermind, only the problem with R_MIPS_HI16 is
actual.

With the "add 0x10000 if can't find the symbol" workaround I'm now
able to run kernel and modules without any visible defects or issues.
Full list of detected and fixed relocs on my setup:

libphy: R_MIPS_HI16 [0x3c030000, 0x24639444]: .text -> 0xc06b1444 is broken
libphy: R_MIPS_HI16 [0x3c030000, 0x24639444]: .text -> 0xc06c1444 is phy_probe
libphy: R_MIPS_HI16 [0x3c020000, 0x2442970c]: .text -> 0xc06b170c is broken
libphy: R_MIPS_HI16 [0x3c020000, 0x2442970c]: .text -> 0xc06c170c is phy_remove
libphy: R_MIPS_HI16 [0x3c010000, 0x242197ac]: .text -> 0xc06b17ac is broken
libphy: R_MIPS_HI16 [0x3c010000, 0x242197ac]: .text -> 0xc06c17ac is phy_shutdown
nf_tables: R_MIPS_HI16 [0x3c010001, 0x24218164]: .text -> 0xc07bc164 is broken
nf_tables: R_MIPS_HI16 [0x3c010001, 0x24218164]: .text -> 0xc07cc164 is nf_tables_dump_obj_done
nf_tables: R_MIPS_HI16 [0x3c010001, 0x243981bc]: .text -> 0xc07bc1bc is broken
nf_tables: R_MIPS_HI16 [0x3c010001, 0x243981bc]: .text -> 0xc07cc1bc is nft_flowtable_parse_hook
nf_tables: R_MIPS_HI16 [0x3c010001, 0x24398390]: .text -> 0xc07bc390 is broken
nf_tables: R_MIPS_HI16 [0x3c010001, 0x24398390]: .text -> 0xc07cc390 is nft_register_flowtable_net_hooks
nf_tables: R_MIPS_HI16 [0x3c010001, 0x243981bc]: .text -> 0xc07bc1bc is broken
nf_tables: R_MIPS_HI16 [0x3c010001, 0x243981bc]: .text -> 0xc07cc1bc is nft_flowtable_parse_hook
nf_tables: R_MIPS_HI16 [0x3c010001, 0x24398390]: .text -> 0xc07bc390 is broken
nf_tables: R_MIPS_HI16 [0x3c010001, 0x24398390]: .text -> 0xc07cc390 is nft_register_flowtable_net_hooks
nf_tables: R_MIPS_HI16 [0x3c010001, 0x2421866c]: .text -> 0xc07bc66c is broken
nf_tables: R_MIPS_HI16 [0x3c010001, 0x2421866c]: .text -> 0xc07cc66c is nf_tables_dump_flowtable
nf_tables: R_MIPS_HI16 [0x3c010001, 0x242185b4]: .text -> 0xc07bc5b4 is broken
nf_tables: R_MIPS_HI16 [0x3c010001, 0x242185b4]: .text -> 0xc07cc5b4 is nf_tables_dump_flowtable_start
nf_tables: R_MIPS_HI16 [0x3c010001, 0x243981bc]: .text -> 0xc07bc1bc is broken
nf_tables: R_MIPS_HI16 [0x3c010001, 0x243981bc]: .text -> 0xc07cc1bc is nft_flowtable_parse_hook
nf_tables: R_MIPS_HI16 [0x3c020002, 0x24428080]: .text -> 0xc07cc080 is broken
nf_tables: R_MIPS_HI16 [0x3c020002, 0x24428080]: .text -> 0xc07dc080 is nft_rbtree_gc
nf_conntrack: R_MIPS_HI16 [0x3c010000, 0x24258538]: .text -> 0xc077c538 is broken
nf_conntrack: R_MIPS_HI16 [0x3c010000, 0x24258538]: .text -> 0xc078c538 is nf_ct_expectation_timed_out

> So for now seems like it's really an LLVM problem and there can't be
> any simple workaround for it in the kernel.
>
>> [0] https://elixir.bootlin.com/linux/v5.11-rc2/source/drivers/net/phy/phy_device.c#L2989
>>
>>> Thanks,
>>> ~Nick Desaulniers
>>
>> Thanks,
>> Al
>
> Al

Al

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210110010811.1007005-1-alobakin%40pm.me.
