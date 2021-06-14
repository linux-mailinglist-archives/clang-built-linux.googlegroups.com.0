Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBKH2TWDAMGQETPYSKOI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73d.google.com (mail-qk1-x73d.google.com [IPv6:2607:f8b0:4864:20::73d])
	by mail.lfdr.de (Postfix) with ESMTPS id 447F23A6B26
	for <lists+clang-built-linux@lfdr.de>; Mon, 14 Jun 2021 18:00:41 +0200 (CEST)
Received: by mail-qk1-x73d.google.com with SMTP id 190-20020a3708c70000b02903aa60e6d8c1sf19347065qki.19
        for <lists+clang-built-linux@lfdr.de>; Mon, 14 Jun 2021 09:00:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623686440; cv=pass;
        d=google.com; s=arc-20160816;
        b=vYL4GmEMzRhdmAMc1KgAi4s0QpRaSHeeXsdOmQV36/rCeC9vkwqwqUaj6HSoLhJfF9
         +RZPv4cQyXRqdtpJWwAaEAGWHr69Y8zRaw5gDiM8ZtKg6+itFmt2ugd3SfWag0z95De+
         0+oQKycSSYeMoWLmj5lK5X/7Gwfy1cFQSTwlXnHA5GruYFIhy4WPvsiZzI4SQWVplTO6
         sPItDBWrrXItF63FQM9T0OaSK8en7vgdfUgIAukoHbbNFpiQ0PGmTDK5wvw7mCEapcNh
         uNNdZIS62x3mYq+OjAp/QDPc2dnTfXHQPV8B5c9vmNbsXNgwH5DIbXJ3RZkthc9/5t3n
         CTaQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=TtUwoRxS2tDvhB+COcpPOPTvPs9OXGlCd9HAF262IGo=;
        b=oNJdM8riaEamair2m/x7/mdDOfsrbcCFPSwj7kFjJH0khel65k3bNjxqFwHtzrpMny
         ddKa11Oi4wzdHTv/x1xNzR8KeAW98DWF/Pna3JIkmFwhQnhtLxeRgVn1CwgheFUdOv2U
         rG9JrbLBiwYTdHELZgBtIOStGOd/lO3WtKOjIJmYoWup42FYHd3yyBt0BB3ADG6lW1Ko
         S/0pEOYglhpQFelRFzU154kPrrJHD1OtT6c2CAmp1Y0utMSzCpC0v5mSWzxVzO/X70B2
         7Xy+jmQjm1nDIUOAeKZAo0Yfu1qCgZMBA6IRaZCJ2DNAqwxoLyQIhNNIPXflngHcKmmI
         iqHA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="VmvGSd/M";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::533 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=TtUwoRxS2tDvhB+COcpPOPTvPs9OXGlCd9HAF262IGo=;
        b=nkZm0p22uP6pT2WcI9XX7+4yMroRMveJ43vacnE1Xt3JQPZPjUXaUR2KltiDSJa4A7
         sIQ8kttogXaJG1vlayD/eMnDMk3gnxhWsGb5fxrrymemnhj4I6FhxB5z+QAGHnESez8t
         lwtdn8rItI7WwzmDhG6qAZChXp0C2DI+xSkvKwbCx5HQ5/ekQQrs41APnOV4qwbYUkkH
         5UdHds6DznX70fgxKQaEPRjlou4OojHRbfixvVNVIp+/v5lAWCsXweOCKtPKMmi5mp95
         W5XOjuYNnzAlW6A5ttoKFkr0p8DI6pSjCNLos8SIP/oEd9QGMj+f6PnEG9QaMopoSX5N
         PNAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=TtUwoRxS2tDvhB+COcpPOPTvPs9OXGlCd9HAF262IGo=;
        b=lqjaSUd0ulqSZDIHWNGh1UyHVgf4KX5PM/4c3LMspfcn0oa/XxkcVxYdMt3Fhnw0Nf
         wYVU50BlF4nhzNne4/BX5NqYjjztcsfY2k//H5hE93Ljv6D3Nh00feuY0hr0i0EuCoV8
         cTNaqsv3X+8xD3mcrBtsb1JeYElDNKEHFMbMvks3HF+QU2wrcgLNgz3CSwLnonSVe9aY
         WTAsYhE/oBXRdhquEv8kQB3iOLLzmQd4MD6amZBg2KWo3dpNVzGZx4jT2q16yYLvKXbW
         wdWg4SyuATyrcQqLpzYUL7uY1kuFyJ+HcMHxTgVhDzrsc6DsH46hvT/qZOAQYojdMZQt
         KtbA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531Arel82vW1TIZq1jReDYPzfMEpS3mcIKqTXKgmB4Do68VG/rk4
	gZeRzrZHcDhOAeo5nUECQeI=
