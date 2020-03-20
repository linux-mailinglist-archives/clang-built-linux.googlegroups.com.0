Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRBS5S2PZQKGQEKRPBFCQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13a.google.com (mail-lf1-x13a.google.com [IPv6:2a00:1450:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id 294E218D19F
	for <lists+clang-built-linux@lfdr.de>; Fri, 20 Mar 2020 15:55:08 +0100 (CET)
Received: by mail-lf1-x13a.google.com with SMTP id c14sf916520lfp.22
        for <lists+clang-built-linux@lfdr.de>; Fri, 20 Mar 2020 07:55:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584716107; cv=pass;
        d=google.com; s=arc-20160816;
        b=kmMyNVEVB21vAf0BJtk+lmvGGezzcZwrP0BsdiY7Y2/WgcvYhGrJIfwjbvHk7X86wl
         oNMyTK4SRqquLQXKzZGMyzWBMNz2cd8bFFinxfrDzlebEL1VYCUpvCayL94DP/ukpgOY
         +0SnOGroXi9ZOM1F/eWM3jGKTFGo9KPoPEgrn486ZkxAG04EpZfoONiwz6qGOFFPdknS
         1D8JY2L+yPqSoFp11K4Ngzxy9j8Sg+l+cBYkiJdIqYTbFoedgnZ/byx9tvcwDzxEIqwz
         WVwdXCtlsqGvZ5Q/vlc3ZQ2eWA9rBkYRwOg9z1kKeatfM0N0ayc9i9l7EG6Hyj8ArJGh
         8RSw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=0V9ggOi9FKKEzYrj6ZTn+rhURMk2Db0bwxsyNPGu+SE=;
        b=KWal2EHDcgD+CTwX58otrt3kNca55uqRaafwV4HUMjWO8/UK0zFMw79JE6PqcqJgJJ
         RqY83y5ukyhvlvDXDoM+6jCt66f2KjojRRTOGguamM3G4Fzgu15ecY/eOt60RC3bOuYo
         dMG+p0TuiDWB3Ka8g+vmzpvJpnwK0f2Lkmer3iv6uFFQ0Nbcsdy+pIfhbXPn/JCMR7qS
         Dj/OxCDcJPKMmurabaHgqksTBeANoR2Czde8mRj7M469pEkbvjrJCuuPLRGAHG1wzIA+
         MHE0DVHxjlWOn2D6lGeMGRZkji7zj8EXIlM9HJFjmGHZjUsee5ug3E8aTZBYhg3YnSzD
         3m0w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0V9ggOi9FKKEzYrj6ZTn+rhURMk2Db0bwxsyNPGu+SE=;
        b=IVS+E08Iv8QjkCTuzQSJ64fFgyJYOfNzvx6vXOwRDEbJpAGzWnBwAybnm61zXknbnw
         ElF1t8W8rb8tdcyoG9SYGkORBOBeEU50u+B9yP2RO8IXqCaHO9KfCHomSnoq2DuDJxH2
         X69JfomltFVcR3juUnjLfJMKOAJ+qbOtbtnPXKHmIuSbEOF9+JrVO3fmHZZkXWBpx12i
         0rO5bCxvj9sNZB+ZG1ZMKL1JHMXeNHZ5uBG5YCF/RVZSaq6EXqiqnut5kyUKhnm5vGOE
         5UfZqSb/EMZ3bBjwGQYGAqP76tD/2MXwSxLTzs3s/i9SC0d70wXivc9hpU+Lzj0IbOkG
         t9hA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0V9ggOi9FKKEzYrj6ZTn+rhURMk2Db0bwxsyNPGu+SE=;
        b=Ligqy4g+0MoxjSRW5aLsxthnb05lyeqgUvKBkOT/+mmhxsVmwI/Z8QAx160H551LBL
         huzc6+xUXl449OKlg4aC1NNRq3L5X4t8BS1u/jgHM6k7lEAsbRdvonrBWxJnQg5lQLnp
         QvD0KhBZ7Ono7DR5Ejk5RCQ8fJKLfEbZWfDomTk7EidzLKrSZObHfUwcvQUG1utyFqpV
         K6WKN4t7Keqs/pzPZOyT8XLgAAE9RVGnBKut5oUvafdMI2fs0e3bTVY9+UfEd8x2QTfS
         oqj9K3PIYr7d6YVDTvHEZy6MQoLnPzzvKJl3jmgiKWy631QSeciH24KneFAEku3oQHFq
         fWsA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ1FwjUBwSldZ6ypRg2GNQHm8sDuezSDqgYaFCXzCLl2rfWNVlu6
	pQUDlIAvwRqfsITx0jANwug=
X-Google-Smtp-Source: ADFU+vt+VBQRgbERUlBT8MWBDqLqChrxre+YvQLLq2Glhg5r2UbcskOM3crvEVfvPbvU2ZukGYgI5w==
X-Received: by 2002:a19:f015:: with SMTP id p21mr5718211lfc.10.1584716107735;
        Fri, 20 Mar 2020 07:55:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:33a6:: with SMTP id i6ls1023935lfg.1.gmail; Fri, 20
 Mar 2020 07:55:07 -0700 (PDT)
X-Received: by 2002:a19:7609:: with SMTP id c9mr5489052lff.114.1584716107154;
        Fri, 20 Mar 2020 07:55:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584716107; cv=none;
        d=google.com; s=arc-20160816;
        b=LgLnNjFFJuL8JZU83pBFZMDRdAD9wh+LnyfntUo5HdjJuZ8s6WBeOSP9L6RtrxDBvC
         YmAvPbcCOvCklFujRImK7Vtqd5xqr/xdR43yBWEwSdBCu6Pl5Jl494Q/a6ICzmXRLQSs
         sCPvPe4UCsD/e57acw14IroE6fOIrJ6Erg/N8ZYjIFUxl73959KAqV5UgzG7Hs/0a0gM
         oKzsWgR002KKnOBDRXQt5MD5MlHiPzgOIfvW/rkwcsWk4q64zqzICGlJSsgY7F6Jjiji
         23ZEsQ9NQ8dqfsHuiwsf60SN+o7ZcyJcqslCSPR+opHq0x7vnL1EnRYgu/ufzelwi5ks
         wTMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=SZJr9Zjb62PxdiJA95xJ8NZ5YyNie6bsqUUXkvVPpeQ=;
        b=AT7o3Lb6KkZmdCNVUyjLeDu8IEFmzcmrUcDwbHfnQO6rVxOrzQ5dPbK12FF2fU5KnB
         G/mBRlbBrk0cYDRSDjiWmteTNzzv5ixuONI9nYSAbJHABCzokpjDqksmxNvPOHSj9FQC
         SmD5D84D6W9CvlfUElMiPUhd+4s30hSBKOyEGVKNHR9Oeoe0Ey+zu4xyXCzRsg3i+ABY
         C1psdtUTPl3y1zoTTtSp8PzIOWQYUDsQnUXPt+XLUbPBLO7BBngw+E09gyqm7aqG0k5x
         00CcJ2nKg1f+XC9j5BYPhmg6WuBVRRfLbeVz/Kuu2WaJ8BfxBgdR+zxwmPasFfQqQa9Z
         cNwg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id q17si116631lfe.4.2020.03.20.07.55.06
        for <clang-built-linux@googlegroups.com>;
        Fri, 20 Mar 2020 07:55:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 1AEE07FA;
	Fri, 20 Mar 2020 07:55:06 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 06B2F3F792;
	Fri, 20 Mar 2020 07:55:02 -0700 (PDT)
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
	Mark Rutland <Mark.Rutland@arm.com>,
	Paul Burton <paulburton@kernel.org>
Subject: [PATCH v5 07/26] mips: Introduce asm/vdso/clocksource.h
Date: Fri, 20 Mar 2020 14:53:32 +0000
Message-Id: <20200320145351.32292-8-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200320145351.32292-1-vincenzo.frascino@arm.com>
References: <20200320145351.32292-1-vincenzo.frascino@arm.com>
MIME-Version: 1.0
X-Original-Sender: vincenzo.frascino@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172
 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
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

The vDSO library should only include the necessary headers required for
a userspace library (UAPI and a minimal set of kernel headers). To make
this possible it is necessary to isolate from the kernel headers the
common parts that are strictly necessary to build the library.

Introduce asm/vdso/clocksource.h to contain all the arm64 specific
functions that are suitable for vDSO inclusion.

This header will be required by a future patch that will generalize
vdso/clocksource.h.

Cc: Paul Burton <paulburton@kernel.org>
Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 arch/mips/include/asm/clocksource.h      | 4 +---
 arch/mips/include/asm/vdso/clocksource.h | 9 +++++++++
 2 files changed, 10 insertions(+), 3 deletions(-)
 create mode 100644 arch/mips/include/asm/vdso/clocksource.h

diff --git a/arch/mips/include/asm/clocksource.h b/arch/mips/include/asm/clocksource.h
index de659cae0d4e..2f1ebbea3d72 100644
--- a/arch/mips/include/asm/clocksource.h
+++ b/arch/mips/include/asm/clocksource.h
@@ -6,8 +6,6 @@
 #ifndef __ASM_CLOCKSOURCE_H
 #define __ASM_CLOCKSOURCE_H
 
-#define VDSO_ARCH_CLOCKMODES	\
-	VDSO_CLOCKMODE_R4K,	\
-	VDSO_CLOCKMODE_GIC
+#include <asm/vdso/clocksource.h>
 
 #endif /* __ASM_CLOCKSOURCE_H */
diff --git a/arch/mips/include/asm/vdso/clocksource.h b/arch/mips/include/asm/vdso/clocksource.h
new file mode 100644
index 000000000000..510e1671d898
--- /dev/null
+++ b/arch/mips/include/asm/vdso/clocksource.h
@@ -0,0 +1,9 @@
+/* SPDX-License-Identifier: GPL-2.0-or-later */
+#ifndef __ASM_VDSOCLOCKSOURCE_H
+#define __ASM_VDSOCLOCKSOURCE_H
+
+#define VDSO_ARCH_CLOCKMODES	\
+	VDSO_CLOCKMODE_R4K,	\
+	VDSO_CLOCKMODE_GIC
+
+#endif /* __ASM_VDSOCLOCKSOURCE_H */
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200320145351.32292-8-vincenzo.frascino%40arm.com.
