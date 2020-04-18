Return-Path: <clang-built-linux+bncBDTKPJW47IKRB4WB5X2AKGQEWD75JFQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x63a.google.com (mail-ej1-x63a.google.com [IPv6:2a00:1450:4864:20::63a])
	by mail.lfdr.de (Postfix) with ESMTPS id CD5811AF498
	for <lists+clang-built-linux@lfdr.de>; Sat, 18 Apr 2020 22:20:02 +0200 (CEST)
Received: by mail-ej1-x63a.google.com with SMTP id q24sf3162282ejb.3
        for <lists+clang-built-linux@lfdr.de>; Sat, 18 Apr 2020 13:20:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587241202; cv=pass;
        d=google.com; s=arc-20160816;
        b=QL3EaYg2klLK+RU2mhlBa9hKksCQ8I2Dzgh0FS2nNbDETz3N2JIdNpJXD5sVOnMngN
         A00X44FEsU5meGQqaxfVtYTt/pbM2rqjipCUP3hFKJ8oj3OMkdFa01F8dNpHKOwaEBmp
         Xv8pdUj+yFWha5KyDV7TvT9s/qwm5aQ1oIIMYV4ek4up8Z+Tf0x+ZvnC+fvQIAuog3Cs
         AFfj5XkhuFbyUVXgLiiQWwW9FN0hc9LovjRfzj3+68tpNzYxXlQmPiKCl5fQWVfp6S2Y
         XMQCR4jsTlLgC0JKua259fXlVhe8znW3dIAdjWT5bRRipVz1QX5X28qGFX6yIYa436eN
         tCcg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=3XCNDRwsAYVMNiSNroMV2zrcex2grd0LCZnMr9gbHzo=;
        b=k06GruhXKykuklpss4EEAo5Utkt6pQbIU7jOfuBl15914cMEBXu/NzYccpQA3DhRng
         8rIX4Z8x+N64OzBE5gc/aRK0es8FnLt+ZO5Jb1J9SEuHT0YK4pi8fYON1ZUrMAaHrB32
         ccuXDsoKRnD/08KULN4X47Rx74GF+vDqzBWOdf8FCr9En8FDdjg9Vbqsq1EDkdvdPeAN
         1PAX9eNYGD/1LBlYVCTMxpk+p8IHPHp4GY5Wuij3fpWn4HlIUg/DxhMwYu1II2M+psH3
         mJeM6DtF5sj7w8ely7Z8qhNtyHyXv/Q1kRrxVcsSttPo3W/MQor8jCiHpwUyyj/ovHML
         qeiw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@arista.com header.s=googlenew header.b="Nn/+89+n";
       spf=pass (google.com: domain of dima@arista.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=dima@arista.com;
       dmarc=pass (p=QUARANTINE sp=REJECT dis=NONE) header.from=arista.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :reply-to:precedence:mailing-list:list-id:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=3XCNDRwsAYVMNiSNroMV2zrcex2grd0LCZnMr9gbHzo=;
        b=lo4jzlLLuLZbfiaccH1fMYvmIfZPd2LULV2xQtsXX3kCAow9bQvEkUBGvJZFtlC1DX
         mwTAOveuk3jyXnh5tNHKiUdW6a5EZ1gFTr8RAwskATeN+mO175/Ucwyh0QNSWe93ngLv
         japMJVBmq7GH/bcL+1HWr6oV6iqzjdFom07ulTnhYQ2g55TPIPlQBzwMgtQ2hItmLCAe
         3m6BOZuQJ1TvjewAWh+6CcFxdSEygX5YHmtVdH04CA0KEkNQKbVnkz+TO99hrqy0QGan
         s41/Eb4OvifvO2AShuMJy/FSS7WzWVcVnMimg8yvYXrsuU4bLDG/QkfFoMMDMd6MT+l1
         MV0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3XCNDRwsAYVMNiSNroMV2zrcex2grd0LCZnMr9gbHzo=;
        b=iA1gGeD3Q0OHmhXqTxQvJGcB2O4MXjoJ3eqnZWEQTHboUaD++t13JeSJTTSH2q43tC
         EwYCmcUgNT2hhg+2/0EVhuB1KcO1WGoRsnnoq3xM3N1ghT5EFUVNkjgghPwEKYAnMO87
         aBJgYCWXQZcyietM28GFRmNdcXl0KGBZ4Iorc5rpsUhos+QO2yUt3BGebbbxm+6JXDr1
         Zh+DfIHZBbcIufZxa6PUcigzwHp1tZaT+m8vE3pzAVr/iFR3Kt1fzJdc3NIf8YAedHei
         JXGBGRWD6r7jQRdOtmVALq/91nmZz/dtGZYii+0NQKY3XFaHJPZUEDRyNG0UTXm4Ykyj
         hySw==
X-Gm-Message-State: AGi0PuYMQ6RTVrf2sB46M9Xmhv1DxBY4S6VPvxt/ih7yPhbEgH9ikvuE
	IVLAysajXUlmYT41gthFYWE=
X-Google-Smtp-Source: APiQypJikczuAmoiNZ9fYRQWgR0X3G/4+hy7wxK+wmBhnsKYtrbuH7JsVBIiEJH2yvJjK5vOKVN0VA==
X-Received: by 2002:aa7:cd65:: with SMTP id ca5mr8537063edb.283.1587241202495;
        Sat, 18 Apr 2020 13:20:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:d411:: with SMTP id z17ls4812146edq.6.gmail; Sat, 18 Apr
 2020 13:20:02 -0700 (PDT)
X-Received: by 2002:a05:6402:c94:: with SMTP id cm20mr8586492edb.101.1587241202015;
        Sat, 18 Apr 2020 13:20:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587241202; cv=none;
        d=google.com; s=arc-20160816;
        b=my3U70rP4vEsF+7M/UjGJH8x8MwluY3OfJuc/wMX/510DhFyUC+KXiP5Su/ytynLV/
         3/6dFvHuh0gVEW/rvr8xvR5Zr+KLZQwf/gPm1uwXCZPxcDDqgvOiplbcp3gn1yr3vPIt
         1FaBButvn00BE4uOTZioSnmauHcEUSmDoKQOC/+Oqlxup8G5fC2zSCKOEk+pZ0xgntQ3
         2mbqy50L3gof6S5GEFguY8FeYuCl6QgY+un2TM8JddlP21xjU7LnCw0ynX8ligKJRTgK
         GBAvDfJvSqMdfFIARI3nrzIt314ylw+/B+cJrgbvvvVCLK2WtLVlf6W99C3b0pURQdi3
         cNCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Z+YS35j1pthADYOggJksZ21+AYvy9Q5Svl8xq7/1/0E=;
        b=UkkF8DFzGQ4XtU0TTETUOQYiTqLQZHfveOF0h33Rj5OzgRZ/J/kFdk9R72e1bABuCp
         0VHhetI23+qHziVmfsIflwggolcwro1qzrWedr1dHuLstwDxjs0jpYkGq8weWEuFnUXx
         Px4J0pb3kD/cnYRPNR4FRX/Czai94cw983BA34b0LhPZntQy4wEzuTVcGkzzfIBtlHBe
         LVm/x6BNCLYk+ffV+/+frBolaZNVb7WnPmiDAtNE9ALRUFzHH+98n51vac8Og6iy40py
         cYGWjx5/DfLc6Q3zxPAEvf0B8kl2Pj9y3CcmVaOgyUV605UePX4r/WiuN/QBPuGUFLfC
         12Jg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@arista.com header.s=googlenew header.b="Nn/+89+n";
       spf=pass (google.com: domain of dima@arista.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=dima@arista.com;
       dmarc=pass (p=QUARANTINE sp=REJECT dis=NONE) header.from=arista.com
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com. [2a00:1450:4864:20::441])
        by gmr-mx.google.com with ESMTPS id bt1si24151edb.0.2020.04.18.13.20.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 18 Apr 2020 13:20:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of dima@arista.com designates 2a00:1450:4864:20::441 as permitted sender) client-ip=2a00:1450:4864:20::441;
