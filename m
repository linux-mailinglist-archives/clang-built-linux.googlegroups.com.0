Return-Path: <clang-built-linux+bncBDF27JWI2YLRBVVYUCDAMGQECJQGMRI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53a.google.com (mail-pg1-x53a.google.com [IPv6:2607:f8b0:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id 653B63A74ED
	for <lists+clang-built-linux@lfdr.de>; Tue, 15 Jun 2021 05:19:52 +0200 (CEST)
Received: by mail-pg1-x53a.google.com with SMTP id x7-20020a63db470000b029022199758419sf7983588pgi.11
        for <lists+clang-built-linux@lfdr.de>; Mon, 14 Jun 2021 20:19:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623727191; cv=pass;
        d=google.com; s=arc-20160816;
        b=zbnS+Qi4qwF8zeUcWUASap8zq2emxfmjwbIvKyGCyMtyAUtYxWOyUPqwh2rZzS2FEJ
         HaIfDeGthAu7bqVGLw4mBo+YKJUMQnVfSZnVCCfXtgSb1KDTEW7aNi5wjIKtzX83lpUA
         3jcPdbZ3OhCRqo3dIcVkOeq06OCRGbvhl8RfSI5eH3CAUA1ONwquMVXiAJEtidtp4jZ0
         wG1XY6cEocz+Krdlq6PsDZcSqIPWQSdlYuyumjjFrt0KNhLoCrGsmdGhqrKYU20zUQPN
         YWri/rmN7t2o2BGYd9K8DcSvU+WTH+NwirgQGuKQC+2+qj6bPaigaWnLJA+nGV3JPr86
         DMXA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:to:subject
         :cc:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=WWOywvIkBnJvDUE16ecJdYB6tYuicDDWdlZc1XRNP6E=;
        b=Bjlms5/nQs0w6cHxFGd6wBM7y3mOcGsPmIqNKhPU508NA+RgGaFsZmCxvlceQ/+oqH
         54mSXndTSEXJqS0RX5Jvo54dkbvPCinRqMTArY9q7gW9j0PqL/wVDxc0f0g2uKfh7eHy
         POv1aMWCSQKv6m8KA9tO0jwNfhDlciT7felo9dGBVtP9JYz0LQGyDt7n4qSnaYDPx1FY
         5es5pF+yOQ4K7NXtgFFIllpG0Kr/jQZgRhaihUbDDpy+rVZJ8tdGN4gH1P2u4ifxaZHH
         dJSucqdYjX7Aj3Pcch3JIZmcmdq2otTEdAoT98NOprQQnCMAJHAMp/iC16E08KMiXV2h
         ZC1g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of baolu.lu@linux.intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=baolu.lu@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:cc:subject:to:references:from
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=WWOywvIkBnJvDUE16ecJdYB6tYuicDDWdlZc1XRNP6E=;
        b=IYnw3eLDQ6uTY3QHH2BUW+N0h/Pjt5RBKjPGovZCMqOmvH8pQtM7MqlraR2HjToju9
         BBU/LaDyCuiXtwjfkhmaWZGte6qCi/joLGI9+yLcl94b36ZblRpH2ExHsz57TE/moZg+
         N1tjWXi4Ko+h6sY77EBo2rEJL48KfPIlXKF7lba8JOOD8nYymNlKSRqTcoCFaIZPIOlU
         IwRwdTbY5C7ZiTyJIMkFr2lQlivCDcw4HZ/KtpGoTipomMEj97RJdaiC6GuYGl2ckvtw
         4Gxxypcrrr4YFQLqOPXNWFF5sTcUs0YdS5t5jvgOE6pP7//iWd2kT6SSqJrHcz2UjWi3
         Q/Lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:cc:subject:to
         :references:from:message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WWOywvIkBnJvDUE16ecJdYB6tYuicDDWdlZc1XRNP6E=;
        b=GDc1V928pbrK0qRu8dS9D9gP4kAxb3f3HctYWZBvZpnn/F/ckJvhhXpNOy2FvUsZkX
         8Wzhi2PcLdaeANuwyFHG47osRzxh49IRZA5y4Y07/r0BodVjmoH3hWd8uMTaV9CaAMhu
         FIVNcWnPD6yNxAlYwRF7PV1uTIb+qR3qNtQAiaFo5FYGF227cTa0pSIxtImFFdbHZfpd
         CSlVO8dNGAsSMBafGH5ptVaTfa3s/nSqXnK8IBrtXP2N9Pbec8/3krowQ2zSr2Fvbpbv
         jjXEOjJj9Tv/j+Gi04g/k03k6AbYMM8xtud547AMetMA3qD4FdJ/cz8A/xzmu43pcY7v
         +ZRA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530/uwYDkoFfzP9el2/w9AW4wXYcgihkQ2pyfza6PP00vTu/f8w9
	0XKr8rQGFTbjvF005PY2O+M=
X-Google-Smtp-Source: ABdhPJwbQmEX6LHx+aAxjtSBLdCRbPm0ip71XCuGE80KjP2l63WnJyTvw8IvYKynAh/ilbT++aO+uA==
X-Received: by 2002:a63:8c05:: with SMTP id m5mr8623537pgd.223.1623727191003;
        Mon, 14 Jun 2021 20:19:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:d915:: with SMTP id c21ls11601045pjv.2.gmail; Mon,
 14 Jun 2021 20:19:50 -0700 (PDT)
X-Received: by 2002:a17:90a:6b46:: with SMTP id x6mr2519331pjl.163.1623727190499;
        Mon, 14 Jun 2021 20:19:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623727190; cv=none;
        d=google.com; s=arc-20160816;
        b=PJBMGUduO2yAb7vmai2mdO5+r3oLe08CUndh12Rev3jDr+SjrR84kVyPok5fhmUOpN
         zbwl4bEJH+Sb8fnsYqmAWMLRHjCr9ezntfakoLb+1Kjwkt1HgvqTfPEvsm4i+D1ZXhd7
         emyyznCBR+Teu7U/O3ud4AS4VVWx5rv5aV2kQuUe+iZfDQ9UAISplfsX2IpuT1yb1ugQ
         QiIxLB2hZSBHS1skFBCqzC5D5ck5JFYOmyIEl6Rabm3l5UDxqhWz3VubqOQ5pCFhuMQn
         mfvuRYLV+gl/p5CZHk5vJ7P7lWMtrOk5i/j0XoTnKfskDWlV+rCbvsxmqM9um+ReFYxj
         bneA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:to:subject:cc
         :ironport-sdr:ironport-sdr;
        bh=N2DEB1ITnnFvkJfXB/C5Ye1wSjRLehjxr/rzcSWUE1s=;
        b=U9Fim6DuVywGEcJhVB35ppY9cxBPrvPw5MoNj/egpW4QpS7U1NUpac/kwLJ9y0AkFc
         f/aAuc/ztBs2sCNvsD2XASVwmDxXHk+DaunyUtxfY1bjM6Y2Dx5y6YjzXe1+VLQA8jcH
         17agxKq9/HhlqMxQb06H58XqoykA5qcRmmhfY7Uox2Sd9Qzm5hc2J2Ksv07SBTA0Cmtx
         B/B0xoFecrUwtH5bPEWbU6gR+iIH5XS6JRPLEBUtl1tdVlVwSjr94vkM/49FL3kaXPfu
         uPFRVEJe/F4yHDEDjRbgQLrkefrBGdQVe5zYpsL1/qJRfj1IKaMq75ffDKSdKLbnp5v/
         MUeQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of baolu.lu@linux.intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=baolu.lu@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga05.intel.com (mga05.intel.com. [192.55.52.43])
        by gmr-mx.google.com with ESMTPS id k78si131604pfd.5.2021.06.14.20.19.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 14 Jun 2021 20:19:50 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of baolu.lu@linux.intel.com designates 192.55.52.43 as permitted sender) client-ip=192.55.52.43;
IronPort-SDR: sWbKpD2nXZ3rG8lwoaIbJ+cSDtDBqvor+3TDwUe6jccnV9OoA1KRhjVePAjcDWEpz+HX/Jy0Xs
 H3R8QHJeMqnQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10015"; a="291547705"
X-IronPort-AV: E=Sophos;i="5.83,275,1616482800"; 
   d="scan'208";a="291547705"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Jun 2021 20:19:50 -0700
IronPort-SDR: ri4P/H+XUswIbWAc9hVv3si7t688QdvlLEeTmogJr8vCfAWVYiaXKElgKkA6kTrQtWx9WyXZnZ
 J5Sxp6TIABFw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,275,1616482800"; 
   d="scan'208";a="554308038"
Received: from unknown (HELO [10.239.159.118]) ([10.239.159.118])
  by fmsmga001.fm.intel.com with ESMTP; 14 Jun 2021 20:19:48 -0700
Cc: baolu.lu@linux.intel.com, kbuild-all@lists.01.org,
 clang-built-linux@googlegroups.com,
 Linux Memory Management List <linux-mm@kvack.org>,
 Joerg Roedel <jroedel@suse.de>, Fenghua Yu <fenghua.yu@intel.com>
Subject: Re: [linux-next:master 8472/9209] drivers/iommu/intel/perf.c:16:
 warning: expecting prototype for perf.c(). Prototype was for
 DEFINE_SPINLOCK() instead
To: kernel test robot <lkp@intel.com>
References: <202106121952.9eBLxaDd-lkp@intel.com>
From: Lu Baolu <baolu.lu@linux.intel.com>
Message-ID: <09a11577-5c2d-808d-ac70-8d546ef43199@linux.intel.com>
Date: Tue, 15 Jun 2021 11:18:24 +0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.8.1
MIME-Version: 1.0
In-Reply-To: <202106121952.9eBLxaDd-lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: baolu.lu@linux.intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of baolu.lu@linux.intel.com
 designates 192.55.52.43 as permitted sender) smtp.mailfrom=baolu.lu@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
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

