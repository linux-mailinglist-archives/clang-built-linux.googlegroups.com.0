Return-Path: <clang-built-linux+bncBAABB6U7ZL5QKGQEPMF5GZY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103a.google.com (mail-pj1-x103a.google.com [IPv6:2607:f8b0:4864:20::103a])
	by mail.lfdr.de (Postfix) with ESMTPS id 016CB27BA55
	for <lists+clang-built-linux@lfdr.de>; Tue, 29 Sep 2020 03:38:04 +0200 (CEST)
Received: by mail-pj1-x103a.google.com with SMTP id fs5sf2218958pjb.7
        for <lists+clang-built-linux@lfdr.de>; Mon, 28 Sep 2020 18:38:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601343482; cv=pass;
        d=google.com; s=arc-20160816;
        b=db+LaCn2mLqpvUD5BY/c3mLYQL8KMWfZkGGnHkdLRrL3RrJXJTJx669iFu4f7psLi+
         JhbKhDL9K01oYLxTXNM8pPLdDOJgah5Aa3wPUagLPeu5w0EtyBl7Cv5XxxlU/Xbn55k0
         hjNiVZHHzpzp8B9UW7sQKw/Nf8oHJkhn27zN+ItDDRJWRFxnGCfA3hsUd4wgUo6/6yCd
         vceJ1m+NhmpgLtCed3pHpXvKwBN1nKK8Y2Dy76R5Vuyj2+sfbgj175CrVkYHMBl/niDl
         9oCNIQbXXqHronAMv0tIWa34wSBuIkjApSjHx+soTGuE6jkNn9PPapbPPDMAav8EL8Gc
         kkcA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:mime-version:user-agent
         :date:message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=qxHiD3WdG/aUWjEwGaLxWMxK+2w9Ze0fxXmrlnNfEuA=;
        b=JeV2XCGl4CBB6dHbV+7erefmVyWBtgJVjGGK/CUWhcHVBSK8TSuhb1gmQ4Sj/VDn9L
         8CvGM9Ljd87iAWbsDqBMyLeQqXXdh7a16YpLP5BVJVC5HyVCiCE9PGUp0YfgkdwbS6SK
         f39VlWdu/2Z65wioszrTSxFqiKK7NPc3AwKjraclpeC43TtPDDBpDTyPmYsVuBmjA8xK
         vl4ZxJ0H1JSMdA2NHy4A71XLl6mDF7GdHWGrQ6G3IvfBFJXgWuSAXzAH6lmYHjPQVqH8
         etGRGKYvoPvIyu1xHsn8BF5xVEULMAPwzNPT6cKpbqIPodq89loRkys0EL5Cv9A6o2Uk
         nFAg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of yukuai3@huawei.com designates 45.249.212.35 as permitted sender) smtp.mailfrom=yukuai3@huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qxHiD3WdG/aUWjEwGaLxWMxK+2w9Ze0fxXmrlnNfEuA=;
        b=c9JZHG0plZW2FLPXLcEYgzAz9B6+fq0MXMUbSRKVqHp4EKhXQmfNaZbIVfDvu829qI
         KCXfF/0jDWeGIz8gc68DPvndO1OKDxAqx/Uw7Q/uo1fotm59akFCRe41TNEhnCwefEvA
         tKxmHUyPK6by/+huTLh1AY6xZojNCSFie2U744hbRXHZYZ1YRbJBqzg4JiS0+YJymejk
         xWwt0Dsen3TAZzJJhFKA8kE2pFOBxByrHZSVWOoy2+24VinvVpcDxAHk8xKfOHLScE9H
         P7ylg1CGIPS8m+Ryc/07mD8a8tFHja06YjG1wNBt5KJsLWey3xm5Mjv3WxiI/UqVacfs
         IvvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qxHiD3WdG/aUWjEwGaLxWMxK+2w9Ze0fxXmrlnNfEuA=;
        b=eqA2ZaSCd3FNFu8z0vG4VlNkTtzcRelRdRLc5P4t8lY9dC0i7n1CvrDyCV7URZ1Ova
         DmFgSylXlNTBCib66bLeg226vBg69olTfrpljm78/iaIGvkkgFzjeHnlS+W39itpufMo
         DVQDoQVcLsljpvJF7qSDYo0GYCkVe3j6cDyFPvN3ZeiSlcwhYhSopO8gt3sK5/4xuI6i
         PtYp83pop6zEiH8+bwoz/pn5jqvcg2a9vZhSykgUrJvBRvFYuPxSraWTho+X7SG3rWTf
         L22uBxYAGUFFdDw7ZNqUWOfWORYhHxfKKd2jknCXtEdndWdpWWn3ZFVJl2HMfUyvITet
         gROg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532aWGkydkYwCAN2eGFvLz+wHwvdh8jn8NW9YYbd+XVr0ekJebcj
	UAtVnni7x907HDpparD53/c=
