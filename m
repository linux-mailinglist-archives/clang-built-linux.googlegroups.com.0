Return-Path: <clang-built-linux+bncBCX2JBVY5MBBBBE63T5AKGQEM4HNLUA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13e.google.com (mail-il1-x13e.google.com [IPv6:2607:f8b0:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id 32E172609B1
	for <lists+clang-built-linux@lfdr.de>; Tue,  8 Sep 2020 06:56:37 +0200 (CEST)
Received: by mail-il1-x13e.google.com with SMTP id v6sf11199434ili.13
        for <lists+clang-built-linux@lfdr.de>; Mon, 07 Sep 2020 21:56:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599540996; cv=pass;
        d=google.com; s=arc-20160816;
        b=exdjXoZ+vz+Zf46fxgUgrga1Xeh8dk+qLFJ916kRWzARrjo8UF9ajzN45f6hqs8jhr
         AgXKo2K9Py6tAj1hO847m5yHP60wFlkIFYBXTdOHrED6TEStuN8xC04xUxTOM3tgrJZL
         7uJ5t/4CIeLN0pwYBe6rrtgkI/3+4TKsu2heWqMDVjlCOsKU2exzPOkmUnKMiiOq7CYg
         p8feWXXmjipSlIJ2VkklC3dEuEJwjbwu2rCITkaEO+f8wNhVtVThI8Po3euA6/L225/W
         tNhhpeRWxqSFhHAXF2Zaf3mqykh8egqj5kTT8n/GopSNVf1wMspwT4XBpiMH9g8G+Lpf
         +vKQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=E08jiSrrGSilXGKJXsnTDlXfqiShYz5/6HnKSNHmCGo=;
        b=yzj5HkkISDZc+WjH9EWUgX8g8bkCHZ7Sy7sNbFL/E+35hhZhLmj6Iblc+0LWtGkGmS
         Nuu1O85JJ1BIj4A4uvyCyzgqIpxpIYeAJ3R9SrNfN02B2wfYvmKnYvrmS17/OTeEF7KH
         nfBgQnpTSwyIzJ0yd/LTdzJLhfyduIjSYR5qgMFjA+nI+CjYST8GnCurydF68Cav0x7K
         TAc1qUtDqMyTEyV56wKwLSfIUgBgJQ30rKDKYWj9F7UMHjkfIEisfGje/NVDF9FrCeJ9
         b3MLfB5Ny4RTGqrvekdJHpLBr8mCIP6X+e6PlwBb8BuC3bZB9lVZLlas1+Upbx4aROrJ
         x0QQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=E08jiSrrGSilXGKJXsnTDlXfqiShYz5/6HnKSNHmCGo=;
        b=bG32CBQAA4t5Y43+LOZgwqc/Nec9X5/yfKHHMthmm3q9SzE3cHQuIHVBOqraqoEz9X
         04//1bcs9IT3IZm0fOhSR7OSRWtifiPvJEOwmaqIv7ozYO0681ZbtkBFmgvl/o5YdV4s
         4hLnAV6X4wjrtVKHAuzjqVJe6R1IjLdTOiXETxCpMKQw8b8XJWzZIpZcUw90uCVGv2ty
         t28RXRAoJutOKT2WSmIgFhQHM8ERB4pYtMU8WGW8LYxiHpQqClZbKlpTgh65c9Z3Yz4V
         9jkYCvnKQGAh8Rv6EomyZ8otPWcTqEnsFsGwTE7BRjrHMOCn8pcTDULWc5GhmWf4QTJT
         /S+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=E08jiSrrGSilXGKJXsnTDlXfqiShYz5/6HnKSNHmCGo=;
        b=TNzYrD7+FnW6xvmG00NOblJwy183u8MREVesa7WxIEXrFBJa0ifCi4ntOrB35fZx35
         sWilVJvdFr7Y7OMqVzXxvw45CDKuUw5cg0qj+06tIesL/YLSvbx9Y0kmtZpKQLbhwWgB
         Ee6VYXuQSZe0bUIYtauL30NJpiOkxpJWBMDbqXZ+4M4rz5xBgICzT8C9JBQYLmaIkgcI
         6C3TMFy/CTKS0wwwgzoYN01J3REiWLyOF1fiWeV0YWxBHJqrfVe06LWbnBSklX1fqIxV
         A8Q7srKd4lCKmwmT+IPP7Ato2WiCii1sqI6t+7yHESSqJHjEHudHvYKBLj9cTbVO7mEv
         TGJQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531GmbGAv6W/uAX/yWHWsSy44htZkjb7SUQenSA6ADn6rD15Qol/
	4cm/I/fvkSFKOKe85VwJMc8=
X-Google-Smtp-Source: ABdhPJwg3xad9hCKyONBrfg6QHw2ykclB3ST3JR4PTWPpqjlajY2Jb+hXrxIy3Pl/yFjbgRirMSWng==
X-Received: by 2002:a92:ba44:: with SMTP id o65mr14601715ili.255.1599540996150;
        Mon, 07 Sep 2020 21:56:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:dc09:: with SMTP id s9ls2886607ioc.4.gmail; Mon, 07 Sep
 2020 21:56:35 -0700 (PDT)
X-Received: by 2002:a5e:9b04:: with SMTP id j4mr19768614iok.59.1599540995698;
        Mon, 07 Sep 2020 21:56:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599540995; cv=none;
        d=google.com; s=arc-20160816;
        b=DvYK3jtqAM9DFTxLCVPo6JLjli4YKJnsw0Pv8Qr6sPA/uoPl/juEo8OC16eXIW8hsU
         a0g2e60CBDcLXHBU416WuflwWs0FNXuVZHDmMGbj9ygtNp5W0eIl616cMekXdVxf6Dve
         FxFIjHyVkfdNkgaAYZoUWcWmLckdKcLTB/K8M7XsNwuIg7N22k8qgQZg27q0tT6MhL71
         OyAso/vJtSPp4lJOu7LdtF0CLR3o1DIRZJJQKc+R7AucZdrH+k4FIM0HQHewV4lPgIRQ
         vMipK5m3mnxQV5I6hFyl9R8kGObsKa5Y7/YQs9sbYes10WacCeW+FR+xJYgxuH9PBB/b
         szqg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=B9MbO6uDxTydbIFVZpQ0iYVjv4bwCRNIbxECoto2Svw=;
        b=sMM1ltgG2P6lq1qFq9huY8gMfLwouOvtdqEYizAKJPWMeP22iavoIPWmD5G/zIxobk
         e7J3xntbyedjPuGf7tjG/xBwa/BuaU7d+ty4PCGYA/zpsmcZu/JF8KRwEoqGxmrNJ9t4
         MSpuhYkDVhQGzXYRzJd3TF8SC3cHzzCLplmsMfoBg8LI6H3rH/RAFqApvL7H/iIZIUPU
         Lsu4nd+vEjyTcTtmlzGWcB2Mjfu+6r9fn1tDFfFliwNnTqIPzF6BsljndcNkc/QyrZDZ
         NFV3nrr9AHCyZW8Y0ntR8uYgvQvk6I/YgbTLAIRL3hGdrbIoWgeTQq3SwV8+OGc3rCoQ
         AqFA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga18.intel.com (mga18.intel.com. [134.134.136.126])
        by gmr-mx.google.com with ESMTPS id m2si1099480ill.5.2020.09.07.21.56.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 07 Sep 2020 21:56:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of philip.li@intel.com designates 134.134.136.126 as permitted sender) client-ip=134.134.136.126;
IronPort-SDR: 63As7MRbWRX3OC6taEgTvBVnwCjhR6588CEfJhJWLvkpfWkSmlnPeyg4b/dRyGoMAeD5mqwKZP
 hvhOnyq3vDeg==
X-IronPort-AV: E=McAfee;i="6000,8403,9737"; a="145783867"
X-IronPort-AV: E=Sophos;i="5.76,404,1592895600"; 
   d="scan'208";a="145783867"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Sep 2020 21:56:34 -0700
IronPort-SDR: 0Lpdj5c3cvxSIwk/q+ArSF+MmkQoPntyyQD1GqX/M8YVFCjS1d2zIQ/ogAN+W+rU6TT34EREBF
 /56jyXctj5AA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,404,1592895600"; 
   d="scan'208";a="504921405"
Received: from pl-dbox.sh.intel.com (HELO intel.com) ([10.239.159.39])
  by fmsmga005.fm.intel.com with ESMTP; 07 Sep 2020 21:56:33 -0700
Date: Tue, 8 Sep 2020 12:52:33 +0800
From: Philip Li <philip.li@intel.com>
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>
Subject: Re: [kbuild-all] Re: [kbuild:kbuild 14/14]
 scripts/module.lds.S:29:10: fatal error: 'asm/module.lds.h' file not found
Message-ID: <20200908045233.GA31598@intel.com>
References: <202009080532.aH8qq297%lkp@intel.com>
 <CAK7LNARKSEv+G4yy2k2u33kgLb316GYObCe8zKwwWdOyW7FHpQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAK7LNARKSEv+G4yy2k2u33kgLb316GYObCe8zKwwWdOyW7FHpQ@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: philip.li@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of philip.li@intel.com designates 134.134.136.126 as
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

On Tue, Sep 08, 2020 at 09:46:17AM +0900, Masahiro Yamada wrote:
> Hi, 0day bot.
> 
> Now I realized my commit is not working reliably
> for parallel builds.
> 
> I will consider what to do.
> 
> Thanks for the report.
you are welcome, thanks for letting us know the analysis result.

> 
> 
> On Tue, Sep 8, 2020 at 6:36 AM kernel test robot <lkp@intel.com> wrote:
> >
> > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/masahiroy/linux-kbuild.git kbuild
> > head:   8d77c9acc14a49e4175d7e0d3ce1e256cd31c5a5
> > commit: 8d77c9acc14a49e4175d7e0d3ce1e256cd31c5a5 [14/14] kbuild: preprocess module linker script
> > config: s390-randconfig-r015-20200907 (attached as .config)
> > compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project ab68517e6b7e51b84c4b0e813a30258ec1ce5da5)
> > reproduce (this is a W=1 build):
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # install s390 cross compiling tool for clang build
> >         # apt-get install binutils-s390x-linux-gnu
> >         git checkout 8d77c9acc14a49e4175d7e0d3ce1e256cd31c5a5
> >         # save the attached .config to linux build tree
> >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=s390
> >
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kernel test robot <lkp@intel.com>
> >
> > All errors (new ones prefixed by >>):
> >
> > >> scripts/module.lds.S:29:10: fatal error: 'asm/module.lds.h' file not found
> >    #include <asm/module.lds.h>
> >             ^~~~~~~~~~~~~~~~~~
> >    1 error generated.
> >    make[2]: *** [scripts/Makefile.build:377: scripts/module.lds] Error 1
> >    make[2]: Target '__build' not remade because of errors.
> >    make[1]: *** [Makefile:1192: scripts] Error 2
> >    make[1]: Target 'prepare' not remade because of errors.
> >    make: *** [Makefile:185: __sub-make] Error 2
> >    make: Target 'prepare' not remade because of errors.
> >
> > # https://git.kernel.org/pub/scm/linux/kernel/git/masahiroy/linux-kbuild.git/commit/?id=8d77c9acc14a49e4175d7e0d3ce1e256cd31c5a5
> > git remote add kbuild https://git.kernel.org/pub/scm/linux/kernel/git/masahiroy/linux-kbuild.git
> > git fetch --no-tags kbuild kbuild
> > git checkout 8d77c9acc14a49e4175d7e0d3ce1e256cd31c5a5
> > vim +29 scripts/module.lds.S
> >
> >     27
> >     28  /* bring in arch-specific sections */
> >   > 29  #include <asm/module.lds.h>
> >
> > ---
> > 0-DAY CI Kernel Test Service, Intel Corporation
> > https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> 
> 
> 
> -- 
> Best Regards
> Masahiro Yamada
> _______________________________________________
> kbuild-all mailing list -- kbuild-all@lists.01.org
> To unsubscribe send an email to kbuild-all-leave@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200908045233.GA31598%40intel.com.
