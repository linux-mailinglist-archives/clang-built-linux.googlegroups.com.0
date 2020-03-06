Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRBHVCRHZQKGQERL7BM2I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x337.google.com (mail-wm1-x337.google.com [IPv6:2a00:1450:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id 32A8817BEA9
	for <lists+clang-built-linux@lfdr.de>; Fri,  6 Mar 2020 14:33:19 +0100 (CET)
Received: by mail-wm1-x337.google.com with SMTP id c5sf884695wmd.8
        for <lists+clang-built-linux@lfdr.de>; Fri, 06 Mar 2020 05:33:19 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1583501599; cv=pass;
        d=google.com; s=arc-20160816;
        b=jsPJ43NuGkJc/F1ddKtmyj66gHwnLpe0JK25F5IFFX1eVYWu+Z1crXShByZ6LUHgRw
         vSp0L55hbH3kob2G+Z0HR5yn790kJuvgd3wzDVd8p/fUPRg+nSEt2CTeMncZjwOFQ8Me
         CV9K31cVYBat67BarHR5yTyWbWjX+XsIchHnYkhFH7c5DWUHumtknQbAw3OA4gNTnGSD
         iZEdBnIdFw/++fZjfsCFdWiRVGBaVKAgTDc1Mgwwz4QxZgWRcEtjsSiPV1qOHryPaTQd
         TVHT6jNrb2v983leM+SVPnRJcjEWJwk/flWj5UM2K7xXxgEDqgkVbLmVvUDRqmHoZo9A
         nObA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=N0h8hsC/fqbpYqFvRcd/7Xm6AFL2hWE2pYFqlK99Iks=;
        b=Ac4+uOGsoWvsfXcnVcuCVpvLJCvWRZE8I5G2QNV6DoKAWnsSH7kBKtPXUDpMfVB4lG
         bkdpmIDnMXC5M663/I+AHU8ceia8di08259fjWI3p7gyovI0ADGRqE99+Gojy/y4kDtx
         V0wsTZmp8Z7cyHvF+c06huhRfl3Xwyoopr9OmA/WmGcT9OOkiSri2S//3gsIwIu11tUP
         dxYZlEs6+7EbO/c6qLHbxmEwL8eTH8wZ9fY0mwoL3aUCJbrR+IaoxARAcSaw06gwUHTf
         wTQWVMJa4pDc49E210iZqkKBsFH6OMrrziFYDBDOmCXsYpROpfZheeUtztgFgpMeCxHJ
         OsZA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=N0h8hsC/fqbpYqFvRcd/7Xm6AFL2hWE2pYFqlK99Iks=;
        b=HnyAxQy77yEnKZL2IkkCEsU8uryqIN/dNolKi19FoFulXuamOWsIORVJVImIgZ+8si
         LLzShBC0gfHUe4CzqYgfwW4uR7oIt4aAQVusWTAPrvFbsTgn7iMJR4huEvc3nWimJe2g
         cXt7NQpZ2g+Zpx8r9/4bJymv0yePXK29t/se0gghXujPuQGsdGu59LLnMctcx4lvjGVx
         RyyZbWD9laontGE9aEOXLGBe2XAsGKMUxA30YboML9h51ANh7hrkryVBVsuN2vvWsxDn
         otwEz+JXGzCcdhkfCdLZ+Sp8BzXBZ/fFMTHOoOWhY1Y9lIN+pcd93RvbknzSq8y+x2wy
         nJ6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=N0h8hsC/fqbpYqFvRcd/7Xm6AFL2hWE2pYFqlK99Iks=;
        b=HSHvdtVQc72zyu9gDO9Vmx8tuUPvUIW7Seee3GlBF35kUnMyl0eRofiVEiD/NlaEWF
         bqWnN6/60FN4sXnJkUa8Ja4ILSl/nS0tTFG6fa2+QmC8wkV/EmZ3pirnEz7rUr9xeL0k
         a5e0aFyxJlZ1Dg3S5CYS++C8tM5hzjbCDkz6MEIk2zV4xRINmT6rIERpyd2NnyJmMZ+3
         gtmd10/tc7cU5TSyQ8oedR6nMLF6V4BbgU5MFCcItMpGNeniJU0lmkClC20hrmy46Tbj
         kg10r71YCePlpql5pBE/LBfp26sv9Oglim6gTNB9n9NkG6hm5eZvzj5M5sruubC5WFsx
         xZOw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ1jNUo/j8cmaX/hDN+DYJ0aLp984EJkh0wyMymDUl+7ZHOmMBTx
	N9oDK0oU/NBvSWPgpb0kJGg=
X-Google-Smtp-Source: ADFU+vu3ttm4ml4Pfo+Ivgy0eSnAosdD/DJ5qeRd+eCLNf1JtT7Dm4SXf+RvlzuLiCpyyqmHAkPK5Q==
X-Received: by 2002:a1c:f219:: with SMTP id s25mr4210545wmc.140.1583501598962;
        Fri, 06 Mar 2020 05:33:18 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:82b7:: with SMTP id 52ls57649wrc.1.gmail; Fri, 06 Mar
 2020 05:33:18 -0800 (PST)
X-Received: by 2002:adf:e808:: with SMTP id o8mr4018658wrm.8.1583501598430;
        Fri, 06 Mar 2020 05:33:18 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1583501598; cv=none;
        d=google.com; s=arc-20160816;
        b=EM5Hrb5BrPfG70QJ00MZtjjYINHjTyPrcWcafCux/MM1Ia6CbtLii6Dr6XQtzh3d0a
         LyQWftI4zU28f9r43836ko6CXliWQzNBayvW9YZWML5kTN2j2CO2HpLOuUPTGILgHzaJ
         8sX/59+mWav+UztsiT3IoUkDg1UeYKUfuCX0JAgaNRoymlDgMo6KSNV25bB8X9lqzE3Y
         7bpYFUsfUfl5F1jM3Km0SsLdAj7YTPJaoGLpK4zQIpxgunn0WmMg3v5Hodr930f9lMBo
         Aaen6MqRAoc3okqzQ1roGSq5UPjeDPSOdbTNbFsqG3IcDIRALquuJ1BdommUw9WHduUC
         qusg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=Kho25LdnmaJuyRGEui60L4sdGc2nDJoDvgJc2PLzy/w=;
        b=TfiNEiYjjBc7VLSRhcAjhPgZwVFxiGOgI17tNF7xQhgEwtya/EIx9x6cGf0RS4d947
         3BrhzvBdtK8QYAmvjXi70+U1E1cVHnxz8rIcS1BG7UYSB3hkySrQgjO2zkrgXcJlyhlt
         VZHRdEbixrM4eB1Tl6uJ9hpEbQCdNdgxf7A+E1Ckq3d1vACjrhPm8NrZ4jdauvyFKu1/
         mlVX1Nrzf4r6bO/Bm37QNboXgIpiPnpl0PNnVrW9EjlA4NJtB2qP8n2NO27qO8Z1ILDq
         ikpU71bSUtoz6qcvWbrGf2hIj6XAiVT/c+ijj437g6K74SCF/egEKMRcSqlLgIS9er+1
         in/Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id i16si118988wrs.5.2020.03.06.05.33.18
        for <clang-built-linux@googlegroups.com>;
        Fri, 06 Mar 2020 05:33:18 -0800 (PST)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id AE5DD4B2;
	Fri,  6 Mar 2020 05:33:17 -0800 (PST)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id ECC3E3F6CF;
	Fri,  6 Mar 2020 05:33:14 -0800 (PST)
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
Subject: [PATCH v2 08/20] linux/jiffies.h: Extract common header for vDSO
Date: Fri,  6 Mar 2020 13:32:30 +0000
Message-Id: <20200306133242.26279-9-vincenzo.frascino@arm.com>
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

Split jiffies.h into linux and common headers to make the latter suitable
for inclusion in the vDSO library.

Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 include/common/jiffies.h | 11 +++++++++++
 include/linux/jiffies.h  |  4 +---
 2 files changed, 12 insertions(+), 3 deletions(-)
 create mode 100644 include/common/jiffies.h

diff --git a/include/common/jiffies.h b/include/common/jiffies.h
new file mode 100644
index 000000000000..ff0207f00550
--- /dev/null
+++ b/include/common/jiffies.h
@@ -0,0 +1,11 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef __COMMON_JIFFIES_H
+#define __COMMON_JIFFIES_H
+
+#include <asm/param.h>			/* for HZ */
+#include <common/time64.h>
+
+/* TICK_NSEC is the time between ticks in nsec assuming SHIFTED_HZ */
+#define TICK_NSEC ((NSEC_PER_SEC+HZ/2)/HZ)
+
+#endif /* __COMMON_JIFFIES_H */
diff --git a/include/linux/jiffies.h b/include/linux/jiffies.h
index e3279ef24d28..710539d1e39b 100644
--- a/include/linux/jiffies.h
+++ b/include/linux/jiffies.h
@@ -8,6 +8,7 @@
 #include <linux/types.h>
 #include <linux/time.h>
 #include <linux/timex.h>
+#include <common/jiffies.h>
 #include <asm/param.h>			/* for HZ */
 #include <generated/timeconst.h>
 
@@ -59,9 +60,6 @@
 
 extern int register_refined_jiffies(long clock_tick_rate);
 
-/* TICK_NSEC is the time between ticks in nsec assuming SHIFTED_HZ */
-#define TICK_NSEC ((NSEC_PER_SEC+HZ/2)/HZ)
-
 /* TICK_USEC is the time between ticks in usec assuming SHIFTED_HZ */
 #define TICK_USEC ((USEC_PER_SEC + HZ/2) / HZ)
 
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200306133242.26279-9-vincenzo.frascino%40arm.com.
