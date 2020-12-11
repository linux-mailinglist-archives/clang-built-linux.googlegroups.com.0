Return-Path: <clang-built-linux+bncBCSKPKGMYYBBBM6JZ37AKGQEZCA6SSI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x137.google.com (mail-il1-x137.google.com [IPv6:2607:f8b0:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id F0CF52D7BAB
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Dec 2020 17:56:20 +0100 (CET)
Received: by mail-il1-x137.google.com with SMTP id j20sf7618265ilk.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 11 Dec 2020 08:56:20 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607705780; cv=pass;
        d=google.com; s=arc-20160816;
        b=FJAkRo/JHuEdckwdobnFOze1DDmqtU20NvIEBtMj23c05RSGkp3YgFTHFnq285dsxm
         QPlw3Hszpq2PT1NI36g3/cRukEeEe3SY4Dv5YRhAl2wJv17sQJ+Uk4VnRnXfJWuMhoz1
         js8908zGH3P1rHO02e1EEBMD8foeKz3t1SAfJDWr9N4bBN4hqYFsI1MItQAcJk0vp8+n
         wN/x6VWBSzYa+UqxNjCNYY0tLrroXiP3uJyL9+nPjzZMlPg36sdAlOLp3U+FdgX1naus
         RAude62UcjYi/ZZoCRsj+5X4PzO2QY9iLbuUtD5tsVALLJF9cqyBCTYyN4s9IQzZOpwp
         HU6w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=hVZrf3epbAv/1DLgRQwUpz3sxY1xMLc/HPIew98E5vM=;
        b=dVgsAvQgyhSGidi8h5dMub83362Q/t/jQBksogQdAiTTZt5ZlSn+gvtjD750tByvEA
         X8DalR669WIM1lFcDXuyOFLMUGH5RG8Qbj16lkb0CvidcmH2Bv83opejZxRQ1LjXK15/
         Gn1PIOEF6zM1B0jZsjUhC6jBH7rASdf5fXv3SkBuuWIKA2CIddfly7nJ/PxklGLhcOm3
         KMO/RMSYXQTiIimTS/rX/8rfK2IV4t2LoqiLYHRhB2G7J3aV2jjfTa0fhMazLiJODoI0
         t2wHffaBvZZnv+cfOcM3HWUdib5xYBUm8fEs/8bwmtCv0yzuJdn7GW4VUpGmhAkl8ZY7
         4Fbg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of sakari.ailus@linux.intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=sakari.ailus@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hVZrf3epbAv/1DLgRQwUpz3sxY1xMLc/HPIew98E5vM=;
        b=kSan9H0Ood+qCiEuK9FPkjexBB+KjDcIEg49hvajlkHqmuJHoqtutwTpCQqvoHfhoa
         mJrrBxRTIO3j5kQo79fN9viojr35WY00tOlBetXxPAC64tBHRZjSLFWBfbjgf73x1Ndk
         jopRxMwU6YmwoGxRWoyhO3MgiWvLJt1+sfQyTvnEf5nOXjHs5WnU97uLp+d/s0AbH6kY
         /BHFmqDciQ6Se2TVNBe6lcznP4dLrXDGW3rbKQpVVFZdRolYaGB1+pfMHJfmw8AKLLN/
         amRUB8QOC+Mv2nYcep4/jpcI0hRNJ8oKzYXhsiqjc2/uUK46aa0Jjmy6AWkQ64jCn5Wz
         ojXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hVZrf3epbAv/1DLgRQwUpz3sxY1xMLc/HPIew98E5vM=;
        b=ZL7c3yEH5HXLWcOf2YhGglp8gclXpp5w3qgTbZiHGyoMSi1HEHzK14cxFD5+T2U0c9
         ZHp+7ut1PClHFXQb3nxv1Fq+HWCAu3fYtWB2liRR9rwJZ04dz8CP+iPMOgk8KI/0UYAk
         Di0gzk6ZBFPY8QFkPAFj4Jo7bJTPzbZcXXCmuBc1LdsLMWUhMphfvMxcjAPnC/GmDxEG
         Ob9z6sQMnC35MF7jDXJlSAb1uGMqthRfC4T15qSVATM9ho+mu6z4uG2oHSbnJ9nMxf9x
         ruM5Qmi2klQw+GKwaFd15dhSc0DPvRA60tg0/aPPusAf1/cTFgOPwcuvzb9gaE7m18vZ
         0wqg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530M6gXOKghcHqB1W9wMIpFl4ww3zC8A6+PTGSeRast0wXF7tbGF
	smgRZv5FxOilHxO+JnHR01U=
X-Google-Smtp-Source: ABdhPJz6F45TDpEc8AYZ0YB/ZD77W5YxQkxt4aoM82bogw1F9lZoEeztVj4z7v8OVXBBcCyH/q+mkA==
X-Received: by 2002:a05:6602:152:: with SMTP id v18mr16107769iot.187.1607705780038;
        Fri, 11 Dec 2020 08:56:20 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:1048:: with SMTP id p8ls2354770ilj.11.gmail; Fri,
 11 Dec 2020 08:56:19 -0800 (PST)
X-Received: by 2002:a92:495b:: with SMTP id w88mr16587745ila.196.1607705779603;
        Fri, 11 Dec 2020 08:56:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607705779; cv=none;
        d=google.com; s=arc-20160816;
        b=0SZeG/2GMWsjFOkX84TMjKJBlfSPKChkWXiSCYhWZNZcBzjpg6JS3dCmp/6MgkDSxD
         H5meIbPy1QMPLHwHHyIH0M6xUt3Dggj+4R4Sl57HGB+bup4N6iCKrXOJwd1AAoAFngQG
         wYR7iv0D7peLAYDOAXdvKJL+UybKHWaEmQ+BExtEiSsq/vOH2xi8lsTmgFNkUctwmNyM
         qHDRjD69uwaWRLIC+EXXO2mRXShPXfjvubzMs3wnaCedZ1qIuRM2Ixny8ZCXDdrUlxIx
         aXp2fksXNB9FcmvFdm4Uvj05dyMyXchDh+7pZmmn0rNxV5woa4muCNSucTeZh1IBuy1m
         RwYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=eSR3RpaKJTewrWUo+VzIXSFYDjjMwhoSf1itRat2Cc4=;
        b=AAA45QhGx2Pok3r9jdyukDjAQc2baRg/sbKxQshwJOMLxNKZ+mVJQ6j8WR1Ty5Zux9
         trYVvNgPOYGj8DO11fp2OCjI3toJeS5iCPNPMbnpUhV7ALz9XHA9kVx3OKrDuE46Rq+I
         tYdfL+0tnNdZVcih1LX2ZZ6uUwnOlbVo4M/RQinVtdD6a+BilBEWsaRQYt/+dl5Jt+sE
         JBa6g7LlMVknRb62dXqwah79lr/8gN18fpPfsbMCNKvbhhAi5eOV5i61YNeWeJd1k8LW
         VK6yDFeCErSymcMCtQuWJBUdfcCpdHGqeJbYz11o/Jq/1ifAvEP0CB/Sxn7rcgHYvsMZ
         Y8wA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of sakari.ailus@linux.intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=sakari.ailus@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga18.intel.com (mga18.intel.com. [134.134.136.126])
        by gmr-mx.google.com with ESMTPS id j4si705603ilr.2.2020.12.11.08.56.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Dec 2020 08:56:19 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of sakari.ailus@linux.intel.com designates 134.134.136.126 as permitted sender) client-ip=134.134.136.126;
IronPort-SDR: AIJV4l9Jl1wxAzeMRhUGf0yjW+edPUKOdkUVc1dJ2+F00ZrthzOhUkgHAwNapyZ/A5Cj7Wg2zG
 WpYTEkYolyMQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9832"; a="162218507"
X-IronPort-AV: E=Sophos;i="5.78,411,1599548400"; 
   d="scan'208";a="162218507"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Dec 2020 08:56:18 -0800
IronPort-SDR: jhUNGyw/A2QaJXoGHWr2U10B/0JdxbtNLtfRq9Pvnc+Zzfir4kYk8ksp+y3ps8vLwhuF0Beuic
 xz9YRDaFYYiA==
X-IronPort-AV: E=Sophos;i="5.78,411,1599548400"; 
   d="scan'208";a="334177371"
Received: from paasikivi.fi.intel.com ([10.237.72.42])
  by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Dec 2020 08:56:16 -0800
Received: by paasikivi.fi.intel.com (Postfix, from userid 1000)
	id 3818420473; Fri, 11 Dec 2020 18:56:14 +0200 (EET)
Date: Fri, 11 Dec 2020 18:56:14 +0200
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	linux-media@vger.kernel.org
Subject: Re: drivers/media/pci/intel/ipu3/ipu3-cio2.c:163:56: warning:
 implicit conversion from 'unsigned long' to 'u16' (aka 'unsigned short')
 changes value from 131072 to 0
Message-ID: <20201211165614.GC26370@paasikivi.fi.intel.com>
References: <202011211600.bZyprrVg-lkp@intel.com>
 <20201123104018.GX4077@smile.fi.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201123104018.GX4077@smile.fi.intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: sakari.ailus@linux.intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of sakari.ailus@linux.intel.com
 designates 134.134.136.126 as permitted sender) smtp.mailfrom=sakari.ailus@linux.intel.com;
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

