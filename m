Return-Path: <clang-built-linux+bncBCR5PSMFZYORBHN57WEAMGQEDYWUWQQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73c.google.com (mail-qk1-x73c.google.com [IPv6:2607:f8b0:4864:20::73c])
	by mail.lfdr.de (Postfix) with ESMTPS id 05B6A3F27DC
	for <lists+clang-built-linux@lfdr.de>; Fri, 20 Aug 2021 09:49:51 +0200 (CEST)
Received: by mail-qk1-x73c.google.com with SMTP id g73-20020a379d4c000000b003d3ed03ca28sf5913051qke.23
        for <lists+clang-built-linux@lfdr.de>; Fri, 20 Aug 2021 00:49:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629445790; cv=pass;
        d=google.com; s=arc-20160816;
        b=eJQpFnebS0fk/AShEO7Y8Ug5gKbL4WwZm9/M8ZKTEgdryQ44A6bxErnrhwBBsXGEJK
         BdCmDT+OPDaqK8AaJJuEIlPlqDVy4SNJfWkSOj60ma3BVb3ZQ0+gAjXJrW6OviOoBOls
         EJYy6CVCK3BPx0oZG9g4sepJyiq1kbLlhzlME/uh7OuF8gwlzHNG25guMBj3l3UdtHNw
         Wg2dg1xaU3rcR7S4BtVkxG2fsmbn/R7G2JeV6WzlHLpZ9aY1zGV+BTYAla/SGrqf7SjN
         qIRTDJHQDGfCpTSQcU8lqcM+CFt4XNH+f8VLwMhM7YLD+LpbszhZhoamOuhpkJXjKfj/
         DH/w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=ptLwyocuySX9BKqZ3J7eKe5LCatMh6cXfZ+AMZdkWGs=;
        b=t2dFoAkRe8iDdTaSpzvQ4YGZbF8d/v0awJnLiqFEoUrq+OXjclHwjHRCyb/1SyFcGK
         O37xFQsFLA/hqW7gZeMlGbF+2ihp1A/dpxmYXsomhzcNizRZDb9SYnlyPHeyvWIk+kSG
         rf5qAD5l+K1qZP6HbcU+7sqQw/HRtfDfN656YGt1NyEnD2cLMK0uTGwnNMvOJN7UrNdf
         5oX8dJCYMFrfIiqqWDtkI+YqW/qzsKGoPhIPMEqGZhj/mlh52NUOXU+EoImmXbSmNjvd
         Hr342ioEfrwDOC6qAq29ucXau894c+/kx1HtJbYwby+q1toBhR5T8Vw3qR5T+rIu0w60
         AtlA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ellerman.id.au header.s=201909 header.b=Z88hVJCh;
       spf=pass (google.com: domain of mpe@ellerman.id.au designates 2401:3900:2:1::2 as permitted sender) smtp.mailfrom=mpe@ellerman.id.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ptLwyocuySX9BKqZ3J7eKe5LCatMh6cXfZ+AMZdkWGs=;
        b=XEg+2G72BVbXBXX1ZmygaO8G2k1cNdK/4IBe/Dc6vlkyQwgVDjWHs5zBF81bYfmnuy
         RrMUo9mhAPEGWxqAr+obTKD9C4tV38Ql7/El/8D0wWkk9BfkxuAcQY/FP2sWmB1xq01D
         1xAt2rxP4p06+P6uT8T7ENDTekTqdvpSt0p60Arx+/lbzFh3PQif62bKtCFiwYJsHyUv
         ATW+dPq64/CK7FtJCbcM62IYfVSF2ZyOA5PL8uAQs2ZtQTtBNm0XLLG8WXCK2ILEFbRk
         UjCWQmvsXXA17LdKNUo19OsiwhIB1yeLIu2XXVybOnKTd8bsSR6kyz3xbdLUYv+/XAq1
         VcOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ptLwyocuySX9BKqZ3J7eKe5LCatMh6cXfZ+AMZdkWGs=;
        b=N8uNcRAfeTiA/9thxwr3CbzXMELnHvZoTmVedmKjzBrW0fQp4pU1XOLxxvQjOtypcR
         0FGfgf6GTdN1nCRsQOET57Tqz50g3algLK2UgWH4bCi95VJO7yMWC6BmF0MfRbdOBn7a
         BAyr+UqujvzO0K0ZOGqOV54xEREL/r/ZMWyncAneSCaOf3MJKOndc4YA/Z4LWFr5FOgi
         sfZzEyi8NSpuJbLg9Yv1vm8OuCzFFAAxc57X8CF3w8DB7qA+USgNDXYfsHlXLJ1Q38iA
         Y8Y89nxKuFet1gdA3/Ub0aSpUx2wrfewREKx/JDBwxVZZZ4lV/VbVkia+0i97R5MB461
         UxmA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533D5XBf3TCscAP+RIPMq49d4cnkPmx/ZOxDrHjJT/rBolGpiNWh
	0c8Xy//uQzVsvhTIakNvyFc=
