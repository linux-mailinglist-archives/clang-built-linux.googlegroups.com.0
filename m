Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRBWOUV3ZQKGQEQ3KKQOY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x440.google.com (mail-wr1-x440.google.com [IPv6:2a00:1450:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 22F9C184B05
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Mar 2020 16:44:26 +0100 (CET)
Received: by mail-wr1-x440.google.com with SMTP id o9sf4497997wrw.14
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Mar 2020 08:44:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584114266; cv=pass;
        d=google.com; s=arc-20160816;
        b=qZsR1Lgb34+dee+PPVJaB9r812bKa0VOcv81KXp+MDuUUuZ8vzU8O/2ECmjKqPWQsI
         XRvIaNGvA5k5FU4uuC71+HSUN7Ek5kDm2Ql0UNL3mmwplrb8P7gxLfHM/j2kSno1aXiL
         7e1J37C4+rPd+mve3ewbdc1uTCUmQ0IoMH7OskBF04pg5ijbOocc+lq7j82rJPIhuW6E
         pTbrvVZgCstSsns+CyoD5W4jWFKnHG37hCAQh2ERW4QykzJOBHYtcDVZSI0pGdR6Ye01
         PrOtt0ToX29o9XXpJbqI2cNtzSbHEka3r8XJ8bT5p/ZpreNuUVGpLcYys0NEP2I1B5Sy
         hWmQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=0TtlByXWxKybh5NQ3DQqoJw2lAWA5zvHbRMaSIPfc4A=;
        b=U15fuy3FrQ4iEfZ1zuWgRiOpOTh80/0LLhpnPbYf0MQcPtiqBRURuFF2Z/+4gLvqzs
         yTe0GrUgJkfEax0r9aEycdAR6RAAEdsyqP7obUiALUqHPQ+tfJYxGNoSVJq7rNjmEd1v
         f/g40KEQHYgLhxgGpj5nYWE6Pec1zj+jwt8SULs4Vl6+RvwAbzSwmtdzxcOVGNvG5ceL
         DUpd5gLbDJfcLwtifRwPG/kCgGOvHyaovGFYpmKtMUifRiY+Tnjg0OQ92QjxoL47tme9
         Prw/o1+x1niNP8A5j96zZIiXZLUPV/iKo+H/2jH+O+pKA+x2iWczhUJgG9R76BbqgKX9
         lRtA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0TtlByXWxKybh5NQ3DQqoJw2lAWA5zvHbRMaSIPfc4A=;
        b=jj0HeJf0/YSpB1P3FEPAiE6UffDvIPtbDpc0QALE2/A5mwGzI1uM2Wj8m2/5VOxS3O
         0z+t3Rx4L2uZzdGSZxleJaVWOTVMBK7G6AE2nuABTqI9omoDj0Kmfo8xMsyhjCEYsK/r
         ogaI9+RSvQq6u52z5dBmXhrPAhaa5Hvn8rKIVPHZLEbw8XdjnCENQctVl8gq4XmgZiU/
         AfTp4tFQpRzgs3UUp3NRCtK5/3JGp1Un9OlcvqyMBl4EdvXJLnRcl9Zg/UAEHH29oF+Q
         CRPMx6GYpyF61QAOIo381RnqJbRNDiA3Sxjj6501h2qmD1dziLy7vighwsXlxTJCWqIf
         YOpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0TtlByXWxKybh5NQ3DQqoJw2lAWA5zvHbRMaSIPfc4A=;
        b=QTQt/8UcgrgU9MdXDps8LbU87eCsjR6vbCfPUm2sMV7QGpxaDs9c8z5gMwbZ4q1VvZ
         VFHamkm6EilS1YzxRgUTI9d2Gf3E+o2TFKjPU8Hi4JNMw3mqSCrYGzug+cb1H0TC8Ucp
         ZVke5s+VuQhB7yl0NZWsnxaaPmU2qQMqGMUM3rTIWuk+hzPYa2M2GilTgL4j//CHk3/i
         rUmoNJPPOfRSOmnE5JJXkVwbzpHGEvlq3WykiD3uVblMluo/4/pGzw+MNa+OiT+k77xq
         jkSHYlN3ySSGT+4hU3vCsi98KGPGw//tjaffiV2EvaO5I+Vf9hQwU98DXj8ej7kZjtRN
         YswA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ1hiS2J1mD3Yt47JpPXmnYpN3T23umVLbu1KN1uKS3gu+OfbtZZ
	AOfF1H5bBqJrbtcWUO6hmmc=
X-Google-Smtp-Source: ADFU+vtiTAnZ/mCjmQghgjlxZfqnJuKvtl/J9vUiti7WTlEJt5M9jKnfy87c2MXoCAjMw/Ni0Z8Pbg==
X-Received: by 2002:a5d:6588:: with SMTP id q8mr19184004wru.170.1584114265906;
        Fri, 13 Mar 2020 08:44:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:93:: with SMTP id 141ls1597028wma.1.canary-gmail; Fri,
 13 Mar 2020 08:44:25 -0700 (PDT)
X-Received: by 2002:a05:600c:22c6:: with SMTP id 6mr8119098wmg.161.1584114265427;
        Fri, 13 Mar 2020 08:44:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584114265; cv=none;
        d=google.com; s=arc-20160816;
        b=UxGGU2k7P8c6uPOwENlBzmAe87poJjYoft8/uVWi5oIRDuaTr4ULvY3HvPZPtvuw7E
         W+dl+88c/RzuFxkeUxLhB/bu3BEFUAIlK6/oCvBUAy035ugU+Gin2fbk11vK1l3hucug
         A6cCUnYT9AqbwhfILYnVRAhFInrPfztptAxJWjE6CVpbO2D8VtgMj5RaD1qASvIeQsti
         tXcQFiL5huv5CFLDtzwYqzrcnq+IIFeWfequqbeOLHQlZXQtOWAjHhm1w4qDI7jDPrG+
         gIUMDP+JfCf9SSDCvRIH2b/3yt/ee1e76WxERiQQ1NXwgQUEyy7mJOHRofnhnvJljmW6
         6r9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=hx0EFHAmCFmRSNU+H3LEWciHHSgyYYl7Jtwgfnn8Qmc=;
        b=jPlP8ByS/kwPH+8lu/bQXQ2Ctbl8SEZ2YrT8H0oaJiD4tTrFLS9Di7ItzyaMLRM4xV
         uNNRQDS4D7GUvi6HtEndPaKAxZiMCa6KM2KZRtRv9/LEHgblnT4rL361/faEs1EcpvFU
         zfobW1MqrDZfcQ5IBlTwBytrewPWOw0Acncr+DkBI/0iXI/XrzKi4UXViyrDV42Mx0hy
         w4OiBsqhIka2C0NuWC+eYNSMwyTlRPnrGwCXy7AP/euGfcRK9LTxZzHSO1dgkwORQFx4
         DQcbNJoBKQKPTRpImDA6hsyz0nCg2jZZRLoz86ks8wIZvS9LPrts1IpSqhvPMphmTBke
         /Seg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id i19si560851wml.0.2020.03.13.08.44.25
        for <clang-built-linux@googlegroups.com>;
        Fri, 13 Mar 2020 08:44:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B837231B;
	Fri, 13 Mar 2020 08:44:24 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id A70553F67D;
	Fri, 13 Mar 2020 08:44:21 -0700 (PDT)
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
	Mark Rutland <Mark.Rutland@arm.com>,
	Will Deacon <will@kernel.org>
Subject: [PATCH v3 06/26] arm64: Introduce asm/vdso/clocksource.h
Date: Fri, 13 Mar 2020 15:43:25 +0000
Message-Id: <20200313154345.56760-7-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200313154345.56760-1-vincenzo.frascino@arm.com>
References: <20200313154345.56760-1-vincenzo.frascino@arm.com>
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

Cc: Catalin Marinas <catalin.marinas@arm.com>
Cc: Will Deacon <will@kernel.org>
Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 arch/arm64/include/asm/clocksource.h      | 3 +--
 arch/arm64/include/asm/vdso/clocksource.h | 8 ++++++++
 2 files changed, 9 insertions(+), 2 deletions(-)
 create mode 100644 arch/arm64/include/asm/vdso/clocksource.h

diff --git a/arch/arm64/include/asm/clocksource.h b/arch/arm64/include/asm/clocksource.h
index eb82e9d95c5d..482185566b0c 100644
--- a/arch/arm64/include/asm/clocksource.h
+++ b/arch/arm64/include/asm/clocksource.h
@@ -2,7 +2,6 @@
 #ifndef _ASM_CLOCKSOURCE_H
 #define _ASM_CLOCKSOURCE_H
 
-#define VDSO_ARCH_CLOCKMODES	\
-	VDSO_CLOCKMODE_ARCHTIMER
+#include <asm/vdso/clocksource.h>
 
 #endif
diff --git a/arch/arm64/include/asm/vdso/clocksource.h b/arch/arm64/include/asm/vdso/clocksource.h
new file mode 100644
index 000000000000..df6ea65c1dec
--- /dev/null
+++ b/arch/arm64/include/asm/vdso/clocksource.h
@@ -0,0 +1,8 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef __ASM_VDSOCLOCKSOURCE_H
+#define __ASM_VDSOCLOCKSOURCE_H
+
+#define VDSO_ARCH_CLOCKMODES	\
+	VDSO_CLOCKMODE_ARCHTIMER
+
+#endif
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200313154345.56760-7-vincenzo.frascino%40arm.com.
