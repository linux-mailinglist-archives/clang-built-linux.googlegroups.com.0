Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBKWE777QKGQEVFYFWIQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x739.google.com (mail-qk1-x739.google.com [IPv6:2607:f8b0:4864:20::739])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AC3C2F5A98
	for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 07:18:20 +0100 (CET)
Received: by mail-qk1-x739.google.com with SMTP id q7sf3668688qki.16
        for <lists+clang-built-linux@lfdr.de>; Wed, 13 Jan 2021 22:18:20 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610605099; cv=pass;
        d=google.com; s=arc-20160816;
        b=fLUuBJ+XeMGkM7FKaFem5/oN/lhP3rJ7PqV5CXayIoJoip7JlXB/nE0Yhlbn2ySO+d
         cquFepneIQME8gTMB0QvBklX+Kv0brtMFNy3QtxhLa+fb6x3OyapStkpo+8kzKe9d7FI
         RueikCUvV9+ElaVD0jx1oNzBFVFSyqsZ/T8mcvwQKKSnND8ZM5oeUW+pSjnkuRSfjbVp
         3s/F4flAEOidjsNhGKYcBA+phaKS+7fQS/RCixq/mPcZd4jm8eszhvEwQbf8o/l9GU3l
         ZIfItc1cffTrAsGHR1C+g81mD0KRJ/Ksu5qtwDigbqV44Pz8N5E4uFK0220chKUdNqwG
         hM7w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=Z6oPnMm+PzEz2HHJOy/BRbEgGq/fhJCh61vMXFhgkaQ=;
        b=p1i4bpbyoG93Wu6QBJOxUIlTYz4NvYAqYNmXRANLwTLFmROO2fs/6syq1Xea/rhmsB
         CYLrGEasFeeFYpgEbolTJGHrgh5yPJVq68qDUaomQ9j0DRv1TFUvjd8l4DYqTO+9HkQV
         2KGzrlKcuN4n3cuw7wXUJNNPDDZK5z+1dQVC1ojwjsBv6W0zy2qxyzyweBmFp+b864RM
         hHa7vbRKqxvjxxXN8qiQnuWO3NDY+2A3jS3QYwI/yZeZoSLi/YsSJx0cYlEQJJ0IBH8K
         MeEM0/nYpD2iGR0MBMZ2w4LoArKg7fs/XaurjjugU/pcSnodzNXnj/JjcCWodmee8zsT
         7gXA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=s78rfeD1;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d32 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Z6oPnMm+PzEz2HHJOy/BRbEgGq/fhJCh61vMXFhgkaQ=;
        b=SVbuo3sIEu8JwDLILziwzqXRlljhQe+K0fDkB9f7ja57+9Aavb9P08evKeVZJ+pXrD
         NwBtq+huOMTCQSaHjz/qDbIXjCNc1brRw6RcsHBzVM8HcKKYaTxwtuNuWBod8JwiHge8
         yVUnUFmd+9Fg+6y6oEL6mKOm9Fac/eINAfx0TPlV7E9eGyvWSYoBJ4RDPRjvWn3WD2QF
         X/KuaOQeB1dDNfo6qF5B/SxtCXUX0S1ecPW67AMMtjQsLb6NmTOQYNZU5bs4Sk230kOm
         vALAKf3504Vv7RN2946XYo6/Vnh/79MSfXHkSuU97CeeXGeti8unQvZ04ds2947rqRKo
         ChaQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Z6oPnMm+PzEz2HHJOy/BRbEgGq/fhJCh61vMXFhgkaQ=;
        b=qB08tAl6FZxJ8Xrdt7/ALU8BbzSFcwzoQiYwAiz2LN/Bd8ZWo3turWcx5JfMryMSUm
         3UNs6otZXQCNA0leZ6BVYsySBtOWHRTFJdEjhO6ktFct8bFkJeAEtaXLjwK2nGI+YWeF
         2hCy09b+YuhKadUC+dG0kHmBNc8k8UoxletlJV0OJBXJz5SQGniy72YznvF7Yx/GybUQ
         9YvP6ybZHU5qxYb/BRuenkU1EXPEdHNO7OH5ZXk5CWDkhuUcdVqa7Zk2XojR7DoFLdcZ
         9UxAUC7jVM9Tg21JlRgQrgloryx50KQS/vcUnlPp971bawCtMcWWYCEmYeuGHMI+ZosO
         sLBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Z6oPnMm+PzEz2HHJOy/BRbEgGq/fhJCh61vMXFhgkaQ=;
        b=pArYvmIHUCjDqxLuNZcgQHpfiPVqeM2ykI58Ec3jGTqnbwqHQk1hGVaTUxH6qHi1L1
         sgVgRo/98JjyINVjnrnUNgAHzLhfEfJ4dzNyn39qPGP3rSnavkHT8wSfgwy6J/9LimXR
         g5m2RUJCPNB0v3bUhcF+1ga44fHTZzMbbLRghViYBEr0hHzx+42Qjrl8i+RASeKgbQN8
         CdHp59nEtkkBBFnz+OBrSh6MkumF5bSSJuqwFbBb7Uqcj0HZuNArgmwtvQwmturidhdJ
         PVNHQ/d8iQ3DAO6yrVvn+GuUy6j8Yfh9USmkJk3I3lItr7jeb5LiVLACZdK8v44rGwym
         2ZdQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530wUQ1OBA3vVx0tm9OoCVPWaJ7dF21BtSU3GNTHV61kN8aBYIcT
	rRVXIdpiDKfDGt2YDhxlGDo=