X-Google-Smtp-Source: ABdhPJyzqxgaIkpXjUkTpbLdpW7RUTW93SEmM95PDjRvrl8oKRAw57rkyx1k4dDv0kY8tEGH82aZ5Q==
X-Received: by 2002:ac8:5450:: with SMTP id d16mr16458297qtq.249.1629445789883;
        Fri, 20 Aug 2021 00:49:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:e5ca:: with SMTP id u10ls2349217qvm.8.gmail; Fri, 20 Aug
 2021 00:49:49 -0700 (PDT)
X-Received: by 2002:a05:6214:301d:: with SMTP id ke29mr18764744qvb.45.1629445789308;
        Fri, 20 Aug 2021 00:49:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629445789; cv=none;
        d=google.com; s=arc-20160816;
        b=DEpjBH94uI7zwzFnq/Q99A5obrEakYQL/patLwSBlPr1UuNUc98iaVShtrQJnlA69R
         s5TOFUmFKa3f0BLgnPYABVg3pbrrzqxfCn06iRUm32FyhXL5RzrzIsn6MDTRdmmDiOBG
         CGe54BuvzoUMW7DCSHGfe+3EvR1bkC2mxzoAmBHXjOwqkwte2PkExsZRBBlrh/7dbKYq
         wXZMm2K8N0SyUF2Ma7MjHvZX6VsIsv01/MEax9hKHg/oXcRwCWvdXdldm9G3D/7UpkG8
         MWTd3MrH6pjy9N6sNyr5knSi61HQW21NL8WgYgepoo0LuHsJSuZ6FbN2qAFwPPe2OjLO
         VF0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:dkim-signature;
        bh=J88K3uaWPTCJyDGiM5or1YoD8rBCAEgZEcryK0u/Zo8=;
        b=TCjj992W+0P6CTzBsEVFLfXVZwPwPIHGzPHW1U1jfXnBpIUe4W/cqWw9BXn3jJjne4
         2SrwCdVheQMVTxnAgnu41ToVpPznMLUw8plJ3TcBM8z9vf8UFoMGmPuVZsb6wGuc0d3z
         idvUXpo/lcglCrDGKGkFrjduo8nGiTjoIvhRhpz2RL+jxI2CM8ObBKmUc5/Nb/thSAn7
         I1RlryJ7HI781V5HJcqRjUQhosM+IsxMVtjxt903GzmUcRZDNTKilh48tf5xe4Ct+mof
         EJi+z52dVZLO1aBM1RRmuq86fN/ttW7CjUwlxz17wtuMzPMg3W7vreiNQQfn8A0HHZYt
         TdzQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ellerman.id.au header.s=201909 header.b=Z88hVJCh;
       spf=pass (google.com: domain of mpe@ellerman.id.au designates 2401:3900:2:1::2 as permitted sender) smtp.mailfrom=mpe@ellerman.id.au
Received: from ozlabs.org (ozlabs.org. [2401:3900:2:1::2])
        by gmr-mx.google.com with ESMTPS id n78si313164qkn.1.2021.08.20.00.49.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Aug 2021 00:49:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of mpe@ellerman.id.au designates 2401:3900:2:1::2 as permitted sender) client-ip=2401:3900:2:1::2;
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.ozlabs.org (Postfix) with ESMTPSA id 4GrYgn1dHhz9sW5;
	Fri, 20 Aug 2021 17:49:41 +1000 (AEST)
From: Michael Ellerman <mpe@ellerman.id.au>
To: Kees Cook <keescook@chromium.org>, linux-kernel@vger.kernel.org
Cc: Kees Cook <keescook@chromium.org>, Benjamin Herrenschmidt
 <benh@kernel.crashing.org>, Paul Mackerras <paulus@samba.org>, Christophe
 Leroy <christophe.leroy@csgroup.eu>, Sudeep Holla <sudeep.holla@arm.com>,
 linuxppc-dev@lists.ozlabs.org, kernel test robot <lkp@intel.com>, "Gustavo
 A. R. Silva" <gustavoars@kernel.org>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Andrew Morton <akpm@linux-foundation.org>,
 linux-wireless@vger.kernel.org, netdev@vger.kernel.org,
 dri-devel@lists.freedesktop.org, linux-staging@lists.linux.dev,
 linux-block@vger.kernel.org, linux-kbuild@vger.kernel.org,
 clang-built-linux@googlegroups.com, Rasmus Villemoes
 <linux@rasmusvillemoes.dk>, linux-hardening@vger.kernel.org
Subject: Re: [PATCH v2 57/63] powerpc/signal32: Use struct_group() to zero
 spe regs
