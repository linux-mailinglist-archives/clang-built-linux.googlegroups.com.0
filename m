Return-Path: <clang-built-linux+bncBC53FPW2UIOBB4GWSCDAMGQEXNRQCAQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x440.google.com (mail-wr1-x440.google.com [IPv6:2a00:1450:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BE723A4C6E
	for <lists+clang-built-linux@lfdr.de>; Sat, 12 Jun 2021 05:35:12 +0200 (CEST)
Received: by mail-wr1-x440.google.com with SMTP id f22-20020a5d58f60000b029011634e39889sf3543865wrd.7
        for <lists+clang-built-linux@lfdr.de>; Fri, 11 Jun 2021 20:35:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623468912; cv=pass;
        d=google.com; s=arc-20160816;
        b=qfzC4nLZ9A7grOliIBFVqN6rzgMiy7iuVQEmwO95Hr7xXu4Jk7bOHBrkng4nAIw71i
         0McPL0wboVy1tZuuEdgwZSUByD16g4h3fbYUvT+CB2ATS5g0m/VLiUC3UU9HxmPj9IEV
         8mchRkkvc/yLR4NW8aFonkHvdzphhov0De/iVLHvUU5XpFtHXaLYgafn5hOGCxPlhuv+
         eW6LO+UYYNnU50OD+jhoGWB+4igGrKkx/gu2nFSpqQzcSwSqqIMKyd5PWLRw3V0lo1Ux
         U3m6WH+7MISpPI1sg+oSbJx5wQbO6BRdNBM5YkQY04O9cPOXt4sj4kP+MiwA8gCoTY64
         ABrA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:sender:dkim-signature
         :dkim-signature;
        bh=YXcjDf/RLkmT5aYadIdItJohhpMbu9BFA0+vAX//hTs=;
        b=ys3uXBs0DU5WEar9a1q3ENevA+59Un1DHojkejmjzh/UVCt8l37lHrRS/3RCjJGr3e
         jzzxfFcKrHUXjdcY9jAjfpQsayXeNbtx9/kgCDCSbRLbjO3Nbs07VIuHdXOsJpE5cXhv
         pFUyl8Q3hr6UatFiwy2aRGuj9JNAeWiYn+fQUrUUT03A5H26yqp7zTQ0GYejEuXzkkXk
         n2ZMHBIJD8OIkRLw184YsqZFGBPNgFHou4F9rb1W5S7fvbWEwrOQv5trqqH48qUdkH4k
         P29pxtzLqfOD24tVVjdezOgYMm6X8uXPKUNWju5yyGS7wKjOyHg0T5RtW1qS40EHw3lT
         qksA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NKgNwsRN;
       spf=pass (google.com: domain of jarmo.tiitto@gmail.com designates 2a00:1450:4864:20::136 as permitted sender) smtp.mailfrom=jarmo.tiitto@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YXcjDf/RLkmT5aYadIdItJohhpMbu9BFA0+vAX//hTs=;
        b=onEua5Yf0gdwA5L/R+D3wtHiq6bh1qrkCisjHWO5ic2oN6WD07PamE4mbUhop51lZf
         SZCjABaQL85s17vRLHuDWjNEILGvDdmlXW+ziTUwcIAyRrD16vfJ45BssOy54Pc38C49
         hG2ux/2G14dU7NyHwLRjVy2hr7XPcqkhHZDljeFAcJNvhvhdFuUu/8c8DbXzOgwtiKKk
         CrZjkSqmWon8jvmADWZxgkIS5UutAC2V8P79tEs3M3AMRbuargufcTEmQ1W8MpPf5L3f
         RPu+abDhBDIjtncncitwtkwgTP8cXm7rx433aJGIkpKVSFlFk3gRc9Hk9HSzlfn2Nld3
         poHA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YXcjDf/RLkmT5aYadIdItJohhpMbu9BFA0+vAX//hTs=;
        b=juU634dLYDG0B2E6uSo0vd5P5CgA72CrISx98lV/m4ZvDapr+/Ip7i6COypglMPDGA
         AXSnTrJyPFKBjSC7yTGTvabprM41uABi8Hkvw8Jt+AAVKHOZ8QYtL2bzPwgHNT6jQ9UB
         GExoUapC1UrWfKw7XdjZkaXBeAGjQChNOxv7ja8JJD9R41d3oXO/D7rrDXZkJ1XO1DQW
         nOa6SuQsQhyQFNs0R/NG+BcMCVxDdzRWMYEVVfuG23KtmCbc1Yco4sJwBasSmfkE0K80
         3QdJPd6RArlVmuymvoWXiRMAL3ej7OngOJt9EbwaxwjHdxSs+qHmZC9Sibc6Z5Z7Slx3
         cecA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=YXcjDf/RLkmT5aYadIdItJohhpMbu9BFA0+vAX//hTs=;
        b=iuQbuXO93EZd0yU75OCMF9KzVqyC+EHPzydvUes38c1XlBuy6V9LxOx0Rh1jJBOuKT
         E+YcCXq3nVAfGZqGXCyhv6R9vdxuxmBhXQPL3/+heclPMdE0EYyYUgNRPEbrgN6E6ERg
         Ewr8LDJHr+Npq+t3dunz4pYfi306j5XbDVw4jcX28zrHsXxRmrklm72NMap0/vT3xDif
         GhMDaGmOcFckoC00cJFP7kwprv/JO2hHv3LhAam64XoPv4E9Z76cz6H7wSRGxlOTOSIm
         lMBjCX+X4sXnfrPdifW+XBp9qIBb7AXhGcEpqysqowa43hyVnor/Rs5MI6JcUmU4ygIU
         28Gw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5302aEgJAppExujs4rrb7jhLHCfum8JQjc1A81J5gHQ/iCOUQCxg
	EiC9XbDL2dFE0vxnUjl+K0Q=
X-Google-Smtp-Source: ABdhPJysEUhMA0L5t+qCADMHLRpodEuJ+6sB86KpgsUDCvOHASKlskjEz3ou8iJhz0AUejvBdQXkpA==
X-Received: by 2002:adf:ec02:: with SMTP id x2mr7093196wrn.156.1623468912295;
        Fri, 11 Jun 2021 20:35:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:600c:358e:: with SMTP id p14ls4877562wmq.0.canary-gmail;
 Fri, 11 Jun 2021 20:35:11 -0700 (PDT)
X-Received: by 2002:a1c:7907:: with SMTP id l7mr6685857wme.147.1623468911311;
        Fri, 11 Jun 2021 20:35:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623468911; cv=none;
        d=google.com; s=arc-20160816;
        b=KmH+fA9K8EPB/ASpVncbURKqVAxM0Qe3od+f9Q7n9SGhSDz5xU/cfLW6yqUfkP/sNq
         mC1qit42+7MnYbvxLpxPJwWzEiZ8GDTGvqHcA+6rs536DPlKk85MAiOnNTjE3VDkL2KR
         zgmuGKFG/Izkj0ZPWN2cT5BNMijOBqC5bMHq64j+PJbRwMvJdpgABkOA0tJZESPsr1wU
         ZKEyrEeOMKkZmq89jvu8bvFW3UVBmKckWbKgF2ujCk5kvnjguPt5FI9xlG/LVA/moFzf
         i1UdLNkZJEFtZ4cH6NTyn3eFodzWPQ59jgV/Mlm9u57He2x53ruxcmmnI+htA/bFvds1
         yVew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=gOtwuICSd/k9ZnE0r7oKEW78fGTtl+Xe0V2OTIyFfGE=;
        b=LfsoM5OFPSwXj7O3d0yApPsogCgGOg1bZ5Vp6sH2quweIik6rJvVWgX3rG4kHIB9yE
         Hp7mIYChgMhYo1zG5YntKDwAcEU+i3fdZoa1n1Vxuhoozft5MwXwqeYsv7852UfAzLgr
         hjStOZgNTnFnYthKmum8TZPrCleWPF0vMmbqKig7vU3WFNynB6JVAVHMjZYNb1azZMw2
         Vm8lyrZWD1M2jfKhsgWbST3MQvOIUt6VJLwFkndO6dQPXs9ufcU8puvHfrBr/UtsghPt
         aR8XVEmrHwfybh2BvqKGPcXeuECSHloxor6gYwDaiLMkdeYg5AYHltQCAg0vfX+kjz4c
         nHjQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NKgNwsRN;
       spf=pass (google.com: domain of jarmo.tiitto@gmail.com designates 2a00:1450:4864:20::136 as permitted sender) smtp.mailfrom=jarmo.tiitto@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com. [2a00:1450:4864:20::136])
        by gmr-mx.google.com with ESMTPS id c26si468283wmr.1.2021.06.11.20.35.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Jun 2021 20:35:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of jarmo.tiitto@gmail.com designates 2a00:1450:4864:20::136 as permitted sender) client-ip=2a00:1450:4864:20::136;
