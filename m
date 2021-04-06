Return-Path: <clang-built-linux+bncBAABBDMVV6BQMGQET3WF5ZQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3a.google.com (mail-io1-xd3a.google.com [IPv6:2607:f8b0:4864:20::d3a])
	by mail.lfdr.de (Postfix) with ESMTPS id D5BB1354AFB
	for <lists+clang-built-linux@lfdr.de>; Tue,  6 Apr 2021 04:42:22 +0200 (CEST)
Received: by mail-io1-xd3a.google.com with SMTP id u23sf12112463ioc.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 05 Apr 2021 19:42:22 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617676941; cv=pass;
        d=google.com; s=arc-20160816;
        b=fbmQeD2C8STvy7N74pnodJMAVmHeWTS3e9e03KbYJy47eIDfzvQ4zAT2GNKZTQIRNe
         KVSOi062iYeK3iRz9gbmSfjWbd4Bw2zwcU4nXeprYnko8VII91ihmQqU00QiG3KaG//Z
         LU7U2OokOWijbJ4F+/UB52XXPWBahDog6AJcf1SpPW18aUhF3gLm2CkZl0VKc7bfEbE2
         wCuHEXRwaPFLJmSZRvEwhrLbTH2Pit1aDOMVQwabniE1z8T0KJRGX9s3hC7ZU82nY4fs
         iQK0kkZblmyznnNAjBkj/B6qYij+gjVls3W9QTG2evRLkO+8D1r4AUPuentmnxIkEi7I
         2alQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:mime-version:user-agent
         :date:message-id:from:cc:references:to:subject:sender:dkim-signature;
        bh=kQGaAtzKHH/Em2AzTapXKwEu9nDteLVNx+7K3Yg1z+I=;
        b=VZnqojOuom1yTaZ8iPqKee6Ig6XtN3/HKsTufpxyjtljnI58TIgKvE1+enWNjoPfHE
         dS0iJYUK8+ysWzm4VRqTRYR9VJcheI5XR0+5ZqYU1pD6l+WXZehuZo95XuJWwsRtJmXy
         OmLxxNb+1KW4oLfyW0Y5qJEBjndKIdB/ngY/WtWGtEVuha+mzs4i84sBTW2ivV9k6rSm
         vQamgaak/eIEE4aIoFIfi4Tu630rRKtcR1wAOQVlVmJyiwFSd2z+Ra2lefoILGRwukWx
         1ogliAc2XHJ8Q/CM3ygJc3+s+izOajcxnIr5q73XjnHnVgcF62qR/ZY9KhjcK57a+6zK
         nxpw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of liudongdong3@huawei.com designates 45.249.212.35 as permitted sender) smtp.mailfrom=liudongdong3@huawei.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:references:cc:from:message-id:date:user-agent
         :mime-version:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=kQGaAtzKHH/Em2AzTapXKwEu9nDteLVNx+7K3Yg1z+I=;
        b=pmtCzfn0knN2gt7MEd4dq10qoB1Axq6NVSxV1nPWbkeuvHecYKLdI9jGeeJ7eOg20V
         EkrtRsN3Y0l/vPNZ6VZvCncMzU3V5J6SdFn0QXzgGnP7N7e63mJPhfJxtQYKoYtmqBPr
         xFttNMnZNiA4+05DcZvMdIEZM7XWORzFXdMxhfI6rtAQSk7UEKifjrzIHJ1MwRaeqEvT
         gand18Zs3sQeIHIy60iYXK/sFcGV8JRd9yZFHuRzs9tvtdQmd5EHj4hjLOAkU39AKZEa
         FLM8cpUUYT+cmqTMIpYh3Mq/0wkdJk/VXbse8mVbyjy+Nh1z4DCV6CskSUqA7ATUpL+F
         v4fQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:references:cc:from:message-id
         :date:user-agent:mime-version:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=kQGaAtzKHH/Em2AzTapXKwEu9nDteLVNx+7K3Yg1z+I=;
        b=sncSgXmExdGmbKSShAICGTOi8N/slZxkRnmPM7jR9rn7UnYVAFIrECUk7Wnz5QgZnh
         GGCCnR4dLfNfMFvGuC3XohYuwwiG9s5m5iClBD8VdeJgg4Bmk575vhIeXP2NcQxFSLDM
         3Sh953XjD/uq5pBZlTjCXqw34B4GnzFvvXXH7fPk8e7s2Nr3LNkEjaqvl1bIlQUtv3ZH
         i6vn1h43xvdj3HfhlHY/ET6GFcQf1BNg+vPNgkPLCRURaGRl7qkpu10DbvizY844gN4g
         8S2OW4yjcwGatgqbSFsyk0f2nL+0gLNPBbpyXYGsE7q23ACdjNcNbtqheFxBADrbSLhJ
         0XOg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5320FKKvNbdEwwC+1rx8jyhpRuyD4xjFDvUofKT6abMCP6k9/NAV
	JjMltdV+FhfH8sIkShEHP0o=
