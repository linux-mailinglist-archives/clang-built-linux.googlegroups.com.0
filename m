Return-Path: <clang-built-linux+bncBDMMLW4BXYHBBOF77CCQMGQED5LTWBI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3b.google.com (mail-qv1-xf3b.google.com [IPv6:2607:f8b0:4864:20::f3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 6595739DDB2
	for <lists+clang-built-linux@lfdr.de>; Mon,  7 Jun 2021 15:31:37 +0200 (CEST)
Received: by mail-qv1-xf3b.google.com with SMTP id v19-20020a0ce1d30000b02902187ed4452esf13166168qvl.6
        for <lists+clang-built-linux@lfdr.de>; Mon, 07 Jun 2021 06:31:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623072696; cv=pass;
        d=google.com; s=arc-20160816;
        b=V0UvsJw/KTRpuRO1hWPWF38g2eIkZ+Z+9OXbmuMQnxek80PG+42o/hYvOF65S/uv/8
         idfCVzK4YnTMRlmg2Vvl0pRLQjDSj3heJNjpwd0kxRukCMWV0qm2Zih4zzkTKvaYjN+k
         kVihCvB6JlN5ZmA1eaDiQY7J4P1eIvLNOZJspy8sqe/pBiU4UlcablTp/Q0TMgMbfMhI
         tTe9qGE7MaNMNoLuUrfcYLEbaIS2hUjOK5wie9aCdnWg+2UN42GR0Cv6FElv8CYY7ov3
         l98iw07nLnCTROAEHtTI2UD09WQjUqI0mGW30KiVayh5tzQ9SSoeyivk1tmvQtK3fZJa
         Nuuw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=Sy1Ij1XKUDQu9pWwSh+R/doGsh8pyfBlkEI3eXEvaZA=;
        b=zG5KR86VhuZNDVC/dK6NE9ZQoFoP/PQRuwifEDIIFfsbbKb60PNZt/omTYuAdSW0wa
         BK5TFa5FjRCKLxO8slP/HFmYcxI/nUlXZdmTQDOc289sk4Xk5MSi74fjNAMAo2pGL+I2
         bgfkGyDxxXJnlKFVvSp6aqvpfIed/B9cWrSlushb40UBb/23kxmRSF/ZdhcJoRMlwa3o
         uLGE6MmSSP6skyRkdIyryN3J254aSa0vEP9y3lOIaJqQyDYzUW8vXQrNipI/M4vS6n4m
         Rlh/A17RXXzLcHpuBNSSZ0eriBUkZOWaOB5WWe/6GWEdzUOVr7okJFc5sVVmhJjmB8cS
         9oSg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=LrTtmvLb;
       spf=pass (google.com: domain of leon@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=leon@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Sy1Ij1XKUDQu9pWwSh+R/doGsh8pyfBlkEI3eXEvaZA=;
        b=bg+2o29bgV5iAGLpneM7V/cqLovxWzKLDMMJ4g8pxBXNrz935mh/LmhskOLYSwSVvM
         5TR+BQhYicaqJF+i227YLRN6miCWZlSH390FyY0EUFfd/2bYqWJV53O/cs3SzyFTB74M
         P4oFoowdx9CZv/nkrjZYF1X0LLgm+Q3SscG1+xqsf6nbSmnXhjZirVexOLwTgxgD3lls
         oCkEJKsC2AuwrT+7c0LVDJrs+XHFFDayFoh5cMU+DRNrkgaLgtYLaB/IzCcSOXnzvmjz
         35D3wfuw+aH61oJLpdEOyNVSCzpOSkxEe09qzghkpeYIoH61WfZWaoWs0KP7uMtgoVfy
         H1Aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Sy1Ij1XKUDQu9pWwSh+R/doGsh8pyfBlkEI3eXEvaZA=;
        b=Tf0LdDjZWS5b54UwkZ2f8D+PX75yRFte4VEZy9apD+p6TltLtWO0fBydy+wIiVwIys
         uv3bLUR2TShDBEBWVZ7UqiQ0I+yssgyc27bkk74A5T7/0E7oPuzg5UW6h+2QWQpaavhx
         4AQGOMS8YZG0tUuGIUwTSG4eiSZ7Qbf7Emr1cq8EYQGhCdgUnagDYgv/0H4OITMSGxQo
         I/iurAccKvvQsYoqOTEYlyqkkaeqCDcTpvqrjcJK01rOG/5N2tIQCXe0GljNQzNIBMH6
         ettNfKk0sBVhZubIepoSJEVzD5g4HAlXeUBNCLRfZNvzmOSBZKOp9tmntWuFap5A6QEO
         D+Ng==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532Dp7EmfFBtXmdT9Z7fr/lP7kS2+eHHS8r2cfNp9XX0S/9zx/+Z
	gqSJql1mVEvdouxij3niXrM=
X-Google-Smtp-Source: ABdhPJyX2uhdM5+go1BDyBfXjots3nbhcE9PZhgXQAYc/XblR1OhWWbY5YODIEDTqDQZv5UyCmogxA==
X-Received: by 2002:a37:a81:: with SMTP id 123mr13435871qkk.67.1623072696381;
        Mon, 07 Jun 2021 06:31:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:290d:: with SMTP id m13ls8563977qkp.1.gmail; Mon,
 07 Jun 2021 06:31:36 -0700 (PDT)
X-Received: by 2002:a37:485:: with SMTP id 127mr16432464qke.278.1623072695930;
        Mon, 07 Jun 2021 06:31:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623072695; cv=none;
        d=google.com; s=arc-20160816;
        b=U2qnGicuV5J3QJt5AxRQWkXI66wjykgY6Dp/BA43lsCAtWNeYA4CrUw1tcM/QE+pFT
         RcG1pKROWfagLA9kt7MaLpgLkaS1uGOEk1DtlYC3MC+AKTlI6chk3r2fj3OlWLuVNnwC
         vmhFnq0Udph7OsSxJHiD4+u+clGOZj/o3cf0WSJgzB8QzNncJnBhVtYUYufNEKO5R1Pd
         ylE2CkHxHb8hH/PDh0/wTUywLs1IR2hJiy7ifAnaZ+I5zgy8+8yGPRowo+6MouPsikfO
         qEyDD4ntZwzO8wYRfHBzmrHu3yXT0gejR7pWLKPqAsXmrrxs3IIFpuv9QJ3Ff/5jdLN5
         dFBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=ss835psXzva01hTCSspRg1FL+mhoEMPfFbvN9Vf2nZw=;
        b=sCmIaq0QW+TPVXRHqq13Q/xrMNScaIp9hEEgutPbi+0RjYdDBU3oKaEaVmKDTtBud4
         Z6L5wyFB80Pzy+dpMxq5Y9kbtflkrma/qr6jaZA7z83vJJr6LBWJVUrDzCmqcQCVNZWg
         nGwRhXEJ+i0i4k2GoIXQVSSLvzuUhhl6IOlLpKnHJzeGlgujmbVfL3crfj5TxfjWmNPW
         Aj2uY3t1Ddmdx6HY8LpR4cUfjwYggoguwTf6emjfwlODPMF+mm8WTLWquCJ6xoiD8ay5
         4vhYcR9NPfJwpRFhuzkfdwSGo785ftNNOrAxd6Y5P15uRINUb4KaBPagJ3AFW2kiHzyT
         d+nw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=LrTtmvLb;
       spf=pass (google.com: domain of leon@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=leon@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 85si1152421qkm.5.2021.06.07.06.31.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 07 Jun 2021 06:31:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of leon@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 2A3B761153;
	Mon,  7 Jun 2021 13:31:33 +0000 (UTC)
Date: Mon, 7 Jun 2021 16:31:31 +0300
From: Leon Romanovsky <leon@kernel.org>
To: kernel test robot <lkp@intel.com>, Jason Gunthorpe <jgg@nvidia.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH rdma-next v1 12/15] RDMA/hfi1: Use attributes for the
 port sysfs
Message-ID: <YL4fsx5U5xgDNulm@unreal>
References: <48070b15f17be52a4e4384c2042467bd21f5f6f8.1623053078.git.leonro@nvidia.com>
 <202106072139.6TXj5TQf-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202106072139.6TXj5TQf-lkp@intel.com>
X-Original-Sender: leon@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=LrTtmvLb;       spf=pass
 (google.com: domain of leon@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=leon@kernel.org;       dmarc=pass (p=NONE sp=NONE
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

On Mon, Jun 07, 2021 at 09:07:09PM +0800, kernel test robot wrote:
> Hi Leon,
> 
> I love your patch! Perhaps something to improve:
> 
> [auto build test WARNING on rdma/for-next]
> [also build test WARNING on next-20210607]
> [cannot apply to v5.13-rc5]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use '--base' as documented in
> https://git-scm.com/docs/git-format-patch]
> 
> url:    https://github.com/0day-ci/linux/commits/Leon-Romanovsky/Reorganize-sysfs-file-creation-for-struct-ib_devices/20210607-161959
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/rdma/rdma.git for-next
> config: x86_64-randconfig-b001-20210607 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project ae973380c5f6be77ce395022be40350942260be9)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         # https://github.com/0day-ci/linux/commit/1e8e4eebe16212ad4853b902eb8d045fce03f826
>         git remote add linux-review https://github.com/0day-ci/linux
>         git fetch --no-tags linux-review Leon-Romanovsky/Reorganize-sysfs-file-creation-for-struct-ib_devices/20210607-161959
>         git checkout 1e8e4eebe16212ad4853b902eb8d045fce03f826
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
> >> drivers/infiniband/hw/hfi1/sysfs.c:175:37: warning: unused variable 'port_cc_group' [-Wunused-const-variable]
>    static const struct attribute_group port_cc_group = {
>                                        ^
>    1 warning generated.

Jason,

You forgot to call to rdma_set_device_sysfs_group(... , port_cc_group)
in hfi1.

Thanks

> 
> 
> vim +/port_cc_group +175 drivers/infiniband/hw/hfi1/sysfs.c
> 
>    174	
>  > 175	static const struct attribute_group port_cc_group = {
>    176		.name = "CCMgtA",
>    177		.attrs = port_cc_attributes,
>    178		.bin_attrs = port_cc_bin_attributes,
>    179	};
>    180	
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YL4fsx5U5xgDNulm%40unreal.
