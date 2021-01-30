Return-Path: <clang-built-linux+bncBDHYDDNWVUNRB4HF26AAMGQENPS3QCA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf40.google.com (mail-qv1-xf40.google.com [IPv6:2607:f8b0:4864:20::f40])
	by mail.lfdr.de (Postfix) with ESMTPS id 327B230991D
	for <lists+clang-built-linux@lfdr.de>; Sun, 31 Jan 2021 00:59:46 +0100 (CET)
Received: by mail-qv1-xf40.google.com with SMTP id m1sf8865903qvp.0
        for <lists+clang-built-linux@lfdr.de>; Sat, 30 Jan 2021 15:59:46 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612051185; cv=pass;
        d=google.com; s=arc-20160816;
        b=cc7tjCNx9X/8zt8fNMtzV9ZsKYsDRvCZDYydDuIBB8IRUHkuHXiqTGZCAYS4QZzKh7
         UudNjsOqWxwNdZFbLxgvj0bDa0CPB3o9sVlCeTFQboLoX7+8bLe6b0fm/gfsMj5Tu+5q
         cWqatbJIlT9Ei+zUFwrH/0hEkqwnFoqQ9gEFrO7sD62uoihAcPz1tKiBYJi8oUGCmMo0
         hj9UeVxJvd1t2brTlnDMBAdDzve7P4L6/JzoD7BiBylSP2GYRok+kBAiv6ugk913wHOq
         zx/mLjdbC86VVOiPH3fny04yuR+nx5kAi9RJgTqJuKFh/FUbhBZqvr0kvqeI/ZdeeBq3
         oXmw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=NUCXM4tqaGzQfjjwXFwaFKgZ6wJkNwuNZvMFOe3BUTQ=;
        b=j2nQQCx9T5udBF3yxk01Ovb/BnZZ8TXCnl87Xl7rYDevUIRalgoIgi+NpeLW1rMtvi
         WkVTnb1P8iRErXjEzqg1rsu47Vx5DJA/4FeQVgoKbzRBIdVfyQSkihKik1he88WqDEEa
         5nNUcBnBgrTcjziVIkiu1BtHoCK6GzkN3gtacIQPooyVqQaSMd5CR4t0f/FYWG937PoV
         2gvi83i8TeeA20K4jY358i+EeNY/QPMBW1jT3+dRFodM8ShOpl9EyIctSP+pMJ0+X0lF
         GBtV98OeMSTTpx1VfStBzhGF7dViBNl56VZ9TBnOrirJpFTwxHiTDscoCxzE4Tdotpvp
         SqZA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pG3OBS6P;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::12e as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=NUCXM4tqaGzQfjjwXFwaFKgZ6wJkNwuNZvMFOe3BUTQ=;
        b=YW/WUtkIkNmeDqMh9tFmwyvIFiWTlROwVl/a6X2D0Sdkbzz5xJSQqJu5ylXVdUdnnV
         C5Nqq0/4WITlYpKs5wqdqrgCd2q6WSp2WsnxpTDAODCuL6mCsrDfXuYrYGq7G2W4Jy5T
         vSZkX3L1D9wptoVqU70PeGfpHIBHlPcBQMLcYNtWIThZpwHh9eLADzC7c7zsrZBBOlH8
         r31J9VnDmdeJ2tJq61phDsvMFk51OD2YV4M4JuSXkfAdOmRBE3mRQNzhIClBaMf7dWDR
         PNSqUNEJEClGyLqhnDGAdDuZy940KmcukIaXJ4h+o1uBN8sNUvfVBfLog2hveLb5Aqih
         IbVg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NUCXM4tqaGzQfjjwXFwaFKgZ6wJkNwuNZvMFOe3BUTQ=;
        b=nd4UdvmKdBcFomCCTSFVEPCV5fiPIJV77PJC3AWBdmJINUHAmabm+ib0pjbZMqEwaT
         sKslMBRSl+oBa5gvfh7++4KvyLsbDIPsjyoUSfLQ0nAx5tBnolyW539L1ArBDKMxr5/U
         wQghzPy77/yHv6oBA37ux+5zrXYRdVRDmp4r1IjhygDBiGumE3NU2E45t34KXl0ARGCn
         qbn+jJWBH8eYfJIcoUdzJ06p346irYJdYhq56kEQH8qD+4wTok91NjB6n3FgdvG0Wp/N
         6R89KWDry5GuamizbA8pbbguy0mFa7XhE7JOggJ4b3VjWPGp9fBLtCrHiFstmpkQXtMZ
         NZ+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NUCXM4tqaGzQfjjwXFwaFKgZ6wJkNwuNZvMFOe3BUTQ=;
        b=PfdGIHgHjbITXrO5K2TuXmE3OQJZUGXV3g9a9e/o/6lLjZXxUxRbrzTCZ4eg02JW+4
         ux8bv3zVDGM+6Qwna2eZDHg/INrKpqWUmmEUlWUZrW6bTE/JDJsFQSMHH6UDyV3zIeGj
         pzPr2wKtPJUKwfUBuRZnXPkiHlISZFb8ySsEMHb/sm+ub9kUxP1yNxDfT2AFKkkTPXc2
         dhcGT/iFD6cwbrFKo1UTcDhLmayjCvBlvROdmHtV5yCtWOmPzDqsXmDu6gzhAVKgGHZ9
         BkKaAGxuB/Zoxv7vBLOG5QhtuXRmhuxmJk6fxe4F53Dfv9PjtbeUyFhxb2No0kV6uF75
         S5Kg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532Z/4gYqR4fDSXA6IIRbZGQVyaRSTYZ59/RGNq4YigXd63xYFSw
	iA7wXn36LLxS/ha3WuZLHAM=
