Return-Path: <clang-built-linux+bncBDAZZCVNSYPBBAUA373AKGQE5TMPVZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x138.google.com (mail-il1-x138.google.com [IPv6:2607:f8b0:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 10FCB1ED335
	for <lists+clang-built-linux@lfdr.de>; Wed,  3 Jun 2020 17:21:40 +0200 (CEST)
Received: by mail-il1-x138.google.com with SMTP id u204sf1759127ilc.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 03 Jun 2020 08:21:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591197699; cv=pass;
        d=google.com; s=arc-20160816;
        b=AR2e1mpizroObGNvmPheM1eLkc9LKSWZSaG2X+ihupvI/9+YfNK1i6is6FoD/a14xK
         RwgrIzofY9+XzW4DCcDASp+PErA0/PzzDwyglci/4qkxBaxZN0b+Wrxd3W4ht47gRK54
         vmN0c2Q1rdffkSUge6aGCD6gxmyGPeLiIWTrOFcpuN7J8rA0Nx1fhXNygjcTuI8Y/9il
         I49hsh+5Wz9Eot7T1yaCsiU2DKscv9akp30U76nxCq8z/0KTSYjR25DN5re56krr1dfL
         FY9kZH9kiIOUniy6YZUZOKOEEkZvc42k+vn0byNBb0C7jPCWuDiWA71qoeaQpIGcjsS3
         ckBA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=JFud9N1nBKjq7rKNRKtO3mFRh6jp4bjM1OehfTzmsuw=;
        b=O44pfZyxdfPDPh0jwkzCMq9Ix40+G6dTcHTJCbwRuMRuG0z+lMAaXh+7VQJNa23JOO
         yqm92lpkAwdGgwBuv74fQhmypwoQ4a7PJFKTPQQP4Sw/2V8XE6hoy7Mvheur/RhFqI5T
         TeVmdpy+2Jp3YyJdoAHV+NcmTjC74gKDT9+3uUKgiOKngdvhW9RwsUOBOAtfSF5TEIT6
         KCZxLRJutDp3szFlimxr5IyeiVrDR16jFZXULxty8OOJohwmgEQcWR1vRdbqp5lvqa42
         Q2repVtB2QZvbNm8BVEWhvpMWGU3+ksfFuhlnJmebqxPjo3r0G+vAaNhqF6yONBzI3op
         8uaQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=x4hac7m2;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=JFud9N1nBKjq7rKNRKtO3mFRh6jp4bjM1OehfTzmsuw=;
        b=MQnb3vtmMEbOxgPPKoVFzFrt/ziM5QnCntZObL1ztyIp44iFXPD9WnBtEiUUFpF4D5
         lZI59Vb4XRlC4mX692xn18e1qgNcbzuayZjjT1WmwziT1K6idInA/ux2r3KIkDV+3jM6
         A4H7ZqXxkIolePdoff26QSxbjyQHpjdwCukhjk4Iv7NBksVq0mHIIXOHExpCqcWfLKYo
         b8O+r8Wgc7reUPMOMDJePwT1kHCuqlFEfHoF3aETpkgdie/8bvHBVjuf6rrYJC0G1EIF
         FKeJR/wyxIwYs6Le1tnAZvDlf0uWeNQLJA1btuLupUVFkE/wucn/0Y2HQ7+iL4k54w6I
         d6AQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=JFud9N1nBKjq7rKNRKtO3mFRh6jp4bjM1OehfTzmsuw=;
        b=ouo5FLK1vtSpSD//Vf0TintQW0Lsm2py52r0BhwTainfjUVU2alk9jNXuHCl5qQBWT
         e+HPqqpTH8qWZDh4+63YjSLBVNMaxDDIhqqwV5shPzZKz+BV4cFrSFr3dGd3OdsfYO9T
         EbaMgEUpOYcGUPVx+RgmUAucQg3tEAp23N8WS9GUYtG4Y6ATBgIzHyKcwroV6DR2xzXU
         7kpbKMrzGhZ5rUImgTdsCrQYNIDkkJOp+FFU/bi/vSlBqM96DyIzj9HkpD3uYN2mFKD/
         Bgjm/F4BMDlKFJRoFGEL7Bj2xRqBMTAom5I6V1dQXiPUBlv/N1KJ5kLBMQOd3ONGMpj9
         G00A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5330NSWIRNBhUqOvM/3mRkcfMCc5qoozwSA/Mh1Vyo24XSmHEGvx
	606K+ghG9HW6XwSmgbGXytQ=
X-Google-Smtp-Source: ABdhPJzGvxRZMoqDcIL5eIqLPRogoaNS1AhC17EuG2NZIcVibZQ55wp6eDkKAakoBKYg5QxI6zdiAg==
X-Received: by 2002:a92:b301:: with SMTP id p1mr87787ilh.114.1591197698986;
        Wed, 03 Jun 2020 08:21:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a6b:7207:: with SMTP id n7ls395661ioc.3.gmail; Wed, 03 Jun
 2020 08:21:38 -0700 (PDT)
X-Received: by 2002:a05:6602:2817:: with SMTP id d23mr239903ioe.206.1591197698580;
        Wed, 03 Jun 2020 08:21:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591197698; cv=none;
        d=google.com; s=arc-20160816;
        b=wB8xGKWsi09okxZVWlZMiU53CD9y7AKejMhRA7ZSvOojaBKHQudvX4VzzjxiL4NS+f
         biqAab395vQM7pb09mBY2jr/65wSUCT5QvTpK8ZtYKSQaRvSGwAG9l7+PqyBNZLJzvQK
         ls2HTAtkgznuhPP0iBQJ4/LcGg2Puc1IXXmCw+E8hlac+HpmOsZW+ppWi/By0O+45sti
         vkgomJ5WJyiGlm3Q1BWu7vzyVGpTYgwHhxHO/xjBv1+qg1ywZkYvhOhsIa+qYyiAiVAR
         83nSFW4azI8wEAHhEjgoapAt6bifDmfIgTYEU3vuYA9vW3VzwLsxlglZ+/sqy2p6O0dH
         i/MQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=JwVo84GZjqXEzj7jCVtBdcjHaPB60+QxUQkCKcF/qNo=;
        b=y3kmDlnO8xBycAWvd7vkJJ7MnfU6j+m/QpSEV+usUdHfqYjWiMl5tCMwugwekYFFey
         QwQw5Ld8xb7E6QQfbkZnwks7HCYxQdGHot8cOFfU2RFWku2sONjtby/c9R5PemtddvlQ
         W5myy1DNV7SJwSyGDMKhkoXE/kjsRSmVT9CCKlMCAiuZyofcbmYGZa9icvMX0DfqD8ok
         bv2hY/fK5BuX30QuP54bSFQB72QpJTch5yqb7fkDMH/chvLkNWw60IWQ99WwMq1mlwYi
         w2FpwVdL5ZfYL7lLE5yrGsU5jcAYi+ZeJ+3EUYMF1IcJL6gCVEpEq+WXSYaYQHOSVFcp
         4W2A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=x4hac7m2;
       spf=pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=will@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 29si99724ilv.5.2020.06.03.08.21.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 03 Jun 2020 08:21:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of will@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from willie-the-truck (236.31.169.217.in-addr.arpa [217.169.31.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id ABDF120738;
	Wed,  3 Jun 2020 15:21:36 +0000 (UTC)
Date: Wed, 3 Jun 2020 16:21:33 +0100
From: Will Deacon <will@kernel.org>
To: kbuild test robot <lkp@intel.com>
Cc: "Jordan, Crouse," <jcrouse@codeaurora.org>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com,
	Sai Prakash Ranjan <saiprakash.ranjan@codeaurora.org>,
	Robin Murphy <robin.murphy@arm.com>
Subject: Re: [linux-next:master 6465/14955]
 drivers/iommu/arm-smmu-qcom.c:15:34: warning: unused variable
 'qcom_smmu_client_of_match'
Message-ID: <20200603152133.GA11733@willie-the-truck>
References: <202006022119.oVUnwCxU%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202006022119.oVUnwCxU%lkp@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: will@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=x4hac7m2;       spf=pass
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

On Tue, Jun 02, 2020 at 09:28:22PM +0800, kbuild test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> head:   0e21d4620dd047da7952f44a2e1ac777ded2d57e
> commit: 0e764a01015dfebff8a8ffd297d74663772e248a [6465/14955] iommu/arm-smmu: Allow client devices to select direct mapping
> config: arm-randconfig-r022-20200602 (attached as .config)
> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 2388a096e7865c043e83ece4e26654bd3d1a20d5)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install arm cross compiling tool for clang build
>         # apt-get install binutils-arm-linux-gnueabi
>         git checkout 0e764a01015dfebff8a8ffd297d74663772e248a
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>, old ones prefixed by <<):
> 
> >> drivers/iommu/arm-smmu-qcom.c:15:34: warning: unused variable 'qcom_smmu_client_of_match' [-Wunused-const-variable]
> static const struct of_device_id qcom_smmu_client_of_match[] = {
> ^
> 1 warning generated.

Jordan, can you take a look at this please? Fix should be trivial, but it
would be nice to squash the warning.

Ta,

Will

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200603152133.GA11733%40willie-the-truck.
