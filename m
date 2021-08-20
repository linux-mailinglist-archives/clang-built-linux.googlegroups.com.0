Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBDVB76EAMGQEHAMNLUA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43e.google.com (mail-pf1-x43e.google.com [IPv6:2607:f8b0:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id 35FA93F3048
	for <lists+clang-built-linux@lfdr.de>; Fri, 20 Aug 2021 17:56:00 +0200 (CEST)
Received: by mail-pf1-x43e.google.com with SMTP id n10-20020a056a0007ca00b003e1686a2a52sf4948911pfu.22
        for <lists+clang-built-linux@lfdr.de>; Fri, 20 Aug 2021 08:56:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629474958; cv=pass;
        d=google.com; s=arc-20160816;
        b=pN7tSv8CGi08sVK1Acvt9XI4SwQUk1FKENgMblNLESx+wTxrG+XU6r9X4ce9SaxPh4
         7O+0qDJ1qMW42G32iRWNWMsp3OidX3KntNCKwKVYBl37LnvZNbnCXex1ioK3pzFAngu3
         aKY6JCLdL/+VzFefd63ZvmpMjsnlvskfWT3R1wRsZiYL7xzzkhGvgJC5BCDemvJvLl4t
         ZqPRbnxlqb2e9P8cGlyCCbXJVlVsjWHAYN5eORXrSMCrzQDBgY7BP2DC5FIWa0OjiAf6
         9LGG8fUbeuGohmcHOGz1dNaTmvDsWbnRK8t1AthoyeOVYjCQLaAme3F4ihk0gIByIkSd
         FtEA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=Sgv05yRh7ruOEYxReiv09im7aIAyQD1ZZwLEvbvyyNM=;
        b=oGZaEkZ2mgHI6umN272r9/rNnDgzmkUSj6c9SyCyBOeF0AyCvyM/dFVu2TL20ErFYQ
         EtzOelIayQf4D/SRd3r0lgn9h+/67Nnfahbr+Ea7DyW+magsgLrFx5KdUb6zstHWDjX7
         1w0Ev14otQBeAnxMGSAqi2sL1/QqSQLaUtTid9/eI4YsSY7pT5Z9jCk9+w0smo+IbmSt
         51fCU9hsERkk8hxKTsJITGaBvfXgs5HXXBBl8/LCDOl4u3GAwEl3l24hkyiPNy4tHXzF
         R6mOMynqfrvTy3exyNa1nwttscFTnAG33oqBtE/4Hgprrl27do72F7CdsDJa9X7uUsWw
         7aiA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="Tn/7uDGM";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52d as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Sgv05yRh7ruOEYxReiv09im7aIAyQD1ZZwLEvbvyyNM=;
        b=pXb1lbon+xezU47225DRBfjW22EmJrW4JM8kKsUwRhE/lWOSZzNrU20h5VsGVYyGCI
         6J2J4I+j4aHECOk+ULUl/LYpKnSX5S6bkBTxJMObxPVHj75pVzcXnb5N+CuilYvJxmhd
         EYE0Whr0zve0TduN/c6R1NDwaPnbksSYlfFkLDB1nSEDhqxVMajW2cf7MwUNJ3TbjURz
         eM8zPalJCtJYGTC/lYo9Ibot9KFQ+ETHgcfmXYSr5GLbft34SSsBs41HXCtX3nZzixck
         E36AYWUuczPEBq+VQnjikRAA0rGCUJXs75ChaktejeEJ24NTLhLg8qVY9TQubbPbPb8W
         L24g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Sgv05yRh7ruOEYxReiv09im7aIAyQD1ZZwLEvbvyyNM=;
        b=LlIGvARTwwMcZAyuXBqog0whuPl2YNpAvk6NE0CrfES2qcNnmHqA4OVUpht7H1/91N
         kjILhDrUGk2yHNVm2wnn8aUAkyBNhghwsDzGN2Rjwz/YcvewLKhC/qusuNuQSeQZKmik
         +So7KQ3HxaRhjl0WCcMtj2llVSB7j/QUbKqYcojmUnyZCxoVmiV3dXrDTMw9sTbK6UOk
         A91nqgkomNN5UQ03YF0BULqTFUthtbsQSs2nR8HhzdUbM4HQLxhZ9lcfEMp2hjJfXkXK
         aC6+mkZEUj5nrwOfnU3V2d35QcRo7pNBDRu/EkWveCb5egb5MkpwN3F6Wx8pPnukWIC5
         Q2Cg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531Gh8nj6Fk7jjnop18HQLwqX0MjLC3v8ec0xzbtXEyKqhnb3voa
	s9omZhddUDvqNLA4J0ILvIg=
X-Google-Smtp-Source: ABdhPJxUTfveJQo/RI/FDhG0PqdeUeMZ82YMQ6++YQVU+ULDZo9n974CnY/NPWMFQ1EGa9iWRBrUUQ==
X-Received: by 2002:a17:90a:d3ca:: with SMTP id d10mr5235242pjw.35.1629474958573;
        Fri, 20 Aug 2021 08:55:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:6586:: with SMTP id z128ls3687213pfb.8.gmail; Fri, 20
 Aug 2021 08:55:58 -0700 (PDT)
X-Received: by 2002:a63:de01:: with SMTP id f1mr7099823pgg.377.1629474957988;
        Fri, 20 Aug 2021 08:55:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629474957; cv=none;
        d=google.com; s=arc-20160816;
        b=EUCGzSoAy7FVl+a6xMm52SxPxaXvzfv3EccoO5yuYnpGm+PqT3uw3vyfwJ8496HVUh
         4uL34/lmGRfsiWRMsgu06bursy4S8MmOGnTunBnKW9IQwOOnF5sGvzDTyi9KHnw4jAOr
         9qMeA29POblQXeGVHGn61ftxJvdGhTTPGk7F60r9THt8zN2BLBTpS+DAe+6JpcvDm0uo
         VvpMujaTv/xDi4ye3JHIZAu7kjDYkaZbmCC/oD3ju6JfFhHnPB/2rY6Ja4dW0V9aIhQT
         pet00ngt2eM6picn59dOqBlpMuf5uuMTMJlRtwGovkIKRxsYXXdhdWoIJkZi7yMLUOax
         Yt3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=DfMkWVrhrXjOa4WT8fjUg2g99cfma/KNVtPegOy6YVA=;
        b=Se2/xV718eXpm2xmdYtbjdK4ivvmMGsXvcxxLeBC3xBqiUAxLGt7sw22PJIKjYHIkx
         EnK96VTcQpRnUtXzwdqHFuChRJm1H8WwBQ4fI9MkZdYdQNG1o9ZZMM1anL/i14wKcB1j
         UkfAZUKxyKAOU8bPE/I4bmIbjagPYZkx2y7I3uGFE2DJQ1ftiWleKl3+6o6gAz1sonDB
         oKqXfUxxvGG52TOK1mrUbqTqp5Yl6ZM6PZLC1FwwLOKRPwtBe/A40o72s3wt399lzATZ
         PUemByxQ17Oos7XRS0x83A41vTIAS+9A99f/smPjEV2MFOu0/9LZs6Ezz0ETRTMXZ9iJ
         PoHA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b="Tn/7uDGM";
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52d as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x52d.google.com (mail-pg1-x52d.google.com. [2607:f8b0:4864:20::52d])
        by gmr-mx.google.com with ESMTPS id e11si592276pgm.0.2021.08.20.08.55.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Aug 2021 08:55:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52d as permitted sender) client-ip=2607:f8b0:4864:20::52d;
Received: by mail-pg1-x52d.google.com with SMTP id s11so9592826pgr.11
        for <clang-built-linux@googlegroups.com>; Fri, 20 Aug 2021 08:55:57 -0700 (PDT)
X-Received: by 2002:a63:4d24:: with SMTP id a36mr6002323pgb.37.1629474957688;
        Fri, 20 Aug 2021 08:55:57 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id o10sm6412690pjg.34.2021.08.20.08.55.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 Aug 2021 08:55:57 -0700 (PDT)
Date: Fri, 20 Aug 2021 08:55:56 -0700
From: Kees Cook <keescook@chromium.org>
To: Michael Ellerman <mpe@ellerman.id.au>
Cc: linux-kernel@vger.kernel.org,
	Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Paul Mackerras <paulus@samba.org>,
	Christophe Leroy <christophe.leroy@csgroup.eu>,
	Sudeep Holla <sudeep.holla@arm.com>, linuxppc-dev@lists.ozlabs.org,
	kernel test robot <lkp@intel.com>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	linux-wireless@vger.kernel.org, netdev@vger.kernel.org,
	dri-devel@lists.freedesktop.org, linux-staging@lists.linux.dev,
	linux-block@vger.kernel.org, linux-kbuild@vger.kernel.org,
	clang-built-linux@googlegroups.com,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>,
	linux-hardening@vger.kernel.org
Subject: Re: [PATCH v2 57/63] powerpc/signal32: Use struct_group() to zero
 spe regs
Message-ID: <202108200851.8AF09CDB71@keescook>
References: <20210818060533.3569517-1-keescook@chromium.org>
 <20210818060533.3569517-58-keescook@chromium.org>
 <877dggeesw.fsf@mpe.ellerman.id.au>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <877dggeesw.fsf@mpe.ellerman.id.au>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b="Tn/7uDGM";       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::52d
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

On Fri, Aug 20, 2021 at 05:49:35PM +1000, Michael Ellerman wrote:
> Kees Cook <keescook@chromium.org> writes:
> > In preparation for FORTIFY_SOURCE performing compile-time and run-time
> > field bounds checking for memset(), avoid intentionally writing across
> > neighboring fields.
> >
> > Add a struct_group() for the spe registers so that memset() can correctly reason
> > about the size:
> >
> >    In function 'fortify_memset_chk',
> >        inlined from 'restore_user_regs.part.0' at arch/powerpc/kernel/signal_32.c:539:3:
> >>> include/linux/fortify-string.h:195:4: error: call to '__write_overflow_field' declared with attribute warning: detected write beyond size of field (1st parameter); maybe use struct_group()? [-Werror=attribute-warning]
> >      195 |    __write_overflow_field();
> >          |    ^~~~~~~~~~~~~~~~~~~~~~~~
> >
> > Cc: Michael Ellerman <mpe@ellerman.id.au>
> > Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>
> > Cc: Paul Mackerras <paulus@samba.org>
> > Cc: Christophe Leroy <christophe.leroy@csgroup.eu>
> > Cc: Sudeep Holla <sudeep.holla@arm.com>
> > Cc: linuxppc-dev@lists.ozlabs.org
> > Reported-by: kernel test robot <lkp@intel.com>
> > Signed-off-by: Kees Cook <keescook@chromium.org>
> > ---
> >  arch/powerpc/include/asm/processor.h | 6 ++++--
> >  arch/powerpc/kernel/signal_32.c      | 6 +++---
> >  2 files changed, 7 insertions(+), 5 deletions(-)
> >
> > diff --git a/arch/powerpc/include/asm/processor.h b/arch/powerpc/include/asm/processor.h
> > index f348e564f7dd..05dc567cb9a8 100644
> > --- a/arch/powerpc/include/asm/processor.h
> > +++ b/arch/powerpc/include/asm/processor.h
> > @@ -191,8 +191,10 @@ struct thread_struct {
> >  	int		used_vsr;	/* set if process has used VSX */
> >  #endif /* CONFIG_VSX */
> >  #ifdef CONFIG_SPE
> > -	unsigned long	evr[32];	/* upper 32-bits of SPE regs */
> > -	u64		acc;		/* Accumulator */
> > +	struct_group(spe,
> > +		unsigned long	evr[32];	/* upper 32-bits of SPE regs */
> > +		u64		acc;		/* Accumulator */
> > +	);
> >  	unsigned long	spefscr;	/* SPE & eFP status */
> >  	unsigned long	spefscr_last;	/* SPEFSCR value on last prctl
> >  					   call or trap return */
> > diff --git a/arch/powerpc/kernel/signal_32.c b/arch/powerpc/kernel/signal_32.c
> > index 0608581967f0..77b86caf5c51 100644
> > --- a/arch/powerpc/kernel/signal_32.c
> > +++ b/arch/powerpc/kernel/signal_32.c
> > @@ -532,11 +532,11 @@ static long restore_user_regs(struct pt_regs *regs,
> >  	regs_set_return_msr(regs, regs->msr & ~MSR_SPE);
> >  	if (msr & MSR_SPE) {
> >  		/* restore spe registers from the stack */
> > -		unsafe_copy_from_user(current->thread.evr, &sr->mc_vregs,
> > -				      ELF_NEVRREG * sizeof(u32), failed);
> > +		unsafe_copy_from_user(&current->thread.spe, &sr->mc_vregs,
> > +				      sizeof(current->thread.spe), failed);
> 
> This makes me nervous, because the ABI is that we copy ELF_NEVRREG *
> sizeof(u32) bytes, not whatever sizeof(current->thread.spe) happens to
> be.
> 
> ie. if we use sizeof an inadvertent change to the fields in
> thread_struct could change how many bytes we copy out to userspace,
> which would be an ABI break.
> 
> And that's not that hard to do, because it's not at all obvious that the
> size and layout of fields in thread_struct affects the user ABI.
> 
> At the same time we don't want to copy the right number of bytes but
> the wrong content, so from that point of view using sizeof is good :)
> 
> The way we handle it in ptrace is to have BUILD_BUG_ON()s to verify that
> things match up, so maybe we should do that here too.
> 
> ie. add:
> 
> 	BUILD_BUG_ON(sizeof(current->thread.spe) == ELF_NEVRREG * sizeof(u32));
> 
> Not sure if you are happy doing that as part of this patch. I can always
> do it later if not.

Sounds good to me; I did that in a few other cases in the series where
the relationships between things seemed tenuous. :) I'll add this (as
!=) in v3.

Thanks!

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202108200851.8AF09CDB71%40keescook.
