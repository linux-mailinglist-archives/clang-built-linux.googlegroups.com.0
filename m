Return-Path: <clang-built-linux+bncBDTZTRGMXIFBB4EYWLUQKGQEO73IT2Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93d.google.com (mail-ua1-x93d.google.com [IPv6:2607:f8b0:4864:20::93d])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D93B690AC
	for <lists+clang-built-linux@lfdr.de>; Mon, 15 Jul 2019 16:23:46 +0200 (CEST)
Received: by mail-ua1-x93d.google.com with SMTP id h37sf1930265uad.16
        for <lists+clang-built-linux@lfdr.de>; Mon, 15 Jul 2019 07:23:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563200625; cv=pass;
        d=google.com; s=arc-20160816;
        b=HGl5mq1wSBprlpmCOFmSIYh84dxyCSqdzJHYDKNSRdly5ZbU3BRk9ianGJ1Ej4xqb6
         7zdvkbwQtnhcYHQWBdkJUZRvXcuPxCrUuVe45MF7SF9F+hrPu9F59ydUYb0vk+OYN/yT
         uZS2xOomgldtpnJWG4py6WxX5q8Z5oMsVJ/V2vnWPJ/2hgNdNl/PPBGOLD9DKjQnQEnX
         kPGmtifXz01wxu2h4PhQxxHcmijXAHtZvhfbDlhnBS6Nhh8QphIZpQ+o4GsqUcRwOcMX
         b1ujfvjecO3fDCL9os8CIthgwXMdEQFFA870mmJ+3flJ6neHOWCCM5n1vzjbky6h3CJS
         VgMg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=ePa1C6VQVKCG9cILrU6V28P5YEbIcTA8UIZXELPtzDo=;
        b=nRZbYV/u1rlALXQSPBCi48mKsenUc5T8ZgEUieZ+t/Zf/4c7O1Qy2j6nZmsA6w4qGp
         RejHeEGdTAqsL0k9/JE1SrEBlg9hzbbQdUYMtzsD7HHFL6qywqexOxGvrSGA+4EKfT/m
         cjsEbBw2Mr+kvDnHWmfFhKPtPfuu0IgF+fU8WG4qMUaTZHdm1S1yi5C1dGrVSWwKVjqw
         zMC5wktffKoIcuTIKI+O2m0V+/z2dfbbjmKAMTY5/XRTniZiC2PkNTZRAczZCkaALtES
         qOdnEa/2UkADRZKji7uWZ8Wc0BClmT4r0yhcIggLrmsFOj+yclU8IMtOlsRTa4SKX8jA
         1rlg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=X1ndPuzl;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ePa1C6VQVKCG9cILrU6V28P5YEbIcTA8UIZXELPtzDo=;
        b=YzfXPrnBzrta+NCK3DQXtlXwgkNucAVuM1mT3pMyX9Bb5Uh5lJsRsFwt5CcOkGVgFs
         SzztsSUhlvZffNP/S3UDb5USdg0ugCPU3VyH4ZaoC2fE69hwkmGrtH1DrvBJsHzNyGBV
         E17Us2+HPf3RPh3O+8VmNMfRobFNneGeg+IGOc9dVf2x/n5e+R3egT4aXFFtiaRCg9DH
         w//aetioDdqYi+5fZasEFUWzy3xjVrUCw7szjoBalNAhTaqJvBoxmfYFRB+RjKEaoJ1K
         OIZJOFXvTRg+qvdNGswoUHGdp72rYo8bQCOh+Hmgtsi7RXlUtQZYfcY6195pTZeOAjx0
         9zPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ePa1C6VQVKCG9cILrU6V28P5YEbIcTA8UIZXELPtzDo=;
        b=DqOU/hUumyKQYtAp+WUUeGCwMlyMOU+juKEZzs5CrzmuGUaaARN7aJWfWmhl8BTXEt
         l2C8Sf4yLDqHrlnwx3GwdyQBSn/rF4klgotyuKHcParsZLoBrjfurHRGtIcwzfOu5RHQ
         wC2/nlOALGS6fUb8/QuiEme/yIRyQR5ND8KJxWPWJq2MSFXkm6C6jd3lZFKjaRQBF5hr
         RQqFsf8jcNOASsUwwJdLPpZu7kn5LSE+L6nwhfzbV/Wvp5zRjb6NhebPblnAwA2keMDM
         BA4rZX3xBz3ve/bYXDdu0ysYs6tSmWeIn37llKYJlRexdgIO1yXbcVfXhWQoFwHuUfvs
         b9Zw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAW7PcVNGxEp/UU6DdMQ797REfkDuszKyXThBgrGpx1lEAun9MHb
	45988MQNPgNPjzMfAnKDduc=
