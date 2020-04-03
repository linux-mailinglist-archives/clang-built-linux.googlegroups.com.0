Return-Path: <clang-built-linux+bncBDYJPJO25UGBBS4HT72AKGQE6B2LDMY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb37.google.com (mail-yb1-xb37.google.com [IPv6:2607:f8b0:4864:20::b37])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A94F19E160
	for <lists+clang-built-linux@lfdr.de>; Sat,  4 Apr 2020 01:16:28 +0200 (CEST)
Received: by mail-yb1-xb37.google.com with SMTP id 5sf10391648yba.23
        for <lists+clang-built-linux@lfdr.de>; Fri, 03 Apr 2020 16:16:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585955787; cv=pass;
        d=google.com; s=arc-20160816;
        b=GgmJMj228NkMyn0SMDdX5saV9fXCQtY2GlAAEVU5Nip4QGVfPidZSIs4gk9WCS2DAk
         18EIr6YIicRk5TvOAH0oEND1efJOViEDPKmgGtMy3WWPqNzRgM8wCI+Pd+xdjHcRkdDc
         9r9ieueqtSnIGwkeq6a+br8swhN9w+d0NE6P9fsZPtOvBSqDD0eiMN5uxBQCLVSRjfkK
         5OWDAF7TdFrskf30TUxV8aPnb7u3kNX172C0DDJRx1fEMEQY9YTFuaXhg+RXXInT9xYU
         uR7OGf5OZYFk7ccaWIHJm+8C+Tt2+IfDMZf82KEO+GQt9Ks/QwWUa03VJkgVBnb94X0i
         J3jg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=Y8huaIBvitQbVotJs0YxoHgAy+l/nKuVmepF+2WlVHg=;
        b=eXGUvSYLEQEtec9xVFLq61ZLZUY65zE8nWtyD4JkzoCu3kLvgesQN6eg/roXgdmEED
         GSYZjapSqjPYcmPVM73nrrHlLdb/NkQ5bjf4vhbiBblwSBqJko1LwNVzYRH4SbCCBrPY
         7D/3+u8YfdZ1cD8TeCUZHW+Ui4xhU4wT7jzlNv9jGNTgxx9N1iUZ40K+1k4EEGjMF4cH
         RFdLWHhSzyEetQKAIyF3JJljKJ9cGzshYmP+GGhjKUUOgOwun1CDGOyhLt/3a8Lyjunr
         Ny9sujNlpueY9OVCUGfeCwMvS7lbK5iEZ9ffFweA1Mx8GYVv1ynuC1HjAs6rESBVyQMu
         kCfw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=T+cOTbRA;
       spf=pass (google.com: domain of 3ycohxgwkagovlmaictvqmzaowwotm.kwu@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::104a as permitted sender) smtp.mailfrom=3ycOHXgwKAGoVLMaIcTVQMZaOWWOTM.KWU@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Y8huaIBvitQbVotJs0YxoHgAy+l/nKuVmepF+2WlVHg=;
        b=HdF476pLIkUBZVuDaTqaBAh0eyUmhrPUfhWi0MU3z8BxtWNsT1d1tDekpF2aziTHfD
         K5d/4n8p0Y/5N+GA6uKPdLe0AEd7SWGc4cxozUgPn4c3Ccoc3x17rgo62zPuLWieXX2M
         t1TF9U8fCOI+2N/ZtGIlcr4PU3dFzMjQ7xnR5179bmYtMoaK3KB+jNlHX/Ch6uOPGBci
         SdfCA/dNPYXkzoS7XVxH235z0oSpZ2CakzF21i/J1ux91leobtbq2I8sECTf0SJzBl38
         bGgMuAMKmDm3yFSXs639X2/jTBt+88NXVl6JEzddT3vYcvvmYf2KgCFgI6x683a048N8
         BnWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Y8huaIBvitQbVotJs0YxoHgAy+l/nKuVmepF+2WlVHg=;
        b=l7oCKY4MqxLYpj2OfdXnW3uOvK95x2QQEJeOpzkoU0Lrb7e5h9uk8rH7Pb2g8u/hnB
         47pa865s1e/xA5dib6aFtPsxZBWmynmbEE3E6+h2YKb1757DTiik9wfXCfmK7/2qt3pV
         9XcJ1ciJidxJNBtL+7/8vp/LQdCnWS6mqLS3GEOtR9dUo/TCYpXJWuhW6+494fuXohGF
         UdmFlfmstWQJn5Hwb3VQNbsfMlLouJjsEseTZP+tBIr2QaP6c5NnJi8d7Elf+r8w7SvH
         LCPxnBulnEAqPnfyWe8uoQrIxfQbxBsyTqrtW4+5a6FI1/asVo6Bkz1IMz4/yxWBjZ1V
         pmWA==
