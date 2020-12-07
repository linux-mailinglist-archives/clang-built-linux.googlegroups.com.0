Return-Path: <clang-built-linux+bncBCRIZROPVQPBB57SW77AKGQENSY6MBY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id AE31F2D0D3F
	for <lists+clang-built-linux@lfdr.de>; Mon,  7 Dec 2020 10:44:24 +0100 (CET)
Received: by mail-pg1-x53a.google.com with SMTP id l7sf8313046pgq.16
        for <lists+clang-built-linux@lfdr.de>; Mon, 07 Dec 2020 01:44:24 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607334263; cv=pass;
        d=google.com; s=arc-20160816;
        b=0+R9tVT/MLGZS2NPrdaHahBtf9KXQA1HVX/JEDAkuwC8nUcDibn2+Yqrcd+a71zJNd
         ABpaKE6FK0EDmYf0LhUoUdCdyHSxdTDGD6vjn6ly8jzHb4NzBcao46gC30wtFG9HDFRl
         M3edKDhoH623f6kwyYvhYYCjGamCWA9D7LCXBoZBo03N71TTnXPTlHz6ujnK9dQebC0A
         YU3RVz0ThayhHi+JWD6oID6/SU99sCgVJkeqb/Jd4KwzxPBwPUoOnlUCBstcBGffu5ya
         CnfRg5+TlhjHa40lQhODINpC8ZcJNIXFM7UjeN8cZqFuxfDHrcrr5CLcSGUCk7008TQ3
         DZ7A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=uOAJii5Io0bZLOmcJB/O6LDRenYsEXnFPEIm+7h1dE4=;
        b=uOxTWIrraFY2BHIvbrl6lYNQjI6mflzXTv905ykqTczJkNqdYc9LaoHa6HRX5Snju0
         IFDIczCYtZFuNywzA3H0DSgYrZnkfLGA9KCCjgQsFK7Dhbq1JoS0tLa1GXnJwR5T2fES
         tRrSSOgXory09v00zHGKY12N+9R87YnndQRvcQ69JWLCLeMHy16edoTPSwPD+R26T8ih
         IpalQfB2cYj8vgeipVpJC9M3dWgXjNUjBuC1r6VoSeh3fK5JQ95SYl22R/ZAE6ZnRmFo
         6AhBj/scxKctruV4TuwADYkUUtZ7zN3JhCHM3M+/1WNA2C4t3K/RhLK78Hqt942/bR01
         h7rA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=JAH9aIfh;
       spf=pass (google.com: domain of viresh.kumar@linaro.org designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=viresh.kumar@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=uOAJii5Io0bZLOmcJB/O6LDRenYsEXnFPEIm+7h1dE4=;
        b=GtYvy2BH7tGaeyGNP1PFEL9XnnS5CyZX1nPx6HHkpESK/cRl8k2vTjnrV5eqEzipKd
         iuIpiD562S8B1XUpem8VPTMsJHNxO/OReTtAF60DGwaE9GmUhtzUII3M8J/Fc3uIQH34
         hGa9a+wi0i49dFgghgb6QbrRv+rRp8F6xzsj2ur1CkJ9Dx/wSHgUpx1cPLy9L6I2Quh+
         +GkaseXVGGJ5OsDGlbdU1PHeOc5Ot/XzwluXCni5qD/AzQqA+RB3IskrYUKcNDG9/kzN
         IExSbJ7hGJh4yzjpNoiQk+X53USp8SsAe4BhwLlD7kQuKPsRBXSVhsKeKDiNIt5MH2+t
         sSDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=uOAJii5Io0bZLOmcJB/O6LDRenYsEXnFPEIm+7h1dE4=;
        b=E0a8wRbwlhifvwT2Nr6MZXG6pCv2LdarVO7+EMh+KQtZ5lbchgqolEEbwoLDhIJExV
         EwN9ZG0hp90DM8xRFzuj2qaeaN2Drd8n+u+fwXc6x8SHCZOYLYMIkMvnMpUGFVtvpve9
         rBy30F1evT08LOvNVTMp9QYnFoZNCXyUsRWsAgUGbCYxjw67S7DFCIoAMpO/vLYKnCtP
         HQt28KcD0L99Bzq4Q5JytvyF+xi6S6ySBS8ywEqIdptxBmtfnS8roUCQ/qUp7tAN/BQ2
         FhVCMLvdUseW12lMGV4/RylC3sz9utXLCcM3wya5nHdUPlz9anifSL5deH9Jlfk+kbuQ
         VlOQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532UDI/C+K4yKyxMAMChqdElYrIWhr0Y0Pg6Kmo+rxH1UBlPH4K2
	OoOYkIjCGt8gFfsoaxEqYRk=
X-Google-Smtp-Source: ABdhPJx2CCgqNA2AgSxnzO+kQX3WntADkGJv515OyBA9o5zDI4NOAPMCklM4dY0xJtISlX+1vNUoNw==
X-Received: by 2002:a05:6a00:9d:b029:18c:8dac:4a96 with SMTP id c29-20020a056a00009db029018c8dac4a96mr15201975pfj.22.1607334263395;
        Mon, 07 Dec 2020 01:44:23 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:ab83:: with SMTP id f3ls2027247plr.9.gmail; Mon, 07
 Dec 2020 01:44:22 -0800 (PST)
X-Received: by 2002:a17:902:900c:b029:da:b7a3:d83a with SMTP id a12-20020a170902900cb02900dab7a3d83amr14909004plp.57.1607334262831;
        Mon, 07 Dec 2020 01:44:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607334262; cv=none;
        d=google.com; s=arc-20160816;
        b=gN2dNYDQXCEdLJaSHyBEn+geAZh5JYDM89VVL7H57gRLN/LerjFzAlJunvPVOPnV4b
         HMG+1yIN+Fgp/0OYq5tFzl7NpSezLwOaOleYt1Y+dV6/HIVP1PzlpXfeNryQUYdwcSfK
         SKxSxAEfdYrMWQurJOIE+ZC20o85LhXZEGWg1QIdrRy4SYiwNhDXxQfpyTOp8nzB8MgJ
         mtpzDtOstZnehlPFjXqpKHiU1FzvE2CxFW9ysBDfM2xdqCfdVlak7j10qYGvqp7qDRuO
         8h6gyqkA37PATM9NIGJ2TgNaVkXrnkyUBhF1VbLs0NEQIspBJb7fYyljveBRNP/1H33M
         EFNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=L1gFTYejEk87qbjGy1bTaXLw1DljCnIUTkOXuqXk3yw=;
        b=b05eh/qnLD5XiNkERPoN+olHQbrJuLvbZI3cshGeDMbBBb9Gn05CHDuREjLu6y4ym+
         9oPQqTnVRS71CmgnTzQWxJ6T+dz2C+qVLC/QXR3GcqY4QtfMcxjpVJTxGbaAM56j2tM2
         dWQBLStZ2E6ASxTBvYcO/2IAvTNlcjEPturLcLpMf5W0kL7O2mxvGcTPQ9AdORjSZ5md
         cg4kJZ45Y0BRgZc+PWPzqPv791QTPLsNWPN/aOeKsj4b3ENvo1AEw3fmWY1FytljLJsE
         B+RziYy6uqjrm3UHWfE8eazXTgsFXFw1b9ZZbFZB9q79VIZtwkXfQydtPTOhn9QUPqWH
         Ejdw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=JAH9aIfh;
       spf=pass (google.com: domain of viresh.kumar@linaro.org designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=viresh.kumar@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id y68si136361pfy.0.2020.12.07.01.44.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Dec 2020 01:44:22 -0800 (PST)
Received-SPF: pass (google.com: domain of viresh.kumar@linaro.org designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id f9so8708462pfc.11
        for <clang-built-linux@googlegroups.com>; Mon, 07 Dec 2020 01:44:22 -0800 (PST)
X-Received: by 2002:a65:414d:: with SMTP id x13mr17547292pgp.226.1607334262448;
        Mon, 07 Dec 2020 01:44:22 -0800 (PST)
Received: from localhost ([122.172.136.109])
        by smtp.gmail.com with ESMTPSA id j8sm987226pji.1.2020.12.07.01.44.21
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 07 Dec 2020 01:44:21 -0800 (PST)
Date: Mon, 7 Dec 2020 15:14:19 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH V4 3/3] thermal: cpufreq_cooling: Reuse sched_cpu_util()
 for SMP platforms
Message-ID: <20201207094419.lakxblzsono3nqpf@vireshk-i7>
References: <c0d7c796be7df6ac0102d8c2701fc6b541d2ff7d.1606198885.git.viresh.kumar@linaro.org>
 <202012030227.bGtZchYO-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202012030227.bGtZchYO-lkp@intel.com>
User-Agent: NeoMutt/20180716-391-311a52
X-Original-Sender: viresh.kumar@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=JAH9aIfh;       spf=pass
 (google.com: domain of viresh.kumar@linaro.org designates 2607:f8b0:4864:20::442
 as permitted sender) smtp.mailfrom=viresh.kumar@linaro.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

On 03-12-20, 02:39, kernel test robot wrote:
> Hi Viresh,
> 
> I love your patch! Yet something to improve:
> 
> [auto build test ERROR on 3650b228f83adda7e5ee532e2b90429c03f7b9ec]
> 
> url:    https://github.com/0day-ci/linux/commits/Viresh-Kumar/cpufreq_cooling-Get-effective-CPU-utilization-from-scheduler/20201124-143027
> base:    3650b228f83adda7e5ee532e2b90429c03f7b9ec
> config: powerpc64-randconfig-r025-20201202 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 2671fccf0381769276ca8246ec0499adcb9b0355)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install powerpc64 cross compiling tool for clang build
>         # apt-get install binutils-powerpc64-linux-gnu
>         # https://github.com/0day-ci/linux/commit/17f0c7f4372070206925c3a10ec0e7a09d03615e
>         git remote add linux-review https://github.com/0day-ci/linux
>         git fetch --no-tags linux-review Viresh-Kumar/cpufreq_cooling-Get-effective-CPU-utilization-from-scheduler/20201124-143027
>         git checkout 17f0c7f4372070206925c3a10ec0e7a09d03615e
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc64 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All errors (new ones prefixed by >>):
> 
> >> drivers/thermal/cpufreq_cooling.c:562:8: error: implicit declaration of function 'allocate_idle_time' [-Werror,-Wimplicit-function-declaration]
>            ret = allocate_idle_time(cpufreq_cdev);
>                  ^
> >> drivers/thermal/cpufreq_cooling.c:624:2: error: implicit declaration of function 'free_idle_time' [-Werror,-Wimplicit-function-declaration]
>            free_idle_time(cpufreq_cdev);
>            ^
>    drivers/thermal/cpufreq_cooling.c:717:2: error: implicit declaration of function 'free_idle_time' [-Werror,-Wimplicit-function-declaration]
>            free_idle_time(cpufreq_cdev);
>            ^
>    3 errors generated.
> 
> vim +/allocate_idle_time +562 drivers/thermal/cpufreq_cooling.c

I am not sure why this should happen here, I don't see any such errors
on my side. Can someone please have another look ?

-- 
viresh

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201207094419.lakxblzsono3nqpf%40vireshk-i7.
