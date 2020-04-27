Return-Path: <clang-built-linux+bncBC2ORX645YPRBHUDTT2QKGQEBAFI7CA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x638.google.com (mail-pl1-x638.google.com [IPv6:2607:f8b0:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D52F1BA977
	for <lists+clang-built-linux@lfdr.de>; Mon, 27 Apr 2020 18:00:32 +0200 (CEST)
Received: by mail-pl1-x638.google.com with SMTP id a7sf4748997pll.23
        for <lists+clang-built-linux@lfdr.de>; Mon, 27 Apr 2020 09:00:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588003230; cv=pass;
        d=google.com; s=arc-20160816;
        b=kA2/JoZrHs/bQjKUQ0dcZjwT/CHaXO8Fr+tAlPlOOsAu3hVjlrHeIW3+DDr3Yew4Sz
         0m4K6VIjUkmPISjVPRwW/GkckhG7l5vUUI62OAjR3mk2yNXWzudjAFvYutix2SouA5lN
         0dBRsyfTOcMfeMGrAx87SbO4HfiRUY6tLBDX3HLiDSxwKK9FPxeG9EwU2EBBljRz/x1S
         ztNsKGml3E4K5iEBB7fKSfibtEW49t9xYfoMHnw78NjCX7BxDItywGgfMRC8tSs9eVTh
         F4AJzrG/B3Tv1cFuJtDIjNpoX4seZFp3UQKh8GN19TjG9ZnFAVO3xYpKcBOZNNk7b5IM
         JJ9g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=OcO8S1E8JKovs6Nia9rBhMqs6+btAE5whpxexG4ONxE=;
        b=F4n3wFKQuLgMEWVXubau0Xdkq4V1IVFD3ENzbZtwpKPzSp+HzL+5m/dqJJz+foG9JI
         9+Pv+sAbsnSLl5dmXsAGLur8KoDWLQoswxqjnqWedfmlY2/qeBEbDp9tyDmc4X7ZG532
         DSr5WGy/9qxPqu70tVqh8IlRhnfegjWvyQWzsyZ1eRLwiTmIe8Bh2n7F5Dw4tCjO4YeC
         BTidY0/Y1Yp8xDXRvNS2msy7FiA8WO00Ud5A8O9RVeUZwOMo8XkDboj0NqajQayYbFgQ
         CHfk/I4wE/4AGSGA/Y2MTO0W15TfPlrpB8ETInOCtN8l1dv/+pMrpj42DszUivWyDF6d
         15ng==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="pkChly/M";
       spf=pass (google.com: domain of 3nqgnxgwkadgmugcnifpuhyhaiiafy.wig@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3nQGnXgwKADgmUgcnifpUhYhaiiafY.Wig@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OcO8S1E8JKovs6Nia9rBhMqs6+btAE5whpxexG4ONxE=;
        b=OV6tlnquN/8lGIXlbaIvPhYSWNpwFgS47+wH+sTItJ1SHw/26HIVe5tZiSQqx1OLIF
         /VZScPs6a/TAR9K6Ua8/OtJdDDo55A05co4m0qOi0kRzofXC/9NrfvYyQbL2GBKAo5K/
         89du/cM9PmUPWJXXftJ4ELKFGZzUbEe+hfpIt1hdNXSkCb0s0AMFoEy+FxJff9sOOWT7
         tvLtdoLGNTz0fOhrSOuJL5xHB9pvW9nTkhebPWY+gDSX/jFGovjMTXoqnbrr+wkjNRuo
         6cUkSOVlC4FCndMSJlz8+qAmM+GMpgPqRp9c2XNlYhal9MdxsBPh8xgw8E2EoTXLyusT
         aWhw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OcO8S1E8JKovs6Nia9rBhMqs6+btAE5whpxexG4ONxE=;
        b=C+mC5JYi/J+KvKrpKdXr6zMaWuP3ITk5jNORJJAhgj3+LeguSSeu/CQOLT0uwFnLkZ
         PgjBFMSd4asxdRK1C1pHVilRav8GXgJocp0GzmQ7GmA+zk0I/dngE1V7X7t+U4489TIC
         CUNRq4aRwGh4y51qSacBx4VHghsb+DiZNWTZbVxso9sSv1mbHP4sL0r3DX1gdt4MfK6i
         C+DWq/LoQwKCh6Im88DGkSoGojRg/NZDTVmiPDtmDu+mRXt690JqiIjrmzUjs7XH6uNN
         uUXR3AyjH6co4uFY1Qq1s0WYJnikTOX2KC5sYKUH5a1LqGHm+gS5gMoqWDRa015Pn74a
         BcyQ==
X-Gm-Message-State: AGi0PubGRIwoBKlTHsCCdXqDjeJ+xoDBaYNU1HAKD4odcP6yCSg1/sS3
	lSmdZgmqMW+xLyJCJ8Jb+qA=
X-Google-Smtp-Source: APiQypJR6fj3PkJOfFpgx7QuR7qjHKkkGdmX/61Z9x2nzwAMib0MTBMh3hAqjkatXHe43tYwvAUZ8w==
X-Received: by 2002:a17:902:8b82:: with SMTP id ay2mr24634812plb.285.1588003230579;
        Mon, 27 Apr 2020 09:00:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:c713:: with SMTP id o19ls17677886pjt.1.gmail; Mon,
 27 Apr 2020 09:00:30 -0700 (PDT)
X-Received: by 2002:a17:90b:19c9:: with SMTP id nm9mr24906808pjb.86.1588003230071;
        Mon, 27 Apr 2020 09:00:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588003230; cv=none;
        d=google.com; s=arc-20160816;
        b=XI2tRNTz0cN1FiCJL6ZZQDzyA1E9aANO6XNQRP68j2UcqbY7YuyHGd3Bm8+C8eCSEU
         igD0VJAOynuiBB6FsegSYc0h7ARNOuTEdYzFU5S5J9pbVrn6uJEnGTHEYHeBpQ/fDK7W
         2ewWh/C+eOyP6+Zx5rAm3Xxj7b0jl0NzdnRP0t4tQGzO7XJn0/d1ewWHpbvbKnMxeCSd
         QlEsYVR2qEYuhorozKhOOR20chn1no7QeXw5tnfO4sMrNoojMd2qA3aq0HvRv0AQz3qo
         p+GHLVUm57Dza1BP0Ng+gX9PuD+ST3gpTokrtFYHHSYT5Z357Bj0cOnYuR9chN/xNbWH
         bokw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=VMU4Dxx5VtpJ9uKOr46aqgBjHsAjXld8C2DfnSdv8zo=;
        b=CQ8kkPQSn4lvYGNCXCxFnybiWgC8ePj9D4s6kEwSXk8Z6aOOsaGNAphCfYDcYDGx0d
         0cnA+l/EW6xXDaaR+o66nr3AAE4R6lxmlfA/MTRFL2egPSLVKjt90q0v/4fh6q7PTlhT
         u6zpNF3ygbvFLO0MQfYsz6rpdurOS5Ah0rad3TqxrbDy7jrsHfvXjDxh3zcAwLCSipGG
         n9omQCKclp+FvntISqryU/aHmVEak444fCC11iVApcihzSjBGOHnwZL2U93jOG/fF7TF
         x9fQ0IHWBZV8BQJA0et2Jss01Gg9S3XixP52Y+7lYoqLUwF8bW/OXhFlLkiyD+smtlyc
         0grQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="pkChly/M";
       spf=pass (google.com: domain of 3nqgnxgwkadgmugcnifpuhyhaiiafy.wig@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3nQGnXgwKADgmUgcnifpUhYhaiiafY.Wig@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x849.google.com (mail-qt1-x849.google.com. [2607:f8b0:4864:20::849])
        by gmr-mx.google.com with ESMTPS id 81si881392pga.2.2020.04.27.09.00.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Apr 2020 09:00:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3nqgnxgwkadgmugcnifpuhyhaiiafy.wig@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) client-ip=2607:f8b0:4864:20::849;
Received: by mail-qt1-x849.google.com with SMTP id v18so20938410qtq.22
        for <clang-built-linux@googlegroups.com>; Mon, 27 Apr 2020 09:00:30 -0700 (PDT)
X-Received: by 2002:ad4:4b6b:: with SMTP id m11mr22911491qvx.130.1588003229016;
 Mon, 27 Apr 2020 09:00:29 -0700 (PDT)
Date: Mon, 27 Apr 2020 09:00:08 -0700
In-Reply-To: <20200427160018.243569-1-samitolvanen@google.com>
Message-Id: <20200427160018.243569-3-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20200427160018.243569-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.26.2.303.gf8c07b1a785-goog
Subject: [PATCH v13 02/12] scs: add accounting
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
 header.i=@google.com header.s=20161025 header.b="pkChly/M";       spf=pass
 (google.com: domain of 3nqgnxgwkadgmugcnifpuhyhaiiafy.wig@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3nQGnXgwKADgmUgcnifpUhYhaiiafY.Wig@flex--samitolvanen.bounces.google.com;
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
Acked-by: Will Deacon <will@kernel.org>
---
 drivers/base/node.c    |  6 ++++++
 fs/proc/meminfo.c      |  4 ++++
 include/linux/mmzone.h |  3 +++
 kernel/scs.c           | 15 +++++++++++++++
 mm/page_alloc.c        |  6 ++++++
 mm/vmstat.c            |  3 +++
 6 files changed, 37 insertions(+)

diff --git a/drivers/base/node.c b/drivers/base/node.c
index 10d7e818e118..50b8c0d43859 100644
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
+		       nid, sum_zone_node_page_state(nid, NR_KERNEL_SCS_KB),
+#endif
 		       nid, K(sum_zone_node_page_state(nid, NR_PAGETABLE)),
 		       nid, K(node_page_state(pgdat, NR_UNSTABLE_NFS)),
 		       nid, K(sum_zone_node_page_state(nid, NR_BOUNCE)),
diff --git a/fs/proc/meminfo.c b/fs/proc/meminfo.c
index 8c1f1bb1a5ce..09cd51c8d23d 100644
--- a/fs/proc/meminfo.c
+++ b/fs/proc/meminfo.c
@@ -103,6 +103,10 @@ static int meminfo_proc_show(struct seq_file *m, void *v)
 	show_val_kb(m, "SUnreclaim:     ", sunreclaim);
 	seq_printf(m, "KernelStack:    %8lu kB\n",
 		   global_zone_page_state(NR_KERNEL_STACK_KB));
+#ifdef CONFIG_SHADOW_CALL_STACK
+	seq_printf(m, "ShadowCallStack:%8lu kB\n",
+		   global_zone_page_state(NR_KERNEL_SCS_KB));
+#endif
 	show_val_kb(m, "PageTables:     ",
 		    global_zone_page_state(NR_PAGETABLE));
 
diff --git a/include/linux/mmzone.h b/include/linux/mmzone.h
index 1b9de7d220fb..acffc3bc6178 100644
--- a/include/linux/mmzone.h
+++ b/include/linux/mmzone.h
@@ -156,6 +156,9 @@ enum zone_stat_item {
 	NR_MLOCK,		/* mlock()ed pages found and moved off LRU */
 	NR_PAGETABLE,		/* used for pagetables */
 	NR_KERNEL_STACK_KB,	/* measured in KiB */
+#if IS_ENABLED(CONFIG_SHADOW_CALL_STACK)
+	NR_KERNEL_SCS_KB,	/* measured in KiB */
+#endif
 	/* Second 128 byte cacheline */
 	NR_BOUNCE,
 #if IS_ENABLED(CONFIG_ZSMALLOC)
diff --git a/kernel/scs.c b/kernel/scs.c
index 43624be9ad90..8769016c714c 100644
--- a/kernel/scs.c
+++ b/kernel/scs.c
@@ -6,8 +6,10 @@
  */
 
 #include <linux/kasan.h>
+#include <linux/mm.h>
 #include <linux/scs.h>
 #include <linux/slab.h>
+#include <linux/vmstat.h>
 #include <asm/scs.h>
 
 static struct kmem_cache *scs_cache;
@@ -40,6 +42,17 @@ void __init scs_init(void)
 	scs_cache = kmem_cache_create("scs_cache", SCS_SIZE, 0, 0, NULL);
 }
 
+static struct page *__scs_page(struct task_struct *tsk)
+{
+	return virt_to_page(task_scs(tsk));
+}
+
+static void scs_account(struct task_struct *tsk, int account)
+{
+	mod_zone_page_state(page_zone(__scs_page(tsk)), NR_KERNEL_SCS_KB,
+		account * (SCS_SIZE / 1024));
+}
+
 int scs_prepare(struct task_struct *tsk, int node)
 {
 	void *s;
@@ -50,6 +63,7 @@ int scs_prepare(struct task_struct *tsk, int node)
 
 	task_scs(tsk) = s;
 	task_scs_offset(tsk) = 0;
+	scs_account(tsk, 1);
 
 	return 0;
 }
@@ -64,5 +78,6 @@ void scs_release(struct task_struct *tsk)
 
 	WARN_ON(scs_corrupted(tsk));
 
+	scs_account(tsk, -1);
 	scs_free(s);
 }
diff --git a/mm/page_alloc.c b/mm/page_alloc.c
index 69827d4fa052..83743d7a6177 100644
--- a/mm/page_alloc.c
+++ b/mm/page_alloc.c
@@ -5411,6 +5411,9 @@ void show_free_areas(unsigned int filter, nodemask_t *nodemask)
 			" managed:%lukB"
 			" mlocked:%lukB"
 			" kernel_stack:%lukB"
+#ifdef CONFIG_SHADOW_CALL_STACK
+			" shadow_call_stack:%lukB"
+#endif
 			" pagetables:%lukB"
 			" bounce:%lukB"
 			" free_pcp:%lukB"
@@ -5433,6 +5436,9 @@ void show_free_areas(unsigned int filter, nodemask_t *nodemask)
 			K(zone_managed_pages(zone)),
 			K(zone_page_state(zone, NR_MLOCK)),
 			zone_page_state(zone, NR_KERNEL_STACK_KB),
+#ifdef CONFIG_SHADOW_CALL_STACK
+			zone_page_state(zone, NR_KERNEL_SCS_KB),
+#endif
 			K(zone_page_state(zone, NR_PAGETABLE)),
 			K(zone_page_state(zone, NR_BOUNCE)),
 			K(free_pcp),
diff --git a/mm/vmstat.c b/mm/vmstat.c
index 96d21a792b57..2435d2c24657 100644
--- a/mm/vmstat.c
+++ b/mm/vmstat.c
@@ -1119,6 +1119,9 @@ const char * const vmstat_text[] = {
 	"nr_mlock",
 	"nr_page_table_pages",
 	"nr_kernel_stack",
+#if IS_ENABLED(CONFIG_SHADOW_CALL_STACK)
+	"nr_shadow_call_stack",
+#endif
 	"nr_bounce",
 #if IS_ENABLED(CONFIG_ZSMALLOC)
 	"nr_zspages",
-- 
2.26.2.303.gf8c07b1a785-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200427160018.243569-3-samitolvanen%40google.com.