X-Gm-Message-State: AGi0PuYo79fgcCJzSm0r+lzbf+ZAUR/336zWPhZ2fMffHlVJKgld5nN/
	tZ1EzYfbQzYMgLhzJ0MQKk4=
X-Google-Smtp-Source: APiQypJ0E7iTLvCmMExOC+mZkf1xpAx467yLreOk9M0NGIn3ixDqaKU3j9WP2ijVrylNnCIPEYn7Mg==
X-Received: by 2002:a25:8052:: with SMTP id a18mr18144475ybn.459.1585955787329;
        Fri, 03 Apr 2020 16:16:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:dcf:: with SMTP id 198ls2977360ybn.8.gmail; Fri, 03 Apr
 2020 16:16:26 -0700 (PDT)
X-Received: by 2002:a25:d44d:: with SMTP id m74mr19193042ybf.193.1585955786916;
        Fri, 03 Apr 2020 16:16:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585955786; cv=none;
        d=google.com; s=arc-20160816;
        b=XRzlSxx6iplNBLViTAkJmkZCNYrDPn4v/sbPIpg+8OFBa6d6tllhoUzodZgGHc6mLE
         aKvUx/2JXBZrNfnDo/G1Pv3VTjCQzzkLJX/Fg9NOjoodFpy2PHHUNK37UOpgRjD5uBOc
         a1ikETHXUkyMeSB8ctsUPnAyjKIZc3+urfNoEPVEMuopV3LfAA6YytUhG85YLFBvsdBi
         lK9lFpx8rkY0rK71Y9ZpuHgB7R43B//BuAD6SjF+VIczto2LhTVw5hCGDDnYlk9u2JFD
         nlAR/7wWvkw6E1PWQl2hRMEcBFp+6J/2f5BpqMxZkWv2rui006LlGzItpQxHVK/YJkWH
         skNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=luXTGhq6OQLi5VsHgIyxUs88AaI8Ib2h5O78LnnQDP0=;
        b=CdDXVn6eQt63jM1WheBcoE3mjbIwhBTBXPG/IXiVt/373BmZm6j3XJANHsWoPy9HJI
         eJpdfdcpiz7qxSHLayPwbBR2pQb5y772FPmvF2GMUNwitOR0i7AAV/Lu5kZBadNEzjxs
         6DbDhLXgxjapUx3K3u1k373lGt1TNLHCnq14pLMqlX0xixjjA2x+uVPIhCBTMWSD+CC5
         ywU/QviK1hgAnsD+w5APsQITCtPUXp39z++UXcxIvBlJAy+sh1ECR9vR3xkl/13p1h79
         PxZigG8xS293KMVUiO8vRYtSkYaGPtgOUhgriqiOfKvpBBJJ4SUBPzk6V0tHRO14Q1Md
         lp4A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=T+cOTbRA;
       spf=pass (google.com: domain of 3ycohxgwkagovlmaictvqmzaowwotm.kwu@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::104a as permitted sender) smtp.mailfrom=3ycOHXgwKAGoVLMaIcTVQMZaOWWOTM.KWU@flex--ndesaulniers.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x104a.google.com (mail-pj1-x104a.google.com. [2607:f8b0:4864:20::104a])
        by gmr-mx.google.com with ESMTPS id y140si698858ybe.1.2020.04.03.16.16.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 03 Apr 2020 16:16:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3ycohxgwkagovlmaictvqmzaowwotm.kwu@flex--ndesaulniers.bounces.google.com designates 2607:f8b0:4864:20::104a as permitted sender) client-ip=2607:f8b0:4864:20::104a;
Received: by mail-pj1-x104a.google.com with SMTP id p14so8007259pjp.3
        for <clang-built-linux@googlegroups.com>; Fri, 03 Apr 2020 16:16:26 -0700 (PDT)
X-Received: by 2002:a17:90a:2226:: with SMTP id c35mr12984311pje.2.1585955785901;
 Fri, 03 Apr 2020 16:16:25 -0700 (PDT)
