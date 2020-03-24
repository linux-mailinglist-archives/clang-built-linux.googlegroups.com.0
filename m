Return-Path: <clang-built-linux+bncBDYJPJO25UGBBY4J5LZQKGQEXDASADQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13a.google.com (mail-il1-x13a.google.com [IPv6:2607:f8b0:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id AEFEC191C85
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Mar 2020 23:08:36 +0100 (CET)
Received: by mail-il1-x13a.google.com with SMTP id e7sf150340ilc.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Mar 2020 15:08:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585087715; cv=pass;
        d=google.com; s=arc-20160816;
        b=zojRHO+HTracf4fql2aoRZnRxWzOwMiizbfPrSvfzy1PKDW5r1EeonVOkhdOJZt+vV
         yD/ku7ei3TevuR0HFZ640P2u6iOtQ4996WSam6KQcdkWnRJAkAhBoXMc3Ryp/t5OIEvA
         itlVppMp/MyhJ7hj/y9Cx8/9SzU1JbRmEsnPKm20ZiFJ7xOWLo4YHwCZNqKtq7YH1hv5
         NLun71FYjlcwQOlSJaWa9KSMrxWh+sqh2vnTDPEfWWkIZ5s7k7eUplercmzGYMa8SznE
         qfklrDrjdGgkKeVuNv43L378pgJtGJuCWxflY5O0wTVT/xYbmMF9C7v8g381meHuwOC2
         Cuhg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :mime-version:message-id:date:dkim-signature;
        bh=CYV4ZuQWVw2YnokOpMJBA/vkEhJB6FC/bEisF8cy8NQ=;
        b=LGmmmGhr4kOh7zusAY+ig9nikHs5rYA9z79rmtTdpqonvPl2alNNKgQaQRbkfIi8tz
         kQ0BPN7qphCibltD09wxZJ1nXxQqnIepyWSYt8gbx/9OuDgR7SFcI3PHeIpe8D4DvwOt
         QgrS8VMmrdRmptsGGE4TPZ9zkuImsygra6cYk4g+QUSBFXiAjciNlBsd6mZ9DyZ8Xlix
         Q+ezAH9ObNmBjT/vtggVCm9PP4+ig8GeoHvlNzxvKSA6//h1Hb5kdeeEPKOf9zDFcdlO
         pzf0Cx8XfzabplGwdtiHJJarobPn2C6ILvtGZ4HvdB6CAD/0WFWZMbD4Xy5MqbM7cD5C
         2e9g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=H6qhOBpI;
       spf=pass (google.com: domain of 34or6xgwkam88yzdvf683zcd19916z.x97@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=34oR6XgwKAM88yzDvF683zCD19916z.x97@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:message-id:mime-version:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=CYV4ZuQWVw2YnokOpMJBA/vkEhJB6FC/bEisF8cy8NQ=;
        b=mxi9eFSWICVbZo6KNitEpBMgDldDynqnSkwiKmd/JguMJCJyr4GG3gBAzMaKKCKINI
         OZe+RxwMgz+UxVl1P9t1+Q07oGJm0EqoOuJlbHAMAmlDgx/bGBWuC/lRNezLgSry/pCh
         rtOUDb5tFwWMCCzW+IUox7a6pvvUTs+J6+fZIOSUH3McfGrXu/odLbHNowZZsTN+MwHi
         ZhzVzI+PM2Tr7f9VO2EjNcgH3R+5v0AYoMu0ghyi1Fg1x/eA2ZJQLMdLp7sq0/uUe17N
         dtgbDhz96cRxWt9bdt+RoZ/cQss3CO29WAiHY3GjU9jfEuE6lxSHJMk72NmOf2bTtWBW
         Kw/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:message-id:mime-version:subject:from:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=CYV4ZuQWVw2YnokOpMJBA/vkEhJB6FC/bEisF8cy8NQ=;
        b=Ob29Zc8EwtsTOG4AyQygZjPwcjX3zzC5CPkoexHTibnfCn5O7vocHeUfonTXLLGpln
         e7r44JBc7WdaxDqtoLQCSzU1Im+WqLQNrAwqX5bKz4C4Ea3vmrQxlzFRCZ/Qr6nYkAeF
         Q3qpN1PYvXfjXJcLvShv8/VmA2cshJ01RWKL0t7d1UQ9SZWNTdhDmpxwxu1rY9ZAsdG3
         LSlY4SZ6kZzw+TaVFjzT2k02ZxdnoUkQCFc4ryK5lpm/7d+QNaZxvWr6wgyP0nff766I
         zJtsAybIvlhlx3OrXx2g/ArUPLQHIIaFCxtL0wSQbP1ETKBdczYtNqnKrHzOlLwXfUKR
         2IAw==
X-Gm-Message-State: ANhLgQ1+fnHy6Ldn31fUhEWRHKRuUjOM+oCiqYBInBQmtomlcCCl2tGJ
	IlfPXueZ0hlF+lFN/RWEb/I=
X-Google-Smtp-Source: ADFU+vsZuGMJWY1jzqJIeMJo9qwFBhfS3IT92gmAdOxhH7oPU9LO0to+cejjiFk74yO++5oD08GQvg==
X-Received: by 2002:a92:d20e:: with SMTP id y14mr614108ily.104.1585087715663;
        Tue, 24 Mar 2020 15:08:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:8106:: with SMTP id e6ls4778749ild.6.gmail; Tue, 24 Mar
 2020 15:08:35 -0700 (PDT)
X-Received: by 2002:a92:8cc9:: with SMTP id s70mr539491ill.251.1585087715279;
        Tue, 24 Mar 2020 15:08:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585087715; cv=none;
        d=google.com; s=arc-20160816;
        b=qZNQmEOcg/BId4pCYEngLPm6c2EcRQUjWFN4SwP3noMTKRP5vQgZnWzxYPCum05Zal
         C0Nw/IhFQx9xInhI2EjSwq/hVapmirxLdOHcqVsj7ZeEtJCXkQ603ajHi/Sw8QzzFXOc
         S64WPq4DqEbfwbZDZp2m2vx9n2oWHzNa1S5rVthuHxQ1j5nHBhVNPOpG3ur5/F1Xldyt
         vkW5lir78kFf7tUHCZIwYo72EwCFUK2MFfPeXI7ITu1WR2t33gm3XJPF0RQX/5r/ZotC
         BMaEKFnitkW89eJgPejk1/VRSDPitLdzgtpULQtmZkWBkABLMN/tRXYWo33QnJwusmqh
         cDmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:mime-version:message-id:date:dkim-signature;
        bh=VnIQr3MBxwNyixFgi8P0Qi6KFxgZe3JgL+pz4Qnuelg=;
        b=Dg9+ZJ+JdMgBpBYW492MX/UTHijNqNupemLi91NMQuAG42FDSUnBTRXAbYLkOk1p/W
         LP9rFjiOLs5H7lloQ0H1j99jRIMrxBIpYt22W582JHO3MMpns1AbdFgXN5xErv+6laO6
         0Hq9tvGTQsav9KBs68hkXOb9weVn48/oUvp27lKwI+bL93INDvNeY7CI+8AWsSnDfcjL
         SZnkoNqaPh8dnauTzOVJFtcLDsfODd++bHnuNrucWaQbbImQr7bGtS1XViH+MbHnUiIj
         ZzM1XO5iwj3nnkflgk2GAJQvzVGuNbFw6oboFL4hmTtHGj7YTZ1N/F1lCyJ5zjlZQ9Qp
         xF+w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=H6qhOBpI;
       spf=pass (google.com: domain of 34or6xgwkam88yzdvf683zcd19916z.x97@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=34oR6XgwKAM88yzDvF683zCD19916z.x97@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x549.google.com (mail-pg1-x549.google.com. [2607:f8b0:4864:20::549])
        by gmr-mx.google.com with ESMTPS id b16si1047867ion.0.2020.03.24.15.08.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Mar 2020 15:08:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of 34or6xgwkam88yzdvf683zcd19916z.x97@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) client-ip=2607:f8b0:4864:20::549;
Received: by mail-pg1-x549.google.com with SMTP id c33so66389pgl.20
        for <clang-built-linux@googlegroups.com>; Tue, 24 Mar 2020 15:08:35 -0700 (PDT)
X-Received: by 2002:a63:36cd:: with SMTP id d196mr29685923pga.280.1585087714533;
 Tue, 24 Mar 2020 15:08:34 -0700 (PDT)
Date: Tue, 24 Mar 2020 15:08:25 -0700
Message-Id: <20200324220830.110002-1-ndesaulniers@google.com>
Mime-Version: 1.0
X-Mailer: git-send-email 2.25.1.696.g5e7596f4ac-goog
Subject: [PATCH] x86: signal: move save_altstack_ex out of generic headers
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: tglx@linutronix.de, mingo@redhat.com, bp@alien8.de
Cc: Nick Desaulniers <ndesaulniers@google.com>, Peter Zijlstra <peterz@infradead.org>, 
	clang-built-linux@googlegroups.com, 
	Linus Torvalds <torvalds@linux-foundation.org>, "H. Peter Anvin" <hpa@zytor.com>, x86@kernel.org, 
	Marco Elver <elver@google.com>, Andrey Ryabinin <aryabinin@virtuozzo.com>, 
	Sami Tolvanen <samitolvanen@google.com>, Brian Gerst <brgerst@gmail.com>, 
	Sebastian Andrzej Siewior <bigeasy@linutronix.de>, Andrew Morton <akpm@linux-foundation.org>, 
	Jann Horn <jannh@google.com>, Mathieu Desnoyers <mathieu.desnoyers@efficios.com>, 
	Arnd Bergmann <arnd@arndb.de>, Oleg Nesterov <oleg@redhat.com>, 
	Ben Hutchings <ben.hutchings@codethink.co.uk>, "Eric W. Biederman" <ebiederm@xmission.com>, 
	linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=H6qhOBpI;       spf=pass
 (google.com: domain of 34or6xgwkam88yzdvf683zcd19916z.x97@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=34oR6XgwKAM88yzDvF683zCD19916z.x97@flex--ndesaulniers.bounces.google.com;
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

In some configurations (clang+KASAN), sas_ss_reset() may emit calls to
memset().  This is a problem for SMAP protections on x86, which should
try to minimize calls to any function not already on short whitelist, in
order to prevent leaking AC flags or being used as a gadget.

Linus noted that save_altstack_ex() only has two callsites, in the
arch-specific arch/x86/kernel/signal.c, and shouldn't be defined in arch
independent headers. Move the definitions there, make them static
functions, then split the reset logic out, and move it outside of the
put_user_try/put_user_catch SMAP guards. This does less work with the
SMAP guards down.

Link: https://github.com/ClangBuiltLinux/linux/issues/876
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: <clang-built-linux@googlegroups.com>
Suggested-by: Linus Torvalds <torvalds@linux-foundation.org>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
Notes to reviewers:
* The macro was maybe nicer since the compat_ versions have different
  type signatures.
* There's still some duplication, and the code could be DRY'er. Thoughts
  on whether to:
  a) move these to arch/x86/include/asm/sigframe.h as static inline
     functions.
  b) move these to a new header as static inline function.
  c) keep them as functions, but non-static, in their own new
     translation unit.
  d) patch is fine as it.
  e) other.


 arch/x86/ia32/ia32_signal.c | 18 +++++++++++++++++-
 arch/x86/kernel/signal.c    | 35 ++++++++++++++++++++++++++++++++---
 include/linux/compat.h      |  9 ---------
 include/linux/signal.h      | 10 ----------
 4 files changed, 49 insertions(+), 23 deletions(-)

