Return-Path: <clang-built-linux+bncBC2ORX645YPRBJVO7H2AKGQES3FBYMY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x439.google.com (mail-pf1-x439.google.com [IPv6:2607:f8b0:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id 469421B1B94
	for <lists+clang-built-linux@lfdr.de>; Tue, 21 Apr 2020 04:15:04 +0200 (CEST)
Received: by mail-pf1-x439.google.com with SMTP id d16sf11861250pfo.15
        for <lists+clang-built-linux@lfdr.de>; Mon, 20 Apr 2020 19:15:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587435303; cv=pass;
        d=google.com; s=arc-20160816;
        b=ye/WQD/iay4hYTfkNq/yvVfaCpd7BLvsm3esIZG/BIQkoUpH1MrGnTg8J5JeQ3HOKC
         pJ9HR84ScjcYFm/Qp6TWpXWpuZayYQh4BWSADyOxd5SK6FLdCN/4c2okqelF5wEjMGwR
         hYZwahqoDCSICQKOXmp8We6V5Z8/xLVa6KEn7SH3kQZxrTssAQWhQnRlegU7qXdbMJsJ
         79X3BBRwmdxZhQFSdyyoIi7cwDInjgV1qAKQSDFKEpk5d31Q7XnKe917x7MAC1STDfuv
         uSVHi4vO1vonLn9MyTzJo0wOnFyUj4tmIyS4CzN0i/9Lmen+8vEsv6rnHRSNDv5tNgJY
         crUQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=BgVWytC/cAZzAKfiP6fhaRyia36c4AoHvpjd5vrFngc=;
        b=DrL12HmllLfEQPTiz4cmNYT9oLDMOhGgPTJKYxuBFMnopUIMWphtTEwM+PUCLimVRR
         PGAsHJuAbtduhGWrfq6HdkyrjHTobWdBc4vP0Uw0vUFcSli+g40EcKD4s21wHaFCtclI
         9la00al54eIGbpwXA6q5FMoQi55o//oWYQvfK7XnK3CFA1SNkS4VsPl26r0YukAtDKZm
         FvZmH4KEOYMaiWKrsYuJeM95/ySWOVST41VeP6HkmYdvqNwWnUrfghNcK/yKajDT/6RU
         +TkLVTd6vUwSRMgGZqxB38T0jYT5xHWrUswIMiZz0jcubF8tbq0oO60tvKBVCjA0XR24
         Zuxg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=PAf1VwCj;
       spf=pass (google.com: domain of 3jleexgwkaek3lxt4zw6lypyrzzrwp.nzx@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::104a as permitted sender) smtp.mailfrom=3JleeXgwKAEk3lxt4zw6lypyrzzrwp.nzx@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BgVWytC/cAZzAKfiP6fhaRyia36c4AoHvpjd5vrFngc=;
        b=QlKNh7OMphiDGr59jPynDVaBeYVQPju5nBGrWr/5gZn6TV5RnTNnecQ/mIc9a/9C0B
         sKgY+kDGPTgB7rDoWmXXsujGmh7CgBb0b+IDXlMweFW2Dy6xIl8fqOOKlPBmUQmrTRta
         n2liConPD2GxePaSj4bDwV2ZOGMk6sqGzMyDG25HOySwv4C0x0xnnV1o8LuYM4K0pvlE
         GcACO4k9urgvF2jodO1iRiQlwqFUz2A+eaJYzw9HmrxgZAI0498RG1l9oT6p853CwtMj
         wkfkFWEiC9NA61RU981yjFOl69fRPFrXGkZ0JredXAe3cVSYra1NhmXr1FPNTHnnEQtR
         1S7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BgVWytC/cAZzAKfiP6fhaRyia36c4AoHvpjd5vrFngc=;
        b=IuEH5c13bofmZtk+GfU3Aa9aFRqT0gfzsMMvrK+gGZYRnmeqznk/jpitoPr9RZKv4V
         bHGgfcv+jYQUY8SwSFhP6AsPnD+YJg5HP0S9JYniYkFgyrU/5FqKJ3Ky4o2SHGVSd+Yf
         6SJkd4qjzEFUhnTS/AaDFtO3/AfnqZSSa9dVm2wFm0CsFFNRmidfRVez9DEe+czkYd2r
         KHG9/wz3hfE/UElacJ3z1d1032fKQaK20R5P7NkanudXbH90Vo2dqfW8s3+rLhG2ochN
         JbDerWtg7RyRgJ7+hFO7D/jEdHt1PBGNrJuX3PqNEFFgM2Q3qIGP2TGiKKzTVwht5zDx
         UrEw==
X-Gm-Message-State: AGi0PubsfOsQTQn7mjpOMkGd3I+UkIXIALSaSo5wxxyCfQXpRT2SXl7d
	2v8i62pi6BEakT6RqMcUyUk=
X-Google-Smtp-Source: APiQypJVsAaKxlxowsHpmJ6sF+7ci/M2Abjge/rX+e+l0vRSA0CZu8xbXQWXDKD+3lUA2L6bk46fPQ==
X-Received: by 2002:a62:dd4e:: with SMTP id w75mr8592705pff.221.1587435303002;
        Mon, 20 Apr 2020 19:15:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:bd4b:: with SMTP id b11ls12426033plx.4.gmail; Mon,
 20 Apr 2020 19:15:02 -0700 (PDT)
X-Received: by 2002:a17:902:c194:: with SMTP id d20mr18317029pld.256.1587435302531;
        Mon, 20 Apr 2020 19:15:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587435302; cv=none;
        d=google.com; s=arc-20160816;
        b=NgFZGuxNBe0x87/1ckWBxNqOUOluxJ4ID0U4TGnnXWLJLcVmfubzs0PKuFDx0VvLsF
         R+7F4Jp6cNgN7YsaSbuxaiAalYvcopeveZ/knAT/gGH/WXAie7ImfPRpNW9S14EwuoyM
         2HObRblyF7XJVzxmxh6QjlcnuVzKR1+4q2iSZL+F1UsEcoaoQCrhr0BntoaHdIT6sd1B
         9MskIyQIE9lwwy/Zcm0Vl0DEz2s2cGyuUwtiFHhSMqmLwuxA58ZRxifEVhKTYanuSDQE
         MeJ2bS9FYVNL6IaPgvHJBLbdByAesa0Pm6ljtHRKUYzv+sPxFt5AKSMpX9+NLwGnuP8/
         qRxg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=4sfew7veNdM2nA7ewK2dCK1a6fLxS0TvqgODnTsa84E=;
        b=SsP9E/eAZo/PcvL8ynqP4c5zGN9CvnXFFT+dBexGGW/A8nAjqnIU4zyuxsl7aPqs/w
         UandcllB2zYoTx6rt14E8+jgiY8IvieeR8V8jGlQoID7Lhu1utBAdW9DH/Ta2mkAvjPR
         juDf9s5haBoa+UBFHFN18ka7xASutK80wSqSvrXfniVPEXcM30wlaXdcdew6UHDbvp8P
         wKyVtu6g0jMeCxbEXTUHnWsQ9plGn1S4OONA2e8d7CVrGTGetU6DYFT307Way413I5Qf
         W95airdfsi3S1gjEmto8jaR9i7z8vA4Gf07gw+mo7skekROPKc6gf5RmRRzJ6TMr/nuG
         ey+Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=PAf1VwCj;
       spf=pass (google.com: domain of 3jleexgwkaek3lxt4zw6lypyrzzrwp.nzx@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::104a as permitted sender) smtp.mailfrom=3JleeXgwKAEk3lxt4zw6lypyrzzrwp.nzx@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x104a.google.com (mail-pj1-x104a.google.com. [2607:f8b0:4864:20::104a])
        by gmr-mx.google.com with ESMTPS id g23si122904pgi.5.2020.04.20.19.15.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Apr 2020 19:15:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3jleexgwkaek3lxt4zw6lypyrzzrwp.nzx@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::104a as permitted sender) client-ip=2607:f8b0:4864:20::104a;
Received: by mail-pj1-x104a.google.com with SMTP id r5so1869897pji.9
        for <clang-built-linux@googlegroups.com>; Mon, 20 Apr 2020 19:15:02 -0700 (PDT)
X-Received: by 2002:a17:90a:cc9:: with SMTP id 9mr2908203pjt.16.1587435302127;
 Mon, 20 Apr 2020 19:15:02 -0700 (PDT)
Date: Mon, 20 Apr 2020 19:14:43 -0700
In-Reply-To: <20200421021453.198187-1-samitolvanen@google.com>
Message-Id: <20200421021453.198187-3-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20200421021453.198187-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.26.1.301.g55bc3eb7cb9-goog
Subject: [PATCH v12 02/12] scs: add accounting
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
 header.i=@google.com header.s=20161025 header.b=PAf1VwCj;       spf=pass
 (google.com: domain of 3jleexgwkaek3lxt4zw6lypyrzzrwp.nzx@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::104a as permitted sender) smtp.mailfrom=3JleeXgwKAEk3lxt4zw6lypyrzzrwp.nzx@flex--samitolvanen.bounces.google.com;
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
 kernel/scs.c           | 16 ++++++++++++++++
 mm/page_alloc.c        |  6 ++++++
 mm/vmstat.c            |  3 +++
 6 files changed, 38 insertions(+)

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
index e1a8fc453b86..7eea2d97bd2d 100644
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
@@ -41,6 +43,17 @@ void __init scs_init(void)
 				0, NULL);
 }
 
+static struct page *__scs_page(struct task_struct *tsk)
+{
+	return virt_to_page(__scs_base(tsk));
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
@@ -50,6 +63,8 @@ int scs_prepare(struct task_struct *tsk, int node)
 		return -ENOMEM;
 
 	task_set_scs(tsk, s);
+	scs_account(tsk, 1);
+
 	return 0;
 }
 
@@ -63,5 +78,6 @@ void scs_release(struct task_struct *tsk)
 
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
2.26.1.301.g55bc3eb7cb9-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200421021453.198187-3-samitolvanen%40google.com.
