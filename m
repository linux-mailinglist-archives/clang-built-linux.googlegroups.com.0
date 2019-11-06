Return-Path: <clang-built-linux+bncBDTKPJW47IKRBQPRRDXAKGQE4GHPTDY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33b.google.com (mail-ot1-x33b.google.com [IPv6:2607:f8b0:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id F0BE3F0C65
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 Nov 2019 04:06:42 +0100 (CET)
Received: by mail-ot1-x33b.google.com with SMTP id q6sf12677318otg.23
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 Nov 2019 19:06:42 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573009602; cv=pass;
        d=google.com; s=arc-20160816;
        b=ELODkj3vE3sVC2kGM1MKTIg1Fcv1hFLAZ/Z94Q+t97WtTsBJ8MQ+w45BZMqwAHlWq2
         QjbIW5iI3g2ixFTAaooqA0nKDerCF06HU5FNJrGkDuvoCUXqdtd1d6qcaNtke1F+pgGv
         zyAGn21yJ2qLQy7h89+3Kfv7n550ZTS7wUoynaaXci0IfE4JFcBW/N4FvS24lbAVCf0C
         xgx/cPLmsEfPNHWkZT8TZkrbvP2wuW6I5zSL22NTBcCy6uMgzMfw2OpxY+4rsI5amcJc
         AA2b1+gCNk75a+txARgA3wM6iJOPQ5U2jeRX2L8AJ+TcbBmwza55xjEuKKX74V1Yf1FI
         jvjw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=sFwwfa3bJ4pTx5oV26VvfLs7GADKF4IqpjWQoJvx68U=;
        b=PEn0kUORcPALoQS+TWEUquWz7OTmcX2/qfpAaLnGhynX7VueUg79boYCKZbpp4QS6E
         o04tshrI0hcfqO25k/aohDvFaJvnpTfIW4wSgxMFgfd1i140KZ+kMz+v24RQn+ZiOrs0
         IOX52/LqQ4Fi2zp3XhZpOLoXErnd+Friihs9GIjodDEiZd0ixG17X5bo7VyBbRkq7h2O
         XzhYhJkA3xd3ILGXZd6M1Iwrlp9opt1s3LwZi98w9QyIhFL29lUjI9qapSfUwZ3g7CjZ
         sbvbSm7kclAQZ8ehdV3WII3KqvBKIJ85Bme4glnBOWvIl1v+ThfMo9UodoIR/e3lNH8q
         YyKw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@arista.com header.s=googlenew header.b=RN13XpUn;
       spf=pass (google.com: domain of dima@arista.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=dima@arista.com;
       dmarc=pass (p=QUARANTINE sp=REJECT dis=NONE) header.from=arista.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=sFwwfa3bJ4pTx5oV26VvfLs7GADKF4IqpjWQoJvx68U=;
        b=nXN8uLFJ0HnOuFRE7+rX7j2zG/TXry/oMv/+Fiw9JnKB/J3zc14nYVA3Au1BL9SZwH
         QAriikw0R/k+6LAhPFVkQy3/WUVqmfHOWoP39bjxo3nNqzG/EMx3cWMH339oNkfOzT/b
         pamoeNt7e7zi9qjVTfqmEB306xY5LuRMXtRvUA4c1F8rf5FVt1qsVCPa37MM9LIQgtBP
         MIX04O+Qe7tRYI5fA3djz8x1ar9Tx5h+Xfmmgh+PYs0svGCQxnZhuHHqEgofwTdJkss5
         b4+BVHnvZOmq9nqZkDIYdsoy1I4aoluh+U19gzzzVGM+fFhktIzDhV8KqSkvarRztWBw
         BM8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=sFwwfa3bJ4pTx5oV26VvfLs7GADKF4IqpjWQoJvx68U=;
        b=o/7GUTQJehOXMWJPDRtThEzrmIHonMyHpfnBJbInVB91tfwooiDcb5IB8J9SDbpkaK
         XohHoAgRviYt6dlAYuqNG0McAJtwbA/rUlVHwt7850lzmccYYRoNr5gAMEUHI+bhovv6
         ZY8/iNA7GMo2503irEdsB5i0N4m0YQt3xZwdQGoGRh7EqyTD6MXBKZLGY5aB5B2kjhK4
         IW4q6id0Un4Sl9GY8SQ0d5eI4axbJ+ylo1/O+l5w1SPSN1wUVv6vbR0Rb/PiG6el0PcJ
         s2+5DKmKTAVvGau0CJq6EhF0blQvX4PMe3pNNYNZWVqxfRevdydKQvMKpF0utjhG1BUd
         /vvA==
X-Gm-Message-State: APjAAAVe6Yb8Fi+Y+WDV9JuMEB6OH4aCKYFqP+P5Dh0+DChS5Qmnzb6T
	ION2uojy1al/hMjKYjyOR9E=
X-Google-Smtp-Source: APXvYqzw/9o4s4NRW4AGkIOYW6Q+neHd58euQEvBbk6kH73Bzf32EI6IQDnpQEqmND26fa4r/a21Wg==
X-Received: by 2002:a9d:66e:: with SMTP id 101mr106024otn.51.1573009601868;
        Tue, 05 Nov 2019 19:06:41 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:adc5:: with SMTP id w188ls429458oie.11.gmail; Tue, 05
 Nov 2019 19:06:41 -0800 (PST)
X-Received: by 2002:aca:d78a:: with SMTP id o132mr251649oig.79.1573009601578;
        Tue, 05 Nov 2019 19:06:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573009601; cv=none;
        d=google.com; s=arc-20160816;
        b=jNMZzu5JnxW181fNkvOzLMhtKCTAscmMEgv4Ja2tRjs1IKm5Pj64VzaHEnrvA9yVQv
         KlhtoP49e5a2J9ebQ1PwK3pBFJth6bLS/lwDS/2vla1kAD79XVryGaoOqitYLY26unrr
         /bDnzwiOdZ0fhWZnmGUVvq5TRgRZAEcwqGrfbPWGU44Qp+pmTZh3fOLqzkVYqtiSFLrb
         6//fUUb0dH+wtmtXet/JIkeZnl8bVMaiLQpeGw02T/+kGI1vE/ad9bp83jCXKB2Lcnve
         frTS1WsoJ8fNv+t3Xs8ASZV+FGNnc53RhBRf3bfaUQCTHcC9e/dOaipb6zQQIj0/0/hX
         lJLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=qXN4VoYXZLjoYLR8zStHwRbThHFXnU8fItsQR3wjSkM=;
        b=WTONS4PAAttSsDyU5GGC3I59jfrbcqpBqKyLbt41jDxqUSUD+ebxH6K/TVRgnufNvJ
         /shA2qkCs3xsrKuzw3Tsbn6uw/cd6zO6NrpesCbNitTpUEgEaAEVYFzUIil3iwR0NANP
         2j/veWn6PvHaIRSba0xol0cHrfNa3jLIUgKtXE/NOv0tPz5V84vybyWVB+vLiMhuP6Ie
         tQbN8FnQ5ethyQ/KlfPllni/6lx1CTMMyfKTLoWXDshfr17JOzHsRTkROd8jdt9/pFtv
         nQLjHYTOTJ3e2YA7xJRWWtepRRNYRct4u3AYgl8d8bkJLtPJNDHdMSVzy8Pxrslh9QN5
         wzMg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@arista.com header.s=googlenew header.b=RN13XpUn;
       spf=pass (google.com: domain of dima@arista.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=dima@arista.com;
       dmarc=pass (p=QUARANTINE sp=REJECT dis=NONE) header.from=arista.com
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id i15si243446otk.5.2019.11.05.19.06.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Nov 2019 19:06:41 -0800 (PST)
Received-SPF: pass (google.com: domain of dima@arista.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Received: by mail-pg1-x541.google.com with SMTP id 29so4801908pgm.6
        for <clang-built-linux@googlegroups.com>; Tue, 05 Nov 2019 19:06:41 -0800 (PST)
X-Received: by 2002:a63:5951:: with SMTP id j17mr204680pgm.294.1573009600708;
        Tue, 05 Nov 2019 19:06:40 -0800 (PST)
Received: from Mindolluin.ire.aristanetworks.com ([217.173.96.166])
        by smtp.gmail.com with ESMTPSA id k24sm19570487pgl.6.2019.11.05.19.06.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Nov 2019 19:06:39 -0800 (PST)
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
Subject: [PATCH 08/50] arm: Add show_stack_loglvl()
Date: Wed,  6 Nov 2019 03:04:59 +0000
Message-Id: <20191106030542.868541-9-dima@arista.com>
X-Mailer: git-send-email 2.23.0
In-Reply-To: <20191106030542.868541-1-dima@arista.com>
References: <20191106030542.868541-1-dima@arista.com>
MIME-Version: 1.0
X-Original-Sender: dima@arista.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@arista.com header.s=googlenew header.b=RN13XpUn;       spf=pass
 (google.com: domain of dima@arista.com designates 2607:f8b0:4864:20::541 as
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

Introduce show_stack_loglvl(), that eventually will substitute
show_stack().

Cc: Russell King <linux@armlinux.org.uk>
Cc: Will Deacon <will@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org
Cc: clang-built-linux@googlegroups.com
[1]: https://lore.kernel.org/lkml/20190528002412.1625-1-dima@arista.com/T/#u
Signed-off-by: Dmitry Safonov <dima@arista.com>
---
 arch/arm/kernel/traps.c | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/arch/arm/kernel/traps.c b/arch/arm/kernel/traps.c
index 16022b75a72f..f999a0e4bab8 100644
--- a/arch/arm/kernel/traps.c
+++ b/arch/arm/kernel/traps.c
@@ -246,12 +246,18 @@ static void dump_backtrace(struct pt_regs *regs, struct task_struct *tsk,
 }
 #endif
 
-void show_stack(struct task_struct *tsk, unsigned long *sp)
+void show_stack_loglvl(struct task_struct *tsk, unsigned long *sp,
+		       const char *loglvl)
 {
-	dump_backtrace(NULL, tsk, KERN_DEFAULT);
+	dump_backtrace(NULL, tsk, loglvl);
 	barrier();
 }
 
+void show_stack(struct task_struct *tsk, unsigned long *sp)
+{
+	show_stack_loglvl(tsk, sp, KERN_DEFAULT);
+}
+
 #ifdef CONFIG_PREEMPT
 #define S_PREEMPT " PREEMPT"
 #else
-- 
2.23.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191106030542.868541-9-dima%40arista.com.
