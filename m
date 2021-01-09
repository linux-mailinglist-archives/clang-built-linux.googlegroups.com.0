Return-Path: <clang-built-linux+bncBAABBXHY5D7QKGQERU5ZUDQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x138.google.com (mail-lf1-x138.google.com [IPv6:2a00:1450:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 14DA12F0465
	for <lists+clang-built-linux@lfdr.de>; Sun, 10 Jan 2021 00:29:33 +0100 (CET)
Received: by mail-lf1-x138.google.com with SMTP id 7sf10713750lfz.12
        for <lists+clang-built-linux@lfdr.de>; Sat, 09 Jan 2021 15:29:33 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610234972; cv=pass;
        d=google.com; s=arc-20160816;
        b=LKg3r/Ki7k7PHwUzFlJUe4/Nr/NDSNwWu/TQ+/cmZKVWHtKdHZsQlxbT/8vOeeUdQe
         auOJpkw0uwZNb8spENpzs+gFVYfT9Gulz+AAQH8/hioE0uvb1uZGLf/hCrPJfO3nCXYi
         zneDbLfF88j4IAnNwHfmEGS2i+m5c5mnIyHkoVjEUR1vpozILnjURNlY7sK6KSCwuGev
         Ku4iZe3jX2qdSGEtl+FhojKw4N1EXVsc/8/b6iVli9kcWklojrq+I94M4OaZat5ILPR7
         5Chk4PYD/pYyZjQXIqF+a+9sTCf5qE3dJj4FDbxd+tyCMB+nmtEmU7io0eH9vSyHUEJ8
         sQpw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:reply-to:cc:from:to:date:dkim-signature;
        bh=PADo45hsxWC1Yy6p6dTSZiMTbiFsmlSM4r/AD2D5tac=;
        b=JalPuCbPRN2q0/Eg9okEO4eNxGD5dLx9KahX7gapV6TyyTzonsf0Raet46P2GKSc81
         UsWboX2pyKZYWce+tU2SUysWy7vlipGbkgD1z4ij0zHC60MDSyCERj5hL6kuDOBrDOHb
         OENoGPzMQkLOcd4CkDi9fkuwRONVIjFfzjqqANM4AzU0nlWtaRx812autTjXW4CvKg9R
         frz5VnHvpt1uW8LJWGFKrZfyp+FkfyPw6Jz60fOmDycVlSHTOhDDqNWf13g3S4gCQppf
         ZAeWYJLeKqYjwD5iPlC8siqNJ2JQOc97r39rxu/ehJwIPGDGNxCwwkc4JUOCUpEXV7sD
         liIw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@pm.me header.s=protonmail header.b=NVwRdLfB;
       spf=pass (google.com: domain of alobakin@pm.me designates 185.70.40.22 as permitted sender) smtp.mailfrom=alobakin@pm.me;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=pm.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:to:from:cc:reply-to:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PADo45hsxWC1Yy6p6dTSZiMTbiFsmlSM4r/AD2D5tac=;
        b=l7wok/LHT+9+mbHDFcHRB+Pq7pLmQCKSyBfsWui1zLFMhrCD88546qKA1j7HGHDViN
         LXxFQ4cshTSCpYKDUBLpfrLbRVvSEeQDOX1G3a3LFbkzPDbeZdCZGTT1q6PsNYade6CK
         aWNDPMRuzZQQ5scdayQ930+uJmT0j62No0JLYlRGJgatOB9bnZVhDY0j5+J/uelqMl1n
         HlKqoF1C8qKb3hoKWvc5bbtzhkvbAVwcYdeworu6TVZaHy6rBUIu+kkqGVG1hoWVFMRy
         IzO1krW72/ldcVtTj93Yt0IREE/eirTCyQ3KkqiOwI5/4eFdA2DfPq7pVjQ1ri375R/K
         WOUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:to:from:cc:reply-to:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PADo45hsxWC1Yy6p6dTSZiMTbiFsmlSM4r/AD2D5tac=;
        b=XrBEGfRxES79lSAPOKqo18fssFVYBfDn79qz6szbgslqLgkVmeNMz0RDEWG67aOzKG
         KtuvTq6sYFh9nR8kL2PcvcauR71Ej0Yv8FVX2+TwMcyEwmmQwq4fhaR6L9PqXNWgvI33
         e/+NAhvUk4/b5XPpwq6wDC4BmAli3RsHQHVocuMUxf/T1ZBUCxFoMLs4CA8fA6mWYGLM
         mTWVuraX/+52TICgAiqLCSxXW15dq+qDd//kdRAytLNUoxXB23ifUAtotYGmEVFWQ7lR
         ybdpvmv4ObdN0+k5Jaai1fUJqKy5Y8NJCLmI4BLvnnwE7PRwvdyd0pP/nO/cGs0zBr+u
         /49A==
X-Gm-Message-State: AOAM530FBbKKQEmPbdT2TBmYglvWu0ENDk+j5b4NuSKEoSphXf02Fx75
	YBDKZfITvm5VKoS7bmQHf7A=
X-Google-Smtp-Source: ABdhPJw+jrCR4vfQZ6a+wJMEvgZH8Kr+jxoDi0mIHEb89voRcGUE1J9eLyFuFbEwQAifj98+/peUiQ==
X-Received: by 2002:a19:6b0d:: with SMTP id d13mr4212950lfa.63.1610234972536;
        Sat, 09 Jan 2021 15:29:32 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:1a5:: with SMTP id c5ls2374533ljn.10.gmail; Sat, 09
 Jan 2021 15:29:31 -0800 (PST)
X-Received: by 2002:a2e:90cb:: with SMTP id o11mr4625592ljg.60.1610234971719;
        Sat, 09 Jan 2021 15:29:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610234971; cv=none;
        d=google.com; s=arc-20160816;
        b=xjLA74iCL8cIiCVKNSgyEFKl7kvyTy+4Ltr+vllO7oWdkaf/tc+QXLVmIPHGAXsO57
         zsXvle4K8IgNGJQAtQVPPZGp3EyhRjlTo5Xm6vXl4Y5hQ+paBYJIgGInUkxvKeDFM6tb
         3sUtEfgzImzkxDheUu/8/5JAqy9d1eQ5NXZLjcKI8VLb8TnBY9NhEbcqLCz5O4F77liE
         LH8J1+MV79FFpGxuu//cvoy6ZAfKPakyegx/6LCtIhvoU2JAmNOualhZXiI7yFr2iU7L
         MK7pWhX6ksUzM3IlBuUyWSmu+i5uh6iUEbPqR7x51YI8qWE2RsH1rW+zzLVO251Srkxk
         rEZw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:reply-to:cc:from:to:dkim-signature:date;
        bh=pMEyCkfk3836kvqwMIdMdIzN2xVleYFCbHN70qUBA2o=;
        b=YiKsRI384DKYt0tMwPpQ65ZpM863yc+3qQVqjcFa0t6Ea6C6n3OvkJiaTlH3vcqCmW
         hknvSj3j8l3VUNaLud1fR6VPeXTrLa02Ufok1oegLiZ07cEY0antQG8fwY5Koh85DPaw
         fxHcMiJQNiByk+lkt/Wm7/nmdtKvQLWCod8EBjhtWc0Mbn5tVXUxxhFi1G3uX8GD3CIb
         Nau+KCxIeiMgtpGEaVOlvHwWSQyAszUhaKlhOth+tA58EmH0iNoVX+ILfocP1rHkfEsc
         R43qE780cTYy2bN23r9XiM8tmb59CzCXWtkUIjU2bwlIhZpTOSINMp6nfhGJEDbxtmmY
         YUfg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pm.me header.s=protonmail header.b=NVwRdLfB;
       spf=pass (google.com: domain of alobakin@pm.me designates 185.70.40.22 as permitted sender) smtp.mailfrom=alobakin@pm.me;
       dmarc=pass (p=QUARANTINE sp=QUARANTINE dis=NONE) header.from=pm.me
Received: from mail2.protonmail.ch (mail2.protonmail.ch. [185.70.40.22])
        by gmr-mx.google.com with ESMTPS id a136si458165lfd.5.2021.01.09.15.29.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 09 Jan 2021 15:29:31 -0800 (PST)
Received-SPF: pass (google.com: domain of alobakin@pm.me designates 185.70.40.22 as permitted sender) client-ip=185.70.40.22;
Date: Sat, 09 Jan 2021 23:29:26 +0000
To: Nick Desaulniers <ndesaulniers@google.com>
From: "'Alexander Lobakin' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Cc: Alexander Lobakin <alobakin@pm.me>, clang-built-linux <clang-built-linux@googlegroups.com>, linux-mips@vger.kernel.org, Thomas Bogendoerfer <tsbogend@alpha.franken.de>, Kees Cook <keescook@chromium.org>, Nathan Chancellor <natechancellor@gmail.com>, Fangrui Song <maskray@google.com>, Sami Tolvanen <samitolvanen@google.com>, Ralf Baechle <ralf@linux-mips.org>, LKML <linux-kernel@vger.kernel.org>, linux-arch <linux-arch@vger.kernel.org>
Reply-To: Alexander Lobakin <alobakin@pm.me>
Subject: Re: [BUG mips llvm] MIPS: malformed R_MIPS_{HI16,LO16} with LLVM
Message-ID: <20210109232854.954832-1-alobakin@pm.me>
In-Reply-To: <20210109191457.786517-1-alobakin@pm.me>
References: <20210109171058.497636-1-alobakin@pm.me> <CAKwvOdmV2tj4Uyz1iDkqCj+snWPpnnAmxJyN+puL33EpMRPzUw@mail.gmail.com> <20210109191457.786517-1-alobakin@pm.me>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.2 required=10.0 tests=ALL_TRUSTED,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF shortcircuit=no
	autolearn=disabled version=3.4.4
X-Spam-Checker-Version: SpamAssassin 3.4.4 (2020-01-24) on
	mailout.protonmail.ch
X-Original-Sender: alobakin@pm.me
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@pm.me header.s=protonmail header.b=NVwRdLfB;       spf=pass
 (google.com: domain of alobakin@pm.me designates 185.70.40.22 as permitted
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
Date: Sat, 09 Jan 2021 19:15:31 +0000

> From: Nick Desaulniers <ndesaulniers@google.com>
> Date: Sat, 9 Jan 2021 09:50:44 -0800
>
>> On Sat, Jan 9, 2021 at 9:11 AM Alexander Lobakin <alobakin@pm.me> wrote:
>>>
>>> Machine: MIPS32 R2 Big Endian (interAptiv (multi))
>>>
>>> While testing MIPS with LLVM, I found a weird and very rare bug with
>>> MIPS relocs that LLVM emits into kernel modules. It happens on both
>>> 11.0.0 and latest git snapshot and applies, as I can see, only to
>>> references to static symbols.
>>>
>>> When the kernel loads the module, it allocates a space for every
>>> section and then manually apply the relocations relative to the
>>> new address.
>>>
>>> Let's say we have a function phy_probe() in drivers/net/phy/libphy.ko.
>>> It's static and referenced only in phy_register_driver(), where it's
>>> used to fill callback pointer in a structure.
>>>
>>> The real function address after module loading is 0xc06c1444, that
>>> is observed in its ELF st_value field.
>>> There are two relocs related to this usage in phy_register_driver():
>>>
>>> R_MIPS_HI16 refers to 0x3c010000
>>> R_MIPS_LO16 refers to 0x24339444
>>>
>>> The address of .text is 0xc06b8000. So the destination is calculated
>>> as follows:
>>>
>>> 0x00000000 from hi16;
>>> 0xffff9444 from lo16 (sign extend as it's always treated as signed);
>>> 0xc06b8000 from base.
>>>
>>> = 0xc06b1444. The value is lower than the real phy_probe() address
>>> (0xc06c1444) by 0x10000 and is lower than the base address of
>>> module's .text, so it's 100% incorrect.
>>>
>>> This results in:
>>>
>>> [    2.204022] CPU 3 Unable to handle kernel paging request at virtual
>>> address c06b1444, epc =3D=3D c06b1444, ra =3D=3D 803f1090
>>>
>>> The correct instructions should be:
>>>
>>> R_MIPS_HI16 0x3c010001
>>> R_MIPS_LO16 0x24339444
>>>
>>> so there'll be 0x00010000 from hi16.
>>>
>>> I tried to catch those bugs in arch/mips/kernel/module.c (by checking
>>> if the destination is lower than the base address, which should never
>>> happen), and seems like I have only 3 such places in libphy.ko (and
>>> one in nf_tables.ko).
>>> I don't think it should be handled somehow in mentioned source code
>>> as it would look rather ugly and may break kernels build with GNU
>>> stack, which seems to not produce such bad codes.
>>>
>>> If I should report this to any other resources, please let me know.
>>> I chose clang-built-linux and LKML as it may not happen with userland
>>> (didn't tried to catch).
>>
>> Thanks for the report.  Sounds like we may indeed be producing an
>> incorrect relocation.  This is only seen for big endian triples?
>
> Unfortunately I don't have a LE board to play with, so can confirm
> only Big Endian.
>
> (BTW, if someone can say if it's possible for MIPS (and how if it is)
> to launch a LE kernel from BE-booted preloader and U-Boot, that would
> be super cool)
>
>> Getting a way for us to deterministically reproduce would be a good
>> first step.  Which config or configs beyond defconfig, and which
>> relocations specifically are you observing this with?
>
> I use `make 32r2_defconfig` which combines several configs from
> arch/mips/configs:
>  - generic_defconfig;
>  - generic/32r2.config;
>  - generic/eb.config.
>
> Aside from that, I enable a bunch of my WIP drivers and the
> Netfilter. On my setup, this bug is always present in libphy.ko,
> so CONFIG_PHYLIB=m (with all deps) should be enough.
>
> The three failed relocs belongs to this part of code: [0]
>
> llvm-readelf on them:
>
> Relocation section '.rel.text' at offset 0xbf60 contains 2281 entries:
> [...]
> 00005740  00029305 R_MIPS_HI16            00000000   .text
> 00005744  00029306 R_MIPS_LO16            00000000   .text
> 00005720  00029305 R_MIPS_HI16            00000000   .text
> 00005748  00029306 R_MIPS_LO16            00000000   .text
> 0000573c  00029305 R_MIPS_HI16            00000000   .text
> 0000574c  00029306 R_MIPS_LO16            00000000   .text
>
> The first pair is the one from my first mail:
> 0x3c010000 <-- should be 0x3c010001 to work properly
> 0x24339444
>
> I'm planning to hunt for more now, will let you know.

Unfortunately, R_MIPS_32 also suffers from that. And unlikely
R_MIPS_{HI,LO}16, they can't be handled runtime as the values
are pure random.
I expanded arch/mips/kernel/module.c a bit, so it tries to find
the actual symbol in .symtab after each applied relocation and
print the detailed info. Here's an example from nf_defrag_ipv6
loading:

[  429.789793] nf_defrag_ipv6: final section addresses:
[  429.795409] 	0xc07214fc __ksymtab_gpl
[  429.799574] 	0xc0720000 .text
[  429.802902] 	0xc07216b0 .data
[  429.806249] 	0xc0721790 .bss
[  429.809474] 	0xc0721508 __ksymtab_strings
[  429.813977] 	0xc0728000 .init.text
[  429.817781] 	0xc07214c0 .exit.text
[  429.821606] 	0xc0721520 .rodata
[  429.825120] 	0xc0721578 .rodata.str1.1
[  429.829322] 	0xc0721638 .note.Linux
[  429.833226] 	0xc0721800 .gnu.linkonce.this_module
[  429.838503] 	0xc0721650 .MIPS.abiflags
[  429.842702] 	0xc0721668 .reginfo
[  429.846326] 	0xc0721680 .note.gnu.build-id
[  429.851129] nf_defrag_ipv6: R_MIPS_32 [0x00000008]: 0xc07216b0 -> 0xc07216b8 is broken
[  429.860017] nf_defrag_ipv6: R_MIPS_32 [0x00000008]: 0xc07216b0 -> 0xc07216b8 is broken
[  429.868875] nf_defrag_ipv6: R_MIPS_32 [0x00000138]: 0xc0720000 -> 0xc0720138 is defrag6_net_exit
[  429.878706] nf_defrag_ipv6: R_MIPS_32 [0x000012c8]: 0xc0720000 -> 0xc07212c8 is nf_ct_net_init
[  429.888335] nf_defrag_ipv6: R_MIPS_32 [0x0000142c]: 0xc0720000 -> 0xc072142c is nf_ct_net_pre_exit
[  429.898367] nf_defrag_ipv6: R_MIPS_32 [0x00001440]: 0xc0720000 -> 0xc0721440 is nf_ct_net_exit
[  429.907994] nf_defrag_ipv6: R_MIPS_32 [0x00000057]: 0xc0721578 -> 0xc07215cf is broken
[  429.916872] nf_defrag_ipv6: R_MIPS_32 [0x00000000]: 0x80f297f0 -> 0x80f297f0 is proc_dointvec_jiffies
[  429.927177] nf_defrag_ipv6: R_MIPS_32 [0x00000039]: 0xc0721578 -> 0xc07215b1 is broken
[  429.936044] nf_defrag_ipv6: R_MIPS_32 [0x00000000]: 0x80f29374 -> 0x80f29374 is proc_doulongvec_minmax
[  429.946453] nf_defrag_ipv6: R_MIPS_32 [0x00000072]: 0xc0721578 -> 0xc07215ea is broken
[  429.955320] nf_defrag_ipv6: R_MIPS_32 [0x00000000]: 0x80f29374 -> 0x80f29374 is proc_doulongvec_minmax
[  429.965737] nf_defrag_ipv6: R_MIPS_32 [0x000000a4]: 0xc0720000 -> 0xc07200a4 is ipv6_defrag
[  429.975094] nf_defrag_ipv6: R_MIPS_32 [0x000000a4]: 0xc0720000 -> 0xc07200a4 is ipv6_defrag
[  429.984431] nf_defrag_ipv6: R_MIPS_32 [0x0000106c]: 0xc0720000 -> 0xc072106c is ip6frag_key_hashfn
[  429.994470] nf_defrag_ipv6: R_MIPS_32 [0x00001090]: 0xc0720000 -> 0xc0721090 is ip6frag_obj_hashfn
[  430.004486] nf_defrag_ipv6: R_MIPS_32 [0x000010b8]: 0xc0720000 -> 0xc07210b8 is ip6frag_obj_cmpfn
[  430.014425] nf_defrag_ipv6: R_MIPS_32 [0x00000000]: 0xc0720000 -> 0xc0720000 is nf_defrag_ipv6_enable
[  430.024742] nf_defrag_ipv6: R_MIPS_32 [0x00000001]: 0xc0721508 -> 0xc0721509 is __kstrtab_nf_defrag_ipv6_enable
[  430.036074] nf_defrag_ipv6: R_MIPS_32 [0x00000000]: 0xc0721508 -> 0xc0721508 is __kstrtabns_nf_defrag_ipv6_enable
[  430.047561] nf_defrag_ipv6: R_MIPS_32 [0x00000000]: 0xc0728000 -> 0xc0728000 is init_module
[  430.056930] nf_defrag_ipv6: R_MIPS_32 [0x00000000]: 0xc07214c0 -> 0xc07214c0 is cleanup_module

At least five symbols are broken and lead to nowhere: two from .data
and three from .rodata. Values in square braces are initial references
that can be observed via `nm -n` -- and for broken ones they really
don't correspond to any symbols, mismatching the neighbours' addresses
by 0x40-0x50.

So for now seems like it's really an LLVM problem and there can't be
any simple workaround for it in the kernel.

> [0] https://elixir.bootlin.com/linux/v5.11-rc2/source/drivers/net/phy/phy_device.c#L2989
>
>> Thanks,
>> ~Nick Desaulniers
>
> Thanks,
> Al

Al

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210109232854.954832-1-alobakin%40pm.me.