X-Google-Smtp-Source: ABdhPJw9PMSZpG03TkzwdU09lKYExak0nBcB92N0lsOAgeHzwGgeHHKG4lfn7C3qse03q/u68/To3w==
X-Received: by 2002:a05:6638:3a8:: with SMTP id z8mr26656510jap.111.1617676941386;
        Mon, 05 Apr 2021 19:42:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:cb86:: with SMTP id z6ls1273163ilo.11.gmail; Mon, 05 Apr
 2021 19:42:21 -0700 (PDT)
X-Received: by 2002:a92:c7b4:: with SMTP id f20mr8236179ilk.170.1617676941051;
        Mon, 05 Apr 2021 19:42:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617676941; cv=none;
        d=google.com; s=arc-20160816;
        b=zLgVhUFAtqExRhq5ADLqFQ0LZd+U8JmxmKGvQLgCRJSwds9uuyTHDhl0MlDSJkHHAq
         Od8KWDB8f+8PzS5f+FytikN5rnuZcbrlRSRAABA8Li/Hge35m/9h79KYEKfGB9N5x8xF
         LWvuW+RKWQfA1z4HFgVo1en+U2lfBUk1UjTnikQDS/XOndCmkPbuB3GGY0RjDHUwdWqC
         IHloCo3r1SwR2+b4o1xmRIvUPEag1Rv2cB5jb0GU4iFDAsJd6h4BNvtVmVFp4H3yB0Ar
         bF25+F/efZfMrNA3zNSoagLIf2yceIBaVSSIo9KF2nREWdSpdIkaAKle48AU8D7Pxrh5
         q1qQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:mime-version:user-agent:date
         :message-id:from:cc:references:to:subject;
        bh=HDO4BCUKWPMitKSs6THsEYxJWUv0ax9AaXfY1robJOA=;
        b=Au0Fmfg0x2gc9HB+ZLXfXhnIIOswg5z3jVePAXn1zOvNzQVzdX8BoPzjHrgWETlMA8
         wDpoXpRhqGvCGR9EFc8OnmdHjZyagHMjjMGIC6MtvgC906yl50Q9PHx28hSZvGodKgA/
         oEA8UFMeJ3Ws8oueItZgTnSCY5XD/ZH5dlxOXgy1KbXM2sNznYveI/bPdidd1eIy/D6q
         9XLzcRZM3S+z0TbgjAfFkc8sK9e9SdP9tQGV1noMBk1yElPwAkzfI+KmPSIP309uiKuh
         TmKxDbjwUbDfUXf5pQyqnkiWzSlb/n2Ch0Sqi4JaAPexChmD8hZKq2qGPUQRSyvrRPlt
         Qw2w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of liudongdong3@huawei.com designates 45.249.212.35 as permitted sender) smtp.mailfrom=liudongdong3@huawei.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=huawei.com
Received: from szxga07-in.huawei.com (szxga07-in.huawei.com. [45.249.212.35])
        by gmr-mx.google.com with ESMTPS id r15si81315ill.3.2021.04.05.19.42.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Apr 2021 19:42:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of liudongdong3@huawei.com designates 45.249.212.35 as permitted sender) client-ip=45.249.212.35;
Received: from DGGEMS401-HUB.china.huawei.com (unknown [172.30.72.60])
	by szxga07-in.huawei.com (SkyGuard) with ESMTP id 4FDsDm70Yfz9wSf;
	Tue,  6 Apr 2021 10:39:36 +0800 (CST)
Received: from [10.67.103.235] (10.67.103.235) by
 DGGEMS401-HUB.china.huawei.com (10.3.19.201) with Microsoft SMTP Server id
 14.3.498.0; Tue, 6 Apr 2021 10:41:42 +0800
Subject: Re: [PATCH 4/4] PCI: Enable 10-Bit tag support for PCIe RP devices
To: kernel test robot <lkp@intel.com>, <helgaas@kernel.org>,
	<linux-pci@vger.kernel.org>
References: <1617440059-2478-5-git-send-email-liudongdong3@huawei.com>
 <202104032041.7KejD0wG-lkp@intel.com>
