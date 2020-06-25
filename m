Return-Path: <clang-built-linux+bncBCV5TUXXRUIBBQVM2H3QKGQEI3NDROI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43e.google.com (mail-wr1-x43e.google.com [IPv6:2a00:1450:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id A0915209ABD
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Jun 2020 09:46:10 +0200 (CEST)
Received: by mail-wr1-x43e.google.com with SMTP id j5sf6256796wro.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Jun 2020 00:46:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593071170; cv=pass;
        d=google.com; s=arc-20160816;
        b=PFEsLs2tTs2GzVgx2Z8cRyi/NvQsoMIukrdo74ekYC2rQ0ozCznUp6ZD7B+IvhAkPE
         DpWnXu4tX+40etlBll6YOaKf5rMgK7AeZAjpdlQ39nah9eBOO1J1UYxs0MapbFhKAgSS
         tbA9pfPG9zMIxE/1D2cd70zbr/auPfcqVv4lEw+2DbrD7qNc8jYWahiwKqQC4i3MUh4Z
         vb1+EiPdlVIHFAUEPacpN9gRnKJE+qF3Oza6s559wiEWcyloc5JVOuH7YvpYI2LEJOHT
         4Y40cyxA9SDl7FgADHF5R0HhqQ4d9r5s4OFfsj+SA8xq9bq9R8mnbPgWn9oBQkWPgO61
         rPKA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=Zen0W73qgS7CilCS85256OWLr0q2QuWgdlKUy3YZBfU=;
        b=BGaDAasIdeCZLZee8xiAEHs1zvT+8bAWvEgo/qOINzow9D7UQgcG+wm2TwZySfBwxZ
         TyE1mf1lZybe2xuIW4M52RbdYSEHKzVkmXsRjRzfk/s9MaUeo8Cs/Fl2wLVthrQgRX2C
         WW7iBVRstohbp7lp9+qF53JC0oqHwLOQIXv4so988CFUB8z+g1bKTgNAX07A7yPCN7O5
         BZIqUKuQjQ7BEquNLK4qxLrmwRMMI9jVf7Sw2BNNyB8CCwwlJL6J4FAtVBjEysyQaFxg
         JvN1/lisnToNBBeIYc7QYupnzI8o1bPFn/tjCiMa6KodU+EvayT4g4jg9v5zb/5OzukL
         ZUZQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=MVs61XR8;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Zen0W73qgS7CilCS85256OWLr0q2QuWgdlKUy3YZBfU=;
        b=Rve4yvA49lxMLGrS6rvAl2/yXVR18zjZ+haOcZf9uWQUUTBne7uXq273OpRYeIzobU
         nvZymJxX6lUgRQU7CHKxKdVyr7ET19UhSpcHvZx6K+sZDNHMlWDSQl/2IL+MdGYNEtUF
         ccgt0TX81MwV+2oZXiMxlYq8BA6KxR+6AQNh+BEjHKJhDJUlDDIjOjFvNHZCONmO+As6
         H5SLd89bCYaZyQRrS850s9jW20Whg38r/CljcoJhdPTyYtg8fN2rlClOQArE75zRt5Si
         FVTikvkSRcjeOnwPlGI27hlgJIog+Kw7KfIj+ANSSurqxhaCovDbTDWpWaWQVAHMS2IP
         E5Cg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Zen0W73qgS7CilCS85256OWLr0q2QuWgdlKUy3YZBfU=;
        b=I0lN1FEM635oZyKc6T4goPevlETYzmpdvu1Jq5kLPbWK/NBlq8JIWbeimR9XR7zmZq
         DD23N4oEKiweZiNoedtibEZYG/gnZb4GQq8nC3PQ0n3lqYFEPZmoXg4MhEaRPRGsaywc
         /9NrJlEJMWZcTwibXrtpwC98vo2g5fltBr31a5M82K30QSYRg+/MVwnVZxw30ZAUz0Lu
         ZiAgJz6urnsW1+rnlYpj7RemRn1jhUqBe0l4cJuCNGd8wkAu3RVt3eeZEo/gol5/2g6v
         ETzvV6HkW+0VLUyTM9hIGexa0rrZq4vc6cR3FSLXnnBGoX+0hYlXAwALJ2XzeE3xJCUR
         L+Fg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530LGO8bC9vxCAfD6QPefO2XDFMpTfr1RRT/JbrrYsgChBjgGKwY
	wjLfubRWBKz9LuNFfFAo/wg=
X-Google-Smtp-Source: ABdhPJzAnHhhg6hgVQqaG50M5j4LMKoSN0D8QLNWxM3YOv8PRhmBgw6739t0vjOj/Gbz7UzSqQHn4A==
X-Received: by 2002:a05:600c:2202:: with SMTP id z2mr2028969wml.13.1593071170293;
        Thu, 25 Jun 2020 00:46:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:f58d:: with SMTP id f13ls5385783wro.1.gmail; Thu, 25 Jun
 2020 00:46:09 -0700 (PDT)
X-Received: by 2002:adf:a507:: with SMTP id i7mr38115323wrb.0.1593071169771;
        Thu, 25 Jun 2020 00:46:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593071169; cv=none;
        d=google.com; s=arc-20160816;
        b=p1rOOcWfkVNsfMQLGqJl9vRsps9R1Io0U43jtfBLm9g/mI7LTVeHGfAry4O+hNCjs2
         GRolRgH/3pIoztFlewavNDs5NZ9Zo3kv+RQ4V4wzOuOzeGV99x6P/YrfHSr/C/myuJeO
         SPZe+l2FjBM3t+5Slx6JRJJZ1ftR/Ms2csCHUWJMENujoiMZibOrwI+LP8SZKdJazx/M
         EaQCUGm30rAvw66zLUYq6HZ02V6WIiyIDkMFw8CcJjVadx+zcvf1J8gE3naU4nPotTIL
         TrMEy4EIceYFKMoBMyA6hCcZ5TlXqKF1/VDXzlXRpHSjHZf5cvJ3XCD9QHOX7KiQzzEU
         4lYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=2aQ/V3CRB+JTPOL3qC/HxsWm+wJhkXGBtq9FiN50dxw=;
        b=QMfbO5NIAJ2afukaNWJvqwtnRcpjqsxIRL7LLpP38IQ+FCBTGASTr4gPtq9USVE5IF
         GdJPS9IY5jvao5i33kgnJ0IJJZ04XVXaWurpUs/+DdoO2yrd5Z8dYP1QCyJ2nwhqQ1Vm
         FY6xFk9k2sD4qnz5+bvZ4ce109zdKASxG9+kLRMeiE2/68vGaXlG4vEOHz9B+H5Nv0N+
         iF3qLDnBdQY4bD1EIBtv/mPq/QmBnWLu/8cQonsmZWPSWOLF1EHg2uFNCblVPR5rZoh/
         ymgkdbM95eOB4nc98vPxBVA29HpPk1orKd0F80vPBmHTVaGhiHRTodDO2j4cYJfyrz2O
         NfXQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=casper.20170209 header.b=MVs61XR8;
       spf=pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) smtp.mailfrom=peterz@infradead.org
Received: from casper.infradead.org (casper.infradead.org. [2001:8b0:10b:1236::1])
        by gmr-mx.google.com with ESMTPS id o201si244899wme.1.2020.06.25.00.46.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Jun 2020 00:46:09 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of peterz@infradead.org designates 2001:8b0:10b:1236::1 as permitted sender) client-ip=2001:8b0:10b:1236::1;
