Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRBE5CRHZQKGQED4RLTHY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x437.google.com (mail-wr1-x437.google.com [IPv6:2a00:1450:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D00117BE9A
	for <lists+clang-built-linux@lfdr.de>; Fri,  6 Mar 2020 14:33:07 +0100 (CET)
Received: by mail-wr1-x437.google.com with SMTP id t14sf990262wrs.12
        for <lists+clang-built-linux@lfdr.de>; Fri, 06 Mar 2020 05:33:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1583501587; cv=pass;
        d=google.com; s=arc-20160816;
        b=llBqDH27dK2t7iCirzVeahtv+odzRtaElOMIIqiPTuTyIJW4rPrxhsAZoAcinPz9Br
         rSzv0SM1jnMe/6cl0wqNc78Ld9++34AB7plBMrSybJjkgE3onodoVqiasqVADjgQR7o9
         ZO9pwrF6xYNPHRk5/5ASrd7MrYBA5WTv3H5np6BIB9uEUsTk8CueTcCVtO634C8SFuL3
         hO+cdzxjD1XId22VP92v1xTesAdwFnn8tgGeFpAmxNe4CmVtrQehd+1wbZBe1F7bUSoJ
         aR41B+tM4FoAdkJY/dShyF3KVLAuou8wiTZKLT/9SEoHS51QyhcuLiE3fEJqfHSFo2Sz
         noVA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=WBKfUXhFLOW9ihD8UP3ZjKC/oKWahmgMf+c08r2iS4Y=;
        b=x8DkFjVscxxxsnMZmExjsVAoqx75fc+NzIXiFvqPXCFw+EbYHrVo4hLvzx8UXfhm17
         SyhlQW8lt/a+OTmCUQFmskK+XXMEz8JuXf23HIbDQB6FrBAD3nmtDS8UDt4ooobxAJfq
         bv5XIUlGrA6PUONOLtPEag4xAJH4MwCed79qV/ntyv22QFfqEWVV2jSRS6qgg+cJ5X7Y
         6mrmYGsy1PRd7slprmsrrjkpLQUueVmPnWb4opjiTDTaj4Qa7KG4G29EmZWkreJfvL/B
         zJLeW/xJo3KuLEKDaTJ8HmJp3pUgXy4F7gLuwSiEFLP0SZ/JZCBRVklBBmzS3u+PWkEI
         9g+Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WBKfUXhFLOW9ihD8UP3ZjKC/oKWahmgMf+c08r2iS4Y=;
        b=VR/HrtW+QofmrYeTRO40hP1wBHnCuihoLBbvxeKYY193gdzLSIuL9YpSNPz5PE2jca
         TE94sT4aCy5ZBLm+360D1KkbWstsnUw5fzEXPHpaOo2zHoX4ojWVHpDmvM/lbMNKrvtC
         FxF93+e6MMHwHvuQWDYndkH/rK/uuoOnVj62NBbiR1lXJ9NLE6wcwDOD+s/coJf6R++s
         Zza5iPiQuiZWRUTiGfuVJ6ONOpTyYbT42wmMNl6avhjuiCA6sjf7CAjTKS+762FadSde
         RF16EMKiNkkL/l3SM7eC6wBhCXSbxpg9cPhPAT9/GPm4rmOpGTw4wHhG/4bT3BVMS1Ii
         N1Ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WBKfUXhFLOW9ihD8UP3ZjKC/oKWahmgMf+c08r2iS4Y=;
        b=OKWpq9pYXFqGgjXWTsnQRSLIBSavgqvupab31lkoo8rwPxqzQJ/kwiqYPXxbVaFmHM
         efCsb5l0FjlNHRfYDMw1q402YaQycXs2oyPUyQqIqEZndJ3JbEIxk12VBRg0A8ol0oMc
         xizDQ4AoqWJUv1m+7Nq9p4TjzSbjEl7vvTxK+i7H1JrxgSHk9ybx95a0paZ6ibSzDPdQ
         A2hMTz46GZLlJckhvQNRtIHM47ebP68SlRSqUplQ7K586Udyhz7I87xLpXSZmSh53Xyt
         4FBJKtVlg8yxzt6Commh2NIPORG9qkHdv4vuchtP9BjlgT2u4qNGdwp/LBww6vS3fGKI
         yahA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ12xAXfzKf2B1xvLtiwfixYcSkw7amcHvayKJYEcl9dtI9MQg7Q
	Cxos02IBC8N0++9+fXhcFYI=
X-Google-Smtp-Source: ADFU+vvGHVYdDzGNHmt3R8uGTOW3bgh01v8br0BDXcI415cFnYamUOCX8U5E8zPH9QSeUi0NDP7RUA==
X-Received: by 2002:adf:f08e:: with SMTP id n14mr4017783wro.367.1583501587108;
        Fri, 06 Mar 2020 05:33:07 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:d084:: with SMTP id y4ls1035444wrh.7.gmail; Fri, 06 Mar
 2020 05:33:06 -0800 (PST)
X-Received: by 2002:adf:f84d:: with SMTP id d13mr4201527wrq.92.1583501586583;
        Fri, 06 Mar 2020 05:33:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1583501586; cv=none;
        d=google.com; s=arc-20160816;
        b=atXwrM8MtZOMGJ6Mi4v1uZWqQb8K3CIVkyEBElWuPyCZAzanL45B/T3LO3+YTUSQcM
         XFa9F9GBRxAplXICtgw2vz/NW5+/4L48NgIWbjkXUVu74l0i2Wm3NpR8iEok6CUfXNMM
         ckX6efpYKuZy3rlHFOg2obq+v+dkgT/ARUlU94ZrCtgRUJXLTChrz5PZkIEYtY+yZdTT
         C6FktkU14AegwcNaDd/QYaGUA7fkZ2iFrYbLhNiy/IWnWGj1w/YaPBg/bEBXV64pP4Ag
         L9ukQWOWhhOaRINZffFL4JB6PyeQCBNazKV3ZyVc5pdn2stlU2Gi+FGysywKcxxfsEiN
         ywRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=cItu4gvtM5j7ZLMdp3xv86JN+pkSn3ZDYWEWFaBdSo0=;
        b=KSwcJMW+fzIQDM2JFVqqlikmoYYWYr0x7Y2pv+oQ0AVw/VcERTTAd6rQEtwplvSuEB
         ecb92j1xkXcocCg+66Q473yZ9JlHO5OrkbqfvCaiHnHbC6d+CBTl10bkQT4A0Jztzim1
         wNzIkvwt5cgZoP3GDlefj43/t1zp8aI1xOwDrIDiWQrdicaaQRQvleXqhAohoPSzZXVj
         qHFDp0Sd9tenomeXSAa3F3pXPDPayhzhYFYtOR4y/lKb+j+S52HLyw/sp0Zbb4v88G9c
         9FiptIfOwUL3VoprUXvL6wCSes0LLbDoVEAofTFBGrpyzW5xiw9l4uYLo3HuEF2KZtRh
         O6iw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id f1si71434wme.1.2020.03.06.05.33.06
        for <clang-built-linux@googlegroups.com>;
        Fri, 06 Mar 2020 05:33:06 -0800 (PST)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id D26A131B;
	Fri,  6 Mar 2020 05:33:05 -0800 (PST)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 1E0EE3F6CF;
	Fri,  6 Mar 2020 05:33:03 -0800 (PST)
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
Subject: [PATCH v2 04/20] linux/math64.h: Extract common header for vDSO
Date: Fri,  6 Mar 2020 13:32:26 +0000
Message-Id: <20200306133242.26279-5-vincenzo.frascino@arm.com>
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

Split math64.h into linux and common headers to make the latter suitable
for inclusion in the vDSO library.

Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 include/common/math64.h | 24 ++++++++++++++++++++++++
 include/linux/math64.h  | 20 +-------------------
 2 files changed, 25 insertions(+), 19 deletions(-)
 create mode 100644 include/common/math64.h

diff --git a/include/common/math64.h b/include/common/math64.h
new file mode 100644
index 000000000000..4e1870e40182
--- /dev/null
+++ b/include/common/math64.h
@@ -0,0 +1,24 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef __COMMON_MATH64_H
+#define __COMMON_MATH64_H
+
+static __always_inline u32
+__iter_div_u64_rem(u64 dividend, u32 divisor, u64 *remainder)
+{
+	u32 ret = 0;
+
+	while (dividend >= divisor) {
+		/* The following asm() prevents the compiler from
+		   optimising this loop into a modulo operation.  */
+		asm("" : "+rm"(dividend));
+
+		dividend -= divisor;
+		ret++;
+	}
+
+	*remainder = dividend;
+
+	return ret;
+}
+
+#endif /* __COMMON_MATH64_H */
diff --git a/include/linux/math64.h b/include/linux/math64.h
index 65bef21cdddb..54eb486b5d1a 100644
--- a/include/linux/math64.h
+++ b/include/linux/math64.h
@@ -3,6 +3,7 @@
 #define _LINUX_MATH64_H
 
 #include <linux/types.h>
+#include <common/math64.h>
 #include <asm/div64.h>
 
 #if BITS_PER_LONG == 64
@@ -142,25 +143,6 @@ static inline s64 div_s64(s64 dividend, s32 divisor)
 
 u32 iter_div_u64_rem(u64 dividend, u32 divisor, u64 *remainder);
 
-static __always_inline u32
-__iter_div_u64_rem(u64 dividend, u32 divisor, u64 *remainder)
-{
-	u32 ret = 0;
-
-	while (dividend >= divisor) {
-		/* The following asm() prevents the compiler from
-		   optimising this loop into a modulo operation.  */
-		asm("" : "+rm"(dividend));
-
-		dividend -= divisor;
-		ret++;
-	}
-
-	*remainder = dividend;
-
-	return ret;
-}
-
 #ifndef mul_u32_u32
 /*
  * Many a GCC version messes this up and generates a 64x64 mult :-(
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200306133242.26279-5-vincenzo.frascino%40arm.com.