Received: by mail-lf1-x136.google.com with SMTP id r5so11544042lfr.5
        for <clang-built-linux@googlegroups.com>; Fri, 11 Jun 2021 20:35:11 -0700 (PDT)
X-Received: by 2002:a19:ed18:: with SMTP id y24mr4795912lfy.359.1623468910825;
        Fri, 11 Jun 2021 20:35:10 -0700 (PDT)
Received: from HyperiorArchMachine.bb.dnainternet.fi (dcx7x4ydkw9h---3prwmt-3.rev.dnainternet.fi. [2001:14ba:14f7:3c00:6897:4dff:feec:7495])
        by smtp.gmail.com with ESMTPSA id f19sm943250ljn.88.2021.06.11.20.35.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Jun 2021 20:35:10 -0700 (PDT)
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
Subject: [RFC PATCH 4/5] pgo: Add module notifier machinery
Date: Sat, 12 Jun 2021 06:24:25 +0300
Message-Id: <20210612032425.11425-5-jarmo.tiitto@gmail.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210612032425.11425-1-jarmo.tiitto@gmail.com>
References: <20210612032425.11425-1-jarmo.tiitto@gmail.com>
MIME-Version: 1.0
X-Original-Sender: Jarmo.Tiitto@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=NKgNwsRN;       spf=pass
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

