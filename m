Return-Path: <clang-built-linux+bncBC2ORX645YPRBP5XVX2AKGQEBR3OBEA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3a.google.com (mail-yb1-xb3a.google.com [IPv6:2607:f8b0:4864:20::b3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 73BC219FA5F
	for <lists+clang-built-linux@lfdr.de>; Mon,  6 Apr 2020 18:41:37 +0200 (CEST)
Received: by mail-yb1-xb3a.google.com with SMTP id f19sf534715ybk.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 06 Apr 2020 09:41:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586191296; cv=pass;
        d=google.com; s=arc-20160816;
        b=B9fCfHcB+9Avk09i9WBMGcxmdCAb/WPo/Q2Sf4HFQaw/hcfeS/574F6KvTPObIkz1Q
         HWSpUnpZiTL/g00x8CD8CkMS1lXLaDP3wAEVJ8uIgQF29mBFTBqsR91BgQ23mBMaYuUN
         XaB+iRel2E9++qqipzrUWWLYWxDbHZEDUrkDhc3jta9UZ61yJPTE4j1h23cDYCbLAB3K
         0k3wt/dGNES/Z3EvaLJYm2QQ3/Y46ixWKdRjwmMnqtMN58G6zIaL7AS21CR0q2i9x6yn
         idcID0s0RiQ5yJlDeIAulmqBYtr4a5GsvF7xqGIgLtubFu2o5RyKnUHAnDP+v4rUhITQ
         JrNg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=NEVVTZJOfUaDXvT8jBn+rIQU73bl+jnkc43vbI0MuT8=;
        b=h2GjLReYQFrz+r+pvbTQ9XenOotIMEPjU/uOMUVeJUZP1E0R49dwR3/3SDpyI/ZPm1
         pwP8a6QRhmwowzbwV0jI9iEcauS179Px2BdmVx+uMkqGoZH2dQkOwmHHIbyI0HVcGuZ2
         2RSDcF8qzEn80J/2/79P1q+uO+1z6NK+1bf1BOfNUlCtUjQ8RZGZJpFOOPFGADNjxHxQ
         Tr4kj3AN5lNsK6rJAwf9ceajSQaSzAcSizhCV4B+fxKUSVp5uKHlZ+bFtrQ6l07EJD7q
         qUDX7hkaEVrPyo70KUx8pyu1N1ZuR3428hEdiSJ2QFxOOjDE/4uZ0GvHBlNmrrg/nUoR
         HZEw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ga0tMwo4;
       spf=pass (google.com: domain of 3vlulxgwkaj0p7jfqlis7kbkdlldib.9lj@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=3vluLXgwKAJ0P7JFQLIS7KBKDLLDIB.9LJ@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NEVVTZJOfUaDXvT8jBn+rIQU73bl+jnkc43vbI0MuT8=;
        b=jPSfU0VpsdJxwCk1XUTehERanw3gzZ8MxCi31lEc9uDDaixPVYY28IlYSbtUbUwGpO
         cW4BHQSiUQhMSrkumRETZmYlGyWGswi02uuJh7/2FjUFa1CLFqbaLRRhdiAp0UMe497Z
         jtZnkfYmwfKU9uRhsLyLjS6WKNo6XSRIJdw3194isJUBW4EA00Mb+5wBjltG8Y7JIXeT
         VR9frjARnV2vKv7Ikx32t1SB9Uy9W1MHLBnVd0UgwUJztRiZLb4qVhDGbf5oTMeo7A5j
         2x5TscTHUUe/udYQP0z3BJRN5VkOc2moIeirbiOCiX9J28Yp0VbcGkUqcse0KYzP9DWU
         aBrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NEVVTZJOfUaDXvT8jBn+rIQU73bl+jnkc43vbI0MuT8=;
        b=DUlG2C+W65ceWRQ0SWbN8orhmx7nV9duupbU0u3ovQACJb3JvCc1FdfSfNlhVo+bPB
         EZUac/pJMi2qQtUVpWNXS6adZ9Y1J+cMpWF7p4UAqKGiymwQ9hUXIEnpsWSkuKSNPx8s
         jF65CaVDWKmSk2n3cfLDOqnz/A8FscWJd8+FWJjKHgyDaBBikBMZBjhPj9C7rpOdeLs7
         bVq68i9u5WYIR2B1afslr0y4wGoI1kWUono7vfYbES0A/1kdTG9X8t0XoQatOUWd6e3J
         4ql8/qCSrr0AEDiBvdsVDn/I2mBDid6xbFuJtabTWNqUykwwSYdiikVaZKWt9tdZbB8f
         8WLA==
X-Gm-Message-State: AGi0Puav0InYVAFT/ENrnLIqI49c+yhsKERfGGadXTIgYJ58YE27PZ+g
	2H57sROcU7zO9Optefu8JCM=
X-Google-Smtp-Source: APiQypKAYUtx7HqZdpAnVoL14PXb4hkXoxMggT/5SGXzkOTeh1zLDeF0SY+4AAn2bKUYBO8vob5YcQ==
X-Received: by 2002:a25:6fc3:: with SMTP id k186mr35395973ybc.327.1586191296078;
        Mon, 06 Apr 2020 09:41:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:e00d:: with SMTP id x13ls22844ybg.7.gmail; Mon, 06 Apr
 2020 09:41:35 -0700 (PDT)
X-Received: by 2002:a25:6f04:: with SMTP id k4mr37908943ybc.86.1586191295673;
        Mon, 06 Apr 2020 09:41:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586191295; cv=none;
        d=google.com; s=arc-20160816;
        b=S2zivGjziRkhEtNyB4BCzjioJkbVMiYyl6gCSZcAnlVnlEGGv1r6PkcKJAi2RZOKkv
         TEab7hVWXrGBdX4o2A6jTQthyzno9eB4Vvy7lkco2W/ygbeZVWXlb383eZZGU7/9JHCU
         sE9ZrsMbKmJvgjKKI/+A8HtUeAD0nV0vKynvNutc3YbjJzmBfZgAu6t2uaKYBEcORHDJ
         q/eQ98IWQcmBtQ+aQRxxCNjpiJIaRcGwx7K3RL5qvlBaKcJGgfasE4S8Z632TVj6VhLE
         T05an8KGsowBO7BGlXvQImKkNsVEJz49UrV96xFLAgNSzgwdZ6TT5ecBe71VtzGnUEY8
         PGtQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=VAnQEUsgY33nOzjUN917hwd14X5vhInOkGlwMgUW6to=;
        b=G/aYuuU/YIOPtmXGT1HDpf18sTuiiZl7A2wGg/rVwMucM1I03RI7BLIv+6JozYJUr0
         t5uKgSjC2tl2mmoa+mYn9iIXtJexabK4UuqmDQ21zHbvo26jw3ao3x91Cu6rY1CapHk9
         mKgdzXHG4UvSslfY0f8YH8wcqsVqSsI7odRXLSmlsEgYeWywJOr5DhD9+0iEJG+KtKP3
         CqVusgmh7jY6EPCgfcXPWWf5Hm4g70W+etboWm4JpkLoS6NL+128Jt1UW3AtO0yrFvoH
         AuBSJuSLf5ERC4DsE81AER1vN8+QZltYVKz2fkUQghLCtuVgbujHXAMI4f1yr/TnLG9I
         4iBQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=ga0tMwo4;
       spf=pass (google.com: domain of 3vlulxgwkaj0p7jfqlis7kbkdlldib.9lj@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=3vluLXgwKAJ0P7JFQLIS7KBKDLLDIB.9LJ@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x64a.google.com (mail-pl1-x64a.google.com. [2607:f8b0:4864:20::64a])
        by gmr-mx.google.com with ESMTPS id d72si27265ybh.5.2020.04.06.09.41.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Apr 2020 09:41:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3vlulxgwkaj0p7jfqlis7kbkdlldib.9lj@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) client-ip=2607:f8b0:4864:20::64a;
Received: by mail-pl1-x64a.google.com with SMTP id l1so93277pld.14
        for <clang-built-linux@googlegroups.com>; Mon, 06 Apr 2020 09:41:35 -0700 (PDT)
X-Received: by 2002:a17:90a:9e9:: with SMTP id 96mr190140pjo.168.1586191294850;
 Mon, 06 Apr 2020 09:41:34 -0700 (PDT)
Date: Mon,  6 Apr 2020 09:41:11 -0700
In-Reply-To: <20200406164121.154322-1-samitolvanen@google.com>
Message-Id: <20200406164121.154322-3-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20200406164121.154322-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.26.0.292.g33ef6b2f38-goog
Subject: [PATCH v10 02/12] scs: add accounting
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
 header.i=@google.com header.s=20161025 header.b=ga0tMwo4;       spf=pass
 (google.com: domain of 3vlulxgwkaj0p7jfqlis7kbkdlldib.9lj@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=3vluLXgwKAJ0P7JFQLIS7KBKDLLDIB.9LJ@flex--samitolvanen.bounces.google.com;
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
index 10d7e818e118..502ab5447c8d 100644
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
index e84d448988b6..a6c60e6efa68 100644
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
index e5f76da8cd4e..79f07ccac63e 100644
--- a/mm/page_alloc.c
+++ b/mm/page_alloc.c
@@ -5338,6 +5338,9 @@ void show_free_areas(unsigned int filter, nodemask_t *nodemask)
 			" managed:%lukB"
 			" mlocked:%lukB"
 			" kernel_stack:%lukB"
+#ifdef CONFIG_SHADOW_CALL_STACK
+			" shadow_call_stack:%lukB"
+#endif
 			" pagetables:%lukB"
 			" bounce:%lukB"
 			" free_pcp:%lukB"
@@ -5360,6 +5363,9 @@ void show_free_areas(unsigned int filter, nodemask_t *nodemask)
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
index c9c0d71f917f..287a95987b7b 100644
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
2.26.0.292.g33ef6b2f38-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200406164121.154322-3-samitolvanen%40google.com.
