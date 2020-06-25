Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBDVN2H3QKGQEVFONNMI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53f.google.com (mail-pg1-x53f.google.com [IPv6:2607:f8b0:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id E5D36209AC3
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Jun 2020 09:47:28 +0200 (CEST)
Received: by mail-pg1-x53f.google.com with SMTP id d10sf1306688pgc.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Jun 2020 00:47:28 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593071247; cv=pass;
        d=google.com; s=arc-20160816;
        b=G/ox9KKTP3/OmkFKOSwV2xzpBerMVTTs3dHo/MAA+l0bFSPiLm6YtyM6k3un7A+pwv
         ur0bbKlPqP3WrUtNLwKY+CThe21ejkKaDdxRvJx71E5BJdtopXCWbx+A48rbxJS1mdM1
         IZaH4Qr9NvPdxYDLWVXHeu7uzKkeVf6tdOHpaH9XWqwIfyCkrQov8mEz5If3XnSmXJq0
         iomygQOKFKo28KID1raG/lrj/bnyVd/W3LgXGful+OkB4vM5e9szT9G+p9C1xoBFJMUd
         KJmGTUZ2KdmJcfUT0gdAaG7HKEV21EvSBbXCroSrjA310GjxA0ydOdjk1AB6k1KDlUB9
         MXGg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=rbZiYzfDaRDeQmg7YJYBTgfGlXJNUJ2dFRsBrJBRSjw=;
        b=gbAXPH6/VNU1FMtmp+toe4cVs5fJNXsgvY0VfPq/aJEwduEoSCCTKjhuehsanTZg4q
         99+a1LOjnz8u3wbWw/jm8kn1v0UkXrRVfZ3n8oatlduZV42f4bPoGQKkruSUJTpSUYsn
         7yag2CKJqECwEaMlePOXAF/3fQxsjPexxJ+VI2P9JYhe9KCdFS4g4eia3oMiSe3liv+e
         CBPfib7No8o0Rx6ld9jnGhphZG0xYnvmnb6KVwJnFuwoa/OWb0QHL86d/Pi+lEItLTqk
         lq0wP1qTmZwAORNRumrGhWWORdQgZvR4Q3IFNJUIPH3xo9NleuYMmkjVsJNlwRO5gzaD
         NprQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=UIuIqigV;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=rbZiYzfDaRDeQmg7YJYBTgfGlXJNUJ2dFRsBrJBRSjw=;
        b=VMJJ7Z25epiyD0HmePWk74+0/h+laiFADg+vJ4QPOgOGLZ4RWDW7tzpAjn/ezEX3MX
         GARfcHoHttjqun3z8b0SPDmJa7UMKdFkMwu1IbgzuLiZJ7koL2AzpWl059ydxfLkZ39p
         +LDB/qq0n9PV/+c+htAlxGINfg286EGvh7bDdLO2yksrN4UgVEEMXbzd91UYuToidGnE
         3ORaQfqOAF9sacOsko5jwP+NT7Clcyk01YqoZMXMu4y6cnrYxqDwgD3HWRXD+7GuV2v3
         OR8XJlEAQjIs7akQ3IWwE7AsP5SeZTveJdh+HHRv0gm0iTCYp8jszQ0zaYi19hXhrIok
         Ngyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=rbZiYzfDaRDeQmg7YJYBTgfGlXJNUJ2dFRsBrJBRSjw=;
        b=lEab7UMgHjxe0LZr+jwKxECtNkynBFY8jNqYLXqGmwEkwxixyaaMe2mXLp7JeHif/e
         In8cMcoX7AfCVrtVWcc+KEL8N9M0JLTXahLKOffOPb5dlYuwOTfSziN2G5xrg/9jEKjs
         RD143VGhc8OnvlHipYH1sellLv19DFup+rAjcFeV9RdL7mD4Snrtcb2zvAjsa+EWQ1Wi
         h/o943MMDrXAyMYfIVyES+U9sSm4gEZw+vRZK8ldla3AAD0sGiTPIyVR4BE3kGcqRqIe
         Y5Rfn0pF36Fo1JS6CQ1AKja+5jhDoAVUN/Nxq3pmSo6iBgsT7j0dm7aka5EhPBIL1FFb
         v3HQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530pvpxMvDdDt7h/VQk9O2W597YldvivxW3opiwdr5q9m4W1JKt0
	7WHj7l97iTRmGcJq96p0w10=
X-Google-Smtp-Source: ABdhPJx/c6xfLGzyr9piKxDMa26RxPzk4YTNQCFI9DQDJXc8ZSQggkLzXKYnzHgZ7rU7UKvzzFEjiw==
X-Received: by 2002:a17:90a:e283:: with SMTP id d3mr2036021pjz.170.1593071247162;
        Thu, 25 Jun 2020 00:47:27 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:7143:: with SMTP id g3ls2149875pjs.1.gmail; Thu, 25
 Jun 2020 00:47:26 -0700 (PDT)
X-Received: by 2002:a17:90b:23d5:: with SMTP id md21mr2031688pjb.0.1593071246548;
        Thu, 25 Jun 2020 00:47:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593071246; cv=none;
        d=google.com; s=arc-20160816;
        b=BCooqsniS/nud+c16jbSIdDsUVooCwAq8J/xXzbDf06KofSkzdJcHVVwrnq3sXLfRb
         kwjJa87a4Edcw0KENZBmrgyB6NPQndUJBMdENk4NfcWj5JDNoJ3bdauwyd5xEXq0h1fT
         K9m4BqOds6Wm6isX9cfDJuJfuoETTMrU9QRqrcZdd7knVdKIqgLY9aTmd11wpzHJwsba
         QsDY+uWI7UUU/1SVk53yvf5jD41DKe/9VgtjbphVYIkm2/S6Tkc1g02yckTlNx+THiup
         zD5FdaDTNim03okeRmNv4CiQRHRY0xYYa+IT91bs59vOfkGBpf+huCVQRjsUQBRRhBNr
         Tmkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=jlp9yRmob93dOT2KqKFc9+KfQV0pPJXXFdCgHBP2kM0=;
        b=hfLT0P1F7Rf85aeVujHQ1eJQMga8t81Z8BNuVQFIelfJdey6ff0EGm2QtFXRGD/jZF
         p1Oq4/owp5dU8VbdVvo0g2CCJyeDYtb5mybxNNGei/7CqOUIaA7vAKcAlscuFEHD9ZZA
         1ZuJ6sZisJ/PheENFcTLC9KcYXWkvl0A83ViD1ajZ3+1hQ/UcBEFCKr0Ho9F8T3uDRWD
         hlXN1VFEvbk3xU36h6ZM0w0eaSaGLMMA8SBI0jrsUVjP7Yi6R3DLp6VeX1MH32o4BFpZ
         OH6JOxn6NmoZC+MJClhE9wPfUODyiG/McojNZfE/yqE8+wB2c1pknU/15PT5eqAjgpV/
         6W+g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=UIuIqigV;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from merlin.infradead.org (merlin.infradead.org. [2001:8b0:10b:1231::1])
        by gmr-mx.google.com with ESMTPS id q13si24425pfc.6.2020.06.25.00.47.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Jun 2020 00:47:24 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) client-ip=2001:8b0:10b:1231::1;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1joMbO-0006Qg-LI; Thu, 25 Jun 2020 07:47:18 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id C6AAB3007CD;
	Thu, 25 Jun 2020 09:47:16 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id B2A1522B8EBE8; Thu, 25 Jun 2020 09:47:16 +0200 (CEST)
Date: Thu, 25 Jun 2020 09:47:16 +0200
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
Message-ID: <20200625074716.GX4817@hirez.programming.kicks-ass.net>
References: <20200624203200.78870-1-samitolvanen@google.com>
 <20200624203200.78870-6-samitolvanen@google.com>
 <20200624211908.GT4817@hirez.programming.kicks-ass.net>
 <20200624214925.GB120457@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200624214925.GB120457@google.com>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=merlin.20170209 header.b=UIuIqigV;
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

On Wed, Jun 24, 2020 at 02:49:25PM -0700, Sami Tolvanen wrote:
> On Wed, Jun 24, 2020 at 11:19:08PM +0200, Peter Zijlstra wrote:
> > On Wed, Jun 24, 2020 at 01:31:43PM -0700, Sami Tolvanen wrote:
> > > diff --git a/include/linux/compiler.h b/include/linux/compiler.h
> > > index 30827f82ad62..12b115152532 100644
> > > --- a/include/linux/compiler.h
> > > +++ b/include/linux/compiler.h
> > > @@ -120,7 +120,7 @@ void ftrace_likely_update(struct ftrace_likely_data *f, int val,
> > >  /* Annotate a C jump table to allow objtool to follow the code flow */
> > >  #define __annotate_jump_table __section(.rodata..c_jump_table)
> > >  
> > > -#ifdef CONFIG_DEBUG_ENTRY
> > > +#if defined(CONFIG_DEBUG_ENTRY) || defined(CONFIG_LTO_CLANG)
> > >  /* Begin/end of an instrumentation safe region */
> > >  #define instrumentation_begin() ({					\
> > >  	asm volatile("%c0:\n\t"						\
> > 
> > Why would you be doing noinstr validation for lto builds? That doesn't
> > make sense.
> 
> This is just to avoid a ton of noinstr warnings when we run objtool on
> vmlinux.o, but I'm also fine with skipping noinstr validation with LTO.

Right, then we need to make --no-vmlinux work properly when
!DEBUG_ENTRY, which I think might be buggered due to us overriding the
argument when the objname ends with "vmlinux.o".

> > > +ifdef CONFIG_STACK_VALIDATION
> > > +ifneq ($(SKIP_STACK_VALIDATION),1)
> > > +cmd_ld_ko_o +=								\
> > > +	$(objtree)/tools/objtool/objtool				\
> > > +		$(if $(CONFIG_UNWINDER_ORC),orc generate,check)		\
> > > +		--module						\
> > > +		$(if $(CONFIG_FRAME_POINTER),,--no-fp)			\
> > > +		$(if $(CONFIG_GCOV_KERNEL),--no-unreachable,)		\
> > > +		$(if $(CONFIG_RETPOLINE),--retpoline,)			\
> > > +		$(if $(CONFIG_X86_SMAP),--uaccess,)			\
> > > +		$(@:.ko=$(prelink-ext).o);
> > > +
> > > +endif # SKIP_STACK_VALIDATION
> > > +endif # CONFIG_STACK_VALIDATION
> > 
> > What about the objtool invocation from link-vmlinux.sh ?
> 
> What about it? The existing objtool_link invocation in link-vmlinux.sh
> works fine for our purposes as well.

Well, I was wondering why you're adding yet another objtool invocation
while we already have one.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200625074716.GX4817%40hirez.programming.kicks-ass.net.
