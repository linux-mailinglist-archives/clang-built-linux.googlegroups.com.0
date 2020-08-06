Return-Path: <clang-built-linux+bncBDLYD555WYHBBZOOV74QKGQEGLBCITA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x840.google.com (mail-qt1-x840.google.com [IPv6:2607:f8b0:4864:20::840])
	by mail.lfdr.de (Postfix) with ESMTPS id 27CBD23D9D1
	for <lists+clang-built-linux@lfdr.de>; Thu,  6 Aug 2020 13:20:07 +0200 (CEST)
Received: by mail-qt1-x840.google.com with SMTP id m88sf34335710qtd.15
        for <lists+clang-built-linux@lfdr.de>; Thu, 06 Aug 2020 04:20:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596712806; cv=pass;
        d=google.com; s=arc-20160816;
        b=bsDJhJKyR8ILqqFWPFk7L12bsxQlw3g9qWmTkPlQbT/wmd7q9kY+NPvcP9y+7ElLlO
         aaCo48Yd7QrLRVkzV71+o+ELpa7zXWf04AIabLkWWU2H6r6RhLLhVCRyxNlZghowpBkQ
         I+2f1Ep+sKeVdmpBpXD9YY1hMW3ZA4CvKk8piPUCC1CFyqhjdZxxGHlQdr/zejmDmGPq
         BmH5eiLGCwBXh7hoNCswfTFslmou2r85M0/28xXOe9Sv8XRHaygYnTaRUd4GIe4X3ll+
         0VQsVvHE7byA/LrNXoS31aFKSa1tCwLGkXVcNagFKw+FLkwC0USKoEc7+iVrqROTOuPM
         CIEQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:organization:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=VtXh2d2wik2JM5Dk3ImPENxfCp+P+N6MTX1zPJHNOoo=;
        b=HtMjHGeRetntS48yC4Kvmoyz/7tzhxNP3GcyyzqNxjPpFYiIUjXB54RXP/r0tkqA1P
         BpiQX6NC2Ddbu91/ZB9YGiiSavYqyrfbY/eEcGnwmiqRI6trJSQnMa5/bpptGKbCImR3
         3EIIrmX/bk6ksKn5RfH+aSFQH5f3fvwcJDvMWy9M914HqHFi1velfZHdVRxgs4PUc86C
         ccblNZAos1F4VfqLnPIhVVo1wVWME/zAnc5I3QFAKn+A+JJPc+UV42NcV/gxXEvrDG4n
         J6cJ62L5YtGxTcDTl9FPnRGo5tCiMh6RM/cCH9vA27eSXUao1oWzTPO8RZ894aDVlGDs
         +bMw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of andriy.shevchenko@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=andriy.shevchenko@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :organization:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VtXh2d2wik2JM5Dk3ImPENxfCp+P+N6MTX1zPJHNOoo=;
        b=MJP7ErvZsWrfGuKEEwtHGMAjfZAmdlD6p6rOis4HjG8nCoODKpWmAVwODpq3+B3C72
         sQ/blKUoNKXGVRYHHFrAUMlmt/qfiplsYv/N7B2As9sZS6Bz0IklPoN8EmaRGzN/3fQD
         brJydtnfL0Kx+hHKq4GEjAjtNZb+HR6PXZzIA9Au+6CxrqoKadhj7+GwyKIIzjQP0dYy
         6Eyi4pkwwDQvgDTwEAPujcIdeMbt3JQ/kx5rBh99RGhFvLGYm9zjfjIn3kSQGxxBRkeD
         bezsMJosn8y4thdnCPgu1+lpPce3mmbh3wqOdx+YxqGqu9uAyHRdHUTy2nWeWu03BSaa
         czZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:organization:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=VtXh2d2wik2JM5Dk3ImPENxfCp+P+N6MTX1zPJHNOoo=;
        b=eF2koXvwYriN03d6l9Qlcl+Y5XdvZIU4h7t3luXj/Z/cWXuv+2Po/1DLQp2wDog5ed
         Jy1RLDxqiuMYLYCpNzuoo3SSgxpndCR0kjAgoXv6cCEzbJKDqtzPqOKdqYYEbyqPCVW6
         0rK0n11ZzpMegFcLjhUw8Z5HKxCP4jsTMw/mEGIrqgqtB79knAuf0FpTPt5MC1j56wXD
         aw0qDGl5xz74MYed9LCMAis7/2iZCwWxfyOQUP/ZHvI2IV5gceCqwR57uUf+uRMvaxyb
         abav1H08vMigvtPs/fDS80XC+G+PGA3TWC2081kffQFkYzRCDpcTwywKDQBdqJ+9Iveg
         0lMA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530jl0+CZpjpcxWECA7ZZIaTRv/Xp51jxadZVj4c0tRj8PtT58T7
	//TnviS1wNcy8y8yHleDxks=
X-Google-Smtp-Source: ABdhPJwJAgFeT4UKvEkONW/TDM1WMj16wSF9+42XUS+y02aAZmj7PMOICKGDH7SfaFDyUy4xYmAwPQ==
X-Received: by 2002:ad4:4302:: with SMTP id c2mr8289581qvs.246.1596712805757;
        Thu, 06 Aug 2020 04:20:05 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:e409:: with SMTP id y9ls2490555qkf.11.gmail; Thu, 06 Aug
 2020 04:20:05 -0700 (PDT)
