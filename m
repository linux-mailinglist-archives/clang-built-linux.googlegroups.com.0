Return-Path: <clang-built-linux+bncBCX2JBVY5MBBBMHR6KEAMGQEFND27VA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DEB83EFDD2
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 09:37:22 +0200 (CEST)
Received: by mail-pg1-x53a.google.com with SMTP id 11-20020a63040b0000b029023af03ea119sf935981pge.0
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Aug 2021 00:37:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629272240; cv=pass;
        d=google.com; s=arc-20160816;
        b=DQ4oqoWS9Qy9ctREkrFh9UD2psnSNkhWSxF0gtRDK2XhMwaroSsN/RKnVk8W4bvbVq
         Et7GLAGCbhvpRuSt+/DxprQ6yyWFHfAmkGaW//Eq/BYqY5uvpOs2j3ZJ4ZTqx1X8ZNsw
         y2myuxm+Our4rKaSRUYQ0lKjuZrYsrk24nttTWvmyDkEZyX4VIvf1zKz3qdwrspGnS+S
         KDZpafXPNyOTXPcmYd71AuEuwGlhzfuA2t7afHB2CCn55RcUXg2EtHfpRDm8694DQUan
         xpkMYYf24n6aZZUbvOnOrIHSpMUm6HSn/PL6WlfSv9NllEcwgeQPAzVxsPYjEXGj9hvu
         m9/w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=KA8iNAwbUC5rSEHcitaTb6yvr6KrIuT8TE7rFQOPiPY=;
        b=Zl3tx+BdQ1L6fIO6y4KjFhCj2FI9G5P2FMPNsIFMV9xBlSnUbfyU35k9Gpa5utCShc
         7m230u2FRMg9EXMAX6LNhg5Xy3ftYHZJ9cH3AxYE2CBT8puKK/Z+Memggh/Wit6nIKwl
         S3JFgzkWWXoUUSTONE2s5Yp5qcL3TAOH8HXrdhhxHBsSAN4uNhMk6wOWCPRjkoUnyPKu
         MgES958gIokgPs/af/4C4aWmR8MayjdZRe82EIxh0wPtfqWMmUV2ZmGkwGHAlsgUmO/6
         wf9RJpeF6+9ePgd+Zaj0f8Vg6mGrHseIyf8crhpUhC5DTze68IwFnIpUskjxX073iAxs
         sN3A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=KA8iNAwbUC5rSEHcitaTb6yvr6KrIuT8TE7rFQOPiPY=;
        b=DsmH87KAazgNeAAX7OYEX2EDoB3MmizWHSJYPJAaTnoGvuUReWXbHZxet+xaAwcvJL
         curOWAMjg3uUdlhUv0V9vIkKKm75kmQ6ztuO7aQTkBFXLrx/Y2OUXxGDQ5s2RmMZS9uc
         eCaLX4Soeg8qIC43WkxncwJpjHdL3O2FrqSDLcBsQJKsOlQgOpS4NMP2dsZZJDHI6aGM
         l4g/tyXcy0zDgomzliUtfDpAxuqhU9MGvrxfEoAEDWBFyKa0dz3HaG0LAI+l/FyGw9cq
         gBRo12ag5vmcw0teqQK99th778kUGD3LoTIPr705ikLzj6CmkNDzp4vkjFC3IPf+0w+X
         mdUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=KA8iNAwbUC5rSEHcitaTb6yvr6KrIuT8TE7rFQOPiPY=;
        b=iHlvCoW/TVEPsNbF7dB2hQfRW+Sd9mFKjUHuADWfCbXHhGYQVKGY8zoL9xc8BKkF5g
         wyRBmjj5lVFAK1/6KkT8uJK2U6NJbcRsXkDEGVH++/puieJ1Pb1JCHjLh1IF76GWeYyl
         BLzoHuSflUwak49pTwghxipqra+3ckSDWEm0oGxeinCy1SlbOjD7bXTmF6tR9e2JnSa+
         NNvmZWmSm3/DovNjgpbgWatlb7odejJ2ZGP2NeeSRi+/tFn7L/UFCQC6wMtMiBS0VkUM
         AhUINV9/IVFu/y+e7aL1hNBD+TKyGwougn47ptdvZz/Ico7Nf+01Bq8iVDRilrZJmTBs
         mODA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530v2Z6scisadxeIHhqKXQ5PV6od/rQFjfplwiB9LSBSc25RCrfi
	tfIjPsE/Y7JHKnGoLXwADB8=
X-Google-Smtp-Source: ABdhPJxJHa46qdAbstCVhcGMxvM3ctjcIKyS8/FMxQI60OGoPR4WwaLCquAVlrSd7x+RkcPEduchTg==
X-Received: by 2002:a63:2214:: with SMTP id i20mr7517653pgi.131.1629272240711;
        Wed, 18 Aug 2021 00:37:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:d2c9:: with SMTP id n9ls787038plc.0.gmail; Wed, 18
 Aug 2021 00:37:20 -0700 (PDT)
