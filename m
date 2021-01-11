Return-Path: <clang-built-linux+bncBCCL7Q422UBBBBEK6H7QKGQEW5D3M5Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93c.google.com (mail-ua1-x93c.google.com [IPv6:2607:f8b0:4864:20::93c])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FB2E2F1251
	for <lists+clang-built-linux@lfdr.de>; Mon, 11 Jan 2021 13:31:02 +0100 (CET)
Received: by mail-ua1-x93c.google.com with SMTP id 14sf3764996uae.8
        for <lists+clang-built-linux@lfdr.de>; Mon, 11 Jan 2021 04:31:02 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610368261; cv=pass;
        d=google.com; s=arc-20160816;
        b=qcr+U9Puea0zqGUSkl/AIYGa2CRoH3Qdl8us/TVoBTVdLjj9kNTS+J6tTUqv3hIWAI
         FUFQRBBaZ5/J0V6J/kJwJqK8P4upHKhheYisQF1ZYCad4EpHgp4XWufwp230k1sDIt7X
         dwBMW2FUgmTqNz8JJtZQ90RbWCZK8pBLbVQenSZmUXerRbCq6TnJaBPwq5oRzeHV4QDM
         20DiLZW2pJNMVr4SNH/Y2QKQIVki6rS+ZwZRB7eGtygf8oR/lzIdJwo2M9twrLDwDhHF
         YdZ6zpug98ZC83yEDdO5H+WN3vzc42Wvg0AZ9KLiOuKodDf1dioAI8D0fZ4QXMOmXQaV
         tedA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature:dkim-signature;
        bh=32COveRDOINdG20Ad3s45naZIKtdVQDZkVzBRBxY/gA=;
        b=yDQ2ycU1Mysi7Weucqw976ly2F132O2Y6pC5fyghJGpGtLnSqALHGQP1PBBn4GTl+N
         LWDmy+AdjZgICME4+08NDSwlKA4j+S8or1JXJNlWS4ia7DFp0HgoX3yUwNs+HxQjvUZ4
         o7VXj5akz4dFi7GDZW+2sS+DsMi5I7ifnW1Dh5Y1HG8MiDhRnBWBH8QBqe3cNBE4zsBg
         E59girvMr094jboXx9fOszRwuXkUbecg2YH44s+HE+VlP8T6c90GA6v+tGhLF0C3pFev
         nF73XfBDv0mmsfdYAwjzjYLDIWFhAKhLIUPHW+juE86qafLXlW56WOt/tyZGgA8fw5tm
         mVqg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=thTK+QwC;
       spf=pass (google.com: domain of shorne@gmail.com designates 2607:f8b0:4864:20::534 as permitted sender) smtp.mailfrom=shorne@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=32COveRDOINdG20Ad3s45naZIKtdVQDZkVzBRBxY/gA=;
        b=jX2uWuiawruqxwRXdPspyRlf1DnsBSVZ611ctC7CMj9mMp5LJ4qv8FNRzrJmXhXxYi
         w73exIjMjU1v39a2Evf35SAWaQ/jRCIJjwWwzPZtYOTUce+w3a9pQD6HSRB82FzFLCf+
         800F++q5Z2ORFXVs2aRIRq5+MWpibM792h2zyVYvT9OsF74/nodZ8WkKNCz9V/PG/eD7
         WLRB9EY+UMxZVYcnxT62MYDXrjKiM2skmRwIrq+P65vxMvy1caPzXEPhS/zxjpBSByK0
         tQ2l3lyBaGcQufek5q+Lz8TwXzHuUgZtNjZYT9HjT6FTv2LgAr3ROLQomwG2htzB2XiJ
         2YWw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=32COveRDOINdG20Ad3s45naZIKtdVQDZkVzBRBxY/gA=;
        b=WxEiAwIeeiTJfa8bdToPD4CrDcwKpGT9T5Pm3LNpls/MVy9KKSK9nDpYGxFoCLWO7T
         ZigJGZtl9fslDY6PYkXF4u3vdFvVfmndHjLXqo9R4wNJBReZkOI/s8vyS1M2aCWWu0bA
         B6QHSWWYGVLoTHosy4hlktf6xGnG0LmiP2sWsWLD6OH3ML4nW1/PIrjbYVpPSxVtwJ3C
         oUNJqlPtCDfQWa77xgfoZQewJt7JZ/rP/Wl1/v8NoSFT5qdowihCS2YEsxe2o4Syj35m
         HZpZVRNSXAfJkJPMdlYGYMnJMcScZMEjUbfIM7dVaObUDi+cWlMCKnuqkxqO5/EqmceG
         MArA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=32COveRDOINdG20Ad3s45naZIKtdVQDZkVzBRBxY/gA=;
        b=Ya9axB1mwRVXic/FSzH7ovWWH5Xh7JJFohw5znVY45t28nH/QtIAjcJN2HTZ9Gsm1i
         FQ0JCf7RZ5z9kpt4eW298lypp9P87k7ELYSTAnlG8M+jUXNjgphjs7ai94bDvRDh1sr3
         FuRcvzwdJiqK2NPK3WGHJr6vzGCyH65I3L8WjJuw9ZQP/LzKz4liUN4/NpgQjZWd7+qG
         EdFIeKIJ6kkvQJ+cRZ6Sq9kQzIh1urqdo7q4948M49sqaLvZC5cpPZeBZY9nr4QwSiom
         tEOe+kAft3hlm2Ki/kBpg/azh4H7Sr4hSdmTBQ0DTdPT9bnZ+JwiBF7SbPchUgxjjtN1
         0RXQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532uXSTa2PsXwg95ESQf8+b6zGJz4T5rASyk4S6k0qeAF+RX7TiO
	RIz2mFW5qoSbftwlAyCYIoo=
