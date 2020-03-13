Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRBU6UV3ZQKGQEWYDP3NQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x439.google.com (mail-wr1-x439.google.com [IPv6:2a00:1450:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id A637F184B00
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Mar 2020 16:44:19 +0100 (CET)
Received: by mail-wr1-x439.google.com with SMTP id n11sf3993447wrs.13
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Mar 2020 08:44:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584114259; cv=pass;
        d=google.com; s=arc-20160816;
        b=jlZf57TpOMci43KOqmL36k2LMbi35HvnZCN87XMUSQ1xcATHbnrjPUD2MPDT3t9zrN
         +n2b8Egh9clJsYpb1VPkLuuADf5X4lC8mWDkJLRecX1517NDheK+iBbw91m4fkwqCAZB
         Mkkepkq7Co/UkLwxL9CVmn6AY6YUHRj+UmXpGOV5P+lfQ18pzMjHFFiG9P3kncuDzYLa
         CHKespN1aiWs62HsORZSFM4w+qNrN5oxh0AUvzHyRYUfhbIsH54ooP6tBwvWqE4gmUiX
         KENXxa3gCAKt41kfZz2b779UcxSwbK6SkdevpcoHXGB1v0e63gWg/32xZynA5Vxlt8qo
         clyw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=zS/xYqn/8gU4LVmBZxp6ZpmEqs+HF65bXRk0qUj139g=;
        b=n1W6mqqA7AMI16RCAK75If3Lftf5nkkSO3Q0Alm1/4arZRJi61JtxM6O8UnAGwWAFE
         +YWgkQ2b7OQ39l6b6h/yZPI/hI+IVkKZtuM55gXsWG8i76RBK973I2UasXmVjaLuBmPW
         iVgUL7ajfl7xR60yEn5H8Ypge+FFrCRMXHmgMjnb9+URcLucby30MVetUpGH34CNvduz
         RjJ3+0wTtqD/6wa7sLe37r30JCePuw/zfg1/lSWau2ChXMHUfmwAIJrfPDpl81tXH446
         vJIAV2denZ+s/BWhY1HlFOmAZ0WxASyXO7CZix3yk92fVtu/kN1IlawxybRBL61/QBkk
         KJfg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zS/xYqn/8gU4LVmBZxp6ZpmEqs+HF65bXRk0qUj139g=;
        b=UYgRi0kWcy5jdTxVtYge+B+V42uucBZ0DdkoRbrUNBcRG/O5jYhZI5lZv8U6EFOvg3
         shnHH3rH1hRj9A1u4rUUVmouoK19RAQxE8NcznvzlmtX/IR9iGP+kN80v1k9c4Yc8AWG
         7zu0TDOOBt5ngbf/YbysqYboCBxHpog1EoayTlT/mkLqL/dOqKuZsduQ3j2iL9B01jJH
         FYqMBDaQdz2zIlwK6h2hUVK9ncAZrjey4iafO5SUTt4czKdG9SlvWx2BhdzVnAcIUvn1
         oREkcmKpGuVDVEoLoKqqsoznm1yzVsZChZ44qoVWJxvZs/yuPx3ElPMMn4hCthx3dT9a
         tbUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zS/xYqn/8gU4LVmBZxp6ZpmEqs+HF65bXRk0qUj139g=;
        b=B6GyTpWuCrJrAK96QuSF43qV4x+GqPxuYgfESLqN5E68BZVYzgLqRjx32UZJQPbzhr
         6ApVEAwXjWJ7YcBFRmQmFplFCPqTr1YDmvheyO5tX4+e2/LZfhh7F2btaXk6Z3vTBaFB
         5IBcNRDnsFpXGLCqXiFqkT0CU/Ltwc8y66pcgBZN5zhycuABn7FwHObiX7lTxB00rzBI
         tB1VJgxMZtIczV0BQW0zB8YtgVUzr96WSvrahDFggj7tYIC3wTo/4K5MWALlFTzU6NnB
         IvUwIxOjXeFNoY/6xldB1qaLX5P+QnoPE8zAduFZDf0GDkvLXxTUg6Y/tWSpUsi2hB2x
         Ln+A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ1J1DID6D72utrqPznNK2h4D22+mViOzjEGY2abUZxyT6pXVS7i
	8bEqzhZ3Z9b0LCvyVAKuQ2k=
X-Google-Smtp-Source: ADFU+vuOFA7HGRYSVn7sEo+KZUd9ybDv2dpoB0QKcjkb3pUoEYTkGlUkkCUZLsFi9ifHQojF96hobA==
X-Received: by 2002:adf:f490:: with SMTP id l16mr19206688wro.150.1584114259458;
        Fri, 13 Mar 2020 08:44:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:bd82:: with SMTP id n124ls1593805wmf.2.gmail; Fri, 13
 Mar 2020 08:44:18 -0700 (PDT)
X-Received: by 2002:a1c:9816:: with SMTP id a22mr12288922wme.16.1584114258945;
        Fri, 13 Mar 2020 08:44:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584114258; cv=none;
        d=google.com; s=arc-20160816;
        b=LC+kgxR6Clgt2+JEyDJv2M1E8oe1Cb4VGaDHZkP83lKezc+CXkhjrgLeKi+MTT1pYC
         mJfEqPo6DZwn0sZmQJKf5bKvf794s2Ts+f7JNRszITjwSXz9hcSeeiEw24a1w24hTbz/
         eMesHxRvkbv9uFEwhkvnOyx5WT7YzZH4JWarPciCoiBVOneuPc3M2rVCX37eNdHxllC8
         wIiF4cqNiWLdRRg3oaix5Yhiu47QzPc5RhBlcKZ7enGoaDDYEWGhHL6+j5a3aIo8FZK+
         CixJwF4meGxlURTZU5JqiqNuGf/+RK5tTQtzUz7cFV4Oy2PQ/5tHvSVDmB8+ogf0vuRt
         0Bug==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=Dx+wjJ4+9xwzrR0AAlZwsSpZqOI1/jYeoZCyfIXTQw0=;
        b=FjQOPzD2QZSAV/LTsvR7qQtma42kykL9EG97DAI12lFgh3QN92L2PjswCGBSVtGPzh
         ze+agsjvE/GGmHNnv6CVAuU0HFJmaZXpmgI6wZDwrP3Y9+Kg590/uDlsF1seaKhA/Vb4
         usojyLHwP5bFuNcKZ/5iXFPpjsXmowirzPupOx4mRUtlr9hWfPV3xVx7u/eJmUPJWfG5
         MtCwE5w3nEfII/LSUoLC9dOjsbg84tCOZ/rJ30z9HQ+4BaghCv2aiEaGLeKg7qwhfSnc
         Fdh6S0+Jee6aE8bMDg4OnuXszmWDBJeZEGX0KEM4owYFhM2oUOqavAs5HyrZTeb/FcGV
         lg3Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id l17si562182wmg.0.2020.03.13.08.44.18
        for <clang-built-linux@googlegroups.com>;
        Fri, 13 Mar 2020 08:44:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 44F9DFEC;
	Fri, 13 Mar 2020 08:44:18 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4FAC73F67D;
	Fri, 13 Mar 2020 08:44:15 -0700 (PDT)
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
Subject: [PATCH v3 04/26] x86:Introduce asm/vdso/clocksource.h
Date: Fri, 13 Mar 2020 15:43:23 +0000
Message-Id: <20200313154345.56760-5-vincenzo.frascino@arm.com>
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

Cc: Thomas Gleixner <tglx@linutronix.de>
Cc: Andy Lutomirski <luto@kernel.org>
Cc: Ingo Molnar <mingo@redhat.com>
Cc: Borislav Petkov <bp@alien8.de>
Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 arch/x86/include/asm/clocksource.h      |  5 +----
 arch/x86/include/asm/vdso/clocksource.h | 10 ++++++++++
 2 files changed, 11 insertions(+), 4 deletions(-)
 create mode 100644 arch/x86/include/asm/vdso/clocksource.h

diff --git a/arch/x86/include/asm/clocksource.h b/arch/x86/include/asm/clocksource.h
index d561db67f96d..dc9dc7b3911a 100644
--- a/arch/x86/include/asm/clocksource.h
+++ b/arch/x86/include/asm/clocksource.h
@@ -4,10 +4,7 @@
 #ifndef _ASM_X86_CLOCKSOURCE_H
 #define _ASM_X86_CLOCKSOURCE_H
 
-#define VDSO_ARCH_CLOCKMODES	\
-	VDSO_CLOCKMODE_TSC,	\
-	VDSO_CLOCKMODE_PVCLOCK,	\
-	VDSO_CLOCKMODE_HVCLOCK
+#include <asm/vdso/clocksource.h>
 
 extern unsigned int vclocks_used;
 
diff --git a/arch/x86/include/asm/vdso/clocksource.h b/arch/x86/include/asm/vdso/clocksource.h
new file mode 100644
index 000000000000..119ac8612d89
--- /dev/null
+++ b/arch/x86/include/asm/vdso/clocksource.h
@@ -0,0 +1,10 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef __ASM_VDSO_CLOCKSOURCE_H
+#define __ASM_VDSO_CLOCKSOURCE_H
+
+#define VDSO_ARCH_CLOCKMODES	\
+	VDSO_CLOCKMODE_TSC,	\
+	VDSO_CLOCKMODE_PVCLOCK,	\
+	VDSO_CLOCKMODE_HVCLOCK
+
+#endif /* __ASM_VDSO_CLOCKSOURCE_H */
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200313154345.56760-5-vincenzo.frascino%40arm.com.
