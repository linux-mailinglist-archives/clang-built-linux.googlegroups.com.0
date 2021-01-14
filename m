Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBPO4777QKGQECVS4YTI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53f.google.com (mail-pg1-x53f.google.com [IPv6:2607:f8b0:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id 8498A2F5B10
	for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 08:09:51 +0100 (CET)
Received: by mail-pg1-x53f.google.com with SMTP id l22sf3126546pgc.15
        for <lists+clang-built-linux@lfdr.de>; Wed, 13 Jan 2021 23:09:51 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610608190; cv=pass;
        d=google.com; s=arc-20160816;
        b=0CKYFAKqxbt8oiVYw1zSa9wZjNVNdZgnvgN2Mkz7P//ubDIV2wJz6pDeMq8xn5Csc6
         PV3WnlOnoO18D5jWnrLZ4sIpa6wc8/3CmuGzWvMb62pTXmi8A8+J8l6Im/EGU+mrdJR+
         XtV1WKBQp8GPZGpP9VyKOxA+h27h/QbxSHy26ZZ7lPd6C1gGew3v9Gu7m1h+DH0ApvmG
         unyRj7g9rcjWFQQKeAJuCQ1CT3eOhSY0MKF2puhTcATMyi/Si5yKGkHRH5SwOBjWJ5RK
         OSvNPRN76jr8wlXwEEw2rXMjONvdncbcxtj7Gen6/t9pCcFY1TJdFxhsVzlKmPQzoxYb
         88dA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=emDKlQIhMRR/bhaoJbBCXw29Af9XjhJFPlIWTNGpZDA=;
        b=SItq8ZQXU2eXiL9mJxhDAZMtGPMgDL43xU0zD2GnT2hBQ67uP6RaRcZN6kx6TCRHvG
         HsFNrKCVSO8Htig1lfUXHWzsHtCyvBT5Z9Uw8eGZzZmf18hbSWmWCnAthYcPpIkLCmFm
         jmX0+Sh9zQJ9Ya3oo3GlLjauDFfCe6H7xeZvxELSWjln/HzFCJxtHz8VplJLXmAi8lPX
         rwiruE5Fdbw6hDmpPvTqUAJQTx+sISukPFz7E9ELED+cpPFqBKqlzHogX01UlFI8FMau
         AeM/4yn+bbyhoKvX2lKpz/nb5K09vSAZR3b6Wy+LcGkYMAyM24Z5JHhW4W/cEc9wN2JO
         /VmQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Wk4HdgnF;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d32 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=emDKlQIhMRR/bhaoJbBCXw29Af9XjhJFPlIWTNGpZDA=;
        b=eZyu24GfIZAfXAPypNBILs6UyRJ8gubHaDBd0wIfGz0y5wvzl+5ngNy2aaB64UI0to
         96bqWWOoFRzEyxgbR2Hhx0Ze2z+8JceRf7oHjH0MEqYtspLVf4vFfRKF74D2h/ECufvV
         IyJvQ/D6Nea6/nGNdQeKGfYGSdUhu7kqqjXgDyPnEYBpL54SE0QAVGS+2HnEOzJXgdSZ
         whPbBBgqvBRgQcAcVQyPR0GuRMm4xE4gE2uAMVi9YL7AbqXSOOmmu5rVp1sO+J1xatAZ
         d4fZ8KwSxc6rze92jyircrLSIZzyxrLw61RY3zv23SHn/iBeKHZT8n8hba+556g/45gE
         qzag==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=emDKlQIhMRR/bhaoJbBCXw29Af9XjhJFPlIWTNGpZDA=;
        b=GumSlu9wfZwjF7iZsGqo1apqZgMSv9PADM0tU51Kw33cEs2ByT9dlpAJo3pfvCSpc3
         0PZdeVCxy2GWiaFNpTWEpF1V9VeK/xz6bbiKifEskjrGHdwlVSCkv4vbVbl2z7bXaHRw
         fZ8Z6W00A2CWiqeHOTbkGXwpF7SScisjVvGjUoGVSlAuRgpEtIb7P50yTuXfZVMNtoKF
         BnERb1uQ7rlQke/2/hpg2oCqlGnRCiJ3I7d8UzAM6be1j9NjxQ8emLYb8FqXC8Z1gBy5
         DWGESHAHwT9nMoO5pN7FJdvp8qkSh9Yyts4a3DkUmg3OBCsHesgmUihp0mUc3jRbB/Ss
         i8AA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=emDKlQIhMRR/bhaoJbBCXw29Af9XjhJFPlIWTNGpZDA=;
        b=GIPOlkvz4qcgoYstbREDLMbCvQrZIKvUlVCPWKwRFtYCyEC8c67RfVvOUz5cc7q7bS
         ATgIwwGKim4ECXgZKnrDc+JOAb9CaOcx/5RgW/PK6QUZRa6HAm1yjrzWXasonM3ZXT7G
         Fh1zNC4cnoxEwzivuvjOEmfIJ1wIjnNEt6hRDEmc3f37gi0kA2JaKAXiiVL1lZO9ydfF
         X2CcahCBFXLL8rKogJXj8J8Yqzt+ZOIUS694WvLT7ySfVLofTiVF5B+tnokX8nI3Q9gK
         cF1WC5/C/ZgT4wLUiSotmTZCtOSYA/kKq+hrO0ODrM0qb0+p7Z/vVWRpZp5Gk8zvh5JT
         Tvvg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532QbJhO3M2F88f/cqyK7b/1DRfIJpSdwlFxk12keVjJRU/lG6vw
	pvHtH0HGXxkCXGcOx4PccSg=
X-Google-Smtp-Source: ABdhPJyKYd0XT8OaxSISV/KnPg7WFEVLibOfeu+r86ZUN5BIrsflAZx1NzceaZWzZGQn5cWnbpmiow==
X-Received: by 2002:a17:90a:eb13:: with SMTP id j19mr3443117pjz.219.1610608189942;
        Wed, 13 Jan 2021 23:09:49 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:a609:: with SMTP id u9ls2350540plq.7.gmail; Wed, 13
 Jan 2021 23:09:49 -0800 (PST)
X-Received: by 2002:a17:90a:5802:: with SMTP id h2mr3704847pji.68.1610608189244;
        Wed, 13 Jan 2021 23:09:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610608189; cv=none;
        d=google.com; s=arc-20160816;
        b=WzCtxkI07j4lMemsp8EbUs84H3DrgmWdHxodAk44S/MjsTxdAa2OZtSE7hhac7WtCV
         4RcN2Xfaa/etV9uIxzYP+RiNIIJ9wOiQtaMUeUWpP7y7IwX7WNto5Ce36mkv02jZfmeo
         fQXFPpclRXlkX8erug+To8t7fNaivXjZFjhesjGcCu8hwbc1V2x6/NMmQ1IeV+KucSlg
         Oxd4ntZD5kLt+8d4aLYqGvSaG2Vq+BITyoSMui5EABGmR98iAc/m1UyEEKcu+NrZfZaC
         nwUhSWpIQIPIrbkwgmjD3vmBgx7aMp0VSOTSoNWxKLYyEUdZNYW5SBaDlksSyvWDSQfk
         NnCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=U17MbycEx9onzbzW0lZ9HQMBZMQ/bkoRQmc2cH8Qbpc=;
        b=fXxX4ywctFPNTMERd1hj6+RuZ2qUOcGg0SpyuycRYG0CHy5yfwT8Cblv7nKMOog9rI
         CBpbE0VooLod45c0dYn1NOKHNOxnuMh9XoiUrJlm/EUKd5iU5yOZ8HlFu5YcDprFPe0I
         bSmo4kNrKOq6lla3mhiVu8r3477qKIN7AeblZOAfyF0FmLGaJOgR6VLignJ/PPgzrndi
         WqTeS1+nu4/nzwtLie6oCZIj+SSdbyoCSIycdGgZD8IVMFo7fYBSPg3KtPE4+wOW06WS
         9Vrm/S7OhXemP31iPFg+gApD3gOEu4nzzfUeh6PfVyBNlagfDhmfSgIfs4TiU83q0kuP
         2AMw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Wk4HdgnF;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d32 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd32.google.com (mail-io1-xd32.google.com. [2607:f8b0:4864:20::d32])
        by gmr-mx.google.com with ESMTPS id z9si330080pgv.2.2021.01.13.23.09.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Jan 2021 23:09:49 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d32 as permitted sender) client-ip=2607:f8b0:4864:20::d32;
Received: by mail-io1-xd32.google.com with SMTP id o6so9238925iob.10
        for <clang-built-linux@googlegroups.com>; Wed, 13 Jan 2021 23:09:49 -0800 (PST)
X-Received: by 2002:a05:6602:2f93:: with SMTP id u19mr4356544iow.110.1610608188875;
 Wed, 13 Jan 2021 23:09:48 -0800 (PST)
MIME-Version: 1.0
References: <20201204011129.2493105-1-ndesaulniers@google.com>
 <20201204011129.2493105-3-ndesaulniers@google.com> <CA+icZUVa5rNpXxS7pRsmj-Ys4YpwCxiPKfjc0Cqtg=1GDYR8-w@mail.gmail.com>
 <CA+icZUW6h4EkOYtEtYy=kUGnyA4RxKKMuX-20p96r9RsFV4LdQ@mail.gmail.com>
 <CABtf2+RdH0dh3NyARWSOzig8euHK33h+0jL1zsey9V1HjjzB9w@mail.gmail.com> <CA+icZUUtAVBvpU8M0PONnNSiOATgeL9Ym24nYUcRPoWhsQj8Ug@mail.gmail.com>
In-Reply-To: <CA+icZUUtAVBvpU8M0PONnNSiOATgeL9Ym24nYUcRPoWhsQj8Ug@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Thu, 14 Jan 2021 08:09:37 +0100
Message-ID: <CA+icZUU3-tz8Jjs3GxVVY4ch8aLXJxet6sERZrf0xny7QnD+Dw@mail.gmail.com>
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
 header.i=@gmail.com header.s=20161025 header.b=Wk4HdgnF;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d32
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

I have to correct myself:
The used assembler within my GCC experiments is GNU/ld BFD version
v2.35.1 - not LLD linker!

- Sedat -

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUU3-tz8Jjs3GxVVY4ch8aLXJxet6sERZrf0xny7QnD%2BDw%40mail.gmail.com.