On 6/12/21 7:47 PM, kernel test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> head:   25fe90f43fa312213b653dc1f12fd2d80f855883
> commit: 456bb0b97f00fe8defba155c0a4c48d951635395 [8472/9209] iommu/vt-d: Expose latency monitor data through debugfs
> config: x86_64-randconfig-a006-20210612 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project d2012d965d60c3258b3a69d024491698f8aec386)
> reproduce (this is a W=1 build):
>          wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>          chmod +x ~/bin/make.cross
>          # install x86_64 cross compiling tool for clang build
>          # apt-get install binutils-x86-64-linux-gnu
>          # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=456bb0b97f00fe8defba155c0a4c48d951635395
>          git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
>          git fetch --no-tags linux-next master
>          git checkout 456bb0b97f00fe8defba155c0a4c48d951635395
>          # save the attached .config to linux build tree
>          COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
>     drivers/iommu/intel/perf.c:16: warning: Function parameter or member 'latency_lock' not described in 'DEFINE_SPINLOCK'
>>> drivers/iommu/intel/perf.c:16: warning: expecting prototype for perf.c(). Prototype was for DEFINE_SPINLOCK() instead

This seems to be a kernel doc warning and should be fixed in the header
file for DEFINE_SPINLOCK. Did I miss anything?

DEFINE_SPINLOCK is used everywhere, perhaps we need to add some comments
around it?

Best regards,
baolu

> 
> 
> vim +16 drivers/iommu/intel/perf.c
> 
> 55ee5e67a59a1b Lu Baolu 2021-06-10  15
> 55ee5e67a59a1b Lu Baolu 2021-06-10 @16  static DEFINE_SPINLOCK(latency_lock);
> 55ee5e67a59a1b Lu Baolu 2021-06-10  17
> 
> :::::: The code at line 16 was first introduced by commit
> :::::: 55ee5e67a59a1b6f388d7a1c7b24022145f47a3e iommu/vt-d: Add common code for dmar latency performance monitors
> 
> :::::: TO: Lu Baolu <baolu.lu@linux.intel.com>
> :::::: CC: Joerg Roedel <jroedel@suse.de>
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/09a11577-5c2d-808d-ac70-8d546ef43199%40linux.intel.com.