X-Google-Smtp-Source: ABdhPJyow91W3QE+casejfweTFKEc/yLHqQwzEHigcXEf/GqpQeuiiISkX3eg32osEEn8n86NtaVpQ==
X-Received: by 2002:a37:9d0e:: with SMTP id g14mr5581691qke.125.1610605098971;
        Wed, 13 Jan 2021 22:18:18 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:5ece:: with SMTP id s14ls1905688qtx.4.gmail; Wed, 13 Jan
 2021 22:18:18 -0800 (PST)
X-Received: by 2002:a05:6214:684:: with SMTP id r4mr5496508qvz.54.1610605098555;
        Wed, 13 Jan 2021 22:18:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610605098; cv=none;
        d=google.com; s=arc-20160816;
        b=owTZiwLZLstaGvMuNI+k77Pi4eD2pWuCtG64E2Awnfcsu21FVZkkiyJfPFpjBO+tCJ
         fI09mba2f1ZnhsfYWFfyye+uM4f+DXRycOUcG1J/HyTnndzUF4/nS2MlUsH78hTx7mt+
         mmFSU0KGyaWaPX1iZoBKCY8wYVrz9ZI5ghuAVSlr2ag8guYW2cO5xYDvP3gLG7PA1lXR
         XzR9Zeshlj/heWTsDEwz7FEROjqd1n6X2F5T4eUdehOAHEjQiml9FaU82LVRAXBlcHpc
         QhPpy86NyDK9umNU8Bn6hcEwZSeI893deneaqUdTbVDYwDgtvdg59k8ZlbS7h2z4fWA8
         WgJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=v3XIFNjzFldVKaYFt9Wx2oy+S7jBHiIy3yMl2/46AS8=;
        b=okUbhfGbzQkEZ85D85tQ6ikbOssGocZ4gbY/dvbbr2kHq+6Oxa/Bd816AKmo2/yX+g
         cGSqHHAHZQQW3/yTd+dq8qri0ycdpS3m3xEMl5KISlIO7Wnp2eZCnN5Wx/dGVqC4cmVu
         yMNlY4dT9syLCB8ypvBS7r9tFFdI+T3yQnHu5ky0K8n8Gw/viREnVSt9olSymXV7PeRx
         +kOLjdV5fo3SBi2F9GIE4s4ht8vbMGc0nZC5OTItaoIuX2twrOd73s2bho92rfBC4cVA
         RP0U1Jk8iQjy0+lbspO2g0uaqNE6DcnQSBi78DIKIQyJaOa3/TnxFPBbSH0FHj/Y8vAt
         /EKA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=s78rfeD1;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d32 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd32.google.com (mail-io1-xd32.google.com. [2607:f8b0:4864:20::d32])
        by gmr-mx.google.com with ESMTPS id z25si353366qth.3.2021.01.13.22.18.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Jan 2021 22:18:18 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d32 as permitted sender) client-ip=2607:f8b0:4864:20::d32;
