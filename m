Return-Path: <clang-built-linux+bncBC2ORX645YPRB2NX2XZAKGQEYRLSPPA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3d.google.com (mail-yw1-xc3d.google.com [IPv6:2607:f8b0:4864:20::c3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 32C1716ECAB
	for <lists+clang-built-linux@lfdr.de>; Tue, 25 Feb 2020 18:39:55 +0100 (CET)
Received: by mail-yw1-xc3d.google.com with SMTP id q187sf12817162ywg.12
        for <lists+clang-built-linux@lfdr.de>; Tue, 25 Feb 2020 09:39:55 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582652394; cv=pass;
        d=google.com; s=arc-20160816;
        b=NpA6M2gsmv4EK5Dj54a8HKKcDCe+pw4OCT1ldyxW/W9i+zh2QQ0sfMJwAy+Mj+8O8Y
         FRuljf6wZCnyNrn3blViI8Ddgg8vRB6UWQp2/JlGG7gYSqhYShu92QHGOTZ+7Zss5OMK
         7b8CQjzloK9GyOqWM1jbl1CfmgMm5FR9AOhHuj3m/v4qmY3dr+vzzUq/HedaX3AQIxTk
         BebmVVdkw1fhdmokXq6FD3uFOcuIR6/qbzdJM6vLVwCYH8sS4konrwjFPT+vsAMMz/bs
         nvuzTNJ+uHNLXFD0f117F2Q4BNwf5PCHiztGi0NcZCEqbeIzwj5ay2Pdkz81qODP48P8
         IKVA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=X5lBHAut8iqCAjmsfaMEPsIivQVuwgyn60oYU2MugsU=;
        b=vYQRQoA7BuoPLVOCkD/CE4Hi3NJGlcaw42xgN7kbUd+z6u9WJVc1ccKMBBqHd8NaQ4
         GKVmwifD1ZGs5RKH7mvGLQ/VsQkPktbxU00guDNbQ4N7ooYrR/vHStBhSNNaw8FK/ELH
         J7Kt1F9tVloP5BcniHoMXpunO5z+LZ4Ra0BI9ZfgpqbotlAuB9GVBCWSY5bEhStGiBKF
         2E2eXtBddL0sDK9oFQpr6QeQdWs0SQFEcMcv/nWALnWiz8wuo/mZ25eWXnynDSGszN3a
         FgHipQ+YZwIKpMVkoluKmomboIL+vzZ3K+n97Wu82NXZ5J22TchGdLou6JkyQR9qrr2l
         qA4A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=EyPcT46l;
       spf=pass (google.com: domain of 36vtvxgwkao4iqcyjeblqdudweewbu.sec@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=36VtVXgwKAO4iQcYjeblQdUdWeeWbU.Sec@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=X5lBHAut8iqCAjmsfaMEPsIivQVuwgyn60oYU2MugsU=;
        b=S7O9/oeKo/86pGp9DUaL9MjEYfKvAIxcEihNbyrMz9CoLkBSbdWEHFNaennu6qIx+h
         1UeWtt3rAICwxiMIpkKWW7Jul/VUAKUE7x7Opdj7+rqUG5/4dp5P3qIcA1ZKT+jkHKDm
         TkSFsNsT8yp7iZ7K2Olk6OjoNiOs8RmNM1D43cRED+QH80PZpjCTD0EOg2/zhEIS28ho
         atvwr56ItQ8YZVW+aobMrwq704ftkv+H1M3EpKwu3eQB3kYoYl6oWg3N4xQGwABU41Zu
         Fb9smttg7+8U8p+1AHSodrLQlclzAwHQNH/Jx7TVdXUyRtiosgQ2+WGgNVGvFFD6TIF0
         6ajw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=X5lBHAut8iqCAjmsfaMEPsIivQVuwgyn60oYU2MugsU=;
        b=G/cr0QfJtZZ37xxJegk2b+Y4ldZORERJ4Q6xpjtOdDWTZhnVNALr4NlPta3FxzECZh
         prw6sRGoKV6S0CA21JQ9sku5168Puo51hQqEwXk9ND+TKJKznIzEg9wfIXYW6oRRJi0R
         dTOZgBgiAwSedAJs6oGi6IlJDZRpfqnzXRZ2NJ9SAaxz4Vw5PVewoOmm0Fup+lfQBoP2
         P7gQa2gEpRaofytfbAnR8zPYKqHcI4BbBq1GYOWwqyPw0yBG3KQw8ndARUHN5iJb61GB
         2RBEyCvu9qdFpY6Od4pIj6TZbLmPMSJCZD2YAaxyxjnHUnpHPLfpFEOfYUygJQ/fjmCp
         MGIg==
X-Gm-Message-State: APjAAAWVIzRfCvJJ/5XYeAxeugmDebyLdwTwBpyGwJh5z/B2Fz0CJEoU
	yUBF+qokEjhWsuUBGgoe2T4=
X-Google-Smtp-Source: APXvYqzC+DzY194TYvk2BBVGLXtDd60J7e0dDYy+bhzSvI8zavr9Z6N81QdmkEBuk0YDgH+pOZwQOg==
X-Received: by 2002:a0d:d7d7:: with SMTP id z206mr45770507ywd.369.1582652394023;
        Tue, 25 Feb 2020 09:39:54 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:d648:: with SMTP id n69ls29399ybg.7.gmail; Tue, 25 Feb
 2020 09:39:53 -0800 (PST)
X-Received: by 2002:a25:c902:: with SMTP id z2mr390865ybf.425.1582652393637;
        Tue, 25 Feb 2020 09:39:53 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582652393; cv=none;
        d=google.com; s=arc-20160816;
        b=nVfkcOtGoQm4PMzEVMc43UwvxkRxp0+ZCPsgSqs7eBDFMxCdbNIS4fLf8UkxPy/rWw
         S+HedF7f1PsfxQz7ZejBcPePaPDmELwtV5d4js4K3oAUhquC4yepzmK1CZCKHXDUJqT1
         UFdqU/LqXl2tcRrD7iaeODmCIRcSAmm9ZkyJzMiqXcH9rR1WdN5G0GvlT3h3Izy533JD
         7ArNvFC4CVzQW1THf6pXRl4c4AYFDs2TKmp0+yj0P27qx2nDD41XFDuXFEWSLsJicnYH
         5NnMvr30AbbkwaQOr560gV/IvrnV4dpvqZtCbuvVzvr5iny/kYbtGT0hAifv3ct/C00w
         Qlzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=0f/RzoyEatytyatThC+F3eOfN2v+QCCQ4NfkPjtyieo=;
        b=h1LV2GkTOdoKtw0eXORyAEsfbbQS0ibfwOzNU7eqIHvgjCSOUSHRw3/qYcdqsFLl9A
         ZLKbSFboJu9i7yWb7xoPRxYwpSIzcdo0XU6JXO8EPUWqex39Bla8SWnaGzu6Dd/uUUFZ
         EdLP3v1sk/xGUe5GVvQJ/ddB1ZZpRdtdzRgkFgcNR7eL9FXIjijbeMVxjjn2oIGEAZ69
         MnJ4/vjs3V+CV6LbmyJOmuRHbR+7WjrZhwsCOj80tIDEGwK9TQhA7mwIzYk93IsQywxf
         vy9svkawfc5tvgxZA2R9AAUdjP6Yjdv02/V0UJ6Xdmxj0/9baM93Ej2YXcnQnSVLcOgk
         i0rA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=EyPcT46l;
       spf=pass (google.com: domain of 36vtvxgwkao4iqcyjeblqdudweewbu.sec@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=36VtVXgwKAO4iQcYjeblQdUdWeeWbU.Sec@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x849.google.com (mail-qt1-x849.google.com. [2607:f8b0:4864:20::849])
        by gmr-mx.google.com with ESMTPS id d23si12988ywb.5.2020.02.25.09.39.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Feb 2020 09:39:53 -0800 (PST)
Received-SPF: pass (google.com: domain of 36vtvxgwkao4iqcyjeblqdudweewbu.sec@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) client-ip=2607:f8b0:4864:20::849;
Received: by mail-qt1-x849.google.com with SMTP id l25so292675qtu.0
        for <clang-built-linux@googlegroups.com>; Tue, 25 Feb 2020 09:39:53 -0800 (PST)
X-Received: by 2002:a05:6214:1874:: with SMTP id eh20mr53245231qvb.122.1582652393129;
 Tue, 25 Feb 2020 09:39:53 -0800 (PST)
Date: Tue, 25 Feb 2020 09:39:24 -0800
In-Reply-To: <20200225173933.74818-1-samitolvanen@google.com>
Message-Id: <20200225173933.74818-4-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20200225173933.74818-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.25.0.265.gbab2e86ba0-goog
Subject: [PATCH v9 03/12] scs: add support for stack usage debugging
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	James Morse <james.morse@arm.com>, Steven Rostedt <rostedt@goodmis.org>, 
	Masami Hiramatsu <mhiramat@kernel.org>, Ard Biesheuvel <ard.biesheuvel@linaro.org>, 
	Mark Rutland <mark.rutland@arm.com>
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
 header.i=@google.com header.s=20161025 header.b=EyPcT46l;       spf=pass
 (google.com: domain of 36vtvxgwkao4iqcyjeblqdudweewbu.sec@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=36VtVXgwKAO4iQcYjeblQdUdWeeWbU.Sec@flex--samitolvanen.bounces.google.com;
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200225173933.74818-4-samitolvanen%40google.com.
