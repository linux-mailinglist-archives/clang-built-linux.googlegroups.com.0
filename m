Return-Path: <clang-built-linux+bncBDBOHT7QWQORBPH27GDAMGQETREII5I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23e.google.com (mail-oi1-x23e.google.com [IPv6:2607:f8b0:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id D92203B9ABE
	for <lists+clang-built-linux@lfdr.de>; Fri,  2 Jul 2021 04:43:09 +0200 (CEST)
Received: by mail-oi1-x23e.google.com with SMTP id 7-20020aca0f070000b029023d769dcb9bsf4445701oip.14
        for <lists+clang-built-linux@lfdr.de>; Thu, 01 Jul 2021 19:43:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625193789; cv=pass;
        d=google.com; s=arc-20160816;
        b=vlSLvlqf6dUlzNJpDDTk9aQNE72NJnxz7sZ9fnPm4IZE3Fm7Utz9gtMSP6C/VGahFS
         gSK3tPj8e8FhdqStDGOfcTVb/Gh4C51D4jNotV1QSpsVjxBAnkMbCXzmNqxASQVDh4ax
         Et7I6awTcu47f7ulANVG8qKC9Gp4D6b5ycylZsxqYpJ0CKFm0Z1hXdxyPOW6haiwKnJx
         fpAuEWRFHc0cbLhVUz/svZulMGMzSsg3g5PfUZGH6D/QOdcrldQjGRys+LSl9fo2P37w
         ZKkcraSiW+U3jbrbgnbukTVoYrm0HPGHDYV0ohMbKAr3dOibkMfxJMAvx3ENvF1Eoivz
         SxKA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=iwwq7SkhPVxd/+1BN+7B+1coco/4NRolK70x4+dbRwM=;
        b=MZ0Ki1fb8KJzz/ai21//xXmxfoJmn4R4+udmI12GeCSKuz6IPpI500o4SKY2cwVrWO
         AegXu811YG7+huyooCcSHpUWoZmYrXyohbR25KjBdwgdU1nEJNSsyiK8PxZ+eEci1IEP
         VzFX4cwUGZthaYnIsTSYaNI6I/ei5nvmqhLEGwVQwbvUUJ9MuZRtitKqGQzVjSXmUbTM
         GTmXgd5enko2pTdbA2BEOnBv/bz/vmTTOxMzVIpzc8xzjX3ho9/qOmVY4lB9oO4WuVf2
         3+mvJl106gqPCPi7sSA1XmCQwqiG7m4UfMKWEhaUsAOF647wgp35FpSPNVB/tbkkvVDf
         9Wgw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of moritz.fischer.private@gmail.com designates 209.85.216.42 as permitted sender) smtp.mailfrom=moritz.fischer.private@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=iwwq7SkhPVxd/+1BN+7B+1coco/4NRolK70x4+dbRwM=;
        b=IyUGKLeUvzVAhJpr52U+x+6LfWj0gGmscBXqWE1UYMzqHeyQZG5gsxe4Tey2cfSLtl
         iDyFQHf0ZX0vdmUlVk1s+T35cQAA7p7RIE+i0MChfiE5sNS4wPqsS7ZCtZRdSGhvGQxr
         /WlBCdaRAhKsPbeyVx/4gk7al6JJ5LGsv4IV18UpYkRJwonuHy1SNmiIkkPjCN9f4mEs
         vI0pEtg3mzgpJEWb75RyIZtRJ2PGpIHcjBFVzCTtGMA/1afb7SYXsySGj0guEKN44a0x
         /Z1nZHgYDEc8u4YscQkwUUPgiciGzaaMNI9CcHr8jKuKgtD5AkshpXA3D0pKA3g0ePOS
         u7Ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=iwwq7SkhPVxd/+1BN+7B+1coco/4NRolK70x4+dbRwM=;
        b=a/sup9Qiu/s1vJ5rG762HtHxvymuWzw7UER/LBW0eCSeIzYElwoH98mz+pKKfxbw+k
         EcbD03sWr5O7CO1dEpWt8HqNYNexGoEjbDbV9KiPVPlH8sGthkWkbQbiCMFk3RTf8+uO
         9zROredqMf4wKfm8c79zcYlgYp1h+SGrA/3ldfTiMVBL3RBzc+FlTxQuxxJPa7moSLNC
         X2WA6RSuLIavjimbHxH4TLOVisqyTTvOpv5yFg2IXIhDOnWfAprplFxZXeCfTEOOv4+A
         IsO6xp4fdd9XuFAghKOAFyYEZTx5jBuMcs42oaH3vsG4wjuhMA69w6k0v7IihvAvKQUr
         wL0g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532db1QBy3Mqm90gp07as/6dbIX8j8EntSbgxs1YxG2SVUSo8ZSM
	kdCFKfdzWEt1e2uBnkS/DKU=
X-Google-Smtp-Source: ABdhPJxgju8tYQQ2BU+if4TEJQGBX9nZOsBUyI0MF0KJ2W5K+oO+3wHdezA3wc/QqgLS1kPpMHGqNQ==
X-Received: by 2002:a9d:6951:: with SMTP id p17mr2519113oto.151.1625193788806;
        Thu, 01 Jul 2021 19:43:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1541:: with SMTP id l1ls2877027otp.6.gmail; Thu, 01
 Jul 2021 19:43:08 -0700 (PDT)
X-Received: by 2002:a9d:6186:: with SMTP id g6mr2559775otk.237.1625193788410;
        Thu, 01 Jul 2021 19:43:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625193788; cv=none;
        d=google.com; s=arc-20160816;
        b=0qsbNpTMeJQ01u5LTsM2fDVEaG1enPXn0J7W2YdsF0GV0Z9GFUu7m5GGykxKxvjawS
         4RI/0Oh9KTKm38M1BgzZNnmwerKJiFpa10mqVltLNMozsNFnJWKhw+8mmNs/3dU5B5Gc
         jvETi2U+WV509FPUeYw2eLv8KkHTlE0uJii+LAoHKrNjt9Y4NNm0cO2stUdYNC43EU+s
         izV3CceUS1JbXjtmedQptzoqAIgSZ3CluS4T6QdWQCwXqErCVna9K+Td9qN14I1QvLtJ
         VmLX4SG8MccbvpqvAqUpB3pGk6OEb9QOpZB+k2JWnR1jNdI6p2KC+K0vvBvdshx5mL78
         vEUQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=nBALiEkxz1NR1vSmGnmpSRzYq1hFZ4GwIHo5s+HrrkA=;
        b=GgR7n/B5BJmbQyQ/Y49gHA/BUz1fYes46xyVv+RQpNb+fbTkFlqY+rUkZcGcJu0YoK
         LkTHEiX8+XZIvJFxH55wqIXAYpeqSpzMhr6t2FZLqQFS4XTv1/xXBy9FtvGIaoxHUrS+
         CSNamiG59GZ5PJadK/dzF0ggUazpTtW5MKWsEaAVNCo3QkIPUr6j+yVyOYDynD4CwDs5
         LNzLyAut3CudBwgrzFgtQm5H/4uqKI7/Z6nxbCUSP8/a6uESyKF2eZfeCocN17/fkcrD
         V8WNuQr9SARa0bGovoZ8C6QuKNyWZ36to7CwnFDOn+PGa9mcHakSDf3R3ymlOyizNnvV
         vhWg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of moritz.fischer.private@gmail.com designates 209.85.216.42 as permitted sender) smtp.mailfrom=moritz.fischer.private@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail-pj1-f42.google.com (mail-pj1-f42.google.com. [209.85.216.42])
        by gmr-mx.google.com with ESMTPS id k24si165750otn.3.2021.07.01.19.43.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Jul 2021 19:43:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of moritz.fischer.private@gmail.com designates 209.85.216.42 as permitted sender) client-ip=209.85.216.42;
