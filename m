Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBBXUQOFAMGQEC7GOJKQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3c.google.com (mail-oo1-xc3c.google.com [IPv6:2607:f8b0:4864:20::c3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 0910840B83A
	for <lists+clang-built-linux@lfdr.de>; Tue, 14 Sep 2021 21:37:44 +0200 (CEST)
Received: by mail-oo1-xc3c.google.com with SMTP id v9-20020a4ae6c9000000b0029003c3f017sf5202oot.23
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Sep 2021 12:37:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631648263; cv=pass;
        d=google.com; s=arc-20160816;
        b=F1TDRLCM2a0tGvuFpsCA7q7/xiU2b3iWoFKgVt2GifNj+LxovEZgyRPeNt/4qbZLPv
         E/aHLaNt9Mnsw1iMnx0sellCydtsIzYpRXxYWFPWiWtaE12hoAqxoUhunImsxg/ejQOW
         LD5ur+hCrNnCqlJVsSbGhq/+S4I1lWA+rtP6IYA4AE+VgF2gw8msSuDYtcQFMUIOrrOs
         gRAFm/JLjQYyd2jwaRs0dPsnEA0nnbQTaL0P5d/X/Q7EuWRY7l/9Q6Tj9OnV/1THadBf
         8NQuWPegWoEmqyU71al4fsC/SUf+OgVPpiPe2F10ZI6U4Av0REBeBYPp9CuiB2ys69V3
         BC2g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=vXqujToGTmgvsPWDAD2FFtqB0r59GBUZNJn8mgBT7xQ=;
        b=DZU9TLb2mJd0fWvrQ8JQrn9e0UX0Z6ekmevcEjPISu8gZ6Buvo2FJTKSyCbwTXMWp7
         I994oOgHlKyeXakv9KQCg5yXhywU6rulmdaEyvxz5kooVkvENkN0f8TNWIaQPPF9/PH4
         xwhiKgPW/KliU7uhQ5YzM3+tLIRPPlxsFIzeyoWmOtzVVvksTa1DOkcur6FaIGDhLY4J
         tvbaGqq4SBTC9fJStprrQ3NeSmk3ungbK1ynnZPQJ5PS9w5cxd01SeJ2nS8ogyd+ZmF4
         pvsw1NEE6RDNC/ibCEXGpA82O95hulP23vVmEk4xp1Fd7wDZi5zvc1tSDAImymCDIlr3
         KSMA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=OSKuSjLo;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::532 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vXqujToGTmgvsPWDAD2FFtqB0r59GBUZNJn8mgBT7xQ=;
        b=HzeKG857FeD5415QusGDM2eMgvn0PbMxDHQ/4Hge1lPXPB61S+5hMQ7N7G4YQRclm3
         CcY4yL4F9vdjnhruYg3rnrs5N53zJv8wAJ8oaCgPHX5KdUvjaJjNHrbHVGTiSu4i8wHM
         I80rzRqbc6a0hQjpYAh1+UvhfbTYDR+5lDONjWjEXj2wAQcpsq/hWV7K8AGQs5kOeRbN
         jFpST9bLKo7PovP7rT+R9BMXLTVlLF/KJffq8La5cLXxTDy4h2bLstbFWsmr6m+dzUHZ
         vDb2mHd9sehztgl4a9gJvvGKFNdCX6hnZoJM9RYoNs3cNfdZqvo7XgRT3OzswUz+wo89
         Ganw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=vXqujToGTmgvsPWDAD2FFtqB0r59GBUZNJn8mgBT7xQ=;
        b=TNDW6L6jK4CAFPHHGF0IsuBuaT3qSi4zj3k10zZdj7p1pC7wrhhA+MAoTGv4FoFrDo
         W8Hg2KyDNBqEvLuQf7ClLR5mbqOUm41cT9b8JA7DSJ7qf7QbVFD8GHVwvJcCVSFxtYN3
         Zl2nGcsUKTMPlEb4/nEgU002dh/7BxCdIaif93DUWSjjcW80UsDeYA9NlJiTqEEveWc3
         zjT1GDmXMXL2+HN/DW40GwMp3lk4SqNEnkWtdN3lMi7Y+mGmqRJHRz68H6ZZrN/JCmt8
         izoaWrK/F4jU9EqfXTc9NsdME3QzrWlyrH0grdn+sB1nGFqJ1nzKf+u2wtPFkvaaGZoi
         83+w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532ApDl97vUfDr6+7v511uv50tUMDMt5rbjz3wl2Jbe4rrwplWJs
	P97dZCANglg/Dt671nbVed0=
X-Google-Smtp-Source: ABdhPJy8vckPdVLQrjEO3Wg+6cxO9Bw/6K575GQTu5rh4Z5bUap2yuZpmZFMzRvrYvN3aJSmjnm+ug==
X-Received: by 2002:a05:6830:314b:: with SMTP id c11mr16550360ots.169.1631648263013;
        Tue, 14 Sep 2021 12:37:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:53d2:: with SMTP id h201ls2330925oib.0.gmail; Tue, 14
 Sep 2021 12:37:42 -0700 (PDT)
X-Received: by 2002:aca:abd7:: with SMTP id u206mr2704644oie.37.1631648262645;
        Tue, 14 Sep 2021 12:37:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631648262; cv=none;
        d=google.com; s=arc-20160816;
        b=qdOHcGmwri/3RLfGTJtDHIvz2D5keI3BewScu4GIQsH4S/eo6yyeYHWn8Hm4K0zuCZ
         ST/9JbSQc1EOWA3Zkpq4+dXRKGhjnnhUzkEcA25oahkKjC4dAh8w5NeU2OzxK+Eva9jT
         hUsVN4dfT2buKhDv6CZ/dMsd6xiHZy2jgdiT1vmkdBvOzoz82tSq4pKOi9+WeXRvf1Ib
         9BVK6qISQAoFCZby8dBJ83Sc7f5usz6QfC5zavOuDFaOBxeyQynF+p7t8ADYyYfLGsq1
         fDFRSpMPkvlJ4vtdKu5eeGC5fAOqA2aBOPR7nMYPQqUnViu7r68vuMlQc+kaZDXcdfNF
         YBnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=EaW35x72GNh4jI/yVERXrJlTV6ZAnW2fqMDnsImY8/4=;
        b=VUR1/UzoTvG2TeZYsnxkRnPPvYZVf4dlKckcnTRxAUqVLnxgdLf7IAJ3fCYMzj/bfo
         SqAYiqu4SVL7c3Akn6WRYqAxY2G2YtRUqiAAVwzgJbKWFRETpuFm0SxiADRj7jQ772BX
         PngPsLOWtlO3qCAJCqGsR6GhWcGqPADpf7ZaTYDOD/9a/RN+95yKAsmZunrVRCSceX5m
         ZhSh/pAq4lqZLJMtR1/hCrGzSkJ2z0IKNrQfNnu8HCSqNqHu9HqHUdB53Tr3eZWyPbkR
         LIXv0G6cLKmjLGz7IyoR4YbZ9a5tkIXXS4531/0JTnltxBSOa2Kxi1ISeiMGT80xSg7A
         RmUg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=OSKuSjLo;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::532 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x532.google.com (mail-pg1-x532.google.com. [2607:f8b0:4864:20::532])
        by gmr-mx.google.com with ESMTPS id v21si1000138oto.0.2021.09.14.12.37.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Sep 2021 12:37:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::532 as permitted sender) client-ip=2607:f8b0:4864:20::532;
Received: by mail-pg1-x532.google.com with SMTP id u18so274670pgf.0
        for <clang-built-linux@googlegroups.com>; Tue, 14 Sep 2021 12:37:42 -0700 (PDT)
X-Received: by 2002:a62:4dc5:0:b0:438:8133:fcef with SMTP id a188-20020a624dc5000000b004388133fcefmr6457410pfb.44.1631648261915;
        Tue, 14 Sep 2021 12:37:41 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id p30sm11328125pfh.116.2021.09.14.12.37.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Sep 2021 12:37:41 -0700 (PDT)
Date: Tue, 14 Sep 2021 12:37:40 -0700
From: Kees Cook <keescook@chromium.org>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: x86@kernel.org, Josh Poimboeuf <jpoimboe@redhat.com>,
	Peter Zijlstra <peterz@infradead.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	linux-hardening@vger.kernel.org, linux-kernel@vger.kernel.org,
	clang-built-linux@googlegroups.com
Subject: Re: [PATCH v3 10/16] x86/extable: Mark handlers __cficanonical
Message-ID: <202109141235.BE65491A4@keescook>
References: <20210914191045.2234020-1-samitolvanen@google.com>
 <20210914191045.2234020-11-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210914191045.2234020-11-samitolvanen@google.com>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=OSKuSjLo;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::532
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

On Tue, Sep 14, 2021 at 12:10:39PM -0700, Sami Tolvanen wrote:
> Exception tables are populated in assembly code, but the handlers are
> called in fixup_exception, which trips indirect call checking with
> CONFIG_CFI_CLANG. Mark the handlers __cficanonical to allow addresses
> taken in assembly to pass CFI checking.
> 
> Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> ---
>  arch/x86/mm/extable.c | 64 ++++++++++++++++++++++++-------------------
>  1 file changed, 36 insertions(+), 28 deletions(-)
> 
> diff --git a/arch/x86/mm/extable.c b/arch/x86/mm/extable.c
> index e1664e9f969c..d16912dcbb4e 100644
> --- a/arch/x86/mm/extable.c
> +++ b/arch/x86/mm/extable.c
> @@ -24,16 +24,18 @@ ex_fixup_handler(const struct exception_table_entry *x)
>  	return (ex_handler_t)((unsigned long)&x->handler + x->handler);
>  }
>  
> -__visible bool ex_handler_default(const struct exception_table_entry *fixup,
> -				  struct pt_regs *regs, int trapnr,
> -				  unsigned long error_code,
> -				  unsigned long fault_addr)
> +__visible __cficanonical
> +bool ex_handler_default(const struct exception_table_entry *fixup,
> +			struct pt_regs *regs, int trapnr,
> +			unsigned long error_code,
> +			unsigned long fault_addr)
>  {
>  	regs->ip = ex_fixup_addr(fixup);
>  	return true;
>  }
>  EXPORT_SYMBOL(ex_handler_default);
>  
> +__visible __cficanonical
>  __visible bool ex_handler_fault(const struct exception_table_entry *fixup,

Double __visible here, but with that fixed:

Reviewed-by: Kees Cook <keescook@chromium.org>

I would note that given Linus's recent comments on attribute locations,
it does seem that __cficanonical is more a function behavior attribute
than a storage class... I'm not really sure:
https://lore.kernel.org/mm-commits/CAHk-=wiOCLRny5aifWNhr621kYrJwhfURsa0vFPeUEm8mF0ufg@mail.gmail.com

-Kees

>  				struct pt_regs *regs, int trapnr,
>  				unsigned long error_code,
> @@ -55,10 +57,11 @@ EXPORT_SYMBOL_GPL(ex_handler_fault);
>   * of vulnerability by restoring from the initial state (essentially, zeroing
>   * out all the FPU registers) if we can't restore from the task's FPU state.
>   */
> -__visible bool ex_handler_fprestore(const struct exception_table_entry *fixup,
> -				    struct pt_regs *regs, int trapnr,
> -				    unsigned long error_code,
> -				    unsigned long fault_addr)
> +__visible __cficanonical
> +bool ex_handler_fprestore(const struct exception_table_entry *fixup,
> +			  struct pt_regs *regs, int trapnr,
> +			  unsigned long error_code,
> +			  unsigned long fault_addr)
>  {
>  	regs->ip = ex_fixup_addr(fixup);
>  
> @@ -70,10 +73,11 @@ __visible bool ex_handler_fprestore(const struct exception_table_entry *fixup,
>  }
>  EXPORT_SYMBOL_GPL(ex_handler_fprestore);
>  
> -__visible bool ex_handler_uaccess(const struct exception_table_entry *fixup,
> -				  struct pt_regs *regs, int trapnr,
> -				  unsigned long error_code,
> -				  unsigned long fault_addr)
> +__visible __cficanonical
> +bool ex_handler_uaccess(const struct exception_table_entry *fixup,
> +			struct pt_regs *regs, int trapnr,
> +			unsigned long error_code,
> +			unsigned long fault_addr)
>  {
>  	WARN_ONCE(trapnr == X86_TRAP_GP, "General protection fault in user access. Non-canonical address?");
>  	regs->ip = ex_fixup_addr(fixup);
> @@ -81,10 +85,11 @@ __visible bool ex_handler_uaccess(const struct exception_table_entry *fixup,
>  }
>  EXPORT_SYMBOL(ex_handler_uaccess);
>  
> -__visible bool ex_handler_copy(const struct exception_table_entry *fixup,
> -			       struct pt_regs *regs, int trapnr,
> -			       unsigned long error_code,
> -			       unsigned long fault_addr)
> +__visible __cficanonical
> +bool ex_handler_copy(const struct exception_table_entry *fixup,
> +		     struct pt_regs *regs, int trapnr,
> +		     unsigned long error_code,
> +		     unsigned long fault_addr)
>  {
>  	WARN_ONCE(trapnr == X86_TRAP_GP, "General protection fault in user access. Non-canonical address?");
>  	regs->ip = ex_fixup_addr(fixup);
> @@ -93,10 +98,11 @@ __visible bool ex_handler_copy(const struct exception_table_entry *fixup,
>  }
>  EXPORT_SYMBOL(ex_handler_copy);
>  
> -__visible bool ex_handler_rdmsr_unsafe(const struct exception_table_entry *fixup,
> -				       struct pt_regs *regs, int trapnr,
> -				       unsigned long error_code,
> -				       unsigned long fault_addr)
> +__visible __cficanonical
> +bool ex_handler_rdmsr_unsafe(const struct exception_table_entry *fixup,
> +			     struct pt_regs *regs, int trapnr,
> +			     unsigned long error_code,
> +			     unsigned long fault_addr)
>  {
>  	if (pr_warn_once("unchecked MSR access error: RDMSR from 0x%x at rIP: 0x%lx (%pS)\n",
>  			 (unsigned int)regs->cx, regs->ip, (void *)regs->ip))
> @@ -110,10 +116,11 @@ __visible bool ex_handler_rdmsr_unsafe(const struct exception_table_entry *fixup
>  }
>  EXPORT_SYMBOL(ex_handler_rdmsr_unsafe);
>  
> -__visible bool ex_handler_wrmsr_unsafe(const struct exception_table_entry *fixup,
> -				       struct pt_regs *regs, int trapnr,
> -				       unsigned long error_code,
> -				       unsigned long fault_addr)
> +__visible __cficanonical
> +bool ex_handler_wrmsr_unsafe(const struct exception_table_entry *fixup,
> +			     struct pt_regs *regs, int trapnr,
> +			     unsigned long error_code,
> +			     unsigned long fault_addr)
>  {
>  	if (pr_warn_once("unchecked MSR access error: WRMSR to 0x%x (tried to write 0x%08x%08x) at rIP: 0x%lx (%pS)\n",
>  			 (unsigned int)regs->cx, (unsigned int)regs->dx,
> @@ -126,10 +133,11 @@ __visible bool ex_handler_wrmsr_unsafe(const struct exception_table_entry *fixup
>  }
>  EXPORT_SYMBOL(ex_handler_wrmsr_unsafe);
>  
> -__visible bool ex_handler_clear_fs(const struct exception_table_entry *fixup,
> -				   struct pt_regs *regs, int trapnr,
> -				   unsigned long error_code,
> -				   unsigned long fault_addr)
> +__visible __cficanonical
> +bool ex_handler_clear_fs(const struct exception_table_entry *fixup,
> +			 struct pt_regs *regs, int trapnr,
> +			 unsigned long error_code,
> +			 unsigned long fault_addr)
>  {
>  	if (static_cpu_has(X86_BUG_NULL_SEG))
>  		asm volatile ("mov %0, %%fs" : : "rm" (__USER_DS));
> -- 
> 2.33.0.309.g3052b89438-goog
> 

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202109141235.BE65491A4%40keescook.
