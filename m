Return-Path: <clang-built-linux+bncBDYJPJO25UGBBB6S62AAMGQEO6VLEZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63f.google.com (mail-pl1-x63f.google.com [IPv6:2607:f8b0:4864:20::63f])
	by mail.lfdr.de (Postfix) with ESMTPS id 00291311240
	for <lists+clang-built-linux@lfdr.de>; Fri,  5 Feb 2021 21:22:32 +0100 (CET)
Received: by mail-pl1-x63f.google.com with SMTP id o9sf5059781plg.17
        for <lists+clang-built-linux@lfdr.de>; Fri, 05 Feb 2021 12:22:32 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612556551; cv=pass;
        d=google.com; s=arc-20160816;
        b=uLge0puU1XVtIT5Tg0XORjziqq5v6oSLDGqqetPMyEyVl1Vyqj9Iqfc3l+jvCWg5gC
         Ddc9H3WFZfotukhGVFS3rYknYD2Wr/zoHsbA0qxJ5AtIcBHJ6R/icbWvHSs6OzayQB62
         VpQN6iY4wrLGwbRQDnxETvlQZkjz/D9J4iqiAPDLOlujDkPCYrNya3wsPcFVeWwGqRWE
         dq5DvihlsfnZ+ZGW1Ol3IbbZQHuglLsiNZFh+AQSlOtxf54E7L6ROwE1KWAok1zqL2qG
         nkQyK3xIXwwiLkT5zG3JFid0vJiM85gFVIdCv1UclTMON3uuGNF9aoHDj4yav6rnKSvm
         DizQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:sender:dkim-signature;
        bh=6wcP5mnHISpRa3qHxrVma6ZFvNFNgtAAIw9aUhVD1uk=;
        b=mO9cvxCACpNnRDnD9+xs9joi5AMMT1Gw8JxD0zoLVYigA2OlJUEV39FAdivQJqhGpB
         CgZIUoV58cgudIczl7Eoqoh9GKxNm6AqBsXiLt1YROlj0bDW0B1AVH1hXUS3FMxI1wlP
         5aprnavJbDuvgMSf/XTUgvnMXFPUKZF8XEgurC9LTVovtsThE7y12wjBjGzynqnllgvB
         6wQezGhxVE7rNw4xQfdYJa0OU38pSBfOilR57Htmy5KHK/uEcICZd0/hX2/B8XHZC/mk
         HOkZcABwloJCLrAWl3zxyxT99M61QrsYyKgplfD11Gm+Xp4FUiCOVcEOhkG6fTsrlBkI
         PIVQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=rRrebpAL;
       spf=pass (google.com: domain of 3bqkdyawkanue45j1lce95ij7ff7c5.3fd@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3BqkdYAwKANUE45J1LCE95IJ7FF7C5.3FD@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6wcP5mnHISpRa3qHxrVma6ZFvNFNgtAAIw9aUhVD1uk=;
        b=hVEEMevLzXXHx60rhudrfw+3RpH6RJCMovTlNeov4Dn+zTxX6DX0bAvtHhybyjo5Y1
         RMiAWjBGRnVs7w+xZ5U9NqMqWR3e+yBIE00xrySbGWDAKdUe/4AiRipdkVAT0QFUpHlA
         xdcQ8+tQJMSFvSnQBSVx6cljARbLIlBGZpSrjBnMa14J9EwvqDNNmQTvYXnbXXvlO/EL
         uhedSO8arzyqwX37MH0h2DMYmXV+Td98yO7Nj+p9xwE/kLd6ddRww3rbPJ+V9oDGgC45
         wkOGCnVw7a5Irn8UZa0zgY0eaTwe1S8WC4BM37bXuobLIPeV+qntGqcWKoN3Q5i1Xqwc
         5JaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:message-id:mime-version:subject:from
         :to:cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=6wcP5mnHISpRa3qHxrVma6ZFvNFNgtAAIw9aUhVD1uk=;
        b=eAP32PL8WwSiwtf95ePCXcPS3u9KE0NgVedg8U1BlDpaiFVYJvKsQcgGZwlF50LAWV
         ylji9ZgA4VeHllXcQZBhmdzelIeaQdpr8tY5WnbIqCqWBehnhmAoNIBoXLnbBxHPwNXx
         0puM+F162F02KkdjjzFAcgu0l6AmTVdDtdsFwP08i7V2oWi6kYB27n3fCAyExs4rgCtv
         ZZi0LXE2VT3R4DQVv/5rk/57CpE/avgAXOpC+ncb0ZGbuvMBpRVIq5XOkDlBBudyTHEd
         mSHhg6U2AuOaacPyRUtAZGpWClAjAoudx+ErPs5q3hQEpTwV5y/I/QoFu2Mt8dIsm9vY
         o4cw==
X-Gm-Message-State: AOAM530KWr4GMNsOi8226k4OYNIqoqqKxUFPX1ZDQo5xJmJS5EDWjtqu
	24Fc5tF8gywqFbo9F/mSV8c=
X-Google-Smtp-Source: ABdhPJy/MAevhSlG6ZQ+6TOrJkEAmYI/WH395vCLNkYVD4ol4RWsNRbPokCBC4Tj2lOxvu6U9t+RHA==
X-Received: by 2002:a17:903:2306:b029:de:18e9:f439 with SMTP id d6-20020a1709032306b02900de18e9f439mr5550963plh.38.1612556551705;
        Fri, 05 Feb 2021 12:22:31 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:ed85:: with SMTP id e5ls4827799plj.2.gmail; Fri, 05
 Feb 2021 12:22:31 -0800 (PST)
X-Received: by 2002:a17:90a:8c87:: with SMTP id b7mr5765795pjo.158.1612556550972;
        Fri, 05 Feb 2021 12:22:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612556550; cv=none;
        d=google.com; s=arc-20160816;
        b=W0QryQPPdzIIUkH9da55QbNaA5w8259wQJvci9d5gd/DR6CCThYa9Q6i4La+0Y1BSJ
         v10eH2THauyUaKeeXn1KxjraR/oI0Y6U93J4nQRR59MvRlwr9SomskaE3aAo8hMVHTIH
         HKDugB7k0xnBzWgKule7unXZj4LPqd9gpGxQWw819VWxBIt/3b69aTggD7x4CyLZGiqT
         UnPiSaBjtEE+ks2HmqE8GqfittwooZ1X99Lyg3rx3MLPmZ+PLoVjL25VVdQ4sYA4xDop
         Ng0uJLEEgUWQbetFGN7U3JCcL4IPhdrZPAMcVBgJMBGv8sB9vVWRyjz97avYjK3zGszn
         MfYw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:sender
         :dkim-signature;
        bh=JkiU6LubiRQMiRTUkzQ3xqlvscsZlRnvwncDVkGj4+8=;
        b=KAS5I7OQfSPrAAFFecdumd45klBITsl1+D73Ia6eY79aTSDF3ZPkcgJBFOn9VYRAal
         Sz7qI/RW++gGNfoJU4/oVY7ixr7g0f1toghLAsXVH7vzTM8SgMXUfovVuMYLbgC85U27
         vUplWBqbWwM3xyYQYujE9MCENsJE3GnJrB3aOr/xtpvM48/b27au+9ObF19XDW4B7XJO
         ZtB9BIriT36UUyTRlitCJu9WSr58mnspR6uuugffuAj7X97S5w15pAKfjwBvMNdxGrer
         MpAdnxNTWXHOcT2vjBfAi86DKlAmjOWgbXhm1wkjeCbP3M2FZdaQLwOieaapAoF0Vjw5
         NsHg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=rRrebpAL;
       spf=pass (google.com: domain of 3bqkdyawkanue45j1lce95ij7ff7c5.3fd@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3BqkdYAwKANUE45J1LCE95IJ7FF7C5.3FD@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qk1-x74a.google.com (mail-qk1-x74a.google.com. [2607:f8b0:4864:20::74a])
        by gmr-mx.google.com with ESMTPS id j11si723898pgm.4.2021.02.05.12.22.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 05 Feb 2021 12:22:30 -0800 (PST)
Received-SPF: pass (google.com: domain of 3bqkdyawkanue45j1lce95ij7ff7c5.3fd@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::74a as permitted sender) client-ip=2607:f8b0:4864:20::74a;
Received: by mail-qk1-x74a.google.com with SMTP id g80so6821478qke.17
        for <clang-built-linux@googlegroups.com>; Fri, 05 Feb 2021 12:22:30 -0800 (PST)
Sender: "ndesaulniers via sendgmr" <ndesaulniers@ndesaulniers1.mtv.corp.google.com>
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:fce9:1439:f67f:bf26])
 (user=ndesaulniers job=sendgmr) by 2002:a0c:abce:: with SMTP id
 k14mr6218548qvb.23.1612556550018; Fri, 05 Feb 2021 12:22:30 -0800 (PST)
