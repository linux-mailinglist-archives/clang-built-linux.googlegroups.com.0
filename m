Return-Path: <clang-built-linux+bncBDTKPJW47IKRBQM7X3ZQKGQEPPUDQAA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23e.google.com (mail-oi1-x23e.google.com [IPv6:2607:f8b0:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id 13A86186D4A
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Mar 2020 15:40:03 +0100 (CET)
Received: by mail-oi1-x23e.google.com with SMTP id e203sf10982235oif.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Mar 2020 07:40:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584369602; cv=pass;
        d=google.com; s=arc-20160816;
        b=lbE+7S4ODV8Fy53TJ1x4DhtvgHXX1cpd1tpU/irKmv91RT2NfgeayQmW0FLvQb/yAV
         iSl16Z3rszp2M9tXXrF+v3nccHG/2wNr20puLp64khaJk3SC+ZSzAlDSjMbcsp09rJOE
         cNvN+qI/tKjx/yJJ3Dgc6hpa2jzEq0z8uGPdMyuDsHxHRKcC6yY3RlMOD8XGcUKzLSXK
         nhjKp5tSBQ0HdOWMjyoVZdSH/dOUGLasCMzD93GAwx1OZfyeidP0Sb0w58R9z2pJXNxM
         i0HATMf6J5GYIfCyMznxcHWHbkxA61/2cMFG6U3e5v/2W1G8aS09C8bSTjSpILHcSbIP
         XYdQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=eu/J9G9KBXU6fChUiloJpr/1xbuy6LEOYcYUtWCzVm0=;
        b=iHJqZf65Ahs4uJLGdcPD2sUtbu/1gBS0tEuYvQjJZv6Neyksx5hhfAov7UnqsivXiG
         5qw+/mGrAnVfbg+0AFpZvj0Jz6dvmrEDci7w0Mnk/6aZBeoML8G1wSdE+cDbZyC+fRTR
         0cvCJL3mRT3RfXvwjztbzq9Hmcl4GRCWkakYoxtZ0uh7porb4g05PYCvBcGZST0ksFC9
         TQDoHpwumkAJNTVQdGxecaU62KjRdlspHQExk02h7hL+sIr0nKTWwzx0Yj8E3zLNpDv2
         qN1Kb1A4Yldt+bcIgvZEVvYJ4yNbnnfzIASx+cFs/ytN/3JCXA+rF1eYUMzg9/Npewd0
         b6FA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@arista.com header.s=googlenew header.b=HUf43cOY;
       spf=pass (google.com: domain of dima@arista.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=dima@arista.com;
       dmarc=pass (p=QUARANTINE sp=REJECT dis=NONE) header.from=arista.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=eu/J9G9KBXU6fChUiloJpr/1xbuy6LEOYcYUtWCzVm0=;
        b=bm2fP9LMkS8zNPLK5ltfAl658nDzxv+zlR3Y8JUJCDmCzvdWkOrwhYFUlXqlWtenHx
         vycrCkgIA+K3SVPomHbMQjubaIF2vG+e/uHr7lf+EQ+UgoD2VD93Wc2ZIEYTflQEnqnG
         GroUAdXMYJyO/iKhZHcULnY2tjnuioSKPafUHIppgERms8pyC83ahRyeK/l87baCS+vD
         f84YYaNJ0t+1PvJrFYj9VGB2uG4yZhnhyLnebOXhAcw0fuW79qyPqCpPszu+H+xf9Jd5
         JYxUrfbMTdt7fzXvQxE8Zu1dRAORnX4ksEPe2+eZbiZqpERWo9OhRdr0CLHSoFp4Zg90
         zZ2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eu/J9G9KBXU6fChUiloJpr/1xbuy6LEOYcYUtWCzVm0=;
        b=Fzm4naWTLv3FUNrdjuVYz3zn5QRtbPuAJW6DrcO8zLM06OYosQp2PxoTFgYFLUJGHY
         Ee1mM7sdZuYpvMoKZLcDRRv3iQD5lh2Awm5fsM1GVgWP2dbFTaKP5E1ZD/wfUMCIKBp7
         iKbFatIc1JecBHVaTsHgM7rpCZ4pebCIkk8AU30XSQ+7812DlTgvAWKk4f8h/U+7gLOz
         RCu8JhNQgYzWrLq+Wkwj7pdJZanAirKHQzjD1JcfrPN2KB6rKBd7kWdTiqYl+MUAyBtz
         o3d4IVXw5QeIx2Np7doWMpHI6YlunFVTTsAqRAk/z4IPQI2eAVyOV2wwWBD7svsie8b3
         yj2Q==
X-Gm-Message-State: ANhLgQ38gdElRH7SnC0yJ826vB3hyVZrSHU+abnnnq0l3OPRvQMxYcS/
	v/xF7w7uEN9r0dxP2Pfcd1I=
X-Google-Smtp-Source: ADFU+vuUO4G3yxgjbIO9GtGqGWzEyijzpELgEIVJqfsjhcgvYZ+6r2As+fzRl7ENwwKreQzHDjvwOw==
X-Received: by 2002:aca:230c:: with SMTP id e12mr6733157oie.127.1584369601835;
        Mon, 16 Mar 2020 07:40:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:6a5a:: with SMTP id h26ls6223435otn.1.gmail; Mon, 16 Mar
 2020 07:40:01 -0700 (PDT)
X-Received: by 2002:a9d:74cf:: with SMTP id a15mr18832996otl.258.1584369601348;
        Mon, 16 Mar 2020 07:40:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584369601; cv=none;
        d=google.com; s=arc-20160816;
        b=ondf4s3oAaynkgIdiKRnn/qEgSMINtP4XGoqZJpPwTW8ZiYCqKtUeOhT/IsC1x5L8R
         PcwzyXV6CLAJu30jP4xXqRABSxzdf/cEbfh6Le64ftUU0F7bgdsnnrxuuJzyZSOIanAn
         diT2mmNpy6IL5rsKYSO/5eoPYJTq3pBLE28hxcqo0LZgjO3T8lX3IPsOVAEpJINpzAUC
         b8Ct/2v7O2GG6kodToPh8IBGfQ8m2dcyNnz7prLqg/eRR8azlvMotYj1C0slfW/HP2Jj
         9HRmeSfaCsBxT0vc/3r9eIH1/D/BbwKbNIbZi6gnVOeRZlWK5FARp+eOVVm38ebm1x7z
         QdQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=WRycM3kvderYb9CwKZ+TYqaJ73yGSs7D+hHRot+jXvM=;
        b=zzKuN7rAY7l1CbiYtBsSARzDLh3KKEznL5ETSXStUB2MSEakET9hS5n45YdnNwtGoQ
         HNoG6Y0+tgoPCEgnW8RwWqhIEO/7TMOV1etDABet1FKY2Hh8aHQyzAYx2ZDDZTmhwUnU
         pPEiz+hJPW0l+4/y0MoHxvl8s8EPE3DZ6tpXD9DiMftDMxuaDcP3CNsm3n7+m30Ndk/T
         vXGYVQl7KyuMzIqwGFklAIq44kI+v5NhSAZyR0o0KsOz6Kwx7H16Uspsr63Y47E4N/+k
         kqLgGcvL8B3zJGgxJCkQcAcNV83kszXqpaW7Hth9TgWNBMKZbROF2N0SDkxbnLWSNwxY
         rnCA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@arista.com header.s=googlenew header.b=HUf43cOY;
       spf=pass (google.com: domain of dima@arista.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=dima@arista.com;
       dmarc=pass (p=QUARANTINE sp=REJECT dis=NONE) header.from=arista.com
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id d11si13303otk.5.2020.03.16.07.40.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Mar 2020 07:40:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of dima@arista.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id y30so9852262pga.13
        for <clang-built-linux@googlegroups.com>; Mon, 16 Mar 2020 07:40:01 -0700 (PDT)
X-Received: by 2002:a63:1862:: with SMTP id 34mr164092pgy.191.1584369600556;
        Mon, 16 Mar 2020 07:40:00 -0700 (PDT)
Received: from Mindolluin.aristanetworks.com ([2a02:8084:e84:2480:228:f8ff:fe6f:83a8])
        by smtp.gmail.com with ESMTPSA id i2sm81524pjs.21.2020.03.16.07.39.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Mar 2020 07:39:59 -0700 (PDT)
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
Subject: [PATCHv2 04/50] arm/asm: Add loglvl to c_backtrace()
Date: Mon, 16 Mar 2020 14:38:30 +0000
Message-Id: <20200316143916.195608-5-dima@arista.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200316143916.195608-1-dima@arista.com>
References: <20200316143916.195608-1-dima@arista.com>
MIME-Version: 1.0
X-Original-Sender: dima@arista.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@arista.com header.s=googlenew header.b=HUf43cOY;       spf=pass
 (google.com: domain of dima@arista.com designates 2607:f8b0:4864:20::544 as
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
index 1e70e7227f0f..2030611f22b8 100644
--- a/arch/arm/kernel/traps.c
+++ b/arch/arm/kernel/traps.c
@@ -62,7 +62,8 @@ __setup("user_debug=", user_debug_setup);
 
 static void dump_mem(const char *, const char *, unsigned long, unsigned long);
 
-void dump_backtrace_entry(unsigned long where, unsigned long from, unsigned long frame)
+void dump_backtrace_entry(unsigned long where, unsigned long from,
+			  unsigned long frame, const char *loglvl)
 {
 	unsigned long end = frame + 4 + sizeof(struct pt_regs);
 
@@ -76,7 +77,7 @@ void dump_backtrace_entry(unsigned long where, unsigned long from, unsigned long
 		dump_mem("", "Exception stack", frame + 4, end);
 }
 
-void dump_backtrace_stm(u32 *stack, u32 instruction)
+void dump_backtrace_stm(u32 *stack, u32 instruction, const char *loglvl)
 {
 	char str[80], *p;
 	unsigned int x;
@@ -238,7 +239,7 @@ static void dump_backtrace(struct pt_regs *regs, struct task_struct *tsk)
 	pr_cont("\n");
 
 	if (ok)
-		c_backtrace(fp, mode);
+		c_backtrace(fp, mode, NULL);
 }
 #endif
 
@@ -666,7 +667,7 @@ asmlinkage int arm_syscall(int no, struct pt_regs *regs)
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
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200316143916.195608-5-dima%40arista.com.
