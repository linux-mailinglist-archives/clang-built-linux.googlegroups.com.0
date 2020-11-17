Return-Path: <clang-built-linux+bncBDQ2R56ST4HRBSFWZT6QKGQEABXFW4I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53b.google.com (mail-pg1-x53b.google.com [IPv6:2607:f8b0:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CF492B55C1
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Nov 2020 01:37:29 +0100 (CET)
Received: by mail-pg1-x53b.google.com with SMTP id 33sf12854943pgt.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Nov 2020 16:37:29 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605573448; cv=pass;
        d=google.com; s=arc-20160816;
        b=GsiVQDAO3k5JEeYbOYbEpA+FmcJkYDwKtx0PMgGGA8Th0Qz/ytreV7IbR8y+uci23t
         CrFScpW/70RuqkGWhKSFoOLXBt1v6MPaDGN4NTj0rKaHFdVfHDcqsSeSslsdEKI4ob0h
         RsZ6OLw7EJmpVYRYa218q5scSri+WlF2aSQB7BnTv2ETInu0K3aWRRRcDhLtEY7NIJSY
         0Qg0pyQtup7a2yzB5cYP9FLJ9B+tQxrhapSsrA4Sf6U+9jw4vuadrTIq5dVi1MrNMJ0H
         ibdIGQECpADZQouMJk6J24JqOjdSm7QgCWreDeTidM/k8wvdaJBfodPfT+uPb2wNN1Y7
         wuIw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:from:subject:references
         :mime-version:message-id:in-reply-to:date:sender:dkim-signature;
        bh=ZHFJZOu8ezjLamwPntYpG3CAcIpiqKdau3w4FmDwVDw=;
        b=W5U+P3vm3qdS+fjy2bGRO9Czag+x/gwDMxAbSY0ff941quUwGEcY8ObW66q/EgmdBt
         NW6Uh93O88BWrfJvirUnHsXD4p5LfVGnhfrx4ZrBk9mjzvCii2WWldpnLJULJy8K+7i+
         awciWfF5C964hT463CUIiH3jL4bDy0gC+YdKAyIu+EYu30rmyYZVkmA0rCcvSAuEOoDO
         KR2HGyXm3RLnWPHExISQddAvsoeWQRDHgqi8iaHmOBCHUL9po5aUGgsyCbBWAhQaSk4e
         WXwpOggyUvRThCtBfZzbrfHYZfSze+hdq6oZH1trtv3sccJkTXXBFH7IT4KathWe4Wtv
         +epA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=AsiNCDIr;
       spf=pass (google.com: domain of 3rxuzxwckeu4zyq3sqyw44w1u.s42s1q3w-ray19-1y3adw44w1uw74a58.s42@flex--jiancai.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3RxuzXwcKEU4zyq3sqyw44w1u.s42s1q3w-rAy19-1y3ADw44w1uw74A58.s42@flex--jiancai.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:in-reply-to:message-id:mime-version:references:subject
         :from:cc:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ZHFJZOu8ezjLamwPntYpG3CAcIpiqKdau3w4FmDwVDw=;
        b=tMen85liU4NEG2jtEP3uqkCeWx4K3IEEChQ5OVSz4XjsK9iz42R6o+SKTpB7YhX3ZS
         HqD23SuP6osddhpSqj7mkqWT1wg0ajeRfKQGCGIoro0WabTvH+CZ7Q2mR9B4nrwmw89/
         LkDxSVFSY006BlT6u8uovM4efCbY4oyrLu3kQyY8BHqXsztNMU1o/6T7YD8HO88vi+Fh
         CC+KTUxHD4lnIqs4MTUUH9U1S9qJEdfwdpUnTDNaretOj0h33BmkRyyljF+8fJ6rl0+q
         ZoeVJMibHhJLJkOp6bRPVyojEZ5oKlWyX/QBjXW6lNRGluW7uVZAmmWDbMDmDHSroBvJ
         pa1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:date:in-reply-to:message-id:mime-version
         :references:subject:from:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZHFJZOu8ezjLamwPntYpG3CAcIpiqKdau3w4FmDwVDw=;
        b=VQbu5xxtFWUUv2kbLVbOMIpDiz5MyFm2SOs21ybzgUMgDWauWE9NdnHLkAIsJ/wzsk
         ulj59PFADF1ohOohNvExK54OlLEMc42KFDMyxMNz0MgoPZQ+lGVKEvQ+5o5Dmkk2Zy0x
         14PZdmILM543dyPkXRdBwS/PJBsAcJL1rpAGFwK2d8RZLspw9nfhijZcnaTUa5af4qC2
         9Av9gMP+x8hPOonGG8Gxp71MTuOn+O99cwQnJrtUSjnOnkzWtna4h11+msSt06iYBA4S
         FsVwadP2NRcKnvdOk/qoLXPrV1tkTYiZhK/1trlefCQ6YHwkD1raZ8zV3VXJb7pc0/X9
         T13A==
X-Gm-Message-State: AOAM530I1ekSL5KTh2BHRzCOOI4OkKz1NMP+e5cGi0QEPO15rDhClZfU
	Oi1pWUQBSPUirj+o14GOUQY=
X-Google-Smtp-Source: ABdhPJxP7R6AnHdeRlTBh9cvOziAmxvE1N8wjnES7lJ6G5HOuPyDY7dbSp2cLrSXynX0aQU3NXWVrQ==
X-Received: by 2002:a62:fc8f:0:b029:18b:823a:13c2 with SMTP id e137-20020a62fc8f0000b029018b823a13c2mr16576255pfh.57.1605573448249;
        Mon, 16 Nov 2020 16:37:28 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:3007:: with SMTP id hg7ls539178pjb.0.gmail; Mon, 16
 Nov 2020 16:37:27 -0800 (PST)
X-Received: by 2002:a17:902:6a84:b029:d7:d023:5723 with SMTP id n4-20020a1709026a84b02900d7d0235723mr15081258plk.34.1605573447689;
        Mon, 16 Nov 2020 16:37:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605573447; cv=none;
        d=google.com; s=arc-20160816;
        b=BAXx174AexFNqmyqngScmMOoP8MrjqygtmaBj4i/ISu91atXgfzz8LQH6M8PCdbuDh
         eOiKR/0tqNKr/bVAKIRIS+JY3dgYEz0ShciCulYOKcLYhbyjajdAhcx68DsiQxt5K8cT
         /PsdLLPxuCBWCXEWtolrLqNsVmQtZblX44zVaoO4A6U2Y17xCgjwoBO2vZr8Ma7mGKnK
         9wpdnVAsMRmcvY6niXcom2GmfyqsB4K+9tDecWmWlU9ghYr19Eol4JVkofKU4JiF4bkn
         wkDkSRfRObZuiJ8z/RN80kdcXH4fjY6BHGQSLmCUAx560WiG0ScVtgTfHbSzC/r7qisv
         M0xQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:from:subject:references:mime-version:message-id:in-reply-to:date
         :sender:dkim-signature;
        bh=cUwDNYk9lrKRqwceLJkP3XcP/q8L/2Z1kszygFqoP/s=;
        b=jsLrvYJIP24x6MgphfJx8h0BKkw0XUJWwnOzmB3Ohkt7+w8o2RvzI2Uv+pH71vpqSG
         MnS5UJhjHPPMtK4rKjtso+efXWDhOUEk2a3Dz0jNA9Q4n+RXtRjwDVlQppHUbJaJgNY4
         EkKjBuvSl+tpbAL1W7SM/QGRUamYCHz6Mwr2Mz1JvUPRsDOn/CZGH2H920Gf/0LorsV+
         +mvPW6j0vWl+/5EPxaAH4fi+H9BDWvHhNPIlJTWjrljM7yQlCHJ1taihGaW+HqYvEUp7
         sispbza1V6+uNh/cvH5vDrSJT4eO+GQf94xYPcf3+4RMjwg8dm93qBxfsCHQ5K9sMCTi
         xg+Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=AsiNCDIr;
       spf=pass (google.com: domain of 3rxuzxwckeu4zyq3sqyw44w1u.s42s1q3w-ray19-1y3adw44w1uw74a58.s42@flex--jiancai.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3RxuzXwcKEU4zyq3sqyw44w1u.s42s1q3w-rAy19-1y3ADw44w1uw74A58.s42@flex--jiancai.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x44a.google.com (mail-pf1-x44a.google.com. [2607:f8b0:4864:20::44a])
        by gmr-mx.google.com with ESMTPS id e2si160752pjm.2.2020.11.16.16.37.27
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Nov 2020 16:37:27 -0800 (PST)
Received-SPF: pass (google.com: domain of 3rxuzxwckeu4zyq3sqyw44w1u.s42s1q3w-ray19-1y3adw44w1uw74a58.s42@flex--jiancai.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) client-ip=2607:f8b0:4864:20::44a;
Received: by mail-pf1-x44a.google.com with SMTP id 144so13457188pfv.6
        for <clang-built-linux@googlegroups.com>; Mon, 16 Nov 2020 16:37:27 -0800 (PST)
Sender: "jiancai via sendgmr" <jiancai@jiancai.svl.corp.google.com>
X-Received: from jiancai.svl.corp.google.com ([2620:15c:2ce:0:f693:9fff:fef4:238b])
 (user=jiancai job=sendgmr) by 2002:aa7:8c4f:0:b029:18b:f361:4aa3 with SMTP id
 e15-20020aa78c4f0000b029018bf3614aa3mr16501083pfd.73.1605573447322; Mon, 16
 Nov 2020 16:37:27 -0800 (PST)
Date: Mon, 16 Nov 2020 16:37:21 -0800
In-Reply-To: <20201112200718.2747316-1-jiancai@google.com>
Message-Id: <20201117003724.2381423-1-jiancai@google.com>
Mime-Version: 1.0
References: <20201112200718.2747316-1-jiancai@google.com>
X-Mailer: git-send-email 2.29.2.299.gdc1121823c-goog
Subject: [PATCH v4] Make iwmmxt.S support Clang's integrated assembler
From: "'Jian Cai' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Cc: ndesaulniers@google.com, ardb@kernel.org, manojgupta@google.com, 
	llozano@google.com, clang-built-linux@googlegroups.com, 
	Jian Cai <jiancai@google.com>, Russell King <linux@armlinux.org.uk>, 
	Nathan Chancellor <natechancellor@gmail.com>, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jiancai@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=AsiNCDIr;       spf=pass
 (google.com: domain of 3rxuzxwckeu4zyq3sqyw44w1u.s42s1q3w-ray19-1y3adw44w1uw74a58.s42@flex--jiancai.bounces.google.com
 designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3RxuzXwcKEU4zyq3sqyw44w1u.s42s1q3w-rAy19-1y3ADw44w1uw74A58.s42@flex--jiancai.bounces.google.com;
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

Changes v3 -> v4:
Forgot to include iwmmxt.h in v3.

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
2.29.2.299.gdc1121823c-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201117003724.2381423-1-jiancai%40google.com.
