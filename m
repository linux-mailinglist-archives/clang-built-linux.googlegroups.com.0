Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRBFPNSXZAKGQEIV45PKQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x337.google.com (mail-wm1-x337.google.com [IPv6:2a00:1450:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id DAFD615C7AE
	for <lists+clang-built-linux@lfdr.de>; Thu, 13 Feb 2020 17:17:25 +0100 (CET)
Received: by mail-wm1-x337.google.com with SMTP id y24sf2531663wmj.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 13 Feb 2020 08:17:25 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1581610645; cv=pass;
        d=google.com; s=arc-20160816;
        b=cx+1YmyGlAe+kEK3Flk8p8GbGyKqT3Lf4tnWnGQ0yulbDHRkxLuJclcCQNX/1+0k++
         ysmqHvfeUH/LdyTKcEpRnbylSvPH/fQE+Nkzh3e6MzqEOlTDF9KApb1Xbl4EZiz6RNzT
         CrzQbi7B1Hon2yEIYVzTFkLLyRQt/qTZ5WPTPLzKkefWWC+mrqSCiEEHIG5bfkCOeSqk
         aRjBPDQZEVT9XyVHyTdmgUCYZysK6isnJ/PK9qFXb/c7F53kTXsZpClh75TGIbPaL53N
         brbJ86XorfgdAHHgpfKvshx+BFFBXf+q28eGs1F1JTDPQ0u5BvFnaL85X9sY94rXh5HH
         7OkQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=ldilXzqM1gFj35tTdJ8Rj6Qdf84f3taXBtf1HKESRZI=;
        b=CtJiA9yAp2rg5ZkejGsBb8yIfgEVPlWQy32PeIdJMGdc2/LBYEPNaAHXTVIIYz5HIM
         BF4IjJQ9/ecRFkkcDOmGg7HrKMAGxBXriCHFsDDcOCjreV9tOC+jRop3yvus0ur7eLFW
         9GyhQeJxqW2PT3R2Cq4QiZeaz7O1YFOoTMPAsMFqxpHeMi5DvxbPwAU/YJ3Klx8uAIVX
         JmnPLIVE4cTH4Jf+MBGaPt/7ti+2J8B92HbNb6T18DSnb3jSq9Rc71t6qZkAlf5gVhLI
         tMyWO7NG8wWX1lc5+IN7ehxwvnyoRBPuI/WxR5zKK5a8N+qun6AkpdTE8qpMdnHBdvlx
         +U/w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ldilXzqM1gFj35tTdJ8Rj6Qdf84f3taXBtf1HKESRZI=;
        b=PEwnPVJRssRy1xSG4I6zq/DyMT3nlqNV56DmId7yimFLyRsB09clLk9IdW99Q5O+h1
         IJNc/YPu1mkvhZmwXGqifGKNXKj9fRQGfEmOnzaNeV27MT96cqSNUm1LuovdIkH7zPqG
         LBx4KEbBsR6MloJKeA3HigrwE4sQqrTc9SoGbQoAT+SzETlvflhGiP+Q83kQpEjtefCr
         runAsZD3uiiM5jfMCuNOzpTO98Wd2A1OBRg5GhdZh5e3ZZoiYmAdtsr5rzZU0jGC1orA
         08tjk1PwjbHSJPs0G0tnSV6yB92XCGGK9bWwj4XuGlN4v5GpdEX3O00LO+hY8zSPGy4D
         bfEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ldilXzqM1gFj35tTdJ8Rj6Qdf84f3taXBtf1HKESRZI=;
        b=EvTC6c0LmMRQcK4wbYBubiAv4B5ow5I2NE/2yVRpIt/q1fmxVdkFtKV1uLuBdDfZqN
         33UEtpdvXN84qIZPN19oD1rSLJM2BFgMNrBW+KszxRRXKOWeJBEvvMZSFgLmW/dBLt1c
         Q7k3cL0Euve5ZywmKnbOO6G9Oknk11FdQsjwhB9o4iomq9C6rBKXk/3lsOBUewjKBbim
         C8RU3pbWeltkNczKrCFUSAdzBFSyALVP9aQKBMX0c0WjiUdg2DOwCa4lFfdFlbMVRIQc
         /MRc22x/eRUij9iGSEpJboWaMdC/5q+Smf9OXmDvbc/rGDBaxcsuEwfMNZ/u+tlD6xER
         ppaQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAX1i4G7cYdznc6iueQk4/ALiT/G1KoTzIPhnZwhA6cOHA369Yiq
	5YdtBNgxmre2AGvWqn0vtIU=
X-Google-Smtp-Source: APXvYqy1mYaSeRqBOziI8ETnKofvcooQU2evygYNY1QPtxTnEmCs9Ol6zy97adTXDdeM7T20Eh9U8Q==
X-Received: by 2002:a05:600c:251:: with SMTP id 17mr6529141wmj.59.1581610645650;
        Thu, 13 Feb 2020 08:17:25 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:4141:: with SMTP id c1ls13533778wrq.8.gmail; Thu, 13 Feb
 2020 08:17:25 -0800 (PST)
X-Received: by 2002:adf:ca07:: with SMTP id o7mr21880519wrh.49.1581610645086;
        Thu, 13 Feb 2020 08:17:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1581610645; cv=none;
        d=google.com; s=arc-20160816;
        b=lDBDUgkLNqaXVO+R9jC3LLJEh3/satRfKTHsu/p+7eJT0DCnxXDwf93Hs8I6fG66Ky
         LV2rVtEqq/+EtcEFkvSp2fltk/m3ELIVdTao1zvuQ2HlsBewDTzVvVtn0AcmUQWP2tgm
         wvkar4BFcHKxnkFxslzrWsaxvVCJmKC8clfgBFPJQTUuNGG2w4Kse34MxTuXDByHq5zr
         da+j0XwW8kblmyfrcIQ3KJZBwvr1UqpyG/IbDK5eRSm8gmlQmiaHf2kgp/qFDYcRf7Me
         mLyyoG8vYl/YZ/xiNqcrLpnVfMBI5RxWj3J1bovx19BzXwK2SA/4CrO2AfE70k1aFYbp
         84jg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=9cji4SC2/SbaPlsuagkz7NKsNsto5lG+/oXrTzCEabA=;
        b=sQFTwqQDpfezP3IVO3sh34/4dwebZQjiJUDxxRdIv/FgsT1IzbtrxrFjhYH7Ap72W8
         DWVMGNBOSXe2bZZtmzDhjokvwgu7+07UvoOUHcfn9H050ui8Rfb8jb6R8COPYO5qMwR6
         xh/02FVRRB4XCANNGBTiTjQFoAZR5RGhpA4augkpCBWwUjqVPK0nAOj698VNwVWDNG7+
         VwB1zmN5ENq4ldH2/PQ6OSpmXEK5ZVKQUT5/pgMRn7Bfokh3b/Be1X3PUx1NQEqVKeP2
         LyucdgMRGC+XX6TPtrahsBBKqo3CtSoEb1hUkaWegHYWGT+r2Ut1teD4b+0xNkYG9vhT
         y0Hg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id t83si3823wmb.4.2020.02.13.08.17.24
        for <clang-built-linux@googlegroups.com>;
        Thu, 13 Feb 2020 08:17:25 -0800 (PST)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 2A7961063;
	Thu, 13 Feb 2020 08:17:24 -0800 (PST)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 9E84F3F6CF;
	Thu, 13 Feb 2020 08:17:21 -0800 (PST)
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
Subject: [PATCH 15/19] mips: vdso: Enable mips to use common headers
Date: Thu, 13 Feb 2020 16:16:10 +0000
Message-Id: <20200213161614.23246-16-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200213161614.23246-1-vincenzo.frascino@arm.com>
References: <20200213161614.23246-1-vincenzo.frascino@arm.com>
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

Enable mips to use only the common headers in the implementation of
the vDSO library.

Cc: Paul Burton <paulburton@kernel.org>
Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 arch/mips/include/asm/common/processor.h  | 27 +++++++++++++++++++++++
 arch/mips/include/asm/processor.h         | 16 +-------------
 arch/mips/include/asm/vdso/gettimeofday.h |  4 ----
 3 files changed, 28 insertions(+), 19 deletions(-)
 create mode 100644 arch/mips/include/asm/common/processor.h

diff --git a/arch/mips/include/asm/common/processor.h b/arch/mips/include/asm/common/processor.h
new file mode 100644
index 000000000000..d2ee5d397d2b
--- /dev/null
+++ b/arch/mips/include/asm/common/processor.h
@@ -0,0 +1,27 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (C) 2020 ARM Ltd.
+ */
+#ifndef __ASM_COMMON_PROCESSOR_H
+#define __ASM_COMMON_PROCESSOR_H
+
+#ifndef __ASSEMBLY__
+
+#ifdef CONFIG_CPU_LOONGSON64
+/*
+ * Loongson-3's SFB (Store-Fill-Buffer) may buffer writes indefinitely when a
+ * tight read loop is executed, because reads take priority over writes & the
+ * hardware (incorrectly) doesn't ensure that writes will eventually occur.
+ *
+ * Since spin loops of any kind should have a cpu_relax() in them, force an SFB
+ * flush from cpu_relax() such that any pending writes will become visible as
+ * expected.
+ */
+#define cpu_relax()	smp_mb()
+#else
+#define cpu_relax()	barrier()
+#endif
+
+#endif /* __ASSEMBLY__ */
+
+#endif /* __ASM_COMMON_PROCESSOR_H */
diff --git a/arch/mips/include/asm/processor.h b/arch/mips/include/asm/processor.h
index 7619ad319400..b7eca25e2066 100644
--- a/arch/mips/include/asm/processor.h
+++ b/arch/mips/include/asm/processor.h
@@ -22,6 +22,7 @@
 #include <asm/dsemul.h>
 #include <asm/mipsregs.h>
 #include <asm/prefetch.h>
+#include <asm/common/processor.h>
 
 /*
  * System setup and hardware flags..
@@ -385,21 +386,6 @@ unsigned long get_wchan(struct task_struct *p);
 #define KSTK_ESP(tsk) (task_pt_regs(tsk)->regs[29])
 #define KSTK_STATUS(tsk) (task_pt_regs(tsk)->cp0_status)
 
-#ifdef CONFIG_CPU_LOONGSON64
-/*
- * Loongson-3's SFB (Store-Fill-Buffer) may buffer writes indefinitely when a
- * tight read loop is executed, because reads take priority over writes & the
- * hardware (incorrectly) doesn't ensure that writes will eventually occur.
- *
- * Since spin loops of any kind should have a cpu_relax() in them, force an SFB
- * flush from cpu_relax() such that any pending writes will become visible as
- * expected.
- */
-#define cpu_relax()	smp_mb()
-#else
-#define cpu_relax()	barrier()
-#endif
-
 /*
  * Return_address is a replacement for __builtin_return_address(count)
  * which on certain architectures cannot reasonably be implemented in GCC
diff --git a/arch/mips/include/asm/vdso/gettimeofday.h b/arch/mips/include/asm/vdso/gettimeofday.h
index a58687e26c5d..e8ab2fafe067 100644
--- a/arch/mips/include/asm/vdso/gettimeofday.h
+++ b/arch/mips/include/asm/vdso/gettimeofday.h
@@ -13,12 +13,8 @@
 
 #ifndef __ASSEMBLY__
 
-#include <linux/compiler.h>
-#include <linux/time.h>
-
 #include <asm/vdso/vdso.h>
 #include <asm/clocksource.h>
-#include <asm/io.h>
 #include <asm/unistd.h>
 #include <asm/vdso.h>
 
-- 
2.25.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200213161614.23246-16-vincenzo.frascino%40arm.com.
