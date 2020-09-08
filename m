Return-Path: <clang-built-linux+bncBC2ORX645YPRBR7S335AKGQEA6ESJJA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43f.google.com (mail-pf1-x43f.google.com [IPv6:2607:f8b0:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 548FA261615
	for <lists+clang-built-linux@lfdr.de>; Tue,  8 Sep 2020 19:03:05 +0200 (CEST)
Received: by mail-pf1-x43f.google.com with SMTP id k13sf8548098pfh.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 08 Sep 2020 10:03:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599584584; cv=pass;
        d=google.com; s=arc-20160816;
        b=B+FTb3SaPNawGnpFBQTHm2BqJI7Fhg884i2vybxFZuVGJIQA+cTECyvH23ntTtgp4g
         ckaiCtQ9/impcRJfx6yRWvdKYavinbr+LmxAS/mq8ayjfnOju5oAzRbD8JCdbSqhIeYZ
         mkk3HeB7byxaKIuFaJ/SQUKpzM4NWQGtQCUBaQOFA8ehNTwAcM8B+2+b4iTm6NCwttR/
         38M162+Kzov+Fafz+cTRJvq4taz4cNgkOUF+wVZ85j3a68ZHqIxJaOhwG6KQ+4w8+1UY
         x7j/CeCcHP7ICs5LZpcJgZQ/5/xbtZiYa3pI48z76+3/L7dH/tyaHuSehUEmSH9WsfIY
         eVaA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=2AutMYBrs/fyPdsnsXbUrzvn5pG6QFmj/Un9DEXl/SI=;
        b=RTXEGaGBoRkFWnwmkirr+wYbH1WDfYUPNhRg+GuSC+YPLnretjgKG5A86nDRNOf6Q6
         1TwHYF1f0oajCr0v9tXhUJ89CHRsY/AexkcsusoCMc0PIhPEzrczYcDTG0KYmrR0SEY7
         uP2vMiiOJhH94HXudmN/vtTaM6tIw9IB84vuWDGxtBe7gRC4n41QDDk5KgDuL17ADEYT
         UNUP16gw1fwYeOKoT7kkqKMWbEc9Tz0BVHJ+Z6jSkZEtCO2IMiw/kGrUeaaMhDDkRlVv
         +sX8VGrZuLsaipV6Fv/HfY/GC3oEB3YhbzjzYsofjJBynf7FPKMWY2siXhXLyfGpfOmj
         oH6w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=pKJ8j7uK;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=2AutMYBrs/fyPdsnsXbUrzvn5pG6QFmj/Un9DEXl/SI=;
        b=YK8qUPizWChDGOHgvygpIJq6kkj0GSYMkPeSWqsMRooZeFbIbtv20DGS2ljiuIfcHj
         uXicold7GuKFgn0GWml6/3HheCzrhmwEzmVgKYMUc06X9ERtul9QMiyZ23rW/Z58l3GI
         9PAaCpzcUuWyESU3kPYTu39DIumGKQ2cRSKssttVZbHKROorcTxSNbTA2UA2QglVmDdy
         nwi1N6TSES/2Wcby/TXKFcy7FS1Fw8mep3SJSRZ4sckm1xgsNpwJmk7OQ5+vRRM38OME
         +SWxuNSLO1Nxr8/k+VNeoGnEc8konFehGXBqk6xJIUx2806mmucVERVJ4v+MwqNjagW/
         hLAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2AutMYBrs/fyPdsnsXbUrzvn5pG6QFmj/Un9DEXl/SI=;
        b=H+LhwQBBPdFbjZlsRHHhyzi6qLODDXavBjCubPfh/glYN+uFoxcF+BxF4SkiciQri0
         QdEsCRm8OypFjPxkNQK9VExP3Rj1JsUboZ4Pt7IQi0qL3h8YGM4wO5ERC9p1nsg1+J+s
         43q8PBb/QBENOLTq8wBobZw5c0MLtWWZYRs+I5b2GMHeZ9pEGtbrmqqJJxrHrCKgA4Nv
         WOOtPvDeP+nqursVMkpbNaqKMRFk+ZfayVcvVrNIzkS3GxYMORz6XKwXqgJmFzfB0+6r
         K7vSFhlsU108qcp6jMfDbttbu86cjCm/wTlXjTPCQGMdY/nHRxiB17qe8mxbkbd4vj+G
         nDow==
X-Gm-Message-State: AOAM5300mHSKCTLRMA1DsOdt+Wx8FIsLGMn7LolejiDYvQJajOYS7eY+
	x4Buzo53DHAJSVLbSkln+5w=
X-Google-Smtp-Source: ABdhPJwW0sqx5z/pRywgQL1pdiB0HThn+SN0b++ddP+c31Iaeir1km5TvJuSV+7umV6igqEc4imDrw==
X-Received: by 2002:a17:90a:588f:: with SMTP id j15mr68586pji.43.1599584583924;
        Tue, 08 Sep 2020 10:03:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:8d89:: with SMTP id v9ls29596plo.4.gmail; Tue, 08
 Sep 2020 10:03:03 -0700 (PDT)
X-Received: by 2002:a17:90a:de81:: with SMTP id n1mr97103pjv.92.1599584583206;
        Tue, 08 Sep 2020 10:03:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599584583; cv=none;
        d=google.com; s=arc-20160816;
        b=ka/8BvjCE1B0WrxBAUpqH2NQpuvBQNmKj7rHbQL3BEbidSf7+Pa5k6mKllzYU1ehgn
         2TmoejNzsF9opkQTm0p0EhNjM2L87XjUVVwsC+EDpu+VqEy78qYdN2Qas0LvpjxKRBGs
         B0/L9XJMJlq+S4nChenlXIuJkEhSQfOqdaaw/C7wn/Udt6MSnzi3dz2txcdPIca3mwtb
         9Zbx8pkeaXVkCTcW8iwjcfdiBxSt4fbU8Pv6z9swCc88TZuwDj9MxHmTLwmm1/2anZ5D
         8/hjaF82VFGdfARSyPxZVomxsVnY4dpYOeOEpOjUPkQ59lJ9upHUbpAlr7+Bydyeq7Tv
         JgEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=TS+pFAf+gXvyICCIZ7exDi0/Gxg54q8UJXDvRO7l168=;
        b=NgTp7JGQ7M29jN9kb5lg4uwovzOfqv3mYmugt4vIlEh1Hc4vd/rl/4t9oji6VGAmwR
         sYLQRBos+5EQpkT8fJHG0f1JFxDZtjAO1F6L8PkFRQFMpnGtoyIxReryVMDuvXkgSJDJ
         REmxfUN8klU0kzGzkRL1L4+yXv+RjfbFtL5hPK4E4wOa5C7rwsmnhxNlLs5Fz1qpuQqK
         QKA/+DU6wFnWM+oxm/v1FSJY4Kwd8cAfoa4vGynPh+TM8ZpdhK0WYLem/nvZTYF3jmUW
         BVXNEg8Tf7acc+bTmmFoCVT6nzfL9pFsGhNcAdZGhBD214mcOs9SPoNFQ7zuLx5wAbh8
         an1w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=pKJ8j7uK;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id s60si7636pjd.2.2020.09.08.10.03.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Sep 2020 10:03:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Received: by mail-pf1-x443.google.com with SMTP id o20so11463949pfp.11
        for <clang-built-linux@googlegroups.com>; Tue, 08 Sep 2020 10:03:03 -0700 (PDT)
X-Received: by 2002:a17:902:d714:b029:d0:cbe1:e738 with SMTP id w20-20020a170902d714b02900d0cbe1e738mr2106530ply.19.1599584582581;
        Tue, 08 Sep 2020 10:03:02 -0700 (PDT)
Received: from google.com ([2620:15c:201:2:f693:9fff:fef4:1b6d])
        by smtp.gmail.com with ESMTPSA id t15sm19413909pfl.175.2020.09.08.10.03.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Sep 2020 10:03:01 -0700 (PDT)
Date: Tue, 8 Sep 2020 10:02:56 -0700
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Kees Cook <keescook@chromium.org>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Steven Rostedt <rostedt@goodmis.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com, linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	x86@kernel.org
Subject: Re: [PATCH v2 09/28] kbuild: add support for Clang LTO
Message-ID: <20200908170256.GA2743468@google.com>
References: <20200624203200.78870-1-samitolvanen@google.com>
 <20200903203053.3411268-1-samitolvanen@google.com>
 <20200903203053.3411268-10-samitolvanen@google.com>
 <202009031504.07098D6F8@keescook>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202009031504.07098D6F8@keescook>
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=pKJ8j7uK;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::443
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

On Thu, Sep 03, 2020 at 03:08:59PM -0700, Kees Cook wrote:
> On Thu, Sep 03, 2020 at 01:30:34PM -0700, Sami Tolvanen wrote:
> > This change adds build system support for Clang's Link Time
> > Optimization (LTO). With -flto, instead of ELF object files, Clang
> > produces LLVM bitcode, which is compiled into native code at link
> > time, allowing the final binary to be optimized globally. For more
> > details, see:
> > 
> >   https://llvm.org/docs/LinkTimeOptimization.html
> > 
> > The Kconfig option CONFIG_LTO_CLANG is implemented as a choice,
> > which defaults to LTO being disabled. To use LTO, the architecture
> > must select ARCH_SUPPORTS_LTO_CLANG and support:
> > 
> >   - compiling with Clang,
> >   - compiling inline assembly with Clang's integrated assembler,
> >   - and linking with LLD.
> > 
> > While using full LTO results in the best runtime performance, the
> > compilation is not scalable in time or memory. CONFIG_THINLTO
> > enables ThinLTO, which allows parallel optimization and faster
> > incremental builds. ThinLTO is used by default if the architecture
> > also selects ARCH_SUPPORTS_THINLTO:
> > 
> >   https://clang.llvm.org/docs/ThinLTO.html
> > 
> > To enable LTO, LLVM tools must be used to handle bitcode files. The
> > easiest way is to pass the LLVM=1 option to make:
> > 
> >   $ make LLVM=1 defconfig
> >   $ scripts/config -e LTO_CLANG
> >   $ make LLVM=1
> > 
> > Alternatively, at least the following LLVM tools must be used:
> > 
> >   CC=clang LD=ld.lld AR=llvm-ar NM=llvm-nm
> > 
> > To prepare for LTO support with other compilers, common parts are
> > gated behind the CONFIG_LTO option, and LTO can be disabled for
> > specific files by filtering out CC_FLAGS_LTO.
> > 
> > Note that support for DYNAMIC_FTRACE and MODVERSIONS are added in
> > follow-up patches.
> > 
> > Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> 
> I remain crazy excited about being able to use this in upstream. :)
> 
> The only suggestion I have here, if it might help with clarity, would be
> to remove DISABLE_LTO globally as a separate patch, since it's entirely
> unused in the kernel right now. This series removes it as it goes, which
> I think is fine, but it might cause some reviewers to ponder "what's
> this DISABLE_LTO thing? Don't we need that?" without realizing currently
> unused in the kernel.

Sure, that makes sense. I'll add a patch to remove DISABLE_LTO treewide
in v3.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200908170256.GA2743468%40google.com.
