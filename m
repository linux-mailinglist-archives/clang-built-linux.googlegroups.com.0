Return-Path: <clang-built-linux+bncBC2ORX645YPRBD6WZDWQKGQEWSR6ILY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x138.google.com (mail-il1-x138.google.com [IPv6:2607:f8b0:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id ABE56E3F96
	for <lists+clang-built-linux@lfdr.de>; Fri, 25 Oct 2019 00:52:00 +0200 (CEST)
Received: by mail-il1-x138.google.com with SMTP id j68sf163851ili.15
        for <lists+clang-built-linux@lfdr.de>; Thu, 24 Oct 2019 15:52:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571957519; cv=pass;
        d=google.com; s=arc-20160816;
        b=X53RiOw7fGLuupuTIHIHndR1Sd/iZ6JHRtxBHS4TtCniCNCOeFJmCVQJTm+fQ1vTrt
         y4Acyp2ZgHil7AfEypp+3hWsu8KjwNLRd6hY+SSrkLxxKGEDER8O+hoswuzUL2AzgoGO
         MALfBUekr2mWhbyAeK+arwIZCIDueQtAl8UM9S5Ubuj0aLD1SmvRi1ujRA/LX88A7ovF
         lIIMTHzIxEEC+rBy7GF5sMCYGYYMxKfoLV9b1hRQg+VklRRBqt605qNIB8hrOHAYcp2p
         bO6WHKmYWl6iBZiZbQLEVVj8NkODPP5FEkd0muNJ0321AOpL08CncuALjfhVDlAX7xbc
         NqIA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=FAfaGz2QFJqE+vx4XJSCbcvG33yK3JN0WsUT8b7BRdU=;
        b=FruQ/XgkCJIU4E+EGuHBADnb8hbXpezgRaFzmp2J8RwppHZEgY9AJ7dDwUcnMY8amG
         s4ReJrda0pulheCWAiD+OYaXNqyUT264sUs1Y/25Ul1+QWLUjUsZwWo6c3/SGTW2gvBN
         Ad+0WjYeJWN24fQo7MIbG3nnzapNj9jDESRtGKNQvxTo7nSV7In67AcOy4fjEbo1w0nI
         fbVqzt586K5Th75ZfvaJyBUi2DxBXZu4Cm5yHF1mgieCCoKzrQjmL+cg/N7N4pjmW0VZ
         sbipEZ7TxI+eBPE9PqW+tMaOTTgQJEKbZQxOuZcLTrwm9RYEUDyQKNwQVAwXQKgBbULg
         92iw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=vyqd1oxi;
       spf=pass (google.com: domain of 3diuyxqwkacep7jfqlis7kbkdlldib.9lj@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3DiuyXQwKACEP7JFQLIS7KBKDLLDIB.9LJ@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FAfaGz2QFJqE+vx4XJSCbcvG33yK3JN0WsUT8b7BRdU=;
        b=L1t0QSYpOelkoogoBepceYBVwOccyvTAexoWLxVKQp2CA3UyeEjKjIAA6DDUc+hbJ5
         2imxqfM7XudM9hzF/0xG2CVzdD3G/02x+AsC1FV4lJY38fJxCATq/iXXfaDGPFZ4epeq
         1EHOwMwq7vTFnmetnv9jgxosR+ecR06sYsaHreclNN09TQIfCFdlKgBUGOedXbOXChOB
         I9eI46gmPU5uzA+W2q8zRLK47Q5rgYgOHdbJnI4H28ph6OCX+bzDvCdlrjvcHzsLBW9B
         buDMFyXjycTDkvZq3NDr+1hX+w8LWaMo0WF2IWfi4WEQjaDzJ9HeDwPSRFFE42zNJF5t
         x0Aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FAfaGz2QFJqE+vx4XJSCbcvG33yK3JN0WsUT8b7BRdU=;
        b=GAod0Zfckl8agGB/YHR8xsCuJDEOVCr2dYPJuQ/f2Pkl1880luH/CTZMmMNUfC0PwN
         vq1SnNTXGd54t/xEO63l1xWBKFXfqWOWbp3wGu3a7qsV03j+heGee8w+rWiwTHr9IdGu
         B3sH2e0vPU+V5gZ8FCz7UP8pKqDYHXFrvJpGh/Yjg+bjAKb/vn7aB4d0h4rCCRfknSBb
         NqKdzNzM2EOThuNr65vOToctid6R1ppf4M3R33+989LPhugnekZNuKK3TX/jNiMlrY8r
         Ctg6czqOKA/KY7KGylUE77mtjLXX6/VqebJ4C/sc8waZkjoEdl+ECUsh+FI5LhBg0rEC
         +WbA==
X-Gm-Message-State: APjAAAXxLnEAMajC4w4VasJ2xUFJ8tvTIyDItjGBs+X3Kdsi2XPR9Z+C
	E9IUOeg87DvXzpyLCdOau40=
X-Google-Smtp-Source: APXvYqy5D3pdG+4wRau5wuGTSrSlta3qC4Qf1aqB7xxru9zqnILJmyBMBeoz35i9TA0ezlKlngY1cA==
X-Received: by 2002:a6b:c8cd:: with SMTP id y196mr593384iof.266.1571957519544;
        Thu, 24 Oct 2019 15:51:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:37cd:: with SMTP id r196ls562605jar.8.gmail; Thu, 24 Oct
 2019 15:51:59 -0700 (PDT)
X-Received: by 2002:a02:6a05:: with SMTP id l5mr833390jac.64.1571957519176;
        Thu, 24 Oct 2019 15:51:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571957519; cv=none;
        d=google.com; s=arc-20160816;
        b=YlUq+dS8/osBuc7bqGtvXTq+6MwhgZoZQZ84q4VYGN4NwwRxCaTpfLGzxBztTP+NG2
         lsrR5mVhbNHCamDwXnP0kC8ArGKfjrcfZ1CqIzuvAZY4WTd9AZzUu04PfmlDhmljYel5
         rTEge70ZJsx0nohjhJltcUxOwsHbQvKk1Sm4N3R+iwyhwCJIeCz6jl0OIgtvOOmid3WH
         tCEnXexpRUAKinfyFeo0FJoxopOdIElJzMciGN7+RGRHjC4VmVKgLTdmmyl3eNnAdXlC
         gT75YE2MItywKjWw/PxcosWLzmhYIH5pWFMBqnwSYrU825b9I5nwLMNWBoOGikUo3Bk9
         TIYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=PlsBsrbDs8x31GpGhcrVMejL0cPcYPRZPS5Ki9l0bFI=;
        b=NTnstyWJdxY6nSGz1nt9qeBSIENHILBw/1UkW1S/p7ljQ/2Nuysu15FMv5wk5UIMoG
         Z1nsg8KG0EO+xt+N7EzHk8nS+d1YdsMGCtZAarPdIa8o3RPZZB+ev98PxNwnw/WaVOtV
         K0gWYVC73gISh5ahd7+HzB1Vpmo/3/TQmusc8eXmBsnMeaFd3woNcCcYtxm1LxOJKiYY
         o5sQg4vDmLImftjvJN6oiJShrGyu+JRCbUO/iBlSUacZk6B3AIqWQxVgW10kV98liQ3u
         pQNxL98qIzGotRQ1jX05kEvs36NiS1N0Md3ERnMAjrQTZkubaV4YPls81oDi/7SwNvXP
         mCgw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=vyqd1oxi;
       spf=pass (google.com: domain of 3diuyxqwkacep7jfqlis7kbkdlldib.9lj@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3DiuyXQwKACEP7JFQLIS7KBKDLLDIB.9LJ@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x84a.google.com (mail-qt1-x84a.google.com. [2607:f8b0:4864:20::84a])
        by gmr-mx.google.com with ESMTPS id f5si26409iof.4.2019.10.24.15.51.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 24 Oct 2019 15:51:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of 3diuyxqwkacep7jfqlis7kbkdlldib.9lj@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) client-ip=2607:f8b0:4864:20::84a;
Received: by mail-qt1-x84a.google.com with SMTP id k53so160948qtk.0
        for <clang-built-linux@googlegroups.com>; Thu, 24 Oct 2019 15:51:59 -0700 (PDT)
X-Received: by 2002:a37:aac3:: with SMTP id t186mr140045qke.221.1571957518352;
 Thu, 24 Oct 2019 15:51:58 -0700 (PDT)
Date: Thu, 24 Oct 2019 15:51:21 -0700
In-Reply-To: <20191024225132.13410-1-samitolvanen@google.com>
Message-Id: <20191024225132.13410-7-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20191024225132.13410-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.rc0.303.g954a862665-goog
Subject: [PATCH v2 06/17] scs: add accounting
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
 header.i=@google.com header.s=20161025 header.b=vyqd1oxi;       spf=pass
 (google.com: domain of 3diuyxqwkacep7jfqlis7kbkdlldib.9lj@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3DiuyXQwKACEP7JFQLIS7KBKDLLDIB.9LJ@flex--samitolvanen.bounces.google.com;
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
index 383d29e8c199..b9e6e225254f 100644
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
 
 static inline void *__scs_base(struct task_struct *tsk)
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
@@ -121,6 +133,12 @@ void scs_task_reset(struct task_struct *tsk)
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
@@ -131,6 +149,7 @@ int scs_prepare(struct task_struct *tsk, int node)
 
 	task_set_scs(tsk, s);
 	scs_set_magic(tsk);
+	scs_account(tsk, 1);
 
 	return 0;
 }
@@ -150,6 +169,7 @@ void scs_release(struct task_struct *tsk)
 
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
2.24.0.rc0.303.g954a862665-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191024225132.13410-7-samitolvanen%40google.com.