X-Google-Smtp-Source: ABdhPJzApNV9jHnPEc12xRfIYB4HSeOR+liCxJWC1YoWURfsaUN6ecoHXgk+jrkaX4urD1GA+TzZ8g==
X-Received: by 2002:ac8:5294:: with SMTP id s20mr9662880qtn.147.1612051185004;
        Sat, 30 Jan 2021 15:59:45 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:a307:: with SMTP id m7ls6683889qke.3.gmail; Sat, 30 Jan
 2021 15:59:44 -0800 (PST)
X-Received: by 2002:a05:620a:994:: with SMTP id x20mr10365355qkx.433.1612051184586;
        Sat, 30 Jan 2021 15:59:44 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612051184; cv=none;
        d=google.com; s=arc-20160816;
        b=lQkfdXCCOa8rszFwZosrM8D/n89wqsp9uZrUQ8+zv1Nt2OiO76F2WAst7c8vhH7NlW
         ax2FyU/AmC2AixPqaXalOyk+8xp69lEY/4nXcFmkp+nSIpbHufUvcN1vcPL5OniVjaRS
         h9fuuQW++xH4fNWdQCvQ6JDWUbkR+PzY8CKcJk1mE28mkR5HR7rrVGNUMH+0gyY8Lk91
         LajFgQayTmldPTxJG2gCocqPpn9XylFLbdUVs1a6LXEolvBbToqhnhuuvveK9aJio8co
         kZK2MRoIts/2np2P12ZheBFqTw97WPE74Jrlv3EZ1x5Nd94JPFy7lEQG/3ZIFp02K7aG
         T9Nw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=TndpLZJEfWm95krAvP7q/f2+/niJwKNQ4ohWKnizHws=;
        b=N2w8QjQCvwh/iRdrryG+A0l3ZbSogkwKQAq/qUiU/d0eQFXzbVbYu82fnH7DuYeV1T
         qV4yw36/P7QejS4Ms0MIp2oDYz8KyiFHva9LVZuXZC++BYODFDJl2lpT8yZn3gjoKzGk
         JXlSgefoYw3mRUbN4WPeO1rbtYZ1S77RBAtaiPebqS/GNhEbK9GLBCMHYaVZrwzg/LZk
         +3jJ2K78rC8Nv/1O4i5A4hVy7w8gZLPjIwfHA5IgP6glldko2rHcjGTOwQhbo3oVoEER
         qmOcbEftFPq5gaM3IL6vChyJyYDLQzvRmvBqtycAwwpz4gsLSfUfx2ipIfXgZRqP4ujA
         YGOA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pG3OBS6P;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::12e as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x12e.google.com (mail-il1-x12e.google.com. [2607:f8b0:4864:20::12e])
        by gmr-mx.google.com with ESMTPS id h123si594229qkf.6.2021.01.30.15.59.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 30 Jan 2021 15:59:44 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::12e as permitted sender) client-ip=2607:f8b0:4864:20::12e;
