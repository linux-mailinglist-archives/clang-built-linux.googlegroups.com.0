Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB7ET7OBQMGQE4RKJLDY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3b.google.com (mail-vk1-xa3b.google.com [IPv6:2607:f8b0:4864:20::a3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 67BCC3658F9
	for <lists+clang-built-linux@lfdr.de>; Tue, 20 Apr 2021 14:33:02 +0200 (CEST)
Received: by mail-vk1-xa3b.google.com with SMTP id 1-20020a0561220801b02901c9d72f8f53sf5906238vkj.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 20 Apr 2021 05:33:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618921981; cv=pass;
        d=google.com; s=arc-20160816;
        b=cjPhYO8QCc9CpiOVUzwGzU8ymsYjIPxj9pfUiKPO6RrpK2aEhOldlVO21VUTR2aYgv
         tTv7N+dCIu89WXUL5y4vfjMbRW0SeitHsPaiDcvL5OljJzOExP+DZX1YjEaxVS/RKEvl
         VJj2URRgUVv/I/2EOKDNoEGy8Lt1ACcav0GGsrvsmW3xbhsolxecyyQTOmhkJ1jitCyQ
         ERzKsJ1j704tZT6DgaaMQ16gGPGztnQBrfH9gi4VCLzjtfToKXC72vOC+eoPHBf58D6Q
         g2GO4Q/siVTMTL9NycUSVUpfSpTa8VR34vFJMBzE0B1W6+hqjToAQpKotDeDfZnNWFSt
         ZTBg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=jci/3ahK9R9AJm7Sn6pMbGwNx4XoNUzarWF++TZPsRA=;
        b=PPKdMSVAh/dvfHRooEjcedsAi4LPaX3slj4hMCGjQ80dX+OKM6BinB7KBLwFJeVesd
         geceAC1whH/aunaGQPD3Pxj1iWhtE4rPWUGFz3VoPXZ3t+Zf8SEwG+CMnaovfTyVvcQu
         2+uXTKi2/FSbtOQJbhwOhIZOn3jwugJdCbmZp13kRwWm+3nPXZ6fTBpjynuLHwQR5t0K
         GvhcsnslOltutBie7bJp4/H7Vqwf/W92WZvC46Y7rKkOWnBHKUdoHY8eOxiIlKkfzGAQ
         btpabz2Iv1vU8/RSgVbGQ0WbHH0Ufdo7fKgpHpZEPsUQnLVa0ZhSPANULgPHFqbSXqbK
         AdGQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jci/3ahK9R9AJm7Sn6pMbGwNx4XoNUzarWF++TZPsRA=;
        b=FLFx7oQxiPdlFVZFRVW1f+wZ9XWvpPzdXa2vKS/yki0JeFJ2RAMELqe2MrznP854JU
         o/lUs98midJ6DWzWQ5dxu0utNwm1wUTKAwJ5R8l9X6pJSFDt5CippmuxjVqAI7z6p94B
         ARdlNhCQbUcfsClb50FhNCwkkAjz0PcvegA9Hj07owwh/ELmg4sA3tfpwF1i8xLnV2b4
         0AZtjgViWbhXCYzcJ5rnl/7ZX43do85UJElvNj8Hl+tuGKOrl6wDVoiVqHHnIFshnqvE
         0pys3S+O93WH1QrMOVWlYqP0ISFArkDqsehoWIdXzRISgFBUnZckZf9nxWZMDBLW0v1r
         qqnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jci/3ahK9R9AJm7Sn6pMbGwNx4XoNUzarWF++TZPsRA=;
        b=P81mT8dTcqlE+DuudSKMrdSWzRE4mEnp3Dx16qXTzGEuEWUGJmpt9bD4ID5nInN3Kg
         crEJ99GpcQgjkyWIVyi0IJC24i+OlH8R0lImKP+zeLBQ7WIueL+x6cfqISyvm7tvyNPQ
         57upY98utMQhoRxiITAie0s6O6fL8TiAm/ybS3UP7DNZF7JairsFsOlCdDGtnzpyBnr7
         XJ+qNd1oBupt4UXe8QX4zdRc8oBCfLCNZiRkiQiScs8en7PXY1gNfgr9hyHkUOjbOvQu
         aYMAYK30gF8tbR9tXTZA8Slj2mw1m7ymBwTifbvh11uXMei1MuSfQSmtEHSPqC2aLKWf
         GTUQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5319EchQMOhakrS7Asio68wJ/IZ5JtGV4yXg1lFXmd1oKZbzfqvz
	B1Xyto4RvjR4LuA3aWlVfuo=
X-Google-Smtp-Source: ABdhPJz7zC6c3aAR5TnDByDAAkOXM1AkKN8b1uahlp/53xYxmpL7Lj8R2FkHMz7bB1wESs/vuEoxMQ==
X-Received: by 2002:ab0:a95:: with SMTP id d21mr11992768uak.108.1618921981001;
        Tue, 20 Apr 2021 05:33:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:bc2:: with SMTP id 185ls3237787vsl.8.gmail; Tue, 20 Apr
 2021 05:33:00 -0700 (PDT)
X-Received: by 2002:a67:7c8c:: with SMTP id x134mr19426245vsc.40.1618921980229;
        Tue, 20 Apr 2021 05:33:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618921980; cv=none;
        d=google.com; s=arc-20160816;
        b=uDgwnziRNSZVDZDq/Y5fqFx8f+HXiHZLJbSP6N4hxXWPTC6Dl6HxeraFfatv8JUhrc
         bDmmXBK6qE1yb4eM44dydEZuF9rzmyp1Kb2dlS0xyLUuyWtX62QYv06/d8A8aoHErmOh
         /y/Wpfx9LtsUeirwu+DRglw0TY+w5lWxv70AwfQ/N12OkYdVQwD2Hm1GaTy3ecSWEqKK
         +7dVWw5cnamjvShVrCS4bo593yXknaHRayxEuKdQquGqaPxhQogvvvS74ARYgRR11Ko9
         NVAF0LO+8Gwji9HM14qg5I15fbQZA4XdNfajPj+Wt/pJIRHrSeRNrjuegFq8oHHCht+X
         IanA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=dUxppzKVgY7zcEvP8BpJ1WBuqbIuovqbXBtVl1PSrno=;
        b=XrQNpsanExbFWUrpbdQRICRpcLaUijb4/CRLwcPBcZHsZ8spCj45qFlAc1DLIvzBVs
         /KLwwPBUqdAEsqNiKbC3i72GXVjjCO4yCCz0bUTAO6kH+zYQqkFJTIiIa5H212AYaaPC
         npcPyE9BAOlsrlcrV8sao9aarYCF2x2M00f0g670gLFOPcK2gJIWbu36iShROYYiC9mq
         ueJ1aQpuEvqKMV62jVrIXIEqPBZU2Cx1Lp2qxKgVB1QjMLW8tj/Vng2I5m9Aig+pvdqm
         iJ5M4R+vKlxK6kQCaMrdwpg0vcZd2+pJgs98y1GeDRr3QHWqc7fvCFpCJkCGY5ng962H
         ytIg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga07.intel.com (mga07.intel.com. [134.134.136.100])
        by gmr-mx.google.com with ESMTPS id h19si336346vkf.5.2021.04.20.05.32.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Apr 2021 05:33:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) client-ip=134.134.136.100;
IronPort-SDR: cwUUaMPXeSWi43lmeVqaec1s/S1wcAikSRCo8rO9bz5UMAfsIcGHqE0+8qhGQad7y67L2Fzo8Z
 /QvcVdVlaIGA==
X-IronPort-AV: E=McAfee;i="6200,9189,9959"; a="259452556"
X-IronPort-AV: E=Sophos;i="5.82,236,1613462400"; 
   d="gz'50?scan'50,208,50";a="259452556"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 20 Apr 2021 05:32:58 -0700
IronPort-SDR: LiNCIcERFrwgQgnbZWklBzLFetCQ5Asg74TO7xDzo9Y0k/UZVnzASwT+7T6xks+yACaps88O39
 4vu1+F/SmARw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,236,1613462400"; 
   d="gz'50?scan'50,208,50";a="452473395"
Received: from lkp-server01.sh.intel.com (HELO a48ff7ddd223) ([10.239.97.150])
  by FMSMGA003.fm.intel.com with ESMTP; 20 Apr 2021 05:32:54 -0700
Received: from kbuild by a48ff7ddd223 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lYpYk-0002Qd-4a; Tue, 20 Apr 2021 12:32:54 +0000
Date: Tue, 20 Apr 2021 20:32:40 +0800
From: kernel test robot <lkp@intel.com>
To: Shameer Kolothum <shameerali.kolothum.thodi@huawei.com>,
	linux-arm-kernel@lists.infradead.org, linux-acpi@vger.kernel.org,
	iommu@lists.linux-foundation.org
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linuxarm@huawei.com, lorenzo.pieralisi@arm.com, joro@8bytes.org,
	robin.murphy@arm.com, wanghuiqiang@huawei.com, guohanjun@huawei.com,
	steven.price@arm.com
Subject: Re: [PATCH v3 02/10] iommu/dma: Introduce generic helper to retrieve
 RMR info
Message-ID: <202104202050.6sLwjRkh-lkp@intel.com>
References: <20210420082751.1829-3-shameerali.kolothum.thodi@huawei.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="SUOF0GtieIMvvwua"
Content-Disposition: inline
In-Reply-To: <20210420082751.1829-3-shameerali.kolothum.thodi@huawei.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted
 sender) smtp.mailfrom=lkp@intel.com;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=intel.com
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


