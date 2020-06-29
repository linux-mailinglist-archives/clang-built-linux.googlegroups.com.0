Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBRUP433QKGQEVSTKMMY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83c.google.com (mail-qt1-x83c.google.com [IPv6:2607:f8b0:4864:20::83c])
	by mail.lfdr.de (Postfix) with ESMTPS id 37C9620CCAE
	for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jun 2020 08:18:48 +0200 (CEST)
Received: by mail-qt1-x83c.google.com with SMTP id e6sf10548822qtb.19
        for <lists+clang-built-linux@lfdr.de>; Sun, 28 Jun 2020 23:18:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593411527; cv=pass;
        d=google.com; s=arc-20160816;
        b=dL2QYdmPQNRtai+r8dzI3wV88cY759AxngVZIpNgGZHn6Nw3y98sYLc3ft9xlo3GIP
         OePXgW1xX5A6JhpXvc2I0/bT+U2DyZM1sS5yub1nDayGFjQMdprZMZQDbZ/M70ZDmt6n
         kmq6KAf9GBTCZrCzie6bK+SX13GoQtVisP0P9qkGv0B/hAs3Uz5PEZZxJz9CZMNmmLjD
         CppRL5Wjmq29WQ0zz8ENUKSzeeZd5vGN3D09yHthgg0zm++s2dVy7ByrXadNTI11zVym
         Fzq7zPvGsYaRSW0XDLSAtNIlaxzWKJweoLaiDnsrpf+1xOxzt2yRvPGtvTF1NxvzTtw0
         vxNA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :subject:cc:to:from:sender:dkim-signature;
        bh=OrJV6uWbdm6nnNSDEX6euJkBPt70qSDzyLS/2lqOQB0=;
        b=IsBZRsKYynw4OJ5QxS9cxN/3QnBiumA3GfvaL+VgOdxnZ8y+dJbvxlgwwm4MfrP2re
         4dmXH1czsDE0nRk2+1R4voOnwAxFPJr4SDh124oj/5VSWNk7wzJ7wGOBs8nmL71oRBaT
         yrcKtDpOI/P+qJnKN3c7ZbT8bb7nl3K9HKbutqqGeoEz0P0RsZDEHFv6VA1gWrucOrUZ
         8ELY5z4S0WzPqNxL9G9nvsHdkb99VAi8u32v/QOEecSi8Ryb70etblUXmnPEHzUAvpqe
         mHHi12cYJlD1RU0nTMl94C/1Z0dKDLZZzM9l6v9IWvix6UjYdLM5K7JaCujHHupkZucK
         OYSA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=htK3ULYA;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OrJV6uWbdm6nnNSDEX6euJkBPt70qSDzyLS/2lqOQB0=;
        b=efyexX7vkQBdByj3p0ElMp+ZYTW++QaZNl9LarxFNKJXkXYT0sNsDI1S0wAW0FeFnP
         qnaso1xWWItdbdYDf3QHx+1ijyraoeF8PumSEBxkGCEg70hAhaWbooKpwuGQF935A2qb
         yjAie7DZCAIrBQSaTwLZ4sTQnqIvjY2NEfWtVxOzPaQLNVbpSEZp76YogGKe3DQF2MEQ
         u52AskBLveUgqmqP4gbpLWDvwbTvCP6dRiytRRsHLSD6/8NyKUw4EGNUv4LD6vbqeC8x
         gbmliy8BAfgbMNsKOUdscBo/Urg2HEwusZICGzbYUh+mRUcAj9ArhD1Ey8E0gqcMctT1
         Vogw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=OrJV6uWbdm6nnNSDEX6euJkBPt70qSDzyLS/2lqOQB0=;
        b=Mf2mP6rusOajMDGXdAHuTv2gu8WOjTOJFkQ9yYvBz+5UUjHSZ4B3D7HkVtg8/GNMKO
         qQLLvR6DGjHjgX/lVI6gkkwh/uJ63+LU0RI5DoFvhh1EN5YY7y2ADn5SmlU3A9XOLAl6
         m8ovWThvVZ90QooDHFkb6W7E+cPncTRWjNEyFxeKdnkBZVo4LVALuUyWIhP90RQ1kHGk
         l85uksiyKI6xKANv0hoy0iRXQqXzYI0e6PTDl/gpXhDwUOMX/pJ7aAoKPa5DHWpkPWlf
         Rr3C6Th7re/lMybfFu3filUl+zWR1DjfLznHL8zcqSgkonZEHDuMLET4JRkrNsTuwq90
         cF3g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532aHiemlkTkM9OgOWafUZIwtgEiKvbW8BWVTNj4tvF87YdvikDn
	YJ9v9o72lw4OwOkTaDtQ4j4=
