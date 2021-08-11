Return-Path: <clang-built-linux+bncBCRIZROPVQPBBF4UZWEAMGQENK4GYFY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x838.google.com (mail-qt1-x838.google.com [IPv6:2607:f8b0:4864:20::838])
	by mail.lfdr.de (Postfix) with ESMTPS id 061863E8907
	for <lists+clang-built-linux@lfdr.de>; Wed, 11 Aug 2021 05:55:04 +0200 (CEST)
Received: by mail-qt1-x838.google.com with SMTP id 7-20020ac856070000b0290292921115ecsf646937qtr.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Aug 2021 20:55:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628654103; cv=pass;
        d=google.com; s=arc-20160816;
        b=Y06YLjxi5s0JK0AeOZc0YofbVB3scVb9d6NJ/PHS0AW8LZfqhGGllBALKh9G6IA+ns
         QSrbw8paMCg0qt2dDP9PzY00ugjzk67BDfCVByvKWngpHW50rgXwSUP460ju9Em19L4r
         h5ESIrHoZsRkUgMYcjq/E++jmY88cHrggrMv8If0Lm82rNPxRZAC/pG4hYHg5xMh2rTa
         LV+2w++e5JT6X+n4SaDL8+OZ+OoBpQxF4tY0G0AOlkiC9I2jTdxeYagvgbbRlf/FJ4Zf
         sCsT0EblrwL5+wURp1jz3LfPP977h7s18trtaByNsh/d0T9XYB7RpKJ6lJ/0N5ViSFcx
         0H+Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=wmST5N9TydtcwEBrXxLuS6tjmkpCEW3Pm0JqrXv5Sro=;
        b=Ia30qyckGjow6wvdTQfT5av4d4dAoea4+gsuowjf8hbdfShOstSvzhII4VCKAJ8U9A
         /KMUtYWlTAPh+M7ELIvtxuCNzZnAE+HLGqRLC/dSGr2ZiZSscCpD2y6sF6GMOaYOYSdG
         Z1kXaEID7wyFsnO7guRxc1gxjXixEeOm0RqwrJzYRZMnb/8M2Q/NgiwpbkCNCOW4wjkf
         fYmmByopIF4DmFngc07Gq1HW9i3I7cOJmdh49M+8sOEx+IpsKDSxzA+4TUPevoTmEUki
         GHjGIj5p1AP6YF7rmW6LiB7vp9MvJmhTOURDx3bNaX+WSucLW+4GMpVOgEPJSR8s30RS
         0XDA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=FX+01nln;
       spf=pass (google.com: domain of viresh.kumar@linaro.org designates 2607:f8b0:4864:20::633 as permitted sender) smtp.mailfrom=viresh.kumar@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wmST5N9TydtcwEBrXxLuS6tjmkpCEW3Pm0JqrXv5Sro=;
        b=ExQwozowZ1jmHWAz2sCsjEZn0zwFoZqYkcpo8Q34471KoqDCPxFnqeQI1laKrTkYRH
         fX4BnsmME13Z6MnMVZMEJviFb2yaUDJlzAZJKeqVGJGsYhSh3E5zTRQ6FdFN9ksNemVf
         CF0EPFM9W33jkpEWN/GTgWZtek+r/eTX4aKjEOWHUiq44oWDo4UeD6tSJcDCbZi3V4C8
         r8np8E46YLA1DyfeGUnSCPjeC+0BSolVV+SuFmUldMYe25McFdTpWmb9QNcwFJY4Bshm
         zL9q89hb9z3tIjX2TXxVz0YrNG+bhYeRlBSUHiRJu81iZY/Ls92tDmD8iisZnllAuh9n
         a9XQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=wmST5N9TydtcwEBrXxLuS6tjmkpCEW3Pm0JqrXv5Sro=;
        b=PmWvYx2EkhYTZ4kUvedk+5idPAtDItg2EhabSkmJiBKetT4cCT9HGMTydgVQDm58yx
         tNXNpuDW78xAgPKjVk+xHRfibFxyNWX4D19h+mIzZ/eZQnKw+OPe6dEK2cZIaSb/g7Vb
         oG3vf59sX8qfxeGrekkG8SK093/PSpI+BTdfyoZKvq+tH33UlDwwsJo+CnHc3dFB9PlC
         SZtXuCxb2LTCOb7XP1c1goBNCg5/uCTevTSr/hQ5oNomWghdKALFdAU2elxRbdjx5Y46
         oRYsjEobRZ9YvagqeK0vEB+pYj1+787ST5+HBfXR0BNTnkOoVrEOV8+NjHdpGUFw+OhR
         2OaA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530mTid6vt9MvJImwvhbUx5w5VqgqRRwYYWG7Dt0uRDTmHc6pHwR
	kPC2StQeoK57qL10cSA0VyI=
