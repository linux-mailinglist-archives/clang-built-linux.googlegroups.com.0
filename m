Return-Path: <clang-built-linux+bncBC53FPW2UIOBB4OWSCDAMGQENFPR2IY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43d.google.com (mail-wr1-x43d.google.com [IPv6:2a00:1450:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 7038B3A4C6F
	for <lists+clang-built-linux@lfdr.de>; Sat, 12 Jun 2021 05:35:13 +0200 (CEST)
Received: by mail-wr1-x43d.google.com with SMTP id t14-20020adfe44e0000b029011851efa802sf3526549wrm.11
        for <lists+clang-built-linux@lfdr.de>; Fri, 11 Jun 2021 20:35:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623468913; cv=pass;
        d=google.com; s=arc-20160816;
        b=BUszVzcqy/QtlyCi6YQhFzk1IwesARzbf8fRflu6P1GsokmhMml1P1tMoj0UMVgJiI
         rLTAPsnAbgIN8shHZlaRDI/fmd6xPvi5GOdgTQpQ/keuh6bNFWVHhImsOxx9T5TVrUcb
         PVHE135DhGTI/JmMoh6/9bJym/TtM186THqiFhXDvxVITkn3CuZmWZd5k8HgOFPfrmjv
         K3QgodDgcHf3u4bC+J41GEbHj6i7jZWnnZ0hv0qcXBae3uB9ShYF6+SAme+rEAnPIwKj
         jzpj001htxdyF6c1A+PKFSFImGIRYAisHGexlPr4/7RHf1a0IJT80qk5AGz4srHTQo0X
         GdXA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=pXPR2mwoGJcYDBn7vbsbXF+DXa58RQfJtTnM17WX4Mw=;
        b=HuzyA5E+owu5tXVEggbHxsd8cDKr/XfB5X61lVA4jr6hc4mKVvydue76jzqsZolzQm
         VitMKq+3FIG/TNejMQ3Cj18erbrGczLAfZVjYJYtYX84DqUe+qxOfOKAwJaWDdNKeOnB
         MvHWgRFLW3WRUOqcU1y4LrIoOJt+MMkERjbJfJcIcUy7HkRczkJO3ipz9m8LxDVYfJsi
         86GDFdEN9fAK6DOjL7snm4SUDqYUo9whByiBtNgVxqKRgz2pK/IxsV1QVCo7diVh5/e8
         oPUA8bNx0uxpVb/mgspsQmUB1SHw27LqpeW9dj/PZ9K6HJ1F2NrokQnLqw3fMs54BjW1
         GBvQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Z61aoTk4;
       spf=pass (google.com: domain of jarmo.tiitto@gmail.com designates 2a00:1450:4864:20::136 as permitted sender) smtp.mailfrom=jarmo.tiitto@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pXPR2mwoGJcYDBn7vbsbXF+DXa58RQfJtTnM17WX4Mw=;
        b=BUIaFi12cRYoHNzkUIhT9l/qReadqTdt4h+7F5hLNr8sKg47a+Ey+8Tfc7N7SitHdU
         ZPYjOE6mhMhKAetmUicSj9X2h5tUqqSbAbRaY6G/tyLNPGMUlHnHSJvS9mxRRj/pEnup
         GJHD6bzjVyxG/86xb4sqRW2UQbAzirdVeWYmcOP2+7UiV4AbYiMCuYrF8M/s9FEyv0j/
         5pP4dYHbVTz5lwPDwpYltXq5pfe3gSYGr48RTTAURJJPUtcyUnahhfHJt6mXqj8XqYvn
         MphljpDTgT5wgeOrw7ekOwHp9WL8+IX8JUHWDO4Hl5UYMdgO9S650Xob2OqOxc7fE3d3
         r0NA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pXPR2mwoGJcYDBn7vbsbXF+DXa58RQfJtTnM17WX4Mw=;
        b=Ac9ly/YyPSghc4FRUQ65Akf3A7yFD5wkjbPjzYJJqmX6NeFs8tKhN0XSr5RQDZz12z
         7mKqpJJt52Bn9hlkhm34HvJ98XPHMbggkWP7mgF/aqLA5LLi+kbKeL2nmZw6/apJ6Xfv
         DvXWEbu+yXt1gvCyUVXX6FdyO9uWaAnHgZ8PKdWvVxWYf1uLFMxTyT1EJzHgVbOD+0bT
         J+dJcqam++ZxAE1e3jO2c9HrJwA9Q0pDnFUVziaw3Z4RjWg8lB6Ag720BIbLePAzpGX1
         gQwgFoYZ55kmstRbALKTh+dHg37bQifXAKIQlRks2g3bsirNo0uuAoO+8v3xfg4aUcSz
         zbNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pXPR2mwoGJcYDBn7vbsbXF+DXa58RQfJtTnM17WX4Mw=;
        b=gudhvJW7tv53AwTMpm1TLzvIJF6udtsHGdg3kYDuQ8qXxZvm1TFBlLlUcKePZ1qZi/
         mmUW5WhFutfSnLOXxm8otXcoBIblrlVZYOl3qK5Wki+EE1X8N9ESr52JmS48IBH7NthK
         A1AfvFTTLuyxE6jq5fBQ7/yx539nE2PVKN4mW3A7X3Hn4JDpf6cvQKOi0tfDJ520aVHL
         DdzUzK8kyMct325YAjURZaXYSpkWDbDRKOvf5sC0Bi3B3DupqR+nkwzOV/1+Xq6Ddza2
         8CZ56Xd9fUPsTCOy82O8Y6hcG3rXogQYDYOxjfjXczgu2Xlx/A88IHHtnWNiSiL45uUf
         Q4ag==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531gbsKhzfUvxpfUObZhQwFIn1YD+ttu6kJ1D9b2z/3OLZCfl6v4
	DKJ5ZvcdPr8OOikKLSyf1Po=
X-Google-Smtp-Source: ABdhPJxxWjMuRmMS88knfd7v2TD7kZzNA78oyseAUVxTFTiXiSwo0efK1PazITF/eTewzBgrp3Vr+w==
X-Received: by 2002:a05:600c:282:: with SMTP id 2mr23160827wmk.98.1623468913176;
        Fri, 11 Jun 2021 20:35:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:fe4c:: with SMTP id m12ls4053673wrs.0.gmail; Fri, 11 Jun
 2021 20:35:12 -0700 (PDT)
X-Received: by 2002:adf:dcc3:: with SMTP id x3mr6694936wrm.177.1623468912235;
        Fri, 11 Jun 2021 20:35:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623468912; cv=none;
        d=google.com; s=arc-20160816;
        b=bPCf6OfY4MwLvBNMjiqFfpNF8ZAco5ufqXmFdsl+G4Pna/3ujPaCFKfm5Fc2beK17q
         KV+0DDWjGA4oRfZFs0dvSumdICCBpaMnHPv8B1K1I94J7ThVe2lRs16fjh3AabQbk6eN
         KhX34aU53h0DU9P+d7sSd8C/aujHHM9BFJqfxoh3cuAVBY4HyR5S2oJBYP6FozjAei0C
         qMSKzMO1w45k/Rrm/b2s/b/aIikqipCizg22va+3XtbpZV/SX6ahNjTkt8tXv7KOpIKQ
         eeAM4cz4+zg3gL80fCBVW6+OYxUVhWq3vJsc+QpG8jrGGA2kyiZWbh/KKhhkhQsIW8jX
         qskQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Ibhf5TupeDDF+e0/bn0bGPWU71FDw0je6Oife0cbLuU=;
        b=LwM+OXhq7WSmiSNgpXgkFydcU31aUqgZwdVFd+WPm/Qrd+deLvSen3cNYijJy9AjDs
         Vusazz64+i7YQW7F0gQUYqU51dIM+1/HH8W/3F2jbu+cbEKsn1qiePJW+3MYtNYvadcM
         YOGQZkQOfGD6PRIPheB0au4psTFUk1vb+xgXSVVSFqDmrAyHctKxZKKKGjDUaeKXnca9
         Lp2srrFQHGjScmSNEdAwa4os69i49UYKkAxil4DmAFo9QOop2oCWtZPxHpN6HYUVTO0D
         3ApUQJm6ao42KccFxDHxQOx8RB3EQBmeC4AtNTMYqHI854Rt+U0je83DonkNU+ugqcSL
         KJyw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Z61aoTk4;
       spf=pass (google.com: domain of jarmo.tiitto@gmail.com designates 2a00:1450:4864:20::136 as permitted sender) smtp.mailfrom=jarmo.tiitto@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com. [2a00:1450:4864:20::136])
        by gmr-mx.google.com with ESMTPS id c26si468283wmr.1.2021.06.11.20.35.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Jun 2021 20:35:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of jarmo.tiitto@gmail.com designates 2a00:1450:4864:20::136 as permitted sender) client-ip=2a00:1450:4864:20::136;
