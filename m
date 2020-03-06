Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRBCVCRHZQKGQER2VLDIY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x438.google.com (mail-wr1-x438.google.com [IPv6:2a00:1450:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 97DBD17BE8D
	for <lists+clang-built-linux@lfdr.de>; Fri,  6 Mar 2020 14:32:58 +0100 (CET)
Received: by mail-wr1-x438.google.com with SMTP id c16sf108754wrt.2
        for <lists+clang-built-linux@lfdr.de>; Fri, 06 Mar 2020 05:32:58 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1583501578; cv=pass;
        d=google.com; s=arc-20160816;
        b=RBsJh27POk+zwr9k2Ak1/HzT5rtUxf75Uk5cWgXDniI6zUDlVXSVO3iUtn+0OsdDOz
         R8mg8vQ2JYNSTHh69AB/ps+6PdcAM3FuJwgPvQiREKNhlxgiDgKzLo8A6HntMsbf2+8E
         RAQcAAT9iurAbNyF98eauVSio+jObQpA8WMSbq/hC8h6jMBeQ59TX9GFTFS9HRKTJxgV
         iWGkBjkhaTjZ+JlhdwNKVJdy5b6HCS7HcUFGm9CNQHopytgeaSYpwln+dz8tt6d154Rm
         5tkMmYafwdfF0RgpZjKFXIO/E6PTv62zxEgL5F5I+QPM5gydgyO5QpDt/oHs++9r1tdY
         D6/g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=JUyxNm5sHO1NLSLPwcpsRqP2m4PudQDhRAdrpqQJTCM=;
        b=eAMicYHsUFhNY9Dc7Es0TXd5L4D4wVvdQ2XE4dRu4xJrm3ZJTxnRMFr0LTY53yBsSB
         aFVJebg7JpMexJNNfrlThwzoFjHxUaUuQYvCpXvlc31vGV07Ye5k3+YgK36BrOGlqJ12
         ML01yOlYveia4V0FzQyMa5KOAIeMrL6o01l3vyEgW3HvApGh7SAASZz1NMzlbGPjFX1Q
         XSXZR1lNybo54gJKEOutbtjNtnEhlH9mfYMhj1XOT3gLIJnps6VLAZk7C7D71B2N5v1K
         fduC0z4o8biOAMbyK4EWs4Birns25ndhIdL+dBfsyaXC0xeSLGPJDt5TN9sxj4Llrit2
         rzVg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JUyxNm5sHO1NLSLPwcpsRqP2m4PudQDhRAdrpqQJTCM=;
        b=Ad4gKjeMojObwRq7QqNrTkAJloro0FJzPPyLXg57TIkJlHzYvFN8UAl1ysXSBhc8/0
         nW7dSOKwBpA+XQHkr9G8mhK0t8wS6tuvseMFbzFNtLZB1A/4/I/huNMHt5PWbnzwqtOm
         XYjyyJ3Wuscqh4u6wMKWLbiUB8rs2tLDgwtJko5pxnsGmYkAx7kFF757Jmxldivdc5Iw
         0iPjdoMhnxZCYOr90klbXGQApwbYs2I1R/GqTle1IwdJfX7DFL0/ZO652LxE6coLZI3n
         qvc9/aKWWAUgWWsB4qdb/YigbJuJspTWSirwEaGk4Wpri71Q3fCx/byx/LIv71UaldJX
         GoAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JUyxNm5sHO1NLSLPwcpsRqP2m4PudQDhRAdrpqQJTCM=;
        b=oCTVyZ4W8EYFXa0hsmIx4klhNMGoFSN1d0m4+yNbiUCy7xKIOM/jwdZvgU6yal8bRT
         mwnw18VKndYcWNRqQszQtihhQ8zAlAUMrPAhoJTfxp6Wpht/cpC/FINxVo+qMMENRf0d
         BrTKzdggrHAdBeITcHzkdBc03Buhv3fzsuj4ryJNNfa82qNPqh1jFxkUuVY6rjJj9kmq
         wU+k6NdP9cKsYXnKPO7WfFWkyAidMQd+mEQbi7sIlsLtkd8siuytCuAoysHei3X7qmbd
         b2CB9O5WHkQrV65A26ouhd37Zl+MO0e9UhdzUNYR9AzrJcWKj6AY6ytveJDj05jvkX6y
         YQyg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ2bHp5ZL31IL2wa9jWR2vOFVbcz6zthx8Uh4RLgJt2fN1oPXM+o
	1xSvR+yDMoQQQxTx+KCaIIo=
X-Google-Smtp-Source: ADFU+vtQpFe/PbM9izLcOWsecqon/rP2iACrfezBRoFCTwVBUcrv2YL5tPypu3sHo2x6vf4VNkAHrA==
X-Received: by 2002:adf:9462:: with SMTP id 89mr4061478wrq.197.1583501578348;
        Fri, 06 Mar 2020 05:32:58 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:d084:: with SMTP id y4ls1035257wrh.7.gmail; Fri, 06 Mar
 2020 05:32:57 -0800 (PST)
X-Received: by 2002:a5d:550f:: with SMTP id b15mr4111572wrv.19.1583501577785;
        Fri, 06 Mar 2020 05:32:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1583501577; cv=none;
        d=google.com; s=arc-20160816;
        b=W/dC9VlPGotBHKekX684HYYWWUQjB+Mwcc31IvFjZgVW/J0wc4NdYjoGdmFYB07Gjz
         zQFhogWSNv4nvUe+u8KtFzDiPeXqsFSfKnE605Qv/hv/GSspmO+w8QfjszvX9OOeDIMZ
         +bqggMN2sfXAVooQ+odG1D5lt1TGkwUjBfYFY7U4i/ueJfmMDOonKgJnTGLPOxGXTOf4
         A9F6KRSWvCSJe62myKDgRQAsGzGnlNbhDgtOUjZECExVlHa5V7FcIBojPLJwN/V6LW5Q
         l2owtjnWx5DP7fqDg/5Ntuerubfs/B1LRGpAC2wPZJsdcAm1iPt7Bc0emNrqOF2IqNMW
         t4/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=tNySkC2RF/9t9f+mSuItR8ZtcPzbQvji0jaLxIcNyGw=;
        b=aCRY6Xih1MmL6+wu8OIs1HQSBOO8Gctkkrzwhaa3qE39HUQGiGBzOpF9ts6F4asi39
         CFJ60e6Vq3pQUkwU/OhBzb8PejpTlsmanFo6Ml86cyP0XzBhj1AliorbIc0E6SfmT6Df
         zEOUNxnD4PuWi1Ae6xlSe85Yh1DCl8IQz8A/kms7aas13M0k7V3bq5lI8GvBOx3T4vwz
         NeWhzwTw83Ib82th+m0MM6vqTRqmDiiTE571TjUwtT6fzI9mKyCPznNniSenweMfzUQQ
         d9O9DMla+gd+iEPabCQV1a/TghuMN75X53iuZfd96hg4ZweYZo+Jri5CtAh+Gpuz7LMS
         Qg+g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id d16si106159wrv.4.2020.03.06.05.32.57
        for <clang-built-linux@googlegroups.com>;
        Fri, 06 Mar 2020 05:32:57 -0800 (PST)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id F04894B2;
	Fri,  6 Mar 2020 05:32:56 -0800 (PST)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 3A6F73F6CF;
	Fri,  6 Mar 2020 05:32:54 -0800 (PST)
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
Subject: [PATCH v2 01/20] linux/const.h: Extract common header for vDSO
Date: Fri,  6 Mar 2020 13:32:23 +0000
Message-Id: <20200306133242.26279-2-vincenzo.frascino@arm.com>
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

Split const.h into linux and common headers to make the latter suitable
for inclusion in the vDSO library.

Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 include/common/const.h | 10 ++++++++++
 include/linux/const.h  |  5 +----
 2 files changed, 11 insertions(+), 4 deletions(-)
 create mode 100644 include/common/const.h

diff --git a/include/common/const.h b/include/common/const.h
new file mode 100644
index 000000000000..cc209eec47a1
--- /dev/null
+++ b/include/common/const.h
@@ -0,0 +1,10 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef __COMMON_CONST_H
+#define __COMMON_CONST_H
+
+#include <uapi/linux/const.h>
+
+#define UL(x)		(_UL(x))
+#define ULL(x)		(_ULL(x))
+
+#endif /* __COMMON_CONST_H */
diff --git a/include/linux/const.h b/include/linux/const.h
index 7b55a55f5911..447a5b98d5a3 100644
--- a/include/linux/const.h
+++ b/include/linux/const.h
@@ -1,9 +1,6 @@
 #ifndef _LINUX_CONST_H
 #define _LINUX_CONST_H
 
-#include <uapi/linux/const.h>
-
-#define UL(x)		(_UL(x))
-#define ULL(x)		(_ULL(x))
+#include <common/const.h>
 
 #endif /* _LINUX_CONST_H */
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200306133242.26279-2-vincenzo.frascino%40arm.com.
