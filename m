Return-Path: <clang-built-linux+bncBC2ORX645YPRBKNO7H2AKGQE6NQYQ3A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3a.google.com (mail-io1-xd3a.google.com [IPv6:2607:f8b0:4864:20::d3a])
	by mail.lfdr.de (Postfix) with ESMTPS id D644F1B1B96
	for <lists+clang-built-linux@lfdr.de>; Tue, 21 Apr 2020 04:15:06 +0200 (CEST)
Received: by mail-io1-xd3a.google.com with SMTP id k1sf10358825iov.18
        for <lists+clang-built-linux@lfdr.de>; Mon, 20 Apr 2020 19:15:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587435306; cv=pass;
        d=google.com; s=arc-20160816;
        b=ScypTFnjZgYd4w9xEjjSqf0tuhy9KoJc0CkWPYo5z3GxXyP2AkyaHGKyeH1Vbow3HU
         NzDW4fGQNffBdGT3L+xwulbLOEbVwgC8nm1WkCnlYyhYGw7G5L7Vo32m+cM+jWrA8Ua/
         1acgb793Ypk4lS8eRTk+QtCvg1KG+L309ghPqC/iM9y4U4txV66OUF4C9VoL5tawhSfe
         Ls6J3BhhoYAIcTVhI2ADIWcUdFM58lz0bhs/+zkXhwLiY/01eZJdasVVqdsZMJwtV8Y4
         WiVYqp7pUqDQC0FmZn0s+awB+KjHzUrQG4c8CpMxrhslzIDHhmdfnYaaShvqaiybndgg
         xdzg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=Lviag8OdT/wrz9/Yimf339q2B4Bm4AklPNEtUa/oOYc=;
        b=amVjM2LsYH+Q12TMKxxO8TpYousE3calaRuZ9BRiT9QMDbvvLTQjZAxKmbLbBVIEbR
         q9XCYC/LZ2/2bgFNr28u3h/0FTH0muhs7JdvF9cS1UVBlestEv1cloq7/bcmM5IWHpJN
         LJcZtbYmNk21R8d/sT3oeRwm6dEuFKVesm9wLOHLQAr0sdpQ7jq0osHc8MNC79oL3MDK
         0YtQkE7f/cZYtg77+m2nhwKyWceHBqsDCsfVoSgBJzVvDJW2v+AXrRi0ypx2R9p/meFp
         W7TcLWF2RbwoEq+MOJQ993+6JC2+pKJSmV8LbYB6WlAOvrXOn1pZoer3pF2TA8psYjaW
         2uig==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=NsWMsy0t;
       spf=pass (google.com: domain of 3kfeexgwkaes5nzv61y8n0r0t11tyr.p1z@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3KFeeXgwKAEs5nzv61y8n0r0t11tyr.p1z@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Lviag8OdT/wrz9/Yimf339q2B4Bm4AklPNEtUa/oOYc=;
        b=mJqSeDHdJKBsCwZdB0CdQ2kVrnNk0LLwYxXRYvZRHWAdOYY4AoAgm3SwNmF5CTM7Na
         WgX0HCh8tmNEEPenFQ8Is4ZFuPSJSQCMh/M1mCUWCzVAjQ7wiak7EViRBosE9oCD5qb1
         2GRuLz01PK75x6hast5M56GfG76He8989Ky7JqM+W7ZbZjVGfl93gKAzx0+2Jlq0Wvv3
         7KLGkO95OKI549CqoMt4lkO9LKJWZ6eTEeMNe5CoS6MQgYrXFlkIJyB/7lDx3uFWMvtj
         wJCwH17xK4djjHOA2w1PledogOdujZa8K2muo1ry1bp7yPhQoIu8+8hIX3zmO+mQvL3/
         b1mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Lviag8OdT/wrz9/Yimf339q2B4Bm4AklPNEtUa/oOYc=;
        b=nC2ZTBqGoSL4JWet2yKk0YFWcD2vkLFKleynT2CjayuVRDugsrQ0J10S9BnfHSgECE
         /XSu/nlaDhSVjNEsTcYWQ5xSD73tYUtZqtSxYcorEffqdWYxVApCvLJL3t/S4Of7JgRb
         wcnwzLeR0C2Psiusnqp/nEB/YDA6fEKAPp+014MVFsk5/JJgjb5cDkmUPyX/5xi/bwMB
         BwMapxDOba3CkfqpjkfHNwcuRKqoHwnppXTYkzvkjt3KhlFTaPApxwd1aMMMJANqIamL
         e3dkgf7FQ+pNNNZdJGVLUBLVhfYzfnwg5NZzTEBTp+LCIxmP6z6ZTzkO3d09qL6r87y7
         B4pg==
X-Gm-Message-State: AGi0Pubt5G3hlk66ieyoZsWEqrmn1QHT88FiKq7j+5TeOo6Tjw8wD1tI
	P/PmxcDZaVxBq/Vzgk7+oa4=
X-Google-Smtp-Source: APiQypIdwjv29/eJ2N2ihyrlF6D9m1hrbecLib08j6eW0ILATvIGz2AoNE64nNlihs35bJbAP9oBMw==
X-Received: by 2002:a02:969a:: with SMTP id w26mr17984252jai.71.1587435305689;
        Mon, 20 Apr 2020 19:15:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:ce4c:: with SMTP id a12ls3149563ilr.8.gmail; Mon, 20 Apr
 2020 19:15:05 -0700 (PDT)
X-Received: by 2002:a92:8f49:: with SMTP id j70mr18165819ild.117.1587435305114;
        Mon, 20 Apr 2020 19:15:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587435305; cv=none;
        d=google.com; s=arc-20160816;
        b=XwbkA5XNJ0DuxFx4IWrt8L/yXJEze7ao73qGKlA25JS74QOs6y/z4zdv82gUgcMyww
         z/oj3nedFUXpZUK5och4c592Z4tFVySXlBvVtDaH4QDHFeejOfS98T2ejBd75WLv0Lo1
         oOBQN5SjTcHAqLYCyE0YWDmlhWvwmMxhzh0brrOhipbM5HK02QS7M6Kx+HXSpA4F1tNa
         eB9ViOIa6GHLKonFFkJBwqI7Kbl8zvFEfBmWvZyqCiwuAI2ksEXSRhtkaEUWpvGB8o50
         xAyKGCINqGw36GZ16qNDxRBH77kW0hbPgwTcYDpfby3ZwHcMRn90rkds4ClQ1r38vz9R
         gfyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=xI7CPVWDT3QMUi6LNO2ihZsKVC6mOuE8D9NTHDoSwRg=;
        b=LNWAYDqKexTX0hyOC3qPN1NDxld+1lgj2jc5YmJFS1Qkz++zpicogfmuu8hlTt2V7/
         KKlYTBpXsvNWbERr0LaJ9ZbLyKkgNjQUqgVHP1m+tXLHOtNn6HujbLKJyHIdHlL2+ihz
         7+DTA/C2BIUVhGBxpN2PaT25iU4jw7FlvgoK8Vo5z4qxd7dAGNfDx0GuugWS5DAIhd7Q
         QtPT27OvTnMB0KG3LkQDGy5Bvh3uyHCKhJg2b3jR3rcKjUiM7tr+lGaBmRRstHx4c+Lg
         HhG/NR5cfRTNnKUVc5Bw5CLdGWwJRITUHBiPKbQL6b8BTgJUGqUuBON+jGOQQe4Ee0Kg
         +7ZA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=NsWMsy0t;
       spf=pass (google.com: domain of 3kfeexgwkaes5nzv61y8n0r0t11tyr.p1z@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3KFeeXgwKAEs5nzv61y8n0r0t11tyr.p1z@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x54a.google.com (mail-pg1-x54a.google.com. [2607:f8b0:4864:20::54a])
        by gmr-mx.google.com with ESMTPS id o6si121884ilo.4.2020.04.20.19.15.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Apr 2020 19:15:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3kfeexgwkaes5nzv61y8n0r0t11tyr.p1z@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) client-ip=2607:f8b0:4864:20::54a;
Received: by mail-pg1-x54a.google.com with SMTP id f14so11770882pgj.15
        for <clang-built-linux@googlegroups.com>; Mon, 20 Apr 2020 19:15:05 -0700 (PDT)
X-Received: by 2002:a17:90a:1f4b:: with SMTP id y11mr2841747pjy.136.1587435304444;
 Mon, 20 Apr 2020 19:15:04 -0700 (PDT)
Date: Mon, 20 Apr 2020 19:14:44 -0700
In-Reply-To: <20200421021453.198187-1-samitolvanen@google.com>
Message-Id: <20200421021453.198187-4-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20200421021453.198187-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.26.1.301.g55bc3eb7cb9-goog
Subject: [PATCH v12 03/12] scs: add support for stack usage debugging
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	James Morse <james.morse@arm.com>, Steven Rostedt <rostedt@goodmis.org>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>, Mark Rutland <mark.rutland@arm.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, Michal Marek <michal.lkml@markovi.net>, 
	Ingo Molnar <mingo@redhat.com>, Peter Zijlstra <peterz@infradead.org>, 
	Juri Lelli <juri.lelli@redhat.com>, Vincent Guittot <vincent.guittot@linaro.org>
Cc: Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>, 
	Laura Abbott <labbott@redhat.com>, Marc Zyngier <maz@kernel.org>, 
	Masami Hiramatsu <mhiramat@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Jann Horn <jannh@google.com>, Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	clang-built-linux@googlegroups.com, kernel-hardening@lists.openwall.com, 
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
	Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=NsWMsy0t;       spf=pass
 (google.com: domain of 3kfeexgwkaes5nzv61y8n0r0t11tyr.p1z@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3KFeeXgwKAEs5nzv61y8n0r0t11tyr.p1z@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

Implements CONFIG_DEBUG_STACK_USAGE for shadow stacks. When enabled,
also prints out the highest shadow stack usage per process.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 kernel/scs.c | 38 ++++++++++++++++++++++++++++++++++++++
 1 file changed, 38 insertions(+)

diff --git a/kernel/scs.c b/kernel/scs.c
index 7eea2d97bd2d..147917e31adf 100644
--- a/kernel/scs.c
+++ b/kernel/scs.c
@@ -68,6 +68,43 @@ int scs_prepare(struct task_struct *tsk, int node)
 	return 0;
 }
 
+#ifdef CONFIG_DEBUG_STACK_USAGE
+static unsigned long __scs_used(struct task_struct *tsk)
+{
+	unsigned long *p = __scs_base(tsk);
+	unsigned long *end = __scs_magic(p);
+	unsigned long s = (unsigned long)p;
+
+	while (p < end && READ_ONCE_NOCHECK(*p))
+		p++;
+
+	return (unsigned long)p - s;
+}
+
+static void scs_check_usage(struct task_struct *tsk)
+{
+	static unsigned long highest;
+	unsigned long used = __scs_used(tsk);
+	unsigned long prev;
+	unsigned long curr = highest;
+
+	while (used > curr) {
+		prev = cmpxchg(&highest, curr, used);
+
+		if (prev == curr) {
+			pr_info("%s (%d): highest shadow stack usage: "
+				"%lu bytes\n",
+				tsk->comm, task_pid_nr(tsk), used);
+			break;
+		}
+
+		curr = prev;
+	}
+}
+#else
+static inline void scs_check_usage(struct task_struct *tsk) {}
+#endif
+
 void scs_release(struct task_struct *tsk)
 {
 	void *s;
@@ -77,6 +114,7 @@ void scs_release(struct task_struct *tsk)
 		return;
 
 	WARN_ON(scs_corrupted(tsk));
+	scs_check_usage(tsk);
 
 	scs_account(tsk, -1);
 	scs_free(s);
-- 
2.26.1.301.g55bc3eb7cb9-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200421021453.198187-4-samitolvanen%40google.com.
