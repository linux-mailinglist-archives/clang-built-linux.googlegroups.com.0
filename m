Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRBKMCYPZQKGQEMUYZM7Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43d.google.com (mail-wr1-x43d.google.com [IPv6:2a00:1450:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id D0F34188396
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 13:23:05 +0100 (CET)
Received: by mail-wr1-x43d.google.com with SMTP id v7sf1151801wrp.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Mar 2020 05:23:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584447785; cv=pass;
        d=google.com; s=arc-20160816;
        b=C9qofzVuK07FIkFZr2WIIFAmhWvLhmYmWnWS3aqI6fCWfw/aIqcQbvPLsEFUV/oUeV
         M60DgQDY+gbjH90C1viUMRFzBC+HeKqX0nAIUngPyPdJLu1F8dVgyf7P5/sPfeTh73g8
         uKEjCnVwGhrwK7Z4U1cC6nmR8T2QAZd6tSJT1BIlDXwHtPMRtbnjhQSDGsQrZgShk7jT
         Mw8pGczJdkR3F7JnN6B9Reayiwje15uVckm362E3FkeeKPFhpKPL1OJGVKA3YviKpbJf
         3KADa8GVnCHiIt1RDbJdmZSH5yiE8ZdCS8P5k81A8Sy6oEODMwDELEfnI8sua6nnUstl
         AuoA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=Mdi7YQG4x0UmJ/Ct4/7pHYCAVqoOz9tOLdoQ2uoBGIQ=;
        b=DlwucUtAEvIN6/o4ZJvC4PkbSFJksSKLL7Ew5u4cY9miLlo6QEohTpvOS4f8VodQtW
         8he8kinQs8kp/+nEnvO+7eVNrrdqNdZ8vt6kEJia5fNDsrh3V4rlZoutUMyVbTACE7nS
         2Ek2GUdsR5KkZiUo7qhrkzq9SjmatoFHXswLS8ooOepGfH5ogOZaNF/C1Hv6J/Vcoker
         1hFGZCne6xAkd+19V8C1BYswhSso5iIHhYvU88bTh94Cb0ypNUONnv6RvduXO2fNEUxV
         /Jj1A5PSk9hWurMv9e6FblOv3T9fucZGoQW9a8kFxF41W8mIKHnC2mBgLPVwJlq1fuRe
         w+ig==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Mdi7YQG4x0UmJ/Ct4/7pHYCAVqoOz9tOLdoQ2uoBGIQ=;
        b=GLR1WfFA+f1CUfbcbYBqqZKKv5Ne3aV4nHkvszNCS6YE9Nx9Ul9Yl6+QpA9xXW+hgf
         GEZqzJRvP3NtwZy+AI9pq+8B9st8uWCXWIdSbs2YE/rShjWkhtq+P/Fb8JXXhXnet+iR
         Uh3/rapQBA2vljsxAnm/J82FX0jphkf3nkMd3+55huNpk8Q6b3FA8e4J/tYenAHsE8Fm
         m8N6kDTZPid2h3d7PL5DgjgfwNOBROttkOX2hT5ORyNNdQLBB9deHlFSyCTkQ4zD+I3p
         yx2yCIX5qAJaT6dyXyO+efdjk6+5u5swKDZslrG96NGm5RRGQCrQJDwsuqzkbGxBUkE1
         ZY8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Mdi7YQG4x0UmJ/Ct4/7pHYCAVqoOz9tOLdoQ2uoBGIQ=;
        b=EOvPcIOqULDkf68l41t4axW1YmHcIOr+15Jxc3+foQ1C1Mq5Q+1XasJbgunHLXfTvd
         v64KnjJcEExJYYyzpVvAFEIplK+8BfGY5wfWW01GQE8v03CVM1i563xmHe4yoFT7Zm1N
         Jc/qcXcb7OD0f7jRSsRc6LtLJATT4bPEX/DI/8xkEboATtaqyTj+PHvxo0LopLMtL587
         IBqglaq/ZO5IC7zjsDqyPGbykQZAJAIEjKn5uA2c44bdLUs0NDAMADfiKbTYrW3zUgh2
         7rYIlcpUz+MbY6mFjZ4uJGVZLSUrWmAcGwDD49nG7Q8fWDSPCNDRJ3e/o7NEcSff9/hy
         SatQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ20vgP4KP9N8rfOvqKOsO7X7It9SOhplnkq10DTq85nTHRcBzkT
	0/WTP7ed6TBDIYZvyycJQps=
X-Google-Smtp-Source: ADFU+vvf3bPJX44nB6xU+PMSw4mJZPrjBP3VI2o/X7LNYqfemn5rLseRoYmayYkIx3qN8Pg/B97rsg==
X-Received: by 2002:a1c:6285:: with SMTP id w127mr5309809wmb.133.1584447785512;
        Tue, 17 Mar 2020 05:23:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:a98b:: with SMTP id s133ls34378wme.3.gmail; Tue, 17 Mar
 2020 05:23:05 -0700 (PDT)
X-Received: by 2002:a1c:2358:: with SMTP id j85mr5448178wmj.137.1584447784991;
        Tue, 17 Mar 2020 05:23:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584447784; cv=none;
        d=google.com; s=arc-20160816;
        b=TevDjSGP1gE2vkpgBRwbUA1D0NjlGz2c75rnLY9UYmMsTY1FxhPmCTVjU7hYwnxuMD
         hNBUPuVuh32v593SqzxC0bIzh7WUoZvzm7XrVyMJv/7zS+4csbkZUmct2qhhlbNah6UE
         LbXXevlMI8j1oRg582AUb7sYL9rANarwGDVN02K+8qyXM9oLrBh+IDtQYwc3jJNTlBu7
         5jGTFkcql197BhMooMVStIMObRs/pun6pLCc/tWSZ1ZzITYfkabVDwiTD7QE5VHmdQTx
         g6p/WGa5YwBkEOZSPP5PzVDyLV2ej+MlFQzVPmJmrsWZh+C8AbaOwhIsUE839j40ZeA7
         OkJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=Dx+wjJ4+9xwzrR0AAlZwsSpZqOI1/jYeoZCyfIXTQw0=;
        b=NcSmThQPj9aGZNMRLmotNpa/v5+MYW8R7FFVctWXVSRqTrDuY2MoQ65vFx+fpyA6pT
         r3sL7vW99JqFMf6OXV6Dk9F5zMLXKDnEGy7e0QcaFPpPd2VcHC6RdpdY5/aQy28F8Psv
         +EFvWv/wfvK2cBeNLuFOH8T/YuqgDugWpmSTIMSbnnMaPNI/cYfIbbomqelDe40FhZb+
         Slf87RtQNMMaWGu3jzLd+o+lxWcbeOyO7y7ZgIUFJhiQ5lIjANgfWrAHY8djUrc2DWp8
         vnQKkgI9LT8YKhmcJGVIMX+rbUJbm5JGfoRPKZNpZ2putKbwGz3m6N5oDu6fe2uG1pg7
         K80g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id i19si171411wml.0.2020.03.17.05.23.04
        for <clang-built-linux@googlegroups.com>;
        Tue, 17 Mar 2020 05:23:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 4ACBB30E;
	Tue, 17 Mar 2020 05:23:04 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 53C193F534;
	Tue, 17 Mar 2020 05:23:01 -0700 (PDT)
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
Subject: [PATCH v4 04/26] x86:Introduce asm/vdso/clocksource.h
Date: Tue, 17 Mar 2020 12:21:58 +0000
Message-Id: <20200317122220.30393-5-vincenzo.frascino@arm.com>
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200317122220.30393-5-vincenzo.frascino%40arm.com.
