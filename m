Return-Path: <clang-built-linux+bncBC2ORX645YPRB46P2T3QKGQEAU2VQBY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x739.google.com (mail-qk1-x739.google.com [IPv6:2607:f8b0:4864:20::739])
	by mail.lfdr.de (Postfix) with ESMTPS id C32F820A853
	for <lists+clang-built-linux@lfdr.de>; Fri, 26 Jun 2020 00:40:52 +0200 (CEST)
Received: by mail-qk1-x739.google.com with SMTP id h18sf5245770qkj.13
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Jun 2020 15:40:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593124851; cv=pass;
        d=google.com; s=arc-20160816;
        b=tTKJZoXZgTHMXSMnB8xjkQRlP9QIJlGSe8FzdsjgroRe04KCSG5OnEO9i/px3GEMZo
         nZbVu7VbXeDTx/by+shx5lo6VuAexSQ+GJ9ITWvJH6Ai0JST2VZYpGkuk4lkARIYJM8w
         Jslj2zrBnRuiudALM7dHn/KFZ90Q0HE/6oaNHceu7NwYMZ3Ci9IsBvLVv6c1OJKjGJNd
         oS2jrkP60nD4PZ/1zpkfp4viwe7Tjqw6eKRNpnV/s+dadzJMjUckKxoec/V6JAcXlKlq
         UkhuBKEcsjEWnwf3mfYniHjuThEH94GnVd4WqSpSVy2GkQLCZ7jfjkS+p/N7CoW/8ode
         LlaQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=p4hhkUolLlIrOxQOUAsqEIm50iKuQLZkdIvVvnZSfgE=;
        b=PSrp5V9v/5yJlgYj0tQ2yIlZKHT0m3ek2bCYGWOUl8tIIMbO/i7oDlr2pK0GRhiiSx
         7Zz72jOqIs1cxbWbsfl9dgfl67UVrqG0eL1kUc2hjvmvr36ygJaon1wWW2RUnmi2ztC2
         E5wrMWi+c6m6IfByyXm6FFWZDItTZZHJpQ1C+95SVxjZoWkipikzBSXqtYbzpIg5flQS
         oXVU0G6EpkKdX/be+eKsFoqw0MLZX94hN2JOgQwUgIFApackKhoYr6z/a0KZqJxVHakZ
         3InVGxJqi52UdGJ2PSFY1+8cKOsfBZlWq9ZptD9XHRaHhQ6vIXthFkFHHKgPXH0gkS50
         26RQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=vjDkS1ct;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=p4hhkUolLlIrOxQOUAsqEIm50iKuQLZkdIvVvnZSfgE=;
        b=cuOU3Rda4eM4jfk5o0FfVas6Hsbr2PXeX+p/h2CLhzEF+NH0wJOCSVRnXbhO8p2NOT
         wkVMopjil0Btw3Mi+fKUS9ux8ctpGCuGrIU+kiDsgk/+hYOrvWo2Aiu/VmEfUxS86Gze
         DqjDVLgQ7s70jOjlGv+YE1pYa0ZQ0p3qPIWOuNBlAvC30nh0wwhRMao2tE8DFZmFmTK3
         KBRVKJxDrackGlotClx0VvYp7JdYTMZ4by7gXlRCx01/+ShP4w89ou2z2cWa39wJDJFE
         fIkv55ZcTesuHQYAvvXFqQwH5jcU7uR6ttYJgIR1yXt+l8D9PkO8pB4N6izyLWnUbRJz
         I/XQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=p4hhkUolLlIrOxQOUAsqEIm50iKuQLZkdIvVvnZSfgE=;
        b=kueLJ5Uyx+oWxCCUPmklNMYy+x2aeVF8pqIFIuU7UUPaATY6Eu5gow+H5CEIsHWShB
         iVYaRx/i8nDfvOpUiw+2yger9JPEkET/puySesB5yOnKlSoA4LwnUl+FYSsa0yalF5fi
         gwIxBf8GtTmnIQSGfV58qnE/1SgJZHrK54V/acMHVo2csJHTD0VcMXMN2iu5W6s26yx8
         Vevxjwo/OW8rSEofRIc7UQDj4QxxzPmy26hFJrlgmKS2yfoR/Na+3PAEcwew74KKLCnA
         txO/o5xHrXbGUDa2DgXq0PvHoMxeluD/ks9vpwIqFh0tFuiNHTxqUzYJ4UF4UDxRwW61
         di6w==
