Return-Path: <clang-built-linux+bncBC2ORX645YPRBNFFVPXQKGQEEZJUHZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3c.google.com (mail-io1-xd3c.google.com [IPv6:2607:f8b0:4864:20::d3c])
	by mail.lfdr.de (Postfix) with ESMTPS id C706D1158FD
	for <lists+clang-built-linux@lfdr.de>; Fri,  6 Dec 2019 23:14:13 +0100 (CET)
Received: by mail-io1-xd3c.google.com with SMTP id z21sf5818445iob.22
        for <lists+clang-built-linux@lfdr.de>; Fri, 06 Dec 2019 14:14:13 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1575670452; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ke3sFbanVysU3Fm641CE3XPw3/Uf5CLSRElPEWRzYTlLL5wToDxVM+QQR+wpuym2f0
         9yj0hrHsKg5FfAVqpjdNknz/WLU8fsjDw6bQTI5uleCzY8r/j7sshJPIEFCyhmA7iWl7
         zUr0RW1Nmd720jHIcg3VkvmIcaF9ajBt1yn1VUp6Uj89sPm4DmMV3khg5KRWRhZNV0hW
         fqeEHwzVMqG9V7Z6mT7VMdQwvuY43qOsQkSGLD9vRT7DywzKeCKLKn4hqnyPWg0YjBI6
         wXMey6Uc11+2MSU8pmViYN+jnfdeJ1Il/CVqawda1/2q+ye/PmbIJ4nD3UFtqOPYMgPH
         4XEQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:from:subject
         :references:mime-version:message-id:in-reply-to:date:dkim-signature;
        bh=Sg85RRZnqoD60Hj3OzCwPXyY98My+lWi9nm+zvHPa3w=;
        b=R3Dktw4E9plKi6rRUhY53fz4X+UqwO4Om8ARki+YjdvNHJ9m4x8SoosrVak+VXuQm6
         a9W/yk70x/iOjWIabEl86/RG4v2+L2WmMI50LpCVP8gQJ+8recs6zvNuNm/tZ1UeWftE
         li88MpokpzvuDQFHdNpy5mm1DMLQoEsmRlvFELk++uHr/AgxgBt7hZMtA+TMw7N+FVIF
         HVuqEx1BcTH+lgXZQdHZ/DACNyQPeQX2Dx92vIoGMlLa697cfswGyz0ikSB4HgV8NZ/d
         E+mail62GsEhBuc+pLjjaRUVmN6Wh7QtsHZzViDMUnLOwIo7++f1c1wPyHbYvxUqz5ZE
         7Mww==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=nleTFJgR;
       spf=pass (google.com: domain of 3s9lqxqwkapgxfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=3s9LqXQwKAPgxfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:in-reply-to:message-id:mime-version:references:subject:from:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Sg85RRZnqoD60Hj3OzCwPXyY98My+lWi9nm+zvHPa3w=;
        b=YmlCwQUKWv5B8UK6BQnnnYoQQqGuR2PR3OOHpCj0D27a97456yIcjK3VgWVh+xMCXp
         pVS07iTAneYfi+zbUlTzQri2D5vb+FFE3U8CeayEIuEK1xbqvdbgjt/bxQqZUNNnOo92
         VE5eA64CLTi9YiwyJ8wflDF0xfw92a8wMVVjzGimqXFUlAN+BkYL+2b0PDIpa1WNZ42a
         rSxml/Msbmymjx8ISj6HPY0daRQCiukFAB4tQnfruP/dHAMqOaEegmzDiUanxq9JUT9k
         fsBodJDl9NZZO/KScmQyIdIpoRP9ZWTq+HHKbPNjq2pCLubEq6aTom6N4JPYBcVhMqF4
         V3Gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:in-reply-to:message-id:mime-version
         :references:subject:from:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Sg85RRZnqoD60Hj3OzCwPXyY98My+lWi9nm+zvHPa3w=;
        b=S7Ui54fS00Lq9KVbBVuOiZjjAvC874cqiZbNg3QZyLWNMNCk/oBEumYYiMRj8WSK9+
         4ecIqXY2MJ0fRw6NcvXwI+3htyo4X4xzv8xa92O0q6GnJmN5q/FgBn0iT0hb1GGf8VIt
         bvLW7I5ObpOd0gN4XP9Zxaw+mftAKLgM33Iye87UYbKV3zFA9OgAu/ovC9zy2a9gRKU7
         lRd6aj6kCbfUdk+xK8WUlGqG9EyD9UJ9rd6fmNtXT2/+r3Voo2QI7DMXwwklywNq24ug
         ka3xRlz1QwqAPB+upGHM8OmiC+uKJvWFsAA4kPvTR20l/Z2cUYwamK0rTScsKgK/2BsS
         E3Ug==
X-Gm-Message-State: APjAAAXIHixRMg9XvIzFn3sosXmuRoxoavx+VDL5MJ62N0CrV/4Re/1O
	p7ifEOjy7jFkjbj+fSoQxZs=
X-Google-Smtp-Source: APXvYqyMYhJsHadxVxKWpX0LyEnFs1o5IY8lARSGtb5eouAPdbs+E2qwWV+uemfp8FrTmFx2c56Rjw==
X-Received: by 2002:a92:bb19:: with SMTP id w25mr16761009ili.171.1575670452673;
        Fri, 06 Dec 2019 14:14:12 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:88cc:: with SMTP id m73ls1376821ilh.1.gmail; Fri, 06 Dec
 2019 14:14:12 -0800 (PST)
X-Received: by 2002:a92:d30e:: with SMTP id x14mr16267227ila.108.1575670452323;
        Fri, 06 Dec 2019 14:14:12 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1575670452; cv=none;
        d=google.com; s=arc-20160816;
        b=VoqXykvQCPKoy3p+Q8vDYcaSTGqFezoDuoZgHOm7A7Y+nPFeIgM8ahzoYUbkQja7VH
         4h/xoTJLfTLyDg7eIKue8UbJAUh/n4uj3s/PoepwTqVDOD/wPJ70+G+x+ZA5VTM42acg
         HJL57POyPcYvLzjb0htu+zRi8ot78fPbPeHI611Oxh4RRDFFru/rnDgKXl3cEAO6CONM
         VFmoYvmnw5mG3JCH4pJ3w/M1Z23ZcoQNEG7ITyhaEJOGS7qraLoFRgbrulZoflw5nLfV
         iFi7FIbxKy2BJ5xgW0LmHB7VGISW1thZ+wENmuVlY9EO8ah6Q9Cz/ncJUzGbPo3AQoma
         W5FQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:from:subject:references:mime-version:message-id:in-reply-to
         :date:dkim-signature;
        bh=2NAd6y4qah1xjfOWgEwpdzIyhOs1qjeDK6sFpv82Xfk=;
        b=JuBqEQxQEwPltp+LvzIwmCU6YJbKg5Sp8vmTL3nFPy0AJSCFvD3/dH1RfZ3bJVp/q2
         czPo3EZ/T71UTd8ZMsWFjypeOo0HjWbf1UuhuiQrBa0GcZmEquzLLSswX275P+d/khUs
         QGv6jGFVbDVUZDlmYgK55bXX5JXYAwgbHInweGVkv+i1mm7UW6kKgDOiIbh6aa/Z8Pk/
         jYOroVkSc2fWHRvxPukwdIiKhE+pEL0XaGF0I6qeoUIazGl6fmqFOBiXqTAQceFn1STR
         pgQ0L1IBD3wSbQN2/LtxGKNcXBUMTvoL3/3Ohh8jwSTfE+FqwAw52flvnA7bgk2XKxTR
         1ldQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=nleTFJgR;
       spf=pass (google.com: domain of 3s9lqxqwkapgxfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=3s9LqXQwKAPgxfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x64a.google.com (mail-pl1-x64a.google.com. [2607:f8b0:4864:20::64a])
        by gmr-mx.google.com with ESMTPS id h4si931317ilf.3.2019.12.06.14.14.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Dec 2019 14:14:12 -0800 (PST)
Received-SPF: pass (google.com: domain of 3s9lqxqwkapgxfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com designates 2607:f8b0:4864:20::64a as permitted sender) client-ip=2607:f8b0:4864:20::64a;
Received: by mail-pl1-x64a.google.com with SMTP id a11so4249588plp.21
        for <clang-built-linux@googlegroups.com>; Fri, 06 Dec 2019 14:14:12 -0800 (PST)
X-Received: by 2002:a65:64d0:: with SMTP id t16mr6176894pgv.427.1575670451581;
 Fri, 06 Dec 2019 14:14:11 -0800 (PST)
Date: Fri,  6 Dec 2019 14:13:42 -0800
In-Reply-To: <20191206221351.38241-1-samitolvanen@google.com>
Message-Id: <20191206221351.38241-7-samitolvanen@google.com>
Mime-Version: 1.0
References: <20191018161033.261971-1-samitolvanen@google.com> <20191206221351.38241-1-samitolvanen@google.com>
X-Mailer: git-send-email 2.24.0.393.g34dc348eaf-goog
Subject: [PATCH v6 06/15] scs: add accounting
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Will Deacon <will@kernel.org>, Catalin Marinas <catalin.marinas@arm.com>, 
	Steven Rostedt <rostedt@goodmis.org>, Masami Hiramatsu <mhiramat@kernel.org>, 
	Ard Biesheuvel <ard.biesheuvel@linaro.org>, Mark Rutland <mark.rutland@arm.com>
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
 header.i=@google.com header.s=20161025 header.b=nleTFJgR;       spf=pass
 (google.com: domain of 3s9lqxqwkapgxfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com
 designates 2607:f8b0:4864:20::64a as permitted sender) smtp.mailfrom=3s9LqXQwKAPgxfrnytq0fsjslttlqj.htr@flex--samitolvanen.bounces.google.com;
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
index 89d8ff06c9ce..dfeb8a5a7f7e 100644
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
index 4785a8a2040e..6073556fc99a 100644
--- a/mm/page_alloc.c
+++ b/mm/page_alloc.c
@@ -5365,6 +5365,9 @@ void show_free_areas(unsigned int filter, nodemask_t *nodemask)
 			" managed:%lukB"
 			" mlocked:%lukB"
 			" kernel_stack:%lukB"
+#ifdef CONFIG_SHADOW_CALL_STACK
+			" shadow_call_stack:%lukB"
+#endif
 			" pagetables:%lukB"
 			" bounce:%lukB"
 			" free_pcp:%lukB"
@@ -5387,6 +5390,9 @@ void show_free_areas(unsigned int filter, nodemask_t *nodemask)
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
2.24.0.393.g34dc348eaf-goog

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191206221351.38241-7-samitolvanen%40google.com.
