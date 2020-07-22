Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBLVE4P4AKGQE5XD6IXQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53c.google.com (mail-pg1-x53c.google.com [IPv6:2607:f8b0:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BD8622A365
	for <lists+clang-built-linux@lfdr.de>; Thu, 23 Jul 2020 01:56:32 +0200 (CEST)
Received: by mail-pg1-x53c.google.com with SMTP id o34sf2814875pgm.18
        for <lists+clang-built-linux@lfdr.de>; Wed, 22 Jul 2020 16:56:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595462190; cv=pass;
        d=google.com; s=arc-20160816;
        b=HUXpjwNto4BJKDYgObQPSxl84kgStLo7PGFLk/UGX2uoUyxEyqN8Ro0ZVm0azs2W0/
         F7vicBKyz5udYBaGCyKyfIB4yXPkYRomTYpE0KljFYtOnk70qBbh+M+/7+S8eYKBWkoh
         NYh+XWQwcGJG/KAk1Gx/8pTUM5rwrvXcgAo4BLn0CJPRNd03jXxYlbWs5VHAnlwXyd07
         k6du41gVFwdOJ3Y2FgRV9DFhoJzdluUtr8S1HiZ1LJVR7qE8U+eRcA8sRyEIZVdwVlBo
         pND1x14c/hAiAIGwX0MPr7YWL5stcomX4JE26+zUawZqsd8ZyBMl0poUOqQ8JkqHSlF1
         8EYg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=OWTIUAVFP2anE9mSP1JKDL9Fh4OX+hz4JarJFtxaxJY=;
        b=opaN7j2ciOmyRL6Q4dgjdkZrtPaWo0512oBbkb7wlMx7OuXKfte8ifcHD4FPT6l4Vq
         rjz4jnSMghgXMMufTLhf3vpCgmLiPwqxXPV+QSDElXf8UlpVt/9GhRwhotmPXH+IJTWR
         dbMV+FlBuvClQhhLXUa6dNGyCU0kyIig47WShacNuX2ybZzQpULFMOTE9LwEJG/DVUfa
         cQWzBHtty1rTNvjcCK9DBZTIbrBzbLtp1ic8SsWn+kBGZLH1Kvkbx1y55fdVfceYADwk
         eEx96LyCRbF1+ynDGEeZXRjGBUL7VO43E1uhqzSIOjlxbxjkw/vaaalK5V2pxLfAgshA
         F9Vg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=AOTr95qz;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=OWTIUAVFP2anE9mSP1JKDL9Fh4OX+hz4JarJFtxaxJY=;
        b=TxxSdzX0ZSSVSQGADR6/yjFREW5yxeAGAIuqhtkkW/kk/Zq3KrhH/g1MTA/FFdTb8o
         f2LA/F217L8YVjW08/3XUGWwUHemmCQd7aPgFPH8uqYzxznXU7evBhq4PEH81NJmSdeX
         z3vPsbyhq0Ur+ilP7X2Ko8ieZhIawUQCTpZ/wKr7cX+FDvth8t953NOu3r8TauPDxNLK
         0W6LzptbLWFE8YLzrKFF6dK4Uc22HtlnXXuGqk1a4TmO6hQvq562y6HFwSfOH4+/3Opu
         FgfA2CXq2WlXLrgqKC4CELgO0X4AdQtjTF92AQohlApIRzlwWWU44HRzuNbtEERQMWnZ
         8GTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=OWTIUAVFP2anE9mSP1JKDL9Fh4OX+hz4JarJFtxaxJY=;
        b=WSsstt1eSQwVkNtFAmO5fAbTOGOOOo+Dbj4t/LJBtgBZZkDLuCuOOV5l94EL3phJ/I
         w7ccHLlkvKVcaFVEttCjfOAkYrMsqzm9IaEyBbEWLbcj/EIFs5bK1pOn4aW914X+N4Bd
         xjWAbnUWz5QAv9x0llfFfSDyb3Iw8ScaDsFx1zfC4hUxxR3HeqSr92a2iSBxK6LHz38+
         SJCkTLJ4jaa9XyovseHZw6YeiwxuTcEtYLgKy7wxxa9JtMTuesdexu5ws6zQM3xEmhB/
         6MPCEkS1UMh8kizY/7uUX174ArqNHckas3LgolgQDTnd7sIj42fY5B0bFmkY1XMSyPN8
         cV8g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532/5Fk0RamOI4kUoxaBUG4zL4fThRzs2FZgqmJfNrBAWGHyJOKx
	MzYcqae3U742ex3KpCJjR34=
X-Google-Smtp-Source: ABdhPJyzxXP0G2Cmjh+3vjCT0HMA9hcodA0yNlFJVO1ZLJ4y+/ZxPDV/H9LdIuWmGNrXhHMshkqnYQ==
X-Received: by 2002:a17:90a:110:: with SMTP id b16mr1622822pjb.235.1595462190306;
        Wed, 22 Jul 2020 16:56:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:8421:: with SMTP id q1ls1205420pfn.8.gmail; Wed, 22 Jul
 2020 16:56:30 -0700 (PDT)
X-Received: by 2002:aa7:8651:: with SMTP id a17mr1918992pfo.48.1595462189924;
        Wed, 22 Jul 2020 16:56:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595462189; cv=none;
        d=google.com; s=arc-20160816;
        b=zOKOJaWv5QW2HkyBr5Em1imoFTeX77hicIe5jDtm/EAkMS/P02lrzjTtCpInhnutU+
         Qopvz81A0E7EtVuNyHydmqN+vN0Ml67brUYAVMGZaXONekMrnauTc7tDkQ9dk4yr5pnB
         jmh+yC8SzGzk02rTKhPsFTlwcx3JnB8mb7Uk/rkWUOBldNG2Gh39C3ng55hUt1yVimFK
         YZxG3bY9JSj2VyTK8TMuB9AoxVyKZi7uu8kRqviCUrlZIq35Q2NAdLO32xkdupDHAsTN
         xp2LwgvKfEXdUkq4DVb7ONzgVGtqqMq8kGOQ56PPqOGlm+alF6sblOcmmXyinEnfymBk
         TB7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=+o+RK6ajhbuXa8t53WrOJ/qO/QqSI4MSwqISfWHz0Bo=;
        b=fw3Vs4GIgNWLraGgZk2fqwOJ/wzdhpCNX5Tbwep8J8yeCr80HCevabwPWHDDXCzUcp
         b/o+pzb/e57xUJhYDWhuzXaEaCEeqmCJ9I628lzYtQYcL4OPK4BuhYL7ehN4EEkBBCNV
         KW4A/8h/rlAYxm0r22hDCdx2NttM0D4Uc+HvXsb6+RWjS9sVgpj/kyPaG0jeZNSKh2tS
         chbY3Os41mzD6m8TucgIP6AbFS8OAbrxY7B6kQvGbctfNN8vhH+aWUkSY+SbunUGtA8q
         IsN7Z8YrIEgfD7d0BUtyrFtcYiFjhP6Tkcdw+tQUK+JszNjeWW7rVPNQvH+cVv8s7P6x
         4MvA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=AOTr95qz;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from merlin.infradead.org (merlin.infradead.org. [2001:8b0:10b:1231::1])
        by gmr-mx.google.com with ESMTPS id g22si21176plq.1.2020.07.22.16.56.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Jul 2020 16:56:29 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) client-ip=2001:8b0:10b:1231::1;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jyOb0-0007ot-PD; Wed, 22 Jul 2020 23:56:23 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id A4C193060EF;
	Thu, 23 Jul 2020 01:56:20 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id 8E31729BEC9E1; Thu, 23 Jul 2020 01:56:20 +0200 (CEST)
Date: Thu, 23 Jul 2020 01:56:20 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Steven Rostedt <rostedt@goodmis.org>
Cc: Sami Tolvanen <samitolvanen@google.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Will Deacon <will@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Kees Cook <keescook@chromium.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com, linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	x86@kernel.org, Josh Poimboeuf <jpoimboe@redhat.com>
Subject: Re: [RFC][PATCH] objtool,x86_64: Replace recordmcount with objtool
Message-ID: <20200722235620.GR10769@hirez.programming.kicks-ass.net>
References: <20200624212737.GV4817@hirez.programming.kicks-ass.net>
 <20200624214530.GA120457@google.com>
 <20200625074530.GW4817@hirez.programming.kicks-ass.net>
 <20200625161503.GB173089@google.com>
 <20200625200235.GQ4781@hirez.programming.kicks-ass.net>
 <20200625224042.GA169781@google.com>
 <20200626112931.GF4817@hirez.programming.kicks-ass.net>
 <20200722135542.41127cc4@oasis.local.home>
 <20200722184137.GP10769@hirez.programming.kicks-ass.net>
 <20200722150943.53046592@oasis.local.home>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200722150943.53046592@oasis.local.home>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=merlin.20170209 header.b=AOTr95qz;
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

On Wed, Jul 22, 2020 at 03:09:43PM -0400, Steven Rostedt wrote:
> On Wed, 22 Jul 2020 20:41:37 +0200
> Peter Zijlstra <peterz@infradead.org> wrote:
> 
> > > That said, Andi Kleen added an option to gcc called -mnop-mcount which
> > > will have gcc do both create the mcount section and convert the calls
> > > into nops. When doing so, it defines CC_USING_NOP_MCOUNT which will
> > > tell ftrace to expect the calls to already be converted.  
> > 
> > That seems like the much easier solution, then we can forget about
> > recordmcount / objtool entirely for this.
> 
> Of course that was only for some gcc compilers, and I'm not sure if
> clang can do this.
> 
> Or do you just see all compilers doing this in the future, and not
> worrying about record-mcount at all, and bothering with objtool?

I got the GCC version wrong :/ Both -mnop-mcount and -mrecord-mcount
landed in GCC-5, where our minimum GCC is now at 4.9.

Anyway, what do you prefer, I suppose I can make objtool whatever we
need, that patch is trivial. Simply recording the sites and not
rewriting them should be simple enough.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200722235620.GR10769%40hirez.programming.kicks-ass.net.
