Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBXELWLUQKGQEWZ7ZVMY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23d.google.com (mail-oi1-x23d.google.com [IPv6:2607:f8b0:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A4A068D01
	for <lists+clang-built-linux@lfdr.de>; Mon, 15 Jul 2019 15:55:42 +0200 (CEST)
Received: by mail-oi1-x23d.google.com with SMTP id e11sf6202943oiy.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 15 Jul 2019 06:55:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563198941; cv=pass;
        d=google.com; s=arc-20160816;
        b=td4dgyzVANjckd1/rygVnovgyy47GFji5MI8E7IkCvnHtJ7nZ+LkxQL+J6VnWWFq9w
         qpo9aRjglQLq2hMp9z05ig6bcTWtUX0h/xrGjS5sweuEKMbsus3MO06g3b5tlGUz8TSn
         p3JXuD19EWPX/WC5OTcla4bOJNB4HYluYBUXxlQyfAX/+AcwsasWSA9K0knP5gqAO/GH
         +IPXZn1I81nvPqOLXLHIpdjDBPtTCoLLOcsL20+Yk+TpkxHjbFnXF+2F+eobr9F8d+qZ
         0iwPmPETGlrG7C0Sa3x7q+cD2I0/254aMKdS75jAW7Crco32duSvEs432YpDWaaZBSXO
         SI6g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=2KhgZ7JuN8sTnBrNl3CF88WKE1MTKwjnkeBCT9/UgVA=;
        b=E/rA712eAdAlA/IMmQCl0VXabXi9/Ge8HK+OEd+rWWFFX2PwYMxJKsytFR8UxuCEG+
         coaog3lyquSpDsQRtIOanilxltYjPBgZwXN9TbSFCqpyAaSMAZAyinaX8FPeOGG5ugMw
         AoIrwvgmpJ4SOOlSZSJ9zy2bzBc1OJDMQtjfHtS5h8oi+vSfOYnO0XPik54a44zTdp+d
         tTE9Sf0OtUAas90n07daSDUyaXdyFHK8wvLbCsDjZrSF3u2D3E5YP+r5/K5C27AchAuu
         4RjsZHDu/QEN6kN5I1PCOYCPfbG0RqG40aCKKJ0/rRurDs/nPNRb5DegNu3RbzA5dYdl
         QZ8A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="y/u2l0uV";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2KhgZ7JuN8sTnBrNl3CF88WKE1MTKwjnkeBCT9/UgVA=;
        b=P1FXwP18AMcvAz3mqeVMqIOYj9Dr8TMAPTaX6ZIYhKrUwq7leR4o2VIkKSloipNOu0
         Gv9kj2EdvWZpmH/FgddQslzzHqe8ZEAvdR1Wy6yqZh5+t5HcDaihInHnVHMH/Dy8j5KN
         RrANi5CcNk/tr2feXn1pOCbGVEnuE7EVSLrg2BTGOv0+khmownw8zvWaeI6yLun5eQc5
         Mb+xPUdD9ZR+EPjedSxzuf/rnQ4cYYUZBHnuh6Rq88ltlJV9pjfK+oDiVxDtUQXpRQJu
         uvs6IDxDpw/mcrWGLu/7/TLHAwnwLpAyG4QEU45+AuogYUVhWlHHyqw6bS0RSF3ytm49
         1Y3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2KhgZ7JuN8sTnBrNl3CF88WKE1MTKwjnkeBCT9/UgVA=;
        b=YBn7Y1Zq8WMt/wCRXf+RxrHVJd6HzFCvHFNPTdKFNeCdw8tQ0ucHJGDhlMuVKOrvyl
         tXs0Wt/qv0PDNBLi0it0u7UxcIXbVWpKiG7DdYJusNpRO6vZ268MgaUcbkYL7pFWHkzv
         W1JYk67oy7SsKrE5jLLtajdOSBWfirKC4HI5lyyplh8ZFhhE8RKSz3S4ps8sOjujymZy
         nNAMxt+SAlwVW4KXpkjrGcxGOzJXobszETqmhV0/OLbKAZFWg/vtXI7VvJi7XhSe1Mjd
         RSofQnYxmNneWcfiG0eM+VNa6tvm5+q2g/I2AflzKztuTBZEHjqTj0QKIbhQ+zqoGho7
         X+DQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAW/N7q1epBjJjM5Q5HLytfOUdjkXeLm+43l+iDc4u4oRw09Ro8S
	rt3GTi8H5D0c9DEUTuhASpU=
X-Google-Smtp-Source: APXvYqy5XOtIbnKnNwav7lIDzhyXTiNTrcliEvHEVGojg6+LmqGLoMkl/vGkbcLfl2mwqogQ8/1POQ==
X-Received: by 2002:a9d:6c46:: with SMTP id g6mr17860012otq.104.1563198940768;
        Mon, 15 Jul 2019 06:55:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:3ea:: with SMTP id f97ls3135243otf.5.gmail; Mon, 15 Jul
 2019 06:55:40 -0700 (PDT)
X-Received: by 2002:a9d:7643:: with SMTP id o3mr17784250otl.49.1563198940399;
        Mon, 15 Jul 2019 06:55:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563198940; cv=none;
        d=google.com; s=arc-20160816;
        b=BwabumC5CKrzXzSJ/M4Mn7BLiAJ8eI+CRmPjqFvjqHWhK5gGTNFVS+A7frbj/hhPV7
         rhlsEqb3NzIlc+3W4K+ky/ikuvfZ8IasweXJrjQL3fkhv3fLPp31PCUo8IpdoVvHYFxJ
         ZTpqCFnqsVXgUuNYbo76RlKVzbCIj9apSXDw1x+R76LUy7ces3xpsuftWRlgQdUdjoSz
         TIEgXTKCvXYltJJ4Jxi3vHRd/H7HH6Zo0eJhVYU/OfOxsXlFmKCg7iwXwdY2855LUFcP
         EWYtFpvXWg2f8iGmJRtSm246fxQtshZg4aIp0f4nFPppxR3wSauHXZXNBIHOjTFRqFON
         L5QA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=hN2OFIwN3GFtWiDcM74m+DXMTYTmdRW1WybjS93Qr5o=;
        b=oNrM+gYe/SQG48XDD7J0PVTpUeqCEcrnYL1FUuZ28SSLTURF9XfikdupY5VWbc6Xtm
         1W1gPS7AVckpFonnSKrDERYq687RS1EyPf4anjbXcxo0FHq6mJD63QkDa+plrvn8NqV9
         qjEqd1IrHiAlX82MODEYzAJqzqvSbLhNweoz8FH8Ix1tBh5H6eguCjAgMd+TWGJ9gF77
         CA3msrVQ4+p07XEmjQkf1r0xPcMVrIRLNv6JbtYdoK7M6M3Q1cdqXDL/Yj3fiEDGg4CQ
         GLSaETudpUFMJENBp7So0v0IJp7mEew59BFlGDXu37oOxZCbjf+mzJ5A9/w67mF8NSdl
         xVbA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="y/u2l0uV";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id u26si759705otj.3.2019.07.15.06.55.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 Jul 2019 06:55:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (unknown [73.61.17.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id CD5A820C01;
	Mon, 15 Jul 2019 13:55:37 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 5.2 147/249] timer_list: Guard procfs specific code
Date: Mon, 15 Jul 2019 09:45:12 -0400
Message-Id: <20190715134655.4076-147-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190715134655.4076-1-sashal@kernel.org>
References: <20190715134655.4076-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="y/u2l0uV";       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190715134655.4076-147-sashal%40kernel.org.