Received: by mail-io1-xd32.google.com with SMTP id o6so9065779iob.10
        for <clang-built-linux@googlegroups.com>; Wed, 13 Jan 2021 22:18:18 -0800 (PST)
X-Received: by 2002:a02:2ace:: with SMTP id w197mr5296460jaw.132.1610605098182;
 Wed, 13 Jan 2021 22:18:18 -0800 (PST)
MIME-Version: 1.0
References: <20201204011129.2493105-1-ndesaulniers@google.com>
 <20201204011129.2493105-3-ndesaulniers@google.com> <CA+icZUVa5rNpXxS7pRsmj-Ys4YpwCxiPKfjc0Cqtg=1GDYR8-w@mail.gmail.com>
 <CA+icZUW6h4EkOYtEtYy=kUGnyA4RxKKMuX-20p96r9RsFV4LdQ@mail.gmail.com> <CABtf2+RdH0dh3NyARWSOzig8euHK33h+0jL1zsey9V1HjjzB9w@mail.gmail.com>
In-Reply-To: <CABtf2+RdH0dh3NyARWSOzig8euHK33h+0jL1zsey9V1HjjzB9w@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Thu, 14 Jan 2021 07:18:06 +0100
Message-ID: <CA+icZUUtAVBvpU8M0PONnNSiOATgeL9Ym24nYUcRPoWhsQj8Ug@mail.gmail.com>
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
 header.i=@gmail.com header.s=20161025 header.b=s78rfeD1;       spf=pass
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

