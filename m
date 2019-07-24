Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBEPU4LUQKGQEA3KS6BA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53d.google.com (mail-pg1-x53d.google.com [IPv6:2607:f8b0:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id 56C7773BFB
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jul 2019 22:05:39 +0200 (CEST)
Received: by mail-pg1-x53d.google.com with SMTP id m17sf20082023pgh.21
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jul 2019 13:05:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563998737; cv=pass;
        d=google.com; s=arc-20160816;
        b=Xs0ka3mYvt3MKN74xFxM05UGBxmGiNRxeybgUe1xP4USKo4laQVDAjmRax+WpsObfy
         6c7GC6wvMPXWsY1hsQisKIfoSGMbgz4V/sTjyOKShwtvgM2pSoBIMx3pqLORBFiEo+Gm
         7EmPEQo5O3EfJBYmRX+RDml1XNsFMozAQweceKBs74mAFP8ILvunurxEAeti5ksj3Br2
         lhSZXWJNRQhg3W0+W8784EXt7/Xy/dz9M4vF263jKBmQxsen17SRZNKMjopgvvUU25Hw
         G0tPL3sVZVirqB0XiTwhaDoUuKFltsUiOFhqZFhHMysVOZXoDDl6zyI4TWjJ1lzDEdTj
         bg1A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=/ytP2rtyCec54Yok/lWPIttOqUXTl+6G3qYPunsCEwU=;
        b=rArth87oTm93le7aH8N7rQJhCneY974s82VVWf6EEp2kFkypKWdOGAYwGITdNoTfG0
         F/GlgyPzUrR7CT58W9Wm6V4fP/WwWyoXePLQxhwnl/Hz3q7TN5AcAwR8qmrV0i2T/+Z2
         316cJtHdTiGFsiK0mbOl83cTqp2w+PWrDTV1ZJmDj3T7u5eH4seK+7MVge9AxMZbr0JY
         9ncIHD/MM7pf2IjD7s6RYm5GSIMakNOa9UIzah7ZK3r7iALg5gxCKQjcMMC6vI9MU8T/
         /QqTNCM8TUS+wv3aksnfV6sjvA1NSh2OuOUe3+zMSjs0LvfJPDgJPx9X6LdtSgCcsTT1
         NQzg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=bdrNpvK2;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/ytP2rtyCec54Yok/lWPIttOqUXTl+6G3qYPunsCEwU=;
        b=Q5oy6c2owgK8GX2/7g7jiP5r0ypk82PSEGIa51dyVBB02+xIN9EWvwlgYobkxTtW+Q
         +pRj6ODCVEGePC61jPNuYb0/cTVqgZUrF/PnSa72nyTMsUrLyQNELOI0yfcH4uGurj8s
         U5QbrQE0P57zXrjV/Yg3LYCj3KrtzOS8WiadIgdeN0FyN/6RIEplVdO20OKr2305AeqU
         61tAOu/ufCNZp6O9CBIf8ah6JpQCvgbtbmXIF8JMdthKAa5mwkTycO7ZMPRcr+xJL4WI
         i6QDJgUpGVIv0lIcy4Z9haSgYkTSxZhQZFevfS5aa9vBZULKN5AVMa6aia2hFx2NFd/Z
         KT3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/ytP2rtyCec54Yok/lWPIttOqUXTl+6G3qYPunsCEwU=;
        b=TdMZOolMIMsbGbPpRGtbhXCW6Hxz9ireJbe+Na1oIOwBtbeKJA5MH//7Ne3iElPjMZ
         DoM+kS59vHauZp3H1C1pgXagbsxbPscACqFQWCsL1KJZEPRUhDDPIgXoVW04Ok8IpIcj
         TM3uNNYQqH/7iemCXtSP3B76qsQGF1x9Q5H/wW3NHxvEduU/zIY/I2SxYVLYYG81702v
         BJc8dKjpDHngyPEEtbXkjv4SvvYSftU+I6H6aqtw7rrYYB6QMWcLQTV9hzUAoAHMLhkQ
         u8anWvDgbovMjhi6EtgtuU0d7R9lQJlsYCWjEDchNKLAraO0TVpQD4NnhAo1qrpTbZJH
         2dOw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUJ+DDiAz7CHjXEtoNVFA/60vhIdY0Nu3J22HKH2Rh17+WXrHgJ
	odhQDlz8oN5+Sk+ToJ6qagY=
X-Google-Smtp-Source: APXvYqz7h+jvRD9U/LHn1l/q+LaK2RCyC3hNA55UuC1zFCpXh7X/Ad2dvCe4JOlIHMmEyKJ35dtmRA==
X-Received: by 2002:a17:902:9f93:: with SMTP id g19mr86509108plq.223.1563998737752;
        Wed, 24 Jul 2019 13:05:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:614e:: with SMTP id o14ls8448252pgv.7.gmail; Wed, 24 Jul
 2019 13:05:37 -0700 (PDT)
X-Received: by 2002:a63:7a06:: with SMTP id v6mr83816235pgc.115.1563998737359;
        Wed, 24 Jul 2019 13:05:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563998737; cv=none;
        d=google.com; s=arc-20160816;
        b=gafuw4NFhhTeZv3Hz8s1699B+FrovaVUUzfWEmD6GCYBhbaK4tqO59o8EWrOgfANRD
         BV3jMuB+DKu12hQxnvD3/d2fOlXfQkQInLQT2+800zqHvxqnXwYXSnH4j2U9zTrPGdH1
         SnO4DQk51c3yTTVabSPN1xyBWFf3jtxATpQIEeI4SkHoaDzm8LKshUo3YBbqg5IAMq8l
         zY4Z7vXh0i8y0OFiGDTTT93YYtT67I4XcAhZ1XK0WmvO0/WUm09JNmi8PV0vR8z9Jmlf
         Rpwn8KpNFdH4/tAc2nFua8HnNxl0YNCsbyehpvlapvGjbnAwxOhyQbzaD1ovEufU1Pqt
         5LpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=khhMsObh3MwwV8Uyb3Oo+Vf3DfojZLpJ15mjv9H1Jgo=;
        b=DY2+jE8Kr4JjQqz3M/rN0NgfB2XxR7YlwWZvtpJGkLfva5OTVKffbF5D+HQNyDvo7v
         Vmu0VlSKRfibudpNchNZrsXu5zsE+eu4ZH6FCSTRnHCguISkkSeUwJ3v63zRsVtL4RJM
         LLmJF4/E4FWbaYpJlzPBi+90t1TH67ufWNLyMedpxxrAFl3ZtF4Fyzk+UTDuTakY1Qpr
         bSN19CwpATy1fSXrNUJTfXx8cd6NaWdB97MIyQZtpxxIGqtKCFQ3AnfgXHaOWpPQcaq0
         Uc0UPoS5evRWDBKpMySZql0TmTk2FGg/neSMUrvfF3gL0jLkYZpyuQGirx/guXQYFYtZ
         AXag==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=bdrNpvK2;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f125si2125861pgc.4.2019.07.24.13.05.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Jul 2019 13:05:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 999642147A;
	Wed, 24 Jul 2019 20:05:36 +0000 (UTC)
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: linux-kernel@vger.kernel.org
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	stable@vger.kernel.org,
	Nathan Huckleberry <nhuck@google.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Nick Desaulniers <ndesaulniers@google.com>,
	john.stultz@linaro.org,
	sboyd@kernel.org,
	clang-built-linux@googlegroups.com,
	Sasha Levin <sashal@kernel.org>
Subject: [PATCH 4.19 097/271] timer_list: Guard procfs specific code
Date: Wed, 24 Jul 2019 21:19:26 +0200
Message-Id: <20190724191703.548063525@linuxfoundation.org>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190724191655.268628197@linuxfoundation.org>
References: <20190724191655.268628197@linuxfoundation.org>
User-Agent: quilt/0.66
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=bdrNpvK2;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
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
index d647dabdac97..07afcfe2a61b 100644
--- a/kernel/time/timer_list.c
+++ b/kernel/time/timer_list.c
@@ -287,23 +287,6 @@ static inline void timer_list_header(struct seq_file *m, u64 now)
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
@@ -322,6 +305,24 @@ void sysrq_timer_list_show(void)
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
@@ -381,3 +382,4 @@ static int __init init_timer_list_procfs(void)
 	return 0;
 }
 __initcall(init_timer_list_procfs);
+#endif
-- 
2.20.1



-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190724191703.548063525%40linuxfoundation.org.