Date: Fri,  3 Apr 2020 16:16:06 -0700
In-Reply-To: <20200324220830.110002-1-ndesaulniers@google.com>
Message-Id: <20200403231611.81444-1-ndesaulniers@google.com>
Mime-Version: 1.0
References: <20200324220830.110002-1-ndesaulniers@google.com>
X-Mailer: git-send-email 2.26.0.292.g33ef6b2f38-goog
Subject: [PATCH v2] x86: signal: move save_altstack_ex out of generic headers
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: tglx@linutronix.de, mingo@redhat.com, bp@alien8.de
Cc: Nick Desaulniers <ndesaulniers@google.com>, Peter Zijlstra <peterz@infradead.org>, 
	clang-built-linux@googlegroups.com, 
	Linus Torvalds <torvalds@linux-foundation.org>, "H. Peter Anvin" <hpa@zytor.com>, x86@kernel.org, 
	Al Viro <viro@zeniv.linux.org.uk>, Sebastian Andrzej Siewior <bigeasy@linutronix.de>, 
	Andy Lutomirski <luto@kernel.org>, Sami Tolvanen <samitolvanen@google.com>, 
	Marco Elver <elver@google.com>, Brian Gerst <brgerst@gmail.com>, Arnd Bergmann <arnd@arndb.de>, 
	Andrew Morton <akpm@linux-foundation.org>, Oleg Nesterov <oleg@redhat.com>, 
	"Eric W. Biederman" <ebiederm@xmission.com>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=T+cOTbRA;       spf=pass
 (google.com: domain of 3ycohxgwkagovlmaictvqmzaowwotm.kwu@flex--ndesaulniers.bounces.google.com
 designates 2607:f8b0:4864:20::104a as permitted sender) smtp.mailfrom=3ycOHXgwKAGoVLMaIcTVQMZaOWWOTM.KWU@flex--ndesaulniers.bounces.google.com;
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

Linus noted that unsafe_save_altstack() only has callsites in the
arch-specific arch/x86/kernel/signal.c, and shouldn't be defined in arch
independent headers.

Split the logic of unsafe_save_altstack() into two, and move the definitions
to arch/x86/include/asm/sigframe.h.  This does less work with the SMAP
guards down.

Link: https://github.com/ClangBuiltLinux/linux/issues/876
Cc: Peter Zijlstra <peterz@infradead.org>
Cc: <clang-built-linux@googlegroups.com>
Suggested-by: Linus Torvalds <torvalds@linux-foundation.org>
Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
---
Changes V1 -> V2:
* Rebased on top of
  commit 39f16c1c0f14 ("x86: get rid of put_user_try in {ia32,x32}_setup_rt_frame()")
* went back to macros instead of static inline functions I had in v1.
Note:
Technically, this is a functional change that does more work if we jump
to Efault before calling {__compat|unsafe}_save_altstack, though the
hope is that that is an exceptional case.

 arch/x86/ia32/ia32_signal.c     |  2 ++
 arch/x86/include/asm/sigframe.h | 13 +++++++++++++
 arch/x86/kernel/signal.c        |  4 ++++
 include/linux/compat.h          |  2 --
 include/linux/signal.h          | 10 ----------
 5 files changed, 19 insertions(+), 12 deletions(-)

diff --git a/arch/x86/ia32/ia32_signal.c b/arch/x86/ia32/ia32_signal.c
index f9d8804144d0..e18f6d9dc393 100644
--- a/arch/x86/ia32/ia32_signal.c
+++ b/arch/x86/ia32/ia32_signal.c
@@ -349,6 +349,7 @@ int ia32_setup_rt_frame(int sig, struct ksignal *ksig,
 	unsafe_put_sigcontext32(&frame->uc.uc_mcontext, fp, regs, set, Efault);
 	unsafe_put_user(*(__u64 *)set, (__u64 *)&frame->uc.uc_sigmask, Efault);
 	user_access_end();
+	reset_altstack();
 
 	if (__copy_siginfo_to_user32(&frame->info, &ksig->info, false))
 		return -EFAULT;
@@ -371,5 +372,6 @@ int ia32_setup_rt_frame(int sig, struct ksignal *ksig,
 	return 0;
 Efault:
 	user_access_end();
+	reset_altstack();
 	return -EFAULT;
 }
diff --git a/arch/x86/include/asm/sigframe.h b/arch/x86/include/asm/sigframe.h
index 84eab2724875..67c317b8585d 100644
--- a/arch/x86/include/asm/sigframe.h
+++ b/arch/x86/include/asm/sigframe.h
@@ -85,4 +85,17 @@ struct rt_sigframe_x32 {
 
 #endif /* CONFIG_X86_64 */
 
+#define unsafe_save_altstack(uss, sp, label) do { \
+	stack_t __user *__uss = uss; \
+	struct task_struct *t = current; \
+	unsafe_put_user((void __user *)t->sas_ss_sp, &__uss->ss_sp, label); \
+	unsafe_put_user(t->sas_ss_flags, &__uss->ss_flags, label); \
+	unsafe_put_user(t->sas_ss_size, &__uss->ss_size, label); \
+} while (0);
+
+#define reset_altstack() do { \
+	if (current->sas_ss_flags & SS_AUTODISARM) \
+		sas_ss_reset(current); \
+} while (0);
+
 #endif /* _ASM_X86_SIGFRAME_H */
