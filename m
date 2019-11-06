Return-Path: <clang-built-linux+bncBDTKPJW47IKRBNPRRDXAKGQERQCUIRA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23f.google.com (mail-oi1-x23f.google.com [IPv6:2607:f8b0:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id 486B0F0C5D
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 Nov 2019 04:06:30 +0100 (CET)
Received: by mail-oi1-x23f.google.com with SMTP id 19sf14364043oii.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 Nov 2019 19:06:30 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573009589; cv=pass;
        d=google.com; s=arc-20160816;
        b=KgXcNxi3q/14Sql8bxyo9MZCrLv/OhQ12jFsAqnqWja7f8ZIDqXenIiThuytjwmVWz
         byL3iChb+3x7kMLvhzjyqwlGsixnlCHzeiUmfBV2jz7/qoV1l+eszV24De5eLFecj9fp
         ThOuII2cybW8tvL69dsglCcwWhtqw9KWoOdQpSntkX4x8aXidcXpKaUCciq8JuwmOKJd
         gZSYSq7rsxg8UfzIdD91J/iJkwNtlYTYqzOVQWEmmNswoisiucrUOKaMFx79v26FIATR
         D/ni0V3kJpo+9OO3zAFd0IEvf3LP4RvJZc8KwTc98R6AXcK3WCI2z6VJEU8OARWlhZM7
         hRwQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=vK4VH5J21AM0D9oYhQVR2HpfMBQNn4XSpA0GAsXbzNM=;
        b=lQV79QmOTUPaefCNCtNetmU8IahGvSz1278IDgGZrs/MIvgrPToJpeS1qqW34gZWxL
         yG/Ay2q5+7qCrcy/PUgHjmQ/f8EdnGqW9NuXgbaeVMJgvxM+zmP8BlYb5jq0rjN9dxbC
         RMiSDTBOWAHB+tWQT+eOyqyU5Ki1bmUL1k04gKLYJ0dWBxCk1Kj2pzvBS6ePElXaCYvW
         uOsEWgcFfkchObUW1oacoXGNiiStmTmeV8oLr2QvKCKRLix6PgJL+Jud8sHaO1uUsGoa
         UzVdSFv53F4NIlukxJNATb7rC2OL4xL43BP+sxrVfxu5tK7hNH2S3II881Q6cWkIMRFQ
         qVcw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@arista.com header.s=googlenew header.b=JHekqEdx;
       spf=pass (google.com: domain of dima@arista.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=dima@arista.com;
       dmarc=pass (p=QUARANTINE sp=REJECT dis=NONE) header.from=arista.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=vK4VH5J21AM0D9oYhQVR2HpfMBQNn4XSpA0GAsXbzNM=;
        b=M6dPxBo02l479tCoA/LCVBKkhNnv/3CxFd0uXN59yXpOL3n/rvqtVcB08KJqP8KEH+
         7xVywe7TqcK0K4NzOHZis5MxQcq5MPEWKM3A0Udz0rxvcbu79YoI/DIASp0VuaTm7/4W
         EOp5KEAwoiSUyP8Zz2m5hwtgsoGVAYnrqICZhn6oucZLKzX37/gzHGzYveVBMoNHnQ0B
         RPlzkkk9AOeFql0Oce+1JgDyh+sdU60B0w/eBZJtdPeNOmRl0GbXbpChrv6JNdw7sRAK
         S3314LLc+JkQzsN8H3rXgcd4/LTFMUGbQoWCsn6owRfvgcXeVbuJfF6cWpF17rzRzS53
         LIsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vK4VH5J21AM0D9oYhQVR2HpfMBQNn4XSpA0GAsXbzNM=;
        b=umWzj4WQxx7AXaqsLlXeH7/hQG4olGd7z63+KOaljH1SgzIM0xiR6f6RhJJw5f16Y0
         gfDOS4/JCxJdTNatAtMv4ilafRS3W23W9zyx7/5iaM0JD78/usNS48tRJp3okaD7cXps
         TODzXdhwZGiIniXpisk/yYqJiFiv1p51JVTCceAQ1afWac7SK7sfp35UDVUIEFzUersn
         U8kN6RkM7QjtX4vXZmQO9G5G2T5evIIFeLMuCPIa/35fkdkHV97XXzhmA/LPNQZbE6IJ
         96SBlRiE04J+ZCvhduq78ubEb6/D10/47vbaKU3tz10zSCQPQvJiHPaOy+ht1fqj+4Zi
         KbIg==
X-Gm-Message-State: APjAAAVuC2BwiBqpIvTIlFvfLyEPt5BmPy4C1ci3iXFbOiF2Eep9MbFZ
	ocNEZRISfVWcwWOceH/j3l4=
X-Google-Smtp-Source: APXvYqz+FqKJp/dH1/jCNFON0r7vwbjF4AirajNj4ro7CT/v/9knkn5BM6x0H8O6ud2DxJ44yGwuSg==
X-Received: by 2002:aca:fd15:: with SMTP id b21mr258991oii.11.1573009589071;
        Tue, 05 Nov 2019 19:06:29 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:68f:: with SMTP id k15ls399162oig.15.gmail; Tue, 05
 Nov 2019 19:06:28 -0800 (PST)
X-Received: by 2002:a54:478f:: with SMTP id o15mr287665oic.34.1573009588756;
        Tue, 05 Nov 2019 19:06:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573009588; cv=none;
        d=google.com; s=arc-20160816;
        b=t2HvG1tO34V1kscFr1XelMxbX38dqeQRFlwfh/b7yJ81MfacP5yE5Gv9RFFHQ73uQU
         3HH4h8py0kptXoxKKdeZam58T/YLfPbXtubP3Ah4S5LgRhJCQ6E/jbfZ7pdxHMyDnvfj
         9aN+guPjFaSwhC/eoenFAKZB3PtfGco2iip3wRZFRPRqVl/7KU4qf+7l2dUb+MlrIB0Y
         hlwFjCo/I0APCSZmZSxvyS6KzJNSHs4vqqfwm+qOdI86ki59q4wltl1wdp08LetpmfKo
         oAtYZwGwzoaLulbkVujOnIE+emDZyMMiQhWHmec3r2crR0nQWb0kguYPknoTDnnQLS/u
         rBZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=0JSJptxyMyyawlDIBafWZUWHnWl6qdn6DTmb9gqM8mc=;
        b=RJ63LM73YcCVCgijwCN+7m2+czL9IJ7X0LEWAxJi8tIBMtxNmcAPr6uSsjz273/YBg
         c2iaf0Tpwbb1wnUY0YzJ+r9702cmuycDK5htSCsIDnrqEYSCBZxr+q7QTtfRv/HYPq4u
         /0VS/oJEmI8jBBu+QTXGzlUzWDttH+oH2KHsCBkIooEORIrLnlIRISFiRHGcRl+bdRk/
         psT/MQEMlAjGW8csvZ2pI0MaPVLi8PTn+lAqV+BOtA9NDJSkncEhwWRXFqGxkO8gx4Sn
         XL9za9K49u4o9weR65i5WGGrc9Cade8ws1ny/7PxyEOlEILlQEmBC+xq/Eflpq7+6MsY
         EFPg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@arista.com header.s=googlenew header.b=JHekqEdx;
       spf=pass (google.com: domain of dima@arista.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=dima@arista.com;
       dmarc=pass (p=QUARANTINE sp=REJECT dis=NONE) header.from=arista.com
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id j190si791987oib.0.2019.11.05.19.06.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Nov 2019 19:06:28 -0800 (PST)
Received-SPF: pass (google.com: domain of dima@arista.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id x28so14512665pfo.6
        for <clang-built-linux@googlegroups.com>; Tue, 05 Nov 2019 19:06:28 -0800 (PST)
X-Received: by 2002:a63:d1a:: with SMTP id c26mr225690pgl.24.1573009588153;
        Tue, 05 Nov 2019 19:06:28 -0800 (PST)
Received: from Mindolluin.ire.aristanetworks.com ([217.173.96.166])
        by smtp.gmail.com with ESMTPSA id k24sm19570487pgl.6.2019.11.05.19.06.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Nov 2019 19:06:27 -0800 (PST)
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
Subject: [PATCH 05/50] arm: Add loglvl to unwind_backtrace()
Date: Wed,  6 Nov 2019 03:04:56 +0000
Message-Id: <20191106030542.868541-6-dima@arista.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191106030542.868541-1-dima@arista.com>
References: <20191106030542.868541-1-dima@arista.com>
MIME-Version: 1.0
X-Original-Sender: dima@arista.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@arista.com header.s=googlenew header.b=JHekqEdx;       spf=pass
 (google.com: domain of dima@arista.com designates 2607:f8b0:4864:20::442 as
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
 arch/arm/kernel/unwind.c      | 7 ++++---
 3 files changed, 9 insertions(+), 7 deletions(-)

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
index 7c3f32b26585..69e35462c9e9 100644
--- a/arch/arm/kernel/traps.c
+++ b/arch/arm/kernel/traps.c
@@ -202,7 +202,7 @@ static void dump_instr(const char *lvl, struct pt_regs *regs)
 #ifdef CONFIG_ARM_UNWIND
 static inline void dump_backtrace(struct pt_regs *regs, struct task_struct *tsk)
 {
-	unwind_backtrace(regs, tsk);
+	unwind_backtrace(regs, tsk, KERN_DEBUG);
 }
 #else
 static void dump_backtrace(struct pt_regs *regs, struct task_struct *tsk)
@@ -660,10 +660,10 @@ asmlinkage int arm_syscall(int no, struct pt_regs *regs)
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
index 0a65005e10f0..caaae1b6f721 100644
--- a/arch/arm/kernel/unwind.c
+++ b/arch/arm/kernel/unwind.c
@@ -455,11 +455,12 @@ int unwind_frame(struct stackframe *frame)
 	return URC_OK;
 }
 
-void unwind_backtrace(struct pt_regs *regs, struct task_struct *tsk)
+void unwind_backtrace(struct pt_regs *regs, struct task_struct *tsk,
+		      const char *loglvl)
 {
 	struct stackframe frame;
 
-	pr_debug("%s(regs = %p tsk = %p)\n", __func__, regs, tsk);
+	printk("%s%s(regs = %p tsk = %p)\n", loglvl, __func__, regs, tsk);
 
 	if (!tsk)
 		tsk = current;
@@ -493,7 +494,7 @@ void unwind_backtrace(struct pt_regs *regs, struct task_struct *tsk)
 		urc = unwind_frame(&frame);
 		if (urc < 0)
 			break;
-		dump_backtrace_entry(where, frame.pc, frame.sp - 4, NULL);
+		dump_backtrace_entry(where, frame.pc, frame.sp - 4, loglvl);
 	}
 }
 
-- 
2.23.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191106030542.868541-6-dima%40arista.com.
