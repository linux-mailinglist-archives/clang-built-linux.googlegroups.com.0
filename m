Return-Path: <clang-built-linux+bncBDYJPJO25UGBBDPW3XUQKGQEOYW66DY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc39.google.com (mail-yw1-xc39.google.com [IPv6:2607:f8b0:4864:20::c39])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B7C37216B
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jul 2019 23:24:30 +0200 (CEST)
Received: by mail-yw1-xc39.google.com with SMTP id e12sf32896471ywe.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jul 2019 14:24:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563917069; cv=pass;
        d=google.com; s=arc-20160816;
        b=IDbRzLbKpqNMG69MA9VEr3KPJ1klawFVNG75N3RRCnFTbinTvtEkpjrDjdiU7ePbcN
         kwpim6WAD+CplR3WWybCQ6GiReXME4buStI2lT7y5OHYlJCsSkaVHr38wtD2B0DjdMlr
         1WwMl7e28BRZQKs9h3wZs+iEOgwVu0G+89owWPpebyLALMVG+fz93UKrD0Rv8JGBFG9M
         MBQv9+QYUUvt8a8fYIgyMVH9isLjB6nj3VSbmhZqTFUbS/MQGN4VgJDZJJGiVu9DB3JJ
         ita8oJmVyXnRhnTG88cuTq1wo4bh4TnDH9D9lFwZzMZfdfeQwxAkbOvn7caUNkqVsNvZ
         YYXg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=+cWcMzbJ92MOQETeYE4mPmsQ/ZP16znEPG498yM6VZ0=;
        b=iWXd1EKnvNGu6EG7s+eErJ/Inz5upp9Dmguu4VP1K3t1bc5xE6V55Dfv+1UjdI3kIo
         jkJeN83ffNi6dZaFeyrMFfgjQ32uG9M19esEEK9/4c69T+Y8O94L9c9W+GWcP8AvsNog
         bBW43ysqm6tQHv43a2TpyrLEotvor1ETFNWJw1OrIGfZdgup/YflKfQsr9BSDK6dtx1g
         kwRrf1HfEJt4o+TOZ0M14npyRetr+NuixyVctNqsG6wCVBEBZ36JXHr3vSFJeHbBSiGl
         1Kyz707rUrLWr8xRA+ueXREK+qKcZpg0IWyE4YbaWMCG9N0aIEDEtkCOXRVxHtSR+tfp
         l8gA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=VT0Ofx24;
       spf=pass (google.com: domain of 3dhs3xqwkam88yzdvf683zcd19916z.x97@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3DHs3XQwKAM88yzDvF683zCD19916z.x97@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=+cWcMzbJ92MOQETeYE4mPmsQ/ZP16znEPG498yM6VZ0=;
        b=TinWUVk1RaigoNtXrv088hvAIRVmJNujcU0YaTxWP1s4LR2SLeJMyCrIqc2Jpqc6F2
         cACt1covGygoK9d4fbv39qa46rdZZtpt2DUUEii4sCLSJYvEAlCXcCwAT9MLBxeRcsX4
         Sq6QX1vPh58VjdV3GPCr2GBOkRvGVLANIRN5cz4xqAiZByiWm67MuWEho6s1eYqxHmqR
         MbojUKtERtYyAXo1BmOUm+l+v0mxQfEmh+7+q8KtA7IHa1RR4B6pnSKhx1k3weMEBjDs
         f5FMQBQjJg1QXdco6QszmJq1FkJkNXBRTpFnqPTBCQ64RpJ7JNeJyJCx7650wWTLuJDx
         UQNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+cWcMzbJ92MOQETeYE4mPmsQ/ZP16znEPG498yM6VZ0=;
        b=ovsafW9VQn6kUawDmZB58RpFVs9LuDytv6naWZhJywriaISZGiIzTMfXXwYZJygAa1
         DWXMLhH/DyHrhgXqSAgLQcmbIzSRfWAETzWu7Aeg9/M2mzl8+YpvHAhanpO5blQOZfmf
         bbXvfJoozFzOhgHSFWPDWWqTJVbabrZa9USgdUJN+UWPjSgiEctLFKpV4qfGWIuOPw/g
         FhVthEgSZCsXLINInt703OO6eaQyjPjnXyYrTq0NfaFNB4RJPfCRtSCxppfcKJ9E4OAV
         yB6qgHSNCDMEL12ZPwIAXWbDFLU3vwjA3XqA9KDX/vHrTtQkyL90BSPzE/lIgrGxGJ76
         Mkxw==
X-Gm-Message-State: APjAAAU3BH9vSR+YKKzUKgqFhDPjk5w0kqqdBZRozGE5RQl+wzGZjj3A
	1wfzlh7pxjl+3J5zFF3aNBU=
X-Google-Smtp-Source: APXvYqyZ2FFEOiQEonWrvWjegqIdxX3nmC7HSaHfR42xTjobvq93Rmumv+sltYNyMjZvdM+9sLLhaQ==
X-Received: by 2002:a25:6802:: with SMTP id d2mr29958486ybc.60.1563917069707;
        Tue, 23 Jul 2019 14:24:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:9b0d:: with SMTP id s13ls5893282ywg.4.gmail; Tue, 23 Jul
 2019 14:24:29 -0700 (PDT)
X-Received: by 2002:a81:7bd7:: with SMTP id w206mr49081226ywc.480.1563917069389;
        Tue, 23 Jul 2019 14:24:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563917069; cv=none;
        d=google.com; s=arc-20160816;
        b=Oo1xYZ9S6RP7sf8XC08r+0BbNptLRe8OdbOTZHTrk1bBPY5h8GhD+TNsw0fkU5ZYXQ
         0A5RICntqlBUHoIpCZKupwiISa3b37YLjFJNtiXrAvHarj/pXtlm4l9hGvI3BBAtja2z
         JD2gMMo4NAHPkJbLXEiY2LCqOrukMPbUY8I1bzat1nZFEPzl1a37X395PdNAxRLq1Txf
         euqVJet29tnbsSjMK2YIJnvrM/8IXEJy3YJwoXq9IPR8KCIxbvCOdev627jOeIByvq+j
         Dnf8vOZ6Mm/Er2Hz+8wjmC/IBtGw+J3gedx0lR86nTzjltyxCYht/PI36c+jAwR+PHJa
         b3HQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=Hpr0yuvpw6CUvnD+l1IHEq2uOMPPyrhe5BbCI8J3Zt4=;
        b=vVJ8hkvP/lty1U3mcsSShf/NWVmJplU9T63EmMm//C16D95UyFs9EFEFjTaxlTLMfK
         6pcsDlh03mC9+73/ed2M87qw0/B68FYbedpoELwRAqWfYhd16D7GX9NaaWx0mtM0FQld
         hLvb8uzw1/11/zce7ti3lUjuwS5oK1mZJiCvvTWG/9EMikSuP2ndJ+20PDDmhF1awzUX
         7pgioFuyM6l6FKxOitxmsXYdwL7SSajLw0SmuNV8WjB001q3+XUZul346jpr6QmAF6MX
         fXQ1fHiqm4fMceKnxydZCEnk/RphLlq3gYlEboVnig0a1ShABj8R0YLko02DJVXIit1G
         Kw9g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=VT0Ofx24;
       spf=pass (google.com: domain of 3dhs3xqwkam88yzdvf683zcd19916z.x97@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3DHs3XQwKAM88yzDvF683zCD19916z.x97@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x54a.google.com (mail-pg1-x54a.google.com. [2607:f8b0:4864:20::54a])
        by gmr-mx.google.com with ESMTPS id t132si2093704ywc.0.2019.07.23.14.24.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Jul 2019 14:24:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3dhs3xqwkam88yzdvf683zcd19916z.x97@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) client-ip=2607:f8b0:4864:20::54a;
Received: by mail-pg1-x54a.google.com with SMTP id n23so14958330pgf.18
        for <clang-built-linux@googlegroups.com>; Tue, 23 Jul 2019 14:24:29 -0700 (PDT)
X-Received: by 2002:a63:2026:: with SMTP id g38mr72977845pgg.172.1563917068137;
 Tue, 23 Jul 2019 14:24:28 -0700 (PDT)
Date: Tue, 23 Jul 2019 14:24:10 -0700
Message-Id: <20190723212418.36379-1-ndesaulniers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.22.0.709.g102302147b-goog
Subject: [PATCH v3 1/2] x86/purgatory: do not use __builtin_memcpy and __builtin_memset
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: tglx@linutronix.de, mingo@redhat.com, bp@alien8.de
Cc: peterz@infradead.org, clang-built-linux@googlegroups.com, 
	linux-kernel@vger.kernel.org, yamada.masahiro@socionext.com, 
	Nick Desaulniers <ndesaulniers@google.com>, stable@vger.kernel.org, 
	Vaibhav Rustagi <vaibhavrustagi@google.com>, Manoj Gupta <manojgupta@google.com>, 
	Alistair Delva <adelva@google.com>, "H. Peter Anvin" <hpa@zytor.com>, x86@kernel.org, 
	Enrico Weigelt <info@metux.net>, Allison Randal <allison@lohutok.net>, Uros Bizjak <ubizjak@gmail.com>, 
	Chao Fan <fanc.fnst@cn.fujitsu.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Alexios Zavras <alexios.zavras@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=VT0Ofx24;       spf=pass
 (google.com: domain of 3dhs3xqwkam88yzdvf683zcd19916z.x97@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3DHs3XQwKAM88yzDvF683zCD19916z.x97@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

Implementing memcpy and memset in terms of __builtin_memcpy and
__builtin_memset is problematic.

GCC at -O2 will replace calls to the builtins with calls to memcpy and
memset (but will generate an inline implementation at -Os).  Clang will
replace the builtins with these calls regardless of optimization level.
$ llvm-objdump -dr arch/x86/purgatory/string.o | tail

0000000000000339 memcpy:
     339: 48 b8 00 00 00 00 00 00 00 00 movabsq $0, %rax
                000000000000033b:  R_X86_64_64  memcpy
     343: ff e0                         jmpq    *%rax

0000000000000345 memset:
     345: 48 b8 00 00 00 00 00 00 00 00 movabsq $0, %rax
                0000000000000347:  R_X86_64_64  memset
     34f: ff e0

Such code results in infinite recursion at runtime. This is observed
when doing kexec.

Instead, reuse an implementation from arch/x86/boot/compressed/string.c
if we define warn as a symbol. Also, Clang may lower memcmp's that
compare against 0 to bcmp's, so add a small definition, too. See also:
commit 5f074f3e192f ("lib/string.c: implement a basic bcmp")

Cc: stable@vger.kernel.org
Fixes: 8fc5b4d4121c ("purgatory: core purgatory functionality")
Link: https://bugs.chromium.org/p/chromium/issues/detail?id=984056
Reported-by: Vaibhav Rustagi <vaibhavrustagi@google.com>
Debugged-by: Vaibhav Rustagi <vaibhavrustagi@google.com>
Debugged-by: Manoj Gupta <manojgupta@google.com>
Suggested-by: Alistair Delva <adelva@google.com>
Signed-off-by: Vaibhav Rustagi <vaibhavrustagi@google.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
Changes v2 -> v3:
* Add bcmp implementation.
* Drop tested-by tag (Vaibhav will help retest).
* Cc stable
Changes v1 -> v2:
* Add Fixes tag.
* Move this patch to first in the series.

 arch/x86/boot/string.c         |  7 +++++++
 arch/x86/purgatory/Makefile    |  3 +++
 arch/x86/purgatory/purgatory.c |  6 ++++++
 arch/x86/purgatory/string.c    | 23 -----------------------
 4 files changed, 16 insertions(+), 23 deletions(-)
 delete mode 100644 arch/x86/purgatory/string.c

diff --git a/arch/x86/boot/string.c b/arch/x86/boot/string.c
index 401e30ca0a75..4c364cf63432 100644
--- a/arch/x86/boot/string.c
+++ b/arch/x86/boot/string.c
@@ -37,6 +37,13 @@ int memcmp(const void *s1, const void *s2, size_t len)
 	return diff;
 }
 
+/*
+ * Clang may lower `memcmp == 0` to `bcmp == 0`.
+ */
+int bcmp(const void *s1, const void *s2, size_t len) {
+	return memcmp(s1, s2, len);
+}
+
 int strcmp(const char *str1, const char *str2)
 {
 	const unsigned char *s1 = (const unsigned char *)str1;
diff --git a/arch/x86/purgatory/Makefile b/arch/x86/purgatory/Makefile
index 3cf302b26332..91ef244026d2 100644
--- a/arch/x86/purgatory/Makefile
+++ b/arch/x86/purgatory/Makefile
@@ -6,6 +6,9 @@ purgatory-y := purgatory.o stack.o setup-x86_$(BITS).o sha256.o entry64.o string
 targets += $(purgatory-y)
 PURGATORY_OBJS = $(addprefix $(obj)/,$(purgatory-y))
 
+$(obj)/string.o: $(srctree)/arch/x86/boot/compressed/string.c FORCE
+	$(call if_changed_rule,cc_o_c)
+
 $(obj)/sha256.o: $(srctree)/lib/sha256.c FORCE
 	$(call if_changed_rule,cc_o_c)
 
diff --git a/arch/x86/purgatory/purgatory.c b/arch/x86/purgatory/purgatory.c
index 6d8d5a34c377..b607bda786f6 100644
--- a/arch/x86/purgatory/purgatory.c
+++ b/arch/x86/purgatory/purgatory.c
@@ -68,3 +68,9 @@ void purgatory(void)
 	}
 	copy_backup_region();
 }
+
+/*
+ * Defined in order to reuse memcpy() and memset() from
+ * arch/x86/boot/compressed/string.c
+ */
+void warn(const char *msg) {}
diff --git a/arch/x86/purgatory/string.c b/arch/x86/purgatory/string.c
deleted file mode 100644
index 01ad43873ad9..000000000000
--- a/arch/x86/purgatory/string.c
+++ /dev/null
@@ -1,23 +0,0 @@
-// SPDX-License-Identifier: GPL-2.0-only
-/*
- * Simple string functions.
- *
- * Copyright (C) 2014 Red Hat Inc.
- *
- * Author:
- *       Vivek Goyal <vgoyal@redhat.com>
- */
-
-#include <linux/types.h>
-
-#include "../boot/string.c"
-
-void *memcpy(void *dst, const void *src, size_t len)
-{
-	return __builtin_memcpy(dst, src, len);
-}
-
-void *memset(void *dst, int c, size_t len)
-{
-	return __builtin_memset(dst, c, len);
-}
-- 
2.22.0.709.g102302147b-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190723212418.36379-1-ndesaulniers%40google.com.