Add module notifier callback and register modules
into prf_list.

For each module that has __llvm_prf_{data,cnts,names,vnds} sections
The callback creates debugfs <module>.profraw entry and
links new prf_object into prf_list.

This enables profiling for all loaded modules.

* Moved rcu_read_lock() outside of allocate_node() in order
  to protect __llvm_profile_instrument_target() from module unload(s)

Signed-off-by: Jarmo Tiitto <jarmo.tiitto@gmail.com>
---
v2: Passed QEMU SMP boot test into minimal Arch Linux distro,
module loading and unloading work without warnings.
Module profile data looks ok. :-)
---
 kernel/pgo/fs.c         | 111 ++++++++++++++++++++++++++++++++++++++++
 kernel/pgo/instrument.c |  19 ++++---
 2 files changed, 122 insertions(+), 8 deletions(-)

diff --git a/kernel/pgo/fs.c b/kernel/pgo/fs.c
index 84b36e61758b..98b982245b58 100644
--- a/kernel/pgo/fs.c
+++ b/kernel/pgo/fs.c
@@ -419,6 +419,110 @@ static const struct file_operations prf_reset_fops = {
 	.llseek		= noop_llseek,
 };
 
+static void pgo_module_init(struct module *mod)
+{
+	struct prf_object *po;
+	char fname[MODULE_NAME_LEN + 9]; /* +strlen(".profraw") */
+	unsigned long flags;
+
+	/* add new prf_object entry for the module */
+	po = kzalloc(sizeof(*po), GFP_KERNEL);
+	if (!po)
+		goto out;
+
+	po->mod_name = mod->name;
+
+	fname[0] = 0;
+	snprintf(fname, sizeof(fname), "%s.profraw", po->mod_name);
+
+	/* setup prf_object sections */
+	po->data = mod->prf_data;
+	po->data_num = prf_get_count(mod->prf_data,
+		(char *)mod->prf_data + mod->prf_data_size, sizeof(po->data[0]));
+
+	po->cnts = mod->prf_cnts;
+	po->cnts_num = prf_get_count(mod->prf_cnts,
+		(char *)mod->prf_cnts + mod->prf_cnts_size, sizeof(po->cnts[0]));
+
+	po->names = mod->prf_names;
+	po->names_num = prf_get_count(mod->prf_names,
+		(char *)mod->prf_names + mod->prf_names_size, sizeof(po->names[0]));
+
+	po->vnds = mod->prf_vnds;
+	po->vnds_num = prf_get_count(mod->prf_vnds,
+		(char *)mod->prf_vnds + mod->prf_vnds_size, sizeof(po->vnds[0]));
+
+	/* create debugfs entry */
+	po->file = debugfs_create_file(fname, 0600, directory, po, &prf_fops);
+	if (!po->file) {
+		pr_err("Failed to setup module pgo: %s", fname);
+		kfree(po);
+		goto out;
+	}
+
+	/* finally enable profiling for the module */
+	flags = prf_list_lock();
+	list_add_tail_rcu(&po->link, &prf_list);
+	prf_list_unlock(flags);
+
+out:
+	return;
+}
+
+static int pgo_module_notifier(struct notifier_block *nb, unsigned long event,
+				void *pdata)
+{
+	struct module *mod = pdata;
+	struct prf_object *po;
+	unsigned long flags;
+
+	if (event == MODULE_STATE_LIVE) {
+		/* does the module have profiling info? */
+		if (mod->prf_data
+			&& mod->prf_cnts
+			&& mod->prf_names
+			&& mod->prf_vnds) {
+
+			/* setup module profiling */
+			pgo_module_init(mod);
+		}
+	}
+
+	if (event == MODULE_STATE_GOING) {
+		/* find the prf_object from the list */
+		rcu_read_lock();
+
+		list_for_each_entry_rcu(po, &prf_list, link) {
+			if (strcmp(po->mod_name, mod->name) == 0)
+				goto out_unlock;
+		}
+		/* no such module */
+		po = NULL;
+
+out_unlock:
+		rcu_read_unlock();
+
+		if (po) {
+			/* remove from profiled modules */
+			flags = prf_list_lock();
+			list_del_rcu(&po->link);
+			prf_list_unlock(flags);
+
+			debugfs_remove(po->file);
+			po->file = NULL;
+
+			/* cleanup memory */
+			kfree_rcu(po, rcu);
+		}
+	}
+
+	return NOTIFY_OK;
+}
+
+static struct notifier_block pgo_module_nb = {
+	.notifier_call = pgo_module_notifier
+};
+
 /* Create debugfs entries. */
 static int __init pgo_init(void)
 {
@@ -444,6 +548,7 @@ static int __init pgo_init(void)
 
 	/* enable profiling */
 	flags = prf_list_lock();
+	prf_vmlinux.mod_name = "vmlinux";
 	list_add_tail_rcu(&prf_vmlinux.link, &prf_list);
 	prf_list_unlock(flags);
 
@@ -460,6 +565,9 @@ static int __init pgo_init(void)
 				 &prf_reset_fops))
 		goto err_remove;
 