CC: <kbuild-all@lists.01.org>, <clang-built-linux@googlegroups.com>
From: Dongdong Liu <liudongdong3@huawei.com>
Message-ID: <2c074283-3822-18ec-4907-4eef6247f065@huawei.com>
Date: Tue, 6 Apr 2021 10:41:42 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.7.1
MIME-Version: 1.0
In-Reply-To: <202104032041.7KejD0wG-lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Originating-IP: [10.67.103.235]
X-CFilter-Loop: Reflected
X-Original-Sender: liudongdong3@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of liudongdong3@huawei.com designates 45.249.212.35 as
 permitted sender) smtp.mailfrom=liudongdong3@huawei.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=huawei.com
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


Thnaks for your report. I made a mistake.
Maybe I need to move these functions implementation
to drivers/pci/pcie/portdrv_pci.c. No need to
define in drivers/pci/pci.h

Thanks,
Dongdong
On 2021/4/3 20:33, kernel test robot wrote:
> Hi Dongdong,
>
> Thank you for the patch! Yet something to improve:
>
> [auto build test ERROR on pci/next]
> [also build test ERROR on v5.12-rc5 next-20210401]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use '--base' as documented in
> https://git-scm.com/docs/git-format-patch]
>
> url:    https://github.com/0day-ci/linux/commits/Dongdong-Liu/PCI-Enable-10-Bit-tag-support-for-PCIe-devices/20210403-171726
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/helgaas/pci.git next
> config: x86_64-randconfig-a004-20210403 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 0fe8af94688aa03c01913c2001d6a1a911f42ce6)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         # https://github.com/0day-ci/linux/commit/c1497e514c78375b8c9e9e074e5b84c62eaef20f
>         git remote add linux-review https://github.com/0day-ci/linux
>         git fetch --no-tags linux-review Dongdong-Liu/PCI-Enable-10-Bit-tag-support-for-PCIe-devices/20210403-171726
>         git checkout c1497e514c78375b8c9e9e074e5b84c62eaef20f
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All errors (new ones prefixed by >>):
>
>>> drivers/pci/probe.c:2096:6: error: redefinition of 'pci_configure_rp_10bit_tag'
>    void pci_configure_rp_10bit_tag(struct pci_dev *dev)
>         ^
>    drivers/pci/pci.h:468:20: note: previous definition is here
>    static inline void pci_configure_rp_10bit_tag(struct pci_dev *dev) {}
>                       ^
>    1 error generated.
>
>
> vim +/pci_configure_rp_10bit_tag +2096 drivers/pci/probe.c
>
>   2095	
>> 2096	void pci_configure_rp_10bit_tag(struct pci_dev *dev)
>   2097	{
>   2098		u8 support = 1;
>   2099		u32 cap;
>   2100		int ret;
>   2101	
>   2102		if (!pci_is_pcie(dev))
>   2103			return;
>   2104	
>   2105		if (pci_pcie_type(dev) != PCI_EXP_TYPE_ROOT_PORT)
>   2106			return;
>   2107	
>   2108		if (dev->subordinate == NULL)
>   2109			return;
>   2110	
>   2111		pci_10bit_tag_comp_support(dev, &support);
>   2112		if (!support)
>   2113			return;
>   2114	
>   2115		/*
>   2116		 * PCIe spec 5.0r1.0 section 2.2.6.2 implementation note
>   2117		 * In configurations where a Requester with 10-Bit Tag Requester capability
>   2118		 * needs to target multiple Completers, one needs to ensure that the
>   2119		 * Requester sends 10-Bit Tag Requests only to Completers that have 10-Bit
>   2120		 * Tag Completer capability. So we enable 10-Bit Tag Requester for root port
>   2121		 * only when the devices under the root port support 10-Bit Tag Completer.
>   2122		 */
>   2123		pci_walk_bus(dev->subordinate, pci_10bit_tag_comp_support, &support);
>   2124		if (!support)
>   2125			return;
>   2126	
>   2127		ret = pcie_capability_read_dword(dev, PCI_EXP_DEVCAP2, &cap);
>   2128		if (ret)
>   2129			return;
>   2130	
>   2131		if (!(cap & PCI_EXP_DEVCAP2_10BIT_TAG_REQ))
>   2132			return;
>   2133	
>   2134		pci_info(dev, "enabling 10-Bit Tag Requester\n");
>   2135		pcie_capability_set_word(dev, PCI_EXP_DEVCTL2,
>   2136					 PCI_EXP_DEVCTL2_10BIT_TAG_REQ_EN);
>   2137	}
>   2138	
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/2c074283-3822-18ec-4907-4eef6247f065%40huawei.com.
