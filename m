Return-Path: <clang-built-linux+bncBDAZZCVNSYPBBC5CUT5QKGQESBPQZTY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3c.google.com (mail-vk1-xa3c.google.com [IPv6:2607:f8b0:4864:20::a3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C5552733C6
	for <lists+clang-built-linux@lfdr.de>; Mon, 21 Sep 2020 22:46:04 +0200 (CEST)
Received: by mail-vk1-xa3c.google.com with SMTP id e82sf2532894vke.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 21 Sep 2020 13:46:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600721163; cv=pass;
        d=google.com; s=arc-20160816;
        b=ebvsAvApYGN5x0CHuBzzNbVt7oRMbH/B9BzcU09hsq6VauQdb3kiuaiekvaxWItstS
         spQQpElLBHKC+e8aRlvHvgI77xUoRaNqXOQZndhBrMRKlUS4T+oFa+WkJ4mqfJZXHkeK
         GMRZTdCQBNtRBk8zpg3reAFR1g0gEWJxSj+Up1SE7tRqdCiTyllHZ3s4Svc6W9tjhjbw
         jE8qZYs9+lzLsEIxn+CC5XBSNwNC6hUk4a6EnI4D7Jt3nZ0Z1trpQHiLvspQJiI+3oT3
         /2ZIrz5XMEngdqAWbV7w6Ywk7Kn+Ll3bQvZL96/hCVIn1BI8ChuYYihdqRCwC1a6YjP1
         45Ag==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=0+sXh3MbFxtPi7+bLwrSvVIUWaYOhY4vk8Lcp5CEanA=;
        b=Qvx2I6Tq6a4QChHcJmw49gjDStPAzBknloT4G2l2mly7dCOsc7W2TdqBWW931U5z9+
         n60HLZwv9AYj/PyFrviFeOYJYXSjyBpWQY/y04xo7IJoQ2bxFcD/0L7QwE2O2DvAog6Y
         Wt8oJP45WQGKl8+b2dJnYizQZLHCtr2G/8BxogSDeU6jJshlmTrhh1Sf/u2H550SFlLW
         YZie3p6XjrE8eorNj9H0AFoBapxFfylEb/xexnhu+2fy//xWImQpkyMK8mmflf0u1Cvq
         Zb9d7J5fQU2Pjgs05rU7XIrQ3sz1AwMlS2M8bGnJD7t98J0j6rpwp5VTsa83d/p9Ep+j
         My4g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=2EmwJzFS;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0+sXh3MbFxtPi7+bLwrSvVIUWaYOhY4vk8Lcp5CEanA=;
        b=rgB5yKYS9xps9xCVOmF1+OVjYXq57OsErELZU2U7ocls45FDk7eYglOcUhnQMM0fwc
         qS93AheGWbJLTg3AkVWf9kWbPD571s7faESg190ke8v3zY7Kouobmtu+Ex8ni42dgmUu
         F7zyV45WfWFvGvbt/wMsEBXpwLpPVey16LX303bMlNYv1CFTLn5y39qoURjg4yUktFpg
         P24niIltM/oVKAGE6iK3q6cR3EsTH31v0NC0RYyqE8bn8bf5Lhpmk60s6MV8f3qT2Bah
         iCLIbb6QUmGxXSrknxRSoI9zM/pw66XH++FvPA7tvf3TkMAjLhZY+FIEemfHKvDOKP1u
         iQ/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=0+sXh3MbFxtPi7+bLwrSvVIUWaYOhY4vk8Lcp5CEanA=;
        b=DsvFOQQRtn0PvGro7fKQlxqniWNPp8PkM0hsJFG4cYfVYZ5KeCqTNGL9giqM2t9MSo
         m4iB7a61rk6fb93+vATi3ifxg/EYJ07BThnQrwTTo9T1T/ScLDSVOUuQMqpMIj0c11FH
         tql6SQWN5LDQvucoDMv3+j4CYGr0inrduf7EuRF5rVd0yI7/6cWUwXLepwycWCM+Dayx
         I3xzcvm693d9rVugKsG1iZeqVGwVQlkfWkXZpRjejEJpl0WmDAhgnVwpV+9tFWH7+GU/
         rAREEG9Kmh1gku+0p/glTvri7rp0NqGbdMc+0UPtORH+xrOIzL64mb1AzNOGAfL8BzZf
         Fn2A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530xePtNxwlWHobkLI3ENOtkVFjeGUhPLDeQbOMor8eB2nPoW3u2
	RqHcfUSARm8mG2cIT01xZhQ=
X-Google-Smtp-Source: ABdhPJxomETOtWmhrKMSRJ7qAaNPF4kC1rTgAorxcDqAIWD58EfFQ4iKtkTCNst786rbhIzyy2oipg==
X-Received: by 2002:a67:d896:: with SMTP id f22mr1354570vsj.18.1600721163454;
        Mon, 21 Sep 2020 13:46:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:a2ca:: with SMTP id l193ls704584vke.6.gmail; Mon, 21 Sep
 2020 13:46:02 -0700 (PDT)
X-Received: by 2002:ac5:c297:: with SMTP id h23mr1462264vkk.21.1600721162881;
        Mon, 21 Sep 2020 13:46:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600721162; cv=none;
        d=google.com; s=arc-20160816;
        b=zZJ+jLq9ua+uHMvxAh1o4KxwY1d4mNO5l6H7qLb7OKemheyt/YTvcD05Ixy7lB4cVd
         Oj6PKqf8KKS9pcHb/iY4mJYoY+Q7uLnSgAeqpvtlPZOB+XGBjYXCnZXEJU+6iP54tn4P
         7goAgR1qeG0mfa8Gy3Vxtd+ltiaeriA77NWxBVvffUhVMeQl1X9he5lpRLzUNsZIilJ8
         wyN0bd7SVwLMoL1XNYvsng7nc0SGX1hkuhwcK3bEu+Z6QR1EMsCoPiZscgZ1nXTSD+4A
         t0f+o6RgiXCtfQtfjvcTco5z87nCa/hZ6Ee5zdro7tcMYRBUEWhvjAUH92Qkvk/88JWj
         B6eQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=JsUZZxUFfu+/IdRGL5A1lX83UsFwtA3AzoQ+588qQuI=;
        b=c0KjtLlpOEKDPHCJIeXlr22xl8xKnsssB4oW/kUTwmRB2WAdtMH19LtbL6X6vdajbj
         oqTsRad1xklSyYUevEicwOXfDJ/VBRguP9Cs/FY1DVQwh7GhR4Xg20f1OO88Zhyd/kaV
         Ge5LMGA2dUEdcwCgbqaL9fWG1t8urpGhp2tGt+eBguLNIv0vRlIDTLBKf1Rd9WdjwvG6
         W+V6RrfoDCTrFzzRb4vkjtci345Gx4EtanpgdQEoOWAA5eZpkURVyKTOirX043/LGved
         ZolmOmH4gZb/imQ/quT8vI8rBiR3Ylz2mm9n3AdVYsgRHhozN9Ap/7TYtN/Irpx4BlvF
         +AwA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=2EmwJzFS;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id p129si761849vkg.3.2020.09.21.13.46.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 21 Sep 2020 13:46:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id D37C221BE5;
	Mon, 21 Sep 2020 20:45:59 +0000 (UTC)
Date: Mon, 21 Sep 2020 21:45:57 +0100
From: Will Deacon <will@kernel.org>
To: kernel test robot <lkp@intel.com>
Cc: Yu Kuai <yukuai3@huawei.com>, robdclark@gmail.com, joro@8bytes.org,
	kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	iommu@lists.linux-foundation.org, linux-arm-msm@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	yi.zhang@huawei.com
Subject: Re: [PATCH] iommu/qcom: add missing put_device() call in
 qcom_iommu_of_xlate()
Message-ID: <20200921204556.GB3811@willie-the-truck>
References: <20200918011357.909335-1-yukuai3@huawei.com>
 <202009220340.bJfsaeQn%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202009220340.bJfsaeQn%lkp@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=2EmwJzFS;       spf=pass
 (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=will@kernel.org;       dmarc=pass (p=NONE sp=NONE
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

On Tue, Sep 22, 2020 at 03:13:53AM +0800, kernel test robot wrote:
> Thank you for the patch! Perhaps something to improve:
> 
> [auto build test WARNING on iommu/next]
> [also build test WARNING on linus/master v5.9-rc6 next-20200921]
> [cannot apply to robclark/msm-next]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use '--base' as documented in
> https://git-scm.com/docs/git-format-patch]
> 
> url:    https://github.com/0day-ci/linux/commits/Yu-Kuai/iommu-qcom-add-missing-put_device-call-in-qcom_iommu_of_xlate/20200918-091341
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/joro/iommu.git next
> config: arm64-randconfig-r023-20200920 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 4e8c028158b56d9c2142a62464e8e0686bde3584)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install arm64 cross compiling tool for clang build
>         # apt-get install binutils-aarch64-linux-gnu
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm64 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
> >> drivers/iommu/arm/arm-smmu/qcom_iommu.c:601:4: warning: misleading indentation; statement is not part of the previous 'if' [-Wmisleading-indentation]
>                            return -EINVAL;
>                            ^
>    drivers/iommu/arm/arm-smmu/qcom_iommu.c:599:3: note: previous statement is here
>                    if (WARN_ON(qcom_iommu != dev_iommu_priv_get(dev)))

Oh, this looks like a nasty bug. Seems we're missing some braces.

Will

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200921204556.GB3811%40willie-the-truck.