X-Google-Smtp-Source: ABdhPJxQwTgtnYVmW6sl/jhN0+3tFK2m0GUw2SGY7NNIk51XTxAX+Y2qcHGGI7ui4jCWf/LX8temZQ==
X-Received: by 2002:ac8:7f55:: with SMTP id g21mr12375756qtk.88.1628654103145;
        Tue, 10 Aug 2021 20:55:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6214:5004:: with SMTP id jo4ls203021qvb.11.gmail; Tue,
 10 Aug 2021 20:55:02 -0700 (PDT)
X-Received: by 2002:a0c:f651:: with SMTP id s17mr14253875qvm.25.1628654102558;
        Tue, 10 Aug 2021 20:55:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628654102; cv=none;
        d=google.com; s=arc-20160816;
        b=EBtxXcI/5YhNjfbfmiksKnyRo5+Pkqj0BD24cAw08+vbxUgGBYN3sYyiE2Do28C86P
         fh7okn4z+aL/kYUa89lpDh65Uub+UQIqxhw6Yt03rztqDQAAC+OXWbp1JQoQ2tOucMhI
         fINCsYvp0i4vUYy/46Z/p1x7gjOJlLGrrGKyYNNfG5g7IJSPmY2nCiclhcv0SdoFYFtW
         AclAiskFgFYSFE1K1STnPXyzSBvmwIAoQFvSOlkXsEw72nQiAdiCAfOassS8YE7zP5u7
         NjX4eY5+XIOVs8bNzq/pbXsQTWuhSbMCgWWQQRV0DOL374wGQ/2j4rcfmbCyiITUs380
         zYlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=W4/TTt48CZ41+7wR3lYu8Rocy1VsHU45Lf1KaN064XA=;
        b=Ep6Do6owSQhNpYUMeESqoj1ydxC9PcAUKVz+y1ld6HeKBH2ftPkGaNx5Sr+HMiUbf/
         NzVx6IMp2cWroWb4U1Yv8tQ5TnsBT6xlz29TWdEEadFDi8DIxlsSR4vXLDcRhvViQOa4
         K2jdbf7XnO7O7fHJTZO7nNj8uTJqt6Im3DIsfEX2S9qHEw24iGiNKbj9fOUXjHOY9RGF
         zfQlsLpL1O2wCIve479Vx5C0qNa8HOjbWmRsx+aM8kLLWzJEgi4QruUKJRLxQuSLas4+
         E47q33E641wzae8jF7fUAeu/auLTJqVtPgQc7AIBsf9O+DML4mUDr66Nh5XyQUQpIkGx
         IL+A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=FX+01nln;
       spf=pass (google.com: domain of viresh.kumar@linaro.org designates 2607:f8b0:4864:20::633 as permitted sender) smtp.mailfrom=viresh.kumar@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-pl1-x633.google.com (mail-pl1-x633.google.com. [2607:f8b0:4864:20::633])
        by gmr-mx.google.com with ESMTPS id 12si738248qtp.2.2021.08.10.20.55.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Aug 2021 20:55:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of viresh.kumar@linaro.org designates 2607:f8b0:4864:20::633 as permitted sender) client-ip=2607:f8b0:4864:20::633;