--SUOF0GtieIMvvwua
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Shameer,

Thank you for the patch! Yet something to improve:

[auto build test ERROR on pm/linux-next]
[also build test ERROR on arm/for-next soc/for-next arm64/for-next/core linus/master v5.12-rc8]
[cannot apply to iommu/next xlnx/master next-20210420]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Shameer-Kolothum/ACPI-IORT-Support-for-IORT-RMR-node/20210420-173125
base:   https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git linux-next
config: arm-randconfig-r023-20210420 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project ca8eef7e3da8f750d7c7aa004fe426d1d34787ea)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install arm cross compiling tool for clang build
        # apt-get install binutils-arm-linux-gnueabi
        # https://github.com/0day-ci/linux/commit/c68d4ba37ecc2173a2dc418799e23a184685d681
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Shameer-Kolothum/ACPI-IORT-Support-for-IORT-RMR-node/20210420-173125
        git checkout c68d4ba37ecc2173a2dc418799e23a184685d681
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 ARCH=arm 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   In file included from drivers/iommu/arm/arm-smmu/arm-smmu.c:24:
>> include/linux/dma-iommu.h:93:1: error: expected identifier or '('
   {
   ^
   1 error generated.


vim +93 include/linux/dma-iommu.h

    91	
    92	int iommu_dma_get_rmrs(struct fwnode_handle *iommu, struct list_head *list);
  > 93	{
    94		return 0;
    95	}
    96	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202104202050.6sLwjRkh-lkp%40intel.com.

--SUOF0GtieIMvvwua
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
w4f/Dy3qS2WXggEA

--SUOF0GtieIMvvwua--