Date: Fri,  5 Feb 2021 12:22:17 -0800
Message-Id: <20210205202220.2748551-1-ndesaulniers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.30.0.365.g02bc693789-goog
Subject: [PATCH v9 0/3] Kbuild: DWARF v5 support
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Andrew Morton <akpm@linux-foundation.org>, 
	Sedat Dilek <sedat.dilek@gmail.com>, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com, linux-kbuild@vger.kernel.org, 
	linux-arch@vger.kernel.org, Jakub Jelinek <jakub@redhat.com>, 
	Fangrui Song <maskray@google.com>, Caroline Tice <cmtice@google.com>, Nick Clifton <nickc@redhat.com>, 
	Yonghong Song <yhs@fb.com>, Jiri Olsa <jolsa@kernel.org>, Andrii Nakryiko <andrii@kernel.org>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Arvind Sankar <nivedita@alum.mit.edu>, 
	Chris Murphy <bugzilla@colorremedies.com>, Mark Wielaard <mark@klomp.org>, 
	Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=rRrebpAL;       spf=pass
 (google.com: domain of 3bqkdyawkanue45j1lce95ij7ff7c5.3fd@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::74a as permitted sender) smtp.mailfrom=3BqkdYAwKANUE45J1LCE95IJ7FF7C5.3FD@flex--ndesaulniers.bounces.google.com;
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

