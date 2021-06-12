Return-Path: <clang-built-linux+bncBC53FPW2UIOBB3WWSCDAMGQEOKIBREY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x140.google.com (mail-lf1-x140.google.com [IPv6:2a00:1450:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id 71E313A4C6D
	for <lists+clang-built-linux@lfdr.de>; Sat, 12 Jun 2021 05:35:11 +0200 (CEST)
Received: by mail-lf1-x140.google.com with SMTP id f15-20020a0565123b0fb02902fa2f95ec06sf2292951lfv.22
        for <lists+clang-built-linux@lfdr.de>; Fri, 11 Jun 2021 20:35:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623468911; cv=pass;
        d=google.com; s=arc-20160816;
        b=SpKcOx2hPdF4a2kDhhnCCXVU5Ltq0AYcSZomQsCFoYAiedr5jXe/sH2zyUk4fmAETu
         f21m53JE050B5DjUD2niZrUQWvUQD356nQpGedffioUsj0CpU3DDNwBCSJmzhw2cK1Ye
         CzBQRSMwyf/D49s5BGa8W7ER5Kp5bBZgY7s2qVL6G5aCmdoy53LXeUw5RqbCXEjZY7IQ
         HXnTcb26354ZUGlIi7fVImj9yKH5FesnGYYDzZPv20dmkHp4pe/y0mGnlpAKhY+r2ykO
         Slkd5OHAUnVYFDlISApIOdIjxN9E7TSzKjdFx2Ko1dIeSGOMdFiYCtjqJjG+lokWryds
         cRRw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=7XIkVkyH92IMNQkm5nofBKJGtDuU/R2EMKmk2Cu4jeQ=;
        b=ek1aIVerVjapvG/jFlhLYHmyXqOgI2mcSxlbQbYt/+olU79U4t5qXgPlKKtZSSW6Ou
         cVNik5fZ7TyGhvnhqoVdxvSlzdSNvx1c21A1ofFuBEL6ELoT9/r2peDOoC8pMAEWaz9I
         neWC+6mvdKub94kBsz7ibqhZ74g7bVYXN/yDA99Xg3O00KBg5yFKX+Ayn9ALHQvoUMMg
         Wesg4wgMC/bsEra4hZoS1wPAPLx6IQ07Gfb31/aH40n7yMZqgO5UCAcpgiTlNy5zxiCu
         hhh2unRjThaxUB79vmEX4McYEaZ5KFJIWdj7N6xEsaFlyQi5e0byzkAxxrCsZ/GpHVAs
         sGZQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=P+z4J2Nt;
       spf=pass (google.com: domain of jarmo.tiitto@gmail.com designates 2a00:1450:4864:20::131 as permitted sender) smtp.mailfrom=jarmo.tiitto@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7XIkVkyH92IMNQkm5nofBKJGtDuU/R2EMKmk2Cu4jeQ=;
        b=CTelKWjyrwrF/TDhAbGujUGc2O88IpylJ7CeyvBKoI0dKILGuHM/Jk6LyqyUUAD6av
         SGnbaiSOV/9t5s5PoeIIyDfARdQdx3efvjGs7QH0IAaf7s2bFWocskwL+R2hym4jdAJS
         ccEe3s6H7NsV2NgbfO5PFkFb9ls1ac+AdVep8h2BM+88aw9/n2dxkK/F+BU85O5hww1m
         Vt8+jHerpt3sDe2w9l7nqrMb2XmV8B5OeTtt5d5ieZssOCKrWEyWTdx7RrJH2KCDCadY
         xb9IDL2d3Ry6sbqrCw83H62bZjYziGEILYUievKKxNTHKFY2gJ+pVpK4yr4RiYOKEnG0
         r+nw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7XIkVkyH92IMNQkm5nofBKJGtDuU/R2EMKmk2Cu4jeQ=;
        b=UA+42YjOlnqxhGlFDkaYXv5GRCqje+A/bBzVcF1HmXMxa119Fw0NIc3lILGU/xJTh9
         f0bj3l42WdWr1RxisuUCCd98I9HxjVsxKHsBSvbUcXhdUn9e1Z28OieZJMDTh57AAxVG
         0PEUkSERbfjDXPIuNgBsVJmdGhjHMt4ZBJ9drSlkSdPU/Hm4m/Ok7ZTyA9pAVUlnOy6a
         4sXzMueUtnPf5ru5vqyh2bMUw+boRpsEXGDJXo8MGvFH9fLbGoPys2DYvQZeBfQmmDhs
         ySYRW24urv+8tIofAX6wgqcnGQneZp2UCrbgRuc4aREvbjQWEi20wmC/lKI9TMHyn6K9
         V7Nw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7XIkVkyH92IMNQkm5nofBKJGtDuU/R2EMKmk2Cu4jeQ=;
        b=gHTQHEPDSaV6mQ0E++/VXLK8pF/Fp0p7lFB7PYs/sihCxcYOPUFq1Dpsgiwo94SlJQ
         yOgcwCwq08eNjcMaJdezqVGVMuF7872U2WLHc8eeNlPn1owFNye2sIJkZnwgmJu9cXBW
         w3knDWHhDVy1mdTziHSaYtNqcBQlRfgwHpQSSxeQz0MI0EHM2aArEQZe3jIdRCOYNTS6
         k3EuAh4qiIZWuMm9w1AU6HDIKF86xPVEzdmEtH2aJLnFZDnG+aMElFveEDKfEzaseMwp
         JZDkUCMKgiQmzMo7agsAL8UIZqSuTi3Me0srhfrNf56IKXg9fbMiA1dBmRWf7Seh7h9p
         s5cw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533ManadIaGIwyacvYM4j9lRaquvSQm623Z4XNWcf2ylk8dPWuno
	klhEBPBzeSv4+qxEf60oGh4=
X-Google-Smtp-Source: ABdhPJwiKpukC63qHkTrL+lBPTbaVCvvlxLYQGSzVzUDYix5sjbxprA+Z0NvjEg5XJuf7eN3b/U9XQ==
X-Received: by 2002:a2e:914d:: with SMTP id q13mr5297743ljg.179.1623468910976;
        Fri, 11 Jun 2021 20:35:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6512:3f94:: with SMTP id x20ls2119167lfa.0.gmail; Fri,
 11 Jun 2021 20:35:09 -0700 (PDT)
X-Received: by 2002:a05:6512:1041:: with SMTP id c1mr1192719lfb.364.1623468909806;
        Fri, 11 Jun 2021 20:35:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623468909; cv=none;
        d=google.com; s=arc-20160816;
        b=PgY/NiteRqa8F3NpzHinu3BSCxbayhoWLb6WhgaCBozMnY6IYfEpEj4vulFA9nPy//
         gNPFdapjUIYHFXTk+I7wQrsrb2QX6l7zXWTxM1K/l91sJI3un9INt1HcXNqbT5Vvrbid
         0eEnJLHf6SO83n8oR8C1X1ikWXHhvahv/xFa+GIvU8b0PGK0Lq3iCwkb7xWzq6q2UsMk
         PMFTu5ulY9Xjkk4YdD5LGXS8xq4CBtpNkVZpw0ZfWGQ9/Rpln9ACmsnrcjkGUJzqAOXj
         WA7/ZyT6FrwtdMZY5wI30qmdmvARAAO/FqtNG/9yJUNZaK1y0V+vPh7uln/2D7/Uu4TX
         baaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=pCeBQNr6icOysF7Nkzxw/gw9Ksd4H9stZ7+QUzEfhug=;
        b=w3a8FOlkQY2izHkZEHzEAbpkMMU3JbksqzS4hX6+BlGMIJsjP1NWtuVY82SsmjXsGo
         UYIPCdsL3ANCFDCQa896+Hi7zlH9UBbHacYqdLunKBmExvnEaWrQFjKw3eXEDk5s8xE3
         e2UmwpqQaa3OEc0QwNobanF5+xeF3B5fu4vnsj1ExCmm4hc4c4w6GdKvWXCQe9tLDiCe
         WlNLTEfl5wOMTjSk4KPEsKFaJ+QlkxMCwzw0BRh2hU7TjY0QdrriOC9nr/XtnuJgLiOh
         nJ3ADMp+dmPFNMr/mWmrcvuXof4NIZyy9Wh5VNFenBvE00jmqMaHpzfQg5f+NMkzXqO8
         N9/w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=P+z4J2Nt;
       spf=pass (google.com: domain of jarmo.tiitto@gmail.com designates 2a00:1450:4864:20::131 as permitted sender) smtp.mailfrom=jarmo.tiitto@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com. [2a00:1450:4864:20::131])
        by gmr-mx.google.com with ESMTPS id f20si454659ljj.6.2021.06.11.20.35.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Jun 2021 20:35:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of jarmo.tiitto@gmail.com designates 2a00:1450:4864:20::131 as permitted sender) client-ip=2a00:1450:4864:20::131;
