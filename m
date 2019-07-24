Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBOHM4LUQKGQEFSXIRQA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3d.google.com (mail-io1-xd3d.google.com [IPv6:2607:f8b0:4864:20::d3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 6093E73A4A
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jul 2019 21:49:13 +0200 (CEST)
Received: by mail-io1-xd3d.google.com with SMTP id v11sf52175789iop.7
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jul 2019 12:49:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563997752; cv=pass;
        d=google.com; s=arc-20160816;
        b=AcAiCy8frUcbY0pXzneF8jjP00naJc//djGayO0tPEEHv8UuNCW1zw51EPXzjrooDp
         sum2CPW4q4WY4s3L3TrBK6HI6PCWZFuPDyovDOqPA8krWP/g3a8diA9GJfTuKHGeAEtS
         mo05/+UE0bggC4kWP01uAlybIPtlfLMh+w4ALBcaSD78DcrLSJA89gT3v/WJ4q1XOyH/
         auebEhBrFyBKvTiIepSmyw8obH5M13nIswac7506v/TGXYQcT+v4n+mv6wsKJlp7pBL/
         tMS2D8txVdpyQ2lPNdJHlHsGRvxoWMP+GhPZgLEFm5DK14vZuO1JAL/V/i+nNCrXNDbS
         MV3w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=c861X/7v/5Z7Ty8IfwvWH8u/DxlWu2fxcPyBYhJk5mA=;
        b=Wo/CaTgTDgSnsRBE9TrOziOL6gF06yHB8I7Z7w3q0OzG9vWcW5Uz3WuJi4RXHVw0lb
         6c/T51p44Jgq742BPdqbjECzj0TqSr1OeFLljFO/5FYLdFkWwVoLEiOGZT9BaH636mIc
         S8yE9G/8igP3keCC5nGGABR3JHcZ1uStGRdb09UM5wK8JMWYs2AU9duMglFzDoOkbzKa
         iZq4x3BwLiFWeuG0TZYCo3SsCHS14z+Wm8wAmeJGIUZ3jaPHz1MClgnJAJhqu/b2kfVA
         nGtjsNkTsruSORiUPMuBqsR6QUsC/jp/wrmRjqmRo9SpjzpKZ6CiTXPCyt3EncnWslzh
         ZbEA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=gQwEXfOb;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=c861X/7v/5Z7Ty8IfwvWH8u/DxlWu2fxcPyBYhJk5mA=;
        b=kg7GO9LJ5JpIB5RVV63LdTz0ESY8YIaRWgc8CJbAHA0HOaMhzjqJIh27xe/cKTtWad
         Q+rxrVXA//Ni92O+alPjy3fuDpNDm2a73D2C46vX98E0Lr2CZ0jqTTxjMtyZmrSe2GP1
         0ufxWvq77FF+1Ne/wKOrfLn81pZLU3JSV6EN7m7+CNdINmDM55EaZL6i2XVSl0duBbrm
         NcQ8Y6HGaWxGE1GzDiux/k9sV0f+zzgwDVewx82mb2/kbfvox99o3GIjrfMvRxtUyUey
         1mIPSWDCdWAJVnqhmoAoAHW9Wwvt4QWxhJV4LhXsD/lxxOcr4MX2tLuRjwYnBF5QukFl
         WaYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=c861X/7v/5Z7Ty8IfwvWH8u/DxlWu2fxcPyBYhJk5mA=;
        b=dMu5fmc+UOZSGcYXGx0JAFfCEEJJiYWJzpbuu4UIGkYYDwJpRpiMVkySWeGg5XAcK+
         jlUBrSqJN0Bv7Guj1gsq0pWACnAENvSSj1IYlUZTz9F+YmHWPTucNZAyQLr35LfGhoow
         rJIAL6tAnmoZP548+6eBeizzZt8Ezq4JetrmNsp8Z/le9VShF9kVN483ykHxMtevodpK
         KYU4tFYFmdqC2aheer6wSI6AEwQDA8iwKRBXYcGkFj3TJ191Tqg3ZV27rpA8TCF7JQVF
         iq3alforHdIDmmo46erkqcGH5oz69S+GE6nmuZFOL8BaxMAf0QLx+2NMjgtJ3hlFt85A
         nfKA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAW7uZENXge+6UMnQF1xNX1Pr6CbNliRNq1jzrtJZl5jvsbYnSeM
	ntxpFhL5ueaoFJp4a1iApIg=
X-Google-Smtp-Source: APXvYqx5YTayjH8ylzbHMfy0WylS4e/YhYhgabtJhgi4g2Sba7AqvIAmFeQutEZvKZUcLMVHfyQzjg==
X-Received: by 2002:a6b:c081:: with SMTP id q123mr3227187iof.210.1563997752179;
        Wed, 24 Jul 2019 12:49:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:851:: with SMTP id 78ls6449118jac.9.gmail; Wed, 24 Jul
 2019 12:49:11 -0700 (PDT)
X-Received: by 2002:a05:6638:c8:: with SMTP id w8mr90139027jao.52.1563997751910;
        Wed, 24 Jul 2019 12:49:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563997751; cv=none;
        d=google.com; s=arc-20160816;
        b=ImRxO6G53ssc9RMShoF0gpHLQEoVaNtyHsPNx5B2SFRYwzrXhj/3tJISJTdnKDuGfw
         EkvI8vBK70FscWyToSs0h8cG2pP4n/RrON6vL4inXO0zyLWqr0s08XNQFfy4UA/hNfDv
         UoGfF2bPWRjF+tPrhof/VPbOkMb8bBKvuOjQr60VGC9nfiO0CcygxCHncDCcS9CjJ+hJ
         JPN35Mp16p0/sw2b+QKtLzC7kfvGEcp/HoAX1jJUjiv4RHtMRMSiR77MSOiDf3rjQT55
         M2VYZ8SjxT3UzZ7q6b6fcXLHhr/54sGkh8X5QIzYE6+CNrRkOKELXRiAz3fwM4OIjSzJ
         Xf0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=lp00mdcpjqBSl5AxYYmGlsBlTvAvaPoUCX2pNvc3wYw=;
        b=FsiVx91GUbKTffVUGMIc+dCO7wXCaydJV6c/HgFZrS+Pcl0dPYad8ak37NYypN4ksN
         M36ca2ldz/ctqpT6OAkZPZzbLi+auUczHpt7x7SrsYkc+rIOZsugk1GUl8nriBzy7DsK
         sHfqPHgJxkh9Ve3worDSSizS2RLWtPCad2Fn0vrlchch/6DVdKEvmaV1Ie4+vcn573cm
         evHQk2zwGIrOobSuulpvO2yk/R4QUNfxnW9TeyPmomhVaRBSHyW+F/+Baie8B+v9OfS1
         KArEK82OlXWdkRccLtHoU2p6oFZMnogZPg1jJA3sZjftNprTVd196B7nUX+uvRZ0ybEm
         SZ9Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=gQwEXfOb;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id t12si1728578iol.0.2019.07.24.12.49.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Jul 2019 12:49:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id BF04322ADF;
	Wed, 24 Jul 2019 19:49:10 +0000 (UTC)
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
Subject: [PATCH 5.1 131/371] timer_list: Guard procfs specific code
Date: Wed, 24 Jul 2019 21:18:03 +0200
Message-Id: <20190724191734.748680072@linuxfoundation.org>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190724191724.382593077@linuxfoundation.org>
References: <20190724191724.382593077@linuxfoundation.org>
User-Agent: quilt/0.66
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=gQwEXfOb;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190724191734.748680072%40linuxfoundation.org.