Patch 1 places the DWARF v5 sections explicitly in the kernel linker
script.
Patch 2 modifies Kconfig for DEBUG_INFO_DWARF4 to be used as a fallback.
Patch 3 adds an explicit Kconfig for DWARF v5 for clang and older GCC
where the implicit default DWARF version is not 5.

Changes from v8:
* Separate out the linker script changes (from v7 0002). Put those
  first. Carry Reviewed by and tested by tags.  Least contentious part
  of the series. Tagged for stable; otherwise users upgrading to GCC 11
  may find orphan section warnings from the implicit default DWARF
  version changing and generating the new debug info sections.
* Add CONFIG_DEBUG_INFO_DWARF_TOOLCHAIN_DEFAULT in 0002, make it the
  default rather than CONFIG_DEBUG_INFO_DWARF4, as per Mark, Jakub,
  Arvind.
* Drop reviewed by and tested by tags for 0002 and 0003; sorry
  reviewers/testers, but I view that as a big change. I will buy you
  beers if you're fatigued, AND for the help so far. I appreciate you.
* Rework commit one lines, and commit messages somewhat.
* Remove Kconfig help text about v4 being "bigger."
* I didn't touch the BTF config from v8, but suggest the BTF folks
  consider
  https://lore.kernel.org/bpf/20210111180609.713998-1-natechancellor@gmail.com/
  that way we can express via Kconfig that older version of pahole are
  in conflict with other Kconfig options.

Changes from v7:
(Strictly commit message changes)
* Pick up Nathan's reviewed by tags for both patches.
* Add note about only modifying compiler dwarf info, not assembler dwarf
  info, as per Nathan.
* Add link to Red Hat bug report and Chris' reported by on patch 2.
* Add more info from Jakub on patch 2 commit message.
* Reorder info about validating version, noting the tree is not "clean"
  in the sense that parts mess up existing CFLAGS, or don't use
  DEBUG_CFLAGS. I will not be adding such cleanups to this series. They
  can be done AFTER.
* Update note about 2.35.2 (rather than include the full text Jakub
  wrote on it in https://patchwork.kernel.org/project/linux-kbuild/patch/20201022012106.1875129-1-ndesaulniers@google.com/#23727667).
* Add note that GCC 11 has changed the implicit default version.

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

Nick Desaulniers (3):
  vmlinux.lds.h: add DWARF v5 sections
  Kbuild: make DWARF version a choice
  Kconfig: allow explicit opt in to DWARF v5

 Makefile                          |  6 ++--
 include/asm-generic/vmlinux.lds.h |  7 ++++-
 lib/Kconfig.debug                 | 48 +++++++++++++++++++++++++++----
 scripts/test_dwarf5_support.sh    |  8 ++++++
 4 files changed, 61 insertions(+), 8 deletions(-)
 create mode 100755 scripts/test_dwarf5_support.sh

-- 
2.30.0.365.g02bc693789-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210205202220.2748551-1-ndesaulniers%40google.com.
