Return-Path: <clang-built-linux+bncBCRIZROPVQPBB4NP42BAMGQE2K7XJXA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3c.google.com (mail-vk1-xa3c.google.com [IPv6:2607:f8b0:4864:20::a3c])
	by mail.lfdr.de (Postfix) with ESMTPS id C2DD2345899
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Mar 2021 08:25:38 +0100 (CET)
Received: by mail-vk1-xa3c.google.com with SMTP id a188sf173066vke.17
        for <lists+clang-built-linux@lfdr.de>; Tue, 23 Mar 2021 00:25:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616484337; cv=pass;
        d=google.com; s=arc-20160816;
        b=thIBGd31E1ZBRSa14SS4DgdNZRrgXf2r+4e1gVKPWEVxV+wN566LKaOfLzJlvBIlLw
         F2Fa6y5u2QNH4cuAUAlwX3oONV7hrXYb3vVzQuFcT/dFSB5QFnYPju0/GOhuICjmA7FP
         DTYb9xLQOin2SJ+875csiSiSllJ7Ti9doWzZOEjsaksWrhiv07S1czX2uzhHTp+/CtEa
         MGG4Vtv0sdCxhU+Dq+LZcjYUtTJAW4rfuwSwPnzXk9/ta4AzfRi32A+uzGgHL5uuC6EE
         phyaCq8hLuxYMY4PMHRfvzSRyPHvVS0P5crQZrb7AnRFB3FMXO+41pTTQLxeUGAE1Gwv
         LmOQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=hA6HIcK3EKUDZiA3BL9rpG7h1ecbrdlONZ14isAiMmk=;
        b=F+TwVI59PuZ3//B2UeurNaMU/j+BDt4hn8Ov6jn86ULU/ONZZjTCaHFzbphLlgiJ1s
         ELUwxn/SSfngCLRB366c7hvDpJKGw1B8WLsYbOJk3vrpF440YnPh/MiUAzUwRp8aPKKl
         akRuXjtbLqA9o+GeuYLeHmrjsMeGiygsxXkyfYse24AouE4NiEcI/c8AE4VZzTDRTjSm
         j7GA1LFjwTgROoEvawMOE4ViYCfwu2uBV+qaMVKYcXCGWMgURnd7nmY3aNG2DZWJFZKc
         7Of89Q0ZuX5UzRXDre0IxAdsT2y2U6zyJqtciP2Cqicds4Qbou6//UI+XwALk3SNcBD7
         qHCg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=CWLjVZFE;
       spf=pass (google.com: domain of viresh.kumar@linaro.org designates 2607:f8b0:4864:20::42f as permitted sender) smtp.mailfrom=viresh.kumar@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=hA6HIcK3EKUDZiA3BL9rpG7h1ecbrdlONZ14isAiMmk=;
        b=DOOz2HEWxe3GajEM00FyiACkhc35fqo/PpamIZgd2iwNlcUlxr9ffvN5ja3olYpEJB
         WxEx4pIapFKizK5zqbq9I1fV02fmSiRpPEGoEqena/RuBxSl5x2ShSM3qrP5oW0kpOVl
         7eb7qi7G4sN7TxUcB/PUfpyVxfPRNrN0z6wrpgyjVT6WKAt//1bl9umMl/N1zrMVTWjF
         7iG4ybBm4lc1jogboC6JElV2TiNQJNXUnFIvw0vRDuJzSP0BTwaxzM9HwgUN1vOSJNsw
         liP4+bAPwlNPVlcBAMvF8hhopaQa4qDWe1Cife0oT5kCSWLB7qFdjA8AATRq1S4h1a7n
         HXqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=hA6HIcK3EKUDZiA3BL9rpG7h1ecbrdlONZ14isAiMmk=;
        b=IXy+MVfoN7J8ilbYL/oWbOK4Wq9GH67jRsBCpE3K3mXhIoe7oC6puGpBKMg0E5Mv4c
         CHgjykHpV7hLUz1Uu9GTF5wW4seJ6ntjptQRxyo/8YPEi3Ez2NZMPZ+4YWJGHxt/cDHj
         +pt1JHk7pCOJtykZYALOf9obCuBMKiN7DqxT2qDhZ1VgQizLSgYF8YZxYVCcySPuUH/n
         QzKY1fOaLYIVzd+JF8Yb708x/PMPtoMUYDda8V9WX398qZIQk3lG22CXK5JkLmEFMC9s
         FkfaZdSrTvbPc8+uxwFIp0si5mI8fLSV0+ohKybEDU1+Su6gNsyw36G138ax4P80VfYj
         V+jw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532Ypo5iQKb9uZYESib20m2Jnr9ZMTS3P39ZkyZBV56SxU0Z0tq6
	fLujwcvaAuaSxq7QTwTPbnc=
X-Google-Smtp-Source: ABdhPJwKdW5yxNSSTTfqhFM69U3PY5r9oomvB+JcTUFoMyFXaRdG9yhuvcohyGETo8AYNgzyPreQTQ==
X-Received: by 2002:a67:2dc1:: with SMTP id t184mr2408098vst.56.1616484337829;
        Tue, 23 Mar 2021 00:25:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:525:: with SMTP id m5ls1776360vsa.3.gmail; Tue, 23
 Mar 2021 00:25:37 -0700 (PDT)
