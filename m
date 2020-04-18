Return-Path: <clang-built-linux+bncBDTKPJW47IKRB3OB5X2AKGQEDBV5CRQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13c.google.com (mail-lf1-x13c.google.com [IPv6:2a00:1450:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id 912DD1AF491
	for <lists+clang-built-linux@lfdr.de>; Sat, 18 Apr 2020 22:19:57 +0200 (CEST)
Received: by mail-lf1-x13c.google.com with SMTP id v6sf2437339lfi.6
        for <lists+clang-built-linux@lfdr.de>; Sat, 18 Apr 2020 13:19:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587241197; cv=pass;
        d=google.com; s=arc-20160816;
        b=IUp6rSYgDgkgifrWIGKsBa2qEfnnK3KhrE1ktq3zXnDcTPsPhllmBCPmKrBoLu1Kqe
         IdJtOGUQP+6jtxfvqa5o0sJ2fiTSLGZqwYP4a4RqTGaKtuLdlhTxOAHRQf/vQskRidOL
         C970Q9FSM37ZhtF+Pelw8Gl//6YDt2trkts+npA8L6FwBdilCFavKHjgDl+nVQ0458Oz
         Kt6WGV6V7sbZWqEw67Sp7cidjmPP5tpzpRs2gSL/KRPL6iGZIfM9zgz4T0N3KlWzAJjA
         eh6K8WBITLXSRO4tyvpEMxDxfiY8hPs1hwiadmBCiSVxm+hKgRx9G/+Fa4snKSHkEKS7
         CZJg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=D/+wn27ajlf+5g9mD4+bHRzlZIEojDPk8eObMPhdhVs=;
        b=O2TtKRsPA/7RGAFIQMOzYqZml3vb+rYqU1iwarwpQxkECB9Be2UAePCA9GpEg5T7qG
         Zh/x672/vx6CZMHT76/oTuVYUYs2uJp82mWch1uId7dpTVJmJxdtQoaypaV0izN4YRCv
         ds6bJXXHyIVZB0sBRkfVX8WJLN96R5Ju9GubrfUfqhj36+gd9JC2uSvUuJeJbAmMQr/y
         YG2PPFmy/zWFV5wsXD5M5Y5Gec0Y4S42TDOz8cN6QswSamEb2P61MPVCeZw0hp72FPfE
         UxT9mMxeXOAbBweBbtIBGU5gXG0rmasHdzlna7AzdqZWkRrdobU+Px3O/UAbNZ6ndLqg
         lqaw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@arista.com header.s=googlenew header.b=Qcdi77Jl;
       spf=pass (google.com: domain of dima@arista.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=dima@arista.com;
       dmarc=pass (p=QUARANTINE sp=REJECT dis=NONE) header.from=arista.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=D/+wn27ajlf+5g9mD4+bHRzlZIEojDPk8eObMPhdhVs=;
        b=BtZrvAgJ7ivZH4AUtC3Cb3OlVyKOVvBA5BNAjc0NWQ0YSlQf8EupjC5bPoFEe/3Sxr
         VhzDjrn+aTTtWnEPFUV9Ep1HbewiTAOojj2NQzK6RODo0R05vW+2pl/9loS09CsE0LL9
         jQx9dTzQYdovLPMEGiifyUcD0IwfIR35/GyNmkjy+1RA43A8MJQS/Xqjw9ySBfppKc3Q
         vHC9RNaFWSXs4IzdD+hZl9BJpBK/0kC070pxe/FNhRzGnNqxL4EpzE7h4hE/OKIowK00
         6kQNv9jkrv0xBq23z8ayasm6g6wABmvpjNLCIBLGpbr/vCC08s63nU0gmGTK3QpKtTAp
         9W6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=D/+wn27ajlf+5g9mD4+bHRzlZIEojDPk8eObMPhdhVs=;
        b=Z5YT7ggZmJb1UpjAWxh433SbSfR05LABFu386GNihP55IaNPfvsqUh95hFXHoFXT1/
         51F95gW6z77mHX4rlteaIiQ8vdNMrublFeBgqEG904eiJFs9xE03z0oEdZPzB1IPA9JT
         OPDwouo/xsJl4IYYWkGK5FKyii9VeKLmpHyK35YNm9yATGPVgklQ3ytsG7syEKz2YA2t
         WRsFGWiOFI3h2ZTQOGeQIZIOw5udo7pJunIxnBxrMhX0NmizP1/WYsLXi4fdKjtyNTYD
         MZWTV3LAv1lSTzoNsqLOChfDyge2Qd0Pm1gTFCmey7k0HzrEzlrVJsoJM8GjcHQFMoae
         N3SQ==
X-Gm-Message-State: AGi0PuZm8Z89jIZf/ry2QWWHzCDsPSX0BqFDBu2nZHtBSsbb4df3/J8T
	2t0uVl4zKGHP0s/jaMv46t0=
X-Google-Smtp-Source: APiQypJh3yL20UnKOX/nr64XG1sCHLflNuNsRgewSEaXtzfBFYy9S/fG1J64FLAqX5vlgyAII5cLxQ==
X-Received: by 2002:a2e:9e89:: with SMTP id f9mr5571769ljk.234.1587241197138;
        Sat, 18 Apr 2020 13:19:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:55ba:: with SMTP id y26ls940528lfg.11.gmail; Sat, 18 Apr
 2020 13:19:56 -0700 (PDT)
X-Received: by 2002:ac2:498d:: with SMTP id f13mr5750596lfl.75.1587241196591;
        Sat, 18 Apr 2020 13:19:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587241196; cv=none;
        d=google.com; s=arc-20160816;
        b=mMFnHo/PZowoV6npVeDRWAXQU9XWjnbKUXc9UwW3FpJLLkqxubp8CqD/hwHzuQ78fU
         J1aQuzQxdLckYColFWKhVQ1YQdoocjEO9tR8OnqWzZiqCUnAez2AlmgUgbFBazTVO0Lo
         UAPL7iPDM5ONE0BEX0G6KxN2hTaS33+Z9T8WuMnmzW/rJiKovYac6Gcg9Nlc6m3WzTpP
         RUCqgq1YjQ7piBF+EAP+NlGRrtfpqFXzM0mk2Osjt/el31D0Qv2wluu8ms3yGgxrdfKL
         TvXJlsPRdhh+kNicmnegi6IiYXHsj4Vca5U/Nb1E5grXcIeApQj7Wlxka4K6Fn1lUaNw
         CWPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=pgqIkhhOAVIyJsQQ6Ikonkr9d85xTDX4AFriHCvPgww=;
        b=ZQfZAMkR5NA9ZO+QJkUCv03VUK25w9AmNUN6N/cIFiehQbiHMMmtjdHEnuAB+PvwxU
         vnHQTTnjBdgbMwD+jIBYGfFAFT4OPrzVuRmlqvLjzYi2ElekPhhOfma9t6kgIGDk4Ac+
         CkgKm/PXFcfj8ihCITpzUgweDMMRuy447JPiYnItmOb78R5JiaVgmEkh/+tbhWhYYvYQ
         FY6nC5MRaYvo9yqRICkp6AUmdr0JBOx8gwmmBEpQbaQhDvodebgSlLWGD+L3aLng3apX
         khnfOaB4AZ64XP1UXF/cHThS/rHgaCjW7f/+dPx+0pV0exx1h2s7ehApDcBLXTh5gHXX
         X3+A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@arista.com header.s=googlenew header.b=Qcdi77Jl;
       spf=pass (google.com: domain of dima@arista.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=dima@arista.com;
       dmarc=pass (p=QUARANTINE sp=REJECT dis=NONE) header.from=arista.com
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com. [2a00:1450:4864:20::441])
        by gmr-mx.google.com with ESMTPS id e4si761274ljn.1.2020.04.18.13.19.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 18 Apr 2020 13:19:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of dima@arista.com designates 2a00:1450:4864:20::441 as permitted sender) client-ip=2a00:1450:4864:20::441;
Received: by mail-wr1-x441.google.com with SMTP id g13so5130032wrb.8
        for <clang-built-linux@googlegroups.com>; Sat, 18 Apr 2020 13:19:56 -0700 (PDT)
X-Received: by 2002:adf:f9c6:: with SMTP id w6mr10553069wrr.341.1587241196100;
        Sat, 18 Apr 2020 13:19:56 -0700 (PDT)
Received: from localhost.localdomain ([2a02:8084:e84:2480:228:f8ff:fe6f:83a8])
        by smtp.gmail.com with ESMTPSA id m1sm31735255wro.64.2020.04.18.13.19.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Apr 2020 13:19:55 -0700 (PDT)
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
Subject: [PATCHv3 04/50] arm/asm: Add loglvl to c_backtrace()
Date: Sat, 18 Apr 2020 21:18:58 +0100
Message-Id: <20200418201944.482088-5-dima@arista.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200418201944.482088-1-dima@arista.com>
References: <20200418201944.482088-1-dima@arista.com>
MIME-Version: 1.0
X-Original-Sender: dima@arista.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@arista.com header.s=googlenew header.b=Qcdi77Jl;       spf=pass
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
index 11a964fd66f4..343cc27b36c4 100644
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
2.26.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200418201944.482088-5-dima%40arista.com.