diff --git a/arch/x86/ia32/ia32_signal.c b/arch/x86/ia32/ia32_signal.c
index a3aefe9b9401..dadcc30d1138 100644
--- a/arch/x86/ia32/ia32_signal.c
+++ b/arch/x86/ia32/ia32_signal.c
@@ -325,6 +325,21 @@ int ia32_setup_frame(int sig, struct ksignal *ksig,
 	return 0;
 }
 
+static void compat_save_altstack_unsafe(compat_stack_t *uss, unsigned long sp)
+{
+	compat_stack_t __user *__uss = uss;
+	struct task_struct *t = current;
+	put_user_ex(ptr_to_compat((void __user *)t->sas_ss_sp), &__uss->ss_sp);
+	put_user_ex(t->sas_ss_flags, &__uss->ss_flags);
+	put_user_ex(t->sas_ss_size, &__uss->ss_size);
+}
+
+static void reset_altstack(void)
+{
+	if (current->sas_ss_flags & SS_AUTODISARM)
+		sas_ss_reset(current);
+}
+
 int ia32_setup_rt_frame(int sig, struct ksignal *ksig,
 			compat_sigset_t *set, struct pt_regs *regs)
 {
@@ -362,7 +377,7 @@ int ia32_setup_rt_frame(int sig, struct ksignal *ksig,
 		else
 			put_user_ex(0, &frame->uc.uc_flags);
 		put_user_ex(0, &frame->uc.uc_link);
-		compat_save_altstack_ex(&frame->uc.uc_stack, regs->sp);
+		compat_save_altstack_unsafe(&frame->uc.uc_stack, regs->sp);
 
 		if (ksig->ka.sa.sa_flags & SA_RESTORER)
 			restorer = ksig->ka.sa.sa_restorer;
@@ -377,6 +392,7 @@ int ia32_setup_rt_frame(int sig, struct ksignal *ksig,
 		 */
 		put_user_ex(*((u64 *)&code), (u64 __user *)frame->retcode);
 	} put_user_catch(err);
+	reset_altstack();
 
 	err |= __copy_siginfo_to_user32(&frame->info, &ksig->info, false);
 	err |= ia32_setup_sigcontext(&frame->uc.uc_mcontext, fpstate,
diff --git a/arch/x86/kernel/signal.c b/arch/x86/kernel/signal.c
index 8a29573851a3..03ea56ee86ec 100644
--- a/arch/x86/kernel/signal.c
+++ b/arch/x86/kernel/signal.c
@@ -213,6 +213,32 @@ int setup_sigcontext(struct sigcontext __user *sc, void __user *fpstate,
 	return err;
 }
 
+#ifdef CONFIG_X86_X32_ABI
+static void compat_save_altstack_unsafe(compat_stack_t *uss, unsigned long sp)
+{
+	compat_stack_t __user *__uss = uss;
+	struct task_struct *t = current;
+	put_user_ex(ptr_to_compat((void __user *)t->sas_ss_sp), &__uss->ss_sp);
+	put_user_ex(t->sas_ss_flags, &__uss->ss_flags);
+	put_user_ex(t->sas_ss_size, &__uss->ss_size);
+}
+#endif
+
+static void save_altstack_unsafe(stack_t *uss, unsigned long sp)
+{
+	struct task_struct *t = current;
+	stack_t __user *__uss = uss;
+	put_user_ex((void __user *)t->sas_ss_sp, &__uss->ss_sp);
+	put_user_ex(t->sas_ss_flags, &__uss->ss_flags);
+	put_user_ex(t->sas_ss_size, &__uss->ss_size);
+}
+
+static void reset_altstack(void)
+{
+	if (current->sas_ss_flags & SS_AUTODISARM)
+		sas_ss_reset(current);
+}
+
 /*
  * Set up a signal frame.
  */
@@ -394,7 +420,7 @@ static int __setup_rt_frame(int sig, struct ksignal *ksig,
 		else
 			put_user_ex(0, &frame->uc.uc_flags);
 		put_user_ex(0, &frame->uc.uc_link);
-		save_altstack_ex(&frame->uc.uc_stack, regs->sp);
+		save_altstack_unsafe(&frame->uc.uc_stack, regs->sp);
 
 		/* Set up to return from userspace.  */
 		restorer = current->mm->context.vdso +
@@ -412,6 +438,7 @@ static int __setup_rt_frame(int sig, struct ksignal *ksig,
 		 */
 		put_user_ex(*((u64 *)&rt_retcode), (u64 *)frame->retcode);
 	} put_user_catch(err);
+	reset_altstack();
 	
 	err |= copy_siginfo_to_user(&frame->info, &ksig->info);
 	err |= setup_sigcontext(&frame->uc.uc_mcontext, fpstate,
@@ -475,7 +502,7 @@ static int __setup_rt_frame(int sig, struct ksignal *ksig,
 		/* Create the ucontext.  */
 		put_user_ex(uc_flags, &frame->uc.uc_flags);
 		put_user_ex(0, &frame->uc.uc_link);
-		save_altstack_ex(&frame->uc.uc_stack, regs->sp);
+		save_altstack_unsafe(&frame->uc.uc_stack, regs->sp);
 
 		/* Set up to return from userspace.  If provided, use a stub
 		   already in userspace.  */
@@ -487,6 +514,7 @@ static int __setup_rt_frame(int sig, struct ksignal *ksig,
 			err |= -EFAULT;
 		}
 	} put_user_catch(err);
+	reset_altstack();
 
 	err |= setup_sigcontext(&frame->uc.uc_mcontext, fp, regs, set->sig[0]);
 	err |= __copy_to_user(&frame->uc.uc_sigmask, set, sizeof(*set));
@@ -560,7 +588,7 @@ static int x32_setup_rt_frame(struct ksignal *ksig,
 		/* Create the ucontext.  */
 		put_user_ex(uc_flags, &frame->uc.uc_flags);
 		put_user_ex(0, &frame->uc.uc_link);
-		compat_save_altstack_ex(&frame->uc.uc_stack, regs->sp);
+		compat_save_altstack_unsafe(&frame->uc.uc_stack, regs->sp);
 		put_user_ex(0, &frame->uc.uc__pad0);
 
 		if (ksig->ka.sa.sa_flags & SA_RESTORER) {
@@ -572,6 +600,7 @@ static int x32_setup_rt_frame(struct ksignal *ksig,
 		}
 		put_user_ex(restorer, (unsigned long __user *)&frame->pretcode);
 	} put_user_catch(err);
+	reset_altstack();
 
 	err |= setup_sigcontext(&frame->uc.uc_mcontext, fpstate,
 				regs, set->sig[0]);
diff --git a/include/linux/compat.h b/include/linux/compat.h
index df2475be134a..083a771decb8 100644
--- a/include/linux/compat.h
+++ b/include/linux/compat.h
@@ -454,15 +454,6 @@ extern void __user *compat_alloc_user_space(unsigned long len);
 
 int compat_restore_altstack(const compat_stack_t __user *uss);
 int __compat_save_altstack(compat_stack_t __user *, unsigned long);
-#define compat_save_altstack_ex(uss, sp) do { \
-	compat_stack_t __user *__uss = uss; \
-	struct task_struct *t = current; \
-	put_user_ex(ptr_to_compat((void __user *)t->sas_ss_sp), &__uss->ss_sp); \
-	put_user_ex(t->sas_ss_flags, &__uss->ss_flags); \
-	put_user_ex(t->sas_ss_size, &__uss->ss_size); \
-	if (t->sas_ss_flags & SS_AUTODISARM) \
-		sas_ss_reset(t); \
-} while (0);
 
 /*
  * These syscall function prototypes are kept in the same order as
diff --git a/include/linux/signal.h b/include/linux/signal.h
index 1a5f88316b08..1732114989f7 100644
--- a/include/linux/signal.h
+++ b/include/linux/signal.h
@@ -444,16 +444,6 @@ void signals_init(void);
 int restore_altstack(const stack_t __user *);
 int __save_altstack(stack_t __user *, unsigned long);
 
-#define save_altstack_ex(uss, sp) do { \
-	stack_t __user *__uss = uss; \
-	struct task_struct *t = current; \
-	put_user_ex((void __user *)t->sas_ss_sp, &__uss->ss_sp); \
-	put_user_ex(t->sas_ss_flags, &__uss->ss_flags); \
-	put_user_ex(t->sas_ss_size, &__uss->ss_size); \
-	if (t->sas_ss_flags & SS_AUTODISARM) \
-		sas_ss_reset(t); \
-} while (0);
-
 #ifdef CONFIG_PROC_FS
 struct seq_file;
 extern void render_sigset_t(struct seq_file *, const char *, sigset_t *);
-- 
2.25.1.696.g5e7596f4ac-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200324220830.110002-1-ndesaulniers%40google.com.