Hi Andy,

On Mon, Nov 23, 2020 at 12:40:18PM +0200, Andy Shevchenko wrote:
> On Sat, Nov 21, 2020 at 04:23:05PM +0800, kernel test robot wrote:
> > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
> > head:   27bba9c532a8d21050b94224ffd310ad0058c353
> > commit: 7b285f41f7376dc37e7fad1e803995fd39f42848 media: ipu3-cio2: Introduce CIO2_LOP_ENTRIES constant
> > date:   2 months ago
> > config: arm64-randconfig-r031-20201121 (attached as .config)
> > compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project bec968cbb367dd03439c89c1d4ef968ef662d7c0)
> > reproduce (this is a W=1 build):
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # install arm64 cross compiling tool for clang build
> >         # apt-get install binutils-aarch64-linux-gnu
> >         # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=7b285f41f7376dc37e7fad1e803995fd39f42848
> >         git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
> >         git fetch --no-tags linus master
> >         git checkout 7b285f41f7376dc37e7fad1e803995fd39f42848
> >         # save the attached .config to linux build tree
> >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm64 
> > 
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kernel test robot <lkp@intel.com>
> > 
> > All warnings (new ones prefixed by >>):
> > 
> > >> drivers/media/pci/intel/ipu3/ipu3-cio2.c:163:56: warning: implicit conversion from 'unsigned long' to 'u16' (aka 'unsigned short') changes value from 131072 to 0 [-Wconstant-conversion]
> >            entry[1].second_entry.num_of_pages = CIO2_LOP_ENTRIES * CIO2_MAX_LOPS;
> >                                               ~ ~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~
> >    1 warning generated.
> 
> Okay, now we have an interesting case. The IP is quite unlikely be used on
> ARM64, but my patches made the clear picture about use of PAGE_SIZE here.
> 
> So, I see at least the following options to mitigate the above, i.e.:
>  1/ reduce driver scope to X86
>  2/ fix the variables to be wider type to be able to hold PAGE_SIZE > 4k
>  3/ switch to custom PAGE_SIZE / _SHIFT / _MASK and accompanying macros
> 
> And I still consider 3/ is silly move because as we see the driver was
> never assumed to work with big page sizes (besides unsigned short type
> here, PAGE_SHIFT and PAGE_MASK in the original code was as is and on ARM64
> they compiled to 0 values w/o warnings, effectively make the driver
> improperly functioning anyway).

Apologies for the late answer.

I think I'd favour the first option. It's not really useful to be able to
compile this elsewhere; as such the driver doesn't do anything special that
would make it prone to breakage through changes elsewhere.

Would you like to send a patch? :-)

-- 
Kind regards,

Sakari Ailus

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201211165614.GC26370%40paasikivi.fi.intel.com.
