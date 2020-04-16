Return-Path: <clang-built-linux+bncBC2ORX645YPRBEMI4L2AKGQERUNUHOY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3c.google.com (mail-vk1-xa3c.google.com [IPv6:2607:f8b0:4864:20::a3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A0FB1ACCF6
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Apr 2020 18:13:07 +0200 (CEST)
Received: by mail-vk1-xa3c.google.com with SMTP id q190sf1733044vka.14
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Apr 2020 09:13:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587053586; cv=pass;
        d=google.com; s=arc-20160816;
        b=BViUuQ0AGRxumo1btySj6LTpgHAwkhI0XtW46lp+eBuhRuI5SoI6jnVCM9z7UrfqUB
         PdHwKmst8z22F8UHhIEh1i9clmnMPBkzTxGjz9OpqyU74zhpCQkZazYZdYv0GMJi70oJ
         CFnUFvtK0LZ0+TfcbAX/0O+cnm3sJoBwEY/DDwn9jmC4mJLnijeUbtT/lXkyu8cJIkLd
         +W6mF9yub5t48TkITkrdc2aEh2fRbEl2ITGz9I4wuHwDkuLFgpj7hF5nUgYET2bK5UAJ
         OFULDGL/KPZWoiQ9sPmFyuTz6QxkNxtjHJ8J8l9nSXZvvN1aAvP4/ejQ2ur/ePAKhPCV
         em6g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=lt5YdpUYFnXzr+iE/rEMKT62WrFJI0I/U5iPyAn0N+I=;
        b=XVHHPQ1hyISezAyw4NajoCbG2csvNYEZjDw92CMKyjMQbTElzzlH+zCCLvrPkQxOLE
         F4uku529WYEz4FF7FrGJLgJ6LPk731k8+L+VRDK/quv8WvTiqqgJmyWyZsAMNkF/5BQJ
         JahWnKHfAYQpgigEXATCXqMoV+pZMvCe1SCsgbaushqnUBUI1EYVN22b6ebKO5jALZ5e
         KCYLGESaBDXAPZo6CT2c53FKtVSIvT+Z79HmFaOZWfT8v2kynZD7FzaLE3hHPvdiaJI7
         Jsga0hI1Ra+u0M4RGPehdih2srUfeYd2HSU4Vd3l8jchiR810JiVGtgCCv01jP8hyMcm
         qvqA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=W5q7QBjk;
       spf=pass (google.com: domain of 3eisyxgwkahultfbmheotgxgzhhzex.vhf@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=3EISYXgwKAHUlTfbmheoTgXgZhhZeX.Vhf@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lt5YdpUYFnXzr+iE/rEMKT62WrFJI0I/U5iPyAn0N+I=;
        b=oNv0EjIjBQcEq/bYQJt7Y7DT1E+8S4UYpSmurvoICSggLuvhnUt+dE9aXjxr+qS7oq
         kKFT8y3Ef2rYaFPovyd8U7Rk6bdpKP8di7zqwC2e2z862fAGhJEECABiLLKFRo/Rbt7M
         U901F0dS/o7uIXv34t1zLRwdhdfKBTWzrIbrDKmub1KZbD95H+UPBX0jZ+oFJ/aZoyz5
         V50V+39APZPnJSs6YoO6Ya4577//nZjrOMm3qoJgYUdLcC7l8re1F6mGdpS+xGzAcHru
         14LyQVyZjw1B0Jl+EtjknAMtECAq1/rXCYpYAkpmS8l0m282lgy8TgEt1qbA7UzChw44
         i4Kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lt5YdpUYFnXzr+iE/rEMKT62WrFJI0I/U5iPyAn0N+I=;
        b=mVn7ccxFBz6FTpCqOzf9d8aAkhC+Q10WmZzLE2BSbJJ9bC4D+LGdYOc4mEakbVFFEM
         dKoRgxreA2br1AyOQ56Zj16SRcZJyruH04+7Odkbn1qxClBfcVRnNXAifeIchW4+lSCv
         7Vc8v5HJ2SZ7HS9hMOYx9q1SRAHIjEOgcA8Hg6vpy9kq06rxm26TIOwRTp21ibYY2iye
         XC5m2o3xcII7WjRd/0S4+hKxvCnGNdKbjkQSrc/MhPKYfUE8jbSbdF8Jp/UivKhB6alo
         Ad7Kq8F5jJ9w/ZdRxv+hbK5Y+7rHhi8s2Gf2l7NDJyUfsLpzcR67wpB8z81Hab8zrB+V
         UmGg==
X-Gm-Message-State: AGi0PuZE3/WMEi5hO5IP0+vGKBsFtEF6l0mGamgMP8TCVGqyujSc2dqX
	TaVGXdO4Ze9nw+3xG8zWpg8=
X-Google-Smtp-Source: APiQypLY6Na+T7XcSTAVwg7VDxHqs5xge6XnEg39HCNlq5SSar3uzCqNa4OH8AcogMoDfwlGaUM4TQ==
X-Received: by 2002:a1f:4510:: with SMTP id s16mr15643502vka.29.1587053585831;
        Thu, 16 Apr 2020 09:13:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:2052:: with SMTP id q18ls1594356vsr.4.gmail; Thu,
 16 Apr 2020 09:13:05 -0700 (PDT)
X-Received: by 2002:a05:6102:48d:: with SMTP id n13mr10263780vsa.160.1587053585290;
        Thu, 16 Apr 2020 09:13:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587053585; cv=none;
        d=google.com; s=arc-20160816;
        b=ZOd2fDr/YN/V/x5GjzhKgjlU/c1kLaBXooyoCqtDGWkwPxc8b+lb41DBGK1Wp3T3iR
         JN6+PdDxWJOfJ2Cqtaqpe2TS1NcodZ7ARtCLItoVM94vT4tQ9t1fJw6od2q2/HFU8zML
         T4/pKDrMGYOp5trAQTaeR5EjKw8t1Gb/0dFtrUQAx204zHCZyI3caunZS4nzQ1GZhYlU
         MSAzLOz7oTrmsrey9X3qxVSjSX6TBPLvDlsvmBdJSishobQCd7WcTwOzd81GhTYU1ixj
         Q23ZtKa++ksWUjOoftRarJW41IvuR0Tzuf/bDuhfjQbES5CbDY1NX08swqrXqY18hMvx
         Im/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=Kugk+73vmOylC3TFtzHwjlOoaJ/Fe5NzWOKKOj4AXU4=;
        b=Yhz6a8DOnSK8Xm9QrOw8N33VaSZw44J0qxLI1Ms4/4h5HZiAWP1vYzFoL3iREF9Epa
         WAJZQE7Fu7e/CKgMtpZS6FIUKeJq7Nf5Bs1ZCBjLRm3WTAxjXDuHEa2/o/UfDGke5FBR
         eOo/tm8wIvmax8WCsunPOUE4I6tliJaVnjQLsfqiyJw1ZloLwSseDvB0VWIS7HWRauSU
         UM4bKwSzdQ+wCcY4Oyo10Z0c0Ysx1FQ8KB2D38lbzQqXnhGm7ED/kTiYlVAA2bhAINpp
         D5ZZAF/SrTjLwbTPbl4MjtdWIMgXONb0JVaR5m4S13CW4MYWLaoedduPm7J7t8L31Rpd
         5bEQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=W5q7QBjk;
       spf=pass (google.com: domain of 3eisyxgwkahultfbmheotgxgzhhzex.vhf@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=3EISYXgwKAHUlTfbmheoTgXgZhhZeX.Vhf@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x64a.google.com (mail-pl1-x64a.google.com. [2607:f8b0:4864:20::64a])
        by gmr-mx.google.com with ESMTPS id p7si379901vsf.1.2020.04.16.09.13.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Apr 2020 09:13:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3eisyxgwkahultfbmheotgxgzhhzex.vhf@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) client-ip=2607:f8b0:4864:20::64a;
Received: by mail-pl1-x64a.google.com with SMTP id z9so3189170plk.5
        for <clang-built-linux@googlegroups.com>; Thu, 16 Apr 2020 09:13:05 -0700 (PDT)
X-Received: by 2002:a63:9e54:: with SMTP id r20mr8539917pgo.301.1587053584336;
 Thu, 16 Apr 2020 09:13:04 -0700 (PDT)
Date: Thu, 16 Apr 2020 09:12:39 -0700
In-Reply-To: <20200416161245.148813-1-samitolvanen@google.com>
Message-Id: <20200416161245.148813-7-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20200416161245.148813-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.26.1.301.g55bc3eb7cb9-goog
Subject: [PATCH v11 06/12] arm64: preserve x18 when CPU is suspended
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
 header.i=@google.com header.s=20161025 header.b=W5q7QBjk;       spf=pass
 (google.com: domain of 3eisyxgwkahultfbmheotgxgzhhzex.vhf@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=3EISYXgwKAHUlTfbmheoTgXgZhhZeX.Vhf@flex--samitolvanen.bounces.google.com;
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
2.26.1.301.g55bc3eb7cb9-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200416161245.148813-7-samitolvanen%40google.com.
