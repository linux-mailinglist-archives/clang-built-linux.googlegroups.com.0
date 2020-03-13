Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRB4GUV3ZQKGQEVL662NY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x437.google.com (mail-wr1-x437.google.com [IPv6:2a00:1450:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 99ADA184B19
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Mar 2020 16:44:48 +0100 (CET)
Received: by mail-wr1-x437.google.com with SMTP id c16sf4525932wrt.2
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Mar 2020 08:44:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584114288; cv=pass;
        d=google.com; s=arc-20160816;
        b=YMfrjMwoqaxGWEX8Xv1NZV5sc12sDk/VxI1sd7VBXn0JUlOHQ72C+ulUOghNSodHac
         g6SWL0igtlVEX/OcYQmiY6CSAIjydp+4W9xeaMbUubVD8PmnGHP/IPOQ37NUd7EgpSBk
         9MWBgo01YpMkXOC0e9txKuf65M9TqOcZCkiUw6+24pYuBoFeYbG8C4kmukBb1uk3HmbV
         rbAN4kEeFspaNhlQSWUk0Gz1hUcnQhkZe6u2QXwMIoj73tn3Eror+xpoufZdfl5qpwDh
         oo1stjbblNTAHIjWM7IcHKPRTlR6d5q9iO5bPM9dU6RGwBpn3D1lHaOg2SIfKNn5vqH9
         WgzQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=/hp9LVYYBUupWKPXwsd3kk2rq8bxsMK3qto8CrU4Grw=;
        b=xbLMh52vSV9DYPUHI8laXYLDxg/fEgvCZZo+CrMNfe0aGAjAIvBy1fCrzApVgYaH7D
         1uhWEun6aHGyZesDa1gTW5RkqQysP+aSD0fbGFUFtybbzdmY70CAdmyYbDB7MRI1ZsK7
         jrIrrYuFMLLvDijhNlCtmBx8D7DQ5eEKH/SyNKWbXCR3nu3sTN0VaT1MjBMS5JAg3zqL
         Kr75NUTs517Sbymwbbj/TLcvklOtprC7JhzEij5+50Ss8WNu/uzqi1owyGB1GV1Lyj36
         iXyiAwrWGpZOYSARjgJuD9pK7ngv8Wxb9OP7EVLdqctYAeso9wszE8e47i0Je+arH+9O
         nlCA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/hp9LVYYBUupWKPXwsd3kk2rq8bxsMK3qto8CrU4Grw=;
        b=qbvsun/XfiyiDxeOl3LzEkvJ3gIhlsTns0RgeitDqafnzEy98rh1xVfLXx27BkyB6+
         K9Q9Up2XmRId5KfOI6EDWxv5r8D+sH4x9EFtQoOYSS+sYlD3+T8NQgoFBaq8FPxzbr4w
         FeYVSJOdVovO8yYYJj0zBuuVHj1BWP3+/7rvtU+2d1DODfkMd/Wrw7XvAbV4hXzvEE4Z
         oXwiBwPFssxG+n81wf0tF+QzvNxVwgdjXLirF46YnBpcBRWHIO1leQj8ic4YJPhz8yWx
         9z13NyUVXQiO1SvTX19ORiDv7u5Fv6Y7kr2OvV+Y2Xj9QhoJZnDY17GFQROb0kSSUd7r
         GkxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/hp9LVYYBUupWKPXwsd3kk2rq8bxsMK3qto8CrU4Grw=;
        b=nNofveiiPVtkJGu+fykjndj25r/wOm51oFMze84oN4pST16HgezLLTJisjWqy3xdpU
         mD+h/KiyKECGVCGvnav7Vj7Skm44H6U6XNDa2oXJz29SMZqf2fYuFRGdeDgwNP9RUl5I
         wJilCKouvGtmFp7thgVMv0qzvf3NNwbZO9xEo/k8zY/nTlRzfKGwnYVueDHZCWhGKrh3
         U1sA0oBry0eVAEqaSzzi1k+sE+4StdLRAaahcDLhfRToT7sKZn+DbUO37myASezde7KK
         jYf1oE3vCnIQBfq7AjEKE7g+A3qBJJgNhMG6qVGqX7muSx6MrQ/plBW5koM3/3bb5OG7
         U8oA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0ReDw7E5KlZ2Aa8H/dumLIyJrTUfbtYBjjHMusi/wJwzqd16SH
	Gl0T0U5ilDeGyIPZL37X4pw=
X-Google-Smtp-Source: ADFU+vtUEfwXFjYNhO6BdKft5ota4jLc1nGKLmTBRpSwFqQbdq/1N+cl8Vke9jbm6nXEe7Xu2bYqzQ==
X-Received: by 2002:a1c:2358:: with SMTP id j85mr12211202wmj.137.1584114288366;
        Fri, 13 Mar 2020 08:44:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a7b:c4c6:: with SMTP id g6ls1598119wmk.0.canary-gmail; Fri,
 13 Mar 2020 08:44:47 -0700 (PDT)
X-Received: by 2002:a05:600c:2c2:: with SMTP id 2mr11459115wmn.95.1584114287839;
        Fri, 13 Mar 2020 08:44:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584114287; cv=none;
        d=google.com; s=arc-20160816;
        b=Cjccm6vKCh8+BZm5fyewq5nwRt9hXvlFJyXJdfIlVh/S91yPAEJJVkIvmC4v85fVzO
         W9K4xK73OFhLwBmb89dv8DcS177jWMIU3t59FWGJ3VDktYaCpIrR92dhgR7Fpn6QNjRk
         IPhOa5SeQsgNOK1ao1/tnmacHy/a4ECcREKV5AH1bGTeJ/VVtFGVlQlue3dsyG3Kopmh
         Ao5mrC/DwSCA6z3UmHgRJt32dsrb8wRpnjH+bnCc8dm2h6JlUyL3Idyt/prt/gv6oSFB
         ifZdVbHA6oVsnrwUj5eiwF5+NKES8YUSFQSEfozh/O70QTrtPUwf5K3y+lg3IgB97f7y
         ai2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=t0F5ADgsR0Kg2pUEsxYkFxQJYb/gmJmRh2cgbj2p3fE=;
        b=zbtMFXuWV9RItNvyWGpRBCterXv8l4j0y1dIKRsBGcl+ft/z67sT4SrPP/LzhSXE/R
         B/D9nb0+Zs1CpgDVYR+J7/SN/GoAtfQjXZ1u2WHDQQ0gnqfp1nQZwP/W14edXbA7EsH7
         CKD/a8ap9ySjinzBLtd6GFEHqPFMedOSoA6WUcr4Kv2+CFn16YSLR2/TogUctlTDLxOb
         ukgy2d6ue1L6r8QKZBg69yY3qLEO7N0oO67btbcLek9TJSgVRN9ev5Gja9obO9Zwitc/
         iWjmYTNKiPiUhwOt3qJS6cGz4EaVQ41WomZmXo+zGE/7sMDkMNp+Xdl7ETqf/NasF/Sv
         b0Ng==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id s2si411557wro.5.2020.03.13.08.44.47
        for <clang-built-linux@googlegroups.com>;
        Fri, 13 Mar 2020 08:44:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 262EB1063;
	Fri, 13 Mar 2020 08:44:47 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 2FEEF3F67D;
	Fri, 13 Mar 2020 08:44:44 -0700 (PDT)
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
Subject: [PATCH v3 13/26] linux/jiffies.h: Extract common header for vDSO
Date: Fri, 13 Mar 2020 15:43:32 +0000
Message-Id: <20200313154345.56760-14-vincenzo.frascino@arm.com>
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

Split jiffies.h into linux and common headers to make the latter suitable
for inclusion in the vDSO library.

Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 include/linux/jiffies.h |  4 +---
 include/vdso/jiffies.h  | 11 +++++++++++
 2 files changed, 12 insertions(+), 3 deletions(-)
 create mode 100644 include/vdso/jiffies.h

diff --git a/include/linux/jiffies.h b/include/linux/jiffies.h
index e3279ef24d28..fed6ba96c527 100644
--- a/include/linux/jiffies.h
+++ b/include/linux/jiffies.h
@@ -8,6 +8,7 @@
 #include <linux/types.h>
 #include <linux/time.h>
 #include <linux/timex.h>
+#include <vdso/jiffies.h>
 #include <asm/param.h>			/* for HZ */
 #include <generated/timeconst.h>
 
@@ -59,9 +60,6 @@
 
 extern int register_refined_jiffies(long clock_tick_rate);
 
-/* TICK_NSEC is the time between ticks in nsec assuming SHIFTED_HZ */
-#define TICK_NSEC ((NSEC_PER_SEC+HZ/2)/HZ)
-
 /* TICK_USEC is the time between ticks in usec assuming SHIFTED_HZ */
 #define TICK_USEC ((USEC_PER_SEC + HZ/2) / HZ)
 
diff --git a/include/vdso/jiffies.h b/include/vdso/jiffies.h
new file mode 100644
index 000000000000..2f9d596c8b29
--- /dev/null
+++ b/include/vdso/jiffies.h
@@ -0,0 +1,11 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef __VDSO_JIFFIES_H
+#define __VDSO_JIFFIES_H
+
+#include <asm/param.h>			/* for HZ */
+#include <vdso/time64.h>
+
+/* TICK_NSEC is the time between ticks in nsec assuming SHIFTED_HZ */
+#define TICK_NSEC ((NSEC_PER_SEC+HZ/2)/HZ)
+
+#endif /* __VDSO_JIFFIES_H */
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200313154345.56760-14-vincenzo.frascino%40arm.com.