Received: by mail-lf1-x131.google.com with SMTP id i10so11546216lfj.2
        for <clang-built-linux@googlegroups.com>; Fri, 11 Jun 2021 20:35:09 -0700 (PDT)
X-Received: by 2002:ac2:548d:: with SMTP id t13mr4618391lfk.568.1623468909578;
        Fri, 11 Jun 2021 20:35:09 -0700 (PDT)
Received: from HyperiorArchMachine.bb.dnainternet.fi (dcx7x4ydkw9h---3prwmt-3.rev.dnainternet.fi. [2001:14ba:14f7:3c00:6897:4dff:feec:7495])
        by smtp.gmail.com with ESMTPSA id f19sm943250ljn.88.2021.06.11.20.35.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Jun 2021 20:35:09 -0700 (PDT)
From: Jarmo Tiitto <jarmo.tiitto@gmail.com>
To: Sami Tolvanen <samitolvanen@google.com>,
	Bill Wendling <wcw@google.com>,
	Kees Cook <keescook@chromium.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org
Cc: Jarmo Tiitto <jarmo.tiitto@gmail.com>,
	morbo@google.com
Subject: [RFC PATCH 3/5] pgo: Wire up the new more generic code for modules
Date: Sat, 12 Jun 2021 06:24:24 +0300
Message-Id: <20210612032425.11425-4-jarmo.tiitto@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210612032425.11425-1-jarmo.tiitto@gmail.com>
References: <20210612032425.11425-1-jarmo.tiitto@gmail.com>
MIME-Version: 1.0
X-Original-Sender: Jarmo.Tiitto@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=P+z4J2Nt;       spf=pass
 (google.com: domain of jarmo.tiitto@gmail.com designates 2a00:1450:4864:20::131
 as permitted sender) smtp.mailfrom=jarmo.tiitto@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Content-Type: text/plain; charset="UTF-8"
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