X-Gm-Message-State: AOAM533kShCb7neudgGJA7IvPV8hiXW1rAW1DncjSactsFllrlQvD5Nx
	qKVTPcFCFrWEldRuXmAnGho=
X-Google-Smtp-Source: ABdhPJx7BvTRuClQawKhcEnHzQ38tHEW27rSJZrr5aiV6YoKDrP5lR4RZy/OmhABd1EL66zrPjWWAA==
X-Received: by 2002:a05:620a:905:: with SMTP id v5mr31270228qkv.268.1593124851697;
        Thu, 25 Jun 2020 15:40:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:17b3:: with SMTP id o48ls2944752qtj.5.gmail; Thu, 25 Jun
 2020 15:40:51 -0700 (PDT)
X-Received: by 2002:ac8:709:: with SMTP id g9mr22531189qth.276.1593124851310;
        Thu, 25 Jun 2020 15:40:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593124851; cv=none;
        d=google.com; s=arc-20160816;
        b=EKLemH8gqkVFC1O7FXXDuXoK/6O/UX9LZcBr/op6Owq8fw0GZDbygaOo3DCrPx/Go5
         mHbzTTql41WKS6ilW1BlPbIMCD6a+BjMh3WjqZkoJnPZgtUhTHdD50HK/616gspmJQ+S
         SWqjVR4XfK4Znqv3uczE4KFy0CHSgAkYO9Z0MbKNhwwT9XV+YzQmnEzRWukLocKVVixs
         jT29lGO7MjTfN/tnJkzsxnpBKWJOmV+3mm30UxITMZ0REqCF3v4Vgut/pifgjktpS1SS
         +yfHMd/Zwok0Zsz8cA36B6hQ7VwWNkLyEPHRC27q07DUc1nSHpjRhiJoJeH5NdqGagvH
         Gd1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=jrKbnig9QFRhNV6K+9Xoewg6ga8WAeyx+cHHuuAPHlw=;
        b=V/hz7JSktXYZM/+YY2FGMC5/mV9rB6rQuPT0xKYCfraFKilFTXkifql9NAxvQ4ZSnv
         MqPGalXiGDN5KnqnzgQe2akZ2H0ONCO8TFCt6YJ7t39a0I/B8ZmLITWAtCcm8HFqRe3R
         wiA6XhTSGJCENoDsdd+pFKi9t1pJMtZ3637abIzE3ofQN7a6+kKiHXcZeLO9NIpLNjFT
         68yeZypU6lpVPZVgBM5z2bluEYd2ab6Yg/xjXKReD4EsNuT/jK5zue6nSK3zastV+Qqh
         zbK+uoc0hujqCF8rUU3rSgE+RRofwi0kGDjhU+p1e7VDHQuiB/vCRYfEYku+pB+6+jVB
         id8w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=vjDkS1ct;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1044.google.com (mail-pj1-x1044.google.com. [2607:f8b0:4864:20::1044])
        by gmr-mx.google.com with ESMTPS id d27si1140316qtw.1.2020.06.25.15.40.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Jun 2020 15:40:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::1044 as permitted sender) client-ip=2607:f8b0:4864:20::1044;
Received: by mail-pj1-x1044.google.com with SMTP id i4so4051138pjd.0
        for <clang-built-linux@googlegroups.com>; Thu, 25 Jun 2020 15:40:51 -0700 (PDT)
X-Received: by 2002:a17:90a:7c4e:: with SMTP id e14mr256081pjl.52.1593124850158;
        Thu, 25 Jun 2020 15:40:50 -0700 (PDT)
Received: from google.com ([2620:15c:201:2:ce90:ab18:83b0:619])
        by smtp.gmail.com with ESMTPSA id k92sm9112547pje.30.2020.06.25.15.40.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Jun 2020 15:40:49 -0700 (PDT)