Received: by mail-pl1-x633.google.com with SMTP id d17so909679plr.12
        for <clang-built-linux@googlegroups.com>; Tue, 10 Aug 2021 20:55:02 -0700 (PDT)
X-Received: by 2002:a17:902:8d95:b029:12d:674d:f8e4 with SMTP id v21-20020a1709028d95b029012d674df8e4mr878417plo.53.1628654102139;
        Tue, 10 Aug 2021 20:55:02 -0700 (PDT)
Received: from localhost ([122.172.201.85])
        by smtp.gmail.com with ESMTPSA id 15sm1141909pgp.3.2021.08.10.20.55.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Aug 2021 20:55:01 -0700 (PDT)
Date: Wed, 11 Aug 2021 09:24:56 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: kernel test robot <lkp@intel.com>
Cc: Arnd Bergmann <arnd@kernel.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <bgolaszewski@baylibre.com>,
	"Enrico Weigelt, metux IT consult" <info@metux.net>,
	Viresh Kumar <vireshk@kernel.org>,
	"Michael S. Tsirkin" <mst@redhat.com>,
	Jason Wang <jasowang@redhat.com>,
	clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
	Vincent Guittot <vincent.guittot@linaro.org>,
	Jean-Philippe Brucker <jean-philippe@linaro.org>,
	Bill Mills <bill.mills@linaro.org>
Subject: Re: [PATCH V5 1/2] gpio: Add virtio-gpio driver
Message-ID: <20210811035456.g633otggs5dejfrj@vireshk-i7>
References: <afc7b34cee856f1ed1a65034f4a9fe705dd04d6a.1628590591.git.viresh.kumar@linaro.org>
 <202108110419.gWPGrCf8-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202108110419.gWPGrCf8-lkp@intel.com>
User-Agent: NeoMutt/20180716-391-311a52
X-Original-Sender: viresh.kumar@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=FX+01nln;       spf=pass
 (google.com: domain of viresh.kumar@linaro.org designates 2607:f8b0:4864:20::633
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

On 11-08-21, 05:01, kernel test robot wrote:
> Hi Viresh,
> 
> I love your patch! Yet something to improve:
> 
> [auto build test ERROR on soc/for-next]
> [also build test ERROR on vhost/linux-next linus/master v5.14-rc5 next-20210810]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use '--base' as documented in
> https://git-scm.com/docs/git-format-patch]
> 
> url:    https://github.com/0day-ci/linux/commits/Viresh-Kumar/gpio-Add-virtio-based-driver/20210810-182659
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/soc/soc.git for-next
> config: riscv-randconfig-r042-20210810 (attached as .config)
> compiler: clang version 14.0.0 (https://github.com/llvm/llvm-project 614c7d03877fd99c2de47429b15be3f00306a3bd)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # https://github.com/0day-ci/linux/commit/4fe66a15717a74f8f876f70595f050b4dffda7ae
>         git remote add linux-review https://github.com/0day-ci/linux
>         git fetch --no-tags linux-review Viresh-Kumar/gpio-Add-virtio-based-driver/20210810-182659
>         git checkout 4fe66a15717a74f8f876f70595f050b4dffda7ae
>         # save the attached .config to linux build tree
>         mkdir build_dir
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross O=build_dir ARCH=riscv SHELL=/bin/bash drivers/gpio/
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All errors (new ones prefixed by >>):
> 
> >> drivers/gpio/gpio-virtio.c:356:4: error: use of undeclared identifier 'VIRTIO_ID_GPIO'
>            { VIRTIO_ID_GPIO, VIRTIO_DEV_ANY_ID },
>              ^
>    1 error generated.

I forgot to mention a dependency :(

https://lore.kernel.org/lkml/61b27e3bc61fb0c9f067001e95cfafc5d37d414a.1627362340.git.viresh.kumar@linaro.org/

-- 
viresh

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210811035456.g633otggs5dejfrj%40vireshk-i7.