Received: by mail-pj1-f42.google.com with SMTP id p4-20020a17090a9304b029016f3020d867so5228421pjo.3
        for <clang-built-linux@googlegroups.com>; Thu, 01 Jul 2021 19:43:08 -0700 (PDT)
X-Received: by 2002:a17:90a:7026:: with SMTP id f35mr2556250pjk.219.1625193787683;
        Thu, 01 Jul 2021 19:43:07 -0700 (PDT)
Received: from localhost ([2601:647:5b00:1161:a4cc:eef9:fbc0:2781])
        by smtp.gmail.com with ESMTPSA id d20sm1338236pfn.219.2021.07.01.19.43.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Jul 2021 19:43:07 -0700 (PDT)
Date: Thu, 1 Jul 2021 19:43:05 -0700
From: Moritz Fischer <mdf@kernel.org>
To: kernel test robot <lkp@intel.com>
Cc: trix@redhat.com, hao.wu@intel.com, mdf@kernel.org, corbet@lwn.net,
	michal.simek@xilinx.com, gregkh@linuxfoundation.org,
	nava.manne@xilinx.com, dinguyen@kernel.org,
	krzysztof.kozlowski@canonical.com, yilun.xu@intel.com,
	davidgow@google.com, clang-built-linux@googlegroups.com,
	kbuild-all@lists.01.org
