Return-Path: <clang-built-linux+bncBC2ORX645YPRBSEEYLYQKGQEAZR2NDI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3a.google.com (mail-io1-xd3a.google.com [IPv6:2607:f8b0:4864:20::d3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 42C7A14C030
	for <lists+clang-built-linux@lfdr.de>; Tue, 28 Jan 2020 19:49:46 +0100 (CET)
Received: by mail-io1-xd3a.google.com with SMTP id z201sf8370993iof.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 28 Jan 2020 10:49:46 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1580237385; cv=pass;
        d=google.com; s=arc-20160816;
        b=p70rJM80xc9YFHSVK0Ipis6hYolaIvVTuLnOwKqGC3g24Zn5STUnp05O5Sd6Uept1d
         Zw07cSsmMCBtqcY+Ou4DDz1kY//GW9NM7Syobhq++5bM+QpoOwgEjnsHE2+iKOIgTlRA
         8/gERobGMgEZ6IjY86lIisQYRbGp0XxD2VDPpV7DGGcZ5L7dM+Xuu6/SOWenzCLsnuQF
         il+50yNLPK5BTVIgazqv0qZDurQKGI1UFV9AcpEHwv1uusHs8vH+vZYa57SfbUOXebb5
         NWbVhVcIgvMkgo/cown2WuVnzzrThlZlds1VBcCKPG6lrPuJOTKbOCgaMW8+iyvJFaa/
         A6tg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=A9dAZqjfR2eMJTx0VivoaNj3b897QJMKz4w+Zcx2K3k=;
        b=Qa5UlRguA1+jF4kcIXos3XUp80lZHc1FKCiNr/aoLJ+QEQWhh78/Q2VIRtf4qcpQMc
         0GpJlasmW4gLqsZKoflifTahb22hBz/P9t8eWJP1avv0jVZMEsD8BDU4jeXc2dzv+UZb
         Ol2KOJOVPv9qKaKsEBP/wbAvBW4yH6Ndquwgc11114Ku48OedLBJ0PNcphzeM13selta
         NFee0UsRePnhHgB0Eyv3ikptO80kTRiRWMNYMhkuj4nIumH5bozV/on1VfBpE2TH5DlU
         +a7Gfu753jxBpNvRm+Xvwmtx2USex005WE1W/OFqqaWKLn7dDa8htLmRlucZGqAgnfZ7
         9+sw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=exLb1Bhk;
       spf=pass (google.com: domain of 3r4iwxgwkaayygsozur1gtktmuumrk.ius@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3R4IwXgwKAAYygsozur1gtktmuumrk.ius@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=A9dAZqjfR2eMJTx0VivoaNj3b897QJMKz4w+Zcx2K3k=;
        b=TaEaCsdkhzZuHT/Ef1b48UxGc4No6SvmlZMg6dt0gqb3CwuQROWNh0440yDb5Czh0o
         GcvLGqd37AwHKnrGmesYGFJmFiRLiDOb/wCowc5DpngWeOD4z/qcaGzFcxaSKL6WyJN/
         EMWqnzREnuMcIIJN1geN6j8ykaQR5iPN2yMAKm0MS1RSuVxEWgG1WCGiML+rpSYFMOsw
         oPD9evbOzVgsOydt3oDWO5w//bxwTLteCC5ZkpRayE8Bs8tjVCZbfVSalJNMgEbm3XEA
         HAeum86wT5paNYUfYgqoGHlxrZRavpAPAxsIHoXJCLHe++KydrOFu8y0IIpGgZ7C8+B3
         7HQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=A9dAZqjfR2eMJTx0VivoaNj3b897QJMKz4w+Zcx2K3k=;
        b=IykCMuuAB+FpwU2/2xJnTCquWW7jp1kxFAlLvoYLwAJb/N8szbNRLB9lCKjq4NUJAf
         EXJnkxZbLtccW5H+Qf8PVQmQzP8k72Gd1/fjqfG6lMb5/kglJSWdY0GRY8mDU+1uE/mt
         a7fyHTJkAmu8WpzvEVsDPy97pHAxMH33594M5YAZs1kgwmGi5d9g1uenEZqAJVgaSzRO
         MXuWuCY+/w8ozrcOeOXTYtVuCskUk8rDaxhPLu4MnvKO1adHdY8vr1kFqj0KkmJQmQJJ
         ePud1heq6takXPGW4B1cZ0mMm14ilyOnyFuOyk61Qm1AUfYYc0BUEbd/ppzfVNJII7ew
         NlHA==
X-Gm-Message-State: APjAAAULt4vSkfcgLkf0y3fOQMKf3Qwn73y/CFiIFvyaGW8B5KnrWvb5
	ggdYtJep3lSkEReLMiGpM9E=
X-Google-Smtp-Source: APXvYqxGnrwDEDFIE74NjR8qy07miK002VvbF9SNmAjKf1A60wsCQ7ISOy0QgbcEe1NB3d6n58a2gg==
X-Received: by 2002:a92:9a47:: with SMTP id t68mr20168694ili.155.1580237384980;
        Tue, 28 Jan 2020 10:49:44 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:c411:: with SMTP id y17ls2689681ioa.8.gmail; Tue, 28 Jan
 2020 10:49:44 -0800 (PST)
X-Received: by 2002:a6b:6205:: with SMTP id f5mr18594699iog.42.1580237384471;
        Tue, 28 Jan 2020 10:49:44 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1580237384; cv=none;
        d=google.com; s=arc-20160816;
        b=uDDUq+BsGXQm74CVJ0WlRGXTXFejCQjMWjpPdiyHDwwJHMFrfkrNzmUphBrp3CM93X
         l63kRjEaYop4nHzk33U2xh7gGGPIWplR9DGY6PE7EQnPsIxC4HqTPlN1uu4lA823OqSW
         oNs/G2gTH2mX9Tcffo0KLEoc934QviORPWCNxz1dA5k30F/YRVAPcw8C1gzR1DKHoDLm
         ES+9k9Xx5Rh0UUiCWeoD46cZR7o6yFe09iwVKdXct2OaRMM2MMgsQVtmxXiOQC/EGwVF
         J9n+99aCiunnd11a5oDq+2ZPUd9UG4/oGDgpCJnOsjkFwNevwnUIu213QKJL2YTLEamb
         R9xw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=ZtMI+KFFbm6o/+bAAw5Gv2T+e4XytW01wr5CqrZhV/Y=;
        b=LMMrx+MDqw92WU4G81pQqbYnJVqahZXo9APOLpi5guqJVhsmUfU6N1c00tVuiPN0d7
         QkIWQCa7mmVWNxdiev+H74t7HuIVp5caZ4ZNHlME83wohJdMUQQVNwDUDUz7AbCyaFqt
         WXrCt9V5+eeusgb7rl/xx7ZeSknp7ec6y2EkDTJk+FVw7+1U231Mf+g8LNLSgRh7jIlw
         CQbIr+XOuUp/BiOwIAmNAIP6JCrmfInfgvJiAe3rBOTilfIwxuJUmzAWzPsyNeKY+5FW
         oMUSqvLb+BL5zc1zU9f+YwvN7UWWSphRNB+F+FlH0ZMBY0xQLUY4PRIpYVsMEaJmENOX
         Ocrg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=exLb1Bhk;
       spf=pass (google.com: domain of 3r4iwxgwkaayygsozur1gtktmuumrk.ius@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3R4IwXgwKAAYygsozur1gtktmuumrk.ius@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x549.google.com (mail-pg1-x549.google.com. [2607:f8b0:4864:20::549])
        by gmr-mx.google.com with ESMTPS id z20si1073740ill.5.2020.01.28.10.49.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Jan 2020 10:49:44 -0800 (PST)
Received-SPF: pass (google.com: domain of 3r4iwxgwkaayygsozur1gtktmuumrk.ius@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::549 as permitted sender) client-ip=2607:f8b0:4864:20::549;
Received: by mail-pg1-x549.google.com with SMTP id 63so8479368pge.7
        for <clang-built-linux@googlegroups.com>; Tue, 28 Jan 2020 10:49:44 -0800 (PST)
X-Received: by 2002:a63:a54d:: with SMTP id r13mr26205679pgu.138.1580237383817;
 Tue, 28 Jan 2020 10:49:43 -0800 (PST)
Date: Tue, 28 Jan 2020 10:49:25 -0800
In-Reply-To: <20200128184934.77625-1-samitolvanen@google.com>
Message-Id: <20200128184934.77625-3-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20200128184934.77625-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.25.0.341.g760bfbb309-goog
Subject: [PATCH v7 02/11] scs: add accounting
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Masami Hiramatsu <mhiramat@kernel.org>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>, Mark Rutland <mark.rutland@arm.com>, james.morse@arm.com
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
 header.i=@google.com header.s=20161025 header.b=exLb1Bhk;       spf=pass
 (google.com: domain of 3r4iwxgwkaayygsozur1gtktmuumrk.ius@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::549 as permitted sender) smtp.mailfrom=3R4IwXgwKAAYygsozur1gtktmuumrk.ius@flex--samitolvanen.bounces.google.com;
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
index 5334ad8fc7bd..1a379a0f2940 100644
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
index d047bf7d8fd4..284e428e71c8 100644
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
2.25.0.341.g760bfbb309-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200128184934.77625-3-samitolvanen%40google.com.
