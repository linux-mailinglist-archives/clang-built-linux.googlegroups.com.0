Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBVUGZ73QKGQEE56HH5Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd37.google.com (mail-io1-xd37.google.com [IPv6:2607:f8b0:4864:20::d37])
	by mail.lfdr.de (Postfix) with ESMTPS id 01F56207E5B
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 23:19:20 +0200 (CEST)
Received: by mail-io1-xd37.google.com with SMTP id b3sf2403935ion.17
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 14:19:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593033559; cv=pass;
        d=google.com; s=arc-20160816;
        b=WfDwVd84Wt6B9JT0oRc/Jnm1k+FcxEfyWoXTRJdedx7wfeYRaQhfAgcSfvPFME6aeG
         QYhm7MEYtw4vJjFfKIbzjTSbWztUSA/4ueH70WHs/2cQbCQxHp0TaIZMfDeqMQIDgzEi
         G9e0EFyGvBjv5lhkhheIoADP14LV+YVaRGRPwzY0zzLN5OacnKVjEcHxrwtMpJzRcF/j
         hPvxfYEkgRg+2Eb5EpnDqKJ1V8m1OGPNo1mTxUoCfzcF+OLpj+5RokKIth/nI78juCYX
         RZZ8OmX3+0wKamKfzhhj9hGiCtB7JjZZYt6xgzbqBj3ynqCReAmqnlfw30kNAC/n4pRu
         aO6g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=ttaVAyECCJa/oatVhCWt/XJP4movhsaicMyNi0u6hMo=;
        b=SbTj6Kk/vNOwelZcSOZ102Ag4+awiuAfN3eQVn1g75fq0oHQdhWORTXUyqWDPTRwHu
         TInLyWSHkl2T+cKXTwzqOKVwEW8MbIpWyKIpEGhZwP/w5khBfyz28GcKAaScoko99kwy
         MY1ukV1lpp1GyHWi8n2aDIuvM399VN8GdAN8SaJvnIbxk0eCwF9/K4HkF3rFfHbN2dJH
         CifDM+bVcFSYGNDNYcMch2+2Fwicd6RxLAY1vy8utauGHsg3kGOyBL0pz/Z58gV1HKC9
         78Y8UvHxTi8X9Qq1dYfGRqE+gVDczSwg7dFKQuRVhzRSqwm2bGrqdjERzxD6FvQ0zVJB
         nxiw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=UTizqW0a;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ttaVAyECCJa/oatVhCWt/XJP4movhsaicMyNi0u6hMo=;
        b=e1L3mDD3eAFQItzLL+67Ldrv8BdnrT9tKzsm+H3wncb7qxZkfpCuSVcMS1+oNkZIzS
         7/v/xH2AnVpuDyR+cnBg5rob0+Qgz5qcfcRTQ2uFEA4+vaHpHe5JwMvwTznc71/MM+pe
         AAmT2hDJDuJN3YDgZPiLhBjmZ0ikhn0LksUasaoyWVjX87uiag4verFY3Y7DQGQ4wg7j
         ds9LXZjT1oJC+WJY4EsrbwlU/ITNBX1ET7EY+iRBeWy+MlIfccZ5t66YjWfDyKiBzMg3
         AFJAk711sfAYXZNX+ZeO/elAZ/zDyoYA4rwCaa6YyYBEv4zn35l6XC3cv9W0gNE+Dt3C
         DzeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ttaVAyECCJa/oatVhCWt/XJP4movhsaicMyNi0u6hMo=;
        b=TnYO/jrjj8Ey6Iw3PwxLN2iXQlaWLXTbyxvpEG67QJWYOxXD17BTUQDkkbVAfQjjNj
         wBX98DM60LWL6DTO8F1z7nRicgIzlpWXoKsrK7bU0uvhXg9qI9osnqf8gQEmZgZt2eZ9
         fW0kJwL7/moYn9tB6pmFoG5k05UeMPfRALtbzNq0BB6sysIIKVevriR3smMEIU/hvscP
         aPG290OJHCc+yDqxUyQ8FZu+ysViSr0z7phXSgDP+SunCSdenyU0UhOIwbPHukwMeJzz
         gquboXAHPQRqcPCldgmR0eQdSGZMm+e5Ug8KrjoPEERuwADDLtkdUzpbozG9VLWhshpJ
         v1zg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532FKmbeBBuzrTmR55ygKenG4MoePy1eOIAAVS+UQ+cZEozcm5G0
	jCjSBwNU0Wc0llgfTAQVbEw=
X-Google-Smtp-Source: ABdhPJyf294vslctM6gvRcmkK1A5UKTwlFwSh/fIYJ+phCShkK0dl1nZjQufkFZgsqDBWWuY2G9oVQ==
X-Received: by 2002:a02:3c08:: with SMTP id m8mr6199277jaa.107.1593033558885;
        Wed, 24 Jun 2020 14:19:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:c002:: with SMTP id q2ls967899ild.4.gmail; Wed, 24 Jun
 2020 14:19:18 -0700 (PDT)
