Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB3PXTWDAMGQEBSPS7UA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3e.google.com (mail-yb1-xb3e.google.com [IPv6:2607:f8b0:4864:20::b3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 984453A6B07
	for <lists+clang-built-linux@lfdr.de>; Mon, 14 Jun 2021 17:55:26 +0200 (CEST)
Received: by mail-yb1-xb3e.google.com with SMTP id a80-20020a25ca530000b02905394c6727easf15330948ybg.13
        for <lists+clang-built-linux@lfdr.de>; Mon, 14 Jun 2021 08:55:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623686125; cv=pass;
        d=google.com; s=arc-20160816;
        b=bkk66XdDMoh5H98Oh4i9xoXA4T3qRSE9Rm8Hs8X6UDJvKQY2PcNpsK7xHSY0BlQqip
         3unRNok21akbcWJlGqaKlXvCoQenyyfjHYQGhhv5N1EsyQQs/Wc0slJICMxdzercaYB/
         h6gTe1bQoT6Q6w/sZpUafajNeXDDK9JjerBsMg9YEBD0YpehNwDwlWX9U4xx44qIwTWg
         taj+W6/2vPOSOpakAEJR5jTfocMvnUb5kmb62UdD4tWgfdGkq7W9dQkbmI2sQRM7w9bE
         gMSst8e2AtQk6dvYXW7dnqKcAxZjGXURBUzYHsPqFg1ytMFtwSxFD2s98tk7ibGAmZZY
         BQsg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=NHCjcbj7o8+zyFS6/8Xg4C1rNHlOM4CZGdXfXKYf1ks=;
        b=zEz64JZqMJCuDSjPJnOAzuLY923jvUSSFx5NoGNfCOlm+gdTfIRjV04cK4QpHWDi7h
         IfoDUnPtnDuT3etfKT2l7Gj/DzX38bMZKPRFLNYhii/SF3zSiDJBr2r4qKWMNhV6tNFR
         tSG+/NIYpd2WMdTMy/Vas3T+PRnJHE/kHy0+mpSJ4N/WaCagaZ2Nn4t5sTof9sm6xc/j
         3qfWczPDuifEGwkfrs7rEiVpPiIrPbZHp6MZ8qUqMRXZslEvzG9E45hey0YlRKHhf9/w
         7H/BBf99LOF8gNO+8EgTIPrlQSbmWEir2Xh+UbmCTyTgBm3mSeLvsoxaEnAoMnMbF7de
         p5bw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=F35PJXH1;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::435 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=NHCjcbj7o8+zyFS6/8Xg4C1rNHlOM4CZGdXfXKYf1ks=;
        b=ftK/+l23bsB6Gfn1jgmHjHPUDCw48TMUZypMT0f8NnASd0SGmwSoe5Eq+0xERARdYq
         kamIIqyJEf6KP77JhL1DM+JDXsYdRRrOsAn5tTn1cIkkrGMprtVAz4ePnlPCP2mKyQEK
         iLCwOXQ6IZ/ahXYrcyyLESKvSKyz8YMIGSqRQalt+jqfBCe63fJmzw9uAqVis/MUmexU
         reZgAv0B/HFKdLjMuOsXAXSPBejckfxTUYm6o26SI7dex12jQJj0a8uN5ImfQxjMTB8o
         lTVr+qDqlin0ITzZohqZVFT6MmerZmRPspBsihXyWvk+yPmB/9MVf9zHFbanSFAaibdT
         exUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=NHCjcbj7o8+zyFS6/8Xg4C1rNHlOM4CZGdXfXKYf1ks=;
        b=c3zYtYRxMe9Q2cohXSxqvpam+oCG9m9gGZs68A9QQr0BJ7kZcNLkm4C++sDG3x5SwA
         l773eckTgjlFMG3II1/gk3Pk0jAzHACVYSc7H9zaITIwQGY9FMeCcJaTZPQKflMWjMKt
         brtTrkei3KHCzMbzjig8HYUKAUBSErMzldkZFpUZEVh4fgyU5OMqvQLzrVxdS4a3CGZy
         Lrw60WF9tdVTJdqyS7pr8x8NpXioEBEvKsvTnRpWs7Jq6TCNt+GYy2enKwBK8SNG1Vvd
         JzW7EYTyoCXMV/2aMGVaZgoPyg3xh7mzXrYpmA3eUln1wle6//l3jqYnaMcsWvcLeEa2
         fw2A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5330KHlTJ7KQXDF7r0FZQuwZN+HSh2PNtTyFuK6nPZQzdfencizy
	yvc4WnP9bquI36bMBEWCw/I=
X-Google-Smtp-Source: ABdhPJz6dd0nHIxDwKzFgQzFMjvSGPSByG0w4RFXs2h2DtmUOFGf/yx+80WUJy/cQ5X1/lkMV/O7dA==
X-Received: by 2002:a25:2584:: with SMTP id l126mr16371464ybl.447.1623686125526;
        Mon, 14 Jun 2021 08:55:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:bece:: with SMTP id k14ls2783342ybm.7.gmail; Mon, 14 Jun
 2021 08:55:25 -0700 (PDT)
X-Received: by 2002:a25:6910:: with SMTP id e16mr22080681ybc.523.1623686125044;
        Mon, 14 Jun 2021 08:55:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623686125; cv=none;
        d=google.com; s=arc-20160816;
        b=nP1FLs/myHhEfCRj7ZBYfjM0HH1IwLmko/o3awscWMd0Z9E5cZ25f59wtDV605I/aS
         pQCJUflObQpBQL+LNV9RXwvA9lXa8pDKQewPnimGF0UGyga1ggSC6UiHpkUBTUztTgHu
         N78Z+NrzQZmVuXqB4LTAJ43h4NhivvJy5owplYzgdl/7JiO9w5hE03/fwsxEC8XVFlwJ
         P4OPMeprV+vyXJF/Bsvogwl9BEkelZXEFpr0Xl6egB79Lj2GNcB0m1BC+EHCTmZrEys7
         qQLgE5eJNqlFjunixLu8i2deGUttML40QhBqffnr6sHehj+b3Ts2RUa5hwlWft2xPKkR
         x+YA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Xc68Cs5ySmGOkpS+UW9/IL+gexfQMlCf5agz6R20UV0=;
        b=wD5Ni2jpXeYB1g0fklkzCVpp2aNW55NYO9ytmdRbMd79lr1HbNwso9xeHhHxoKiC6v
         lU8p84KZxUdREjJL49bx17iBIeYtzcV1AKiWLExHm47GY7TFYgpZ4rjqi/Wp3Z+ybgFs
         dvHORaNiqkIoy8l3We7a8d/DJBzC17rfubdMRXyq5tyymRwfqro0fjziCgA54GJWr/JH
         HO5Mvby5y/uyWGLLbmHHVNTOEPV8OY4JyD6L5hSjO98NpBpjt6MKPdWXA7zqMpCdKooe
         9qXNtsoMAO2arQM0dBvjbyH5foYPDqaPsq5INyZAl/XUl6umdnQv6auH70KAt6FFuLmk
         kDyw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=F35PJXH1;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::435 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pf1-x435.google.com (mail-pf1-x435.google.com. [2607:f8b0:4864:20::435])
        by gmr-mx.google.com with ESMTPS id x9si1750151ybn.0.2021.06.14.08.55.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Jun 2021 08:55:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::435 as permitted sender) client-ip=2607:f8b0:4864:20::435;
Received: by mail-pf1-x435.google.com with SMTP id s14so10842795pfd.9
        for <clang-built-linux@googlegroups.com>; Mon, 14 Jun 2021 08:55:25 -0700 (PDT)
X-Received: by 2002:a63:1360:: with SMTP id 32mr17842483pgt.233.1623686124674;
        Mon, 14 Jun 2021 08:55:24 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id e2sm13526973pgh.5.2021.06.14.08.55.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Jun 2021 08:55:24 -0700 (PDT)
Date: Mon, 14 Jun 2021 08:55:23 -0700
From: Kees Cook <keescook@chromium.org>
To: Jarmo Tiitto <jarmo.tiitto@gmail.com>
Cc: Sami Tolvanen <samitolvanen@google.com>, Bill Wendling <wcw@google.com>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org,
	morbo@google.com
Subject: Re: [RFC PATCH 3/5] pgo: Wire up the new more generic code for
 modules
Message-ID: <202106140851.2D4CAB8@keescook>
References: <20210612032425.11425-1-jarmo.tiitto@gmail.com>
 <20210612032425.11425-4-jarmo.tiitto@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210612032425.11425-4-jarmo.tiitto@gmail.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=F35PJXH1;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::435
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

On Sat, Jun 12, 2021 at 06:24:24AM +0300, Jarmo Tiitto wrote:
> prf_open() now uses the inode->i_private to get
> the prf_object for the file. This can be either
> vmlinux.profraw or any module.profraw file.
> 
> The prf_vmlinux object is now added into prf_list and
> allocate_node() scans the list and reserves vnodes
> from corresponding prf_object(s).
> 
> Signed-off-by: Jarmo Tiitto <jarmo.tiitto@gmail.com>
> ---
> note: There is no module notifier code yet,
> so only vmlinux.profraw profile data
> is available with this commit.
> 
> Another thing is that pgo/reset will only
> reset vmlinux.profraw.
> Profile data reset for modules may be added later:
> maybe writing module's name into pgo/reset would reset only
> the specified module's profile data?
> Then writing "all" or zero would atomically reset everything.

Yeah, I think matching the internal naming is right. "vmlinux",
module::name, and "all"?

> I'm bit unsure about the new allocate_node() code since
> it is the first place I had to put rcu_read_lock()
> and the code is likely to change from this.

Comments below...

> ---
>  kernel/pgo/fs.c         | 30 ++++++++++++++++++++-----
>  kernel/pgo/instrument.c | 49 +++++++++++++++++++++++++++--------------
>  kernel/pgo/pgo.h        |  2 ++
>  3 files changed, 60 insertions(+), 21 deletions(-)
> 
> diff --git a/kernel/pgo/fs.c b/kernel/pgo/fs.c
> index 7e269d69bcd7..84b36e61758b 100644
> --- a/kernel/pgo/fs.c
> +++ b/kernel/pgo/fs.c
> @@ -32,8 +32,10 @@ static struct dentry *directory;
>  struct prf_private_data {
>  	void *buffer;
>  	size_t size;
> +	struct prf_object *core;
>  };
>  
> +/* vmlinux's prf core */
>  static struct prf_object prf_vmlinux;
>  
>  /*
> @@ -281,7 +283,6 @@ static int prf_serialize(struct prf_object *po, struct prf_private_data *p, size
>  	prf_serialize_values(po, &buffer);
>  
>  	return 0;
> -
>  }
>  
>  /* open() implementation for PGO. Creates a copy of the profiling data set. */
> @@ -292,13 +293,21 @@ static int prf_open(struct inode *inode, struct file *file)
>  	size_t buf_size;
>  	int err = -EINVAL;
>  
> +	if (WARN_ON(!inode->i_private)) {
> +		/* bug: inode was not initialized by us */
> +		return err;
> +	}
> +
>  	data = kzalloc(sizeof(*data), GFP_KERNEL);
>  	if (!data)
>  		return -ENOMEM;
>  
> +	/* Get prf_object of this inode */
> +	data->core = inode->i_private;
> +
>  	/* Get initial buffer size. */
>  	flags = prf_lock();
> -	data->size = prf_buffer_size(&prf_vmlinux);
> +	data->size = prf_buffer_size(data->core);
>  	prf_unlock(flags);
>  
>  	do {
> @@ -318,12 +327,13 @@ static int prf_open(struct inode *inode, struct file *file)
>  		 * data length in data->size.
>  		 */
>  		flags = prf_lock();
> -		err = prf_serialize(&prf_vmlinux, data, buf_size);
> +		err = prf_serialize(data->core, data, buf_size);
>  		prf_unlock(flags);
>  		/* In unlikely case, try again. */
>  	} while (err == -EAGAIN);
>  
>  	if (err < 0) {
> +
>  		if (data)
>  			vfree(data->buffer);
>  		kfree(data);
> @@ -412,6 +422,8 @@ static const struct file_operations prf_reset_fops = {
>  /* Create debugfs entries. */
>  static int __init pgo_init(void)
>  {
> +	unsigned long flags;
> +
>  	/* Init profiler vmlinux core entry */
>  	memset(&prf_vmlinux, 0, sizeof(prf_vmlinux));
>  	prf_vmlinux.data = __llvm_prf_data_start;
> @@ -430,19 +442,27 @@ static int __init pgo_init(void)
>  	prf_vmlinux.vnds_num = prf_get_count(__llvm_prf_vnds_start,
>  		__llvm_prf_vnds_end, sizeof(__llvm_prf_vnds_start[0]));
>  
> +	/* enable profiling */
> +	flags = prf_list_lock();
> +	list_add_tail_rcu(&prf_vmlinux.link, &prf_list);
> +	prf_list_unlock(flags);
>  
>  	directory = debugfs_create_dir("pgo", NULL);
>  	if (!directory)
>  		goto err_remove;
>  
> -	if (!debugfs_create_file("vmlinux.profraw", 0600, directory, NULL,
> -				 &prf_fops))
> +	prf_vmlinux.file = debugfs_create_file("vmlinux.profraw",
> +		0600, directory, &prf_vmlinux, &prf_fops);
> +	if (!prf_vmlinux.file)
>  		goto err_remove;
>  
>  	if (!debugfs_create_file("reset", 0200, directory, NULL,
>  				 &prf_reset_fops))
>  		goto err_remove;
>  
> +	/* show notice why the system slower: */
> +	pr_notice("Clang PGO instrumentation is active.");
> +

Please pull this change into a separate patch and make it pr_info()
("notice" is, I think, not right here).

>  	return 0;
>  
>  err_remove:
> diff --git a/kernel/pgo/instrument.c b/kernel/pgo/instrument.c
> index 24fdeb79b674..e214c9d7a113 100644
> --- a/kernel/pgo/instrument.c
> +++ b/kernel/pgo/instrument.c
> @@ -24,6 +24,7 @@
>  #include <linux/export.h>
>  #include <linux/spinlock.h>
>  #include <linux/types.h>
> +#include <linux/rculist.h>
>  #include "pgo.h"
>  
>  /*
> @@ -56,22 +57,38 @@ void prf_unlock(unsigned long flags)
>  static struct llvm_prf_value_node *allocate_node(struct llvm_prf_data *p,
>  						 u32 index, u64 value)
>  {
> -	const int max_vnds = prf_get_count(__llvm_prf_vnds_start,
> -		__llvm_prf_vnds_end, sizeof(struct llvm_prf_value_node));
> -
> -	/*
> -	 * Check that p is within vmlinux __llvm_prf_data section.
> -	 * If not, don't allocate since we can't handle modules yet.
> -	 */
> -	if (!memory_contains(__llvm_prf_data_start,
> -		__llvm_prf_data_end, p, sizeof(*p)))
> -		return NULL;
> -
> -	if (WARN_ON_ONCE(current_node >= max_vnds))
> -		return NULL; /* Out of nodes */
> -
> -	/* reserve vnode for vmlinux */
> -	return &__llvm_prf_vnds_start[current_node++];
> +	struct llvm_prf_value_node *vnode = NULL;
> +	struct prf_object *po;
> +	struct llvm_prf_data *data_end;
> +	int max_vnds;
> +
> +	rcu_read_lock();

AIUI, list readers are using rcu_read_lock(), and writers are using
prf_list_lock()?

> +
> +	list_for_each_entry_rcu(po, &prf_list, link) {
> +		/* get section limits */
> +		max_vnds = prf_vnds_count(po);
> +		data_end = po->data + prf_data_count(po);
> +
> +		/*
> +		 * Check that p is within:
> +		 * [po->data, po->data + prf_data_count(po)] section.
> +		 * If yes, allocate vnode from this prf_object.
> +		 */
> +		if (memory_contains(po->data, data_end, p, sizeof(*p))) {
> +
> +
> +			if (WARN_ON_ONCE(po->current_node >= max_vnds))
> +				return NULL; /* Out of nodes */
> +
> +			/* reserve the vnode */
> +			vnode = &po->vnds[po->current_node++];
> +			goto out;
> +		}
> +	}
> +
> +out:
> +	rcu_read_unlock();
> +	return vnode;
>  }
>  
>  /*
> diff --git a/kernel/pgo/pgo.h b/kernel/pgo/pgo.h
> index 44d79e2861e1..59d0aa966fbe 100644
> --- a/kernel/pgo/pgo.h
> +++ b/kernel/pgo/pgo.h
> @@ -19,6 +19,8 @@
>  #ifndef _PGO_H
>  #define _PGO_H
>  
> +#include <linux/rculist.h>
> +
>  /*
>   * Note: These internal LLVM definitions must match the compiler version.
>   * See llvm/include/llvm/ProfileData/InstrProfData.inc in LLVM's source code.
> -- 
> 2.32.0
> 

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202106140851.2D4CAB8%40keescook.
