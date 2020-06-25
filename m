Return-Path: <clang-built-linux+bncBC2ORX645YPRBS462P3QKGQEFO45YDI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83a.google.com (mail-qt1-x83a.google.com [IPv6:2607:f8b0:4864:20::83a])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C04C20A2C5
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Jun 2020 18:22:36 +0200 (CEST)
Received: by mail-qt1-x83a.google.com with SMTP id s30sf4348396qts.18
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Jun 2020 09:22:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593102155; cv=pass;
        d=google.com; s=arc-20160816;
        b=yftFfrJxmBu8FbeEspQEgLEQYBZqWBaxT4v1ozq3USDz8f4UA3zxgyXpqhjYsy4poi
         E/RGSHDnsCM42iJt5orXY87batKeP31y7dn1mX4Pf4RD5PscxB/FNjhdAoS9ryq/S8AW
         jq65Le778uUQg0YonLc3ITivr7Bj0sfgCaYVZeDlTw7+2BiOqVATmkWvb0m527WAPoMH
         CPIKyauH+0EjePbQHfNYDNzYfrDJ5lVSnRyTJALIM7Dc6plcK9AZ/HcaIzr5TAejrPsV
         cTcrchKiy594mmCf/DHc8P9J1RvCk71DHLMhuuGN5MnPQeHh8PPp8FknoSYoLX+Wuk63
         KFNg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=xGtgjVllHZFDz6OcjNLgqO1ALnjrFKxkzmO8ojIq6+0=;
        b=nKZv7z5apI5dDpR8rhGb6/ctuhjqO/LsROpFaBAIUfRlvt282xRwiV6xdy0xm9sVJf
         yLcXNEPtCh1M73hcrWglQdW+oRnX9S86tZwsg/t5woGfdMf7ftNl9hu3jUllSKWLdD+v
         IgVi38zewrH0/G9J/cVwd9qyyyU3Rv+0sEYoVJR1UuDTgcmBYUsCRpA88DedqAmC9Yqb
         EByi7VSjLoWwzShtI1jDeh8f+6KcbUTGHzqHGggxysrl9aFZnR1gae3Ib3bpJukHFlzR
         4Wwz2u2sJKd+yZVFgPSuB4OpR1vmFoERseADczNFCHjlfyLngrd37tMDPgCNDI95HMS/
         v6HA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=XvqTcKvU;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=xGtgjVllHZFDz6OcjNLgqO1ALnjrFKxkzmO8ojIq6+0=;
        b=h0+sKCm4WTWUZwUe9HyJKCsv4CFiw1XQy4mV5YDe4K/5rOI0O+ODpga3QAgIPe4aQA
         v6LTqqVPiqXiZ95SI2xSRA5YlpkGpukSfrGKIX26X//xxm5dyu0UyGkAW3ZFNy73YCIT
         1IwHddP2pV7AjfNGuOONAn5IR8jqTUeqcqnEDmt3mD6dVU+QX+zIwVhRncOEcFbUdC17
         eh+/BX1AYpkIt2gbGBAbvpWtLPDqtqPESdz6lhVFV8e/wxNh+391B7rxqVFwHyuTu30O
         H3+Bj2xGyiEgjAX4O0l6IfYS/XmGmQ+Wg86gWwdcz/mdmT/ZQwHmGdEQPa27IaLTillN
         YCDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xGtgjVllHZFDz6OcjNLgqO1ALnjrFKxkzmO8ojIq6+0=;
        b=DiR8ZgEh/LWASU6sgQoePaTL4i4ylNtc5h2a5o+TD7gSfMBPIGgnJqIj0ENXIUrFf3
         XfbtSnhlqvBEO6vShCB3Iqp3VuTUpoGg7gsElBNf9PAApfE8A33xVnEkO+xp628cyL1x
         jzF6KjCkB5QzXbTQTISRXAXEAQnF4PtX6XAlEDQ6y9GB/E0CEJt1l7dAH1lDaZ5X21+l
         pagFGdV65A5yxqshUyNqEM4+Aj6cDE3iAihRA+Gf3syfHcglrZ6Qr5gegUvyVJ60IZBX
         SXKq8zto0rCNNcNtUSqJN7fFK0hDmmI4BuRhglDeF+wP4BpIm0a/BBf1eKvUnW+p2Ril
         6Jiw==
