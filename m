Return-Path: <clang-built-linux+bncBCQMFSVRS4ORBZGX5X5AKGQEFW4OPPI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43f.google.com (mail-pf1-x43f.google.com [IPv6:2607:f8b0:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D1CA265F6D
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Sep 2020 14:21:58 +0200 (CEST)
Received: by mail-pf1-x43f.google.com with SMTP id q5sf6897573pfl.16
        for <lists+clang-built-linux@lfdr.de>; Fri, 11 Sep 2020 05:21:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599826916; cv=pass;
        d=google.com; s=arc-20160816;
        b=w9VlpfluuH40SGLT80jwDRZOKS3h19XPX82Nwq1YlHjT3I9MZOHABa1kntFOQJx6Hy
         f0FwsNhdxDotl3g+hrqQaADv6CSAbEwrlwQOLeRbInHyQnt05RrKHQl+QafrcoqMLBzH
         8L/rftlqvkzFE6vPDGruE/KN+mE+Zdwb0T9P9wwTCFzXQ7IknLi5PQtHYy2EBT/tRvWE
         a31jpgRpvYhxoDqMdPRummAYLghEQhqP6QcTrzZqzYtvULMu2sZSEYcx1P23itdoKUz2
         8ZF3fD/mxFCIvLxN4TMIhxuKuLB6nJl5lJ6PI+tFlqV7JVYukCBEPRdXRlGkyjxSI5on
         skuQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=DO/fj2W+YQsD+bZr9CRtL6T/o2xnzfihSiIEKy+SzJA=;
        b=kwI6AJhnwg6ReFM2ZATOijLxcMe//h1VIP9NAT3ecUKRBmsnNC3ANcnlBQXkhbu0cq
         SFJOSi/RNa7lE8EXW2a/3LuYqA0udmVRqP6mkrxZ5gvyLTMWhX1oxcr5oZszH6q+BhJ8
         3lhPXw3lxDl9ezmHspAbPotFTL0BopqyKDdl0Nwh3bmf5uOsCHuseDwWnOCBTv13742W
         X+qRA6MXkrCnKY4lgJ3uli0YfQZdOOHr501/1/KkbgF3sfNfzeDsnDAxmS3Kv6P7sBpl
         43T3F7P44341KsDVDkZBaWul4g2WNqqR2VESD9Fms6eJOKyaMxEJ86NY6VtuWJik2xe/
         KymA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=aLfrA92j;
       spf=pass (google.com: domain of vkoul@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=vkoul@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=DO/fj2W+YQsD+bZr9CRtL6T/o2xnzfihSiIEKy+SzJA=;
        b=fXG8uwkkaCLHtvE0NDiLlJeUQeIb/5p6hNpvmdXlNNHL/0rOJkjdLPlghpf24h4yV2
         QelBds0fjk8sKJ9BQlmGbVyqJM5rFitCUqvgumf9uLpzjFn9yMlmZefZqVtUitRDoVOH
         8Wqqbw/Uwnbck1qT9cCRKMNJt4QwohsSfGYx1r7zFt+u3dSODdh/eqUO4rNoEcr27S15
         cygyLBWpFeIbhChnXQR4AsXSLxAOGGD47r8uRzu+tc+3bhRR7B8hh2AtSUlDOeyGfySH
         cVIA7OkMfnnPaTKKw3My6cKRkK/XHYfqi+1petOpK6RjunummumTgQY5WmoXbqj0IQbh
         Tmxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=DO/fj2W+YQsD+bZr9CRtL6T/o2xnzfihSiIEKy+SzJA=;
        b=IQxFmQfBogb7zy0r82MCo9Eshi1iXfD3HkXFu1QYPpRdTJfiP9rjThVHEJ21M+tTTg
         FJWq6NHK6YzrUDPIhJEBkZ0eVLtuGWfx68qp0+tbSQi0SVEMZN251+S844i8KRtgXwxo
         J0Q9bSsPgiiWloY8FQ83+zPGLSYG2/QizjeQRMKbYL1DrFI/ykjDfbVGi6qAr1pUw15D
         s0APieVbKbyXvYomNePD74gYlBLRWhF4h0SH5+E5W4K50ZTwFMDJPmK0/pIx1WXaZ3A+
         h7zDOlu+NNoFREOd5b6U/yYzWGtBBbGq/5yD5sbRlv2ZWPbcWeo/k0DcmmZsox0DVZGb
         H/Hg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530aLZfFG2EiXHWCE0WpxZrgSvKzwX1ncd8svpRP+ql4XyAz6APJ
	7IE/tbSh3rntonVtss2Bqog=
X-Google-Smtp-Source: ABdhPJwLLogscaIZuaQiUKCAg4pOYjnua157SqPlZ1Sjmbo/suGzMPunvwFV5qeiSNqeyZ8QBXSc1A==
X-Received: by 2002:a17:902:59d8:b029:d0:89f1:9e2d with SMTP id d24-20020a17090259d8b02900d089f19e2dmr2093094plj.9.1599826916482;
        Fri, 11 Sep 2020 05:21:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:e303:: with SMTP id x3ls1024081pjy.2.gmail; Fri, 11
 Sep 2020 05:21:56 -0700 (PDT)
X-Received: by 2002:a17:902:8214:b029:d1:9be4:9ce2 with SMTP id x20-20020a1709028214b02900d19be49ce2mr2137639pln.30.1599826915916;
        Fri, 11 Sep 2020 05:21:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599826915; cv=none;
        d=google.com; s=arc-20160816;
        b=XiBPbTVlV42MotwINBWS+wm2KM5MKDf41A4ik/ARsCCtRkIgG6S7FDaNwFh1/J1bZn
         FscV2S1wwxKDjMFrQQRF4ZCqCG7I6XaO0askBEjs77C9+WTe4OJGCm+0Hk5KG1d0DsrO
         6Dal/iOarKzP2PO1gqZVkE4X1YzhTTuk7G4iIxTOQzz+WMuEODFrhtwScSkNXpTW+V5j
         j4mjLTImAf+RPRJ/tsgQZpYIFht3VXlB4yTloqOrnnF0AhziP+8bxOIWUw9lgotxRoRQ
         PlU04T1cn8zda1Y/ntlmH3qQy9nSNs9QChi77VOtfIsFiUyvvoJgt+GsT/Sg1XtPfraH
         dzaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=D44tMZolE72lKA0UyaItaMSzIfJsD5W4sL0z5awaL28=;
        b=UiBqDBtgKLinZs+pjdYpZsiqeFhFNeVcBs8HsJWhHny7cKpzpOQrHqPcBmAzK887zT
         LYTiHJfv5sX05gkNy0lDraaH6sxYmeN8n7Ms/cu2V8K2FTFGHaFdXEzDCJIiKXU4zckI
         Cfa/yF/MBok2HHY7/fVe12ErPPg038HcH+Ppzrka8HO6d4HxjZRpgUbBr3rUs+/leXQ6
         CV/fpPXUgfxiaNIPXVwHE1jzKNhQ7HxoDe+n8MRwjJyzoLelskI529TGlLLeM5MlVkE/
         iEFCKY6LwQ+BJRyhy/mXxa7QKAxzH1rYtVYFyAnutq7lcElS+nuroYfEZXKDP9ZkIjyI
         9VWw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=aLfrA92j;
       spf=pass (google.com: domain of vkoul@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=vkoul@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id b9si64854pge.4.2020.09.11.05.21.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Sep 2020 05:21:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of vkoul@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from localhost (unknown [122.171.196.109])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 968EA221F1;
	Fri, 11 Sep 2020 12:21:54 +0000 (UTC)
Date: Fri, 11 Sep 2020 17:51:51 +0530
From: Vinod Koul <vkoul@kernel.org>
To: Peter Ujfalusi <peter.ujfalusi@ti.com>
Cc: Andy Shevchenko <andy.shevchenko@gmail.com>,
	kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [linux-next:master 4238/6654] include/linux/dmaengine.h:1576:
 undefined reference to `dma_request_chan'
Message-ID: <20200911122151.GD77521@vkoul-mobl>
References: <202009101830.GfC9Ewv4%lkp@intel.com>
 <b2bfc310-481e-92c5-9426-74395b24c4be@ti.com>
 <7ccb1302-940c-e731-0d90-24421f6aa735@ti.com>
 <CAHp75VdAAQ+gKdmkU5vzQc6JpoVRN_R9DtfnDHRbxt4MgV4RBA@mail.gmail.com>
 <f99e1c36-d514-1d1c-169c-8144fbf81d25@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <f99e1c36-d514-1d1c-169c-8144fbf81d25@ti.com>
X-Original-Sender: vkoul@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=aLfrA92j;       spf=pass
 (google.com: domain of vkoul@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=vkoul@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On 11-09-20, 14:16, Peter Ujfalusi wrote:
> 
> 
> On 11/09/2020 13.00, Andy Shevchenko wrote:
> > On Fri, Sep 11, 2020 at 9:49 AM Peter Ujfalusi <peter.ujfalusi@ti.com> wrote:
> >> On 10/09/2020 14.18, Peter Ujfalusi wrote:
> >>> On 10/09/2020 13.46, kernel test robot wrote:
> >>>> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> >>>> head:   7ce53e3a447bced7b85ed181c4d027e93c062e07
> >>>> commit: 7547dbd3b198f309aaff54e3528898a8a196faff [4238/6654] dmaengine: Mark dma_request_slave_channel() deprecated
> >>>> config: arm64-randconfig-r025-20200909 (attached as .config)
> >>>> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 0a5dc7effb191eff740e0e7ae7bd8e1f6bdb3ad9)
> > 
> > ^^^
> > 
> >>>> reproduce (this is a W=1 build):
> >>>>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross

see this

> >>>>         chmod +x ~/bin/make.cross
> >>>>         # install arm64 cross compiling tool for clang build
> >>>>         # apt-get install binutils-aarch64-linux-gnu
> >>>>         git checkout 7547dbd3b198f309aaff54e3528898a8a196faff
> >>>>         # save the attached .config to linux build tree
> >>>>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm64
> >>>
> >>> I'm not sure what is wrong, but can not reproduce it with GCC.
> >>
> >> I have tried with clang/llvm (10.0.1) without luck to reproduce.
> > 
> > ^^^
> > 
> > 12.0.0 != 10.0.1
> 
> Yes, I have noticed that.
> 11.0.0 is at rc2, 12.0.0 is only in master w/o tag.
> 
> I _could_ install sys-devel/clang-12.0.0.9999 locally, after all it
> would go to different slot, but I would rather not.

This bot has toolchains and you can install them and use to check

-- 
~Vinod

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200911122151.GD77521%40vkoul-mobl.
