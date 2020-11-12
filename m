Return-Path: <clang-built-linux+bncBDQ2R56ST4HRB7FLW36QKGQEFY5AQDQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x339.google.com (mail-ot1-x339.google.com [IPv6:2607:f8b0:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id B0D6B2B0EC7
	for <lists+clang-built-linux@lfdr.de>; Thu, 12 Nov 2020 21:07:25 +0100 (CET)
Received: by mail-ot1-x339.google.com with SMTP id 36sf2979142otu.11
        for <lists+clang-built-linux@lfdr.de>; Thu, 12 Nov 2020 12:07:25 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605211644; cv=pass;
        d=google.com; s=arc-20160816;
        b=YTd3G1/8/DboJUaJhAhuOU/yCs6jSL2jQqyKNT6/03r7RUJU5PCL90rLoFxZJUGkgU
         Ii8AsWf+FEB0EKe0WdmnQTTx4JZxxyF9KyvvH5Mbl9wh8PJQgNJVf5Gp4dzZMzGMnoDe
         MQQgOlITym0uIpe30SH99y/6/Mcbdir2OKBl5x+x/JQeJOt6yRX07jHjeWgq/EaDnWvg
         xX3LiRscgwa2Z1iq5LRyrP5Ll+Qe6VFjVqbpG469HNvWQHGbulv4lVAo2DND34iWo6xp
         ICkzUJlaVrIjDQFQz6Ghfu2LoDL7YVkA1gLl+8MEfgMG+bshn8ujCYJTiF5lARWQ25Yp
         AjAQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:from:subject:references
         :mime-version:message-id:in-reply-to:date:sender:dkim-signature;
        bh=rpyB80tngeDjzKoPgrDnCwY8QF88ZrIY/9kcs8dYOpo=;
        b=O/S4X6OnraVl9GamwZpKX8BYoJN8RCf48HNuSQ38ZhegPbARUWCYwyHPVb0qLw5lP2
         83DI9N3VepRHjYifnEn18DhmF+FWA+kj0RJ55GdduBQCZM2P23wLgQqBVfgLje9vPUYz
         dz2A6J4nLRe3Ab0KxIOL3awaCTlwfsEEb3CwGAIcVGoRQ1S0ePCNuWHkW9soUKRelp5A
         sP5TgSuv4EMzeF+QzdWTCmmD/8phn3sEBqopzCbZJQVqIbTRrM3LdDkGTUK9itI+bgcD
         WHzSlvuMRl8V1e93rkTNJ7xRQ75zSrJzocO2+UTJDQ5I9ffNtWjZJTgX7YZymJgIzF05
         zl8w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=shLV0fQ1;
       spf=pass (google.com: domain of 3-5wtxwckeealkcpeckiqqing.eqoencpi-dwknv-nkpwziqqingitqwru.eqo@flex--jiancai.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3-5WtXwcKEeALKCPECKIQQING.EQOENCPI-DWKNV-NKPWZIQQINGITQWRU.EQO@flex--jiancai.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=rpyB80tngeDjzKoPgrDnCwY8QF88ZrIY/9kcs8dYOpo=;
        b=XYZYQGCr0Hnb5OCM9mHHavNiQxBy0FzpslOwpbNZB0fVwV1b+N8SFrSpOWu2yIR1bD
         1qicPj/yaS+gqCgaUhXeLegbMIwL24VYz9zAwWOE3h6PNLRl+auaqgPnHA+TGEKl6nZd
         JqSLFeKVMy2F6BpHWZNYWBpy40ss2Ij7mTOrx3fNGDqAo+wnvOfboyxUs0aB1xxETryf
         e94QENg1F9X5eErs9lmwefvEcCl+nDicvUM+2VbinijjGR1hfHdiLg/Cn2y1lWj+ntEz
         4ZgKxHIIyzOTr9h3f6l2Ud9UQe14Uc2+iaD6u1G0inVGAKWSdI4wAieqjtXZ7mzP1ld5
         ztJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rpyB80tngeDjzKoPgrDnCwY8QF88ZrIY/9kcs8dYOpo=;
        b=YZP5MaQTxYQTFkfTodEpei9C2qGQaXDbML6CiCxwssT+YvNUDWS/gZIn0jbzWcE8J7
         0NH1dXjmT7AQM8EfS2WZjfyxm8C8ZjlpQz8hRMXoMbELum1qmL9xGwX46KbSIZAIOPS2
         h/Q2ap5DT8tjXsNzdhUDRKK+48M1ZhxSgUzKbhahF7+P6hcOUp8BTc71+v9Midr7Otjs
         iyuGHfuMnbB8PEm007OQLmxE9Pf40A9SvIhchKwSEyBqGNT6cg/6KthfjyFMHNEvWNUu
         /SzQZ4mxghZUoWCOogYriA6LCKwwPjfrPnEIU0BAL51fj1UHTSACu6P/DOmM2TWrg1lg
         tW7A==
X-Gm-Message-State: AOAM531kSG1ljxz5HUU1TAmuc086uTpiTdC/suCluHbQbaOzNUUe/eP/
	egy0xBtaIE3fpHY+tCEd868=
X-Google-Smtp-Source: ABdhPJxuBSkW4DH52OD2xx2S6V4GW88dpYQxzOKynlZHljcQ3BENqqYU5xhU6AUB8Bj4LIHkA7NPyg==
X-Received: by 2002:aca:ef06:: with SMTP id n6mr888818oih.173.1605211644570;
        Thu, 12 Nov 2020 12:07:24 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:1c12:: with SMTP id c18ls948631oic.11.gmail; Thu, 12 Nov
 2020 12:07:24 -0800 (PST)
X-Received: by 2002:aca:b1c2:: with SMTP id a185mr985376oif.83.1605211644228;
        Thu, 12 Nov 2020 12:07:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605211644; cv=none;
        d=google.com; s=arc-20160816;
        b=TUeLBo5ucFhZMJ4p62uSEoDCPjbSOxb35NOGCheAs1paqO1O067rCVE5/XrSOAYEA4
         WUgIIGcZNFrEXUrMRb4xJy8jx7NxQeLUhoQat1wD8A3TwpoSJgRYgbb2G1fQArygZ6DT
         fk/Q3NiLczVht96VG/RgcXOvo3phtPo/xP7Zik11upLUpY2beH3uo80rTYZYGtTw0ej9
         T5VJjzCEvftwdBeDHN9ChmCFTf7ODgcRvIElvOTZKXyiZcBrmQs4SJfsD/vc3brkBOgN
         JhtuK+3y+L0y9+NxlffCD7awE5W+ncDJhnbuvRatRn+ClDu4L46Ot6w8qg9Fna8IjcKD
         3s7Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:from:subject:references:mime-version:message-id:in-reply-to:date
         :sender:dkim-signature;
        bh=FGYxJIAG4esRLwE4g6/6d2GqFghqrj8MPyr2L5/Ef4g=;
        b=iIfnK8VHQe0+VBRPrX9uvnef7THMdVyEIfZyOIyvSa5WUfJkarVcHVxXAH8jyZMo9p
         cYC5dcxapv530fvkVNr+1GFIB9JCymjzkpIHm6lpbJla4DJ/Km0iSsk4iMDigLwlQCr3
         EoviQKEhVtfWNJ+TKCHvPgZ2kjpkyPHMvsvyFVvNhVe6TaUVDUMy/IK0v1sX7JQB0NOB
         yE//0qAltG6sANM+iI8iH6kSdb+C4CPHXy+ig+ZWpsLNNblfpbCalNDj5MYqzMdpP5zx
         QMdvrl8D5H6SZ2k7u9kUEE7GiD/3yEi2PddObR0EPJlbku2LPMqiP8cKLKM3Ce2fGE8S
         pFUg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=shLV0fQ1;
       spf=pass (google.com: domain of 3-5wtxwckeealkcpeckiqqing.eqoencpi-dwknv-nkpwziqqingitqwru.eqo@flex--jiancai.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3-5WtXwcKEeALKCPECKIQQING.EQOENCPI-DWKNV-NKPWZIQQINGITQWRU.EQO@flex--jiancai.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id r6si945361oth.4.2020.11.12.12.07.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Nov 2020 12:07:24 -0800 (PST)
Received-SPF: pass (google.com: domain of 3-5wtxwckeealkcpeckiqqing.eqoencpi-dwknv-nkpwziqqingitqwru.eqo@flex--jiancai.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id b25so7709081ybj.2
        for <clang-built-linux@googlegroups.com>; Thu, 12 Nov 2020 12:07:24 -0800 (PST)
Sender: "jiancai via sendgmr" <jiancai@jiancai.svl.corp.google.com>
X-Received: from jiancai.svl.corp.google.com ([2620:15c:2ce:0:f693:9fff:fef4:238b])
 (user=jiancai job=sendgmr) by 2002:a25:5806:: with SMTP id
 m6mr1930447ybb.449.1605211643746; Thu, 12 Nov 2020 12:07:23 -0800 (PST)
Date: Thu, 12 Nov 2020 12:07:17 -0800
In-Reply-To: <20201107001056.225807-1-jiancai@google.com>
Message-Id: <20201112200718.2747316-1-jiancai@google.com>
Mime-Version: 1.0
References: <20201107001056.225807-1-jiancai@google.com>
X-Mailer: git-send-email 2.29.2.299.gdc1121823c-goog
Subject: [PATCH v3] Make iwmmxt.S support Clang's integrated assembler
From: "'Jian Cai' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Cc: ndesaulniers@google.com, ardb@kernel.org, manojgupta@google.com, 
	llozano@google.com, clang-built-linux@googlegroups.com, 
	Jian Cai <jiancai@google.com>, Russell King <linux@armlinux.org.uk>, 
	Nathan Chancellor <natechancellor@gmail.com>, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jiancai@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=shLV0fQ1;       spf=pass
 (google.com: domain of 3-5wtxwckeealkcpeckiqqing.eqoencpi-dwknv-nkpwziqqingitqwru.eqo@flex--jiancai.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3-5WtXwcKEeALKCPECKIQQING.EQOENCPI-DWKNV-NKPWZIQQINGITQWRU.EQO@flex--jiancai.bounces.google.com;
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
providing full IWMMXT support in Clang.  This is one of the last bits of
kernel code that could be compiled but not assembled with clang. Once
all of it works with IAS, we no longer need to special-case 32-bit Arm
in Kbuild, or turn off CONFIG_IWMMXT when build-testing.

"Intel Wireless MMX Technology - Developer Guide - August, 2002" should
be referenced for the encoding schemes of these extensions.

Link: https://github.com/ClangBuiltLinux/linux/issues/975

Suggested-by: Nick Desaulniers <ndesaulniers@google.com>
Suggested-by: Ard Biesheuvel <ardb@kernel.org>
Acked-by: Ard Biesheuvel <ardb@kernel.org>
Signed-off-by: Jian Cai <jiancai@google.com>
---

Thanks Ard for the writeup.

Changes v2 -> v3:
Add rationale in the commit log to further highlight the necessity of
this change based on ardb@kernel.org's suggestion.

 arch/arm/kernel/iwmmxt.S | 89 ++++++++++++++++++++--------------------
 1 file changed, 45 insertions(+), 44 deletions(-)

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
-- 
2.29.2.299.gdc1121823c-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201112200718.2747316-1-jiancai%40google.com.
