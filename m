Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRBNFS2PZQKGQEU4NBXOQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53d.google.com (mail-ed1-x53d.google.com [IPv6:2a00:1450:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id 520FE18D190
	for <lists+clang-built-linux@lfdr.de>; Fri, 20 Mar 2020 15:54:45 +0100 (CET)
Received: by mail-ed1-x53d.google.com with SMTP id c2sf5233079edx.16
        for <lists+clang-built-linux@lfdr.de>; Fri, 20 Mar 2020 07:54:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584716085; cv=pass;
        d=google.com; s=arc-20160816;
        b=Pkly/VA1OWrGzVbncZjtWVb/bpBgALECLzkbqq5/2FOgV75HQo57UkLNz5JFFqpImH
         HdBd79id8mKDGSXo8DMdQWusHiGkZvD8ywmcG2F/TLK9V7NppYSgEEztz9ABKXjjSAf+
         QVo4lurCUywags4cpu23boEQ901RbhhnZDU8H4UNo2cQ/J9mOpp/CNysqWZ+1Emem6yR
         Tn3TXNcM9B04qWZhY5aEuy82ordXXWP9tsnEUNa54IfQ33MRoKd57ZtItRhwoyELik49
         O2IBRr5pGPUL3pCrQTEsid82/WUzifK90SiDUqMj8Ppi7YTi91fOKjTzSdA8vhff9ROo
         r11Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=ynr64yVuqskV7fV313LEDlxkOgdpres6ai2MjJTsOmE=;
        b=iB+qF8fXPmiKBRIXrIUhRcsU8Y9qpqjrO6vzTZiMPhVpdIuZlZ1Up97HxLA0ht8Cg2
         d+KmYhATS/73za8Gg06VfBd65MK9giSHOws+N1EjT3k/S9LIEH3AoedkTWxdCoNrcp+F
         vAcnIN1CXg7IVM9UZm/S1O7PT5njtQEiTD9TcbVc5nzPsLKv+c552K4yjBTmUre3lUZP
         XudFFYoZmxRbnMb+gOzREQa0lyb3wHK4JXkeqhI8IUGyqcnxXakR7qqshYzGbRheEpmB
         KhZVEZPyjLcsWvYcowLoM10XfVWOtwEyNqd80gGHPQg21PNmgqXDVDEZzo/R0CHlAqEN
         QU6g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ynr64yVuqskV7fV313LEDlxkOgdpres6ai2MjJTsOmE=;
        b=ZxMerLUmostrnH+o/z8zC9qQiV181EPHhG2OlfirqNWXV31KAx6H8c/7rJBAQRMkYI
         wuI0KKyPhFMbRI38IcaLY+Hr8akv09bZHyOEgA4BmOyU1vWqlEdu7MCXjDexhOFuGEyB
         wIyOoWkkcT7JN5U4gpOLYTxS0++kRhqT78h+xYBzIoPhqiKgyBIphmRbkfsHoroKTpua
         N9S1KCHu8taOZKFlhfqkSoS3YQOvsLtUiq5Ix6MQZShHsY/k6wadsM0lvamjjKJYsRdq
         rQEWZDisXoH0JZthuodYh7kMiCDu19KvUjyd3pE58oGVDX+n7ZK6fnhOEIKDqKGEscXa
         bycQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ynr64yVuqskV7fV313LEDlxkOgdpres6ai2MjJTsOmE=;
        b=sfzVRAhzlU1MWBA41RPwFQzUFkgtXzjOl/TQJsGVbbWG4JZahnWybN0E2VxHoeCoOr
         fxGnUP/jZWn69/44i2kfOzL1mUkGtS5u7UPEq3Y+aTP1YdOi6YGoGTuSVtFR7N/RXGGj
         B9lACQnJWZQoau2bZ3p9a9cK6NJkqQaBnAA7Cl0mIcNvvM1tH7x4pW9gRRwrLFA6XzrQ
         im0b2OxayFB3Ko7NkjeeBL0wZIdyx8PryCTdwwXaVwc743TURpr86ASueGlq8xUyO7xl
         D1X89xDtZTbtE7cL6+z9JXZxb+ZBhi7pHxMAjKo2sAkVR8xm5gqb0iAvK9cUoaApsKVx
         NWew==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ2yVgRUPP8CIxFaTQ32+p8hyE8/DUvhYBMQ4FiE8EiIU8wgCriP
	29sUnXfLX1fznrzgD4o2xgw=
X-Google-Smtp-Source: ADFU+vto7PhhNlX74PJv6OBuK3gSVU0BHoHehkrjBliiu6iJgROIhY8Om5SBBGHvhOSAgWMmn5xyIA==
X-Received: by 2002:a05:6402:2204:: with SMTP id cq4mr7068870edb.6.1584716084996;
        Fri, 20 Mar 2020 07:54:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:8ad5:: with SMTP id k21ls3342090edk.0.gmail; Fri, 20 Mar
 2020 07:54:44 -0700 (PDT)
X-Received: by 2002:aa7:c691:: with SMTP id n17mr8402374edq.5.1584716084562;
        Fri, 20 Mar 2020 07:54:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584716084; cv=none;
        d=google.com; s=arc-20160816;
        b=aKjPsACvr7Gs4wdpYNyfw7UfkJJpxIFiOqO0BU3PfrtQ/kyc0Mc3LIeX/hXK6yL0hL
         5xRw89uOJ6z/R5Uw1/E+tbq8VFpx0+fmb06dvZxbZi69/5ljI34BVR5sCG/69Nz/wSxx
         TyW8OG5ss6NGRFEmpcSGCvGxFASTuGne7OTmolt8nmRXL8uVDaW9e2JJDVawMdRFMq//
         uugw5rbk3PHnBdx7sjeheRznraJhO1gIfMMT75yfwAwI/5t1Sgc80crpLVdfi9OAQoUx
         Q2IDe179M7+m3WiPJQwvsq3T+HGA0SPphkjT9iVDdjpizPbK3EUUkWJ6AgGYg6Y5TM4V
         St2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=blocrLSiFUqVAGdm3rix93iaapc8EWYajEo/XBSmqqs=;
        b=YEMghXQXFKOHwhKOqo1n1xXyVY8dZtLq4eg9LVlt5zN6IAPM7ik2Swldn8I5JuLVVv
         OpsuS2uxxtMGY13pLiOOsWG+tGYZvt2/kV6nw+RUUTwV4ujA/IFoFuf4gDYBaNnJcOxU
         u5ApVuBY4qS6ah2WPmJfBSaG4qbE0aHiyi/UB9TetnpSt/jCvWZFlkKFPfxdXoUVGc/q
         ZqSxYGUS5tWxo3Nl2ECh5CxaVq5wOnJkBzx6R2mXpp5f3VFHFVsO4OdQZkEwiTYtzDDm
         3E2FXXQEWiXDMDGsVxHtQEZsuAe66GHTrRBNluShQ0yPyLfZoCO8msF2ZuJ1Jp6Hta0n
         06zw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id cw13si326752edb.2.2020.03.20.07.54.44
        for <clang-built-linux@googlegroups.com>;
        Fri, 20 Mar 2020 07:54:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B02CC1FB;
	Fri, 20 Mar 2020 07:54:43 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9DA973F792;
	Fri, 20 Mar 2020 07:54:40 -0700 (PDT)
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
To: linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	linux-mips@vger.kernel.org,
	x86@kernel.org
Cc: Vincenzo Frascino <vincenzo.frascino@arm.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>,
	Russell King <linux@armlinux.org.uk>,
	Paul Burton <paul.burton@mips.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Andy Lutomirski <luto@kernel.org>,
	Ingo Molnar <mingo@redhat.com>,
	Borislav Petkov <bp@alien8.de>,
	Stephen Boyd <sboyd@kernel.org>,
	Mark Salyzyn <salyzyn@android.com>,
	Kees Cook <keescook@chromium.org>,
	Peter Collingbourne <pcc@google.com>,
	Dmitry Safonov <0x7f454c46@gmail.com>,
	Andrei Vagin <avagin@openvz.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Marc Zyngier <maz@kernel.org>,
	Mark Rutland <Mark.Rutland@arm.com>
Subject: [PATCH v5 00/26] Introduce common headers for vDSO
Date: Fri, 20 Mar 2020 14:53:25 +0000
Message-Id: <20200320145351.32292-1-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: vincenzo.frascino@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172
 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
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

Back in July last year we started having a problem in building compat
vDSOs on arm64 [1] [2] that was not present when the arm64 porting to
the Unified vDSO was done. In particular when the compat vDSO on such
architecture is built with gcc it generates the warning below:

In file included from ./arch/arm64/include/asm/thread_info.h:17:0,
                 from ./include/linux/thread_info.h:38,
                 from ./arch/arm64/include/asm/preempt.h:5,
                 from ./include/linux/preempt.h:78,
                 from ./include/linux/spinlock.h:51,
                 from ./include/linux/seqlock.h:36,
                 from ./include/linux/time.h:6,
                 from ./lib/vdso/gettimeofday.c:7,
                 from <command-line>:0:
./arch/arm64/include/asm/memory.h: In function =E2=80=98__tag_set=E2=80=99:
./arch/arm64/include/asm/memory.h:233:15: warning: cast from pointer
                to integer of different size [-Wpointer-to-int-cast]
  u64 __addr =3D (u64)addr & ~__tag_shifted(0xff);
               ^
In file included from ./arch/arm64/include/asm/pgtable-hwdef.h:8:0,
                 from ./arch/arm64/include/asm/processor.h:34,
                 from ./arch/arm64/include/asm/elf.h:118,
                 from ./include/linux/elf.h:5,
                 from ./include/linux/elfnote.h:62,
                 from arch/arm64/kernel/vdso32/note.c:11:
./arch/arm64/include/asm/memory.h: In function =E2=80=98__tag_set=E2=80=99:
./arch/arm64/include/asm/memory.h:233:15: warning: cast from pointer
                to integer of different size [-Wpointer-to-int-cast]
  u64 __addr =3D (u64)addr & ~__tag_shifted(0xff);

The same porting does not build at all when the selected compiler is
clang.

I started an investigation to try to understand better the problem and
after various discussions at Plumbers and Recipes last year the
conclusion was that the vDSO library as it stands it is including more
headers that it needs. In particular, being a user-space library, it
should require only the UAPI and a minimal vDSO kernel interface instead
of all the kernel-related inline functions which are not directly used
and in some cases can have side effects.

To solve the problem, I decided to use the approach below:
  * Extract from include/linux/ the vDSO required kernel interface
    and place it in include/vdso/
  * Make sure that where meaningful the kernel includes "vdso" headers.
  * Limit the vDSO library to include headers coming only from UAPI
    and "vdso" (with 2 exceptions compiler.h for barriers and param.h
    for HZ).
  * Adapt all the architectures that support the unified vDSO library
    to use "vdso" headers.

According to me this approach allows up to exercise a better control on
what the vDSO library can include and to prevent potential issues in
future.

This patch series contains the implementation of the described approach.

The "vdso" headers have been verified on all the architectures that support
unified vDSO using the vdsotest [3] testsuite for what concerns the vDSO pa=
rt
and randconfig to verify that they are included in the correct places.

To simplify the testing, a copy of the patchset on top of a recent linux
tree can be found at [4].

[1] https://github.com/ClangBuiltLinux/linux/issues/595
[2] https://lore.kernel.org/lkml/20190926151704.GH9689@arrakis.emea.arm.com
[3] https://github.com/nathanlynch/vdsotest
[4] git://linux-arm.org/linux-vf.git common-headers/v5

Changes:
--------
v5:
  - Dropped UINTPTR_MAX check patch.
  - Introduced a new headers cleanup patch.
  - Addressed review comments.
  - Rebased on tip/timers/core.
v4:
  - Dropped vDSO optimization patch for arm64.
  - Introduce a new patch to drop dependency from TASK_SIZE_32 on arm64.
  - Addressed review comments.
  - Rebased on tip/timers/core.
v3:
  - Changed the namespace from common to vdso.
  - Addressed an issue involving parisc modules compilation.
  - Added vdso header for clocksource.h.
  - Addressed review comments.
  - Rebased on tip/timers/core.
v2:
  - Addressed review comments for clang support.
  - Rebased on 5.6-rc4.

Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>
Cc: Arnd Bergmann <arnd@arndb.de>
Cc: Russell King <linux@armlinux.org.uk>
Cc: Paul Burton <paul.burton@mips.com>
Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: Andy Lutomirski <luto@kernel.org>
Cc: Ingo Molnar <mingo@redhat.com>
Cc: Borislav Petkov <bp@alien8.de>
Cc: Stephen Boyd <sboyd@kernel.org>
Cc: Mark Salyzyn <salyzyn@android.com>
Cc: Kees Cook <keescook@chromium.org>
Cc: Peter Collingbourne <pcc@google.com>
Cc: Dmitry Safonov <0x7f454c46@gmail.com>
Cc: Andrei Vagin <avagin@openvz.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>
Cc: Marc Zyngier <maz@kernel.org>
Cc: Mark Rutland <Mark.Rutland@arm.com>
Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>

Vincenzo Frascino (26):
  linux/const.h: Extract common header for vDSO
  linux/bits.h: Extract common header for vDSO
  linux/limits.h: Extract common header for vDSO
  x86:Introduce asm/vdso/clocksource.h
  arm: Introduce asm/vdso/clocksource.h
  arm64: Introduce asm/vdso/clocksource.h
  mips: Introduce asm/vdso/clocksource.h
  linux/clocksource.h: Extract common header for vDSO
  linux/math64.h: Extract common header for vDSO
  linux/time.h: Extract common header for vDSO
  linux/time32.h: Extract common header for vDSO
  linux/time64.h: Extract common header for vDSO
  linux/jiffies.h: Extract common header for vDSO
  linux/ktime.h: Extract common header for vDSO
  common: Introduce processor.h
  scripts: Fix the inclusion order in modpost
  linux/elfnote.h: Replace elf.h with UAPI equivalent
  arm64: vdso32: Code clean up
  arm64: Introduce asm/vdso/processor.h
  arm64: vdso: Include common headers in the vdso library
  arm64: vdso32: Include common headers in the vdso library
  mips: vdso: Enable mips to use common headers
  x86: vdso: Enable x86 to use common headers
  arm: vdso: Enable arm to use common headers
  lib: vdso: Enable common headers
  arm64: vdso32: Enable Clang Compilation

 arch/arm/include/asm/clocksource.h            |  6 +--
 arch/arm/include/asm/cp15.h                   | 20 +---------
 arch/arm/include/asm/processor.h              | 11 +-----
 arch/arm/include/asm/vdso/clocksource.h       |  8 ++++
 arch/arm/include/asm/vdso/cp15.h              | 38 +++++++++++++++++++
 arch/arm/include/asm/vdso/gettimeofday.h      |  4 +-
 arch/arm/include/asm/vdso/processor.h         | 22 +++++++++++
 arch/arm64/include/asm/clocksource.h          |  3 +-
 arch/arm64/include/asm/processor.h            |  7 +---
 arch/arm64/include/asm/vdso/clocksource.h     |  8 ++++
 .../include/asm/vdso/compat_gettimeofday.h    | 10 +----
 arch/arm64/include/asm/vdso/gettimeofday.h    |  1 -
 arch/arm64/include/asm/vdso/processor.h       | 17 +++++++++
 arch/arm64/kernel/vdso/vgettimeofday.c        |  2 -
 arch/arm64/kernel/vdso32/Makefile             | 11 ++++++
 arch/arm64/kernel/vdso32/vgettimeofday.c      | 14 -------
 arch/mips/include/asm/clocksource.h           |  4 +-
 arch/mips/include/asm/processor.h             | 16 +-------
 arch/mips/include/asm/vdso/clocksource.h      |  9 +++++
 arch/mips/include/asm/vdso/gettimeofday.h     |  4 --
 arch/mips/include/asm/vdso/processor.h        | 27 +++++++++++++
 arch/x86/include/asm/clocksource.h            |  5 +--
 arch/x86/include/asm/processor.h              | 12 +-----
 arch/x86/include/asm/vdso/clocksource.h       | 10 +++++
 arch/x86/include/asm/vdso/processor.h         | 23 +++++++++++
 include/linux/bits.h                          |  2 +-
 include/linux/clocksource.h                   | 11 +-----
 include/linux/const.h                         |  5 +--
 include/linux/elfnote.h                       |  2 +-
 include/linux/jiffies.h                       |  4 +-
 include/linux/ktime.h                         |  9 +----
 include/linux/limits.h                        | 13 +------
 include/linux/math64.h                        | 20 +---------
 include/linux/time.h                          |  5 +--
 include/linux/time32.h                        | 14 +------
 include/linux/time64.h                        | 10 +----
 include/vdso/bits.h                           |  9 +++++
 include/vdso/clocksource.h                    | 23 +++++++++++
 include/vdso/const.h                          | 10 +++++
 include/vdso/datapage.h                       | 33 ++++++++++++++--
 include/vdso/jiffies.h                        | 11 ++++++
 include/vdso/ktime.h                          | 16 ++++++++
 include/vdso/limits.h                         | 19 ++++++++++
 include/vdso/math64.h                         | 24 ++++++++++++
 include/vdso/processor.h                      | 14 +++++++
 include/vdso/time.h                           | 12 ++++++
 include/vdso/time32.h                         | 17 +++++++++
 include/vdso/time64.h                         | 14 +++++++
 lib/vdso/gettimeofday.c                       | 22 -----------
 scripts/mod/modpost.c                         |  6 ++-
 50 files changed, 404 insertions(+), 213 deletions(-)
 create mode 100644 arch/arm/include/asm/vdso/clocksource.h
 create mode 100644 arch/arm/include/asm/vdso/cp15.h
 create mode 100644 arch/arm/include/asm/vdso/processor.h
 create mode 100644 arch/arm64/include/asm/vdso/clocksource.h
 create mode 100644 arch/arm64/include/asm/vdso/processor.h
 create mode 100644 arch/mips/include/asm/vdso/clocksource.h
 create mode 100644 arch/mips/include/asm/vdso/processor.h
 create mode 100644 arch/x86/include/asm/vdso/clocksource.h
 create mode 100644 arch/x86/include/asm/vdso/processor.h
 create mode 100644 include/vdso/bits.h
 create mode 100644 include/vdso/clocksource.h
 create mode 100644 include/vdso/const.h
 create mode 100644 include/vdso/jiffies.h
 create mode 100644 include/vdso/ktime.h
 create mode 100644 include/vdso/limits.h
 create mode 100644 include/vdso/math64.h
 create mode 100644 include/vdso/processor.h
 create mode 100644 include/vdso/time.h
 create mode 100644 include/vdso/time32.h
 create mode 100644 include/vdso/time64.h

--=20
2.25.1

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20200320145351.32292-1-vincenzo.frascino%40arm.com.