X-Google-Smtp-Source: ABdhPJwopf7zRsObz+Dv+fI64s2Pq+GYwzmVo09ckKdFa3zyZDSPzent1haFOT/qAN0dNmIBV2TpOw==
X-Received: by 2002:ac8:3fac:: with SMTP id d41mr13576557qtk.98.1593411527031;
        Sun, 28 Jun 2020 23:18:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:3287:: with SMTP id z7ls6355599qtd.0.gmail; Sun, 28 Jun
 2020 23:18:46 -0700 (PDT)
X-Received: by 2002:ac8:668f:: with SMTP id d15mr14027612qtp.113.1593411526734;
        Sun, 28 Jun 2020 23:18:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593411526; cv=none;
        d=google.com; s=arc-20160816;
        b=unBFjzCe/Z+FnFrulCcdnL4tTXw+4jKfT6yafN1uTkF81lYAEGQs/i6HfYXZrvKLW8
         ytThSQiZIsKOL0jCF+VRkJbxSZB40b4w/Dq26AOOPOjSP+6BGeiriSB4oAuWVdOjspKA
         ehweInwm8EBKUuZFZ+tMfoge5POMY3vIomrnpbU2tZHWp72zeKL8A87fSRYjKoPuwhDz
         twCMhssy+GNtySS0Vl5EYZVB9KJyMtIdBizawx/dhcZ+xgJdVFyWeg3zF/NKmdQS0SCe
         gCkejD5c+3tbo0YOUMdeHBqBw7dE3ZbhHQ/+Cy4gSIhQRtvh4xBdP9XOwfzvEsDfP+F7
         LT3w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=94PT4ZZxVDelwBmV/2g0OBn6aDN7DJybZdz+0cO8lSM=;
        b=OQmyV4imNElAB3uL45ymDxsUYXWDUs+/3mQ+EuyZn9F1y8QqyCyV5wuratM1Ds/dU5
         gYhMeNBiD2bz8m2iv2oQ82Bg+jLDqXiOmD2tJ3gW4uiwgDKWYMk7Y9hdiXmaxpp9ohau
         /WX41FK8kEDrbkkCqDe1ZjFVfcU8o5fP5AWsqFqlxSce37yeLABQ/aaa1u7t1HbZb9+O
         MOCbuSPPYZd6NfygN1ZVw4CFiG6M0N1dbMCtGMs15fIFKCmH912/luInfK6+XEvWIwTx
         gMMw7HNUdmdkPJQlk/B56xTICODRSWlyjul9mG7KCHWmufRTQFSRyDFqt6S/B5mO4fDa
         UnBg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=htK3ULYA;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com. [2607:f8b0:4864:20::1043])
        by gmr-mx.google.com with ESMTPS id u17si254980qka.5.2020.06.28.23.18.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 28 Jun 2020 23:18:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1043 as permitted sender) client-ip=2607:f8b0:4864:20::1043;
Received: by mail-pj1-x1043.google.com with SMTP id o22so2510951pjw.2
        for <clang-built-linux@googlegroups.com>; Sun, 28 Jun 2020 23:18:46 -0700 (PDT)
X-Received: by 2002:a17:90a:1acc:: with SMTP id p70mr5373622pjp.210.1593411526183;
        Sun, 28 Jun 2020 23:18:46 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id v28sm14619872pgc.44.2020.06.28.23.18.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Jun 2020 23:18:44 -0700 (PDT)
From: Kees Cook <keescook@chromium.org>
To: Will Deacon <will@kernel.org>
Cc: Kees Cook <keescook@chromium.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Mark Rutland <mark.rutland@arm.com>,
	Ard Biesheuvel <ardb@kernel.org>,
	Peter Collingbourne <pcc@google.com>,
	James Morse <james.morse@arm.com>,
	Borislav Petkov <bp@suse.de>,
	Thomas Gleixner <tglx@linutronix.de>,
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
Subject: [PATCH v4 00/17] Warn on orphan section placement
Date: Sun, 28 Jun 2020 23:18:23 -0700
Message-Id: <20200629061840.4065483-1-keescook@chromium.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=htK3ULYA;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1043
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Content-Type: text/plain; charset="UTF-8"
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

