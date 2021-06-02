Return-Path: <clang-built-linux+bncBCF5XGNWYQBRB2UA36CQMGQEU4ITXAA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3f.google.com (mail-yb1-xb3f.google.com [IPv6:2607:f8b0:4864:20::b3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 778093991B6
	for <lists+clang-built-linux@lfdr.de>; Wed,  2 Jun 2021 19:31:23 +0200 (CEST)
Received: by mail-yb1-xb3f.google.com with SMTP id s8-20020a5b04480000b029049fb35700b9sf4026096ybp.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Jun 2021 10:31:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622655082; cv=pass;
        d=google.com; s=arc-20160816;
        b=0dhHmql7d49oXrua+1OTItVtD6E5MaKuCf10+kevXpfn8HHwGHHlL8vcYz0s28XiQL
         NAk5rbO2P/jW+lTl/dEUsei/i/EXQ8djhuHmVWvUypzaCaTzKjNBhwvk8VBZehztOy+1
         tv54fPqes8I/HtgoNLca2xAWOLkSIvBCTdfQNg9BcXHkmSdkPTpCLjITFvgLDcnEqRnB
         1vnRLXQgNbxWWySNMGZMhNeEY8BUTm+kB2Ynx5N5e3M5NtfYwGpLgPd33bQj8T0g38Ld
         QSmbKEnkqj/SDisDlxKkNyfZmdVBNatqpQO1W6Xf8CfyVwIlypn/S2SxfIampJc85/Lt
         JEnA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=/vFOSVKI+AN4D+LwnqsuIRBx3Cynl+AzIQsFAUrJ1Vk=;
        b=nKQndu08+zUdOrs3jEPprttMNHJIAijflvJyCVgI2nzbuTqRbXQI1EW76qZdMhxIdp
         5uFGUAtOgN3vkxHY6oeHpNKcCI0dSTTTkKOtHEf3ITdA/8kaGKh3jkNCVjRu0XKN2DyQ
         GlTTv1CkP2QzXHM5h3rghtKAcDSBGv0NX/YO8NtOWnwSsrxJGBrxV9JEz3ogoWjJpJ4L
         avEJJ+L5VdhVMv0fiqV0QcQxSxpmeeONGXNQ40QDo6KnJIgD5s6MRuwGvhnoggnZaLfL
         gOlgAujVhG2ze1OTHl0CKGgMKrqYcGYv4XLLIxt5EiM0nZnOpvQgX16DVZMyrs5g+n3U
         ElZA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=c4XGCHVJ;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1035 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/vFOSVKI+AN4D+LwnqsuIRBx3Cynl+AzIQsFAUrJ1Vk=;
        b=HSJ49+jzM54Ln6YsF1ODLB9ESVyGX6pAw7DgjqYh+m+ab7rULM5oYUMBrKEdRFKred
         Z9AxRJDRMQ9FDw0VpA1poHCwt5gb+/Bapw0CNDyP9Eazwu1uI8ceLymUEZaaziPThLo2
         LbxpauhoyyGs7yp7Lxfeo4GBfBAW2TXTWBwrHD+7LO7D2byGEcNFwZwgq/LjggTuaV6W
         NLFAot+aKSV9fNmOoNlfKPEUoM/aVad3+5WYeJwiw5B6+PVaeK+I/MoWwlnsZUr5EkZa
         eyOChkkIcb8UgnaWO6HMttdqXb4Z9gCSyinVzJXaxCpqduFeJ/eNqhBCSzlQm5JY4qIw
         P0Kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=/vFOSVKI+AN4D+LwnqsuIRBx3Cynl+AzIQsFAUrJ1Vk=;
        b=RCLUw96l3ARM/X2c/zAg+cU73tbhENXMOV00XJKilFzGePXRt0Jh1xdeY0lVEowM23
         CChulJvFsJUm5iOYMGUni+VZZgFnC04cm0R9+Ir356Iez11u+qMI6tmBSZ1tSkJx1fBJ
         OqgN1IkiCjBB0m+DpaJS5t/1QW6qd4kz26do2C0bjOd35d0/3NoVY3Ufq54lMR4wznMp
         BYa0ycNnWt7l1qdCECyFkEeVDDIAJi0WcW10/sp0A1B6kcsWYAIBm45A1zqHwVA7bAkR
         DevckT43vjjZdQieEv+2kv4lyUUlfXQbQgrJCubaJ8/nTsw7xQUjgO/fSPWnAHa49qEa
         0EFQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532iTwVYHLJot9bYhncTWPyzWqfF/2DrqeqVqui9Ya7tMyUh+EC8
	7DoTW5P1j3tEQbf7XNk1HEc=
X-Google-Smtp-Source: ABdhPJzPuBzo8Ot+0t+WtMC4HUJ7X3Wrofh6m503Cym8qp5qeRwWy89jM+mUqA9LRWcibsgw9fuK1A==
X-Received: by 2002:a25:c045:: with SMTP id c66mr11928395ybf.296.1622655082388;
        Wed, 02 Jun 2021 10:31:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:3c45:: with SMTP id j66ls232983yba.0.gmail; Wed, 02 Jun
 2021 10:31:21 -0700 (PDT)
X-Received: by 2002:a25:1988:: with SMTP id 130mr51278829ybz.458.1622655081916;
        Wed, 02 Jun 2021 10:31:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622655081; cv=none;
        d=google.com; s=arc-20160816;
        b=L7GuaDBjk/Gri4rIqoFRIh8Aa160IgzezGeZyOTAuu7kr8Le3FOPptcZZ8K4WHwAzG
         J7Xj+ahanvj4G5RlIy32e+eaJKX5etHTM/4hEQGTEANFuiPey5BUD02EZkiODEs4ZUcL
         lL1IixlqT1qMoQAWpa72r5YdmWakpjQv5SQXGSSB1nbTL15MF3y6bM90DmE1q6ldhHl8
         3Fvn7ZyO2TRb37OpKIsIhmfVQf9gAa4IGcXP6MclgBwkzdJN+s6spWBjYt1+o/cdF10T
         /AcNS2sHI4ZfO82XY5R7ilzYAmN7YxN8H+4O9yy5MIahl3TIbl1uugSF5FWLuXdS7FI7
         JtOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=tt4Knbco8jltVFuXBy6keGgbL9Kdul7C1y1WYAEE+Cc=;
        b=im0gIRrSliq1YdPtsdnOQ2cEYV8vRJvsuNNkpbwgScJaTPAHuWfz5cc3UqmEApGBKV
         WmtWl+6DE8BGB8FFHWhOyYC/ADIA0yC/sjopjQz9OePpYZlKF1k3EvHCxQQvp32OcPDP
         ix/Zezwuj5/Nqu+qsf5O8TZ6D0BhugLRtZ4yNa+1t+r+BuMuGMUbpP28xPV+JIMlr8E2
         OHLBTa0YN9ch4zq8erjQmVi6CuvwD0BYXw4tqG/OLd7qieqm//z0zi/QjBLvYOgw/WXj
         kMrkpdP3kYrUy5BpYHKdG1yxk+GPV1MUPlC0e3XAxnHUW46Khqbs81KePMl/Tcnv7QKY
         bcwQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=c4XGCHVJ;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1035 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1035.google.com (mail-pj1-x1035.google.com. [2607:f8b0:4864:20::1035])
        by gmr-mx.google.com with ESMTPS id r9si89321ybb.1.2021.06.02.10.31.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Jun 2021 10:31:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1035 as permitted sender) client-ip=2607:f8b0:4864:20::1035;
Received: by mail-pj1-x1035.google.com with SMTP id d5-20020a17090ab305b02901675357c371so3531852pjr.1
        for <clang-built-linux@googlegroups.com>; Wed, 02 Jun 2021 10:31:21 -0700 (PDT)
X-Received: by 2002:a17:90a:ae11:: with SMTP id t17mr6591604pjq.85.1622655081153;
        Wed, 02 Jun 2021 10:31:21 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id y1sm236817pfn.13.2021.06.02.10.31.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Jun 2021 10:31:20 -0700 (PDT)
Date: Wed, 2 Jun 2021 10:31:19 -0700
From: Kees Cook <keescook@chromium.org>
To: Jarmo Tiitto <jarmo.tiitto@gmail.com>
Cc: Sami Tolvanen <samitolvanen@google.com>, Bill Wendling <wcw@google.com>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org,
	morbo@google.com
Subject: Re: [PATCH 1/1] pgo: Fix sleep in atomic section in prf_open()
Message-ID: <202106021009.A556DFB7F2@keescook>
References: <20210602162640.170752-1-jarmo.tiitto@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210602162640.170752-1-jarmo.tiitto@gmail.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=c4XGCHVJ;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1035
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

On Wed, Jun 02, 2021 at 07:26:40PM +0300, Jarmo Tiitto wrote:
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

Ah-ha; nice catch!

> 
> This patch avoids holding the prf_lock() while calling
> vzalloc(). Problem with that is prf_buffer_size()
> *must* be called with prf_lock() held and the buffer
> size may change while we call vzalloc()
> 
> So first get buffer size, release the lock and allocate.
> Then re-lock and call prf_serialize() that now checks if
> the buffer is big enough. If not, the code loops.
> 
> Signed-off-by: Jarmo Tiitto <jarmo.tiitto@gmail.com>
> ---
>  kernel/pgo/fs.c | 45 +++++++++++++++++++++++++++++++++++----------
>  1 file changed, 35 insertions(+), 10 deletions(-)
> 
> diff --git a/kernel/pgo/fs.c b/kernel/pgo/fs.c
> index ef985159dad3..e8ac07637423 100644
> --- a/kernel/pgo/fs.c
> +++ b/kernel/pgo/fs.c
> @@ -227,16 +227,15 @@ static unsigned long prf_buffer_size(void)
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
> +	*buf_size = prf_buffer_size();
>  
> -	if (!p->buffer) {
> -		err = -ENOMEM;
> +	if (p->size < *bufsize) {

Nit: please change prf_private_data::size to size_t while you're
touching this code.

> +		err = -EAGAIN;
>  		goto out;
>  	}
>  
> @@ -259,6 +258,7 @@ static int prf_open(struct inode *inode, struct file *file)
>  {
>  	struct prf_private_data *data;
>  	unsigned long flags;
> +	unsigned long buf_size;
>  	int err;
>  
>  	data = kzalloc(sizeof(*data), GFP_KERNEL);
> @@ -267,14 +267,39 @@ static int prf_open(struct inode *inode, struct file *file)
>  		goto out;
>  	}
>  
> +	/* note: vzalloc() can be used in atomic section.
> +	 * However to get the buffer size prf_lock() *must*
> +	 * be taken. So take lock, get buffer size, release
> +	 * the lock and allocate.
> +	 * prf_serialize() then checks if buffer has enough space.
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
> +
> +		/* resize buffer */
> +		if (data->size < buf_size && data->buffer) {
> +			vfree(data->buffer);
> +			data->buffer = NULL;
> +		}
> +
> +		if (!data->buffer) {
> +			data->size = buf_size;
> +			data->buffer = vzalloc(data->size);
> +
> +			if (!data->buffer) {
> +				err = -ENOMEM;
> +				kfree(data);
> +				goto out;
> +			}
> +		}
> +		/* try serialize */
> +		flags = prf_lock();
> +	} while (prf_serialize(data, &buf_size));

I'm not a fan of loops where it's hard to answer the question "how do we
know this loop will always terminate?"

Given that vmalloc allocates PAGE_SIZE-granular regions, how about
rounding up to likely avoid multiple passes and put the growth explicitly
in the loop, rather than just looking at "any" prf_serialize() failure.

e.g.:

	struct prf_private_data *data;
	int err = -ENOMEM;

	data = kzalloc(sizeof(*data), GFP_KERNEL);
	if (!data)
		goto out_free;

	do {
		unsigned long flags;
		size_t size;

		size = PAGE_ALIGN(prf_buffer_size());
		/* Required buffer size must be growing with each loop. */
		if (WARN_ON_ONCE(size <= data->size)) {
			err = -ENOMEM;
			goto out_free;
		}

		if (data->buf)
			vfree(data->buf);
		data->buf = vzalloc(size);
		if (!data->buf) {
			err = -ENOMEM;
			goto out_free;
		}
		data->size = size;

		flags = prf_lock();
		err = prf_serialize(data);
		prf_unlock(flags);
	} while (err == -EAGAIN);

	if (err)
		goto out_free;

	file->private_data = data;
	return 0;

out_free:
	if (data)
		vfree(data->buf);
	kfree(data);
	return err;


>  
> +	data->size = buf_size;
>  	file->private_data = data;
>  
>  out_unlock:
> 
> base-commit: e1af496cbe9b4517428601a4e44fee3602dd3c15
> prerequisite-patch-id: fccc1bd89bbd33af13a4ce9bc3c913e6e3cdecee
> prerequisite-patch-id: a2e53c0b44ad39c78ed7bc7aad40d133548a13b5
> prerequisite-patch-id: 12f0e468a3d0ff12c7f5bc640f213be3b5dd261b
> prerequisite-patch-id: 707b836b1969958b5131dfa1b9f044eae5f4a76a
> -- 
> 2.31.1
> 

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202106021009.A556DFB7F2%40keescook.
