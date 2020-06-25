Return-Path: <clang-built-linux+bncBC2ORX645YPRBD432P3QKGQET6RTZTY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1037.google.com (mail-pj1-x1037.google.com [IPv6:2607:f8b0:4864:20::1037])
	by mail.lfdr.de (Postfix) with ESMTPS id 09C9920A2B6
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Jun 2020 18:15:13 +0200 (CEST)
Received: by mail-pj1-x1037.google.com with SMTP id l62sf4413770pje.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Jun 2020 09:15:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593101711; cv=pass;
        d=google.com; s=arc-20160816;
        b=W0saYxl9Q86yDCJ2O2Y8NAi3ZigFGU4bGQ0t+HnuaWjoPyz8Zfomm9NkDX0p5OA0KX
         213Rg2AwAVjK5Fn3xlMIHMoo+FgkcW/+opXvp2QIn2nSr8MX5LkIqTdD2Md2Z5zeketn
         m7GiGA0GNBqQ/YRUSOPyK/rKi9SSD60vDbdN+iVsObVUtEcVrS79xfmjP/svAtfd9mtb
         iJ0TjGPsTtsX+PXaKDjrJWBgTyFHSJ2+e44zXE22rdWQdYL0ITS/n3flN4n0v9HgV1oB
         U7f2qA2uut/+IuHQQRi2aOvItoS7xh3QuyVDg4ErfV9x2ssl7Eti86PXub/8In1//EPO
         TOyA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=Ffdjg/b7o2uqCzoFcxeKAf7pxeNLs8LjC7fdkxVqfJ0=;
        b=NKng4ZGKCwXxiRkVxFKvWDd0/YBTVkC4fy5dd0HRcY75Djpd22skEUhArm7qn3H0nm
         opnSbrSo9vKRMagKenB3qA3Mjfsn9lJsScQzERjPMy8yRRBC6LaHtkmOogdMRnFqrA59
         utsloMA+a3PVF74S4zzS5hAGhT2I8iP1ELJfKsCRgkXSCq7tUPCa1aw+AjawBghkFgua
         jRsbRGRI9sAyUpmtm2+Ss7psGoBSNWYF94ulpAnchqMGEn77um95bK4LIiL6/irt/nGy
         1xWBTbKGsojTuxb8xbZ6ygU5uiXmSlvXBaTIKVtus+5wkHwAzBX4jLUsn6zZ41yV3I3b
         dMkg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=QWdvdGQM;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=Ffdjg/b7o2uqCzoFcxeKAf7pxeNLs8LjC7fdkxVqfJ0=;
        b=Y85Q2d+TywAKwWE70eNduNqMjdAMkhqDl+XyJbii+Lz20g9G7DNgnDMkHbxTW64HU9
         5K1BSUby34n/q8TkcJc1z09cl6kbg5g6jAtBBu4LxCIO3ytHFvuTvIdOnRpkLtuLdZdH
         2UeaGaNtbEbRjA1lnSWDDrIlZnxiRWYVVO1UHlH7XfKulM+16l9QqmydZp3flfkBjDfs
         y5IEILLVwmTQm096477HeuHccQkcwSVRjX/DysZfUE4QHs4d1nlLnATznGV2B0w9fP9l
         9LDkUkCQkezchEzmbCdvkHuJMma2nlNm/M3sehnFBPhOgSaOKg2ffipsn9pjsyvGhVGS
         Dg9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Ffdjg/b7o2uqCzoFcxeKAf7pxeNLs8LjC7fdkxVqfJ0=;
        b=D2RHQzHa2BRISU4e7w5E/QIu1plX8hwZHS+tQKwy6HCB5CjzKAVmlpDuabR+i5NGoQ
         Vsovy2IyzNjgcvsv3i6W7ioBEQsQwj1uI4fcQUeUbWNEV1a5g+QWApOMIShS5pHgLzpQ
         9thtwUPXOjm8hKXmN6h5S/BdG2ahWNyTBYsdRSpRYu/ZVRbJ6Z2WDg7QMtd2DDp9U9CQ
         +WhJC702eqMmxQmBVUAs78oXx2t/o9o7MWEw8oVpSfNlNlEbRfg/3U7OhOuHjtvV6r4u
         a1PDmAGghi51HSJ4Tn+PQcJS7mu7X7zA0puvs1h/Ez6gXtzTu8/bOw/2704txtJDWBCy
         WPtw==
X-Gm-Message-State: AOAM531zpvZ4BtzzNsgzzlF5mcwJgzX+HD0jgbUUO/TexHsjm8hUUUCe
	B1OzIjvX1B/TXkpfVph/Kpw=
X-Google-Smtp-Source: ABdhPJznEGQ+c/V1YW5vzTCprbx6U34zYp2IYPngPj5wZjhvPOJiaf1xgmEQyb2feCTjq5ePmVlG7w==
X-Received: by 2002:a63:9d45:: with SMTP id i66mr27395380pgd.25.1593101711663;
        Thu, 25 Jun 2020 09:15:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:7f94:: with SMTP id a142ls2026375pfd.2.gmail; Thu, 25
 Jun 2020 09:15:11 -0700 (PDT)
