Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBCXNU77QKGQE66LZVDA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3f.google.com (mail-vk1-xa3f.google.com [IPv6:2607:f8b0:4864:20::a3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 96E922E41EE
	for <lists+clang-built-linux@lfdr.de>; Mon, 28 Dec 2020 16:15:23 +0100 (CET)
Received: by mail-vk1-xa3f.google.com with SMTP id k192sf4810166vkk.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 28 Dec 2020 07:15:23 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609168522; cv=pass;
        d=google.com; s=arc-20160816;
        b=vK4k0ZC57JgumnJOhHicSaSltEBKpIw11O1C6bzq0svbEtf6eysiUQG6RohDsUgArq
         NkPeqmKsGmg0DF+uKAZbJaLxaXQJ8SLpYLGd4r1hJ3lc1e2Bv3ZGdd2heUJsXRk3soNm
         6jWNoFJ5HBcV+Ef5E2yS0dtq4vkQnRW7NpSxTUYEXQjS7UG/R4jGeZfmD4qfWWttBEd2
         d1DECn+sSd68dyNAqXvOk2m9fjdMz4BWJSCwTtjR3pVBKnbbuyGPt8pUfSb2UqgV0sNu
         X6Zcm57YLGbkU9CQsnRL5QmTly2FvspiNpk/7rUoboyDfEZB73j6gKVRGNGGgz1WlbQc
         bmZQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=tgmE6guuEzXia4QkC0K1Yng7ucBLQgR455HiivT1jHM=;
        b=sxSt3B2gz0O6kYonTNOIUr3gqv6jvRYKUpAHZM5XFCjqzZK0ePomZ4ndqJ1PRKCOmV
         aE46bFy+m7ikoTJ5i0pU555k1sa5z6SJ0mF3E4qCDiBJm3t27vVjxNYAP2gQgBt7Qrhz
         3WYNXphlLrEhgr7TVhSdz2YrLpyWgJQsMIS1QdNRWCrq8+z8JPyNnfIs9/4cVZNjM+9u
         7oE4OU+LWvy1tKF/qHd3bpJ6Z1f90Y3X2ZqPrqMtYqbviCf+1jmtT4K5dfhmp0TUywBw
         YSXVYv48o2+gfoy6Oi1+KJDS5PLhC3cpTwfh0/EUnR3y73EY2GzaHvVCsSZ5jp1Tqv2o
         SrOQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=m+jh0Vbm;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d36 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=tgmE6guuEzXia4QkC0K1Yng7ucBLQgR455HiivT1jHM=;
        b=pYdURsB1wtmiD2K4p4fEdGOF06uiPjExaUgtukHG8hVqW4DsmpzZuMPQCIwrKZYESx
         qtFVPIMl2NURUtffmBE6Fvxx6Sn1u1vbEh0sRtFmjj1AQPQXjgJ5fH2lpfhTgBD3K/qU
         FDufRgxY0SleGbrW9L9QmDm/CHQj8ctWwX23sukyY5iFCP7cR+eNdu/jGTYvt4zV6cPF
         ELcl1l676uK4BWCR0+UH7S616ldOYks+jBEGQ3p1w0zRIH0Y1bacSSAULPfaMR9K2wbU
         153de4vn5r0l4YpEiVKiPPyf4sV/M03VsBaKmbR1fV7bj59BEku2Z9cUafW5vxGgro9Y
         /44g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tgmE6guuEzXia4QkC0K1Yng7ucBLQgR455HiivT1jHM=;
        b=A++hiDZLf0b2+GwGiB/0Dvm7qimcg1HzkEgenZbUpE1A39gw5rmc7hBZfJg9MJcUVw
         is9OUL5Iie8gLNNfcvc1JQMmHF1J6Ic+3O7a0w9+n8Bss70rLYVbuZVR5Gl4W4kOdEXT
         eciKNsyJcqVifSLMrw8ZpNCBw4DQnZXYq9Cn9b/0JpD4U+W7IIa/MrtUH5EHe5StHh2A
         +FRKK0vE3OIJDRg4SiUGl4AVLG8pUbLCPzD8JSWMXrQunBI6VQ2l5Q5Z1ob+vzW7Vdgp
         xOpdG0EiXZb7h7pKYAF58tm4bYkGZl5+3waUFFLJTf84MBUp4pPL0z05qjd3WpGynvqZ
         fe3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=tgmE6guuEzXia4QkC0K1Yng7ucBLQgR455HiivT1jHM=;
        b=oz+rXj/6d3NXzbOHlI+6j38jH1X+MB22HOGmStmDAv0pCmJYLh/rBzmsPNrgT0L2p4
         Tj7oOZ7/88THVG0CLV4gG7wigoeoDqeBXMTYlXJ0XnBap9h5KYhnELCH813WBz/+XkCH
         zOCzsQKgEzgyyXs8nHcC+ZHonRpAa/41Oxtt2HYIT3P4uSdHdE4fxR+Dn82UB6Yc+nkc
         kRvUPu7jM47bl34hL8xbNFHYIDO0nlcwWqJKfyU3hZwhWJfhT4HVWzOH+3AKD/Nmchi6
         nXn6QjxFH/xBSPWzP1cHAB1G520TS5Bda17TwL8eCNJd/aSSPsKtMnv+GVaHFe55Qetl
         SVtg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5301/CDTbx0CHiBzsxcn3AoXpMBgc7saCdp6n5slkcSlNCtEFYWD
	SV3Ao59avi3OUHM1U+PH5Fk=
X-Google-Smtp-Source: ABdhPJwGI5BrzaHE8XdI5AYZzGG0pk+eZZNMxOreRNAf1gNkAB3PPhFHHeQrOt/IDkG30L1UvIrtIw==
X-Received: by 2002:a1f:28c7:: with SMTP id o190mr29993459vko.1.1609168522526;
        Mon, 28 Dec 2020 07:15:22 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:4c41:: with SMTP id z62ls1882686vka.2.gmail; Mon, 28 Dec
 2020 07:15:22 -0800 (PST)
X-Received: by 2002:a1f:db87:: with SMTP id s129mr21408252vkg.1.1609168522082;
        Mon, 28 Dec 2020 07:15:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609168522; cv=none;
        d=google.com; s=arc-20160816;
        b=AlPrq1YfL1IXOTxkzrAMzjJ1xyx6CxkbYdUiuBl3dwYRVcM0ZwROG5+hidb/43KJH9
         tFckpC3cvLWdlmRxP3ynfKUz9JRZbe7YFREKApwQtgzMojJrSynML+jkC3IeHeSvwtXU
         Xsw8MAtiFii9FfBtCwhFkKGq+5EdpTAqKJFHIgpytjI8o/MVccElnRH+kL7IgVEX21h7
         nlChnpeswju8ob1HpSsN54g2Xawj9fmAZJVbJPotrb2Nl4Z3xc29TnaDnAFv7fv4afTQ
         CflAdxCD70WxYuO8afA6+PZAl9j5wk6XtC7osHvLXzo1HudnF8LZiMGAo0c9HjEzOf9f
         8N5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=B/njducXxllObqBRojPsd+9t2F8x7xww868SuqkaFxg=;
        b=ivRkt6jjq6rVyRP3xaIE/tHS4fETO9AtvTxIMA56hELlhpUm6+j4R3xvBZmrr1TpM7
         lO9idn98lWhz90hpLoldCnIzheVbHZ88D//trF4k/wrhbs1rKVIjXJJ/9R1MfBnKuQvL
         X/gFpWNx1tIglSyM3ArcrNO8dCfXByBCF9Euvv/91elnWjQ5XGF8fYw/6a8ZACJL0f0m
         rZpTn0qsTLiShNhwexmckWOcoCEKv+HV2gKZK4FuJFqsNhpJudFZqHP6bFSvvwSxHKzr
         RqS9MTJW4a255qUiZjQB2dvaj/iLx+FdbLNADgWO+BbM39L1BrLklK5XC/E7G2gL9ua4
         LOdA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=m+jh0Vbm;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d36 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd36.google.com (mail-io1-xd36.google.com. [2607:f8b0:4864:20::d36])
        by gmr-mx.google.com with ESMTPS id m19si2374806vkm.5.2020.12.28.07.15.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Dec 2020 07:15:22 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d36 as permitted sender) client-ip=2607:f8b0:4864:20::d36;
Received: by mail-io1-xd36.google.com with SMTP id m23so9667738ioy.2
        for <clang-built-linux@googlegroups.com>; Mon, 28 Dec 2020 07:15:22 -0800 (PST)
X-Received: by 2002:a6b:92c4:: with SMTP id u187mr36162470iod.57.1609168521415;
 Mon, 28 Dec 2020 07:15:21 -0800 (PST)
MIME-Version: 1.0
References: <20201204011129.2493105-1-ndesaulniers@google.com>
 <20201204011129.2493105-3-ndesaulniers@google.com> <CAKwvOdkZEiHK01OD420USb0j=F0LcrnRbauv9Yw26tu-GRbYkg@mail.gmail.com>
 <CA+icZUW19o=bEcT6wOZ+9Yt6UtAoZ2-9ijNadC101_dMfn-VVA@mail.gmail.com>
In-Reply-To: <CA+icZUW19o=bEcT6wOZ+9Yt6UtAoZ2-9ijNadC101_dMfn-VVA@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Mon, 28 Dec 2020 16:15:09 +0100
Message-ID: <CA+icZUWwNWVQDYUCoo6TQNBOtMqwwEuLJuNO2c8gvihs6jTGOA@mail.gmail.com>
Subject: Re: [PATCH v3 0/2] Kbuild: DWARF v5 support
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Arvind Sankar <nivedita@alum.mit.edu>, 
	Jakub Jelinek <jakub@redhat.com>, Fangrui Song <maskray@google.com>, Caroline Tice <cmtice@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Nick Clifton <nickc@redhat.com>, 
	LKML <linux-kernel@vger.kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=m+jh0Vbm;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d36
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

On Sun, Dec 27, 2020 at 7:47 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>
> On Fri, Dec 4, 2020 at 2:13 AM 'Nick Desaulniers' via Clang Built
> Linux <clang-built-linux@googlegroups.com> wrote:
> >
> > sigh...I ran a broken script to send the series which doesn't cc folks properly.
> > + lkml, linux-kbuild
> > (Might just resend, properly)
> >
> > On Thu, Dec 3, 2020 at 5:11 PM Nick Desaulniers <ndesaulniers@google.com> wrote:
> > >
> > > DWARF v5 is the latest standard of the DWARF debug info format.
> > >
> > > DWARF5 wins significantly in terms of size when mixed with compression
> > > (CONFIG_DEBUG_INFO_COMPRESSED).
> > >
> > > Link: http://www.dwarfstd.org/doc/DWARF5.pdf
> > >
> > > Patch 1 is a cleanup that lays the ground work and isn't DWARF
> > > v5 specific.
> > > Patch 2 implements Kconfig and Kbuild support for DWARFv5.
> > >
> > > Changes from v2:
> > > * Drop two of the earlier patches that have been accepted already.
> > > * Add measurements with GCC 10.2 to commit message.
> > > * Update help text as per Arvind with help from Caroline.
> > > * Improve case/wording between DWARF Versions as per Masahiro.
> > >
> > > Changes from the RFC:
> > > * split patch in 3 patch series, include Fangrui's patch, too.
> > > * prefer `DWARF vX` format, as per Fangrui.
> > > * use spaces between assignment in Makefile as per Masahiro.
> > > * simplify setting dwarf-version-y as per Masahiro.
> > > * indent `prompt` in Kconfig change as per Masahiro.
> > > * remove explicit default in Kconfig as per Masahiro.
> > > * add comments to test_dwarf5_support.sh.
> > > * change echo in test_dwarf5_support.sh as per Masahiro.
> > > * remove -u from test_dwarf5_support.sh as per Masahiro.
> > > * add a -gdwarf-5 cc-option check to Kconfig as per Jakub.
> > >
>
> I have tested v3 on top of Linux v5.10.3 on Debian/testing AMD64.
>
> Numbers talk - bullshit walks. [ Linus Torvalds ]
>
> [ 5.10.3-1-amd64-gcc10-bfd ]
>
> GNU-toolchain: GCC v10.2.1 and GNU/ld BFD v2.35.1
>
> 503096  vmlinux
> 6864    vmlinux.compressed
> 580104  vmlinux.o
>
> 701856  linux-image-5.10.3-1-amd64-gcc10-bfd-dbg_5.10.3-1~bullseye+dileks1_amd64.deb
>
> [ 5.10.3-1-amd64-clang-ias ]
>
> LLVM-toolchain: Clang and LLD v11.0.1-rc2
>
> 358424  vmlinux
> 7032    vmlinux.compressed
> 353788  vmlinux.o
>
> 508336  linux-image-5.10.3-1-amd64-clang-ias-dbg_5.10.3-1~bullseye+dileks1_amd64.deb
>
> [ 5.10.3-1-amd64-gcc10-bfd ]
>
> $ llvm-dwarfdump-11 vmlinux.o | head -15
> error: vmlinux.o:       file format elf64-x86-64
>
> .debug_info contents:
> decoding address ranges: invalid range list offset 0x265
> 0x00000000: Compile Unit: length = 0x0000001f, format = DWARF32,
> version = 0x0005, unit_type = DW_UT_compile, abbr_offset = 0x0000,
> addr_size = 0x08 (next unit at 0x00
> 000023)
>
> 0x0000000c: DW_TAG_compile_unit
>              DW_AT_stmt_list   (0x00000000)
>              DW_AT_ranges      (0x0000000c
>                 [0x0000000000000000, 0x000000000000021c)
>                 [0x0000000000000000, 0x000000000000019e)
>                 [0x0000000000000000, 0x0000000000002000))
>              DW_AT_name        ("head_64.S")
>              DW_AT_comp_dir    ("/home/dileks/src/linux-kernel/git")
>              DW_AT_producer    ("GNU AS 2.35.1")
>              DW_AT_language    (DW_LANG_Mips_Assembler)
>
> [ 5.10.3-1-amd64-clang-ias ]
>
> $ llvm-dwarfdump-11 vmlinux.o | head -15
> vmlinux.o:      file format elf64-x86-64
>
> .debug_info contents:
> 0x00000000: Compile Unit: length = 0x00000377, format = DWARF32,
> version = 0x0005, unit_type = DW_UT_compile, abbr_offset = 0x0000,
> addr_size = 0x08 (next unit at 0x00
> 00037b)
>
> 0x0000000c: DW_TAG_compile_unit
>              DW_AT_stmt_list   (0x00000000)
>              DW_AT_ranges      (0x0000000c
>                 [0x0000000000000000, 0x0000000000002000)
>                 [0x0000000000000000, 0x000000000000021c)
>                 [0x0000000000000000, 0x000000000000019e))
>              DW_AT_name        ("arch/x86/kernel/head_64.S")
>              DW_AT_comp_dir    ("/home/dileks/src/linux-kernel/git")
>              DW_AT_producer    ("Debian clang version 11.0.1-+rc2-1")
>              DW_AT_language    (DW_LANG_Mips_Assembler)
>

Some more numbers with Linux v5.11-rc1 and identical GNU and LLVM toolchains.

[ 5.11.0-rc1-1-amd64-gcc10-bfd ]

492     vmlinux
7       vmlinux.compressed
567     vmlinux.o
685     linux-image-5.11.0-rc1-1-amd64-gcc10-bfd-dbg_5.11.0~rc1-1~bullseye+dileks1_amd64.deb

[ 5.11.0-rc1-2-amd64-clang-ias ]

350     vmlinux
7       vmlinux.compressed
345     vmlinux.o
495     linux-image-5.11.0-rc1-2-amd64-clang-ias-dbg_5.11.0~rc1-2~bullseye+dileks1_amd64.deb

- Sedat -

 > Attached are my kernel config files.
>
> Feel free to add my:
>
> Tested-by: Sedat Dilek <sedat.dilek@gmail.com>
>
> - sed@ -
>
> > > Nick Desaulniers (2):
> > >   Kbuild: make DWARF version a choice
> > >   Kbuild: implement support for DWARF v5
> > >
> > >  Makefile                          | 15 +++++++------
> > >  include/asm-generic/vmlinux.lds.h |  6 +++++-
> > >  lib/Kconfig.debug                 | 35 ++++++++++++++++++++++++++-----
> > >  scripts/test_dwarf5_support.sh    |  9 ++++++++
> > >  4 files changed, 53 insertions(+), 12 deletions(-)
> > >  create mode 100755 scripts/test_dwarf5_support.sh
> > >
> > > --
> > > 2.29.2.576.ga3fc446d84-goog
> > >
> >
> >
> > --
> > Thanks,
> > ~Nick Desaulniers
> >
> > --
> > You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkZEiHK01OD420USb0j%3DF0LcrnRbauv9Yw26tu-GRbYkg%40mail.gmail.com.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUWwNWVQDYUCoo6TQNBOtMqwwEuLJuNO2c8gvihs6jTGOA%40mail.gmail.com.
