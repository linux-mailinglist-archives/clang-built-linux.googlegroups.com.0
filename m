Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBFOIQD5AKGQEO2623BA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53d.google.com (mail-pg1-x53d.google.com [IPv6:2607:f8b0:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D88024E0C9
	for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 21:44:22 +0200 (CEST)
Received: by mail-pg1-x53d.google.com with SMTP id 16sf1546627pgc.19
        for <lists+clang-built-linux@lfdr.de>; Fri, 21 Aug 2020 12:44:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598039061; cv=pass;
        d=google.com; s=arc-20160816;
        b=Uff481TfiTUse3jLzavdFZnhVgyLsBd+GaO8Z5owl54Oe/T3fcDwGRvyQmYPFkbpm7
         P7zVSB8YYqXfPQSYgJOBcJdqG+POY6+X5ldYNqFjDHhVlPeoaWXRwezXoIjOhzKH/p3m
         eDdLXyoE1jIPQfjyQojnty8CsiG4JMwtMfhj6t1x7Nvbe7o7Khepur4PyAuMfFOWI2KB
         PfA95pl/UP+fFRO7a0+lsD0Z4Y9UdzS3+Yb20Gkr7oQJDJXyndPkA4SaIZX+2qKaguIP
         +Fnj9L/eRjrs9qfWI+g2r3dGCGxW55GlxFniXWuRPKH0+U3diI47r32DGcxyaM+dmFBw
         AK7g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=S8isRF9vQLlUz4XmhnRvQ8mS/PukdBH0KxyudGGScVQ=;
        b=yhTK2ubmmKF0D+j7E+1N2S7At61gHeIGQtyvNS7B5feR4HLUaJaNp+2YUIYwuBtTtF
         3PFbBSYVPP2q42exw1IS7+JQhZeMQkzMvm4lN0LkAC+byQW81Sres0tKxa4BF2RGHc0Y
         dQk4UItvwSNDeR1uMtXhbqNzH9bwC+vbwSA4n6gY/DCyg1GjftGmgbSubXtgfJS7/zk7
         lmLtjvSHRfqeCHXXLa07DPCL2es8y00vGV3G0ZmiqiVkNN5FNfphUW8ERR/p+0kFYih9
         gy5NCm9mj61r7YO862AqTPbbowwfAKhMXXc9x7AIG9ogqbAn+b6UthFvQ8NtxQfaUD7D
         H6jA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=DTGcBO8E;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=S8isRF9vQLlUz4XmhnRvQ8mS/PukdBH0KxyudGGScVQ=;
        b=RxNRe6QtIrxsxqZSxcBVWFfr3Uv6KvnS2KNzl75qgOBXzM28Bsw6ZjBJM2wO/M9scD
         uQzzM7ypVTMOKk+dbhstMbhrmjvEPVq05xs7g1PCMLzk+t5fTVD8kDTIKMy1vT3Tn6c3
         PzU6HYhDMx0SgcM8xfBJ3WCufVH6/bVMmXu2Sbd9mm7lNr64Lkh1qZ5XHBTJQVLrhBYr
         cAu2mPlvz5pSKqEAyeLCR7Zy3Wzr5BkWK4wXAty3bwaS8MsqZ4DMYGJ5RPUDECj7rQZJ
         UTVvgJZUC294j66KLkfxqGauYZNcmksu9P6M1iSBUKIzuKpXx1fxzVpfY0vOY/ds59o6
         HnFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=S8isRF9vQLlUz4XmhnRvQ8mS/PukdBH0KxyudGGScVQ=;
        b=Kpb/sLk5lSq1bWfp29eDwszn0wuo41TebLunDIYRnX2P8ZDkoXXQceUg37RSL/L96Q
         3Hl1ei7lEo2Z6Qk2B6Y67gxlAELEnbGV3E3rvXAeDdlnqEBWnO6aqnE84fcQUkjUjJei
         QGveFt7u/ZmAvo/gLJf5Dou3aVLuSRIo4hi1spwLoWiu9kdvJavNEimNm5dSjP0ZLU1n
         hjIwuE28fE0cyOQLcFWDlyloCdgxGzG7x2N2ixiIQWncr4KHVB8rYjkyC0xUUvxcRv7s
         75VqGCQwaKliqCnDV8tD4nca1Wg17uH7Tw6ZGPvdSLqNcgvtmHx1PDJLnjkg8cxeIyyd
         n4Fw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532hxk7gjgbSF9obA1RRwC2PzKxNYLGbgMzHf4Z5bUX8AdWyllQF
	raIcs6FxVTezRSVRurwDVbw=
X-Google-Smtp-Source: ABdhPJwN5JodMbN1A6U5N30LbDzFO0Dou47fmLwJNx+z1aXWOKyh69LUQZBJevlMka1vKO755b8kbQ==
X-Received: by 2002:a17:902:bf01:: with SMTP id bi1mr3675541plb.118.1598039061226;
        Fri, 21 Aug 2020 12:44:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:7593:: with SMTP id q141ls469500pfc.0.gmail; Fri, 21 Aug
 2020 12:44:20 -0700 (PDT)
X-Received: by 2002:a63:385a:: with SMTP id h26mr3507485pgn.238.1598039060733;
        Fri, 21 Aug 2020 12:44:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598039060; cv=none;
        d=google.com; s=arc-20160816;
        b=yWmsdIVmpxkJU3QndgB3xZpK8JYrdawx+99fP+6KbnIZOw9Px5RRm1qjdIDGkHe6EF
         ljWHrzUn4QMXoH3OzvP1KqnhBkJDh46na97LTQtGwr8OTRVVMHlZxcAYy6qoj2TKE2uL
         yUi+9BSskLmwnyQLw7hcYr1ruKHzoTXpM7+VySXIwcGpGVcbAJyn5mSX3r+QIHvrvigL
         O6aG99TB5rRKL2V41E+N5qhr3CaYECrl/RZbjSK3Js3jXSOcqXn/bNtkDxFAxrEqPF38
         tMc+vqI3OA31IapHuDsY+tN6sEBKBZ4PgFmweMfXOAleSUEI+qzPbolMdrzHu51AhsfA
         cA5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=XC3x//tBbsyo8eKHRkCaYogz5DHFYFIlIb0mj2CsQ+Q=;
        b=ZkkUana2FiqHErllgMPzZvAVWfPPD9EgXYuM2JPWKHBJXNlNr8HjOmyJK82KV3PWTz
         Lni6srv01u+kNB2jY229rf8UpnVxii5MZTNlP/3FVMXiwMpWF3Q18Eno3KtpRDdcpgD/
         pfU0Xq+SJ2xoRAddKASsMaOuI/SEpjjxSkAWnpBtNTHD2lM3OXnkUqaeAuIcQDNqaCxX
         QpMYGGEMMaZCiwYSlCQ09DweDxGaMf93ehTIUiijFVpY471thWDiE5MjYU7mPOd7Zk2y
         +x3CSslCaBYmecHo8CGiWRv8JixifNR1qvAGwxJjEXWArkof6NSBmZ59QGXeo1dNwbUD
         L+VQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=DTGcBO8E;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com. [2607:f8b0:4864:20::1041])
        by gmr-mx.google.com with ESMTPS id jx18si165203pjb.1.2020.08.21.12.44.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 21 Aug 2020 12:44:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1041 as permitted sender) client-ip=2607:f8b0:4864:20::1041;
