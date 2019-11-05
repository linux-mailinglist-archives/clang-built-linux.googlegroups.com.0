Return-Path: <clang-built-linux+bncBC2ORX645YPRBMMYRDXAKGQE4GHLEJA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33c.google.com (mail-ot1-x33c.google.com [IPv6:2607:f8b0:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id 322E3F0A8B
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 Nov 2019 00:56:35 +0100 (CET)
Received: by mail-ot1-x33c.google.com with SMTP id 9sf13313982otc.21
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 Nov 2019 15:56:35 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1572998193; cv=pass;
        d=google.com; s=arc-20160816;
        b=sT91Ws6AMLPM2VK9pV8diMvIkZteSN/WKzqOluVq2GKVypGa91tgCa5IOL9DWqQu1n
         cdISSp74sLICaQhxXdpghmzI021O2MmD7VPKhdjla0iZKZUSqniVQi3M73L8OQxHc7UH
         WvBKJl/klfe4ivyatuFa5G04J/UBsaHlVKfwkkhy5kUco0Eg0mrSzkhv/ggThjGi0ft9
         Crn6ANZWqGaXQ6TYwi+DBSkkq+MyhINu4D218YO/dV7GqTVvMaWwe89K2u9JJmbCbnlP
         sNfpcf2PLNa0nyGj3WGxk1EibW9FGC9yf3jBBGzSv+cXJs2dK3tHAEJsO97kbxxLnjjb
         Tu0A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=eSAo4udIdXp3O0qluEgMh0vdNoLaSI11bnOMfgQU4ec=;
        b=xpfe1xxE47SrqOQQDmVHFSFB81OYf80WxiXrLozMYvTA+fvaktA6IHo1wJtAr0RiH3
         4hkp0ctIoXKAFSBNgbiWxhubzo59NHUSUL/mnCq6SmLIEQnANK46BumN1WZTdAAfczXN
         t0F/An388MyR0VYyibBmubFob+rC5W+jEvw83E/BaBkkLwOvkqkxCtoln89mZMIbbEzQ
         8yGL/pDFPIuSFbV2Q3eSwcRiAbbvqVl254nO3+jZnSOrTxJjTkw+H/ZOydlzC7KqQvk3
         u5eWcPdCxhrz+5BkKnwT/sjLkglPEGKp2Vc+7JuKVYg+kw0io7CXyXAoSUNnTj/puZxD
         uDWg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=YpXrNKkr;
       spf=pass (google.com: domain of 3mazcxqwkaeuzhtp0vs2hulunvvnsl.jvt@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3MAzCXQwKAEUzhtp0vs2hulunvvnsl.jvt@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eSAo4udIdXp3O0qluEgMh0vdNoLaSI11bnOMfgQU4ec=;
        b=p00yV8m+Ilw6hefM42e4r00MYSOBL8RvsK86g9sHhhZfnkejbDHqJXQC63r74wY38G
         1jyxUxLWVEC8DgOhZ8ggFd/5WoOpdF2OgaaL2lrxtZapQv4mlBeLH8Av319GyeLV0Dcr
         0hkzytg+0ti1XTCfP0I+7oV2gJpct06YWbjPQGCI1tvbWI336Kb0Vh7DcKQjHZP24xqh
         7qTGY0u+KYk+vp9+QjVYEXfS3Z0C9TKO/jf3VdMhcYm48q71VtV7Cf6N408emRGkb4uo
         zL+g6rpzyqwqHugViZbXl2At4n8zoX+xB4WM6fEw4i2SI6MEVw2Rq6xDw7QNrJgCke+L
         gveA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=eSAo4udIdXp3O0qluEgMh0vdNoLaSI11bnOMfgQU4ec=;
        b=qDs3x8lyFa9IDO4ZVVoV76cdhYSpRsnif1lSTP5cW07UbU7axcFNT5/m0rGPHX3YiX
         6T8hIcgtTXaW++SFwW17d0uQcoH9KYR49zzrws7Y1no2WSkSUf6xxQoOHuIcUMntD0sd
         jEdNGbB0Ndd/bsHt9q3BaIyr/ECSL7z3OKQufq+S79IjIH4xkAgDTqf15fGzW1vwDBhV
         Hvdg/A/en/6IbZisRM1c2mt9A/Ltzp+4FPE23v1Cdlw7/qTYi0OHk6R1Znax1YUwFnGi
         1VC7u/IJofPJs6+gzGIkuK4bAcNIxpaLMtZg7O3XbaD9yaS9WBC0TAq0PBZCak3Huxdw
         ggQg==
X-Gm-Message-State: APjAAAVB2Xawwba2oEDSQShMnyVl8UwSnlmk/NahZ+TPMg+FXhrdSVWX
	0YdVnm95U/gT+OMlNLXTHUI=
X-Google-Smtp-Source: APXvYqyasQqWOHvlsKLD6tcbZ0WTbs2p+9qp7hPsybg2bsi9dLnXmrcw0Yng977b8ZSoEuYmDhb69Q==
X-Received: by 2002:aca:110b:: with SMTP id 11mr1449087oir.135.1572998193678;
        Tue, 05 Nov 2019 15:56:33 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:6f85:: with SMTP id h5ls185336otq.4.gmail; Tue, 05 Nov
 2019 15:56:33 -0800 (PST)
X-Received: by 2002:a9d:4b9e:: with SMTP id k30mr6583431otf.143.1572998193147;
        Tue, 05 Nov 2019 15:56:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572998193; cv=none;
        d=google.com; s=arc-20160816;
        b=XeAry9Vd0Koep1PoPDRTWBVVY7TQ6H/i5QSKUlzL8yIVikl6y2+WUWQzRmZmGemWGw
         GtFQz3JGes38tHbvvIbStli/XBPLPhH3MEU0sTriXzTQpkp6NE8uK0wFHUs5mByYEq0S
         rdw8gdBeKxPIxUI7xwduUSw8/08kCFOf7TVBACBGRdb7pXvXgC6SoCiXpn7g4lh6tWau
         Vu9uCHMoO+iBHjA5zQdNCXz0az913lXRiZ2+pyO2UzX2I9R406oNBO4t64gwIpHxt7PW
         upE7qb7NlqWcurVbWmBQtv3vdXaav2/JKj/LW1Q81K+VAUsoC0YSZ+7ziWGxLRsnK2lH
         rcLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=wKSBnyU5hvnmEyO4DdclQOVrrLfbxubUILWn7lex0/Q=;
        b=MH/LC338tfsRDGudSGwpZlzQw5L7qzrzbcEt/v0pxvLi1cNM3wJBrXwTb84sJV7+D8
         N69EYZY/lvrtTux1sqHOiIvKHeYwxoWvbIWml4v1vnLpgMpOm/jB6LqoMTb2U25Fl5KQ
         x+7VLd082NHLbe7L5QK7s4deuzTjjHMs69VmGCtGle/askM3M6g1rYTG1gvNkO6R05rS
         sWByjRSGx//88DfeanMAm9YFB/Mz58N+O10RgYdZ0UeCzOb5jdFcMMpE/BZ2uxiSrei6
         EWqIgsLUzjASx3E/r2mALkxwX84qtDuv20bOgP1HkYJ627Yhgq1zvzFWxulXFNPUYrUN
         hGKA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=YpXrNKkr;
       spf=pass (google.com: domain of 3mazcxqwkaeuzhtp0vs2hulunvvnsl.jvt@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3MAzCXQwKAEUzhtp0vs2hulunvvnsl.jvt@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-qt1-x84a.google.com (mail-qt1-x84a.google.com. [2607:f8b0:4864:20::84a])
        by gmr-mx.google.com with ESMTPS id j26si92761otk.0.2019.11.05.15.56.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Nov 2019 15:56:33 -0800 (PST)
Received-SPF: pass (google.com: domain of 3mazcxqwkaeuzhtp0vs2hulunvvnsl.jvt@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::84a as permitted sender) client-ip=2607:f8b0:4864:20::84a;
Received: by mail-qt1-x84a.google.com with SMTP id c32so24289311qtb.14
        for <clang-built-linux@googlegroups.com>; Tue, 05 Nov 2019 15:56:33 -0800 (PST)
X-Received: by 2002:ac8:1814:: with SMTP id q20mr20722949qtj.38.1572998192221;
 Tue, 05 Nov 2019 15:56:32 -0800 (PST)
Date: Tue,  5 Nov 2019 15:56:00 -0800
In-Reply-To: <20191105235608.107702-1-samitolvanen@google.com>
Message-Id: <20191105235608.107702-7-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20191105235608.107702-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.rc1.363.gb1bccd3e3d-goog
Subject: [PATCH v5 06/14] scs: add accounting
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
 header.i=@google.com header.s=20161025 header.b=YpXrNKkr;       spf=pass
 (google.com: domain of 3mazcxqwkaeuzhtp0vs2hulunvvnsl.jvt@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::84a as permitted sender) smtp.mailfrom=3MAzCXQwKAEUzhtp0vs2hulunvvnsl.jvt@flex--samitolvanen.bounces.google.com;
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
index e3234a4b92ec..4f5774b6f27d 100644
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191105235608.107702-7-samitolvanen%40google.com.