X-Google-Smtp-Source: ABdhPJyH6vdk9d8hWmvjVmcijiTMwdqZQN9PCp3LokmLAXBjQsWRW36ASj4kQaJZCzQS6+d3WQKy1Q==
X-Received: by 2002:a17:902:7608:b029:d0:cbe1:e70e with SMTP id k8-20020a1709027608b02900d0cbe1e70emr2174759pll.28.1601343482421;
        Mon, 28 Sep 2020 18:38:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:4812:: with SMTP id kn18ls609680pjb.0.gmail; Mon, 28
 Sep 2020 18:38:02 -0700 (PDT)
X-Received: by 2002:a17:90a:178e:: with SMTP id q14mr1756271pja.154.1601343481910;
        Mon, 28 Sep 2020 18:38:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601343481; cv=none;
        d=google.com; s=arc-20160816;
        b=veLYsjaPrDTx4HgNGJ+hLabph+SrT/RVUNDCgxtm5IRMdTmAEAn029qMaTnCv9MyJ/
         k//BK/cLVBiy9ps2v3CeC7G2nMe+6WaCGFvTfDQviru9ERxyba2f+EQ0Naw4NBHl4msB
         0Hhferm15UcnU3kQVAwY47NPbIY0DlIr+fdpysn+A6wNK5R7SbtlNonhZwG2vQXoEsX0
         /cZc9pkpbc3UK9NJ4XhTMmqu7/HXczL5H6WgQZdSOtrBOjC5zn7h+3CixryTY6lEy/9+
         QkbA3URWCquY3YGJB2RUjaP4eRZdIPAEduDCzGBhUjQUhkn8lcwcWb9NdBB55wsMZBtY
         DoHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject;
        bh=n3ykf4RZJuSHTmn3aSesZCpYzIh5ElL7u6zHBZU8PQI=;
        b=tYx+4FpPDsSCQ0bHtKEGyZYCxgSIWdgf7eWo7uYtpqMVSSWkNWe2iddevxIRbD3iEB
         N60ZC+FowxD+VGHhIdP4NnV9lKCIUL0rUlKC88afQ2+yjPGij/NqyjFW43hi4cJy0t3M
         kdpuclffOYVeLdtkW2LTaNBF0wg4ZWVQzmf8PfOWHkb44Gn5Dd7k4CSVKyZHvW4HkJO6
         WF56DP+CKhwU6ZhvcYjjqlrfwEe4YpSRBl0cqIMGza37CSxo0lAniQI7Wy0Wcx7+CKki
         F7TtdClT7t4K5LHjGEmInMTVxxxoyabEKzhXAm0SKCGelBodjIUia8e659kSx+eDzWvx
         zc3Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of yukuai3@huawei.com designates 45.249.212.35 as permitted sender) smtp.mailfrom=yukuai3@huawei.com
Received: from huawei.com (szxga07-in.huawei.com. [45.249.212.35])
        by gmr-mx.google.com with ESMTPS id lx5si49569pjb.2.2020.09.28.18.38.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 28 Sep 2020 18:38:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of yukuai3@huawei.com designates 45.249.212.35 as permitted sender) client-ip=45.249.212.35;
Received: from DGGEMS412-HUB.china.huawei.com (unknown [172.30.72.60])
	by Forcepoint Email with ESMTP id 12EF7EE1E3DDF35918F3;
	Tue, 29 Sep 2020 09:37:58 +0800 (CST)
