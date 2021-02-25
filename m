Return-Path: <clang-built-linux+bncBDHYDDNWVUNRB37N36AQMGQEGEQ2Q3Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73e.google.com (mail-qk1-x73e.google.com [IPv6:2607:f8b0:4864:20::73e])
	by mail.lfdr.de (Postfix) with ESMTPS id EBFCE32565A
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 20:13:52 +0100 (CET)
Received: by mail-qk1-x73e.google.com with SMTP id p27sf5287391qkp.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 11:13:52 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614280432; cv=pass;
        d=google.com; s=arc-20160816;
        b=Vb0qJOQWOJPCWXzoUmn0+fPvX1ZBwjdgREFABOr+sW9Lvv1dlTyezFEjAfwqNY29Nl
         ip0wMwVePfMfBoeRq4MK0AcDUOy0p57PzkYNf9SEtoS0ao7ZZ51xckrsWOMK1JrzH77v
         NTehzwv8lS/6tFwhbZWUPd4DoLyPuurQJrzMf+YPqs8ERwg1aBmHKwxQCG1mIe4Te9Yk
         Cdf8Lp5ZuR0sWCBY4K3CrS0fvFgjPMy2RzQfRUBWm9hggC2FwJISIfR/pCmPvdMIX3fW
         hY6d6Lr0T57RScXnmvRkrRs897WqRQic5XtxxohWKiucmEXTUBT+YjnVC1BCuP+zyLrL
         ZNCg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=rJlCk9jVm/LcC7DGjdm4HQcr9wIPffaROa+V2qNiPnI=;
        b=hhOGbP6ENmFumnuF6nOm0y4dBE9unAKS1VfPcRBuV8zWucjcVzuBWOlwSj90FQIFJM
         pwe7CvPFukrlz8kwfvjw0jMocK/VHJSm8QFajVLbUcpFrrsvZtt5zfhzJsrFN26nZB1h
         z67Ansic9jVZZmH8a4gZ1qkESFtB72XOTYRkeC9v/LbpjF1i/gemYuroUQbUZF9skjBR
         2+CNPfmZqdfj90Eg4Z7CUTw6xhlsmrPHPpbPbJuinqF4bjlzEdrXDs+7874vjZkXm17Y
         kWOQJW0Y8elxXudo6S57Mt5rCl5hYOMKjiARECF0aza588i3K+n+7Tw75F3uF4OSNXx5
         eKFA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=L4cnc+ZL;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2d as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=rJlCk9jVm/LcC7DGjdm4HQcr9wIPffaROa+V2qNiPnI=;
        b=dzvxGtgpUptYb9sRbx/tTRatahEY0G37VkDh+jXvgq/GXLXl1Lq7vd/2SpxwYYVH8p
         n9RUQOtUTwLQnPF1XF3qp06umkG88LEYtfkDfEH29aey9s3+Wpr1QJFAbbyYXjtEv2Vy
         0bl5pGZfFBQFKoKjfk4U3odd5E18FE55tQeg5LbqjQWdQI452UwFPVf/Vqzr6eIPw/dk
         SLous6bwFj7+FG473b8H0OIfukQCkGOrUnKFoF6uFnINrc+amiCRkJyaMnKofAjCPucn
         3JMxBNEm6RD7yTfgiU1oHY9ZFQ2dhE+bRSHUdvpCMsKI7qyr3TveZY+2tP+opxiSwrGu
         kWWQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rJlCk9jVm/LcC7DGjdm4HQcr9wIPffaROa+V2qNiPnI=;
        b=iYSt8KedyK5gVOIiXfzRSXU083eefz38IDlfWT5F/ptf12XPrnWYTpbjNFoiCYvUfq
         EjctcPexYnvulAW/dYr/FTJFScYkaG+FnWSc09l0bhofIITcdHIwdpCOMD6x5jJRU2xP
         bD4ffMxfsAYlOOf8oQNp7Q55pbDeREH4mjmCVGAh/4OFyGYpb4aBYst19+rghpNOa5KJ
         I6Gi9lV90sBHErGfsNA7MiEp27Yii75peu18c5/Q7aXBq9VKCbly/NiFhnwdJCYrK++Z
         AtRtcZXJAB8aU42r3t0Wn4n7K1nl0QzgHbr0ZPNjhRLUQ1G4mvkV8FDytF7AJU0/Hj3p
         vNIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rJlCk9jVm/LcC7DGjdm4HQcr9wIPffaROa+V2qNiPnI=;
        b=tunGyaneF3t3PWu/SqiOt8iuuTtLDFsYVJsoigmbAYp5KMftLb/wRb5AO85N/NGYuB
         2HCQzGA4skaNuZRyggpTBRz515kUtw0zHt2bte5vgg+ILgXdOIDcqvqc7ClX+YzDNbqe
         NH8vIEI0vBcEhuTj2axGvuRC/pD5EBjFaK5YuPriTjE/zHYb4jQXk+9p7NS//KM0K4EP
         6X8e3giXcp/W6qfeCGMW8UphL94OTJg9C7U+ej3EULgayIGD/DvLxFZ0r63NbLIzX6mb
         1cCu2TxuYjVIoKkNEnTDRG1ADaOozUd54R4L7TCz+8mGlcoFzRW+wx2+pyhnL+SyK9l1
         CbiA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531aKRVuWQBY1q+ISvCOkcrV10gem0bzaFX3bFW5QFAYS3ra+9Zo
	olIhemQHSZ3yrXRLP/MGetk=
