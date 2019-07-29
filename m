Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBB34R7XUQKGQEOUH2TMY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3f.google.com (mail-yw1-xc3f.google.com [IPv6:2607:f8b0:4864:20::c3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 87ABE7942C
	for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jul 2019 21:28:48 +0200 (CEST)
Received: by mail-yw1-xc3f.google.com with SMTP id b75sf45984296ywh.8
        for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jul 2019 12:28:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564428527; cv=pass;
        d=google.com; s=arc-20160816;
        b=IcNm0TlLCc5vs2S4L9Aw18FPhDEfUfB0E1kbfN7kqC+l44Em1y/v/ryWtU7GNTe8eh
         bCFNB8hl8LWVhLPFwlVkmI0pxANBVnz98weYHgq+xcK3/+W3tW14eYZQPMGL2f3nnqsy
         ADAQeRXhEVbwJghnAOJGKAGJ5INhqU6e55DlLbbIy5sZ3nVtj58Eh9IU1/unqiL6S3Ya
         RuDxmbaLb6ttVz8GtZwUB9Np51SwJuYmyjeeZBgTnnlqu896BpxIJKdw35J+HS6pCM+x
         ITcXNv39NZOiVdHvsvU8iWGD2AKcJqmo9KGPZA6asqNw/FJezIlYrVzWVUhv+m2eI0t9
         aoZg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=1chr4bNO0olnz3x0J23q/4BYbcO0JRk53yeJmfr0lNk=;
        b=ewgq3xmFVw1CVE/MdZHbfmCObV7Ko9JlKo+X+QrkCYWbhI09EbAkepisS8Ad6oDkXY
         BbO/lr3BD74s1ZASEndQ0Z05Qz6Gl3ovo46TS6v+qzyHfA59XrIEeiN9oGTGktYFzuy9
         RVk5RLWwtFgGvpLY3yTPC+EWFBMvKUmXvw/jfL2OW7OXOiDS0knSNSrBB4JNLAR3uFN3
         hjeAhk4kcHvqJgX1g33TXouVuN5ePMZqUsNgM89Z5VTX7qbCNILy86dV2YZHXAv2DX7d
         Kxf2LMNwfaJUKro/66d4+EjetdXYaxq814cp6KKDyrCNsoRrfIdsJ9wh/YJY/Ka39cV9
         tj5g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=AdxBP7ro;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1chr4bNO0olnz3x0J23q/4BYbcO0JRk53yeJmfr0lNk=;
        b=rjG+1KsQS1kSUdFODluKToak2CEq2ltsAsGkVHcuYYl/m3e7uAMSAANwpL10rv8Kdd
         72Xm8cSd+LVM9loU+dS/ZZemSJUBs79e960tWTuF3WOsLWYlw6ZJTqDE9BeGVb3HBNrJ
         tcmLrv8gvBW8VYNyB4+fvbo/AlDOCr/SqGSDI8YHTejg8pdYK0qzbSOeYtQ5hM0CDC0S
         zdnKqAnWtED7AnsOE837jM7ySoxQVcVGdA+dXJWZAnF4bKCOAo7+WLag5M4w4kNlt97C
         Ofl3Pei+2sbfOzXQZ+B6Y1KofT2wKhHXRJAkt07RAX7w5k3wCOVe7BRmzqyPUuDsP+jN
         ljTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1chr4bNO0olnz3x0J23q/4BYbcO0JRk53yeJmfr0lNk=;
        b=dlv9/n44AjjFUcOtMJ/9Bun+Fgr6Q1ij9rEW77JkztcJWW4+5mHn+wa2+0Ei5jGclb
         0UW11ccKPSvO3AaEA+jWO3iXJ3ApgIp+Zv1u5UQmCmSSfLW4pvCExOStgFb9wAPyrpw1
         5zvv+7RG605UIXc1RlV7TBQdwh+uapgAGp+LUlj5iffQTLm5KU++U12j0cDKZO98D04g
         +Rr35cMRiXXK636glO7uPn47pTzBkTwuM4bFA6Ni9G2GBNHsGDWq0lN5FgBo4Q6xfmCV
         5yql1s0P/MCbN4fcXUf/4VoLvWgOY8ha92ndIwW5m/5wI+wAi20EUulOBPwBfK9Py42h
         Ijyg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAW+rdDti3uqwNKV3E2GCGBPJrBu8CgiNPa1CI/k+J99Fq+tv3XV
	bmHC0L2elHDc9wUEyMvi2Pg=
X-Google-Smtp-Source: APXvYqwSOyATTWVAYNQUHq+qF2olueU5Ck8evojyXjdqd1IYS5H4pX0d097y3psEHxJf9eD7Fetwmg==
X-Received: by 2002:a25:c590:: with SMTP id v138mr66377529ybe.519.1564428527330;
        Mon, 29 Jul 2019 12:28:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:d408:: with SMTP id m8ls9661836ybf.13.gmail; Mon, 29 Jul
 2019 12:28:47 -0700 (PDT)
X-Received: by 2002:a25:403:: with SMTP id 3mr67917357ybe.113.1564428527105;
        Mon, 29 Jul 2019 12:28:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564428527; cv=none;
        d=google.com; s=arc-20160816;
        b=tG29uU2qXGRt63Cj7oshOl1YWugfTt9mDmO7co77CmjDkWMLEXqJDGBY/rvURryZHD
         f4pcuVCJ9p/4qzb8KsEnJZfvS6ed8OeDY/3ffxFEwdh4kl/aXT7kWMIbpWCI0LsBtI1W
         aogUUZnFU8RmOrCk4h2p5PQA5dMpbepvmZLHqHpk9ZoCgqCTZPcOUPXoAHUB4Km31YC6
         jtkMHcYZil4BOwoYw1ie2alvRr2Wa8xKyPr1d9DIcJ4Q6cm32TuouEVbmSMHsDl5DN3A
         ByBvLZ0NKBo4zF4mYgyWjCQHgAn3jJVx54uc9cCORVQdQKLjhkNtYqvUk6zh90joyD44
         N7aw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=pqKdEcak7OH1hoepdgBUqr4/nGnmfbdAQqN7tGc9hHo=;
        b=R7+wJgJJYTQSIKl4/9ZAqw+PQOAprr8t9dIlh6ElJQm+O1hqpyE5ucebhKkD/dzZpu
         zZRBmJVFr93bR0TMZzBgbN7E42DFppbcXFm6c8z0e0Zs3HvTUTbVvH+i8TiJJAI2piiQ
         xk+CryASA0bjaqHLs3dSDlLsAxNj6bify+QZMF0cazePuObd+jURyK4+iuRgpyvv4UeW
         bRjobFi2Fo5JiUTnMphO/NhGCrlXclubJK1lvlmHaEi6csPjkSURHRKuibBbAFnW8k43
         Bf8hc9+4//A9etovNZeTXh/MB2C2wWjH9nTgUTJMCL1mXIdPHsMYhU3F3AYJUUX7uPHe
         q16A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=AdxBP7ro;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f131si2309570ybf.5.2019.07.29.12.28.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 29 Jul 2019 12:28:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 99CC521655;
	Mon, 29 Jul 2019 19:28:45 +0000 (UTC)
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
Subject: [PATCH 4.14 065/293] timer_list: Guard procfs specific code
Date: Mon, 29 Jul 2019 21:19:16 +0200
Message-Id: <20190729190829.623689977@linuxfoundation.org>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190729190820.321094988@linuxfoundation.org>
References: <20190729190820.321094988@linuxfoundation.org>
User-Agent: quilt/0.66
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=AdxBP7ro;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190729190829.623689977%40linuxfoundation.org.