prf_open() now uses the inode->i_private to get
the prf_object for the file. This can be either
vmlinux.profraw or any module.profraw file.

The prf_vmlinux object is now added into prf_list and
allocate_node() scans the list and reserves vnodes
from corresponding prf_object(s).

Signed-off-by: Jarmo Tiitto <jarmo.tiitto@gmail.com>
---
note: There is no module notifier code yet,
so only vmlinux.profraw profile data
is available with this commit.

Another thing is that pgo/reset will only
reset vmlinux.profraw.
Profile data reset for modules may be added later:
maybe writing module's name into pgo/reset would reset only
the specified module's profile data?
Then writing "all" or zero would atomically reset everything.

I'm bit unsure about the new allocate_node() code since
it is the first place I had to put rcu_read_lock()
and the code is likely to change from this.
---
 kernel/pgo/fs.c         | 30 ++++++++++++++++++++-----
 kernel/pgo/instrument.c | 49 +++++++++++++++++++++++++++--------------
 kernel/pgo/pgo.h        |  2 ++
 3 files changed, 60 insertions(+), 21 deletions(-)

diff --git a/kernel/pgo/fs.c b/kernel/pgo/fs.c
index 7e269d69bcd7..84b36e61758b 100644
--- a/kernel/pgo/fs.c
+++ b/kernel/pgo/fs.c
@@ -32,8 +32,10 @@ static struct dentry *directory;
 struct prf_private_data {
 	void *buffer;
 	size_t size;
+	struct prf_object *core;
 };
 
+/* vmlinux's prf core */
 static struct prf_object prf_vmlinux;
 
 /*
@@ -281,7 +283,6 @@ static int prf_serialize(struct prf_object *po, struct prf_private_data *p, size
 	prf_serialize_values(po, &buffer);
 
 	return 0;
-
 }
 
 /* open() implementation for PGO. Creates a copy of the profiling data set. */
@@ -292,13 +293,21 @@ static int prf_open(struct inode *inode, struct file *file)
 	size_t buf_size;
 	int err = -EINVAL;
 
+	if (WARN_ON(!inode->i_private)) {
+		/* bug: inode was not initialized by us */
+		return err;
+	}
+
 	data = kzalloc(sizeof(*data), GFP_KERNEL);
 	if (!data)
 		return -ENOMEM;
 
+	/* Get prf_object of this inode */
+	data->core = inode->i_private;
+
 	/* Get initial buffer size. */
 	flags = prf_lock();
