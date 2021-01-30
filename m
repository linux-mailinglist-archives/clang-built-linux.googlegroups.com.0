Return-Path: <clang-built-linux+bncBDYJPJO25UGBBVWX2KAAMGQEQW7DIDA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1040.google.com (mail-pj1-x1040.google.com [IPv6:2607:f8b0:4864:20::1040])
	by mail.lfdr.de (Postfix) with ESMTPS id F2A42309109
	for <lists+clang-built-linux@lfdr.de>; Sat, 30 Jan 2021 01:44:07 +0100 (CET)
Received: by mail-pj1-x1040.google.com with SMTP id ob3sf6549410pjb.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 29 Jan 2021 16:44:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611967446; cv=pass;
        d=google.com; s=arc-20160816;
        b=01sPOXmV/BOX+03EjYd9x546SlRPjq5+752fHqWJm7wQHvftEnAwYlFeNNPzBy5ZPR
         bBxh9iWogmGcKnQPAs7INTNXa3x2Qjac4bHt8l1ChqaUShy/CFulpBER52W8iRMXYsb8
         MTnLq8BxJi2sJK62NRYBmWDMzH2guNPpYqZRYvfNGU2EKFoyZikoJPSt/4qK9iawKrXL
         jHefQndz37AZUYrUoIGwqVZhyJb/ORBgDv82gPGtz0wb3Tmouvlqv/GrOkDeUxOWsbgl
         Wnicft5UxtRYuy8yfbMTUdvb9pqVEfris9f4eQJLCR+hXBCqdU4qTL0TJC5u0Uj8zpX+
         mnQA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:sender:dkim-signature;
        bh=F7zrMivy6HJzglODfHKupGoot0tKq3fyZAbGGWxFIkw=;
        b=PTBggxg8SiaaM1iZKJ1vc449LCGMc/vqsmCkRo9G3SVRJRL24JZY5dmg5+V1VuoqPb
         As4bnOGJjDVw9XQzHvSI2O11AU2WLPrJ06xU0iPMPzmTg9qeiasfK9YYgZUCc1P0qE2S
         6RnUFoELtwhxl6p1FWVui7gDwWc18Q/GEF2EhpPaVU8YagK3DWRoe2wg+lSJHnEyBKwQ
         SUfJovuP44xVMVl0P5iZ1Qfx8js+X2wWQTXnpu3Hw1okRFVLp0vbAXgldtx0JLD3gIsc
         gRx3wXkYg7BLBbNLAtFJghFGtnnPsofgHgDGAkGca7EpB5Mrf7nsNEwHYl4AmmZuHt20
         4D6A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=RaMAhkkj;
       spf=pass (google.com: domain of 31asuyawkaiyxno2k4vxso12qyyqvo.myw@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::1049 as permitted sender) smtp.mailfrom=31asUYAwKAIYxno2k4vxso12qyyqvo.myw@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=F7zrMivy6HJzglODfHKupGoot0tKq3fyZAbGGWxFIkw=;
        b=CSEMIxCDRCNktm72hgFlDgCz2ZLmWsP81J3Gw/8S28pTS4miuqrcBGSFL1+O0ordUA
         zMH1p/MdBj5cPKKBfTIaKQYiyNd67ZKVL32mMQ/4TVtnZPDzowTVhBDjTYU2i1IZzTPM
         Te6BVIssiNKkCJE7udvNvx4Pmu8Fm478GyGerQKAOsWUKcVFfsl1q75EI4YHhYue6rxm
         Or7mrvdIbK1oA3MwrF3pnae/DUd9vT0DGA6BdmmKf8WB2Z7dZQ6p0z6GDLxoLfTSp08n
         MMkVvOCAmQNRfAuRwzDLPQfAkAIKCaOgHrQWj9y2Nsq8FzX2snemNMgMOqFdGrRoP7z+
         wlPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:message-id:mime-version:subject:from
         :to:cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=F7zrMivy6HJzglODfHKupGoot0tKq3fyZAbGGWxFIkw=;
        b=SFqc0Plg7Mnh36lZ7hMr+RpndQivm5BB0BJtQi/d+X5TSp04YGK84rMvxC7fge+nBd
         npk7ISTJGL6BzUnpi+zGg8WJX19VmuEkdfC1fen8NKDwvE2wOUddYBo/H1TNlh9gkiOm
         ZcJcr0K/+xxzQqeKSODd3UVVinIMb7qQZmg2NyNy4V8YwXH18nqbHehiY7el4VriER9F
         OpSTHZfMaHirC6XwVd2UAwk8uDikaidUd1dJCyPtNGBujSGOXKt8wE07Ghe6+5zNd9OE
         p1p+ypEBvvEIXe5vJ/sPjpgv/7y+CBqHzjlYuvzomhEAntGNaRjgs52dDMMfgse6N2sK
         j/SQ==
X-Gm-Message-State: AOAM533ZGsBA0H1QPlK0hZx3BKm7YcHk6CWI0xN7B0OAgd6L/8H0A8jt
	AzgX13M94YWs9OirKfBX3a8=