Received: by mail-lf1-x136.google.com with SMTP id r5so11544042lfr.5
        for <clang-built-linux@googlegroups.com>; Fri, 11 Jun 2021 20:35:12 -0700 (PDT)
X-Received: by 2002:a05:6512:218d:: with SMTP id b13mr4791685lft.346.1623468911972;
        Fri, 11 Jun 2021 20:35:11 -0700 (PDT)
Received: from HyperiorArchMachine.bb.dnainternet.fi (dcx7x4ydkw9h---3prwmt-3.rev.dnainternet.fi. [2001:14ba:14f7:3c00:6897:4dff:feec:7495])
        by smtp.gmail.com with ESMTPSA id f19sm943250ljn.88.2021.06.11.20.35.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Jun 2021 20:35:11 -0700 (PDT)
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
Subject: [RFC PATCH 5/5] pgo: Cleanup code in pgo/fs.c
Date: Sat, 12 Jun 2021 06:24:26 +0300
Message-Id: <20210612032425.11425-6-jarmo.tiitto@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210612032425.11425-1-jarmo.tiitto@gmail.com>
References: <20210612032425.11425-1-jarmo.tiitto@gmail.com>
MIME-Version: 1.0
X-Original-Sender: Jarmo.Tiitto@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Z61aoTk4;       spf=pass
 (google.com: domain of jarmo.tiitto@gmail.com designates 2a00:1450:4864:20::136
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

Cleanups to comments and punctuation.
Cleanup return path in pgo_module_init.

Signed-off-by: Jarmo Tiitto <jarmo.tiitto@gmail.com>
---
 kernel/pgo/fs.c | 47 +++++++++++++++++++++++------------------------
 1 file changed, 23 insertions(+), 24 deletions(-)

diff --git a/kernel/pgo/fs.c b/kernel/pgo/fs.c
index 98b982245b58..855d5e3050fa 100644
--- a/kernel/pgo/fs.c
+++ b/kernel/pgo/fs.c
@@ -294,7 +294,7 @@ static int prf_open(struct inode *inode, struct file *file)
 	int err = -EINVAL;
 
 	if (WARN_ON(!inode->i_private)) {
-		/* bug: inode was not initialized by us */
+		/* Bug: inode was not initialized by us. */
 		return err;
 	}
 
@@ -302,7 +302,7 @@ static int prf_open(struct inode *inode, struct file *file)
 	if (!data)
 		return -ENOMEM;
 
-	/* Get prf_object of this inode */
+	/* Get prf_object of this inode. */
 	data->core = inode->i_private;
 
 	/* Get initial buffer size. */
@@ -425,17 +425,17 @@ static void pgo_module_init(struct module *mod)
 	char fname[MODULE_NAME_LEN + 9]; /* +strlen(".profraw") */
 	unsigned long flags;
 
-	/* add new prf_object entry for the module */
+	/* Add new prf_object entry for the module. */
 	po = kzalloc(sizeof(*po), GFP_KERNEL);
 	if (!po)
-		goto out;
+		return; /* -ENOMEM */
 
 	po->mod_name = mod->name;
 
 	fname[0] = 0;
 	snprintf(fname, sizeof(fname), "%s.profraw", po->mod_name);
 
-	/* setup prf_object sections */
+	/* Setup prf_object sections. */
 	po->data = mod->prf_data;
 	po->data_num = prf_get_count(mod->prf_data,
 		(char *)mod->prf_data + mod->prf_data_size, sizeof(po->data[0]));
@@ -452,20 +452,19 @@ static void pgo_module_init(struct module *mod)
 	po->vnds_num = prf_get_count(mod->prf_vnds,
 		(char *)mod->prf_vnds + mod->prf_vnds_size, sizeof(po->vnds[0]));
 
-	/* create debugfs entry */
+	/* Create debugfs entry. */
 	po->file = debugfs_create_file(fname, 0600, directory, po, &prf_fops);
 	if (!po->file) {
 		pr_err("Failed to setup module pgo: %s", fname);
 		kfree(po);
-		goto out;
-	}
 
-	/* finally enable profiling for the module */
-	flags = prf_list_lock();
-	list_add_tail_rcu(&po->link, &prf_list);
-	prf_list_unlock(flags);
+	} else {
+		/* Finally enable profiling for the module. */
+		flags = prf_list_lock();
+		list_add_tail_rcu(&po->link, &prf_list);
+		prf_list_unlock(flags);
+	}
 
