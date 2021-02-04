Return-Path: <clang-built-linux+bncBDYJPJO25UGBB3FN52AAMGQELIDPMJQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93e.google.com (mail-ua1-x93e.google.com [IPv6:2607:f8b0:4864:20::93e])
	by mail.lfdr.de (Postfix) with ESMTPS id 14B5B30EC8E
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Feb 2021 07:40:46 +0100 (CET)
Received: by mail-ua1-x93e.google.com with SMTP id c1sf504424uab.4
        for <lists+clang-built-linux@lfdr.de>; Wed, 03 Feb 2021 22:40:46 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612420845; cv=pass;
        d=google.com; s=arc-20160816;
        b=BnzOrco5NAo6elu6B6H+vqXrplKuu1imaLxqEoGIUN0A++UJbJveKqdEqXtrU0BA0j
         yn+h1snT3Mekt7aandDxDSdo7z5+UomVuXDuohfNeAVkV9XZEuljsEghzJHC8amrKo9K
         XDyXmBA5W3yTAbLjGbnx+xaWnePZwcowCK405MI56+Ayg0VT3QJpppxxbFyafstQJvRP
         Dt3ZDdK7P8TT/G1/6CX4seuCiHdykb2mHYZDBw0zJRDC+9d5oRu5XP+X/arR0K6bxVEr
         zflmEEsBsCOekCed48ohPFaBvS70BZ9cAN7LEj8RHRYvkxawzW6oAGJ2i5Q/MyqR86QZ
         yZbA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:sender:dkim-signature;
        bh=xp7VK/D4Qip6srYdu8aBrOSxml3TCsdVn8XNC0mZhk4=;
        b=MALoNGmDVuMsIbgWA3WcoRgvy/0+JgS0nifo+MXzBO6wGyOcywnvpdfQROTyyqj2+a
         tjUTXg0sMQOZUo8f5MOEWXl/6+Wg09877vpzfpKKgveWF2iq2BEZQ6V5SkqjgLbQ4KKZ
         ORBkOQvxJcMQVO0GObFBiCUy65JUfdWOZH4MVwGPAEw5+H6XZmey1Fz84rSWK46c3Un5
         fEOQUMEJsgYCBBmL4XJJtns8/Sxfn2sNWi/wmHlIHOGeCcDrnuHzHjAKRRlp6wi4utDL
         yjxxLgtV/Xcfvj/BS2Hy9TuKpECADadZ77c92nWxv+vVQBxIhZ6cZOzJBIhgzJWxdq2Q
         HfQA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=c5tviGsR;
       spf=pass (google.com: domain of 37jybyawkai86wxbtd461xabz77z4x.v75@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=37JYbYAwKAI86wxBtD461xABz77z4x.v75@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xp7VK/D4Qip6srYdu8aBrOSxml3TCsdVn8XNC0mZhk4=;
        b=UcV4mSgKh+L/0ajih1j/32m4wAXu0yKJrddUxoLK0R6sioqU/qveKZ0W3maQj2HBGy
         h9koM9mDSS/rbjqbyMSPy4HnzSF+KtYp/Mp6bSbL7pHSjYq0ewu9dHDteO7RTriBdrVc
         A+6oCYHiBx3emBT8wr43yLVBJ7kY2n8HlsrWgl97UhD/f0yrUEBEmJErkxtGadM73DGK
         Wg+9xblsiwGCL/f+Xaxfmcpexi4mUbv3eRiGXW7yqO5d3+pNJjWIL6aYbyX9iqtUBWk2
         QnRVUvXfleHLFOpWg7nysN7u1eLTIFsVUO5Yi7j+DNiawXJs7UMF4H1YH5+LlBTA9CiV
         mHKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:message-id:mime-version:subject:from
         :to:cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=xp7VK/D4Qip6srYdu8aBrOSxml3TCsdVn8XNC0mZhk4=;
        b=eypWHZ+ySmSyKz05/MkZOPFUmOTEf408xJdclNE6L6rOXEpDJuyHMcF9FhzaBVxHbT
         euVqYOPsL2m13+XJU6OreObU62JZy39h3ekszDRf+UdSLHgpKu62KzMDTYP/ndmbz2VJ
         dxHBwpfAGQEnIAF7Tx2mAZ0eN2o91LG0HFTIF78ZGdh5BPJvTh+Wh4BlFIi67NT2c+Dm
         lAk+jRVeOiZ6RCw/t1XmtYDxn7WnCzKW5frW/MFeXCAK6ZB11899904RlByT8o/XYYre
         ywj5UB6wfv0oqJFw8URZ/KVOyGGwMrLvGA9/r1scxGunccYrXFzKPkq31S2AHnnd6gUq
         IsyQ==
X-Gm-Message-State: AOAM533wkTU5NHRrjjFt8bYNLhRbTNp3O5brrZSPRn10haoJx3UThhWX
	TDkf7/kus+zkFWh0ObcYIlw=
X-Google-Smtp-Source: ABdhPJwIxMVekrzZ8QnOTQPepDHf8jbH9rh9RFgsArNQuFOPVGZiGMVJdbKA3lfWkS+QFORUPMrLYg==
X-Received: by 2002:a67:1341:: with SMTP id 62mr4172394vst.49.1612420845015;
        Wed, 03 Feb 2021 22:40:45 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:e306:: with SMTP id j6ls548054vsf.7.gmail; Wed, 03 Feb
 2021 22:40:44 -0800 (PST)
X-Received: by 2002:a67:de17:: with SMTP id q23mr3962710vsk.23.1612420844650;
        Wed, 03 Feb 2021 22:40:44 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612420844; cv=none;
        d=google.com; s=arc-20160816;
        b=zEtsfAfO/Cr2qIgOql6U+IZuHkeM4ZRV3fKcE8N4BWRM68/05l5kHfLwpTIdRte7Yg
         jRlrxhLgrbl5ity208EPqCwnZlbcG1yaYMz6eMPjM+R4tL2TzPt8Grw5ZSiZKUSmGqN/
         LDPKDQu1AwngwjIDHbrPEgAVWd92YlzIU46IPpBSeOhcw2ZegvtTKECAqiECI5BVmdoF
         NrEyxH75SuL9ZSjLjJB0auN0z4fJZyIZqgA5xUDua0DsU9LhRhe1GdAEorMLBfY9ult5
         gaMROlCPcXA78JO6AFnKaEhKEUxtmMpA7LQqch1VIDhWJWShXEsJUhy248+fy9lWUrbM
         mYvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:sender
         :dkim-signature;
        bh=kfhAID8FntM38gEbpNWw0Qb4/ZW9dFPJ6TFlpp5/51k=;
        b=j/ZINwojApsimn2sm8Nsnya5Am/pE9M5epO84Y6nd7B0vAKwam7sHaS6kaxlzL9D+2
         nzujSwav3LD9JfTxp71JFls1EFPSSJ5F6NdKd8Ui6ts/A8fovVC7qrbWBm/K/NxGeoHS
         pXeBuPQDEaYQAaaYpSF/xyeXNkkLWb8xQPtjHnYgc56H4hyKokoA25oYMizCMiUJiZfs
         jPrKvejUL6M7qLOqI/bC9hqIMmo66ZDbHUD7pzQ89OwL9sw5B5K+vu3KwQi+b1aH+Hzy
         hyoR7zVW0QZHUnRDYSgiIoCbrBIeZXYv0RnH0ay47EpfLUABxs+htNe6Vsmh/+WufsZI
         ANEA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=c5tviGsR;
       spf=pass (google.com: domain of 37jybyawkai86wxbtd461xabz77z4x.v75@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=37JYbYAwKAI86wxBtD461xABz77z4x.v75@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x849.google.com (mail-qt1-x849.google.com. [2607:f8b0:4864:20::849])
        by gmr-mx.google.com with ESMTPS id q1si306939vsn.1.2021.02.03.22.40.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 03 Feb 2021 22:40:44 -0800 (PST)
Received-SPF: pass (google.com: domain of 37jybyawkai86wxbtd461xabz77z4x.v75@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) client-ip=2607:f8b0:4864:20::849;
Received: by mail-qt1-x849.google.com with SMTP id l15so1807351qtp.21
        for <clang-built-linux@googlegroups.com>; Wed, 03 Feb 2021 22:40:44 -0800 (PST)
Sender: "ndesaulniers via sendgmr" <ndesaulniers@ndesaulniers1.mtv.corp.google.com>
X-Received: from ndesaulniers1.mtv.corp.google.com ([2620:15c:211:202:e070:bc84:c4fd:eb02])
 (user=ndesaulniers job=sendgmr) by 2002:a0c:f7d2:: with SMTP id
 f18mr6141066qvo.39.1612420844219; Wed, 03 Feb 2021 22:40:44 -0800 (PST)
Date: Wed,  3 Feb 2021 22:40:35 -0800
Message-Id: <20210204064037.1281726-1-ndesaulniers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.30.0.365.g02bc693789-goog
Subject: [PATCH v8 0/2] Kbuild: DWARF v5 support
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Andrew Morton <akpm@linux-foundation.org>, 
	Sedat Dilek <sedat.dilek@gmail.com>, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com, linux-kbuild@vger.kernel.org, 
	linux-arch@vger.kernel.org, Jakub Jelinek <jakub@redhat.com>, 
	Fangrui Song <maskray@google.com>, Caroline Tice <cmtice@google.com>, Nick Clifton <nickc@redhat.com>, 
	Yonghong Song <yhs@fb.com>, Jiri Olsa <jolsa@kernel.org>, Andrii Nakryiko <andrii@kernel.org>, 
	Arnaldo Carvalho de Melo <acme@kernel.org>, Arvind Sankar <nivedita@alum.mit.edu>, 
	Chris Murphy <bugzilla@colorremedies.com>, Nick Desaulniers <ndesaulniers@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=c5tviGsR;       spf=pass
 (google.com: domain of 37jybyawkai86wxbtd461xabz77z4x.v75@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=37JYbYAwKAI86wxBtD461xABz77z4x.v75@flex--ndesaulniers.bounces.google.com;
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210204064037.1281726-1-ndesaulniers%40google.com.