Received: by mail-pj1-x1041.google.com with SMTP id mt12so1258052pjb.4
        for <clang-built-linux@googlegroups.com>; Fri, 21 Aug 2020 12:44:20 -0700 (PDT)
X-Received: by 2002:a17:902:b111:: with SMTP id q17mr3452650plr.202.1598039060409;
        Fri, 21 Aug 2020 12:44:20 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id k125sm2945849pga.48.2020.08.21.12.44.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Aug 2020 12:44:19 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Ingo Molnar <mingo@kernel.org>
Cc: Kees Cook <keescook@chromium.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Peter Collingbourne <pcc@google.com>,
	James Morse <james.morse@arm.com>,
	Borislav Petkov <bp@suse.de>,
	Ingo Molnar <mingo@redhat.com>,
	Russell King <linux@armlinux.org.uk>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	Arnd Bergmann <arnd@arndb.de>,
	x86@kernel.org,
	clang-built-linux@googlegroups.com,
	linux-arch@vger.kernel.org,
	linux-efi@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v6 00/29] Warn on orphan section placement
Date: Fri, 21 Aug 2020 12:42:41 -0700
Message-Id: <20200821194310.3089815-1-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=DTGcBO8E;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1041
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

Hi Ingo,

Based on my testing, this is ready to go. I've reviewed the feedback on
v5 and made a few small changes, noted below.