X-Received: by 2002:a92:d38b:: with SMTP id o11mr30685598ilo.47.1593033558630;
        Wed, 24 Jun 2020 14:19:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593033558; cv=none;
        d=google.com; s=arc-20160816;
        b=JsbEXYpGnHMA6YCfIre11jMmSfrK52P9RfJ/SdFoDMur0RrvwNUBblQjOZ5eEbFTy0
         0HrqOhZgwBYaLmq5JCgxKzZ7PQKmHm53d6oaXwryEmVXlkBFMbDK7ThQhuA7KD7LX1y3
         PotL22jQQPWXcOK8265TB2jLvOP0z+Bq27YfR76EY1Q1R+y+sD7pjvNzcQxEb2ccyylx
         vBpuFraobQFk6DkJ8mlK6udyigkxdbT3SN2sbcbnf6LMGE+5gOAK8paF0miwPKi4R0x4
         Km4LvYKUs2ylrPkeKCINY8gT1HfcVcxj0dDwZPjQ/pg3KapBSrzQq/48QqgDu3M5G463
         Gfcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=hjSR6mlsTCk7g8v7G12vqP6vdQOVg8YnQ0fK9Qe8YIs=;
        b=FGWloriguQRxY+JeL3zUPHgQ3WPf85k32urhNtSyOvb3S5lKG6SRt5/XzxULtXPmwc
         g8sAi2GGiCt3ASLUqt2Qmh/gw/c1rVolvtT0+jYw5TL057B2z+3khc5Jj59xJoABl2Lf
         d7NihqaT4qNPDIKw2kpG38V2wrqveWL7pAcOfrdbg20J2JUZLvj5rfhQ/HOVj41WQ0hg
         pwgpd2qVe56iYlnNQsOWxRyy9NFZxHrAOXcCsMLxNcLhjwgO3oHNmGkhMjuUZLv9dugm
         vMJ0b7qzR81L+4rYnhlZiwuTJMG8gms/x+vp+FQXlYtpXgO5BzqorNXYukO4FxDDKoJX
         uOsQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=UTizqW0a;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from merlin.infradead.org (merlin.infradead.org. [2001:8b0:10b:1231::1])
        by gmr-mx.google.com with ESMTPS id r8si738860ilg.1.2020.06.24.14.19.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Jun 2020 14:19:16 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) client-ip=2001:8b0:10b:1231::1;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1joCnY-00044a-JS; Wed, 24 Jun 2020 21:19:12 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 16F79304B6D;
	Wed, 24 Jun 2020 23:19:09 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id 0438524C09497; Wed, 24 Jun 2020 23:19:08 +0200 (CEST)
Date: Wed, 24 Jun 2020 23:19:08 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Sami Tolvanen <samitolvanen@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Kees Cook <keescook@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com, linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	x86@kernel.org
Subject: Re: [PATCH 05/22] kbuild: lto: postpone objtool
Message-ID: <20200624211908.GT4817@hirez.programming.kicks-ass.net>
References: <20200624203200.78870-1-samitolvanen@google.com>
 <20200624203200.78870-6-samitolvanen@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200624203200.78870-6-samitolvanen@google.com>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=merlin.20170209 header.b=UTizqW0a;
       spf=pass (google.com: best guess record for domain of
 peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
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

On Wed, Jun 24, 2020 at 01:31:43PM -0700, Sami Tolvanen wrote:
> diff --git a/include/linux/compiler.h b/include/linux/compiler.h
> index 30827f82ad62..12b115152532 100644
> --- a/include/linux/compiler.h
> +++ b/include/linux/compiler.h
> @@ -120,7 +120,7 @@ void ftrace_likely_update(struct ftrace_likely_data *f, int val,
>  /* Annotate a C jump table to allow objtool to follow the code flow */
>  #define __annotate_jump_table __section(.rodata..c_jump_table)
>  
> -#ifdef CONFIG_DEBUG_ENTRY
> +#if defined(CONFIG_DEBUG_ENTRY) || defined(CONFIG_LTO_CLANG)
>  /* Begin/end of an instrumentation safe region */
>  #define instrumentation_begin() ({					\
>  	asm volatile("%c0:\n\t"						\

Why would you be doing noinstr validation for lto builds? That doesn't
make sense.

> diff --git a/lib/Kconfig.debug b/lib/Kconfig.debug
> index 9ad9210d70a1..9fdba71c135a 100644
> --- a/lib/Kconfig.debug
> +++ b/lib/Kconfig.debug
> @@ -399,7 +399,7 @@ config STACK_VALIDATION
>  
>  config VMLINUX_VALIDATION
>  	bool
> -	depends on STACK_VALIDATION && DEBUG_ENTRY && !PARAVIRT
> +	depends on STACK_VALIDATION && (DEBUG_ENTRY || LTO_CLANG) && !PARAVIRT
>  	default y
>  

For that very same reason you shouldn't be excluding paravirt either.

> diff --git a/scripts/Makefile.modfinal b/scripts/Makefile.modfinal
> index d168f0cfe67c..9f1df2f1fab5 100644
> --- a/scripts/Makefile.modfinal
> +++ b/scripts/Makefile.modfinal
> @@ -48,6 +48,21 @@ endif # CC_USING_PATCHABLE_FUNCTION_ENTRY
>  endif # CC_USING_RECORD_MCOUNT
>  endif # CONFIG_FTRACE_MCOUNT_RECORD
>  
> +ifdef CONFIG_STACK_VALIDATION
> +ifneq ($(SKIP_STACK_VALIDATION),1)
> +cmd_ld_ko_o +=								\
> +	$(objtree)/tools/objtool/objtool				\
> +		$(if $(CONFIG_UNWINDER_ORC),orc generate,check)		\
> +		--module						\
> +		$(if $(CONFIG_FRAME_POINTER),,--no-fp)			\
> +		$(if $(CONFIG_GCOV_KERNEL),--no-unreachable,)		\
> +		$(if $(CONFIG_RETPOLINE),--retpoline,)			\
> +		$(if $(CONFIG_X86_SMAP),--uaccess,)			\
> +		$(@:.ko=$(prelink-ext).o);
> +
> +endif # SKIP_STACK_VALIDATION
> +endif # CONFIG_STACK_VALIDATION

What about the objtool invocation from link-vmlinux.sh ?

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200624211908.GT4817%40hirez.programming.kicks-ass.net.
