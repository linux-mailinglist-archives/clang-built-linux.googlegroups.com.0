Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBEULSDVAKGQEK26UC6Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3a.google.com (mail-yb1-xb3a.google.com [IPv6:2607:f8b0:4864:20::b3a])
	by mail.lfdr.de (Postfix) with ESMTPS id E65F37F1CB
	for <lists+clang-built-linux@lfdr.de>; Fri,  2 Aug 2019 11:42:43 +0200 (CEST)
Received: by mail-yb1-xb3a.google.com with SMTP id l2sf44860508ybl.18
        for <lists+clang-built-linux@lfdr.de>; Fri, 02 Aug 2019 02:42:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564738963; cv=pass;
        d=google.com; s=arc-20160816;
        b=F5keM1nl8f+tBr/P1+GRZIdCyF6y5KPENZXJAnA1Py9MQ8izchB3ENAz9gCwX9SYWH
         jiEnlvARvnEokTTiODzmzcx8ixkEgH/vhyvRnYPwPslXlRbGS91gYkvusbksYtqTq96h
         BRl3icFN9YGMEAGG+pg1mraMNo9C4QSanYS74Qo+dJBFaOvNUhCecD+zao6u+XM2+Fk5
         XcfYiEjXwJYXWVWLvqFo/s5z4/JJ2Ozts0WxY5eJw7wooaJL9IU6L1sm5IgC0zdEI3ll
         LvSzu8KiBLeGZGCZVVUeO8NGMDIZyGsicnGQx503XV2aHaAz4UKZ1vM/I5TnC1o0Mfcm
         xIjw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:message-id:date:subject:cc:to:from:sender
         :dkim-signature;
        bh=iex8DsNopWaadltz/fZ/vkoz37Haa330qzxLsJ8RFSY=;
        b=O3vk5uWyWSS49AqdKs8YfAw/4lS2zim+tnRdd9QenumkV7VxenndE9obO21V+JRCYv
         qMat9QoiUCcgGefOeaTPHYgMuMrZTnTBXOLnTAIe/lvkBjsHMOAbz24n1AB0X4RpF0E5
         vRbSfN+EdHNyrhfRdkwiH/PmXzI/dVaW7tCm019y78TmIXIlkpuZeHexgWnyfDBS7s+F
         MD25BhoUrIpNDwRXEEQ0YXw0IZ1uZv+JJIowynysrWRNdUg4CrJ3rf2hs0+gE4vHYyPp
         2Jy1PGE7X+BKXgBpQNXT+jh1+8/Ji9Qi90b5/QhYJcuT5172zg1ITMjt080N/oztT3Vt
         rd0A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=BCWdoUGm;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=iex8DsNopWaadltz/fZ/vkoz37Haa330qzxLsJ8RFSY=;
        b=AgjrxNEfguhmlYVnBQWblmKe+TxOAmhbRk8tGIXMbmG4t8javeor4AEk9CQ71KPTHA
         ON4fLTgRbY0JQelARLcujBLNOOntsj9HYMT44QptgA7gY6/1jmGu2//d27N+z4JVHVKm
         omlaACZLPYlBq7jh9oYrC4GvJrc5+HxcA72AGJITh9iJRhvEmFoO47+cusDNBGgaYrjl
         Eu1CWhP57GOEezg8YbZPdo8P57Fhsx7y7vcX8YyN6x5GWSB+DTnMgRsQlvtvExOvNp0w
         kcoTA6Y7LPyZaOdLRyUaxViTWuMshuNzrf/oZoWN3gGWdHnxQ3oUipi+PYWNqpfUddqd
         yKbA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iex8DsNopWaadltz/fZ/vkoz37Haa330qzxLsJ8RFSY=;
        b=bI3pakjHI01yjIW2si5XoWaIt1nEIZ6ztJYjx19PG/tK9Ks09d5Q7dSnTa/vLLKNCH
         4pF/RhilNl8zvDXAjHG1YeaFczXO1BVKGtnP4XK9XlnIZQo9dXkHlqqFb07ywghZC9tX
         8djs60VAGMRKyewC/EjlOHDL0Be7FC5WgBAnYhZ97sPxtClz8DHkwVL6tO0gYeEMhAsV
         brEHJ7QWH7zkpr4pDPGRc0EgBunwnjS4uoDZoem4oAuSE4T2dFTkKoI848lJEvNQSX/J
         xTb3vdHdyWbfkhVUfK/gb+oIAuXKdnGqnnoAMAgu/wC6dd4n5RY2o9VWmQgNI1h219Mq
         RR1A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVTByQOAtpFu7Va6EFBT2gXqYqNQGHzB5OXvv7E9YWi0kW10i9F
	k4iQmrDCYYp0MPwE6v80Yx4=