diff --git a/arch/x86/kernel/signal.c b/arch/x86/kernel/signal.c
index 83b74fb38c8f..1e9a900929b3 100644
--- a/arch/x86/kernel/signal.c
+++ b/arch/x86/kernel/signal.c
@@ -416,6 +416,7 @@ static int __setup_rt_frame(int sig, struct ksignal *ksig,
 	return 0;
 Efault:
 	user_access_end();
+	reset_altstack();
 	return -EFAULT;
 }
 #else /* !CONFIG_X86_32 */
@@ -507,6 +508,7 @@ static int __setup_rt_frame(int sig, struct ksignal *ksig,
 
 Efault:
 	user_access_end();
+	reset_altstack();
 	return -EFAULT;
 }
 #endif /* CONFIG_X86_32 */
@@ -541,6 +543,7 @@ static int x32_setup_rt_frame(struct ksignal *ksig,
 	unsafe_put_sigcontext(&frame->uc.uc_mcontext, fp, regs, set, Efault);
 	unsafe_put_sigmask(set, frame, Efault);
 	user_access_end();
+	reset_altstack();
 
 	if (ksig->ka.sa.sa_flags & SA_SIGINFO) {
 		if (__copy_siginfo_to_user32(&frame->info, &ksig->info, true))
@@ -567,6 +570,7 @@ static int x32_setup_rt_frame(struct ksignal *ksig,
 #ifdef CONFIG_X86_X32_ABI
 Efault:
 	user_access_end();
+	reset_altstack();
 	return -EFAULT;
 #endif
 }
diff --git a/include/linux/compat.h b/include/linux/compat.h
index 0480ba4db592..f614967374f5 100644
--- a/include/linux/compat.h
+++ b/include/linux/compat.h
@@ -461,8 +461,6 @@ int __compat_save_altstack(compat_stack_t __user *, unsigned long);
 			&__uss->ss_sp, label); \
 	unsafe_put_user(t->sas_ss_flags, &__uss->ss_flags, label); \
 	unsafe_put_user(t->sas_ss_size, &__uss->ss_size, label); \
-	if (t->sas_ss_flags & SS_AUTODISARM) \
-		sas_ss_reset(t); \
 } while (0);
 
 /*
diff --git a/include/linux/signal.h b/include/linux/signal.h
index 05bacd2ab135..1732114989f7 100644
--- a/include/linux/signal.h
+++ b/include/linux/signal.h
@@ -444,16 +444,6 @@ void signals_init(void);
 int restore_altstack(const stack_t __user *);
 int __save_altstack(stack_t __user *, unsigned long);
 
-#define unsafe_save_altstack(uss, sp, label) do { \
-	stack_t __user *__uss = uss; \
-	struct task_struct *t = current; \
-	unsafe_put_user((void __user *)t->sas_ss_sp, &__uss->ss_sp, label); \
-	unsafe_put_user(t->sas_ss_flags, &__uss->ss_flags, label); \
-	unsafe_put_user(t->sas_ss_size, &__uss->ss_size, label); \
-	if (t->sas_ss_flags & SS_AUTODISARM) \
-		sas_ss_reset(t); \
-} while (0);
-
 #ifdef CONFIG_PROC_FS
 struct seq_file;
 extern void render_sigset_t(struct seq_file *, const char *, sigset_t *);
-- 
2.26.0.292.g33ef6b2f38-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200403231611.81444-1-ndesaulniers%40google.com.
