Return-Path: <clang-built-linux+bncBC2ORX645YPRBCEI4L2AKGQENAOE2YQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3f.google.com (mail-yb1-xb3f.google.com [IPv6:2607:f8b0:4864:20::b3f])
	by mail.lfdr.de (Postfix) with ESMTPS id AFB0D1ACCED
	for <lists+clang-built-linux@lfdr.de>; Thu, 16 Apr 2020 18:12:58 +0200 (CEST)
Received: by mail-yb1-xb3f.google.com with SMTP id b16sf4743630ybk.11
        for <lists+clang-built-linux@lfdr.de>; Thu, 16 Apr 2020 09:12:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587053577; cv=pass;
        d=google.com; s=arc-20160816;
        b=vMYne/3ZQAR0CNIfbdR77iJkxqCw+RAgTRWBIHlPsla5WbuAEoI7fxzeVC3rRN+ZLL
         F6oQldQCXjIphvZDPYLzbinHN8PnJ/c46A4GZN8eEEERQj4ttTd1bo95dlKmrlmVFJLn
         6L63emCAk4mz+JOIt9mzdUajAbBj5WgTjw1IVMP8/kXnQGBnE46OaEDALTHNDyeFHflq
         CJh/6PkUWOg2TIAO5mC4HaEVKs/KJZhIMiihwbZN7zDN5FZjBExHJ40VmwlV7myRwGoD
         S82UfurKIaokl/vPwSFJTSGQ/CthHnA+1hyQNxHumYn9srFw3fId7Yzbu/sEP/LxwrRO
         P+Jg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=iRzCGZgMPd/V2Ue+ftz//CSOGX/P8MkOwKgvfxoiSpw=;
        b=mjm9wnhq3D1tAJn6z1yFD6wA5A+373bHYtHVaYu9YVpHFyxbr/tZy3AeuduoxK5fQs
         4Z5qLlYxe/83FeSer3Ejz+CmJKRvi3TUXtzsF7CEzDnh2uhbzrSj48eIu95K4cp2/qsj
         gThPNXetZj4vhMhlN6zrtNp4v8/oJ9+7xtJA/UvZCn8KR9zhFHPJGjuhJo30F9f/F9q8
         f6ojxk6qdOhzFLemPBfni1cNPAGQBUgWBqYKvjGaK1tg/RnHG1BsLyJWiZ33Brhn/TGA
         jq2vutURIFdZgjNJw3bKWZ86z2T8GKxxF/WRV0N5Rj/N2onz+bnuHczu2HcOw9eDge3X
         WJsg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=FFzNqynx;
       spf=pass (google.com: domain of 3bosyxgwkagsbjvrcxuejwnwpxxpun.lxv@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3BoSYXgwKAGsbJVRcXUeJWNWPXXPUN.LXV@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iRzCGZgMPd/V2Ue+ftz//CSOGX/P8MkOwKgvfxoiSpw=;
        b=LkDAIDqwHAc9VVPVGNt/bVxPYWWpzPeA5yzV//QyX6jqWFKuhoYt9ax5GFH+CmCS/S
         lXYZQt9B17gtAbi5+P3PxTlrDOsvTyfOcCdSWjTBkMGfAOy5a2/geiTCSW12HXmr7kr3
         aOTbzyxabcCoxLmzK4GUvePaMJO0FEKnuio4lkhziNsqnr4TR5a0iInebZmiHoydmrwe
         Z5nyE3SvX2P01yMaB+eMDSOItLF3MOk4xC6w82SUKNw3z80kqZcdJagjGrG1FmYQozJV
         LQs9JB5OmmaLyxlZ8hhcALVYj9YGGLkkBqUrbg2f9A5tuS09SXqpUOfC8VIeOGekgCfk
         sCcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iRzCGZgMPd/V2Ue+ftz//CSOGX/P8MkOwKgvfxoiSpw=;
        b=KlTbyd+POeGi8izWKd6AF5eZ1+eIfZ9YX3dolFbG0GBDY8SYMWscqMIyVFoRg92qvV
         vHm1UtEOYW5KBr8StGu1UBx/iW69RvSJMSbsDUbxTZgSiAdD7yQ03QyfSkqTaVHyKqk+
         7f7n6AVUZZ9jo0BOWl9JvLfzLY3KTmA3dIW24nPCvrXzR1dFNcQs/j6JPoY5ax5QPT0I
         UL4KZ1MykGpDfncci7RCVVjclR9YhZv6+jm1i+tHn5HVqpjqQDNqQeDDWLK06tbRoLKw
         EQIPvEzj0IhTHmA0zqKjtQBqilCwu1jxgo/LEAvvPcdRO450/nC5xKjjYuF21vOB1Rux
         r9XA==
X-Gm-Message-State: AGi0PuZWZTNlLbxj4Rc/lVg6eaUS0EsEWW9vw3lhYJA37HHdi4PA8YBC
	lCo5m7UWjAqZD/QL9sAfVmc=
X-Google-Smtp-Source: APiQypI3KMJX2yIy15exfR8qlHcwALSKokxOoWrZOsPj2tFIM4EBbyu+hhTJiwSSrVDARw0Z2edBLg==
X-Received: by 2002:a5b:981:: with SMTP id c1mr7284687ybq.186.1587053576162;
        Thu, 16 Apr 2020 09:12:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6902:4f4:: with SMTP id w20ls4277536ybs.5.gmail; Thu, 16
 Apr 2020 09:12:55 -0700 (PDT)
X-Received: by 2002:a25:83c5:: with SMTP id v5mr19349051ybm.229.1587053575772;
        Thu, 16 Apr 2020 09:12:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587053575; cv=none;
        d=google.com; s=arc-20160816;
        b=HbdkBA6Zbc/WacqWJZY99eX2d3G2tVUQOMGUB8gJ2bTnXmXWX3KZpu/cvT4Z+OWfq3
         a1EudO4yEkvhLR+JR3WJeZc4yI4j0cBvlHxxQ/f6UvfTG7TN9ie+4/ef8TGD7M4Ovhtq
         Usb2m7QUE2BADhMTBTuhbIS+8B1XrViLVjTnTbhJE0VIo60VSkycYaQe93rGsS5Mq8BA
         KIjWqHv4VuWdCdaMVRnHc4nGZ8wx25wfTW/kDwxA0Oph9WJS+7kOghS+2Ren3MKd55BK
         RHek2R6ISvuOGAeSmGnHNXgMGFmHaHwrn+Dq/3B4HlelbVqyoGbDXf/osSakm5kGvxZa
         V5VQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=A4YlZ0JelJa47y4ITdTVRwEiR7bDyxC3LQiUD87DYQg=;
        b=HTqlabxzhrn6IuFbG0v4iDR/BMVeDiiIti4MJN5+rLxy9K4XrWI+Df5iperzFpUBOX
         1PMa/Ic+gRA8AzC3FX+z746D4Lj9UhwAyhtIE+QOIXy+R2nvJ6BB8zhnRkTWCceuqLFh
         0PZzIe3m0USAuU82jd7/PvF5IUmzkh7y3P1UTdr7w9dujKtjkqKLSmZl2VyPfGPGG/KV
         MSnNi76+TzX/YEANCCbfMbUl5dwDC2K5J9LuB9tRObeFZJBMmTWGn+aWkAmAPeUAD5dw
         BhdAQFHXDLdAnQfKucpT9iNDU1A3n8kbv8L9CjuIg8A5DubgyKOxiuzlW1mYQwXMRhV1
         KpOg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=FFzNqynx;
       spf=pass (google.com: domain of 3bosyxgwkagsbjvrcxuejwnwpxxpun.lxv@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3BoSYXgwKAGsbJVRcXUeJWNWPXXPUN.LXV@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x449.google.com (mail-pf1-x449.google.com. [2607:f8b0:4864:20::449])
        by gmr-mx.google.com with ESMTPS id f195si1320865ybg.4.2020.04.16.09.12.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 16 Apr 2020 09:12:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3bosyxgwkagsbjvrcxuejwnwpxxpun.lxv@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::449 as permitted sender) client-ip=2607:f8b0:4864:20::449;
Received: by mail-pf1-x449.google.com with SMTP id 190so3428966pfb.19
        for <clang-built-linux@googlegroups.com>; Thu, 16 Apr 2020 09:12:55 -0700 (PDT)
X-Received: by 2002:a17:90a:d703:: with SMTP id y3mr6337624pju.75.1587053574923;
 Thu, 16 Apr 2020 09:12:54 -0700 (PDT)
Date: Thu, 16 Apr 2020 09:12:35 -0700
In-Reply-To: <20200416161245.148813-1-samitolvanen@google.com>
Message-Id: <20200416161245.148813-3-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20200416161245.148813-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.26.1.301.g55bc3eb7cb9-goog
Subject: [PATCH v11 02/12] scs: add accounting
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
 header.i=@google.com header.s=20161025 header.b=FFzNqynx;       spf=pass
 (google.com: domain of 3bosyxgwkagsbjvrcxuejwnwpxxpun.lxv@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::449 as permitted sender) smtp.mailfrom=3BoSYXgwKAGsbJVRcXUeJWNWPXXPUN.LXV@flex--samitolvanen.bounces.google.com;
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
index 1b9de7d220fb..89aa96797743 100644
--- a/include/linux/mmzone.h
+++ b/include/linux/mmzone.h
@@ -156,6 +156,9 @@ enum zone_stat_item {
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
index 69827d4fa052..721879d56bbd 100644
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
+			zone_page_state(zone, NR_KERNEL_SCS_BYTES) / 1024,
+#endif
 			K(zone_page_state(zone, NR_PAGETABLE)),
 			K(zone_page_state(zone, NR_BOUNCE)),
 			K(free_pcp),
diff --git a/mm/vmstat.c b/mm/vmstat.c
index 96d21a792b57..089602efa477 100644
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
2.26.1.301.g55bc3eb7cb9-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200416161245.148813-3-samitolvanen%40google.com.
