Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBCMGSDVAKGQE27JQKQY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63f.google.com (mail-pl1-x63f.google.com [IPv6:2607:f8b0:4864:20::63f])
	by mail.lfdr.de (Postfix) with ESMTPS id 522837F0B1
	for <lists+clang-built-linux@lfdr.de>; Fri,  2 Aug 2019 11:31:55 +0200 (CEST)
Received: by mail-pl1-x63f.google.com with SMTP id d2sf41331475pla.18
        for <lists+clang-built-linux@lfdr.de>; Fri, 02 Aug 2019 02:31:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564738314; cv=pass;
        d=google.com; s=arc-20160816;
        b=KJWAdpXm6n2FcuwxlpCbQ1LLOE0OgP1u0209KTqS8eRR1DY4uvxPrG4SCl9v0Mekb2
         KlIsR8tJDcgattbVUJtmDEIJ6O2CpGaBguLVjeF0KdqfjYYuuJCsdIGmmxLFWW8Hn44Q
         YRQ8JIQHRP6pz6r5jF5nPRJpoY+ApBaiqGCUdnJlTu4jU0H0uW3bOwoJpTgEcCZ+cEra
         rB7Wx4cOGk5UWcyhM6Wz4+qc3lFk27cSxbU7J6Gu4cJO1eGw8h8eRd1TNZYa05nB5OSb
         suw8atJhCxWZKIjAX09A3SOot9NDAHu/UPt0Xn2fbBI+plm0dAICKqn4h12x55/L2UYn
         b7Fw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=rI27FPxO+1aeZ0QJ2mu3r8IWg+j9RHaR7ae1NcWOy+U=;
        b=lm+hyHWeSONRx7eklmWDJGOSEorJuHCluQF5Q7yWqbDC0n4m5+EkQAVguXsv7jZ8jz
         bqY5kwd9aTzQ3gbT/hFM083AdzCbnoDFFwMijAfdjLgdAOmEJFnuHGoxAHX9ZFB8EpYa
         q0sfe2e1ZzklgrFdf7PudZE5XjQJSCqkb5FQlhvvqGEwdAmb5exvLJqgO2ACefYQGKo2
         +JBBmAoWfYk0T55aOSj0qQRlRj7IBFk3xT//c1y3gj+fSY3g8mXXFlKMhXD2aPFbCJ4s
         eXzNb4JCY+wQV+cQV2el2X8pE19cZubMDPsXFePxZLil7nzXhj1d0rij75y95mr3oF+B
         8j+A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=pPfKHnEK;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=rI27FPxO+1aeZ0QJ2mu3r8IWg+j9RHaR7ae1NcWOy+U=;
        b=l7Umgrab629+wFHA5UGG+YD/B1Ii5w3Lm28jAw+UBCxDMc91roRnV7VbILUKn0XBLq
         7Whsers44U8FiorjPE35dAtjJ2oGrxsQqAxDtJmP14Kv+x4RgpIohJqd2PgWMvqSVFXD
         K/bLGMEqg5QPqZlOtgGz4NZIVntw1o4CpMJAXpodyNJUZnKjZzGvMIHINucJ7lTYkRiK
         YRvifacp30d22ZRSATzm2E+69SkODu/PAJ7cOkxYL0r97+NxPdM2M5zk5KXGfjMJFBY5
         i12D0Fn+WrntjyerE5WX89XZ8/nBsnaFWBLINjqLqK4DEkhiD/5Ko6hTioGHWDOTU1Ln
         iktg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rI27FPxO+1aeZ0QJ2mu3r8IWg+j9RHaR7ae1NcWOy+U=;
        b=dEJ8Bc4FoY58COqfbDaSyPJGSBLSLckTIlyfSH4bv177osJQXCHpL+PjxzHK+7lprf
         wzklSwSrQNfN8dCpijdFE3YqgPM6Ig71ZXvi6Y7MkJmwAkmVcEipe/GN+Gf/HxKC5Tj9
         RVqFxIyMKSxUoGZ+zAQKXiBxiYiDExjUP/ZFqQZpZqVHMeM4zTOysijgmi/AImKafNja
         HWvZD2g0PuW+fwZdcQqC1wnSNmc+gY3BCPwPSafyAghlyhgbZYJqiZOix47yoqYxmJ2w
         irsk09Sw3oY9sXO5U1wXc1n983Rj5jtNOkRYjyD/EKysRCFRozHKmDvs5UQprxNUmkQY
         WgAw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAU2GILyQRYu5VhWuGUgCnBpc5pxcpujXG/DU8MuUkprq1rtTtmp
	0T34Bi9hf0oa//e4UlFM32A=
