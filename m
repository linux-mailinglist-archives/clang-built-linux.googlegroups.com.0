Return-Path: <clang-built-linux+bncBC2ORX645YPRB77YWHZAKGQEMBM5ZII@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x439.google.com (mail-pf1-x439.google.com [IPv6:2607:f8b0:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CA2716380C
	for <lists+clang-built-linux@lfdr.de>; Wed, 19 Feb 2020 01:08:33 +0100 (CET)
Received: by mail-pf1-x439.google.com with SMTP id r29sf14288203pfl.23
        for <lists+clang-built-linux@lfdr.de>; Tue, 18 Feb 2020 16:08:33 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582070912; cv=pass;
        d=google.com; s=arc-20160816;
        b=l6ZV4EXADFC2Bgc6r34G8c1IzdnvcZG+J6oinl4TYsFzQ2pe/1NsvxTABhscamHYPn
         UkuXUD7PvZWk29sT+diBJKJSVoJCPWIkfpFA8T4rz6LDexcvalQ8WvnivW+jPSTXceY3
         3Q4sEz5vhv2i5WvVePcPIsOtcuyBo85yM3DyrhvtHmuCL8eANDv/saHkJBMx6WvBCO10
         Mb0HKDZ2ewk3+yyoS9hL6+qlEbmDrRXLVIKokkeXZXp3fTuguaCZ0gpe/oRoixTBg8dJ
         GQqMBW2VAGipOoRSl+V2Rt8k2Dio4YnUj4H0b606uLRJHvgkTv2SI/gVy3B9yumRWBRI
         bfdQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=ukkGiy+vY9Gb8RTK2OUYKjaly4hZ1XMY0XCcWU5oEP0=;
        b=vrHlwiDdtah1jVm4e9P+hgQJSYC5fGfS7Becc4O8TPzKVM1DCcrdJraKptLzoU3gp8
         XHr3/TVHQTa2y9MoH/OEUNWroob1/hNPK37+tTbvrZ3Lzx6Aj1xyarPkUzTZUie1ywHj
         Q8mmLb4pFF2b3NAcKEsASjQ2y7BG0tQUETdXUb0lodAqWjfR7/OvfTl587DQ4PW9D2vr
         QswoDpl1Phtvp/2jbLnmJZGvoYHTj2GqY/lUeF2r7ECYWEOYQMXZY6rIBen2KIClp5FN
         HOMN/Oy7zIFL/aY8EZqrieAN4Stl/WCoLoSQhP6vWqCxVPfmedtmxdhoCYlY8mPh6Uun
         VLRA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=sYYSXB08;
       spf=pass (google.com: domain of 3fnxmxgwkaketbnjupmwbofohpphmf.dpn@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3fnxMXgwKAKETBNJUPMWBOFOHPPHMF.DPN@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ukkGiy+vY9Gb8RTK2OUYKjaly4hZ1XMY0XCcWU5oEP0=;
        b=GfYj5vETX8D+9vm3R1W4OBUNbExK0j2Q42Cr3tYAG9mc6NHvu4I3b4M1a5w8YVUJe5
         6R7ncmx+inbgA9XlL3tngYbFKH8NG3n/k4cwQqxPlcjP/yh7anQ2pBcHUjThqR5TnT0X
         /2KeDlCD7lMeGsNlQYy16SY2VeJMDyKahycEAj2il8CPY9SZnVCP+dTsu3fBYXP7SSdS
         Z1/hD5oJK7+01LLHIIJh0ylpgGoFNU8oQkc+a4MkLmBVaaeYInDyOkfQSGKae65PYUEz
         eKzg98ifgc+qpdVNfK58ek6TS8Vu6y40+O717RpSV8esA9U6JoV8UZNOVcfOQn+379Zx
         6yHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ukkGiy+vY9Gb8RTK2OUYKjaly4hZ1XMY0XCcWU5oEP0=;
        b=CfOYOqwekfFOgA0KEXZ5yrhqs1R3xE8lexBg5u4zHM5Z8g8n2ubgLxL9rCcm3fI7v7
         SCkRTMvMf16h9IMhyLfxsdVtp0Unce0XeYfg4POrwi+8KXF7bjxCqt0XyCxrADdkpV+W
         KssVZxk2LmcG8mSa6RaBmlt2Hyy+S81PErHAH/W95YsdZ6EP551fREgK4cA7a3AAj6/k
         lJA7ObOKJMukJ88gYwKq6c7LDhKNHtT7BSPyqMEgmIDl1SkZxZHlNS6IIVzfpqfy4RvR
         G9NvEHXYaOAiHvpZc14KhmgifJWmLbJUqF0W6vDa+B6bamUlkWYDVod9JPfqj1VUIpMv
         EFSg==
X-Gm-Message-State: APjAAAXBH9mOPg41uaAR9W2fjIRJNnM9GtmeL3kj+PsLzO6WlA/VPSE8
	A+B2T/l8YmUaQx1gQg7CsiQ=
X-Google-Smtp-Source: APXvYqwexzsroIJt3L+W978pem2i50aQ4Pqh/Ky4vfjQBpA7dD/JRLs4mpFGuBG7mOmF6ySg0foGhw==
X-Received: by 2002:a62:fb07:: with SMTP id x7mr24148089pfm.125.1582070911895;
        Tue, 18 Feb 2020 16:08:31 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:bb88:: with SMTP id m8ls6572792pls.6.gmail; Tue, 18
 Feb 2020 16:08:31 -0800 (PST)
X-Received: by 2002:a17:902:d885:: with SMTP id b5mr24240154plz.215.1582070911372;
        Tue, 18 Feb 2020 16:08:31 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582070911; cv=none;
        d=google.com; s=arc-20160816;
        b=ueRE2I+R2gs+gAf3bAJVATs599pygwtemAGhPZeCtXaFGZSPeWiPhuy33A9Kr0tvsx
         1zK6d/qsu/ut58TxG+/xyLzExx+ePZp0aARGv0SYvCRA1AqWPiFYPUs6bTcFFK+hWnVP
         fFA0OnWloG2+tgYusbINlCDbZudeGI73034vHwZiRgdcPbgacUek7UoIkRX8eR/hXH8o
         U0q+oIR7dRF9Eao3+lJf7GtvjBgdiShuk266qyKT8m7QyUIXaARL0p8CJfKhCiV9Wr2E
         xIvYJ09WAOrJfSrndQf9pph4P3IUv6+6+TkP+k4M+hLLSZvg+kypLoFrd9HStqP25ij8
         8Bgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=iAnwqX/AAGd26TFtb0myYOOPt2TU78CQZiCptAhki6M=;
        b=uwNu/8wXwI4BWBXXhfR5osMUnrLssg0z1UorH4vRG6B2e+AVw5oQYUhTcvbArJqsGo
         +XRpoE2vtd6eA0cdakgI22UUNtZDyxsdwGgNILbJd8Mub/L4Ea7Bi1ZE/yOoyhHHmP2V
         y/h6mJa4Exu+GBB0qC9HpDUGIGaYKzJr6kU52KXr+yt1TWsxfAZRxlFukyZc/jTRzRNd
         Bq34oPI1h4lSANUDYKxL5tbuUxN2gnq+fZw6OOP/q8zgDxERBv1WsnatGsflb3U9eHt6
         p3Fc7Csv96UmUvHE78odlJmF6SbP8cZIsq3vNNIv4yuJX4DsqxEe6OiPD0XQoH4xiCpu
         koqw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=sYYSXB08;
       spf=pass (google.com: domain of 3fnxmxgwkaketbnjupmwbofohpphmf.dpn@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3fnxMXgwKAKETBNJUPMWBOFOHPPHMF.DPN@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x849.google.com (mail-qt1-x849.google.com. [2607:f8b0:4864:20::849])
        by gmr-mx.google.com with ESMTPS id y13si22703plp.0.2020.02.18.16.08.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Feb 2020 16:08:31 -0800 (PST)
Received-SPF: pass (google.com: domain of 3fnxmxgwkaketbnjupmwbofohpphmf.dpn@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::849 as permitted sender) client-ip=2607:f8b0:4864:20::849;
Received: by mail-qt1-x849.google.com with SMTP id m8so14321684qta.20
        for <clang-built-linux@googlegroups.com>; Tue, 18 Feb 2020 16:08:31 -0800 (PST)
X-Received: by 2002:a0c:c250:: with SMTP id w16mr18163747qvh.24.1582070910338;
 Tue, 18 Feb 2020 16:08:30 -0800 (PST)
Date: Tue, 18 Feb 2020 16:08:07 -0800
In-Reply-To: <20200219000817.195049-1-samitolvanen@google.com>
Message-Id: <20200219000817.195049-3-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20200219000817.195049-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.25.0.265.gbab2e86ba0-goog
Subject: [PATCH v8 02/12] scs: add accounting
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
 header.i=@google.com header.s=20161025 header.b=sYYSXB08;       spf=pass
 (google.com: domain of 3fnxmxgwkaketbnjupmwbofohpphmf.dpn@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::849 as permitted sender) smtp.mailfrom=3fnxMXgwKAKETBNJUPMWBOFOHPPHMF.DPN@flex--samitolvanen.bounces.google.com;
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200219000817.195049-3-samitolvanen%40google.com.