+	/* register module notifer */
+	register_module_notifier(&pgo_module_nb);
+
 	/* show notice why the system slower: */
 	pr_notice("Clang PGO instrumentation is active.");
 
@@ -473,6 +581,9 @@ static int __init pgo_init(void)
 /* Remove debugfs entries. */
 static void __exit pgo_exit(void)
 {
+	/* unsubscribe the notifier and do cleanup. */
+	unregister_module_notifier(&pgo_module_nb);
+
 	debugfs_remove_recursive(directory);
 }
 
diff --git a/kernel/pgo/instrument.c b/kernel/pgo/instrument.c
index e214c9d7a113..70bab7e4c153 100644
--- a/kernel/pgo/instrument.c
+++ b/kernel/pgo/instrument.c
@@ -33,7 +33,6 @@
  * ensures that we don't try to serialize data that's only partially updated.
  */
 static DEFINE_SPINLOCK(pgo_lock);
-static int current_node;
 
 unsigned long prf_lock(void)
 {
@@ -62,8 +61,6 @@ static struct llvm_prf_value_node *allocate_node(struct llvm_prf_data *p,
 	struct llvm_prf_data *data_end;
 	int max_vnds;
 
-	rcu_read_lock();
-
 	list_for_each_entry_rcu(po, &prf_list, link) {
 		/* get section limits */
 		max_vnds = prf_vnds_count(po);
@@ -76,7 +73,6 @@ static struct llvm_prf_value_node *allocate_node(struct llvm_prf_data *p,
 		 */
 		if (memory_contains(po->data, data_end, p, sizeof(*p))) {
 
-
 			if (WARN_ON_ONCE(po->current_node >= max_vnds))
 				return NULL; /* Out of nodes */
 
@@ -87,7 +83,6 @@ static struct llvm_prf_value_node *allocate_node(struct llvm_prf_data *p,
 	}
 
 out:
-	rcu_read_unlock();
 	return vnode;
 }
 
@@ -108,8 +103,14 @@ void __llvm_profile_instrument_target(u64 target_value, void *data, u32 index)
 	u8 values = 0;
 	unsigned long flags;
 
+	/*
+	 * lock the underlying prf_object(s) in place,
+	 * so they won't vanish while we are operating on it.
+	 */
+	rcu_read_lock();
+
 	if (!p || !p->values)
-		return;
+		goto rcu_unlock;
 
 	counters = (struct llvm_prf_value_node **)p->values;
 	curr = counters[index];
@@ -117,7 +118,7 @@ void __llvm_profile_instrument_target(u64 target_value, void *data, u32 index)
 	while (curr) {
 		if (target_value == curr->value) {
 			curr->count++;
-			return;
+			goto rcu_unlock;
 		}
 
 		if (curr->count < min_count) {
@@ -136,7 +137,7 @@ void __llvm_profile_instrument_target(u64 target_value, void *data, u32 index)
 			curr->value = target_value;
 			curr->count++;
 		}
-		return;
+		goto rcu_unlock;
 	}
 
 	/* Lock when updating the value node structure. */
@@ -156,6 +157,8 @@ void __llvm_profile_instrument_target(u64 target_value, void *data, u32 index)
 
 out:
 	prf_unlock(flags);
+rcu_unlock:
+	rcu_read_unlock();
 }
 EXPORT_SYMBOL(__llvm_profile_instrument_target);
 
-- 
2.32.0

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210612032425.11425-5-jarmo.tiitto%40gmail.com.
