Return-Path: <clang-built-linux+bncBAABB76Z56DQMGQEMDV3KQI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1038.google.com (mail-pj1-x1038.google.com [IPv6:2607:f8b0:4864:20::1038])
	by mail.lfdr.de (Postfix) with ESMTPS id 618CE3D472C
	for <lists+clang-built-linux@lfdr.de>; Sat, 24 Jul 2021 12:35:45 +0200 (CEST)
Received: by mail-pj1-x1038.google.com with SMTP id in8-20020a17090b4388b0290175556801d5sf4557290pjb.2
        for <lists+clang-built-linux@lfdr.de>; Sat, 24 Jul 2021 03:35:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627122944; cv=pass;
        d=google.com; s=arc-20160816;
        b=n/K44+khGN2qpqeAm1O6YGatYbAncIl+M9JsXtmTiEwXkpXcu6DqMmFD8joi1yFRy4
         u2L02hD2dtdi94u/tG080Ocyu9sq0f72hP2i1ksGVMVznSrA1Rbi0yVh0z+XZoM+Pdmo
         HXpUZtl+ZlK7F84sMh42QJY0O4iJZfsLG9LN2OQsSfSrbC5fWRyJSpj4zvLiI+QqUKMs
         WUZRKzLaozIBZAUdoeqSvtg2xfX65sIL35bkpymlk9/alLZ6QPvBYmqOA9JbknPIkTCB
         jXk8eiv+QqPIB0Sh79QCZMQIkmiVAwDWT5TMfpjCelVmL6JkcxGjMdkHAowYJ+RYYjrx
         yIzA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:mime-version:user-agent
         :date:message-id:from:cc:references:to:subject:sender:dkim-signature;
        bh=vFuQJtQ4P8ZQbcglldiwTXE3RO7Z06/2rO1xz/fgu9U=;
        b=YAQuI8ZxJhk4ahb1+HEd9nIVHTsDATReARvfmDrNB+xkGVRP9JsheLtuGEHaE06f1J
         kUKMCnUVoDV53NpWkKInty7QC64s1AzSCJf0L+ItjyNPuZ0z3dTcoZ4M6cKO5GX5KsYB
         SYe5kYhuK5M5bdMFtbqSnhogwPp4RrCfhLOAJNnKgbZ3iXHRGVelz7p6qlFtO17q1+JB
         tQyRIoF0ca8UQ8fBX+oXcsvAQMmO2+m53unIVctc/APhqfkEt9s9RVxFPnXNfiavgAQz
         zTa7oM9LcqPhwOky0SSVCcEEOWIM4ufYlBLfd/rGCSzG9WBf93C97ItUwl8F4ELvxg43
         eV7A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of liudongdong3@huawei.com designates 45.249.212.187 as permitted sender) smtp.mailfrom=liudongdong3@huawei.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=huawei.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:references:cc:from:message-id:date:user-agent
         :mime-version:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vFuQJtQ4P8ZQbcglldiwTXE3RO7Z06/2rO1xz/fgu9U=;
        b=Fd0fDM/k3xw6X0GioWqKT63W4RYK3DNwOohwapPMhAiO4gUg5T7VPMS/Sw1z1c6tMR
         qrSk0/jf0Hse3A3WrcilmfvWMZ4njEoVjvyaRUMtB9Gn8YK/WfI/1BDI8h3pRXRWsFTF
         sSXbkPns2AkXw0OPRflh5D5ljNeJEIAfwKSB2AjD7WfA4ywML5V/5ljrVLQHG/onN7vL
         hSDXgMwawEYk5fn6VtBXKsHqbP9m6huGrJoK87T02SbhuHzUngs4p+dJtK6eWz4Pb2k/
         cjyLsZ2swmZH07R7aVCeDQ5EMeqAp4/o7pwkik7IGf6Y6Eg7UHIujpI6xTEjvjiKR0Fp
         hdRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:references:cc:from:message-id
         :date:user-agent:mime-version:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=vFuQJtQ4P8ZQbcglldiwTXE3RO7Z06/2rO1xz/fgu9U=;
        b=VwbSG4V6ZOHCTsnHYPhFORtJS3Yaoj6iQM7tvE87/37hhr3x9gDtIjW87cppG5T81P
         RdoSU7WHdXc5muEf6Qthc1P2T2YI4vrMVDGYFxd2UlqQY17TdkFZPMdYRBAQIK31ndSh
         h8CT0Q79K03TbS09ABxwBToer/fWjY63X/8Pnmhh0sdaKTd07X6fZhf+e8NcnFBsg5f3
         I0CFx7HEQ+XtALrusowOkEjYqDpoScL4VtWsPXwPEWTMsK5MOFyVV4tHf54YdtTl3OfJ
         /mJ1ocabwKKRcA1NjCvj55ap/yBn6BTNGv7BUGB2mOsuh2qbWtjiDph2WwLy8J1dqouB
         SDJg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5314y+JfNtfHS6rAAT3H51kBwThVQJJ3Y6avLOentth5L6l/A/Jx
	+hVKrupma8ElW936DkbGnR8=
