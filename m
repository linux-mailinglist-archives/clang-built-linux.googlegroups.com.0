Return-Path: <clang-built-linux+bncBC2ORX645YPRBSPX2P3QKGQE773NBGA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x940.google.com (mail-ua1-x940.google.com [IPv6:2607:f8b0:4864:20::940])
	by mail.lfdr.de (Postfix) with ESMTPS id 78B7020A5DC
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Jun 2020 21:32:26 +0200 (CEST)
Received: by mail-ua1-x940.google.com with SMTP id v12sf867030uat.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Jun 2020 12:32:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593113545; cv=pass;
        d=google.com; s=arc-20160816;
        b=X0vjjtv2otfon63Q6g1I+rL8ECZcGojDZXmnlgBbSL/DuFHGpGH97UbgFy9uRnXKsv
         9rOllHDYYGwGk+MYAjK7TazdGr3b2XGtf5ucmgxaXfOpCeyTRAlcrP/W4vlBxe4s9YqN
         QwOh+2Pi3DZxef204EazRLnEjmbJHLNN5FVna76ULnpVWKVX88GYu/1tpdYs1juc1XwJ
         qG/akEbTnta6Lo57SrpXA8YlmgJsoJPNa14X3cgjONvFOYFoyP2SfrHpCvqhPv5Lng3n
         W660Iz2OZxxoC//zmfQ7BeAo8nzgh5wqKPzHqSaPZXXxyZPYPfldutXTIt1d0UfBflFS
         +/VQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=EIGiG5udRJitUHF3JlcJxViml12GKq/S+MM703gfafU=;
        b=1GJkckNK5mX5/ERHyDW6raq9HHEauVsyYmUJveaVgcyOoasKy4RpUudbHwKXb4Xa1+
         XDptaT73Qt7zB4+AuDq0n9ZLzi7xx4yiR7flbyhFVUZznb/SolayzmpkrIi3HQgwNWAS
         +AkEtCytS64LzQKeO7pEshQ5HzzBQgYzIk9+JJCz+tIcHX86q3ZEwo6wp1teDQ8imz4m
         DK1GNX/RHhoej6w6x9T0t2b29CHxp5sk9HI8KjlstHOK+7Dz9O44PJg0GBC37hOFaUf1
         Cl3jLwdBcJPiJxzSd1sSos3ZwJyBOPApzNeK0Y+iP+JYNt/SjkcL8jkjvDSCQaE5PU1H
         ShCg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=mDZm0gGa;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=EIGiG5udRJitUHF3JlcJxViml12GKq/S+MM703gfafU=;
        b=XlDEv9tM0EJC58uJMLIjZSTVZeVLvgs7krVEe26pqhfXSITyjCDDFmUnD4kny5poAk
         rb+4ehrrfcdAJPA66eWNdZIY5gBaioRF7bvgWpptga56EznlaK/EwczJ17d86XIddNAb
         jKo6a4Si26R8mJdHahkNLfcmroKD940NqGosS3hk4vVCr/B4uVq+7udF6YmbyvNUJwbl
         QeyM3lGsYgWNuBWpNvzjLiqF6BwVG1S85nsmkyGepA9WjUzrXktLvi6QIPwSIrIWBZDX
         TLwTHhEGd4olAFGoY+nnZ1r2SXGPendrSVmxy5X4tn9s0lw/3JK1KhVti7tecAFrJK1l
         LBew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=EIGiG5udRJitUHF3JlcJxViml12GKq/S+MM703gfafU=;
        b=d/t9NaWnRB6UvqBwjvm0A7mxpdF6QiGax/twFU12ymZJibcEmB+TSGZR6Uumc8qTy6
         eh5G7GjGsdUxc4KtOh4XFklMLP77jbE/kO2n4MKqC3RyXiAChkDhHyJwEsY9+KsjOK7J
         sFw3EYtzs91S895VF0VprgIuJibgqX/2ZJ7pzOf524uul2GmZikQmsli6mMLxBTeKzg4
         lLEfl9EPqLFVEVBsvahEWoxsHsq6IDIejGf/H3ifL+6a3GTVmijzpggQPLE6RO+fbLmy
         Qelk1jQ53HOpYEJNubwxIUfxHcxQ00brtzDRsXqyKpTLK0Kk1aBVVDpjfYgSV7crEDOp
         NeVQ==
X-Gm-Message-State: AOAM5308pIp8SeF0teH94ePVdY4ulc11kMX3ufwAt502nqhQcCz/KJVl
	iIy/HoeVNFX+XQsZMBWxrDc=
X-Google-Smtp-Source: ABdhPJzddYibkkdH5u4axP8s1m7jApoZ4cW1EMxbuAO7UvPLLMa4P6vGAVhWALOs9fmOD/otPl/70w==
X-Received: by 2002:a67:e0d7:: with SMTP id m23mr31927660vsl.221.1593113545554;
        Thu, 25 Jun 2020 12:32:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:7001:: with SMTP id l1ls843690vsc.0.gmail; Thu, 25 Jun
 2020 12:32:25 -0700 (PDT)
