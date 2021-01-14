Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBJNBQCAAMGQEPAOGROQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3b.google.com (mail-io1-xd3b.google.com [IPv6:2607:f8b0:4864:20::d3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 6225C2F5DC5
	for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 10:36:38 +0100 (CET)
Received: by mail-io1-xd3b.google.com with SMTP id 191sf7371646iob.15
        for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 01:36:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610616997; cv=pass;
        d=google.com; s=arc-20160816;
        b=oLREBZN3JuoUvw2adZ26jCWzD41/w3xngrULtrqdTegpl6QEo70B2mdRTbhyB/VaIe
         eJF5wNHnWwQRhvAGu793be+lDxRGxZJz8pT+yvT9fwDh1evez9Y+cWT9lbEYS5tKqjvX
         Eu/0fveEF+nTVR0wQmyNKr1FYzcx/sORQdj2rAU+6XotktQ6+MJwYKr8I1FDatAE5CyI
         DcQvCkLI3qePHexfMgq3nClvZulMpXmJBtzJhACq5gw/Bojw49FwbjS8FePfBrSFZiiy
         j102Nbjd3Woe7dHuMylTbLDH/Z/PLdKpia+SkAWRwGDZe7/vJ3TCxtBe2jg+/mTLbEtt
         l6SQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=PjIBm6kK05xiS50OxKg6v1YUf81yZFfxaEBqj5rb4us=;
        b=pCi/i20uuNNq0BlysxX2rcVOxsCHW++lVdFA9KDeIfL1bdH/IK28MEqtw5yUarieL9
         TZhBxs5Meiogc0dybL/KVlzd3Vj3HGipduHf1T1YoPrbmMOGYQrCygiyhAmhph6i6QsB
         JJdIkEpkp0QWIJtHlYywANPjOwG+UmSeGk+PvLo7UyYUPqzTsWz64EWk+gPuvEahuQK1
         i3yc80J8dKFZVpFPpS7kyNRWF/HOADToula/KcqUl25En+WuyEL5tDLbK4FIw3V5VUxm
         l5m31N/kl2/zC460y8vkI10e7uaU+DyPxAR24Dtzrswr74Dps9/FF0T0J71HRx9RUUpV
         P/yQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iB9snSE6;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d29 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=PjIBm6kK05xiS50OxKg6v1YUf81yZFfxaEBqj5rb4us=;
        b=lkpaGFJrrE+hy1O4Yjmws1sysuGgDk5rXEA3e2cZ5IW0CHAmxv+NSnWbEChFlk7eXy
         1T0QXfKGNazVFVxieB+5BF3FJR3jHdztvg0+rVqj/EAzwuJdKBynDcjRd9uvqyT74Qgf
         C8Von7r5udQld6T7EnwRWgu19otWxOyOq6pw530bjsVRUCo5mXayfTJjdoVpnrpHqo6z
         zwyiFdknc2OL/4n7u0snZxT9FVlUxj728zH9B8XeUYmsAZYGbi/LWMyFAyu5U4TO4dXg
         SLAbH0rB0iUweBrzJZ937qKQHYkjl2RMW0kKaa/v4O1TtKFRF7AUxV6UrIspzMAGbmWs
         b/qg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PjIBm6kK05xiS50OxKg6v1YUf81yZFfxaEBqj5rb4us=;
        b=qtNMRJCKoz6lZsZaQhoayR3GyfHEmv+FDS6O8nhL0c4yw4NelWA4rPZpJtHwgC64FS
         sd99C20hsj14OtZthvk+nuEFF8tUguu37MHE4zcP6mS9WR8NdBswRVquq0hD+uozq1N5
         jKGSMu4e5aJ6HZ6Q3KMW1fxnSGsd1PjxByx++HPnGOijJiUfVfmLs5lYkFiH30y5DXfX
         WDDPhG+BghRvIvzziuqMNihzZfG4z2TsquKZ7XLyO4Ixmrb8X2494V82kBgoRSMHnr2y
         gjMNJ8ZS/ZclMWnuiv4Vtenbfdmn9upQj4KkrmXDwlmTl3EfDIAFHeZ8SfP8bGXPWBeL
         AcRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PjIBm6kK05xiS50OxKg6v1YUf81yZFfxaEBqj5rb4us=;
        b=abLelhfhymfMBQjNSc043uQkpMwdmVgad3vioWUFCB2s1VZ1+i4wnVTdzEcLvIkrZA
         P+u5Q/xTsXk4dF2UQ4AVGO2rb8EF+Cs/Uc1UxC0r22jKGs3BdFMN/Cl+4Wju1zdGqkgr
         f1LhnNMzGksxRlMRsDvW/elo2NeDddlwHqZk3wQveiseg703eDe5GtyUI9ERuHFGSuQd
         GhY3XIkayGPUUCtI0tj30FOYoWXjEPr1SPCg1yh68AGknaVgeSjm7MtGDin4i/bIDlIY
         YDmC90g7y7D3HMh25w0ejS3BOf67TAFX2vcHIJNRAPzcId667x8Q7MqEQD3lovHij8q8
         IOrQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531HQjYYh2+lkSwzoWrxVNr9h2MTHvkxSFEQ9VLoLAUo+XnihREC
	ey2CmPca2BY5/6tPFhJZwH8=
X-Google-Smtp-Source: ABdhPJxTHwLfszl7dHzGCFJ3/74LubRtDO6RD7QZBfwoCw570AgXdvmEBEGTC9upf/AJVre9fSm0tw==
X-Received: by 2002:a92:c842:: with SMTP id b2mr5802661ilq.206.1610616997437;
        Thu, 14 Jan 2021 01:36:37 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5e:8719:: with SMTP id y25ls733999ioj.2.gmail; Thu, 14 Jan
 2021 01:36:37 -0800 (PST)
X-Received: by 2002:a6b:5d07:: with SMTP id r7mr4744990iob.84.1610616996873;
        Thu, 14 Jan 2021 01:36:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610616996; cv=none;
        d=google.com; s=arc-20160816;
        b=obTqz0Rn0LUzja5s6+1FRMNzsrlCeVdi7tFipD9zwkbYMyX1zk0tuKazFxQwdKNWvM
         /Mh7gUqFd349DmgBt0BaS5VGGXNZs7TAV/PXkKX0vxKY7nQrXQB2yVDUSLMEDZk1BsRV
         nlisoKUjuaI48Sp7kjlM4wZm5GgvcpdpeL3Q8YTBjD/0zYjbFA9VF4YK/h4e6yHcu3S2
         rWeNVjWZRrAw4A2JHQCSeLU2B7ZaQnwB10zSKYUToWCEu6pZAvzRQ1fp4qgbpQ1cqC4H
         hg+Ensk5fkaBIKDvKYx1cKJkrKbMPj4CJogkG6BI9tBGgpuDWNR1g2op1Cx1SLBlkLiP
         2yFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=8yEozLBbojK3LMsKx8dIthS97lH2HPvpcREqx+xNlDA=;
        b=0+6KF0oCnoOc/FtCNAzN2H7gfUV5PNpiQh4gbn32cGprEsSBHkif3yBl/9mKG4Pt1o
         xpS9rdgbdpvDNy2OFeKuWIAbwerD/7Ck7oonQwX8TjsRj0iHpRWsCaJffKNUSb9GYkMv
         W6lUuu2NAy0mLkz1vQ28F3BLtaWBSZ1EZT73plwPCHMLgxP6ImC+SszF9E/tIGmnHTAI
         AYpgfpi7RHnbIwrDvdUxM5Ps89Q6LLnsNB89mhRAstXOvXiFOhd9TjPTF6h+E3axVqXD
         KlTSEw9QFzldc9p1ImSTG2YsZm1zjfROh/qLMC/g54J2DjLevL26cQlHZS1uWgRiVumo
         D02g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=iB9snSE6;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d29 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd29.google.com (mail-io1-xd29.google.com. [2607:f8b0:4864:20::d29])
        by gmr-mx.google.com with ESMTPS id b8si626568ile.1.2021.01.14.01.36.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 14 Jan 2021 01:36:36 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d29 as permitted sender) client-ip=2607:f8b0:4864:20::d29;
Received: by mail-io1-xd29.google.com with SMTP id n4so9809221iow.12
        for <clang-built-linux@googlegroups.com>; Thu, 14 Jan 2021 01:36:36 -0800 (PST)
X-Received: by 2002:a05:6602:2f93:: with SMTP id u19mr4615963iow.110.1610616996433;
 Thu, 14 Jan 2021 01:36:36 -0800 (PST)
MIME-Version: 1.0
References: <20201204011129.2493105-1-ndesaulniers@google.com>
 <20201204011129.2493105-3-ndesaulniers@google.com> <CA+icZUVa5rNpXxS7pRsmj-Ys4YpwCxiPKfjc0Cqtg=1GDYR8-w@mail.gmail.com>
 <CA+icZUW6h4EkOYtEtYy=kUGnyA4RxKKMuX-20p96r9RsFV4LdQ@mail.gmail.com>
 <CABtf2+RdH0dh3NyARWSOzig8euHK33h+0jL1zsey9V1HjjzB9w@mail.gmail.com> <CA+icZUUtAVBvpU8M0PONnNSiOATgeL9Ym24nYUcRPoWhsQj8Ug@mail.gmail.com>
In-Reply-To: <CA+icZUUtAVBvpU8M0PONnNSiOATgeL9Ym24nYUcRPoWhsQj8Ug@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Thu, 14 Jan 2021 10:36:24 +0100
Message-ID: <CA+icZUWgrp1mXRU+5ADWRGK5nQ=fbgn2+FBANB5g+9rAi+Ewsw@mail.gmail.com>
Subject: Re: [PATCH v3 0/2] Kbuild: DWARF v5 support
To: Caroline Tice <cmtice@google.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Masahiro Yamada <masahiroy@kernel.org>, 
	Arvind Sankar <nivedita@alum.mit.edu>, Jakub Jelinek <jakub@redhat.com>, 
	Fangrui Song <maskray@google.com>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, Nick Clifton <nickc@redhat.com>, 
	bpf@vger.kernel.org, Andrii Nakryiko <andrii@kernel.org>, Jiri Olsa <jolsa@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=iB9snSE6;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d29
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
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

On Thu, Jan 14, 2021 at 7:18 AM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
> On Wed, Jan 13, 2021 at 11:25 PM Caroline Tice <cmtice@google.com> wrote:
> >
> >
> >
> >
> >
> > On Tue, Jan 12, 2021 at 3:17 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> >>
> >> On Mon, Jan 11, 2021 at 9:27 AM Sedat Dilek <sedat.dilek@gmail.com> wrote:
> >> >
> >> > On Fri, Dec 4, 2020 at 2:11 AM 'Nick Desaulniers' via Clang Built
> >> > Linux <clang-built-linux@googlegroups.com> wrote:
> >> > >
> >> > > DWARF v5 is the latest standard of the DWARF debug info format.
> >> > >
> >> > > DWARF5 wins significantly in terms of size when mixed with compression
> >> > > (CONFIG_DEBUG_INFO_COMPRESSED).
> >> > >
> >> >
> >> > Is this patchset bulletproof with CONFIG_DEBUG_INFO_BTF=y (and clang-cfi)?
> >> >
> >> > Debian has enabled this Kconfig in recent Linux v5.10 kernels which is
> >> > a base for my custom kernels.
> >> >
> >> > It was fu**ing annoying to see I have no pahole binary installed and
> >> > my build got broken after 3 hours of build.
> >> > OK, I see that requirements is coded in scripts/link-vmlinux.sh.
> >> >
> >> > I needed to install dwarves package which provides pahole binary.
> >> >
> >> > I would like to see a prereq-checking for needed binaries with certain
> >> > Kconfig set.
> >> >
> >> > After I calmed down I will - maybe - write to linux-kbuild mailing-list.
> >> > Hope this will be a friendly email.
> >> >
> >>
> >> After linux-bpf folks recommended not to use LLVM I jumped to gcc-10.
> >>
> >> I tried with ld.bfd first and then in a next run with LLVM=1.
> >>
> >> Upgraded pahole binary to latest Git plus a recommended patch from
> >> linux-btf folks.
> >>
> >> Unfortunately, I see with CONFIG_DEBUG_INFO_DWARF5=y and
> >> CONFIG_DEBUG_INFO_BTF=y:
> >>
> >> die__process_inline_expansion: DW_TAG_INVALID (0x48) @ <0x3f0dd5a> not handled!
> >> die__process_function: DW_TAG_INVALID (0x48) @ <0x3f0dd69> not handled!
> >>
> >> In /usr/include/dwarf.h I found:
> >>
> >> 498:    DW_OP_lit24 = 0x48,                /* Literal 24.  *
> >
> >
> > There are multiple dwarf objects with the value 0x48, depending on which section of the dwarf.h file you search:
> >
> > DW_TAG_call_site = 0x48
> > DW_AT_static_link = 0x48
> > DW_OP_lit24 = 0x48.
> >
> > In this case, since the error message was about a DW_TAG, it would be complaining about DW_TAG_call_site, which is new to DWARR v5.
> >
>
> [ CC linux-bpf & Andrii and Jiri ]
>
> Thanks for your feedback Caroline.
>
> I ran several builds in the last 24 hours with Linux v5.11-rc3.
>
> Setting DWARF version 2 (CONFIG_DEBUG_INFO_DWARF2=y) or version 4
> (CONFIG_DEBUG_INFO_DWARF4=y) with this patchset together with GCC
> v10.2.1 plus LLVM=1 does NOT show this.
> BTW, it does not matter when LLVM/Clang v12 and LLVM/Clang v11 is used.
> But again my compiler is here GCC plus LLVM utils like llvm-objcopy,
> ld.lld, lllvm-ar, llvm-nm, etc.
> ( My initial problem was also seen with Clang v11.0.1 - I switched to
> GCC as Debian's linux-kernel uses CONFIG_DEBUG_INFO_BTF=y
> successfully. )
>
> So, this is definitely a DWARF version 5 issue when
> CONFIG_DEBUG_INFO_BTF=y (and CONFIG_DEBUG_INFO_BTF_MODULES=y).
>
> Furthermore, my build-log says with pahole (see post-scriptum) from
> dwarves package - here as an example:
>
> WARN: multiple IDs found for 'bpf_map': 3860, 369255 - using 3860
>
> $ grep 'WARN: multiple IDs found for'
> build-log_5.11.0-rc3-6-amd64-gcc10-llvm11.txt | wc -l
> 1621
>
> In the Linux code this derives from tools/bpf/resolve_btfids:
>
> static int symbols_resolve(struct object *obj)
> ...
>                                 pr_info("WARN: multiple IDs found for
> '%s': %d, %d - using %d\n",
>
> ( Cut-n-paste into Gmail truncates the lines and indentation, so I dropped it. )
>
> Please see:
>
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/tools/bpf/resolve_btfids/main.c#n469
> https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/tools/bpf/resolve_btfids/main.c#n532
>
> I looked with llvm-dwarf tool and saw some errors concerning
> ".debug-ranges" (cannot remember the exact output and the command-line
> I used).
>

I found in my archives:

[ error: decoding address ranges: ]

Looks like these DW_TAG_xxx are involved.

$ egrep -B4 -n 'error: decoding address ranges:' llvm-dwarfdump.txt |
grep DW_TAG_ | awk '{ print $2 }' | sort | uniq
DW_TAG_compile_unit
DW_TAG_formal_parameter
DW_TAG_inlined_subroutine
DW_TAG_lexical_block
DW_TAG_subprogram

[ example ]

1017373-0x001a1691: DW_TAG_compile_unit
1017374-              DW_AT_producer    ("GNU C89 10.2.1 20210110
-mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -m64 -mno-80387
-mno-fp-ret-in-387 -mpreferred-stack-
boundary=3 -mskip-rax-setup -mtune=generic -mno-red-zone
-mcmodel=kernel -mindirect-branch=thunk-extern
-mindirect-branch-register -mrecord-mcount -mfentry -march=x86-
64 -g -gdwarf-5 -O2 -std=gnu90 -p -fno-strict-aliasing -fno-common
-fshort-wchar -fno-PIE -falign-jumps=1 -falign-loops=1
-fno-asynchronous-unwind-tables -fno-jump-tab
les -fno-delete-null-pointer-checks -fno-allow-store-data-races
-fstack-protector-strong -fno-strict-overflow -fstack-check=no
-fconserve-stack -fcf-protection=none")
1017375-              DW_AT_language    (DW_LANG_C11)
1017376-              DW_AT_name        ("arch/x86/events/intel/knc.c")
1017377-              DW_AT_comp_dir    ("/home/dileks/src/linux-kernel/git")
1017378:              DW_AT_ranges      (0x000080d8error: decoding
address ranges: invalid range list offset 0x80d8
1017379-)
1017380-              DW_AT_low_pc      (0x0000000000000000)
1017381-              DW_AT_stmt_list   (0x000298ec)
1017382-

Furthermore I see <decoding error>.

[ example <decoding error> ]

1016826-0x001a131b:     DW_TAG_formal_parameter
1016827-                  DW_AT_abstract_origin (0x0019dacd "event")
1016828-                  DW_AT_location        (0x00020eff:
1016829:                     [0xffffffff8100f9c0, 0xffffffff8100fa76):
<decoding error> fa 37 3e 01 00 9f)
1016830-                  DW_AT_unknown_2137    (0x00020efd)

- Sedat -

> Example for "DW_TAG_INVALID (0x48)" from my build-log:
>
> die__process_inline_expansion: DW_TAG_INVALID (0x48) @ <0x1f671e7> not handled!
>
> $ llvm-dwarfdump-11 --debug-info=0x1f671e7 vmlinux
> vmlinux:        file format elf64-x86-64
>
> .debug_info contents:
>
> 0x01f671e7: DW_TAG_call_site
>              DW_AT_call_return_pc      (0xffffffff811b16f2)
>              DW_AT_call_origin (0x01f67f1d)
>
> Looking for "DW_AT_call_origin (0x01f67f1d)":
>
> $ llvm-dwarfdump-11 --debug-info=0x01f67f1d vmlinux
> vmlinux:        file format elf64-x86-64
>
> .debug_info contents:
>
> 0x01f67f1d: DW_TAG_subprogram
>              DW_AT_external    (true)
>              DW_AT_declaration (true)
>              DW_AT_linkage_name        ("fput")
>              DW_AT_name        ("fput")
>              DW_AT_decl_file
> ("/home/dileks/src/linux-kernel/git/./include/linux/file.h")
>              DW_AT_decl_line   (16)
>              DW_AT_decl_column (0x0d)
>
> I have no experience in digging into DWARF (version 5) issues and how
> to use llvm-dwarf or another appropriate tool.
> If you give me a hand...
> So all the above says - to be honest - nothing to me.
> I hope it says something to you experts.
>
> Regards,
> - Sedat -
>
> P.S.: I tried with a selfmade pahole from latest Git plus Jiri's v2
> patch of "btf_encoder: Add extra checks for symbol names".
>
> link="https://lore.kernel.org/bpf/20210113102509.1338601-1-jolsa@kernel.org/T/#t
> b4 -d am $link
> ...
> Wrote v2_20210113_jolsa_btf_encoder_add_extra_checks_for_symbol_names.am
> for thanks tracking
>
> [1] https://git.kernel.org/pub/scm/devel/pahole/pahole.git/
>
> >>
> >>
> >> Can someone enlighten what is going on?
> >>
> >> Nick, Fangrui?
> >>
> >> Thanks.
> >>
> >> - Sedat -
> >>
> >> P.S.: Patch from linux-bpf
> >>
> >> link="https://lore.kernel.org/bpf/20210112194724.GB1291051@krava/T/#t"
> >> b4 -d am $link
> >>
> >> - EOT -

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUWgrp1mXRU%2B5ADWRGK5nQ%3Dfbgn2%2BFBANB5g%2B9rAi%2BEwsw%40mail.gmail.com.