X-Google-Smtp-Source: ABdhPJxSDAPiO7qeLxb+zbnfXPywnkfgkSaqJg8RU8Ndmya2cgqJEV08eCNpuhD5OFO8K5dNof7z4g==
X-Received: by 2002:a17:902:eb52:b029:129:bc24:ce5e with SMTP id i18-20020a170902eb52b0290129bc24ce5emr6954175pli.67.1627122944112;
        Sat, 24 Jul 2021 03:35:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6a00:c96:: with SMTP id a22ls5059978pfv.4.gmail; Sat, 24
 Jul 2021 03:35:43 -0700 (PDT)
X-Received: by 2002:a63:6784:: with SMTP id b126mr8890669pgc.421.1627122943618;
        Sat, 24 Jul 2021 03:35:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627122943; cv=none;
        d=google.com; s=arc-20160816;
        b=YhxK8L8tF05q+QBBYt1hTMMJsTZ+HBDf3MvbkiPmQ9ypTizQUE0hDy7qGUk3+0HBkp
         jr60jEMY9WCIlojOOZ/+acMlXWoKBMvLgCW46kNBBKz6u3UtrlcxFrQl2o3LYN5VwdwD
         YdaXkJljREWVuwWells4eJ7GzDvJ4FwOwZnBJpuFFO1cG+C8uL0rDy1RUgt0HcOTO/gM
         +AZVwfY+Dc50eOmI5SJlnw7Z59eyTfYgdWbaTcPz/OTwOcBi5Yj8V/xNl91nRgKEdgX7
         7DN5jt39bktVUXMIVW4sy21AggevPmikljz38Hw+my2kcgNKLkCPz7t5bMsKQzmxjorR
         jCNg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:mime-version:user-agent:date
         :message-id:from:cc:references:to:subject;
        bh=3EOupVM4vmFI9RvFrc19TEQ/FvCbw/7tY96fQIVF0Yg=;
        b=mxtb6qn84judY5dCMkjI7d8+VYWjbAkqCUJH6ZlnvjW6fMC7xvtw+I2BpymCSwn5YJ
         usf27t9iWCzU42/LSODtTYcP1noNZl2xoN+hXJHWQiBrt4DqHhT0f2oR5gvmDPrO4gR4
         5jCKN0jcp0T7nzRPvRclJ+UF6lgLNX5qoL9GJ7txKxrT1LRxfQIA4r575ZrAs0BHSgQF
         Ag77uqfdLGi49NqZJiuqrqYZ+EEOcNvjnjb+N2HDOZ5vBlUoF3oF9vNm19fWA4RZpLtF
         Z4seTARfyvs+wkptVv49wTFb22PEc7zDYm1U+0fxFCSiPmHjJksh2HqJQQ/9Ih0oEn5l
         e08A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of liudongdong3@huawei.com designates 45.249.212.187 as permitted sender) smtp.mailfrom=liudongdong3@huawei.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=huawei.com
Received: from szxga01-in.huawei.com (szxga01-in.huawei.com. [45.249.212.187])
        by gmr-mx.google.com with ESMTPS id cp24si108091pjb.3.2021.07.24.03.35.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Jul 2021 03:35:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of liudongdong3@huawei.com designates 45.249.212.187 as permitted sender) client-ip=45.249.212.187;
Received: from dggeme758-chm.china.huawei.com (unknown [172.30.72.57])
	by szxga01-in.huawei.com (SkyGuard) with ESMTP id 4GX2YD1KWYzZsKR;
	Sat, 24 Jul 2021 18:31:44 +0800 (CST)
Received: from [10.67.103.235] (10.67.103.235) by
 dggeme758-chm.china.huawei.com (10.3.19.104) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
 15.1.2176.2; Sat, 24 Jul 2021 18:35:09 +0800
Subject: Re: [PATCH V6 7/8] PCI: Add "pci=disable_10bit_tag=" parameter for
 peer-to-peer support
