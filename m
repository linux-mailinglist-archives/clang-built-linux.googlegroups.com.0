Return-Path: <clang-built-linux+bncBDYJPJO25UGBBVMX5DUQKGQELDVLWTQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x740.google.com (mail-qk1-x740.google.com [IPv6:2607:f8b0:4864:20::740])
	by mail.lfdr.de (Postfix) with ESMTPS id 8F1F97589E
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Jul 2019 22:06:46 +0200 (CEST)
Received: by mail-qk1-x740.google.com with SMTP id v4sf43276119qkj.10
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Jul 2019 13:06:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564085205; cv=pass;
        d=google.com; s=arc-20160816;
        b=rbBX1+nN6KNPFWz62LCJ/zrJwFa42pes4uh3XKLuq0oUoZND7X3aP7MGp0MWc06rVJ
         1GxLaUU3oasGyd7YIRgs/nUnrW7zcZ4qOToGNfFJgER7XfgXwE81/A4ab8C4hpKSfEC/
         igMKdE9YwVKQm+YwKe+uOQgG384IvYw8Lo2A8jxW/GDLqMLSIuFdKwDygHWVy0/0W+q5
         FfVmMOI/FrpkmIUi8HyiKdYMDctcFqxLTj+zLjJX1ULAFirzkUfN34kCSSjLC6IbPbZP
         2ZlPcf6vBEwsAmp4xy6tMw8WAAJkVDmhi52kNFEitI/JPpAIBRBbrgXbqY9wy3j7ce3Q
         oATA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=ICQOqxeym+U7lI7/n5MNktlQhuRWT1jDHqfV146pXLA=;
        b=GUFTO1iZlbBNOHsiGTyx7s4/yEcLEa3HDrWzhisARrS8t2c9Tk59RqeuhotaDqQkNn
         RQvbt/AXRaqva0/A4s0atcs8ozKDXSTYOTOXb6DL/sCCa7Tnb+JLY++kTeHxHvynPGLa
         YQulrWVV/dERDnuLV0XW3tqB2/7+2MZGpdpqJUgGl+FoJZUyQrMKVLYYQ9pGtuKDYKgd
         32g2gOAIhr8WVG1KfVSv2M4aEL66wfXMKxLDwMdT3EB7ICFRJemgdjFIiuxrAwdhovTj
         ENV7aOoQjm2hyM2YKzV5xzeXAKmj/npZ/ckDe2xRickZYfLSp0Ea+tWjOETnVzxCC3PT
         RJMg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=m+T3VBZI;
       spf=pass (google.com: domain of 30ws6xqwkamivlm0i2tvqmz0owwotm.kwu@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=30ws6XQwKAMIvlm0i2tvqmz0owwotm.kwu@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=ICQOqxeym+U7lI7/n5MNktlQhuRWT1jDHqfV146pXLA=;
        b=Nk0tIDlhtnQeMFL37TMImA8HtKi4jRYEPne5RywzQua6Y/xHzcpYbNi3nwIJPr85E5
         tt5yA464zwQY0dZyHKUAVlK9qBEyiCkI7bQ6BQyVr6itDUGUgebKuXeXzsQOFZ+eCO0h
         JdYy+N830jdFlLAuI3sUcf9mrk+IQQNrS+QyYTimkUFiK5krC6j+p+dPRtVxreg+3dbB
         pMhF8ODB9Zot0Si0gbi4td390wRUChACGW2jb/cvfR5EM2aPii/8HJV+y6aSNBH6XvMN
         T586RzYPQPM1y/nTWLGHFqZinfjOj9UFxpyNBHWfYlK5xb4XDOhza9N75MUkbgf3sSHQ
         HGJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ICQOqxeym+U7lI7/n5MNktlQhuRWT1jDHqfV146pXLA=;
        b=nB0GDBEjFHrOYm4wUOXsWqNbdzKWzYnZGVKplRTXhTnmtUUBLCTcV6YvT1etVAblEp
         0dzf9SfGUTs0+2jZWyiKD2qXeH2o1F1ONd82qYpgdujY7xbtaz9mAjDyunJpgDMLl1Dg
         u92aZohTl2wKIUHF0NEGjoZFtCl13+BNMrwvWUTIBSzzpkshExR92dV+opA1d85Q/lOs
         Eqs87Cv1aBY9vRLypMV0lu+LN2qykr0ibEL4YtYifTQPpA8QnUWKJMIzb5My+dQFPixi
         WVvoLIpvDQsO/OMbWIjuaXgyIBvWzVbPbdVDbEsy7kQptm0ZWsmIgSKbMvHkQ0zsnSo/
         iRtA==
X-Gm-Message-State: APjAAAVb9G7sR04KaPyB0c61LwZR+/ad2ne1+hImCwICCyxcZnl1EV9K
	/5y1pbFHAbfWrbGUAVyqj2E=
X-Google-Smtp-Source: APXvYqwkorVvcCa4QcsEwdU7iMq6KA4+EzuFE5r3qb21TAQb+LiDsFV4M+m3YNozjw6B/ZX2OzEo8A==
X-Received: by 2002:a0c:fe6b:: with SMTP id b11mr23356123qvv.64.1564085205598;
        Thu, 25 Jul 2019 13:06:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:b712:: with SMTP id t18ls8278013qvd.6.gmail; Thu, 25 Jul
 2019 13:06:45 -0700 (PDT)
X-Received: by 2002:a0c:bd1f:: with SMTP id m31mr65087779qvg.54.1564085205343;
        Thu, 25 Jul 2019 13:06:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564085205; cv=none;
        d=google.com; s=arc-20160816;
        b=W+Mmh9bcpT/lN+cGEK39+i7QKKBuk/T0cFDHOjeubYiXlyeGZh9BSkOVOFy8RDJ41L
         h3qHSpxsGVTUf+9b+B4J4Pa0Z386HeskGBurVyAdH875dy9wIGOFcCL7dAh+yPa1B3uq
         Z0dtkD2uwfGj+tdlsWSke0JMDLtr9jSnm2wCVnwybzuUOVj9uWMNhWyGAoWaQY7jhWhk
         /M7TjU3H4K1TJS/BPh/iZ1c53GvN5uTpL8HUixCaihTd4nFtVxHDpKVc1ggcuNJ4ZcHd
         iKcbIezvfn26fnqjHHTq6DdSrqJGv81AAC3eobtd/No/w1p99+vVWfIG1jYgBmtmVXnk
         APIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=bLZyVx2d9+4mutQVBosXKh2ZSsxE7Nf0cA/U+GJuG+A=;
        b=AGD1mE6RMu2xWMLTql3AdeQm4zH8vHc+sr3eTnUBYTYwvv89glK1AU4hzJvcw8QVhy
         ZVzVeKLFaHzI0RnlAJk30KJF6S0ZzsSheCjBRWucL023lYlg7gHQr5r7NQhoP+gvj1O4
         fygvCFtYagbyEQybb7bnhbJyB33paIOUBxfe/dmP8uH/12/zRUhqCKFu2MiHkCGqW2Zt
         FmpQN1WH2AFXvrEkdjIzD2v9472kzGWLhX3F+LAMoKSxH6K1+EAQfbtpcrgqmOeENtjG
         DuUEu1+SLl8ekL0ekylHAwqYtfiMHqxoMaWUTt6DXpHXNkERDn/oEVXVYssGJ+UOf560
         aKsw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=m+T3VBZI;
       spf=pass (google.com: domain of 30ws6xqwkamivlm0i2tvqmz0owwotm.kwu@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=30ws6XQwKAMIvlm0i2tvqmz0owwotm.kwu@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x449.google.com (mail-pf1-x449.google.com. [2607:f8b0:4864:20::449])
        by gmr-mx.google.com with ESMTPS id l17si2270885qkg.0.2019.07.25.13.06.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Jul 2019 13:06:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of 30ws6xqwkamivlm0i2tvqmz0owwotm.kwu@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) client-ip=2607:f8b0:4864:20::449;
Received: by mail-pf1-x449.google.com with SMTP id f25so31549805pfk.14
        for <clang-built-linux@googlegroups.com>; Thu, 25 Jul 2019 13:06:45 -0700 (PDT)
X-Received: by 2002:a63:6901:: with SMTP id e1mr57594206pgc.390.1564085203941;
 Thu, 25 Jul 2019 13:06:43 -0700 (PDT)
Date: Thu, 25 Jul 2019 13:06:17 -0700
Message-Id: <20190725200625.174838-1-ndesaulniers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.22.0.709.g102302147b-goog
Subject: [PATCH v4 1/2] x86/purgatory: do not use __builtin_memcpy and __builtin_memset
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: tglx@linutronix.de, mingo@redhat.com, bp@alien8.de
Cc: peterz@infradead.org, clang-built-linux@googlegroups.com, 
	linux-kernel@vger.kernel.org, yamada.masahiro@socionext.com, 
	Nick Desaulniers <ndesaulniers@google.com>, Vaibhav Rustagi <vaibhavrustagi@google.com>, 
	Manoj Gupta <manojgupta@google.com>, Alistair Delva <adelva@google.com>, 
	"H. Peter Anvin" <hpa@zytor.com>, x86@kernel.org, Enrico Weigelt <info@metux.net>, 
	Chao Fan <fanc.fnst@cn.fujitsu.com>, Uros Bizjak <ubizjak@gmail.com>, 
	Alexios Zavras <alexios.zavras@intel.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Allison Randal <allison@lohutok.net>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=m+T3VBZI;       spf=pass
 (google.com: domain of 30ws6xqwkamivlm0i2tvqmz0owwotm.kwu@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=30ws6XQwKAMIvlm0i2tvqmz0owwotm.kwu@flex--ndesaulniers.bounces.google.com;
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

Fixes: 8fc5b4d4121c ("purgatory: core purgatory functionality")
Link: https://bugs.chromium.org/p/chromium/issues/detail?id=984056
Reported-by: Vaibhav Rustagi <vaibhavrustagi@google.com>
Debugged-by: Vaibhav Rustagi <vaibhavrustagi@google.com>
Debugged-by: Manoj Gupta <manojgupta@google.com>
Suggested-by: Alistair Delva <adelva@google.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
Tested-by: Vaibhav Rustagi <vaibhavrustagi@google.com>
---
Changes v3 -> v4:
* (style) open brace on newline
* drop Vaibhav's SOB tag that was accidentally copy+pasta'd from v1.
* Carry Vaibhav's tested by tag from v3 since v4 is strictly stylistic
  change from v3.
* Drop cc'ing stable. Sasha's bot reports v1 doesn't cherry pick cleanly
  5.1, so this series will require manual backports.
Changes v2 -> v3:
* Add bcmp implementation.
* Drop tested-by tag (Vaibhav will help retest).
* Cc stable
Changes v1 -> v2:
* Add Fixes tag.
* Move this patch to first in the series.

 arch/x86/boot/string.c         |  8 ++++++++
 arch/x86/purgatory/Makefile    |  3 +++
 arch/x86/purgatory/purgatory.c |  6 ++++++
 arch/x86/purgatory/string.c    | 23 -----------------------
 4 files changed, 17 insertions(+), 23 deletions(-)
 delete mode 100644 arch/x86/purgatory/string.c

diff --git a/arch/x86/boot/string.c b/arch/x86/boot/string.c
index 401e30ca0a75..8272a4492844 100644
--- a/arch/x86/boot/string.c
+++ b/arch/x86/boot/string.c
@@ -37,6 +37,14 @@ int memcmp(const void *s1, const void *s2, size_t len)
 	return diff;
 }
 
+/*
+ * Clang may lower `memcmp == 0` to `bcmp == 0`.
+ */
+int bcmp(const void *s1, const void *s2, size_t len)
+{
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190725200625.174838-1-ndesaulniers%40google.com.
