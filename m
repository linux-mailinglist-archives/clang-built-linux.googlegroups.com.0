Return-Path: <clang-built-linux+bncBDM3FG7YWUNBBTPSRKAQMGQEFCFGBTI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93a.google.com (mail-ua1-x93a.google.com [IPv6:2607:f8b0:4864:20::93a])
	by mail.lfdr.de (Postfix) with ESMTPS id A8D053153ED
	for <lists+clang-built-linux@lfdr.de>; Tue,  9 Feb 2021 17:33:18 +0100 (CET)
Received: by mail-ua1-x93a.google.com with SMTP id l1sf4657133uan.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 09 Feb 2021 08:33:18 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612888397; cv=pass;
        d=google.com; s=arc-20160816;
        b=XRZgFXoeHxCVV0fvaIwnulA1RVRrCGjkBSM5X2JvgtZht0+KSqbU+ZmfXO15Ye6gVa
         NCi8M1HczlQA8qunsm36j2JQA9y7U/WQxLGP0+2BT8GF/I2/Nf9XM1FKrZKyjjqMarj5
         lsDjps/nhsgFDHL+6hkC3o5U/1YP3WB2IczUBSxTScMLCaRUTLEWhK+W/oWGJxNhw6H9
         +xWuU7UxXZbMEsZyxju9x28Xc7QNXhbvtURvEmTrjRpR0PySbLsESrwlBtuDoSEvmxOw
         yYl34xgoL+sX0RYibVH883rZSG6s6+9BJZQcOWF31yheTXsnR4ZFzBM1CPxmRRg5RGe+
         K1jw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=6BQC8OZWHsd4HdvFxBrbC9Wd2kj1wnsXF0mx7BXcK20=;
        b=wtz6qft7Y22OgOZZejdzFL4zLfBQ5XTASZAW4ESiMNDS2tHvVcRq9s7+1NDkppQTg4
         s3OMFXKNGNGeZzDrnBY5WTbiqG1mkMxWC5sbz44HqmznCCy7Ix0fTF9g2Aq/GzOtvjXc
         5bIzEjekXDY7qVwCGUZrdOxdpKWmoCxEEEb/1xDjMup7JUifSgvwfUi9+ixEBMtYbchp
         Vzzs0TXQ6OSFeS2YKCiK5Bk2qb+FmLHzBLVwdC1Ru02+6dhY9LOWCbgqfF3CjCrYvxdJ
         aL10FUoymVyfFVyUY/WYEahT5770vemA3qJvPtNqZ7L0jeZBvteq19ugebQcYBkl1fNQ
         gJ3Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pzlBKSdu;
       spf=pass (google.com: domain of jrdr.linux@gmail.com designates 2607:f8b0:4864:20::a2f as permitted sender) smtp.mailfrom=jrdr.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6BQC8OZWHsd4HdvFxBrbC9Wd2kj1wnsXF0mx7BXcK20=;
        b=ElrS2kRZ/ddhKF6PIwO3DNGhaWZNix3OX/2HridgoZqi8aCfmfH2lZTgxH6qCGVFqd
         tm20cUSBCgaAcX5I8kc7y/YZ20WaM50ZbUap2ndJwEJNHsNcKyPfdJO7zoRSxSUE+MiT
         jjhXnPVDmrqnI0thRjwSHDVATeiRVtd6wX2P6/aC/4vF3Lk4Z4hNd50smJrhSRzPo0iV
         SbKJT7OIFZ7w2e4XqhLyaqmPvBxJhGLoOsafQO/D9VdXk1aQUifQlj7S8ZKu2JcaH/2f
         YzfA8R4c7S9rpxklMQqsdeSKoAMU00PaNcC8H9XGc2/3FgozG46MmPi/Nz7X85YMEjYv
         9L7g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6BQC8OZWHsd4HdvFxBrbC9Wd2kj1wnsXF0mx7BXcK20=;
        b=bLoyI2nmrPXSQCq/R77Qo87hUX5W2czWKAd6Q/A0Xo02o974GoQJF0MT4sWRWNQa5R
         hmEVIVzhWbehc0vMeA3mpgps2zutakXiOuLs86a9pjtWEF9ggk6AoWZX/1JXJcXi5qQd
         6X2xg/KIpl6vxBCFUTd3nFDlJwxvWPvTO/E6P3JHIZD7lDofbHicmzZ5nlshCtrqAYT5
         rTIyeiOegz1YZObtTFGSlBPBhZ65pyyVlE42USDNV/saMlYuyQyaIoz8R1ZzsekYQ2oO
         CfgosURNabi6e2MY1h5qtWyUmdXp0oE+Sk8jof3Zm+bPUk+tU5Koy7CV7NHhGGezUZmM
         EQVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6BQC8OZWHsd4HdvFxBrbC9Wd2kj1wnsXF0mx7BXcK20=;
        b=i+hNYn55egyqfiMiAQEmop2p3Rw7newyfNHXrmGbdi97pdJ3CD0ZNg6cCW9B4CvLPF
         yDrMArOrnsKHKtLEWsX+HSmeJl6a3SC5pGLCgHjQrf1NauQT1W38tu9zAaqkVit73p/y
         YyWKNp03+KHcINEFRvVa90aFJLFSaD5ClSLmnBqq6wEA5TWZm9HhRbo/YBYyZk2Hcw4T
         JyXFmKXnDng4G9QltqTd3vXlxQj1NKxVyUPCU5yIe0MVNzAkjCFhOo73KXkB3uMEo9KY
         YTAyLVv5h/T7oS8IxcLri5L0l1Cxxf37s6VvZw1XfnQJ/HPma0W2/O3X1EKWOAvWhL01
         Y3+Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531KGQq9nuOuwP8josRQ0QmdeMOoBtWHTszZvUCqx5/BxGhAjYHy
	NeYnFPlaABw0m+Vm0FuBF6E=
