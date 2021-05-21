Return-Path: <clang-built-linux+bncBCX2JBVY5MBBBSMMTSCQMGQEZ5H3L6Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x537.google.com (mail-pg1-x537.google.com [IPv6:2607:f8b0:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A0DD38BB2A
	for <lists+clang-built-linux@lfdr.de>; Fri, 21 May 2021 03:00:58 +0200 (CEST)
Received: by mail-pg1-x537.google.com with SMTP id a16-20020a63e8500000b029021ab84617c0sf8856065pgk.14
        for <lists+clang-built-linux@lfdr.de>; Thu, 20 May 2021 18:00:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621558857; cv=pass;
        d=google.com; s=arc-20160816;
        b=DX0qNgishZh1dd6zN+RiowgruMPF4aaw2P3EpWQbaD0VjS3fuG48mERJCKhb0bB6Ej
         K9X/J+TCF7PhOuIbZDuZeTm9nARoIeWYmtDIL+KJsgkwkSPsZtfGJbiFUS0qr81opDhj
         rbWQAXeG7U/7miv/meyjzqzUQVDz0tPigqHU2cVaq+zF7WzoXkuS25T3nE3ENzbtDbDs
         3Goi5CPhayNZLknN6fHLF58XHXJBpkH4Y7L6lmyW/BWsQGKp0113aCD/xTE2P0ri/NA8
         /uUJk0vpJv1dNzbqKfBEZxqNZy5EmIF/2xDhknSh57MMBYmwKpyCyysLVNdqhZnA9fJz
         1zNA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=JqkJxeFXm1ju6m4hjmUdS/VvWK0q5yp7rfhlD0R6W58=;
        b=SMdjAK+toKyN66PsjmV1aLrIyECJ68ougBgJViBdhQbXtGCZ5Hyu4PTGp5DbsLfSI6
         ALPYtARHTGu9prRyrQ6dSKPi58Pm9/D5wK+xd7hM5a9K6QgEvgjr98OirJ9JdGMqnoYn
         n/apxA9FCHaewUiDEqO6mHfmxnTcBf/yG5jPIdCB+8tz5rMGXVV3ePmTjF7sbHYlYXOH
         H1OOA0B/kkU/JSqsN5XgciBba9RV5bxBKcp7u6mVut3L+kqTrc7POR7JUup20flHK7B0
         UjXzOi8Buvfhpd8aHNrHCd1OJ/AFLy2Fve8hPuVClWALo9S58dQ+VSAb/m+/wl7qrTmX
         0Xcw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JqkJxeFXm1ju6m4hjmUdS/VvWK0q5yp7rfhlD0R6W58=;
        b=SRRo+Nm2B9D+jBIEvxSQAYbPLsE9zv5CODageaqKb3tI1GlD+la9Iu2EccenY/3JRL
         cZHyRXfpHq0odRHoopO5GJPrYxYHZxbLB0NtMaCaFhiVpCs1Crz417Rl4NNHTfYBngvu
         lmkNNzIHuKgQF3jxaU9MajC5+/hv+OWGjLd1sR9htlcpIhVtYSrsWQWs4JnyuS6pEF5N
         tLbmuyjZxkH1GsW1YLTtFfkWLlUeKPf3Jtn2wM2Ou+yFa77E137z35FQCln5379Ax1CJ
         InmTL6M+s/x6C414gMesn9UMdokueYRXrPJ4urNYlq3HO1BtdQGORVsM/a3MbQNV0h7n
         a8qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=JqkJxeFXm1ju6m4hjmUdS/VvWK0q5yp7rfhlD0R6W58=;
        b=udicaRQ7fGPugTBvvl16+XZn5EqbZgI9zbpV6I/VWcAXUHp7bzAvalXhC0d4iDLyc8
         s8QncyZNGFnamz7nUujOQMLUrz/ybIwRnrecwJ6lonB5xopUbfKKeNA3guQeoknOpPKE
         EjR2dvekLUeh7+S1j5ZQ7O0cTqLN3rXdafGUV6yXK8jIiJ7YUqby6AW84R3+LTaQYObr
         Ps25OCoAqDlMcSwxbNNJAT5c2oWghwhLOBsEqorT5CyomKNf39h7sWVJ3EjKlqu4ZpUe
         Rsb71Y+mB2NmJYyY0O8FvrutOz+UpZrFA/kgD8nhSuhkO+NfBN5fupRGHRONRhZRXp7e
         AJTA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531d4SIeHpfF80MXTNldCmEFCrxGQEEPvumJsZA96Jz8EamoOaT6
	whrA2QYuTd7PaybuyIFVzo8=
X-Google-Smtp-Source: ABdhPJze9mwkmPynXr0wH8J4qVxUlDZNthvgXCY7bXS2d/q4ZyBt3UdsMgKdafZhWpzKugvA3X7WbA==
X-Received: by 2002:a17:902:9302:b029:f6:32d3:e10a with SMTP id bc2-20020a1709029302b02900f632d3e10amr5448378plb.29.1621558857158;
        Thu, 20 May 2021 18:00:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:b48a:: with SMTP id y10ls2940700plr.7.gmail; Thu, 20
 May 2021 18:00:56 -0700 (PDT)
X-Received: by 2002:a17:902:7c8a:b029:e6:f010:a4f4 with SMTP id y10-20020a1709027c8ab02900e6f010a4f4mr8938700pll.17.1621558856528;
        Thu, 20 May 2021 18:00:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621558856; cv=none;
        d=google.com; s=arc-20160816;
        b=aeWLgy1YWQ2rfYv7SLG8oUUiqxR1upUU1P7K+yI+IQFUJ0FFZBsxh9iKZKSzMjnuTZ
         4Zyb5kLWm0EVIcsWzX0DthD+fdg5nTcrVdncKFSbHm9ap621EBJg9ZjsFHNpZ5bx07oD
         wnyKUxXuwrq2U8n6dzZUhNE7HgcSfCRA1G/n0Un/MlK3eWHDcMNUkUGTWkIJ2Nl8oQYM
         PpcEpVpHx28q6Z+JfsuuIJWUKd8/lHpmqn+RzAYRpF9o0gpT+BwIqpGk+arioVd97AQS
         8LrEIeszAZSQuJyVKeqNAEc+MwhcjwPhhHQl+DUd+KLjCE38tP5UF/o+MffMb7Dx/X+A
         9Eww==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=gqSQIKcZyunzc4Ekmi+s+53fmWVvDMC4+pa0kTCJh0c=;
        b=XrhNNJaInb82aUWyYWOKTHcu9keQMeODzmux5hhZ3Tt9EjOwsD3UL4YtppGy3GJw06
         N7RcalAoneiAcIJ2NdoT5BBfFfzaw2TzzyOvY/L/eVoZSZTibYvT/P0aawvGWF5l5UOn
         hLMtePBqW7dxzCdpfL7E5JObXcTP4OL7LFJJTi5+3tnfGkt6uaAd0lL76PouPkzmx7uZ
         mUv2Sl8GVGVb1CRDzuhY7Kg354Ne9u9TT+yB7LFB+7vqXM/aVcKn4v2UmXKzlXSemnC7
         Heosp4Vd/P1oMLDcz8LAgiWPCgheFhCea179KbbjCulKRCSSxItj+Ga+ddjNqUo7XuhQ
         gV5Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga17.intel.com (mga17.intel.com. [192.55.52.151])
        by gmr-mx.google.com with ESMTPS id z1si398875pju.0.2021.05.20.18.00.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 20 May 2021 18:00:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of philip.li@intel.com designates 192.55.52.151 as permitted sender) client-ip=192.55.52.151;
IronPort-SDR: hHS+vhBcw3HlYdzNKR8ELcTnXpH9HBFZUYVTTOcokmoEfJaWcdFhpN05Lj9coAC4OZsUdnZ8Oe
 7Qo0alfptmOQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9990"; a="181661578"
X-IronPort-AV: E=Sophos;i="5.82,313,1613462400"; 
   d="scan'208";a="181661578"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 May 2021 18:00:55 -0700
IronPort-SDR: zogkK2KyjuMjJZETKMP+uqpsPM3jJm3SW3xvuKae7PduQglXtejYlmtyBLVUStnAT9Qno1XIXN
 OHQFNiYR6pHg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,313,1613462400"; 
   d="scan'208";a="545189183"
Received: from pl-dbox.sh.intel.com (HELO pl-dbox) ([10.239.159.39])
  by orsmga004.jf.intel.com with ESMTP; 20 May 2021 18:00:52 -0700
Date: Fri, 21 May 2021 08:57:24 +0800
From: Philip Li <philip.li@intel.com>
To: Rong Chen <rong.a.chen@intel.com>
Cc: Arnd Bergmann <arnd@arndb.de>, kernel test robot <lkp@intel.com>,
	kbuild-all@lists.01.org,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Kees Cook <keescook@chromium.org>,
	Andrew Morton <akpm@linux-foundation.org>,
	Linux Memory Management List <linux-mm@kvack.org>
Subject: Re: [kbuild-all] Re: [linux-stable-rc:linux-5.10.y 3189/5262]
 drivers/usb/dwc2/hcd.c:3835:6: warning: stack frame size of 1032 bytes in
 function 'dwc2_hcd_dump_state'
Message-ID: <20210521005724.GA3353474@pl-dbox>
References: <202105200357.eXI65Gfu-lkp@intel.com>
 <CAK8P3a2j61ouv8h-rWj7zPzjZ8Ok7GtQpyT5NaiYGxwxWHfwAw@mail.gmail.com>
 <e65bc9b7-13ef-0e83-1ec5-0287d5875d2c@intel.com>
 <CAK8P3a3hc67Ks_j8cXokOQBQBEJfMbrDLHfDTXcPFYQfxga=ag@mail.gmail.com>
 <9df0d465-d671-d970-4b45-61af014749c9@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <9df0d465-d671-d970-4b45-61af014749c9@intel.com>
X-Original-Sender: philip.li@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of philip.li@intel.com designates 192.55.52.151 as
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

On Thu, May 20, 2021 at 05:56:35PM +0800, Rong Chen wrote:
> 
> 
> On 5/20/21 5:27 PM, Arnd Bergmann wrote:
> > On Thu, May 20, 2021 at 11:22 AM Rong Chen <rong.a.chen@intel.com> wrote:
> > > On 5/20/21 4:28 AM, Arnd Bergmann wrote:
> > > > On Wed, May 19, 2021 at 9:48 PM kernel test robot <lkp@intel.com> wrote:
> > > > > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git linux-5.10.y
> > > > > head:   689e89aee55c565fe90fcdf8a7e53f2f976c5946
> > > > > commit: 5f2f616343b1d62d26f24316fbfc107ecf0983a9 [3189/5262] linux/compiler-clang.h: define HAVE_BUILTIN_BSWAP*
> > > > > config: mips-randconfig-r015-20210519 (attached as .config)
> > > > > compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 8e93d10633d751a3e9169bf9fa68326925ffa097)
> > > > > reproduce (this is a W=1 build):
> > > > >           wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> > > > >           chmod +x ~/bin/make.cross
> > > > >           # install mips cross compiling tool for clang build
> > > > >           # apt-get install binutils-mips-linux-gnu
> > > > >           # https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git/commit/?id=5f2f616343b1d62d26f24316fbfc107ecf0983a9
> > > > >           git remote add linux-stable-rc https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable-rc.git
> > > > >           git fetch --no-tags linux-stable-rc linux-5.10.y
> > > > >           git checkout 5f2f616343b1d62d26f24316fbfc107ecf0983a9
> > > > >           # save the attached .config to linux build tree
> > > > >           COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=mips
> > > > > 
> > > > > If you fix the issue, kindly add following tag as appropriate
> > > > > Reported-by: kernel test robot <lkp@intel.com>
> > > > > 
> > > > > All warnings (new ones prefixed by >>):
> > > > > 
> > > > I analyzed another bug like this today, and I think this is again just
> > > > CONFIG_UBSAN_ALIGNMENT=y
> > > > on mips/clang causing tons of these warnings.
> > > > 
> > > > I don't think this should be considered a regression, but we may want
> > > > to change either the
> > > > kernel or the 0day bot from test building this combination of options.
> > > > 
> > > >          Arnd
> > > > 
> > > Hi Arnd,
> > > 
> > > We have disabled CONFIG_UBSAN_ALIGNMENT for mips/clang in our kconfigs
> > > to avoid reporting such warnings again.
> > Thanks a lot, that helps.
> > 
> > Have you considered always enforcing CONFIG_COMPILE_TEST=y for any
> > randconfig build? That would address this issue along with a number of similar
Hi Arnd, thanks for feedback, we have talked about this internally. We use randconfig
to cover different combination, some randconfig would have CONFIG_COMPILE_TEST=y, some
is not. For now, we also want to check the kernel build status when COMPILE_TEST is
not set (as if this is a valid kconfig combination). Thus we may not always enforcing
the y here, but keep it as random as possible.

> > ones. I have sent a number of patches to add COMPILE_TEST dependencies
> > for things that otherwise break in randconfig builds but could still be useful
> > in more specific cases when users know better.
> > 
> >         Arnd
> 
> Hi Arnd,
> 
> Thanks for the advice, we'll consider it in the near future
> after assessing the existing configures.
> 
> Best Regards,
> Rong Chen
> _______________________________________________
> kbuild-all mailing list -- kbuild-all@lists.01.org
> To unsubscribe send an email to kbuild-all-leave@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210521005724.GA3353474%40pl-dbox.
