Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBJ6Z5SAAMGQEFYRABRQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13b.google.com (mail-il1-x13b.google.com [IPv6:2607:f8b0:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EE3130E6B6
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Feb 2021 00:07:21 +0100 (CET)
Received: by mail-il1-x13b.google.com with SMTP id z5sf1212378ilq.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 03 Feb 2021 15:07:21 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612393640; cv=pass;
        d=google.com; s=arc-20160816;
        b=u4lnN9b0sLgqeax/6cxpS1py5ec0OA1TrO9OoN7JTBgTyRJYc9O5i6Cq4W0O355grc
         /krsbzLN4Vrg0wkK2gYhm6CQ21uFc7LoIQOLTG4zUKq2MkaP+xoYwN34WVfb2dq/eeU1
         4hsV1RV6nvd+WT6YqkgONXit3PcvRBw1ZWx8H0v9t7qGAskeg2uOjgSv4dWeFstJYwX6
         fWT1JVhEruDJkzR7sDTaaxHtp6O5j0dMFfR833e4AkRERfyyNwHI+e5y/vJsn5Cv9uVB
         i2UCGc4R0xLypZWnhcharVbp5PtWea/mXB/mlFaQI2Hn9yYPYmFlX3UL3X8qr5FF8JhN
         SkyA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=iEwfdx2tGcB9VG6UaUJPsIz52u/SoD7bKBCQSTyyz24=;
        b=Ajmqr6H27UKFAOla7/UzmS/EUoXHHRyV3E5d2zp9Hwe2Eo88AJegLkqkbzq541rK+S
         S7lnZsQe9vLAJGH/mFA3UHwIJI+Vc4/OKZ+anj8iEjNlrJ1KknTbvsmjPjihGO3lCJ68
         gLgZZtbiW4/jfWxKqb4aziwbGcnxaSN60uvaCQ8cMC3S9dpAVnu5QmAVKVVzpFQAopxz
         MuLmYfpXxKhIvGtp2JYsoDL4PAXRk+kfwwlmjLd0j6gcbfSbSmT4+1rY9Km+TIAHGlEf
         l7j3eSYXiQKA+/tORjzKpkqQsO0b2og1SgqGlcMtk73e4W14t9HUSTF0dmWXADr/Zbnk
         r8iA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=iMaS7BgH;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.80 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=iEwfdx2tGcB9VG6UaUJPsIz52u/SoD7bKBCQSTyyz24=;
        b=MjXnX6qFYg7cY1v3l9OlXit7nftC2E4dQ7PXSYS15Ywf8Zk5JzcDrWRXjGE1UoOnSC
         +ehpRgH1AIaMMauXvXkYfQMM8xKcO19NGcK4h62Y4cbKNBSAgymwCFirnE1qeHRPIU5k
         AfQmhJTeDqcRbGSziagnIunPmrjQ7WuU+vVOwyhvQx8iGxCbHgv7ZIfg9ubeMid+xw1U
         y3sS8FwRUZqxTtQFjWE5U8oL2NdRcI/Zx3pBBYA4gTAStW3x7Ocl9GPm2NbRS3eFbdkS
         pezCYL+TSHJfPikNh/gIHhU6cx2jOke0tiz2QhoCBrA68QedMFosRxzUEa6BXBMYzcAw
         qhYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iEwfdx2tGcB9VG6UaUJPsIz52u/SoD7bKBCQSTyyz24=;
        b=e6xp+rPrrH/BvxQQwOTQWtG4d52TW9YzmTLg165R+8n8EyU13p5Lqu6Dx7d+PMNFoO
         FcLekWZqNyXqPZLqEmjzhl6lqbm8TnFdVSOs0+fmG1duCapiw1vZK40bvNMZIXTD3rKs
         mNdZrlAWZtqoWEEMnGPAb6CDvao6d+0Uwgki8/KTcBxvEtG25T0nFt1beg1YYcP5we9z
         DwVO8dusR29fyJjDTepv0Vz5jc9e73/7oRmATDEOF8TIn/+FeP49GhPzDjFU9TVDnZNz
         EaSQ2QABqwXMLz64Q7yJ6mmzfC/qga0PMNHyt+VCr3NDgVwUV+Y6QSKExOj83dUpeETc
         L1CQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530q22ZJbsfXVY0CyTaDgezJJWb/15/cSnU12o4r1Iopc3wUzDje
	qm88XGnxcD2/P1d7VfcQBJw=
X-Google-Smtp-Source: ABdhPJzo5jOn0wYiq1QqCtYzxAxoDlaskMHyeT480HzhvQLF7Ce+NcR1vCEjeSiJWNO41uVski8jSQ==
X-Received: by 2002:a05:6e02:19cc:: with SMTP id r12mr4592557ill.4.1612393639873;
        Wed, 03 Feb 2021 15:07:19 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:13c4:: with SMTP id v4ls848775ilj.1.gmail; Wed, 03
 Feb 2021 15:07:19 -0800 (PST)
X-Received: by 2002:a05:6e02:f11:: with SMTP id x17mr2147857ilj.262.1612393639452;
        Wed, 03 Feb 2021 15:07:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612393639; cv=none;
        d=google.com; s=arc-20160816;
        b=Z4ThzvJzHOoO6GUpBW4nlUqCh19XG0HgAPqFBhLI3TG3ydM+9w2OkKUS7QIL6vC3dS
         pWO8W8k5/xT6aXZTUDm1IxBXq4RKbIOKCxMA/HQyM4TjN36bqPNhbGLnl9jDn6JAbogi
         Wsdg5roNf0RB+Mm9BegkRWV7OBDkxzeG8lyoUojQJpKEpUFXwCp1BEMkpyKKfZiGvimY
         y96ju47iHuyBt66Wuc3q+KhtpKyJX/ADFKrOi96Mh6RPNgZ6g1NkpdIWJmUpRJkpdleS
         t7GWIWJJBP/CdbXx37YrS9sT6MEODYO/InjT4oOQnnJJFM70ANQJnvVOkVM8bvBEf4ew
         FZPg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=FgY4uKbesfPo7qHYxvm29moK6w/koYH24crEMKp1lJQ=;
        b=ssmrQNN2DWudYy6ud39cjzpwJ4ZgP9NZn+8nAYQJcMYX2fHo2u4eXjoSeMIYV+X0sg
         65xuayq8mkSMI3qaqICuASCxES9YXE9r7BftkbxVuMpLzy7RNaCMDT0p2j6/3B3DSZyY
         NJk4f5SLNgQVwpbjOdCGhXT//wvPP8M24QxxVJVIsqI0o5e32mkRxZ+uT1xcbN2/tykq
         +7y2W20OKtiJKn/ufYLYhRaNnqd0gxMcC9RL6IPxg9u2NlzblwHTQ8aO9MRrpfDcNbQo
         YZYBZrWrqWqZW/kjQsCXuaIfEft9FLDMQiZu8hlt5YCVEU7CXfWmSiS/woAQEkJjeeA9
         rT2Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=iMaS7BgH;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.80 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-01.nifty.com (conssluserg-01.nifty.com. [210.131.2.80])
        by gmr-mx.google.com with ESMTPS id d13si157726iow.0.2021.02.03.15.07.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 03 Feb 2021 15:07:19 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.80 as permitted sender) client-ip=210.131.2.80;
Received: from mail-pl1-f176.google.com (mail-pl1-f176.google.com [209.85.214.176]) (authenticated)
	by conssluserg-01.nifty.com with ESMTP id 113N6o2R001864
	for <clang-built-linux@googlegroups.com>; Thu, 4 Feb 2021 08:06:51 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-01.nifty.com 113N6o2R001864
X-Nifty-SrcIP: [209.85.214.176]
Received: by mail-pl1-f176.google.com with SMTP id a16so692316plh.8
        for <clang-built-linux@googlegroups.com>; Wed, 03 Feb 2021 15:06:51 -0800 (PST)
X-Received: by 2002:a17:902:bb87:b029:e1:d1f:2736 with SMTP id
 m7-20020a170902bb87b02900e10d1f2736mr4947981pls.1.1612393610105; Wed, 03 Feb
 2021 15:06:50 -0800 (PST)
MIME-Version: 1.0
References: <20210130004401.2528717-1-ndesaulniers@google.com> <20210130004401.2528717-3-ndesaulniers@google.com>
In-Reply-To: <20210130004401.2528717-3-ndesaulniers@google.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Thu, 4 Feb 2021 08:06:12 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQW3XtBGAg6u+86wGc0tizDyezZ_f61JjkT15QH5BtGjA@mail.gmail.com>
Message-ID: <CAK7LNAQW3XtBGAg6u+86wGc0tizDyezZ_f61JjkT15QH5BtGjA@mail.gmail.com>
Subject: Re: [PATCH v7 2/2] Kbuild: implement support for DWARF v5
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>,
        Andrew Morton <akpm@linux-foundation.org>,
        Sedat Dilek <sedat.dilek@gmail.com>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        linux-arch <linux-arch@vger.kernel.org>,
        Jakub Jelinek <jakub@redhat.com>, Fangrui Song <maskray@google.com>,
        Caroline Tice <cmtice@google.com>, Nick Clifton <nickc@redhat.com>,
        Yonghong Song <yhs@fb.com>, Jiri Olsa <jolsa@kernel.org>,
        Andrii Nakryiko <andrii@kernel.org>,
        Arnaldo Carvalho de Melo <acme@kernel.org>,
        Arvind Sankar <nivedita@alum.mit.edu>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=iMaS7BgH;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.80 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Sat, Jan 30, 2021 at 9:44 AM 'Nick Desaulniers' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
>
> DWARF v5 is the latest standard of the DWARF debug info format.
>
> Feature detection of DWARF5 is onerous, especially given that we've
> removed $(AS), so we must query $(CC) for DWARF5 assembler directive
> support.
>
> The DWARF version of a binary can be validated with:
> $ llvm-dwarfdump vmlinux | head -n 4 | grep version
> or
> $ readelf --debug-dump=info vmlinux 2>/dev/null | grep Version
>
> DWARF5 wins significantly in terms of size when mixed with compression
> (CONFIG_DEBUG_INFO_COMPRESSED).
>
> 363M    vmlinux.clang12.dwarf5.compressed
> 434M    vmlinux.clang12.dwarf4.compressed
> 439M    vmlinux.clang12.dwarf2.compressed
> 457M    vmlinux.clang12.dwarf5
> 536M    vmlinux.clang12.dwarf4
> 548M    vmlinux.clang12.dwarf2
>
> 515M    vmlinux.gcc10.2.dwarf5.compressed
> 599M    vmlinux.gcc10.2.dwarf4.compressed
> 624M    vmlinux.gcc10.2.dwarf2.compressed
> 630M    vmlinux.gcc10.2.dwarf5
> 765M    vmlinux.gcc10.2.dwarf4
> 809M    vmlinux.gcc10.2.dwarf2
>
> Though the quality of debug info is harder to quantify; size is not a
> proxy for quality.
>
> Jakub notes:
>   All [GCC] 5.1 - 6.x did was start accepting -gdwarf-5 as experimental
>   option that enabled some small DWARF subset (initially only a few
>   DW_LANG_* codes newly added to DWARF5 drafts).  Only GCC 7 (released
>   after DWARF 5 has been finalized) started emitting DWARF5 section
>   headers and got most of the DWARF5 changes in...
>
> Version check GCC so that we don't need to worry about the difference in
> command line args between GNU readelf and llvm-readelf/llvm-dwarfdump to
> validate the DWARF Version in the assembler feature detection script.
>
> GNU `as` only recently gained support for specifying -gdwarf-5, so when
> compiling with Clang but without Clang's integrated assembler
> (LLVM_IAS=1 is not set), explicitly add -Wa,-gdwarf-5 to DEBUG_CFLAGS.
>
> Disabled for now if CONFIG_DEBUG_INFO_BTF is set; pahole doesn't yet
> recognize the new additions to the DWARF debug info. Thanks to Sedat for
> the report.
>
> Link: http://www.dwarfstd.org/doc/DWARF5.pdf
> Reported-by: Sedat Dilek <sedat.dilek@gmail.com>
> Suggested-by: Arvind Sankar <nivedita@alum.mit.edu>
> Suggested-by: Caroline Tice <cmtice@google.com>
> Suggested-by: Fangrui Song <maskray@google.com>
> Suggested-by: Jakub Jelinek <jakub@redhat.com>
> Suggested-by: Masahiro Yamada <masahiroy@kernel.org>
> Suggested-by: Nathan Chancellor <natechancellor@gmail.com>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> ---
>  Makefile                          |  1 +
>  include/asm-generic/vmlinux.lds.h |  7 ++++++-
>  lib/Kconfig.debug                 | 18 ++++++++++++++++++
>  scripts/test_dwarf5_support.sh    |  8 ++++++++
>  4 files changed, 33 insertions(+), 1 deletion(-)
>  create mode 100755 scripts/test_dwarf5_support.sh




Nick, the patch set is getting simpler and simpler,
and almost good enough to be merged.


Please let me ask two questions below.

There has been a lot of discussion, and
I might have missed the context.





> diff --git a/Makefile b/Makefile
> index d2b4980807e0..5387a6f2f62d 100644
> --- a/Makefile
> +++ b/Makefile
> @@ -831,6 +831,7 @@ KBUILD_AFLAGS       += -Wa,-gdwarf-2
>  endif
>
>  dwarf-version-$(CONFIG_DEBUG_INFO_DWARF4) := 4
> +dwarf-version-$(CONFIG_DEBUG_INFO_DWARF5) := 5
>  DEBUG_CFLAGS   += -gdwarf-$(dwarf-version-y)
>
>  ifdef CONFIG_DEBUG_INFO_REDUCED
> diff --git a/include/asm-generic/vmlinux.lds.h b/include/asm-generic/vmlinux.lds.h
> index 34b7e0d2346c..1e7cde4bd3f9 100644
> --- a/include/asm-generic/vmlinux.lds.h
> +++ b/include/asm-generic/vmlinux.lds.h
> @@ -842,8 +842,13 @@
>                 /* DWARF 4 */                                           \
>                 .debug_types    0 : { *(.debug_types) }                 \
>                 /* DWARF 5 */                                           \
> +               .debug_addr     0 : { *(.debug_addr) }                  \
> +               .debug_line_str 0 : { *(.debug_line_str) }              \
> +               .debug_loclists 0 : { *(.debug_loclists) }              \
>                 .debug_macro    0 : { *(.debug_macro) }                 \
> -               .debug_addr     0 : { *(.debug_addr) }
> +               .debug_names    0 : { *(.debug_names) }                 \
> +               .debug_rnglists 0 : { *(.debug_rnglists) }              \
> +               .debug_str_offsets      0 : { *(.debug_str_offsets) }
>
>  /* Stabs debugging sections. */
>  #define STABS_DEBUG                                                    \
> diff --git a/lib/Kconfig.debug b/lib/Kconfig.debug
> index 94c1a7ed6306..ad6f78989d4f 100644
> --- a/lib/Kconfig.debug
> +++ b/lib/Kconfig.debug
> @@ -268,6 +268,24 @@ config DEBUG_INFO_DWARF4
>           It makes the debug information larger, but it significantly
>           improves the success of resolving variables in gdb on optimized code.
>
> +config DEBUG_INFO_DWARF5
> +       bool "Generate DWARF Version 5 debuginfo"
> +       depends on GCC_VERSION >= 50000 || CC_IS_CLANG
> +       depends on CC_IS_GCC || $(success,$(srctree)/scripts/test_dwarf5_support.sh $(CC) $(CLANG_FLAGS))

Q1.

This  "CC_IS_GCC ||" was introduced by v4.

GCC never outputs '.file 0', which is why
this test is only needed for Clang, correct?






> +       depends on !DEBUG_INFO_BTF
> +       help
> +         Generate DWARF v5 debug info. Requires binutils 2.35.2, gcc 5.0+ (gcc
> +         5.0+ accepts the -gdwarf-5 flag but only had partial support for some
> +         draft features until 7.0), and gdb 8.0+.
> +
> +         Changes to the structure of debug info in Version 5 allow for around
> +         15-18% savings in resulting image and debug info section sizes as
> +         compared to DWARF Version 4. DWARF Version 5 standardizes previous
> +         extensions such as accelerators for symbol indexing and the format
> +         for fission (.dwo/.dwp) files. Users may not want to select this
> +         config if they rely on tooling that has not yet been updated to
> +         support DWARF Version 5.
> +
>  endchoice # "DWARF version"
>
>  config DEBUG_INFO_BTF
> diff --git a/scripts/test_dwarf5_support.sh b/scripts/test_dwarf5_support.sh
> new file mode 100755
> index 000000000000..c46e2456b47a
> --- /dev/null
> +++ b/scripts/test_dwarf5_support.sh
> @@ -0,0 +1,8 @@
> +#!/bin/sh
> +# SPDX-License-Identifier: GPL-2.0
> +
> +# Test that the assembler doesn't need -Wa,-gdwarf-5 when presented with DWARF
> +# v5 input, such as `.file 0` and `md5 0x00`. Should be fixed in GNU binutils
> +# 2.35.2. https://sourceware.org/bugzilla/show_bug.cgi?id=25611


I saw the following links in v6.

https://sourceware.org/bugzilla/show_bug.cgi?id=25612
https://sourceware.org/bugzilla/show_bug.cgi?id=25614

They were dropped in v7. Why?

I just thought they were good to know...



> +echo '.file 0 "filename" md5 0x7a0b65214090b6693bd1dc24dd248245' | \
> +  $* -gdwarf-5 -Wno-unused-command-line-argument -c -x assembler -o /dev/null -
> --
> 2.30.0.365.g02bc693789-goog
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210130004401.2528717-3-ndesaulniers%40google.com.



-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAQW3XtBGAg6u%2B86wGc0tizDyezZ_f61JjkT15QH5BtGjA%40mail.gmail.com.