X-Google-Smtp-Source: ABdhPJxIhKZn3TDPUn4tnLrZFrBcqr3ka48EQnUy8SoNGNhAMqDjkm6vM1KlwZ4KfKoFhEFzeBhe+w==
X-Received: by 2002:a67:8c6:: with SMTP id 189mr13334453vsi.55.1612888397743;
        Tue, 09 Feb 2021 08:33:17 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:c0c:: with SMTP id a12ls1622232uak.0.gmail; Tue, 09 Feb
 2021 08:33:17 -0800 (PST)
X-Received: by 2002:ab0:28c9:: with SMTP id g9mr14320946uaq.142.1612888397335;
        Tue, 09 Feb 2021 08:33:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612888397; cv=none;
        d=google.com; s=arc-20160816;
        b=FowrF+/+IyI1dSwSs9C76ghrN3CKWRCc9gLF2sn1orEdqs7TrIef299+0Kwaw56/au
         DQEkiePbAHmYF2kkWp99WDTr4LBnc434ctJ/hZglAJ5KnU4OAw9TU4j+GHwuENVd8Llj
         sjq0cbb7zlfTTNzWHZiynp5P+uCf8LXujOqBmfNs4TZohqdX4H9NMkd6XepUlcaUU/OJ
         RIQ6CdWAsnHz0t++q2CbutbUmDZMIxYyKILB3Gr2Idb2OppA0M9TUnQdTId9+I+s/fQl
         1h6VhU7xpDd+UfYUUW5bvJOqaMWzqjT4IjRNRHFB09fgU5smxfAucA/ehM8PGIcMGOeO
         4t5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=ylRfpxij4Gi4Y2NFiIFM8ci8361C7ERTwaut+6Gw6P8=;
        b=BYn++iFotcYhYGAeCxeXB7q8KfyeAILoYvP1Ao3qrutm4jD6GBNnmZEBalx2nH3UeT
         XIZrJWVxSquFQs+9RW48mAwrk1iEZCfeHUaG0pCSdIzzWfGbpquCFVwu5V/q2nu8XuNA
         y4Ha4ijgQc9qEnS7BvtOGvkZg8QMT7+V/i1Fzn41UepA4RIc3UUjxETwRX319T/FGTnK
         wubWUH4+MV8Km/yjl5JbfSTwIWhOwYH468OsxtZV3LgBs44CJj/h0SR1FjerfyDB2g+h
         R7+S7j9uqPeW0R0GHWX5EoJ4gokgMmZU0mR1bJRTxXGD9tT6iGOyK3fDBr1hVqwMerd7
         KAHw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pzlBKSdu;
       spf=pass (google.com: domain of jrdr.linux@gmail.com designates 2607:f8b0:4864:20::a2f as permitted sender) smtp.mailfrom=jrdr.linux@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-vk1-xa2f.google.com (mail-vk1-xa2f.google.com. [2607:f8b0:4864:20::a2f])
        by gmr-mx.google.com with ESMTPS id e11si1304836vkp.4.2021.02.09.08.33.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Feb 2021 08:33:17 -0800 (PST)
