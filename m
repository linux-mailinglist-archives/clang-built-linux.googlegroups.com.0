Return-Path: <clang-built-linux+bncBC2ORX645YPRBZNX2XZAKGQEWVXPWYA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3c.google.com (mail-io1-xd3c.google.com [IPv6:2607:f8b0:4864:20::d3c])
	by mail.lfdr.de (Postfix) with ESMTPS id B44E016ECAA
	for <lists+clang-built-linux@lfdr.de>; Tue, 25 Feb 2020 18:39:50 +0100 (CET)
Received: by mail-io1-xd3c.google.com with SMTP id 13sf27124iof.14
        for <lists+clang-built-linux@lfdr.de>; Tue, 25 Feb 2020 09:39:50 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582652389; cv=pass;
        d=google.com; s=arc-20160816;
        b=zGC2LTq8A9qyySmh30IbMv2MFGL7Cqn4JqSyRhDRBshk4wceRVW+Ps7xq0RijzISHh
         7aSbT5YgJDuFW/4yC/3kFjpDsxppAlwcW4v/9+7yGnDU+48vNeAAjpFs1e1zlp7bt/AG
         tw4/XiIxtTqiAlwpSh6GeMu+IoFHsVG3T9sXQbBc0mmafqjQbe6IivIE6CjlLpBKXXXW
         tt+oFr91PgjTsmAWG/ymeYmuLsuaqBLLHRrw2u0Rlvnhm56A2f2WUXjfiPkVx2chqs6n
         XRFMAxhqTuKkhwa/xa+NizwYQ5Y3U3TsD/Ne9zgFfwYQztZcfmQO4DfUnpktbQmX1CSj
         Whhg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=7R0SFOBGtntObl5wtABMvbx9oObqnsXtWbKuGmR6bIk=;
        b=YqIruRlUWEumn+3WUmlO7P0IHfXVh9hE0EsBFb5vWcK2R0mT2O4yMLZsQ68/PzYWnL
         QzdM0veJ7uLrleIT69mL0ZWzPmJi4JD/wnxPX9bSfmHmsY/jFwKF9tbPdJlz4E2F7FFf
         OKdtu0XDvNkxOLwS/lExvSOHCUEGa8n+TYEavUXQzWp8aQzeyscUPBZOKJJOYU/jiUJB
         KIeu/JMP3pWHJHLfCRfKM6+5SdoJ+Fn1k+6179oz0+lasQ6HshDQVjsSzlPNb0lkFE0q
         DLKtiSl9LWTN5P+vaMGtiiR5f1s1+wbxX2SoerqVcKvVFDMGI/lNvKkUO8CJFsMAiJkY
         PC9w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=kANL2xon;
       spf=pass (google.com: domain of 35ftvxgwkaokdlxtezwglypyrzzrwp.nzx@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=35FtVXgwKAOkdLXTeZWgLYPYRZZRWP.NZX@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7R0SFOBGtntObl5wtABMvbx9oObqnsXtWbKuGmR6bIk=;
        b=Wl8K2TkSL9o5V4Opnin+wKfWHGlSBjyiQQkXe40nBgnrGspJgPtgllBipc4oC0oNE4
         y6FIK+aC6uUZg1OCRXV/SoO70xUCM+0N3aG1Ks1FVIFqGh0PzX5DMfiGGWmHqeJM/5Qu
         1oWjz9QxhxV2Qs9YOdsk/D7CY9WGp3gfG89JZsWWxmQVpyJvUtf2ev9KBSzzCGVpr5hU
         j5F0q2Wi1GrKqL5u1W0q9hcUY/OFyYBjASXsci6W2iGewA0Hy8bGyLnU8Qb+bPT0lxzM
         8yZOzxIhhP3QrWdaamEIm5mdygNmIWHpco0Ipxqwk3MTGSRcl2OPP1pXGKdlII40oMAb
         pCbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7R0SFOBGtntObl5wtABMvbx9oObqnsXtWbKuGmR6bIk=;
        b=nD4g7sGHztGKtwPJQzCfUAwKt8HLADgLFHeBSdv5XdItfmq0AV4Q9WCChB1YKkNs+X
         RRf7lzo46F7SjA0I3S5jxjwWg9um3ge1CkCOpsYhLl39dhC/nCDZ/BFZn7BjsCdHVAcz
         SaKC+YaEWs02iAO556ETbxyfJ0FGIMVR6Z8qzyq2b0H6rVESye3ukEy6WiIunNxeYz4L
         PzoFmIZ6ZqSNAT9E3L6vdq9ZZjLnQTX2P4GLdxEM0PG+xysramhOppSafKtO65b7LSAk
         P9M1pNxCw4VyQrcYIavK49ft2QPeopw75Ip51H7WN1HikCUmQfn3xJNjknF6W206GHWB
         6LtA==
X-Gm-Message-State: APjAAAWd29fPWjTmIIx0uLOZsmInppkYIwpexFXAbqQZVmlPzfAycBFH
	wCUoJc0sf7gCDCEuWq4gXBY=
X-Google-Smtp-Source: APXvYqxFEyLFCKhjiE2Ixp1J/7v694nyMNisO/qK/0OkkHSETgZuooIXPq88rpVzqOC68y324Za1Ag==
X-Received: by 2002:a92:9507:: with SMTP id y7mr70303041ilh.243.1582652389212;
        Tue, 25 Feb 2020 09:39:49 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:f13:: with SMTP id x19ls76976ilj.0.gmail; Tue, 25
 Feb 2020 09:39:48 -0800 (PST)
X-Received: by 2002:a92:dac3:: with SMTP id o3mr71365256ilq.237.1582652388797;
        Tue, 25 Feb 2020 09:39:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582652388; cv=none;
        d=google.com; s=arc-20160816;
        b=uQwdBpCzAG+tre4duMyfBZQyqMT+B/pDOKzlizX2OnXyZ8A+CcH8kbWQeHM3OjLCZH
         P7Ns5Xw71hglK/RiB5bv+S/wjIYlt3hvzlPvr15yRWMBe2IjZfkdrmHfO5PGofzn3TqK
         fzbtUbZMdvoTaMXfvUS2Wt/ip2h+fR+d5Zc/GljdDN0pUila7vJuRd6xvCFB0atjoaQG
         HViVsBlESLCwby6YXP2c+TrnDxFuiraCqM3AStk09UCdK/peWayYV5S6kdUWXjSshNCk
         wHLI4SUXUBW6qekEYv+zQjwkw4mUtjv4tpUamUsCcVMEM+FsyWWFCb6M5P9O1KjrZP2k
         0dbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=iAnwqX/AAGd26TFtb0myYOOPt2TU78CQZiCptAhki6M=;
        b=CudvOYp1Y/PB4DEYkbeC8hHZI1Ml+3+swvbqxBUz8FvAAWD0ZNTllAJjOmcMnVdKVs
         K3AEsDipQhSpfgkhw9OlGsXky8e5XgLRZQtN4onrb4LImgLzfsmbuM2z1fnhMcljz9Tv
         ZLvFxaERFpn3QmSWot5rWG+0pYf0cTEbp7qW53OlaU/7uFsAxdCfuPKvOuo2l2UfL2R0
         CGhG8xL7c/8bbY41aLCzIpYN4v1+pq25dQ4p0fs0qiImhlJT8o6mc4/jpQDNK5wGUPRw
         Xkv1ICgtZ9wssjmZ5BbZYijOzac8iri3Ypws3U70dyDXiyxAQoXFjA2MdeELdS1Dtj/x
         XlBw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=kANL2xon;
       spf=pass (google.com: domain of 35ftvxgwkaokdlxtezwglypyrzzrwp.nzx@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=35FtVXgwKAOkdLXTeZWgLYPYRZZRWP.NZX@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x54a.google.com (mail-pg1-x54a.google.com. [2607:f8b0:4864:20::54a])
        by gmr-mx.google.com with ESMTPS id b16si7083ion.0.2020.02.25.09.39.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Feb 2020 09:39:48 -0800 (PST)
Received-SPF: pass (google.com: domain of 35ftvxgwkaokdlxtezwglypyrzzrwp.nzx@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::54a as permitted sender) client-ip=2607:f8b0:4864:20::54a;
Received: by mail-pg1-x54a.google.com with SMTP id 37so9422675pgq.0
        for <clang-built-linux@googlegroups.com>; Tue, 25 Feb 2020 09:39:48 -0800 (PST)
X-Received: by 2002:a65:6901:: with SMTP id s1mr2905137pgq.446.1582652388046;
 Tue, 25 Feb 2020 09:39:48 -0800 (PST)
Date: Tue, 25 Feb 2020 09:39:23 -0800
In-Reply-To: <20200225173933.74818-1-samitolvanen@google.com>
Message-Id: <20200225173933.74818-3-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20200225173933.74818-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.25.0.265.gbab2e86ba0-goog
Subject: [PATCH v9 02/12] scs: add accounting
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
 header.i=@google.com header.s=20161025 header.b=kANL2xon;       spf=pass
 (google.com: domain of 35ftvxgwkaokdlxtezwglypyrzzrwp.nzx@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::54a as permitted sender) smtp.mailfrom=35FtVXgwKAOkdLXTeZWgLYPYRZZRWP.NZX@flex--samitolvanen.bounces.google.com;
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

This change adds accounting for the memory allocated for shadow stacks.

Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
Reviewed-by: Kees Cook <keescook@chromium.org>
---
 drivers/base/node.c    |  6 ++++++
 fs/proc/meminfo.c      |  4 ++++
 include/linux/mmzone.h |  3 +++
 kernel/scs.c           | 20 ++++++++++++++++++++
 mm/page_alloc.c        |  6 ++++++
 mm/vmstat.c            |  3 +++
 6 files changed, 42 insertions(+)

diff --git a/drivers/base/node.c b/drivers/base/node.c
index 98a31bafc8a2..874a8b428438 100644
--- a/drivers/base/node.c
+++ b/drivers/base/node.c
@@ -415,6 +415,9 @@ static ssize_t node_read_meminfo(struct device *dev,
 		       "Node %d AnonPages:      %8lu kB\n"
 		       "Node %d Shmem:          %8lu kB\n"
 		       "Node %d KernelStack:    %8lu kB\n"
+#ifdef CONFIG_SHADOW_CALL_STACK
+		       "Node %d ShadowCallStack:%8lu kB\n"
+#endif
 		       "Node %d PageTables:     %8lu kB\n"
 		       "Node %d NFS_Unstable:   %8lu kB\n"
 		       "Node %d Bounce:         %8lu kB\n"
@@ -438,6 +441,9 @@ static ssize_t node_read_meminfo(struct device *dev,
 		       nid, K(node_page_state(pgdat, NR_ANON_MAPPED)),
 		       nid, K(i.sharedram),
 		       nid, sum_zone_node_page_state(nid, NR_KERNEL_STACK_KB),
+#ifdef CONFIG_SHADOW_CALL_STACK
+		       nid, sum_zone_node_page_state(nid, NR_KERNEL_SCS_BYTES) / 1024,
+#endif
 		       nid, K(sum_zone_node_page_state(nid, NR_PAGETABLE)),
 		       nid, K(node_page_state(pgdat, NR_UNSTABLE_NFS)),
 		       nid, K(sum_zone_node_page_state(nid, NR_BOUNCE)),
diff --git a/fs/proc/meminfo.c b/fs/proc/meminfo.c
index 8c1f1bb1a5ce..49768005a79e 100644
--- a/fs/proc/meminfo.c
+++ b/fs/proc/meminfo.c
@@ -103,6 +103,10 @@ static int meminfo_proc_show(struct seq_file *m, void *v)
 	show_val_kb(m, "SUnreclaim:     ", sunreclaim);
 	seq_printf(m, "KernelStack:    %8lu kB\n",
 		   global_zone_page_state(NR_KERNEL_STACK_KB));
+#ifdef CONFIG_SHADOW_CALL_STACK
+	seq_printf(m, "ShadowCallStack:%8lu kB\n",
+		   global_zone_page_state(NR_KERNEL_SCS_BYTES) / 1024);
+#endif
 	show_val_kb(m, "PageTables:     ",
 		    global_zone_page_state(NR_PAGETABLE));
 
diff --git a/include/linux/mmzone.h b/include/linux/mmzone.h
index 462f6873905a..0a6f395abc68 100644
--- a/include/linux/mmzone.h
+++ b/include/linux/mmzone.h
@@ -200,6 +200,9 @@ enum zone_stat_item {
 	NR_MLOCK,		/* mlock()ed pages found and moved off LRU */
 	NR_PAGETABLE,		/* used for pagetables */
 	NR_KERNEL_STACK_KB,	/* measured in KiB */
+#if IS_ENABLED(CONFIG_SHADOW_CALL_STACK)
+	NR_KERNEL_SCS_BYTES,	/* measured in bytes */
+#endif
 	/* Second 128 byte cacheline */
 	NR_BOUNCE,
 #if IS_ENABLED(CONFIG_ZSMALLOC)
diff --git a/kernel/scs.c b/kernel/scs.c
index 28abed21950c..5245e992c692 100644
--- a/kernel/scs.c
+++ b/kernel/scs.c
@@ -12,6 +12,7 @@
 #include <linux/scs.h>
 #include <linux/slab.h>
 #include <linux/vmalloc.h>
+#include <linux/vmstat.h>
 #include <asm/scs.h>
 
 static inline void *__scs_base(struct task_struct *tsk)
@@ -89,6 +90,11 @@ static void scs_free(void *s)
 	vfree_atomic(s);
 }
 
+static struct page *__scs_page(struct task_struct *tsk)
+{
+	return vmalloc_to_page(__scs_base(tsk));
+}
+
 static int scs_cleanup(unsigned int cpu)
 {
 	int i;
@@ -135,6 +141,11 @@ static inline void scs_free(void *s)
 	kmem_cache_free(scs_cache, s);
 }
 
+static struct page *__scs_page(struct task_struct *tsk)
+{
+	return virt_to_page(__scs_base(tsk));
+}
+
 void __init scs_init(void)
 {
 	scs_cache = kmem_cache_create("scs_cache", SCS_SIZE, SCS_SIZE,
@@ -153,6 +164,12 @@ void scs_task_reset(struct task_struct *tsk)
 	task_set_scs(tsk, __scs_base(tsk));
 }
 
+static void scs_account(struct task_struct *tsk, int account)
+{
+	mod_zone_page_state(page_zone(__scs_page(tsk)), NR_KERNEL_SCS_BYTES,
+		account * SCS_SIZE);
+}
+
 int scs_prepare(struct task_struct *tsk, int node)
 {
 	void *s;
@@ -162,6 +179,8 @@ int scs_prepare(struct task_struct *tsk, int node)
 		return -ENOMEM;
 
 	task_set_scs(tsk, s);
+	scs_account(tsk, 1);
+
 	return 0;
 }
 
@@ -182,6 +201,7 @@ void scs_release(struct task_struct *tsk)
 
 	WARN_ON(scs_corrupted(tsk));
 
+	scs_account(tsk, -1);
 	task_set_scs(tsk, NULL);
 	scs_free(s);
 }
diff --git a/mm/page_alloc.c b/mm/page_alloc.c
index 3c4eb750a199..1381b9d84e4c 100644
--- a/mm/page_alloc.c
+++ b/mm/page_alloc.c
@@ -5340,6 +5340,9 @@ void show_free_areas(unsigned int filter, nodemask_t *nodemask)
 			" managed:%lukB"
 			" mlocked:%lukB"
 			" kernel_stack:%lukB"
+#ifdef CONFIG_SHADOW_CALL_STACK
+			" shadow_call_stack:%lukB"
+#endif
 			" pagetables:%lukB"
 			" bounce:%lukB"
 			" free_pcp:%lukB"
@@ -5362,6 +5365,9 @@ void show_free_areas(unsigned int filter, nodemask_t *nodemask)
 			K(zone_managed_pages(zone)),
 			K(zone_page_state(zone, NR_MLOCK)),
 			zone_page_state(zone, NR_KERNEL_STACK_KB),
+#ifdef CONFIG_SHADOW_CALL_STACK
+			zone_page_state(zone, NR_KERNEL_SCS_BYTES) / 1024,
+#endif
 			K(zone_page_state(zone, NR_PAGETABLE)),
 			K(zone_page_state(zone, NR_BOUNCE)),
 			K(free_pcp),
diff --git a/mm/vmstat.c b/mm/vmstat.c
index 78d53378db99..d0650391c8c1 100644
--- a/mm/vmstat.c
+++ b/mm/vmstat.c
@@ -1119,6 +1119,9 @@ const char * const vmstat_text[] = {
 	"nr_mlock",
 	"nr_page_table_pages",
 	"nr_kernel_stack",
+#if IS_ENABLED(CONFIG_SHADOW_CALL_STACK)
+	"nr_shadow_call_stack_bytes",
+#endif
 	"nr_bounce",
 #if IS_ENABLED(CONFIG_ZSMALLOC)
 	"nr_zspages",
-- 
2.25.0.265.gbab2e86ba0-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200225173933.74818-3-samitolvanen%40google.com.
