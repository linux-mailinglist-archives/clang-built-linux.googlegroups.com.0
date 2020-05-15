Return-Path: <clang-built-linux+bncBDAZZCVNSYPBBNFA7P2QKGQENP4UKMQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23a.google.com (mail-oi1-x23a.google.com [IPv6:2607:f8b0:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id AB4861D57A8
	for <lists+clang-built-linux@lfdr.de>; Fri, 15 May 2020 19:24:05 +0200 (CEST)
Received: by mail-oi1-x23a.google.com with SMTP id j84sf1602240oib.21
        for <lists+clang-built-linux@lfdr.de>; Fri, 15 May 2020 10:24:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589563444; cv=pass;
        d=google.com; s=arc-20160816;
        b=zW0JZItCYFIDQhB8cT7Xury1xDrc7JxM+2+15pPoHg1Bxhc0XMwmvFbaOHLAMqS6ji
         9cWurZm7q90LZGk2s6w7c0aHPkcuUvu5E3/VNpVl6htwsvXFVidELdFWTGetqOTY5rDo
         8VaaWU8CG6K6jDq8Mo5qoGQA7RjYosmE3FDYt7C3ncw52qiYIKDSShNRL1s7cO50L3pR
         XCH3yLzsEsgNt/t5fFBCxFJlZuAdcVvp4ZfGrMtmbWIdV5r02TVlzQQyqDbN+UEYfp+f
         m86L/e3F6armW8ta5rLaLEhIWsdcKCux1fmvNBmk3F6aJhX4lWP0zDkz64Rf8U68gdPV
         Qrxg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=gVpkASubCXhQMK4z1waGQuefracp2k8hqlP4SGi+2ZM=;
        b=nPxTuLHbLceyTJjLcWsj/qxApMei5lqheWypPLrGGexa2hwlR9HHPJGQx4ENbuTmDZ
         Q5odfWfx6RkYHkHOlzgGEPR2UVOtFn/F9YEUesV52sVNSA7dh6mjmmZESnL1pUxnVrn2
         elYTrNPmqV/VR8jd5zGkYY1GMFQSeODN6IEVnTTqoXA4uKmUu5/dRMsW7FCS3rmOVhba
         v128LFcvY13GN/6y+l/kfSztbbFK1+RNDNeaMpl2H+ynWPibtHhkDfS5j9ZtPIawv2K0
         dz9/Kh2fD3lf0Fik2eb4l+IoX6IwufQbFDMD+kLwx2bCHxIhsmT95j9B8IVf3cwYMF1E
         6I1A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=u58EeNvo;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=gVpkASubCXhQMK4z1waGQuefracp2k8hqlP4SGi+2ZM=;
        b=oHs2KjaUL4wh1yx/We3VxSfzqBBkkWwE8kjnGSfeyQGX3kuELj+vIQFOUqX5TgR94W
         vZeiX3b26M6xZVd5V5RN3UnXWSrk1MD06GR1KG1GXHcAHZgDS2oyDMMxLvFc/5hBwn9k
         X9BRO188BfImyWh2eSZUCw0jzyNGMS5dI82aVHIpvDQGmW/cS+nhpSjgBqMQBXeazvYA
         tJlOWowVj8XbgNLVTqpm0zWmUHjmL6Kd8edg/0B1wlGnDJiEPBF5GkQVM6DECVisAcg4
         lWVbhjsm6qSlBXN971MRcewNGPmclOnxGSxgg+gI9HBz9+P78Oea2ld57+JX3ud4nOcD
         mffQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=gVpkASubCXhQMK4z1waGQuefracp2k8hqlP4SGi+2ZM=;
        b=FkpU3tjcPvCzNsGrqNrzFT+4iAk4qBiX4QXAPpCVSx1PE+79qlm35M+FSXj/qbS44a
         3MWqRZN8nW5K83piCwgJAbc4BqE8VAi8NmxsSL+p7ON4AtCLNQN1fSEhwFgl2Qt4G0bU
         xsnANtrBD1CP04/XC52TkDNZPp9nHkl8CkLHOA1ozGcsV4bSqLvDexjtXSm4tH1YzhsK
         0sSGsmiF832Ssy2kYuY/bl/IXfEhj0suQPVXZmUH5F5NTGBSGY2LSL9QQmMes6wPp/Lp
         F0gBqE3q3IgwpWRTeRmgWyMhE/STGlQrWZxNKfKalSKkbTxcDBzdNYHTq5YED94mk5wr
         dJ9g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5302wZRB+lxgp2e9AEqFF4JqpJ2UWXBY8TkrPjDZ7wn/EVUvdFNT
	FqSlalUa/gtRuNOQrPYaeps=
X-Google-Smtp-Source: ABdhPJyYCmlIyy8h/GZBNW1+sSvZpLjgluLjPeEjS07ZTtbg5I4js60k6N6Px3KHCKHvQrxMVzv7cQ==
X-Received: by 2002:a9d:7f04:: with SMTP id j4mr3198024otq.185.1589563444637;
        Fri, 15 May 2020 10:24:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:7516:: with SMTP id q22ls666584oic.1.gmail; Fri, 15 May
 2020 10:24:04 -0700 (PDT)
X-Received: by 2002:aca:f146:: with SMTP id p67mr3054242oih.56.1589563444382;
        Fri, 15 May 2020 10:24:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589563444; cv=none;
        d=google.com; s=arc-20160816;
        b=ydEUDVyvzwm0MBqGWlxchTn7FldqxPmV4m91pwZXLRp3Q9Y2SKvBx8R1biMoa/QaA5
         2pm+vLLBcFakZvQUL3u/h670BFQQNLEAnp/H6NYBwW15agUyQsoUnETgg3JYUfpQCj3P
         ZNihsAD31ipnBuWK4uJ6KgHT2jqpc4ge1OtFatTFGAuJoCi6839kbc75yMtY96rKYWql
         6ttleolS+7nRCYQSW0Gu5q92m4gdinNnpG6fTYnRh0V+xcDnh6VOFHHarS1QN5VX409Z
         Cq3q8Y4LCwV5wJdfOnWioLQAHn+BfIWUVeoNQGjiPy9Jy75/LhrcHas1U7hgy+RVgUdi
         BNQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=8oYDK6ySEK4kobuBLoYfIAzILlvEejQOTWOwvjwD00k=;
        b=vhkYag+J/6WZAr/0FiGPnsvZt1QzfJ7m8sf2M5PxqfdsRlmXfjS46A8HK7xs25bg5c
         T5g+zDWRMsyHH5N+oVd+N2iBi128BaDgytrdU0dbOJAb8cmN3PfqOaMXRIHAFLd+PtIh
         YXTVjBVZxuNDiWdluvv8hJXcxo13ksEd73yHhpknucn7cAIjB6/6gGHuPQwJ6y6DYjnn
         gyUGiKvXpn0BYIeCDg0yLn8gn3cpniWvDxZ2bgDF56geLo+se71CVpyZprYRBc8Sjo/L
         ZyNBO3Ac5JcuOJM3Hgg0/hqE+6H6P1Tnt8YwYlkuoRabRAYKADZjmx9FdeT5FV9HEyMq
         P7zw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=u58EeNvo;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id l22si318559oos.2.2020.05.15.10.24.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 15 May 2020 10:24:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id C922D20727;
	Fri, 15 May 2020 17:23:59 +0000 (UTC)
Date: Fri, 15 May 2020 18:23:56 +0100
From: Will Deacon <will@kernel.org>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Catalin Marinas <catalin.marinas@arm.com>,
	James Morse <james.morse@arm.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	Ard Biesheuvel <ard.biesheuvel@linaro.org>,
	Mark Rutland <mark.rutland@arm.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Michal Marek <michal.lkml@markovi.net>,
	Ingo Molnar <mingo@redhat.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Juri Lelli <juri.lelli@redhat.com>,
	Vincent Guittot <vincent.guittot@linaro.org>,
	Dave Martin <Dave.Martin@arm.com>,
	Kees Cook <keescook@chromium.org>,
	Laura Abbott <labbott@redhat.com>, Marc Zyngier <maz@kernel.org>,
	Masami Hiramatsu <mhiramat@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Jann Horn <jannh@google.com>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v13 00/12] add support for Clang's Shadow Call Stack
Message-ID: <20200515172355.GD23334@willie-the-truck>
References: <20191018161033.261971-1-samitolvanen@google.com>
 <20200427160018.243569-1-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200427160018.243569-1-samitolvanen@google.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=u58EeNvo;       spf=pass
 (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=will@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

Hi Sami,

On Mon, Apr 27, 2020 at 09:00:06AM -0700, Sami Tolvanen wrote:
> This patch series adds support for Clang's Shadow Call Stack
> (SCS) mitigation, which uses a separately allocated shadow stack
> to protect against return address overwrites. More information
> can be found here:
> 
>   https://clang.llvm.org/docs/ShadowCallStack.html

I'm planning to queue this with the (mostly cosmetic) diff below folded in.
I also have some extra patches on top which I'll send out shortly for
review.

However, I really think we need to get to the bottom of the size issue
since I'm highly sceptical about not being able to afford a full page
for the shadow stack allocation. We can change this later so it needn't
hold up the patchset, but given that Android is the only user, I'd like
to make sure that if we change to use a full page upstream then that is
also acceptable in AOSP.

Thanks,

Will

--->8

diff --git a/include/linux/compiler-clang.h b/include/linux/compiler-clang.h
index 18fc4d29ef27..790c0c6b8552 100644
--- a/include/linux/compiler-clang.h
+++ b/include/linux/compiler-clang.h
@@ -45,6 +45,4 @@
 
 #if __has_feature(shadow_call_stack)
 # define __noscs	__attribute__((__no_sanitize__("shadow-call-stack")))
-#else
-# define __noscs
 #endif
diff --git a/include/linux/scs.h b/include/linux/scs.h
index 060eeb3d1390..3f3662621a27 100644
--- a/include/linux/scs.h
+++ b/include/linux/scs.h
@@ -11,7 +11,7 @@
 #include <linux/gfp.h>
 #include <linux/poison.h>
 #include <linux/sched.h>
-#include <asm/page.h>
+#include <linux/sizes.h>
 
 #ifdef CONFIG_SHADOW_CALL_STACK
 
@@ -20,7 +20,7 @@
  * architecture) provided ~40% safety margin on stack usage while keeping
  * memory allocation overhead reasonable.
  */
-#define SCS_SIZE		1024UL
+#define SCS_SIZE		SZ_1K
 #define GFP_SCS			(GFP_KERNEL | __GFP_ZERO)
 
 /* An illegal pointer value to mark the end of the shadow stack. */
@@ -29,7 +29,9 @@
 #define task_scs(tsk)		(task_thread_info(tsk)->scs_base)
 #define task_scs_offset(tsk)	(task_thread_info(tsk)->scs_offset)
 
-extern void scs_init(void);
+void scs_init(void);
+int scs_prepare(struct task_struct *tsk, int node);
+void scs_release(struct task_struct *tsk);
 
 static inline void scs_task_reset(struct task_struct *tsk)
 {
@@ -40,8 +42,6 @@ static inline void scs_task_reset(struct task_struct *tsk)
	task_scs_offset(tsk) = 0;
 }
 
-extern int scs_prepare(struct task_struct *tsk, int node);
-
 static inline unsigned long *__scs_magic(void *s)
 {
	return (unsigned long *)(s + SCS_SIZE) - 1;
@@ -55,12 +55,8 @@ static inline bool scs_corrupted(struct task_struct *tsk)
		READ_ONCE_NOCHECK(*magic) != SCS_END_MAGIC);
 }
 