X-Google-Smtp-Source: ABdhPJwTAdGmpAbgu0zBiPx0H8DgJYIrHXrGZ1b+M0pgbUwTNSuqGbVzKp31zx7YmR36OeVDNpMljg==
X-Received: by 2002:a37:e13:: with SMTP id 19mr16665540qko.252.1623686440181;
        Mon, 14 Jun 2021 09:00:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:46cf:: with SMTP id t198ls2584930qka.0.gmail; Mon, 14
 Jun 2021 09:00:39 -0700 (PDT)
X-Received: by 2002:a05:620a:15c8:: with SMTP id o8mr16560300qkm.416.1623686439684;
        Mon, 14 Jun 2021 09:00:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623686439; cv=none;
        d=google.com; s=arc-20160816;
        b=EiY60rfdSMslFvXfzwXZX67Ngnu/4Y1mbIjR5Nu7WWmy12nwy+xIe96X9PA5B3YZB9
         OsLOX8mWcNIwx4rbbw2NczQ3QKp25efcZuSOMkKinaP760G93iKLjJPeFt2BDMA3WjWy
         FuwhCwlHRMzGUYfgy48Iul6UqvzouuepDXcnyyjK70Wt0Wp6QPJh8eLwfT0CFZZvaN8T
         k50ADyU/pIZbVgYAfmXRAUF0Oz/7tPbuGKja4BVM8Sqo/iEosDvd0HWPJOXmZdckitnK
         3TLhBM9vrmzqVChfNP8Be71L+SYN8kYyMIlai43nJDPAhE4l1LZImY9LTgkVKr0K0gAi
         hK9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=A/YrRFRLaVHO1+sPzFsBtD9ot5MF3cKN262LxR6KfXw=;
        b=pbtLtKu8tcMHdWGKhP70auIrpjSeDhj7UHgwQhAfkYZQS1cseX4Uv7SB3Svxt0aDpQ
         LZrhOyyhWb2Dcnq2T6GqFtev1Xfn/BtMHWqGg/K7rSNJxa3K2uoveVLBIWL4wIX8TWEs
         eAYMYRDCQNU+nVwFBMoWYVUCPim56b3eqiIV2jOYX9GxL3c8Tn+2+Yc3dUq/xgfooNeD
         y7Qg9J+2BZun3Py/3NChIwT8mUpmPRZ72SF/t3pQiKYrc2JHL0v2LvAMhOHJ2sy/7HAY
         h266MBwGPAWzM59TZ1h7vneofH+fBacRKt2kHTFQlDr1cakjz9QbV8qYDeqKAURjHZuc
         P25A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="VmvGSd/M";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::533 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x533.google.com (mail-pg1-x533.google.com. [2607:f8b0:4864:20::533])
        by gmr-mx.google.com with ESMTPS id o13si1391474qke.6.2021.06.14.09.00.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Jun 2021 09:00:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::533 as permitted sender) client-ip=2607:f8b0:4864:20::533;
Received: by mail-pg1-x533.google.com with SMTP id e22so8983323pgv.10
        for <clang-built-linux@googlegroups.com>; Mon, 14 Jun 2021 09:00:39 -0700 (PDT)
X-Received: by 2002:a05:6a00:88b:b029:2de:33b3:76c9 with SMTP id q11-20020a056a00088bb02902de33b376c9mr22662665pfj.30.1623686438816;
        Mon, 14 Jun 2021 09:00:38 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id h12sm13414232pfq.72.2021.06.14.09.00.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Jun 2021 09:00:35 -0700 (PDT)
Date: Mon, 14 Jun 2021 09:00:34 -0700
From: Kees Cook <keescook@chromium.org>
To: Jarmo Tiitto <jarmo.tiitto@gmail.com>
Cc: Sami Tolvanen <samitolvanen@google.com>, Bill Wendling <wcw@google.com>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org,
	morbo@google.com