X-Received: by 2002:a67:cb05:: with SMTP id b5mr2338620vsl.49.1616484337383;
        Tue, 23 Mar 2021 00:25:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616484337; cv=none;
        d=google.com; s=arc-20160816;
        b=LRIFVaNbZWk/5cK/pH/ae8JIvhakAME2b30fnzZnC0BCQH63B53pslbWfV/Ke5hAGQ
         wA3GwJfz80VMdOBDz1wt+B1/kf4+DH7Nsf+zwyBfCrrCG9BK4vRBWBkiCeckq3qbZtcs
         msCXOYRaNOjtK2EBdW5rXg8LUYNxqsxNXHnShsVYyA8lhOvFTnw3jqMyvOisEzPFzjEP
         F8f4t5+aMqHZgESw+VKR32YbCXGSCpKGEIWJCR0fQFHUYfQ6dL9+u/DYHNN5jBOqzHZj
         PYvcH3V9+2eUa2kgmvBtrEdc0MFMqnI2kuEmjmxPYn16WOHeI59Uz9LT0TDaRMnk7YIU
         yMeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=tUyNdn8QB3VLpF2CNzu3DTFDZsp8jl7Ah1JuY2OPmzs=;
        b=ksFHvj85eneeROS8ziCVK22DdkPMO2SujlWcdkmx2ku4vaun5q0opzAik3G2siuoT7
         /BVBRUn0RoC9Izvy66hKPu026z8MSt4F+jHfeouRCzeWyHolqB3zubfJpTds0UpxaqC+
         PxSvOy7IAk2mNwB2Ce03CRZ7Mb3MuJfdeN2JPJIC5gURXSDtjPmPlZIqxccXeXd44e42
         vfJP1lLjp1pLIt6JXmYLU0yAaDzqQU9HAmdEofthBMr3SgXhd6r8VplMkWXEmWvbl9Is
         +mlzNhcScKQ8LGA5+KCm3jpPilQjMIjdzDgy0oTgTOZBpoz/xw+sJHSYUbQpARn8d5Pw
         93ug==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=CWLjVZFE;
       spf=pass (google.com: domain of viresh.kumar@linaro.org designates 2607:f8b0:4864:20::42f as permitted sender) smtp.mailfrom=viresh.kumar@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-pf1-x42f.google.com (mail-pf1-x42f.google.com. [2607:f8b0:4864:20::42f])
        by gmr-mx.google.com with ESMTPS id i8si781985vko.4.2021.03.23.00.25.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Mar 2021 00:25:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of viresh.kumar@linaro.org designates 2607:f8b0:4864:20::42f as permitted sender) client-ip=2607:f8b0:4864:20::42f;
Received: by mail-pf1-x42f.google.com with SMTP id h3so13374252pfr.12
        for <clang-built-linux@googlegroups.com>; Tue, 23 Mar 2021 00:25:37 -0700 (PDT)
X-Received: by 2002:a17:902:b7c5:b029:e6:1a9f:5f55 with SMTP id v5-20020a170902b7c5b02900e61a9f5f55mr3854418plz.57.1616484336894;
        Tue, 23 Mar 2021 00:25:36 -0700 (PDT)
Received: from localhost ([122.172.6.13])
        by smtp.gmail.com with ESMTPSA id j20sm1523915pjn.27.2021.03.23.00.25.36
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Mar 2021 00:25:36 -0700 (PDT)
Date: Tue, 23 Mar 2021 12:55:34 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org
Subject: Re: drivers/opp/of.c:959:12: warning: stack frame size of 1056 bytes
 in function '_of_add_table_indexed'
Message-ID: <20210323072534.sif6hfei4zx5tzn3@vireshk-i7>
References: <202103231522.N0bCxZ97-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202103231522.N0bCxZ97-lkp@intel.com>
User-Agent: NeoMutt/20180716-391-311a52
X-Original-Sender: viresh.kumar@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=CWLjVZFE;       spf=pass
 (google.com: domain of viresh.kumar@linaro.org designates 2607:f8b0:4864:20::42f
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

On 23-03-21, 15:23, kernel test robot wrote:
> Hi Viresh,
> 
> FYI, the error/warning still remains.
> 
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
> head:   84196390620ac0e5070ae36af84c137c6216a7dc
> commit: 406e47652161d4f0d9bc4cd6237b36c51497ec75 opp: Create _of_add_table_indexed() to reduce code duplication
> date:   7 weeks ago
> config: powerpc64-randconfig-r023-20210323 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 14696baaf4c43fe53f738bc292bbe169eed93d5d)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install powerpc64 cross compiling tool for clang build
>         # apt-get install binutils-powerpc64-linux-gnu
>         # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=406e47652161d4f0d9bc4cd6237b36c51497ec75
>         git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
>         git fetch --no-tags linus master
>         git checkout 406e47652161d4f0d9bc4cd6237b36c51497ec75
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc64 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
> >> drivers/opp/of.c:959:12: warning: stack frame size of 1056 bytes in function '_of_add_table_indexed' [-Wframe-larger-than=]
>    static int _of_add_table_indexed(struct device *dev, int index)
>               ^
>    1 warning generated.

I have reported this on 1st march as well. Looks to be false positive.

-- 
viresh

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210323072534.sif6hfei4zx5tzn3%40vireshk-i7.
