Return-Path: <clang-built-linux+bncBC2ORX645YPRBHOIU7WQKGQE3FAKFDQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83c.google.com (mail-qt1-x83c.google.com [IPv6:2607:f8b0:4864:20::83c])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C495DCA6D
	for <lists+clang-built-linux@lfdr.de>; Fri, 18 Oct 2019 18:11:10 +0200 (CEST)
Received: by mail-qt1-x83c.google.com with SMTP id m19sf6363550qtm.13
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Oct 2019 09:11:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571415069; cv=pass;
        d=google.com; s=arc-20160816;
        b=wMjUcYxyAfqYde+YkL3qN6f6cGa92JKmxCKRoaNXO1iWWKaVP/3YXBR80OpNZOoQGT
         3vw0t5bWYJmDI7vDHGdRGf3PuTsyhhLCEc+e/OHgS9v9yLJajZXvAjhw4NdmQbPi55JS
         UAefYu3wPyLMat/wHAs4qxz+/0vBcc8QnIbbkg02oTNP2pIOH3o84ymE55gfpYO1h75d
         MKeCiQSpI0Qh4eoz7FUP7VeqLdqFm1iRofpQx9x5gRIBUaooT0a7xD8+Jiqe15RdQzmr
         +MFP3fkWSEtwvOb64PT/QagS0Y3zzwl2kgyUtZYwaNrObCBHXuOBMH6Vsd4rNnx/WMLB
         mPng==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=wfXPs9EqGPmoZol7GXGaG7W8PHA0O80mQet11sVNAEs=;
        b=XTb/sgMCmp7XNwlbwQ5H4+LIk8NllAiQJxRMK14saH5YbMj8m5s6CmVhxWVFIqaVyv
         uGE6mQkLQ5IAvT2CKS0aNu6FuVORXRMPSMaTW91X4pJ+JT1/VJPsmk/OFvbfxCpqhXaN
         ERjPnlQNlhHtqD5eDKzIGaE54GWrbcCfoWv9PYkmBvByyRKLKxiFTf5WYEBRuuiYnc8Z
         JMmkxn+ucqx13e/Sc+aOpGp26P8UxE5HkLcpGpAo9YAbYuhhJr79+OZYgEAGHclwUNBH
         T/ZPgyaU1wDnjPV9Vt/bs9smErcvdALR2soAY2TqW0wR8X8Ts4EO7qQbGRtLX0/FeWZM
         mxTQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="KV/ow4iF";
       spf=pass (google.com: domain of 3g-spxqwkah4ucokvqnxcpgpiqqing.eqo@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3G-SpXQwKAH4ucokvqnxcpgpiqqing.eqo@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wfXPs9EqGPmoZol7GXGaG7W8PHA0O80mQet11sVNAEs=;
        b=eHdlC4jlWOTKyitueskj0Ti9FAJ6MNllQWgdGhJf6Pfa+zrvivwVPng+5cK1wfSJAl
         TLKMlVEi5r0ddsWMPeLQ/BscwGa9uUkky4HE+IEtVNhZj3k+9uOepXYqYJ58n+zSYnsr
         umxtRKR6w5NWKy2kQsk9V9+D9bUWTCvIanEC/LukB0OjFM+q0m4h8stNTB+Iv19LzjPU
         BONOneqTnMVpfZ5TJLyYDQ5O15MVC1//iVjPSa1gjkpF5TozZa9pph/lmBLghqrbjsrm
         QGYo0PZCanYzvw647Nz0pVErDr7f+DljUF/7dcECauiLzoroLqRX3AifVtdizGcUP+XS
         tepA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wfXPs9EqGPmoZol7GXGaG7W8PHA0O80mQet11sVNAEs=;
        b=GtPbLNfafFaoL9k18mkT3VjFmw9kEImuyLJ9SgUN9UKxRPDlog2wtAcwGQa3rFV29b
         cDCdpTtQ0K9QXIjL5XzuLqfEZoihEGmM9bNdIliTQxPD6PkmN3hHIl3oLeDYDnmxq+4m
         zVWkwPdXvBX3OQsfQYMj0hjv6ZNDjZJ6ib8l9k2PiAVe8tPuzyb+M/8L/D7WpwrkEul/
         SqOek9Fu0IhmDfCWXGFXOh5Sf67i9suDsWwHfbLP9BEu7WiPXqfgUYNJvFkHi+I7jGZg
         5K1qYDREnkEyEDn2U5giObEfWuo1S4ZWF2kjoDXfsX0J+bG9lHnlLeqsaC1Qoc+E37V6
         DynQ==
X-Gm-Message-State: APjAAAVmczXrZdnn4bl+UAChIj4OBVA0T2xGhCtqqK9NGfOyJg4vgQKq
	8JunkUe2IRLGW6nepzOUOtU=
X-Google-Smtp-Source: APXvYqxXjaDILrF2K75eRJ4FxLc1/DVykSRr4VidyOOnS+1/jOHv5jb8Sm6r1S/l4pgJTnfyyGbixw==
X-Received: by 2002:ac8:29c8:: with SMTP id 8mr10340998qtt.32.1571415069309;
        Fri, 18 Oct 2019 09:11:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:9c11:: with SMTP id f17ls2165381qke.9.gmail; Fri, 18 Oct
 2019 09:11:08 -0700 (PDT)
X-Received: by 2002:a05:620a:952:: with SMTP id w18mr9522371qkw.165.1571415068918;
        Fri, 18 Oct 2019 09:11:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571415068; cv=none;
        d=google.com; s=arc-20160816;
        b=MxLQQyEjzFxI5+QwkHB9sqYpfQVbBuqc1s8KuI7o36vfV1ftRBG9Vj/uYb7Iu4vZAW
         4WuaduyGG6asP4TXeZ9C76NR+YfVIX0uoUFTq243gdXlxMzm0hfPoQqcQDzp0bnwVnZT
         msda0N1iXKI+ZRKmD4K7t+GCI9/KtLIn0PFKEGwIMRKGzMK4FkhpC+feFtn/FzseDEsO
         FscxBcIFuEIPYGASg/ggmYAq2FF2JMiRF44EqCx0tarPXPF+GCffNZCwpSn/zPqHzroG
         GhpKpCL48LpVe9qzQ+WL4J7EYs3XQByJXB79jdpuMmz8+IQ9HJhEqK4u371dX2oNGnUl
         yW6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=W3WDjYH/VAvmVL4+53CGlFooJvBVNnR4Xo1gyIsB1cA=;
        b=jIhS9oELkXPlJK0HmStAhQqQHd+XxyzFbaGYHHiMOGdAok6ouNPVjo7Ep8m0+ldVyn
         +T++hIRQyh3iltWzSlib09mUgMBWIXUAlzF6oh5Tg3ft5Chk2V1Q/6WSlazZjk6gvT+E
         GOVE8SNrqsIh0tCxOFIvJMGlPDEZI0MzqFDiMGyKYpHSKLZ4Bto3iHP506esALCAU0Lw
         rEhBTx4XGZBO5MklSmXfp2PTtSRPmhPLdoG3K3dhD24JerEi1MUs3IBQmWs1KpqCNB9r
         LcWprpoIw+Irnq0TRy66qJqlkeKzfMaIhRMLqccS+lfCkTKPuxIXu/Umcx3qToP8PPkQ
         Ehmw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="KV/ow4iF";
       spf=pass (google.com: domain of 3g-spxqwkah4ucokvqnxcpgpiqqing.eqo@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3G-SpXQwKAH4ucokvqnxcpgpiqqing.eqo@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x44a.google.com (mail-pf1-x44a.google.com. [2607:f8b0:4864:20::44a])
        by gmr-mx.google.com with ESMTPS id h4si230719qkm.2.2019.10.18.09.11.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Oct 2019 09:11:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3g-spxqwkah4ucokvqnxcpgpiqqing.eqo@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::44a as permitted sender) client-ip=2607:f8b0:4864:20::44a;
Received: by mail-pf1-x44a.google.com with SMTP id b204so4971930pfb.11
        for <clang-built-linux@googlegroups.com>; Fri, 18 Oct 2019 09:11:08 -0700 (PDT)
X-Received: by 2002:a63:cf46:: with SMTP id b6mr10822679pgj.90.1571415067795;
 Fri, 18 Oct 2019 09:11:07 -0700 (PDT)
Date: Fri, 18 Oct 2019 09:10:22 -0700
In-Reply-To: <20191018161033.261971-1-samitolvanen@google.com>
Message-Id: <20191018161033.261971-8-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.23.0.866.gb869b98d4c-goog
Subject: [PATCH 07/18] scs: add accounting
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
 header.i=@google.com header.s=20161025 header.b="KV/ow4iF";       spf=pass
 (google.com: domain of 3g-spxqwkah4ucokvqnxcpgpiqqing.eqo@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::44a as permitted sender) smtp.mailfrom=3G-SpXQwKAH4ucokvqnxcpgpiqqing.eqo@flex--samitolvanen.bounces.google.com;
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
---
 drivers/base/node.c    |  6 ++++++
 fs/proc/meminfo.c      |  4 ++++
 include/linux/mmzone.h |  3 +++
 kernel/scs.c           | 20 ++++++++++++++++++++
 mm/page_alloc.c        |  6 ++++++
 mm/vmstat.c            |  3 +++
 6 files changed, 42 insertions(+)

diff --git a/drivers/base/node.c b/drivers/base/node.c
index 296546ffed6c..111e58ec231e 100644
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
index ac9247371871..df352e4bab90 100644
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
index bda20282746b..fcb8c1708f9e 100644
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
index 47324e8d313b..0e3cba49ea1a 100644
--- a/kernel/scs.c
+++ b/kernel/scs.c
@@ -7,9 +7,11 @@
 
 #include <linux/cpuhotplug.h>
 #include <linux/mm.h>
+#include <linux/mmzone.h>
 #include <linux/slab.h>
 #include <linux/scs.h>
 #include <linux/vmalloc.h>
+#include <linux/vmstat.h>
 #include <asm/scs.h>
 
 #define SCS_END_MAGIC	0xaf0194819b1635f6UL
@@ -59,6 +61,11 @@ static void scs_free(void *s)
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
@@ -92,6 +99,11 @@ static inline void scs_free(void *s)
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
@@ -128,6 +140,12 @@ void scs_set_init_magic(struct task_struct *tsk)
 	scs_load(tsk);
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
@@ -138,6 +156,7 @@ int scs_prepare(struct task_struct *tsk, int node)
 
 	task_set_scs(tsk, s);
 	scs_set_magic(tsk);
+	scs_account(tsk, 1);
 
 	return 0;
 }
