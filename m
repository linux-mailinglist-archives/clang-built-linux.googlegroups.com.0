Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBFMTWLUQKGQEDPFKXQA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3a.google.com (mail-vs1-xe3a.google.com [IPv6:2607:f8b0:4864:20::e3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B4B368F02
	for <lists+clang-built-linux@lfdr.de>; Mon, 15 Jul 2019 16:11:34 +0200 (CEST)
Received: by mail-vs1-xe3a.google.com with SMTP id o124sf3247748vsc.23
        for <lists+clang-built-linux@lfdr.de>; Mon, 15 Jul 2019 07:11:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563199893; cv=pass;
        d=google.com; s=arc-20160816;
        b=kxnrlLNusXLJMWx1QEtBqpNwyxjp+Rb1uN5lItShE/BL1tYTeK6truIxDW+7zGAu2Q
         zPw0enCRsOrBlSk3X0G7n+Hp5eBo0/l9jjax69wUkBPjSN8Wzp5HN9yQFJ8hwlQUKpWf
         vjmEuPY3kQlOLgEQILDVaCaFV6ARG35hmYqKrTaZYbsfpi06kvx1BEyT4NhI3Oo9zMhA
         QVPmBh56TOT3Et9tXDVpuOn+VVeMd6LjBZbuBHbHHHXdGocDpYmU3vlr2LPi0NZQLIbi
         Efxja9VGBPmqhvDm1N6+dl2KUvKgGorSxRQr+R4SGJF27uKhjDHFqKGb5VhbsJYbVyKg
         +Hww==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=N/PzzroGWptBeKNztdME8VT9nN9zY5VDEBGsSXaAl2w=;
        b=WHifm8RJKfkeK2R9OqDwKlRPJhm9+dN97Ml0bRAJl6lK6mQK0jWXeG4XlrjnlztNR2
         R8Xx88yufr+gUD7BtM9iPkMUPaj+DkV1PDyXPwwGhAxW0BAbuRO/P2I/qiWo2vQiH3GY
         fkyBxt9n5RVROVAPq9u/W62O/sb+Q9A3PqEdv0u+DmrJXRbNJmD+J8T+bwnochgbdUgp
         aU0rgLdLgBwGfx+0IZ171bC2UNiwQPkedScFjpNIFsc48ekKZkaMejYAR8WeGJ/dlBEW
         fT20whbjVO9xIrvvyWiGZIEzzns+1atENogPaX1FpXs6NB1vlLkpKXPe4u1CKDcsXTOf
         ljsg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=e8+Si4mu;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=N/PzzroGWptBeKNztdME8VT9nN9zY5VDEBGsSXaAl2w=;
        b=T84Iwd04bcOm3itAAgWyG7JyBUcKCUDA1rRfTd2zqG3LRno1Mg5ClXsZoIn6BCH1sK
         /qnWocoeAXVEtABhAIWpmjMLrvkbMHX8Eku9seL1Y9PZbd/7MHF4wVgUancE6WGhmJs1
         3kly8z/Tgw/EbajVRpvoOQjlM4gIqhnyU68j9bHdyQBAO1UPZzkZNGB7dYxXnxTTAAyI
         T0N9vXuzP/K9NBTYa8/Hahgr7o695XRKNeHimOh+aKEyyth5fnvR0dN/GoQQZuXQmNMH
         3R6LIxkKsipn8qOuHk+GxNSABwf56DCA37vJNcdJHPdsAPgIdt+kk1LeTyB4b/a3ZeoH
         A63g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=N/PzzroGWptBeKNztdME8VT9nN9zY5VDEBGsSXaAl2w=;
        b=NYccfgFaQVo3eO6f4kAXGETC9jdhxE6ucU1oDfpO9GR22qkQEjGXY0n1HgVuncmxIQ
         cZPq8MQ84B7ksUf0hP2gpBTYia4yHBCIt+0o2d9y9OKxplvB049Qlhwqb6ifxIG23uSL
         9jk0QJcahkIQCS9IUyy42iLb6FyXu3QPpg6zlG64JmNRauG0h6OtAq6gwIKBH/oLRXSF
         dfhlgz5jQOYxB9+IcEixreVJprmCFKUjlSMZLCv/+L1cGpoqm+6CghulTnF4rAXMtpNZ
         9+Fx7/ume7tcJCPpu9UCtPN/w162PzsSqNGtYrqA3kcQ+klqYoQM55XcmlVsn8k0dG8K
         S8Tw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVena6i3hjOGgeOzeKZEoZDszO0gQ+iy24zZElBKhXgd5ozqfVu
	ppaZXGxBhN2pAzF3tMfZT0I=
X-Google-Smtp-Source: APXvYqxSY929vG1MOfSnCcfUGqSelh0sujl/tENCiIh62z13YA+uoLgm86LwwT66fq+NVQBOaJlJnw==
X-Received: by 2002:ab0:18a6:: with SMTP id t38mr15962170uag.83.1563199893732;
        Mon, 15 Jul 2019 07:11:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:4a82:: with SMTP id x124ls556932vka.7.gmail; Mon, 15 Jul
 2019 07:11:33 -0700 (PDT)
X-Received: by 2002:a1f:8641:: with SMTP id i62mr10045624vkd.79.1563199893448;
        Mon, 15 Jul 2019 07:11:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563199893; cv=none;
        d=google.com; s=arc-20160816;
        b=V8dddXK4yG0qRr6CgHLJmCq3LIOdZi/mlez5pXHEy1NUYZuz9sajkUWzas2yd63sUL
         sG5cheJ4gOQC0bIA5LuY7IkKhgvLTtqkMbo+GClaHdHxN6/Awuy+dKMlO4GxXYvYmHFa
         5CBJjmdlMYD+hQLrVCrJ2H90R9YN+WXlqK/WEAjjYhl+lZCWWNsneySP2rALq0e6DTqj
         rWb3uAKbymbmRCTvZJPhU658x20+PgyxKqVd9Dgio0m0mRGWfGevr8ep7n2QOi7kbWxL
         xG3Frn+Rd57wAPlDieMZk3+CaPhP8JmIoUaDDs5wbdngDc/d/W2G00j9OebRUZHaaaXz
         Gs0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=hN2OFIwN3GFtWiDcM74m+DXMTYTmdRW1WybjS93Qr5o=;
        b=ONL5I1d1DkYnJw/fRwNX6xhDr4/QxtbGcagUFx822XHErCR6IxqIOCOjJgm7YaQRys
         I9U5laKcp+Qt9GHu86nYnHCA02fSHcxOP130+tg+RzIWMXmJZaJv1nbiR8Apr1h4xUbN
         xBHi7OlyBqLPK7T+/MhLep9yFCsWBd+1ZlvfKsQFeLwqDlUFMUxsE6W6wvAvZ/ppcS9R
         NeZVDPydxkWrRnM4lkkQl8QMTgUHnIhCH8c3GxkALvXS5g4nTzJoyH9VsX+6cV48IKE2
         VHP99zi9q2LTpkA8RD9RQ54kc9yLJw1c0ALwdu0p59xqJjbhNEtRHhVjKHw3GaH8t/6p
         LT0A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=e8+Si4mu;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id b5si762240vsd.2.2019.07.15.07.11.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 Jul 2019 07:11:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (unknown [73.61.17.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id B63E020651;
	Mon, 15 Jul 2019 14:11:22 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 5.1 129/219] timer_list: Guard procfs specific code
Date: Mon, 15 Jul 2019 10:02:10 -0400
Message-Id: <20190715140341.6443-129-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190715140341.6443-1-sashal@kernel.org>
References: <20190715140341.6443-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=e8+Si4mu;       spf=pass
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
index 98ba50dcb1b2..acb326f5f50a 100644
--- a/kernel/time/timer_list.c
+++ b/kernel/time/timer_list.c
@@ -282,23 +282,6 @@ static inline void timer_list_header(struct seq_file *m, u64 now)
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
@@ -317,6 +300,24 @@ void sysrq_timer_list_show(void)
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
@@ -376,3 +377,4 @@ static int __init init_timer_list_procfs(void)
 	return 0;
 }
 __initcall(init_timer_list_procfs);
+#endif
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190715140341.6443-129-sashal%40kernel.org.
