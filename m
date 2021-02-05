Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBA7E62AAMGQEC5RJWHQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc38.google.com (mail-oo1-xc38.google.com [IPv6:2607:f8b0:4864:20::c38])
	by mail.lfdr.de (Postfix) with ESMTPS id 11C0C3112F5
	for <lists+clang-built-linux@lfdr.de>; Fri,  5 Feb 2021 22:00:53 +0100 (CET)
Received: by mail-oo1-xc38.google.com with SMTP id k7sf4250626oom.17
        for <lists+clang-built-linux@lfdr.de>; Fri, 05 Feb 2021 13:00:53 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612558852; cv=pass;
        d=google.com; s=arc-20160816;
        b=l+xqZv2N4vCA1NQrJ9iDVWE3P83DQ4CzVYAhOTilX/j2JOUtJ4wkw2UUsLdJtRzzUR
         Wl4Qt1Y/3mGq59vvUkTZT1fP7AUs+P20VnXqnqs9djshH6gkA2ZKLLRUbKxsAB55NbZH
         O5DBaTa6clPsdjKWUWBeBSLlx1LOI0z1Zcg7FbCowx2njV4AOFE48+289e4lL5OLOtEo
         W1I0PZqOlU2Yc6+8J0C7gzMedPAfWnjo5cqQns1UWISv578qq5OpJRwL66f7hd6nyqZ4
         18FafLMzwS0QLhJ24E5XWjZ4oC8Fq4x5WzRJ2lDe0uvUZq6XgxoY0jhKhPw1j3rBSiBp
         IGeQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=h06EgH6p7rJjSrRZgtVDkLffU0Id/3ojkHGT/SXANLs=;
        b=rscRYgSeqfqzo/gtJ6DkcEGU4UgVd0jyo884cF+ZQn/CK0quolvkNMuIa/SWQ3/pMi
         nA5LOLNn5TazlXJFMzDF7uDj0dEeHsc7JqzICam95s8BCsdcfgD0fR1sHwE1wzwqZCiw
         UVmDEd4wF/RF1JuY0GYfESSyDa8uSg0pXFxyE46Qh5OK6rrbWFnZ6HcC7ftcoHRqU8St
         DcSvzURf+AmiBBhxzPG9Co0YJJ913BRkFAsY+gOGKRCVYo0FnqiLuyEQqDwTz79AVdex
         iuSEVX6gxBnn+zVnGa3m9OHwU35LNKJ7ms0ANQlcljRCLHFasKFBjoLsOsTX3eBUOfeS
         ouZg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Bn6Kvzgk;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2d as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=h06EgH6p7rJjSrRZgtVDkLffU0Id/3ojkHGT/SXANLs=;
        b=b+xkRovfZawxcmqpVFT89Ars+oFvYOTBTRyN32AF1AqfOxQn+MOGHGSMj06PWykgWE
         crtQO0Oi1uU79XsnZbx7raWMvVuvQUis9QyJSAVoRcAm6/QBrSC2mpVTNOcu9/TmBgtQ
         /Dx5smB4+oxkPlQSWH3edx+59Oeq80Pt22gPZo96r0kRxgBFOgrdugqI8eKebfHExRUC
         Oy6ysSKw2NBAYPRyVodCMwLpy/sOKJmHX9QhMZEt8WqEHyzTjQERUeZ1kbnQjc7giOyQ
         s37jsbNgHLDJQz3H3X1xZqxtNwlGBbdWpTuCkCfh16e+ArkH24tMuosN2Hohtm7R3kLr
         0hXw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=h06EgH6p7rJjSrRZgtVDkLffU0Id/3ojkHGT/SXANLs=;
        b=fxhvv1fxrs0kuAcjulxdk+q1sGceyn7Qh8Xt27QJD3Ysu1uoOp6+yO7mWVWfUMfQgg
         Tw9/h2ObCcWAiOXzx0yltUzftLGJg1e7TSar13OhQ7+2zmyf8B9NBpsmsM8GnbvqhpWW
         gKcPOppPb2lydtr5ZVNJO/bloJxSbJthuX9tJaowNaUtc9unj8CBJHAuDrUNr6gL5UAC
         30m0ssOImHV+Qpw1a+qkzxXaloQ7PJCelmCDBwUCUdMF83QoW2o6wvVdGgYpUrYjs7f2
         eLJDFrpD4nPcvpVMR4lzc3ZDkknNLwcPaXHgI7Oddwia9sCx9sxz/12Dnj/xmD4n461l
         XzaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=h06EgH6p7rJjSrRZgtVDkLffU0Id/3ojkHGT/SXANLs=;
        b=XOnPB8Mbxd5ZIP8AE4QKwXUIs09RMZXZjSrJDUE1rzJ5C1788wulmfdJ5M9FM4vuLf
         lE+HRhT1qYfZ6lw7JlMUkykuBADRfn7ijVoS+qyRQJRXhpCvkr/8lPv9EhpbpRSmu1Qw
         lKcsAx81XSICA4aaup6TBDE8qPQpwASQsv/9nxAy7x7rwOLB5OklOY+9hjSCEFSJARS3
         VxZMpaK2WRIABrr/9ahjn0kmHqnKIcrxEhX3jzyhIAvLlUtJ5jDAKnjPVpLEW3hCB8aS
         /Pfuo5o83zOvfz90JQkEhjBzIbIp26C7hm9BidVcqg+Y/AZukg3xloE8iSjH3DQy+G/v
         U6MA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532rEQ4pddccVm1vZV3/hkwrts+OSzDUo7hzf4mH3DPa38rgY1sO
	12t9pLHvrLdHqot1ZA3G6oE=