https://git.kernel.org/pub/scm/linux/kernel/git/kees/linux.git/log/?h=linker/orphans/warn/v6

v6:
- rebase to -tip x86/boot
- remove 0-sized NOLOAD
- move .got.plt to end with INFO (NOLOAD warns)
- add Reviewed-bys
v5: https://lore.kernel.org/lkml/20200731230820.1742553-1-keescook@chromium.org/
v4: https://lore.kernel.org/lkml/20200629061840.4065483-1-keescook@chromium.org/
v3: https://lore.kernel.org/lkml/20200624014940.1204448-1-keescook@chromium.org/
v2: https://lore.kernel.org/lkml/20200622205815.2988115-1-keescook@chromium.org/
v1: https://lore.kernel.org/lkml/20200228002244.15240-1-keescook@chromium.org/

A recent bug[1] was solved for builds linked with ld.lld, and tracking
it down took way longer than it needed to (a year). Ultimately, it
boiled down to differences between ld.bfd and ld.lld's handling of
orphan sections. Similar situation have continued to recur, and it's
clear the kernel build needs to be much more explicit about linker
sections. Similarly, the recent FGKASLR series brought up orphan section
handling too[2]. In all cases, it would have been nice if the linker was
running with --orphan-handling=warn so that surprise sections wouldn't
silently get mapped into the kernel image at locations up to the whim
of the linker's orphan handling logic. Instead, all desired sections
should be explicitly identified in the linker script (to be either kept,
discarded, or verified to be zero-sized) with any orphans throwing a
warning. The powerpc architecture has actually been doing this for some
time, so this series just extends that coverage to x86, arm, and arm64.

This has gotten sucecssful build testing under the following matrix:

compiler/linker: gcc+ld.bfd, clang+ld.lld
targets: defconfig, allmodconfig
architectures: x86, i386, arm64, arm
versions: -tip x86/boot

All three architectures depend on the first several commits to
vmlinux.lds.h. x86 depends on Arvind's GOT series (in -tip x86/boot now).
arm64 depends on the efi/libstub patch. As such, I'd like to land this
series as a whole. Ingo has suggested he'd take it into -tip.

Thanks!

-Kees

[1] https://github.com/ClangBuiltLinux/linux/issues/282
[2] https://lore.kernel.org/lkml/202002242122.AA4D1B8@keescook/

