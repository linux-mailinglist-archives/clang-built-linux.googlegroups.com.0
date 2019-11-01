Return-Path: <clang-built-linux+bncBC2ORX645YPRBPG36LWQKGQE5AJYGYY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc38.google.com (mail-yw1-xc38.google.com [IPv6:2607:f8b0:4864:20::c38])
	by mail.lfdr.de (Postfix) with ESMTPS id B0E54ECAF7
	for <lists+clang-built-linux@lfdr.de>; Fri,  1 Nov 2019 23:12:14 +0100 (CET)
Received: by mail-yw1-xc38.google.com with SMTP id 202sf8329922ywf.8
        for <lists+clang-built-linux@lfdr.de>; Fri, 01 Nov 2019 15:12:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1572646333; cv=pass;
        d=google.com; s=arc-20160816;
        b=NKFPmx/pM8Bfw7ClYgBvbkzJ6lrewUmOZLjeFXF5va2Y7IiAK+nL/7wsnNKtNJ00ca
         NOr4ArynrLVeyKryviHTzbX/YuMwK2jyEM/xtzUyTcBVGDHzCAjxcgm72l1Mw7o6Kact
         Hqril2rZ32EGYsR5vbxejoCdADnhxd8LVn7wz3knFK0MQVWYqTyDRCQxCyn80y2EwqKZ
         DXFW3ctQEaUjQywV2eI0x3zq1kjdH9cMbQBOmr5mUYCXI9ku6erb89dNcM9G1aNSkPeW
         2tu39buSFopci2/DtSVYf85/kZ0MFxxmwe8N8zElG0W4NZt2xOl5lue5pGnsJEezbEHh
         laxQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=fEupDOZQNeLDdsd8CpsKsWXCIJeqb8VccvvFjaYUT7M=;
        b=c5sgw2ej5wl7w4+9OHfeDGYUjUcRUktV9kYjO1+LqibI676B56G/z+KyV2pDzPGTZY
         LqPM9eK1ThOttxdlwMXumoQyh7vxca5rI1YnI+Bcnb6h4nz8y30zxwTmD+DxgbGy5OAk
         nB7HjlZbC8iN11+lpP0ZL7Zw8QA5HFaeXL803bnlA8KuBzB4RLGPN54GtqI3OYAE+IUx
         7XNgdyxJVcU55bRNnep8Je2rB0Yx6CYm6R5ia2mZD3+I/OKKXdXmc8m27kXAc55O6l/p
         hRnTgjsr7h0JJqqU9mJ83Smy/iWe8OCnQ8A3joSQZ7v0b/noxZJ1MWn6r0jGyo30WjdD
         XnIw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=lcoMeZZt;
       spf=pass (google.com: domain of 3uq28xqwkapsvdplwroydqhqjrrjoh.frp@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=3uq28XQwKAPsvdplwroydqhqjrrjoh.frp@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fEupDOZQNeLDdsd8CpsKsWXCIJeqb8VccvvFjaYUT7M=;
        b=G56QuZjIoz12GuiIhIwqRstYjvI1z5cBu27TmONGio/gyzKfAKpdRlsRzHzUBX0XTy
         vt18bJL/x02D9jibev/UlsRsaTexuqcwujydS8g3mWbCrDdGyNHyo6wy0m/RKIO3yzBV
         m7EAmi1/Dwl1oaLjxlANOjld/E9XU91LW7lVfr5nae5djQLzOXfl9i/JpkYI+8A3LSkf
         kBj5vJ0WCj4Gvi+avmg6SC9nW1kjO/0/icRUBhbS8znitfQn9QcgCOx62VFazuXT77qn
         etqTZk/fg94HlkLiTAJAS69dV4jlvIfFHtgKUBN8Euxj0rtanE2BE37FVxbsyXk3wBOX
         CXqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=fEupDOZQNeLDdsd8CpsKsWXCIJeqb8VccvvFjaYUT7M=;
        b=DtcMg5eysqGtfrjLGFDqhC5F8e6PzbvJVyRVHXInCtBA9UU6pdvbhVYIRHxrMxXQsa
         GF7EXQpZsSwHunp1lX20tyAS1AoeKa4Fm6Q9dPwQR43rMPAicH/9t+F42vTgaC/ObnQX
         3ODkAQ9gSrWaQhp07WfTlUXxAb90rBCY+AVGiZ3vyggk3hZjMWXXL14GxJlRXFllNC0B
         a4tdn+AkI3+Rda+luJZDmDuKypOpC4vKCkidbx4Rq1ZPgNZZESlFIKuskw7ZeHyT+Bu4
         U9morn+y4K2jIrkwIsNqBz7hge82MP2r/YBEMxqOxfJVTobZBTJIc5Zk9EsdoPy6q1TK
         Dp4A==
X-Gm-Message-State: APjAAAUPOzUL7gPlTQ3wPnjuAteJU8VW3+dvUIEXOMun7bSi4unVaFNI
	21hDshvyIQRafztfcQjw8Sw=
X-Google-Smtp-Source: APXvYqyLX/UVBmqFngnhOWSt9D5W6GYeZdMwSXEO0KQcRebr70AVXeDMe+i1+4NXegnZiTxDeeJH2A==
X-Received: by 2002:a25:258a:: with SMTP id l132mr11692427ybl.227.1572646332209;
        Fri, 01 Nov 2019 15:12:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0d:f686:: with SMTP id g128ls1158855ywf.1.gmail; Fri, 01
 Nov 2019 15:12:11 -0700 (PDT)
X-Received: by 2002:a0d:e4c5:: with SMTP id n188mr2987246ywe.112.1572646331835;
        Fri, 01 Nov 2019 15:12:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572646331; cv=none;
        d=google.com; s=arc-20160816;
        b=F/SGR7lsazEnz9ksHUR+hj97jtGkGz9jMZAABXq+m2ZQfjjywShOq6H53Kirgu7Tvd
         zGTGXK0Ds/1cxDoxAjbCY+uKI4RPUxDi0OEJcLF3wMDwnbaATlYD3R46QNMNHxjzJQd9
         tUzsixodVIh16o33Mwls8cwmi7azSyUGcixUhVD7QYIWPfSUjG7NME4FDo6R0vrM3MlU
         owqUVQUdYi1cm2eeASyiWAjWKZVLvsD/XYIICAM/JiR3sn8jV6UpQYfo4FUIY1wT/8cb
         VLnfc5nfe0DnoOxWIKN9Gv0Fv1QjhzwZI6r0xzyjmPPBKq3jdRINq7lujGTP5oVEWjBU
         8X6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=LwwDQXrIVlzkqkUkZpiUVrrf7w5cRtF+1klTx8yKO9A=;
        b=HGKl2GhefkfhKkQUc6lnTXXr/jhUEb+yvG1kfTVLNqhvc3PzzQxoqEk7WHOO2IBawr
         vPYJp6DwlIgf8a5NorDbcY9l0QTTaTBb8rrpHgHkwmutOn/6Fau1lFBjLaQ6QIWUe7Rc
         HzkQjWAfHcu/kCnTY7IKRJIq2dQNxZ0duuwnK6o/bpjfVRd1c4WZzZhv2e5iksROwMi8
         KeDyfFkGuwIyrQd2ZA3BhfzWPZPkmd18o92UUcAAPpJORgrFs3MUILOSG+CMrVBL5myW
         XONVSzMlNFR3YAfAeSAune+Av6wjUou0R0nqvFiqPbgwtG1Yxx7htsD042WeHbVN7p5/
         J2Yw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=lcoMeZZt;
       spf=pass (google.com: domain of 3uq28xqwkapsvdplwroydqhqjrrjoh.frp@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=3uq28XQwKAPsvdplwroydqhqjrrjoh.frp@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x64a.google.com (mail-pl1-x64a.google.com. [2607:f8b0:4864:20::64a])
        by gmr-mx.google.com with ESMTPS id m2si602693ybm.5.2019.11.01.15.12.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Nov 2019 15:12:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3uq28xqwkapsvdplwroydqhqjrrjoh.frp@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) client-ip=2607:f8b0:4864:20::64a;
Received: by mail-pl1-x64a.google.com with SMTP id p14so7168469plq.2
        for <clang-built-linux@googlegroups.com>; Fri, 01 Nov 2019 15:12:11 -0700 (PDT)
X-Received: by 2002:a63:934d:: with SMTP id w13mr15550340pgm.185.1572646330528;
 Fri, 01 Nov 2019 15:12:10 -0700 (PDT)
Date: Fri,  1 Nov 2019 15:11:39 -0700
In-Reply-To: <20191101221150.116536-1-samitolvanen@google.com>
Message-Id: <20191101221150.116536-7-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20191101221150.116536-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.rc1.363.gb1bccd3e3d-goog
Subject: [PATCH v4 06/17] scs: add accounting
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Masami Hiramatsu <mhiramat@kernel.org>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>
Cc: Dave Martin <Dave.Martin@arm.com>, Kees Cook <keescook@chromium.org>, 
	Laura Abbott <labbott@redhat.com>, Mark Rutland <mark.rutland@arm.com>, Marc Zyngier <maz@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Jann Horn <jannh@google.com>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Masahiro Yamada <yamada.masahiro@socionext.com>, clang-built-linux@googlegroups.com, 
	kernel-hardening@lists.openwall.com, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, Sami Tolvanen <samitolvanen@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=lcoMeZZt;       spf=pass
 (google.com: domain of 3uq28xqwkapsvdplwroydqhqjrrjoh.frp@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=3uq28XQwKAPsvdplwroydqhqjrrjoh.frp@flex--samitolvanen.bounces.google.com;
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
2.24.0.rc1.363.gb1bccd3e3d-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191101221150.116536-7-samitolvanen%40google.com.
