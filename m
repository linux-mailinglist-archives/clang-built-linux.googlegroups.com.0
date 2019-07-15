Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBLFAWLUQKGQECP5CS4Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33d.google.com (mail-ot1-x33d.google.com [IPv6:2607:f8b0:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id 3364A692D1
	for <lists+clang-built-linux@lfdr.de>; Mon, 15 Jul 2019 16:39:42 +0200 (CEST)
Received: by mail-ot1-x33d.google.com with SMTP id q22sf9968412otl.23
        for <lists+clang-built-linux@lfdr.de>; Mon, 15 Jul 2019 07:39:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563201581; cv=pass;
        d=google.com; s=arc-20160816;
        b=l4KUxMPzZxa57GUnJIHGr0lp+NYbR5Vlogw/dZ2368HUm/rVtJD3uIcv0NNpw/6azj
         o7no6yKmDO5MAbupmWTHi0a6s0s9Dqu46KvLNz7dUDoIaFlvrUhs6rn7ZTIHirR8+bGu
         lSJHYwONkfhwTVt5XDZroqTraGRGkTjD8T0DvdU4vCU1pEKr9c2RHYPXwkxBonLoK43a
         20wpKYBUspOdpU4VgIDtXPKxokuTMKakZznAJM8G5BsBW0ThGUtMWAk2jk2K4hpqo7zp
         F+8IcJgNSbETMqt2xZ8ilb9uaxxs6jhxgjCvz2Uc1TjYKDtxnlRBIvhsR7tNuo47rV3v
         NVww==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=NBkSAhFVysBFQQJl8ADFxrrlqgKlgJYePFjqiAWGmFw=;
        b=hxZf1KFn10qbJsdCvbfC+7ynFpbilrQCFigehxfSKIj44dMSn2bMB9ka2HcA6Jer5k
         beEjnKiW2wcHlzzVWh3SN2cWbxdpIoFNi42ZXvgQbUuzkhKoFhFHaSDgP26z0ikcnWx5
         F/xybvMo4W+UuGJLW2bE/sAcXERbNSC+XrqDxl4Aacb8K43csu3zn/00pJgc+UYlEIHU
         7vy+rojUw3ZhcAZAGrm2hbxxLCnPwI4If8zxqQXDo8Qd/0F9CRWLtgIjmsfX5pEw6AAI
         bXCRAJEAwrpPUjZhhuu6vCrmtkRgzV1wSHbz9fXoYmGegKDitr86qSD9Gb1OF4c+iecV
         wiLg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=sBYSutIC;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NBkSAhFVysBFQQJl8ADFxrrlqgKlgJYePFjqiAWGmFw=;
        b=KjoU25KTGMsdEsveVvdR7QbvSxJRfsE7l0rbdFbddva0rxmpKY7k9tPRSuapG7z5NO
         eQIAtwIJLtqepWPlqHoLJa2l43cbJSavEis+b2SsAMm5U+R8+AdFFSVWJs+ORhKBNV7c
         oygqlPLeMxqhZlm9wydjDicS9Bb0vXuX0sugXKsXv/eh8ItJKvYcUvDYrb35DdISHyPF
         lgD61E+lrPk4Qopl/L5S8cRGvJLYgLqypEHMi50m2WZuCxgGhHX+KyNema2fZiH1XRdC
         sByhy7It9nX1rxlTQUaRlV+D5H0Xl2naIBhrdnXPGxBixvDlHVin0Y1Y37/e2LdYdQq/
         BhvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NBkSAhFVysBFQQJl8ADFxrrlqgKlgJYePFjqiAWGmFw=;
        b=YzvjdAuU1XpgwhNjxakuUVHwdgZcwHFUQoVW00d/bkwE5du1aXiUOzLLSh/ClPOHNP
         9lZZaiuts7ycwpAGg3bg6XRW416XVG/fuYYdXfN48mwTLe0FRDyB99UdYBn2+iu3vX/u
         09/ZXh5ssi6ki1fq+gqYzS3S1ZSOseMP2vIzgMwbiSrnx3bQwbYAOYbsbCjTtIT4aZ8+
         h7LUfBtZLpsvVSIe3bCn5fdi2/AV1ByUYuVRpbcjhdSWq8WX6/6sPBRIe9/DpPiJ0Fdf
         xXndd7oNfoDkcSWBho4ZazoCu1T20mv6ZwC1uii3+BD+d/lk8e9kXLEIFxCnD1nxuL6G
         DeeQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXaY8fqAopU26daWPtSQTvDdTkeBRWXkS8RPMWsiLbRoanCIpNh
	byazz/lq8fQgrwTxlsDiquk=
X-Google-Smtp-Source: APXvYqxfwg+ZWgjdyPo0SIURCiArJXTFJKvd9idYwyaZzwGgCFDG64tADL0liKRea7f+ni+dmrBaSg==
X-Received: by 2002:a05:6830:2090:: with SMTP id y16mr20122720otq.109.1563201580049;
        Mon, 15 Jul 2019 07:39:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:afd2:: with SMTP id y201ls2203445oie.7.gmail; Mon, 15
 Jul 2019 07:39:39 -0700 (PDT)
X-Received: by 2002:aca:4e89:: with SMTP id c131mr13366797oib.57.1563201579768;
        Mon, 15 Jul 2019 07:39:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563201579; cv=none;
        d=google.com; s=arc-20160816;
        b=wjJpWf/BEhMJbzMe7+ooY62RoAw2V8El8R8+a36wTbG+ztb20JMRur5Jj1hrpO/apB
         8ZVZPXJ2O/luQlLyVe6e/TvBxDmGCbWFyjoNULSAE7n4Ao8pPYn4phnkHtnBpBCD2aGz
         fqq9eRKAP6PVbrsFr+dx04DdSXcQBuuaf9vdfh76+9DXmOGyPK3WmoVsZO/FVO6wQ26j
         k+0PrjKSdkv99aw7Zh674tMf19hmVpuq8qkscb575e7fJa5Wv5lsgA9sM/eDaNDZdNm7
         4DJ1+9NWZCYZR68BcvDqClZn3/NBfAo0+0DToVKTXF9d2dOFxISQuKUq3jDxQdJQk3zK
         zpZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=TT6Lhie817nALa3xLZVwg2DDFLN5OjWub21DHDdbXGQ=;
        b=lYaZEij5A9A6MI7g7wRM804kfSYBMbx72tA6E4v9FYuLTfatTRUbaXxukpwTCV1aLO
         mQoDYNQpBsAYNPCjkGops+z5C3XdgitX2s9lT4mRJtGEnEBdoSour7PE0ZolXy+GhmZ+
         2H5VK5t3BGpSRlM+mmy0w83c0h1ddUlwoYud6nq6wLQFfpJbeTffxyC8nuq8iejqkUxW
         fWi1C592Lodzdcw75wyYOxOBe5XVcZpgaqiEzC1+E0pwKe5jehGLD1EZ3AaboVYGU06d
         RHwsRWCUSPepU+RFCL4rJygrUR+VzT7vM8LanwphRrWMm69pkxfQMMjZo5N9WXBuxX+z
         yNgg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=sBYSutIC;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id y188si970723oig.3.2019.07.15.07.39.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 Jul 2019 07:39:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (unknown [73.61.17.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 78F1020651;
	Mon, 15 Jul 2019 14:39:35 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 4.9 47/73] timer_list: Guard procfs specific code
Date: Mon, 15 Jul 2019 10:36:03 -0400
Message-Id: <20190715143629.10893-47-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190715143629.10893-1-sashal@kernel.org>
References: <20190715143629.10893-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=sBYSutIC;       spf=pass
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
index 1407ed20ea93..b7c5d230b4b2 100644
--- a/kernel/time/timer_list.c
+++ b/kernel/time/timer_list.c
@@ -299,23 +299,6 @@ static inline void timer_list_header(struct seq_file *m, u64 now)
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
@@ -334,6 +317,24 @@ void sysrq_timer_list_show(void)
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
@@ -405,3 +406,4 @@ static int __init init_timer_list_procfs(void)
 	return 0;
 }
 __initcall(init_timer_list_procfs);
+#endif
-- 
2.20.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190715143629.10893-47-sashal%40kernel.org.
