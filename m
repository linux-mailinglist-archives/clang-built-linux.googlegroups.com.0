Return-Path: <clang-built-linux+bncBCV5TUXXRUIBB2UZ4LUQKGQEEVTZ3LQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x837.google.com (mail-qt1-x837.google.com [IPv6:2607:f8b0:4864:20::837])
	by mail.lfdr.de (Postfix) with ESMTPS id 94D7A7343C
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jul 2019 18:52:59 +0200 (CEST)
Received: by mail-qt1-x837.google.com with SMTP id l9sf41866686qtu.12
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jul 2019 09:52:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563987178; cv=pass;
        d=google.com; s=arc-20160816;
        b=f13zIFawADgwlgzGUjEUnFBcGN841Xiqv5wDaQRMkQH9i/4Hr90JQe9BALH3n8xvlj
         wj+I6aas6/0uKb2sPssj9q7JY7nudODcjAkIt82ivR2mWfvCkBmVvtqxWda0cvusBSgR
         36fXXoVrWaGgSmojQdYXNrkWgVLKsHzbep3zU4lj+LocUDcX/YA7+mzD4ClS02fcRuWu
         ugyKzL4CXd20axYzWUJx3Qn4GPfiN0oR+U51ZqW1TiE1n6pNzmnkV43zlaenWEsOmeIf
         SVtAFtz/yT+juI1ZzOLB5OjEoMnidWL6n/k/UN9KKAOk4B6GV2AHbWhErxJCNxrgDUbu
         0CRg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=hhNXfYfKNF5OMz3W1fVV6fKHstPmLdo2S4PZvKCY1vw=;
        b=WWZsG7tXHODzt/QwQs5xngYEOdV1Wb6pb6EeihyMp0HOcxw4XE+hYF22zzWBsbS6or
         epG4xhL9lpW1RW9b3rEjn4nMkaUT44uoVY4w+W8t/f0PPMz/sbs4fs8xZRWgiuredBI8
         ndpUHe6suGJJitHIIMJsjfnWvCgqq3qg6f0NKsI2ADC4PV0V04nxZfUZtKHiestn2UDK
         VpEqG//JH9KIf9G+Xyky6hlT9Pq2on24eD2zw15DimSL5TRSx3oNJOmQnOUT0jYaeyEo
         30bSRisTWYCSLFQ4HczhbEf2Pqy3LkYHnsT+FF3lnXlKazTlRqdQES1REnsL67HVNydm
         0WEA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=INhcJGIr;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=hhNXfYfKNF5OMz3W1fVV6fKHstPmLdo2S4PZvKCY1vw=;
        b=Vae4DWloRGT+6XUuuZYW6JU+FxEZy5RJyFQg79jPVPwojGQWacgU/j40Sq35nm82d5
         98t/vhvubd72OT3TMHjLF6VX9u+BolLjP7cuUA8nXE/CW7aNUw02JJSc4ERSBBthqLq1
         K5u4cR0XYVYneOoDSBtybfLhEklmsp/4EBvLlLWSayMjrTFy7BHZVmVWH5uB+2gz61DZ
         zgvW/czHw9rQ9i4b0dxcaeaah0GZcVpFMMfyT9tuoSnmGbinke1QSTrn2XRKNyf9SBr9
         9L8PnVn8i06sEE3SmVLVf2XOzbPRUPi8e75u3OfTFvX5zAWP6lPTikVQneHLRFdek148
         BRDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=hhNXfYfKNF5OMz3W1fVV6fKHstPmLdo2S4PZvKCY1vw=;
        b=uRuuYjuI7ZQk2LCitJSef5MeJdMuH7XiadEV8aMM2wHwV3sfmCVFYc9DgHghHvA1R8
         +IYJgS6VdlGLsHCUeuwbY72KqZR/45I/csz2O73zBzPtGobkezgI2BrhXNe7CMWPqhwe
         gL1UaLFxtKHeQAKW0AacAhwzUsdVvCPe0Gra85vgNeVQOHY1rtoL70vDKp4Paf94Ha7S
         K2jXq3Q7a51YTxoaP8Ceu1IL4iglKpre6fD3WexRNA0HSP+GaWAR0/7NPaPsM5bhXShF
         cldJhMREJnmrvJF9zaKDn6aEsoImhF6bFGXhDVT71eljSIDlLKSZBjqyoIxKrQg305fg
         Urow==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXyQcbMBPUjESkdUXYVH+fazQ/lz5wU/U4/757+jIZAuLiG4UPB
	mu/Aab7EfNQeJ8FMY1QefZo=
