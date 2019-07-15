Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBAE5WLUQKGQEAA6E6PI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B731691D4
	for <lists+clang-built-linux@lfdr.de>; Mon, 15 Jul 2019 16:32:34 +0200 (CEST)
Received: by mail-pf1-x438.google.com with SMTP id u21sf10337371pfn.15
        for <lists+clang-built-linux@lfdr.de>; Mon, 15 Jul 2019 07:32:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563201152; cv=pass;
        d=google.com; s=arc-20160816;
        b=duwIxAWXMHRmdELKcCjyTrAhAYmu9AwGFoLw5u1QqKVB9EPamyOlRsSBOK9OktAuT0
         4Ew7kPMbfsBhgb8TBdScCVI3XZLvYVmMsn1gufJ+/OgL+Uw06bLsPbaLIyUWQuw6pXVL
         tpdzMzFvPVSV9qX+xT4Nwvh9UWsMgicARbYmFtA6MEXLel3b41FsQ+FD0QtNbCK9L1Nm
         bAgqiUGER9SoVj8AcilMBLKohHOGo18mB+RoWEpYfDtC2+4YV279OTgKxZf4kNXbx8q4
         RC8cYtL96T8CroDu6wu39dSA8tWbWiaqjEM35zsViKMd0YfYus287k7rejEhyvSArEJt
         bE5w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=Wtqui5XFyXoS+8YQCCxQ9c2wVkHjB7lIZwoySx6R4SI=;
        b=mqm3jl7LuMiKuxCjq8p9vSGnTGpU758cM+h7qnJPDaHi7Tgb1TpX6sLGWOQmM4WT8w
         VQ3iZtTkG77mpUiMgkJ0hRSncOFtEGD5BOQ/RSiAAX+pBmQXojFYy9LXqRNy9xRuWBH7
         9j7qbsTETrFxaDp5Aa5SKbDXJ3XqTkF68F0ez9UVgFiXMD/r7iwn9Qp6uFxFr9fXMqs/
         yIv6o9j7rEDF2qRDboCA6RewKs+TSyy6i0zBOQ3iKSnxW+a7EQdtqmwCXumz0g8AbbcN
         bNo0zTSMmX85ggywAdlSFHDJm1TorCp2TFEbippu3Vv0MrZvdSwJ9nA/itozV29TwhuY
         Qtcw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=SmdA3jp0;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Wtqui5XFyXoS+8YQCCxQ9c2wVkHjB7lIZwoySx6R4SI=;
        b=Wsq2I7H619thHBAyNkhR9qHqUWmjIK/y5M/bhOYtVpiPnCo8ROmEKjcO0YNcyFjqOV
         P/6iwVOJURqs7ft+/T2RGE/5MsGRJgL3/uM0IIKYkuPe1g/vRQOWepIy+m1v2TbFFYgh
         fzmRa+6krFOQMFpRyYudPY+mcFfQ7vPRlsrVmXreCZKJFwusLc6jjLwHQoa7Q8jb2i7X
         zwHSZtlT/PVD3Nw46a1hBtZjHF1FsnXo9RGLSZBZV5mBQq/3DZtOt0A+xawj0YyjxTQN
         W6KaIUw3DqGhiNjBdAvJGtMIew1F+vJkkzU00pp78mSsgADbleGDE9leB3WdnBnFRA7c
         7oYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Wtqui5XFyXoS+8YQCCxQ9c2wVkHjB7lIZwoySx6R4SI=;
        b=GEtVxRCdSRovFfDTbLK6W6BGoh8c/T0FjHh/tKj3S+Z+HEQYA6YSRBTtpT6KjIwnbi
         OUhfSZsM0jaq+R+su57nbSaWVtgcY9yjzs8H/GCZ4Bd19y/WrycyKqcQnAyI1mHQdpRK
         WQAUxUdArp50G4S8BH8fR2MTKKMFeQc9MgYN6WqvSWS3XMrDOBogtCPk+g0aQmx82Tjt
         N9S+NFGdrUYoNDwFRaa0wQIxxOJfE9PS6qnYFnfc64jX3m4yGud23IHQ7y2ZwHmq/VNh
         4IXGMtpAHDHNlwfJvggbdGCmrDPuMIrr+FKq9kXcw61i3DR/QrMUx2dvb4UZDcGc7GRx
         ZNaQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAW04PvrtQzeMK1iaa0CpwWgXTGz4TuLyNavEKG61z/mWSSQ2yqb
	6Vk4CjRwwhqCZYTlVJEdrWg=
X-Google-Smtp-Source: APXvYqw47PvWZY1JniNsg/cYjC2TKXkqjUYDXV/MlrxWQWlebaZIl8rT0nAC6hIzjePRwBmvYyTY0g==
X-Received: by 2002:a63:3112:: with SMTP id x18mr27269487pgx.385.1563201152745;
        Mon, 15 Jul 2019 07:32:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:cc0e:: with SMTP id x14ls2894973pgf.6.gmail; Mon, 15 Jul
 2019 07:32:32 -0700 (PDT)
