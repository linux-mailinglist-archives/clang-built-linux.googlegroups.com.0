Return-Path: <clang-built-linux+bncBCIO53XE7YHBBPFQX75AKGQEL6B4X6A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63b.google.com (mail-pl1-x63b.google.com [IPv6:2607:f8b0:4864:20::63b])
	by mail.lfdr.de (Postfix) with ESMTPS id E731225B302
	for <lists+clang-built-linux@lfdr.de>; Wed,  2 Sep 2020 19:37:01 +0200 (CEST)
Received: by mail-pl1-x63b.google.com with SMTP id o6sf76171pll.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Sep 2020 10:37:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599068220; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ow4l5Gjmv3mvxYAfNvS57rIPm94CpkJLaHVTA7+Iar9cf7/iPBDftxtMAKGv1uyEZ1
         QjvxTwhTAYKkG+AhfSUG2ottT/wQRdJdQYBNo59a9s5YXc5gPorIddM744u/N9b4nhFX
         37f2T4YiZLXQiKTvQ6TINhPWXvOpVOAFDK/Lo8TVqEtjWrFec8qvy4NqmzjMOkO4anM7
         wFnkTkPS/ATlbBtyIcVoV4du3xA/S4I64aBFELjasBgOm+scp6k8iyiPA8YDTHVjUuNS
         EegyqsaeWuBWjuNqVTsr83usd9JVjt9Jy6T7xKuoV127XgydSVEjeMlsBPnQc3TS8gy0
         V9hg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=xGAizyuFXozwyXsikxiuE4w7JDu6M/rzAVP+Dj6Yfs0=;
        b=BJHgCkx3z7n4A8l4uh6vd6QH5Cjpp6/wOuR+N3Lq2brcHHj8RK5M9kH8ZYXNP0wZmD
         YNHBZE7WzGMtLGbxEBrEiXNGyOLihFKA4Ziy4srNNbpCK0JUllSuRd/9IlHiNs9/44it
         beKoY3cMDFvR109cpRJ1zKYUG3iza4LhetawGjEG9y7P879nL7LsCZ1+p5l5/20cwGJz
         OPaRxJHugkbVhpDTRaEkI65oBSOdcL+eQU6fruVdDt70KKkNemd8QqfSp0H7JDTzYZoQ
         M35zffDHJS+2Ykgh+Ii1nVKvjYjhXC8w7papkwWtOp6t1BKy8VKaaO7dJzcm5+h6KvHW
         1fXA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lisUJLL2;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f41 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=xGAizyuFXozwyXsikxiuE4w7JDu6M/rzAVP+Dj6Yfs0=;
        b=d7hz77dhKnLHN+oV7FDukGfzJqH0+j6tpTvp9kYIzUqyhQOQUjZUnX6dBC8rfWjB3J
         KarUgP0wccNeMu4m3NRlXRuF14jB2DzZCmiqvxXhLIPgZFfPqZUqdcTeXai6b1DcbVj6
         cLuyo+2fZFj/TwSdWh6JhxWVy8hhGugQRMu/WWYeqeru/ZvpmhZAMXalXnz0ZdbDceoN
         7YnsSuH2FykbwUD+So7ArE9gL1aUC1gQE/gSXrxEDq7StfsaK3KWs392ih8Gr2KlAoiA
         hmiTkuIGfR5dZMVsj2iwKLLeQ97mCdnXY/757eWJ6T/phU099u3B7xUmudzmCT1heoCY
         fxag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=xGAizyuFXozwyXsikxiuE4w7JDu6M/rzAVP+Dj6Yfs0=;
        b=Cn/h82x8A0UM40OHwyPBIREqV53pHwuLHaxDG6PJjwuPYaDmtpij33liiDbhJjxlWw
         jwAvsDYhSXuAXLW8Ml80EUrbsJHBvLy2P9QkxJOk7z/uI3Qg7I8kOXLpus+gT1bybNQu
         FpfrBco8JS2gEvxnvLaQ8MLMZVNSF8O4Z14G1Zmv6QltcksPtTZuY2LBEQRJ/5HaB3EW
         l6gIjnE58TD2gCfACyJKjX2r4ZF12ptZ7S2KyyMDCN6M1NCLTl6TD05Z8Z3HDvYinQ38
         5Wx6xA4qAtjp6ElE4ZEwAxau9Cnj3ChYo4d5qOSWRQ5lqDlrVVLOH4lgAmd/ebr6JHEg
         YYSA==
X-Gm-Message-State: AOAM532HxfTz4z9o6ZK2v3VOzf6wNU4h1gaPUzP04nljyyVobTou2ePJ
	VEbGR2V6Xs7FAKVQzlpOUMg=
X-Google-Smtp-Source: ABdhPJyVeDPl4qsYd7XPfHc550H7T/jZIXehzjvcXTjqg2O4LHfSOF6bFYiVrNaOPqqahu603griUA==
X-Received: by 2002:a17:90b:4b89:: with SMTP id lr9mr3222397pjb.126.1599068220197;
        Wed, 02 Sep 2020 10:37:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:7591:: with SMTP id q139ls1241016pfc.3.gmail; Wed, 02
 Sep 2020 10:36:59 -0700 (PDT)