Date: Thu, 25 Jun 2020 15:40:42 -0700
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Peter Zijlstra <peterz@infradead.org>
Cc: Steven Rostedt <rostedt@goodmis.org>,
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
	x86@kernel.org, Josh Poimboeuf <jpoimboe@redhat.com>,
	mhelsley@vmware.com
Subject: Re: [RFC][PATCH] objtool,x86_64: Replace recordmcount with objtool
Message-ID: <20200625224042.GA169781@google.com>
References: <20200624203200.78870-1-samitolvanen@google.com>
 <20200624203200.78870-5-samitolvanen@google.com>
 <20200624212737.GV4817@hirez.programming.kicks-ass.net>
 <20200624214530.GA120457@google.com>
 <20200625074530.GW4817@hirez.programming.kicks-ass.net>
 <20200625161503.GB173089@google.com>
 <20200625200235.GQ4781@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200625200235.GQ4781@hirez.programming.kicks-ass.net>
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=vjDkS1ct;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::1044
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

On Thu, Jun 25, 2020 at 10:02:35PM +0200, Peter Zijlstra wrote:
> On Thu, Jun 25, 2020 at 09:15:03AM -0700, Sami Tolvanen wrote:
> > On Thu, Jun 25, 2020 at 09:45:30AM +0200, Peter Zijlstra wrote:
> 
> > > At least for x86_64 I can do a really quick take for a recordmcount pass
> > > in objtool, but I suppose you also need this for ARM64 ?
> > 
> > Sure, sounds good. arm64 uses -fpatchable-function-entry with clang, so we
> > don't need recordmcount there.
> 
> This is on top of my local pile:
> 
>   git://git.kernel.org/pub/scm/linux/kernel/git/peterz/queue.git master
> 
> which notably includes the static_call series.
> 
> Not boot tested, but it generates the required sections and they look
> more or less as expected, ymmv.
> 
> ---
>  arch/x86/Kconfig              |  1 -
>  scripts/Makefile.build        |  3 ++
>  scripts/link-vmlinux.sh       |  2 +-
>  tools/objtool/builtin-check.c |  9 ++---
>  tools/objtool/builtin.h       |  2 +-
>  tools/objtool/check.c         | 81 +++++++++++++++++++++++++++++++++++++++++++
>  tools/objtool/check.h         |  1 +
>  tools/objtool/objtool.h       |  1 +
>  8 files changed, 91 insertions(+), 9 deletions(-)
> 
> diff --git a/arch/x86/Kconfig b/arch/x86/Kconfig
> index a291823f3f26..189575c12434 100644
> --- a/arch/x86/Kconfig
> +++ b/arch/x86/Kconfig
> @@ -174,7 +174,6 @@ config X86
>  	select HAVE_EXIT_THREAD
>  	select HAVE_FAST_GUP
>  	select HAVE_FENTRY			if X86_64 || DYNAMIC_FTRACE
> -	select HAVE_FTRACE_MCOUNT_RECORD
>  	select HAVE_FUNCTION_GRAPH_TRACER
>  	select HAVE_FUNCTION_TRACER
>  	select HAVE_GCC_PLUGINS

This breaks DYNAMIC_FTRACE according to kernel/trace/ftrace.c:

  #ifndef CONFIG_FTRACE_MCOUNT_RECORD
  # error Dynamic ftrace depends on MCOUNT_RECORD
  #endif

And the build errors after that seem to confirm this. It looks like we might
need another flag to skip recordmcount.

Anyway, since objtool is run before recordmcount, I just left this unchanged
for testing and ignored the recordmcount warnings about __mcount_loc already
existing. Something is a bit off still though, I see this at boot:

  ------------[ ftrace bug ]------------
  ftrace failed to modify
  [<ffffffff81000660>] __tracepoint_iter_initcall_level+0x0/0x40
   actual:   0f:1f:44:00:00
  Initializing ftrace call sites
  ftrace record flags: 0
   (0)
   expected tramp: ffffffff81056500
  ------------[ cut here ]------------

Otherwise, this looks pretty good.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200625224042.GA169781%40google.com.
