Return-Path: <clang-built-linux+bncBDYJPJO25UGBBM6X3DUQKGQEEGLH4BQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x539.google.com (mail-pg1-x539.google.com [IPv6:2607:f8b0:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id D292670B7C
	for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jul 2019 23:33:41 +0200 (CEST)
Received: by mail-pg1-x539.google.com with SMTP id g2sf3219634pgj.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jul 2019 14:33:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563831220; cv=pass;
        d=google.com; s=arc-20160816;
        b=iCRPDJjV5JLHq7FyBDQYWnlqMj99Yqx4m4s0u25ND+S/vIWQsJN8B8hfEFvYVHJWFs
         OkFMwlVFcOhaPY0EVVXdshZT8FplBvubGuW+/sq81iMEHL3woZIqaBDkQ8anDuNndEMc
         fhvmxJ0rp7FSMkm1kc7bzhWiTrtUTbCNG8Ai7mof1aecV0zzqaOYfCoIWMjpdrbTcznv
         1D5C4s9Kg+1eI2pVr/S8uD7e0WSdKGOBWSiMWcKMhuzu9J6VwRMfzdS2Rut82T2lO2eW
         USaHzg4OPgsJhWxBymP8JfbzpWeKepDJ3VTyZAUb8d0H+LYpriVpf73hnSyUUIkUTB5g
         S12w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=GshPXkGM0xu7vGcyjfL3lEKrBvZDtqDTb1CzJYiBCK4=;
        b=xvnAKYb16fjyIDPilbjUUnqCpqXbB1MMmEI1pAapbMBMhcQSOttem4f62LK6yQV2O6
         9wONEcHVbJqIFp81t8z8oG6quT6Zo4UovKi/0V+Lpp1qwd5Cy9RSAkFzSSkg0ssKcJ88
         TYEKooYEvka17xDT0V3GAIUD5K/nhmHbhMJ6MNslAS+b9cfyd+wEoQjBaAQZsuV+6MrM
         7AHKIL3wb6BBGzV7HsEiAdJ3Ct3dukTyy/aZz9NgwNNYl/Am70h7x9pOwpfEgSfDfevB
         wOAbZmupAF04OY5UwlA0YHtnT3BntWSzSuVa1pkWzGYjp09IJJi+FXr9qzbY75ERImaR
         2x7Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Afs+F9ie;
       spf=pass (google.com: domain of 3sis2xqwkanea01fxh8a51ef3bb381.zb9@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=3sis2XQwKANEA01FxH8A51EF3BB381.zB9@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=GshPXkGM0xu7vGcyjfL3lEKrBvZDtqDTb1CzJYiBCK4=;
        b=LQqkqYEXl68/zlCyq8XtM+Yzj6Z1l1rdnXKx0fb70mPmbAp9nasdKAGdbJtlgQwcgr
         BA6av870pLqkJLygyrlzoMD7WBwULdR25DuIq8ExWTJt0dXtWSPk6GydTQdlAa8zr1tk
         F2bwdBpRAh1wFWkm1FzrseDgVx2Fo7Th6BlKDY2AsID2L1AmZiByULZ4U3uu7WAkdQRH
         P8vCUKGvsyhoMRCuOb80WKBTpjjMdo3qtWFxq7aSh8eHplmNJN7/NsIej7dy+ExMMQ5l
         mWNGBRptSbMGhXMtowsYIDvfQ3FkUAlHioEAxO1U8avqo72k2G17kROBHA28ODLaM/0z
         sR2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=GshPXkGM0xu7vGcyjfL3lEKrBvZDtqDTb1CzJYiBCK4=;
        b=Zhu/k7EXexiENAm3Ltze+UUslNg03xVca7PKSAmvTCif3vz5NzfC3sPWFilinqDZFR
         uLUUjZngnRh1iL5Zjxx4VAH7bi8J1bE5NCCn7T7rB9ka6OqEMaTx4jRSRF8FzYAG+aO8
         NfOCSIz7UC9LcLaj8CRjWWneqX+cUXC02DxDTRgyPe/DK0TqO1ZWfn8PO3VmlzmUGt6z
         Ej+mZ/azdz/mKeiHFC8fEVyQh2f6n5sUwBALn5G0J1tbuyXezluXdxH09NQOrTW5tk+t
         y9Z97oOGU4ilLPFPBxNUiB4T+dfxnnYEm4sfzV4FpjiutYX19R+zZ8/VXNZHgR2QkKA2
         JdrA==
X-Gm-Message-State: APjAAAUF5ps0ye4j5DXJVydpJDMuhwX9IvqO4ZklhVIeXXWkt6TnWIcx
	6J7xg6b05mHg/VkGs0UIfnc=
X-Google-Smtp-Source: APXvYqwhZshKIKlvQe7iQif3BYEivXkKkSj4Y2iMjxFShmlixqdegzp33MGpvBTo5t1nc2HCkKK9pg==
X-Received: by 2002:a17:90a:e38f:: with SMTP id b15mr80540277pjz.85.1563831219801;
        Mon, 22 Jul 2019 14:33:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:2f02:: with SMTP id v2ls7033470pfv.0.gmail; Mon, 22 Jul
 2019 14:33:39 -0700 (PDT)
X-Received: by 2002:aa7:8c48:: with SMTP id e8mr2202474pfd.260.1563831219500;
        Mon, 22 Jul 2019 14:33:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563831219; cv=none;
        d=google.com; s=arc-20160816;
        b=ksV1uFZ3gmKpXBhc2SI3OpLOxtxktJyUvx+Ln1Vqn8U0jAJ8QF8/uhUOPL33LY2aTD
         wnxE+a6Lkg4SlAmI3Qy30DgmpKEnMeCh5Aqp6NY66wKSdAoY9reQOuMNjb5ACb1OWGNV
         Qza4qZ2nK6JTcdxb3t8sZm9cxL071SbwifvYXJz0i99kHNMjuW3JSjsSo7Qf/lcBYbja
         4qVjsHYf6azX5bGh/0Ydj0AV7bD6wUXs3VLdbclbDu7j0z7kX/fW0xcMj8V2obEMPfra
         lYaB7bZ/MMKPGrstqFI2brAI7bq4wWHLQssqA4HvtMu1O+O8k8EJK5WjBhNPHuWxAwmJ
         T3ZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=rVOg24+M5qJa9OkZXsdMYSLJniYg2tsuNVu94YuzcEo=;
        b=DeGR2ox2xkJHBo4X/bOAf6CPYBX+dCOWFzCeJ75a0OM1j8N9eFRRGVQ3bhKuHEVgOY
         Yxo/JWImIuT0/BSX98kGtmpDrXewLMxgc1IiUTj5RvFIE/SSmPhV9hzGg8GIjW9qvtlr
         dXUMT9URQbG9myiPNxvFIErxY9QVOy+uf3nwrM/9lQluAdBKfs2V3pSC/y6NSnOk/qml
         fBdXBqkIFGDEPCBNq+ak+CUBMadNj2+3Cc28iVq1za+iTOUGCPFxfF12E1ReT7y1OXHv
         4ynyjPoK4oVV3N/QBIPvV3gulTAVw38bV+H+fSYPlIJ3PTwAcqcxaMiBsTr5u0a5jAhg
         yf4w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Afs+F9ie;
       spf=pass (google.com: domain of 3sis2xqwkanea01fxh8a51ef3bb381.zb9@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=3sis2XQwKANEA01FxH8A51EF3BB381.zB9@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x64a.google.com (mail-pl1-x64a.google.com. [2607:f8b0:4864:20::64a])
        by gmr-mx.google.com with ESMTPS id q2si945537pgq.3.2019.07.22.14.33.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Jul 2019 14:33:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3sis2xqwkanea01fxh8a51ef3bb381.zb9@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) client-ip=2607:f8b0:4864:20::64a;
Received: by mail-pl1-x64a.google.com with SMTP id r7so20620868plo.6
        for <clang-built-linux@googlegroups.com>; Mon, 22 Jul 2019 14:33:39 -0700 (PDT)
X-Received: by 2002:a63:724f:: with SMTP id c15mr75142798pgn.257.1563831218735;
 Mon, 22 Jul 2019 14:33:38 -0700 (PDT)
Date: Mon, 22 Jul 2019 14:32:44 -0700
Message-Id: <20190722213250.238685-1-ndesaulniers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.22.0.657.g960e92d24f-goog
Subject: [PATCH v2 1/2] x86/purgatory: do not use __builtin_memcpy and __builtin_memset
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: tglx@linutronix.de, mingo@redhat.com, bp@alien8.de
Cc: peterz@infradead.org, clang-built-linux@googlegroups.com, 
	Nick Desaulniers <ndesaulniers@google.com>, Vaibhav Rustagi <vaibhavrustagi@google.com>, 
	Manoj Gupta <manojgupta@google.com>, Alistair Delva <adelva@google.com>, 
	"H. Peter Anvin" <hpa@zytor.com>, x86@kernel.org, Allison Randal <allison@lohutok.net>, 
	Alexios Zavras <alexios.zavras@intel.com>, Enrico Weigelt <info@metux.net>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Afs+F9ie;       spf=pass
 (google.com: domain of 3sis2xqwkanea01fxh8a51ef3bb381.zb9@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=3sis2XQwKANEA01FxH8A51EF3BB381.zB9@flex--ndesaulniers.bounces.google.com;
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
if we define warn as a symbol.

Fixes: 8fc5b4d4121c ("purgatory: core purgatory functionality")
Link: https://bugs.chromium.org/p/chromium/issues/detail?id=984056
Reported-by: Vaibhav Rustagi <vaibhavrustagi@google.com>
Tested-by: Vaibhav Rustagi <vaibhavrustagi@google.com>
Debugged-by: Vaibhav Rustagi <vaibhavrustagi@google.com>
Debugged-by: Manoj Gupta <manojgupta@google.com>
Suggested-by: Alistair Delva <adelva@google.com>
Signed-off-by: Vaibhav Rustagi <vaibhavrustagi@google.com>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
Changes v1 -> v2:
* Add Fixes tag.
* Move this patch to first in the series.

 arch/x86/purgatory/Makefile    |  3 +++
 arch/x86/purgatory/purgatory.c |  6 ++++++
 arch/x86/purgatory/string.c    | 23 -----------------------
 3 files changed, 9 insertions(+), 23 deletions(-)
 delete mode 100644 arch/x86/purgatory/string.c

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
2.22.0.657.g960e92d24f-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190722213250.238685-1-ndesaulniers%40google.com.