X-Received: by 2002:a63:3046:: with SMTP id w67mr27908436pgw.37.1563201152352;
        Mon, 15 Jul 2019 07:32:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563201152; cv=none;
        d=google.com; s=arc-20160816;
        b=ie4qseAaWDXk7jHYQktq+wUJ8B1u2sl8QSMHVTRTk9dDUkEL9vv6bLwgjlEfbEbWhq
         7a8BuQznhET7ogoNW3Dqlpy4kY2ttwFgeP3qfW9paVccYno0Hu1rb4PkJes6KSupAbAb
         0NbruPeienQ30E6sZK+Iio2L/tNiGQHH7TActeBsow/HJbn8o8DmQr4oS0R/Zhc37K6T
         6DJeqw6m3PH3OsxADCHKQOezudnGCkzQSHYWpOlFtbNSleUNSVe97e0iYLVGZ6ICjmJs
         stWqEs8+UgvPotJBaZdOwwdKy7Fog3W0fTTyejGkzCvvKy0RjgzEYk7gn8RrU1FRr6JG
         4lOA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=T1+A/IH0ZiMuudu39f1FRLoIofEdXZN5bo5Mfy2IQMk=;
        b=J+CiJHquOftc6/pQ4wEobRVfLq7N4YDto8hn3EaPpMGUFNxma8TT/fsA90TdsCoskJ
         UYVaHQ+af7aMjyHAiuY+5WlBoeJqrGv4xzcEloo2VdYUPLfOBWerFD8YiTBCKXu5sGi/
         WChYvOr0IiIF0VFC9JuML7OuvXXpJ9eS1hAp/jGbCHofbgpy+YK1pIEK5vPYh0hINUuC
         /da2g2JDx0Otk97MctZNync6hWTQ5Le/G2Rk31Mu/RDqwUHXgiTiOK0q2Q7Eh3Gu3qzv
         Bl2Eqb9XiQT8JJHZyf1D9JbnAo/8KEV1B2cJqDY89kLdM4aSNo0s3SxTlMhf4V5BfzyI
         11rQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=SmdA3jp0;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id m93si913649pje.2.2019.07.15.07.32.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 Jul 2019 07:32:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (unknown [73.61.17.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 6456621530;
	Mon, 15 Jul 2019 14:32:29 +0000 (UTC)
From: Sasha Levin <sashal@kernel.org>
To: linux-kernel@vger.kernel.org,
	stable@vger.kernel.org
Cc: Nathan Huckleberry <nhuck@google.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Nick Desaulniers <ndesaulniers@google.com>,
	john.stultz@linaro.org,
	sboyd@kernel.org,
	clang-built-linux@googlegroups.com,
	Sasha Levin <sashal@kernel.org>
Subject: [PATCH AUTOSEL 4.14 064/105] timer_list: Guard procfs specific code
Date: Mon, 15 Jul 2019 10:27:58 -0400
Message-Id: <20190715142839.9896-64-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190715142839.9896-1-sashal@kernel.org>
References: <20190715142839.9896-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=SmdA3jp0;       spf=pass
 (google.com: domain of sashal@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=sashal@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

From: Nathan Huckleberry <nhuck@google.com>

[ Upstream commit a9314773a91a1d3b36270085246a6715a326ff00 ]

With CONFIG_PROC_FS=n the following warning is emitted:

kernel/time/timer_list.c:361:36: warning: unused variable
'timer_list_sops' [-Wunused-const-variable]
   static const struct seq_operations timer_list_sops = {

Add #ifdef guard around procfs specific code.

Signed-off-by: Nathan Huckleberry <nhuck@google.com>
Signed-off-by: Thomas Gleixner <tglx@linutronix.de>
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
Cc: john.stultz@linaro.org
Cc: sboyd@kernel.org
Cc: clang-built-linux@googlegroups.com
Link: https://github.com/ClangBuiltLinux/linux/issues/534
Link: https://lkml.kernel.org/r/20190614181604.112297-1-nhuck@google.com
Signed-off-by: Sasha Levin <sashal@kernel.org>
---
 kernel/time/timer_list.c | 36 +++++++++++++++++++-----------------
 1 file changed, 19 insertions(+), 17 deletions(-)

diff --git a/kernel/time/timer_list.c b/kernel/time/timer_list.c
index 0ed768b56c60..7e9f149d34ea 100644
--- a/kernel/time/timer_list.c
+++ b/kernel/time/timer_list.c
@@ -289,23 +289,6 @@ static inline void timer_list_header(struct seq_file *m, u64 now)
 	SEQ_printf(m, "\n");
 }
 
-static int timer_list_show(struct seq_file *m, void *v)
-{
-	struct timer_list_iter *iter = v;
-
-	if (iter->cpu == -1 && !iter->second_pass)
-		timer_list_header(m, iter->now);
-	else if (!iter->second_pass)
-		print_cpu(m, iter->cpu, iter->now);
-#ifdef CONFIG_GENERIC_CLOCKEVENTS
-	else if (iter->cpu == -1 && iter->second_pass)
-		timer_list_show_tickdevices_header(m);
-	else
-		print_tickdevice(m, tick_get_device(iter->cpu), iter->cpu);
-#endif
-	return 0;
-}
-
 void sysrq_timer_list_show(void)
 {
 	u64 now = ktime_to_ns(ktime_get());
@@ -324,6 +307,24 @@ void sysrq_timer_list_show(void)
 	return;
 }
 
+#ifdef CONFIG_PROC_FS
+static int timer_list_show(struct seq_file *m, void *v)
+{
+	struct timer_list_iter *iter = v;
+
+	if (iter->cpu == -1 && !iter->second_pass)
+		timer_list_header(m, iter->now);
+	else if (!iter->second_pass)
+		print_cpu(m, iter->cpu, iter->now);
+#ifdef CONFIG_GENERIC_CLOCKEVENTS
+	else if (iter->cpu == -1 && iter->second_pass)
+		timer_list_show_tickdevices_header(m);
+	else
+		print_tickdevice(m, tick_get_device(iter->cpu), iter->cpu);
+#endif
+	return 0;
+}
+
 static void *move_iter(struct timer_list_iter *iter, loff_t offset)
 {
 	for (; offset; offset--) {
@@ -395,3 +396,4 @@ static int __init init_timer_list_procfs(void)
 	return 0;
 }
 __initcall(init_timer_list_procfs);
+#endif
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190715142839.9896-64-sashal%40kernel.org.
