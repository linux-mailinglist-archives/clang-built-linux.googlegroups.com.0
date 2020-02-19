Return-Path: <clang-built-linux+bncBC2ORX645YPRBBHZWHZAKGQECCSS3AI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x439.google.com (mail-pf1-x439.google.com [IPv6:2607:f8b0:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id 0593716380D
	for <lists+clang-built-linux@lfdr.de>; Wed, 19 Feb 2020 01:08:38 +0100 (CET)
Received: by mail-pf1-x439.google.com with SMTP id e62sf14272444pfh.14
        for <lists+clang-built-linux@lfdr.de>; Tue, 18 Feb 2020 16:08:37 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582070916; cv=pass;
        d=google.com; s=arc-20160816;
        b=dV68+4O9rppyk28cpHtL0mKpqATNiXafnV10CC+bNrdJqymThu1RwSlB3O50FMjIAH
         kIhm1zyBoBoNA+vPVyPe1zSR3qoU3SMGODazjt+nkhqDi+PgBmsqWaA2k61kr2gIi2o5
         9WkjSa8DYujGCpVOzCP+codFQKnbBgO97+LM4dd6/YRPeJkxenYMI0FujJCHJ3ypQdg2
         +Zw7gJu6rB8PhdXaMdZOGN3hvNmV+jsCYae9NGkSkSMmmeycC+H3aJ/pQjEZ4/ibIoPj
         RUBBI5BK2pXjgoBManzjKlvlmbOS/n1ErRgmywQO/VSOjNGyEgWY+F16W3yWPSR62E4b
         4UTw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=f1sFhxJ53UGT4RNS2bGp4KQV3WDLeDqafSkpagSs41w=;
        b=JSpV6lU3u9oKxSpccctx289prjT0Vvqaj2e3MQoSAtFtwBFsyAQZBXNNuUH6v1RkZM
         zz4lgzWU5/bcCTQdqjj7GLl8fIOeAEKv+O/8OD1I0hJ7wYpnA5nWMFC0zZtUeE0BhOJT
         kTzI57l6if3fH4cC3UT4Q0t7DCSikGO7TUoStd58rhz9ayoqeWBFKKDUTsDeWqCGcAQo
         s08UgmyMSUq5omXhd9hyxWv24/xCjNAgId9xVmznPBil822EGqp9S7rbb3Tz/pirjsS9
         sbzx53kF3sBV+e0u+iva7JWW/vJmJ0ItMPvst4pKfbIOIi9KzpS1gQNL3lGevlDfp7eB
         3fUw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="cu/THgoI";
       spf=pass (google.com: domain of 3g3xmxgwkakyygsozurbgtktmuumrk.ius@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3g3xMXgwKAKYYGSOZURbGTKTMUUMRK.IUS@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=f1sFhxJ53UGT4RNS2bGp4KQV3WDLeDqafSkpagSs41w=;
        b=daAOUUraoQgmXtvuLmlvXUBK4sX9oOBMeOVnf69BH8YOwVVbt2Q+EDdRGgON9iWpfJ
         W2pgIYBrWUlH+el8K3G2l47Rp6aiY66EwX38IZX4NeIgO+Q8F2IKM6k4mickff9G4kGt
         ltbDqin0OemRq+NVOXsbTkRKH2ymOvDCn0fBy3ToWp2zZ3J30yuiuWMOLch0TqZZvC3a
         GbAKp8kPR7yLKH623ra/nfzADZljM6wZ5sU1w+WPebGrCJt21TShhAOalw8LNHJLmO5A
         qvyhz7ohpdSVLTQWRtCoBGX2yAiFPsNVnofMXWHtplokrbagdEz9nd1VZOxiDUxDC3A2
         7eNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=f1sFhxJ53UGT4RNS2bGp4KQV3WDLeDqafSkpagSs41w=;
        b=bBLczETrBw9IFmoghzjf5/Y4akUtbmkUcOgEnU8PnKYeooJs7N2uywjS9c/EGh3ldN
         H296/9n9ouFRx2U4NItsuQ5EJWU2jbt1H8T5ssfpptRh3HkLa4tbdeb/bSwm2jqt1Tzo
         /0o7UZMGzQvL8NsAxUO9oeu2K8m3S6xRCRBQEWL9iy0PEeHq9L/r6zn6ulTTzZa4vK3b
         o952D2UtEQBadq85xKXFAHhPyHLL0zvBqv3eUqn1MQwnOrYRvvTr8WFyxZLkWshJSctk
         GJaXBIvfzRI6FuJZZWEtJEHDWzWUVCkSyVEYTvXfhYt7/Of39lBYdGKV3imjXxYcOp/5
         5mtg==
X-Gm-Message-State: APjAAAWAEKw3IL5gdz6rNO/uIZ/s59Ev9Lz5bgOzmuzsEyN7IFvJOOkt
	Sq8pm+l0jyZQuiXENvs7Rgc=
X-Google-Smtp-Source: APXvYqwD8XkLJw0q1bvfrYoHnUf/SX8wGDRwyWdUnMopSqTSNWLg2aGRS9lvNn3qAWqw932B/5krYw==
X-Received: by 2002:aa7:8181:: with SMTP id g1mr24213726pfi.215.1582070916696;
        Tue, 18 Feb 2020 16:08:36 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:9887:: with SMTP id s7ls6563756plp.9.gmail; Tue, 18
 Feb 2020 16:08:36 -0800 (PST)
X-Received: by 2002:a17:902:302:: with SMTP id 2mr23803089pld.58.1582070916232;
        Tue, 18 Feb 2020 16:08:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582070916; cv=none;
        d=google.com; s=arc-20160816;
        b=piBLJzEWG3F+3lwOD2xJRPQs6mWwvlXsGiVFbG6aoJsVZ6OaKzvgBFjpsJ6GTPjn5z
         Avl6PH1oLoh3FMFUYnwchk52WmS6OCnhHrgnNSblJ4iQHALAVKljxXe9GXCQFSULLn8d
         I38T9ZsOwrgtL0r5Pni3D2oR20neMMdb4cHSYuyK3cFcaFIzhlD3Plls+cb/kb8WzI00
         xtVIrsdd74uy5r5YRhdk/pHUh7LUsNlLJaNwYQ7ZO3oWzICkHptMZLoHZOmA9SA+1WaV
         6MChKBUUbSjzZLPU8VDVtIc3ynhiEACihkX3pvgpeeTmBgGiMKEATLVp5MM+KMqFAi17
         QNvg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=0f/RzoyEatytyatThC+F3eOfN2v+QCCQ4NfkPjtyieo=;
        b=PzJ34kX7b5As92t14mB+JUBXK+neL4YBeYo2CRDMe7MvaTQAJm/u8vo/9ZaZz6iUm1
         DYM1T1wOS0U24WH/Ou3FoanxAIIk28QICkyZsfHWxTfhgS4hzYlezo5JzIbrnzzhvKu1
         1BWe5C/YeNKKbepx3VzRxGmAg6TkjnBFezCOeEsKbSnPXZ0zAl/ZmMWQABFY/M/JOPoM
         rlA2zgTui6GwGV8uxD5ELa/OWVoaajAHGyjL7oA51XD4IdU308CU8bHWAPTR/wfzD12Z
         O4ggEz+XWw+HMAOg1eIilx6MsBubsw8XVFdCY8PAjM3SMkBJK4meXG9uzjQRqGq4afJJ
         fuXA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="cu/THgoI";
       spf=pass (google.com: domain of 3g3xmxgwkakyygsozurbgtktmuumrk.ius@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3g3xMXgwKAKYYGSOZURbGTKTMUUMRK.IUS@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x849.google.com (mail-qt1-x849.google.com. [2607:f8b0:4864:20::849])
        by gmr-mx.google.com with ESMTPS id a5si151558pjv.2.2020.02.18.16.08.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Feb 2020 16:08:36 -0800 (PST)
Received-SPF: pass (google.com: domain of 3g3xmxgwkakyygsozurbgtktmuumrk.ius@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) client-ip=2607:f8b0:4864:20::849;
Received: by mail-qt1-x849.google.com with SMTP id u40so13955809qtk.1
        for <clang-built-linux@googlegroups.com>; Tue, 18 Feb 2020 16:08:36 -0800 (PST)
X-Received: by 2002:a37:4e89:: with SMTP id c131mr22333834qkb.5.1582070915273;
 Tue, 18 Feb 2020 16:08:35 -0800 (PST)
Date: Tue, 18 Feb 2020 16:08:08 -0800
In-Reply-To: <20200219000817.195049-1-samitolvanen@google.com>
Message-Id: <20200219000817.195049-4-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20200219000817.195049-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.25.0.265.gbab2e86ba0-goog
Subject: [PATCH v8 03/12] scs: add support for stack usage debugging
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Masami Hiramatsu <mhiramat@kernel.org>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>, Mark Rutland <mark.rutland@arm.com>, james.morse@arm.com
Cc: Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>, 
	Laura Abbott <labbott@redhat.com>, Marc Zyngier <maz@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Jann Horn <jannh@google.com>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, clang-built-linux@googlegroups.com, 
	kernel-hardening@lists.openwall.com, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="cu/THgoI";       spf=pass
 (google.com: domain of 3g3xmxgwkakyygsozurbgtktmuumrk.ius@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3g3xMXgwKAKYYGSOZURbGTKTMUUMRK.IUS@flex--samitolvanen.bounces.google.com;
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
 kernel/scs.c | 39 +++++++++++++++++++++++++++++++++++++++
 1 file changed, 39 insertions(+)

diff --git a/kernel/scs.c b/kernel/scs.c
index 5245e992c692..ad74d13f2c0f 100644
--- a/kernel/scs.c
+++ b/kernel/scs.c
@@ -184,6 +184,44 @@ int scs_prepare(struct task_struct *tsk, int node)
 	return 0;
 }
 
+#ifdef CONFIG_DEBUG_STACK_USAGE
+static inline unsigned long scs_used(struct task_struct *tsk)
+{
+	unsigned long *p = __scs_base(tsk);
+	unsigned long *end = scs_magic(p);
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
+	static DEFINE_SPINLOCK(lock);
+	static unsigned long highest;
+	unsigned long used = scs_used(tsk);
+
+	if (used <= highest)
+		return;
+
+	spin_lock(&lock);
+
+	if (used > highest) {
+		pr_info("%s (%d): highest shadow stack usage: %lu bytes\n",
+			tsk->comm, task_pid_nr(tsk), used);
+		highest = used;
+	}
+
+	spin_unlock(&lock);
+}
+#else
+static inline void scs_check_usage(struct task_struct *tsk)
+{
+}
+#endif
+
 bool scs_corrupted(struct task_struct *tsk)
 {
 	unsigned long *magic = scs_magic(__scs_base(tsk));
@@ -200,6 +238,7 @@ void scs_release(struct task_struct *tsk)
 		return;
 
 	WARN_ON(scs_corrupted(tsk));
+	scs_check_usage(tsk);
 
 	scs_account(tsk, -1);
 	task_set_scs(tsk, NULL);
-- 
2.25.0.265.gbab2e86ba0-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200219000817.195049-4-samitolvanen%40google.com.