@@ -157,6 +176,7 @@ void scs_release(struct task_struct *tsk)
 
 	WARN_ON(scs_corrupted(tsk));
 
+	scs_account(tsk, -1);
 	scs_task_init(tsk);
 	scs_free(s);
 }
diff --git a/mm/page_alloc.c b/mm/page_alloc.c
index ecc3dbad606b..fe17d69d98a7 100644
--- a/mm/page_alloc.c
+++ b/mm/page_alloc.c
@@ -5361,6 +5361,9 @@ void show_free_areas(unsigned int filter, nodemask_t *nodemask)
 			" managed:%lukB"
 			" mlocked:%lukB"
 			" kernel_stack:%lukB"
+#ifdef CONFIG_SHADOW_CALL_STACK
+			" shadow_call_stack:%lukB"
+#endif
 			" pagetables:%lukB"
 			" bounce:%lukB"
 			" free_pcp:%lukB"
@@ -5382,6 +5385,9 @@ void show_free_areas(unsigned int filter, nodemask_t *nodemask)
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
index 6afc892a148a..9fe4afe670fe 100644
--- a/mm/vmstat.c
+++ b/mm/vmstat.c
@@ -1118,6 +1118,9 @@ const char * const vmstat_text[] = {
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
2.23.0.866.gb869b98d4c-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191018161033.261971-8-samitolvanen%40google.com.