Kees Cook (28):
  vmlinux.lds.h: Create COMMON_DISCARDS
  vmlinux.lds.h: Add .gnu.version* to COMMON_DISCARDS
  vmlinux.lds.h: Avoid KASAN and KCSAN's unwanted sections
  vmlinux.lds.h: Split ELF_DETAILS from STABS_DEBUG
  vmlinux.lds.h: Add .symtab, .strtab, and .shstrtab to ELF_DETAILS
  efi/libstub: Disable -mbranch-protection
  arm64/mm: Remove needless section quotes
  arm64/kernel: Remove needless Call Frame Information annotations
  arm64/build: Remove .eh_frame* sections due to unwind tables
  arm64/build: Use common DISCARDS in linker script
  arm64/build: Add missing DWARF sections
  arm64/build: Assert for unwanted sections
  arm64/build: Warn on orphan section placement
  arm/build: Refactor linker script headers
  arm/build: Explicitly keep .ARM.attributes sections
  arm/build: Add missing sections
  arm/build: Assert for unwanted sections
  arm/build: Warn on orphan section placement
  arm/boot: Handle all sections explicitly
  arm/boot: Warn on orphan section placement
  x86/asm: Avoid generating unused kprobe sections
  x86/build: Enforce an empty .got.plt section
  x86/build: Assert for unwanted sections
  x86/build: Warn on orphan section placement
  x86/boot/compressed: Reorganize zero-size section asserts
  x86/boot/compressed: Remove, discard, or assert for unwanted sections
  x86/boot/compressed: Add missing debugging sections to output
  x86/boot/compressed: Warn on orphan section placement

Nick Desaulniers (1):
  vmlinux.lds.h: add PGO and AutoFDO input sections

 arch/alpha/kernel/vmlinux.lds.S               |  1 +
 arch/arc/kernel/vmlinux.lds.S                 |  1 +
 arch/arm/Makefile                             |  4 ++
 arch/arm/boot/compressed/Makefile             |  2 +
 arch/arm/boot/compressed/vmlinux.lds.S        | 20 +++----
 .../arm/{kernel => include/asm}/vmlinux.lds.h | 30 ++++++++--
 arch/arm/kernel/vmlinux-xip.lds.S             |  8 ++-
 arch/arm/kernel/vmlinux.lds.S                 |  8 ++-
 arch/arm64/Makefile                           |  9 ++-
 arch/arm64/kernel/smccc-call.S                |  2 -
 arch/arm64/kernel/vmlinux.lds.S               | 28 +++++++--
 arch/arm64/mm/mmu.c                           |  2 +-
 arch/csky/kernel/vmlinux.lds.S                |  1 +
 arch/hexagon/kernel/vmlinux.lds.S             |  1 +
 arch/ia64/kernel/vmlinux.lds.S                |  1 +
 arch/mips/kernel/vmlinux.lds.S                |  1 +
 arch/nds32/kernel/vmlinux.lds.S               |  1 +
 arch/nios2/kernel/vmlinux.lds.S               |  1 +
 arch/openrisc/kernel/vmlinux.lds.S            |  1 +
 arch/parisc/boot/compressed/vmlinux.lds.S     |  1 +
 arch/parisc/kernel/vmlinux.lds.S              |  1 +
 arch/powerpc/kernel/vmlinux.lds.S             |  2 +-
 arch/riscv/kernel/vmlinux.lds.S               |  1 +
 arch/s390/kernel/vmlinux.lds.S                |  1 +
 arch/sh/kernel/vmlinux.lds.S                  |  1 +
 arch/sparc/kernel/vmlinux.lds.S               |  1 +
 arch/um/kernel/dyn.lds.S                      |  2 +-
 arch/um/kernel/uml.lds.S                      |  2 +-
 arch/x86/Makefile                             |  4 ++
 arch/x86/boot/compressed/Makefile             |  2 +
 arch/x86/boot/compressed/vmlinux.lds.S        | 58 +++++++++++++------
 arch/x86/include/asm/asm.h                    |  6 +-
 arch/x86/kernel/vmlinux.lds.S                 | 39 ++++++++++++-
 drivers/firmware/efi/libstub/Makefile         |  9 ++-
 include/asm-generic/vmlinux.lds.h             | 49 +++++++++++++---
 35 files changed, 241 insertions(+), 60 deletions(-)
 rename arch/arm/{kernel => include/asm}/vmlinux.lds.h (84%)

-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200821194310.3089815-1-keescook%40chromium.org.