X-Google-Smtp-Source: APXvYqygUZ0uDeh6oJ7TV3SLO6p9XqAOeeiHRYRubRdctX3ZPKJn7FUatnArlDPCIiWHPtIpSo6Ngw==
X-Received: by 2002:a17:902:a409:: with SMTP id p9mr131794010plq.218.1564738313755;
        Fri, 02 Aug 2019 02:31:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:3aa7:: with SMTP id b36ls2878981pjc.5.gmail; Fri, 02
 Aug 2019 02:31:53 -0700 (PDT)
X-Received: by 2002:a17:90a:1ac5:: with SMTP id p63mr3394311pjp.25.1564738313432;
        Fri, 02 Aug 2019 02:31:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564738313; cv=none;
        d=google.com; s=arc-20160816;
        b=fq8nyKAE+REqh0eJadrCO5x0axmDwqtzut6IfSygKmtQYtvPTmbT4x4iO2BAigC2eV
         ApoVrhbKSgVSqD7BFdXGSWly+MunZAT6GhQVNV9yLttOsOmuQ87Pb/qbJSslZQRWHqqW
         /WC356J0ph45lI94hv5nnGVa0xOjsvWm+iBXNPld8QaJ0RzGlQjLdpfiXwPIrs77lZBD
         LqzYWU/TeR1kjNlknFlptgP8l9ModezuTB8Wf/iPNP0we9fN/dVW2kZyc6t9lsyL809f
         EpPQZFzQP21rWBB/9QodkA9u5Oky3Bsk3oj8VmBpHTIcxH/HhZQPyiQfqPkRyF6nPS6K
         4xxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=iLX+E8hHKeRBW/jKLDKPbkJAwcS4tJ9mQCW96NiVUz4=;
        b=L8j6zK4HKbEp3uMj2/EKwNtCeLvYEnxFERLmz5HFu9++V6gZMwuWr9A/8pEhvBNhKo
         s3/3oK27ilCdzqDAT+TX0d1rXPO18pAmSvAd//rE5lL790a8g2NqUrBWGHrYedtENjCs
         9gE/oJVbS31j9BB6j2kvti5hZA+yUGWPNzmIRiHxDaiSa0w2sWNqO3mHcZIei6YGFMSR
         d/Kc2nPRwx0LidgKu7v1Nidy6cE9sqNlVySc/48dMoVKu6grBMhNFP4dykumYa3makbh
         nLF3/0bq9az7s9wdjFOTIn7zIkbT36JiB/CVrhUQlM9FNRAoTpWp3cd5XnAzUj0fRuOg
         EKiw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=pPfKHnEK;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f125si3518019pgc.4.2019.08.02.02.31.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Aug 2019 02:31:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id B6DDB2183F;
	Fri,  2 Aug 2019 09:31:52 +0000 (UTC)
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
Subject: [PATCH 4.4 038/158] timer_list: Guard procfs specific code
Date: Fri,  2 Aug 2019 11:27:39 +0200
Message-Id: <20190802092211.758928909@linuxfoundation.org>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190802092203.671944552@linuxfoundation.org>
References: <20190802092203.671944552@linuxfoundation.org>
User-Agent: quilt/0.66
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=pPfKHnEK;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190802092211.758928909%40linuxfoundation.org.
