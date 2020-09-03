Return-Path: <clang-built-linux+bncBCIO53XE7YHBBW76YX5AKGQEMZKYZFY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb37.google.com (mail-yb1-xb37.google.com [IPv6:2607:f8b0:4864:20::b37])
	by mail.lfdr.de (Postfix) with ESMTPS id D44FE25CE73
	for <lists+clang-built-linux@lfdr.de>; Fri,  4 Sep 2020 01:42:20 +0200 (CEST)
Received: by mail-yb1-xb37.google.com with SMTP id k74sf4429298ybf.23
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Sep 2020 16:42:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599176540; cv=pass;
        d=google.com; s=arc-20160816;
        b=YpvHbHH6qCbN+h3scP6zQ831O8oDJmxnhCtTblLt9yWzUdb8LfV9GIvS22JKvWj1Sm
         9syi1zJ0eVD+QI3um4n6+n7Nh8Xp0uJb8H3RntNQ6Z/QNsGU3/lAOqX2TLGS3EKcxVnf
         mYyBiUaDLNqSfaQxusF18hIKr9H++OYYNoZ8LtzpTJ0UD6yI1Oo/qU1lqIH8a4X9deAz
         z6hOxPt3zRTSMK7lXKWjMsf7Mx7YrllJt3NeB0VgWR/cZCamgZSkOkc3OXuN2FksG8g5
         /stgDcfz/27bf9C43V6lpmoIOy51fAX0jYX4g2dekRrljOpYh472jzDzTNX8GWY2AaFi
         HhkA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=1S3+2E6BvVP0vl38dcAiqCc/mZn2X5xHs3fJTL5oRuU=;
        b=kMkTAPrQUCveA5vW3cjpiaOp5KBcX761h3k3/bStwEQDVdlTvzXt3dA4FnyEW+nlS9
         OuHY6I+rIuiwUXfmPd22KEqLcOVxiIFqIz1DRIAIXvvM0RCMZ8+emX7S1hPgkG173gqr
         6dB17TNXQALeLQddhuEa13pgSmtAP8eL0qXua0uwuy5prc5YebJIbbxMX2LSeKmtoFST
         2BEHHRV2TWDz417la4wywDX7tJs4+EQFCc6u7ZTyh3rnYF06vIAilqZQ56ix+hWs81D8
         i07aNzJdvU50EebMWdwL2s66st9v5CcMoV3IQm4zlsIVuSCJzSc0NoJ+Gx+DgIWrhcq7
         00xQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LPBJX9YY;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1S3+2E6BvVP0vl38dcAiqCc/mZn2X5xHs3fJTL5oRuU=;
        b=VL5jOoBNpOIhfd2mKhm6v3geYP5sKK5/GzKk/QdJZSxRfqDe0HEKgJAP7+nWRRH95a
         BlZoJqUPeM9auV0Cx70csBc5Jw2VTffCZ78+6gKN8HR80aGPkTiAwJ97mSonkqQxfs9Z
         SlihhQDQVb3gYvr02lpAZ+HK4VLkTKixVWmO+glO40HrP9p3Sj/0PHLemnLdWzNOuiBu
         ydqGVHyoa5tcmPvzi3IQS/q8wIRk7NPr+YplCN9Jc61KdeCx47g+dhqCEDbkMWEJf31g
         7jjCn4i0vuzwcVeOcLWIIeeRspKUSLT2SrXknj4AIvOho9u3aJ98p83Ar2zlzfNsg+KS
         N2sQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=1S3+2E6BvVP0vl38dcAiqCc/mZn2X5xHs3fJTL5oRuU=;
        b=ggAqR9zh0+3/Nea8GDJfhhaQRLdRq/DN9peH0xPRvy0m9K6AoAWuM0aEa1p2A7KoIE
         nQXwL3Pbam8fC3alwYnT+NZ8sjcp0FzIthL1KqGXgrW/ii0PrgN0oPaSM+X5WcWkXFW7
         TZpRZVecRZB9E1Yg2uHvtmSRzYbOzIuRG8xctg3mNpWiZNa2fsEKiRCLyFYSlp8NTnmo
         t2vGXXDgGCp8GKeC9FshdBat9kuaRJfHXF1EntfGwASnxNCebMAN1+ghdXAk2iyu/lVj
         TUpsWZsa22X9S5S/hBv5NCZ4Up0CJSTMoiakVcTVF93csJ4L26W89IkSMgLz41tjJjhn
         xLLw==
X-Gm-Message-State: AOAM530ZW6TQlWS/Op2xpUjOe0L7EJ/k9sfbjOdW997wG7GebsgKHeP3
	9Q2Be8hgnqHycGhDrS4FcbY=
X-Google-Smtp-Source: ABdhPJzWZq19++yhIwpUhrTSPMDG7Vtnb+8PS1t42rdTED1gRv33VVSy7TOQ9c34N/Z5686T90pVfQ==
X-Received: by 2002:a25:25cd:: with SMTP id l196mr6668084ybl.160.1599176539851;
        Thu, 03 Sep 2020 16:42:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5b:781:: with SMTP id b1ls3547671ybq.2.gmail; Thu, 03 Sep
 2020 16:42:19 -0700 (PDT)
