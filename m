Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRBJNCRHZQKGQEA3WCMPA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13f.google.com (mail-lf1-x13f.google.com [IPv6:2a00:1450:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id C349F17BEAC
	for <lists+clang-built-linux@lfdr.de>; Fri,  6 Mar 2020 14:33:25 +0100 (CET)
Received: by mail-lf1-x13f.google.com with SMTP id m29sf430486lfp.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 06 Mar 2020 05:33:25 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1583501605; cv=pass;
        d=google.com; s=arc-20160816;
        b=Bb+HetywZAV3EDZ9x8K75MbnFEDdQE5bmc3xC5rUKEA18PeRg6P35rVwyF7qTI32d8
         7kAgoxCT7zG1zJLcnyGko8L1TudihEl+LNdouUTBD/vKjbhMJ6lWGVO7OE/7e2gwJYnv
         gLgxZqtLvJBL5C9zMbqsCAXZOuC4ckFG62sPqcH4t+sUDhWHkWz0Snbnv9NQ6TpduR56
         6l0LtgDkreGCmegN4ovFKBDJAIg/v92xkcFFJaLutWer5NutTKIrIDAaY88fsCsrZaLu
         017KGJnJKlH6SAgveh5ETJek1JMmZecX5guCh2ilGjYw09CcpH3SSAwP2mPAX1EHCSY/
         M2tQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=KOOqJOryrUCfStVXGIwGFpdRG0vBLQ5kNBpT9e3Gbwc=;
        b=aUGIKFLjTpXN/Y85inhiRgb4l7WTmdHbM5RmpzBIcaG34Zf9g4k34sBrfegJ6Fal4L
         zjhmxchp1Jep7tvgQER1vi4YIbpZdGnNxBVQi7uAejTYQKNMfGPsZ18hZ3+dfSutgUUs
         qZ9i2BQrK0SxK4uj0QUueaz34Api7vZrGrNr6N91HBjRwfkvMI8VYzJ/a4ibt056pJ1y
         /QEBHQ4m+Z29rcvjoQl6CP8OzozY4RhGnq9ysmLxODxbiud8y6eoZ7U+F9RiEIV/YEBH
         lE/gEIfTt7+175IxOfG+YlSTOQ/cJRmFJniCvHe3xOEio5XHA6f5QGY/axpqcxJ1js0Y
         K1Pg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KOOqJOryrUCfStVXGIwGFpdRG0vBLQ5kNBpT9e3Gbwc=;
        b=m3uNa8k6rRmInOM6C9oC+gUoPD8x5qNaZT0STjLhUERowakayvVZHroSm3fpQ7aG3c
         puzOWz/An6LfYlqzRCGcCA3UE44q2ny2j7433lZ9ovrAc83WvsVkmavUZe280JwUZoAz
         Zww/FoQY6SjX3h1TwbngxBlfij5yj8MBqEPMFlNf7qBURQ0dZAh95MYlsuU1rgc/dhRP
         f8dOt9NGtlNBV86T7oFAcg9p++3sw/AvdfgQqqdJV79IUIwAaBbyibJcHwRAuLoadUaT
         lNJwknwPr/jlOL+ZQORxLyygqf2pU7JGl6Jrdf9KRkHdyH27HVVvaf0M1f9SunzYrYwa
         /lKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KOOqJOryrUCfStVXGIwGFpdRG0vBLQ5kNBpT9e3Gbwc=;
        b=K3Y/JH6FXLxVgmLWmdlOAtqNDyid2ZaFbXziqo0mzVKIyRNxGPsq+ymGCKKN/wAIeG
         zUo0Mbx5D8h9xRxp7Z1xi3ezG4QfYqM4tgtyKIbRbjusR+kZ92+ChqxULJIrha5BGL7M
         Ng5Wjquamqhm0zGDB8f69bCsXaeOJ0JFmSLaDIIyfuIH4gz78wcPLN5Tee7MU3nwkCcc
         fZCL4gqr/qhoPge+L/zXMmmJI4N8zA7ogiNMjuxRUAsUw0H9C1S8bzL4hmWbK7ZneZBo
         pu0SOLb38fAgPMcqfou2vpnXzn3IleAPGrAb0RBcs2vm5vrwr/U9pnhboD/eOP1k3AFG
         XZgg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ1PLIek6mD481HuIOtLGy2r2iXrlnucVSwt90OLoZKWF4HzMZq0
	9Lq0/QQhZbA/dBQjg6J6qME=
X-Google-Smtp-Source: ADFU+vuQtewFHcqri3NfmPDUgVpBM1QCp7qKBi0eIqDAoTX6Efp/A5xgjeMt/ThEkRxopwmCTX9/cw==
X-Received: by 2002:ac2:51d1:: with SMTP id u17mr1991985lfm.68.1583501605356;
        Fri, 06 Mar 2020 05:33:25 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:8647:: with SMTP id i7ls470429ljj.11.gmail; Fri, 06 Mar
 2020 05:33:24 -0800 (PST)
X-Received: by 2002:a2e:8250:: with SMTP id j16mr2062264ljh.274.1583501604601;
        Fri, 06 Mar 2020 05:33:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1583501604; cv=none;
        d=google.com; s=arc-20160816;
        b=E3pgDA591RHo7URK9VEuYfvxRyw8NxAO7QZKWA5LUIcTvWjoXXg7ujd0pnAIvsFx0M
         ccVTheualm2ATELk+MoAw9Sbkn5viFuod2W8rI/u7wyW9/Ukmdb3RHYigE3tLsPKvGU+
         RxGpA2bxWV9zRTtWotyhGFYz5O0EKUbuqA0i8l16O9QMFXMuxO9fdRVo1bccyDoFT91+
         MI9VI2z6Jn1/y6ciyNeVzBx88qbUCOR26eH6hWLZdlsJuJlsRKANUg3h92YDCAV2pcsb
         Bamjm9cHa37iWyd+JSP+OoGSm8DvJ2IinWy5howvdGeJeticdM27uuShLBOvcbOl5FRf
         V+XQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=2s2zPEVQlDUKesUbKYC96uxLv6Zuu6gu5vCBvxjKU2Y=;
        b=BjC3AJkhYGCKUSjP/rPHtZYhmhOZq7AFS8owoTztLS0ngy4DNrW4MZ+4NyeqUiPh/o
         Gny+i1VhK8nEBekFc1KFVkh6hkzFOVL1jUH8+9z03D+rC00nHL+KHJ+b38PGdtQrKTN3
         +nhM+UJ1hZJAKr3q0pUNeZTe5gpPDp00FOG9yrS+aNayyzNe+bndZE6bVtKGAHp3GohT
         Y2qyoz5vaUS1DILFCr3YwEHeoNIr3ZD7D12WCxJ4+iQ+gmEBhryfHS5IlFMu7QWePT39
         fz2l6R/f1eBySsfqQNUI0rLQyG0L/RRJ1yy5W1e2M+edgh06wKCm9A5fG5npsdCYWbfj
         P2Nw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id s6si145617ljm.3.2020.03.06.05.33.24
        for <clang-built-linux@googlegroups.com>;
        Fri, 06 Mar 2020 05:33:24 -0800 (PST)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9F9CA31B;
	Fri,  6 Mar 2020 05:33:23 -0800 (PST)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id DCD743F6CF;
	Fri,  6 Mar 2020 05:33:20 -0800 (PST)
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
	Nick Desaulniers <ndesaulniers@google.com>
Subject: [PATCH v2 10/20] common: Introduce processor.h
Date: Fri,  6 Mar 2020 13:32:32 +0000
Message-Id: <20200306133242.26279-11-vincenzo.frascino@arm.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200306133242.26279-1-vincenzo.frascino@arm.com>
References: <20200306133242.26279-1-vincenzo.frascino@arm.com>
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

Introduce processor.h to contain all the processor specific functions
that are suitable for vDSO inclusion.

Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 include/common/processor.h | 14 ++++++++++++++
 1 file changed, 14 insertions(+)
 create mode 100644 include/common/processor.h

diff --git a/include/common/processor.h b/include/common/processor.h
new file mode 100644
index 000000000000..f9f971cb4235
--- /dev/null
+++ b/include/common/processor.h
@@ -0,0 +1,14 @@
+/* SPDX-License-Identifier: GPL-2.0-only */
+/*
+ * Copyright (C) 2020 ARM Ltd.
+ */
+#ifndef __COMMON_PROCESSOR_H
+#define __COMMON_PROCESSOR_H
+
+#ifndef __ASSEMBLY__
+
+#include <asm/common/processor.h>
+
+#endif /* __ASSEMBLY__ */
+
+#endif /* __COMMON_PROCESSOR_H */
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200306133242.26279-11-vincenzo.frascino%40arm.com.