X-Google-Smtp-Source: ABdhPJwI2Mh2qdzzDS8Q2hiTlMQMbNyurv+3Xblozd6fL8WSJzNmuDLHvFS6ST1QcwsyNgtRaAY5/g==
X-Received: by 2002:ab0:240b:: with SMTP id f11mr12126715uan.111.1610368260916;
        Mon, 11 Jan 2021 04:31:00 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:ea12:: with SMTP id g18ls2277751vso.9.gmail; Mon, 11 Jan
 2021 04:31:00 -0800 (PST)
X-Received: by 2002:a05:6102:104d:: with SMTP id h13mr12583698vsq.15.1610368260487;
        Mon, 11 Jan 2021 04:31:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610368260; cv=none;
        d=google.com; s=arc-20160816;
        b=bs96hMrgWwQgMJfrdDzM7hd4HcAyRFC98QrIpSHtS4J8yp85m5ELK/hABDLWTxdswQ
         Pc3hL8/ODa9R9qd4kWs6bNo4bfvnrzSPY10as6mn6V6bhLi9nRXjylWaPeqfhqn+rXkE
         P4TsAnrcpEqhbWyPsBF8LmpUj3Hzd+0UkSLkVHOGlcv6uJnciUdPI+w9oVNAz0cIJ+R9
         BeSSG7HTeWNKuWEd3CfrD9+MqPAhTjyZih1m/t/y0xidL3b7gw7+dhf1OwwYUU/ni+ZI
         lUvRhC+8XAfe+FH8JZpaXRkJ3BDjv4wFSLTMIN3AJaLQPMJPDZtQva6HxxguJ0pzCRnV
         88mg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=MQIcMMQr4fBdNn/n7xtKL3xisvfpOYXLZCgeqAib7vs=;
        b=sYjNAQiN6bEtji9Fwq29Eyh3s3TFQcfZpEq7dkLJs9KDG8v8r85n+rM86T0TNn8DzK
         mV6Oyv2VKM9XpWGo/W8tDE8Cwp0WM0kwQSfOUqieCabD1C9YiHd/vXHiyo0sUh97prW+
         Oy02p8RCzrxYBl6T78gLp2KjqKfk08+U2ti1T++QeGax/SLOxj58lAZl7WdYYhsIB/WC
         AoHCypKkIj8gmuYEVsV9nAfN/NHHt0zq/zHOQQ8DzbXzImjJ3lU9vvmXXjHEGn6iJy34
         bbncGggrWgq9udYItE/tClOtBoB3rJsPKa2ZMw5nTsW6gvB48e2wR4uj8/A/iD86QvAv
         Fiyg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=thTK+QwC;
       spf=pass (google.com: domain of shorne@gmail.com designates 2607:f8b0:4864:20::534 as permitted sender) smtp.mailfrom=shorne@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-pg1-x534.google.com (mail-pg1-x534.google.com. [2607:f8b0:4864:20::534])
        by gmr-mx.google.com with ESMTPS id q22si877730vsn.2.2021.01.11.04.31.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Jan 2021 04:31:00 -0800 (PST)
