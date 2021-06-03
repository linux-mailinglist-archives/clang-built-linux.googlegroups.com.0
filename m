Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB3U34WCQMGQEVCE4III@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd39.google.com (mail-io1-xd39.google.com [IPv6:2607:f8b0:4864:20::d39])
	by mail.lfdr.de (Postfix) with ESMTPS id 94FB939AD1E
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Jun 2021 23:47:27 +0200 (CEST)
Received: by mail-io1-xd39.google.com with SMTP id s14-20020a5eaa0e0000b02904abce57cb24sf1866453ioe.21
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Jun 2021 14:47:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622756846; cv=pass;
        d=google.com; s=arc-20160816;
        b=u+ehhKQRDdaVotxl2ipMBd6sJ1Ja0v566E7vOxhWkMc1H5VByXzfFGFOOv0NenWI1/
         m9+WCqGwO6sXoGUosXA7tvgZTUh4GOS/JvS4NkBZc4cYhV+2uVUOuvQ3s/z8rrYcuMTo
         ZB6/GapgturoGbRIelVSfaeWf3XG/zkGc+qKyPgRSWvBEwYf7Ne1P1n+jMZgEodxm8NH
         JJyRttgWC9cOZJ20GxLTu4+8w2Uz/Ro5GzxaQtTbLPwzQChsfRr/kxJ8/h5CWb/iY/7x
         nW1parSF0PDhHXPsq+bWqfaG14DzgsoBy6NMkXN9rFIfv8A09GGjeTo6uK3Q4CnPhPeE
         hq2w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=LKUou8DQZkrq1cDbO7AaGxxvW3nuSHpNgBdhsRtwvQk=;
        b=SyTIrtXhuAklzqyFoOMRc8vef34hlNZaNN6/i3WNUzUEl027+uZDEb7wtMKGotnngy
         NBIcmvDamDAMcLQ6CTZJ4Q47rLIwQhAFFvlWfbXd5UKvfeKuEzNSHMyl8cs9LkPcBixW
         lEsclzh09AY03ChSkh64wwqSLOHDUNwi1JrD8DGkTfmdJJB2jL2ZpYN7A3E+hraAyRIt
         l8YZaImX1vbN7VD84UUgl6dp3B08rPeMH+Q04nRYhnI23VxM8ryP1sBHJiLhnYEKW/e4
         PdIAyAqWqa8UQKz8b35TcuVyOyyxCowbPjHXOvDZxPnkDxb1vqR/RMlqecpzA/qZEeGs
         NKfA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="XLBmp/q3";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102c as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=LKUou8DQZkrq1cDbO7AaGxxvW3nuSHpNgBdhsRtwvQk=;
        b=j+Wf/JBjMN5cgeSoYr6YsOEDY9jGWvxQ5AMbQfJopZaMsApyYO3Hok4qFZGnTy+jMI
         nMlTlH512Tg87ysPLlPvCqpxa5t/AAPXE2x2IEDIpozqXJ2GIcFaGntH1fh7lCkIhMqa
         uomBN6awyLhuIineCCTGVE/z47Mr4svaN9g1SkGodhBqzLuzWPcMXzNNuqGTtm73HbyP
         5iGT3/8plwSbYJbYWpScTKQBM/CadKiok4AGVhmZRQzkQ3Ue1M0XWSQEpYnovh8LFrfL
         ANMpVyqungZXF0QOzH4gdXMb+l6WBlWmjDXZlI5JrDuS2v5jq831IDH4t8UzdMo3MuQX
         EVxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=LKUou8DQZkrq1cDbO7AaGxxvW3nuSHpNgBdhsRtwvQk=;
        b=HsQtUUPSZ3maATWnd/UUWzjgByj95kU6SWYHz6HgMdNGeem55HaiZjKE0ZEnPTJtA0
         RuNy6n/CTqVNa4PEKYsTLtHW0+uO44io9H1u7GS2pU8Ro3Dh4YHN7ihQrwkROvQrBhem
         JO2MaKEC+ndHxSr/TacXIxjQxx/XjAjFaJGCNjAfo+YBMx4fZxUKV00U703f4q7IGAGe
         duKooSCmSwPHC5NV2B7DOB+HYiUYB/R5QCEhWi+0AtpLXX1ssXmuspVmQPAHd6jDEN5n
         O5hSEFwOX4BhHA0UKXOKmG2+7bOSI/1HpMj4GimvclOxle7XsA0f4r2JAwKswdbk4Lxn
         0vtA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533T6p6WjWpMS+sIaKtqFEPGXkQtwR1I6glZ1DQ4YoSeocPfkWk9
	7x9bAUyrDuB6mgS11MRDWfc=
X-Google-Smtp-Source: ABdhPJy6ZqPkbZ2XFpt4583VRSfR49N56Y2JAOUMKb0OR+gt7sHzFNFBN/j3ySiqPv0VIhzJfEjxZA==
X-Received: by 2002:a5d:89c1:: with SMTP id a1mr1115266iot.73.1622756846151;
        Thu, 03 Jun 2021 14:47:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:9454:: with SMTP id x20ls839689ior.5.gmail; Thu, 03 Jun
 2021 14:47:25 -0700 (PDT)
