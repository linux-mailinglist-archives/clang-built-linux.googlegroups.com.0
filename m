Return-Path: <clang-built-linux+bncBDA5BKNJ6MIBBFPLROBQMGQERLLYMWI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13e.google.com (mail-il1-x13e.google.com [IPv6:2607:f8b0:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id BC9A534E4DA
	for <lists+clang-built-linux@lfdr.de>; Tue, 30 Mar 2021 11:55:34 +0200 (CEST)
Received: by mail-il1-x13e.google.com with SMTP id y11sf13715250ilc.18
        for <lists+clang-built-linux@lfdr.de>; Tue, 30 Mar 2021 02:55:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617098133; cv=pass;
        d=google.com; s=arc-20160816;
        b=TM9GymyiJfhTxEDhtXhXxz2UXzHhjj++vUTJAcmHROoUzoPBJvxt7Vzz88MXq0A/mD
         kmoAoCjxSyQK4ebZecG/kL/iz0cC7eZFivDX1+XseuN3Ob+RHo/9BkWwfBWS80SZRJm0
         DxAtplcYKaW2lAW3FxgxJknQcnkLls+a6kjouIXf81LcFxtGfqYbN/rfkEBhPFPaNcsH
         MpV5YUN8X9mGewt3Jun6FGZaAuXUc+ibUOgvVVlFLrxGdBglq+uw6qb15bCsl/sDT4bL
         e2WS2rWrgfZK6VZwwol8AjJLPvg7JOSlHBwDlG0HOdSYhdmc3H9tFuKp/PBg8meAUA0p
         rE0A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:organization:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=OA8QjGm3A1ma0M+1Qx/pqdNpLbLkQ+wGUa6B0yr4R0U=;
        b=iijrwUJtd/W7PV0wCuobY1Nu1AvQFwMZuGbl5HMu2y9qZG4sYcnVU9fbFwtcCNo03N
         ZVBqmhwWRgiQGdulXuTSNuAg+VKuNCKk9i48zouvglro3lODkAxHOC3tnwXitCl20bAS
         mjmL0pmgqOhYMqCeHnARiya7+m2232UbP5BRYbmb4ouveKDQXBGZumZdp1GWXv3fDtzY
         w+mmG9i78oDGRvKCf9K1TTiFM5QOzXxTbI9TaA1t0721MY88WZ3zpdBf5Le+ACSh3bQV
         QYuF17xTIysppLHpM7pzYw6rgVUoU7ylUjHBIeJbhEIR9ZJOLk1MdLf39/VpXblWaI9t
         l3RA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of andriy.shevchenko@linux.intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=andriy.shevchenko@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :organization:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OA8QjGm3A1ma0M+1Qx/pqdNpLbLkQ+wGUa6B0yr4R0U=;
        b=S08bT8ZiLEt0MXAukRBIWESp9oxVUd5oXNgHfbXDEvZ8esYFnbTk1Hoe8OOs5P0+vh
         FqLeSAl6XGzRXLoZdGj+9QMpcL1wMrMregZDMYbV4GXwhA7NwcxJ+dSWKZE8tWGcyVFA
         x8uHTq2wOg475jOn/5ERWziorNl4w8UICogk5smNdV2pMfHIgKbzDMNk76XWlH3ji8lK
         FoEbUlyGiBa2tS5fzn4r+QQBapFYY+XhtHTMfdo5axujUlKodmcg1iKlyRb80zycMftu
         WVkQ0UIfpeLZElr15fCNh1XUC0cqUoqGDFvK0PrRgkZWOwiEXMneNPR+AjhaS1djqwYG
         Hh9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:organization:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OA8QjGm3A1ma0M+1Qx/pqdNpLbLkQ+wGUa6B0yr4R0U=;
        b=gwS4FHn0GVNjKn0ilq161VQl6lJAy/nyJhOb7aUYTfpQFYTqmAOzjTa3oPv/PIICZv
         bm6OStOI6Xw7xhuInVeVWHf+zLokS4r2QA3k7sP74SNGphq9nlTRgFhQ9JWbAY3WYubz
         wm2WCbrtChTk+A9w4CSi/zlCV2Azgrh95yeoF3cry1EOl/vDNcy7FJn/E0SL9OCPGPDs
         KBqVcSRC+V91GhDu3j4CGL/CgPSUCAnyub1xNEjsY6Jl5JqG1CuqD+dT3d2OObmyrwip
         gJXFXJTH8P/h566oQH94us6po+RUQpuePkCqZ6yKWbAthbRlrjSxq+KOArbprBF6AOSg
         gLqw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530gLD/PeIefV2J1PEVBEDK9hb5oNBcqvITFxrT0es4FO0W7QcI2
	UMJtVuD5Olz1/fXXUWnjA+Q=
X-Google-Smtp-Source: ABdhPJxyms/5tNWni9rcBwLYKE8vLA4Lz2TDUv1WKRK58pu8dNQJs09mzCbU/sSjjK/01KuQbbq2FQ==
X-Received: by 2002:a05:6e02:184b:: with SMTP id b11mr9588846ilv.29.1617098133848;
        Tue, 30 Mar 2021 02:55:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6602:15c8:: with SMTP id f8ls2861758iow.6.gmail; Tue, 30
 Mar 2021 02:55:33 -0700 (PDT)
X-Received: by 2002:a5d:878e:: with SMTP id f14mr24170049ion.176.1617098133454;
        Tue, 30 Mar 2021 02:55:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617098133; cv=none;
        d=google.com; s=arc-20160816;
        b=s+Ju9uJNUej/ZNeGnrtiB05i19A8PN+4rDaO5j0gmWKfD8mskTCpLgrFaQM4XlRxBN
         A8Niori3inEOeoWNaKll06Jy+9HJ/e/hkcXCrk+6tCzkGrXG1z101i9My9XNMoXOLGgN
         ckBmeJr82zLeYypLndGTCrz5imCDTxuQ19Ji19eaMa/VftvHlEzIZmL9VOsUljIhnXXN
         3PR7O8jonQlfFVTWJv2E2SpM0WRvkFO72a5zXeDGl6poKr/8qKqW/60JwDme3nU8moms
         53xx3VMZ227Bs5jn5SfcUAOpV25o62ilVFSgGObtukU27/1dSNTyczYzisiO1ekFiR47
         s7Pg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=organization:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr;
        bh=lqaqZ7NsjaKboOqM4mnUlBuCSztmT2qVFjqSTfvcTdk=;
        b=J/1YXMIhEnzCMKN3ZTtdU4dtaIhxX8OH8jL3k0CUEHAqAX5Tl2mV/U+JGjPpbRC2tZ
         9oQK/SFjf9yuQ5SL3zGc2tQo9/QABZTK2022fhZ3DaZIiXfGxyRBDvNtW5EB6N0vPzxc
         4UtSp7Wu7vTrdAWNDfn3GQXNIKQLbQqVvexyb4P3a9jHmDW2uR9cYvH3EATOQgbwDR+4
         ZImhZr8PSfoEXrxqMfNwp6FhA0yjWABdDU0oeJrF/iOYzr2Z76HjVCYLwr4COlIF7mHa
         nNvX9llKPgp3jY6PzpiFtwyLPbLUs+34cVUHbHfMsFEnAsFWMbLaLd14/XyMxySna0nf
         Y0UA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of andriy.shevchenko@linux.intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=andriy.shevchenko@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga06.intel.com (mga06.intel.com. [134.134.136.31])
        by gmr-mx.google.com with ESMTPS id i2si1152606iov.2.2021.03.30.02.55.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 30 Mar 2021 02:55:33 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of andriy.shevchenko@linux.intel.com designates 134.134.136.31 as permitted sender) client-ip=134.134.136.31;
IronPort-SDR: rowE10kw6dntYUjt+oYJtmY5ihrfZm4MDkh+7XOFpWJIDnuCfXAhHbVkkm/4Te7iuQ3fbVrsGd
 rmbi3+7ERhWQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9938"; a="253074517"
X-IronPort-AV: E=Sophos;i="5.81,290,1610438400"; 
   d="scan'208";a="253074517"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 30 Mar 2021 02:55:31 -0700
IronPort-SDR: CtTw2AIyDrwrtRYVqWj9XC+Qf3R//G1r4d8HruKFZxtIpSJVm+Xkg/jZSN+xla31GLhtKpZaaB
 LCcyI11PSjBQ==
X-IronPort-AV: E=Sophos;i="5.81,290,1610438400"; 
   d="scan'208";a="393552488"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
  by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 30 Mar 2021 02:55:29 -0700
Received: from andy by smile with local (Exim 4.94)
	(envelope-from <andriy.shevchenko@linux.intel.com>)
	id 1lRB5q-00HII7-RL; Tue, 30 Mar 2021 12:55:26 +0300
Date: Tue, 30 Mar 2021 12:55:26 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Bartosz Golaszewski <bgolaszewski@baylibre.com>
Cc: kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com,
	Linux Memory Management List <linux-mm@kvack.org>,
	Linus Walleij <linus.walleij@linaro.org>
Subject: Re: [linux-next:master 7313/8469] drivers/gpio/gpio-sim.c:388:34:
 warning: unused variable 'gpio_sim_of_match'
Message-ID: <YGL1jtM0X84/PPjm@smile.fi.intel.com>
References: <202103301259.dhlOOcXV-lkp@intel.com>
 <YGLrO9lsfvnWYY5Z@smile.fi.intel.com>
 <CAMpxmJUnHjjqR-hb=6sUth9C1-pfCr7iCwGCFH6h-NDbq0WGhQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAMpxmJUnHjjqR-hb=6sUth9C1-pfCr7iCwGCFH6h-NDbq0WGhQ@mail.gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-Original-Sender: andriy.shevchenko@linux.intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of andriy.shevchenko@linux.intel.com
 designates 134.134.136.31 as permitted sender) smtp.mailfrom=andriy.shevchenko@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
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

