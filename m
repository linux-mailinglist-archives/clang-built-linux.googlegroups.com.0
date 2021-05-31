Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBV7I2SCQMGQEAGNXJYY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3c.google.com (mail-yb1-xb3c.google.com [IPv6:2607:f8b0:4864:20::b3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E3E9396842
	for <lists+clang-built-linux@lfdr.de>; Mon, 31 May 2021 21:09:13 +0200 (CEST)
Received: by mail-yb1-xb3c.google.com with SMTP id m194-20020a2526cb0000b02905375d41acd7sf4644255ybm.22
        for <lists+clang-built-linux@lfdr.de>; Mon, 31 May 2021 12:09:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622488152; cv=pass;
        d=google.com; s=arc-20160816;
        b=Utaf4+G1CG7Ijpaz+pZY/eyDA+y+HNpDdKzXQ9IamjHFr1YlBarzecUBZ3e/FWa9mf
         UGgdbxfkp3wZI+yo6yJF5V1wNAHMOH1yIOGo07VGxEy20PoWr2XSwQgJJyj2HR9rkOEj
         QDQzzeW0OY+AKqiu7cXb+GV0mw6ViA/Yjbx7UFSj0lRnCmLqtuQDMARWI6+KDe2ViOYs
         G4w7E9AV/2PGauyUB+iHzkOPc+ZZhBTHVNr+Xi0B3FMSO/87/NTOZ3T5YFsawy5LdjPW
         HbbeclWnOPgvrAzUaP6novbk+aYUyVpSMVu1lEeS2G7zx9HUhTJlcEIf7HIMOKE5Pc/0
         IYAA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=aqVBbQRAQyEYhviFALuebrJGUsBkgblkSqtG8qSsXDI=;
        b=jooX3ZxH2gmhqTrtU6uRWhVBcGEohDFkGEZmXpUH3S44rHVZdFM5nrsDc8K6OoznJc
         lbKyCL28+yFHm+rJr8Q6i8tH4Ql2voCz3UsZjJ11hOLtlXATrvn2HGeuQfS9xtXecVfS
         HLm4vAfcN87vx8KIUsChFvn9OIE4NpP8rlLz26gxKDIjilwJcGfYwOJzIAzpkSjaUfkK
         h+J3dNTmFHi3tjaHZsrIgTuPKYe+I82CK/f9lPkFSJCkq5Kl8hMoKWLek3uJ1Vm53e54
         FVhDTEIvJeaGTSyltnwcQGiw0QM6ytlDk3F4FsJzUd4P6nXULhlOPix5qK5ybRuinV5t
         6jjg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=W2cemUF4;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=aqVBbQRAQyEYhviFALuebrJGUsBkgblkSqtG8qSsXDI=;
        b=cqUs2kM/mwz9x25HiSfHHZmo7Xi3I09/CGCqkc8uAQuVY2pIObpWq+yCG9XUyCGHzp
         WyLho97d/lDWL49ppsMbEzVD6X6to8bu+OxWq/gLMtDMmrjc4j4ItpDiu9MkXAcPHe/y
         eCatvCKSaWk8Yy2uNT+gTcBuq3u86Uuf7UoKNFl1CQETsB9Mrtv9MZuq11PoqsCjhTGT
         IGNlyC/azsxmtXggBKrhzc/Srcz16R2wtRDezCQljMN2HxAoEEZ9KI0f+yWOS6bhdXHq
         bGYtnzhjI0Nl6LjNTv9C8GMuJw/gQdpURIJyjpvORcXBZfgvhxwhMavAl9SIGYpfBvmu
         u5Qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=aqVBbQRAQyEYhviFALuebrJGUsBkgblkSqtG8qSsXDI=;
        b=e2laGMFSGom1Pl44C1fRGH9FDS2qFZQZ/mfSWAgquWrqEPcQAHmwt+SPSTcfGk9LNX
         CkQ6iEbmh3RXodf0SObon5I7hsV+7pJQZleDifJ/fshiKmncsGCPJzh8f89stYv/E5Y8
         QYbpbVWyb/B8TszxTSARLG9hUnIyX5J9Gp0fFndsLOeYLe8ZruP5HHs+I+AjfLacBg/j
         Hey+VpHV94H3ty1Io+ZMTM3a65us4zgUlwLwce+VKc9V5jfnJXZVTfaueyzIlEBExmLO
         AXO67e8DEmrLx2iGhI/4AUXi++VPR43ib+G9mDawo2R66np5ZE3g8tUayFfm71XTPAgE
         ctVQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533QKbGPo8IPkqWa+M9NqULlqRNPZDkGRcvfIFIwOiHlM2cq1+dj
	RpT3eESEYULhd2D9DmPyE5M=
X-Google-Smtp-Source: ABdhPJz1R+vWge94Fzd/dVutfZrAMEjnvPnKwg7mFERxd/e1z51jLq7hQB9cJnMoaVBAvqxaFLtimg==
X-Received: by 2002:a25:a265:: with SMTP id b92mr31908227ybi.486.1622488152003;
        Mon, 31 May 2021 12:09:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:702:: with SMTP id 2ls7339415ybh.3.gmail; Mon, 31 May
 2021 12:09:11 -0700 (PDT)
X-Received: by 2002:a25:d447:: with SMTP id m68mr4092286ybf.252.1622488151473;
        Mon, 31 May 2021 12:09:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622488151; cv=none;
        d=google.com; s=arc-20160816;
        b=Koz7+j+Sj3irpzJ2Kzhh8C8iGOMSS8EoFMi51CNv/T5Y9QnZDeFU4gEuGMRHFQ/BOi
         eey1/W4GwLIXgLBry9IMOhODfqQFanDc3rY0QnKAINuAftvEqmyTF5PtT66JtESar6wN
         UDwgGcz7FQmqOqb+kVJLWBxaa/8nBw60eLR+hu6l0YaYsIvfYoV5+8tVQIKGqU7FAZi6
         rZehzvPLbYTwwDPJNZu23MUbhrrMcGx444abeXrK1sPIJSYH2XJjhgaoW5YSiQYz8bTe
         Dn051U8yNlkT7KsIodiO1PfyXsfqC2ScK/ub/dQQXbQldwHlrL5fCjIO+FPjDBl76TQ/
         JjHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=1sxuAc3mY7eHKTB8bX8iGiGTSzGYfMKw2NskBs07C6E=;
        b=iVppELhvIABNwRI+Y4mahHeQU2OqNDhjnLYFxnycRAwoJ3pb5JATF8zepf3g9R2CgG
         GUeHH043YBM4iEuP9UzFZpt92yEbtAyNaj3I1dIE1YEe3uR8ROK8yfDkkKVMAsht5oKg
         JS4cVid3CMSnpW5/gShvy7AVeF8osKVB7FZ5gYtYO0OrCPMu66fiXND6ZnMv/WeioJ0G
         ckYspStgXfJsXXSHM/g7QmLHi9fOdVSIARwvwyM/fQn1ce9o+QTnPT4Dp5uKv1TslOfM
         WvKmyiMzHDxbEx6uE2t7QHbZg55lE9+AfTQSSTFsOUn1ENcM+6FR7V3mr1pyp6+3Gc+L
         vayQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=W2cemUF4;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id g10si459113ybc.2.2021.05.31.12.09.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 31 May 2021 12:09:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id BFA2A61159;
	Mon, 31 May 2021 19:09:09 +0000 (UTC)
Date: Mon, 31 May 2021 12:09:08 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Jarmo Tiitto <jarmo.tiitto@gmail.com>
Cc: samitolvanen@google.com, wcw@google.com, ndesaulniers@google.com,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH 3/6] pgo: modules Add module profile data export
 machinery.
Message-ID: <YLU0VAoWG7qa7u24@Ryzen-9-3900X.localdomain>
References: <20210528200821.459214-1-jarmo.tiitto@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210528200821.459214-1-jarmo.tiitto@gmail.com>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=W2cemUF4;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Fri, May 28, 2021 at 11:08:21PM +0300, Jarmo Tiitto wrote:
> PGO profile data is exported from the kernel by
> creating debugfs files: pgo/<module>.profraw for each module.

Again, I do not really have many comments on the actual code as I am not
super familiar with it.

However, fs_mod.c duplicates a lot of the functions in fs.c, which makes
maintaining this code even more difficult, especially against LLVM PGO
profile data format changes. I just want to make sure I understand this:
does PGO currently not work with modules? Or does this patch series just
make it so that each module has its own .profraw file so individual
modules can be optimized?

If it is the latter, what is the point? Why would you want to optimize
just a module and not the entire kernel, if you already have to go
through the profiling steps?

If it is the former, there has to be a better way to share more of the
machinery between fs.c and fs_mod.c than basically duplicating
everything because there are some parameters and logic that have to
change. I do not have a ton of time to outline exactly what that might
look like but for example, prf_fill_header and prf_module_fill_header
are basically the same thing aside from the mod parameter and the
prf_..._count() calls. It seems like if mod was NULL, you would call the
vmlinux versions of the functions.

> Modules are register into the profiler via module notifier callback
> similiar to gcov/base.c. Note that if module does not have __llvm_prf_xxx
> sections required the module ignored.
> 
> Also there is no "reset" support for yet for these files.
> 
> Signed-off-by: Jarmo Tiitto <jarmo.tiitto@gmail.com>
> ---
>  kernel/pgo/Makefile     |   2 +-
>  kernel/pgo/fs.c         |  54 ++++--
>  kernel/pgo/fs_mod.c     | 415 ++++++++++++++++++++++++++++++++++++++++
>  kernel/pgo/instrument.c |  12 +-
>  kernel/pgo/pgo.h        |  11 +-
>  5 files changed, 466 insertions(+), 28 deletions(-)
>  create mode 100644 kernel/pgo/fs_mod.c
> 
> diff --git a/kernel/pgo/Makefile b/kernel/pgo/Makefile
> index 41e27cefd9a4..662b7dfdfbe9 100644
> --- a/kernel/pgo/Makefile
> +++ b/kernel/pgo/Makefile
> @@ -2,4 +2,4 @@
>  GCOV_PROFILE	:= n
>  PGO_PROFILE	:= n
>  
> -obj-y	+= fs.o instrument.o
> +obj-y	+= fs.o fs_mod.o instrument.o
> diff --git a/kernel/pgo/fs.c b/kernel/pgo/fs.c
> index 575142735273..5471d270a5bb 100644
> --- a/kernel/pgo/fs.c
> +++ b/kernel/pgo/fs.c
> @@ -227,15 +227,15 @@ static unsigned long prf_buffer_size(void)
>   * Serialize the profiling data into a format LLVM's tools can understand.
>   * Note: caller *must* hold pgo_lock.
>   */
> -static int prf_serialize(struct prf_private_data *p)
> +static int prf_serialize(struct prf_private_data *p, unsigned long *buf_size)
>  {
>  	int err = 0;
>  	void *buffer;
>  
> -	p->size = prf_buffer_size();
> -	p->buffer = vzalloc(p->size);
> +	/* re-check buffer size */
> +	*buf_size = prf_buffer_size();
>  
> -	if (!p->buffer) {
> +	if (p->size < *buf_size || !p->buffer) {
>  		err = -ENOMEM;
>  		goto out;
>  	}
> @@ -262,7 +262,8 @@ static int prf_open(struct inode *inode, struct file *file)
>  {
>  	struct prf_private_data *data;
>  	unsigned long flags;
> -	int err;
> +	unsigned long buf_size;
> +	int err = 0;
>  
>  	data = kzalloc(sizeof(*data), GFP_KERNEL);
>  	if (!data) {
> @@ -270,18 +271,41 @@ static int prf_open(struct inode *inode, struct file *file)
>  		goto out;
>  	}
>  
> +	/* estimate amount of memory needed:
> +	 * can't vzalloc() while prf_lock() is held:
> +	 * CONFIG_DEBUG_ATOMIC_SLEEP complains.
> +	 * So first get buffer size, release the lock,
> +	 * vzalloc(), re-lock and try serialize.
> +	 */
>  	flags = prf_lock();
> +	buf_size = prf_buffer_size();
>  
> -	err = prf_serialize(data);
> -	if (unlikely(err)) {
> -		kfree(data);
> -		goto out_unlock;
> -	}
> +	do {
> +		prf_unlock(flags);
>  
> -	file->private_data = data;
> +		/* resize buffer */
> +		if (data->size < buf_size && data->buffer) {
> +			vfree(data->buffer);
> +			data->buffer = NULL;
> +		}
> +
> +		if (!data->buffer) {
> +			data->size = buf_size;
> +			data->buffer = vzalloc(data->size);
>  
> -out_unlock:
> +			if (!data->buffer) {
> +				err = -ENOMEM;
> +				goto out;
> +			}
> +		}
> +		/* try serialize */
> +		flags = prf_lock();
> +	} while (prf_serialize(data, &buf_size));
>  	prf_unlock(flags);
> +
> +	data->size = buf_size;
> +	file->private_data = data;
> +
>  out:
>  	return err;
>  }
> @@ -363,6 +387,8 @@ static const struct file_operations prf_reset_fops = {
>  /* Create debugfs entries. */
>  static int __init pgo_init(void)
>  {
> +	pr_notice("Clang PGO profile data available.");
> +
>  	directory = debugfs_create_dir("pgo", NULL);
>  	if (!directory)
>  		goto err_remove;
> @@ -375,6 +401,8 @@ static int __init pgo_init(void)
>  				 &prf_reset_fops))
>  		goto err_remove;
>  
> +	prf_modules_init();
> +
>  	return 0;
>  
>  err_remove:
> @@ -385,6 +413,8 @@ static int __init pgo_init(void)
>  /* Remove debugfs entries. */
>  static void __exit pgo_exit(void)
>  {
> +	prf_modules_exit();
> +
>  	debugfs_remove_recursive(directory);
>  }
>  
> diff --git a/kernel/pgo/fs_mod.c b/kernel/pgo/fs_mod.c
> new file mode 100644
> index 000000000000..0808d44227f1
> --- /dev/null
> +++ b/kernel/pgo/fs_mod.c
> @@ -0,0 +1,415 @@
> +// SPDX-License-Identifier: GPL-2.0
> +/*
> + * Copyright (C) 2021 Jarmo Tiitto
> + *
> + * Author:
> + *	Jarmo Tiitto <jarmo.tiitto@gmail.com>
> + *
> + * Based on the clang PGO kernel patch by:
> + *  Sami Tolvanen <samitolvanen@google.com>
> + *
> + * This software is licensed under the terms of the GNU General Public
> + * License version 2, as published by the Free Software Foundation, and
> + * may be copied, distributed, and modified under those terms.
> + *
> + * This program is distributed in the hope that it will be useful,
> + * but WITHOUT ANY WARRANTY; without even the implied warranty of
> + * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
> + * GNU General Public License for more details.
> + *
> + */
> +
> +#define pr_fmt(fmt)	"pgo: " fmt
> +
> +#include <linux/kernel.h>
> +#include <linux/debugfs.h>
> +#include <linux/fs.h>
> +#include <linux/module.h>
> +#include <linux/slab.h>
> +#include <linux/vmalloc.h>
> +#include "pgo.h"
> +
> +/*
> + * PGO profile data reporting for modules:
> + * We maintain one debugfs pgo/<module>.profraw file per module.
> + */
> +
> +
> +DEFINE_MUTEX(prf_mod_lock);
> +LIST_HEAD(prf_mod_list);
> +
> +struct prf_mod_data {
> +	void *buffer;
> +	unsigned long size;
> +};
> +
> +/* these are trivial, but each one differs a bit */
> +static inline unsigned long prf_mod_data_size(struct module *mod)
> +{
> +	return mod->prf_data_size;
> +}
> +
> +static inline unsigned long prf_mod_data_count(struct module *mod)
> +{
> +	return mod->prf_data_size / sizeof(struct llvm_prf_data);
> +}
> +
> +static inline unsigned long prf_mod_cnts_size(struct module *mod)
> +{
> +	return mod->prf_cnts_num * sizeof(mod->prf_cnts[0]);
> +}
> +
> +static inline unsigned long prf_mod_cnts_count(struct module *mod)
> +{
> +	return mod->prf_cnts_num;
> +}
> +
> +static inline unsigned long prf_mod_names_size(struct module *mod)
> +{
> +	return mod->prf_names_num * sizeof(mod->prf_names[0]);
> +}
> +
> +static inline unsigned long prf_mod_names_count(struct module *mod)
> +{
> +	return mod->prf_names_num;
> +}
> +
> +static inline unsigned long prf_mod_vnds_size(struct module *mod)
> +{
> +	return mod->prf_vnds_size;
> +}
> +
> +static inline unsigned long prf_mod_vnds_count(struct module *mod)
> +{
> +	return mod->prf_vnds_size / sizeof(struct llvm_prf_value_node);
> +}
> +
> +/*
> + * Raw profile data format:
> + *
> + *	- llvm_prf_header
> + *	- __llvm_prf_data
> + *	- __llvm_prf_cnts
> + *	- __llvm_prf_names
> + *	- zero padding to 8 bytes
> + *	- for each llvm_prf_data in __llvm_prf_data:
> + *		- llvm_prf_value_data
> + *			- llvm_prf_value_record + site count array
> + *				- llvm_prf_value_node_data
> + *				...
> + *			...
> + *		...
> + */
> +
> +static void prf_module_fill_header(struct module *mod, void **buffer)
> +{
> +	struct llvm_prf_header *header = *(struct llvm_prf_header **)buffer;
> +
> +#ifdef CONFIG_64BIT
> +	header->magic = LLVM_INSTR_PROF_RAW_MAGIC_64;
> +#else
> +	header->magic = LLVM_INSTR_PROF_RAW_MAGIC_32;
> +#endif
> +	header->version = LLVM_VARIANT_MASK_IR_PROF | LLVM_INSTR_PROF_RAW_VERSION;
> +	header->data_size = prf_mod_data_count(mod);
> +	header->padding_bytes_before_counters = 0;
> +	header->counters_size = prf_mod_cnts_count(mod);
> +	header->padding_bytes_after_counters = 0;
> +	header->names_size = prf_mod_names_count(mod);
> +	header->counters_delta = (u64)mod->prf_cnts;
> +	header->names_delta = (u64)mod->prf_names;
> +	header->value_kind_last = LLVM_INSTR_PROF_IPVK_LAST;
> +
> +	*buffer += sizeof(*header);
> +}
> +
> +/*
> + * Copy the source into the buffer, incrementing the pointer into buffer in the
> + * process.
> + */
> +static void prf_copy_to_buffer(void **buffer, const void *src, unsigned long size)
> +{
> +	memcpy(*buffer, src, size);
> +	*buffer += size;
> +}
> +
> +/* extern u32 __prf_get_value_size(struct llvm_prf_data *p, u32 *value_kinds) */
> +
> +static u32 prf_module_get_value_size(struct module *mod)
> +{
> +	u32 size = 0;
> +	struct llvm_prf_data *p;
> +	struct llvm_prf_data *start = mod->prf_data;
> +	struct llvm_prf_data *end = start + prf_mod_data_count(mod);
> +
> +	for (p = start; p < end; p++)
> +		size += __prf_get_value_size(p, NULL);
> +
> +	return size;
> +}
> +
> +/* Serialize the profiling's value.
> + * extern void prf_serialize_value(struct llvm_prf_data *p, void **buffer)
> + */
> +
> +static void prf_module_serialize_values(struct module *mod, void **buffer)
> +{
> +	struct llvm_prf_data *p;
> +	struct llvm_prf_data *start = mod->prf_data;
> +	struct llvm_prf_data *end = start + prf_mod_data_count(mod);
> +
> +	for (p = start; p < end; p++)
> +		prf_serialize_value(p, buffer);
> +}
> +
> +static inline unsigned long prf_get_padding(unsigned long size)
> +{
> +	return 7 & (sizeof(u64) - size % sizeof(u64));
> +}
> +
> +static unsigned long prf_module_buffer_size(struct module *mod)
> +{
> +	return sizeof(struct llvm_prf_header) +
> +			prf_mod_data_size(mod)	+
> +			prf_mod_cnts_size(mod) +
> +			prf_mod_names_size(mod) +
> +			prf_get_padding(prf_mod_names_size(mod)) +
> +			prf_module_get_value_size(mod);
> +}
> +
> +/*
> + * Serialize the profiling data into a format LLVM's tools can understand.
> + * Note: caller *must* hold pgo_lock and hold reference to the module.
> + */
> +static int prf_module_serialize(struct module *mod, struct prf_mod_data *p, unsigned long *buf_size)
> +{
> +	int err = 0;
> +	void *buffer;
> +
> +	/* re-check buffer size */
> +	*buf_size = prf_module_buffer_size(mod);
> +
> +	if (p->size < *buf_size || !p->buffer) {
> +		err = -ENOMEM;
> +		goto out;
> +	}
> +
> +	buffer = p->buffer;
> +
> +	prf_module_fill_header(mod, &buffer);
> +	prf_copy_to_buffer(&buffer, mod->prf_data,  prf_mod_data_size(mod));
> +	prf_copy_to_buffer(&buffer, mod->prf_cnts,  prf_mod_cnts_size(mod));
> +	prf_copy_to_buffer(&buffer, mod->prf_names, prf_mod_names_size(mod));
> +	buffer += prf_get_padding(prf_mod_names_size(mod));
> +
> +	prf_module_serialize_values(mod, &buffer);
> +
> +out:
> +	return err;
> +}
> +
> +/* open() implementation for module PGO. */
> +static int prf_module_open(struct inode *inode, struct file *file)
> +{
> +	struct prf_mod_private_data *data;
> +	struct prf_mod_data *pinfo;
> +	struct module *mod;
> +	unsigned long flags;
> +	unsigned long buf_size = 0;
> +	int err = 0;
> +
> +	mutex_lock(&prf_mod_lock);
> +	data = inode->i_private; /* see: pgo_module_notifier() */
> +
> +	BUG_ON(!data);
> +
> +	/* grab the module */
> +	mod = READ_ONCE(data->mod);
> +	if (mod && try_module_get(mod)) {
> +		// Is it live?
> +		if (mod->state != MODULE_STATE_LIVE) {
> +			err = -EAGAIN;
> +			goto put_unlock;
> +		}
> +
> +		pinfo = kzalloc(sizeof(*pinfo), GFP_KERNEL);
> +		if (!pinfo) {
> +			err = -ENOMEM;
> +			goto put_unlock;
> +		}
> +
> +		mutex_unlock(&prf_mod_lock);
> +
> +		/* estimate amount of memory needed:
> +		 * can't vzalloc() while prf_lock() is held
> +		 * and prf_module_buffer_size() only works while it is held..
> +		 */
> +		flags = prf_lock();
> +		buf_size = prf_module_buffer_size(mod);
> +		do {
> +			prf_unlock(flags);
> +
> +			/* resize buffer */
> +			if (pinfo->size < buf_size && pinfo->buffer) {
> +				vfree(pinfo->buffer);
> +				pinfo->buffer = NULL;
> +			}
> +
> +			if (!pinfo->buffer) {
> +				pinfo->size = buf_size;
> +				pinfo->buffer = vzalloc(pinfo->size);
> +
> +				if (!pinfo->buffer) {
> +					err = -ENOMEM;
> +					goto out;
> +				}
> +			}
> +
> +			/* try serialize */
> +			flags = prf_lock();
> +
> +		} while (prf_module_serialize(mod, pinfo, &buf_size));
> +
> +		prf_unlock(flags);
> +
> +		/* success! */
> +		pinfo->size = buf_size;
> +		file->private_data = pinfo;
> +
> +		module_put(mod);
> +		return err;
> +	}
> +
> +put_unlock:
> +	module_put(mod);
> +	mutex_unlock(&prf_mod_lock);
> +out:
> +	return err;
> +}
> +
> +/* read() implementation for PGO. */
> +static ssize_t prf_module_read(struct file *file, char __user *buf, size_t count,
> +			loff_t *ppos)
> +{
> +	struct prf_mod_data *pinfo = file->private_data;
> +
> +	BUG_ON(!pinfo);
> +
> +	return simple_read_from_buffer(buf, count, ppos, pinfo->buffer,
> +					   pinfo->size);
> +}
> +
> +/* release() implementation for PGO. Release resources allocated by open(). */
> +static int prf_module_release(struct inode *inode, struct file *file)
> +{
> +	struct prf_mod_data *pinfo = file->private_data;
> +
> +	if (pinfo) {
> +		vfree(pinfo->buffer);
> +		kfree(pinfo);
> +		file->private_data = 0;
> +	}
> +	return 0;
> +}
> +
> +static const struct file_operations prf_mod_fops = {
> +	.owner		= THIS_MODULE,
> +	.open		= prf_module_open,
> +	.read		= prf_module_read,
> +	.llseek		= default_llseek,
> +	.release	= prf_module_release
> +};
> +
> +static void prf_module_free(struct rcu_head *rcu)
> +{
> +	struct prf_mod_private_data *data;
> +
> +	data = container_of(rcu, struct prf_mod_private_data, rcu);
> +
> +	debugfs_remove(data->file);
> +
> +	kfree(data);
> +}
> +
> +static int pgo_module_notifier(struct notifier_block *nb, unsigned long event,
> +				void *pdata)
> +{
> +	struct module *mod = pdata;
> +	struct prf_mod_private_data *data;
> +	char fsname[MODULE_NAME_LEN + 9]; // +strlen(".profraw")
> +
> +	if (event == MODULE_STATE_LIVE) {
> +		/* does the module have profiling info? */
> +		if (mod->prf_data
> +			  && mod->prf_cnts
> +			  && mod->prf_names
> +			  && mod->prf_vnds) {
> +			/* add module prf_mod_private_data entry */
> +			data = kzalloc(sizeof(*data), GFP_KERNEL);
> +
> +			fsname[0] = 0;
> +			snprintf(fsname, sizeof(fsname), "%s.profraw", mod->name);
> +
> +			mutex_lock(&prf_mod_lock);
> +
> +			data->file = debugfs_create_file(fsname, 0600, directory, data, &prf_mod_fops);
> +			if (!data->file) {
> +				pr_err("Failed setup module pgo: %s", fsname);
> +				kfree(data);
> +				mutex_unlock(&prf_mod_lock);
> +				return NOTIFY_OK;
> +			}
> +
> +			WRITE_ONCE(data->mod, mod);
> +
> +			list_add_tail_rcu(&data->link, &prf_mod_list);
> +			mutex_unlock(&prf_mod_lock);
> +		}
> +	}
> +	if (event == MODULE_STATE_GOING) {
> +		/* remove module from the list */
> +		rcu_read_lock();
> +		list_for_each_entry_rcu(data, &prf_mod_list, link) {
> +			if (strcmp(data->mod->name, mod->name) == 0) {
> +
> +				mutex_lock(&prf_mod_lock);
> +				/* remofe from profiled modules */
> +				list_del_rcu(&data->link);
> +				/* mark it stale */
> +				WRITE_ONCE(data->mod, NULL);
> +				mutex_unlock(&prf_mod_lock);
> +				call_rcu(&data->rcu, prf_module_free);
> +				break;
> +			}
> +		}
> +		rcu_read_unlock();
> +	}
> +
> +	return NOTIFY_OK;
> +}
> +
> +static struct notifier_block pgo_module_nb = {
> +	.notifier_call = pgo_module_notifier
> +};
> +
> +void prf_modules_init(void)
> +{
> +	register_module_notifier(&pgo_module_nb);
> +}
> +
> +void prf_modules_exit(void)
> +{
> +	struct prf_mod_private_data *p;
> +
> +	/* unsubscribe the notifier and do cleanup. */
> +	unregister_module_notifier(&pgo_module_nb);
> +
> +	rcu_read_lock();
> +	list_for_each_entry_rcu(p, &prf_mod_list, link) {
> +		/* delete nodes */
> +		list_del(&p->link);
> +		WRITE_ONCE(p->mod, NULL);
> +		call_rcu(&p->rcu, prf_module_free);
> +	}
> +	rcu_read_unlock();
> +}
> \ No newline at end of file
> diff --git a/kernel/pgo/instrument.c b/kernel/pgo/instrument.c
> index 464b3bc77431..98cfa11a7b76 100644
> --- a/kernel/pgo/instrument.c
> +++ b/kernel/pgo/instrument.c
> @@ -139,11 +139,11 @@ EXPORT_SYMBOL(__llvm_profile_instrument_target);
>  
>  /* Counts the number of times a range of targets values are seen. */
>  void __llvm_profile_instrument_range(u64 target_value, void *data,
> -				     u32 index, s64 precise_start,
> -				     s64 precise_last, s64 large_value);
> +					 u32 index, s64 precise_start,
> +					 s64 precise_last, s64 large_value);
>  void __llvm_profile_instrument_range(u64 target_value, void *data,
> -				     u32 index, s64 precise_start,
> -				     s64 precise_last, s64 large_value)
> +					 u32 index, s64 precise_start,
> +					 s64 precise_last, s64 large_value)
>  {
>  	if (large_value != S64_MIN && (s64)target_value >= large_value)
>  		target_value = large_value;
> @@ -176,9 +176,9 @@ static u64 inst_prof_get_range_rep_value(u64 value)
>   * defined in compiler-rt/include/profile/InstrProfData.inc.
>   */
>  void __llvm_profile_instrument_memop(u64 target_value, void *data,
> -				     u32 counter_index);
> +					 u32 counter_index);
>  void __llvm_profile_instrument_memop(u64 target_value, void *data,
> -				     u32 counter_index)
> +					 u32 counter_index)
>  {
>  	u64 rep_value;
>  
> diff --git a/kernel/pgo/pgo.h b/kernel/pgo/pgo.h
> index a9ff51abbfd5..2840da63c7cd 100644
> --- a/kernel/pgo/pgo.h
> +++ b/kernel/pgo/pgo.h
> @@ -212,17 +212,13 @@ struct prf_mod_private_data {
>  	struct list_head link;
>  	struct rcu_head rcu;
>  
> -	void *buffer;
> -	unsigned long size;
> -
> -	char mod_name[MODULE_NAME_LEN];
>  	struct module *mod;
>  	struct dentry *file;
>  
>  	int current_node;
>  };
>  
> -/* Mutex protecting the prf_mod_list and entries */
> +/* Mutex protecting the prf_mod_list */
>  extern struct mutex prf_mod_lock;
>  
>  /* List of modules profiled */
> @@ -231,10 +227,7 @@ extern struct list_head prf_mod_list;
>  extern void prf_modules_init(void);
>  extern void prf_modules_exit(void);
>  
> -/* Update each modules snapshot of the profiling data. */
> -extern int prf_modules_snapshot(void);
> -
> -/* below funcs are required by prf_modules_snapshot() */
> +/* below funcs are required by prf_modules */
>  extern u32 __prf_get_value_size(struct llvm_prf_data *p, u32 *value_kinds);
>  
>  extern void prf_serialize_value(struct llvm_prf_data *p, void **buffer);
> -- 
> 2.31.1

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YLU0VAoWG7qa7u24%40Ryzen-9-3900X.localdomain.
