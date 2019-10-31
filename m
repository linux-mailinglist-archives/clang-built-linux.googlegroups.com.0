Return-Path: <clang-built-linux+bncBC2ORX645YPRBBFA5TWQKGQEM6BG6CI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe40.google.com (mail-vs1-xe40.google.com [IPv6:2607:f8b0:4864:20::e40])
	by mail.lfdr.de (Postfix) with ESMTPS id C229DEB523
	for <lists+clang-built-linux@lfdr.de>; Thu, 31 Oct 2019 17:47:01 +0100 (CET)
Received: by mail-vs1-xe40.google.com with SMTP id b63sf1187690vsb.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 31 Oct 2019 09:47:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572540420; cv=pass;
        d=google.com; s=arc-20160816;
        b=uZFjcTEh0cb5YF2kcECwNyZeZK3k8UhviHyIyaTNB4DFiZoP9chfJUvShWstBZhEjg
         QjebvqoonXwGZfTjgJQKaRWI3HLordZr5Oxk5obbBTggTwiuK/D4qQunwYJ7P5vbcoMt
         C0O0/uQRgsOMYLCqEixnJ5VuDKtzdGsJ5fELZiRDV3FbPhyXqd5mrABfUGhEwpfnXUc+
         cpdo2Bpq8frUoiB3RBS3Bw3OwywDJTs5CWWLaptvemMxpKusx6Zf/N9v/78tDJgyF364
         w0oUUQL6AxrIQo+DnJ8uZKL88WeNZ/rBWCCZDCy9CXJGVx7vr9CgFifPsBS1F8mFXjiv
         10HQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=RQ8ChaHMve2PJgdyc6/lNX+3PJ+n9O1ft+Zw0Pfgrbg=;
        b=ZingoeaVM9SYsFy+WaU3+MrKNPhrqQ1i3Z4dbH1sxY7FqOBRYu3YEo41aPV0tqRs+B
         6OsQL0uft0AdXzvyX4i0X8lk+/2LM0FZ1nQ1qQsJ1OIvc1VvKq4jHnK4c0WYWBE1nQqS
         WZZeA51iUPy2sEqAKYNVhNTVs1K49UOeZWDwal6JVg03xbLwvip2mAZWxBbOXBK6vdh3
         qvr0xb6J6vQwMhdTrpkc6MlOOUU6lBYKM50s0Ebn9G2mb2GbMQ+TdYRum1wOs3iMhNSl
         PsXRcgMesIRJh7eatgW5mHJz8KN+dw/h6oB1WY7Cb/Upy+TzFULYu93L91dIEqR7leSM
         jxSw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=rs0uCO2L;
       spf=pass (google.com: domain of 3axc7xqwkaaqweqmxspzerirksskpi.gsq@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3AxC7XQwKAAQweqmxspzerirksskpi.gsq@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RQ8ChaHMve2PJgdyc6/lNX+3PJ+n9O1ft+Zw0Pfgrbg=;
        b=PoTMf8va5HmMssTirAEt4+KPvcIWcyQy1pgdEL+jZWFmJuGnpiqY8RKJivsxdm/I0g
         LzL+xp7l7o2sqymzbMQDeF5ELV+4Pib1anUDzcuwp345sf8G7G1TrYLZYS580AfjLBWt
         DQMW6xdwfPWQKsLZkMLg0+7oLYHH9zUDZlevA+rVtJyEOTyC0nxnnqLjaA3rX+HhexO9
         UCC1N5qCo0xR04yS2kE1fPuUD6lSFq7sRyb4wJAUY7kg0c/m3QzY54QyR6+cXRojyZmu
         V/UVXW78CQ5eJIoiId7J0n+nurS0KONRSmga30d4rkQ2vTmokjZoRmk2H7vvN2d+GT6F
         zgqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RQ8ChaHMve2PJgdyc6/lNX+3PJ+n9O1ft+Zw0Pfgrbg=;
        b=h+ovowEaUJbpBpk6WHLJo/ru/tgXJ+frB+CLM9VU+r6+vk3aFkDGU2b+/ts5Vmudoy
         Upo94Q3YtJjwtigGdB/42ll1H5/fMxSuq5H4VFD3FthbVHcsCCjKo9DWj8Q/a5rA31G0
         TBvF/yE9kotk8jcC7aVPdxkvViJxQ6s7l0JtYV7F0Dk8PKgjkPnO+aYBIX/w2H6hQ5md
         BDIMhRtVpRVfO1t1j03tOvgYj7cMCRZPnRpHWQ5xxsoIoD0zwrhjJicmFbQuhPvki3aR
         +B9+A1z64Uv4KOK2k6e8j23nKBVGrQQUjFOQfn2HGIfxACv7SZg4M4OgytAF/pnGQoKU
         +baA==
X-Gm-Message-State: APjAAAWxyCwxM5G2n4+KILM3QVTZ4Rx8u2wGc+s3dN+DJ96ni11CFQfc
	ADN5nFrM8MjPTchobi70DIk=
X-Google-Smtp-Source: APXvYqxU5XpXd28ZT0Ctgq/sWpySUsenrpN14M69thuTiHcVvaO3iQXOW6zjB+Z9CrPV0g99wwThVg==
X-Received: by 2002:a05:6102:213:: with SMTP id z19mr3116080vsp.20.1572540420661;
        Thu, 31 Oct 2019 09:47:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:ef8e:: with SMTP id r14ls296062vsp.15.gmail; Thu, 31 Oct
 2019 09:47:00 -0700 (PDT)
X-Received: by 2002:a67:de0f:: with SMTP id q15mr3494207vsk.28.1572540420248;
        Thu, 31 Oct 2019 09:47:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572540420; cv=none;
        d=google.com; s=arc-20160816;
        b=Dkdpj/+RQkVB93Zo8r4Y9HBB7d62TGyL08ApVcQhCFsksXevgQuycmk2OtBMyS7J8f
         uT0X0sglroGGTTiKuKAz6q26cxVWu8PCemJT3GBaKAJpcTOpFtgK5ZRdJC2J+UqRTU+c
         FeSQzbajDve2YqZeaxKokEXsaPbUHNNZc7DdxLpLwMGhfcarPo3CDIOLTew1qqKOUzNv
         AnZ81vPpiE30qBoRM6sGpgS7BVygLxoTDeEy9dnktohFl5BNEdouC/xSL0FWNhsblIIt
         OahK0mKuHlgoeMr/+D6LRMLNJJGp9hf9kaMCgCSFQvTQyyYa0SslI4qxJL37XaoOFZ74
         TTRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=W6zeo7Q7mErxhGrkP3ZQcZB+2c+vbDgfAATe7zE6k8w=;
        b=ID8ILoufg+kJEuVa+FQ6uIDJl/nXGd9UasrHvWy9kqF0saOz0BaCUl/01j+fmHpR9r
         YEboyIPk5b0y4pAy/xf2NWALrjzk/uPlLYv5gEf0HUC9eCg/85kr9iDoAePAtuD+5T0P
         UOO7At6yji0vuSDIpBINulTdgLBqkjaFoM+T+fU5mIV+rnsyooElPrHt7j3KiT+nAbRl
         TA7wQYTyHBaS6ULyF7rBjMF0oyqzquygavYqizsZ2YuctCdJxVFfTUEX5stvFhrunrJZ
         9O7+VVMfXtusKQx91FlQii80OPq83or48+kUve0/TspFBFyhy1TmDjCZ2/nesLhWL1TO
         Ejtg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=rs0uCO2L;
       spf=pass (google.com: domain of 3axc7xqwkaaqweqmxspzerirksskpi.gsq@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3AxC7XQwKAAQweqmxspzerirksskpi.gsq@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-yb1-xb4a.google.com (mail-yb1-xb4a.google.com. [2607:f8b0:4864:20::b4a])
        by gmr-mx.google.com with ESMTPS id s19si176129vsj.0.2019.10.31.09.47.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 31 Oct 2019 09:47:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3axc7xqwkaaqweqmxspzerirksskpi.gsq@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::b4a as permitted sender) client-ip=2607:f8b0:4864:20::b4a;
Received: by mail-yb1-xb4a.google.com with SMTP id n71so4942643ybg.5
        for <clang-built-linux@googlegroups.com>; Thu, 31 Oct 2019 09:47:00 -0700 (PDT)
X-Received: by 2002:a0d:d746:: with SMTP id z67mr5054248ywd.205.1572540419634;
 Thu, 31 Oct 2019 09:46:59 -0700 (PDT)
Date: Thu, 31 Oct 2019 09:46:26 -0700
In-Reply-To: <20191031164637.48901-1-samitolvanen@google.com>
Message-Id: <20191031164637.48901-7-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20191031164637.48901-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.rc0.303.g954a862665-goog
Subject: [PATCH v3 06/17] scs: add accounting
From: samitolvanen via Clang Built Linux <clang-built-linux@googlegroups.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Masami Hiramatsu <mhiramat@kernel.org>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>
Cc: Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>, 
	Laura Abbott <labbott@redhat.com>, Mark Rutland <mark.rutland@arm.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, Jann Horn <jannh@google.com>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, clang-built-linux@googlegroups.com, 
	kernel-hardening@lists.openwall.com, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=rs0uCO2L;       spf=pass
 (google.com: domain of 3axc7xqwkaaqweqmxspzerirksskpi.gsq@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::b4a as permitted sender) smtp.mailfrom=3AxC7XQwKAAQweqmxspzerirksskpi.gsq@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: samitolvanen@google.com
Reply-To: samitolvanen@google.com
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
 kernel/scs.c           | 19 +++++++++++++++++++
 mm/page_alloc.c        |  6 ++++++
 mm/vmstat.c            |  3 +++
 6 files changed, 41 insertions(+)

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
index 7c1a40020754..7780fc4e29ac 100644
--- a/kernel/scs.c
+++ b/kernel/scs.c
@@ -11,6 +11,7 @@
 #include <linux/scs.h>
 #include <linux/slab.h>
 #include <linux/vmalloc.h>
+#include <linux/vmstat.h>
 #include <asm/scs.h>
 
 static inline void *__scs_base(struct task_struct *tsk)
@@ -74,6 +75,11 @@ static void scs_free(void *s)
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
@@ -107,6 +113,11 @@ static inline void scs_free(void *s)
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
@@ -135,6 +146,12 @@ void scs_task_reset(struct task_struct *tsk)
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
@@ -145,6 +162,7 @@ int scs_prepare(struct task_struct *tsk, int node)
 
 	task_set_scs(tsk, s);
 	scs_set_magic(tsk);
+	scs_account(tsk, 1);
 
 	return 0;
 }
@@ -164,6 +182,7 @@ void scs_release(struct task_struct *tsk)
 
 	WARN_ON(scs_corrupted(tsk));
 
+	scs_account(tsk, -1);
 	task_set_scs(tsk, NULL);
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
2.24.0.rc0.303.g954a862665-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191031164637.48901-7-samitolvanen%40google.com.