X-Gm-Message-State: AOAM533fRYSw2gUihdUNn8yfxXzFzyqPQf1ngK7vNsrH2MJHH32WFfrl
	wctlpJ3pRLPfFnAWXr33+S8=
X-Google-Smtp-Source: ABdhPJxeDI+049S06YJa8Q+hu2oDYiZTqR7fUPBg82w9XmTZovRkUDL5XVGAiszJycw2eNiYuXz8QA==
X-Received: by 2002:a05:6214:178e:: with SMTP id ct14mr37064946qvb.73.1593102155374;
        Thu, 25 Jun 2020 09:22:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:f8a:: with SMTP id b10ls2946489qkn.9.gmail; Thu, 25
 Jun 2020 09:22:35 -0700 (PDT)
X-Received: by 2002:a37:bcb:: with SMTP id 194mr19374171qkl.103.1593102154981;
        Thu, 25 Jun 2020 09:22:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593102154; cv=none;
        d=google.com; s=arc-20160816;
        b=cghPuhOnUq6UEQ3MI1LEWwvnS0WZoVyNAtS/Vvu2kgc2RKn1g1X4zQRQAMumsGOXgV
         1J4nozgA7mgC4GuOueoln5tJNZSM2OjoGltTjnmckyJw2UXI0fsyLtp/QdO3LJmBNynt
         Tryk3RcUYxbPrOmx9R6l8WyJp/3JuSnuqwTrNUX4Yy0LpXWtmCeKRZTWlksm1y9Rh60p
         lx6gVxMqnjcurbESMxc4S7yo8nvMr/ESud/jZhBd8ke8Zc1GbLSdDWYP1oVWy80soof5
         QHMqTqQDb1kvXrLjh/vPeppdVq8jADQw4rmPZjbJV6LbKpaqkbugEhrke6wQzNCbklYX
         +WzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=cYEaM8fKpZG71PCkfHkApRmPtCwvXrrY+JocHC3nIv8=;
        b=l35TB7wlD4JwbnCGnnItNspITohIwFUdGnuXveBqtdxFQ8xS0MJsyC1tCesXyBYHqA
         Icz1uxvZ/sJvfTsrumA9Qow+KLecGAUD+UjqUCMpVTHktCsBqXrI/A3Lj106dTeg8Lig
         OZqRr3mKE+JdNwdh5fwSDG1P0Rvz+8x1OXHPAXmdjnEzYNx+H+tKtkTaNdfZQKR7MNE3
         Nod4h2ocgQJ2YQ34I8zqEpp9iA1r46g7fzTa6OBAtWl+AE4iGsTjNi8Vo6gCTi8/OrUz
         oYHtPGuVJC0t1k+uFcyDAQyThFNLwNUVw3xjLcETQ/2qCO1JhURlutEuWnRaaMJ2F2Ch
         QXXA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=XvqTcKvU;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id c67si1327694qkb.7.2020.06.25.09.22.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Jun 2020 09:22:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id e18so3511601pgn.7
        for <clang-built-linux@googlegroups.com>; Thu, 25 Jun 2020 09:22:34 -0700 (PDT)
X-Received: by 2002:a63:7313:: with SMTP id o19mr27664372pgc.307.1593102153849;
        Thu, 25 Jun 2020 09:22:33 -0700 (PDT)
Received: from google.com ([2620:15c:201:2:ce90:ab18:83b0:619])
        by smtp.gmail.com with ESMTPSA id 7sm10151225pgh.80.2020.06.25.09.22.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Jun 2020 09:22:32 -0700 (PDT)