Received-SPF: pass (google.com: domain of shorne@gmail.com designates 2607:f8b0:4864:20::534 as permitted sender) client-ip=2607:f8b0:4864:20::534;
Received: by mail-pg1-x534.google.com with SMTP id 30so12443683pgr.6
        for <clang-built-linux@googlegroups.com>; Mon, 11 Jan 2021 04:31:00 -0800 (PST)
X-Received: by 2002:a65:64ce:: with SMTP id t14mr19691144pgv.36.1610368259531;
        Mon, 11 Jan 2021 04:30:59 -0800 (PST)
Received: from localhost (g178.219-103-173.ppp.wakwak.ne.jp. [219.103.173.178])
        by smtp.gmail.com with ESMTPSA id e5sm18420926pfc.76.2021.01.11.04.30.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Jan 2021 04:30:58 -0800 (PST)
Date: Mon, 11 Jan 2021 21:30:55 +0900
From: Stafford Horne <shorne@gmail.com>
To: kernel test robot <lkp@intel.com>
Cc: Pawel Czarnecki <pczarnecki@internships.antmicro.com>,
	kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org,
	Mateusz Holenko <mholenko@antmicro.com>
Subject: Re: drivers/soc/litex/litex_soc_ctrl.c:143:34: warning: unused
 variable 'litex_soc_ctrl_of_match'
Message-ID: <20210111123055.GA2002709@lianli.shorne-pla.net>
References: <202101070445.8Kz6oJcS-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202101070445.8Kz6oJcS-lkp@intel.com>
X-Original-Sender: shorne@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=thTK+QwC;       spf=pass
 (google.com: domain of shorne@gmail.com designates 2607:f8b0:4864:20::534 as
 permitted sender) smtp.mailfrom=shorne@gmail.com;       dmarc=pass (p=NONE
 sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Thu, Jan 07, 2021 at 04:04:47AM +0800, kernel test robot wrote:
> Hi Pawel,
> 
> FYI, the error/warning still remains.
> 
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
> head:   e71ba9452f0b5b2e8dc8aa5445198cd9214a6a62
> commit: 22447a99c97e353bde8f90c2353873f27681d57c drivers/soc/litex: add LiteX SoC Controller driver
> date:   8 weeks ago
> config: x86_64-randconfig-a001-20210107 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 5c951623bc8965fa1e89660f2f5f4a2944e4981a)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=22447a99c97e353bde8f90c2353873f27681d57c
>         git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
>         git fetch --no-tags linus master
>         git checkout 22447a99c97e353bde8f90c2353873f27681d57c
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
> >> drivers/soc/litex/litex_soc_ctrl.c:143:34: warning: unused variable 'litex_soc_ctrl_of_match' [-Wunused-const-variable]
>    static const struct of_device_id litex_soc_ctrl_of_match[] = {
>                                     ^
>    1 warning generated.
> 
> 
> vim +/litex_soc_ctrl_of_match +143 drivers/soc/litex/litex_soc_ctrl.c
> 
>    142	
>  > 143	static const struct of_device_id litex_soc_ctrl_of_match[] = {
>    144		{.compatible = "litex,soc-controller"},
>    145		{},
>    146	};
>    147	
> 

I don't use clang but GCC, and I cannot reproduce this warning.

$ make drivers/soc/litex/litex_soc_ctrl.o 
  CALL    scripts/checksyscalls.sh
  CALL    scripts/atomic/check-atomics.sh
  DESCEND  objtool
  CC      drivers/soc/litex/litex_soc_ctrl.o

Also, I can see litex_soc_ctrl_of_match is used.  I am not sure what is going on
here.

-Stafford

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210111123055.GA2002709%40lianli.shorne-pla.net.