Received: by mail-il1-x12e.google.com with SMTP id e1so12123781ilu.0
        for <clang-built-linux@googlegroups.com>; Sat, 30 Jan 2021 15:59:44 -0800 (PST)
X-Received: by 2002:a05:6e02:e94:: with SMTP id t20mr8175994ilj.10.1612051184077;
 Sat, 30 Jan 2021 15:59:44 -0800 (PST)
MIME-Version: 1.0
References: <20210130004401.2528717-1-ndesaulniers@google.com>
In-Reply-To: <20210130004401.2528717-1-ndesaulniers@google.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Sun, 31 Jan 2021 00:59:32 +0100
Message-ID: <CA+icZUXNx8fGi1_fEbmZFhMXp2DVmXgNrFm3hVW7r3VZoKM6Qw@mail.gmail.com>
Subject: Re: [PATCH v7 0/2] Kbuild: DWARF v5 support
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Andrew Morton <akpm@linux-foundation.org>, linux-kernel@vger.kernel.org, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, linux-kbuild@vger.kernel.org, 
	linux-arch@vger.kernel.org, Jakub Jelinek <jakub@redhat.com>, 
	Fangrui Song <maskray@google.com>, Caroline Tice <cmtice@google.com>, Nick Clifton <nickc@redhat.com>, 
	Yonghong Song <yhs@fb.com>, Jiri Olsa <jolsa@kernel.org>, Andrii Nakryiko <andrii@kernel.org>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Arvind Sankar <nivedita@alum.mit.edu>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=pG3OBS6P;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::12e
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

On Sat, Jan 30, 2021 at 1:44 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> DWARF v5 is the latest standard of the DWARF debug info format.
>
> DWARF5 wins significantly in terms of size and especially so when mixed
> with compression (CONFIG_DEBUG_INFO_COMPRESSED).
>
> Link: http://www.dwarfstd.org/doc/DWARF5.pdf
>
> Patch 1 is a cleanup that lays the ground work and isn't DWARF
> v5 specific.
> Patch 2 implements Kconfig and Kbuild support for DWARFv5.
>
> Changes from v6:
> * Reorder sections from linker script to match order from BFD's internal
>   linker script.
> * Add .debug_names section, as per Fangrui.
> * Drop CONFIG_DEBUG_INFO_DWARF2. Patch 0001 becomes a menu with 1
>   choice. GCC's implicit default version of DWARF has been DWARF v4
>   since ~4.8.
> * Modify the test script to check for the presence of
>   https://sourceware.org/bugzilla/show_bug.cgi?id=27195.

Just as a note: GNU Binutils 2.35.2 Release is now available

- Sedat -

[1] https://sourceware.org/pipermail/binutils/2021-January/115150.html