X-Received: by 2002:a63:c846:: with SMTP id l6mr26252021pgi.197.1593101711128;
        Thu, 25 Jun 2020 09:15:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593101711; cv=none;
        d=google.com; s=arc-20160816;
        b=w+2RmQkw2UNoMh9JqERxJ415aeRUMNdSVQmm0SM16XL+IYrPJLCkOym8fvDWqjMVBg
         unCgkJWPqpWd2KRpiZgF2ccPGBVHTu7pc5eKyJuE8BBvLi5wfVo0AYHsnxjwAzSpGNle
         V2LQKl8A6OMDOhotSiC/CBEgLm+wv/T2wqAx697E54y5KzNERXEzDb5/8citcD1EOkIJ
         0bXM/jOnyKGFZQCmfnOS7kg+pddOEt6injNb2Ycfdc8B+45nGFOO9LDi+ycF9i7OBygH
         KQAIFprv/jwPR//GSWHBsfxF4ZiWPr891+OyFbpk1JfFsb0p1FYw6qeJY4tpmH1IfT4H
         ndjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=no7YVr00DbKKQ+yaF/NLUAHDlIF83IoT6Cfe6Ue8Rsk=;
        b=DwsutPEMgx7WzXP/0lNcKFV7R+RCu2LFlk8WRt6AUGDc0+XAiJK3kKcy8xdT77R1BY
         Tk2Ni4u6vJxXmYHc9mniZDfTiXFjEV5Hj4TSHqlTfpBpVmpLklr1ReWpbzBZVrYu8HnX
         Bmh0LCMGLuyLl0t4KqXe8pMTh9KHe6E57iWS48jc/67ILaACY3ntZO813H7H421MqV9n
         Ro+Mo2jYpicPgApOwRuu2rqBMc7BZCi2THfo0lh7FcE6fgK6/Kzz78asDkksJp5vi6BK
         ODygbC8y2RxyHqF+q4dWy3HIA/5bo6aI5nUeAcJ+THYGRrVH4jfhCzMQH9bK2cCaC0B4
         iulA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=QWdvdGQM;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id q13si98825pfc.6.2020.06.25.09.15.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Jun 2020 09:15:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Received: by mail-pg1-x543.google.com with SMTP id w2so2700940pgg.10
        for <clang-built-linux@googlegroups.com>; Thu, 25 Jun 2020 09:15:11 -0700 (PDT)
X-Received: by 2002:a63:395:: with SMTP id 143mr23203113pgd.57.1593101710493;
        Thu, 25 Jun 2020 09:15:10 -0700 (PDT)
Received: from google.com ([2620:15c:201:2:ce90:ab18:83b0:619])
        by smtp.gmail.com with ESMTPSA id u12sm8450067pjy.37.2020.06.25.09.15.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Jun 2020 09:15:09 -0700 (PDT)
Date: Thu, 25 Jun 2020 09:15:03 -0700
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
	x86@kernel.org
Subject: Re: [PATCH 04/22] kbuild: lto: fix recordmcount
Message-ID: <20200625161503.GB173089@google.com>
References: <20200624203200.78870-1-samitolvanen@google.com>
 <20200624203200.78870-5-samitolvanen@google.com>
 <20200624212737.GV4817@hirez.programming.kicks-ass.net>
 <20200624214530.GA120457@google.com>
 <20200625074530.GW4817@hirez.programming.kicks-ass.net>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200625074530.GW4817@hirez.programming.kicks-ass.net>
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=QWdvdGQM;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::543
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

On Thu, Jun 25, 2020 at 09:45:30AM +0200, Peter Zijlstra wrote:
> On Wed, Jun 24, 2020 at 02:45:30PM -0700, Sami Tolvanen wrote:
> > On Wed, Jun 24, 2020 at 11:27:37PM +0200, Peter Zijlstra wrote:
> > > On Wed, Jun 24, 2020 at 01:31:42PM -0700, Sami Tolvanen wrote:
> > > > With LTO, LLVM bitcode won't be compiled into native code until
> > > > modpost_link. This change postpones calls to recordmcount until after
> > > > this step.
> > > > 
> > > > In order to exclude specific functions from inspection, we add a new
> > > > code section .text..nomcount, which we tell recordmcount to ignore, and
> > > > a __nomcount attribute for moving functions to this section.
> > > 
> > > I'm confused, you only add this to functions in ftrace itself, which is
> > > compiled with:
> > > 
> > >  KBUILD_CFLAGS = $(subst $(CC_FLAGS_FTRACE),,$(ORIG_CFLAGS))
> > > 
> > > and so should not have mcount/fentry sites anyway. So what's the point
> > > of ignoring them further?
> > > 
> > > This Changelog does not explain.
> > 
> > Normally, recordmcount ignores each ftrace.o file, but since we are
> > running it on vmlinux.o, we need another way to stop it from looking
> > at references to mcount/fentry that are not calls. Here's a comment
> > from recordmcount.c:
> > 
> >   /*
> >    * The file kernel/trace/ftrace.o references the mcount
> >    * function but does not call it. Since ftrace.o should
> >    * not be traced anyway, we just skip it.
> >    */
> > 
> > But I agree, the commit message could use more defails. Also +Steven
> > for thoughts about this approach.
> 
> Ah, is thi because recordmcount isn't smart enough to know the
> difference between "CALL $mcount" and any other RELA that has mcount?

Yes.

> At least for x86_64 I can do a really quick take for a recordmcount pass
> in objtool, but I suppose you also need this for ARM64 ?

Sure, sounds good. arm64 uses -fpatchable-function-entry with clang, so we
don't need recordmcount there.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200625161503.GB173089%40google.com.