X-Google-Smtp-Source: ABdhPJyINbX5VedO1OVOggVAI696H3TExQbNl5dtziwLgFU7ck7cmVvzA7NLbDhbPHl0d4/gjsUiMQ==
X-Received: by 2002:aca:af58:: with SMTP id y85mr4303088oie.33.1612558852042;
        Fri, 05 Feb 2021 13:00:52 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:b489:: with SMTP id d131ls2453730oif.10.gmail; Fri, 05
 Feb 2021 13:00:51 -0800 (PST)
X-Received: by 2002:aca:8d0:: with SMTP id 199mr4269178oii.94.1612558851579;
        Fri, 05 Feb 2021 13:00:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612558851; cv=none;
        d=google.com; s=arc-20160816;
        b=hkMG3nurHqosYQocy/hqacEvd05oMQZKXYTjICwD7RVLfjWckXNlFL1SREUxRT3VL1
         rP8iihXlxn8lokkm+XSD+2m/B7t+RFvJ45umVvFY0AAjux3wkZO6RsDhG2H3lM+gilrA
         a6C0Z2CJ1iBDF44HwfCRtZA62dpZruytNsn/aVMdNvJx3F8CRiAz+s/KV+HsmWedvIgD
         6yrM5Is4lW+y3fZ1BXNLTnuI+CCzxifbFFbY8wBLKuOo5oGIVQ7D9BcyyqkB1rtU3hAK
         /1FFgEljXm0uyOJIo9XyqIFYu4ARlXBSs14KlCRcFzj9nVrMs/emdqgycWyFI1xoXSnA
         R0ug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=hi9Rt3BdtDidHjyujOpga3jEqfXm3rLdI8GGqexPGLM=;
        b=kYj5RdINZdunUMZBepeYSXxE2yGq8IyX56t5YjXQTjGmCUbbYs8LZfTfNF28GypKMq
         FPUfOwDjyi8CcJwDdP6pz9NDo8Si/SLB7fKd4W9e6FPxaJkXTU90g+8CQEajit+wudWg
         lQQ8tOGRTFwD4z8sMTJ8tXFa5ReXLoOnsaMcqb4q/eUJOMeM43/5Bn4btBIyBRN/N+YJ
         bfgG3eaqFg+gRVOiTuxvApqEBeh0Vy5UUMvhSfqXdYpG7vLx9Q0qDHqGiZRLY6EDlgrd
         kWSxHsn/8rZrR9Hy8bSBnl6RaraUhTmcQ9y0Mq3aRintm3ZhRAHalvl+EQu3AKXhsmpi
         xvaQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Bn6Kvzgk;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2d as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd2d.google.com (mail-io1-xd2d.google.com. [2607:f8b0:4864:20::d2d])
        by gmr-mx.google.com with ESMTPS id m26si612533otk.1.2021.02.05.13.00.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Feb 2021 13:00:51 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2d as permitted sender) client-ip=2607:f8b0:4864:20::d2d;
Received: by mail-io1-xd2d.google.com with SMTP id x21so8558417iog.10
        for <clang-built-linux@googlegroups.com>; Fri, 05 Feb 2021 13:00:51 -0800 (PST)
X-Received: by 2002:a05:6602:150a:: with SMTP id g10mr5853934iow.75.1612558851265;
 Fri, 05 Feb 2021 13:00:51 -0800 (PST)
