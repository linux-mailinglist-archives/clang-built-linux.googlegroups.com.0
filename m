Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBIHD4LUQKGQEM5CVFSQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x637.google.com (mail-pl1-x637.google.com [IPv6:2607:f8b0:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id 05ECD73869
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jul 2019 21:29:38 +0200 (CEST)
Received: by mail-pl1-x637.google.com with SMTP id s22sf24704468plp.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jul 2019 12:29:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563996576; cv=pass;
        d=google.com; s=arc-20160816;
        b=DyaiphU23YuLwOarcgOULV/maVoehc2OmbH3qMsPtEbSr9gT4RMJPp+u2UnyVX0Qp9
         42enKa2ypMCHpA/qdVQTZ3UVe7XNxz6btN7JRSQrbgjbTwObHQRz0aa0Yc9btm7y6tIB
         lnZkH9aaYye9kOEjbd+4l5kS5IwS1wh7gavLLrqnA1yh/xl8udmG/t3rxoSTvTQefTEZ
         n7vMGSCC25lPMdkwJdUAvxvAHYzeJC9lqUNENYydr97Pp/J2ZVjl202kq1bLpYL93Jge
         Ta2KbSE21KTqBlSS8awFnWp7s46zIpCuYdR9eq8GWCxvNisUoR+KJCh15ZVI7muylkuP
         hypA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=b/uj+46NfolFeX88LWy4nATMUlhq6mj1QLlfbg4uSKo=;
        b=buBwOqQ+m5pWDmZ3aeJjBl4XV4t3NY4oUXMeQco4arC16pfkBDCPipGjG4Ob6lP2za
         z7Tjb7XPyQi5Pyb9yANrgbe37olVdV+fdNFcKWpZOYaXxkJH2jd0nHZzPhdkQo1NVaF9
         WHYpkG9JpxR9Z+Szlq0gwIq+tGAHrqWq4G88ahrM7iBc6TfgGCv5pdtKPzRBepCkfIcj
         syhvyBwIZI0mlbn5bY/p50zclMXvH1SUqolW4c0rZi5cyf3HCZErU6hSC/IApHTkcGAT
         B0rpBcLIDCc5Xjd7psnMBTFmZPDM+rqWDIvwblt2grL9ojCI6AwK/K0Mhvh/meQz9uVO
         YHQg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Z57iI4tg;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=b/uj+46NfolFeX88LWy4nATMUlhq6mj1QLlfbg4uSKo=;
        b=BkxxVHeWu+WcJnwnI3hvHCOt+KQHlaD++xhCCVbRIjPbgfrxzdxWukc7PGNR4LGidW
         87L3Li0V2Wj6SI3SQKIjesZ/10jbBfpP1tQJkTf2QijSAdSpj4L6BK36VZZgB6P7JP3r
         A/kRxfFhB6kTo3TqgxnO+wYQ3GbaaghW2LEgM0PEi5Bbwruy4kfJHWAFhkGPNxt+/vVd
         QPqhKITTb8EvPxQJrm4cV+spHymnYHsX/IvJpFQZRH1gMiPCJ4DRMf9hcr7D2ssl4tm7
         INn0G+WMmFkYWGoRfhGBGX8cuHbvrkxLT5oNwXcSyyWS4mJZOnRN5M/kpMJn7zkerfht
         uG3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=b/uj+46NfolFeX88LWy4nATMUlhq6mj1QLlfbg4uSKo=;
        b=B7RQ8ncmAuCKR4aWTs90DDow3ZSPOs0J+GWWc9R2kI6bZee/wZtJWYrCA30/PWR5D8
         NQ96P6FQFVFMR+hVeTNfgvuVxjzLm84qtPqg1RKQ5MrjXDZXojU1CD368Z+A/q+ZjidV
         ZnUKJZ1hJmNvN/wkbJbVI32pI9BPTTbrKotvZ1zpvMN0k6xSRMts/85ZFx8Eyv3hQemW
         5t+hBxDNJxpp7fZUuXr3K5FWQTxKsbARrYafTXJvRnudugQhKZohqYY9E9WYtkABl+DV
         JXb4dI1FSnyP/ST9Ncaq7f4XuF69Qx+pnVNlXW//yB8C5TA0GN4yYNRnIUl/PedK2Z8R
         db9Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUMpykg3keMUVl2O1xKBD1ZcRSU5erQocIjbWA50jYuB6mo07q8
	O9jYdknsQuloM/9TsAN5SXM=
X-Google-Smtp-Source: APXvYqzhOahz0Uc6+9XtP32o36eMciNH25tpvTGmbxA2YQtFf+Fbb3Mcf52iL7Lq/ofJg9htSgsAeg==
X-Received: by 2002:aa7:8f2c:: with SMTP id y12mr13299800pfr.38.1563996576717;
        Wed, 24 Jul 2019 12:29:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:3043:: with SMTP id w64ls8423165pgw.15.gmail; Wed, 24
 Jul 2019 12:29:36 -0700 (PDT)
X-Received: by 2002:aa7:8705:: with SMTP id b5mr13449913pfo.27.1563996576430;
        Wed, 24 Jul 2019 12:29:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563996576; cv=none;
        d=google.com; s=arc-20160816;
        b=i+oqEiRKRzthIfJg8JM6GEH6AwRAov51z/G1P+r8U2VuXUvPHJwxmtnAClGJ21PYxS
         msed/I99NDLDfxNt7Ee588EIPMCWpsZgvd/yo+YGCwBlOqneIiQHlkQJpTkUpY4sO0DK
         +Zu++yqu1+HfZNVsSr8rvGosiYsoxQatQmE7Z9af6CyLgHjYZAFpK8JTtxrzTmVoNv9A
         d2jg2fAXqjffDhSh2MMSNSAYs/WZkyzCsUj4gkT9lPvckPkRB4Vjzoxzn1YpqyoX9sJn
         8pTKTfQ26+KvM7xANaHErDjhHWMdtvbA10cknVuhab2TUHhALg/fkrzemwbi+SsAg7vu
         LSlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=lp00mdcpjqBSl5AxYYmGlsBlTvAvaPoUCX2pNvc3wYw=;
        b=U/gqvhZAWZoKJzYXcWodXxiKWpvZVT2QOPiuOLN55VrbLzwR6w/tcHEORjPrEOg/cn
         uRlNu+wpguhV6BIrLjHKUruZ0KyUtHaZveHdCx4MYsrU7VE+x37C2M/xTGukhDwUFKYi
         KBUohmEp6fhBYRcB33SouSdLjdLPWgxHSpVDUlVVkWDUhIu3i3bCQrzuDRcPZVQj6Zgm
         UTpwaPLJJZR6TFl8+hId9ydi5Gn8nr3Bzd7utxSBcDHex2DEpElgQs7TKYrEDIFNSbnE
         LGrXuJJNKrc6zhRX4S0aIMqg45w6VFBMIa6sBbEBBBr3XQCltd/AFwF/eksJps7uJTFb
         lYvg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Z57iI4tg;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id cm10si2040575plb.0.2019.07.24.12.29.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Jul 2019 12:29:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id AC42B20659;
	Wed, 24 Jul 2019 19:29:35 +0000 (UTC)
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
Subject: [PATCH 5.2 144/413] timer_list: Guard procfs specific code
Date: Wed, 24 Jul 2019 21:17:15 +0200
Message-Id: <20190724191745.258319513@linuxfoundation.org>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190724191735.096702571@linuxfoundation.org>
References: <20190724191735.096702571@linuxfoundation.org>
User-Agent: quilt/0.66
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=Z57iI4tg;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190724191745.258319513%40linuxfoundation.org.