X-Google-Smtp-Source: APXvYqwM9fCfI8ZyBl7yquc1g4SSv2w2ytgotqeptxK/t8aw6FpVYsH3arXJ1VQtodZ/ap+MLfFNKA==
X-Received: by 2002:a25:c744:: with SMTP id w65mr56901576ybe.422.1564738962806;
        Fri, 02 Aug 2019 02:42:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a81:7805:: with SMTP id t5ls12877726ywc.8.gmail; Fri, 02 Aug
 2019 02:42:42 -0700 (PDT)
X-Received: by 2002:a81:f00d:: with SMTP id p13mr80221460ywm.255.1564738962543;
        Fri, 02 Aug 2019 02:42:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564738962; cv=none;
        d=google.com; s=arc-20160816;
        b=NHrFrgYa7fNJ8+DlJSzRvDMOZbyRofUchCLWFYcRQqflRVepfMN33UAQ4EIk3NoAh+
         sSFdgkiO46WTnVEc4epO3fvTLFugzAnZSrn1epzsnXR0bYjZUSaBmj7VhTcSKD15OCPS
         ylbDDi9lkGRlWjgRvGKFC7G1SCZ8WhHbeDXJDt9lLVqpUpenJuytaVbKMa4dmJw2KFGQ
         KcoWNdUmBWT/yiRn5K3oXW6yCYrHwxijujpzwv5QgE/3NIQ9qjtCD3bHYsq0BiZRgK+W
         Ik2xqQnKUaDu0FecptW3N7qcZ8lcC8GALMv1bx6LL4OdtDsxW+XQiiJDjaxI+GQWOmwt
         i3+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:message-id:date:subject:cc:to:from:dkim-signature;
        bh=iLX+E8hHKeRBW/jKLDKPbkJAwcS4tJ9mQCW96NiVUz4=;
        b=na0qCE+akBF7g37MtfQeRjybH++SreVuCb1d4U82CMjEdNbsedgJ3zMAvMEBTlS6IW
         s+F8t1dvOcBpcz1aV6d6gR/Vx1eotfyb7NLxMojEMjeSxkqFTV39uP2c4NwVIuaIe0FJ
         9iMdP3uMWOLtlyKMd+Nme1CBUHPS8CE1et9cdxfUE/lhdjshhOgLSTXdzokohBC6g3Us
         iCh2PTSwkku0pQrHOmIAbIDrLjGq/PuI1Lr8mPfD79XKuF2t+Zxv3fJRyzL+lTGiLrf1
         Y0f/5PsZ/WnnHZIVd8ce2rM5DL7eny+yAopgypC2uLtpPRBDB3Q8l/A2W4/96paHH1EN
         OQxg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=BCWdoUGm;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x5si2393048ybn.2.2019.08.02.02.42.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Aug 2019 02:42:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 2673D20679;
	Fri,  2 Aug 2019 09:42:40 +0000 (UTC)
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
Subject: [PATCH 4.9 048/223] timer_list: Guard procfs specific code
Date: Fri,  2 Aug 2019 11:34:33 +0200
Message-Id: <20190802092242.029786337@linuxfoundation.org>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190802092238.692035242@linuxfoundation.org>
References: <20190802092238.692035242@linuxfoundation.org>
User-Agent: quilt/0.66
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=BCWdoUGm;       spf=pass
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190802092242.029786337%40linuxfoundation.org.
