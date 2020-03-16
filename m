Return-Path: <clang-built-linux+bncBDTKPJW47IKRBS47X3ZQKGQE2CLXYLI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83f.google.com (mail-qt1-x83f.google.com [IPv6:2607:f8b0:4864:20::83f])
	by mail.lfdr.de (Postfix) with ESMTPS id 35C12186D4F
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Mar 2020 15:40:12 +0100 (CET)
Received: by mail-qt1-x83f.google.com with SMTP id t6sf17089417qtj.12
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Mar 2020 07:40:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584369611; cv=pass;
        d=google.com; s=arc-20160816;
        b=kYPDKarmwMk3+nOlIO3v9M6zweTPB5SqoB8pzQGyQ1ueWvyYJbAeXJIf9Zg3B1Gsi1
         UTKckCppZCS+AqEWMqPWglasphdnWdpAOhztilBJA7zyFKAiMreUah4a11bT2tMjnecu
         dIEQtw4CD6sO6d8BCd4teV/Xn7lYhl+zuvyDLF5EOOkPnlAwFJVuJdU8VbCSEiOBAOkb
         sbV2KJh/1mStrX3EFEejcBUaLZuQNjoNpUUJDrYydHM3uh39qPH2gglUEtjC4AQSINGe
         eHICf0xYd09Q/BbOo9yTi/a1eLl6ePttmAQbqW8QiOB/VXOP7DNG0UR7PGyNyaxt5OCR
         iGOA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=cecQBpgQOE1kzxfI+JAmGZ8kAUAYO8I1b21ZGGgUS2U=;
        b=ar9elclWLaf3lM+9Wazh4iX41Hyu+wYB8r160cK5+/Usa0m/9gzwCVsDUn1aqSLScL
         J+fzXk9BYoMCBj67pAh9m4kPov7dKHPFdFAHZYFOKrrdhktXXFHRNLACZ03lKFhtb6SR
         eYC7Jl/Xy/Zpn+FwYq1oyfyHy4WnaJedIqRqWY+yL/adAf5hJoocgHxhaDQZLpSYqyjH
         EWBlCvrv1ZKC5jG7RqSYUJH7khYi++5FZ+SKCXO4dZOVikeipB+Jd+RvOcm1xbE8ya8P
         8ARA5/qATEevDmZH6LaWx3Xvuu3u0PQxnEFzMrKaYXFxm7z0p4Q8steCVy8W15EhxZWU
         mXHg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@arista.com header.s=googlenew header.b=Jk9g1oUN;
       spf=pass (google.com: domain of dima@arista.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=dima@arista.com;
       dmarc=pass (p=QUARANTINE sp=REJECT dis=NONE) header.from=arista.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=cecQBpgQOE1kzxfI+JAmGZ8kAUAYO8I1b21ZGGgUS2U=;
        b=jX1YSauB5DLE+iGPJfG428scb9fxXucgGy0gAOzT+3iwEFZ7VS8UiYr/7kTLjdtUgj
         mUfrKfvZs7qza8pDE3cqPoXz1KvOZ4I5xBvf3KBt0e2gE0O3UZco3qqXLA9C8l4ucqRL
         2uPdARQW/TpY7HQEKWncDh5hqBcNUK9nFujnIMxfcBpxJtKXSH7gdsS6QRJfZkanY366
         ZOxTghS4Esww84FXso0U1gTuIQpqYOIssspdFdYCAqVfLs5+sDG/yVEDXj9Azm/fn754
         OihDwmiPjkqJTkvOlOw3S+r8EvIBtAIjZVmdagmmN5xC96YwD98SzQUMCnqJgISjTcRn
         E90w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cecQBpgQOE1kzxfI+JAmGZ8kAUAYO8I1b21ZGGgUS2U=;
        b=Aw2jxONwiZKEPYvnbiU1UB9fqaN3TI8T/gFMPekAonK1tF1kWAgiR6CXbTXEUYFPAg
         hsn88RS8P48Q2D6gJZaduzX58yRSaozV3zsAIWj2M4nNlxL0WOs449CD68Xhg1kfJRE9
         XopMjB+U852wBcrHSQDCGDn2KalEujJm914Rv1Ayt37n+H6bZbCuMiAy1gA3KxDcsAZ0
         eDzfaGil5bhMJCbJtsTcvrPR23VMz9hHwRKnLGIZoR+8rwFokdcavMA+Z2WXfUXL4IDI
         UH8oFO/ChMoqvaAlbLgmQYc4+upQ2uKayec43cbGFxRf3UuDeUGGHQ0XUAhoDPefFe8r
         XaQw==
X-Gm-Message-State: ANhLgQ0BKU1BPGIK1VeOfXgvhvy0JDPy38nXvAoeLCdYxTyR8qI9kz5Y
	kTH5d5RjeESYxRSiRmK1H9A=
X-Google-Smtp-Source: ADFU+vsKA3LDqBPRXBMbDCJn2DrM9L97jpRsHSGREoiuGCKnnBAtQeDJ2VsP0QU/FUN9+A4TrJ37VA==
X-Received: by 2002:a05:6214:11e1:: with SMTP id e1mr111836qvu.176.1584369611220;
        Mon, 16 Mar 2020 07:40:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:6487:: with SMTP id y129ls9025804qkb.10.gmail; Mon, 16
 Mar 2020 07:40:10 -0700 (PDT)
X-Received: by 2002:a37:67c1:: with SMTP id b184mr14248008qkc.307.1584369610771;
        Mon, 16 Mar 2020 07:40:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584369610; cv=none;
        d=google.com; s=arc-20160816;
        b=WnmPfLi4QXJ4q4nNxmIRMxVyweNpvsgfPNCw1rxCMHa9LrdSxd1GD5jnnzxHEp3Uqf
         j02lwlZj+0e9iKJbZixH1jEy+WmzOBKMcMxO8ILnaf9s1HOn2aNaY9xvWPO+gSfiAt1K
         Res8LeGfMLbWDgm1ErobGDYQRzs6bPDCTd6Dla9zEhYydcsKgfGpClcYZnysYucKpW+C
         NedxRpM/3ZDRJqPwmPV1IcJyABTRp10ZoQ7UvDdv/Be+jFU9E6vvI5L1l2eDccHbUUzj
         zSN7IOfamcWaxEG5P2h5PqVC3DRMfSeh33A8pPZDcJ2hPl1kvgoo1+PO1+dsuJ3zIULh
         rm8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=NTTI3yeeENs2ZgUYcRA67its707iG/GndxpZmZw7i/c=;
        b=k/V464UN92jsisDXFi8+9U2AYxiSugkO0zCTc66yJKGImOC0ogir9hj/4wWpPKvA7N
         ofSs0agJkMURW5A7GC+Hd3/QX2/Hc/wG+GCxXIBUcqXVtBwR1YaiWNuQT3zk1n7cndhv
         B3ZWEofTj+AcakWwGtoaaE2HH8OvymlhZB5x4ODbAS/d5c3P0/zCU0o5xnM3G6PxYok2
         VG4obZZ/4PdPrQM5SjH4iJEEK3bRzfhLCAESVtU6oxhp+Ch9IhjXzcL6275/7oLf7Btx
         7ee+p0ougiqtwFl1KG3Pz1O/vVhZUv0T/Cpu4JPxvPv70NxgAwUn56RkCTl/BqxC8nXd
         7Kjg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@arista.com header.s=googlenew header.b=Jk9g1oUN;
       spf=pass (google.com: domain of dima@arista.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=dima@arista.com;
       dmarc=pass (p=QUARANTINE sp=REJECT dis=NONE) header.from=arista.com
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com. [2607:f8b0:4864:20::1041])
        by gmr-mx.google.com with ESMTPS id m18si44qtn.5.2020.03.16.07.40.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Mar 2020 07:40:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of dima@arista.com designates 2607:f8b0:4864:20::1041 as permitted sender) client-ip=2607:f8b0:4864:20::1041;
