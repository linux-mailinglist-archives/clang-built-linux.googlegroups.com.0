Return-Path: <clang-built-linux+bncBC2ORX645YPRBLMDTT2QKGQE4CENB6A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x839.google.com (mail-qt1-x839.google.com [IPv6:2607:f8b0:4864:20::839])
	by mail.lfdr.de (Postfix) with ESMTPS id 17CA71BA981
	for <lists+clang-built-linux@lfdr.de>; Mon, 27 Apr 2020 18:00:47 +0200 (CEST)
Received: by mail-qt1-x839.google.com with SMTP id p31sf21055190qte.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 27 Apr 2020 09:00:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588003246; cv=pass;
        d=google.com; s=arc-20160816;
        b=v5Ec0j1SFzApnyHMOB8qVyRCF74CCtpvyx5GS1tqij7iiA//MvHuBI/1Fs1QUWuKpw
         VAN4KCzCG0pU1Qd74Mc7LKK9PbFG3pGqzOyQsDiVbuqZCZW/R7Pt+hI3p0Cns4XGHKkP
         PiihKAWV9nT9hGbKaH4mYLQhh7oFak6dkncOvitTUjGKREK8ylM/u+qzr6pEi4sBF6iw
         fPiLG54CYYYmaVMGJ8rVSXmg6lmXqsF20LqVOq39FHrlZJrUqamwpTn0UHQDDG/v6mxG
         dmo7ul3xMo41HCCU6c1CfPNHWCSXal7roAdlvolll4cxrzjLqeO+aLlHYk49K4jGWSG3
         kJOg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=T0k0GIRPJ+pWPxLo9pcfyL19CfbNdpaieoAcShBoDjc=;
        b=zcurDFyELOnE8eH8VorzjW6SBDW1xsXq32DCEnUa5tGj/EVZt4OLTG3IkaYhUBfc7S
         Ilejcm+MXmuKSpw2KioCZYbJBWhmI7xGw4Slc/d//5I9Wunh+M87LqmjbLiWTW7XPxOm
         X5lEaL/UgyytlKlCjE0d1Qne3ignsd1xjV00D9B08FyAUK1cUEReVg7LycuEpeP8a+Qx
         fGXieMFpIjx/K9aZFC7B/VL+7JFSs8Ooq7HIlpxY+0GnAoIQgiBys8dWSu4yeZe2HL7U
         3pdbiAo5du0eTI2pNniGN42+TTp1KWFvzZzi01eWeSl6FCgqoRH/TN/S3M1sYALW3+DR
         iChA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ZfWmmWWe;
       spf=pass (google.com: domain of 3rqgnxgwkaeg2kws3yv5kxoxqyyqvo.myw@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3rQGnXgwKAEg2kws3yv5kxoxqyyqvo.myw@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=T0k0GIRPJ+pWPxLo9pcfyL19CfbNdpaieoAcShBoDjc=;
        b=Jm03D1fqKKlTzFG753KPpaIY8GenxYzlWCcxfD/5H2Gjzg8uJW+wu9w0lFHI1bc+OR
         nVp6FcLV2Ihe78FJpZghHBB29EghhxwiizR0EXA6m35KUtaNzlotb2XUGBf2O4j7BEAG
         oJYebGLQaOeqiY+ydPS7eAZ2PnbAsqLUA8mxoEFJndlyEIDnA1Hk9eYhuXt94Zk+TIds
         3cJ8TiEtByQZAb2b6HTVHFmigyNJKK9Y3VyokOr/y2tE6Yzf/XH8fOB2kxZX/MHy5tLp
         Ems8G328h36gtm+bnR80xOQZw3+Utuk6XsKGUf/KeFzArPpqvkaYi/LbmY7eOKV398bN
         6Cag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=T0k0GIRPJ+pWPxLo9pcfyL19CfbNdpaieoAcShBoDjc=;
        b=h9Xw0zZglApr7jdQsWLXhIrT2TLm6Lvb9R32zFkdpOf6rc3LPtB7dCduYRWbQRtzUx
         iKpuKERu1j9xOvw89Sd/NaxTHW7WI7k/5xlohHohS/Z5YKDaYRthnWC2qJIut9+I0X5x
         FOXxQfY6a0JUqK+iS/Mms20cB84yNyC3LxScX/3PYtS0r3UqynzjyMhsFUtE/IgmE6hP
         3VfSw/CoYQ80tC7nfzBH/lHsH6fj6VIdMSTf5bQoGLRgfm1MYmc6Piox6UGX5QCClQKe
         Er7BEQ37PxL+57xY3VCinaxUsdNoVrC5GwWUi9YvqCUVtJad3mzAPVDuuD0xCWoRIAmw
         mYIw==
X-Gm-Message-State: AGi0PuYj3dz1JZlK/Syr1o26iaHwamnyY2r+s5Zi22RWWay9ct5y+XZn
	XPAaGfFhiRSnfw5XW47oEH0=
X-Google-Smtp-Source: APiQypKo+eXs2M3zRkQPulvO4y42gd/E6So0TK4yQyXghk9HGf0SF3QdhybCUAI9OuT29WNxw50mAw==
X-Received: by 2002:a37:a60c:: with SMTP id p12mr22681775qke.430.1588003246089;
        Mon, 27 Apr 2020 09:00:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ad4:4182:: with SMTP id e2ls3851547qvp.8.gmail; Mon, 27 Apr
 2020 09:00:45 -0700 (PDT)
X-Received: by 2002:a0c:efc8:: with SMTP id a8mr22135721qvt.153.1588003245526;
        Mon, 27 Apr 2020 09:00:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588003245; cv=none;
        d=google.com; s=arc-20160816;
        b=YYHdK7QF5gY/EUq5drzmCNNmohGw63ldr8cHi2oLV7Xjc0hVA87GH+a+tBFEveZKZt
         KZtkmaeuBkQySKmO9ZNA16Hhn3pI4T4PxUUwsnRALDUcOseFBAJxQa/ius/VSkWx193G
         A6iYKg//bqMKvt8ZKJhsZeEkX5OguBTy2ldfFm9SAHMCb8Ba4Rb+rAPzc1xZzHT/tS9Y
         azZvyijUGp3C9kBIL+7G2x3EuY78NBTlgGwrVZuJwaR9XWHAACkL1R+suLEbrZgpjI/2
         vB0UNAyKhsiEnllQpq5IWyy/MsMGRloSDJn8FVnI/+pkOHHmIBR/3O+EU/V388OwslSI
         XDxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=aDem5II6XtVFnIoK0CnL/HzpdSNcG3sRMln2VgftrwU=;
        b=LpwA9SpFBdAPXWmHR+JmyAM6lQNs1iw4vbQZhc8PzG5mZG6+bvmcSBoIsC2cuEDkxh
         LGP6SzP0p0bYwm4uyWhgtSROT6mLhDXSq3KAj2l9vsnjSnGEZwbPDa9VDXxp3DuL01Je
         Wx1CMFzWDNVBg1nq6emsjS2r3B1Wiiyo/lAlgNJYjIX8xFNThCl2wjsVq9Su3Y/sBjoJ
         9Z8gVRbXQbjtvGJnI6sjBCY7bYjCR2MQnR96fxzH2X5ar012ZQ2kwhOaKetLVqILmAhY
         s0boDGOy3lPC4CId4/amHTMynxcNRDpZ/mPT4131BTQbcbFJ0HZFNkgY4yBPC2KhVPo3
         PbaQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ZfWmmWWe;
       spf=pass (google.com: domain of 3rqgnxgwkaeg2kws3yv5kxoxqyyqvo.myw@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3rQGnXgwKAEg2kws3yv5kxoxqyyqvo.myw@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qv1-xf4a.google.com (mail-qv1-xf4a.google.com. [2607:f8b0:4864:20::f4a])
        by gmr-mx.google.com with ESMTPS id e7si850199qtc.5.2020.04.27.09.00.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Apr 2020 09:00:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3rqgnxgwkaeg2kws3yv5kxoxqyyqvo.myw@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::f4a as permitted sender) client-ip=2607:f8b0:4864:20::f4a;
Received: by mail-qv1-xf4a.google.com with SMTP id et5so19222570qvb.5
        for <clang-built-linux@googlegroups.com>; Mon, 27 Apr 2020 09:00:45 -0700 (PDT)
X-Received: by 2002:a0c:8262:: with SMTP id h89mr21907606qva.173.1588003245161;
 Mon, 27 Apr 2020 09:00:45 -0700 (PDT)
Date: Mon, 27 Apr 2020 09:00:12 -0700
In-Reply-To: <20200427160018.243569-1-samitolvanen@google.com>
Message-Id: <20200427160018.243569-7-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20200427160018.243569-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.26.2.303.gf8c07b1a785-goog
Subject: [PATCH v13 06/12] arm64: preserve x18 when CPU is suspended
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	James Morse <james.morse@arm.com>, Steven Rostedt <rostedt@goodmis.org>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>, Mark Rutland <mark.rutland@arm.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, Michal Marek <michal.lkml@markovi.net>, 
	Ingo Molnar <mingo@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
	Juri Lelli <juri.lelli@redhat.com>, Vincent Guittot <vincent.guittot@linaro.org>
Cc: Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>, 
	Laura Abbott <labbott@redhat.com>, Marc Zyngier <maz@kernel.org>, 
	Masami Hiramatsu <mhiramat@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Jann Horn <jannh@google.com>, Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	clang-built-linux@googlegroups.com, kernel-hardening@lists.openwall.com, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=ZfWmmWWe;       spf=pass
 (google.com: domain of 3rqgnxgwkaeg2kws3yv5kxoxqyyqvo.myw@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::f4a as permitted sender) smtp.mailfrom=3rQGnXgwKAEg2kws3yv5kxoxqyyqvo.myw@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

Don't lose the current task's shadow stack when the CPU is suspended.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
Reviewed-by: Mark Rutland <mark.rutland@arm.com>
Acked-by: Will Deacon <will@kernel.org>
---
 arch/arm64/include/asm/suspend.h |  2 +-
 arch/arm64/mm/proc.S             | 14 ++++++++++++++
 2 files changed, 15 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/include/asm/suspend.h b/arch/arm64/include/asm/suspend.h
index 8939c87c4dce..0cde2f473971 100644
--- a/arch/arm64/include/asm/suspend.h
+++ b/arch/arm64/include/asm/suspend.h
@@ -2,7 +2,7 @@
 #ifndef __ASM_SUSPEND_H
 #define __ASM_SUSPEND_H
 
-#define NR_CTX_REGS 12
+#define NR_CTX_REGS 13
 #define NR_CALLEE_SAVED_REGS 12
 
 /*
diff --git a/arch/arm64/mm/proc.S b/arch/arm64/mm/proc.S
index 197a9ba2d5ea..ed15be0f8103 100644
--- a/arch/arm64/mm/proc.S
+++ b/arch/arm64/mm/proc.S
@@ -58,6 +58,8 @@
  * cpu_do_suspend - save CPU registers context
  *
  * x0: virtual address of context pointer
+ *
+ * This must be kept in sync with struct cpu_suspend_ctx in <asm/suspend.h>.
  */
 SYM_FUNC_START(cpu_do_suspend)
 	mrs	x2, tpidr_el0
@@ -82,6 +84,11 @@ alternative_endif
 	stp	x8, x9, [x0, #48]
 	stp	x10, x11, [x0, #64]
 	stp	x12, x13, [x0, #80]
+	/*
+	 * Save x18 as it may be used as a platform register, e.g. by shadow
+	 * call stack.
+	 */
+	str	x18, [x0, #96]
 	ret
 SYM_FUNC_END(cpu_do_suspend)
 
@@ -98,6 +105,13 @@ SYM_FUNC_START(cpu_do_resume)
 	ldp	x9, x10, [x0, #48]
 	ldp	x11, x12, [x0, #64]
 	ldp	x13, x14, [x0, #80]
+	/*
+	 * Restore x18, as it may be used as a platform register, and clear
+	 * the buffer to minimize the risk of exposure when used for shadow
+	 * call stack.
+	 */
+	ldr	x18, [x0, #96]
+	str	xzr, [x0, #96]
 	msr	tpidr_el0, x2
 	msr	tpidrro_el0, x3
 	msr	contextidr_el1, x4
-- 
2.26.2.303.gf8c07b1a785-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200427160018.243569-7-samitolvanen%40google.com.
