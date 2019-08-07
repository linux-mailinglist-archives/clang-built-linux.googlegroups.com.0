Return-Path: <clang-built-linux+bncBDYJPJO25UGBBHU3VXVAKGQE2ND6RXA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3f.google.com (mail-yw1-xc3f.google.com [IPv6:2607:f8b0:4864:20::c3f])
	by mail.lfdr.de (Postfix) with ESMTPS id C610885592
	for <lists+clang-built-linux@lfdr.de>; Thu,  8 Aug 2019 00:15:59 +0200 (CEST)
Received: by mail-yw1-xc3f.google.com with SMTP id j144sf67671448ywa.15
        for <lists+clang-built-linux@lfdr.de>; Wed, 07 Aug 2019 15:15:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565216158; cv=pass;
        d=google.com; s=arc-20160816;
        b=BYV9UxzqyMKkrqtVtNaFyKcfJFuNSoozDbtPelqQTMYkufqejQFRsca5CUgT8hzsuK
         GthdSafOE3biIKw/3WnbY1PfQyLErL+VNklDyjUWyCZ5aerkkB3dJl4rVyRw7kBRW4Ky
         slrWkb4y8a7wP6fZttRayzC1PadZValPTAoDM82zWQppbSZj+JWNoUpxDW44M2k2ZvCa
         eYGkp4wlUX95JdW046mThNHKudgFb+QLqmuxHGgrH5t0gwpblh4px4JNCoZWNAbhvI+f
         RkkLc1d1Y6lYBQG9JRBVAM4MzSJ94VHF37PHf67nrkapPRJHkfErYMgp8lXKA/IcdjE0
         HH2g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=+dOrBYh6xZVgAb1EllmPEMaPYegpEwRtSCCmvlauDwM=;
        b=HgbVC2ATfByjdUhrlaFGcVinUZsfXTDCMNuGvZn+Qwcy8yU2qJENlUDWzwTg3uYL1V
         rYHQUsJLqQcYyDDBSit0VOqmiXtaFbzxHHCKBqf1ZfgqiAgbOhrV9Z9EEKHcbzt+Db8V
         YsrxyRcXKh+x/LrJcVazwKZf+3fZtm+TYProl3i2n1pKH1ekMHqIZkXgcg7xnKomr0dS
         zNQ+wy96SU6NVVeJvPDYyaQNZeGcsXw9Hwu3pdo3K88IG3RgpZ3yE/nJ++snTBPWIm8f
         e8y8Hp1ETbnh6C3/fqt4QB+0N/GR1fIBrDUKyhCBKDxJe8v7Rr2JwCIsdMwewl/nS0x0
         Ttdw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=L0jfbkWl;
       spf=pass (google.com: domain of 3nu1lxqwkafyb12gyi9b62fg4cc492.0ca@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::a49 as permitted sender) smtp.mailfrom=3nU1LXQwKAFYB12GyI9B62FG4CC492.0CA@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=+dOrBYh6xZVgAb1EllmPEMaPYegpEwRtSCCmvlauDwM=;
        b=r6Kfl5bvPSbVZO1eYb5jVasxcaWFEdGdiVqjy0RaqsBPlf2rUXK12jPEcDnxJmnJ48
         rRPG08AECNlEz0AvlHgLCWKDCo8dQAUzl1/+b0HoYbeVI5fTi7CjFgNyVxWL9ecd/vfg
         xZPxQkQkscRkHs2C5++E2IcwEpKit5hvkULPe8Tw12rYuMC83eo2UskoI3eEPPIf8DeJ
         YuIzMW1sX8+szWjjUjkx9oP36j9tcf1TWMpwes6/YjZLHFLosRrHqhWB/B/i1SSqZyQf
         P6ifuDnD9BsqJmrjxbsUEP9LKPPpdvN5WD1QHbzCCl6pQhhzOI2pPnw4kya7Qextxevs
         fVWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+dOrBYh6xZVgAb1EllmPEMaPYegpEwRtSCCmvlauDwM=;
        b=UcmGPBeHh+XCWzVmXn7L97gTDi2vSZqmEZObEBAwGA54wgCuRnjTNpxcrcCzcZwpfU
         vMI2WkWelf5EEpMtNvrqrSYM2inIm+1fKzpS4G5se90IrBC18P+2/WLYcAUwEM2Awhh4
         mH1Sh4+87F+UutbXz1gyoADndM7EQECnNFSH5WKfYImZrzeAbec0RpNwRuROaecJYg7h
         TMHPr1D/GcgoLtyXCYG9xBVSC2iWbpfKAN1DCfjiJN6UoLh95neceaTA2KrGaAYW7oUk
         wz0Y0L4eOK3PDwrb74kqecWagWY7HLTgGAtWlauBLB21HONsItw7abv8yIZmMO2XLixs
         inRQ==
X-Gm-Message-State: APjAAAV9j1gZAKYHMKeI7XWEOm2M5BKGb7d/tL2eSABsHMu/WwnsLely
	uLCSDGpEdXQR9J3LJJiXPQA=
