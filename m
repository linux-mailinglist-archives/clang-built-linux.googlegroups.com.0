Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRBHFCRHZQKGQEHEK4USA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x337.google.com (mail-wm1-x337.google.com [IPv6:2a00:1450:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id 66D2017BEA8
	for <lists+clang-built-linux@lfdr.de>; Fri,  6 Mar 2020 14:33:16 +0100 (CET)
Received: by mail-wm1-x337.google.com with SMTP id 7sf887567wmo.7
        for <lists+clang-built-linux@lfdr.de>; Fri, 06 Mar 2020 05:33:16 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1583501596; cv=pass;
        d=google.com; s=arc-20160816;
        b=deoqL+VrgdayvFJyEqb4BqvndIxI+O3StDn0PdXfS7Jjl75FVb0nGPsRWkmg/O+y7Z
         pb/J54XJx+ry5f7soegchTJuK23YQ5se9dvLOnjnPc+GQIqrNC7tHR501vGLKEvuMtey
         M0J5tMqoOMmaiwkmUAHD3mcWHFukyQ6gfQs+/IFXcyXKBxTeHRIu6ec02GNluCkbHRgP
         XRBvROPRszG2SyuaopMxtIVIwJQAChgg9agIOaXdJRY/v/1/TuiSLqsyLp04HBvpS/vk
         vEEzIplXN1SEEImV8FfA+/zHlCM3LcscxSzxle3FAGW0zcmLUEMvhCzaW3+HvJoWjbc8
         CISQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=Ts4oXlMwhtIbZX65zwWED3A2qi4b0dqymlDiNMNsPjU=;
        b=Wzx7k1QysymQwdn89rQri5V4LnVZ3TxUMNTJvfVhRW8oAIWPdw3+/wGhHOi4Mh6j9d
         cZdN+yY+JKwB7+jiFw9KCWynt0ntfdRhRJYVWxn2PzYrvZydOG+vIpo7QdLp7YPaw6ww
         5fdecTeizwDrZbAATmeeuG1C++DIUI62dzCyKt3ruMyAvCOPWpkWyhDcOBPYwV8Rrgc5
         C10zDgGzWF3KqoGR4DOil74YRwj+8lmtVYfU2lF3QdlhVpT5H+DWMllNh4psB/Cs6lcC
         37I3wb1KNMtxp2ZPX8fZOiOr6bpxorxw1a1flntrE0LojEccyuAQ6zamJI1kedYNLpn0
         UyNw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ts4oXlMwhtIbZX65zwWED3A2qi4b0dqymlDiNMNsPjU=;
        b=P/D54EwAgi4ybYmyfILyadUHSCjTjSaOcswghSffDf8BnuzVFi4CHlLV7tu7oxsHqW
         ajQhWL5Mvvohy9afeXazUIrL4/tDHK0xUTH0qHyBC8xcTpRVCIWA6vEe8rjnGpEKLvPe
         gE/JZhFDZnBA6g1FjuYxeFYxXUsSCH8W49AGWBiLclLwtezp9l3ObaGxyjzrjdaVIiu1
         ovJqlLYec5W3gmEgAlV7epHXpvidLJo7rCc11H1lyrR69flpx1P7anpE8uxUsbnP2bk8
         PPjLgNLXD7lV80bOCwRWDF3BBfRjji03H4mzmdLp66Gk8sYLW2colHxy16FDuDfPSxgt
         dKUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ts4oXlMwhtIbZX65zwWED3A2qi4b0dqymlDiNMNsPjU=;
        b=CXaUmKp0ToDFU+i+zFCY/bcLhoVuX6Ge5HBRvKo/fT9CRl+42Nzbza10Uk38bn5vvi
         wD2VEkFFEEgf4DDGFi/uq2uPPlgRW6pfn5zCWNt1KAT7WatRyseIgh/W0QyTFErVu4Wg
         rdmQoob+VkQuqvYebER19a8oUTZoht7k8oN4MCJzKPEe45wvC9hF7IXnII1G0sls3DSu
         z0/gLbieNjS1nwnTVvFEc38ooccBSLs0ZRAR19UZ4Y30J67bLlaazGjjiUJQbqy/VUOu
         NQ6nGIdnioDg91IpqW40ahGdan0R82w/JqzFsgRR8k3LLSGmSxaV0R3HyQxZ+gddN1GM
         I/6w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0sMqlo8XTSarb5YiXg4c/iU7kIAPLZE0CgSqZedgNzrAUQJWdh
	gNGWYbKYIWaLdJ0rHI3K0eU=
X-Google-Smtp-Source: ADFU+vssjs9kfbemgTXnbgsi04TIIBHqrx/NYzrzsPqgWudwNvIv9pSPYv+XHMRt+3DMqeDJoA6R3w==
X-Received: by 2002:a7b:c4d9:: with SMTP id g25mr4248374wmk.121.1583501596173;
        Fri, 06 Mar 2020 05:33:16 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:508e:: with SMTP id a14ls1046914wrt.2.gmail; Fri, 06 Mar
 2020 05:33:15 -0800 (PST)
X-Received: by 2002:a5d:4247:: with SMTP id s7mr4318464wrr.66.1583501595504;
        Fri, 06 Mar 2020 05:33:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1583501595; cv=none;
        d=google.com; s=arc-20160816;
        b=zOUPTx0eiCBLf3iZAfgfEw+sIFqaqHmcw/CPOvav9PnzTHa11TRi5Rsrb4SBvF1kcP
         NnWSjYNDHCrFaFsRvIBIvqT6LxTpm8JwigX8E00VbP3zt0oegIOhCdweeW9ViAlacACa
         bOwMKAj/qSGfgtXRU2uYX4QWzOHm7HoBWsKtV7FHzLnk1Ssz0sOxr0zEUIeDqDCYuWCD
         hbFLF5cQLOOHy+x5hhoH+2bE7Cz/Pix/ZoSSNjLao9Ub+1iMo8ayBpO7gupoj4efNpXN
         hRRrSnIscCrmWITIxU0CJBSI3DAR3KbIjWr0GzBt9LVIHgdhKx9LXkfybpG6O/FD4Rcp
         wxJA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=PfBgg3F1queAS6eFOhOQEpdxG8VeH6gXWcByfa5O8uk=;
        b=malU70MpjO4zL8XOzKOEAEVghAms+9UN5r6axzi7jLig6IEwlCwwuQ0AK5wDpONDUD
         Maejpx8FdQdRia1ErgTLi3e0NU4EB+S2/WIcr9uk9+C4FfbtQAerYvxlPkJM4Wo4Uq5S
         nfUtyTUKcd4LxQgsSTIm9Td72O+xf+pYUTVNkvlFUFDQ/1dhYz+wKb9HWaU5qsTBBcsA
         3xLKi4AAAzR18g05yGO2pb0fPDA6gKjvZEuiGeuJyMYPCMKSULkwOdfa09UpIsOjx19J
         xAlkDrRBYZ3B5hzFPAJGuBqgBigO8+U5qeN3cpoeIUMvZ3b3Us/fcFk77AUeFzzL5/hy
         NTxw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id y78si116876wmd.1.2020.03.06.05.33.15
        for <clang-built-linux@googlegroups.com>;
        Fri, 06 Mar 2020 05:33:15 -0800 (PST)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B900A31B;
	Fri,  6 Mar 2020 05:33:14 -0800 (PST)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 00F583F6CF;
	Fri,  6 Mar 2020 05:33:11 -0800 (PST)
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
Subject: [PATCH v2 07/20] linux/time64.h: Extract common header for vDSO
Date: Fri,  6 Mar 2020 13:32:29 +0000
Message-Id: <20200306133242.26279-8-vincenzo.frascino@arm.com>
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

Split time64.h into linux and common headers to make the latter suitable
for inclusion in the vDSO library.

Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 include/common/time64.h | 14 ++++++++++++++
 include/linux/time64.h  | 10 +---------
 2 files changed, 15 insertions(+), 9 deletions(-)
 create mode 100644 include/common/time64.h

diff --git a/include/common/time64.h b/include/common/time64.h
new file mode 100644
index 000000000000..ff5a72fafb30
--- /dev/null
+++ b/include/common/time64.h
@@ -0,0 +1,14 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef __COMMON_TIME64_H
+#define __COMMON_TIME64_H
+
+/* Parameters used to convert the timespec values: */
+#define MSEC_PER_SEC	1000L
+#define USEC_PER_MSEC	1000L
+#define NSEC_PER_USEC	1000L
+#define NSEC_PER_MSEC	1000000L
+#define USEC_PER_SEC	1000000L
+#define NSEC_PER_SEC	1000000000L
+#define FSEC_PER_SEC	1000000000000000LL
+
+#endif /* __COMMON_TIME64_H */
diff --git a/include/linux/time64.h b/include/linux/time64.h
index 19125489ae94..3d8b3739e885 100644
--- a/include/linux/time64.h
+++ b/include/linux/time64.h
@@ -3,6 +3,7 @@
 #define _LINUX_TIME64_H
 
 #include <linux/math64.h>
+#include <common/time64.h>
 
 typedef __s64 time64_t;
 typedef __u64 timeu64_t;
@@ -19,15 +20,6 @@ struct itimerspec64 {
 	struct timespec64 it_value;
 };
 
-/* Parameters used to convert the timespec values: */
-#define MSEC_PER_SEC	1000L
-#define USEC_PER_MSEC	1000L
-#define NSEC_PER_USEC	1000L
-#define NSEC_PER_MSEC	1000000L
-#define USEC_PER_SEC	1000000L
-#define NSEC_PER_SEC	1000000000L
-#define FSEC_PER_SEC	1000000000000000LL
-
 /* Located here for timespec[64]_valid_strict */
 #define TIME64_MAX			((s64)~((u64)1 << 63))
 #define TIME64_MIN			(-TIME64_MAX - 1)
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200306133242.26279-8-vincenzo.frascino%40arm.com.
