Return-Path: <clang-built-linux+bncBC2ORX645YPRBIGIU7WQKGQERI7EWYY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83f.google.com (mail-qt1-x83f.google.com [IPv6:2607:f8b0:4864:20::83f])
	by mail.lfdr.de (Postfix) with ESMTPS id F1655DCA6E
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Oct 2019 18:11:12 +0200 (CEST)
Received: by mail-qt1-x83f.google.com with SMTP id q54sf3983039qtk.15
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Oct 2019 09:11:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571415072; cv=pass;
        d=google.com; s=arc-20160816;
        b=PpjRjX6+w37BiHV1EVOTRhvirWnrKCEx1yOGNFikidAejSsHolS+CM7Gs1lxNTVXlX
         tAOpFZlH4ZaGBjDftYx3wQQYr1chJ3P18OafWg7qXdlysBOkZ3ETR9fk0LrU/B3QUiZ4
         M78C7lSHSKvRM78vn22KZAqm9DkOBJc0MKDlZ+LccNgQVV6J1NqrzmRrB5u1UNh4hGWq
         45s86akhP4wdIl0HUYaPclgZp24aRkRShSf3uqclMxqk0aRyOMqRnXguX3vjWFZlbyvZ
         BR1Qlt/0Yq4S63P/a0f7TOePYxsHX5aSaXrNUrSEnQUvxh/uLKpIx45220PyU+1Oedm4
         SuXw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=KqXNeoIE425RBjGAus9AAr6QlwBMNUSvEmmIDclTCzM=;
        b=kIcIJRGGHHwRlMaC2px1CGX6xSa1b4lSHlqD8/S1q/oawxjk3wYR2/vn/Rv8y/gd40
         6lAstXAGBgmmfckjSAN2yQsxFsfFshp+K3XjiEAphJRU9mSfASXjtaqy97ijYtDcUvuP
         l2TNopfHk1SPhTkK9PkH+jlxLuOSLzO8EGWnkCVI02yDqp8fVraByukWoC0BgpV/PTye
         VphnHRUR2Rss4hgwpSRTh8DA2suiWu0jFYrVQJCo5kT6Sf1VWPnAWsDgPRRRBu0FJvzx
         soPuOWSP5j6bHQhIc2mXiZp4HmlmJ4s/80EqdKf4bFZ30/TIci3vcDT2Q4dRxabZE+ji
         /35A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=uErhWC3l;
       spf=pass (google.com: domain of 3huspxqwkaiexfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3HuSpXQwKAIExfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KqXNeoIE425RBjGAus9AAr6QlwBMNUSvEmmIDclTCzM=;
        b=FGEFVTTgpxiR8MHkiDR+/1sSYDMH+uvaUhNZs93+V+5I5gJcpSvB66Czttx29Zlq8M
         hzZ7tdybx8DrFlJ1QJpZ4JUep7CXjMR4pA+7l/LgfxXsjjrTfB2qqeOxwQFseTz7UEPk
         F2Yy2zk8OABSGg3anPXbR+OhpgEUCzt8gQmieKsiqSbeIL83taFjfVhaVipdjkhwe8L7
         HqkjVdlBgldYDuRUQ1Fzr+JhoFYuDKs97uha/gJFDrcFSAO853Zx/n8/SulMRt2CZM65
         E/TwUwgthneMP6rUduDJUuqphqaFZ10cpzK5pjjAuwIW6DffrdKv14TMyTVX6nXNsHco
         WJeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KqXNeoIE425RBjGAus9AAr6QlwBMNUSvEmmIDclTCzM=;
        b=bkygRm4CMWMgMx28z8QOyMYghCrswHF43lnBu7AQBYd4Sl6yD2lPUYD+FZmRyYB0P6
         wXgsKxohYqjMQGnbGiv99xiccckoaChrOZydYf1VBo0vOjsApZKJMPJTQ7HAzizGWWMl
         BNCdNFZeY0vrX1ZgqYVG2dIdsDZITcCRQYMtX+bDcUFiSAcNvHL3NObrKCSu9LvIZSAj
         9xXOo2LgBtB8jp9G/AO9aoneGPHUUurQrLv6lIDBZ/vAR8ypDGiedrnN7ylqttjjgh4k
         sPVVljEU/ZnZmhqLnL5UAOXDAGhC49BaZrO/XwO8BbBKrIRUnnKN6xPRWyotEo2Tq6Ve
         mTvg==
X-Gm-Message-State: APjAAAUVrQylM4cepy5LT1iVLnQSJaWgLXOUwdUCLsfnfJF5q+Ly4p/j
	/fLtIK8xsDbiZK9ulXjOgE0=
X-Google-Smtp-Source: APXvYqzqT4RyobxAvJlhTg8ebE6/SwrmdNwZ45FBG5eNbQojpRDL3XbfMaPI+mg2rKwGeI5pypZcvg==
X-Received: by 2002:aed:21c4:: with SMTP id m4mr10706461qtc.342.1571415072064;
        Fri, 18 Oct 2019 09:11:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:32c6:: with SMTP id z64ls2052552qtd.16.gmail; Fri, 18
 Oct 2019 09:11:11 -0700 (PDT)
X-Received: by 2002:ac8:701e:: with SMTP id x30mr10438057qtm.203.1571415071709;
        Fri, 18 Oct 2019 09:11:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571415071; cv=none;
        d=google.com; s=arc-20160816;
        b=sn5xns5ZnNu91ial1aeUY+DN2V0F9uODWE7SzPVCkPNKV8HoyOpRHIOU0zQeK3qm0h
         WbNn9toRG3HCHj1Awtaxs9naxVeM832WfbX3XLVByZZIC27K+VR9aRF0OxU/MYxH8OMH
         DOy/2quHpKa7J5HMfiSbHad/7h0XipchkkaNHLGbSGSG0b4bQlvoGPbjn7m7MlfZJRSy
         Zk12HqUahEwP+KmAWOie1JyZZuNfVSkbywmdO1OhDdqoNGpK3V/UKx9NBHkHxE27at8z
         EM+FWBA2ALl67EXAyxTiC5D6dYpSZ7L4h3noHF6SqUEbLDA+K7QzqaCEHbFMFfZrFa42
         eHjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=+oBtFp6IQZ5946CFExp5BXllfwypP5AUtOYhvu+6eDg=;
        b=KpsLoE3CJ38Ubq8kPNPCs4daKDLn/TXm+1A4nSk/0WUPg5Kupvq943CCStnHeUWzWB
         n4gRXjn7cp8BcAuGofTlQzSQe0QKqNoIZR7xKHumthsYN8fOwFoH+x3Crugdl603UGS0
         5LM37ZtiYuOEPQOQ0EMqP5JEe28gp7c1kli5QGZ+gayoUTL/QVe+oGoHWd5sMlHn9j9I
         tVmz8QjSHgQ+qcZaEzLk+NyJoSbd3rpRzMMZudMopE5lFAIyxC3QqIutYR76aH9Tg6fm
         N2+45HCbagvWFJJWhKPeSVgbVuuJ90MgNWFvZ3pxszzzySpvWMr1JL0tB6yfKrDxS0TB
         bxiw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=uErhWC3l;
       spf=pass (google.com: domain of 3huspxqwkaiexfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3HuSpXQwKAIExfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x54a.google.com (mail-pg1-x54a.google.com. [2607:f8b0:4864:20::54a])
        by gmr-mx.google.com with ESMTPS id o13si321597qkj.4.2019.10.18.09.11.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Oct 2019 09:11:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3huspxqwkaiexfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) client-ip=2607:f8b0:4864:20::54a;
Received: by mail-pg1-x54a.google.com with SMTP id v10so4587150pge.12
        for <clang-built-linux@googlegroups.com>; Fri, 18 Oct 2019 09:11:11 -0700 (PDT)
X-Received: by 2002:a63:7845:: with SMTP id t66mr10836733pgc.31.1571415070584;
 Fri, 18 Oct 2019 09:11:10 -0700 (PDT)
Date: Fri, 18 Oct 2019 09:10:23 -0700
In-Reply-To: <20191018161033.261971-1-samitolvanen@google.com>
Message-Id: <20191018161033.261971-9-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.23.0.866.gb869b98d4c-goog
Subject: [PATCH 08/18] scs: add support for stack usage debugging
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Ard Biesheuvel <ard.biesheuvel@linaro.org>
Cc: Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>, 
	Laura Abbott <labbott@redhat.com>, Mark Rutland <mark.rutland@arm.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, clang-built-linux@googlegroups.com, 
	kernel-hardening@lists.openwall.com, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=uErhWC3l;       spf=pass
 (google.com: domain of 3huspxqwkaiexfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=3HuSpXQwKAIExfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com;
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

Implements CONFIG_DEBUG_STACK_USAGE for shadow stacks.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
---
 kernel/scs.c | 39 +++++++++++++++++++++++++++++++++++++++
 1 file changed, 39 insertions(+)

diff --git a/kernel/scs.c b/kernel/scs.c
index 0e3cba49ea1a..1ec5c5a8dfae 100644
--- a/kernel/scs.c
+++ b/kernel/scs.c
@@ -161,6 +161,44 @@ int scs_prepare(struct task_struct *tsk, int node)
 	return 0;
 }
 
+#ifdef CONFIG_DEBUG_STACK_USAGE
+static inline unsigned long scs_used(struct task_struct *tsk)
+{
+	unsigned long *p = __scs_base(tsk);
+	unsigned long *end = scs_magic(tsk);
+	uintptr_t s = (uintptr_t)p;
+
+	while (p < end && *p)
+		p++;
+
+	return (uintptr_t)p - s;
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
+		pr_info("%s: highest shadow stack usage %lu bytes\n",
+			__func__, used);
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
 	return *scs_magic(tsk) != SCS_END_MAGIC;
@@ -175,6 +213,7 @@ void scs_release(struct task_struct *tsk)
 		return;
 
 	WARN_ON(scs_corrupted(tsk));
+	scs_check_usage(tsk);
 
 	scs_account(tsk, -1);
 	scs_task_init(tsk);
-- 
2.23.0.866.gb869b98d4c-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191018161033.261971-9-samitolvanen%40google.com.
