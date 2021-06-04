Return-Path: <clang-built-linux+bncBDJ7DEXEZ4LRBPP74WCQMGQE7RTUYSI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23a.google.com (mail-oi1-x23a.google.com [IPv6:2607:f8b0:4864:20::23a])
	by mail.lfdr.de (Postfix) with ESMTPS id E159139AF92
	for <lists+clang-built-linux@lfdr.de>; Fri,  4 Jun 2021 03:19:58 +0200 (CEST)
Received: by mail-oi1-x23a.google.com with SMTP id l1-20020a5441010000b02901ecd2ee1861sf3874048oic.13
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Jun 2021 18:19:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622769597; cv=pass;
        d=google.com; s=arc-20160816;
        b=eXOYJjrMggIohQMTN9P95k8aeOxkHLDxSIQ0T9k6ZlDN1gXH8r3DYV56/VJhbUVgi8
         wsvWKszTtvs8velo0SGVJ4m5MPAc7qXVw6Z6/agE7rDuH4hoN21cVlu8C5KuS+vi5bJc
         NIDLflCG17vymJLEjeiQMP3aH4iobFn8soBCP4Dnt87BaqXPhUH135OnJrjx3iZQaD8F
         Jg7nppKoq7IvkMljDTuEOKaAdXTQ+T7854KokPb+4F9moW4dyrRvRi5gek6ng0OWj55n
         0hW95vYPDBSCiiZdEdI9BLM1NxSxFc8Zg5sjzL6Qy7zmHy5LoVQ1nxcPLS+WdagHKTHI
         ViUw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:message-id:date:to:cc
         :from:subject:references:in-reply-to:mime-version:sender
         :dkim-signature;
        bh=1Tal8RfVod4sD41sLgGqvBekMGQZ0qrAxeYxHRVJre0=;
        b=DSbc0KIimbZJvaB7qR9Xl52qiKAvTxiqCJVsSIm485+2fWyNHq2NwHp8E7NCBLgVb6
         PAkpeW36eSMeypKx2Di4i6B+23CY0U8hG5uqABAl5vM+an4KmD0by7D01WbNsLHQqLmF
         WQetEFoc4LG7Azz/UFJiUJumW63E+8oeLvfDwRK+3DQ04ny5rUv1DqwScdpJd5N1cmQ8
         IR2nS2LhZof/0ebde9gVNPAhdPI+iCeAcJEHuW/0K3dIjlJOmvZPt1KU9eR0jwkYeUbD
         r4qkbilncd00YEgf5vm50UlYnkaM+QmRcHyQbaHtls/4t884WlxW7d46egnd/Jt25uOT
         FYyg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=qMsYQOZS;
       spf=pass (google.com: domain of sboyd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sboyd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:in-reply-to:references:subject:from:cc:to:date
         :message-id:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1Tal8RfVod4sD41sLgGqvBekMGQZ0qrAxeYxHRVJre0=;
        b=oItlbtBEMzdMiBeG4C+WOKnZmL7pHktOL/pcd/s6nisQ2JG1a1uoBkUgYjoHL14qEy
         SngwrFsK5YsY92AK2P93+DHywhHEfSThlFV9uwvHMGNGGYQ961eAIVWoJEFA1yyCdwi3
         QkI0WWkChmobaDQkzEfii+C5tQi1V9wRT+Yxw/xnu3tu7C3VBeCMKxEzTzlZezX8WYSs
         QYAVjNJKI2fT4JduVLMN1mnhoLDx54ZHrgrqkhwutnQC/rDJdEXtdZVNVUrJIL32lx5I
         aTuSwNUApehR7G3gGm0ORX4cl0Af8E9fAN3k9/rWrJWmFGrAt6qg48ohGfyfnQGBbfKU
         Wc0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:in-reply-to:references
         :subject:from:cc:to:date:message-id:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1Tal8RfVod4sD41sLgGqvBekMGQZ0qrAxeYxHRVJre0=;
        b=oE9FHZgGUGo7JQd8Pmg4+nW7uk2AmdQvNqBj2QX//fLNowY5w3E6m1HgX1BDun+mcV
         kcMjL9Z2UmJSsi25IAagtyCXaYFeknbZ6qTyRGTpzdI6HPjWGv8Cirovm1QNZ9LGMF7j
         1xMqi5UIVvkun8PhhLyEvWTYXX3fAZkvmkvwY+oMfZZqQQp8U+8JxKBgyf3NiiAqa/W+
         gnyoyZHw+/lUYr+PskLHI8+g24SD3nCF0XuF7CSU0weI3xveJMoEj5WyGdep8i/vbAW9
         wsirvYJXkPPyifyE2Ke1Zk6rU7PUBUr1MYzNHE60YWrtyNBUHq2umKlCypyw2fLZPC+W
         6d8w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5331pAX2U0mSmksHcSwDnSAtFEcH+mVjgC3Ob2PRg0SX9piBsCFd
	apyXkRF9mXK2cDT6UFJzmGY=
X-Google-Smtp-Source: ABdhPJyXIfpzQYdTrCWVwaTumlyJ6amfOXOhDpIFDkl9v+bSjCQdsxYjkB3UXTFTpshYtsj8PJIC1A==
X-Received: by 2002:a05:6808:10d0:: with SMTP id s16mr1393290ois.10.1622769597423;
        Thu, 03 Jun 2021 18:19:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:230b:: with SMTP id e11ls1624676oie.11.gmail; Thu, 03
 Jun 2021 18:19:57 -0700 (PDT)
X-Received: by 2002:a05:6808:2d3:: with SMTP id a19mr9438606oid.133.1622769597106;
        Thu, 03 Jun 2021 18:19:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622769597; cv=none;
        d=google.com; s=arc-20160816;
        b=Ot6+/P1sfZnNiy+BKPi5D8UNJtFWuKphVly9nMeVsUI9uO6L9DY7L5WCGvd/X8GTnq
         2O6vuQmXeGlFHNL5YYQO/+Nw2XdMgNj4y5N2sB5RnCxPDau0+vGv8brBPAaduYvGsGbZ
         IdEGXEzD+5dX1RGHE5PhO977MYnitdRALsQYYhCGPtS8rjgAGrDKKL2Pxih5r1fG/bpc
         ogIes15tcUAJQPPA1xHOIwkR9EGj+m40mnAb0ZqXmtQS5RlouvIc+IY4F3v0Y8qosLsk
         f+LlDSaWj5fS3a7PNgxuD5bXpgUtfg7fyDz35QoPlDpATNIZyPTZV1w+aNnq9TIR30c6
         EWKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:message-id:date:to:cc:from:subject:references
         :in-reply-to:content-transfer-encoding:mime-version:dkim-signature;
        bh=tE+iMABtiHm5eikhYmaTCy5GtD1s7h8QhsnOnr8PmSo=;
        b=RBPcU85hesk81SZuDOWfojmd18hHxw6EiXtEUWejexZ95n6m2DtqYr5MZk6zdtgkvt
         1nAFYXVTEPutCWdGqchpzPeJGmmhdw99X65PRvWVQUAvUM5YNwuvVXCorQHqQJW5+kRy
         oLcBvU2S4XZtuPEDfUbPjke50R4gb5uf2H5UQKl2AzBST7Sa0kPqjxY1L78OBKI7gR5O
         +ZCnZ6iTd6hHn4NVzEIW9gH5zmFFOoPGgDx45WT4SCU+W3Vm5gezPeXyYAv32PAq+Sq5
         H7Tlv6YMbkFZaB5SOgye0Gk2+Y0wq/Xn2FS1e8NAop5PdTybvXyCCQqVHnFRGBJhYiyc
         eLKg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=qMsYQOZS;
       spf=pass (google.com: domain of sboyd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=sboyd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id b17si46314ooq.2.2021.06.03.18.19.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 03 Jun 2021 18:19:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of sboyd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 51F2A61168;
	Fri,  4 Jun 2021 01:19:56 +0000 (UTC)
Content-Type: text/plain; charset="UTF-8"
MIME-Version: 1.0
In-Reply-To: <202106031129.hK4xvnxz-lkp@intel.com>
References: <202106031129.hK4xvnxz-lkp@intel.com>
Subject: Re: [clk:clk-qcom 5/10] drivers/clk/qcom/gcc-mdm9607.c:37:32: warning: unused variable 'gcc_xo_sleep_map'
From: Stephen Boyd <sboyd@kernel.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com, linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
To: Konrad Dybcio <konrad.dybcio@somainline.org>, kernel test robot <lkp@intel.com>
Date: Thu, 03 Jun 2021 18:19:55 -0700
Message-ID: <162276959506.1835121.3197175655380445671@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9.1
X-Original-Sender: sboyd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=qMsYQOZS;       spf=pass
 (google.com: domain of sboyd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=sboyd@kernel.org;       dmarc=pass (p=NONE sp=NONE
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

Quoting kernel test robot (2021-06-02 20:25:31)
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/clk/linux.git clk-qcom
> head:   ec7e22abec97b6bd577027380077ec395864a3c5
> commit: 48b7253264eadc05a3d84db9ea11eef528a0108a [5/10] clk: qcom: Add MDM9607 GCC driver
> config: arm64-randconfig-r001-20210603 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project d8e0ae9a76a62bdc6117630d59bf9967ac9bb4ea)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install arm64 cross compiling tool for clang build
>         # apt-get install binutils-aarch64-linux-gnu
>         # https://git.kernel.org/pub/scm/linux/kernel/git/clk/linux.git/commit/?id=48b7253264eadc05a3d84db9ea11eef528a0108a
>         git remote add clk https://git.kernel.org/pub/scm/linux/kernel/git/clk/linux.git
>         git fetch --no-tags clk clk-qcom
>         git checkout 48b7253264eadc05a3d84db9ea11eef528a0108a
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm64 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>

Thanks. I think we'll just have to delete them.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/162276959506.1835121.3197175655380445671%40swboyd.mtv.corp.google.com.