On Tue, Mar 30, 2021 at 11:26:17AM +0200, Bartosz Golaszewski wrote:
> On Tue, Mar 30, 2021 at 11:11 AM Andy Shevchenko
> <andriy.shevchenko@linux.intel.com> wrote:
> > On Tue, Mar 30, 2021 at 12:15:04PM +0800, kernel test robot wrote:
> > > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> > > head:   9d49ed9ca93b8c564033c1d6808017bc9052b5db
> > > commit: 3f0279eb9e3767f37939358a42054c226503233a [7313/8469] gpio: sim: new testing module
> > > config: arm-randconfig-r001-20210330 (attached as .config)
> > > compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 482283042f795ecc27838a3b2f76b5494991401c)
> > > reproduce (this is a W=1 build):
> > >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> > >         chmod +x ~/bin/make.cross
> > >         # install arm cross compiling tool for clang build
> > >         # apt-get install binutils-arm-linux-gnueabi
> > >         # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=3f0279eb9e3767f37939358a42054c226503233a
> > >         git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
> > >         git fetch --no-tags linux-next master
> > >         git checkout 3f0279eb9e3767f37939358a42054c226503233a
> > >         # save the attached .config to linux build tree
> > >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm
> > >
> > > If you fix the issue, kindly add following tag as appropriate
> > > Reported-by: kernel test robot <lkp@intel.com>
> > >
> > > All warnings (new ones prefixed by >>):
> > >
> > > >> drivers/gpio/gpio-sim.c:388:34: warning: unused variable 'gpio_sim_of_match' [-Wunused-const-variable]
> > >    static const struct of_device_id gpio_sim_of_match[] = {
> > >                                     ^
> > >    1 warning generated.
> >
> > of_match_ptr() should be removed AFAIU the case.
> >
> 
> I'm not using it though... Other drivers do the same thing as I did
> here. Can this be a false positive?

Ah, you simply missed to add it to the platform driver structure.

No, it's not false positive.

> > > vim +/gpio_sim_of_match +388 drivers/gpio/gpio-sim.c
> > >
> > >    387
> > >  > 388        static const struct of_device_id gpio_sim_of_match[] = {
> > >    389                { .compatible = "gpio-simulator" },
> > >    390                { }
> > >    391        };
> > >    392        MODULE_DEVICE_TABLE(of, gpio_sim_of_match);

-- 
With Best Regards,
Andy Shevchenko


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YGL1jtM0X84/PPjm%40smile.fi.intel.com.
