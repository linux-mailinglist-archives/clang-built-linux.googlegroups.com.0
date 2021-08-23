Return-Path: <clang-built-linux+bncBCR5PSMFZYORB2WURSEQMGQECPKMXII@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x938.google.com (mail-ua1-x938.google.com [IPv6:2607:f8b0:4864:20::938])
	by mail.lfdr.de (Postfix) with ESMTPS id D23B23F4482
	for <lists+clang-built-linux@lfdr.de>; Mon, 23 Aug 2021 06:56:11 +0200 (CEST)
Received: by mail-ua1-x938.google.com with SMTP id n64-20020ab044c60000b02902ab5cf38d51sf4214277uan.21
        for <lists+clang-built-linux@lfdr.de>; Sun, 22 Aug 2021 21:56:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629694570; cv=pass;
        d=google.com; s=arc-20160816;
        b=R0XOOjGSoVZnOdv1dF1eK2eqsH+uhBvcsZ+b2GHd0e0BuTXT53406RQO0XWNvTHuEv
         B195zKeC/YK2TRteyuVtXQSvuOoB9pmPISBAc1tTcAw6OAq/yj7Ve05tm1IcDNHSq4yL
         HGiC2mEsGfPR1CzofiC7+tieAWQmRm+2TfBnb1X19dlS/7XEZI4kJHoPTeT/gmskXZmj
         Cf0nGSXgYAvMXTytrlM86RQwN1hiHsoPbF10/rpu56t2Yoh0seFfPUWK6lSvaQrudtku
         mSvn0Q68pB3OzhxtbX8bccoJRZKbBjRja9alCc0jSfxDMn2lMsOUgzMtnraTxR/q+Eyz
         qiwg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=Z8Lbp10u3dV60YhdR1QU3R5EkIfELZSRXCIPQ6VvUcE=;
        b=IqeltljrvsNG3jR8XxkxzrrRvS3qpVnS3VQoz8tQZXRfNF7FWWxXv712qZ00kgQwuP
         rX5WWtBR7H8l80jl9TXyVmuOM8DxX5JQR7yX1rlQcfe+tkCiIr3fE0zrbWLU8T0uTDLN
         DH4xxuUkr4fhN7uPOTIyj7OUVwfjHJ5i+/vbVbXcb6/sPNaBa4AnQF0+Qflsj9DVdibN
         W+xhBYQSJSEtpG7Gb+aorw30SZz9ogVq4OXCBqOPjlHuTnS+yVhpPTsNJgm+EwAyixY9
         rsPsAybMHLBgAYVVIOgFCDrV8r5YKtyZ4edfv8nFodJ0jCY1KKgiWfSvUqpb/ap3O5QU
         GN/g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ellerman.id.au header.s=201909 header.b=a1iW2Pt1;
       spf=pass (google.com: domain of mpe@ellerman.id.au designates 2401:3900:2:1::2 as permitted sender) smtp.mailfrom=mpe@ellerman.id.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Z8Lbp10u3dV60YhdR1QU3R5EkIfELZSRXCIPQ6VvUcE=;
        b=tjxOxvbXvlKJyAib/3+xRt48tp+3XbywTcBzzNeUAwy7DytIY4hxFEWPOcs6zFJnQ5
         PQ79NMp/7dpfuXr21dnoMz6/YfXK4f4MiBxzLGuNUF2gD8eE+P6YBd6mx56LWD9m54P+
         ieioBUNaki/eKku6MfX4ZOrGsZYooOPTfrzZu2O8ZKLBRUYr+3kakib4mPHebW9sN9J7
         JMHCbUJ5JTVNmN5Gg3YmRH0yY8uGwFPaAgkrTlRO1gK/ESzDzFwMrI0GwgMxPPcvte/9
         fAgEd0oTxuMPHEO2t87UNUYwiBnG30BdKHRIlXemXs31KXFctYwoRSRHFm+A8lvBl780
         O1qQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Z8Lbp10u3dV60YhdR1QU3R5EkIfELZSRXCIPQ6VvUcE=;
        b=oh6OBCJTIfQlyeOTn88Gq2js7nLak8ARIHVMkbV+V+/5VplnIOgFXib2hwGpLwCnG6
         FxlGOI97Tdob7NomVV75a/EMvSV/uckwks8wIlDBaNwMOfRi9neu1O44zsz1T+W26srg
         SO9b6tUNRi6pI0jgqZQPhPcRBVioxe239lU2WROn8v1oy0xq2T/ZdZ4511O7ZsgeSCTY
         i6e5hubJwWfDE1Cu3W+I7YUuJANv+n5r3QN+tDw4tG+w13R/kuTtDX/kzrjfr72oKTPa
         ugB4TpKEAPDC1meHvtmCVbTIMD3gqAEIzQa3S7YRu5atR08L+WQ90QGTA1OljtBNGPQZ
         jddQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531Sn5AFv75kNFF5pEZDSH/N3siX0X/8xlIdaI4zp8BjlLkixo/5
	/pGaVeKEiyGIPQK6KlKwp1s=