-out:
 	return;
 }
 
@@ -477,33 +476,33 @@ static int pgo_module_notifier(struct notifier_block *nb, unsigned long event,
 	unsigned long flags;
 
 	if (event == MODULE_STATE_LIVE) {
-		/* does the module have profiling info? */
+		/* Does the module have profiling info? */
 		if (mod->prf_data
 			&& mod->prf_cnts
 			&& mod->prf_names
 			&& mod->prf_vnds) {
 
-			/* setup module profiling */
+			/* Setup module profiling. */
 			pgo_module_init(mod);
 		}
 	}
 
 	if (event == MODULE_STATE_GOING) {
-		/* find the prf_object from the list */
+		/* Find the prf_object from the list. */
 		rcu_read_lock();
 
 		list_for_each_entry_rcu(po, &prf_list, link) {
 			if (strcmp(po->mod_name, mod->name) == 0)
 				goto out_unlock;
 		}
-		/* no such module */
+		/* No such module. */
 		po = NULL;
 
 out_unlock:
 		rcu_read_unlock();
 
 		if (po) {
-			/* remove from profiled modules */
+			/* Remove from profiled modules. */
 			flags = prf_list_lock();
 			list_del_rcu(&po->link);
 			prf_list_unlock(flags);
@@ -511,7 +510,7 @@ static int pgo_module_notifier(struct notifier_block *nb, unsigned long event,
 			debugfs_remove(po->file);
 			po->file = NULL;
 
-			/* cleanup memory */
+			/* Cleanup memory. */
 			kfree_rcu(po, rcu);
 		}
 	}
@@ -528,7 +527,7 @@ static int __init pgo_init(void)
 {
 	unsigned long flags;
 
-	/* Init profiler vmlinux core entry */
+	/* Init profiler vmlinux core entry. */
 	memset(&prf_vmlinux, 0, sizeof(prf_vmlinux));
 	prf_vmlinux.data = __llvm_prf_data_start;
 	prf_vmlinux.data_num = prf_get_count(__llvm_prf_data_start,
@@ -546,7 +545,7 @@ static int __init pgo_init(void)
 	prf_vmlinux.vnds_num = prf_get_count(__llvm_prf_vnds_start,
 		__llvm_prf_vnds_end, sizeof(__llvm_prf_vnds_start[0]));
 
-	/* enable profiling */
+	/* Enable profiling. */
 	flags = prf_list_lock();
 	prf_vmlinux.mod_name = "vmlinux";
 	list_add_tail_rcu(&prf_vmlinux.link, &prf_list);
@@ -565,10 +564,10 @@ static int __init pgo_init(void)
 				 &prf_reset_fops))
 		goto err_remove;
 
-	/* register module notifer */
+	/* Register module notifer. */
 	register_module_notifier(&pgo_module_nb);
 
-	/* show notice why the system slower: */
+	/* Show notice why the system slower: */
 	pr_notice("Clang PGO instrumentation is active.");
 
 	return 0;
@@ -581,7 +580,7 @@ static int __init pgo_init(void)
 /* Remove debugfs entries. */
 static void __exit pgo_exit(void)
 {
-	/* unsubscribe the notifier and do cleanup. */
+	/* Unsubscribe the notifier and do cleanup. */
 	unregister_module_notifier(&pgo_module_nb);
 
 	debugfs_remove_recursive(directory);
-- 
2.32.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210612032425.11425-6-jarmo.tiitto%40gmail.com.
