Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRBHUCYPZQKGQEQDR67IY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x537.google.com (mail-ed1-x537.google.com [IPv6:2a00:1450:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id CE05C18838B
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 13:22:54 +0100 (CET)
Received: by mail-ed1-x537.google.com with SMTP id dn10sf4279736edb.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 05:22:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584447774; cv=pass;
        d=google.com; s=arc-20160816;
        b=RrhHRp7VhgFNBspyu/UAIJjYxwbOMM1PCWHs0uiQ8c5kTRYVmOGndE99PsyBVqsFcN
         XF3zYcPWGYlK2/fcwwErhMlRyDnmUdnqQuW/YT3twmjoaDl9ncSWR5IZMzrJxmCfoPy7
         VtI6Au3PuDtv/Y6uW7zUrAjZUxn05u9/dgJ0PVN+M0VYC/I5+LBab4olXVHm0jpJakQr
         g4DrhC1wqj75JWkmYhlmxPCsJTioe8OcbmOu+9xJ/TNWnVS4YnC5qHy67Xa/pPk5k8TF
         kqPCLmzYxMMqltcZzancUnuGMo1wrYuw1pdAlrP9GOKzwlq8HGrPTeKSovQX4P20qsMM
         SFXQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=IAfmdIO+9gpbaFMV88ZaFQKAFgIB31yA4SsFm5AtCkU=;
        b=j3HPOubFzAoMJBWPvGiCOIDZFd+cnxEYyBJ9/PRpBzPxR+NxHMKGLGRORa9BIJN6Iv
         1aDE3YEczEzCgCNT4zb04qsW3342fjwcXauO3bpWEAnYL4rjgJwdrPxD8o3UV5X2QpM/
         vwy6UrWa4WefAn1qtXhYk/d7VC6PeHFosr2rGEZKB/EqrmQ2DZ/m8Hj8sXJ+T43b4EEM
         6nsKietvitm3w1NiGTSKe2QgTtuEZhXnbZb3QYSza9ZHobgoPwRCAQcJtpux3ioA9U8n
         koODsy+dxX3MJc0OMhDLioXyLjWcI6KvUCI3tHdkkhsxIZwhYAcde0b70kqXialsPU5f
         B6jQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=IAfmdIO+9gpbaFMV88ZaFQKAFgIB31yA4SsFm5AtCkU=;
        b=qkQBt76GwppQuikKnxVEBRA1YxIdshJiO9mj/NZ6GwVU4wMai7XZOEbPnthw+Iutaf
         1saz7LkzFFpqGpWDc+AGVWPrH/k+cnn/qPyhbWz8kv+H6tEyA/ipTdUK/yaNUsGXCq2A
         oJd8rOqTU2I9vNXEvXm7PaGf7rJqVJ0Vnin8rwQml0OSBfrZ5Ea0Z2D6+3qNVpj2l3a/
         Rq8KXU6D1G45NZBKv654D+le7av28+i72Bf+/7rQGkomYPMmNkqIQbbG0998LJQTnfQz
         xNpW2m6+s4Tc+CE6kvZImGmetrOHlL24tM/ezehl3GFACRhHYh7+qDPUO+vDUI7+x7fe
         aNZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IAfmdIO+9gpbaFMV88ZaFQKAFgIB31yA4SsFm5AtCkU=;
        b=Se2+CCuMmobuyINKH3GgqEW5NJmPFVJcx4Oyon8yFTMiURsbe4f04475NNUmWkJTN1
         BFRMhtVUY0cHAzxxnPLvnghpE8SaBUDOPlKDaQSJ92C7pRNtsj1rVm1EJ7jmJk+acD6B
         Tf5MWAQAyrqwRBZsmS+lr5kWtqtMByb1TOeDUOtckqVy3cq5kbyCc9S8qfwqKLX3hacH
         GOxntux4DNsC8rjaDJINEMBRiuSHydGoYvDtkCCIvFDwSMOw/bjP4+wM8LqigHAgWgAt
         y1UZCsBmZyIAkvwDCdYS+gQkC2HPC4OoFRRBBedZrKJEylY6yizyjpIwKJiEtLvVUs/s
         oUXg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ3yFN091afuXaIVDJBuPwDNi7XberdIk40DeNjdFyCw2/1J8VEr
	D2n8QTNDRzEjGPgrEt+T+Mk=
X-Google-Smtp-Source: ADFU+vsxRBWN57sTb5ebpHtVrZclFSGp1l3u/r/rK+CwDNWB4+fzVM0yR8kjGWR/EAzVUM03qeTDmA==
X-Received: by 2002:a05:6402:31ab:: with SMTP id dj11mr4781711edb.143.1584447774540;
        Tue, 17 Mar 2020 05:22:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:d291:: with SMTP id ay17ls2256312ejb.7.gmail; Tue,
 17 Mar 2020 05:22:52 -0700 (PDT)
X-Received: by 2002:a17:906:7a54:: with SMTP id i20mr3948974ejo.100.1584447772423;
        Tue, 17 Mar 2020 05:22:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584447772; cv=none;
        d=google.com; s=arc-20160816;
        b=kdfjjlZGsNsscfnkVBwJ946OYt6maBdrUl78YFNQ3h6+SNIEFMUhsAQS4hMZi3omXg
         082WM4tJY624O3nse+DLp2nTGDqcqq0gVmCsyM9t9961x6VvtDNuGGMADVDHPSGl3cnX
         I06seHtSVUNMHYLVruPCh5lT6WzbLxHTJLQSxetGjpF0Cp0tGznFejPIfnEHn5jYBhcO
         Rg2Ag9VsHkwRF3XFS4geDO6n06RSLqTZeU5ewE2znd+L9YV4YitMZ6ivIlnkVuTCV5aq
         dav25FKRm0lsoxEQEwmPfGCtkBN2UGsY3dJ8/oewi/c8K6L14dGEahCrIUbJ4jf2VQeu
         DAhw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from;
        bh=XhhjU4J/QNai60oqvcov0TSz5GPzXD/QSWsGI7GzRAY=;
        b=UuSWUD5qHEmng7Mn3CyyHM/gHxE3bWnDIcy5rQdfw5lL2/ksf4+Mreo4nR3Dw0Lv56
         PfrDg6R180Ddqr2YXvl819OYiTDcabFxxg5fww/hQQHvm2UqfwJhco5y6WHskKVek7Y6
         Z1dCmjZJ9lpINkcpUrB8zLJmTqJEmML5hAFY67A9M/WQVe1xn49bVWIG6IbptziATIr9
         I8iDEMSgCaLdlabVphcbZES3z8CkL5BCeFmONWMrp1bfQRtP+70e5JOm9KGsgQeEGmsy
         PwnoCD8JAThKkPr5tmF6G/zCk0waZ6aw8p97Vc5U75rZIHsnjj44PXRTAhoUtzNTVZtQ
         q+ww==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id k9si8162eds.1.2020.03.17.05.22.52
        for <clang-built-linux@googlegroups.com>;
        Tue, 17 Mar 2020 05:22:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 90A7A30E;
	Tue, 17 Mar 2020 05:22:51 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 764FF3F534;
	Tue, 17 Mar 2020 05:22:48 -0700 (PDT)
From: Vincenzo Frascino <vincenzo.frascino@arm.com>
To: linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	linux-mips@vger.kernel.org,
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
Subject: [PATCH v4 00/26] Introduce common headers for vDSO
Date: Tue, 17 Mar 2020 12:21:54 +0000
Message-Id: <20200317122220.30393-1-vincenzo.frascino@arm.com>
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
[4] git://linux-arm.org/linux-vf.git common-headers/v4

Changes:
--------
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
  arm64: vdso32: Replace TASK_SIZE_32 check in vgettimeofday
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
 .../include/asm/vdso/compat_gettimeofday.h    |  2 +-
 arch/arm64/include/asm/vdso/gettimeofday.h    |  1 -
 arch/arm64/include/asm/vdso/processor.h       | 17 +++++++++
 arch/arm64/kernel/vdso/vgettimeofday.c        |  2 -
 arch/arm64/kernel/vdso32/Makefile             | 11 ++++++
 arch/arm64/kernel/vdso32/vgettimeofday.c      | 13 ++++---
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
 50 files changed, 412 insertions(+), 196 deletions(-)
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
clang-built-linux/20200317122220.30393-1-vincenzo.frascino%40arm.com.