MIME-Version: 1.0
References: <20210205202220.2748551-1-ndesaulniers@google.com>
In-Reply-To: <20210205202220.2748551-1-ndesaulniers@google.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Fri, 5 Feb 2021 22:00:39 +0100
Message-ID: <CA+icZUW3sg_PkbmKSFMs6EqwQV7=hvKuAgZSsbg=Qr6gTs7RbQ@mail.gmail.com>
Subject: Re: [PATCH v9 0/3] Kbuild: DWARF v5 support
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Andrew Morton <akpm@linux-foundation.org>, linux-kernel@vger.kernel.org, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, linux-kbuild@vger.kernel.org, 
	linux-arch@vger.kernel.org, Jakub Jelinek <jakub@redhat.com>, 
	Fangrui Song <maskray@google.com>, Caroline Tice <cmtice@google.com>, Nick Clifton <nickc@redhat.com>, 
	Yonghong Song <yhs@fb.com>, Jiri Olsa <jolsa@kernel.org>, Andrii Nakryiko <andrii@kernel.org>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Arvind Sankar <nivedita@alum.mit.edu>, 
	Chris Murphy <bugzilla@colorremedies.com>, Mark Wielaard <mark@klomp.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Bn6Kvzgk;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2d
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

On Fri, Feb 5, 2021 at 9:22 PM Nick Desaulniers <ndesaulniers@google.com> wrote:
>
> DWARF v5 is the latest standard of the DWARF debug info format.
>
> DWARF5 wins significantly in terms of size and especially so when mixed
> with compression (CONFIG_DEBUG_INFO_COMPRESSED).
>
> Link: http://www.dwarfstd.org/doc/DWARF5.pdf
>
> Patch 1 places the DWARF v5 sections explicitly in the kernel linker
> script.
> Patch 2 modifies Kconfig for DEBUG_INFO_DWARF4 to be used as a fallback.
> Patch 3 adds an explicit Kconfig for DWARF v5 for clang and older GCC
> where the implicit default DWARF version is not 5.
>
> Changes from v8:
> * Separate out the linker script changes (from v7 0002). Put those
>   first. Carry Reviewed by and tested by tags.  Least contentious part
>   of the series. Tagged for stable; otherwise users upgrading to GCC 11
>   may find orphan section warnings from the implicit default DWARF
>   version changing and generating the new debug info sections.
> * Add CONFIG_DEBUG_INFO_DWARF_TOOLCHAIN_DEFAULT in 0002, make it the
>   default rather than CONFIG_DEBUG_INFO_DWARF4, as per Mark, Jakub,
>   Arvind.
> * Drop reviewed by and tested by tags for 0002 and 0003; sorry
>   reviewers/testers, but I view that as a big change. I will buy you
>   beers if you're fatigued, AND for the help so far. I appreciate you.

All 3 patches NACKed - I drink no beer.

- sed@ -

> * Rework commit one lines, and commit messages somewhat.
> * Remove Kconfig help text about v4 being "bigger."
> * I didn't touch the BTF config from v8, but suggest the BTF folks
>   consider
>   https://lore.kernel.org/bpf/20210111180609.713998-1-natechancellor@gmail.com/
>   that way we can express via Kconfig that older version of pahole are
>   in conflict with other Kconfig options.
>
> Changes from v7:
> (Strictly commit message changes)
> * Pick up Nathan's reviewed by tags for both patches.
> * Add note about only modifying compiler dwarf info, not assembler dwarf
>   info, as per Nathan.
> * Add link to Red Hat bug report and Chris' reported by on patch 2.
> * Add more info from Jakub on patch 2 commit message.
> * Reorder info about validating version, noting the tree is not "clean"
>   in the sense that parts mess up existing CFLAGS, or don't use
>   DEBUG_CFLAGS. I will not be adding such cleanups to this series. They
>   can be done AFTER.
> * Update note about 2.35.2 (rather than include the full text Jakub
>   wrote on it in https://patchwork.kernel.org/project/linux-kbuild/patch/20201022012106.1875129-1-ndesaulniers@google.com/#23727667).
> * Add note that GCC 11 has changed the implicit default version.
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
> Nick Desaulniers (3):
>   vmlinux.lds.h: add DWARF v5 sections
>   Kbuild: make DWARF version a choice
>   Kconfig: allow explicit opt in to DWARF v5
>
>  Makefile                          |  6 ++--
>  include/asm-generic/vmlinux.lds.h |  7 ++++-
>  lib/Kconfig.debug                 | 48 +++++++++++++++++++++++++++----
>  scripts/test_dwarf5_support.sh    |  8 ++++++
>  4 files changed, 61 insertions(+), 8 deletions(-)
>  create mode 100755 scripts/test_dwarf5_support.sh
>
> --
> 2.30.0.365.g02bc693789-goog
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUW3sg_PkbmKSFMs6EqwQV7%3DhvKuAgZSsbg%3DQr6gTs7RbQ%40mail.gmail.com.