Received: from [10.174.179.62] (10.174.179.62) by
 DGGEMS412-HUB.china.huawei.com (10.3.19.212) with Microsoft SMTP Server id
 14.3.487.0; Tue, 29 Sep 2020 09:37:48 +0800
Subject: Re: [PATCH] iommu/qcom: add missing put_device() call in
 qcom_iommu_of_xlate()
To: Will Deacon <will@kernel.org>, kernel test robot <lkp@intel.com>
CC: <robdclark@gmail.com>, <joro@8bytes.org>, <kbuild-all@lists.01.org>,
	<clang-built-linux@googlegroups.com>, <iommu@lists.linux-foundation.org>,
	<linux-arm-msm@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	<linux-kernel@vger.kernel.org>, <yi.zhang@huawei.com>
References: <20200918011357.909335-1-yukuai3@huawei.com>
 <202009220340.bJfsaeQn%lkp@intel.com>
 <20200921204556.GB3811@willie-the-truck>
 <20200928230835.GA12939@willie-the-truck>
From: "yukuai (C)" <yukuai3@huawei.com>
Message-ID: <3a2d2c51-dd4f-8384-805a-c91413ce4373@huawei.com>
Date: Tue, 29 Sep 2020 09:37:47 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <20200928230835.GA12939@willie-the-truck>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Originating-IP: [10.174.179.62]
X-CFilter-Loop: Reflected
X-Original-Sender: yukuai3@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of yukuai3@huawei.com designates 45.249.212.35 as
 permitted sender) smtp.mailfrom=yukuai3@huawei.com
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


On 2020/09/29 7:08, Will Deacon wrote:
> On Mon, Sep 21, 2020 at 09:45:57PM +0100, Will Deacon wrote:
>> On Tue, Sep 22, 2020 at 03:13:53AM +0800, kernel test robot wrote:
>>> Thank you for the patch! Perhaps something to improve:
>>>
>>> [auto build test WARNING on iommu/next]
>>> [also build test WARNING on linus/master v5.9-rc6 next-20200921]
>>> [cannot apply to robclark/msm-next]
>>> [If your patch is applied to the wrong git tree, kindly drop us a note.
>>> And when submitting patch, we suggest to use '--base' as documented in
>>> https://git-scm.com/docs/git-format-patch]
>>>
>>> url:    https://github.com/0day-ci/linux/commits/Yu-Kuai/iommu-qcom-add-missing-put_device-call-in-qcom_iommu_of_xlate/20200918-091341
>>> base:   https://git.kernel.org/pub/scm/linux/kernel/git/joro/iommu.git next
>>> config: arm64-randconfig-r023-20200920 (attached as .config)
>>> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 4e8c028158b56d9c2142a62464e8e0686bde3584)
>>> reproduce (this is a W=1 build):
>>>          wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>>>          chmod +x ~/bin/make.cross
>>>          # install arm64 cross compiling tool for clang build
>>>          # apt-get install binutils-aarch64-linux-gnu
>>>          # save the attached .config to linux build tree
>>>          COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm64
>>>
>>> If you fix the issue, kindly add following tag as appropriate
>>> Reported-by: kernel test robot <lkp@intel.com>
>>>
>>> All warnings (new ones prefixed by >>):
>>>
>>>>> drivers/iommu/arm/arm-smmu/qcom_iommu.c:601:4: warning: misleading indentation; statement is not part of the previous 'if' [-Wmisleading-indentation]
>>>                             return -EINVAL;
>>>                             ^
>>>     drivers/iommu/arm/arm-smmu/qcom_iommu.c:599:3: note: previous statement is here
>>>                     if (WARN_ON(qcom_iommu != dev_iommu_priv_get(dev)))
>>
>> Oh, this looks like a nasty bug. Seems we're missing some braces.
> 
> Yu Kuai: please could you send a v2 of this?
> 

Hi, Will

Thanks for your notice, will send a V2 soon.

Yu Kuai

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/3a2d2c51-dd4f-8384-805a-c91413ce4373%40huawei.com.
