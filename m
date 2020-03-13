Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRBV6UV3ZQKGQEJQSQEPA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13b.google.com (mail-lf1-x13b.google.com [IPv6:2a00:1450:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id 15750184B03
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Mar 2020 16:44:24 +0100 (CET)
Received: by mail-lf1-x13b.google.com with SMTP id x7sf893193lff.15
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Mar 2020 08:44:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584114263; cv=pass;
        d=google.com; s=arc-20160816;
        b=NfoGK5V4MOKwz5ycfbVy1S4F1knRRBGWmfkPbVI/UhPBDxxrmL6mNcmWTs4Juoy7gs
         Q6Vxpy8MLT0UDiz3yyzNQbs3FhO6xOyadFW046KtLuwIBqHnS2BjzFMMKtfhJ5mqAif8
         IY1H6sXzVvmDmt9vDgAqP+OPZ7qHZG3mUqr9jrZV3/i0L0310v/akAvGK8t+1dWGVkGH
         hsKij4FW1QAmgNA1zXJURlvqp5cALtqFDbX5AgFz/Yxz9qgp7ZxJ2sKO6VbRqAXfak0g
         n300rzO290Jhf/QFLJeO2Ruxm7W/T/IVu5TTJuSSkFNztrES4FoPShoUQBKtelr0TSEY
         F9+Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=qQmodxiiq4Zzry7V0KlCjW6duaitrYdng77QM4QCbpQ=;
        b=EEMSm7z3xlZZ4Mp/ZlgIz8csGgkyYnBTDYlCHbwKk9NGCN+bE/e6s+8usATJ/QJLw/
         fS8J5ObkD8S6GFKeGKpGvh2lGnmoZSk/ZanshfG0SSvOqtxpzJvaxEp5+tTS8mg3erf5
         FJg2b9p/+78Y39/RKRapDCMxZvp9x8E8vHVMXgyRMX0FIQgy5lXeR2A/6yIQk5UcYj6+
         YCzB370ckERAY/UGYMeRIsBMKHWybSDNg5jCjrxTzMl6Jppy6jrAsdipImNWjyYJvyfI
         HZ1zbmRnrApjWpKPxrvPRN5Pe1E7LpPZoywxOv3UEJDijxkCp2kB+oKKl+xICGA0hea8
         Skgw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qQmodxiiq4Zzry7V0KlCjW6duaitrYdng77QM4QCbpQ=;
        b=IR+sHOE1Xwf2I336OpeT9y+DjnIJRpqt66NdUce86BpF+2xcCE3Fwv0zsgWgpSVRUw
         Ylbycjll8Od3rmtAXbAnyqHWFFXQvMTVCG6RdnmJWKkl6NuKdoXM9hyra2lC8d7hgcxK
         pEoOvm86Q9wA63XYXA3F70pnUuXMBScZwx5uBx27Gi641WrKXCCXAnYV1vOseambESH7
         Y+zVj6YD8cJsytez5kg/vsKmVytCxMYrWRq+vY/eqty/1tNu2fUVLCG5INqqk13I+hf0
         SX9lsO32tKwY1gHfiG6D3w532W7u9xu1b8OfvbPiRx6/OXCP+zPdnLBm36vS+BMa4X1H
         3F7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qQmodxiiq4Zzry7V0KlCjW6duaitrYdng77QM4QCbpQ=;
        b=O0oNBvlJ48S1NlVwCk3jqiLPIiZ2fDfFCd2DpVTpMlDGJikrktorotbq6SZXITIyG/
         chBsSWEly1WGQ0rWTbLP9B0MJWfQeDurlOTvM7ySvGBfi7uZ+r4tp8aYYP0o+P7CaplE
         nisTP3W5KuGplrl11VnhkqNdzAotyGJUSAVS0AhEvHf68Evc2V8eBsCnXT6f7IRzMIh2
         WATjad2dXM28J5MpNdfyMPay0gL3Dv5IWZFTZR6Ux6LqkKjtZqoYnrKwoOGIzjMwcD5c
         nYrsWfCmKu56QJSoLSnQlujb3wgTmL2Dxh+LOrnOqbt/dm3ex/mX7NSRZsTbod2ZJ24J
         ttEA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ2zHd9bmBO6lsltC9tahiCG6ohYVXUWTO7j8ykO0NRCCbSUMHdj
	mQiVeSZAP+H6eLrweaiHi7U=
X-Google-Smtp-Source: ADFU+vtkcfmfuJGyZ/Y3l6/ZvnoOgBPLe2tS4E/vlXnv52Nqe4YClVR6s3qDbINGX5XxQC8SGN7UEA==
X-Received: by 2002:a2e:b78e:: with SMTP id n14mr8377370ljo.269.1584114263541;
        Fri, 13 Mar 2020 08:44:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:550:: with SMTP id q16ls1977610ljp.1.gmail; Fri, 13
 Mar 2020 08:44:22 -0700 (PDT)
X-Received: by 2002:a2e:b16c:: with SMTP id a12mr1275088ljm.83.1584114262914;
        Fri, 13 Mar 2020 08:44:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584114262; cv=none;
        d=google.com; s=arc-20160816;
        b=GWHnAksDCXW/Tw4r3ZIQB9wwOOWjPtyrJwzNuHN+1Shm8n3krZuL0UWIDBhFd5ol77
         jXML/pOK7AID5e9dm+4QMZQXE7hv/8IjJvxb+SXaGz6IHFpxE91v3bKBmm2RmpGYSXNl
         3LBCZZhxRUmHvxNaXHc6SE3LwdI29hwW8A9mzM6Cw33u4b6b5Hv96fg0EmOqBm38VjVb
         qzjGvdpoqBwaeOEg9rxhrMQh/C+E2/BO2FmWz5ctPOQwdkcJiLPR6/AUSi1gSoAjStvo
         EUCgBDZcN1vdiV7vLUgTWYI64/sufnbmaJ/CiWO3Ph6RzcI3AN6VhiJZXGk4ME97eI5r
         /AIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=1WM9EoxYxTtSoWQuHspgjpvw9pdyQ8zXeKkIqzf+WUY=;
        b=iDAc5APmjnp2DE1pm/T4Bxhj+LFAaArotCSDFxlZy0nxf05c4OxwWHVGrXhgSQyOEF
         7rwMb0jKWvv2mUnc4ZcxgL2d6c8h0whgL5eD9mc16N6I2oFoXbmpesCQ0CY1Eb0YVcbR
         STBaTb77JsNoIa5hlbihO3Iq4kfHWnxyyV4HeubYCXDfJmPhxo+f9XJ3IIg3k/4uzl+m
         2iKAkdusAyrDF90MWGdUpOS7QBopMXDX3L5XssbhLoe2v0fCAoe9Nf9ZFt6wB6tvq2o6
         KrCz1fP2qbzFQVUG1acJF9dxDEZfSTgXpFK5vhuPf07pqnxOrYDCg5j3bfu656pXdN+e
         QD5g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id d12si428265lfi.2.2020.03.13.08.44.22
        for <clang-built-linux@googlegroups.com>;
        Fri, 13 Mar 2020 08:44:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 7078C1045;
	Fri, 13 Mar 2020 08:44:21 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 7AE683F67D;
	Fri, 13 Mar 2020 08:44:18 -0700 (PDT)
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
Subject: [PATCH v3 05/26] arm: Introduce asm/vdso/clocksource.h
Date: Fri, 13 Mar 2020 15:43:24 +0000
Message-Id: <20200313154345.56760-6-vincenzo.frascino@arm.com>
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200313154345.56760-6-vincenzo.frascino%40arm.com.
