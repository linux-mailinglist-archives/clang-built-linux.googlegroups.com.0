Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBIW42P3QKGQEX2V52NY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x237.google.com (mail-lj1-x237.google.com [IPv6:2a00:1450:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EAE520A507
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Jun 2020 20:34:11 +0200 (CEST)
Received: by mail-lj1-x237.google.com with SMTP id i21sf1888745ljb.12
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Jun 2020 11:34:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593110051; cv=pass;
        d=google.com; s=arc-20160816;
        b=jCEpvFEp7QnUBX4WXOjP25cs9MlLtH37FpG/HGjZqaznRW9CVK7rtBIwK6ry4fikLw
         2eq/WXr5z54j2ftpOZeZqAZrhC1xZBLuX4xA4YUeKuzA+fLHFQyMjOj/OwWuApTet29d
         bmJc/EAEZZVs9paIN5YauAKCQmWmY1+wT8nMdCHoPwwc8YaOf02jfvYqOOHGRFVCDrW5
         9fK7YYmzdxtD+wfyWygler08twlTkNMMrZaLrnCMMRyzp89YCrtWtD1EvX5gbWgJehIF
         BbkQszCjr4jzX2vEkC6s8QNlsrQ1q6PInL0FtqTOi5uVdj+Iei/K1/Vo25tc+L5FDIIb
         6M9g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=t2JES31cYHA9wDjaObfTVKQZwl6/Rxz+0gsTvQ6aImY=;
        b=Bnl7rA5dOk3j/84L5PlrZMSSHfIs0pJUgFaRlgMDWZOPHuBpXhhbj5hyeZ7pAk5nBP
         ahyOSn7Jony0aZCJkKbwhraTcQ9Zy+MlXcxEyi9YoVMLz0e9OjVzxxXDUAU2DZbiRAVX
         4ymwOOdb2d5cSXLXTywX8SrajRLCUGbGTRTI9xC8A+O7zqaqjCJVNxO2cMAnqOEEU9+e
         H1MYoLk5ea3Jj19XfwLRGvZ+hPx+ACP2AJAw50vxpgEi7zXI0hXs4K6OUA/tDfFOhzyl
         yK4qwqbQ3dlvXZwRB7PquXscBC8VFuRrZeLDp9C5gYEIYNb02B/C6OAgsRUJA5hs1rUb
         d05w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=wPU1z5k3;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=t2JES31cYHA9wDjaObfTVKQZwl6/Rxz+0gsTvQ6aImY=;
        b=pU/m4SJWKRqeji1clYJx80+xFe4uqeNWPKEMHuYrm1YKZZudUZT1H9P8yxBP9lqvvg
         PGXhG7VcnBq8Ni1JflocS3Pcwnn/OT/cmShB8RzqBXr1Tjesb5pkbXTA/EvFQWY0nHGG
         VdIcfPQGVGpafpOyslE2nh3KD+bkNOiRnOe23ar1LsLeAWzq3Omr2hjsfHUWlb16fbI3
         uuzSeItDDpdhBr8mUvBOVoycug8uL4ZogQB9UnbkX4vye6qEEzgViz34lj0T6Pe4ErQ0
         34rIycbQbTmmdIIBu3ihEjl/bXDSxuRl62khwyOomjo9OULXMa0jLqNTARGBS0Qtdd36
         jeow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=t2JES31cYHA9wDjaObfTVKQZwl6/Rxz+0gsTvQ6aImY=;
        b=GqXQ+nHgQsNZ27GSlkzHJhI1s7rYGpdw7pe1bNeOpQSGKOPpVVxUozTy29lcnos6cN
         JVytaQTnGFjsQjdJeztIbpBzNL4B5gHmnfvJB5UM0LoORE9rylFxl419BSl2C8E9Cz5k
         FY1RL83XGhgVnTLEbhumQ7wFbNYYY8eXD7RRvpeY8QVTsIzvY83103sq04y3Z4lffP4F
         GOB3TYCoklJUpKWnWXF02euNn5Lhf+Q9b4gKNNoHJU5nGAbdkfgTtuTlN2jisPZGbqru
         Lcg9NAokO18OaafJvKB7FS4laMuFfwqW2rOe1RaG5T+TH9z/akJ0MMz5l8TR1JOqGJci
         /8yg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5314vO3FAj/KM+PwHbvukb2KwRYiHZrrH2CofJDVjT4xhPDUfXgs
	GbJuxy1Cwm7HHExmgn5p9Uc=
X-Google-Smtp-Source: ABdhPJzSQqQRW4Oo69MRt49fSW5jSo4R6xRSPe7Oq2ZQ5O0CbyGwimxKD+nX/C+SCZCEopvnly9MlA==
X-Received: by 2002:a2e:b814:: with SMTP id u20mr18704612ljo.261.1593110050856;
        Thu, 25 Jun 2020 11:34:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:298:: with SMTP id b24ls1355511ljo.4.gmail; Thu, 25
 Jun 2020 11:34:10 -0700 (PDT)
X-Received: by 2002:a2e:a40f:: with SMTP id p15mr18516822ljn.286.1593110050098;
        Thu, 25 Jun 2020 11:34:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593110050; cv=none;
        d=google.com; s=arc-20160816;
        b=GtnTZiSRA4jt9bxu4wcYObt9jNOpJRN8vd4Ql8wPK47MBcMtIINQRtFhLFn9ab3orw
         Mpq+Bf27c2Vq6IXUOFCn1q0lDucrxHPERJAXwQjFa+4eXqSEMNP+5V030r2CBaSWXuY3
         Kw2loayZDZXPPdL0xUnrZORvPPEqTe6TBDs7zBGfMDUTpeVIyEB8gVYamXQw35L6b0em
         t6MyLGRtZPV9+A1VQ3099x3lJ+3soSawHzK3uEQ/t9rrLSiFkEtJfNqYMI6pb7hvPCZn
         1PdlsCDPIRC+vp7nM5xPbM5T8XSrWKvIPIYbP8JlB3RViz6kGMt+cc3mxCs1fatB+lV2
         8XnQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=y2Ojs6irYhJzJUoW2yptAyQ6Kl6zMJCInJSngjbNQ4k=;
        b=dRo2PlaWMiGbjocaM6HIuigZ4KyKCLccQDTHuzZFCzTROCEwrr8Gx2V5iE/8QIlvTd
         /7FUdUPebQpUcOypQgVMWt4jiF5DmiKa+1Jnbq4+N/ZNJte9IL3WXFibL51ddRC0OmyD
         G3JYLEATIZClI25xu6++rd9z1xU1IsZ/MjHfJJKHf70V6lg3IdgkkgFOhru2uIIH5RSf
         9gKQP98Q89/1K2lqFE1RduIxhqJtQ9ntiDuX5UEcrK3T/VcchUjBZ5JkknBSeymJiBZI
         icazBxt+MdFPf50gHgVEOKy/LbtFTLegHq6nk/N0f8iRt9OTX9f+ON05oUfdwmGdFkyB
         2vrw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=wPU1z5k3;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from casper.infradead.org ([2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id h9si206310ljj.5.2020.06.25.11.34.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Jun 2020 11:34:09 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by casper.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1joWh8-00056n-8i; Thu, 25 Jun 2020 18:33:54 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id 5378D3007CD;
	Thu, 25 Jun 2020 20:33:51 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id 35C32284DE63B; Thu, 25 Jun 2020 20:33:51 +0200 (CEST)
Date: Thu, 25 Jun 2020 20:33:51 +0200
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
Message-ID: <20200625183351.GH4800@hirez.programming.kicks-ass.net>
References: <20200624203200.78870-1-samitolvanen@google.com>
 <20200624203200.78870-6-samitolvanen@google.com>
 <20200624211908.GT4817@hirez.programming.kicks-ass.net>
 <20200624214925.GB120457@google.com>
 <20200625074716.GX4817@hirez.programming.kicks-ass.net>
 <20200625162226.GC173089@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200625162226.GC173089@google.com>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=casper.20170209 header.b=wPU1z5k3;
       spf=pass (google.com: best guess record for domain of
 peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
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

On Thu, Jun 25, 2020 at 09:22:26AM -0700, Sami Tolvanen wrote:
> On Thu, Jun 25, 2020 at 09:47:16AM +0200, Peter Zijlstra wrote:

> > Right, then we need to make --no-vmlinux work properly when
> > !DEBUG_ENTRY, which I think might be buggered due to us overriding the
> > argument when the objname ends with "vmlinux.o".
> 
> Right. Can we just remove that and  pass --vmlinux to objtool in
> link-vmlinux.sh, or is the override necessary somewhere else?

Think we can remove it; it was just convenient when running manually.

> > > > > +ifdef CONFIG_STACK_VALIDATION
> > > > > +ifneq ($(SKIP_STACK_VALIDATION),1)
> > > > > +cmd_ld_ko_o +=								\
> > > > > +	$(objtree)/tools/objtool/objtool				\
> > > > > +		$(if $(CONFIG_UNWINDER_ORC),orc generate,check)		\
> > > > > +		--module						\
> > > > > +		$(if $(CONFIG_FRAME_POINTER),,--no-fp)			\
> > > > > +		$(if $(CONFIG_GCOV_KERNEL),--no-unreachable,)		\
> > > > > +		$(if $(CONFIG_RETPOLINE),--retpoline,)			\
> > > > > +		$(if $(CONFIG_X86_SMAP),--uaccess,)			\
> > > > > +		$(@:.ko=$(prelink-ext).o);
> > > > > +
> > > > > +endif # SKIP_STACK_VALIDATION
> > > > > +endif # CONFIG_STACK_VALIDATION
> > > > 
> > > > What about the objtool invocation from link-vmlinux.sh ?
> > > 
> > > What about it? The existing objtool_link invocation in link-vmlinux.sh
> > > works fine for our purposes as well.
> > 
> > Well, I was wondering why you're adding yet another objtool invocation
> > while we already have one.
> 
> Because we can't run objtool until we have compiled bitcode to native
> code, so for modules, we're need another invocation after everything has
> been compiled.

Well, that I understand, my question was why we need one in
scripts/link-vmlinux.sh and an additional one. I think we're just
talking past one another and agree we only need one.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200625183351.GH4800%40hirez.programming.kicks-ass.net.
