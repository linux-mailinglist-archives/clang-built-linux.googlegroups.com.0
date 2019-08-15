Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBN7223VAKGQEPWQYJPY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53f.google.com (mail-ed1-x53f.google.com [IPv6:2a00:1450:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id 0DBE88F58F
	for <lists+clang-built-linux@lfdr.de>; Thu, 15 Aug 2019 22:14:48 +0200 (CEST)
Received: by mail-ed1-x53f.google.com with SMTP id e9sf2085615edv.18
        for <lists+clang-built-linux@lfdr.de>; Thu, 15 Aug 2019 13:14:48 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565900087; cv=pass;
        d=google.com; s=arc-20160816;
        b=FF4MPx237MZli6uvE3tRYmbplrGzV8bD4B7EaVVDstqFBAI923t/MFHzNXhmPs4/mR
         +VscTUsN+kojlcHXDwkcdO+IIp7rLoRbTVEShvgqj3quaZgfan6BBPWjNIywLqqOPuGv
         jIJTaLRWR0gbO+NR0nrk1rqKLzOFSkz/r1v1pZjuRtBalF45+1X6Bl1Lm6EJL3O9cw4N
         /rh7foK1icysXM8reR5y/A55Ggf+5UUPY3nzlUdRbpnnLImpJCKtxZrv+Z1yixxcIB+q
         +B7JtcWj/52zVAZMPJObu4nhsiUXhjJJA9820HG+8UGOvLi1kNLJvd9VngZgHiWRMDh5
         tW9w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=6l1p2evspIOZ0vw5iWufYbZKlI9SUwTMT985W8erars=;
        b=A3lkCEf65Nd9zliULJt3fUNgxnOnTn6+O7R62mjY2b3iMimfLxZ9Q7C+UZ7e5ErRE6
         jh6N2FyNmxnY3DlgWdsUZzvWGt4rc/+IbodJz9ySFevFbaal8vkUKser21iwScAUtP55
         1+F6a5yra6rA7yhhhgImrwWQi2QJs5l7aEL5ZAMN5w7TGJDL7dmyOxacJ0XoUMJtIGtA
         KlHZ+R+eXDYVsNPP/95blmwrxshPs+vawl9hldz3CgI2uCsN4lYQHBmjkXXpY19rsTX4
         n1HCRSS9pqNLVrO+13K614Os8sod2N/iI9RShPxyax69gW2DZrwho+CQz4aWXNcmsU6v
         nn4A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RWZP6k7p;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=6l1p2evspIOZ0vw5iWufYbZKlI9SUwTMT985W8erars=;
        b=DmWdctComlHPUWX519ZYiV8lMIdHcYy5Cp1vCoWvzjrPNAEp0qzYh6bxZw/+O2kM3m
         3Vr7mSHWJubSyvJ1Oaf3girKsNB3/Kp7ZOJ9EWRta+TZ04/Wqv6gd769GbyAvh/XM1NA
         EVOVDT7VIs3Vj34LROiKTwFJXGyQIonkEAXExyzRj04vgmdEdO1hjmlV7dGTdru1Pw07
         yDlRZGZE+4I7hcf/dR0Dm6g+nyzeyxUBRRVk2Y4XVp09+uZALo65h6NP4QypFNirZvL5
         xo0LgmWllbmqrgXrLPwu0VKROPm6A/uA1HTZ6vv7HbGzvqDAPxPUfMm0mxtKCORVnsma
         BE9Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=6l1p2evspIOZ0vw5iWufYbZKlI9SUwTMT985W8erars=;
        b=jc3zRG4ZKjmEbecxdsPDhU+eGPgxHgwTJLAVmk7Yn8sDTc5tA5WgOtRKt+3/1g0c67
         L8iXSC9QFNDrc0hqXkuniwyn4cbdSBUQ9Ex3TPRsJF+k2kFC4Y4/w6iwQCu6w6FdSS6c
         n1+vkK4VAXSdOYUvTJcKfDhZZzQnGXrtJoFaDsyhhm/JIY3lBQqpKUFzFMHTIlvFVMZE
         eHYRzVeI/afyCqnnz+IpNJZecpr7WRKty6JcgRjDTcHlKog9Dqx64QOTbom5fmqtHIgm
         YKMV6mmvBZVrgWHih2hL+SzRgqRsDcsKTh/jnUiVmSFXLKxyNTflbrmKf1SH53tuEp3p
         y+iA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=6l1p2evspIOZ0vw5iWufYbZKlI9SUwTMT985W8erars=;
        b=WW9SUqS7Ext5m9n3pJNa8Qr1hXQ+iIbDjSjInZ7/WrrvFV5I/DjX94KfqBDmBAC1Em
         BBkvkJSiw55eYTNQUTL307yxiiN8dKbyh6JZONowkdNbMC9iPY6hroaL0A2l4bJAs5Ax
         W5TJbwYAYYFTOx2UC7fYqZhk6UR/evk0W5CYiXOkRg4/Nf5Q0Oaav500j7v9hP7iLbBw
         /EbIPgC7maG+SLbTR6tBtoO4+rSXXP4TQs51wwo3PKyRMIEV3N9O0vTahGc6pnsqTWKw
         PZkTBSpkGcANU2ZsmS8w7x7VMOAT79Zn2quolFoUc4V4/5S66qmFrKRb9m+QZAt59I1j
         mtsg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAV+xjKB+7gFpBRUO0LyefOQAPf/3/g42urL3lW/GwLHlQRYhoIF
	TN6IO6eviTkVPnZSmRUVXCY=
X-Google-Smtp-Source: APXvYqwbEmV6u6E/QyzxdOII+iweFgqMH0aI6WoQR5WpwNVS9Mlhn2rX1Ito4/dSX+53SdO8ZTkXZA==
X-Received: by 2002:a17:906:b30a:: with SMTP id n10mr6270117ejz.231.1565900087702;
        Thu, 15 Aug 2019 13:14:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:ae9a:: with SMTP id e26ls1718216edd.1.gmail; Thu, 15 Aug
 2019 13:14:47 -0700 (PDT)
X-Received: by 2002:a50:de08:: with SMTP id z8mr7328333edk.121.1565900087332;
        Thu, 15 Aug 2019 13:14:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565900087; cv=none;
        d=google.com; s=arc-20160816;
        b=wQvsZeUW8/NC5iE0cUxhpgIAfHutNDobF1ZAFLQX7V4SC6jgRwMh/7UhdWDD9t2iA3
         M6gt+LPJ3lwSwLOw948n9XfbkfU6RILPht4zfUQrtiQTu2PBtBFBQA+0u2ofVYjVnU8a
         QyMWIBgQRPfSCn967nSeRmm7iacClebsOJ74Tu4Z3WteOK9xApod3sM1SBLXbjVHGnNg
         M82uB9pCKMsXxVmpBfPubYw3u22L57UJtkBsOr7D2L9vQwr2c9vkFc+H8lQhwWTITIRR
         rF/JOJHsFRZoRy1GRe3rvS+ZGDjdH+fmSFE3sn0OB9ozbSgsCNqesc8lkvpD1/3sTMTe
         paEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=pUggyZPT/nNNfk7Q2XPGX+QuKZlPQyUiVGXKWIUMwk8=;
        b=tSAi35Fc3M/UH7ZJxpjCnSc0gXwPc2/3t7TuRbrQYJEh2SoZXmqZtXUBO4feqOZ+VY
         jm0o9vEn8feI0jdn3AmtuQ7Nr5hz/ReY1ERJx90AH7ohSt4fkxvbjx4ahbPAEofFRVuI
         VxXQ+CYrcpDUcfXy8y/CHa7T8zVSIayzH3F0bKoofKD0My7rdBP654HX60QJCvqOOGGF
         EG5HOHzuYRU6Yt9+Dyx7ith6a7fod/Yh1JlvFjZ2Rg8upOHRM93KUJ2bgDg/LseACw3c
         KG1J0au/DFfOqjZ3jRGNVcg/A6+zw9vpo0lItIWKraWD5IaNo7pHFCpR2EVoQu1LvFs8
         S9ug==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=RWZP6k7p;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com. [2a00:1450:4864:20::441])
        by gmr-mx.google.com with ESMTPS id m29si187954edb.3.2019.08.15.13.14.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Aug 2019 13:14:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) client-ip=2a00:1450:4864:20::441;