Received: from j217100.upc-j.chello.nl ([24.132.217.100] helo=noisy.programming.kicks-ass.net)
	by casper.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1joMZg-0007WT-Ba; Thu, 25 Jun 2020 07:45:32 +0000
Received: from hirez.programming.kicks-ass.net (hirez.programming.kicks-ass.net [192.168.1.225])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(Client did not present a certificate)
	by noisy.programming.kicks-ass.net (Postfix) with ESMTPS id E3B15304BAE;
	Thu, 25 Jun 2020 09:45:30 +0200 (CEST)
Received: by hirez.programming.kicks-ass.net (Postfix, from userid 1000)
	id D836B203CDC50; Thu, 25 Jun 2020 09:45:30 +0200 (CEST)
Date: Thu, 25 Jun 2020 09:45:30 +0200
From: Peter Zijlstra <peterz@infradead.org>
To: Sami Tolvanen <samitolvanen@google.com>
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
	x86@kernel.org
Subject: Re: [PATCH 04/22] kbuild: lto: fix recordmcount
Message-ID: <20200625074530.GW4817@hirez.programming.kicks-ass.net>
References: <20200624203200.78870-1-samitolvanen@google.com>
 <20200624203200.78870-5-samitolvanen@google.com>
 <20200624212737.GV4817@hirez.programming.kicks-ass.net>
 <20200624214530.GA120457@google.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200624214530.GA120457@google.com>
X-Original-Sender: peterz@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=casper.20170209 header.b=MVs61XR8;
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

On Wed, Jun 24, 2020 at 02:45:30PM -0700, Sami Tolvanen wrote:
> On Wed, Jun 24, 2020 at 11:27:37PM +0200, Peter Zijlstra wrote:
> > On Wed, Jun 24, 2020 at 01:31:42PM -0700, Sami Tolvanen wrote:
> > > With LTO, LLVM bitcode won't be compiled into native code until
> > > modpost_link. This change postpones calls to recordmcount until after
> > > this step.
> > > 
> > > In order to exclude specific functions from inspection, we add a new
> > > code section .text..nomcount, which we tell recordmcount to ignore, and
> > > a __nomcount attribute for moving functions to this section.
> > 
> > I'm confused, you only add this to functions in ftrace itself, which is
> > compiled with:
> > 
> >  KBUILD_CFLAGS = $(subst $(CC_FLAGS_FTRACE),,$(ORIG_CFLAGS))
> > 
> > and so should not have mcount/fentry sites anyway. So what's the point
> > of ignoring them further?
> > 
> > This Changelog does not explain.
> 
> Normally, recordmcount ignores each ftrace.o file, but since we are
> running it on vmlinux.o, we need another way to stop it from looking
> at references to mcount/fentry that are not calls. Here's a comment
> from recordmcount.c:
> 
>   /*
>    * The file kernel/trace/ftrace.o references the mcount
>    * function but does not call it. Since ftrace.o should
>    * not be traced anyway, we just skip it.
>    */
> 
> But I agree, the commit message could use more defails. Also +Steven
> for thoughts about this approach.

Ah, is thi because recordmcount isn't smart enough to know the
difference between "CALL $mcount" and any other RELA that has mcount?

At least for x86_64 I can do a really quick take for a recordmcount pass
in objtool, but I suppose you also need this for ARM64 ?

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200625074530.GW4817%40hirez.programming.kicks-ass.net.