-extern void scs_release(struct task_struct *tsk);
-
 #else /* CONFIG_SHADOW_CALL_STACK */
 
-#define task_scs(tsk)	NULL
-
 static inline void scs_init(void) {}
 static inline void scs_task_reset(struct task_struct *tsk) {}
 static inline int scs_prepare(struct task_struct *tsk, int node) { return 0; }
diff --git a/kernel/scs.c b/kernel/scs.c
index 2a96573f2b1b..9389c28f0853 100644
--- a/kernel/scs.c
+++ b/kernel/scs.c
@@ -55,45 +55,37 @@ static void scs_account(struct task_struct *tsk, int account)
 
 int scs_prepare(struct task_struct *tsk, int node)
 {
-	void *s;
+	void *s = scs_alloc(node);
 
-	s = scs_alloc(node);
	if (!s)
		return -ENOMEM;
 
	task_scs(tsk) = s;
	task_scs_offset(tsk) = 0;
	scs_account(tsk, 1);
-
	return 0;
 }
 
-#ifdef CONFIG_DEBUG_STACK_USAGE
-static unsigned long __scs_used(struct task_struct *tsk)
+static void scs_check_usage(struct task_struct *tsk)
 {
-	unsigned long *p = task_scs(tsk);
-	unsigned long *end = __scs_magic(p);
-	unsigned long s = (unsigned long)p;
+	static unsigned long highest;
 
-	while (p < end && READ_ONCE_NOCHECK(*p))
-		p++;
+	unsigned long *p, prev, curr = highest, used = 0;
 
-	return (unsigned long)p - s;
-}
+	if (!IS_ENABLED(CONFIG_DEBUG_STACK_USAGE))
+		return;
 