In-Reply-To: <20210818060533.3569517-58-keescook@chromium.org>
References: <20210818060533.3569517-1-keescook@chromium.org>
 <20210818060533.3569517-58-keescook@chromium.org>
Date: Fri, 20 Aug 2021 17:49:35 +1000
Message-ID: <877dggeesw.fsf@mpe.ellerman.id.au>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: mpe@ellerman.id.au
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ellerman.id.au header.s=201909 header.b=Z88hVJCh;       spf=pass
 (google.com: domain of mpe@ellerman.id.au designates 2401:3900:2:1::2 as
 permitted sender) smtp.mailfrom=mpe@ellerman.id.au
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

Kees Cook <keescook@chromium.org> writes:
> In preparation for FORTIFY_SOURCE performing compile-time and run-time
> field bounds checking for memset(), avoid intentionally writing across
> neighboring fields.
>
> Add a struct_group() for the spe registers so that memset() can correctly reason
> about the size:
>
>    In function 'fortify_memset_chk',
>        inlined from 'restore_user_regs.part.0' at arch/powerpc/kernel/signal_32.c:539:3:
>>> include/linux/fortify-string.h:195:4: error: call to '__write_overflow_field' declared with attribute warning: detected write beyond size of field (1st parameter); maybe use struct_group()? [-Werror=attribute-warning]
>      195 |    __write_overflow_field();
>          |    ^~~~~~~~~~~~~~~~~~~~~~~~
>
> Cc: Michael Ellerman <mpe@ellerman.id.au>
> Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>
> Cc: Paul Mackerras <paulus@samba.org>
> Cc: Christophe Leroy <christophe.leroy@csgroup.eu>
> Cc: Sudeep Holla <sudeep.holla@arm.com>
> Cc: linuxppc-dev@lists.ozlabs.org
> Reported-by: kernel test robot <lkp@intel.com>
> Signed-off-by: Kees Cook <keescook@chromium.org>
> ---
>  arch/powerpc/include/asm/processor.h | 6 ++++--
>  arch/powerpc/kernel/signal_32.c      | 6 +++---
>  2 files changed, 7 insertions(+), 5 deletions(-)
>
> diff --git a/arch/powerpc/include/asm/processor.h b/arch/powerpc/include/asm/processor.h
> index f348e564f7dd..05dc567cb9a8 100644
> --- a/arch/powerpc/include/asm/processor.h
> +++ b/arch/powerpc/include/asm/processor.h
> @@ -191,8 +191,10 @@ struct thread_struct {
>  	int		used_vsr;	/* set if process has used VSX */
>  #endif /* CONFIG_VSX */
>  #ifdef CONFIG_SPE
> -	unsigned long	evr[32];	/* upper 32-bits of SPE regs */
> -	u64		acc;		/* Accumulator */
> +	struct_group(spe,
> +		unsigned long	evr[32];	/* upper 32-bits of SPE regs */
> +		u64		acc;		/* Accumulator */
> +	);
>  	unsigned long	spefscr;	/* SPE & eFP status */
>  	unsigned long	spefscr_last;	/* SPEFSCR value on last prctl
>  					   call or trap return */
> diff --git a/arch/powerpc/kernel/signal_32.c b/arch/powerpc/kernel/signal_32.c
> index 0608581967f0..77b86caf5c51 100644
> --- a/arch/powerpc/kernel/signal_32.c
> +++ b/arch/powerpc/kernel/signal_32.c
> @@ -532,11 +532,11 @@ static long restore_user_regs(struct pt_regs *regs,
>  	regs_set_return_msr(regs, regs->msr & ~MSR_SPE);
>  	if (msr & MSR_SPE) {
>  		/* restore spe registers from the stack */
> -		unsafe_copy_from_user(current->thread.evr, &sr->mc_vregs,
> -				      ELF_NEVRREG * sizeof(u32), failed);
> +		unsafe_copy_from_user(&current->thread.spe, &sr->mc_vregs,
> +				      sizeof(current->thread.spe), failed);

This makes me nervous, because the ABI is that we copy ELF_NEVRREG *
sizeof(u32) bytes, not whatever sizeof(current->thread.spe) happens to
be.

ie. if we use sizeof an inadvertent change to the fields in
thread_struct could change how many bytes we copy out to userspace,
which would be an ABI break.

And that's not that hard to do, because it's not at all obvious that the
size and layout of fields in thread_struct affects the user ABI.

At the same time we don't want to copy the right number of bytes but
the wrong content, so from that point of view using sizeof is good :)

The way we handle it in ptrace is to have BUILD_BUG_ON()s to verify that
things match up, so maybe we should do that here too.

ie. add:

	BUILD_BUG_ON(sizeof(current->thread.spe) == ELF_NEVRREG * sizeof(u32));


Not sure if you are happy doing that as part of this patch. I can always
do it later if not.

cheers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/877dggeesw.fsf%40mpe.ellerman.id.au.