X-Received: by 2002:a67:8dc8:: with SMTP id p191mr14238562vsd.68.1593113545223;
        Thu, 25 Jun 2020 12:32:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593113545; cv=none;
        d=google.com; s=arc-20160816;
        b=zW2MSdC7psG+B1ghPbVS54OmTu6y9d+h2akeHszfs5R50Np3zk/qfFvXywIFi0/x4w
         vEz6C7Yp9RAc7/mA2KcRi1Z29v/S1lunDplcaH21DzTXZbobf668ZWrV8w1BEvrop+q9
         BnGzA6oIndiMhJhuyMPrtoEOCrocML7baJzHYVQDmdoiv00289qs4G2LrNruoqQfwWgv
         xE4KluvrMoJXVAo8yZrVymj9lIIMvapHjL7pgT6q20kixhL6/lapAldhDMfgHUqbzODe
         zM1oUvDMn9MH/9w0Vxz8uzSXd0XU2t2Bu7ok1UkAmcHMMBOVW5ieX1AFOtCHoLvqxZC/
         Y6RA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=aiCyaSfPElHdBJ1rU4jQnvBfG3hDID3mTTJS9XuQz+Q=;
        b=FZskdsnLBHv9JtLXaDFWWrzpNOLOe+kYMAcW/Tc+8o1RaIwNGSVXgwjrh4UVjDu3e4
         SzKYBGWIpO+vUN2InuEFGL64aOLkDqjdCKzH84sr8qy5ijoY9yRbD9gXz+A8hHImgTJX
         ujAAoP5/fjoTlrz1YQTiEQJa/xedFsnJTHG2atj9+ncYvI1U1O6PVPG2nMs4uzIUm5yj
         H04ojIqJOBsu3uw26KlqhubqKTco4R0471hOG1lnDTH/X1nqmQ6tviOgt2tSjLJ0mHPj
         vwj8PE6emrTTTlifgWkLMnxUZKAo66KGV+piFlQ4us007kdM/qbHqbO9CMpbd2aUyipR
         S5qA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=mDZm0gGa;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id t24si1467503uaq.0.2020.06.25.12.32.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Jun 2020 12:32:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Received: by mail-pl1-x641.google.com with SMTP id k6so3242452pll.9
        for <clang-built-linux@googlegroups.com>; Thu, 25 Jun 2020 12:32:25 -0700 (PDT)
X-Received: by 2002:a17:90b:88b:: with SMTP id bj11mr5103958pjb.51.1593113544026;
        Thu, 25 Jun 2020 12:32:24 -0700 (PDT)
Received: from google.com ([2620:15c:201:2:ce90:ab18:83b0:619])
        by smtp.gmail.com with ESMTPSA id c141sm9061908pfc.167.2020.06.25.12.32.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Jun 2020 12:32:23 -0700 (PDT)
Date: Thu, 25 Jun 2020 12:32:17 -0700
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
Message-ID: <20200625193217.GA59566@google.com>
References: <20200624203200.78870-1-samitolvanen@google.com>
 <20200624203200.78870-6-samitolvanen@google.com>
 <20200624211908.GT4817@hirez.programming.kicks-ass.net>
 <20200624214925.GB120457@google.com>
 <20200625074716.GX4817@hirez.programming.kicks-ass.net>
 <20200625162226.GC173089@google.com>
 <20200625183351.GH4800@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200625183351.GH4800@hirez.programming.kicks-ass.net>
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=mDZm0gGa;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::641
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

On Thu, Jun 25, 2020 at 08:33:51PM +0200, Peter Zijlstra wrote:
> On Thu, Jun 25, 2020 at 09:22:26AM -0700, Sami Tolvanen wrote:
> > On Thu, Jun 25, 2020 at 09:47:16AM +0200, Peter Zijlstra wrote:
> 
> > > Right, then we need to make --no-vmlinux work properly when
> > > !DEBUG_ENTRY, which I think might be buggered due to us overriding the
> > > argument when the objname ends with "vmlinux.o".
> > 
> > Right. Can we just remove that and  pass --vmlinux to objtool in
> > link-vmlinux.sh, or is the override necessary somewhere else?
> 
> Think we can remove it; it was just convenient when running manually.

Great, I'll change this in v2.

> > > > > > +ifdef CONFIG_STACK_VALIDATION
> > > > > > +ifneq ($(SKIP_STACK_VALIDATION),1)
> > > > > > +cmd_ld_ko_o +=								\
> > > > > > +	$(objtree)/tools/objtool/objtool				\
> > > > > > +		$(if $(CONFIG_UNWINDER_ORC),orc generate,check)		\
> > > > > > +		--module						\
> > > > > > +		$(if $(CONFIG_FRAME_POINTER),,--no-fp)			\
> > > > > > +		$(if $(CONFIG_GCOV_KERNEL),--no-unreachable,)		\
> > > > > > +		$(if $(CONFIG_RETPOLINE),--retpoline,)			\
> > > > > > +		$(if $(CONFIG_X86_SMAP),--uaccess,)			\
> > > > > > +		$(@:.ko=$(prelink-ext).o);
> > > > > > +
> > > > > > +endif # SKIP_STACK_VALIDATION
> > > > > > +endif # CONFIG_STACK_VALIDATION
> > > > > 
> > > > > What about the objtool invocation from link-vmlinux.sh ?
> > > > 
> > > > What about it? The existing objtool_link invocation in link-vmlinux.sh
> > > > works fine for our purposes as well.
> > > 
> > > Well, I was wondering why you're adding yet another objtool invocation
> > > while we already have one.
> > 
> > Because we can't run objtool until we have compiled bitcode to native
> > code, so for modules, we're need another invocation after everything has
> > been compiled.
> 
> Well, that I understand, my question was why we need one in
> scripts/link-vmlinux.sh and an additional one. I think we're just
> talking past one another and agree we only need one.

We need just one for vmlinux.o, but this rule adds an objtool invocation
for kernel modules, which we also couldn't check earlier. We link all
the bitcode for modules into <module>.lto.o and run modpost and objtool
on that before building the final .ko.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200625193217.GA59566%40google.com.
