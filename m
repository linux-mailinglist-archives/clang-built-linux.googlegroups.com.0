Return-Path: <clang-built-linux+bncBC2ORX645YPRBIUDTT2QKGQEV4UJQZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x839.google.com (mail-qt1-x839.google.com [IPv6:2607:f8b0:4864:20::839])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E0101BA97D
	for <lists+clang-built-linux@lfdr.de>; Mon, 27 Apr 2020 18:00:37 +0200 (CEST)
Received: by mail-qt1-x839.google.com with SMTP id x7sf20888890qtv.23
        for <lists+clang-built-linux@lfdr.de>; Mon, 27 Apr 2020 09:00:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588003236; cv=pass;
        d=google.com; s=arc-20160816;
        b=jloQXkhWhpfrXRBTgrpGk/TwLb9FiyvB0bx3KUHJ+Oj49KEZ6LLvV0zUUQ1MN5plD5
         JdnymuavQJ6Viys/VEX4N+AxMqSw82lH098OTA89OwrCLYx0b6htnhegPazH35NdgBUI
         lszPsZ7EmNss1eqa2pB6rFDYpM7K0765a9HsWAZ0tuyOr8rYRromIuxDIQu2xhlif4wE
         WKP9HQ0e45ABcCKu5nwPzNeySlIFG/GoekTCunoNTnEPsnYOwEKSQ9rTQ5DnccDRDGuz
         ueMDg0hdT18lQ51GPJ+njfKqYOfxIevHRu3CENSsTo2fzgXnK985eGnfcJ69wNcufAK2
         yZdA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=9qw/nEUgkec1I//6BYlolJzmaes3PP0cA286gnYJLfw=;
        b=CGTCnrePp1Ax9H4B+p3410iYVNp2W+85BluiLQcKYvkJw1XH/JnDanbsXMp0/T6/rC
         PoZSwPdlrYNTrV+X2kVfdoq19PBR3OsvhIvuSddgosGK9M1FsXVyapxbOWNZFvAnklWq
         v21m5ieJG82zspdDzMdIFwkvvltDVtWp6eIcm9Jj+YUJIVPG2HoIDgtrx/hw708gs59s
         GBLYT7L2cyMdxvVXk12cWcArvJAczWUMN1TNZB8fcXy8QFGbRZW63OIUyOg3ZyUp8NBN
         xKjkgb/UkN5lKaR/qBQ6ZpuUd5kxImkeB+jzIVvVZVLXhGiujs+D+BqXM03/zUFvfwHR
         g0Ng==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="LKPo6Bc/";
       spf=pass (google.com: domain of 3oagnxgwkadspxjfqlisxkbkdlldib.zlj@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3oAGnXgwKADspXjfqlisXkbkdlldib.Zlj@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9qw/nEUgkec1I//6BYlolJzmaes3PP0cA286gnYJLfw=;
        b=XzWkIDNW9RVxAEDXRF2fLrHWnfz+u8n4Y1fy0blA5ofR2aiZ8IjzckCix8NcSXUCMS
         rR6owb4sHPf6A7l0liK0xKmg3sGkDWx7ew5dSMct4YEqnQPTssWHrlaDs0V/gPy6Xfqg
         4XjAm/TlSRIvrS4KbzD6yEZTJ1ooWir4J7wsyZVmO1qXWLypPDFiuOfeqsjC7SBo4S/M
         8fZY18Cxl4zh3l2TkabyBAqagSSDl/MBNLFb4A+73UlWVx+6kDab1b0l8wsz1wuguFS4
         uC/ZR/DXzLTQlJvKS+WqQpx2zjiI9b7bv8WqbD20BqHniQ0am2r3w5nffCqfHBMy99Qj
         //MQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9qw/nEUgkec1I//6BYlolJzmaes3PP0cA286gnYJLfw=;
        b=BezNL7uRUiD0PcqJsBkUlGxjsXRT1Px3k3D+sdzTgjniiBo0w2FGxVC/qQqWxTrSgU
         jI+c0yil6iJVob5aXqdWAQWAujHmXlWX2+1okNy8jvhvQoyYeM1B+UDw4Pd4adcLqtDW
         Gv1EeeIsbhytiz7oGzV69/lnsSc/l1ghC16teeN+lBVSYD4TOBRmtL/eyRYO2WG+bF6n
         0NtUv/gL2bt/s72OrLY6u7R+ZjN8EwS+K6XfJ4S5NzBRXOAAkrTRDh6xprNtLrsyqvwX
         HXz5Ul88ioTJ6Tg8AxxRsyd+RpbZiolV2Hy8J3QeQ2jRabw3cVsTv+7YNAaZ8Nw6ovbn
         ckaQ==
X-Gm-Message-State: AGi0PuYOmrs06FfeSRkxe4bBwFhnbs/GumPoNujx/R/h+Ke1WMcFBii9
	6S/zZFua1D4bj8dH05u32xs=
X-Google-Smtp-Source: APiQypJ9xr4OlCPuYejiM9ZMNZSLmG90CyHaBtOI+XKg9vnJ0yJ72imWbQHs2mNigLY90q5dTIQusg==
X-Received: by 2002:a37:30b:: with SMTP id 11mr22062864qkd.418.1588003234669;
        Mon, 27 Apr 2020 09:00:34 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:468d:: with SMTP id g13ls10777525qto.11.gmail; Mon, 27
 Apr 2020 09:00:34 -0700 (PDT)
X-Received: by 2002:ac8:4d06:: with SMTP id w6mr22982762qtv.180.1588003234113;
        Mon, 27 Apr 2020 09:00:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588003234; cv=none;
        d=google.com; s=arc-20160816;
        b=jYsB3OetGrzVYBoqmhqcNMfmjcaRNdJkFwkzVerUqSpVEjxFcXVD8HhAaXeeTy7GW7
         iJKfu4aQ9cY7kcB6W1YQ76br3vuSXfAqFEs/JUXDDfh9IggDbuyF2LU1M2F8+3d3Dqnx
         Z/gHgjH1ysOul1fKC5bnGh5jsSB1U/owKM7OV02VGfDIn0A35YUpy6waceRlE1Gh9WNd
         v/OCykjSIjarex/288E2wW/qON7rar+WHlORBi4VCjIPYltE9sGDQOB3/2bnnEDnSFB9
         zSMYaPTwMyVNagQJmSZqHIVX6E8Ek6rklqmry/4mRhWYFwl0CMQNMWdLqfffpqTbhaTz
         PYMg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=kikYfFSTfca/HkjJiT4VwZFMKgohIqKorfyIql1wDNc=;
        b=wjvx4jiRLEnd7t9xAzXzZhdEXK0cUjkienuoD3EMIq9Gn6K7YvfHKcX/agXins5F7p
         Foo1sINxh+n2bkMwsCIt1r41n7Ji5JfUC1IKCuQGUWCxttplEj/A6u4kzOkZiYRloq9T
         /yYyA0AV9wg3bVDXhPNox3D3VSxNg9g87qlj6VoTwtaJO4NWe6dC4xdKYU3ksydPl4LI
         ngJ0JzATrz88UsEtF2WIGVs9/wmqpXhIOgYUl2TkjsBd4G66Wl8JPJM5tmDKowg//NRd
         MVubvVTpf3/mv99EwEUmZ2+eEkCZF8IOkicDxZWgYuBIJjjWxeCfCVdPGkCmcyqx473/
         Mabg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="LKPo6Bc/";
       spf=pass (google.com: domain of 3oagnxgwkadspxjfqlisxkbkdlldib.zlj@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3oAGnXgwKADspXjfqlisXkbkdlldib.Zlj@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id h33si978891qtd.2.2020.04.27.09.00.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Apr 2020 09:00:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3oagnxgwkadspxjfqlisxkbkdlldib.zlj@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id k197so20823356ybk.21
        for <clang-built-linux@googlegroups.com>; Mon, 27 Apr 2020 09:00:34 -0700 (PDT)
X-Received: by 2002:a25:ddc3:: with SMTP id u186mr36888616ybg.383.1588003232559;
 Mon, 27 Apr 2020 09:00:32 -0700 (PDT)
Date: Mon, 27 Apr 2020 09:00:09 -0700
In-Reply-To: <20200427160018.243569-1-samitolvanen@google.com>
Message-Id: <20200427160018.243569-4-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20200427160018.243569-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.26.2.303.gf8c07b1a785-goog
Subject: [PATCH v13 03/12] scs: add support for stack usage debugging
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
 header.i=@google.com header.s=20161025 header.b="LKPo6Bc/";       spf=pass
 (google.com: domain of 3oagnxgwkadspxjfqlisxkbkdlldib.zlj@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3oAGnXgwKADspXjfqlisXkbkdlldib.Zlj@flex--samitolvanen.bounces.google.com;
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
Acked-by: Will Deacon <will@kernel.org>
---
 kernel/scs.c | 38 ++++++++++++++++++++++++++++++++++++++
 1 file changed, 38 insertions(+)

diff --git a/kernel/scs.c b/kernel/scs.c
index 8769016c714c..2a96573f2b1b 100644
--- a/kernel/scs.c
+++ b/kernel/scs.c
@@ -68,6 +68,43 @@ int scs_prepare(struct task_struct *tsk, int node)
 	return 0;
 }
 
+#ifdef CONFIG_DEBUG_STACK_USAGE
+static unsigned long __scs_used(struct task_struct *tsk)
+{
+	unsigned long *p = task_scs(tsk);
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
+		prev = cmpxchg_relaxed(&highest, curr, used);
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
2.26.2.303.gf8c07b1a785-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200427160018.243569-4-samitolvanen%40google.com.