X-Received: by 2002:a62:6dc1:: with SMTP id i184mr4123451pfc.57.1599068219628;
        Wed, 02 Sep 2020 10:36:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599068219; cv=none;
        d=google.com; s=arc-20160816;
        b=qBYabf0fI/XIwOfufugyrrQ6y5BvsZoUzs86MI2WvmFJMT0wy5ZOI2NnkdiiDpXNg7
         yDA3Cmc4lwsE/g9O+QzEMkkQtnltEFSHHEN5Tt+7w+jzPraE70/zcPAP0qZ76ypQPWrR
         GG91lxsx6d54Qj1CxCF0qLjk+ICR80X8uIMsu1JV627l2+crLiRpVNR1XdUXJ3Xzl8xA
         e1WRLRtvvXwM4ucQYDmHIBKGMUsKgRZuvfjJaS1vqnx4vdaXQFO+GMp3g+oC9CBIsyd2
         XiPsDGUQuuXox9miw83/BBphV2z7u3x/c5r/SqUK2bC3TRsvLup1aNY4T/FVV+r3Qqla
         s84A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=vgaKAzdGE8hK8jX5VIAMg2rIsFKjVZ+G64RGVHPspFk=;
        b=M5XQy7ENZiuXLygz+/Xm4f+4b2Gl1mNlSjY2d1TEbZ0Ri6NDXTjB49QKxvnXOgCoOm
         J/zEerrMkgflRYNxTNcBf1Vxj4gv/p8F0+GhKmPoqorA80fw9PGKqQ0zU5hox/xLEXyJ
         Ff2r5TPeKPFnSPY5LDYLYLbamfX3U23Q9Bw5/7mV5em0Bm/dj4Zpq48Xp+fG/ycpwZY2
         kY8wivJ6nog+GHrjs7Kuum/+RxgG/qpRZY3VOTx8BzAFlJDLmPyAKDixQ5HWsVsFutEL
         BAEijjzblIj4LjVe2nBRGQZd+q4fav8+yP1inU8Gs8Lt5rPoUvsL0q5giSdAivg/9MJa
         fguQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lisUJLL2;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f41 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qv1-xf41.google.com (mail-qv1-xf41.google.com. [2607:f8b0:4864:20::f41])
        by gmr-mx.google.com with ESMTPS id 129si13419pgf.2.2020.09.02.10.36.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Sep 2020 10:36:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f41 as permitted sender) client-ip=2607:f8b0:4864:20::f41;
Received: by mail-qv1-xf41.google.com with SMTP id x7so2601201qvi.5
        for <clang-built-linux@googlegroups.com>; Wed, 02 Sep 2020 10:36:59 -0700 (PDT)
X-Received: by 2002:ad4:4ae1:: with SMTP id cp1mr7825524qvb.216.1599068218772;
        Wed, 02 Sep 2020 10:36:58 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id y9sm260036qka.0.2020.09.02.10.36.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Sep 2020 10:36:57 -0700 (PDT)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Wed, 2 Sep 2020 13:36:55 -0400
To: Segher Boessenkool <segher@kernel.crashing.org>
Cc: Arvind Sankar <nivedita@alum.mit.edu>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
	Sedat Dilek <sedat.dilek@gmail.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Nick Desaulniers <ndesaulniers@google.com>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Ingo Molnar <mingo@redhat.com>, Arnd Bergmann <arnd@arndb.de>,
	Borislav Petkov <bp@alien8.de>,
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
	"H. Peter Anvin" <hpa@zytor.com>,
	"Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>,
	Kees Cook <keescook@chromium.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Juergen Gross <jgross@suse.com>, Andy Lutomirski <luto@kernel.org>,
	Andrew Cooper <andrew.cooper3@citrix.com>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Will Deacon <will@kernel.org>, nadav.amit@gmail.com,
	Nathan Chancellor <natechancellor@gmail.com>
Subject: Re: [PATCH v2] x86/asm: Replace __force_order with memory clobber
Message-ID: <20200902173655.GA3469316@rani.riverdale.lan>
References: <20200823212550.3377591-1-nivedita@alum.mit.edu>
 <20200902153346.3296117-1-nivedita@alum.mit.edu>
 <20200902171624.GX28786@gate.crashing.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200902171624.GX28786@gate.crashing.org>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=lisUJLL2;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::f41
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

On Wed, Sep 02, 2020 at 12:16:24PM -0500, Segher Boessenkool wrote:
> On Wed, Sep 02, 2020 at 11:33:46AM -0400, Arvind Sankar wrote:
> > The CRn accessor functions use __force_order as a dummy operand to
> > prevent the compiler from reordering the inline asm.
> > 
> > The fact that the asm is volatile should be enough to prevent this
> > already, however older versions of GCC had a bug that could sometimes
> > result in reordering. This was fixed in 8.1, 7.3 and 6.5. Versions prior
> > to these, including 5.x and 4.9.x, may reorder volatile asm.
> 
> Reordering them amongst themselves.  Yes, that is bad.  Reordering them
> with "random" code is Just Fine.

Right, that's what I meant, but the text isn't clear. I will edit to clarify.

> 
> Volatile asm should be executed on the real machine exactly as often as
> on the C abstract machine, and in the same order.  That is all.
> 
> > + * The compiler should not reorder volatile asm,
> 
> So, this comment needs work.  And perhaps the rest of the patch as well?
> 
> 
> Segher

I think the patch itself is ok, we do only want to avoid reordering
volatile asm vs volatile asm. But the comment needs clarification.

Thanks.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200902173655.GA3469316%40rani.riverdale.lan.