Received: by mail-pj1-x1041.google.com with SMTP id np9so1806118pjb.4
        for <clang-built-linux@googlegroups.com>; Mon, 16 Mar 2020 07:40:10 -0700 (PDT)
X-Received: by 2002:a17:902:bccc:: with SMTP id o12mr5824551pls.96.1584369609808;
        Mon, 16 Mar 2020 07:40:09 -0700 (PDT)
Received: from Mindolluin.aristanetworks.com ([2a02:8084:e84:2480:228:f8ff:fe6f:83a8])
        by smtp.gmail.com with ESMTPSA id i2sm81524pjs.21.2020.03.16.07.40.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Mar 2020 07:40:09 -0700 (PDT)
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
Subject: [PATCHv2 06/50] arm: Add loglvl to dump_backtrace()
Date: Mon, 16 Mar 2020 14:38:32 +0000
Message-Id: <20200316143916.195608-7-dima@arista.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20200316143916.195608-1-dima@arista.com>
References: <20200316143916.195608-1-dima@arista.com>
MIME-Version: 1.0
X-Original-Sender: dima@arista.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@arista.com header.s=googlenew header.b=Jk9g1oUN;       spf=pass
 (google.com: domain of dima@arista.com designates 2607:f8b0:4864:20::1041 as
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
index 685e17c2e275..0f09ace18e6c 100644
--- a/arch/arm/kernel/traps.c
+++ b/arch/arm/kernel/traps.c
@@ -202,17 +202,19 @@ static void dump_instr(const char *lvl, struct pt_regs *regs)
 }
 
 #ifdef CONFIG_ARM_UNWIND
-static inline void dump_backtrace(struct pt_regs *regs, struct task_struct *tsk)
+static inline void dump_backtrace(struct pt_regs *regs, struct task_struct *tsk,
+				  const char *loglvl)
 {
-	unwind_backtrace(regs, tsk, KERN_DEFAULT);
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
@@ -239,13 +241,13 @@ static void dump_backtrace(struct pt_regs *regs, struct task_struct *tsk)
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
 
@@ -289,7 +291,7 @@ static int __die(const char *str, int err, struct pt_regs *regs)
 	if (!user_mode(regs) || in_interrupt()) {
 		dump_mem(KERN_EMERG, "Stack: ", regs->ARM_sp,
 			 THREAD_SIZE + (unsigned long)task_stack_page(tsk));
-		dump_backtrace(regs, tsk);
+		dump_backtrace(regs, tsk, KERN_EMERG);
 		dump_instr(KERN_EMERG, regs);
 	}
 
-- 
2.25.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200316143916.195608-7-dima%40arista.com.
