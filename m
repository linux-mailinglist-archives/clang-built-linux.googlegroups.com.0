Return-Path: <clang-built-linux+bncBDTKPJW47IKRBRU7X3ZQKGQECIRQTQY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3a.google.com (mail-io1-xd3a.google.com [IPv6:2607:f8b0:4864:20::d3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C0DC186D4D
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Mar 2020 15:40:08 +0100 (CET)
Received: by mail-io1-xd3a.google.com with SMTP id k5sf11720157ioa.22
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Mar 2020 07:40:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584369606; cv=pass;
        d=google.com; s=arc-20160816;
        b=KrguDCIVE6NsCrXF8DCT1xFnYvm/b6os2hgydqFKFNWf/t3zaUYCEnUDTKjugWRw6u
         LZHiSqZkd7X9w5UYkS6u3ScMZeMQkOSa0XwklMPR4HNcwHIVtpBiwxxxe6JbISOIx1RX
         mdanvRkRBa5hfCLDbacKiXVtNrtQmld8UBuzcec5C7Jzww45XALXpxx7aaHbjgziYWgY
         3/iCTQ3j8UHqmx4gvtMTGgfUzvdqW7/WsTPmshvxd94sLsYkln3Y6l7lgLoc0QCcgvp7
         asZt8Cb2/TdZ6I8jRRi4eyeWQVVDkLyimUwrNZewb6fnQwfTMm5KmXr5Xh0oRgsnF4fV
         IfxA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=TXA6l/7k/MFfmOQ5Rg8t7PtGJOnaQeYcbqWoSqoQtjA=;
        b=LRJIa/SUYbAzVFboSzoMSmFoCni+MJAt9w2mmIHQCmsXLy8SX6LbZYhQSiQ6Hyg5el
         Rsb6HGXKVKhgQIkBlYV7NLunbjOEjH3eG+QlX2AsR/JhoB70OOsc+W/tXMPW1BLM/sWB
         H9WsUhe1uUhNAI626fT0BCiC8QgIL5XLFamv4/Yjezx75dFYbyXx3dV/DcfHbipMxtCV
         xOw4Jy93R9LXLzosUwXFLdWe8rGm3NjKcqc3z4iS8Ig+APTIXce1Z2nHbKfCq8AaT5sm
         e+xSqikdJMkQ/pJ4EYqIJ0VFNF8fCvx37YRAKEQntPUZN/Md9T9ThrsYKiZzPKRIv9wr
         ZWYg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@arista.com header.s=googlenew header.b=Cc7unAu9;
       spf=pass (google.com: domain of dima@arista.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=dima@arista.com;
       dmarc=pass (p=QUARANTINE sp=REJECT dis=NONE) header.from=arista.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=TXA6l/7k/MFfmOQ5Rg8t7PtGJOnaQeYcbqWoSqoQtjA=;
        b=fTBUPv4SfwiD1QsmS/QuvhT738wI8qUrsR76HIxlWfhP9mallV/dY9soh1bS+zUKBJ
         ppMM1Xcpq3XYolrEWaF4x60VaViRH6D8DVs1P5aqDcuJ6hED1bwpQb6s+H0tSZXLD3Qd
         cLb36RGWbmravryZiJ5yFIXUB+5/p9i0TU1FPSQMVPBkC01FgtGh8qtDIC019MFn20og
         uZYU5eWd3Ahehe9iqtmIBA6WS1xSW9lT+C0Md2m6+CegTzWuwsLupAcQq+WVjltg7WCy
         dlzgytyrx07JCwawcQ+5aNRs+NWP1xcsvGJ9+n2QeoBdEXhm/L3rCl4ZkRAyHtCCnMq7
         KS0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TXA6l/7k/MFfmOQ5Rg8t7PtGJOnaQeYcbqWoSqoQtjA=;
        b=JoULoPJhKcbvo0eT3iXFO3SB+n8XJfQrZjOGhDH0wtBs1n08E18gySODfEymhjQigU
         WDK8rhfBbTpoH6/DGuLHhyISmJOAfFtQ/96tCipoO3HEvio3ccn2vu2BpbBOwPqyKAXD
         NZrfzIqG0MVmnMaHTUr0zwWzqd9ozBw66OJnAcIpq7750aNgPZuudmbPRjwZoh7DbIBs
         WUTpGrNeSYQYGMN6HdkNE28f5SFQ0r2q5lS/iK5+BYSZZtRm2u1XXXe7M+RGL4gUh1IM
         75yKb0IHmt6JfxWs6JnkXuA5SD+vPZThd2gizzd18ycNtRt0W2IPy6EXdQgEEh2siH0x
         5xZA==
X-Gm-Message-State: ANhLgQ1JUgK9xuKkGan9mm2AmrFhf3SE++itEBbvf4eyZnrQMaylr7fz
	x3XMKE1lh2EwX17NGWEfFr0=
X-Google-Smtp-Source: ADFU+vuQixW6QzR+XrUHjzmPPLWvzXk5YY8HQgDRjsFc3XpzlUX2Ytmg9HrHbmfWMh+/NcC1oWITkg==
X-Received: by 2002:a92:c509:: with SMTP id r9mr52581ilg.273.1584369606521;
        Mon, 16 Mar 2020 07:40:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:3a9a:: with SMTP id i26ls3940429ilf.3.gmail; Mon, 16 Mar
 2020 07:40:06 -0700 (PDT)
X-Received: by 2002:a92:7b10:: with SMTP id w16mr76113ilc.93.1584369606091;
        Mon, 16 Mar 2020 07:40:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584369606; cv=none;
        d=google.com; s=arc-20160816;
        b=Dnd3+2t+JtXd5TJ60t19FvouSCREvW8WXe3+cycDa6KKINFs+W/rVWtkf8yH8kxf4B
         Nl5QhH8LTzM6jswCFfdVsd2Av+tMMZEH+DqfdyXvfcIJoQVrpwByS6ZdZTZnENmf5bK9
         9g7ja6mAgKCNTPeKgiiFoig9izgr7ssVB7Ob9Rwi4nsEVz7Rm2BrFBivTfMT/jUXRHRU
         y9pFJi3wvGQ2NWDUveXe+ZENbZl41l6OK54t42IfmP31+ZWcPikghDlIxaOoI1IZgKG1
         mBZbL5ndirDqzSOEfOMgWeezsFCwruxm42WWwdvc//FDmJaAkMFdGM/cCunU9D6SNT1B
         rVrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Hoy3hKjGTKbXFgtJqdy0XVVKGayseSyt+olpDXinT2U=;
        b=aThOq3ixPptOHQXeJuEKNfAbj/rY0QXQoMy9IbbdX9h9IZS64Vbo9x/4BeUNuAog8v
         S9K+BEighGwg2Hu12qPC3Pk0rdNOQLCl3RbITMjUp0To21GnUwtGAWfAFwviLPdwftfW
         /uD+x+0yTPSZ7SjwEKFxgYLgEaiXtjWoHQ+1Wxoc9OyAnCy48ZuSIlPbGGqaduNTdTet
         ziZKDg+8GQTEMxXnrEisDI6iGeiQHuOvyhKk7Rn5jZiIkVRGmz5zdhr1Aq6fgAgkwGVi
         LKw997rPYZBclUwMiyiuc9H1iYoMm9bYZcwBWR7EFBETTuXsS7J2lV0rgQMFdvMx2sTq
         fpnA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@arista.com header.s=googlenew header.b=Cc7unAu9;
       spf=pass (google.com: domain of dima@arista.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=dima@arista.com;
       dmarc=pass (p=QUARANTINE sp=REJECT dis=NONE) header.from=arista.com
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id s201si6964ilc.0.2020.03.16.07.40.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Mar 2020 07:40:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of dima@arista.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id m15so9861397pgv.12
        for <clang-built-linux@googlegroups.com>; Mon, 16 Mar 2020 07:40:06 -0700 (PDT)
X-Received: by 2002:a63:330f:: with SMTP id z15mr215975pgz.104.1584369605413;
        Mon, 16 Mar 2020 07:40:05 -0700 (PDT)
Received: from Mindolluin.aristanetworks.com ([2a02:8084:e84:2480:228:f8ff:fe6f:83a8])
        by smtp.gmail.com with ESMTPSA id i2sm81524pjs.21.2020.03.16.07.40.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Mar 2020 07:40:04 -0700 (PDT)
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
Subject: [PATCHv2 05/50] arm: Add loglvl to unwind_backtrace()
Date: Mon, 16 Mar 2020 14:38:31 +0000
Message-Id: <20200316143916.195608-6-dima@arista.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200316143916.195608-1-dima@arista.com>
References: <20200316143916.195608-1-dima@arista.com>
MIME-Version: 1.0
X-Original-Sender: dima@arista.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@arista.com header.s=googlenew header.b=Cc7unAu9;       spf=pass
 (google.com: domain of dima@arista.com designates 2607:f8b0:4864:20::542 as
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
index 0a65005e10f0..9222649ebe0f 100644
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
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200316143916.195608-6-dima%40arista.com.