X-Google-Smtp-Source: ABdhPJyKdFZufqbhfRgMomcyqgFd0nAE5pLkWrF36Bzcv5UjRHFgLnoRqRniL3JxLT1vTFkYvdBFqg==
X-Received: by 2002:a1f:b293:: with SMTP id b141mr20487664vkf.3.1629694570647;
        Sun, 22 Aug 2021 21:56:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:c89a:: with SMTP id v26ls2490055vsk.0.gmail; Sun, 22 Aug
 2021 21:56:10 -0700 (PDT)
X-Received: by 2002:a05:6102:a8d:: with SMTP id n13mr22768522vsg.17.1629694570151;
        Sun, 22 Aug 2021 21:56:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629694570; cv=none;
        d=google.com; s=arc-20160816;
        b=ve7vcBlpy17o/RH/na6yLThZvVebzvpFQFdb8gsJE4Dv7DWqLd5nSaXL40s3YFHQMD
         ejIHZz8SQkjh03YPOgTRDOXnAsFLI5p+DoBZFj0XtxxTrcaHofzpnnRhshhVuW2c4Uee
         SzoDZF5Ke6W0AP72kODS79gRdoVTo8PzeTeeodhe+oB9enPuCmIU9IzUEhbQqjCIZqkF
         EUymkJEx1VmC0ZV85wDvEH1L1sEeJ+NUkGl6QBYDJU8S3IKM/0JJjICf0+T0xT/dEL1P
         0x3R4rBnbsOC0Ez1sd2w+pf6PZHHP2S6v9S5NWkb9xYYiYrfrGUrwsXuTIbnAyzvZ5iV
         nDaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:dkim-signature;
        bh=R8PBxC/HynH4xEcQANJCH6rE1jH+u8gsKBuxIbMNLTs=;
        b=WizhLWkRgmi33iAKOZcpjEyBNOo+dk4bevqlvQ0Jx84uExBx8pgaxWnkkNEqQwFrb7
         eTESkME8+qMMld+5Thoz/plnsN3P5M9F0livRksn6Vq1C8wcF/TYO7krV7gZE+YS54Tv
         hoFI46VlF8YkuSfn3yzMh6I4mLYLSkPTlYNZm6wXwFCEzWfH3r+IQF69HWA0SrT9/9bY
         Tv6pmIfYEPOpSNgYmafBTJDH2WQnYrgplKbyeAN7DoXXCm6VMtyUOqeh0IWNqM6uwDOu
         3FE1O+RkMrDGjiJFUrRRWHnGra9SHgm4ya66hVViOvD/2UrLR8t10ijz6JchOJHmalwg
         UzaQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ellerman.id.au header.s=201909 header.b=a1iW2Pt1;
       spf=pass (google.com: domain of mpe@ellerman.id.au designates 2401:3900:2:1::2 as permitted sender) smtp.mailfrom=mpe@ellerman.id.au
Received: from ozlabs.org (bilbo.ozlabs.org. [2401:3900:2:1::2])
        by gmr-mx.google.com with ESMTPS id z25si923641uae.0.2021.08.22.21.56.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Aug 2021 21:56:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of mpe@ellerman.id.au designates 2401:3900:2:1::2 as permitted sender) client-ip=2401:3900:2:1::2;
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.ozlabs.org (Postfix) with ESMTPSA id 4GtKh13JJDz9sWS;
	Mon, 23 Aug 2021 14:56:01 +1000 (AEST)
From: Michael Ellerman <mpe@ellerman.id.au>
To: Kees Cook <keescook@chromium.org>
Cc: linux-kernel@vger.kernel.org, Benjamin Herrenschmidt
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
In-Reply-To: <202108200851.8AF09CDB71@keescook>
References: <20210818060533.3569517-1-keescook@chromium.org>
 <20210818060533.3569517-58-keescook@chromium.org>
 <877dggeesw.fsf@mpe.ellerman.id.au> <202108200851.8AF09CDB71@keescook>