On Wed, Jan 13, 2021 at 11:25 PM Caroline Tice <cmtice@google.com> wrote:
>
>
>
>
>
> On Tue, Jan 12, 2021 at 3:17 PM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>>
>> On Mon, Jan 11, 2021 at 9:27 AM Sedat Dilek <sedat.dilek@gmail.com> wrote:
>> >
>> > On Fri, Dec 4, 2020 at 2:11 AM 'Nick Desaulniers' via Clang Built
>> > Linux <clang-built-linux@googlegroups.com> wrote:
>> > >
>> > > DWARF v5 is the latest standard of the DWARF debug info format.
>> > >
>> > > DWARF5 wins significantly in terms of size when mixed with compression
>> > > (CONFIG_DEBUG_INFO_COMPRESSED).
>> > >
>> >
>> > Is this patchset bulletproof with CONFIG_DEBUG_INFO_BTF=y (and clang-cfi)?
>> >
>> > Debian has enabled this Kconfig in recent Linux v5.10 kernels which is
>> > a base for my custom kernels.
>> >
>> > It was fu**ing annoying to see I have no pahole binary installed and
>> > my build got broken after 3 hours of build.
>> > OK, I see that requirements is coded in scripts/link-vmlinux.sh.
>> >
>> > I needed to install dwarves package which provides pahole binary.
>> >
>> > I would like to see a prereq-checking for needed binaries with certain
>> > Kconfig set.
>> >
>> > After I calmed down I will - maybe - write to linux-kbuild mailing-list.
>> > Hope this will be a friendly email.
>> >
>>
>> After linux-bpf folks recommended not to use LLVM I jumped to gcc-10.
>>
>> I tried with ld.bfd first and then in a next run with LLVM=1.
>>
>> Upgraded pahole binary to latest Git plus a recommended patch from
>> linux-btf folks.
>>
>> Unfortunately, I see with CONFIG_DEBUG_INFO_DWARF5=y and
>> CONFIG_DEBUG_INFO_BTF=y:
>>
>> die__process_inline_expansion: DW_TAG_INVALID (0x48) @ <0x3f0dd5a> not handled!
>> die__process_function: DW_TAG_INVALID (0x48) @ <0x3f0dd69> not handled!
>>
>> In /usr/include/dwarf.h I found:
>>
>> 498:    DW_OP_lit24 = 0x48,                /* Literal 24.  *
>
>
> There are multiple dwarf objects with the value 0x48, depending on which section of the dwarf.h file you search:
>
> DW_TAG_call_site = 0x48
> DW_AT_static_link = 0x48
> DW_OP_lit24 = 0x48.
>
> In this case, since the error message was about a DW_TAG, it would be complaining about DW_TAG_call_site, which is new to DWARR v5.
>

[ CC linux-bpf & Andrii and Jiri ]

Thanks for your feedback Caroline.

I ran several builds in the last 24 hours with Linux v5.11-rc3.

Setting DWARF version 2 (CONFIG_DEBUG_INFO_DWARF2=y) or version 4
(CONFIG_DEBUG_INFO_DWARF4=y) with this patchset together with GCC
v10.2.1 plus LLVM=1 does NOT show this.
BTW, it does not matter when LLVM/Clang v12 and LLVM/Clang v11 is used.
But again my compiler is here GCC plus LLVM utils like llvm-objcopy,
ld.lld, lllvm-ar, llvm-nm, etc.
( My initial problem was also seen with Clang v11.0.1 - I switched to
GCC as Debian's linux-kernel uses CONFIG_DEBUG_INFO_BTF=y
successfully. )

So, this is definitely a DWARF version 5 issue when
CONFIG_DEBUG_INFO_BTF=y (and CONFIG_DEBUG_INFO_BTF_MODULES=y).

Furthermore, my build-log says with pahole (see post-scriptum) from
dwarves package - here as an example:

WARN: multiple IDs found for 'bpf_map': 3860, 369255 - using 3860

$ grep 'WARN: multiple IDs found for'
build-log_5.11.0-rc3-6-amd64-gcc10-llvm11.txt | wc -l
1621

In the Linux code this derives from tools/bpf/resolve_btfids:

static int symbols_resolve(struct object *obj)
...
                                pr_info("WARN: multiple IDs found for
'%s': %d, %d - using %d\n",

( Cut-n-paste into Gmail truncates the lines and indentation, so I dropped it. )

Please see:

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/tools/bpf/resolve_btfids/main.c#n469
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/tools/bpf/resolve_btfids/main.c#n532

I looked with llvm-dwarf tool and saw some errors concerning
".debug-ranges" (cannot remember the exact output and the command-line
I used).

Example for "DW_TAG_INVALID (0x48)" from my build-log:

die__process_inline_expansion: DW_TAG_INVALID (0x48) @ <0x1f671e7> not handled!

$ llvm-dwarfdump-11 --debug-info=0x1f671e7 vmlinux
vmlinux:        file format elf64-x86-64

.debug_info contents:

0x01f671e7: DW_TAG_call_site
             DW_AT_call_return_pc      (0xffffffff811b16f2)
             DW_AT_call_origin (0x01f67f1d)

Looking for "DW_AT_call_origin (0x01f67f1d)":

$ llvm-dwarfdump-11 --debug-info=0x01f67f1d vmlinux
vmlinux:        file format elf64-x86-64

.debug_info contents:

0x01f67f1d: DW_TAG_subprogram
             DW_AT_external    (true)
             DW_AT_declaration (true)
             DW_AT_linkage_name        ("fput")
             DW_AT_name        ("fput")
             DW_AT_decl_file
("/home/dileks/src/linux-kernel/git/./include/linux/file.h")
             DW_AT_decl_line   (16)
             DW_AT_decl_column (0x0d)

I have no experience in digging into DWARF (version 5) issues and how
to use llvm-dwarf or another appropriate tool.
If you give me a hand...
So all the above says - to be honest - nothing to me.
I hope it says something to you experts.

Regards,
- Sedat -

P.S.: I tried with a selfmade pahole from latest Git plus Jiri's v2
patch of "btf_encoder: Add extra checks for symbol names".

link="https://lore.kernel.org/bpf/20210113102509.1338601-1-jolsa@kernel.org/T/#t
b4 -d am $link
...
Wrote v2_20210113_jolsa_btf_encoder_add_extra_checks_for_symbol_names.am
for thanks tracking

[1] https://git.kernel.org/pub/scm/devel/pahole/pahole.git/

>>
>>
>> Can someone enlighten what is going on?
>>
>> Nick, Fangrui?
>>
>> Thanks.
>>
>> - Sedat -
>>
>> P.S.: Patch from linux-bpf
>>
>> link="https://lore.kernel.org/bpf/20210112194724.GB1291051@krava/T/#t"
>> b4 -d am $link
>>
>> - EOT -

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUUtAVBvpU8M0PONnNSiOATgeL9Ym24nYUcRPoWhsQj8Ug%40mail.gmail.com.
