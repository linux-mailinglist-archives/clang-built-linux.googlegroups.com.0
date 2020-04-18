Return-Path: <clang-built-linux+bncBDTKPJW47IKRB3WB5X2AKGQEC56TB4A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x638.google.com (mail-ej1-x638.google.com [IPv6:2a00:1450:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id E57341AF493
	for <lists+clang-built-linux@lfdr.de>; Sat, 18 Apr 2020 22:19:58 +0200 (CEST)
Received: by mail-ej1-x638.google.com with SMTP id m21sf3126678ejd.17
        for <lists+clang-built-linux@lfdr.de>; Sat, 18 Apr 2020 13:19:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587241198; cv=pass;
        d=google.com; s=arc-20160816;
        b=AC1dT2A8weT7n7x2Lbj1mg3VF9qMdic6SlQ4sRxYUxWUBPRXyvYhIEuOALgPQ2Tcl2
         JWk7EuEASVtv2S2RAuOcQp/bIbVuYa4l3J9S+vZCuRph5gPxO8fHz/45Us3FkTznBZYB
         ZKBUL7KUUIUFuZ1kC8xRsa/PMYhB960ootuDqm27dlbuJ/r0XOLPu1bjI8NCZBhhDwix
         DlcTfZy47ZKfB575hg3azojFJzzXJmvD8yNKfOZGfF6iMfQDfYhPGBi1TvAW+6nqTE+u
         7tx1aCNiTw8xgErtuh8GwTDoPk8FjzbPC8ejtxnVDpmmyYDUOsMMA5KKw/etklo2toAK
         dqxA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=OoDJvR68SjqH/XehPqJWxgk0Kg9p6kYCO5jjXJwIi4I=;
        b=NML0YaFn2f4ogruFDA1CyfqvG9zOJPrN3IJgrCq42T4HoyZqWNid9ZyXKww1wvseFb
         ViC7sDC9GDnSPC5nuRv0d5nbWVsRplQ0XIjcUskUk3rsD4tC7BqHoFGaf9PCmTR8aI1N
         4mR3ozJ/TZSnndhtYFEmxi15YydaUyK6kInA+cqEVJQKNjF9d4CICI/c6iELwm66ZlCB
         Ge/RCuBsoG88fin92f1SzS5YsYrOf8IjRV43NpTOe/NV7ZEaY8yBeXjTmYmfAdrIH9Qp
         FK4Y6dtTCmqTIhGA9/XpsRSipqsHX8xkp/jQDrC1k39IZePcMb8iVYzPFUFVMZCPhn+4
         E3Ig==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@arista.com header.s=googlenew header.b=PVxE82lm;
       spf=pass (google.com: domain of dima@arista.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=dima@arista.com;
       dmarc=pass (p=QUARANTINE sp=REJECT dis=NONE) header.from=arista.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=OoDJvR68SjqH/XehPqJWxgk0Kg9p6kYCO5jjXJwIi4I=;
        b=C7E8jN2OuCbSUCR9/Cz+qo37KdfKEfIirH3voJ/21uBxwzOGyt7Te4PFAwDe03EJ28
         1w0kcpb9ZoBxLfoYKne8pYC3WXm0xSdw0/D6RMRIKEeofKCVVz/zbq+oPFtlrGbX2n65
         i8uAniXhn1XcDpVwd1oV2aNUuNNC7mG2WjLdviYC1xROLw8hVzZjqUUdhH5jTpyi1VjL
         BPcxDpRlk7KZr+fjbfvbYrVaLIR4qadCaYhzLLL8GMboAIu8TvFpRRG66A4OFY38z4or
         8aS/vqnmNNxKyq3YnzF8VFn/z0ckXTsBej87A1twilWoQ+dyB4hi3Biwlz/zE5Nc6nay
         O6+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OoDJvR68SjqH/XehPqJWxgk0Kg9p6kYCO5jjXJwIi4I=;
        b=h/POiRJ5NqS6bnrfEGRF2xqOtNnS9Q0g5Za20YCKGlDIdzL+p6bsU9MEvDDiJH/E2F
         WoAY44yLW+FxSpgNhn5BMdg/MITitxzDD1M9Gzf9cp7MD1cSr3n2Hb269j3wg+q0+w0W
         ILxD1UJV8AKdx3+DqlfuF3NLdOfktTc70j7IIyx7D3kJc5Bzffey2aBiOuid4mhbXJNl
         QPe22guZ5PYQkKs6I95AfwJEBn69F8V61CtVphgidVVUjSxAyrQpsDqdFw4D63ZNj4H/
         P1lr29QQY6pnDvjEQJvQiPlZjA4Cip1igMl+ZN6LAokrXAzaj9pxBhJUnx5aPtdaYo1d
         9+eg==
X-Gm-Message-State: AGi0PuZBMSJqS1Xn2SpMQQXW2D3/uFkANopmQ3PCJJU7w+eheAA8d4xf
	jV2hvHxEfMbXFOKa5LXaaOs=
X-Google-Smtp-Source: APiQypJegM35qPLeT+t8EV90vCGKZGz//Qk3QbzZw7KI+cM0tiPTy+3GSs2YMPKd7fsbkoSUjlKobg==
X-Received: by 2002:a17:906:55c4:: with SMTP id z4mr9084253ejp.353.1587241198572;
        Sat, 18 Apr 2020 13:19:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:6b89:: with SMTP id l9ls5272139ejr.6.gmail; Sat, 18
 Apr 2020 13:19:58 -0700 (PDT)
X-Received: by 2002:a17:906:70f:: with SMTP id y15mr9253584ejb.276.1587241198106;
        Sat, 18 Apr 2020 13:19:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587241198; cv=none;
        d=google.com; s=arc-20160816;
        b=NbW02HS/s7FDUnPWYZJbcStjj0uNEDcECkZcg3md9QKuMEGsStAUFSYW5Wp4pVKCJv
         WXXi9rrpoTylpk3pIg7Ftv3djHIwICN+ctaTXZlsI3She9z6eRTVJdcoF4kHN+FA3jQ2
         7ySOklMQwHxvrZdb3CouMaB7jXwCKI6/bNw9ksFXyyA/T8HHYl6TEjSbRL5MdP8tnrvw
         OopRBcn8Q7D1jWElX6vVTSmewwrv74VXF3/fyY4ezQujVcvGRquZvcv596BuG2ylpnt7
         b6/RtvXzkySdnvU0OsbnFwaJ8cGYDol3ZWHYTpeVl5Xtp8iNIUXlr2tyGBWGaCVyy6uY
         mIQQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=9gJWg9flNrZ5TbihOoh/z3AJf3d2tqOa4g2mAiThDeM=;
        b=Y+3LzQ450Gi1wnyXUGzTy8NkQ3OXbzb2RRK61KJZw+hhZ/KTIWvzlNsJHww2KCjoI5
         aTy84yypXjuhNOK3yxRlB4PfvXUbW8ArBcdu8sVcSuvdeTWVeTdnfcs1nD/aFqjkfh69
         CTVYW4D4vxNJXvYEObnHTtNm58k3jvH/FYsFB/hNepXDTfGEjz35U/vz04X4jisJpu8a
         /P9NKfApFSm5G4M6BdXihYvRtujBPduIGUOz32VYvwH5Ukh+wVNeIH7xnbA6nnJkX9Dl
         iDcXafCgU+iP/Yz2ri06OXtz+30f5qmSapkHqFrY/RB1/EUR9d362O+a2sV4J7yOn+DM
         rOog==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@arista.com header.s=googlenew header.b=PVxE82lm;
       spf=pass (google.com: domain of dima@arista.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=dima@arista.com;
       dmarc=pass (p=QUARANTINE sp=REJECT dis=NONE) header.from=arista.com
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com. [2a00:1450:4864:20::441])
        by gmr-mx.google.com with ESMTPS id bt1si24151edb.0.2020.04.18.13.19.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 18 Apr 2020 13:19:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of dima@arista.com designates 2a00:1450:4864:20::441 as permitted sender) client-ip=2a00:1450:4864:20::441;
Received: by mail-wr1-x441.google.com with SMTP id k1so7185299wrx.4
        for <clang-built-linux@googlegroups.com>; Sat, 18 Apr 2020 13:19:58 -0700 (PDT)
X-Received: by 2002:a05:6000:12c5:: with SMTP id l5mr10920553wrx.185.1587241197758;
        Sat, 18 Apr 2020 13:19:57 -0700 (PDT)
Received: from localhost.localdomain ([2a02:8084:e84:2480:228:f8ff:fe6f:83a8])
        by smtp.gmail.com with ESMTPSA id m1sm31735255wro.64.2020.04.18.13.19.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Apr 2020 13:19:56 -0700 (PDT)
From: "'Dmitry Safonov' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: linux-kernel@vger.kernel.org
Cc: Dmitry Safonov <0x7f454c46@gmail.com>,
	Dmitry Safonov <dima@arista.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Ingo Molnar <mingo@kernel.org>,
	Jiri Slaby <jslaby@suse.com>,
	Petr Mladek <pmladek@suse.com>,
	Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	Tetsuo Handa <penguin-kernel@I-love.SAKURA.ne.jp>,
	Russell King <linux@armlinux.org.uk>,
	Will Deacon <will@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	clang-built-linux@googlegroups.com
Subject: [PATCHv3 05/50] arm: Add loglvl to unwind_backtrace()
Date: Sat, 18 Apr 2020 21:18:59 +0100
Message-Id: <20200418201944.482088-6-dima@arista.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200418201944.482088-1-dima@arista.com>
References: <20200418201944.482088-1-dima@arista.com>
MIME-Version: 1.0
X-Original-Sender: dima@arista.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@arista.com header.s=googlenew header.b=PVxE82lm;       spf=pass
 (google.com: domain of dima@arista.com designates 2a00:1450:4864:20::441 as
 permitted sender) smtp.mailfrom=dima@arista.com;       dmarc=pass
 (p=QUARANTINE sp=REJECT dis=NONE) header.from=arista.com
X-Original-From: Dmitry Safonov <dima@arista.com>
Reply-To: Dmitry Safonov <dima@arista.com>
Content-Type: text/plain; charset="UTF-8"
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

Currently, the log-level of show_stack() depends on a platform
realization. It creates situations where the headers are printed with
lower log level or higher than the stacktrace (depending on
a platform or user).

Furthermore, it forces the logic decision from user to an architecture
side. In result, some users as sysrq/kdb/etc are doing tricks with
temporary rising console_loglevel while printing their messages.
And in result it not only may print unwanted messages from other CPUs,
but also omit printing at all in the unlucky case where the printk()
was deferred.

Introducing log-level parameter and KERN_UNSUPPRESSED [1] seems
an easier approach than introducing more printk buffers.
Also, it will consolidate printings with headers.

Add log level argument to unwind_backtrace() as a preparation for
introducing show_stack_loglvl().

As a good side-effect arm_syscall() is now printing errors with the same
log level as the backtrace.

Cc: Russell King <linux@armlinux.org.uk>
Cc: Will Deacon <will@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org
Cc: clang-built-linux@googlegroups.com
[1]: https://lore.kernel.org/lkml/20190528002412.1625-1-dima@arista.com/T/#u
Signed-off-by: Dmitry Safonov <dima@arista.com>
---
 arch/arm/include/asm/unwind.h | 3 ++-
 arch/arm/kernel/traps.c       | 6 +++---
 arch/arm/kernel/unwind.c      | 5 +++--
 3 files changed, 8 insertions(+), 6 deletions(-)

diff --git a/arch/arm/include/asm/unwind.h b/arch/arm/include/asm/unwind.h
index 6e282c33126b..0f8a3439902d 100644
--- a/arch/arm/include/asm/unwind.h
+++ b/arch/arm/include/asm/unwind.h
@@ -36,7 +36,8 @@ extern struct unwind_table *unwind_table_add(unsigned long start,
 					     unsigned long text_addr,
 					     unsigned long text_size);
 extern void unwind_table_del(struct unwind_table *tab);
-extern void unwind_backtrace(struct pt_regs *regs, struct task_struct *tsk);
+extern void unwind_backtrace(struct pt_regs *regs, struct task_struct *tsk,
+			     const char *loglvl);
 
 #endif	/* !__ASSEMBLY__ */
 
diff --git a/arch/arm/kernel/traps.c b/arch/arm/kernel/traps.c
index 2030611f22b8..685e17c2e275 100644
--- a/arch/arm/kernel/traps.c
+++ b/arch/arm/kernel/traps.c
@@ -204,7 +204,7 @@ static void dump_instr(const char *lvl, struct pt_regs *regs)
 #ifdef CONFIG_ARM_UNWIND
 static inline void dump_backtrace(struct pt_regs *regs, struct task_struct *tsk)
 {
-	unwind_backtrace(regs, tsk);
+	unwind_backtrace(regs, tsk, KERN_DEFAULT);
 }
 #else
 static void dump_backtrace(struct pt_regs *regs, struct task_struct *tsk)
@@ -664,10 +664,10 @@ asmlinkage int arm_syscall(int no, struct pt_regs *regs)
 	if (user_debug & UDBG_SYSCALL) {
 		pr_err("[%d] %s: arm syscall %d\n",
 		       task_pid_nr(current), current->comm, no);
-		dump_instr("", regs);
+		dump_instr(KERN_ERR, regs);
 		if (user_mode(regs)) {
 			__show_regs(regs);
-			c_backtrace(frame_pointer(regs), processor_mode(regs), NULL);
+			c_backtrace(frame_pointer(regs), processor_mode(regs), KERN_ERR);
 		}
 	}
 #endif
diff --git a/arch/arm/kernel/unwind.c b/arch/arm/kernel/unwind.c
index 343cc27b36c4..d2bd0df2318d 100644
--- a/arch/arm/kernel/unwind.c
+++ b/arch/arm/kernel/unwind.c
@@ -455,7 +455,8 @@ int unwind_frame(struct stackframe *frame)
 	return URC_OK;
 }
 
-void unwind_backtrace(struct pt_regs *regs, struct task_struct *tsk)
+void unwind_backtrace(struct pt_regs *regs, struct task_struct *tsk,
+		      const char *loglvl)
 {
 	struct stackframe frame;
 
@@ -493,7 +494,7 @@ void unwind_backtrace(struct pt_regs *regs, struct task_struct *tsk)
 		urc = unwind_frame(&frame);
 		if (urc < 0)
 			break;
-		dump_backtrace_entry(where, frame.pc, frame.sp - 4, NULL);
+		dump_backtrace_entry(where, frame.pc, frame.sp - 4, loglvl);
 	}
 }
 
-- 
2.26.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200418201944.482088-6-dima%40arista.com.
