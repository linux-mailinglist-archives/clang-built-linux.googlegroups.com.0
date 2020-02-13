Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRB3HMSXZAKGQE7MQZJPA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x539.google.com (mail-ed1-x539.google.com [IPv6:2a00:1450:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AE1B15C79C
	for <lists+clang-built-linux@lfdr.de>; Thu, 13 Feb 2020 17:16:44 +0100 (CET)
Received: by mail-ed1-x539.google.com with SMTP id v11sf5221303edw.11
        for <lists+clang-built-linux@lfdr.de>; Thu, 13 Feb 2020 08:16:44 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581610604; cv=pass;
        d=google.com; s=arc-20160816;
        b=w9aJxX7s3aDctwLnN9oeNTEanLhdU0XGLMWdZul9sJeD+/82zW2suEF+OpLt/1axHZ
         pp2hP2bJpZtYJWopKNoQt/iLuyG1y2NNZhfStnizfOEdBiIzAD/iXwam1NyvqFy9m7Ma
         wRGEj9khJb0hU4rdaeADW6X53QF3KKJtnzUBPOY9UzUisLGfahhQTsgEDKIAIrDXFWcL
         ZTmTAPh4bYR1e/fRvJhAELsu5Uevbz6U01s/xVvgFCpT6pfxgD9ROYgwiy44B9By8PR8
         d57VcA9RReLwxhPtTI8pkrRYZfmMfYokuG6KfiQTClZ1Bwrhs/Ig2DwKSKVYBz7huo+P
         behw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=nuuzV6Rz62nzkfEw0UzJyROjlHHPmLyTXCZiH7ruBp0=;
        b=U37n2bsfS/zK3rasefvuydwrCKN34yLzx24CqJmBpeKkRTi+QuxBE0/BwnSHeynt6c
         2SCYr1D4jowto4lD9Wn/zOaqJkBKThE92q62RkV9lTB7Py+3XCuYUSvouMZUJ7NkRpUM
         eQxhllszs9pRnaIORTgkoNF29mUck3hFCdI0H7wI8+7xycPUhZo24bFFVqcfG8jd3CWy
         2ZA/Y1S01xxd9o2bZCJ0noKz7Tuux+4/bE315UWhdXcZTp6c9xSuRiPcF31ajkM/M8Pn
         ztO5tayivDJOvPE/CMqO3cDH58OyTb8sL4eaCHQYM3iB3IdSRc4xE2f84UYVRlvmR0D0
         0n7g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=nuuzV6Rz62nzkfEw0UzJyROjlHHPmLyTXCZiH7ruBp0=;
        b=QRCkCID3N3dYDaRGfpvKaac07oQDFqrbPMFTAMcV6XDovraSwNueyEtbRfwzOeYTui
         12c/k0mxERxXT3ZdXrLHdyCcQN/leNurB45PqjNnOpTjEbJ4r0TBKSeKYWavIn+eGsH2
         Rl85ESlubQn+h4sSgAA5i1FP7rm4LdmWEQh8vp4jMHWYvZc68uqHEhDnAdwUlp/LPjjt
         g/aarhn4vpKGFMAyUwbCVbU+HU6m5FV2UIbbCnLHHwmXdyYxPOQbKWFbCMNEaAdwAsJy
         +ZqrxSzcYQro7UsauRvlw2sa+qbqe6FgPy1oJ8K3P5UCgFM7XyIZDwGVOKwU8ZMMwZGq
         Ttuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nuuzV6Rz62nzkfEw0UzJyROjlHHPmLyTXCZiH7ruBp0=;
        b=IEGcONW3qAijDI4kRgbh/dsZTkLt9j2QCXVk0GJOD5kBvH6v+jUstKL+LS8MrClj4Z
         iNfubVabUTwAYB4zg7KLdBFPcV4vg9RYK8Ueg1ZUWZI0OABEaqSe0FZfLkMW4GlbPs9u
         e2OV1Q+qqPZUPdberte5I7+64XEUlbw0CoryLI3uIJihF8SFq50pWlCwgEF4EENxm5E/
         T903wmpm8mdILFllBYvYOtiQlZAK6ZHrahP0c8HD6AdtnFUgVHVjaPKSeQxyb/ZQdjbK
         a6TWdznrp6reb4tVfAQg2gmmQrsoRDaS4P/6BRFGK8kNzGGAY8450Mg8I5pMAiKW9iFT
         KpzA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXi+zwbFugjTU6wbb6nsCWGqKZI/t3ueU7wf4m/7STR1Jhydlo0
	KyZ8Qe9S5Tb3UDXfCSV57c0=
X-Google-Smtp-Source: APXvYqyGJtnPRzfZxkHdAJtWv5r8RNBktxDvsLII+vt2igqkV9R9roxkkiJrqhQE6uXPZo6BWDUP/w==
X-Received: by 2002:a05:6402:1592:: with SMTP id c18mr16131458edv.333.1581610604275;
        Thu, 13 Feb 2020 08:16:44 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6402:1b06:: with SMTP id by6ls11300013edb.1.gmail; Thu,
 13 Feb 2020 08:16:43 -0800 (PST)
X-Received: by 2002:aa7:d619:: with SMTP id c25mr15969808edr.213.1581610603721;
        Thu, 13 Feb 2020 08:16:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581610603; cv=none;
        d=google.com; s=arc-20160816;
        b=fykoLbUQ2DfK1tQPeAvN8BBlv8+8WO5MntQJc5b0uz9fO5FK6Nngeryvh+A+Su9tM4
         KKGCyOxFY7ywLP5D9INhQpEQmMbrEkntzAhgrovyy0Bxl8jiTl4Ho6WwnRrJTPTPzdEc
         onWTJrgA/C1b0lGxBDC01TknXAt7VYUHGHeUckxxGeHFcE0YM43dUFB8DCVM/SoD9Npt
         pkVGUN08a4B9I2CtLHNG0bWw3YELgMKYQiidJTkdvt1FDLA0+nHh94AYV/62CqRp+IYS
         TbsfWpWZXY3qIMJAttzFpMuMh8iIUmQn9f9fXb8bTeG/Drl0LLC3kCBZuHZv5pUADI0s
         7iEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=WxoUSJ75Nb03ib0/KsT5dPgrdQdOtA/aGCiXLzGEwrk=;
        b=mHbRjWDGIT9OMBfCUj4e6utfEMnGYKjK+ZdcNEWq6qdVHdS0N4d7DX8w+OnQT94rUY
         zMjdbh5bFk1D3RUiFfCY5oj3gpjSuHypqlTPvGuxxQDU6YZmz709NDJzYkI2MQ1FWJ7A
         BU7C5IupWzXWnqrfVRrr791gC+IbxSivQCcza1MENt67EUb1tXSPv8FqufJlA4YKqwzW
         xXN89KK7Cv8KMUq6L1Gtz2sMRYpwjXDkZMzESWbtqDvjMa0c6yeIXT164rvhIc1gFX3C
         SqK7j9sLGd7NzFYP5wl9+N/9pUVJfXqhDt1Ab85kYYVfZ7wqwUPLa27yN0cyYWgt6YkN
         FrOQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id n1si187807edw.4.2020.02.13.08.16.43
        for <clang-built-linux@googlegroups.com>;
        Thu, 13 Feb 2020 08:16:43 -0800 (PST)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id E37E0328;
	Thu, 13 Feb 2020 08:16:42 -0800 (PST)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 60CE33F6CF;
	Thu, 13 Feb 2020 08:16:40 -0800 (PST)
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
To: linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-mips@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	x86@kernel.org
Cc: catalin.marinas@arm.com,
	will.deacon@arm.com,
	arnd@arndb.de,
	linux@armlinux.org.uk,
	paul.burton@mips.com,
	tglx@linutronix.de,
	luto@kernel.org,
	mingo@redhat.com,
	bp@alien8.de,
	sboyd@kernel.org,
	salyzyn@android.com,
	pcc@google.com,
	0x7f454c46@gmail.com,
	ndesaulniers@google.com,
	avagin@openvz.org
Subject: [PATCH 00/19] Introduce common headers
Date: Thu, 13 Feb 2020 16:15:55 +0000
Message-Id: <20200213161614.23246-1-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.25.0
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
    and place it in include/common/
  * Make sure that where meaningful the kernel includes "common"
  * Limit the vDSO library to include headers coming only from UAPI
    and "common" (with 2 exceptions compiler.h for barriers and
    param.h for HZ).
  * Adapt all the architectures that support the unified vDSO library
    to use "common" headers.

According to me this approach allows up to exercise a better control on
what the vDSO library can include and to prevent potential issues in
future.

This patch series contains the implementation of the described approach.

The "common" headers have been verified on all the architectures that suppo=
rt
unified vDSO using the vdsotest [3] testsuite for what concerns the vDSO pa=
rt
and randconfig to verify that they are included in the correct places.

To simplify the testing, a copy of the patchset on top of a recent linux
tree can be found at [4].

[1] https://github.com/ClangBuiltLinux/linux/issues/595
[2] https://lore.kernel.org/lkml/20190926151704.GH9689@arrakis.emea.arm.com
[3] https://github.com/nathanlynch/vdsotest
[4] git://linux-arm.org/linux-vf.git common-headers/v1

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
Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>

Vincenzo Frascino (19):
  linux/const.h: Extract common header for vDSO
  linux/bits.h: Extract common header for vDSO
  linux/limits.h: Extract common header for vDSO
  linux/math64.h: Extract common header for vDSO
  linux/time.h: Extract common header for vDSO
  linux/time32.h: Extract common header for vDSO
  linux/time64.h: Extract common header for vDSO
  linux/jiffies.h: Extract common header for vDSO
  linux/ktime.h: Extract common header for vDSO
  common: Introduce processor.h
  linux/elfnote.h: Replace elf.h with UAPI equivalent
  arm64: Introduce asm/common/processor.h
  arm64: vdso: Include common headers in the vdso library
  arm64: vdso32: Include common headers in the vdso library
  mips: vdso: Enable mips to use common headers
  x86: vdso: Enable x86 to use common headers
  arm: vdso: Enable arm to use common headers
  lib: vdso: Enable common headers
  arm64: vdso32: Enable Clang Compilation

 arch/arm/include/asm/common/cp15.h            | 38 +++++++++++++++++++
 arch/arm/include/asm/common/processor.h       | 22 +++++++++++
 arch/arm/include/asm/cp15.h                   | 20 +---------
 arch/arm/include/asm/processor.h              | 11 +-----
 arch/arm/include/asm/vdso/gettimeofday.h      |  4 +-
 arch/arm64/include/asm/common/processor.h     | 31 +++++++++++++++
 arch/arm64/include/asm/processor.h            | 16 +-------
 .../include/asm/vdso/compat_gettimeofday.h    |  2 +-
 arch/arm64/include/asm/vdso/gettimeofday.h    |  1 -
 arch/arm64/kernel/vdso/vgettimeofday.c        |  2 -
 arch/arm64/kernel/vdso32/Makefile             |  4 +-
 arch/arm64/kernel/vdso32/vgettimeofday.c      |  3 --
 arch/mips/include/asm/common/processor.h      | 27 +++++++++++++
 arch/mips/include/asm/processor.h             | 16 +-------
 arch/mips/include/asm/vdso/gettimeofday.h     |  4 --
 arch/x86/include/asm/common/processor.h       | 23 +++++++++++
 arch/x86/include/asm/processor.h              | 12 +-----
 include/common/bits.h                         |  9 +++++
 include/common/const.h                        | 10 +++++
 include/common/jiffies.h                      | 11 ++++++
 include/common/ktime.h                        | 16 ++++++++
 include/common/limits.h                       | 18 +++++++++
 include/common/math64.h                       | 24 ++++++++++++
 include/common/processor.h                    | 14 +++++++
 include/common/time.h                         | 12 ++++++
 include/common/time32.h                       | 17 +++++++++
 include/common/time64.h                       | 14 +++++++
 include/linux/bits.h                          |  2 +-
 include/linux/const.h                         |  5 +--
 include/linux/elfnote.h                       |  2 +-
 include/linux/jiffies.h                       |  4 +-
 include/linux/ktime.h                         |  9 +----
 include/linux/limits.h                        | 13 +------
 include/linux/math64.h                        | 20 +---------
 include/linux/time.h                          |  5 +--
 include/linux/time32.h                        | 13 +------
 include/linux/time64.h                        | 10 +----
 include/vdso/datapage.h                       | 32 ++++++++++++++--
 lib/vdso/gettimeofday.c                       | 21 ----------
 39 files changed, 337 insertions(+), 180 deletions(-)
 create mode 100644 arch/arm/include/asm/common/cp15.h
 create mode 100644 arch/arm/include/asm/common/processor.h
 create mode 100644 arch/arm64/include/asm/common/processor.h
 create mode 100644 arch/mips/include/asm/common/processor.h
 create mode 100644 arch/x86/include/asm/common/processor.h
 create mode 100644 include/common/bits.h
 create mode 100644 include/common/const.h
 create mode 100644 include/common/jiffies.h
 create mode 100644 include/common/ktime.h
 create mode 100644 include/common/limits.h
 create mode 100644 include/common/math64.h
 create mode 100644 include/common/processor.h
 create mode 100644 include/common/time.h
 create mode 100644 include/common/time32.h
 create mode 100644 include/common/time64.h

--=20
2.25.0

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20200213161614.23246-1-vincenzo.frascino%40arm.com.
