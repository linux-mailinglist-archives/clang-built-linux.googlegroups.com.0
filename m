Return-Path: <clang-built-linux+bncBCIO53XE7YHBB7MU4X4QKGQEUT3TZTA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x240.google.com (mail-oi1-x240.google.com [IPv6:2607:f8b0:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id DEC41245844
	for <lists+clang-built-linux@lfdr.de>; Sun, 16 Aug 2020 17:02:22 +0200 (CEST)
Received: by mail-oi1-x240.google.com with SMTP id d74sf5514819oib.3
        for <lists+clang-built-linux@lfdr.de>; Sun, 16 Aug 2020 08:02:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597590141; cv=pass;
        d=google.com; s=arc-20160816;
        b=q/hMNe3TH7YCsfJdMZs8uXUf9LEgsYf/AV5lKa8TtEPjr+r5bsFMr4JU6hql/jUncM
         qj8DLuvtUXdaIoZ/IHyCsgUklqVjS/3TuHzsDw/zHowZI+LKmTMt1Jues1HsekW2T43b
         zN/EIg+AaSds762+2Oz9eoZTuGwzGFTPOFMauO8lpP775BOw4FZyHZYbp6niJ7Gs2SGf
         rNVCTO4CyyZQFI7wpMjYVtbCkNfcZAdxDnEOcqqHXbbsTMoBhP0Zr5l6Umxm5WX+b12J
         1/RFRFf5hTcapmFNGfM6saFVcE0GdNPxMeOWV5QSpKQurjhT5kdUK4qwNbE7ANJRiZWk
         VNwQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=T6Cyh1mLJsBxuPT0qeFOfoa9kiIyhEZj9z/6cOG17QM=;
        b=FBk5c/fJYDWaj+TD1kuMk2zhn20cEFxKv7jxWBFkJGO08DpIybA+jswo2vrSYVpUzp
         vz0MOekDzeXq1OZ7mN24DP4f11gek/S9TiDJ7223/z28uheAWN0yRyHkaxhxGLnM+EOo
         S0nom/lUaEsRxchgpmsyv93VekMYqGFV5LMBUwOAWJtExlgkLKU/08hAtAdzM/WlgvYA
         ASRXqtPeLEtCxA/UnBb5e7ol50ooCJnDVBISCrAgSZ5ufhSxnaV76zCNg77pCo0mic+K
         rS2xna5DzXUJBQPmDUoaselfIaOBIW+Et+fjaFk/zPTa4ckyeHjQLOTno6HgmfuD7TmR
         2aTQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NITocUg8;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=T6Cyh1mLJsBxuPT0qeFOfoa9kiIyhEZj9z/6cOG17QM=;
        b=eT0em90lpYYHXy9L6D4vwt4TT9avqepla02We7N/kTw4SGnjfK4S1QWpsaO8iJ6h4B
         WGPFjF5+xNe9Uk703SOczKwseTRNBkJKTIKzhucCyRklQk9hNQ7aMlalJYvNIlvRZFKn
         NtcV1drwyOxTldg0ixqMs09REFK6DVr5einLWIQQF/vX9pUiy82DjHEWxOy3P4TtXts1
         ROjBzVHbpkPhJJYRnHO9j1rrvkZMEx7n4ijkLJcee//Z7g6635/pJtYkifmvxfs2vSzY
         Q6kG8qjxzb9VEA3jSTFZD1ry6o3Nh3/GKzmk8UWHQVh2fqVFlh0IzdJTtYTtQNel6cJB
         6YPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=T6Cyh1mLJsBxuPT0qeFOfoa9kiIyhEZj9z/6cOG17QM=;
        b=hi7pVXmheDdTN1rTE0UCWj81zzkftiSQStT/bVxfpCpwAgnf4T4CC/qxxB/cstPRBt
         wv/xBaTE5Mhk7pMuuBBRAThoIFdWMI3c8IO0BDLhQ6fwEc230yeql9vsjrNCdMgEMEUR
         qZsl5rR7gt55QjSWuH24zLF1qFbV3hD8VAUWqn7mCVGF+A1FDElF8Mmr+ufB4C6u+lr2
         MWCKtUZsfNicgHhMjSKEKE+e/IYBFDarW76O/xuuD8VE8tfZhPpWMVNB8eHChF/ipsdU
         y9+OOkfxEFFVaTtRZ4IBlEAW4MBR1nnWx+qTHzJ1ZvSIlE6Wb+Z26TG0vxovLQancoVA
         JGCg==
X-Gm-Message-State: AOAM531+PJ0454a9+15RGxJZctNP2qisKEsPrC7QXZT1+PJtoAc/iwdM
	0tLKpPQgTI5CMRcqPqGSxsU=
X-Google-Smtp-Source: ABdhPJw9df7PazYNC+Af4gYNg0LHvzvWlbfgcVYHJOdI5yhBc6dFKx8vM/ygWd77lopAwxcKfCkC3Q==
X-Received: by 2002:aca:490:: with SMTP id 138mr7184800oie.62.1597590141593;
        Sun, 16 Aug 2020 08:02:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:de07:: with SMTP id y7ls785788oot.6.gmail; Sun, 16 Aug
 2020 08:02:21 -0700 (PDT)
X-Received: by 2002:a4a:95c5:: with SMTP id p5mr8029826ooi.83.1597590141265;
        Sun, 16 Aug 2020 08:02:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597590141; cv=none;
        d=google.com; s=arc-20160816;
        b=rSahwvf2WD62o4v/msFKjrat0W7vvffcvSJFrcrmXemfuJ7OZQ/xGqc+xR5mXxDmHO
         cCO9XUpMccxWC2APzhDUDcEaOZkS9wHOOkMhC86kuzvWkABTjGIgtwlqdOj8ZlJDZqML
         rPTu6oVt6YHgDFepO2LRbpb6mSH+4+bHw5XDddb2PoYUm0h8LC3EDEh7vEKeYZfaFvCv
         Wvcl8ccKAwnnCfcN0TtYAlR0K056r9gp3wZz67W4fh9HdP6IgSNfL4MXegHiogE0n1xq
         1caXVD/AVrr5XlBpRvSBhDBBa5I08CdD+EaXWoTW2LmKZw77ZPxOWuV8U4+n0a58va9z
         RaDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=yw1Hg3YiuW4Axw2+s5MR8uBtZOL99Paku5YKL39/E/o=;
        b=i18wHW9UuRf8fS1QOu0LWcqgBSq/bw1GFHs5CzHFtBS6RCjjy+jcpn6Y2595E5Usqa
         vD/WDfveyjKGQqTmLxb5kkr+NslN1aezXMau7GY/5sr2SoZLGRw9c6nVz99BtCwayj5v
         e2Ymb2AA9KNgvxV8VRtJX5tqXs+kGP8l47QEb6t4a0pAgyPaV8MMoc44DvPe5eWnyi0v
         1+tDWP3O7TtpGjQlN1twcW6imkU8yFAV58PPrXPkrof4TpDpfd6hdkU+V4BCA7SbB56/
         6GQHAnDd0kCzq0CQ+WApZQTmrTiPwC6cNYLYn5SJ8UnVI99O2APjYInE+VvauYlKOBTo
         +d0g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=NITocUg8;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qt1-x844.google.com (mail-qt1-x844.google.com. [2607:f8b0:4864:20::844])
        by gmr-mx.google.com with ESMTPS id c199si638689oob.1.2020.08.16.08.02.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 16 Aug 2020 08:02:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::844 as permitted sender) client-ip=2607:f8b0:4864:20::844;
Received: by mail-qt1-x844.google.com with SMTP id s16so10595271qtn.7
        for <clang-built-linux@googlegroups.com>; Sun, 16 Aug 2020 08:02:21 -0700 (PDT)
X-Received: by 2002:ac8:454b:: with SMTP id z11mr10193757qtn.350.1597590140648;
        Sun, 16 Aug 2020 08:02:20 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id g3sm15663502qtq.70.2020.08.16.08.02.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 16 Aug 2020 08:02:19 -0700 (PDT)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Sun, 16 Aug 2020 11:02:17 -0400
To: Sedat Dilek <sedat.dilek@gmail.com>
Cc: Fangrui Song <maskray@google.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Joe Perches <joe@perches.com>, Kees Cook <keescook@chromium.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	=?utf-8?B?RMOhdmlkIEJvbHZhbnNrw70=?= <david.bolvansky@gmail.com>,
	Eli Friedman <efriedma@quicinc.com>,
	"# 3.4.x" <stable@vger.kernel.org>,
	Arvind Sankar <nivedita@alum.mit.edu>,
	Sami Tolvanen <samitolvanen@google.com>,
	Vishal Verma <vishal.l.verma@intel.com>,
	Dan Williams <dan.j.williams@intel.com>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	"Joel Fernandes (Google)" <joel@joelfernandes.org>,
	Daniel Axtens <dja@axtens.net>, Ingo Molnar <mingo@kernel.org>,
	Yury Norov <yury.norov@gmail.com>,
	Alexandru Ardelean <alexandru.ardelean@analog.com>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Rasmus Villemoes <linux@rasmusvillemoes.dk>
Subject: Re: [PATCH v2] lib/string.c: implement stpcpy
Message-ID: <20200816150217.GA1306483@rani.riverdale.lan>
References: <20200815014006.GB99152@rani.riverdale.lan>
 <20200815020946.1538085-1-ndesaulniers@google.com>
 <202008150921.B70721A359@keescook>
 <CAKwvOdnyHfx6ayqEoOr3pb_ibKBAG9vj31LuKE+f712W=7LFKA@mail.gmail.com>
 <457a91183581509abfa00575d0392be543acbe07.camel@perches.com>
 <CAKwvOdk4PRi45MXCtg4kmeN6c1AK5w9EJ1XFBJ5GyUjwEtRj1g@mail.gmail.com>
 <ccacb2a860151fdd6ce95371f1e0cd7658a308d1.camel@perches.com>
 <CAKwvOd=QkpmdWHAvWVFtogsDom2z_fA4XmDF6aLqz1czjSgZbQ@mail.gmail.com>
 <20200816001917.4krsnrik7hxxfqfm@google.com>
 <CA+icZUW=rQ-e=mmYWsgVns8jDoQ=FJ7kdem1fWnW_i5jx-6JzQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CA+icZUW=rQ-e=mmYWsgVns8jDoQ=FJ7kdem1fWnW_i5jx-6JzQ@mail.gmail.com>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=NITocUg8;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::844
 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
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

On Sun, Aug 16, 2020 at 07:22:35AM +0200, Sedat Dilek wrote:
> On Sun, Aug 16, 2020 at 2:19 AM 'Fangrui Song' via Clang Built Linux
> <clang-built-linux@googlegroups.com> wrote:
> >
> > Adding a definition without a declaration for stpcpy looks good.
> > Clang LTO will work.
> >
> > (If the kernel does not want to provide these routines,
> > is http://git.kernel.org/linus/6edfba1b33c701108717f4e036320fc39abe1912
> > probably wrong? (why remove -ffreestanding from the main Makefile) )
> >
> 
> We had some many issues in arch/x86 where *FLAGS were removed or used
> differently and had to re-add them :-(.
> 
> So if -ffreestanding is used in arch/x86 and was! used in top-level
> Makefile - it makes sense to re-add it back?
> ( I cannot speak for archs other than x86. )
> 
> - Sedat -

-ffreestanding disables _all_ builtins and libcall optimizations, which
is probably not desirable. If we added it back, we'd need to also go
back to #define various string functions to the __builtin versions.

Though I don't understand the original issue, with -ffreestanding,
sprintf shouldn't have been turned into strcpy in the first place.

32-bit still has -ffreestanding -- I wonder if that's actually necessary
any more?

Why does -fno-builtin-stpcpy not work with clang LTO? Isn't that a
compiler bug?

Thanks.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200816150217.GA1306483%40rani.riverdale.lan.
