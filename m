Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBZOH36CQMGQE2QR6CHY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53c.google.com (mail-pg1-x53c.google.com [IPv6:2607:f8b0:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id F1276399428
	for <lists+clang-built-linux@lfdr.de>; Wed,  2 Jun 2021 22:02:46 +0200 (CEST)
Received: by mail-pg1-x53c.google.com with SMTP id a10-20020a65418a0000b029021b78388f57sf2387998pgq.15
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Jun 2021 13:02:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622664165; cv=pass;
        d=google.com; s=arc-20160816;
        b=hQHyVT8I1J0wOXLMRLkwRsCW9CS/mpgpThuLHW/sITZNtalGIg8g2huK8KhAgBafc4
         weH7WLuC8mG2dfdfxWl7YicvVtLKHEx1p6PGRyyzr6S7B4hlzootAeoqGawLCl5nlRfe
         C7XUlVsd9zKU1d3LnIp2Yobepf017BRyOZUzeWWTmnaeuSTdLMqJbYjJW+dJBb4zJEKL
         wyadKxWh1XZVVe5uo1T+W5ewioNszGiMd9DpG5RyGd/5Lsf4SG/TADGJAHdYBdE+aVkd
         dpzMTpZlshwuBmZ7u3q+I5B1bhtejy0Nm3jI37cgtrnxaKDxqLjTlG7ulFswq4Yt6EOE
         1dGg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=rnwUTQOLYzB64kVHYmCPQ8buPFn1oPuY+bGvz0VGu7c=;
        b=h0WkA4KvadGi1Cl/IOBHpDO2WYvkB0VVcVKNYxJElYnIER8ON76JbMBOowVMZJnw24
         ZwUibhwanz43kniTYFArpJrJKksFvJTfKvC5/pj4XbjE/Tcr3wuS0n2HvYQYx3Snmy+Y
         5GL1YU7r+ldor+hZVTzWcZ8AZsFfqk7lx2SEi0frJcll9Ao1QYqKfUXQva/8hXG5zLC/
         T4/HCcRV4dMZvegNCgtWkBHJVfols3YSZUSvtykjZNILdBTe9GwQxOJn09+Py945RrC2
         8TP4OBJ9tlf702SHDFTPfh7EvKZ5R/Kgu0urBm0ixWfIuaUSHINossx/2Ib0sFRVCSfd
         Iaog==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=JBEcZLW0;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=rnwUTQOLYzB64kVHYmCPQ8buPFn1oPuY+bGvz0VGu7c=;
        b=qajZB+7YR7BhZ8WmfHkLF10oy0cWZk2Eo+p+mI9ndCCvu5U2xmXipfqKLe/z+7Ryia
         6ld0RnR/gU9fELCmNDcd1c8LJ7uwhYFNo9hshyEMYLUwIHyQZNwacpqglE7ToXHVxQbA
         f7VlFLPsqlTHKc4dJoetFJiw8p/ZntYfcVsET3qp+vFH3m/kwM/wA00IM1XllX0pgOP9
         E67ne9ErF6xm8w22h5Pba7p1xkSEWX26IrnH5Ds44NQ/nP2sPxCymu5Z1Xc1Bq2kM13L
         zM5WRFhIyg3PiCV+gWgSfjLwCOPZEx6NnqOA9SFKaY62eh8EB75P3CGD67dKkMOET0hA
         rGLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=rnwUTQOLYzB64kVHYmCPQ8buPFn1oPuY+bGvz0VGu7c=;
        b=L27xBuVOZSH4+FrWz5fpl5B+iY0Fpdf8KVK+OBTKMgnNzIRCPjksiQCr5+JpB38HZs
         7EFqXQO8W9nSic+TGybDhzm9bqBPABPGn/XVXpAw0JJY5rH3BMSVr7vIR28ttrnuR6hA
         zko/UN4Zz0QN+fKv6VilN+5r7vVkDvwIxixmZa+7MZ4/f7FVFT2u9TDMs5++fcKQ045/
         QexlvonSjnrXMQXv0Qgg/ja+Q0rR6Vc4jYHU4kqpnEALsblKNWXr8yZRahVPefg/VC6I
         ri+RRGBMnBPp8z1sEwvmWkMQUA16Hg67eNtU480X8KPXDP8/X3DjB/Ipv5JfJ1BOpwCH
         nArA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531rWrILirOtJ5CII0MeJzgsvJyR6c3mjd9VXLutwWJgonAn1UFx
	sVMw+cne4oXHbbTRK+rfuyI=
X-Google-Smtp-Source: ABdhPJwJf16zWTpdRwec08VczB7ovMXSkJVgtqPUWDACzeEvRV4EuGbZViuReQm/Vwna3fhdpTcdpg==
X-Received: by 2002:a17:902:9a88:b029:107:6086:2632 with SMTP id w8-20020a1709029a88b029010760862632mr11497955plp.55.1622664165507;
        Wed, 02 Jun 2021 13:02:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:5f09:: with SMTP id t9ls569397pgb.0.gmail; Wed, 02 Jun
 2021 13:02:45 -0700 (PDT)
X-Received: by 2002:a62:3001:0:b029:2e9:39d0:46cd with SMTP id w1-20020a6230010000b02902e939d046cdmr28459258pfw.47.1622664164937;
        Wed, 02 Jun 2021 13:02:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622664164; cv=none;
        d=google.com; s=arc-20160816;
        b=rLq8BM7RA1Zhzai+BrnjlEWANxiTvZoqI+S0WN+LyyAISn0MZ7qCmjmhIf1RHsWcmR
         UsqTubj1mLQfnFWbhRZX3pfKr/dGMrpP672PsXtX64NhH2c6kZbf2DuxgZLTz+tvE7Mo
         3aBhhYGsJcF6wVydMrhxBf5BTuHBNzwO8a2bs8rpnfXGfJTNXwuzH3sbsOTWwKSTGxoF
         /so+/Z9Um4VNU7WmNo5tYNpVWUAbR2uYEHwDveSmgkckiINi4yLBu1bqasgnmQf1ryoe
         b2myN3nw3/EGeQoqFjReof6VraWoMMyB9RiH7/E9OOxltKSOinkCsIC3c20AWKazxGL/
         PQSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=bs0CO7s2oplhXcnE8IERTjUKXEO5wvel3fZy8O77bKw=;
        b=xIRh3CSAROgs1kbYb7D0vZr1iEEjBDlPDoi+fi4VAonEwphqb7itC6Di5Vi5JB2KP7
         STtP6vmEfuvZbe6FRENln7duumXaCCCRhE6PLP2LxDutzf/2smvjxB97OUyRuTzr+XXY
         1c+BVXi+wMEJJe1idy6WWHu0th4RvX8occm62H7k2IJQhLDHPPr5bl7xQjonPcdCaY49
         ssvl+H1469TfwzThCG9k8FQK+0jbkLWj74GWbuI9kF5ADlbLKTYYaI7yS3Jf9odWAcT/
         lcZVlt4NXCGfX2Vwrfz509Pp0AE1biSN8bUgEmTbvHHA7hF2ldH1y2adTw/VdIHicxIu
         h0sA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=JBEcZLW0;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id mu6si56726pjb.0.2021.06.02.13.02.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 02 Jun 2021 13:02:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 269EC6139A;
	Wed,  2 Jun 2021 20:02:44 +0000 (UTC)
Subject: Re: drivers/net/ethernet/micrel/ks8851_common.c:995:6: warning:
 variable 'ret' set but not used
To: kernel test robot <lkp@intel.com>, Marek Vasut <marex@denx.de>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
 linux-kernel@vger.kernel.org, Andrew Lunn <andrew@lunn.ch>
References: <202106030332.tmiMOCF7-lkp@intel.com>
From: Nathan Chancellor <nathan@kernel.org>
Message-ID: <b34e07af-4559-7707-b00b-5a36789e566d@kernel.org>
Date: Wed, 2 Jun 2021 13:02:43 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.2
MIME-Version: 1.0
In-Reply-To: <202106030332.tmiMOCF7-lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=JBEcZLW0;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On 6/2/2021 12:32 PM, kernel test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
> head:   231bc539066760aaa44d46818c85b14ca2f56d9f
> commit: 797047f875b5463719cc70ba213eb691d453c946 net: ks8851: Implement Parallel bus operations
> date:   1 year ago
> config: x86_64-randconfig-a004-20210601 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project d41cb6bb2607fa5c7a9df2b3dab361353657d225)
> reproduce (this is a W=1 build):
>          wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>          chmod +x ~/bin/make.cross
>          # install x86_64 cross compiling tool for clang build
>          # apt-get install binutils-x86-64-linux-gnu
>          # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=797047f875b5463719cc70ba213eb691d453c946
>          git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
>          git fetch --no-tags linus master
>          git checkout 797047f875b5463719cc70ba213eb691d453c946
>          # save the attached .config to linux build tree
>          COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
>>> drivers/net/ethernet/micrel/ks8851_common.c:995:6: warning: variable 'ret' set but not used [-Wunused-but-set-variable]
>             int ret = 0;
>                 ^
>     1 warning generated.

This warning is newly implemented in clang, it was not caused by the 
above commit. As you can see from the blame below, this has been an 
issue since this driver's introduction. I wonder if it was intended to 
return ret in the places that return 0?

Cheers,
Nathan

> vim +/ret +995 drivers/net/ethernet/micrel/ks8851_common.c
> 
> 3ba81f3ece3cfa drivers/net/ks8851.c Ben Dooks   2009-07-16   985
> 3ba81f3ece3cfa drivers/net/ks8851.c Ben Dooks   2009-07-16   986  /**
> 3ba81f3ece3cfa drivers/net/ks8851.c Ben Dooks   2009-07-16   987   * ks8851_read_selftest - read the selftest memory info.
> 3ba81f3ece3cfa drivers/net/ks8851.c Ben Dooks   2009-07-16   988   * @ks: The device state
> 3ba81f3ece3cfa drivers/net/ks8851.c Ben Dooks   2009-07-16   989   *
> 3ba81f3ece3cfa drivers/net/ks8851.c Ben Dooks   2009-07-16   990   * Read and check the TX/RX memory selftest information.
> 3ba81f3ece3cfa drivers/net/ks8851.c Ben Dooks   2009-07-16   991   */
> 3ba81f3ece3cfa drivers/net/ks8851.c Ben Dooks   2009-07-16   992  static int ks8851_read_selftest(struct ks8851_net *ks)
> 3ba81f3ece3cfa drivers/net/ks8851.c Ben Dooks   2009-07-16   993  {
> 3ba81f3ece3cfa drivers/net/ks8851.c Ben Dooks   2009-07-16   994  	unsigned both_done = MBIR_TXMBF | MBIR_RXMBF;
> 3ba81f3ece3cfa drivers/net/ks8851.c Ben Dooks   2009-07-16  @995  	int ret = 0;
> 3ba81f3ece3cfa drivers/net/ks8851.c Ben Dooks   2009-07-16   996  	unsigned rd;
> 3ba81f3ece3cfa drivers/net/ks8851.c Ben Dooks   2009-07-16   997
> 3ba81f3ece3cfa drivers/net/ks8851.c Ben Dooks   2009-07-16   998  	rd = ks8851_rdreg16(ks, KS_MBIR);
> 3ba81f3ece3cfa drivers/net/ks8851.c Ben Dooks   2009-07-16   999
> 3ba81f3ece3cfa drivers/net/ks8851.c Ben Dooks   2009-07-16  1000  	if ((rd & both_done) != both_done) {
> 0dc7d2b3cbfcf4 drivers/net/ks8851.c Joe Perches 2010-02-27  1001  		netdev_warn(ks->netdev, "Memory selftest not finished\n");
> 3ba81f3ece3cfa drivers/net/ks8851.c Ben Dooks   2009-07-16  1002  		return 0;
> 3ba81f3ece3cfa drivers/net/ks8851.c Ben Dooks   2009-07-16  1003  	}
> 3ba81f3ece3cfa drivers/net/ks8851.c Ben Dooks   2009-07-16  1004
> 3ba81f3ece3cfa drivers/net/ks8851.c Ben Dooks   2009-07-16  1005  	if (rd & MBIR_TXMBFA) {
> 0dc7d2b3cbfcf4 drivers/net/ks8851.c Joe Perches 2010-02-27  1006  		netdev_err(ks->netdev, "TX memory selftest fail\n");
> 3ba81f3ece3cfa drivers/net/ks8851.c Ben Dooks   2009-07-16  1007  		ret |= 1;
> 3ba81f3ece3cfa drivers/net/ks8851.c Ben Dooks   2009-07-16  1008  	}
> 3ba81f3ece3cfa drivers/net/ks8851.c Ben Dooks   2009-07-16  1009
> 3ba81f3ece3cfa drivers/net/ks8851.c Ben Dooks   2009-07-16  1010  	if (rd & MBIR_RXMBFA) {
> 0dc7d2b3cbfcf4 drivers/net/ks8851.c Joe Perches 2010-02-27  1011  		netdev_err(ks->netdev, "RX memory selftest fail\n");
> 3ba81f3ece3cfa drivers/net/ks8851.c Ben Dooks   2009-07-16  1012  		ret |= 2;
> 3ba81f3ece3cfa drivers/net/ks8851.c Ben Dooks   2009-07-16  1013  	}
> 3ba81f3ece3cfa drivers/net/ks8851.c Ben Dooks   2009-07-16  1014
> 3ba81f3ece3cfa drivers/net/ks8851.c Ben Dooks   2009-07-16  1015  	return 0;
> 3ba81f3ece3cfa drivers/net/ks8851.c Ben Dooks   2009-07-16  1016  }
> 3ba81f3ece3cfa drivers/net/ks8851.c Ben Dooks   2009-07-16  1017
> 
> :::::: The code at line 995 was first introduced by commit
> :::::: 3ba81f3ece3cfa4ffb06d21ac93b8cad7fbe6a73 net: Micrel KS8851 SPI network driver
> 
> :::::: TO: Ben Dooks <ben@simtec.co.uk>
> :::::: CC: David S. Miller <davem@davemloft.net>
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/b34e07af-4559-7707-b00b-5a36789e566d%40kernel.org.