Received: by mail-wr1-x441.google.com with SMTP id s18so2540155wrn.1
        for <clang-built-linux@googlegroups.com>; Thu, 15 Aug 2019 13:14:47 -0700 (PDT)
X-Received: by 2002:adf:aa85:: with SMTP id h5mr6687323wrc.329.1565900086766;
        Thu, 15 Aug 2019 13:14:46 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id x6sm3629893wrt.63.2019.08.15.13.14.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Aug 2019 13:14:46 -0700 (PDT)
Date: Thu, 15 Aug 2019 13:14:44 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Keith Busch <kbusch@kernel.org>
Cc: kbuild@01.org, Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kbuild test robot <lkp@intel.com>
Subject: Re: [kbusch-linux:lru-promote 24/25] include/linux/mmzone.h:282:61:
 warning: use of logical '||' with constant operand
Message-ID: <20190815201444.GA119104@archlinux-threadripper>
References: <201908151055.OL6W1ZPG%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <201908151055.OL6W1ZPG%lkp@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=RWZP6k7p;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Thu, Aug 15, 2019 at 10:22:57AM +0800, kbuild test robot wrote:
> CC: kbuild-all@01.org
> TO: Keith Busch <kbusch@kernel.org>
> 
> tree:   https://kernel.googlesource.com/pub/scm/linux/kernel/git/kbusch/linux.git lru-promote
> head:   b40117952555fced4b6d0ac686fce0534b67c2c4
> commit: 230971ccc88d46f37a6388211b0782e4728ad3ab [24/25] mm: add new lru for page promotion
> config: arm64-defconfig (attached as .config)
> compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206fb06f77a08968c99a8172cbf2ccdd0f)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         git checkout 230971ccc88d46f37a6388211b0782e4728ad3ab
>         # save the attached .config to linux build tree
>         make.cross ARCH=arm64 
> 
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
>    In file included from arch/arm64/kernel/asm-offsets.c:10:
>    In file included from include/linux/arm_sdei.h:14:
>    In file included from include/acpi/ghes.h:5:
>    In file included from include/acpi/apei.h:9:
>    In file included from include/linux/acpi.h:13:
>    In file included from include/linux/irqdomain.h:35:
>    In file included from include/linux/of.h:17:
>    In file included from include/linux/kobject.h:20:
>    In file included from include/linux/sysfs.h:16:
>    In file included from include/linux/kernfs.h:13:
>    In file included from include/linux/idr.h:15:
>    In file included from include/linux/radix-tree.h:18:
>    In file included from include/linux/xarray.h:14:
>    In file included from include/linux/gfp.h:6:
> >> include/linux/mmzone.h:282:61: warning: use of logical '||' with constant operand [-Wconstant-logical-operand]
>            return (lru == LRU_INACTIVE_FILE || lru == LRU_ACTIVE_FILE || LRU_PROMOTE_FILE);
>                                                                       ^  ~~~~~~~~~~~~~~~~
>    include/linux/mmzone.h:282:61: note: use '|' for a bitwise operation
>            return (lru == LRU_INACTIVE_FILE || lru == LRU_ACTIVE_FILE || LRU_PROMOTE_FILE);
>                                                                       ^~
>                                                                       |
>    1 warning generated.
> --
>    arch/arm64/Makefile:54: CROSS_COMPILE_COMPAT is clang, the compat vDSO will not be built
>    arch/arm64/Makefile:54: CROSS_COMPILE_COMPAT is clang, the compat vDSO will not be built
>    In file included from arch/arm64/kernel/asm-offsets.c:10:
>    In file included from include/linux/arm_sdei.h:14:
>    In file included from include/acpi/ghes.h:5:
>    In file included from include/acpi/apei.h:9:
>    In file included from include/linux/acpi.h:13:
>    In file included from include/linux/irqdomain.h:35:
>    In file included from include/linux/of.h:17:
>    In file included from include/linux/kobject.h:20:
>    In file included from include/linux/sysfs.h:16:
>    In file included from include/linux/kernfs.h:13:
>    In file included from include/linux/idr.h:15:
>    In file included from include/linux/radix-tree.h:18:
>    In file included from include/linux/xarray.h:14:
>    In file included from include/linux/gfp.h:6:
> >> include/linux/mmzone.h:282:61: warning: use of logical '||' with constant operand [-Wconstant-logical-operand]
>            return (lru == LRU_INACTIVE_FILE || lru == LRU_ACTIVE_FILE || LRU_PROMOTE_FILE);
>                                                                       ^  ~~~~~~~~~~~~~~~~
>    include/linux/mmzone.h:282:61: note: use '|' for a bitwise operation
>            return (lru == LRU_INACTIVE_FILE || lru == LRU_ACTIVE_FILE || LRU_PROMOTE_FILE);
>                                                                       ^~
>                                                                       |
>    1 warning generated.
>    16 real  6 user  6 sys  80.93% cpu 	make prepare
> 
> vim +282 include/linux/mmzone.h
> 
>    279	
>    280	static inline int is_file_lru(enum lru_list lru)
>    281	{
>  > 282		return (lru == LRU_INACTIVE_FILE || lru == LRU_ACTIVE_FILE || LRU_PROMOTE_FILE);
>    283	}
>    284	
> 
> ---
> 0-DAY kernel test infrastructure                Open Source Technology Center
> https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
> 

Hi Keith,

The 0day team has been running clang builds for us and this warning
popped up. Looks like there should be an 'lru ==' before
LRU_PROMOTE_FILE?

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190815201444.GA119104%40archlinux-threadripper.
