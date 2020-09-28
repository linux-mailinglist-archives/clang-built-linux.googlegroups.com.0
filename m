Return-Path: <clang-built-linux+bncBDAZZCVNSYPBB66ZZH5QKGQEIXGDGOA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3e.google.com (mail-oo1-xc3e.google.com [IPv6:2607:f8b0:4864:20::c3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F1C927B77F
	for <lists+clang-built-linux@lfdr.de>; Tue, 29 Sep 2020 01:08:45 +0200 (CEST)
Received: by mail-oo1-xc3e.google.com with SMTP id n6sf1079238oos.12
        for <lists+clang-built-linux@lfdr.de>; Mon, 28 Sep 2020 16:08:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601334524; cv=pass;
        d=google.com; s=arc-20160816;
        b=XQQZulMTOFKQg22/o8hF+RULjYNkYOiVt+7o6yLSGhOyk4vAm2is3zXNVASbSEjb0j
         GH4byrDkMXcB4xXSCYjTNcysfU5fuO9ydqGhpMvBL5ayJOaaGyxerOHJ1drIJM3SYEvD
         GNXlysd3nc0eUh3wvrZoZCbfqpsZHzeSMyqrl8bldKZz48lJODpaibUNXZpHwG/eveTb
         PGTrBu3Sy3TIVcx2uQi7Ht9UOrajg3qaoR1RtxsGYiYhV1Uy6yp0iHUaO8SGA2Zf/3hC
         pZO22Wg4RQN5EY5TUdgnoNMIKzE1/xlnJDbrCuqItg+kRbK+/vGTAY1nen8ybp6Hi+KA
         Gczw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=HzgiSEDZBihuX9kUkyK7yuUVi1FpI8EgycNyQsNYjFU=;
        b=bdMgTIt/AwjdjLa5HZ0edkxOFGtWaLBN84aBCw9toJQcY18y5roQioW9MoBzojHQ5q
         V1F2mbG/ew5Cz5ROEPO9028R2RkkQoNigIMpiiEqi2+CwKoFsF/gmR78BPDHXe6LmPW6
         cb2WQi6JmhkoCD894nbZr1CZvkPRUVeY04SQrENAooPrCxPngXCZdfL2EEzUc3+2HZP/
         NQktuwk0YJjYrkUDDbj84WLAPyYQsh9pzAdEzeoufdCBJH3aWq/ezYN7+SANpFLSwJyy
         s0QqRF6OHfXSg0mn0a+kUfdoGz8XfdVGQokXwhA1JAqjGKRGF5TsZ1I8igX37PJzzY3H
         FIYg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=esDNOvaQ;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=HzgiSEDZBihuX9kUkyK7yuUVi1FpI8EgycNyQsNYjFU=;
        b=Xf+A/QZNhzK+vNSavIjesBBY3/TLDkzpPOzY3Aq6KG7AdLf6aKK5JEaz46ls+/9T6L
         R0AOCuWPstwn3bbcJ302RF53p2A+1CcYkLen03+wkWdm9DNgk3O/GSAPmJ/Ti26b4plU
         uAHkmHIC4u9ZO0pJtSqcPDNiDasoBgR/ipxHyZAZ8hIycf5mCaw5QxBeZxZz4kCvO2wV
         H1OI6wkvAMagnJWMpVUDuLX3U++6NGWNqwbr8nwIcaNXASIFhqQmKTSsrNcgVI0LNs28
         54WMiK82zfFZzgBb91xOseznLQomaNcNcZneD+2YVzXEbNDfI/8RMXmfPyLqPr+hqeuc
         xJPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=HzgiSEDZBihuX9kUkyK7yuUVi1FpI8EgycNyQsNYjFU=;
        b=mnee2uskLxTnAJr0P2ZA5z/85biC2hDnq0nIlM+UfJFwrEKh4o02o4WjVDtmaeoTyR
         egRMQLWSXZi8UxAWBYkRj+JL7ruxMuTFKy1/G978pkQuPuvbdwi+fIAi/xDGTlzxJdR5
         AeN5lD8dYgfHhbVM/ELx9AMMqdHNFEACUWxyGQKXZ+vYDrpyaJ2k5MKXiqM2T4DrxFNf
         BbQPPV8gNnCpfzkuvul4Q7Jy+kbADizqrsFRiFyFm9+chbyrT0YmXGiSTJue+nGbtMcN
         i7yMao4YQ/KZoHxFH3vpeLQCIIVV17+Is64oRhV7OXgbJY9yRbdPliRsgtKdyZu1hcFd
         IBiw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533/wgL1yhq4ZWAtqNx/1lDq+vzPf9St6Wy7aL7mer7+0RN0ktYi
	+qMbxTcxKMIAh+vD9Dnswr4=
X-Google-Smtp-Source: ABdhPJwyRUfrG1NScw1QqjhtX+IwrrxrPsXKd1v0K7mRSeFXC0wuL0BMtzXkhdxUWRGTJP8BJwUgDA==
X-Received: by 2002:aca:b488:: with SMTP id d130mr785135oif.136.1601334523842;
        Mon, 28 Sep 2020 16:08:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:72ca:: with SMTP id p193ls598950oic.3.gmail; Mon, 28 Sep
 2020 16:08:43 -0700 (PDT)
X-Received: by 2002:aca:aa84:: with SMTP id t126mr787439oie.5.1601334523503;
        Mon, 28 Sep 2020 16:08:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601334523; cv=none;
        d=google.com; s=arc-20160816;
        b=iYz0xy80dFLWnCKD79EFfXyXrY6ftfVoiPglUKnVX9SiThQu397w1UL6/CNE3D1mIt
         cquDW76kRTQlKhj7m20VUmdH4WE2plaQ+hh1gp9idtNolP5Pih8cAq4WhIoEreSiDN53
         HGlgZQYpM2Z2f5d2Ao6bLtlCClCb9f4iqZY9KYMSrrM7yngQAA90Kq2rbCktVzgPYxrA
         fO0vlIck7nOYJt7BfZ0xV3KM5v6BGcsF6972EavDtJJ6UE8pg9hAJsIbFORuRz/ABhMn
         PyO5T5qVr39Qe87iQluAUs0H8zkRvVLGGZwFmJhHa7AvbmyDD61Dvax2gRUyN/SRqdMl
         pQpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=gbCLln1uMhipoiF0f07d0YWOr8p+Rm3Y6Naakc8yjL8=;
        b=fvDdPXD4WYnPVrmYuwBvMXoP5MfyH+Yi5fBdXiEUjC2BA/a2va6rFggL2dz1Bhqz4Q
         HZXl/VbcOaAW/x+coT9786YN/GbbnbpniYX35PdNUlaFQ80ftEOuwcvNrSiMiY+/uOSL
         Qn5zuUZ2FvKjNJkEELTeexuVzRoLOzYt7vhF6Htg3X5bduqvX12B7DSYGc7XPlrnhyVa
         MLVSQNetLzFrIlod//Muaxfh3Yz9iF1D3S3ddLmBDUwTyX3eMFL9qS0c80SUWgDm9DXA
         q0qU5jxGiyo6gpDh/EjEzc6VY4jWjlCx5wy1Rj6eBIs3ZYBo8RHpSsbmskenLfMdRc07
         F+Mw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=esDNOvaQ;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id m3si285354otk.4.2020.09.28.16.08.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 28 Sep 2020 16:08:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 4447D23A58;
	Mon, 28 Sep 2020 23:08:40 +0000 (UTC)
Date: Tue, 29 Sep 2020 00:08:35 +0100
From: Will Deacon <will@kernel.org>
To: kernel test robot <lkp@intel.com>
Cc: Yu Kuai <yukuai3@huawei.com>, robdclark@gmail.com, joro@8bytes.org,
	kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	iommu@lists.linux-foundation.org, linux-arm-msm@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
	yi.zhang@huawei.com
Subject: Re: [PATCH] iommu/qcom: add missing put_device() call in
 qcom_iommu_of_xlate()
Message-ID: <20200928230835.GA12939@willie-the-truck>
References: <20200918011357.909335-1-yukuai3@huawei.com>
 <202009220340.bJfsaeQn%lkp@intel.com>
 <20200921204556.GB3811@willie-the-truck>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20200921204556.GB3811@willie-the-truck>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=esDNOvaQ;       spf=pass
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

On Mon, Sep 21, 2020 at 09:45:57PM +0100, Will Deacon wrote:
> On Tue, Sep 22, 2020 at 03:13:53AM +0800, kernel test robot wrote:
> > Thank you for the patch! Perhaps something to improve:
> > 
> > [auto build test WARNING on iommu/next]
> > [also build test WARNING on linus/master v5.9-rc6 next-20200921]
> > [cannot apply to robclark/msm-next]
> > [If your patch is applied to the wrong git tree, kindly drop us a note.
> > And when submitting patch, we suggest to use '--base' as documented in
> > https://git-scm.com/docs/git-format-patch]
> > 
> > url:    https://github.com/0day-ci/linux/commits/Yu-Kuai/iommu-qcom-add-missing-put_device-call-in-qcom_iommu_of_xlate/20200918-091341
> > base:   https://git.kernel.org/pub/scm/linux/kernel/git/joro/iommu.git next
> > config: arm64-randconfig-r023-20200920 (attached as .config)
> > compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 4e8c028158b56d9c2142a62464e8e0686bde3584)
> > reproduce (this is a W=1 build):
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # install arm64 cross compiling tool for clang build
> >         # apt-get install binutils-aarch64-linux-gnu
> >         # save the attached .config to linux build tree
> >         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm64 
> > 
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kernel test robot <lkp@intel.com>
> > 
> > All warnings (new ones prefixed by >>):
> > 
> > >> drivers/iommu/arm/arm-smmu/qcom_iommu.c:601:4: warning: misleading indentation; statement is not part of the previous 'if' [-Wmisleading-indentation]
> >                            return -EINVAL;
> >                            ^
> >    drivers/iommu/arm/arm-smmu/qcom_iommu.c:599:3: note: previous statement is here
> >                    if (WARN_ON(qcom_iommu != dev_iommu_priv_get(dev)))
> 
> Oh, this looks like a nasty bug. Seems we're missing some braces.

Yu Kuai: please could you send a v2 of this?

Will

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200928230835.GA12939%40willie-the-truck.