Subject: Re: [PATCH v5 3/4] fpga: altera: reorganize to subdir layout
Message-ID: <YN59Odwru/C6N1Ee@epycbox.lan>
References: <20210622200511.3739914-5-trix@redhat.com>
 <202107020945.7ymzOZni-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202107020945.7ymzOZni-lkp@intel.com>
X-Original-Sender: mdf@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of moritz.fischer.private@gmail.com designates
 209.85.216.42 as permitted sender) smtp.mailfrom=moritz.fischer.private@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Fri, Jul 02, 2021 at 09:56:18AM +0800, kernel test robot wrote:
> Hi,
> 
> I love your patch! Perhaps something to improve:
> 
> [auto build test WARNING on linus/master]
> [also build test WARNING on v5.13 next-20210701]
> [cannot apply to xlnx/master]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use '--base' as documented in
> https://git-scm.com/docs/git-format-patch]
> 
> url:    https://github.com/0day-ci/linux/commits/trix-redhat-com/fpga-reorganize-to-subdirs/20210623-040811
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git 0c18f29aae7ce3dadd26d8ee3505d07cc982df75
> config: x86_64-randconfig-r031-20210702 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 9eb613b2de3163686b1a4bd1160f15ac56a4b083)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         # https://github.com/0day-ci/linux/commit/5e515251fd2c4a922934399c3c2007271dcf1398
>         git remote add linux-review https://github.com/0day-ci/linux
>         git fetch --no-tags linux-review trix-redhat-com/fpga-reorganize-to-subdirs/20210623-040811
>         git checkout 5e515251fd2c4a922934399c3c2007271dcf1398
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
> >> drivers/fpga/altera/altera-freeze-bridge.c:201:34: warning: unused variable 'altera_freeze_br_of_match' [-Wunused-const-variable]
>    static const struct of_device_id altera_freeze_br_of_match[] = {
>                                     ^
>    1 warning generated.
> 
> 
> vim +/altera_freeze_br_of_match +201 drivers/fpga/altera/altera-freeze-bridge.c
> 
> ca24a648f535a0 drivers/fpga/altera-freeze-bridge.c Alan Tull 2016-11-01  200  
> ca24a648f535a0 drivers/fpga/altera-freeze-bridge.c Alan Tull 2016-11-01 @201  static const struct of_device_id altera_freeze_br_of_match[] = {
> ca24a648f535a0 drivers/fpga/altera-freeze-bridge.c Alan Tull 2016-11-01  202  	{ .compatible = "altr,freeze-bridge-controller", },
> ca24a648f535a0 drivers/fpga/altera-freeze-bridge.c Alan Tull 2016-11-01  203  	{},
> ca24a648f535a0 drivers/fpga/altera-freeze-bridge.c Alan Tull 2016-11-01  204  };
> ca24a648f535a0 drivers/fpga/altera-freeze-bridge.c Alan Tull 2016-11-01  205  MODULE_DEVICE_TABLE(of, altera_freeze_br_of_match);
> ca24a648f535a0 drivers/fpga/altera-freeze-bridge.c Alan Tull 2016-11-01  206  
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

I have a series to clean all of those up, I'll send it out tomorrow
morning.

- Moritz

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YN59Odwru/C6N1Ee%40epycbox.lan.