Date: Thu, 25 Jun 2020 09:22:26 -0700
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Peter Zijlstra <peterz@infradead.org>
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
Message-ID: <20200625162226.GC173089@google.com>
References: <20200624203200.78870-1-samitolvanen@google.com>
 <20200624203200.78870-6-samitolvanen@google.com>
 <20200624211908.GT4817@hirez.programming.kicks-ass.net>
 <20200624214925.GB120457@google.com>
 <20200625074716.GX4817@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200625074716.GX4817@hirez.programming.kicks-ass.net>
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=XvqTcKvU;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::544
 as permitted sender) smtp.mailfrom=samitolvanen@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

On Thu, Jun 25, 2020 at 09:47:16AM +0200, Peter Zijlstra wrote:
> On Wed, Jun 24, 2020 at 02:49:25PM -0700, Sami Tolvanen wrote:
> > On Wed, Jun 24, 2020 at 11:19:08PM +0200, Peter Zijlstra wrote:
> > > On Wed, Jun 24, 2020 at 01:31:43PM -0700, Sami Tolvanen wrote:
> > > > diff --git a/include/linux/compiler.h b/include/linux/compiler.h
> > > > index 30827f82ad62..12b115152532 100644
> > > > --- a/include/linux/compiler.h
> > > > +++ b/include/linux/compiler.h
> > > > @@ -120,7 +120,7 @@ void ftrace_likely_update(struct ftrace_likely_data *f, int val,
> > > >  /* Annotate a C jump table to allow objtool to follow the code flow */
> > > >  #define __annotate_jump_table __section(.rodata..c_jump_table)
> > > >  
> > > > -#ifdef CONFIG_DEBUG_ENTRY
> > > > +#if defined(CONFIG_DEBUG_ENTRY) || defined(CONFIG_LTO_CLANG)
> > > >  /* Begin/end of an instrumentation safe region */
> > > >  #define instrumentation_begin() ({					\
> > > >  	asm volatile("%c0:\n\t"						\
> > > 
> > > Why would you be doing noinstr validation for lto builds? That doesn't
> > > make sense.
> > 
> > This is just to avoid a ton of noinstr warnings when we run objtool on
> > vmlinux.o, but I'm also fine with skipping noinstr validation with LTO.
> 
> Right, then we need to make --no-vmlinux work properly when
> !DEBUG_ENTRY, which I think might be buggered due to us overriding the
> argument when the objname ends with "vmlinux.o".

Right. Can we just remove that and  pass --vmlinux to objtool in
link-vmlinux.sh, or is the override necessary somewhere else?

> > > > +ifdef CONFIG_STACK_VALIDATION
> > > > +ifneq ($(SKIP_STACK_VALIDATION),1)
> > > > +cmd_ld_ko_o +=								\
> > > > +	$(objtree)/tools/objtool/objtool				\
> > > > +		$(if $(CONFIG_UNWINDER_ORC),orc generate,check)		\
> > > > +		--module						\
> > > > +		$(if $(CONFIG_FRAME_POINTER),,--no-fp)			\
> > > > +		$(if $(CONFIG_GCOV_KERNEL),--no-unreachable,)		\
> > > > +		$(if $(CONFIG_RETPOLINE),--retpoline,)			\
> > > > +		$(if $(CONFIG_X86_SMAP),--uaccess,)			\
> > > > +		$(@:.ko=$(prelink-ext).o);
> > > > +
> > > > +endif # SKIP_STACK_VALIDATION
> > > > +endif # CONFIG_STACK_VALIDATION
> > > 
> > > What about the objtool invocation from link-vmlinux.sh ?
> > 
> > What about it? The existing objtool_link invocation in link-vmlinux.sh
> > works fine for our purposes as well.
> 
> Well, I was wondering why you're adding yet another objtool invocation
> while we already have one.

Because we can't run objtool until we have compiled bitcode to native
code, so for modules, we're need another invocation after everything has
been compiled.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200625162226.GC173089%40google.com.
