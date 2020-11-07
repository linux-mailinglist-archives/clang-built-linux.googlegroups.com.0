Return-Path: <clang-built-linux+bncBDQ2R56ST4HRBFWMS76QKGQE453USSY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3d.google.com (mail-yb1-xb3d.google.com [IPv6:2607:f8b0:4864:20::b3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F4342AA1A8
	for <lists+clang-built-linux@lfdr.de>; Sat,  7 Nov 2020 01:11:04 +0100 (CET)
Received: by mail-yb1-xb3d.google.com with SMTP id a184sf3571118ybg.10
        for <lists+clang-built-linux@lfdr.de>; Fri, 06 Nov 2020 16:11:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604707863; cv=pass;
        d=google.com; s=arc-20160816;
        b=KGMJHIJMqSKadImOcNMgF/no+qpE8xnFB+Wenv2uW2O7Rkzy7yRrWFuYmuukPjUlC6
         IyKqP9TDVx0bGojbeLN0OdSnUxthOfacmJhP/WptoOwEDxg7sVLdeOPNM3Ct9G5WJCtw
         vUN42+5qYjZbgG+tU8ilakYI3Ha9gnny+/+n8bpvDI0Rqc51M0pyxTSSuEAvZvC8asIn
         tK28qCI98KCe849aytg7Briw9uzUaygiYXhsdjWCFKwxaAHU2UNQoHT+QUKOogjAsefu
         T6Na0rsOjlMo8Zq697VTmkwF6QBlQwgyNucGjsjzISuMF5xbI/lcbD9Xd7YDiLN2UKrE
         eWVg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:from:subject:references
         :mime-version:message-id:in-reply-to:date:sender:dkim-signature;
        bh=Wc3SeN4bsNkfizWRCSJXX2yyOCeVHDvUEP0HBdRXvvc=;
        b=BUBJru0hVbwkDY4kF3bA6UrqzSzwuaRDiygau2lGkp/AAY4dp8NLmqRCFDHPf10mrg
         hvtidunu9TmcOBPyVBuHG0YqpE+tvBCmFs9qSHKcaXVFt6Yt4pb/i1rqP3jemolHyzxm
         q7k83Mu0PCGcpUk7Y/4xHzpjj38MoAhJ5jBRYHHsgXHB7r6D0+aSAdRTgghv63GmRtaz
         E6iRIkA0J2gdY1ImA1GuRg3r+grVjqKRGtMY+0NsmLydjvtc7X+9EKPyXAft1Z23//t6
         9PEJw9FLmSvGuOhfTFUD+fkN9DiRCQEeAElj1IzBxq9i50t94R4k+Ds8lRqF+mmpcupH
         HdcA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=TMsiT5Ay;
       spf=pass (google.com: domain of 3fualxwckex0kjbodbjhpphmf.dpndmboh-cvjmu-mjovyhpphmfhspvqt.dpn@flex--jiancai.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3FualXwcKEX0kjbodbjhpphmf.dpndmboh-cvjmu-mjovyhpphmfhspvqt.dpn@flex--jiancai.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Wc3SeN4bsNkfizWRCSJXX2yyOCeVHDvUEP0HBdRXvvc=;
        b=nADbHHXODfh2JYeQmD0qa43lKMqE0gNOzB2P0vOnXNxBrrtLbmzZtH9fJY/p1smv+K
         kJkykCGArN3UdYuEGLXyNpjuyxzcOqZ9Z4qOBQxKBO/dKMwoqTlDBD1J6zUmyysj/mjr
         F2vUSe3S7cTEQ9cAOk0OJq/DPpN499KDRS85RDoGywUhSb2KSwU/l4eru/Zz3KrKgNn9
         1E26lDJPF/f0+awiMtT4oaaZNqRi+Rf32diLkVALlSqS2sGCKfUVd7mFNk1o3WNaXTNx
         hthi1g60FQZE3duZdTe2gd1k4JN/gkyn1q/G45CqVSlwEuhcQoex7AS/VIWEEd0Ah+Bt
         mGFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Wc3SeN4bsNkfizWRCSJXX2yyOCeVHDvUEP0HBdRXvvc=;
        b=daOffdy2/xEjTIWyX86TDpvajkUBOEnUjB4N8/UIaBRLhP4inY0jVJFHWaWif4ktyK
         7sMLPYCmCbLmTI3j1J4geg/6eKEJNqk3nzfJe2wIa3Ypq/eYlv7zmU68s8AAwdmT+Wf0
         Si4Ij2G2gBL4fNQ0wKcDqbrg7+1EgpBVSVIh1GbUKGFgu6XilvzbSe7hS2ljac77wRjx
         Hygy0asDUViymLtMYCvUJnRqloAw8Dj5tfni3wwRb9sCDFABVsBUZwigzL/2kGEiXpOM
         bZuStguFKUMeowIhIgeQ1X6rsDRmoImXucBjfvM/iqHATmT3RXYftAi90NT9OhUXMACY
         DULg==
X-Gm-Message-State: AOAM531ZlIjWONWzn0ckm+BjnqdT/svs59X6a5VtqPjC/ZtGNOonc0oS
	oouKRdte+rrIPz1aQJjMJxU=
X-Google-Smtp-Source: ABdhPJxkTH/SLkJ+v9LnmC9bmR7XImaohcGoVd2RS4z4BnBIeK913RKrJGcYWQtDCJQCFEClcJyWUA==
X-Received: by 2002:a25:3883:: with SMTP id f125mr6548477yba.29.1604707863074;
        Fri, 06 Nov 2020 16:11:03 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:c387:: with SMTP id t129ls1565360ybf.7.gmail; Fri, 06
 Nov 2020 16:11:02 -0800 (PST)
X-Received: by 2002:a25:d305:: with SMTP id e5mr1444513ybf.358.1604707862591;
        Fri, 06 Nov 2020 16:11:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604707862; cv=none;
        d=google.com; s=arc-20160816;
        b=zIB4ScJrQS6ABBxFOkOp6Dmx1yxZ0LT+G0Ziaw+gXIWX6dATxRYlCzRf0xnwSw8nBW
         Vt2n6eJZUgMBHRmLpi6eOEHY+x0tCyMUWa1oJsd+NapRP8QYB8QFLCJF0AlWEGMyaZb/
         hfLKEM7eEUFTjXLy4yK/+sbaqJEtrtVN7ZDxKfAyd+lbjsb1r4uH3qOMBvxR78bxhRHI
         prk1WZso4Ro4gK1ohHJNbo/bx+FnPaBNolfA9lZuji5vdmtXWLUoLw/e/UmOWKqopu8h
         Z7Da8jKXTvBxyh0kiLbW5WoZB/Hu/hKXiDKrvu/kijk/Bih5sioerBZJycmULwdUF0T0
         IMhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:from:subject:references:mime-version:message-id:in-reply-to:date
         :sender:dkim-signature;
        bh=O4plfZhOm2PQ9/g1Q0it71FaybRhA0glqyeHSYfkzIQ=;
        b=BUOOCtpealwfI7QxWjqJ6XbTnBwXqdX/cVkZ1L656Fq9TY6oUX94yTyi0AxBTQEYSp
         WFMo9sl5Vgf5SYZjzfi7UU3PI2lbEd+LgzfNOquKITSEzAl+mMjZdZgLy1qnUehw/EDO
         I3gtOeKSpq5vL7HdpYqw/x0R6H/VvvGvadLebZqFwpWHklbuUeof3YucKg5VjEq1VpJW
         igOc5rXBvSeiO6+vobO7UkIRhVvVg+ZoS1LuGK8dHapJtKHlBQLt15iM1MdH9XC9qHLO
         qSojd7FLCYcIgUYA46VojujZWSD/Vdq2IrJcLrtgPsa+6HAKstuLRvWTpEzcoOwDPk0h
         so9w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=TMsiT5Ay;
       spf=pass (google.com: domain of 3fualxwckex0kjbodbjhpphmf.dpndmboh-cvjmu-mjovyhpphmfhspvqt.dpn@flex--jiancai.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3FualXwcKEX0kjbodbjhpphmf.dpndmboh-cvjmu-mjovyhpphmfhspvqt.dpn@flex--jiancai.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id i188si220079yba.4.2020.11.06.16.11.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Nov 2020 16:11:02 -0800 (PST)
Received-SPF: pass (google.com: domain of 3fualxwckex0kjbodbjhpphmf.dpndmboh-cvjmu-mjovyhpphmfhspvqt.dpn@flex--jiancai.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id z4so3591670ybk.15
        for <clang-built-linux@googlegroups.com>; Fri, 06 Nov 2020 16:11:02 -0800 (PST)
Sender: "jiancai via sendgmr" <jiancai@jiancai.svl.corp.google.com>
X-Received: from jiancai.svl.corp.google.com ([2620:15c:2ce:0:f693:9fff:fef4:238b])
 (user=jiancai job=sendgmr) by 2002:a25:e6d0:: with SMTP id
 d199mr7019427ybh.398.1604707862263; Fri, 06 Nov 2020 16:11:02 -0800 (PST)
Date: Fri,  6 Nov 2020 16:10:53 -0800
In-Reply-To: <20200409232728.231527-1-caij2003@gmail.com>
Message-Id: <20201107001056.225807-1-jiancai@google.com>
Mime-Version: 1.0
References: <20200409232728.231527-1-caij2003@gmail.com>
X-Mailer: git-send-email 2.29.2.222.g5d2a92d10f8-goog
Subject: [PATCH v2] Make iwmmxt.S support Clang's integrated assembler
From: "'Jian Cai' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Cc: ndesaulniers@google.com, manojgupta@google.com, llozano@google.com, 
	clang-built-linux@googlegroups.com, Jian Cai <jiancai@google.com>, 
	Ard Biesheuvel <ardb@kernel.org>, Russell King <linux@armlinux.org.uk>, 
	Nathan Chancellor <natechancellor@gmail.com>, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jiancai@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=TMsiT5Ay;       spf=pass
 (google.com: domain of 3fualxwckex0kjbodbjhpphmf.dpndmboh-cvjmu-mjovyhpphmfhspvqt.dpn@flex--jiancai.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3FualXwcKEX0kjbodbjhpphmf.dpndmboh-cvjmu-mjovyhpphmfhspvqt.dpn@flex--jiancai.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Jian Cai <jiancai@google.com>
Reply-To: Jian Cai <jiancai@google.com>
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

This patch replaces 6 IWMMXT instructions Clang's integrated assembler
does not support in iwmmxt.S using macros, while making sure GNU
assembler still emit the same instructions. This should be easier than
providing full IWMMXT support in Clang.

"Intel Wireless MMX Technology - Developer Guide - August, 2002" should
be referenced for the encoding schemes of these extensions.

Link: https://github.com/ClangBuiltLinux/linux/issues/975

Suggested-by: Nick Desaulniers <ndesaulniers@google.com>
Suggested-by: Ard Biesheuvel <ardb@kernel.org>
Signed-off-by: Jian Cai <jiancai@google.com>
---
 arch/arm/kernel/iwmmxt.S | 89 ++++++++++++++++++++--------------------
 arch/arm/kernel/iwmmxt.h | 47 +++++++++++++++++++++
 2 files changed, 92 insertions(+), 44 deletions(-)
 create mode 100644 arch/arm/kernel/iwmmxt.h

diff --git a/arch/arm/kernel/iwmmxt.S b/arch/arm/kernel/iwmmxt.S
index 0dcae787b004..d2b4ac06e4ed 100644
--- a/arch/arm/kernel/iwmmxt.S
+++ b/arch/arm/kernel/iwmmxt.S
@@ -16,6 +16,7 @@
 #include <asm/thread_info.h>
 #include <asm/asm-offsets.h>
 #include <asm/assembler.h>
+#include "iwmmxt.h"
 
 #if defined(CONFIG_CPU_PJ4) || defined(CONFIG_CPU_PJ4B)
 #define PJ4(code...)		code
@@ -113,33 +114,33 @@ concan_save:
 
 concan_dump:
 
-	wstrw	wCSSF, [r1, #MMX_WCSSF]
-	wstrw	wCASF, [r1, #MMX_WCASF]
-	wstrw	wCGR0, [r1, #MMX_WCGR0]
-	wstrw	wCGR1, [r1, #MMX_WCGR1]
-	wstrw	wCGR2, [r1, #MMX_WCGR2]
-	wstrw	wCGR3, [r1, #MMX_WCGR3]
+	wstrw	wCSSF, r1, MMX_WCSSF
+	wstrw	wCASF, r1, MMX_WCASF
+	wstrw	wCGR0, r1, MMX_WCGR0
+	wstrw	wCGR1, r1, MMX_WCGR1
+	wstrw	wCGR2, r1, MMX_WCGR2
+	wstrw	wCGR3, r1, MMX_WCGR3
 
 1:	@ MUP? wRn
 	tst	r2, #0x2
 	beq	2f
 
-	wstrd	wR0,  [r1, #MMX_WR0]
-	wstrd	wR1,  [r1, #MMX_WR1]
-	wstrd	wR2,  [r1, #MMX_WR2]
-	wstrd	wR3,  [r1, #MMX_WR3]
-	wstrd	wR4,  [r1, #MMX_WR4]
-	wstrd	wR5,  [r1, #MMX_WR5]
-	wstrd	wR6,  [r1, #MMX_WR6]
-	wstrd	wR7,  [r1, #MMX_WR7]
-	wstrd	wR8,  [r1, #MMX_WR8]
-	wstrd	wR9,  [r1, #MMX_WR9]
-	wstrd	wR10, [r1, #MMX_WR10]
-	wstrd	wR11, [r1, #MMX_WR11]
-	wstrd	wR12, [r1, #MMX_WR12]
-	wstrd	wR13, [r1, #MMX_WR13]
-	wstrd	wR14, [r1, #MMX_WR14]
-	wstrd	wR15, [r1, #MMX_WR15]
+	wstrd	wR0,  r1, MMX_WR0
+	wstrd	wR1,  r1, MMX_WR1
+	wstrd	wR2,  r1, MMX_WR2
+	wstrd	wR3,  r1, MMX_WR3
+	wstrd	wR4,  r1, MMX_WR4
+	wstrd	wR5,  r1, MMX_WR5
+	wstrd	wR6,  r1, MMX_WR6
+	wstrd	wR7,  r1, MMX_WR7
+	wstrd	wR8,  r1, MMX_WR8
+	wstrd	wR9,  r1, MMX_WR9
+	wstrd	wR10, r1, MMX_WR10
+	wstrd	wR11, r1, MMX_WR11
+	wstrd	wR12, r1, MMX_WR12
+	wstrd	wR13, r1, MMX_WR13
+	wstrd	wR14, r1, MMX_WR14
+	wstrd	wR15, r1, MMX_WR15
 
 2:	teq	r0, #0				@ anything to load?
 	reteq	lr				@ if not, return
@@ -147,30 +148,30 @@ concan_dump:
 concan_load:
 
 	@ Load wRn
-	wldrd	wR0,  [r0, #MMX_WR0]
-	wldrd	wR1,  [r0, #MMX_WR1]
-	wldrd	wR2,  [r0, #MMX_WR2]
-	wldrd	wR3,  [r0, #MMX_WR3]
-	wldrd	wR4,  [r0, #MMX_WR4]
-	wldrd	wR5,  [r0, #MMX_WR5]
-	wldrd	wR6,  [r0, #MMX_WR6]
-	wldrd	wR7,  [r0, #MMX_WR7]
-	wldrd	wR8,  [r0, #MMX_WR8]
-	wldrd	wR9,  [r0, #MMX_WR9]
-	wldrd	wR10, [r0, #MMX_WR10]
-	wldrd	wR11, [r0, #MMX_WR11]
-	wldrd	wR12, [r0, #MMX_WR12]
-	wldrd	wR13, [r0, #MMX_WR13]
-	wldrd	wR14, [r0, #MMX_WR14]
-	wldrd	wR15, [r0, #MMX_WR15]
+	wldrd	wR0,  r0, MMX_WR0
+	wldrd	wR1,  r0, MMX_WR1
+	wldrd	wR2,  r0, MMX_WR2
+	wldrd	wR3,  r0, MMX_WR3
+	wldrd	wR4,  r0, MMX_WR4
+	wldrd	wR5,  r0, MMX_WR5
+	wldrd	wR6,  r0, MMX_WR6
+	wldrd	wR7,  r0, MMX_WR7
+	wldrd	wR8,  r0, MMX_WR8
+	wldrd	wR9,  r0, MMX_WR9
+	wldrd	wR10, r0, MMX_WR10
+	wldrd	wR11, r0, MMX_WR11
+	wldrd	wR12, r0, MMX_WR12
+	wldrd	wR13, r0, MMX_WR13
+	wldrd	wR14, r0, MMX_WR14
+	wldrd	wR15, r0, MMX_WR15
 
 	@ Load wCx
-	wldrw	wCSSF, [r0, #MMX_WCSSF]
-	wldrw	wCASF, [r0, #MMX_WCASF]
-	wldrw	wCGR0, [r0, #MMX_WCGR0]
-	wldrw	wCGR1, [r0, #MMX_WCGR1]
-	wldrw	wCGR2, [r0, #MMX_WCGR2]
-	wldrw	wCGR3, [r0, #MMX_WCGR3]
+	wldrw	wCSSF, r0, MMX_WCSSF
+	wldrw	wCASF, r0, MMX_WCASF
+	wldrw	wCGR0, r0, MMX_WCGR0
+	wldrw	wCGR1, r0, MMX_WCGR1
+	wldrw	wCGR2, r0, MMX_WCGR2
+	wldrw	wCGR3, r0, MMX_WCGR3
 
 	@ clear CUP/MUP (only if r1 != 0)
 	teq	r1, #0
diff --git a/arch/arm/kernel/iwmmxt.h b/arch/arm/kernel/iwmmxt.h
new file mode 100644
index 000000000000..fb627286f5bb
--- /dev/null
+++ b/arch/arm/kernel/iwmmxt.h
@@ -0,0 +1,47 @@
+/* SPDX-License-Identifier: GPL-2.0 */
+
+#ifndef __IWMMXT_H__
+#define __IWMMXT_H__
+
+.irp b, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15
+.set .LwR\b, \b
+.set .Lr\b, \b
+.endr
+
+.set .LwCSSF, 0x2
+.set .LwCASF, 0x3
+.set .LwCGR0, 0x8
+.set .LwCGR1, 0x9
+.set .LwCGR2, 0xa
+.set .LwCGR3, 0xb
+
+.macro wldrd, reg:req, base:req, offset:req
+.inst 0xedd00100 | (.L\reg << 12) | (.L\base << 16) | (\offset >> 2)
+.endm
+
+.macro wldrw, reg:req, base:req, offset:req
+.inst 0xfd900100 | (.L\reg << 12) | (.L\base << 16) | (\offset >> 2)
+.endm
+
+.macro wstrd, reg:req, base:req, offset:req
+.inst 0xedc00100 | (.L\reg << 12) | (.L\base << 16) | (\offset >> 2)
+.endm
+
+.macro wstrw, reg:req, base:req, offset:req
+.inst 0xfd800100 | (.L\reg << 12) | (.L\base << 16) | (\offset >> 2)
+.endm
+
+#ifdef __clang__
+
+#define wCon c1
+
+.macro tmrc, dest:req, control:req
+mrc p1, 0, \dest, \control, c0, 0
+.endm
+
+.macro tmcr, control:req, src:req
+mcr p1, 0, \src, \control, c0, 0
+.endm
+#endif
+
+#endif
-- 
2.29.1.341.ge80a0c044ae-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201107001056.225807-1-jiancai%40google.com.