X-Received: by 2002:a6b:b409:: with SMTP id d9mr1064537iof.57.1622756845762;
        Thu, 03 Jun 2021 14:47:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622756845; cv=none;
        d=google.com; s=arc-20160816;
        b=zXltLXGQSZOeaXlVMZykXSZ/EHmDmv/TnmV+yMcTJiw4lbXdH+R1JGBNpYFF58ziLZ
         jKWlEddvR7i7BqGBO+ogTgkLmfPh8P0o28aqXm3c/djvTgETU86XZK06BDZjaZA7Q/pk
         RJplr9hjKBSPeJoSIErznrvSQF31yVuNNvK0smhjIvTSVyJgeXc7HBGX06+YbYhAPZU6
         YGHDYAB8uH8VZzgO+I+O3IJB4R0B9DKhcF0GOp4D9XqauAW9CrxhAsix5Rz11IxcIXHr
         lEKtPg3hc6roR9H9wjaowFm/CixDZXwJfbtGfPhIw2hYioBOwBBo8vltifanZpGNO0bi
         BPdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=ICOo9Kt6hh7DOvP5GK5QasKiSWWyI7zKiYm0MWO58+U=;
        b=PfiwunLIBbTQX0h0aIP88aZILQkL55Y9R0zI8/MBzhRZZVhb3yqORR6amB+tkXSpQM
         EaALZyCowAs5LbYy2+Y2Tb96pCmxfdslJ1u9LNrKhSDISJtihGisx+mEYc72vacMDqvu
         M+YnT4ay7c61l8jQp77VnODIzjX38pTjz5fLyyPvcTiYRpXl1OAle/LR3T8R1qsIIuVY
         stv7HAyaGL4AVOtD2smgVzEk8X0IJoKHp320NNUwMpRuKNVVe9OGjzuep92AJUOu/9WU
         EDhCVn+YCBeBQYIw7gTnUn+gIAejeRLiL8Avrn3Q6nQU7vwNMwARaIM9HbMhPY04Kzvf
         xp9Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="XLBmp/q3";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102c as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com. [2607:f8b0:4864:20::102c])
        by gmr-mx.google.com with ESMTPS id f9si378557iop.1.2021.06.03.14.47.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Jun 2021 14:47:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102c as permitted sender) client-ip=2607:f8b0:4864:20::102c;
Received: by mail-pj1-x102c.google.com with SMTP id lx17-20020a17090b4b11b029015f3b32b8dbso6295323pjb.0
        for <clang-built-linux@googlegroups.com>; Thu, 03 Jun 2021 14:47:25 -0700 (PDT)
X-Received: by 2002:a17:90a:8c97:: with SMTP id b23mr1375326pjo.74.1622756845225;
        Thu, 03 Jun 2021 14:47:25 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id k1sm45749pfa.30.2021.06.03.14.47.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Jun 2021 14:47:24 -0700 (PDT)
Date: Thu, 3 Jun 2021 14:47:23 -0700
From: Kees Cook <keescook@chromium.org>
To: Jarmo Tiitto <jarmo.tiitto@gmail.com>
Cc: Sami Tolvanen <samitolvanen@google.com>, Bill Wendling <wcw@google.com>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org,
	morbo@google.com
Subject: Re: [PATCH v2 1/1] pgo: Fix sleep in atomic section in prf_open()
Message-ID: <202106031441.FA95440A@keescook>
References: <20210603155318.46346-1-jarmo.tiitto@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210603155318.46346-1-jarmo.tiitto@gmail.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b="XLBmp/q3";       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::102c
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

On Thu, Jun 03, 2021 at 06:53:17PM +0300, Jarmo Tiitto wrote:
> In prf_open() the required buffer size can be so large that
> vzalloc() may sleep thus triggering bug:
> 
> ======
>  BUG: sleeping function called from invalid context at include/linux/sched/mm.h:201
>  in_atomic(): 1, irqs_disabled(): 1, non_block: 0, pid: 337, name: cat
>  CPU: 1 PID: 337 Comm: cat Not tainted 5.13.0-rc2-24-hack+ #154
>  Hardware name: QEMU Standard PC (Q35 + ICH9, 2009), BIOS 0.0.0 02/06/2015
>  Call Trace:
>   dump_stack+0xc7/0x134
>   ___might_sleep+0x177/0x190
>   __might_sleep+0x5a/0x90
>   kmem_cache_alloc_node_trace+0x6b/0x3a0
>   ? __get_vm_area_node+0xcd/0x1b0
>   ? dput+0x283/0x300
>   __get_vm_area_node+0xcd/0x1b0
>   __vmalloc_node_range+0x7b/0x420
>   ? prf_open+0x1da/0x580
>   ? prf_open+0x32/0x580
>   ? __llvm_profile_instrument_memop+0x36/0x50
>   vzalloc+0x54/0x60
>   ? prf_open+0x1da/0x580
>   prf_open+0x1da/0x580
>   full_proxy_open+0x211/0x370
>   ....
> ======
> 
> Since we can't vzalloc while holding pgo_lock,
> split the code into steps:
> * First get buffer size via prf_buffer_size()
>   and release the lock.
> * Round up to the page size and allocate the buffer.
> * Finally re-acquire the pgo_lock and call prf_serialize().
>   prf_serialize() will now check if the buffer is large enough
>   and returns -EAGAIN if it is not.
> 
> New in this v2 patch:
> The -EAGAIN case was determined to be such rare event that
> running following in a loop:
> 
> $cat /sys/kernel/debug/pgo/vmlinux.profraw > vmlinux.profdata;
> 
> Didn't trigger it, and I don't know if it ever may occur at all.