v4:
- explicitly add .ARM.attributes
- split up arm64 changes into separate patches
- split up arm changes into separate patches
- work around Clang section generation bug in -mbranch-protection
- work around Clang section generation bug in KASAN and KCSAN
- split "common" ELF sections out of STABS_DEBUG
- changed relative position of .comment
- add reviews/acks
v3: https://lore.kernel.org/lkml/20200624014940.1204448-1-keescook@chromium.org/
v2: https://lore.kernel.org/lkml/20200622205815.2988115-1-keescook@chromium.org/
v1: https://lore.kernel.org/lkml/20200228002244.15240-1-keescook@chromium.org/

A recent bug[1] was solved for builds linked with ld.lld, and tracking
it down took way longer than it needed to (a year). Ultimately, it
boiled down to differences between ld.bfd and ld.lld's handling of
orphan sections. Similarly, the recent FGKASLR series brough up orphan
section handling too[2]. In both cases, it would have been nice if the
linker was running with --orphan-handling=warn so that surprise sections
wouldn't silently get mapped into the kernel image at locations up to the
whim of the linker's orphan handling logic. Instead, all desired sections
should be explicitly identified in the linker script (to be either kept or
discarded) with any orphans throwing a warning. The powerpc architecture
actually already does this, so this series extends coverage to x86, arm,
and arm64.

All three architectures depend on the first four commits (to
vmlinux.lds.h), and arm64 depends on the 5th and 6th patches (to ctype,
and efi/libstub). As such, I'd like to land this series as a whole. Given
that two thirds of it is in the arm universe, perhaps this can land via
the arm64 tree? If x86 -tip is preferred, that works too. Or I could
just carry this myself in -next. In all cases, I would really appreciate
reviews/acks/etc. :)

Thanks!

-Kees

https://git.kernel.org/pub/scm/linux/kernel/git/kees/linux.git/log/?h=linker/orphans/warn/v4

Kees Cook (17):
  vmlinux.lds.h: Add .gnu.version* to DISCARDS
  vmlinux.lds.h: Avoid KASAN and KCSAN's unwanted sections
  vmlinux.lds.h: Split ELF_DETAILS from STABS_DEBUG
  vmlinux.lds.h: Add .symtab, .strtab, and .shstrtab to ELF_DETAILS
  ctype: Work around Clang -mbranch-protection=none bug
  efi/libstub: Disable -mbranch-protection
  arm64/build: Use common DISCARDS in linker script
  arm64/mm: Remove needless section quotes
  arm64/build: Remove .eh_frame* sections due to unwind tables
  arm64/kernel: Remove needless Call Frame Information annotations
  arm64/build: Warn on orphan section placement
  arm/build: Refactor linker script headers
  arm/build: Explicitly keep .ARM.attributes sections
  arm/build: Warn on orphan section placement
  arm/boot: Warn on orphan section placement
  x86/build: Warn on orphan section placement
  x86/boot: Warn on orphan section placement

 arch/alpha/kernel/vmlinux.lds.S               |  1 +
 arch/arc/kernel/vmlinux.lds.S                 |  1 +
 arch/arm/boot/compressed/Makefile             |  2 ++
 arch/arm/boot/compressed/vmlinux.lds.S        | 18 +++++-----
 .../arm/{kernel => include/asm}/vmlinux.lds.h | 25 ++++++++++---
 arch/arm/kernel/vmlinux-xip.lds.S             |  6 ++--
 arch/arm/kernel/vmlinux.lds.S                 |  6 ++--
 arch/arm64/Makefile                           |  9 ++++-
 arch/arm64/kernel/smccc-call.S                |  2 --
 arch/arm64/kernel/vmlinux.lds.S               | 17 ++++++---
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
 arch/unicore32/kernel/vmlinux.lds.S           |  1 +
 arch/x86/Makefile                             |  8 ++++-
 arch/x86/boot/compressed/Makefile             |  3 +-
 arch/x86/boot/compressed/vmlinux.lds.S        | 12 +++++++
 arch/x86/include/asm/asm.h                    |  6 +++-
 arch/x86/kernel/vmlinux.lds.S                 |  7 ++++
 drivers/firmware/efi/libstub/Makefile         |  3 +-
 include/asm-generic/vmlinux.lds.h             | 35 +++++++++++++++++--
 lib/ctype.c                                   | 10 ++++++
 36 files changed, 154 insertions(+), 39 deletions(-)
 rename arch/arm/{kernel => include/asm}/vmlinux.lds.h (88%)

-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200629061840.4065483-1-keescook%40chromium.org.
