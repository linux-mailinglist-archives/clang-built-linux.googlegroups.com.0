Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRBLECYPZQKGQEWAH3GSY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x340.google.com (mail-wm1-x340.google.com [IPv6:2a00:1450:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id CBF3418839B
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 13:23:08 +0100 (CET)
Received: by mail-wm1-x340.google.com with SMTP id r23sf7093656wmn.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 05:23:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584447788; cv=pass;
        d=google.com; s=arc-20160816;
        b=TcswT6tPZvDYQ0VMHdIf7MRMllIUXiSuBDTy6IAKIh9jPa5DKg0q6zE5vx6pZmKJXL
         NxFuSwvRh0es/ra8+xLws/cEnkquX3G4p0mmmv0PBOBCZxHYRAeFvfxZt3ic2H84SfJj
         U86HHoOdsr3XhjehFyrBT98STFhFqpaNSeLzJu4+R7eTdldtXloV3/Q5FTenOaiVZtOu
         M85ArT60XpWL9hzmww+mgf4Vo0xUYLNj03Bezi12tfulfG0LthrOqR1Dr2+WBLnhvz7v
         j2AKjsaKvBgyIMRE1zOJc0oa+u+6rks1/NeqCxVEZIgM4pnQ+yXPSjYPuMV9v8MWZaCD
         MEIQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=8uWa17H0AlioB6UsSjZh6/ZN/0amA2W2ahEnUkxh8L0=;
        b=nbtvio1k8/c1+TKRInUCz93TENcM4nz69Kqkq30hoE85/jg5BTRmtAlJ+WAHW3Mrbl
         YwJMeZdQAJvPwhgCf8g5L7Nt0AKIRlM56X5Uc5HUFCPn0mLICzxYwGyc00dEzZr9kXUA
         dNYPz8GYjsjmjONdyNXan72M8M4050BaqHJUEO4K6TqnzNBzh/h3JuG6m6bH7yNR3j7r
         ur+/hlqf9XVCTp/p3SMDY8h2G+p+BxMVGuMjZ69lJ1eKE7/bsnLdhf91OP3wLKVRB9sV
         gLCfgLsXzItycj/4hhgPCSay4lHVOlfY0Ig3Y4CApfMG3Sz02lR+emZZPb+aRaLryHzg
         8AJg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8uWa17H0AlioB6UsSjZh6/ZN/0amA2W2ahEnUkxh8L0=;
        b=exBWom2BbaFfpt/NzwD56NPyz0LxN1dsr99R6f754KraUeByK9kJGhq1UjIll8tPM1
         SoQZRO25WWZsNSIq06gErbmGGfHtBktVFJsmmIAOYF4r57d+83xsvjdo7NKCN1j3S5H+
         4jv+fiSfWh1BXbYGGm6H+PEClo8ltgEBlX7BWVGlLKq2EWUrvkkA/I7qC8M6KV+BQfep
         WE4BXKBFcF0Eo1rYHkUB6Xt5ERZ/L43fXUbIywq/D1DGESHVyWu+6ZEm9Sap95WUHByE
         cjNYsolPGDt4j+PE7NQ5zJMG495cbY7XUppuUBU7lSCx8zncIDQPRIn1D2cwYIBU0hIS
         YzUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8uWa17H0AlioB6UsSjZh6/ZN/0amA2W2ahEnUkxh8L0=;
        b=np6EjSGXkn61YBb9qOWMOJMsb3Yf7SMyRLDKN61+EbwVaRIc4oKP+i3ZyRn+pJv3YZ
         MD650AqikKKYED8n63GDXibXnVsUHFPLjCTmUR+RraQutN/JT4Ssfa/+/M1I9BOLj2uV
         bO+zitCKakOCvH4fSEzNEjPu4R2AmLSQV+0RdbyGkwDtmK4tDuJFShKnVM/j9Txu6QG4
         Y4dy7/s8Hua8k66wVPloau+RQCYtS88BfpKiTNR6zXYUmYI2bWc5Ji3VW2Ao9gFgoqzm
         0s7WS0wzykpaPrwfIsR2ttaa7eV+cWWXIqMNCG1Rrq3CxcY9BJ2ORxw0Rf53uR+Lls+C
         1vxQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ00LkjINU0y7W8HjrWjdNdgq0FpWdsAgUu5iFcz+0YQNxAYIW/O
	Fo+DcuOfFv1hzB31ecxc+is=
X-Google-Smtp-Source: ADFU+vvyt7WTm9ETX3zAUDCjR5dzOUnAhMPwE8FgM+YELDUoEEY95XrYjYwuNSWOAparZyNIJhElcg==
X-Received: by 2002:adf:ed42:: with SMTP id u2mr6192477wro.226.1584447788583;
        Tue, 17 Mar 2020 05:23:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:a98b:: with SMTP id s133ls34474wme.3.gmail; Tue, 17 Mar
 2020 05:23:08 -0700 (PDT)
X-Received: by 2002:a1c:1fc9:: with SMTP id f192mr5287354wmf.4.1584447788176;
        Tue, 17 Mar 2020 05:23:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584447788; cv=none;
        d=google.com; s=arc-20160816;
        b=uRZlwafnY2cIdZ8rerQmzxv/SLl6Cbu2Hrp7g1EitocBv80SIYR8ZfgDTBfV8W9qdK
         AuGMnPzl82q+r2a1RCa/nz+Hd/eQNs6Sat8uKU0mICBBAy276SHfZe3Fq08kd9vSMVhL
         CNQ86EzTP/EDO6ZkSWtk42PCEROJX7j8feFfOv8+MLSZz5l8SXbKSNw/jWwGK/n/mZmX
         cQRoYjYTeIwDLEeIe1xoUlbrmaZU1OjOPVdSOUW+o8RnDrie/+/hY5v0RXqzbJ6g2Zmt
         xT9kZCpRjQlUmMN2bA99k+xUv5CqOTh6P664udV0THur9hqem/nnaqQHj3yXe0LwGkuU
         +XiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=1WM9EoxYxTtSoWQuHspgjpvw9pdyQ8zXeKkIqzf+WUY=;
        b=kEwfiDq81hMti/blQs2zYs8Ovz1kJwVcpoPlQ9VmPV4BBnykmEXvJWa9TTfx042IA2
         jjPcLjbW36iV22B8DiH238DGAJRLZEYE+ySI9c27TJFyXysgflW37zene2BJyQVPFM9F
         B1ToNn3cG6fE6mTQEDGNTyeB1KoyJGZD/e1s3gKKHR6KeRfjbZFbVVWSMWdEmb7DAMQ6
         s9+Q62ZZL7wlYzcAtxgGOwOZdMoYkOi1vuaSPhljj4jnGATbruxW4LNyc/Lf7XHBZCZx
         1NDcJvMh3mXPl6h7ryU53n6IYZCKZXSYCR35baHYvz61CjP8PqBZPq1dBSI0lngISa5o
         alWw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id e12si137980wru.1.2020.03.17.05.23.08
        for <clang-built-linux@googlegroups.com>;
        Tue, 17 Mar 2020 05:23:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7587BFEC;
	Tue, 17 Mar 2020 05:23:07 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7F7E13F534;
	Tue, 17 Mar 2020 05:23:04 -0700 (PDT)
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
Subject: [PATCH v4 05/26] arm: Introduce asm/vdso/clocksource.h
Date: Tue, 17 Mar 2020 12:21:59 +0000
Message-Id: <20200317122220.30393-6-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200317122220.30393-1-vincenzo.frascino@arm.com>
References: <20200317122220.30393-1-vincenzo.frascino@arm.com>
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

Cc: Russell King <linux@armlinux.org.uk>
Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 arch/arm/include/asm/clocksource.h      | 6 +++---
 arch/arm/include/asm/vdso/clocksource.h | 8 ++++++++
 2 files changed, 11 insertions(+), 3 deletions(-)
 create mode 100644 arch/arm/include/asm/vdso/clocksource.h

diff --git a/arch/arm/include/asm/clocksource.h b/arch/arm/include/asm/clocksource.h
index 73beb7f131de..13651c731a81 100644
--- a/arch/arm/include/asm/clocksource.h
+++ b/arch/arm/include/asm/clocksource.h
@@ -1,7 +1,7 @@
+/* SPDX-License-Identifier: GPL-2.0 */
 #ifndef _ASM_CLOCKSOURCE_H
 #define _ASM_CLOCKSOURCE_H
 
-#define VDSO_ARCH_CLOCKMODES	\
-	VDSO_CLOCKMODE_ARCHTIMER
+#include <asm/vdso/clocksource.h>
 
-#endif
+#endif /* _ASM_CLOCKSOURCE_H */
diff --git a/arch/arm/include/asm/vdso/clocksource.h b/arch/arm/include/asm/vdso/clocksource.h
new file mode 100644
index 000000000000..50c0b19fb755
--- /dev/null
+++ b/arch/arm/include/asm/vdso/clocksource.h
@@ -0,0 +1,8 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef __ASM_VDSOCLOCKSOURCE_H
+#define __ASM_VDSOCLOCKSOURCE_H
+
+#define VDSO_ARCH_CLOCKMODES	\
+	VDSO_CLOCKMODE_ARCHTIMER
+
+#endif /* __ASM_VDSOCLOCKSOURCE_H */
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200317122220.30393-6-vincenzo.frascino%40arm.com.
