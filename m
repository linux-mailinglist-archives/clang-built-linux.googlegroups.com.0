Return-Path: <clang-built-linux+bncBDTZTRGMXIFBBFVEWLUQKGQEUV27I4A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3f.google.com (mail-yb1-xb3f.google.com [IPv6:2607:f8b0:4864:20::b3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 8622C693E5
	for <lists+clang-built-linux@lfdr.de>; Mon, 15 Jul 2019 16:47:51 +0200 (CEST)
Received: by mail-yb1-xb3f.google.com with SMTP id z6sf14301351ybn.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 15 Jul 2019 07:47:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563202070; cv=pass;
        d=google.com; s=arc-20160816;
        b=G0f1XhUd/TD+pOFGzNuY+H35izpB2mYoxL9ZLW3NAbCpzzt41kPH3RUMhYiScadcYt
         nBq0kXgUjwGT+tx/jxvy/JJwrDA+61z/s1V9EqGxDiCUOytsXAPurFg+/X5CEzFGACz/
         +Oeo9RiDKAvFMLhWCeErVs1zkS9yIamMEVG0ir6y1ts50y3vYn7BzRVHSlsdEvMCb+Oy
         B8/NuVgdwFJd5TOP1rK83u25hwTq0yl20pd+Dfsj0VgjuN+TJ3DeiHEUNFBydReFwI5l
         tj/b1MKRzzXLIfVVb5ddklSENkndBtrDRoaHHEllCjDLqZvs5AacDQMdGTD1ARP9t8tG
         jVxQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature;
        bh=cWDNh/IWMl/VVRQulssLZ7qAMbH+QnO7ZzNJ1qJb4jA=;
        b=nnT/HdokXInzyNRU8yw7BVQeqGcYcgXQ+Y2IwHQsO5pCBUo0w1ZhmCaedbKx+di3Ho
         7naNS9T9D69rwalc8lhDnW02+tGy75irIHf9V7VmaST+7npj3/rHVepOil4fmqUAp6nf
         7pUuvypX/HyipmXTtfJGAloeZuMsmr527OV8OUaC4OV8x3UQYLSF5Q9Bp1RBJvl18CLp
         qQzb6CrCMF0ah0nfSwnZDzVooOOgmvFDztD90Nv3sdE+FV+tjSIZVmO35bRLNWtMPU+u
         6J5FrimtSrvA1mOyPi7d49DfwtXrs5sev9408/eaDlPW4bkdnKR+J4COwzC4aew3CY+0
         qDKw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="LHb/emnL";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cWDNh/IWMl/VVRQulssLZ7qAMbH+QnO7ZzNJ1qJb4jA=;
        b=dE8HxeUb58yxf6imGsdrfqjO5uIoNpsFXTpexO9luT+/kFTaRC1HXcUYu2v5N6x7dM
         2fc5NnGMV1S/wdFpQUjegCXh+WxhLn4WURtVP8fb5Ab4vTO5RwQHYtto6YOyT883aylY
         ThRo0jmmqRlZebXinKGTCNaH3cbQVk/Ep9uAB3ENBaM67mFrIl4EVU0xsui/9yH+Sf4y
         YhldukMeztimyZ2IvVRaSzNw7OsnzU1QDop6+zFXXBZhkMABFOzopmYe6Te4PdHRK0J5
         MpdJz7FDCTx0p+vz1Btmbrz2YyjkMfH2OXK0CT0C52BM6QQtBUkqO0w1UOT6lW/6I0TN
         pndQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=cWDNh/IWMl/VVRQulssLZ7qAMbH+QnO7ZzNJ1qJb4jA=;
        b=JJ6UgmHnRXCoYgRcqxk9st78r87rQ4pTfebUD7CamwgeoSijn1Kf12/5j5BZu/PH55
         SQADB+0wFXd3K0csGLcfWTVqq66DWkXnqd0BSWTeo/56mhEpDZjeM3iZB7s3mOIOrUnm
         nlM9gNpsFHOpzZ7gaA5yXcCt+hrPwDtyweFly+30wbb4WuUefa3vzAjHZkm9xFC4u0Yg
         P8k/vGUn/dMGKlD3TS27kIUFMzHnzXPUxa2L8BW7glELyXTDWGjVALQM/NTopSo/Ch+H
         m3i7oVLQTQPEv+tcSf+EESIfI+oIE4umPlBlQDabzZAvLhUv44T6910Y+UeJniE2PVG6
         VLiw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAU3spSxvS7gqxTYpsTZk6wwnlj9wDXgSOeKTR8EW613a/2D7VM/
	PL05feRtXmdNxfmMrTyEuh0=
X-Google-Smtp-Source: APXvYqxvWyZzvF+YJ+8C/Y/kNkZy5m0xj/16ORp/Sa1Wusswi4mjrtrEd9tSIz6+yd1tVMNMiqXr0Q==
X-Received: by 2002:a25:80d3:: with SMTP id c19mr15122548ybm.259.1563202070608;
        Mon, 15 Jul 2019 07:47:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0d:e684:: with SMTP id p126ls2249871ywe.12.gmail; Mon, 15
 Jul 2019 07:47:50 -0700 (PDT)
X-Received: by 2002:a81:2893:: with SMTP id o141mr16252456ywo.488.1563202070411;
        Mon, 15 Jul 2019 07:47:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563202070; cv=none;
        d=google.com; s=arc-20160816;
        b=QpogI4CBZFP5o1j8JYvAZ4wc/oJiAoqeIgY/O9q1N3jzmE/w/VJCKGU5oFr7S29aLH
         lq2VdZiqlF1MWmVEjwp9A62navbBhqsu57vLhRxUifSxGIIIAjRL4pX26i3r9tGgPwjo
         srC8c46hcZzQStT7hQk5fl9jppG1TI0K2Q9UvvclLpLTGCHXkRheF1EV35RQaJRQKtal
         XOdR0bKYHmztv82CIkfjyPdOMX8BlwAOjLxu0FSKSoJgEki2FHZ2vr+LCo098tTs8HNi
         m3Zs4OZb2fskk3s1CTeM39oQWYEOd71C9oVQnmoCTy21espd3QyLzu5mo8b32z62SMgM
         g5hw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=TT6Lhie817nALa3xLZVwg2DDFLN5OjWub21DHDdbXGQ=;
        b=n5Eb32RH1hnd3Ap8fmAnM/ZVMaJo4LD26xutimW04hx5AffmHpYh7Lm3tBpnWwxsG/
         8+mdiJl0cj9YQA+uRV3euaab3H53gDJ97nZWlyrwq6JRBXNJCF4t5xQvrvyj6Kcx4306
         IY5vafQhF4/4aLywSNfyHUYQpgNuNxibHkjeSxI2Vs/K9begySJAn3l7qvY+UvPDGLUl
         faCaSl+0eHwAfTezSneAN7WGFPkkjqT7b9UbyCsy+411PJ8gUq8sQkYoBvvp9OYPVVZq
         RMy/78KWTWyT882dAGTtKX1cqVgGYPogiPKhZ17hvJcPcTEVOWzXh0uWDJaNL1FgnkMy
         9H3Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="LHb/emnL";
       spf=pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sashal@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id t132si885918ywc.0.2019.07.15.07.47.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 Jul 2019 07:47:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of sashal@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from sasha-vm.mshome.net (unknown [73.61.17.35])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 1BF282067C;
	Mon, 15 Jul 2019 14:47:45 +0000 (UTC)
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
Subject: [PATCH AUTOSEL 4.4 37/53] timer_list: Guard procfs specific code
Date: Mon, 15 Jul 2019 10:45:19 -0400
Message-Id: <20190715144535.11636-37-sashal@kernel.org>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190715144535.11636-1-sashal@kernel.org>
References: <20190715144535.11636-1-sashal@kernel.org>
MIME-Version: 1.0
X-stable: review
X-Patchwork-Hint: Ignore
X-Original-Sender: sashal@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="LHb/emnL";       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190715144535.11636-37-sashal%40kernel.org.
