Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBMNW52AAMGQEFLPYVEQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1040.google.com (mail-pj1-x1040.google.com [IPv6:2607:f8b0:4864:20::1040])
	by mail.lfdr.de (Postfix) with ESMTPS id EB9F830ECC7
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Feb 2021 07:58:58 +0100 (CET)
Received: by mail-pj1-x1040.google.com with SMTP id q10sf5104980pjd.0
        for <lists+clang-built-linux@lfdr.de>; Wed, 03 Feb 2021 22:58:58 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612421937; cv=pass;
        d=google.com; s=arc-20160816;
        b=G4e4gCjHBU0JXRJSodKD0XR/ZcGegtOqMJUPwc/4gUm/iDeUINuQWOZ/Vtom47inaJ
         6Y5bL+FMJwlq64PRd58M+oD4P5GD9NY1jzWCvTm5BRnu+EAbJev/TI0yvqc2EPgGGXvD
         uYFNNeC03U7b6EQdRTadE5u/MgIBw265Wxj03Pt0xTAYYRRBauzZJH+njgFCJFvHubUu
         5+pXea++zIUebuGIe/eWLQHPjErTApVUJeAy0ENl4bquqc1Cnv9pn1x93uxk0zkX1K+v
         2Unt5x0uEEq5pShaBtKOkbwsQLDH6sC9jaHl+bppMF5yqYsZ6NKBsUT/Yn2CumwKHF7O
         2U6Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=MFukqcVzcgmfvs3sGV1O1eR+oODamhWtVKTyLoz3zpg=;
        b=uAa75JBhYd83UsBNLk7U+1j95NfBpangCpTq9AAMIGEOyylDYq1gu+L31U3pWY/qli
         tPs0jZS0QAm1c1Kv0NWi85Hg9NLwg9S4xfe6zl06bpjOcYll/o+7V3BjV8K6+c4Gruor
         En+uJEwjEQVUn9dB306Dd1/OYjnObpatwPJvT7WQM4MYBCM2AZKwKjntDctZHp3LDrFp
         XTMzfAzQ330pADvUt6awU2nHUPe4u7bhWJEXV2RouhFKozWAW/TOSJrK5olzpGubRC4R
         5MxbTT1wzTjSynRHrxFKArruNlJ3RKxUMYZIG3cNIk7d2sOMT7Q7LDuRgTyx2W47hYWL
         LZxQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jFntBNx7;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d36 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=MFukqcVzcgmfvs3sGV1O1eR+oODamhWtVKTyLoz3zpg=;
        b=h5sywflsuREYRR48xB2O7pzJAbyTAQDKa21BJDQOAIH/cJ2QgyOYHaErkeUUtNsjyg
         j8lmXP3t+YSUn6U6Q6y9DHwpI+EiFotIqcAab8QcGXs/Ti/aVci5jAcWzIwrGTVB8Fhs
         u8uGZMfHAVXYB8bt2IsId6ucHgXeNxoXVzImEC5IYWpCVLyIcqZ3Ru8345ZlsiK5yGPw
         2L1pkTGbGpTSSuPmkB/nejQM6mJjfqAib606XZuL+8lepL7RGBlNBZqfmLTDr0eoU2AT
         HgQS6Zq2GySuhK7vYr5cnf+JjzcvB8J/6jz7ziTxpGZCcd7jVWHwRWmagNO8fGpn5xK+
         8sHQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MFukqcVzcgmfvs3sGV1O1eR+oODamhWtVKTyLoz3zpg=;
        b=LsPVxRqGI9fuxVgw/9jxsQY4lKu5ztSVmVbSgPuhZkOIMP7Ky46VkOMXukFzcFeqfv
         GdYUHfg2ixdqUtc1RuV6vo2ZXImSbWaMwaYnjB1k6ZsMkDqVFzlR3r7rKVUuaExvKQGu
         UwMtkKM5Ji853550tjgrHTJ7gS3zTx9vRhxcTFkl7tetIHTFr72usSd2U4OYWCRIrIjI
         xvnutlR1JMc0jPI1J/jP/rx1XNVDCX/hZ8k4gEMMai144Dp/nUPbM1xsmuQbqJGRdZP2
         sZLcdM1RBYhlaHzeRUDP8q9yaFkKXBoeH9qj2InKMMM7JmtcGQbH+KijR5CfXNhTF9j9
         n17w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MFukqcVzcgmfvs3sGV1O1eR+oODamhWtVKTyLoz3zpg=;
        b=EeHV81nPXtrpstF1W4eujv59CV/wd5l1mF2dQ6sn/BS36zO8hAio4gRFykj9sfnE4N
         6kWQRgx5lPQJmxVokWQYnXOiG2OxkI6u59AeeKXTpwBNQq7HP1+mNIPSuhthl67NQUKd
         am0wCWGqsko16NK5kA2BLhrvtqoFv9g+yjWY3Lf20WRpy1LsGNoK07BC2Fe1xoKr49eR
         cfdx6WCAgm0nnMvcKayPfqTJ+Myy9y5zA+/DSiYBFNmLvSz1lhvTjg9B0zUzj7Qn6El8
         Na9pCySm3MI5t+kX0F19hqFzIVKX4uKg7r1FfC2SJVXn008aF6autTVfZNyU5FgcBXof
         /YXQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530bk5PsnC/8oeQ46fhweVFwhwcecekPqHI6QJzRrAjJYEMT1Oen
	G7dYlTAYHE2+1WnA1hUtx+k=
