Return-Path: <clang-built-linux+bncBDTKPJW47IKRBOPRRDXAKGQEAJV2IYA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd40.google.com (mail-io1-xd40.google.com [IPv6:2607:f8b0:4864:20::d40])
	by mail.lfdr.de (Postfix) with ESMTPS id 7102CF0C5F
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 Nov 2019 04:06:34 +0100 (CET)
Received: by mail-io1-xd40.google.com with SMTP id g126sf17134855iof.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 Nov 2019 19:06:34 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573009593; cv=pass;
        d=google.com; s=arc-20160816;
        b=O87jHY5J/pUNNIf9EuvAyhAY/ALKMCo1tvvb+9WqKx1mid+5qBh0+FBFedMW3BnKZL
         o0XDo5lf4f9u1kJXV5NncIgN1+yvVWZpm1EH9ZZBrrTgnJcEmy0LOF+/YVgmHzjHcPA/
         hPMGb2CdYSFmI2n9OCJOwYX9hWgCGKt0Z8NxGOSMC2vk9NPhybrS4t/qFq/UJHJEjgZ9
         SfI28S2MPFuzrMRyCC23wCxfhR2kvMFG9rEQiUpUxBbxRlBms/0QoWRM/UD/KnEn7JKp
         aqwpK1V0NAR4O7bQTLRDyTP59PrXF/NrmoHnos10I8vbRyni4TXuw8lqumz4ZsDwMPh/
         ruhg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=qFulfN6RzszdeS7Mnv9HixxCnQBzTIQngpXr0LXaFyQ=;
        b=Kh8T5c6rLTdtd4E0JFLtMrBNskuH7z9CBPVNgGS0Dlw9OBKSx7wfnD+Cj5ybQ211ja
         wPhyhmcQpm9NFxtjljsrTeWRxCx6WScvgBvrvnh3sSRz0gmhpZVCnf4BIckU1sjavJXv
         NE9FkBXJSrcfha3hvg/y3vy+srbfFYYASQvDK9l6g9rzcvwaqc1eCqUKhrtBig4RdtL3
         IaO5WH4Kd2DJa4RWkPMdswHB4N8KkT8yJptMgp5SS+t4CXTaMeFD0c6yyxFvjRhGNGch
         q7bdoNtdMlmEwx7LF2u/HkJ+i9uAohlWz8Wu2uQqxr3jmfYTuaUo/+xUCqZhw4pyyv2a
         062A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@arista.com header.s=googlenew header.b=U3UPaJg+;
       spf=pass (google.com: domain of dima@arista.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=dima@arista.com;
       dmarc=pass (p=QUARANTINE sp=REJECT dis=NONE) header.from=arista.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=qFulfN6RzszdeS7Mnv9HixxCnQBzTIQngpXr0LXaFyQ=;
        b=KyCFHZuj8mCKTyiUHgsolsmrx+HWj1xLvzwQ4Y1en956dPdYZb5LqpZwdHXdJ8OGBh
         O/GFFw8iqC4I/JEg7VMBUeYyL52zQh2rSlcQk0U5RkvvDA14OpwNMmKMcJfgHWk95PeL
         QFaqxkz9duz4PG6/62gdvnFIUQoKypY+F2UUjENUnf6K91c6vcizy/PUQ5nJ3o6i7YGF
         kySdviaZMuPN1j6zaJiq3COUJsNpOipZiudGzArF64atGF9OjAYRFttY7gbib9F4S2l6
         bEQaIPReg96I3T6EsRJlogjnLXHxVXpbg8+XpDvk6IdWsNc6DRGQ5o0pGuc1atgIqAID
         Um3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qFulfN6RzszdeS7Mnv9HixxCnQBzTIQngpXr0LXaFyQ=;
        b=XYPh9agH2saHBBQnyfxLeuHflHBzLGJcYWF0F8hmr/x49e5HafoRZ+go9OmdOkg8Wh
         Mlw/okQqr4KX9HF1NvKr5pPk6rGtKG5baz025kdSVEm4N+zKVS2LzTS0gjTl4TYZEIg1
         n+e9vhNZfKTyHu18WImTijbudGy6IHWxqSuVtGZC98Lrxd/T07XSvX2tK5aE2OUoIGih
         GQYrIstk35HKPTkIp3jxne6rjinwFb9e4U2KkpBklsMi8CUOiJE65ezcc5GSD50vZzK+
         GkgbVNelyyff6sEmpexWxHBU31buIDz64yjLDY92NsoCWYOQ5Hs8Dfl59+jRagsEsY1I
         MgwA==
X-Gm-Message-State: APjAAAUyXyj7nBSPd1O1vM2qghEzDGi0y/lktpiKVLy5ba5EiNPElBdi
	Fkdp8ake1y4NyewIF582zyo=
X-Google-Smtp-Source: APXvYqxizrv6aOFq3yBpc284An6FJAX0AYezhb1GpBx1BWzQfh72CaoHp4+v/mn+b4szoT7Vee/CNg==
X-Received: by 2002:a6b:2c15:: with SMTP id s21mr30710218ios.249.1573009593192;
        Tue, 05 Nov 2019 19:06:33 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:418b:: with SMTP id o133ls177798ila.10.gmail; Tue, 05
 Nov 2019 19:06:32 -0800 (PST)
X-Received: by 2002:a92:297:: with SMTP id 145mr315495ilc.85.1573009592843;
        Tue, 05 Nov 2019 19:06:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573009592; cv=none;
        d=google.com; s=arc-20160816;
        b=c6daMlq6sQSXSQ1r/l/UyuV5R1wa5WPeIvVc1eNcCJiTK5VzlSPOqjO1wMXGSqAN/h
         6WeV0CBdrfxTxjqlhs8EI3RQ7pyHwlahn8gCyQ3moxQ4fGhXDSu2bfqxND54eEwkrlVH
         PCOsUEvwzkBpnEwEoGzHxnD5v71z+uFQFiNfWY3JF3sz1jntrTDYpd4UL+NQhPCXdKN9
         g6md+nmPwOIP2TqK+YpUFJfU7PbAA6eXMBWR+3mtVxH8IfwKFAe1YCqb2W/2992ckBBG
         67ppmQu1w5KZln9AA6VTdbXYEr8e5Kd4z1FLIbZ7QQJwtpIQSaVhSPFlXiBf3E6MBrn+
         I4SA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=T4xceT58B6sbL4PhV43oCBSGVJEvO1DNZo325HcSVkg=;
        b=wmcCFzG3iLsH75TxtsM7Jd5WDsuDlGgZRfZV1B3aLAGhFEKwqVAtpdfrdrh7E/AUHQ
         T0X6/CXryp9AZQYQO8Iqq4NZ8KT6Hyo04694u5sYFvF+lnjtFkbOL2Tuo3i8vVj/bCHu
         Yfs72L9X9yOFZ4LHxXoiberVDCbm0u6y8N3Az899gUr+pLG7DHOnRPC50JeI+Q5ouvlK
         U6vQkHP+9VIKqnCSgycjmjgKmJWKEfjAmpex2NPuIXMgcyKnxtD3i3XOETJRRXaEg4CM
         YTz9OqX49KBBvLzAdNtt1rqFBHQ76QJgcs+jMynS0gBR91nzGk3rJLkvYSSJNNiYoWon
         LBOg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@arista.com header.s=googlenew header.b=U3UPaJg+;
       spf=pass (google.com: domain of dima@arista.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=dima@arista.com;
       dmarc=pass (p=QUARANTINE sp=REJECT dis=NONE) header.from=arista.com
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id k11si1471129ilg.4.2019.11.05.19.06.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Nov 2019 19:06:32 -0800 (PST)
Received-SPF: pass (google.com: domain of dima@arista.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Received: by mail-pl1-x644.google.com with SMTP id a18so9586016plm.10
        for <clang-built-linux@googlegroups.com>; Tue, 05 Nov 2019 19:06:32 -0800 (PST)
X-Received: by 2002:a17:902:7783:: with SMTP id o3mr132537pll.313.1573009592111;
        Tue, 05 Nov 2019 19:06:32 -0800 (PST)
Received: from Mindolluin.ire.aristanetworks.com ([217.173.96.166])
        by smtp.gmail.com with ESMTPSA id k24sm19570487pgl.6.2019.11.05.19.06.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Nov 2019 19:06:31 -0800 (PST)
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
Subject: [PATCH 06/50] arm: Add loglvl to dump_backtrace()
Date: Wed,  6 Nov 2019 03:04:57 +0000
Message-Id: <20191106030542.868541-7-dima@arista.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191106030542.868541-1-dima@arista.com>
References: <20191106030542.868541-1-dima@arista.com>
MIME-Version: 1.0
X-Original-Sender: dima@arista.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@arista.com header.s=googlenew header.b=U3UPaJg+;       spf=pass
 (google.com: domain of dima@arista.com designates 2607:f8b0:4864:20::644 as
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

Add log level argument to dump_backtrace() as a preparation for
introducing show_stack_loglvl().

As a good side-effect __die() now prints not only "Stack:" header with
KERN_EMERG, but the backtrace itself.

Cc: Russell King <linux@armlinux.org.uk>
Cc: Will Deacon <will@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org
Cc: clang-built-linux@googlegroups.com
[1]: https://lore.kernel.org/lkml/20190528002412.1625-1-dima@arista.com/T/#u
Signed-off-by: Dmitry Safonov <dima@arista.com>
---
 arch/arm/kernel/traps.c | 16 +++++++++-------
 1 file changed, 9 insertions(+), 7 deletions(-)

diff --git a/arch/arm/kernel/traps.c b/arch/arm/kernel/traps.c
index 69e35462c9e9..e4f4ec8a1899 100644
--- a/arch/arm/kernel/traps.c
+++ b/arch/arm/kernel/traps.c
@@ -200,17 +200,19 @@ static void dump_instr(const char *lvl, struct pt_regs *regs)
 }
 
 #ifdef CONFIG_ARM_UNWIND
-static inline void dump_backtrace(struct pt_regs *regs, struct task_struct *tsk)
+static inline void dump_backtrace(struct pt_regs *regs, struct task_struct *tsk,
+				  const char *loglvl)
 {
-	unwind_backtrace(regs, tsk, KERN_DEBUG);
+	unwind_backtrace(regs, tsk, loglvl);
 }
 #else
-static void dump_backtrace(struct pt_regs *regs, struct task_struct *tsk)
+static void dump_backtrace(struct pt_regs *regs, struct task_struct *tsk,
+			   const char *loglvl)
 {
 	unsigned int fp, mode;
 	int ok = 1;
 
-	printk("Backtrace: ");
+	printk("%sBacktrace: ", loglvl);
 
 	if (!tsk)
 		tsk = current;
@@ -237,13 +239,13 @@ static void dump_backtrace(struct pt_regs *regs, struct task_struct *tsk)
 	pr_cont("\n");
 
 	if (ok)
-		c_backtrace(fp, mode, NULL);
+		c_backtrace(fp, mode, loglvl);
 }
 #endif
 
 void show_stack(struct task_struct *tsk, unsigned long *sp)
 {
-	dump_backtrace(NULL, tsk);
+	dump_backtrace(NULL, tsk, KERN_DEFAULT);
 	barrier();
 }
 
@@ -285,7 +287,7 @@ static int __die(const char *str, int err, struct pt_regs *regs)
 	if (!user_mode(regs) || in_interrupt()) {
 		dump_mem(KERN_EMERG, "Stack: ", regs->ARM_sp,
 			 THREAD_SIZE + (unsigned long)task_stack_page(tsk));
-		dump_backtrace(regs, tsk);
+		dump_backtrace(regs, tsk, KERN_EMERG);
 		dump_instr(KERN_EMERG, regs);
 	}
 
-- 
2.23.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191106030542.868541-7-dima%40arista.com.