X-Google-Smtp-Source: ABdhPJx1pvdL0eL/ylKS7ShPLx0qRCN9dxqlDfSNA2XB3n1z5shtPu5CNjCZqbXUT8KnK+KP2YIYpA==
X-Received: by 2002:a05:620a:2103:: with SMTP id l3mr4126191qkl.347.1614280432029;
        Thu, 25 Feb 2021 11:13:52 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:ef8f:: with SMTP id w15ls1761438qvr.0.gmail; Thu, 25 Feb
 2021 11:13:51 -0800 (PST)
X-Received: by 2002:a05:6214:38c:: with SMTP id l12mr4170968qvy.20.1614280431528;
        Thu, 25 Feb 2021 11:13:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614280431; cv=none;
        d=google.com; s=arc-20160816;
        b=ELooyVeEQXE0dSYSHFZyTD+jHqBtZwpU3tRaZf5IuLLkFovDTSdKicxBUnDYlDwJSa
         PBE0eWiSZOcu5FVhK49AYbln5NPS2Mr9z+hLWPidg5bf9uOHbWgwgstXMTkSv65yMBFN
         TGEckbFjMC/hBQROSjMipRiuetCToJHD8HMzXZBNhiwWhped51FOlCSXH/vwxJwKyxXt
         Pm7HG3WDbtrRYuzUuvPKFa7K49cGG1l8kWoCqKh5B+IEbZnvqfrSLqtoHWGlqaHQvDUF
         LdfY3AkV7U+FIltd37CyLBUzk1Zfj7jUdiDgcSqFlCKGvbo9xD5suj69mz4a0bZEKbmV
         bljg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=2TSVfMnhT7SJL8aJySBCB2X+rytLQ5KjriPICMJNCuA=;
        b=Z2yAgk+v6Ds1P9+6CVJnEOAy1VswZhIiXsSwfvAM+mFPdFDZrn5uP0gMaEUvby6qx1
         glQ8AmikQPMMuimoI7LMUxI3JHIx2WpFEA6iy/UEf4bc/buqu3roHAW3aq9NidnD6O1Y
         8pXUKdJ0Jwhovq/iajKLfAytYCfHO5xcV69dnI3VHhLr1ruwwtKaFiorw7c0u/GmzuKW
         Wlu5wdAiZsJVu29tNcM2deYRCHb7wKgZkQQ1q9AByqHi1gaye8h2fUxLo4rB3lbm1d39
         Tw8WESH9rTqUo5Q5p6FWiUxNydt+FaFcN6GG18QyQiX4T0U3ejPOmzXJVvPu8TbTJBUH
         ArIw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=L4cnc+ZL;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2d as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd2d.google.com (mail-io1-xd2d.google.com. [2607:f8b0:4864:20::d2d])
        by gmr-mx.google.com with ESMTPS id z14si451736qtv.0.2021.02.25.11.13.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Feb 2021 11:13:51 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d2d as permitted sender) client-ip=2607:f8b0:4864:20::d2d;
Received: by mail-io1-xd2d.google.com with SMTP id n14so7083352iog.3
        for <clang-built-linux@googlegroups.com>; Thu, 25 Feb 2021 11:13:51 -0800 (PST)
X-Received: by 2002:a5e:c10b:: with SMTP id v11mr3939134iol.75.1614280431094;
 Thu, 25 Feb 2021 11:13:51 -0800 (PST)
MIME-Version: 1.0
References: <20210205202220.2748551-1-ndesaulniers@google.com>
In-Reply-To: <20210205202220.2748551-1-ndesaulniers@google.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Thu, 25 Feb 2021 20:13:39 +0100
Message-ID: <CA+icZUWDCz-7ZqqXWBq4K+EcKaqbThDD2XAUOhkGwUFVnfWd3w@mail.gmail.com>
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
 header.i=@gmail.com header.s=20161025 header.b=L4cnc+ZL;       spf=pass
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

Accepted into mainline via kbuild-v5.12.

- Sedat -

[1] https://git.kernel.org/linus/6fbd6cf85a3be127454a1ad58525a3adcf8612ab

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUWDCz-7ZqqXWBq4K%2BEcKaqbThDD2XAUOhkGwUFVnfWd3w%40mail.gmail.com.