X-Google-Smtp-Source: APXvYqxF56ZZ4r37qi/XYYz2ogCG0z8F1g9tm8LX5jHjlO9oh3P3z5kaM/yTkEHDREJ6xa2FVbjooA==
X-Received: by 2002:ab0:2556:: with SMTP id l22mr5224969uan.46.1563200624859;
        Mon, 15 Jul 2019 07:23:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:3ca:: with SMTP id n10ls2105063vsq.4.gmail; Mon, 15
 Jul 2019 07:23:44 -0700 (PDT)
X-Received: by 2002:a67:f946:: with SMTP id u6mr17165271vsq.7.1563200624514;
        Mon, 15 Jul 2019 07:23:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563200624; cv=none;
        d=google.com; s=arc-20160816;
        b=mmo7xIrvOj3skAiahL/hdEN6cNZvaaLKBVqx1EGHxq8TSj/XL7vjOKlznDVisHEtqf
         HPaOJ80FlmeNyiB9cvdv98d68kYNP+lMFCHCl7+SjfE74XaAyiNKhXRxiX0SuibzMokK
         Tkpd06KoXXz1Ux2srYt8azKuXyo0nqcrgR7hM2qIbtd6WClV/7l+DGSZK+jxI6KWSbWS
         bH8zjG8c7P29qdyvEj6bkUNy8m4fcGmLnn0I+bycziCsOefPuYRv0OnzbFHIlWABUVvf
         tQZhCoxzrwBL0SBat5vPobmW/807PYCdjrd0C30UAbmYuKsSshxbnYXbLAqhKi+qWuXi
         T6ZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=PklHCp8iiRXNeAg5iSTk1h2B/RzhzQLLCzJEno2sGko=;
        b=OrdEV9Tj+F5egL2XkCKwi9oCrNzU0sJpJEnrbjkeFlv7emHZ1UTA4Z1oTOs61Jhwud
         JWq03lA9FIl/tlpYrG5CTIYBWmXtTW0hoBseFjHMOQkxGfJIWv1qdwLn6poINe+uwb76
         6FBnrfKscCsAovdSV+VnXd5VtegRFRHn5mBMQBngs53faKTMhtj5Bq+MC+uKVZGFpzmI
         l2+vd8ifuejKnsw9ycHzJ+PwpzTtExt8gE/nN5L3v6SQzah75vEwFnz2A9MPlwxa7biv
         0BAKh+KaDGjWxMPer5/x8gKEdcCnAMUl8GV4sq2KYCVPWk4g0clWtvUYQ20K+uwetaIP
         aiRg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=X1ndPuzl;
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id s72si902255vkd.3.2019.07.15.07.23.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 Jul 2019 07:23:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (unknown [73.61.17.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 5E1E7206B8;
	Mon, 15 Jul 2019 14:23:41 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 4.19 095/158] timer_list: Guard procfs specific code
Date: Mon, 15 Jul 2019 10:17:06 -0400
Message-Id: <20190715141809.8445-95-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190715141809.8445-1-sashal@kernel.org>
References: <20190715141809.8445-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=X1ndPuzl;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190715141809.8445-95-sashal%40kernel.org.