To: kernel test robot <lkp@intel.com>, <helgaas@kernel.org>,
	<hch@infradead.org>, <kw@linux.com>, <logang@deltatee.com>,
	<linux-pci@vger.kernel.org>, <rajur@chelsio.com>, <hverkuil-cisco@xs4all.nl>
References: <1627038402-114183-8-git-send-email-liudongdong3@huawei.com>
 <202107240055.m4UVeYyu-lkp@intel.com>
CC: <clang-built-linux@googlegroups.com>, <kbuild-all@lists.01.org>,
	<linux-media@vger.kernel.org>, <netdev@vger.kernel.org>
From: Dongdong Liu <liudongdong3@huawei.com>
Message-ID: <dac094c5-24ce-43bc-55be-30230e20e08f@huawei.com>
Date: Sat, 24 Jul 2021 18:35:08 +0800
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:45.0) Gecko/20100101
 Thunderbird/45.7.1
MIME-Version: 1.0
In-Reply-To: <202107240055.m4UVeYyu-lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
X-Originating-IP: [10.67.103.235]
X-ClientProxiedBy: dggems705-chm.china.huawei.com (10.3.19.182) To
 dggeme758-chm.china.huawei.com (10.3.19.104)
X-CFilter-Loop: Reflected
X-Original-Sender: liudongdong3@huawei.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of liudongdong3@huawei.com designates 45.249.212.187 as
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



