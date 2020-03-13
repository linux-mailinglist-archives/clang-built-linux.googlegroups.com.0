Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRBR6UV3ZQKGQERWVXW3I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23d.google.com (mail-lj1-x23d.google.com [IPv6:2a00:1450:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id 43881184AF1
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Mar 2020 16:44:08 +0100 (CET)
Received: by mail-lj1-x23d.google.com with SMTP id x3sf1502171lji.23
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Mar 2020 08:44:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584114247; cv=pass;
        d=google.com; s=arc-20160816;
        b=dO57ENT3xd0lIoV+IMFXIsH+v34Y9hLxRp5jkP76b4QxOz2xtOrcXECiY6YjiUsDNc
         j4JrGWlP5T/IG8sx175j1MYqRNagLQynP0RAAcpuPl6VKtC3jIjWQ3EWuVq0evkeCVc8
         X7p+EcPvY3oISyINaA/3PHzdsUZlEsZlmxMRF2KEgF2ai5cj9JMPUdVtCwPLEjuN20EM
         6rLPMaDlsw/jQRr2sl4dTC6w9a/iA+L5twJkELz0EKOLJKx2F0zR28yniVai+DrgDI91
         DEoZKfGLfsHBAu2OhIRZUhp1Od676R6EWzznwT5RiWK5t+evnYNTwbp+g+BsmGzRSTR9
         XzsQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=b5VTtpX1M8mfCffEGmVXaC1d/iN3Sqo3Y82T4p80JLc=;
        b=QLsaaddbbyInKg3RcK4KRLtV5I2JNxgWsUC4Xpjm9VvS3gLsmBnh4reA9fjb9N1+wj
         SVluu8dAY6gbSCCbGPcO8JNfDg1jwzNEVH+hJjLoXsqYHek3Xg3ERyhlUY09vFQLP5Wu
         BdaZLXsZ83lUycqBKQRChLbAlqw5i15M30OJfmpcsHuVVIGawBws4/PqeDOzfm+Bo9VN
         aBztxO+QCEuMldolHY2BJ7tBHksozOSkefHzZizIc8KiGCeUBaN+mtk/5cs9mM92zcLO
         ZN5eAFwO0zdE8JwSUgmJF0egz6+HlWMRqZAdu+/qMLJ1uMo/CzXqRFe2PAalJA9tkyYs
         R8RA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=b5VTtpX1M8mfCffEGmVXaC1d/iN3Sqo3Y82T4p80JLc=;
        b=oze4MUIAk8W3BtGG6/bPnGBOUoENdOgKbQkItQjmqn4rNjbxCuACBmxHGojaj4xoTm
         7QfxrXK4I3AMxKjJCRNUoXBdlHGxyTrUlygj1TkZ8Uyns9hn7Yu1FSlUCV3axCs1ZoEH
         6T1UDFNWQclA2ad4vpZCw/QdbSN3t3Cy2//dXXFD2PZsl98UGtZGSYsenrKMxH/ZwDy7
         XY8Nj2gDPDyvPGRMXczlLgBElFa5n//njFK2qGOz6+KN1RQxCZjEbh8Xpz9WgTQGl1n9
         su28GqCc6RmFrHQctA0w7mnZ0wEEfjKBO4xmjep6ViptdcsRQH/0GVkYA5O1LhF5pj92
         69NA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=b5VTtpX1M8mfCffEGmVXaC1d/iN3Sqo3Y82T4p80JLc=;
        b=chixDGvEcS1oR33pW+Nwp/v3Z6Iezy6x/wvIOV1eDIScXf3vo2Z4FhferrQZMe0cBY
         Q4s9D9B2lpjq7Vvb65rxEbqAemtrGvYWP8eJwCYocmtLVAQW93CuehfgG8QoWHlQwA23
         Z4/Df7tk0GqoQI31LG7q8efPg8sHZOqEAQbzNsz/CcaTdIgWO5uidOFXV/dXsOc4TG0J
         QGXDqQs3siQpM1/dfQNTP+j3TtcQObSi8VE4yySOkBFJwMe++6ZI5ACWfiwxIT36N5yc
         IDDOVpXKgz7T2Hk9v0x3WjFijDqq8LbNlt9jMKDQMN+5tBFFNwbdNEgaQ0g5LQq3wVOh
         FIqA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ3tyVSRnojPYcFB0/0bZGATtYZxB3zR2dlBWQCv2dVuutC4dPp9
	WmvhGB/3vZ9kPTFIeHZXAmc=
X-Google-Smtp-Source: ADFU+vvNPO5E579g/nO9j4PtYGt8P2FZGeZCDttfFN7+LAby8RxE/qjBDHbK+LbNE+XJ8X37/VXx1g==
X-Received: by 2002:a2e:b809:: with SMTP id u9mr9205514ljo.244.1584114247735;
        Fri, 13 Mar 2020 08:44:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:211:: with SMTP id y17ls1965096ljn.10.gmail; Fri,
 13 Mar 2020 08:44:07 -0700 (PDT)
X-Received: by 2002:a05:651c:1182:: with SMTP id w2mr8777515ljo.235.1584114247071;
        Fri, 13 Mar 2020 08:44:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584114247; cv=none;
        d=google.com; s=arc-20160816;
        b=n+FeLugsGUiiMgVgvnQ0bFFszCjS2ff9t8cAuKr8K/7qcFXP4sCmQmB5m6BcK5ROye
         PzQMnuQonZsMDrsV9AVQCKHn+pcN095GAdg4QUPV76a1ZmUlmx4+EaaggMg/3hQatS9u
         xNay/FmXkPowF2xJtYX1w2xK/a95mCYuUXxzv5GMkIi0DlzdAmD2IM7KcIzLDoqcUYA9
         vFWsP+QDpoSwC92cYZUm5d1Zy00LVXNNncNaIDcpw2mnfHt2UCO3AJRqIzxI3t+StWV1
         whWOjy3Bd+FTnTOclmZB9Y3SWDg5IZI95nYDPrTczkXApXeNNSkO9FJCFPY62MqzL/6b
         3Nkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=RmMR2DU1Myxa4jQ16znF1RaFfEBQAD9YGu+WfrP6gsg=;
        b=agoaijUo5/1GTFnmGKOC31z7JZKmU1OKwUz+l7fVuVQiX0XwAFeAP48r0puqFtV+Zr
         ApD33sZJvPXGAAgG0lGEe739Kn56ygg5zGYV319XrSxzTD2UhmULzle1sjO4+hCVxLt2
         QqNaRNwVasGrL8Yx0bRgr1tELXfR8ENhHYIKni30wv6Hvjap+P0Nwcl3dKqpUKERAp8L
         u2ifV6a8qSbRgVI6PRd+adycMPAakbxNX0S/NBrhhp7qaDRexXZYXWpqYRBRqf2ZgFby
         W4iwVd4J+Voqkm5j7QnU4mSg2fTL0tlVtaTDAZJh3o9+Lj6lSL4KrLxv4Dvf4GSS6VHD
         Kz6w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id m11si235938ljj.2.2020.03.13.08.44.06
        for <clang-built-linux@googlegroups.com>;
        Fri, 13 Mar 2020 08:44:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8913331B;
	Fri, 13 Mar 2020 08:44:05 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 5E0C53F67D;
	Fri, 13 Mar 2020 08:44:02 -0700 (PDT)
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
To: linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-mips@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	x86@kernel.org
Cc: Vincenzo Frascino <vincenzo.frascino@arm.com>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will.deacon@arm.com>,
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
Subject: [PATCH v3 00/26] Introduce common headers for vDSO
Date: Fri, 13 Mar 2020 15:43:19 +0000
Message-Id: <20200313154345.56760-1-vincenzo.frascino@arm.com>
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
[4] git://linux-arm.org/linux-vf.git common-headers/v3

Changes:
--------
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
Cc: Will Deacon <will.deacon@arm.com>
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
  arm64: Introduce asm/vdso/processor.h
  arm64: vdso: Include common headers in the vdso library
  arm64: vdso32: Include common headers in the vdso library
  arm64: Introduce asm/vdso/arch_timer.h
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
 arch/arm64/include/asm/arch_timer.h           | 29 +++-----------
 arch/arm64/include/asm/clocksource.h          |  3 +-
 arch/arm64/include/asm/processor.h            | 16 +-------
 arch/arm64/include/asm/vdso/arch_timer.h      | 33 ++++++++++++++++
 arch/arm64/include/asm/vdso/clocksource.h     |  8 ++++
 .../include/asm/vdso/compat_gettimeofday.h    |  2 +-
 arch/arm64/include/asm/vdso/gettimeofday.h    |  8 ++--
 arch/arm64/include/asm/vdso/processor.h       | 31 +++++++++++++++
 arch/arm64/kernel/vdso/vgettimeofday.c        |  2 -
 arch/arm64/kernel/vdso32/Makefile             | 11 ++++++
 arch/arm64/kernel/vdso32/vgettimeofday.c      |  3 --
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
 include/vdso/limits.h                         | 18 +++++++++
 include/vdso/math64.h                         | 24 ++++++++++++
 include/vdso/processor.h                      | 14 +++++++
 include/vdso/time.h                           | 12 ++++++
 include/vdso/time32.h                         | 17 +++++++++
 include/vdso/time64.h                         | 14 +++++++
 lib/vdso/gettimeofday.c                       | 22 -----------
 scripts/mod/modpost.c                         |  6 ++-
 52 files changed, 459 insertions(+), 230 deletions(-)
 create mode 100644 arch/arm/include/asm/vdso/clocksource.h
 create mode 100644 arch/arm/include/asm/vdso/cp15.h
 create mode 100644 arch/arm/include/asm/vdso/processor.h
 create mode 100644 arch/arm64/include/asm/vdso/arch_timer.h
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
clang-built-linux/20200313154345.56760-1-vincenzo.frascino%40arm.com.