X-Received: by 2002:a25:bb82:: with SMTP id y2mr6575716ybg.151.1599176539407;
        Thu, 03 Sep 2020 16:42:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599176539; cv=none;
        d=google.com; s=arc-20160816;
        b=rQ7altpnOIEXwBKJxS4C/Y2AUdN8UjjERZY4OP9wbIBcjQEaVf0BZIBrUw5p9duZJ4
         UyXCouYawypdFoooYYZ62nCdAoRsuq6jhl/7e0Ws9/s0U2uuy4L2yxDJwlQ95odvEwkp
         mb40i3/Zl/Tvun+if9Lx9Jf9Xwzt4pXVnUGrJEIVkoQYFoPmHD5XDlvxETS2ZHcu+UgH
         wKvE8IwL9PWsegYqK4sTyEh43yTUx8uBwLVaVDo69clv1FQx79BNhddBB0YsOnCDkelf
         OWZeKYgi0x1fGssy6XEbpngFHno79BtdL4my+fDM8SCkmiaAW6+MMB2yPDQfuLpqH6kR
         7GnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:date:from:sender:dkim-signature;
        bh=Buf4pyI8QjmO6EzkejoF7rJNgrRLPFkG+pFmWeqNXSU=;
        b=XDz8/ZfrR64e/V+xkGtfX/nsvi/E0jTkn9uPoq+hPI9voZg6Ga2jDuMyiyEY9SIj4G
         kKa9rMJ5GGKwo0LQIhP+SU2OOqiWayPe9Xa5NkFyrPf5LE2X8LaKXtR6+ciI1eNK/+bj
         rRpIQCDGNGTm4j3fk+AYAFHJT9+Vus+ZRxDYRY2ux2w+jUywNmXbjc+9ZgaPnfqdHAU8
         cLPNuGdydLEk+napZUf9BbjdbKzKmVp92EBOFcBas/23IOe/lOvaARIXs5krtcYG01/V
         WsoS/pBEyNaZVI+VIqk749UULSsj3MBPHG88lUvKKmg9hqHPxLEATjFS0TlV4K9aK8Lj
         mrDA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=LPBJX9YY;
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qk1-x741.google.com (mail-qk1-x741.google.com. [2607:f8b0:4864:20::741])
        by gmr-mx.google.com with ESMTPS id r7si380754ybk.5.2020.09.03.16.42.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Sep 2020 16:42:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) client-ip=2607:f8b0:4864:20::741;
Received: by mail-qk1-x741.google.com with SMTP id n133so4777034qkn.11
        for <clang-built-linux@googlegroups.com>; Thu, 03 Sep 2020 16:42:19 -0700 (PDT)
X-Received: by 2002:a37:4c4:: with SMTP id 187mr5768921qke.40.1599176538868;
        Thu, 03 Sep 2020 16:42:18 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id 205sm3305039qki.118.2020.09.03.16.42.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Sep 2020 16:42:18 -0700 (PDT)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Thu, 3 Sep 2020 19:42:15 -0400
To: Kees Cook <keescook@chromium.org>
Cc: Sami Tolvanen <samitolvanen@google.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Will Deacon <will@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>,
	Steven Rostedt <rostedt@goodmis.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	"Paul E. McKenney" <paulmck@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kernel-hardening@lists.openwall.com, linux-arch@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kbuild@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	x86@kernel.org, Arvind Sankar <nivedita@alum.mit.edu>
Subject: Re: [PATCH v2 01/28] x86/boot/compressed: Disable relocation
 relaxation
Message-ID: <20200903234215.GA106172@rani.riverdale.lan>
References: <20200624203200.78870-1-samitolvanen@google.com>
 <20200903203053.3411268-1-samitolvanen@google.com>
 <20200903203053.3411268-2-samitolvanen@google.com>
 <202009031444.F2ECA89E@keescook>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202009031444.F2ECA89E@keescook>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=LPBJX9YY;       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::741
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

On Thu, Sep 03, 2020 at 02:44:41PM -0700, Kees Cook wrote:
> On Thu, Sep 03, 2020 at 01:30:26PM -0700, Sami Tolvanen wrote:
> > From: Arvind Sankar <nivedita@alum.mit.edu>
> > 
> > Patch series [4] is a solution to allow the compressed kernel to be
> > linked with -pie unconditionally, but even if merged is unlikely to be
> > backported. As a simple solution that can be applied to stable as well,
> > prevent the assembler from generating the relaxed relocation types using
> > the -mrelax-relocations=no option. For ease of backporting, do this
> > unconditionally.
> > 
> > [0] https://gitlab.com/x86-psABIs/x86-64-ABI/-/blob/master/x86-64-ABI/linker-optimization.tex#L65
> > [1] https://lore.kernel.org/lkml/20200807194100.3570838-1-ndesaulniers@google.com/
> > [2] https://github.com/ClangBuiltLinux/linux/issues/1121
> > [3] https://reviews.llvm.org/rGc41a18cf61790fc898dcda1055c3efbf442c14c0
> > [4] https://lore.kernel.org/lkml/20200731202738.2577854-1-nivedita@alum.mit.edu/
> > 
> > Reported-by: Nick Desaulniers <ndesaulniers@google.com>
> > Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>
> 
> Reviewed-by: Kees Cook <keescook@chromium.org>
> 
> -- 
> Kees Cook

Note that since [4] is now in tip, assuming it doesn't get dropped for
some reason, this patch isn't necessary unless you need to backport this
LTO series to 5.9 or below.

Thanks.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200903234215.GA106172%40rani.riverdale.lan.