On 2021/7/24 0:58, kernel test robot wrote:
> Hi Dongdong,
>
> Thank you for the patch! Perhaps something to improve:
>
> [auto build test WARNING on pci/next]
> [also build test WARNING on linuxtv-media/master linus/master v5.14-rc2 next-20210723]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use '--base' as documented in
> https://git-scm.com/docs/git-format-patch]
>
> url:    https://github.com/0day-ci/linux/commits/Dongdong-Liu/PCI-Enable-10-Bit-tag-support-for-PCIe-devices/20210723-190930
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/helgaas/pci.git next
> config: x86_64-randconfig-b001-20210723 (attached as .config)
> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 9625ca5b602616b2f5584e8a49ba93c52c141e40)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         # https://github.com/0day-ci/linux/commit/2ff0b803971a3df5815c96c5c4874f4eef64fa2f
>         git remote add linux-review https://github.com/0day-ci/linux
>         git fetch --no-tags linux-review Dongdong-Liu/PCI-Enable-10-Bit-tag-support-for-PCIe-devices/20210723-190930
>         git checkout 2ff0b803971a3df5815c96c5c4874f4eef64fa2f
>         # save the attached .config to linux build tree
>         mkdir build_dir
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross O=build_dir ARCH=x86_64 SHELL=/bin/bash drivers/pci/
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All warnings (new ones prefixed by >>):
>
>    drivers/pci/pci.c:6618:34: error: expected identifier
>            pcie_capability_clear_word(dev, PCI_EXP_DEVCTL2,
>                                            ^
>    include/uapi/linux/pci_regs.h:657:26: note: expanded from macro 'PCI_EXP_DEVCTL2'
>    #define PCI_EXP_DEVCTL2         40      /* Device Control 2 */
>                                    ^
>>> drivers/pci/pci.c:6618:2: warning: declaration specifier missing, defaulting to 'int'
>            pcie_capability_clear_word(dev, PCI_EXP_DEVCTL2,
>            ^
>            int
>    drivers/pci/pci.c:6618:28: error: this function declaration is not a prototype [-Werror,-Wstrict-prototypes]
>            pcie_capability_clear_word(dev, PCI_EXP_DEVCTL2,
>                                      ^
>    drivers/pci/pci.c:6618:2: error: conflicting types for 'pcie_capability_clear_word'
>            pcie_capability_clear_word(dev, PCI_EXP_DEVCTL2,
>            ^
>    include/linux/pci.h:1161:19: note: previous definition is here
>    static inline int pcie_capability_clear_word(struct pci_dev *dev, int pos,
>                      ^
>    drivers/pci/pci.c:6621:2: error: expected parameter declarator
>            pci_info(dev, "disabled 10-Bit Tag Requester\n");
>            ^
>    include/linux/pci.h:2472:46: note: expanded from macro 'pci_info'
>    #define pci_info(pdev, fmt, arg...)     dev_info(&(pdev)->dev, fmt, ##arg)
>                                                     ^
>    drivers/pci/pci.c:6621:2: error: expected ')'
>    include/linux/pci.h:2472:46: note: expanded from macro 'pci_info'
>    #define pci_info(pdev, fmt, arg...)     dev_info(&(pdev)->dev, fmt, ##arg)
>                                                     ^
>    drivers/pci/pci.c:6621:2: note: to match this '('
>    include/linux/pci.h:2472:37: note: expanded from macro 'pci_info'
>    #define pci_info(pdev, fmt, arg...)     dev_info(&(pdev)->dev, fmt, ##arg)
>                                            ^
>    include/linux/dev_printk.h:118:11: note: expanded from macro 'dev_info'
>            _dev_info(dev, dev_fmt(fmt), ##__VA_ARGS__)
>                     ^
>    drivers/pci/pci.c:6621:2: warning: declaration specifier missing, defaulting to 'int'
>            pci_info(dev, "disabled 10-Bit Tag Requester\n");
>            ^
>            int
>    include/linux/pci.h:2472:37: note: expanded from macro 'pci_info'
>    #define pci_info(pdev, fmt, arg...)     dev_info(&(pdev)->dev, fmt, ##arg)
>                                            ^
>    include/linux/dev_printk.h:118:2: note: expanded from macro 'dev_info'
>            _dev_info(dev, dev_fmt(fmt), ##__VA_ARGS__)
>            ^
>    drivers/pci/pci.c:6621:2: error: this function declaration is not a prototype [-Werror,-Wstrict-prototypes]
>    include/linux/pci.h:2472:37: note: expanded from macro 'pci_info'
>    #define pci_info(pdev, fmt, arg...)     dev_info(&(pdev)->dev, fmt, ##arg)
>                                            ^
>    include/linux/dev_printk.h:118:11: note: expanded from macro 'dev_info'
>            _dev_info(dev, dev_fmt(fmt), ##__VA_ARGS__)
>                     ^
>    drivers/pci/pci.c:6621:2: error: conflicting types for '_dev_info'
>    include/linux/pci.h:2472:37: note: expanded from macro 'pci_info'
>    #define pci_info(pdev, fmt, arg...)     dev_info(&(pdev)->dev, fmt, ##arg)
>                                            ^
>    include/linux/dev_printk.h:118:2: note: expanded from macro 'dev_info'
>            _dev_info(dev, dev_fmt(fmt), ##__VA_ARGS__)
>            ^
>    include/linux/dev_printk.h:56:6: note: previous declaration is here
>    void _dev_info(const struct device *dev, const char *fmt, ...);
>         ^
>    drivers/pci/pci.c:6622:1: error: extraneous closing brace ('}')
>    }
>    ^
>    2 warnings and 8 errors generated.
>
>
> vim +/int +6618 drivers/pci/pci.c
>
>   6580	
>   6581		if (!disable_10bit_tag_param)
>   6582			return;
>   6583	
>   6584		p = disable_10bit_tag_param;
>   6585		while (*p) {
>   6586			ret = pci_dev_str_match(dev, p, &p);
>   6587			if (ret < 0) {
>   6588				pr_info_once("PCI: Can't parse disable_10bit_tag parameter: %s\n",
>   6589					     disable_10bit_tag_param);
>   6590	
>   6591				break;
>   6592			} else if (ret == 1) {
>   6593				/* Found a match */
>   6594				break;
>   6595			}
>   6596	
>   6597			if (*p != ';' && *p != ',') {
>   6598				/* End of param or invalid format */
>   6599				break;
>   6600			}
>   6601			p++;
>   6602		}
>   6603	
>   6604		if (ret != 1)
>   6605			return;
>   6606	
>   6607	#ifdef CONFIG_PCI_IOV
>   6608		if (dev->is_virtfn) {
>   6609			iov = dev->physfn->sriov;
>   6610			iov->ctrl &= ~PCI_SRIOV_CTRL_VF_10BIT_TAG_REQ_EN;
>   6611			pci_write_config_word(dev, iov->pos + PCI_SRIOV_CTRL,
>   6612					      iov->ctrl);
>   6613			pci_info(dev, "disabled PF SRIOV 10-Bit Tag Requester\n");
>   6614			return;
>   6615	#endif
>   6616		}
I made a mistake here, will fix.

Thanks,
Dongdong
>   6617	
>> 6618		pcie_capability_clear_word(dev, PCI_EXP_DEVCTL2,
>   6619					   PCI_EXP_DEVCTL2_10BIT_TAG_REQ_EN);
>   6620	
>   6621		pci_info(dev, "disabled 10-Bit Tag Requester\n");
>   6622	}
>   6623	
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/dac094c5-24ce-43bc-55be-30230e20e08f%40huawei.com.
