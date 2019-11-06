Return-Path: <clang-built-linux+bncBDTKPJW47IKRBMHRRDXAKGQEKXDAZ7Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53b.google.com (mail-pg1-x53b.google.com [IPv6:2607:f8b0:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id D9DF3F0C5A
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 Nov 2019 04:06:26 +0100 (CET)
Received: by mail-pg1-x53b.google.com with SMTP id e6sf2075828pgc.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 Nov 2019 19:06:26 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573009585; cv=pass;
        d=google.com; s=arc-20160816;
        b=BhUZSXfXGoJEEpe32AmtGI/+gtC/T+2zuHUOCG+Z+jPKBNQ14KdfLf4PcWUFOcZESU
         YV4ebT0I2Qzb/v0Jccy07YIBT7zed4GFgEOKQopbiLCQFjNEhhxb4vZzIQSJcxBHBBUk
         L3vIM2xI2/zXgK0+mXNlmtR03HrsoGMBKaM2agEVMTu8cTMwSmudRIkP8ubjSX0zM12G
         Yl3lKfOKjSvtutR3Y5OTzihS8iuOJCzyM1TiZUwjyub/VQ/dqqUfuLjGe4KN9Mgu39lr
         ScwnGpv/dMK1LYa7KLqZzowGYOTHPimqgZyJ4zh2p200SUTrpUR1o3vTQjnhWYp7cbqW
         UKZg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=rH99mmdonVF+ji41YIPdWJOLa0whsYPn7Zllc1h8+54=;
        b=Pf0eXa7jZwiNf1/fIWXVSMkhYqaCvsrIxZORuHANpUWUbiHxAD7vNM103R0Jh+3IoF
         dteZv0HImwwv8vxnVefaB9zii7s2P4+6tl8wE/RZEoXARqJLDqqysff6cN1Km7DugAb/
         Cf+fueU8LcuciuxdOPkRtLCHQ8XRGTr8ZY9vTINgAS9R661bYnKZIu5VDqMe6OvQobBy
         SaCvLFpIc6JEuqtA6Al6gZfDEJNL5TR2cFaABDNRCf+N6p50sEzWaiTSZ0CPJWY72VLe
         YxzidJCfOL691YFS5WQavE2p6OIDXEAjPKfC8F0ut6mSn+K36r/CqFHLiYdqax+GhJQl
         NYww==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@arista.com header.s=googlenew header.b="YHgqLF/x";
       spf=pass (google.com: domain of dima@arista.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=dima@arista.com;
       dmarc=pass (p=QUARANTINE sp=REJECT dis=NONE) header.from=arista.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=rH99mmdonVF+ji41YIPdWJOLa0whsYPn7Zllc1h8+54=;
        b=YXHq0fs6fQXPQu/OSxOhWod6BzAHefOuzySYfURO4qq23uisIbVlP99Qq8r9ZTYkgL
         kFBia/jofge3Iq1G9UZf2z9cqeBsoC43XFS9GZo4YL4b1gRJYhIW+PaQ3kRTUHtHUpj1
         T1NrsEP1EIW7q//DnR5zUs4O2+95+4p8NWi4r+0vUykj8Z1CqxfL/sEegOe3Xe1HWClP
         diiLyO2jNjHctFzFrvAN1mERh/SF57iEPB3j7TSJztm+1Y0c3dgtQygFFfHQRfkKVtP+
         Z4VRAPA7W2yJmigZ+li/m+6mSIWOciOH9A/tbLKnWSz+wFbseK/qU+6W+t3a9KHS7lpV
         oRkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rH99mmdonVF+ji41YIPdWJOLa0whsYPn7Zllc1h8+54=;
        b=jeyQ2m2MDaPbiWTo14/Zn35LvK8qpxTdInHZr2KpkrOobc+tW6XD2od/7YuoX8FaKx
         3pMSIScBt523EpCnAPIQia3OHjg8htHw51noIiJBq02UoZ66g7Gn/ZYZD5WxrPhe8bsj
         V6yReziSmysEdOr1tRyENo11Y2bM2yDkSWna029DLzsdayZe2r7GWErBC3CIQKP79PCh
         Zpb7JRHi7LERu0tif/X7r7z2bH84fft+eRU4yZcNsLvJauTj66ijG+naA+dqfFDjMsYE
         XmBvr/yO2bTVD2vwYNbrdsv25vE16EqxQzK4Cu2cbJ60qrgP/azj3fGpwTKw2l/zm4cj
         LnOQ==
X-Gm-Message-State: APjAAAWEv5Aq1NAIB1GKrH4+5xOEJs7P51QOgkT2EZ8Phdp2u/GrnKZr
	jYqO12yBa+reQW0Bxmst+pI=
X-Google-Smtp-Source: APXvYqxqw01hdhHcmsOi6eLtId8E/g8r0V9ibwdECQXRBb9PFfmnaaaVPapbTWkZfpbulY6cnpTC3Q==
X-Received: by 2002:a17:902:a584:: with SMTP id az4mr186078plb.74.1573009585016;
        Tue, 05 Nov 2019 19:06:25 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:ac93:: with SMTP id h19ls204956plr.6.gmail; Tue, 05
 Nov 2019 19:06:24 -0800 (PST)
X-Received: by 2002:a17:90a:b30b:: with SMTP id d11mr588225pjr.25.1573009584597;
        Tue, 05 Nov 2019 19:06:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573009584; cv=none;
        d=google.com; s=arc-20160816;
        b=drYWnBfVaqlZth4VEa40J0u2z55KyCxGASoYf4kde9vIK2ADK+NK4hPJgXmjdpZHPc
         I/KehKH7h55FGI96jiLqJsNNV61Db6vwsSD6vZ0DmOb3qJMi4ePVu3wNIIeUyQkwFNF+
         vqvu/XUqbBVibXhK/n7UBHPB+yESxyLjmQCYErJYFSOfEFQx9oeUgC6OJMJJk3H0SfSB
         TU0XRovPiM4rMMx7JhiIxDlvFcOZnlM6vJM6XJwtQdAvahcKL5xrnKNguRgmDYWOdojm
         750BEdtKeY7Qx0OxmWPI6VTyw5kFVmiYGvyFbk29SQdYoAL1Yj9HihuipNmL9D2Uupna
         uYlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=VBtxih23xWrgcRmf1jKFKRXIiDXyNW7ostp5IRFGwGg=;
        b=R0SCHZ2qp9NW2enMAxvRzEVLhj2GPjFPRCBR2gTnuvgrE91RWe59Mnd/f3Brjx43rV
         0HwJ69rBi5I0fTGm/7OrwaylFSCwec89MOXmM/PD8BqH8M8mcqeRUfNg6xfg7bAYNz3f
         dIDqCR1XgwdcutuYwZ9YjEW1v2ImTur43z3P/O19fCwxJ5EgfWAKw4uDyOz1PRjdU0tV
         HfWv0IrIb2phniTYR7DNhseGMr7L9e9aksjlP03zY8V47dKdiyF87ooOiudeGzKlKMpO
         bsCJ3rxJEgEUoHCYo9mGeuWJrkRPkG8mLh5DXp70VyPKJSwVrjkvlor6FsW4EpDj8XyN
         v7vQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@arista.com header.s=googlenew header.b="YHgqLF/x";
       spf=pass (google.com: domain of dima@arista.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=dima@arista.com;
       dmarc=pass (p=QUARANTINE sp=REJECT dis=NONE) header.from=arista.com
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id 83si1111177pfx.4.2019.11.05.19.06.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Nov 2019 19:06:24 -0800 (PST)
Received-SPF: pass (google.com: domain of dima@arista.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id c184so17747173pfb.0
        for <clang-built-linux@googlegroups.com>; Tue, 05 Nov 2019 19:06:24 -0800 (PST)
X-Received: by 2002:a65:49c7:: with SMTP id t7mr155165pgs.431.1573009584201;
        Tue, 05 Nov 2019 19:06:24 -0800 (PST)
Received: from Mindolluin.ire.aristanetworks.com ([217.173.96.166])
        by smtp.gmail.com with ESMTPSA id k24sm19570487pgl.6.2019.11.05.19.06.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Nov 2019 19:06:23 -0800 (PST)
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
Subject: [PATCH 04/50] arm/asm: Add loglvl to c_backtrace()
Date: Wed,  6 Nov 2019 03:04:55 +0000
Message-Id: <20191106030542.868541-5-dima@arista.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191106030542.868541-1-dima@arista.com>
References: <20191106030542.868541-1-dima@arista.com>
MIME-Version: 1.0
X-Original-Sender: dima@arista.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@arista.com header.s=googlenew header.b="YHgqLF/x";       spf=pass
 (google.com: domain of dima@arista.com designates 2607:f8b0:4864:20::441 as
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

Add log level argument to c_backtrace() as a preparation for introducing
show_stack_loglvl().

Cc: Russell King <linux@armlinux.org.uk>
Cc: Will Deacon <will@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org
Cc: clang-built-linux@googlegroups.com
[1]: https://lore.kernel.org/lkml/20190528002412.1625-1-dima@arista.com/T/#u
Signed-off-by: Dmitry Safonov <dima@arista.com>
---
 arch/arm/include/asm/bug.h     |  3 ++-
 arch/arm/include/asm/traps.h   |  3 ++-
 arch/arm/kernel/traps.c        |  9 +++++----
 arch/arm/kernel/unwind.c       |  2 +-
 arch/arm/lib/backtrace-clang.S |  9 +++++++--
 arch/arm/lib/backtrace.S       | 14 ++++++++++----
 6 files changed, 27 insertions(+), 13 deletions(-)

diff --git a/arch/arm/include/asm/bug.h b/arch/arm/include/asm/bug.h
index deef4d0cb3b5..673c7dd75ab9 100644
--- a/arch/arm/include/asm/bug.h
+++ b/arch/arm/include/asm/bug.h
@@ -82,7 +82,8 @@ void hook_ifault_code(int nr, int (*fn)(unsigned long, unsigned int,
 				       struct pt_regs *),
 		     int sig, int code, const char *name);
 
-extern asmlinkage void c_backtrace(unsigned long fp, int pmode);
+extern asmlinkage void c_backtrace(unsigned long fp, int pmode,
+				   const char *loglvl);
 
 struct mm_struct;
 void show_pte(const char *lvl, struct mm_struct *mm, unsigned long addr);
diff --git a/arch/arm/include/asm/traps.h b/arch/arm/include/asm/traps.h
index 172b08ff3760..987fefb0a4db 100644
--- a/arch/arm/include/asm/traps.h
+++ b/arch/arm/include/asm/traps.h
@@ -29,7 +29,8 @@ static inline int __in_irqentry_text(unsigned long ptr)
 }
 
 extern void __init early_trap_init(void *);
-extern void dump_backtrace_entry(unsigned long where, unsigned long from, unsigned long frame);
+extern void dump_backtrace_entry(unsigned long where, unsigned long from,
+				 unsigned long frame, const char *loglvl);
 extern void ptrace_break(struct pt_regs *regs);
 
 extern void *vectors_page;
diff --git a/arch/arm/kernel/traps.c b/arch/arm/kernel/traps.c
index c053abd1fb53..7c3f32b26585 100644
--- a/arch/arm/kernel/traps.c
+++ b/arch/arm/kernel/traps.c
@@ -62,7 +62,8 @@ __setup("user_debug=", user_debug_setup);
 
 static void dump_mem(const char *, const char *, unsigned long, unsigned long);
 
-void dump_backtrace_entry(unsigned long where, unsigned long from, unsigned long frame)
+void dump_backtrace_entry(unsigned long where, unsigned long from,
+			  unsigned long frame, const char *loglvl)
 {
 #ifdef CONFIG_KALLSYMS
 	printk("[<%08lx>] (%ps) from [<%08lx>] (%pS)\n", where, (void *)where, from, (void *)from);
@@ -74,7 +75,7 @@ void dump_backtrace_entry(unsigned long where, unsigned long from, unsigned long
 		dump_mem("", "Exception stack", frame + 4, frame + 4 + sizeof(struct pt_regs));
 }
 
-void dump_backtrace_stm(u32 *stack, u32 instruction)
+void dump_backtrace_stm(u32 *stack, u32 instruction, const char *loglvl)
 {
 	char str[80], *p;
 	unsigned int x;
@@ -236,7 +237,7 @@ static void dump_backtrace(struct pt_regs *regs, struct task_struct *tsk)
 	pr_cont("\n");
 
 	if (ok)
-		c_backtrace(fp, mode);
+		c_backtrace(fp, mode, NULL);
 }
 #endif
 
@@ -662,7 +663,7 @@ asmlinkage int arm_syscall(int no, struct pt_regs *regs)
 		dump_instr("", regs);
 		if (user_mode(regs)) {
 			__show_regs(regs);
-			c_backtrace(frame_pointer(regs), processor_mode(regs));
+			c_backtrace(frame_pointer(regs), processor_mode(regs), NULL);
 		}
 	}
 #endif
diff --git a/arch/arm/kernel/unwind.c b/arch/arm/kernel/unwind.c
index 4574e6aea0a5..0a65005e10f0 100644
--- a/arch/arm/kernel/unwind.c
+++ b/arch/arm/kernel/unwind.c
@@ -493,7 +493,7 @@ void unwind_backtrace(struct pt_regs *regs, struct task_struct *tsk)
 		urc = unwind_frame(&frame);
 		if (urc < 0)
 			break;
-		dump_backtrace_entry(where, frame.pc, frame.sp - 4);
+		dump_backtrace_entry(where, frame.pc, frame.sp - 4, NULL);
 	}
 }
 
diff --git a/arch/arm/lib/backtrace-clang.S b/arch/arm/lib/backtrace-clang.S
index 2ff375144b55..6174c45f53a5 100644
--- a/arch/arm/lib/backtrace-clang.S
+++ b/arch/arm/lib/backtrace-clang.S
@@ -17,6 +17,7 @@
 #define sv_pc	r6
 #define mask	r7
 #define sv_lr	r8
+#define loglvl	r9
 
 ENTRY(c_backtrace)
 
@@ -99,6 +100,7 @@ ENDPROC(c_backtrace)
 						@ to ensure 8 byte alignment
 		movs	frame, r0		@ if frame pointer is zero
 		beq	no_frame		@ we have no stack frames
+		mov	loglvl, r2
 		tst	r1, #0x10		@ 26 or 32-bit mode?
 		moveq	mask, #0xfc000003
 		movne	mask, #0		@ mask for 32-bit
@@ -167,6 +169,7 @@ finished_setup:
 		mov	r1, sv_lr
 		mov	r2, frame
 		bic	r1, r1, mask		@ mask PC/LR for the mode
+		mov	r3, loglvl
 		bl	dump_backtrace_entry
 
 /*
@@ -183,6 +186,7 @@ finished_setup:
 		ldr	r0, [frame]		@ locals are stored in
 						@ the preceding frame
 		subeq	r0, r0, #4
+		mov	r2, loglvl
 		bleq	dump_backtrace_stm	@ dump saved registers
 
 /*
@@ -196,7 +200,8 @@ finished_setup:
 		bhi	for_each_frame
 
 1006:		adr	r0, .Lbad
-		mov	r1, frame
+		mov	r1, loglvl
+		mov	r2, frame
 		bl	printk
 no_frame:	ldmfd	sp!, {r4 - r9, fp, pc}
 ENDPROC(c_backtrace)
@@ -209,7 +214,7 @@ ENDPROC(c_backtrace)
 		.long   1005b, 1006b
 		.popsection
 
-.Lbad:		.asciz	"Backtrace aborted due to bad frame pointer <%p>\n"
+.Lbad:		.asciz	"%sBacktrace aborted due to bad frame pointer <%p>\n"
 		.align
 .Lopcode:	.word	0xe92d4800 >> 11	@ stmfd sp!, {... fp, lr}
 		.word	0x0b000000		@ bl if these bits are set
diff --git a/arch/arm/lib/backtrace.S b/arch/arm/lib/backtrace.S
index 582925238d65..872f658638d9 100644
--- a/arch/arm/lib/backtrace.S
+++ b/arch/arm/lib/backtrace.S
@@ -18,6 +18,7 @@
 #define sv_pc	r6
 #define mask	r7
 #define offset	r8
+#define loglvl	r9
 
 ENTRY(c_backtrace)
 
@@ -25,9 +26,10 @@ ENTRY(c_backtrace)
 		ret	lr
 ENDPROC(c_backtrace)
 #else
-		stmfd	sp!, {r4 - r8, lr}	@ Save an extra register so we have a location...
+		stmfd	sp!, {r4 - r9, lr}	@ Save an extra register so we have a location...
 		movs	frame, r0		@ if frame pointer is zero
 		beq	no_frame		@ we have no stack frames
+		mov	loglvl, r2
 
 		tst	r1, #0x10		@ 26 or 32-bit mode?
  ARM(		moveq	mask, #0xfc000003	)
@@ -73,6 +75,7 @@ for_each_frame:	tst	frame, mask		@ Check for address exceptions
 		ldr	r1, [frame, #-4]	@ get saved lr
 		mov	r2, frame
 		bic	r1, r1, mask		@ mask PC/LR for the mode
+		mov	r3, loglvl
 		bl	dump_backtrace_entry
 
 		ldr	r1, [sv_pc, #-4]	@ if stmfd sp!, {args} exists,
@@ -80,12 +83,14 @@ for_each_frame:	tst	frame, mask		@ Check for address exceptions
 		teq	r3, r1, lsr #11
 		ldreq	r0, [frame, #-8]	@ get sp
 		subeq	r0, r0, #4		@ point at the last arg
+		mov	r2, loglvl
 		bleq	dump_backtrace_stm	@ dump saved registers
 
 1004:		ldr	r1, [sv_pc, #0]		@ if stmfd sp!, {..., fp, ip, lr, pc}
 		ldr	r3, .Ldsi		@ instruction exists,
 		teq	r3, r1, lsr #11
 		subeq	r0, frame, #16
+		mov	r2, loglvl
 		bleq	dump_backtrace_stm	@ dump saved registers
 
 		teq	sv_fp, #0		@ zero saved fp means
@@ -96,9 +101,10 @@ for_each_frame:	tst	frame, mask		@ Check for address exceptions
 		bhi	for_each_frame
 
 1006:		adr	r0, .Lbad
-		mov	r1, frame
+		mov	r1, loglvl
+		mov	r2, frame
 		bl	printk
-no_frame:	ldmfd	sp!, {r4 - r8, pc}
+no_frame:	ldmfd	sp!, {r4 - r9, pc}
 ENDPROC(c_backtrace)
 		
 		.pushsection __ex_table,"a"
@@ -109,7 +115,7 @@ ENDPROC(c_backtrace)
 		.long	1004b, 1006b
 		.popsection
 
-.Lbad:		.asciz	"Backtrace aborted due to bad frame pointer <%p>\n"
+.Lbad:		.asciz	"%sBacktrace aborted due to bad frame pointer <%p>\n"
 		.align
 .Ldsi:		.word	0xe92dd800 >> 11	@ stmfd sp!, {... fp, ip, lr, pc}
 		.word	0xe92d0000 >> 11	@ stmfd sp!, {}
-- 
2.23.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191106030542.868541-5-dima%40arista.com.