X-Google-Smtp-Source: ABdhPJyj+RPxsqu9p9m88NAAZNMDEoIBlZ5Yhx2w4iFnodDgb/YkVmPqfpYweYrKKV5vjltNc+fqCw==
X-Received: by 2002:a65:68c9:: with SMTP id k9mr7086775pgt.328.1611967446736;
        Fri, 29 Jan 2021 16:44:06 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:f683:: with SMTP id l3ls5192230plg.4.gmail; Fri, 29
 Jan 2021 16:44:06 -0800 (PST)
X-Received: by 2002:a17:902:e8c9:b029:de:a2c7:e661 with SMTP id v9-20020a170902e8c9b02900dea2c7e661mr7046018plg.76.1611967446100;
        Fri, 29 Jan 2021 16:44:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611967446; cv=none;
        d=google.com; s=arc-20160816;
        b=PQOFHNN065udKmLLbkDo4akhzOS9kCsk1KjpTymUMIijs562pe1MEESvINyGhacsKl
         mmVUFl6mwle1YlEiJvVDvX3Gc1dk1kCtXmd3/32j0SjArl5/D9nkC9vbwTGZpxqLWUnB
         5FviWOF33nihOYcZraVbIR3SJOKgBLSMEZeQvkBhO7WDDI26VVQNtOpxHLspV9qCwHBh
         wiGB5ZbK7qI/8rowGX52WzQuooM2Tdu9dUdi8TC3rR1TyCNBiO4RrEon4FS+TOqCt0Qn
         akJOowCKNzZWp2XJxxVAdcLs6tfNOtrA/EIEYGzY6a8Ku/YovuU5k+Cdv+Kuhy2KnuXB
         zZyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:sender
         :dkim-signature;
        bh=KUXeI+hUBsy7nEA8u/qXzMH2pARJzoFj2ZnLfkMfS+w=;
        b=gZcbl+8ScZqQlnmjeefe2INBcfv1nNLdQMTq8yQm+pEDhIry/xg90wpJFvDvVg1ZLs
         B3LtseOOwKQWL9FybXLHtQtCjDBBIcKOlS/LpRS57EfUTnDxC48SPz0iQy+uStNA0FwJ
         pV8Xnz8RtETFurwutHb6K367hI2xfnT4u5cS4LUwDpBWWc/aL1eQYCGBAR8IEmshUidV
         VdhHK/9Qkwdy+Bj8lTfw1G3j0pVlMTOvS0f7crF2Of+St623+XttclH6keAu6mDvM4VU
         qMbW2+C0BlpbPmPlnHijwqI8cWtYiKixbIqMJVqd3b6N0jwHIZtorvthZLB5OhrPAg1v
         LNqQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=RaMAhkkj;
       spf=pass (google.com: domain of 31asuyawkaiyxno2k4vxso12qyyqvo.myw@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::1049 as permitted sender) smtp.mailfrom=31asUYAwKAIYxno2k4vxso12qyyqvo.myw@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1049.google.com (mail-pj1-x1049.google.com. [2607:f8b0:4864:20::1049])
        by gmr-mx.google.com with ESMTPS id f11si448893plo.4.2021.01.29.16.44.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Jan 2021 16:44:06 -0800 (PST)
Received-SPF: pass (google.com: domain of 31asuyawkaiyxno2k4vxso12qyyqvo.myw@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::1049 as permitted sender) client-ip=2607:f8b0:4864:20::1049;
Received: by mail-pj1-x1049.google.com with SMTP id o4so6546089pjw.2
        for <clang-built-linux@googlegroups.com>; Fri, 29 Jan 2021 16:44:06 -0800 (PST)
Sender: "ndesaulniers via sendgmr" <ndesaulniers@ndesaulniers1.mtv.corp.google.com>
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:f693:9fff:fef4:4d25])
 (user=ndesaulniers job=sendgmr) by 2002:aa7:8713:0:b029:1bf:ee0:34c4 with
 SMTP id b19-20020aa787130000b02901bf0ee034c4mr6604326pfo.55.1611967445701;
 Fri, 29 Jan 2021 16:44:05 -0800 (PST)
Date: Fri, 29 Jan 2021 16:43:59 -0800
Message-Id: <20210130004401.2528717-1-ndesaulniers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.30.0.365.g02bc693789-goog
Subject: [PATCH v7 0/2] Kbuild: DWARF v5 support
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Andrew Morton <akpm@linux-foundation.org>, 
	Sedat Dilek <sedat.dilek@gmail.com>, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com, linux-kbuild@vger.kernel.org, 
	linux-arch@vger.kernel.org, Jakub Jelinek <jakub@redhat.com>, 
	Fangrui Song <maskray@google.com>, Caroline Tice <cmtice@google.com>, Nick Clifton <nickc@redhat.com>, 
	Yonghong Song <yhs@fb.com>, Jiri Olsa <jolsa@kernel.org>, Andrii Nakryiko <andrii@kernel.org>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Arvind Sankar <nivedita@alum.mit.edu>, 
	Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=RaMAhkkj;       spf=pass
 (google.com: domain of 31asuyawkaiyxno2k4vxso12qyyqvo.myw@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::1049 as permitted sender) smtp.mailfrom=31asUYAwKAIYxno2k4vxso12qyyqvo.myw@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