X-Google-Smtp-Source: APXvYqzlFswSzgoyErgEBvyqTeTAXdyX+myTFkGa6vXV1Ut6K9Jtj12gMgdMgmZQGrFWJJ5+7NYv2g==
X-Received: by 2002:a81:4754:: with SMTP id u81mr7367941ywa.8.1565216158565;
        Wed, 07 Aug 2019 15:15:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:7805:: with SMTP id t5ls3175289ywc.8.gmail; Wed, 07 Aug
 2019 15:15:58 -0700 (PDT)
X-Received: by 2002:a81:47d5:: with SMTP id u204mr8033804ywa.145.1565216158288;
        Wed, 07 Aug 2019 15:15:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565216158; cv=none;
        d=google.com; s=arc-20160816;
        b=wxTqTY/cxcclljsCRzI27B+X3h/Tbz+YJNfCSVuWeor3FW7e+XZOYaO4IskODvB7B1
         JXxvdjskyZq7S6YJhMi4Y29O6Ncjq0LbUWFKuEEA28ejhT9rPXvytBnAfWKcW8k3effM
         203gp224XvcOKjumbReT6E6DXepvc2PTDe3dwxZMc80vD+rqT1mPgoPZcnlh3gJdRdai
         FSteKxMETbgscOHgJul9mkOr7sEJut5yWMd5pb8ui6Ko1bLKrfzVgy/66Y/i/q1Ma3gs
         h2qT1kh9gpUucilXQftExYxEjx+Bft2f3k6fDZJ1am/hEiF7ZPF97hn1qr/gtprIKNfx
         674g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=O7ZtR6QD4RFJAye0JbMOqjbvPAFE8alBTupXCiubdkM=;
        b=vyCZdoBeHHxJnW1O8x6BPvnScPmQcFcpHi3UIYrkh+qgv1qyquNXHq3ne1qnfVAu4W
         D5r36FHEz2YcwOOC2/P0UhufyJG5PPBI8+vjtZFopa/m9JzyamVZ1r25jk0zDCo+GzAw
         HqS50hTwtIftER11emYAaSVlZckD9079w2/Jla6GNr1cd9F5kYeb+s6duEMcZ/fMDNvC
         +LiMPai0/KWKJw/2DTPX49+o0IMt8nGTp1Eh1Njtnxt4rq9gKQBAC1wI0kbCIm16qio2
         U4qXsmD9L28PP35SKoi4kAiKou2tfRq91voxcKmWapXQzZ+KBbhmb6TkS5EU3+NkMb5N
         Gv+w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=L0jfbkWl;
       spf=pass (google.com: domain of 3nu1lxqwkafyb12gyi9b62fg4cc492.0ca@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::a49 as permitted sender) smtp.mailfrom=3nU1LXQwKAFYB12GyI9B62FG4CC492.0CA@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-vk1-xa49.google.com (mail-vk1-xa49.google.com. [2607:f8b0:4864:20::a49])
        by gmr-mx.google.com with ESMTPS id x5si3160929ybn.2.2019.08.07.15.15.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Aug 2019 15:15:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3nu1lxqwkafyb12gyi9b62fg4cc492.0ca@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::a49 as permitted sender) client-ip=2607:f8b0:4864:20::a49;
Received: by mail-vk1-xa49.google.com with SMTP id l7so20208211vkm.21
        for <clang-built-linux@googlegroups.com>; Wed, 07 Aug 2019 15:15:58 -0700 (PDT)
X-Received: by 2002:a1f:5945:: with SMTP id n66mr4514236vkb.58.1565216157744;
 Wed, 07 Aug 2019 15:15:57 -0700 (PDT)
Date: Wed,  7 Aug 2019 15:15:32 -0700
Message-Id: <20190807221539.94583-1-ndesaulniers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.22.0.770.g0f2c4a37fd-goog
Subject: [PATCH v5 1/2] x86/purgatory: do not use __builtin_memcpy and __builtin_memset
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: tglx@linutronix.de, mingo@redhat.com, bp@alien8.de
Cc: peterz@infradead.org, clang-built-linux@googlegroups.com, 
	linux-kernel@vger.kernel.org, yamada.masahiro@socionext.com, 
	Nick Desaulniers <ndesaulniers@google.com>, stable@vger.kernel.org, 
	Vaibhav Rustagi <vaibhavrustagi@google.com>, Manoj Gupta <manojgupta@google.com>, 
	Alistair Delva <adelva@google.com>, "H. Peter Anvin" <hpa@zytor.com>, x86@kernel.org, 
	Allison Randal <allison@lohutok.net>, Enrico Weigelt <info@metux.net>, 
	Chao Fan <fanc.fnst@cn.fujitsu.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Alexios Zavras <alexios.zavras@intel.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=L0jfbkWl;       spf=pass
 (google.com: domain of 3nu1lxqwkafyb12gyi9b62fg4cc492.0ca@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::a49 as permitted sender) smtp.mailfrom=3nU1LXQwKAFYB12GyI9B62FG4CC492.0CA@flex--ndesaulniers.bounces.google.com;
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
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
Tested-by: Vaibhav Rustagi <vaibhavrustagi@google.com>
---
Changes v4 -> v5:
* None
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
2.22.0.770.g0f2c4a37fd-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190807221539.94583-1-ndesaulniers%40google.com.