Subject: Re: [RFC PATCH 4/5] pgo: Add module notifier machinery
Message-ID: <202106140855.2094DF30BB@keescook>
References: <20210612032425.11425-1-jarmo.tiitto@gmail.com>
 <20210612032425.11425-5-jarmo.tiitto@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210612032425.11425-5-jarmo.tiitto@gmail.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b="VmvGSd/M";       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::533
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Sat, Jun 12, 2021 at 06:24:25AM +0300, Jarmo Tiitto wrote:
> Add module notifier callback and register modules
> into prf_list.
> 
> For each module that has __llvm_prf_{data,cnts,names,vnds} sections
> The callback creates debugfs <module>.profraw entry and
> links new prf_object into prf_list.
> 
> This enables profiling for all loaded modules.
> 
> * Moved rcu_read_lock() outside of allocate_node() in order
>   to protect __llvm_profile_instrument_target() from module unload(s)
> 
> Signed-off-by: Jarmo Tiitto <jarmo.tiitto@gmail.com>
> ---
> v2: Passed QEMU SMP boot test into minimal Arch Linux distro,
> module loading and unloading work without warnings.
> Module profile data looks ok. :-)
> ---
>  kernel/pgo/fs.c         | 111 ++++++++++++++++++++++++++++++++++++++++
>  kernel/pgo/instrument.c |  19 ++++---
>  2 files changed, 122 insertions(+), 8 deletions(-)
> 
> diff --git a/kernel/pgo/fs.c b/kernel/pgo/fs.c
> index 84b36e61758b..98b982245b58 100644
> --- a/kernel/pgo/fs.c
> +++ b/kernel/pgo/fs.c
> @@ -419,6 +419,110 @@ static const struct file_operations prf_reset_fops = {
>  	.llseek		= noop_llseek,
>  };
>  
> +static void pgo_module_init(struct module *mod)
> +{
> +	struct prf_object *po;
> +	char fname[MODULE_NAME_LEN + 9]; /* +strlen(".profraw") */
> +	unsigned long flags;
> +
> +	/* add new prf_object entry for the module */
> +	po = kzalloc(sizeof(*po), GFP_KERNEL);
> +	if (!po)
> +		goto out;
> +
> +	po->mod_name = mod->name;
> +
> +	fname[0] = 0;
> +	snprintf(fname, sizeof(fname), "%s.profraw", po->mod_name);
> +
> +	/* setup prf_object sections */
> +	po->data = mod->prf_data;
> +	po->data_num = prf_get_count(mod->prf_data,
> +		(char *)mod->prf_data + mod->prf_data_size, sizeof(po->data[0]));
> +
> +	po->cnts = mod->prf_cnts;
> +	po->cnts_num = prf_get_count(mod->prf_cnts,
> +		(char *)mod->prf_cnts + mod->prf_cnts_size, sizeof(po->cnts[0]));
> +
> +	po->names = mod->prf_names;
> +	po->names_num = prf_get_count(mod->prf_names,
> +		(char *)mod->prf_names + mod->prf_names_size, sizeof(po->names[0]));
> +
> +	po->vnds = mod->prf_vnds;
> +	po->vnds_num = prf_get_count(mod->prf_vnds,
> +		(char *)mod->prf_vnds + mod->prf_vnds_size, sizeof(po->vnds[0]));
> +
> +	/* create debugfs entry */
> +	po->file = debugfs_create_file(fname, 0600, directory, po, &prf_fops);
> +	if (!po->file) {
> +		pr_err("Failed to setup module pgo: %s", fname);
> +		kfree(po);
> +		goto out;
> +	}
> +
> +	/* finally enable profiling for the module */
> +	flags = prf_list_lock();
> +	list_add_tail_rcu(&po->link, &prf_list);
> +	prf_list_unlock(flags);
> +
> +out:
> +	return;
> +}
> +
> +static int pgo_module_notifier(struct notifier_block *nb, unsigned long event,
> +				void *pdata)
> +{
> +	struct module *mod = pdata;
> +	struct prf_object *po;
> +	unsigned long flags;
> +
> +	if (event == MODULE_STATE_LIVE) {
> +		/* does the module have profiling info? */
> +		if (mod->prf_data
> +			&& mod->prf_cnts
> +			&& mod->prf_names
> +			&& mod->prf_vnds) {
> +
> +			/* setup module profiling */
> +			pgo_module_init(mod);
> +		}
> +	}
> +
> +	if (event == MODULE_STATE_GOING) {
> +		/* find the prf_object from the list */
> +		rcu_read_lock();
> +
> +		list_for_each_entry_rcu(po, &prf_list, link) {
> +			if (strcmp(po->mod_name, mod->name) == 0)
> +				goto out_unlock;
> +		}
> +		/* no such module */
> +		po = NULL;
> +
> +out_unlock:
> +		rcu_read_unlock();

Is it correct to do the unlock before the possible list_del_rcu()?

> +
> +		if (po) {
> +			/* remove from profiled modules */
> +			flags = prf_list_lock();
> +			list_del_rcu(&po->link);
> +			prf_list_unlock(flags);
> +
> +			debugfs_remove(po->file);
> +			po->file = NULL;
> +
> +			/* cleanup memory */
> +			kfree_rcu(po, rcu);
> +		}

Though I thought module load/unload was already under a global lock, so
maybe a race isn't possible here.

For the next version of this series, please Cc the module subsystem
maintainer as well:
	Jessica Yu <jeyu@kernel.org>

> +	}
> +
> +	return NOTIFY_OK;
> +}
> +
> +static struct notifier_block pgo_module_nb = {
> +	.notifier_call = pgo_module_notifier
> +};
> +
>  /* Create debugfs entries. */
>  static int __init pgo_init(void)
>  {
> @@ -444,6 +548,7 @@ static int __init pgo_init(void)
>  
>  	/* enable profiling */
>  	flags = prf_list_lock();
> +	prf_vmlinux.mod_name = "vmlinux";
>  	list_add_tail_rcu(&prf_vmlinux.link, &prf_list);
>  	prf_list_unlock(flags);
>  
> @@ -460,6 +565,9 @@ static int __init pgo_init(void)
>  				 &prf_reset_fops))
>  		goto err_remove;
>  
> +	/* register module notifer */
> +	register_module_notifier(&pgo_module_nb);
> +
>  	/* show notice why the system slower: */
>  	pr_notice("Clang PGO instrumentation is active.");
>  
> @@ -473,6 +581,9 @@ static int __init pgo_init(void)
>  /* Remove debugfs entries. */
>  static void __exit pgo_exit(void)
>  {
> +	/* unsubscribe the notifier and do cleanup. */
> +	unregister_module_notifier(&pgo_module_nb);
> +
>  	debugfs_remove_recursive(directory);
>  }
>  
> diff --git a/kernel/pgo/instrument.c b/kernel/pgo/instrument.c
> index e214c9d7a113..70bab7e4c153 100644
> --- a/kernel/pgo/instrument.c
> +++ b/kernel/pgo/instrument.c
> @@ -33,7 +33,6 @@
>   * ensures that we don't try to serialize data that's only partially updated.
>   */
>  static DEFINE_SPINLOCK(pgo_lock);
> -static int current_node;
>  
>  unsigned long prf_lock(void)
>  {
> @@ -62,8 +61,6 @@ static struct llvm_prf_value_node *allocate_node(struct llvm_prf_data *p,
>  	struct llvm_prf_data *data_end;
>  	int max_vnds;
>  
> -	rcu_read_lock();
> -

Please move these rcu locks change into the patch that introduces them
to avoid adding those changes here.

>  	list_for_each_entry_rcu(po, &prf_list, link) {
>  		/* get section limits */
>  		max_vnds = prf_vnds_count(po);
> @@ -76,7 +73,6 @@ static struct llvm_prf_value_node *allocate_node(struct llvm_prf_data *p,
>  		 */
>  		if (memory_contains(po->data, data_end, p, sizeof(*p))) {
>  
> -
>  			if (WARN_ON_ONCE(po->current_node >= max_vnds))
>  				return NULL; /* Out of nodes */
>  
> @@ -87,7 +83,6 @@ static struct llvm_prf_value_node *allocate_node(struct llvm_prf_data *p,
>  	}
>  
>  out:
> -	rcu_read_unlock();
>  	return vnode;
>  }
>  
> @@ -108,8 +103,14 @@ void __llvm_profile_instrument_target(u64 target_value, void *data, u32 index)
>  	u8 values = 0;
>  	unsigned long flags;
>  
> +	/*
> +	 * lock the underlying prf_object(s) in place,
> +	 * so they won't vanish while we are operating on it.
> +	 */
> +	rcu_read_lock();
> +
>  	if (!p || !p->values)
> -		return;
> +		goto rcu_unlock;
>  
>  	counters = (struct llvm_prf_value_node **)p->values;
>  	curr = counters[index];
> @@ -117,7 +118,7 @@ void __llvm_profile_instrument_target(u64 target_value, void *data, u32 index)
>  	while (curr) {
>  		if (target_value == curr->value) {
>  			curr->count++;
> -			return;
> +			goto rcu_unlock;
>  		}
>  
>  		if (curr->count < min_count) {
> @@ -136,7 +137,7 @@ void __llvm_profile_instrument_target(u64 target_value, void *data, u32 index)
>  			curr->value = target_value;
>  			curr->count++;
>  		}
> -		return;
> +		goto rcu_unlock;
>  	}
>  
>  	/* Lock when updating the value node structure. */
> @@ -156,6 +157,8 @@ void __llvm_profile_instrument_target(u64 target_value, void *data, u32 index)
>  
>  out:
>  	prf_unlock(flags);
> +rcu_unlock:
> +	rcu_read_unlock();
>  }
>  EXPORT_SYMBOL(__llvm_profile_instrument_target);
>  
> -- 
> 2.32.0
> 

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202106140855.2094DF30BB%40keescook.