X-Google-Smtp-Source: APXvYqyUuV01DcRRLl8RPD5bKb/wflZwvm7ZzKcZ7xJWn00v4Ppoe+crkloj+MO7mlAhyHm2cm1zVw==
X-Received: by 2002:aed:3bb5:: with SMTP id r50mr56107081qte.89.1563987178737;
        Wed, 24 Jul 2019 09:52:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:d203:: with SMTP id f3ls5080531qkj.10.gmail; Wed, 24 Jul
 2019 09:52:58 -0700 (PDT)
X-Received: by 2002:a05:620a:1443:: with SMTP id i3mr56972938qkl.11.1563987178497;
        Wed, 24 Jul 2019 09:52:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563987178; cv=none;
        d=google.com; s=arc-20160816;
        b=cQwUOGYNbRyAfnUhge54tpxBETklYhAwgZpHyainBWbQkSIcet4enOlzH0DadCPhot
         XxDmSGTiuHW08CZOOgoj5MRWSQuUY4JhGLZIi4MnO0h4hRcejRtK5dgl86a767vRTDnX
         e4VhUagqYoB1Xwzi4kDDS3eTUo1BJgZMr+UX200+J05GZ/RR7MsfFn/aleqZb1BtwmEy
         CUsYr7YQLR/X9sjsX9rIhtHZ0+kcj11crsnIRlmqaZ292KgQxiDBeiWQ7sgc87Ul1fo9
         OYXLo5RHAtGl5IwVOmd37u2tcR6k6EkG8KfWz72/TXw9XzHH568G8f3Prv9eygzXiQ1M
         HdfQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=RQ7VaSAzvcmxPLciLsbioYDmZXRLn9Opl2kFM/lOf8s=;
        b=ze5SCOrXuQDX6sy6qFqfE/liTqMuPZTkl9oeoTukGP33dtU4pWLhWcyn6d0sTAnOSe
         JtS8lpcPW4auDIxzag/OeuCOU5Sh2Ek9xjYcY/vUSBmM2P0ExlnehVTFnXD1iqE4Vdun
         sBjjyOp/Ut1jDcl3M87Jgl0amjQSB9tAtTHh020Z9YJNrqYErmgA/OD73GlmOlquYuQ7
         gHbn+P5Vswjv4A5oYbQk5xSHaOM4IA65iyXZ03AHsI0Bj0b4jhPIqvSQIW6YQCIJkY3C
         UmonY2ylWMvCADtHBU/rVlKoZthbhUVBKtGuRl/LdOn6E7ZEgtGjl9OMmkdovww+rVzm
         n5eg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=bombadil.20170209 header.b=INhcJGIr;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from bombadil.infradead.org (bombadil.infradead.org. [2607:7c80:54:e::133])
        by gmr-mx.google.com with ESMTPS id r4si2054773qkb.1.2019.07.24.09.52.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Wed, 24 Jul 2019 09:52:58 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2607:7c80:54:e::133 as permitted sender) client-ip=2607:7c80:54:e::133;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=hirez.programming.kicks-ass.net)
	by bombadil.infradead.org with esmtpsa (Exim 4.92 #3 (Red Hat Linux))
	id 1hqKVW-00066L-Ko; Wed, 24 Jul 2019 16:52:50 +0000
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id E3BCB20288388; Wed, 24 Jul 2019 18:52:48 +0200 (CEST)
Date: Wed, 24 Jul 2019 18:52:48 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Josh Poimboeuf <jpoimboe@redhat.com>
Cc: Thomas Gleixner <tglx@linutronix.de>,
	LKML <linux-kernel@vger.kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nathan Chancellor <natechancellor@gmail.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	x86@kernel.org, Arnd Bergmann <arnd@arndb.de>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	chris@chris-wilson.co.uk
Subject: Re: x86 - clang / objtool status
Message-ID: <20190724165248.GD31381@hirez.programming.kicks-ass.net>
References: <alpine.DEB.2.21.1907182223560.1785@nanos.tec.linutronix.de>
 <20190724023946.yxsz5im22fz4zxrn@treble>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20190724023946.yxsz5im22fz4zxrn@treble>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=bombadil.20170209 header.b=INhcJGIr;
       spf=pass (google.com: best guess record for domain of
 peterz@infradead.org designates 2607:7c80:54:e::133 as permitted sender) smtp.mailfrom=peterz@infradead.org
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

On Tue, Jul 23, 2019 at 09:43:24PM -0500, Josh Poimboeuf wrote:
> On Thu, Jul 18, 2019 at 10:40:09PM +0200, Thomas Gleixner wrote:
> 
> >   drivers/gpu/drm/i915/gem/i915_gem_execbuffer.o: warning: objtool: .altinstr_replacement+0x86: redundant UACCESS disable
> 
> Looking at this one, I think I agree with objtool.
> 
> PeterZ, Linus, I know y'all discussed this code a few months ago.
> 
> __copy_from_user() already does a CLAC in its error path.  So isn't the
> user_access_end() redundant for the __copy_from_user() error path?
> 
> Untested fix:

Run this past i915 people, but with the objtool patch I just posted it
reproduces with GCC and this patch makes it go away.

Acked-by: Peter Zijlstra (Intel) <peterz@infradead.org>

> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> index 5fae0e50aad0..41dab9ea33cd 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c
> @@ -1628,6 +1628,7 @@ static int check_relocations(const struct drm_i915_gem_exec_object2 *entry)
>  
>  static int eb_copy_relocations(const struct i915_execbuffer *eb)
>  {
> +	struct drm_i915_gem_relocation_entry *relocs;
>  	const unsigned int count = eb->buffer_count;
>  	unsigned int i;
>  	int err;
> @@ -1635,7 +1636,6 @@ static int eb_copy_relocations(const struct i915_execbuffer *eb)
>  	for (i = 0; i < count; i++) {
>  		const unsigned int nreloc = eb->exec[i].relocation_count;
>  		struct drm_i915_gem_relocation_entry __user *urelocs;
> -		struct drm_i915_gem_relocation_entry *relocs;
>  		unsigned long size;
>  		unsigned long copied;
>  
> @@ -1663,14 +1663,8 @@ static int eb_copy_relocations(const struct i915_execbuffer *eb)
>  
>  			if (__copy_from_user((char *)relocs + copied,
>  					     (char __user *)urelocs + copied,
> -					     len)) {
> -end_user:
> -				user_access_end();
> -end:
> -				kvfree(relocs);
> -				err = -EFAULT;
> -				goto err;
> -			}
> +					     len))
> +				goto end;
>  
>  			copied += len;
>  		} while (copied < size);
> @@ -1699,10 +1693,14 @@ static int eb_copy_relocations(const struct i915_execbuffer *eb)
>  
>  	return 0;
>  
> +end_user:
> +	user_access_end();
> +end:
> +	kvfree(relocs);
> +	err = -EFAULT;
>  err:
>  	while (i--) {
> -		struct drm_i915_gem_relocation_entry *relocs =
> -			u64_to_ptr(typeof(*relocs), eb->exec[i].relocs_ptr);
> +		relocs = u64_to_ptr(typeof(*relocs), eb->exec[i].relocs_ptr);
>  		if (eb->exec[i].relocation_count)
>  			kvfree(relocs);
>  	}

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190724165248.GD31381%40hirez.programming.kicks-ass.net.