-	data->size = prf_buffer_size(&prf_vmlinux);
+	data->size = prf_buffer_size(data->core);
 	prf_unlock(flags);
 
 	do {
@@ -318,12 +327,13 @@ static int prf_open(struct inode *inode, struct file *file)
 		 * data length in data->size.
 		 */
 		flags = prf_lock();
-		err = prf_serialize(&prf_vmlinux, data, buf_size);
+		err = prf_serialize(data->core, data, buf_size);
 		prf_unlock(flags);
 		/* In unlikely case, try again. */
 	} while (err == -EAGAIN);
 
 	if (err < 0) {
+
 		if (data)
 			vfree(data->buffer);
 		kfree(data);
@@ -412,6 +422,8 @@ static const struct file_operations prf_reset_fops = {
 /* Create debugfs entries. */
 static int __init pgo_init(void)
 {
+	unsigned long flags;
+
 	/* Init profiler vmlinux core entry */
 	memset(&prf_vmlinux, 0, sizeof(prf_vmlinux));
 	prf_vmlinux.data = __llvm_prf_data_start;
@@ -430,19 +442,27 @@ static int __init pgo_init(void)
 	prf_vmlinux.vnds_num = prf_get_count(__llvm_prf_vnds_start,
 		__llvm_prf_vnds_end, sizeof(__llvm_prf_vnds_start[0]));
 
+	/* enable profiling */
+	flags = prf_list_lock();
+	list_add_tail_rcu(&prf_vmlinux.link, &prf_list);
+	prf_list_unlock(flags);
 
 	directory = debugfs_create_dir("pgo", NULL);
 	if (!directory)
 		goto err_remove;
 
-	if (!debugfs_create_file("vmlinux.profraw", 0600, directory, NULL,
-				 &prf_fops))
+	prf_vmlinux.file = debugfs_create_file("vmlinux.profraw",
+		0600, directory, &prf_vmlinux, &prf_fops);
+	if (!prf_vmlinux.file)
 		goto err_remove;
 
 	if (!debugfs_create_file("reset", 0200, directory, NULL,
 				 &prf_reset_fops))
 		goto err_remove;
 
+	/* show notice why the system slower: */
+	pr_notice("Clang PGO instrumentation is active.");
+
 	return 0;
 
 err_remove:
diff --git a/kernel/pgo/instrument.c b/kernel/pgo/instrument.c
index 24fdeb79b674..e214c9d7a113 100644
--- a/kernel/pgo/instrument.c
+++ b/kernel/pgo/instrument.c
@@ -24,6 +24,7 @@
 #include <linux/export.h>
 #include <linux/spinlock.h>
 #include <linux/types.h>
+#include <linux/rculist.h>
 #include "pgo.h"
 
 /*
@@ -56,22 +57,38 @@ void prf_unlock(unsigned long flags)
 static struct llvm_prf_value_node *allocate_node(struct llvm_prf_data *p,
 						 u32 index, u64 value)
 {
-	const int max_vnds = prf_get_count(__llvm_prf_vnds_start,
-		__llvm_prf_vnds_end, sizeof(struct llvm_prf_value_node));
-
-	/*
-	 * Check that p is within vmlinux __llvm_prf_data section.
-	 * If not, don't allocate since we can't handle modules yet.
-	 */
-	if (!memory_contains(__llvm_prf_data_start,
-		__llvm_prf_data_end, p, sizeof(*p)))
-		return NULL;
-
-	if (WARN_ON_ONCE(current_node >= max_vnds))
-		return NULL; /* Out of nodes */
-
-	/* reserve vnode for vmlinux */
-	return &__llvm_prf_vnds_start[current_node++];
+	struct llvm_prf_value_node *vnode = NULL;
+	struct prf_object *po;
+	struct llvm_prf_data *data_end;
+	int max_vnds;
+
+	rcu_read_lock();
+
+	list_for_each_entry_rcu(po, &prf_list, link) {
+		/* get section limits */
+		max_vnds = prf_vnds_count(po);
+		data_end = po->data + prf_data_count(po);
+
+		/*
+		 * Check that p is within:
+		 * [po->data, po->data + prf_data_count(po)] section.
+		 * If yes, allocate vnode from this prf_object.
+		 */
+		if (memory_contains(po->data, data_end, p, sizeof(*p))) {
+
+
+			if (WARN_ON_ONCE(po->current_node >= max_vnds))
+				return NULL; /* Out of nodes */
+
+			/* reserve the vnode */
+			vnode = &po->vnds[po->current_node++];
+			goto out;
+		}
+	}
+
+out:
+	rcu_read_unlock();
+	return vnode;
 }
 
 /*
diff --git a/kernel/pgo/pgo.h b/kernel/pgo/pgo.h
index 44d79e2861e1..59d0aa966fbe 100644
--- a/kernel/pgo/pgo.h
+++ b/kernel/pgo/pgo.h
@@ -19,6 +19,8 @@
 #ifndef _PGO_H
 #define _PGO_H
 
+#include <linux/rculist.h>
+
 /*
  * Note: These internal LLVM definitions must match the compiler version.
  * See llvm/include/llvm/ProfileData/InstrProfData.inc in LLVM's source code.
-- 
2.32.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210612032425.11425-4-jarmo.tiitto%40gmail.com.