Received-SPF: pass (google.com: domain of jrdr.linux@gmail.com designates 2607:f8b0:4864:20::a2f as permitted sender) client-ip=2607:f8b0:4864:20::a2f;
Received: by mail-vk1-xa2f.google.com with SMTP id v66so1210412vkd.10
        for <clang-built-linux@googlegroups.com>; Tue, 09 Feb 2021 08:33:17 -0800 (PST)
X-Received: by 2002:a1f:da45:: with SMTP id r66mr9976098vkg.6.1612888397062;
 Tue, 09 Feb 2021 08:33:17 -0800 (PST)
MIME-Version: 1.0
References: <202102070252.HkjUQntk-lkp@intel.com>
In-Reply-To: <202102070252.HkjUQntk-lkp@intel.com>
From: Souptick Joarder <jrdr.linux@gmail.com>
Date: Tue, 9 Feb 2021 22:03:05 +0530
Message-ID: <CAFqt6zZm7rAZ=eqJWoWNojT-s+pmdnYL7MbbCPBE89fk6Q6szA@mail.gmail.com>
Subject: Re: [linux-next:master 3824/6048] drivers/net/dsa/xrs700x/xrs700x_i2c.c:127:34:
 warning: unused variable 'xrs700x_i2c_dt_ids'
To: kernel test robot <lkp@intel.com>
Cc: George McCollister <george.mccollister@gmail.com>, kbuild-all@lists.01.org, 
	clang-built-linux@googlegroups.com, 
	Linux Memory Management List <linux-mm@kvack.org>, Jakub Kicinski <kuba@kernel.org>, 
	Florian Fainelli <f.fainelli@gmail.com>, Andrew Lunn <andrew@lunn.ch>, 
	Vladimir Oltean <olteanv@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jrdr.linux@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=pzlBKSdu;       spf=pass
 (google.com: domain of jrdr.linux@gmail.com designates 2607:f8b0:4864:20::a2f
 as permitted sender) smtp.mailfrom=jrdr.linux@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Sat, Feb 6, 2021 at 11:32 PM kernel test robot <lkp@intel.com> wrote:
>
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> head:   59fa6a163ffabc1bf25c5e0e33899e268a96d3cc
> commit: ee00b24f32eb822f55190efd1078fe572e931d5c [3824/6048] net: dsa: add Arrow SpeedChips XRS700x driver
> config: x86_64-randconfig-a011-20210207 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project c9439ca36342fb6013187d0a69aef92736951476)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=ee00b24f32eb822f55190efd1078fe572e931d5c
>         git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
>         git fetch --no-tags linux-next master
>         git checkout ee00b24f32eb822f55190efd1078fe572e931d5c
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>):
>
> >> drivers/net/dsa/xrs700x/xrs700x_i2c.c:127:34: warning: unused variable 'xrs700x_i2c_dt_ids' [-Wunused-const-variable]
>    static const struct of_device_id xrs700x_i2c_dt_ids[] = {
>                                     ^
>    1 warning generated.

I think, this can defined under #ifdef CONFIG_OF.

>
>
> vim +/xrs700x_i2c_dt_ids +127 drivers/net/dsa/xrs700x/xrs700x_i2c.c
>
>    126
>  > 127  static const struct of_device_id xrs700x_i2c_dt_ids[] = {
>    128          { .compatible = "arrow,xrs7003e", .data = &xrs7003e_info },
>    129          { .compatible = "arrow,xrs7003f", .data = &xrs7003f_info },
>    130          { .compatible = "arrow,xrs7004e", .data = &xrs7004e_info },
>    131          { .compatible = "arrow,xrs7004f", .data = &xrs7004f_info },
>    132          {},
>    133  };
>    134  MODULE_DEVICE_TABLE(of, xrs700x_i2c_dt_ids);
>    135
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAFqt6zZm7rAZ%3DeqJWoWNojT-s%2BpmdnYL7MbbCPBE89fk6Q6szA%40mail.gmail.com.