Hm, I remain nervous that it'll pop up when we least expect it. But, I
went to go look at this, and I don't understand why we need a lock at
all for prf_buffer_size(). These appear to be entirely static in size.

> 
> Signed-off-by: Jarmo Tiitto <jarmo.tiitto@gmail.com>
> ---
>  kernel/pgo/fs.c | 52 ++++++++++++++++++++++++++++++++++++-------------
>  1 file changed, 38 insertions(+), 14 deletions(-)
> 
> diff --git a/kernel/pgo/fs.c b/kernel/pgo/fs.c
> index ef985159dad3..9afd6f001a1b 100644
> --- a/kernel/pgo/fs.c
> +++ b/kernel/pgo/fs.c
> @@ -24,13 +24,14 @@
>  #include <linux/module.h>
>  #include <linux/slab.h>
>  #include <linux/vmalloc.h>
> +#include <linux/mm.h>
>  #include "pgo.h"
>  
>  static struct dentry *directory;
>  
>  struct prf_private_data {
>  	void *buffer;
> -	unsigned long size;
> +	size_t size;
>  };
>  
>  /*
> @@ -213,6 +214,7 @@ static inline unsigned long prf_get_padding(unsigned long size)
>  	return 7 & (sizeof(u64) - size % sizeof(u64));
>  }
>  
> +/* Note: caller *must* hold pgo_lock */
>  static unsigned long prf_buffer_size(void)
>  {
>  	return sizeof(struct llvm_prf_header) +
> @@ -225,18 +227,21 @@ static unsigned long prf_buffer_size(void)
>  
>  /*
>   * Serialize the profiling data into a format LLVM's tools can understand.
> + * Note: p->buffer must point into vzalloc()'d
> + * area of at least prf_buffer_size() in size.
>   * Note: caller *must* hold pgo_lock.
>   */
> -static int prf_serialize(struct prf_private_data *p)
> +static int prf_serialize(struct prf_private_data *p, size_t buf_size)
>  {
>  	int err = 0;
>  	void *buffer;
>  
> +	/* get buffer size, again. */
>  	p->size = prf_buffer_size();
> -	p->buffer = vzalloc(p->size);
>  
> -	if (!p->buffer) {
> -		err = -ENOMEM;
> +	/* check for unlikely overflow. */
> +	if (p->size > buf_size) {
> +		err = -EAGAIN;

This can just be ENOMEM instead -- it'll never change in size. (But we
should absolutely keep the check.)

>  		goto out;
>  	}
>  
> @@ -259,27 +264,46 @@ static int prf_open(struct inode *inode, struct file *file)
>  {
>  	struct prf_private_data *data;
>  	unsigned long flags;
> -	int err;
> +	size_t buf_size;
> +	int err = 0;
>  
>  	data = kzalloc(sizeof(*data), GFP_KERNEL);
>  	if (!data) {
>  		err = -ENOMEM;
> -		goto out;
> +		goto out_free;
>  	}
>  
> +	/* get buffer size */
>  	flags = prf_lock();
> +	buf_size = prf_buffer_size();
> +	prf_unlock(flags);

And there's no locking needed here.

>  
> -	err = prf_serialize(data);
> -	if (unlikely(err)) {
> -		kfree(data);
> -		goto out_unlock;
> +	/* allocate, round up to page size. */
> +	buf_size = PAGE_ALIGN(buf_size);
> +	data->buffer = vzalloc(buf_size);
> +
> +	if (!data->buffer) {
> +		err = -ENOMEM;
> +		goto out_free;
>  	}
>  
> +	/* try serialize and get actual
> +	 * data length in data->size
> +	 */
> +	flags = prf_lock();
> +	err = prf_serialize(data, buf_size);
> +	prf_unlock(flags);
> +
> +	if (err)
> +		goto out_free;
> +
>  	file->private_data = data;
> +	return 0;
>  
> -out_unlock:
> -	prf_unlock(flags);
> -out:
> +out_free:
> +	if (data)
> +		vfree(data->buffer);
> +	kfree(data);
>  	return err;
>  }
>  
> 
> base-commit: 5d0cda65918279ada060417c5fecb7e86ccb3def
> -- 
> 2.31.1
> 

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202106031441.FA95440A%40keescook.