DWARF v5 is the latest standard of the DWARF debug info format.

DWARF5 wins significantly in terms of size and especially so when mixed
with compression (CONFIG_DEBUG_INFO_COMPRESSED).

Link: http://www.dwarfstd.org/doc/DWARF5.pdf

Patch 1 is a cleanup that lays the ground work and isn't DWARF
v5 specific.
Patch 2 implements Kconfig and Kbuild support for DWARFv5.

Changes from v6:
* Reorder sections from linker script to match order from BFD's internal
  linker script.
* Add .debug_names section, as per Fangrui.
* Drop CONFIG_DEBUG_INFO_DWARF2. Patch 0001 becomes a menu with 1
  choice. GCC's implicit default version of DWARF has been DWARF v4
  since ~4.8.
* Modify the test script to check for the presence of
  https://sourceware.org/bugzilla/show_bug.cgi?id=27195.
* Drop the clang without integrated assembler block in
  0002. Bumps the version requirement for GAS to 2.35.2, which isn't
  released yet (but should be released soon).  Folks looking to test
  with clang but without the integrated assembler should fetch
  binutils-gdb, build it from source, add a symlink to
  binutils-gdb/gas/as-new to binutils-gdb/gas/as, then prefix
  binutils-gdb/gas/as to their $PATH when building the kernel.

Changes from v5:
* Drop previous patch 1, it has been accepted into kbuild:
  https://git.kernel.org/pub/scm/linux/kernel/git/masahiroy/linux-kbuild.git/commit/?h=kbuild&id=3f4d8ce271c7082be75bacbcbd2048aa78ce2b44
* Trying to set -Wa,-gdwarf-4 in the earlier patch was the source of
  additional complexity. Drop it that part of the patch. We can revisit
  clang without the integrated assembler setting -Wa,-gdwarf-4 later.
  That is a separate problem from generally supporting DWARF v5.
* Rework the final patch for clang without the integrated assembler.
  -Wa,-gdwarf-5 is required for DWARF5 in that case otherwise GAS will
  not accept the assembler directives clang produces from C code when
  generating asm.

Changes from v4:
* drop set -e from script as per Nathan.
* add dependency on !CONFIG_DEBUG_INFO_BTF for DWARF v5 as per Sedat.
* Move LLVM_IAS=1 complexity from patch 2 to patch 3 as per Arvind and
  Masahiro. Sorry it took me a few tries to understand the point (I
  might still not), but it looks much cleaner this way. Sorry Nathan, I
  did not carry forward your previous reviews as a result, but I would
  appreciate if you could look again.
* Add Nathan's reviewed by tag to patch 1.
* Reword commit message for patch 3 to mention LLVM_IAS=1 and -gdwarf-5
  binutils addition later, and BTF issue.
* I still happen to see a pahole related error spew for the combination
  of:
  * LLVM=1
  * LLVM_IAS=1
  * CONFIG_DEBUG_INFO_DWARF4
  * CONFIG_DEBUG_INFO_BTF
  Though they're non-fatal to the build. I'm not sure yet why removing
  any one of the above prevents the warning spew. Maybe we'll need a v6.

Changes from v3:

Changes as per Arvind:
* only add -Wa,-gdwarf-5 for (LLVM=1|CC=clang)+LLVM_IAS=0 builds.
* add -gdwarf-5 to Kconfig shell script.
* only run Kconfig shell script for Clang.

Apologies to Sedat and Nathan; I appreciate previous testing/review, but
I did no carry forward your Tested-by and Reviewed-by tags, as the
patches have changed too much IMO.

Changes from v2:
* Drop two of the earlier patches that have been accepted already.
* Add measurements with GCC 10.2 to commit message.
* Update help text as per Arvind with help from Caroline.
* Improve case/wording between DWARF Versions as per Masahiro.

Changes from the RFC:
* split patch in 3 patch series, include Fangrui's patch, too.
* prefer `DWARF vX` format, as per Fangrui.
* use spaces between assignment in Makefile as per Masahiro.
* simplify setting dwarf-version-y as per Masahiro.
* indent `prompt` in Kconfig change as per Masahiro.
* remove explicit default in Kconfig as per Masahiro.
* add comments to test_dwarf5_support.sh.
* change echo in test_dwarf5_support.sh as per Masahiro.
* remove -u from test_dwarf5_support.sh as per Masahiro.
* add a -gdwarf-5 cc-option check to Kconfig as per Jakub.

Nick Desaulniers (2):
  Kbuild: make DWARF version a choice
  Kbuild: implement support for DWARF v5

 Makefile                          |  6 +++---
 include/asm-generic/vmlinux.lds.h |  7 +++++-
 lib/Kconfig.debug                 | 36 +++++++++++++++++++++++++------
 scripts/test_dwarf5_support.sh    |  8 +++++++
 4 files changed, 47 insertions(+), 10 deletions(-)
 create mode 100755 scripts/test_dwarf5_support.sh

-- 
2.30.0.365.g02bc693789-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210130004401.2528717-1-ndesaulniers%40google.com.