X-Received: by 2002:a05:620a:133b:: with SMTP id p27mr8227367qkj.5.1596712805463;
        Thu, 06 Aug 2020 04:20:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596712805; cv=none;
        d=google.com; s=arc-20160816;
        b=fsSCi7SpF2zpLK8cToB+Owm0z2dzggsx5DF4JJQhGwgtV4FgBTUBZHei78wLqsND0d
         D/MfHUXR7oS1AvIcXVDyDP3WgAyC9W1y0/BxC4sRVrlu+SKGV+m/LAr28DwHGBxww2tX
         fRV/DsJ/uwJBoUTFh81YaVgc57pd9z1F0dxgi3Tvf2tYk1IultzGYY0M6a+iVBhBvcaa
         InMHwI+IxMYVifg608k0ZI7E+bknxVOhvPs4mndx3mF04Offjx1dh3M+WJDa9CY4dHuW
         8BC4b1CfBHMxkK23/V7C29lEd58oqUQYxqoRt+TRdpxChscREQmByeVhfrY26/MubDou
         EvNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=organization:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr;
        bh=hT+f5NKG272NNGpJ8L7w1P5sQDvA4ei3bqgDBqDjrdw=;
        b=TN4j3IM8ltSEb29kYHDyEs7NOxzQhyvoRnUz2XB/eGKyU3FzEnO6A4N6I22LtQpeZx
         J9+jWC0hFuYzacqCITh3OLBLmlBJS3eLgkjRJSO/aXm91Lxf7Mv6DdFXZ9WlnMubtOfJ
         GB5FQgITFH6uAB0iGgpdfIFRk746oudkC63rRbAgZVjCEaktyXHfceHdpyQlA0m1fLEC
         EKB58MgCoOf5ZrkK1F95O2xlMqGCA8zn4LQPLShIQ6uvI//J5oy27NeLTf2+kNFlKWDL
         r86aLvkmyJ0orQgIu1hDor9o206q+d37hTExdFtKzXDc8/KyYCiODQ1SPdY/M7duJMD/
         Ly1A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of andriy.shevchenko@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=andriy.shevchenko@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga06.intel.com (mga06.intel.com. [134.134.136.31])
        by gmr-mx.google.com with ESMTPS id d1si256050qtw.2.2020.08.06.04.20.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 06 Aug 2020 04:20:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of andriy.shevchenko@intel.com designates 134.134.136.31 as permitted sender) client-ip=134.134.136.31;
IronPort-SDR: TapsKPL7kxNMdq9oSYW66+Fv33YFYJ4ChQoUaimXaWWWaJl/g2D9Krzr4cFnDzicJ+w0TvwLEj
 526WYP+NuUlw==
X-IronPort-AV: E=McAfee;i="6000,8403,9704"; a="214293811"
X-IronPort-AV: E=Sophos;i="5.75,441,1589266800"; 
   d="scan'208";a="214293811"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 06 Aug 2020 04:19:58 -0700
IronPort-SDR: xIOUJrBJ1rKtlc+HSPNdHqgAQHnJi2SaKj0oFz+hOz8GE7v+TrhpQxf9EMNrxV2FBx44BNY0W4
 6QvIBpvzj7QA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,441,1589266800"; 
   d="scan'208";a="367552340"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
  by orsmga001.jf.intel.com with ESMTP; 06 Aug 2020 04:19:54 -0700
Received: from andy by smile with local (Exim 4.94)
	(envelope-from <andriy.shevchenko@intel.com>)
	id 1k3dw9-006qFH-Gl; Thu, 06 Aug 2020 14:19:53 +0300
Date: Thu, 6 Aug 2020 14:19:53 +0300
From: Andy Shevchenko <andriy.shevchenko@intel.com>
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Fangrui Song <maskray@google.com>, Ard Biesheuvel <ardb@kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, Borislav Petkov <bp@alien8.de>,
	"H. Peter Anvin" <hpa@zytor.com>, X86 ML <x86@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Dmitry Golovin <dima@golovin.in>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Masahiro Yamada <masahiroy@kernel.org>,
	Daniel Kiper <daniel.kiper@oracle.com>,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2 4/4] x86/boot: Check that there are no runtime
 relocations
Message-ID: <20200806111953.GA1630647@smile.fi.intel.com>
References: <20200524212816.243139-1-nivedita@alum.mit.edu>
 <20200525225918.1624470-5-nivedita@alum.mit.edu>
 <CAMj1kXHc4o91VkaChoyVzr4w-HOaashMPtkCKLaszMGCxhR_2A@mail.gmail.com>
 <20200526151623.GB2190602@rani.riverdale.lan>
 <20200526171340.pdbautbix5ygdvgp@google.com>
 <20200526191411.GA2380966@rani.riverdale.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200526191411.GA2380966@rani.riverdale.lan>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-Original-Sender: andriy.shevchenko@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of andriy.shevchenko@intel.com designates 134.134.136.31
 as permitted sender) smtp.mailfrom=andriy.shevchenko@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
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

On Tue, May 26, 2020 at 03:14:11PM -0400, Arvind Sankar wrote:

Side question: are you going to submit a v3 of this?
Or i.o.w. what is the status of this series?

-- 
With Best Regards,
Andy Shevchenko


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200806111953.GA1630647%40smile.fi.intel.com.