-static void scs_check_usage(struct task_struct *tsk)
-{
-	static unsigned long highest;
-	unsigned long used = __scs_used(tsk);
-	unsigned long prev;
-	unsigned long curr = highest;
+	for (p = task_scs(tsk); p < __scs_magic(tsk); ++p) {
+		if (!READ_ONCE_NOCHECK(*p))
+			break;
+		used++;
+	}
 
	while (used > curr) {
		prev = cmpxchg_relaxed(&highest, curr, used);
 
		if (prev == curr) {
-			pr_info("%s (%d): highest shadow stack usage: "
-				"%lu bytes\n",
+			pr_info("%s (%d): highest shadow stack usage: %lu bytes\n",
				tsk->comm, task_pid_nr(tsk), used);
			break;
		}
@@ -101,21 +93,16 @@ static void scs_check_usage(struct task_struct *tsk)
		curr = prev;
	}
 }
-#else
-static inline void scs_check_usage(struct task_struct *tsk) {}
-#endif
 
 void scs_release(struct task_struct *tsk)
 {
-	void *s;
+	void *s = task_scs(tsk);
 
-	s = task_scs(tsk);
	if (!s)
		return;
 
-	WARN_ON(scs_corrupted(tsk));
+	WARN(scs_corrupted(tsk), "corrupted shadow stack detected when freeing task\n");
	scs_check_usage(tsk);
-
	scs_account(tsk, -1);
	scs_free(s);
 }

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200515172355.GD23334%40willie-the-truck.