X-Received: by 2002:a17:90a:be09:: with SMTP id a9mr7927614pjs.85.1629272240092;
        Wed, 18 Aug 2021 00:37:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629272240; cv=none;
        d=google.com; s=arc-20160816;
        b=IUeww0mVhbKTWeRcsxaPnXUGu6HKcBSHhEKAnU01odwRiY/r5Sunp9foJ0GDx3aHBU
         8Yi6Wfc9ehqWWqV9cv9h6D0kK7utn5j4o2tHJHnSANdveOvXMR69N4tHfU5xq/tUIxxP
         TPfOpkISkdW2dwGeD3tW/dR7xlGlevFtLUgY6yIGLiEXbygGExLNNI9+eZ85/mq54ye1
         rhFGMyzPYlRnuA+IIjNd0k/v7RVvEoM6kQD+yEEwJDOx/lQo5ljbtdMd7H8kyBRjFL75
         iIKk+LtH3HH7BxN0feaeJt518kVFSJNNGL49NuQDrDVw20uzJENKLKrYFVn4hPjVt/6Z
         oq3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=asY6AgJH6aBcvLctx2vPcxpUqlyBkNalhQsb0mv93tE=;
        b=YvoCwI2cHxuIk40aE4CrgPwflhKCVCmx/paIKQcU4jjGAhZibLKJf6DgnQMW+yfFpv
         jY+QAz7hIPrpbPNap/OInZQ+Iy1ecaGEtXfvsG0CRivrIlfhY0F3+Tc7f37LawoZqshx
         oT+dKSZziwLwYnLlhjvU8FrcLZrCRbGt8j3jkQpQAN3C/jq8qbpwUZdO/sSMxPLVnMFD
         t6jdGhuPM2DHgW6CUOq/itKeP9shVBRetlhuoHa+6bkdFVIUUfXSzhtOeGccDZRCEmW2
         FVE/kTsTUHtvp79XiszYEnhZWQVKvg+vbpAPa0FEipBENg/csFhLNOmWUTkmKkRrLlif
         xTVQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga09.intel.com (mga09.intel.com. [134.134.136.24])
        by gmr-mx.google.com with ESMTPS id g2si203247pji.0.2021.08.18.00.37.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Aug 2021 00:37:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of philip.li@intel.com designates 134.134.136.24 as permitted sender) client-ip=134.134.136.24;
X-IronPort-AV: E=McAfee;i="6200,9189,10079"; a="216270703"
X-IronPort-AV: E=Sophos;i="5.84,330,1620716400"; 
   d="scan'208";a="216270703"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Aug 2021 00:37:18 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,330,1620716400"; 
   d="scan'208";a="462650649"
Received: from pl-dbox.sh.intel.com (HELO pl-dbox) ([10.239.159.39])
  by orsmga007.jf.intel.com with ESMTP; 18 Aug 2021 00:37:12 -0700
Date: Wed, 18 Aug 2021 15:31:26 +0800
From: Philip Li <philip.li@intel.com>
To: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Cc: Nathan Chancellor <nathan@kernel.org>,
	Kees Cook <keescook@chromium.org>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Linus Torvalds <torvalds@linux-foundation.org>,
	"Gustavo A. R. Silva" <gustavoars@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	linux-hardening@vger.kernel.org
Subject: Re: [PATCH] kbuild: Enable -Wimplicit-fallthrough for clang 14.0.0+
Message-ID: <20210818073126.GA1648816@pl-dbox>
References: <CAHk-=wgFXOf9OUh3+vmWjhp1PC47RVsUkL0NszBxSWhbGzx4tw@mail.gmail.com>
 <5c856f36-69a7-e274-f72a-c3aef195adeb@kernel.org>
 <202108171056.EDCE562@keescook>
 <3f28b45e-e725-8b75-042a-d34d90c56361@kernel.org>
 <CAK7LNAQFgYgavTP2ZG9Y16XBVdPuJ98J_Ty1OrQy1GXHq6JjQQ@mail.gmail.com>
 <71d76c41-7f9b-6d60-ba4f-0cd84596b457@embeddedor.com>
 <202108171602.159EB2C7EA@keescook>
 <72ae69b4-6069-ade5-a12b-8ee0435f803a@kernel.org>
 <20210818042720.GA1645557@pl-dbox>
 <d19dd1f7-3898-227a-3d7d-25cddb0434d0@embeddedor.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <d19dd1f7-3898-227a-3d7d-25cddb0434d0@embeddedor.com>
X-Original-Sender: philip.li@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of philip.li@intel.com designates 134.134.136.24 as
 permitted sender) smtp.mailfrom=philip.li@intel.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=intel.com
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

On Tue, Aug 17, 2021 at 11:45:48PM -0500, Gustavo A. R. Silva wrote:
> 
> 
> On 8/17/21 23:27, Philip Li wrote:
> 
> >> Philip, how often is the kernel test robot's clang version rebuilt? Would it
> >> be possible to bump it to latest ToT or at least
> >> 9ed4a94d6451046a51ef393cd62f00710820a7e8 so that we do not get bit by this
> >> warning when we go to enable this flag?
> > Got it, currently we do upgrade in weekly cadence (but it may fall behind sometimes),
> > and the one we use now is clang version 14.0.0 (https://github.com/llvm/llvm-project 
> > 2c6448cdc2f68f8c28fd0bd9404182b81306e6e6)
> > 
> > We will ugrade to the head of llvm-project master today.
> 
> Thanks, Philip. We really appreciate it.
you are welcome. Per the upgrade in this noon. Now we start to use below commit to
do further clang build test (which is after the required 9ed4a94d6451)

commit d2b574a4dea5b718e4386bf2e26af0126e5978ce
Author: Marco Elver <elver@google.com>
Date:   Tue Aug 17 16:54:07 2021 +0200

    tsan: test: Initialize all fields of Params struct

Thanks

> --
> Gustavo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210818073126.GA1648816%40pl-dbox.
