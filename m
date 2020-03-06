Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRBFNCRHZQKGQEXOPAYWY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53f.google.com (mail-ed1-x53f.google.com [IPv6:2a00:1450:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id 416C817BEA2
	for <lists+clang-built-linux@lfdr.de>; Fri,  6 Mar 2020 14:33:10 +0100 (CET)
Received: by mail-ed1-x53f.google.com with SMTP id y4sf1674241edm.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 06 Mar 2020 05:33:10 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1583501590; cv=pass;
        d=google.com; s=arc-20160816;
        b=IQqba7VLru6N0YDjNUJRCJEhrGIYm6kofgaaNeddHncc3HX7ty0JhLEJuoHh83LOWP
         E9Y1i8J7zJaHZ/VRj22oN4T0PTTBwiUTiHYulasQ9lbUktxmO9aVK088KGeGLFDHr2lw
         K5hL/C07D2qG3fBkllYXA58bJ/cMda7A7vAccbNo1oIu94OrvG33CEkdhK+MtCiI21C4
         4MMX2+FlYvPadfrt65Uqra9q02q4ETS4DKKdNvle8SKrgZl7mDhxZef5LtgvxrzOw+4k
         tqcDgdxGvI0qpw4RSgnR0dxx+xwz0DGDOz1DX9bwwHMRNR8mnEG4uQT5fS1FJXsIkCyd
         jUAg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=vSnrYZOahZxQkCyUmUsgzZc5FT/FzY1eGc1/IZrvyhU=;
        b=AIMI5hMDze1aqLjjw12ryPVP+Wm7S9dfwN4VOrBz8TMgResWHemQgaVc0IOnoZder4
         ARAfEznTjC8NC0ViHsf7JAK68NjZp5865D2eEdFycOxaU7eanSIYgPQu0cykd35wC6xj
         FmeXrlx0rGrK8JjebO37pSOUtYaESyOpIoo9FEKZ8kZY38PaBvSRJEu8sU5cwd75qFty
         AC/VIrdTO9TTCFKpcZd8ymPHmYo+o8JBOCuGeSbwpWcNCInyH/Za/Ukj6ffWSh+pVqVQ
         15Yk/fr7mf/sIyX89DythYFyqOAFOUAtdnq1gegJoJKv60Dq23sX+L2lUMSHEQff6EJm
         FGsQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vSnrYZOahZxQkCyUmUsgzZc5FT/FzY1eGc1/IZrvyhU=;
        b=lUIQUIcmi4TZUGFbupN7OHJXjvNIXFX6z9c/933m7eo57prYFH1Db8R6GH68ZktSvV
         Xs8arGWkjdM6v+qIjHyTCjQQQif7WOjDm1zPlzwrMLOq9bIO1rdts++235nk1VBZRC59
         3wKCorUbPfu5FLeZl8X8xbSlZi1Sl/sLJfpoCoalAEatmy8xju7COYjE2djSqWmu3Z53
         JDQbbk8t/oDfi2DeA3JbJH8OzM3L14N80Jo0vyYNqqAW1uvSk+yxFrword837Kk028At
         gWlLcUVkdmdHjvUYAxDy4BJvFaEUbXOuW6wcPA1Vj3+nmY1oV9W39Q2um2FkNVykUNRY
         +SeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vSnrYZOahZxQkCyUmUsgzZc5FT/FzY1eGc1/IZrvyhU=;
        b=QiDpfZr4vGnqCqwKQFFrhutMBsAiNZkoO6rwheoOPDK9y3qY8862vwcWGMSABRvOgu
         uF1CYXK7mFG18PxPV7hrNwao0Hhypn+jFaRMndCm0Aa08+BPY5X0ZDkRl5x3L5k1tb2F
         UoedRIk3kwWVgZNg6qIk5ZsMfDMvyuaJa7wDiweNyCdUPXjEZG4cyKeSaK7tqxCRWiAg
         7AyRGzhyPnB+fq8231VZ+Mag1GB+BeFFCgBDRmJroEVicQuR/tJmWBlgLVuuu1Dk1gtR
         A3mEDgTVm6A+6kYaMqCjT8/Ghs6Ve3LcYKtyEuOOLK13zyAFrhSnGNVjODeWidb+jJBB
         X+7A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ2ddkkGJsJTBffJzLJVck+tiE7wyujfrtwFjLIUhvvu94msXCpL
	47F3ng+HIaltEbuu48RFMrg=
X-Google-Smtp-Source: ADFU+vvd7UTehgXcyli2A9V7PT221vuIUgM/Rx35hxO+YvT3zvDG2Rd4uVEuy2plDIG0JILV+Yo/OA==
X-Received: by 2002:aa7:d91a:: with SMTP id a26mr3227486edr.185.1583501590005;
        Fri, 06 Mar 2020 05:33:10 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6402:a58:: with SMTP id bt24ls1167325edb.2.gmail; Fri,
 06 Mar 2020 05:33:09 -0800 (PST)
X-Received: by 2002:a50:d70f:: with SMTP id t15mr3232936edi.141.1583501589487;
        Fri, 06 Mar 2020 05:33:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1583501589; cv=none;
        d=google.com; s=arc-20160816;
        b=RazdAyXv2e+R9oZ7mt2Uf4lRl3ItJSfo9ge/RKi/Nn+QyTi6zXRUxceow6sYmiQONX
         pMyA2atRkl7Djxb75CFpq4NqoOcQ76VwDcZ/aoUFqkItFPo06Y4qzFciQ4r1uCMzyuI1
         jfm4n5Zq0v6ngNrnVr/sLTKU9jAaASG9Dt8IT7YuGRBo4OeKk8qNJlO044o2XwvBCVM7
         IWE/WTg5tRWt6aeMn7N5Yq7GzNhLwYPRSTmvDnmeqT11Y0hD+glfnH9wzyM2ghUlmvFG
         LgWzg+mPPpU8j/TRyK+XM2FhRXeiKXb3VV0JEzJHW3uYGYpfaqP8SgBJWy5EwWTFTn/n
         Ac6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=qB0Q6kOUEiXJ/HxwqxLUQaEZydfSnJExTb/Upw/zDQ4=;
        b=OgWyB4oZJq4Ad5/YVjIEtOWvW+aDSaCaHck3CwMIikIuEBNl38HrD/AoUJU5nTYz54
         s4TkCl+zYAOq2FXDVx+801FPOi3X4PCySP8wWZpeO49K7dxQ3vwGhK/qfqCIACzSJha8
         nT11sT6b03AgnAPGc4GynF1BY+S5l1hvpA8ApP5v1kZpz2+XDLwmF3jnPrPcUcUCJ29f
         /WXsYSuUeaaR9UNUfj4cXTB9cHsadXDzYsBJ0EH+mCWJsl+PRps5BG6C4d/kX41AYZw6
         cQybT4zWOmQTcn6uxjlg3IVAtVJaJ1XiJzF+f/ViOX/lG224L6nKXnLQPEiGjhNDy7/H
         mzkg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id h10si154521edn.1.2020.03.06.05.33.09
        for <clang-built-linux@googlegroups.com>;
        Fri, 06 Mar 2020 05:33:09 -0800 (PST)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id C83834B2;
	Fri,  6 Mar 2020 05:33:08 -0800 (PST)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 13A6D3F6CF;
	Fri,  6 Mar 2020 05:33:05 -0800 (PST)
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
Subject: [PATCH v2 05/20] linux/time.h: Extract common header for vDSO
Date: Fri,  6 Mar 2020 13:32:27 +0000
Message-Id: <20200306133242.26279-6-vincenzo.frascino@arm.com>
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

Split time.h into linux and common headers to make the latter suitable
for inclusion in the vDSO library.

Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 include/common/time.h | 12 ++++++++++++
 include/linux/time.h  |  5 +----
 2 files changed, 13 insertions(+), 4 deletions(-)
 create mode 100644 include/common/time.h

diff --git a/include/common/time.h b/include/common/time.h
new file mode 100644
index 000000000000..90eb9bdb40ec
--- /dev/null
+++ b/include/common/time.h
@@ -0,0 +1,12 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef __COMMON_TIME_H
+#define __COMMON_TIME_H
+
+#include <uapi/linux/types.h>
+
+struct timens_offset {
+	s64	sec;
+	u64	nsec;
+};
+
+#endif /* __COMMON_TIME_H */
diff --git a/include/linux/time.h b/include/linux/time.h
index 8ef5e5cc9f57..617a01e2c8bb 100644
--- a/include/linux/time.h
+++ b/include/linux/time.h
@@ -111,9 +111,6 @@ static inline bool itimerspec64_valid(const struct itimerspec64 *its)
  */
 #define time_between32(t, l, h) ((u32)(h) - (u32)(l) >= (u32)(t) - (u32)(l))
 
-struct timens_offset {
-	s64	sec;
-	u64	nsec;
-};
+# include <common/time.h>
 
 #endif
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200306133242.26279-6-vincenzo.frascino%40arm.com.
