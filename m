Return-Path: <clang-built-linux+bncBCX7JJ6OTQGBBYGM26CQMGQEOZX7N6Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x537.google.com (mail-ed1-x537.google.com [IPv6:2a00:1450:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id 53135396E31
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Jun 2021 09:48:49 +0200 (CEST)
Received: by mail-ed1-x537.google.com with SMTP id w1-20020aa7da410000b029038d323eeee3sf7417530eds.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 01 Jun 2021 00:48:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622533729; cv=pass;
        d=google.com; s=arc-20160816;
        b=ItXuJWu713M5tBNoBM3cAEfNYdHU6ywdOL4tKo818dptuXd6K30mIitOa9o6zvH4WJ
         6G+kMCffZdstx/HFxsQcLeInj4dNV5mDgXI9jqS7Up7EqyZxDc12Pu6z+eEI6GbBnFqR
         T5QIqeX+wPH+niMYEDRtdRbA1jD9BeA0FVmTDS6AO/SsHbuAbIfqKmq93XeC4+8bMXw5
         dUI+9y4umWv9Utvdtx0DSzNOlwYmrHNP0AxCzCrZfaB2Aq/5vJkwOyPcwYUzNDI3+/+r
         T3ugapxnQDGQDYGqSwEk4/rrgqtmeutK0V8EADKiyDdJfGwX9LzN7ibj6T5gCS/cueUZ
         JS/w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=ee2zTTX8gaHAG85n35WwEO9PCAkUnE4df2GjcksWyE8=;
        b=QBq/Z74xQGLVRrMBTD28EgF+H4IrnN1VHKGQzeq3+rPD4v/ASTeSs4GnYrwuA56U1q
         ZnQ+wSaNn8q6eFtSbO5Fy2StaE+NvtyjrcqRitkBWjGSjrWhx0EZly7CbDb384S/+nwm
         YC7AMg9m6RT05t4/eie3ZM/FkxIcdAm/w875xT0eCzssX4bjIgaxA8soBDShACw7iz4b
         N8PdHvNuGbDIOYPyuYIb1xa6SECi6VKvBBMChIWKoUk+V+vdED5YSsdYVPFVGt213JV+
         u14kVQv6MtxZA05Oj2Sd30NFCPnFGko2j4Giod6FUhuf3Tjmn19vqzJiKA2nAB9iDKj2
         22OA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=ZiKgNokI;
       dkim=neutral (no key) header.i=@suse.de;
       spf=pass (google.com: domain of mgorman@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=mgorman@suse.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ee2zTTX8gaHAG85n35WwEO9PCAkUnE4df2GjcksWyE8=;
        b=hcHH3nIpl++XJjPuQ/6tVpMdELat86WFu76e1Gbi8i2JzG2pqrC6PfYeU+iOIxu2oK
         xzM14Mp2b0e8IGfMqkBF3Oiznk/9ptbuSg9ycaSsS4ZoPnomz/l07eHzngPZP1Ub+UHl
         PS3L0cDP9r+F09jIrIj3ZlU+E2NLZ31HMBCmvZbsboizy1Ec9+4oZNLsUFoGC7diCcAW
         TQJXPL1h7FNdAfP+wHh8c/7fJv45mQQ9RRsmoPGjpZ7dbfLX6hvXtbMAFY66N8QPKZDI
         npnsEQ5YSDpBn5f8IxQMDc74I2KzVoYxa/c1rbdPZaclAc5dDaQ4Rkrfd6VcH9u4cCxp
         tFFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ee2zTTX8gaHAG85n35WwEO9PCAkUnE4df2GjcksWyE8=;
        b=jYO1vh7At8yFxi/S77urMfh5l7ebAPUyV+5V1pmQAEDSRJUbfwjn/O9omOpojoBo76
         MQlkplE/hvc+Rbd8SUW26+9gJ/KIMz70g0VGbIbHWNBafSa/5wPmbkYVn+XmFh5HB/BC
         kfQMKd1kaFe8PxR4wOE5z8qs3rN/NiGdkaxmLImhmxHecJJA2Tv/TJ/XDNWhl7gMwT4p
         Pd0AisNa37vzfFv3onHNwMYP1DMTjUMNNB7CW+KRJ/ng39P/LWCIuPhneF8THPBkPqwy
         TjutxFPZlBNUQt5xtcQd4ZPH0jSHzWhHdrVMa+9UuYE9gOxviCLaKFkNCHXqRkwH6h41
         SCBA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531llnNZCT6SOD+Lu5EeK4k8NWEWAI+iFdFxSD2ZfXqhRkOrm3yC
	0NGUy90YctUUx0SSY3WsiTk=
X-Google-Smtp-Source: ABdhPJzwl/DCYMiS5A44GuBPuefhu/8o0pYufXcUT+KScfs1FuKyUpm8Iy8N65x/ohZ9ZBrHK1E3PQ==
X-Received: by 2002:a17:906:3b10:: with SMTP id g16mr28444632ejf.232.1622533729036;
        Tue, 01 Jun 2021 00:48:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6402:1510:: with SMTP id f16ls4841671edw.1.gmail; Tue,
 01 Jun 2021 00:48:48 -0700 (PDT)
X-Received: by 2002:aa7:d905:: with SMTP id a5mr7293623edr.387.1622533728211;
        Tue, 01 Jun 2021 00:48:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622533728; cv=none;
        d=google.com; s=arc-20160816;
        b=SOX7Wnl+TaO+nMyES+U5pSa5UxAh3iY5f4gf1f1mHORqsFDWVOI8PzqvVVayu8ZaGu
         iD6BsvFPNU9wr9famANoL3G+0VhTfnwbgmAKOehouwf8Y9mJ3/jvX1BD1qEDd8lMUTY9
         1u0Rf52AO6+BJ9X5fq5SiYRxNQ2y/+PYssnBQFZe6ww/LUamKDvnk3dW4EMhoMG2VqOy
         22aWS20iX03Qfu+z6vgPt4IH7rEN5kSyGd2PsMulH2zpoMEklUHE4jkJcfQykVSbs8Jn
         8bhwXlGZmoEmh2m6begpUS3180omSrdHGObkWMtRKImySRSWE1iAnWtSjGIk7Nu2Vm4R
         BITg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature:dkim-signature;
        bh=S9prk+2gwg2DZFavGRu09bQUFIZZIRW16iZ1cNuKSr4=;
        b=YX+lnyIxk/l2TzkXFnGJPh7B3QmgPwO4QQjTiqOwQee5sG1aJ/Na3F1vQCIWFewMyv
         36OHCcJNmFh4qiOtGdDSJVAUytFkcVrHYXtImUOVT8meQjR57mKWsqE6EU6/7KtvRty/
         gNqluyC/WM0kf2htoa7JXvjkS1mc+kRyBnq5v6kVSP2+P3If8vShdQL73uW7AwLeQ6Se
         Q1VMZLyQ+cCbtO5m9W5yRmk0rlZ9qBP6k6otYxW4p4lXahUCI8YewBxDuYZDEogOBcP0
         3QVwRESZWhpWIWegChElCrvXBHgBpkAXNFm/ya2SrBKoOeCNuPN4OCKB3qPPSXFXRGF5
         3p0w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@suse.de header.s=susede2_rsa header.b=ZiKgNokI;
       dkim=neutral (no key) header.i=@suse.de;
       spf=pass (google.com: domain of mgorman@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=mgorman@suse.de
Received: from mx2.suse.de (mx2.suse.de. [195.135.220.15])
        by gmr-mx.google.com with ESMTPS id e26si235591edj.1.2021.06.01.00.48.48
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 01 Jun 2021 00:48:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of mgorman@suse.de designates 195.135.220.15 as permitted sender) client-ip=195.135.220.15;
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.221.27])
	by mx2.suse.de (Postfix) with ESMTP id B10CDAB6D;
	Tue,  1 Jun 2021 07:48:47 +0000 (UTC)
Date: Tue, 1 Jun 2021 08:48:45 +0100
From: Mel Gorman <mgorman@suse.de>
To: Andrew Morton <akpm@linux-foundation.org>
Cc: kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com,
	Linux Memory Management List <linux-mm@kvack.org>,
	Yang Shi <shy828301@gmail.com>
Subject: Re: [linux-next:master 5596/5886]
 arch/x86/include/asm/fixmap.h:103:48: error: use of undeclared identifier
 'NR_CPUS'
Message-ID: <20210601074845.GO3672@suse.de>
References: <202105301909.iEwOXNWt-lkp@intel.com>
 <20210531093917.GL3672@suse.de>
 <20210531150554.bb7769cdedb4fd9bf471b891@linux-foundation.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210531150554.bb7769cdedb4fd9bf471b891@linux-foundation.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: mgorman@suse.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@suse.de header.s=susede2_rsa header.b=ZiKgNokI;       dkim=neutral
 (no key) header.i=@suse.de;       spf=pass (google.com: domain of
 mgorman@suse.de designates 195.135.220.15 as permitted sender) smtp.mailfrom=mgorman@suse.de
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

On Mon, May 31, 2021 at 03:05:54PM -0700, Andrew Morton wrote:
> On Mon, 31 May 2021 10:39:17 +0100 Mel Gorman <mgorman@suse.de> wrote:
> 
> > On Sun, May 30, 2021 at 07:58:14PM +0800, kernel test robot wrote:
> > > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> > > head:   3e029760e6f8ce90c122c267a039ae73b3f1f5a4
> > > commit: 366e9aec4a22d77b869f1b7641a74fdd96f02b4c [5596/5886] mm/early_ioremap: add prototype for early_memremap_pgprot_adjust
> > > config: x86_64-randconfig-a006-20210530 (attached as .config)
> > > compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project bc6799f2f79f0ae87e9f1ebf9d25ba799fbd25a9)
> > > reproduce (this is a W=1 build):
> > >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> > >         chmod +x ~/bin/make.cross
> > >         # install x86_64 cross compiling tool for clang build
> > >         # apt-get install binutils-x86-64-linux-gnu
> > >         # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=366e9aec4a22d77b869f1b7641a74fdd96f02b4c
> > >         git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
> > >         git fetch --no-tags linux-next master
> > >         git checkout 366e9aec4a22d77b869f1b7641a74fdd96f02b4c
> > >         # save the attached .config to linux build tree
> > >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 
> > > 
> > 
> > Hi Andrew,
> > 
> > Can you please drop the patch
> > mm-early_ioremap-add-prototype-for-early_memremap_pgprot_adjust.patch?
> 
> Didn't I fix this with
> mm-early_ioremap-add-prototype-for-early_memremap_pgprot_adjust-fix.patch?
> 
> This fix is lame - x86's fixmap.h should be standalone.  But this gets us
> moving ahead with the MM changes for now.
> 

I think you did fix it but I was surprised by the level
of fallout from this patch and then there were objections
to adding header dependencies unnecessarily such as this
https://lore.kernel.org/lkml/YK3vrIB7cWop+UIW@gmail.com/ .  That was
specific to modifying the x86 headers so your fix should not hit the same
objection but still, as you said, x86 fixmap should be standalone.

-- 
Mel Gorman
SUSE Labs

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210601074845.GO3672%40suse.de.
