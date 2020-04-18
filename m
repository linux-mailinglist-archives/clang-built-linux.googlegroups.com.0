Return-Path: <clang-built-linux+bncBDTKPJW47IKRB36B5X2AKGQEA3LU7FY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x137.google.com (mail-lf1-x137.google.com [IPv6:2a00:1450:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 591EC1AF495
	for <lists+clang-built-linux@lfdr.de>; Sat, 18 Apr 2020 22:20:00 +0200 (CEST)
Received: by mail-lf1-x137.google.com with SMTP id a14sf2425800lfl.15
        for <lists+clang-built-linux@lfdr.de>; Sat, 18 Apr 2020 13:20:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587241200; cv=pass;
        d=google.com; s=arc-20160816;
        b=PqVWowXTOlSBfcIpNmsAXuHfFTI28hllkGik4AqOoOwXr+u9jZsDYiJniaBZS+QUeQ
         jDfxkP1Ne3Yw1IVqJrHvNHaycEc8iUwdDdJpqsH3sVTYVgtDdFJ1YEsoLPA7gonN9agJ
         9uhdF8LiZCCPIRlMc/BM/UqwuvQSwT14cYCnfAJj+9vCEinLGn7BwCdgUBXQPzyOn9sh
         Q4FI2bBj8wFhGhwoMmzXu5hhj4aAP5WFh0VbvsElFW5XOEAJos4eCxe/4VtsotKX9iZH
         QlWdu+1Ah+GEv6vZh6YusKqn94L4YsQ06SxeDAHk1cEgcrHI+Zrz7RoQ9PiMKpOwY7Az
         WOMw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=/A8OvID3h0EXyFWeTQuE9J0pVqS+1Vb8WRyJk8rS3Sg=;
        b=R/9hxl2g29DBFPhKop7AlEWUi1Ka/qmRFjEw+NkciEEugGphqB4dIu5jxzXtxNNRtC
         M3pOmRWemOJ8XxiAKoCqIULzmUO+3q9gmb1SBvAWS1P4fk5vcIO2p99TujyQVlbD4/fG
         XIPrlgyS9olhdR0UYNQj4NFl/Mh2pZr5VTLy2Dc3XBsbsWAfM/hH6oy3+3O/LJ78RZFz
         FKjk3mwMqKReT+MjnVr5p1V7b/cHEzgJhX8AQVLdt/nxp6M1vlgQwhqRuwXrQUOLg4wW
         I2/PvSlYpzWzb0HGmQ8vNkC9hnFT/wOcwALZ82pw56CLYj9A4NjDF6vb9nRI01DScdul
         8kbw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@arista.com header.s=googlenew header.b=UmUB6tg2;
       spf=pass (google.com: domain of dima@arista.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=dima@arista.com;
       dmarc=pass (p=QUARANTINE sp=REJECT dis=NONE) header.from=arista.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=/A8OvID3h0EXyFWeTQuE9J0pVqS+1Vb8WRyJk8rS3Sg=;
        b=ZMl5/2lIZjTsgYtDywJSqSZjWrCaE8k42BaZFH+eFeySREKNqNjb6vXtY5MAjhq4PH
         lR7TDsUymIZ9iqqPBwXa6ue94PZSgeGJ/tzHO2uOmhBt3FMRgnOXqLHzibjfQSu31W7G
         6kuwEkClbH/U4yaQQAwaQjzTtlGVxgCEdM4lbTME5zFk/oTVHDlZaM/iHPZjunY4KlzA
         +LBk77TsYqPRcaRKosvwvFn4dss3ZvmvxMbTIHt5GOpIZgCnHxofIvxr/IDCkPdgJ12l
         GF/Mel91qsPDKU3mHEYy+g4PxBiI2+ku2ok8T8o178aqfb5SMb1RYntbzR/XOuq/9zNT
         4zWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/A8OvID3h0EXyFWeTQuE9J0pVqS+1Vb8WRyJk8rS3Sg=;
        b=sImUSs5k/CIZqdshuFnDueCQmltnU+Oz/opHe6qKRrtyEM4/0FfTQS9qNTFc6ZHlNX
         EmJVRdzRat2rSw4tq0YP+WQseUMVNYFL996HwaNTFqf1+JX65dpxzIJZcDfg/H3bV9s2
         Qn67XZFuGT2fL9IDkkVpqOAJonVQTdK+GJAhWtFBUzYmMTQ08r1LE7O1s6g4CN1W6YqT
         QGsTkrQ2JfrAqZ4hMw3004/O75h8uwkDAUSNxD4IXO5Wk63x3flnij+6uusLzkiRwmqG
         4S2en6kS4sRHY5n5NK+QNJx669vVsP9uAa+qN4IfYsoBNUFDNASlQJdfyxvimwrXXUmo
         bSsQ==
X-Gm-Message-State: AGi0PubhaxONcBumCQdJGzUE+gx/7+DroPS+V+R6RHA1Iih2pvttcKdb
	ZaOwQSm6VjK+ZMy/BGniVLo=
X-Google-Smtp-Source: APiQypJK1rDiZ+dneCGeepDorlbad6Q60Mn6Z2u4rYSqmr0ByJZyKUNxgzaq2Aks0Fn45eBgLWyOWA==
X-Received: by 2002:a2e:9186:: with SMTP id f6mr4586460ljg.85.1587241199935;
        Sat, 18 Apr 2020 13:19:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:5456:: with SMTP id d22ls949095lfn.6.gmail; Sat, 18 Apr
 2020 13:19:59 -0700 (PDT)
X-Received: by 2002:ac2:47f0:: with SMTP id b16mr5857582lfp.81.1587241199397;
        Sat, 18 Apr 2020 13:19:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587241199; cv=none;
        d=google.com; s=arc-20160816;
        b=UE/YJKKstB3L8SVbeQ1kVaOnkHXtvErnxHBHUX3Jggby6nFdTo8tfSjgpM9GFnMZ4X
         xOlXKVH5r176JA6UdWstvC9LA+7lxJ7yACt6dyZ7B0B8CvHiLEqEj5veGnTqKpDpPJvG
         MmyKkK5qte9LskPtNVsJdoVr2S6fVpgtP6yNFWcYMQmTP282TrmNOevy7uyOSDS8RHKK
         Nl5MSPhiwb9gk2DXuTIJ59ZOVK3YZq0llqikHjsymsXrQbJniJLchCT8DtaAAl8lZ/D7
         PIbMbVl8HGIf63T9BnlmNejwdJaWssdGaaryjxOdP9yHmlkkFRyLQWpaJdHVzpqafH3L
         D/VQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=zimCygk/GteosIyZqYA22VX02uWVm0axmp2+cSyxEk0=;
        b=0pw5APE1rFz6wKi9vO6x9FZZnDtGXsw5w5T9rcB3z3JrOJKKVNsFpWR5Fc9BEwUfwn
         t1HgVNOmUZo5keDR6wx9thXIla35XATgn6rUYrNWtOWW+mS6wwRrtl8qKkE5GkvaYHuE
         hcydo9yEgv+TMB9roPBTuZrELuMfy4yxnYmsK9AbQ2F6p+HY4TL9Oz6kUUd6ClQJrWI7
         Wynaf61OrJDz1cur5xDJ0PYKqvGTSlTDo0U0+PA65R/fchczvKNP3wVHx3xeiueY37EH
         WHrRd1mVSbdnkYsB4rI3+/39zQW1bZ2S33MgWlZZxZ7UGl9khscj+eL0xPQ741pha8g1
         V07A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@arista.com header.s=googlenew header.b=UmUB6tg2;
       spf=pass (google.com: domain of dima@arista.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=dima@arista.com;
       dmarc=pass (p=QUARANTINE sp=REJECT dis=NONE) header.from=arista.com
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com. [2a00:1450:4864:20::444])
        by gmr-mx.google.com with ESMTPS id e4si761277ljn.1.2020.04.18.13.19.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 18 Apr 2020 13:19:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of dima@arista.com designates 2a00:1450:4864:20::444 as permitted sender) client-ip=2a00:1450:4864:20::444;
Received: by mail-wr1-x444.google.com with SMTP id u13so7186642wrp.3
        for <clang-built-linux@googlegroups.com>; Sat, 18 Apr 2020 13:19:59 -0700 (PDT)
X-Received: by 2002:a5d:6a04:: with SMTP id m4mr11199116wru.326.1587241198993;
        Sat, 18 Apr 2020 13:19:58 -0700 (PDT)
Received: from localhost.localdomain ([2a02:8084:e84:2480:228:f8ff:fe6f:83a8])
        by smtp.gmail.com with ESMTPSA id m1sm31735255wro.64.2020.04.18.13.19.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Apr 2020 13:19:58 -0700 (PDT)
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
Subject: [PATCHv3 06/50] arm: Add loglvl to dump_backtrace()
Date: Sat, 18 Apr 2020 21:19:00 +0100
Message-Id: <20200418201944.482088-7-dima@arista.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200418201944.482088-1-dima@arista.com>
References: <20200418201944.482088-1-dima@arista.com>
MIME-Version: 1.0
X-Original-Sender: dima@arista.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@arista.com header.s=googlenew header.b=UmUB6tg2;       spf=pass
 (google.com: domain of dima@arista.com designates 2a00:1450:4864:20::444 as
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
2.26.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200418201944.482088-7-dima%40arista.com.
