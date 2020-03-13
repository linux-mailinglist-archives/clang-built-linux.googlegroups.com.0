Return-Path: <clang-built-linux+bncBCOYZDMZ6UMRBSWUV3ZQKGQEJEWWDLY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x238.google.com (mail-lj1-x238.google.com [IPv6:2a00:1450:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id AD394184AF4
	for <lists+clang-built-linux@lfdr.de>; Fri, 13 Mar 2020 16:44:10 +0100 (CET)
Received: by mail-lj1-x238.google.com with SMTP id a14sf1514496ljj.15
        for <lists+clang-built-linux@lfdr.de>; Fri, 13 Mar 2020 08:44:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584114250; cv=pass;
        d=google.com; s=arc-20160816;
        b=A1POpFmbfXPmFxjBkFy10u/Q3jjJVCbK15ii0HFJyKrfiPC7Hc73vYsUMe+q94wGtv
         hi3LZ1kbXEKGocJS2M9ICYvEsOdfnhGh7Af7Y8HqONJ06+RKJRISbkPXRmlnwHNKSuiI
         e0HgnrYmGfy+tg4JxlDLikypIS0vsEpn2xznqbnaOB92DBPqE09yhohDmHF5hKTBhfjd
         MWtyFUYqpMPHku3G6N4KTMvNFcv/MJADLFGIeFKxSkVgdAgTE2zPB2s9uNveCn/LRf2b
         WcZqioyhl9YPZpEDapt8KhX/shj6Z97kmbg/Xcz/LGlzncxOuSJNy1nTAA0o8NHX13iC
         rJxA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=DtRxntyz0LAFqiMaT7nNFnHTr0T/Wmf2KjD5U4CNjYo=;
        b=b9il+GHDrcl4aHpZ6e53PWg28h7S6Fc2O75UogPAmyMoNFf6dLNrhHDYP8ODwpeS83
         PsqfkSmzyqozQ6KkT3LI32h2vC2knz46IVpWrs9oYMcywdnrwtbfWv9db+ykeI1yxUQI
         NUI0BKpvYKQjzQZ4uE7+cEvpxws3kSmYO54HnQaBHfOj3/or0lMV/At7vwgkBp6IlX99
         jpBeCC+Z6oJA/OwtX3tJQh6Md6iBm6tDA+FSEvgnXw1r6YYYh7f+IHc0iOIXqFQtfOzy
         u8MIZSDLjSLAnginzsfm1sQmPtS7j5CS8sDNBHWVZI4xZfejQB9sj9hRDvN5UzYaiHXV
         j5QA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DtRxntyz0LAFqiMaT7nNFnHTr0T/Wmf2KjD5U4CNjYo=;
        b=OLC/7zQNM6SYx9C18ChKY88LfrMjYH/geLWW2lW3gaFUQEbT31z9CxhAX4vVAFg5Mi
         P4GjGGMsY+pFQcAIP7GX0gGkeVD4ts1E5OPvnjHNLox7DO7isBJ00fb5BMRqhD4qUTc1
         ZhP9+wS3TvDPgz5Mx6KG96gCPxVLm3YhHXMRP6kzBrz2hOaZpCftycuMXJvOT2p9rx/1
         QNNz7ZXRb3tfkx8/5MJPpoPPRotEyieItgEjKPYx0fnsfhjvHI1UeZgPhvXSN49d2dCP
         s78+gVpP+bUEia6oUW6amn+yTnBYn3ka9+MCizkYCXD4iNLnkOlL0U/FcksiZDiSyyef
         G+lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DtRxntyz0LAFqiMaT7nNFnHTr0T/Wmf2KjD5U4CNjYo=;
        b=niLcOH6jKL06G+q8SX4vypRDSpx3MnA7T8M3ZdsG3vnPhm4KotDtV85j1jeEOfXaPH
         WQ83CXmKW+pC7ZFoJpVQ+SMscZ9uoIjWcrzF6+OwjukFTlVtmX7WGe8ISE67E3DKNYtG
         udG99TQ3aW4kowkXXpLIG3pkQtP2LXCiNDpMlkvb8j9mNo3uLRMVjb4IJ6XdLotA5Di5
         F1/fYesZjyFs1xHZfuRCRxIrPUR/Ai/uy4AUuW8FymqV/7SNKMSwrnKPnxWXaOs6MjBj
         9geoEbTKfw+jkJJjfbtVwQ+LlxhaWOxjwabEN3APPqatsg1rGXgBDU5+AYv+cB4eBWKf
         8IZA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0no7uDG44u3qnjpCf/F5xn88lh2s1qqx3YKH5eA8ybRJnlya3F
	eNUOEARjmIJ0NqAnpRKX7zo=
X-Google-Smtp-Source: ADFU+vvdtYrAaaFTRxcUR65OS8rqHJZBfU2ZqAX4VA+kTIPtklWGfqzVH8ek3dpic0VB0Z2PY9nBtw==
X-Received: by 2002:a2e:99ca:: with SMTP id l10mr8524129ljj.13.1584114250252;
        Fri, 13 Mar 2020 08:44:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:4207:: with SMTP id y7ls1513624lfh.5.gmail; Fri, 13 Mar
 2020 08:44:09 -0700 (PDT)
X-Received: by 2002:ac2:4d18:: with SMTP id r24mr2632160lfi.131.1584114249638;
        Fri, 13 Mar 2020 08:44:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584114249; cv=none;
        d=google.com; s=arc-20160816;
        b=BHXjaOsp1FsMCOqvU1MPHxxU3XDayG0pXtS8KbCVowVVAUNEpGTCHSO3qEya8FU+l2
         /Re+v+1nEP48AHT0NBQQsXSumaykhwbMeHCOEISAzmj5srlpOG7efhWIkL5JMbQLoGZF
         d+dfiZXXFJenagK5g4KwLSz4afUzhzFPP//DD6MGokkbc9u4lsxtBQGdU72FfiSdyS0H
         1oz8dvq3PD1CuqF6pK/XdCFfmNr3anpilYYgRRKWlQYfOYxcIL3etKktzeadI+hUQNJo
         inrkz05fHiJ9cgZQWyxcaK1fqKeZNq5Zz6H+/HLVs8J//wQTW4hpF6cemJ0VSYeOKDzO
         ER0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from;
        bh=hbBdOMcOoGVZnI7i4EdDHPgNDXaaMUaqBdtSZONOpGE=;
        b=WRybFHdpoitlx9K3Yj4DmuepXTsv2OyTSoDdnMCa2I/pvX6S+EGQSBT9v5xavJX/ME
         pk4rOcWctQ/agwZ3p3PcyFDE6B1SyAcRTBaFoklE5j4LIK/A7vUzae4fhveKOqB/H2qG
         bGqHrpo8+Ax5AFgv+qtmx3U8r7AYOLc6yhdOVYGiEMOpYfxigPDuAPKzdV7R5olRqwQY
         lb8iqeOnWmOhlBqaZh3k9dtBTqTWHd4B0nMyhA0S+wQPtA5QoFZiaX6tvOHJnG2CFgI5
         8R0PGwk3KbpMj+EBU5oBI/SK4I++zhNETvjVLEM/dH7EgTrtH9kJ6cGDHccqSisAwJ77
         U7/A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=vincenzo.frascino@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id r20si375070ljp.5.2020.03.13.08.44.09
        for <clang-built-linux@googlegroups.com>;
        Fri, 13 Mar 2020 08:44:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of vincenzo.frascino@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id B6EADFEC;
	Fri, 13 Mar 2020 08:44:08 -0700 (PDT)
Received: from e119884-lin.cambridge.arm.com (e119884-lin.cambridge.arm.com [10.1.196.72])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id BFF493F67D;
	Fri, 13 Mar 2020 08:44:05 -0700 (PDT)
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
Subject: [PATCH v3 01/26] linux/const.h: Extract common header for vDSO
Date: Fri, 13 Mar 2020 15:43:20 +0000
Message-Id: <20200313154345.56760-2-vincenzo.frascino@arm.com>
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

Split const.h into linux and common headers to make the latter suitable
for inclusion in the vDSO library.

Signed-off-by: Vincenzo Frascino <vincenzo.frascino@arm.com>
---
 include/linux/const.h |  5 +----
 include/vdso/const.h  | 10 ++++++++++
 2 files changed, 11 insertions(+), 4 deletions(-)
 create mode 100644 include/vdso/const.h

diff --git a/include/linux/const.h b/include/linux/const.h
index 7b55a55f5911..81b8aae5a855 100644
--- a/include/linux/const.h
+++ b/include/linux/const.h
@@ -1,9 +1,6 @@
 #ifndef _LINUX_CONST_H
 #define _LINUX_CONST_H
 
-#include <uapi/linux/const.h>
-
-#define UL(x)		(_UL(x))
-#define ULL(x)		(_ULL(x))
+#include <vdso/const.h>
 
 #endif /* _LINUX_CONST_H */
diff --git a/include/vdso/const.h b/include/vdso/const.h
new file mode 100644
index 000000000000..94b385ad438d
--- /dev/null
+++ b/include/vdso/const.h
@@ -0,0 +1,10 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+#ifndef __VDSO_CONST_H
+#define __VDSO_CONST_H
+
+#include <uapi/linux/const.h>
+
+#define UL(x)		(_UL(x))
+#define ULL(x)		(_ULL(x))
+
+#endif /* __VDSO_CONST_H */
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200313154345.56760-2-vincenzo.frascino%40arm.com.