> * Drop the clang without integrated assembler block in
>   0002. Bumps the version requirement for GAS to 2.35.2, which isn't
>   released yet (but should be released soon).  Folks looking to test
>   with clang but without the integrated assembler should fetch
>   binutils-gdb, build it from source, add a symlink to
>   binutils-gdb/gas/as-new to binutils-gdb/gas/as, then prefix
>   binutils-gdb/gas/as to their $PATH when building the kernel.
>
> Changes from v5:
> * Drop previous patch 1, it has been accepted into kbuild:
>   https://git.kernel.org/pub/scm/linux/kernel/git/masahiroy/linux-kbuild.git/commit/?h=kbuild&id=3f4d8ce271c7082be75bacbcbd2048aa78ce2b44
> * Trying to set -Wa,-gdwarf-4 in the earlier patch was the source of
>   additional complexity. Drop it that part of the patch. We can revisit
>   clang without the integrated assembler setting -Wa,-gdwarf-4 later.
>   That is a separate problem from generally supporting DWARF v5.
> * Rework the final patch for clang without the integrated assembler.
>   -Wa,-gdwarf-5 is required for DWARF5 in that case otherwise GAS will
>   not accept the assembler directives clang produces from C code when
>   generating asm.
>
> Changes from v4:
> * drop set -e from script as per Nathan.
> * add dependency on !CONFIG_DEBUG_INFO_BTF for DWARF v5 as per Sedat.
> * Move LLVM_IAS=1 complexity from patch 2 to patch 3 as per Arvind and
>   Masahiro. Sorry it took me a few tries to understand the point (I
>   might still not), but it looks much cleaner this way. Sorry Nathan, I
>   did not carry forward your previous reviews as a result, but I would
>   appreciate if you could look again.
> * Add Nathan's reviewed by tag to patch 1.
> * Reword commit message for patch 3 to mention LLVM_IAS=1 and -gdwarf-5
>   binutils addition later, and BTF issue.
> * I still happen to see a pahole related error spew for the combination
>   of:
>   * LLVM=1
>   * LLVM_IAS=1
>   * CONFIG_DEBUG_INFO_DWARF4
>   * CONFIG_DEBUG_INFO_BTF
>   Though they're non-fatal to the build. I'm not sure yet why removing
>   any one of the above prevents the warning spew. Maybe we'll need a v6.
>
> Changes from v3:
>
> Changes as per Arvind:
> * only add -Wa,-gdwarf-5 for (LLVM=1|CC=clang)+LLVM_IAS=0 builds.
> * add -gdwarf-5 to Kconfig shell script.
> * only run Kconfig shell script for Clang.
>
> Apologies to Sedat and Nathan; I appreciate previous testing/review, but
> I did no carry forward your Tested-by and Reviewed-by tags, as the
> patches have changed too much IMO.
>
> Changes from v2:
> * Drop two of the earlier patches that have been accepted already.
> * Add measurements with GCC 10.2 to commit message.
> * Update help text as per Arvind with help from Caroline.
> * Improve case/wording between DWARF Versions as per Masahiro.
>
> Changes from the RFC:
> * split patch in 3 patch series, include Fangrui's patch, too.
> * prefer `DWARF vX` format, as per Fangrui.
> * use spaces between assignment in Makefile as per Masahiro.
> * simplify setting dwarf-version-y as per Masahiro.
> * indent `prompt` in Kconfig change as per Masahiro.
> * remove explicit default in Kconfig as per Masahiro.
> * add comments to test_dwarf5_support.sh.
> * change echo in test_dwarf5_support.sh as per Masahiro.
> * remove -u from test_dwarf5_support.sh as per Masahiro.
> * add a -gdwarf-5 cc-option check to Kconfig as per Jakub.
>
> Nick Desaulniers (2):
>   Kbuild: make DWARF version a choice
>   Kbuild: implement support for DWARF v5
>
>  Makefile                          |  6 +++---
>  include/asm-generic/vmlinux.lds.h |  7 +++++-
>  lib/Kconfig.debug                 | 36 +++++++++++++++++++++++++------
>  scripts/test_dwarf5_support.sh    |  8 +++++++
>  4 files changed, 47 insertions(+), 10 deletions(-)
>  create mode 100755 scripts/test_dwarf5_support.sh
>
> --
> 2.30.0.365.g02bc693789-goog
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUXNx8fGi1_fEbmZFhMXp2DVmXgNrFm3hVW7r3VZoKM6Qw%40mail.gmail.com.