X-Google-Smtp-Source: ABdhPJxDjchFAlfYJVfTkkk5v3P5sOXnnKHM7iHG8zI4Swx5wGpH0DVUpasvsbaB2+dBgxda7zWzCw==
X-Received: by 2002:a17:90a:7888:: with SMTP id x8mr7317621pjk.69.1612421937540;
        Wed, 03 Feb 2021 22:58:57 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:ba17:: with SMTP id s23ls2407945pjr.3.canary-gmail;
 Wed, 03 Feb 2021 22:58:56 -0800 (PST)
X-Received: by 2002:a17:903:31c4:b029:e1:8840:8ab9 with SMTP id v4-20020a17090331c4b02900e188408ab9mr6706631ple.70.1612421936594;
        Wed, 03 Feb 2021 22:58:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612421936; cv=none;
        d=google.com; s=arc-20160816;
        b=br8GfzXAgfAYBLI6Hjt82KvC2/nzRVFOJxzN72Dzepgr/1ovmtjQ3OIBwrwOpKVQos
         JhHZnNfJkCGI6GcevkB+EdJXqj0BkrGs6iKHX2Bke44SFrct7d2y2by/66tEbLxKrIF8
         b9+Kb23qI8mZ8KYdSz1RobpTGbI22CAHGcuAw9fPEBz8hYN8O4kaZ9e/nmgiwLYM2ta1
         UQgndGDsGgNmYwi1Fx3KgeExvSKsPoTPH+TOR7QgIIcPTRX5zQvUjsHSMCGD0nTqvgRJ
         gZW0hd4svsl+P1rmQZY4nqu8R3Aveodt4G7q7Wlai4KkYQuzT9UVtLZCAp+HzoCRZlqq
         20cA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=SQ3u9i9q5D8QjR1iu0LCTn0usPDvt2B5f9qi7+PYlHs=;
        b=wuFUAYXKV895cIwLcBM3b7oOsBFBM35Pal2K15fF7l5sOe4EDyQrNMLNRpYZ+DdeQ+
         HZgoYQgEMO0BTAfq4nTk9YFFnY6vKT6e7fwrbyRocm9+zFMtNFaS+rMLN90xl2gs0596
         zZ/lIYkINNW9kDBbqLxwt4UmWuYgzGmVlrboXYIQG4jxGeeOdsoROeWGMMcPjyApTgDj
         pp0hfd7IplXa9HjH4YlICLecsgPnJI2fzwSKdxkp6g1QS+yQnwpg+shGLZsBTYIBSYrA
         v+qXczTKcQf8OgENB/8AUzo/SJ4Ca46f1ZT7KqhOytdCMEbtYQEPo3DLtq4gn9LS0N1M
         yShg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jFntBNx7;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d36 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-io1-xd36.google.com (mail-io1-xd36.google.com. [2607:f8b0:4864:20::d36])
        by gmr-mx.google.com with ESMTPS id f24si518649pju.1.2021.02.03.22.58.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Feb 2021 22:58:56 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::d36 as permitted sender) client-ip=2607:f8b0:4864:20::d36;
Received: by mail-io1-xd36.google.com with SMTP id f67so329657ioa.1
        for <clang-built-linux@googlegroups.com>; Wed, 03 Feb 2021 22:58:56 -0800 (PST)
X-Received: by 2002:a6b:f112:: with SMTP id e18mr5554686iog.57.1612421936168;
 Wed, 03 Feb 2021 22:58:56 -0800 (PST)
MIME-Version: 1.0
References: <20210204064037.1281726-1-ndesaulniers@google.com>
In-Reply-To: <20210204064037.1281726-1-ndesaulniers@google.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Thu, 4 Feb 2021 07:58:44 +0100
Message-ID: <CA+icZUVVcP5MSUSDM18Wab46n-20eskRE59akdwfxXKpKXDOFg@mail.gmail.com>
Subject: Re: [PATCH v8 0/2] Kbuild: DWARF v5 support
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Andrew Morton <akpm@linux-foundation.org>, linux-kernel@vger.kernel.org, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, linux-kbuild@vger.kernel.org, 
	linux-arch@vger.kernel.org, Jakub Jelinek <jakub@redhat.com>, 
	Fangrui Song <maskray@google.com>, Caroline Tice <cmtice@google.com>, Nick Clifton <nickc@redhat.com>, 
	Yonghong Song <yhs@fb.com>, Jiri Olsa <jolsa@kernel.org>, Andrii Nakryiko <andrii@kernel.org>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Arvind Sankar <nivedita@alum.mit.edu>, 
	Chris Murphy <bugzilla@colorremedies.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=jFntBNx7;       spf=pass
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

On Thu, Feb 4, 2021 at 7:40 AM Nick Desaulniers <ndesaulniers@google.com> wrote:
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

I have intensively tested a lot of versions of this series and some
other issues reported and got fixed.

So my comments for followers:

[ Download v8 with b4 ]

link="https://lore.kernel.org/r/20210204064037.1281726-1-ndesaulniers@google.com"
b4 -d am $link

[ Pre-Patch before applying v8 ]

"kbuild: Remove $(cc-option,-gdwarf-4) dependency from DEBUG_INFO_DWARF4"

https://git.kernel.org/pub/scm/linux/kernel/git/masahiroy/linux-kbuild.git/commit/?h=kbuild&id=3f4d8ce271c7082be75bacbcbd2048aa78ce2b44

[ DEBUG_CFLAGS thread and fix ]

https://marc.info/?t=161233893400006&r=1&w=2
https://marc.info/?l=linux-kbuild&m=161233892923723&w=2

Feel free to be more verbose and include links (to patches).

I guess I need to test harder to get a Tested-by credit :-)?

Thanks for v8, I will use it for some testing with BTF/pahole.

- Sedat -

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUVVcP5MSUSDM18Wab46n-20eskRE59akdwfxXKpKXDOFg%40mail.gmail.com.