Received: by mail-wr1-x441.google.com with SMTP id k1so7185299wrx.4
        for <clang-built-linux@googlegroups.com>; Sat, 18 Apr 2020 13:20:02 -0700 (PDT)
X-Received: by 2002:adf:e98a:: with SMTP id h10mr10648536wrm.370.1587241201776;
        Sat, 18 Apr 2020 13:20:01 -0700 (PDT)
Received: from localhost.localdomain ([2a02:8084:e84:2480:228:f8ff:fe6f:83a8])
        by smtp.gmail.com with ESMTPSA id m1sm31735255wro.64.2020.04.18.13.20.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 18 Apr 2020 13:20:01 -0700 (PDT)
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
Subject: [PATCHv3 08/50] arm: Add show_stack_loglvl()
Date: Sat, 18 Apr 2020 21:19:02 +0100
Message-Id: <20200418201944.482088-9-dima@arista.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200418201944.482088-1-dima@arista.com>
References: <20200418201944.482088-1-dima@arista.com>
MIME-Version: 1.0
X-Original-Sender: dima@arista.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@arista.com header.s=googlenew header.b="Nn/+89+n";       spf=pass
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
index e1be6c85327c..00455b5bbf8a 100644
--- a/arch/arm/kernel/traps.c
+++ b/arch/arm/kernel/traps.c
@@ -247,12 +247,18 @@ static void dump_backtrace(struct pt_regs *regs, struct task_struct *tsk,
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
 #elif defined(CONFIG_PREEMPT_RT)
-- 
2.26.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200418201944.482088-9-dima%40arista.com.