Date: Mon, 23 Aug 2021 14:55:58 +1000
Message-ID: <87k0kcdajl.fsf@mpe.ellerman.id.au>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: mpe@ellerman.id.au
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ellerman.id.au header.s=201909 header.b=a1iW2Pt1;       spf=pass
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
> On Fri, Aug 20, 2021 at 05:49:35PM +1000, Michael Ellerman wrote:
>> Kees Cook <keescook@chromium.org> writes:
>> > In preparation for FORTIFY_SOURCE performing compile-time and run-time
>> > field bounds checking for memset(), avoid intentionally writing across
>> > neighboring fields.
>> >
>> > Add a struct_group() for the spe registers so that memset() can correctly reason
>> > about the size:
>> >
>> >    In function 'fortify_memset_chk',
>> >        inlined from 'restore_user_regs.part.0' at arch/powerpc/kernel/signal_32.c:539:3:
>> >>> include/linux/fortify-string.h:195:4: error: call to '__write_overflow_field' declared with attribute warning: detected write beyond size of field (1st parameter); maybe use struct_group()? [-Werror=attribute-warning]
>> >      195 |    __write_overflow_field();
>> >          |    ^~~~~~~~~~~~~~~~~~~~~~~~
>> >
>> > Cc: Michael Ellerman <mpe@ellerman.id.au>
>> > Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>
>> > Cc: Paul Mackerras <paulus@samba.org>
>> > Cc: Christophe Leroy <christophe.leroy@csgroup.eu>
>> > Cc: Sudeep Holla <sudeep.holla@arm.com>
>> > Cc: linuxppc-dev@lists.ozlabs.org
>> > Reported-by: kernel test robot <lkp@intel.com>
>> > Signed-off-by: Kees Cook <keescook@chromium.org>
>> > ---
>> >  arch/powerpc/include/asm/processor.h | 6 ++++--
>> >  arch/powerpc/kernel/signal_32.c      | 6 +++---
>> >  2 files changed, 7 insertions(+), 5 deletions(-)
>> >
>> > diff --git a/arch/powerpc/include/asm/processor.h b/arch/powerpc/include/asm/processor.h
>> > index f348e564f7dd..05dc567cb9a8 100644
>> > --- a/arch/powerpc/include/asm/processor.h
>> > +++ b/arch/powerpc/include/asm/processor.h
>> > @@ -191,8 +191,10 @@ struct thread_struct {
>> >  	int		used_vsr;	/* set if process has used VSX */
>> >  #endif /* CONFIG_VSX */
>> >  #ifdef CONFIG_SPE
>> > -	unsigned long	evr[32];	/* upper 32-bits of SPE regs */
>> > -	u64		acc;		/* Accumulator */
>> > +	struct_group(spe,
>> > +		unsigned long	evr[32];	/* upper 32-bits of SPE regs */
>> > +		u64		acc;		/* Accumulator */
>> > +	);
>> >  	unsigned long	spefscr;	/* SPE & eFP status */
>> >  	unsigned long	spefscr_last;	/* SPEFSCR value on last prctl
>> >  					   call or trap return */
>> > diff --git a/arch/powerpc/kernel/signal_32.c b/arch/powerpc/kernel/signal_32.c
>> > index 0608581967f0..77b86caf5c51 100644
>> > --- a/arch/powerpc/kernel/signal_32.c
>> > +++ b/arch/powerpc/kernel/signal_32.c
>> > @@ -532,11 +532,11 @@ static long restore_user_regs(struct pt_regs *regs,
>> >  	regs_set_return_msr(regs, regs->msr & ~MSR_SPE);
>> >  	if (msr & MSR_SPE) {
>> >  		/* restore spe registers from the stack */
>> > -		unsafe_copy_from_user(current->thread.evr, &sr->mc_vregs,
>> > -				      ELF_NEVRREG * sizeof(u32), failed);
>> > +		unsafe_copy_from_user(&current->thread.spe, &sr->mc_vregs,
>> > +				      sizeof(current->thread.spe), failed);
>> 
>> This makes me nervous, because the ABI is that we copy ELF_NEVRREG *
>> sizeof(u32) bytes, not whatever sizeof(current->thread.spe) happens to
>> be.
>> 
>> ie. if we use sizeof an inadvertent change to the fields in
>> thread_struct could change how many bytes we copy out to userspace,
>> which would be an ABI break.
>> 
>> And that's not that hard to do, because it's not at all obvious that the
>> size and layout of fields in thread_struct affects the user ABI.
>> 
>> At the same time we don't want to copy the right number of bytes but
>> the wrong content, so from that point of view using sizeof is good :)
>> 
>> The way we handle it in ptrace is to have BUILD_BUG_ON()s to verify that
>> things match up, so maybe we should do that here too.
>> 
>> ie. add:
>> 
>> 	BUILD_BUG_ON(sizeof(current->thread.spe) == ELF_NEVRREG * sizeof(u32));
>> 
>> Not sure if you are happy doing that as part of this patch. I can always
>> do it later if not.
>
> Sounds good to me; I did that in a few other cases in the series where
> the relationships between things seemed tenuous. :) I'll add this (as
> !=) in v3.

Thanks.

cheers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87k0kcdajl.fsf%40mpe.ellerman.id.au.
