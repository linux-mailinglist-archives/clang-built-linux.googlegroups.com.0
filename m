Return-Path: <clang-built-linux+bncBDGIXFWLTIHBBTWQ6GCAMGQEUJCS2SQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x740.google.com (mail-qk1-x740.google.com [IPv6:2607:f8b0:4864:20::740])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EB2637F003
	for <lists+clang-built-linux@lfdr.de>; Thu, 13 May 2021 01:44:15 +0200 (CEST)
Received: by mail-qk1-x740.google.com with SMTP id v1-20020a05620a1221b02902ea88445e01sf15257008qkj.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 12 May 2021 16:44:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620863054; cv=pass;
        d=google.com; s=arc-20160816;
        b=kHqXfe02lnwUW+I7Q0za0Cs3lPSfYY+hecaU9H+s8weo9j53p0j0XsFBxCdhl5x4eS
         IfROsM4LZ9lxWvuNKjZj4yoFkBh6JaKt5BxLJonKNKwjRLzrQsQlVM0lcGpaCAkbdu1f
         +qRL/9vd0jhvmqZdeqzI4o1Pw3Cy7NW7Un3wYFrr+LzN7HpiakTQJz9NUGdfXpPxDfji
         kws6A3oaSCyA5uI0JAjNgzqXduU/q/i6EgnF668LpNNrJgbeIDx77Qrp6kSF6IMaADmL
         GFBFgv21pZG7Snhx9EsfxPwjAAYgV++cHlIJtbghecgIY8Rkfiy9dfg4+Mjmru+qsx+V
         nNIw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=dHx9dHC71geeBRIpJHFlQVsVxf1mpRsujViwcGAJf50=;
        b=fEJxjZH1UJIRV65F7ydo99OhbiJtq4pSkgfOB61fbVCCWkhwmHweJq4zm1YD4ICMcc
         Pa/Kj4w7h0C65tQHYlOQJFtWpkeTIsV/1a//m5VfYqS7mBIQz3Fp8tKS2CljX6X3TcyK
         ctU8jlhjb+luue0Tp4OuTrMcjdPoOvNDrY17T9zFy4xcTXseE40Emo2T5gQu5q3t72De
         /Y83O4GS5r8M3ZnAzJZFhWgfdl1TR6lRzwK9X/GfG5PHWm8BKlIeCi0s5FU8u2ATAqHN
         +4C8v8XesP+0yjyGNcQPpTywWMQ/DhEQ5ikRQF/O55GjAAY7SEM6oirHgdy7tBUKx4/c
         WBiw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="I/GHXG8k";
       spf=pass (google.com: domain of mhiramat@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=mhiramat@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dHx9dHC71geeBRIpJHFlQVsVxf1mpRsujViwcGAJf50=;
        b=UP0OMJkyastjUCnfYc4zJe1oJz4YJq1C62xTefmHys0pI3UV2Kb0zysEWgIYvl07dl
         guGp0gROd99n62C+Wzj7JngwbJaSB7UqJl7T+LtABkhqE8CMCIWHj10VGxWgC5r1NkTt
         7KsTHnUlXYE/ycD7kRkFkETVghl4m2+b6OEHoeAkKQVa2nf8dtErk8Otl2HXJaNfKdhD
         DJo5Wb4etclMzbbLNeqUTzTskHCr0iAdy+dON+EHbgxLNEP9mCNpE2Fs9ESyxzIoJ7B1
         zrYmtsqvHlqKrphsEhdyQcVoQp03BS6Q9ivsFm74cRCote27Z+j91RrYY+73rFkBcT//
         3hgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=dHx9dHC71geeBRIpJHFlQVsVxf1mpRsujViwcGAJf50=;
        b=EOzLeOztBmV4kb3DfG05BJcpxDHkzJGA2XiA5DcNX4K94ee/Ll3X5mj0dUp2nFsMsd
         ogJgZH0c5RRDqu7r3UyZVrP9MXh/KZ0GVEGcvhKei6wMa662DeSER74QpFdlx8aZuQes
         uzk50zrKk8szPUdwcfvvxoZBRkjO+zDFF9FmVgEwYc45Q/DkS311vSWszKY0Toqb6phx
         aOw6pGHfjcWfnSsi/Y5DI6wppW71ae7cwImskadIEquILFNFCzt61SrXtMs6CVOEm4gN
         YgbPq0p0Af1iTpACE5+GDfNSKz83ncWjxF3TgSv+8EV6P7l8K4jOLJQv+s5u0XmiuDxa
         lg8g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533TlrrVmYn4Rdl2u75QDlPIVje+1kUZc2gR8KbZF1K3hRieBXO0
	U5feX+HukxsRQGx0/3Dkk90=
X-Google-Smtp-Source: ABdhPJwIUgCEOEt6DXt38ngj4X0rsARIiyt6aQ+RUeGPRGWZ6KrQlkKtEVGtY2WjB40NcBRQ0ABRZg==
X-Received: by 2002:ac8:4698:: with SMTP id g24mr13239973qto.112.1620863054521;
        Wed, 12 May 2021 16:44:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6214:1c09:: with SMTP id u9ls1341636qvc.3.gmail; Wed, 12
 May 2021 16:44:14 -0700 (PDT)
X-Received: by 2002:a05:6214:21a7:: with SMTP id t7mr25485669qvc.4.1620863054045;
        Wed, 12 May 2021 16:44:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620863054; cv=none;
        d=google.com; s=arc-20160816;
        b=D7R6XvNM1tAPywc/2SJNM0UN16ZRhB4w3kgDAAKWljPl5iwDxp6p8E+UeWmQecyJjk
         rQmZ0KsaTZzbeR2r3XcU0kDpHFXSjW0OcjmcsMIWh54/Yj41M7bP/QfknG4nKPBxiB8B
         VEARXD4tsyJ7oP+LF3YOBI3XYWnFCJxO5G07iygyZ0Id6FanOuQxsh3Ghc5hYfes5pe6
         1jmKQoNqEYG9OIDvrJ6Q6z6XszQ0HoVhgTHScWC6GvL+lqrFaHpmAyNJs2PN8ocBbz/l
         stmShLJZtQshdy1SsKTSH8LQXZwxNerL8VgzKlO1IyTUQSLc0kCL/Fx7Lz7cQx7CDZbq
         JzYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=lfZFO8JA63Lx6zUeMYLTr/O6Fou689zgzghOGdTTMbs=;
        b=zxpApAGxLIGsTu6lzEaLqPyynKr5rLR6N9cCZe42kwvfx3KPf+vYgDCqRdCbMBiUpR
         B9XgEVwANb62ySpcikn72u6PDoS2AE3jG2KiB7UjxHT7LY4WqJufbe0QEVoiwDaDsFf6
         hpu2UDWdVbNtwnbQ+UCdWorzZrOr17I9F6b6Y9kvFenppktxo9S4vF//3ctz9O8THCrj
         3eFwpocBs1/AhgQRsfZO7Xu8DihoZ7cNoUCJT6QCRZpp7P6gxvE0NDdB0Q1qnqke6kho
         Lb1qjL8pu76FS0AUt0NLOHjI9z28OqWtRh3ORsvZV/Fs4QLgVnoC+KLVklISKjJ7cuwu
         aIuQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="I/GHXG8k";
       spf=pass (google.com: domain of mhiramat@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=mhiramat@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id o4si182016qtm.3.2021.05.12.16.44.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 12 May 2021 16:44:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of mhiramat@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 807BC61404;
	Wed, 12 May 2021 23:44:10 +0000 (UTC)
Date: Thu, 13 May 2021 08:44:09 +0900
From: Masami Hiramatsu <mhiramat@kernel.org>
To: Christophe Leroy <christophe.leroy@csgroup.eu>
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>, Paul Mackerras
 <paulus@samba.org>, Michael Ellerman <mpe@ellerman.id.au>,
 naveen.n.rao@linux.ibm.com, anil.s.keshavamurthy@intel.com,
 davem@davemloft.net, mhiramat@kernel.org, linux-kernel@vger.kernel.org,
 linuxppc-dev@lists.ozlabs.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH 2/2] powerpc/kprobes: Replace ppc_optinsn by common
 optinsn
Message-Id: <20210513084409.0172212de7f567605da9a336@kernel.org>
In-Reply-To: <46998c941d0a5664daaeb92998391aace015eddf.1620829724.git.christophe.leroy@csgroup.eu>
References: <472c597cc8cc8f74f037acf971f7799fb381a647.1620829724.git.christophe.leroy@csgroup.eu>
	<46998c941d0a5664daaeb92998391aace015eddf.1620829724.git.christophe.leroy@csgroup.eu>
X-Mailer: Sylpheed 3.7.0 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: mhiramat@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b="I/GHXG8k";       spf=pass
 (google.com: domain of mhiramat@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=mhiramat@kernel.org;       dmarc=pass (p=NONE
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

On Wed, 12 May 2021 14:29:27 +0000 (UTC)
Christophe Leroy <christophe.leroy@csgroup.eu> wrote:

> Commit 51c9c0843993 ("powerpc/kprobes: Implement Optprobes")
> implemented a powerpc specific version of optinsn in order
> to workaround the 32Mb limitation for direct branches.
> 
> Instead of implementing a dedicated powerpc version, use the
> common optinsn and override the allocation and freeing functions.
> 
> This also indirectly remove the CLANG warning about
> is_kprobe_ppc_optinsn_slot() not being use, and the powerpc will
> now benefit from commit 5b485629ba0d ("kprobes, extable: Identify
> kprobes trampolines as kernel text area")
> 

This looks good to me.

Acked-by: Masami Hiramatsu <mhiramat@kernel.org>

> Suggested-by: Masami Hiramatsu <mhiramat@kernel.org>
> Signed-off-by: Christophe Leroy <christophe.leroy@csgroup.eu>
> ---
>  arch/powerpc/kernel/optprobes.c | 23 +++++------------------
>  1 file changed, 5 insertions(+), 18 deletions(-)
> 
> diff --git a/arch/powerpc/kernel/optprobes.c b/arch/powerpc/kernel/optprobes.c
> index cdf87086fa33..a370190cd02a 100644
> --- a/arch/powerpc/kernel/optprobes.c
> +++ b/arch/powerpc/kernel/optprobes.c
> @@ -31,11 +31,9 @@
>  #define TMPL_END_IDX		\
>  	(optprobe_template_end - optprobe_template_entry)
>  
> -DEFINE_INSN_CACHE_OPS(ppc_optinsn);
> -
>  static bool insn_page_in_use;
>  
> -static void *__ppc_alloc_insn_page(void)
> +void *alloc_optinsn_page(void)
>  {
>  	if (insn_page_in_use)
>  		return NULL;
> @@ -43,20 +41,11 @@ static void *__ppc_alloc_insn_page(void)
>  	return &optinsn_slot;
>  }
>  
> -static void __ppc_free_insn_page(void *page __maybe_unused)
> +void free_optinsn_page(void *page)
>  {
>  	insn_page_in_use = false;
>  }
>  
> -struct kprobe_insn_cache kprobe_ppc_optinsn_slots = {
> -	.mutex = __MUTEX_INITIALIZER(kprobe_ppc_optinsn_slots.mutex),
> -	.pages = LIST_HEAD_INIT(kprobe_ppc_optinsn_slots.pages),
> -	/* insn_size initialized later */
> -	.alloc = __ppc_alloc_insn_page,
> -	.free = __ppc_free_insn_page,
> -	.nr_garbage = 0,
> -};
> -
>  /*
>   * Check if we can optimize this probe. Returns NIP post-emulation if this can
>   * be optimized and 0 otherwise.
> @@ -136,7 +125,7 @@ NOKPROBE_SYMBOL(optimized_callback);
>  void arch_remove_optimized_kprobe(struct optimized_kprobe *op)
>  {
>  	if (op->optinsn.insn) {
> -		free_ppc_optinsn_slot(op->optinsn.insn, 1);
> +		free_optinsn_slot(op->optinsn.insn, 1);
>  		op->optinsn.insn = NULL;
>  	}
>  }
> @@ -203,14 +192,12 @@ int arch_prepare_optimized_kprobe(struct optimized_kprobe *op, struct kprobe *p)
>  	unsigned long nip, size;
>  	int rc, i;
>  
> -	kprobe_ppc_optinsn_slots.insn_size = MAX_OPTINSN_SIZE;
> -
>  	nip = can_optimize(p);
>  	if (!nip)
>  		return -EILSEQ;
>  
>  	/* Allocate instruction slot for detour buffer */
> -	buff = get_ppc_optinsn_slot();
> +	buff = get_optinsn_slot();
>  	if (!buff)
>  		return -ENOMEM;
>  
> @@ -297,7 +284,7 @@ int arch_prepare_optimized_kprobe(struct optimized_kprobe *op, struct kprobe *p)
>  	return 0;
>  
>  error:
> -	free_ppc_optinsn_slot(buff, 0);
> +	free_optinsn_slot(buff, 0);
>  	return -ERANGE;
>  
>  }
> -- 
> 2.25.0
> 


-- 
Masami Hiramatsu <mhiramat@kernel.org>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210513084409.0172212de7f567605da9a336%40kernel.org.
