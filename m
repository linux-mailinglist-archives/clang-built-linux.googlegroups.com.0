Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB35I775QKGQE2NOZQMY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53c.google.com (mail-pg1-x53c.google.com [IPv6:2607:f8b0:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DFE528809E
	for <lists+clang-built-linux@lfdr.de>; Fri,  9 Oct 2020 05:09:37 +0200 (CEST)
Received: by mail-pg1-x53c.google.com with SMTP id c26sf5460109pgl.9
        for <lists+clang-built-linux@lfdr.de>; Thu, 08 Oct 2020 20:09:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602212975; cv=pass;
        d=google.com; s=arc-20160816;
        b=D1Smc4U+LFpVIzuiH5KvQLKz3Ve+uOAnfvQ5DhtIm3PZ/SGqPlFWAnEruNDJX1fODC
         8NVUeuCi9oD64V6TdFbukvtFfANgHt6QEtnAcKoQh1QxvLodpEwTwYR6VY38ThitXgZI
         h+52fL7yKuFFApklmq26amlEBriUDGYi7GJfdjS0y9JeWvMvLhfe8Zd9HHWD4e6esBXH
         fZyNYxhMg6iPf7e7C1s4M+o1XKrVy9dyL5Ei1yZqHjMd5GaZdQJ6niuui6UbMIFshE7J
         2/u9PC1PxVPzJIOEIbr+H30sULwM2UUDNWSS8Bi6YYzDAjyGOTuwsY4mQW7pSg8HQR24
         M+wg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=zkvTeRWhhfx+oVR6fe1KwQrR7j0EPe4YosDGjgdxln4=;
        b=lfJNe8E2mrXYqcIhTsNy6EVc4hXhr2gp+t1ZnuOS0FUX+xAe4x7aZmL7JyX+dhWhb3
         aSO8VDJ2+BkEqnSFSjRtO/alz+crBDGBzyD/HdqDEGymWYQsW4f4hPXSG+TbgeUp6b7P
         fPBbZOcMuexYzKwYwK6FmYWk3rxuuysVoVjIsAKcgEx0i08jTUYHcVM5vue2vQN4Uygr
         Zi/bKYWTSA1aM32cFu1Atj2ch/ist8ulmKFbCEJ1q+nmxTJ6LaBnkILxK2PXjnOeYxvg
         ePZjF3PzQQaWVo5Wevg8AHDVxmE9aWyAz7CxxK5F5gwQGe0QxGlxWEUEB+WeNx+P39XO
         xqIA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zkvTeRWhhfx+oVR6fe1KwQrR7j0EPe4YosDGjgdxln4=;
        b=JpW4UteUXUXTbtnITbsC68UQyzL5z78TXMJFOL3/OAfzweBEbKfTqZn1tnAkwSgqZ4
         loT2EHwEZw/rW1Kgp0DCiNlJY3U5ViVL+IOANlyxIxTtR9DBt9WP6ilcS8u4JvWshdOr
         2c91SSONgNBJdtWlbvfQ3ISpMwNxu2niyweAT7Seh3Y9cJY98B8fhOKAOh8TE3nzsiEU
         tWGvAZZlWbnr4scH7tbqxIgjBu4zMfdOs6OhOzvId38UWctT2zW/d28zbB79FSGichZW
         2SBM7Mn4bbria6bQCRjEnZe2EmJZwfxuZbTRT+vK82S/dHOZ8JkFEz9UU3LFgR0mvdm6
         Y3Jw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=zkvTeRWhhfx+oVR6fe1KwQrR7j0EPe4YosDGjgdxln4=;
        b=iYbWlOuCQTfJ7wsVok4uwF7bCe2AdQpDIl9iWaixPqE+MGtC62OvtvSoigyhLYQ58j
         BVKjlBzJOyZF0fAg28/R5NDgueS6F5wCVBg8pwpuJCD1fsHxLkh6jvlE0/CmZGCxtN4T
         GKKX5oIvJpJdOvo+JY92JeMH0ViQnd0od4BUa90tNx69VGtWesaNVI+FFGQs0ebujOLQ
         0ZRiVHCaAe4FdtDiAnwg1esUNCp6ulqPe8+ncFS81dyI9h5abG4pM1YfBLIyvYUcNDHf
         6U7CYvIq3lSEieeih0HBxxJR9rdabYiZPLgp8HWf3ILNM9LW//UrL1OSYVtl6Ryo3UX7
         XGZQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530tZm6hsl5aCRd2PeOC5EzFk53Hc5EAmcs/vsWqoIfAjaBfwQpW
	xa+uRG0gkK2Jj3AaghFjHzw=
X-Google-Smtp-Source: ABdhPJz6oHyUPIGetVjkjeVr71QJaOF/BsfJHCGjFWfaISiZekL0CbJ3t3JdNIsasKwpnqqu98yEcg==
X-Received: by 2002:a17:90a:fa14:: with SMTP id cm20mr713680pjb.123.1602212975423;
        Thu, 08 Oct 2020 20:09:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:515f:: with SMTP id r31ls2871295pgl.7.gmail; Thu, 08 Oct
 2020 20:09:34 -0700 (PDT)
X-Received: by 2002:a63:171a:: with SMTP id x26mr1717312pgl.382.1602212974739;
        Thu, 08 Oct 2020 20:09:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602212974; cv=none;
        d=google.com; s=arc-20160816;
        b=ZyXwnwe2RpsoCM7gLWByCauA5vpnSyc8UFJ34ZCqG/kg5qHuFJUQxxvIVEkcnMAO/x
         e4qn89sCYduQQjY/jRShxK9AzQ8wAbtpRT1dQfpqtPIrwhlbkhW0bw30G+AhVN1TAxN9
         334NZABpdf3ZNV+RdXJOM1n7G3BcaaaSKlxp4G1119mY2Psm1e4j3PtcVS2L1sv233K9
         IvSZF33jlSvz1TCHwmnfVUvh8t31YToNkk3TOxWnNzfDRXcugm+f5IQKgxm0r1nDM5dq
         aCTM/OsSsL8R/RcDRBAYLMcKjWg2mBPrPGBTyOrflqYvsCj4Cmjx5FW0EomOErvQQUBy
         E66Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=hTCF9EwoSljIr6Pg4MZdTC+3bG80DQZ8uF7ondNqheM=;
        b=GOLLFJzr8SuCyD9OUQ86o649eruB5LOqEpbQ3hnzZkgmQjZMSGspVz1ilfrhOmyn/7
         dFcTWrUnCVAw/0yXyB0PoQeJBDiHS9GYglmCu4625DeqLltlhJfH6vEkZDkl1cXerjZy
         mYhMWF5ezCF9W9yF3VW5qAbrjM5pgUxCpUIG2BRmuXl6WGqHWslh4MC1YEQe9iJa8G9M
         3vu71cCATOYEesIOWRBcjXvYJyafxlBYXhJKwb91DoEw7u7UbGjBipkGSYbUawiLI0wT
         JdyTxeBq0bKx65C0nFdQ/6RWDi9d1L8ijclPwFwKEKZJhxVhzN0fuwK0M56F0ON/RIEH
         DqrA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga14.intel.com (mga14.intel.com. [192.55.52.115])
        by gmr-mx.google.com with ESMTPS id k65si598373pfd.1.2020.10.08.20.09.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Oct 2020 20:09:34 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) client-ip=192.55.52.115;
IronPort-SDR: 6EG+BMddfL5JIsbyhv5wl8gapy+9Ph0yk3Q4wzEgiDyyrygqT9gs2McmSYOqfBOvRxegLGrat+
 +xvNuMNtGgPA==
X-IronPort-AV: E=McAfee;i="6000,8403,9768"; a="164647793"
X-IronPort-AV: E=Sophos;i="5.77,353,1596524400"; 
   d="gz'50?scan'50,208,50";a="164647793"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Oct 2020 20:09:33 -0700
IronPort-SDR: 1WMlJVj12SkFgM1UgennFtD/lycBPzcZ89NJUXSL5wzqiq8cIH0UBdDx9Q5GU5dCtGIfsav6ZD
 5NZDp+mkFplQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,353,1596524400"; 
   d="gz'50?scan'50,208,50";a="349694334"
Received: from lkp-server02.sh.intel.com (HELO 80eb06af76cf) ([10.239.97.151])
  by fmsmga002.fm.intel.com with ESMTP; 08 Oct 2020 20:09:31 -0700
Received: from kbuild by 80eb06af76cf with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kQimg-000075-Pm; Fri, 09 Oct 2020 03:09:30 +0000
Date: Fri, 9 Oct 2020 11:09:08 +0800
From: kernel test robot <lkp@intel.com>
To: "Kirill A. Shutemov" <kirill.shutemov@linux.intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Kuppuswamy Sathyanarayanan <sathyanarayanan.kuppuswamy@linux.intel.com>
Subject: [intel-tdx:guest 38/42] drivers/virtio/virtio_ring.c:258:6: error:
 implicit declaration of function 'is_tdx_guest'
Message-ID: <202010091103.h79k3XkI-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="Q68bSM7Ycu6FN28Q"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted
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


--Q68bSM7Ycu6FN28Q
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://github.com/intel/tdx.git guest
head:   bff4988b34ddab1ab5d2deb62dcff0231ba21385
commit: 955b30f942b66c79eb3d2177297520d3344780b4 [38/42] x86/tdx: Make VirtIO use DMA API in TDX guest
config: arm-randconfig-r025-20201009 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 4cfc4025cc1433ca5ef1c526053fc9c4bfe64109)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install arm cross compiling tool for clang build
        # apt-get install binutils-arm-linux-gnueabi
        # https://github.com/intel/tdx/commit/955b30f942b66c79eb3d2177297520d3344780b4
        git remote add intel-tdx https://github.com/intel/tdx.git
        git fetch --no-tags intel-tdx guest
        git checkout 955b30f942b66c79eb3d2177297520d3344780b4
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> drivers/virtio/virtio_ring.c:258:6: error: implicit declaration of function 'is_tdx_guest' [-Werror,-Wimplicit-function-declaration]
           if (is_tdx_guest())
               ^
   1 error generated.

vim +/is_tdx_guest +258 drivers/virtio/virtio_ring.c

   214	
   215	/*
   216	 * Modern virtio devices have feature bits to specify whether they need a
   217	 * quirk and bypass the IOMMU. If not there, just use the DMA API.
   218	 *
   219	 * If there, the interaction between virtio and DMA API is messy.
   220	 *
   221	 * On most systems with virtio, physical addresses match bus addresses,
   222	 * and it doesn't particularly matter whether we use the DMA API.
   223	 *
   224	 * On some systems, including Xen and any system with a physical device
   225	 * that speaks virtio behind a physical IOMMU, we must use the DMA API
   226	 * for virtio DMA to work at all.
   227	 *
   228	 * On other systems, including SPARC and PPC64, virtio-pci devices are
   229	 * enumerated as though they are behind an IOMMU, but the virtio host
   230	 * ignores the IOMMU, so we must either pretend that the IOMMU isn't
   231	 * there or somehow map everything as the identity.
   232	 *
   233	 * For the time being, we preserve historic behavior and bypass the DMA
   234	 * API.
   235	 *
   236	 * TODO: install a per-device DMA ops structure that does the right thing
   237	 * taking into account all the above quirks, and use the DMA API
   238	 * unconditionally on data path.
   239	 */
   240	
   241	static bool vring_use_dma_api(struct virtio_device *vdev)
   242	{
   243		if (!virtio_has_iommu_quirk(vdev))
   244			return true;
   245	
   246		/* Otherwise, we are left to guess. */
   247		/*
   248		 * In theory, it's possible to have a buggy QEMU-supposed
   249		 * emulated Q35 IOMMU and Xen enabled at the same time.  On
   250		 * such a configuration, virtio has never worked and will
   251		 * not work without an even larger kludge.  Instead, enable
   252		 * the DMA API if we're a Xen guest, which at least allows
   253		 * all of the sensible Xen configurations to work correctly.
   254		 */
   255		if (xen_domain())
   256			return true;
   257	
 > 258		if (is_tdx_guest())
   259			return true;
   260	
   261		return false;
   262	}
   263	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202010091103.h79k3XkI-lkp%40intel.com.

--Q68bSM7Ycu6FN28Q
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

H4sICD7Hf18AAy5jb25maWcAlDzbcuO2ku/nK1iTqq2cqpOMJF9i75YfQBKUcEQSGICUZb+w
NDI9o40t+UjyJPP32w1eBJCgZjZVSczuxq3R6Bsa+uUfv3jk/bh7XR0369XLy3fvS7kt96tj
+eQ9b17K//FC7qU882jIst+BON5s3//+uNq/ele/3/w+8ublflu+eMFu+7z58g4NN7vtP375
R8DTiE2LICgWVCrG0yKjy+zuw/pltf3ifSv3B6DzxpPfR9DHr182x//++BH++7rZ73f7jy8v
316Lt/3uf8v10btcP68vR5Or9Xp8eXGxXl2Vz+P11eR6dHXxvL5dX35+Lq8vx6Pbf35oRp2e
hr0bNcA47MOAjqkiiEk6vftuEAIwjsMTSFO0zceTEfxj9DEjqiAqKaY840YjG1HwPBN55sSz
NGYpNVA8VZnMg4xLdYIy+am453IOEODwL95U79SLdyiP728nnvuSz2laAMtVIozWKcsKmi4K
ImGNLGHZ3cUEemmHTASLKWyTyrzNwdvujthxyxQekLhhwIcPLnBBcnP5fs6Ak4rEmUE/Iwta
zKlMaVxMH5kxPRMTPybEjVk+DrXgQ4jLE8IeuF26Maq58i5++XgOCzM4j750cDWkEcnjTO+N
waUGPOMqS0lC7z78ut1tSxDwtlv1oBZMBM4hBVdsWSSfcppTx6D3JAtmhcaaXMgVjZnv7JDk
cPgdPWlGEwm9aQqYE0hD3IgniKt3eP98+H44lq8n8ZzSlEoWaGkWkvuG2JsoNeP3w5gipgsa
m1suQ8CpQt0Xkiqahu62wcyUOYSEPCEstWGKJWbXaQjnoqJDtE0bcRnQsMhmkpKQaT3S8s0c
OaR+Po2Uzd9y++TtnjucanrXjIVdUdBPlrGE8ihSNDMHEJLSRGRFylPXTjfoBY/zNCPywdH2
TLOAQ6tmNwORf8xWhz+94+a19FYw8cNxdTx4q/V69749brZfTlucsWBeQIOCBLqPDluQHbge
A+0UO1+FKCEBVQpJMydRRtRcZSRT7qOgmJPjP7EavWoZ5J7qyzBM+aEAnLkq+CzoUlDpYqmq
iM3mHRAuQ/dRC00PlYe0HbJehT27Virn1R+GnM7bneWBCZ6BzFLTxMQcFXcEZ4xF2d1kdBIJ
lmZz0OYR7dCML7rnTAUzOBABmIbWUqn11/Lp/aXce8/l6vi+Lw8aXC/DgW0N4VTyXCiTzwlN
ggF5ied1Aye6QlXTO0cgWOgWphovwwE7UeMjOD6PVJ4jCemCBfQcBQjooMg386QyOof3xVm0
VkgOUUWDowSBU2dZh0wVqXKQg4KSgDmJELDP+k5pZn0D+4O54CBPqKnBw7GsUCU86EkMbyTY
mUjB/EFPBSQb2ExJY/LgmC8KCbBfm1xpWAn9TRLoWPEcVLphjmXYcxkA5ANo4hgAULb/AgDT
bdF43vk2nBSfc1S99gkGX5EL0JnskaLF0XvPZULSwOJel0zBHy5tBIY6s6wn2PGcheNrYxoi
Mnse1GydZgn4LQxl4gSqtuvkHNTgqDKshuBotwUNg6mRKs3T/S7ShJmupsEqGkfAPml07BMF
7MitwXMIRzqfILlGL4Kb9IpNUxJHhrzoeZoAcEjSzAQQZuwy40UumRlmkHDBYF41X4wVg4Lz
iZTM5OEcSR4S1YcUFlNbqF4znoGMLai1q/2d0I4GhiKnkYEoDTpslIp+skQi8WkY2sfPFCiU
0Yor5nYiEOSjWCQwB22NtCmow0hR7p93+9fVdl169Fu5BZNMwEgEaJQhZjxZYGfnWqW5hmhN
zU8O03S4SKoxKlfIkksV5341oHUAIYoiGYRgc7fmionvOo/Ql6UEgQw2Q05pEwoM9qatTcwU
KFM4Tjz5CUL0lcFUu9WmmuVRBO6uIDC4Zh8BFe3WIRlNipBkBANjFjGgxODQOKk8YrEl86Bh
A6p1vzJ3xQ5kT2JpeOEwXKFyIbgEQ0QE7Atoms6AKYdjhhRFQgwvH7zDYK5Hbnow/Z1gDoak
j6jowVONYjJVfXzj7MzuKZvOHAg4YsyXYJ5gC8ESdU5bu5Rch0CWuQT7lxCgAZUxc8HhlHL5
YOLEDLhTRwejv0ejm5GZoGhmZGlJMc2ID/us4yh1N6n9NO1Jetn3t7Jy+muNlOQOCdALSYDV
hUzBHEL8VyQQSd2cw5Pl3fjaCCxlAqo1ncYYRiaLP5KhYaivyHg8Mg9JBRe3F8ulO2hFfATG
1JcsnLqdLU0T8sUZrB53dAZ/EUwu7Slo1on9bl0eDrt9w81GQ0BY1KzFAF1Mvl3aEOKDINNF
Byo0OKZTEjzYmABkA3Te5b3vhLNF1oGL8VUfgnvd6OTTEqKT127Qz0Dy4exjlsruiFVjhkyh
jNm4cACXxRDj0Kk+1x2pn2sfc0ZjYWlgFJ54XK+vCkau2jMPTiecE2AX+HSGgYAvbRodx0Tj
0GFy4CRFMa6WqoqMF1WvpwjGODeadf77ASL6t7fd/njiGSzZbGTSmDawz2ytjAfPtxbDVBZT
AQ5HC509FhFb0hCCOANmfhFKfGaeKA7ftQU7m+wRUVosQL2FHaV2T8BSam1D4mKWT2kW+/Z2
JTzM0bjEptXWGRRUDcUjTykH4yTvxuPTTgY4JUNzwZYumLTzIDXsfFrB9gFaNlcbtgOy3Rtm
rw3GoxfBLT8YzN3UFQY9ardd8qTKc8Mu9TG+UiYCGUKEoCn4UEWY+bZyS/RQCB/ekiAJdd74
g5EYXDJR5xzdwZ8kClRenrhDKwy8ikf0G8NQOrlnMarJDHli9xeE78lqu/pSvoI/BYgWF+3L
/7yX2/V377BevViJIlQI4Jd8slUEQoopXwAHMllUKS8XGviSmPa/RWI+yPLKGkSTWMXWRgjl
5pSzEb8HHUQGDIazCSovHU//fBMOIgETc3nWTnrAwSCLjq9v8coOGJ0UzdIG8O06BvDNpAc3
y5pjKx3PXenwnvabb5Wvb6brHGLU9sGeXix/RdsgiC2HUn91AxPSE2DdX/SyW2Ey0HvbbbZH
r3x9f2kuuDSeHL2XcnWAA7EtT1jv9R1An0sY96VcH8sncymDXVYmV0/jtZ2GoZJOys7t5FtO
sXPlg51Xa93sX/9a7UsvNPjfuJCco48WMZncE0l7zk5WftmvvOemh2oHzVUPELRM6Y5t6shA
Pgh9sWQoMYSAzSdjpBhQdA3N5Oq6S9WjuRpP6nij2wGh6nzrYAYOCJmMwFfRyqjbgeDxw/hi
dNXtxbrCW+3XXzdHEBawSL89lW/AF3v3GxNdBVXGGdRm2QCfLp6qyGLIo0bThld0YCbBMN2T
3lVcNzCpoJJmTgQXbriVpzm5EDq8mnFuJHba9HEi9OGtr1T6BBqJ6Rk0DbnoOCGYxwBNl7Ho
ocnk9QnmlIpuArBF1r4jlw/OmetZFdX1bHE/Y5mOqjv9XEwg3kGXrcg6nYCPCwKVhlVYir6K
vt4QXTbV2ZZeQgXbu+DaR676ROvucs2YCNBTwsxIfZHrWF/tb8FZjzMrizcA1y31uLD/WTcY
qK64bbS+rbLSHRZ6yPWEv9G10qIzt7IKGq3dP/vOCSWmQ+W4eupQgItaM0LQALMaRmJOe69K
Hx3MMkrqSqJpjM7FYCxhd06XIBVdua5XJx4a2crMbCAEDXBOOxISxMBCCGSCOajj0KDmeOXO
pipX6Fde9BAksFMmdb6qEldkjG29U17QCHjAMAcG8YdjuTr3AGouTIi5p5hYMXNnqq/6Ar74
7fPqUD55f1Ye+dt+97yxHUQkqt1Zx9gaW6u+Og96MlkdnNMinpuDtT1YUSLifMpSZ+LqB+q7
DSNBsWCm2dSSOlGrMFN5it3qMElVwVFCsp4MmiutqaswKubEndirqfL0HEWtF9zXX82sZNAW
fNhs7c3eMUvVBHxnG9pJbQOOJn+gV7T0k8uzM6+prq5/guri5mf6Ar/h/EJATGd3Hw5fV+MP
vT7w8EnQ/ufGwRTsfZEwhWmy091cwRKdP3Q2zVPQUHDcHxKfx26STLKkoZvjhcHgKuBwS4py
xeemrfXr6932c16oQDHQiZ9yaprD5r7NV1MnMGZW4Hu6nsvoVLLswTn9hgoTBm5h1nfBVXhc
2TyXXUGiez/rjg+gIvk0eHeIdwyR6jZCTnJB3FE3ElQ1XgVNtV/Y8dEr53+1P250AIGJJCv/
A/5Mpk9cuMAQLrRyBQGX6YnG5fCx5Qlv2AQVucAkATthIczsh2TuoU6CS4Kzk0lUyJW7eyz4
CJmax8QfSF8k4LUtC5X750ZQPIZpqmJ5c+0eJ4dOMI75wWBxmPxgrWr6I25AiC5N7ru7yc/v
3xxCB+LaKhox9wqxPOz65gfDGufDRdVEjR2pNA9D8kn7Xfqis6r54qdqDkOAgY7x6mo/BA/H
LnY0kPMH3/QtG7AffTKtrj1IK7YqHZ+awhZX502Bo6+tnqmu7DsYkoGvFhQQ2zp8DHBWCw4G
LyZCoArGxBh67E0qRC+b/l2u34+rzy+lLpr19OXi0QqhfZZGSaa9wygULHCpl4pEBZKJbkCB
U6nxUWxntwzwcKeIxcrPhcAaUKGrQ9HtNnRyRQimxnB58Qa4Dida9g8tVq82KV93++9GIqUf
w+JUIL4yEsA4t5SHVKfsrbs7vXaM1vTdtL2JSsTgtIpMu5rgraq7W/1PK1fVPZmPJtS6l8Rs
uqS495b7n/IkyXUdCCNxZSHpEqOzuzYZra8jINzSzvHcThfEFDQz3kU4z9qj4NytZR793JXo
a6JdSmT8ACdBX0FYOW8q9V3SYO3bFGuAwNzMEtK9jq53cnizTgtuCwDT8vjXbv8npq5cSSmQ
JeqsDwFdax1LUN9B0tXGoImJu6grG/BglpFMdNDrxGLR0Zy6nYdlKMBE4HRdXg9L7RJLJqqa
loAo9y08EDRWuZAc3HuXpwFEIjUrT/V3Ec4C0RkMwXhj4M7P1wSSSDce180EO4ecot2jSb50
TLOiKLI8rQIuw56koAv4nFH3blQNFxkbxEY8P4c7DeseALelILNhHPjFw0gm0Nce2O3Tck0g
CmQHlAWiAdvd56EYFmBNIcn9DygQC/uiMsndYoujw5/TVtocy2lpgtw3MxfNZUGDv/uwfv+8
WX+we0/CKwhZnNK7uLbFdHFdyzoWC7vLDDVRVY2m4PgU4UDYiau/Pre112f39tqxufYcEibc
AZ/GdmTWRCmW9VYNsOJauniv0Sl4lIG2ZdmDoL3WlaSdmSpqGoG5T7wcHzgJmlBzfxiv6PS6
iO9/NJ4mA/vgfkdQbbOIz3cEe3DGXxcgWEPN8C0L5hX79qlDI2YPOjkFti4RQ9XiQFzlJt0R
mDiDBN0TBgPzZFgxPKCN5UChcDb0MgMcH3ekMRkYoV+7UiOq5DrqDWXl3WqQs7NFTNLiZjQZ
f3KiQxqk1G3j4jiYDCyIxO69W06u3F0R4X5kImZ8aPjrmN8L4g5iGKUU13TlTtcgP4YrvsPA
VY4XpliKAlEkuP13r8ZmwPYRHYM7O+MCPGt1z7LArcsWDqfDOkUsnQ8biUQMWMaqvto95EwN
u0fVTEPqXgxSxBfgjCtU8kNUn2Q2PEAadB9fNK5yVYCONEIy97MpgyaIiVLMpXK1ZV1ievyh
sOt1/U+W+4Jlr/+2nzCZPq13LA/1CxZrBWKegRs+uMBQcjCaHAIG7q6V6HXfQZi+tLFpJJEk
HOLLwDHw3SeHRMAgOaSNomIeuG4275mkMQY+ZnwTTfGYjXs8bBHbsnw6eMcd3nyXW4wPnzA2
9MC8aAIjHVBDMHjRGVJd/VPVXp1GvGcAdevdaM6cqWfclVvDza6+TzkKa/tuHW8gDD6zgdcT
VMyKoYdyaTTwIk+B4erWI5iuc+TGuQxvo6RUVpW+GRekksP0qlrytouIsBjzF44uaDbLICpt
dE/3rqo+NE38F5bfNmuzOqCRIixVSnzjwYMIAmLerIogCZhlpSqIvqwoAta/GxLBb+vV/sn7
vN88fSmtQJPdTC6urxyryQLT461H6DwwrGaGOR0Mm1lbfa7vcTbrenEe78e3eXWXVRUhuraD
LrJE2GnhBgY6Ik+dr8IykoYk7lyHgketx2qqLaqXtD0etTUTL7vVk662aHb8XjPWTKS1IJ38
CPH5lpFEXGaStKNZxWSndkYJpmMhJ7rmTsNMGHVn2kqOvtvAPL6VZmq5h4n2UDK38NZoupBU
9ZvhK+a6LRZvDlX4ajKi3zrUxFpgzqRj9A1znvGOYIFpRzN0Akg6tRJZ1XfBJkEPpoRZI1ED
78c9UJKYD0qaDs33qGFC8FJKVjscaQk4MQaQEYXAsSq+cBqsgXPQlrQ+aR1gHH5fBonK/GLK
lA+awCj3XNClFoTeU6ZkxmpWWZWwTdeGpuWg+gYqAqapMpiNXxBISEbsK2AEJ/hsUaMGugG7
I6NTaxOT+0tHt0nm8kXCzNhZu2aUR5jjygZe1gMWE6B4y2Z2UCf+nKg59/9tAeqktAWzJAO+
U7OOkkf6mbRc4KMCmnRmW+W7Xa/nqpp+fPFQl57ou576aYSRDNQgtylMXXmY+kKvf0OY5nGM
H0ZKGtyupE8Ycy7cULw0qt8y33TxVY1W3fbkTNXYUPrDt4t6dj/ASzJQnIZrQPcyCBfuHvBZ
DW4DGmkHvyqPpmZMf1i/by7SRUI91S1JR2jnmZcGVYkIks0spwkxs/vEeUelkRGBgDVQnc6i
oAPIiJya0mgAi+5emLgB78ok6aUbGo/bXH51U7E5rPsKTdFUYY1/zNRFvBhN7JvW8GpytSxC
wd2yDSYsecCD545UA3V7MVGXo7HLF0uDmKscrD2eShaYJSJEhOoWHGZie3ZMxZPb0ejClYvS
qInxxqRZVwaYqysHwp+N//jDemDTYPTwtyO3Kz5LguuLK3dyIFTj6xtXfYSyHmXgFzgh1JCS
Jb4bA90bRjSwFMtCkJS5pSCYdHVOdTVHwVQnxmOMtkGFgZM2cf00R43tvrSpwRCZXN/8cWXO
rcbcXgRLd7qxJmBhVtzczgRVrgx8TUTpeDS6tG7d7HXUZbd/rw4e2x6O+/dX/Yrx8BX8rCfv
uF9tD0jnvWy2pfcEor55wz/N9Wes6F5ptNW6/+9+XefH9nYIpt8I+rzi9BMh22P54iWwo//l
7csX/atDvWczC1Dhlm+14NZ95LlOWrYGM262sQ6/Ffaw0NCF1UcVkmChN5Z0Qwi0W2u26Lrt
j5unEv/9fX846nD3a/ny9nGzfd55u60HHVTFzoaKARiqd8FcqhuRCrCuQw2oqaWPKkjRIXeg
hSvHbQxpqmwTHA6AsYDU51gGKWX1E0WuhcC4Llcap4W/aVEwbr1CRzj+QEVVXFPJB7Bv/XXz
Bq2bLf34+f3L8+ZvOyhsBhXgLWHFXE8LYG1Svd99AdOFSwk3FisJC/XrE/PBL1DZX3XNownp
zF8PW4/nHb+/ld6vcGb+/Jd3XL2V//KC8Dc40/90rUQ5H3/MZIXslSxpqMtRbpuYPybQwIJZ
Z/qtFerAAx0wN692TUzMp9OhjLwmUAGmTDHEcm9K1qgUa0OrpoJVmzDcexT8iILp//aIrHHw
V7j6m63hMfPhfw4EnKoeMxCOv9n0f5RdS3fbuJL+K17eWWSaD5GiFncBgaDEmC8TlERnw+NO
PB2fSSc5ifve3H8/KIAPACzQPYuOW/UV8SwAhUKhAD7szszaZs5suT9otcSqkW/ynq67lukZ
ncgxsZ/n404XXtA3oeiGuqOudi8DHdsQCB7pz2ml1cjNvOrSb19ff3z7As46d/9+ef0skvj6
jmfZ3Vcxgf7r+e4F7tz/z9NHY3GSiZAzzdExPWUOOGVXoyck8aFuc1wLg3Qhc9TGjp6pKsWS
WoFKOiqWcumRgtqiSnCUZ/qGHWiNOYmArgtO3ItCrCl30K2Kjhs6VQwZK9CKXcpjXaWu4Sm1
VRQB++/pQlp8a8IeLqTIXRFu5EE5c+x7SkLhEMp12uiCrr0LAbOMw7ZzJC27pPix2slx3CbK
x5ljk8E6mAVrhxW3u+AFFPThKnumrbmYTvCvr9YubwHUPs91MFYVpcO3T2zUrY+UEfdF6HQv
v/8FOhIXg/Hj5zui+a5jd+/+7ieaVRn89TtTMK+sSut2CGltGBtYEaLFH823IY32+LnewpAc
HAcBY5akILTNO0aNveyojXYc01D0r0vywYgxoUPm5lDawfcHeoh9XB8by1yV1BJnJG0xxqou
J3jGLcXpFzFHm3OhpAzVMUnMGAbrj49tTVKrd447vPGPtISB54hKIgOD2HuxdYaUpMy4jWpg
1/xS4lDethfzZIonh19v1I5KZz+jbU4MnIlnccWnyFJssPHgD2nlmpinPNmHMdrgIu2SMlQN
RMKoiCgB2PntllynlJGWpMSI3pd1Yq5yBabIutMaRZJtGYNQQMaKkfFiaB7EUug4gAS8h+Td
LKecVKLIb2R+eZ933IigN46PrLy+9xOXe9r4ubqRikrIOed5kVPTIfqc99E5DYaTy9kFvhoy
5oYbb2cb4xa04uB1gWsVAL7dx+cLubEcrVCeBFHf41DVsQJFStIKjdE0XF/tLkM+E9+Qqu6N
74qe36RqgS+aRZ/d3kg1p63pUHjPkyTyxbeuY1zty9qM2mmjnJV4u1Wkc2Osa+uqLnERqoy9
uZgl+hP7/w3ZJDx4iGyT3jXVkD5J9gfcclSxwDUNTeecTtcduICAL0e3NPF+4cuvkPMa81DX
KtiwisMtR7T9QEOE6Ax6CzxQshe1GIReiZf0gYLhyzUA2/LNNm9FtxibNR0D35sWhTgp+cWM
UMr705E5TO/6l0y/o6sDcAMlK0iLixcvuWHW5CU9+Ad8rZUYbnsd+15y0ANug5Wg43sohg1i
daF5XUFQE7QqnRyDRm26EpaHt1vvsaoboS0Yh5Q3OvSFPUmvv72a/gTip0DEZsy6MLb+8JZ/
sBy8FWW4Ra7VdGYI31pQldlaT3w0ZJM+d0v2yFMUYt/0ZsX7vLWUtFEKAAgax11CMe1vxRxt
zo8uj5amccTgLEwnc7ljOH/7+fru58un57sLP852L+B6fv40egMBMvlFkU9P38Xef22Ru4k1
aBE3+DXruGnZsXsHZh5XiZ/OIKfmZ6W+huqQphQjKBWb9BqHrHXZhlqhoRjaSQ1m8TfKuazo
GMjSnDhbpiWmg4+BMdgLuUDdXKED+hVPnd45+D88pvrMrENyq8OqCvMQaskjXbsHMelddnd7
AQexf6yd6f4LvNDAUv/6eeL6tA5qcnPYFJRthee4CUPeV0B8qjTLTeo4H7WONYfmaPrOjkci
3/96dZqq80o9IbDkBoShYCl+lwXALIMjftufT2HgNWk5dxo4l3dn7w1XFoWUBC42jogs+eXn
848vEEp7NuiZjlvqsxruHDvcSRXL+/pxq0jsajgKTEQV3VBrQpe/mvrgnj0ea8NLbaKIKYai
1CaKksTQYU0Ms0MsLN39EcvsofO9yENTBWiPL0kaT+DH2Ko0c6SjW3EbJxGaTXF/f8TsnjOD
jCu3LjmQpfwwrF4dJfFODwysI8nOTxBEiRQCFGUSBqEDCDFADPl9GB3QCpcUXyUXhqb1A3+b
p2K3Dr+rO3GAOzjsmThaiFNdpFnOz2MM262EeFffyE0PIbpAl0qJ1ToDoYWhp28zQ/7A46BH
v63FqMa1Ua0XQyHxmOq4sJTB0NUXehYUNJvuVuy8cFN6+85VP0oaobpuFgBcv5pS9wrV5qCF
KH8ODQ8Q0kCKhmP042OKkYv6lIu/TYOBQuElTWf4xyCgUMuN0+6FhT42ppfXAsmgODKwLoay
AlZY/bRvjc3ZLlrjUjYG6kyOqaZaEWRX52gBMngmxlUCtL6I252kk6YpmMwK13Ql05GW0WGP
eXUonD6ShqzThqYAnwXnd0J8LE+3sVBd3uORUAAFmTiWq5pT3/caspKiK+/7niClg/l2o86L
/Fg1cPKBJu5aZMUaDJf2NK1wogykIqJGGBCmGDXNESqtj6alekZOWYCdqC14a9pUDWBAz10X
lksulquy7pASSbWcUAziecpueWV4VM9gV+rqwpKcdShqAUMQBgh4g+jrdYvWryQnaZvbqqAM
SlC3RzQBCR7xmD0LE9yJZ3gJuluevq+xDfbM8uHMqvOFYHLAI8/30XRB4XMFJJ2Z+sZxf3Tm
aPoWG7oznvGcxJqHspJ0edPSGNOKAsNjEA1GHdnqXHkjNlBvcZ1JJXYcjkvuC9v9sSP4Vlxj
atiJ8AumNYxMavoU8iQ2r7u12i8nUE5bxjBxGldJIxCEoiVJUyZeP9SVtaYrmKR7f4fbmkYG
2GrD0r2awQ22Y0l8Uyketfyw94bjpcM1r2lf0ieHIHIVsaR+uE/Cobm1byVUCj0VK4VUfI+M
4VchNJ6U0dqYNDTsmlsT4NRAubyv0DHcnDdvXsRgrkZOZyHu++79YZ2HDPQqdG3H9WHJ88ik
xWCDg5a+d9jAwYOggLcDhODDerPJ2l3+Rod0DY+jwE8WVqT9+iYQ8tkwbA0Zk1Fa51YqE4vs
pI2CX+QfZ04NzSIvDoWwlRekG2iWRKiSMrbKfeJFUEolx2sRamt40gt8tkYpszJIycGLxoHg
zAWY4nAeLdZw7otw1zvIpnengsSeIogPxCbTkoSe5znIWEJpew1i0ZFnW2HW4DjahvcumHew
K/DtSrdlvrOfPAGSeWcHKEJjtSiZF64pchauLXqQjj6yNr/vryiBTQmN6WikYSKkoCiaTCLn
px+f5BWs/Lf6bvK2G3mnUi62XSDAv45DfIXDnb97/XRNkYv8aGylFLUlN5s0emAgzIIE9w/W
RSItBdBdpAbLWxkqJH05FZMQktCJlMx66WOkDBWPogShF4afNtbSi6cyYttTNrLPTz+ePoIt
fHUjoes0GTUecVDuSLD3q7gK+6w7SXcTw0I739Y0wbeQIQhUagRFguA8BzHldo/6K3HSKd5J
HC/bBJH20kchA2PAzTk7/qRyBX3+8fL0RbPSaj0o9Bh5F4rqfjgjkATmXYaZqD0PJoOQGG2j
8/lxFHlkuBJBsh1cNbYM9gfYoqIzLY2LpuGwO+ksJauEioK+EaRxVa08ReX/3GFoC3FtSzaz
oBmxvpMPD7xZIsIbCHp1tY9tsTbihavq6e3NjNouSBLHQaViqzO3g3f17es7SEZQpCTJkyfk
0seYFExeIjHPx6xPNo+P1GoBp17fKvkkv+rBG1bmcODjzhnausg7tpLYCVgPY5thFhHf4jAX
OI3oTJPnmYrZb9dKAVj9Tb4H9GNKq95xtjhx+HHO96iNb2Q50jIOddcYk74xIMfV531HTtuS
PTIC0yobDYN9h4wmuBqTOtORXFJ4E+qfvh9pL7EgnK7OGA+LGz6VyK6YyfB25xjOhAvNWQDA
hHCpuvqr7ME9rGi2m1Ty5FVWsN5RCYvj7wwxCj4KEOU8zU85FasM+mjZKFlw6ZtiQimBtxsN
pukPfhjpC7+1hNlf0K4trKOUEVLRCKpUnUYt2p2MFuO8R0sfaUFSNL5/WfdEnUAXenaSzEsy
xsIYqdVwTgtNBOaDCUPv0KnjzWRkbFXDiWN++vISr5Geel5NhRCzqdyMRXGd7ubrOUkqxcw9
Y6PK6MIXbDmX136hM0SBHAru6HWN1DAXO4fxRWg8zF95HB0tlEExI+YDnULV2ninL+2QA2F1
En730a0hwuUaecpHTb9YAi/VVsPO5Tu2MOzQZZC2wa43az9FhjHTmyLFukqq1ZBdS+aoPLve
W9g0EiB43iQCkzCTXtHZlUtNc0nFttF3VPzneDRFzJbF4/GC12etlC8lgj4U8noRMwZEa5wD
bqgD6IAiR/fGLjeggzykEpOcsfcCwPnekwTl841XM6ny0k95l399eX35/uX5lyg2lIN+fvmO
FgbCNai9kUiyKFh1YqtErQlroaoMLXLR0V3oxWugoeQQ7XwX8MtuAAnlFYxS3Poy8rTMEVBR
4DLEJZaKlUZZ9LQpUn0m32xCMxcVEUXuaxx5TKdbs2CQL398+/Hy+vnPn1Z3FKf6aEUcHMkN
zRypK9R4Vs7KY8533piab9MtAqvesPsdYnGoNezuH39++/n65T93z3/+/vwJHLh+G7neCW0b
7mUaVxeldMJTFfZJldEr8JKujGpjX1WyYLGjvaKmTZNt2hDYKTlPywC8Z2VToDEcAwjeWJI0
v7cTrOVZvuMb0QV6SfTuz8uOWQN/dhMcY0eLGear0BwE9JuQFtH+T6NfHOK0BN93pOaDmEhX
S0X9+lmJ7JiO1pemrEF51WuEGjHjuS1HqMyYheHdBT1GBKgg11UXS+J4zX1j8EIQH6fH+cIC
8v8Gi2t21ydp7bsQt1Rz9Aq1GbrnzM0fxgyvzHA8v/u4XIechp8kf3mBm/ZLP0ECMNkvSTaN
sb6LnxsBzKquAY61OiFoY17rZQGSFKoEuLjfyweujcwnSNpyUGRcLuaM/pDvo7x++7GacZqu
EcX49vF/sU26AAc/ShJ454auNaLR/W/0WgWPM2egUM0P8OnTJxnGXow0mfHP/9Zvua3LM1dP
LSFaffPKWP6AQfyfpiyPsaIWQFNy5AvVzlVpRNQ5hnF2MyHSYI+ZQCeGkjZByL3EVDhsFEta
vcS7kTTv/cjr14nyrsx6LEV5hoGK58RRU1Y4oqlMLEIGzhU5oReK5mqB+kXWJaN8ty/0d24N
INGAMco+2DOEUieUO6kaaQ4r8Fs9VmIShozwDkLliB1rKdbvyA8mjjqzFKjpk7x9MO+0KLkY
mecWkEXgjzzD1h0JjqJm5qC837xFJVRh3v98+v5drOFyZVytCvK7/a7vrTBjkq4MExZxub9n
lje9uSK8Sjjr4A9ueNOrhK7siqF1KBiqx4pbapUUHHDoddVIxyTm+96msuqDH+xtakOTvrd5
m8KLfYvGSUmiNBByVh8vNpbXdhKic6lu1pbE9TUCSf4g9pXOapMyHbLxiqsZ3R/r9lnpk9Tn
X9/FJLoWh8XlFaGO8cXMIpK0cly4lh13G3C1SxNaDxPlYNVLimrGOFN9AjuKcNVTiorywyms
zd81OQ2S8b1xTV+wmkuNrixdN6PVLG3+oa7wk2TlTZDuvShIXE0jYD8J7I44podo75e3q0VX
576G1aGjA9saNEohtodNk+xXLQnEKI5W/ZGuJwjpgWo3rHIbXTU3jyMviTFy4CcrMZNAEmOG
4QU/+LYsjeRgnd5D2Sf41TuFOx1VJXwrkzCyMxPEw8E4GUQExRxYp5PY0BLjAUXVukIJ0t/e
krEhpZD57/79Mmrn5ZPYmOlD+ObP0Zt5sEsC/fsF8W/GBLtAzg3UwsJPOapZI6XSS8u/PBnx
kESCalMAN7Ht0iiE44ahGYcaepFRQw1I0DQVBNdfUojB4arrwuxjkdbM5GJHEaTzOpqqpR9h
H5uH/iaEe6mbPG8WO3Q2UORhY0zn2CceXud94uNAwrydszWYv98SqVF0ZmUOPJkGctWOduUl
UtoYxmLFBvEuMaOaQuExqEIzUOtUpZ2tUxxRV0TEJiWKcb0zICmFaPJiEBkuapPvmvwK71k5
1WwwyIi2K3gEYTt5ghYTS7hSXebvxtIM9BZ4PiaSEwN0bexhnyppeOPTBM1VIrjH28RSsFM9
sCsmzBMLP2qCMNXVIKor3BNxlcfxIdj36Hnj3HLSv2xJcPrSpk9+aGb3A1VoTtmFFcOJXHSD
65SQEAF/7+3QBh4xbPNnsAR+v26HyRltjUip84wZaoLcC9/EAfqAri5PdHPfs2Ql238NFF0Y
Rz5aNn8X7ZEMUja+JixZ4ijGyi+rdtijgjXzNEEcYHe3JgYhFTs/6rH0JXTYah/gCCKk/ADs
wwgFhIrkIZJcHsPdHu0mpSjtNwRDihtY6IODboif4fF8D0u97Q67CJsSJoYL5b7nBUhVlFqL
tlx6OBwizHVNTqeaHQ1+Dtc8tUmjjVBto5UPiIonhjgRjYFM0/3O3y3pGPQEo5e+F/guwFCx
TShG6mVyHJwfh1h4WJ3D14eDBhyCHRLXlaTdvvcdwM7HI75KaLscgiMOHKk64shKCBOkmYOH
jk853cfBZoH6fMhIJV8Jb+sCTwQ8mbbS6PrGx76Uh48Q1Gjj45THWLxdiIGLidB6kzYhmdjr
eRF24KNzJEF2Wqea7aNwH3Es2RN3GLZHfHKMF6rJJl/WCd3/0pEOPQyZcysiP+ElWpAiCjzU
TWDmEAoGQT/do5bPGZb2JVKt2+Wcn2M/RLonB4uROeHMUJcg4+w93SFSL9b51g+w/oc3SMmJ
YbVB7ZprLjllb40axYGUdQRGQzCeMrp4aRxi5UOHBEABqigaHAHSWBLYRQ4gxhpRAsgogrU/
9mIkLYn4BwcQI7M9AIc9VleBhP4eVYM0lhgd5xII8XLEMSZLEsAidEvggPSzKt8B+4Q2oVrB
VpXqaIwuv/OnrMoC/1jSeXysZaCM8fBBC8P+TQb8eEBjwLU3jSF5gwHdk2hwiAhcmWDyWWIz
QlFiLS+omOiXBzS3QxSEO7yJBbTDd/kmz9ZQbGiyD2N0ZQVoF2Ca48RRdVRZZnJumKZmnHZi
PCHVAmC/R9c4AYmt4tZcDhwHD22TqqGlyytUcdSUDo11AGZgB7EDZCiGzO1gIT5oQ7uxL0rP
nOURvZOnK28B3iBHsSNsMtzjcFyOjuVAs6xBc84r3lzaIW+4IwLQzNiGUbCpSAmOxIsRLTlv
Gx7tPGSOy3kRJ0J7wAU4ENvOLX1YLkN7ZEIegeUmGcoSJr5r+keroeZ/rBoCCbw9piUoJMK/
EVMvNlkAstthGjlsSuMEqXDTM7FmocNU7PB2Yue/NWIESxTGe2SpudD0oK5frdIFKHC4B048
fdowfzPrD4UoNlJTfu6wzhFkbKkU5PAXVkgB0C2RTUsmlmdkamZCqd15yNQkgMB3ADFYwJDS
lZzu9uUGgk34CjuGuGLB6TmKg+0FTvKEWwOIdx1HhZOXZYzpRkLF94MkTfA9L98bR00zIFom
wVWJvCKB4y6ozrI5ZQuGMHBpKugtyRk+lzTCB03Z+JuLjGQInZ9i53EaAzoXAt1RjbKJ/G11
aHoza5up84PNvfktCff7ENkdApD4KQ4cnID5Bo4BYdZYgwGRPkWHfZrpVqPhhZhR7atYOhhX
WEw3jUcMqnPm+F5g7IxHap25pJUdyULqQWZYkpE0yAcFIdAAeit/ZGIla0+sgmtyYBmus2xI
WUEeh5LrL19O7KuThRVHjVdkgm9tLgMCDF2bN1sFmx4IP9XwugRrhlvOGVZNnTEjeavem9ss
hP6JfEZQBqLY/MSdOsK4WV5gOJLqJP95M883ipeya9ayh+mTzeRYeVF3Mje5wNkGqZ5y8tLE
baTr50cr8EbgPV89NMtEsS59zeSqvpHH+tIhkLrjIH3bB1aBDKUIF8S4kg53kIi3gqXr0mSd
vT29fvz86dsfd82P59eXP5+//fV6d/r2r+cfX7/ZcfnGz8VcOKYNnbNyA5wTdEV643XWIa0y
WqURZLwxjwNx6AICHTA9ByYA6eNlg71OFryQvPiAdak6AFwD472vNfAhz1s4Xl0j8jJiA1EG
sPKP/l1oFWamrLulned7WxVNb0jebRV1sY91whR8ASsTmEDgXt9mmWQ4iU2OKQDAJpPyiRlE
/fDOG0jgAzrJd87Ju9+ffj5/WgSTPv34pMljQ5GezntalzdjicWz5BD3peb/R9m1dTeKO/mv
4jMPe2YeZseAwfgRA7bpcAtgx+kXn/zT7m6fSexsLudM76ffKomLSiqc2YeZjutXCEmIokqq
S50sSVRevSQ/2sSZogqNwj0MnbCM3KaOkuJqCx3DyPVtLVV6BrgMs4BtEAHj5RYxGN8/zo/o
stuFzBsnO9kqMuIIkBaEjb+YubzHlWConbnFb6t0sM2fR+PKkT5wNqchiKuDxvbnU03qCkTk
v8GwRpJUdoA2aaimk0JAJDObqs6Hgmo6f4lWtHPogUZ3Q5CuO20NNJN38KMl8yTIDrf11KM+
f9GCtzkHnNPb5aNJQqKyiweCctjhg8fxIiHY7bHcbh2DS8csZTtDc/QRAdVi9UUE10ETo3O6
OILRZju0nL3+ZFsi87zEQTWlbRIPzA0tyyG6+5XdPCk0aJF4+WEDfRZIhaZ7AyJNZn6ackTj
AQuyx7oOyTXWn+mTy9Cpc+7Z4wtDMoxOtIR9j2+XtVV62J85+ouAThFzhmi7DHHBcS58jdh4
jjc1acbFnWZAyfhdoxTTp6NPOUSS2PZU3cFcNJL5ms8LgavGnTq82Srg0G1cf2xu0f9fm4T2
w0+JdRwy0rJOZnNvzwGZO7X0cQjilSyJyHJz78PS4wW7bGPklDRY7t3p1IhIUi9tvV1lOpMm
Oz2+Xo5Px8f318v59Pg2kflYky41MqOtIkN/VtcFlf/7hkhnNLdypDXJIcgcx90fmjqUy4OM
PS2dxWzsQaKbj+8bDaY0sZVYTkGaBaypWdaeNaV+NNLxl40FkNBcE02KpzC5q6Szh5k9bFtz
cwCaj7NCJl7OSiP6LLS+yAyVeCArVJunmhIfEJC5jrLN1CnHRjW6LqnZqGOgaK/lCrZjpXuA
w5vOri70u9Sy5w7zVqaZ4zqaGDX8vQVRuFtrF3eH4ZruIj3nWaJ+rt3rDjafu1h0PnO1LUED
ZlejBFs5r12Cgv5Ki/5sZH+9hR1rf0Ux0X3LB5q5XBSXc1XgFptMRhCwG7AqS+usxV6sI60N
pRNlIJhC6vY0USZVMbHmhFlal0ycpxqIPWYE9Jakcjyk2IBd9sGxChADxyrZY4KjIm0C1SNz
YMB0EFuZYqTekqDIgQd3jsTG0VUu0IzWRFYQqFWwmEGgPeN7nJ6t8ESuo2ocCiLtkZGmhXVw
tWXTAlEwfdUQqF02zG17++XqnU0vKYqx7kAai8P1DRBblc4aYnHIKshdx1WthAGjpq6S+1Lo
5/wAJLZzHV48DIxJnS4cNk6A8Hj23Aq4ToBg9hz26TFSVwFBIZizMyEQm0f8uc3fSvvSUoSf
1eEzzMyKVEk+mbpUfoCuTh3yeHOPv0tnrFxtAZlc9YtGIN+bLUYb9z3vs8ffmiKf9aC1TMYa
cK+/KoMVM9bAgjsOIzyd9TWCLdg3UZpfU3Y1Sczm22zNZC1hJ8HnvjMyIAD9kYpZKldpgVb5
ycSVLqlzoSK+7y7GEG8/0rXydr5gt5YUHjAaeRmFiM3PMyAuK6d7E5TpTWc5Xu1Oudp+ja2x
b1e58/0pW6NE4/FZeSygBQuJWJ82BQNzY2F8fvKIW2v0audQB+LvUNtZGUz5bUTKVY9sNipc
bubPvetveZ2usUoZOxmGPqZAYPVOvWBkDPe+b8+uKwDoWmJ5js230Bl2nwwQ2WznU2knLTn7
+oozjUMd4wWRwCyHFTamjWhgI7rMlXBUjWnB6xymXUgwzQZUMGnPsTorPVxXgFYf57De2GAG
KY0Lboj61g0QZFWovpU0YTPzV2GXIp1WpsLqnD3ELhdgqUKXY1EZPCYDe3X4sgtZel3k9zwQ
5PdqMne1F3g+XV7vRwY2wc0yGmlgn31yeSJjXcxuVWGWcY2KWcUMdCO1ALFQ3CGECcbwxbHs
gpKL4RDbW+vXh5efuBfF5G6JmOSsAdCGrHW9eaeSBX31+vB8nPzn4/v342t7qqtskK2WhzDD
clbKWgNaXjTJ6l4lKX8nVSbSRMFwInJVCP+tkjStYrXkRwuERXkPVwUGkGARjmWa0EvAsuXb
QoBtCwG+rRW8Ssk6P8Q5PICcQMui2Qz04QgWEPhHAvwh7RLewKZJY4ZJG0WhVjtaYS7DVVxV
YB6r5g3eMQhv0mS9oZ3PYC22KdFoM02SiqE2Mre0+bB/dommjCM+uBrWSZiG9Pmp1bWUMViR
dqKCxHa3eKCgL+1638xc9VMKdCUKbiC21j8dqFk9GG+UZKVWTBuINXRpykc1s+tdTM7y4fHv
p9OPn++T/5rA0M16gINsDaNDmAZ1zRT4bFn6h0UYh64PuJFOZoD63b3h3LbHWuuDXXwDl1DX
7tKRnNMDXxCheswHEhMeuqUxgFeUVqWFflOEGyoJ2VBaxryP6pnpACnqA9OlkeQbyj13rj2d
pyXX9DIC/WrOIUEV7sM8ZwcRk5yGnyyo7vpdEsWF9hrL1XY5v12e4P08vb08Pfxq31Mzg1gW
BWbq4GibZfcmeVUFWbzcrkDE/Cuwjfk9lBXITho5z3FjfQzdAetq462oa4KbuOjyzXapQK8P
v2s3LdaKnMRfGACGWSZBWhCNaIB268Di3HsVljDdNrZNkokYn2DFQaPY5maG/U0SmU9rkxDH
E/g5BNM3VZyvx+rdJ1EVcDXftxsSqAvtDSJFnoy9HB8xTTJ2x5D1yB/M2jpxpFdBWG15A0Og
WBSO6Y3AtljglvZpGac3SU5p4Qae/r1+33CTwC+ufIpAiy3ZO0NaFoRBmpoNCY1qrB29sB8S
YYbXRV4laqnCgXZYrSh7nNWSRm4bp6AgcrGWAvxK6p/Ip5Utk0p/hCs1q6WgpEWVFDQKBunQ
3lhlJwHfx/oVd0HaFHzOKIR3SXwHinnCn8qKrtxXY285wgm6sek3TUZqHyH2JRir+YNoc5fk
mxE1S05Ajln0mhG3T2RJw7H0HAKNtclP47zYFRqtWCe0mqJKxR9qAcqeri4ZJFbbbJnGZRDZ
2spBcL2YTYHMC6bkbhPHKbfgQKlNQlFpcHQCMnjk1ZUJyoL7Fegpo5IHjFL5Hoy3gCXp0ftz
ZJJBGoOM09c+1pxJxPKl9LxJ9FGCUTRS8A1R0BLQORfeEV7VETxxE6T3+bhMKzGJfciFqwsU
q3ZW+GIY76D4OnJ7EQjWQUJqfUtaVm/Vmi+CiLHytGi4IDdxkBkkWAog42NNgEGjZbrViFVm
TOYay9AF9ah0FCnrvxT3tDGVyqzDJtlxCpeAwMiJ9des2cBrm+k0zO8tk10NiEplbowFHu4O
Zc1pn0LgJQkWbaN32id5pr3jX+OqoCPuKMxNsbp6WI0KQRnXcNhsl9oTkvQ24aX8ZXx5Uz2k
sHNNYb7kQ7JpTtsQCbMTopYavH0ZJYXYKxc12H2bMKHW7DAkxNstC3UUSN6mZWJmAlYY4M98
TEsXNR5letD6sAkjrXFD1UKaqD8zKDg9vfz56+30CNOWPvziMzznRSnuuA/jhC+TjqgsIjg2
oibY7Aq9b8aEsI/1Sie1HgTROuZ3j5r7Mua/2Hhhhdp2fZc0rJ6QqW5v5V1Vx7eg2zDE3toe
LjwsMV8wQ4IvQl6AMeMrWnIEEzhSpwSvw0RandIKv/+qo7/wksnm8vaO5kCbw9n048KLu4Rh
CimoMviHCD8kgyRxbOgM/M1vxCFPBIt+pJtc4h7RfT6wRHTujvYswrSczSozqMt0G6+SmLiC
SiTe3+dFrd8TgE3izBd+uBuLKW3ZbkYcCgHdwmgTD9YI64YDDOHtJkxojzb1LSVkjboKQDWm
tYw7Sv+clDS59fvp8W/uvewv2uZ1sIoxn9w247WcrC6rQq68EdwEjS58utDy+A7VRVKCLarl
Hg9HOwitSkOWFe4W5Oigg2XgQLddi0+j6A7u1TAzIS4MgsayWYc7CefO1HYX5NBJArXjaZ75
BMboW0fvJJZzUp1MBqrrG3cQO1WjHROozV/EfbM7lOTq6IkL1dmhp04tndqfy9K7yry03AGz
gKlXiWwevTRnDNFlxoRBCvy544Dzb2KPe/wheYv77pSLRO1Q6TJqXMRv7g0T4uqz11IN9+Ue
9BxO4RWw7kAniExKAbmkIpu4IsgeN4670Jfk4F5AFzdxuhe0JgzwrNLod5OG7sJiffLkHXS/
8n6duv/onTEdxgX9polsb2EujKR2rFXqWIvRm7cc9n5vyoLJ98vr5D9Pp/Pfv1t/CH2hWi8n
7b7uBya25XTDye+Dmv2HIU2WaGrw9SAELh2aR6cq3UvXQpWIHnn6oxAey1hfh2R8Gt5mZrY9
ez4zn921I2/Z4XXmWLSsUj+Nzevpxw9OpjYgjNdxxet0QRjGGDyVgPZ7z3Ik8P88WQY5ZzXG
YCEcYMljtEwdVqopIKBBcVao6sAFV1vkcywnveDRlJ+qCQ8kbz4SMDGD51u+iXSfr+E8E4ib
sCngntwZMqCANGAX0HZaYnfY8dvr++P0N5WB6WaOxam6BQ+EyanzsifPClmTvFmZ02CygCLA
K3Y9B3RwZFxRtSNqKBpL2Ctj37Rjbsuz67OHULBcul9j1iodWOLi64LOiKTvfTWmrKNHNR5s
jdEPYZw32+qex+ezMXobUmliHvE4bOmb+8x3iYtnC+gBCx0dI0gXmqvSAI352akcmpedCvEu
coSDmS8ubqnDrvgwdRy1GzrzEVe2liepU8tm01lQDpuZ4RZhe7cHhD/16zhE8iTemUflmHKP
UCDOKDIKaE5/3SzPrIbNBNYxmJ7MHXDr2Dcm2XS+6QAjIoQgC4tdfZ2fz5UeYqwVyWnXATXo
rguaMrGDVvAZYpXhvlF4uS1mFEB31RTeKr8aAtfR4wwUfmZ1Vzug++zaRs++a0ujdjNmrBEI
F78TiViWaVQkigJpOe5lJio/Fgz6VJRGNejrzOsg6XrOSGX92bJ6CDNamIdFaBsaQfn08A4a
1fP1/oRZYXwVW8Fo+9zxocLgWsxzRLrLvikoa31M0JIlKXfypfDNZ+wU2bMpJ9+1GFuVzr3M
dXNjzZuAE+IzvyEOfgrd4cUzIC7rBt4x1Jlnz2zu2uXtzB+JGeofbumGrCXUMeDDZ197M9UM
J0MNdwaD6et9fkvz04rFdTn/GZZbbWmZd0j5JN8qziwhpgJQL3Ya+EsL7DMfinThvs4jnJOv
ya+5M+3rYaC9UR/Pb2CgXH2buF2zCGPfDb850SxAy+1qcnnBOCQyg1h6FX2/uNNnedUhK3bx
4KSm3g7ROk5XqONxum3LsokD1StLpQotN87UHXWtr91VwXYfJXWZBuqhVzSbkfoNSbbGVMtJ
ciDuVpvG8m5IlHGQx2m7WQTGZ12TwCmJiswxHfbbb8PAMQM4Oi0tMXsRd76oMhBPNwUwDggp
i3oV+m+1GSm4SZa1fofet7V/waTeGsRdVAYGcRmkaaF+DFp6kpfbRu8ItszvzGpti/QbSdGk
S51YSR+6oVlBxf6a24kYO/x2+f4+2fx6Ob7+uZv8+Di+vRM3si7U7hPWrg/rKr7X0182wTph
M3Jxr1lfSbpMypHdU4zjrLDEJW85hZuqyIbKn2Nurmka5MW+Z+ObEjsBYHOOHObegb6Qj2/j
Bkm6LPbGtFfH58v78eX18sgK3RjP/0y7sH0QzMWy0Zfntx+MRCuzmgZVIkG8B5zQFGC/5Ieb
ksaVR4uuRFjz2RhjDd3/vZYlY4uzKJH7x+QNt32+nx6VvWrp//v8dPkB5PpCP0OdHzADy+ug
weO30ctMVPpOvl4evj1enrXr+iGFh2UVZnWzVGeAvUhWFdiXf61ej8e3x4en4+T28prc8i3f
bpMwPMT5mngob0OseVrcEYp658/aF504/Xe2H5sHAxPg7cfDE4xHn4X+KhZXJ6npleb96el0
/sdoqOVtE0/twi27nrmL+yPkf7WI+u9K1iVg6zrW/iRpxLqvZJuqTSSIEyeF8DGJ4gzsAeVT
qjCVcYViItAUGsKCfju1VpaY5eyjgT/lLIO6Tnbm+9UNLTInfJiHQ7yLc+4AM943ofgkdRWG
Hy/n0TRpklnklPsSqMdkLbCqg8VMVRNaOj2daIlmwZYBcBwayzsgIgHL6DjMrZOWXja5a9GA
lRapGn8xd3g/rpalzlw+tq/Fu1P24a4ZSG51Qwvzp5WpNbcPWUkOqFOwx6F9tewzKaOOWoNw
PuVoh3DJkkGxG6PrMkdB8VDPCEhH/GaVrAQXJbdb0HHE9lD+uarZawxWcdca36yexVZZ6jvD
Fb0lDy3K78Dj4/Hp+Hp5PtISd0G0Tx11W7Al6JkhllmgJWHogRDWj9haV1xEVSrNshAFtvoi
RAEJw4QnUUVqDThJWGgEuv+j+OHIGzrc7v3Nvo6UdsRP2rWbffjlxpJnp4OGEjo2a9llWTCf
kYRXkqAllQCiR/PGA8mfsbHEgCxc19ITg0iqTlDThOxDeDguIXi22re6ufEdNToOCcvAJeU5
tTUi1835ATQLLAL97fTj9I6Vny9nEH76KppPF1al1gKO5raa8R1+e+pzlb8PyQrzPZRBBRaA
un4AXqg5T4IoEfVpSE6mNiubQfN9SovzXZwWZef8rh5ZbvZzdfnJHMsHLbWP3AgfLeuCSdZn
c/YQFxE1s7kgkFxVIOvJ/iwQFp7aJaw/MbPJrgpmTvxqmT3qYJHkjE5BHmxphLiIJNnhB0s/
yutDgg+JNg8DsuPvPDAATjeR2lyVo6VxIvHxzIpIHiozjcvkTmRUjbjR1LdINwW1tvgafEMK
J21wXWKfjB+ayOoD8LokPditPGtKO9Uqc/uu/e7luvYiqa/a6vVyfp/EZzXtJcr0Kq7DoI2N
om0qV7S2wssTqH80LiALZ+2xS28y9FxSNfp5fBYea3L3h+hLQZMG8BXatGKWmR/JEX8tBh/I
/lMQe6rEl7/170sY1j6bkjsJbqk4BPtrPtUTzydVgvrIuiS1B8pa/bn7KtMoDREp+ojlBtjp
W7cBBtM+CUHBv5xpgEX7sZHfaPr2aPDwFR7cMtn21Sed1UNOd3sI+6jL7rq+T4MZYIBEHWi0
BnmsnWepPLeLFNbrg1xlvNx3ZYWIYaVErsOeEQEwm5EPgOsu7OqwDNToDEF1Kq1Fb+GN5HeK
yqI5yFP2jlLPZjbN4OTZDusgBLLWtagwdrX8/CB9Z/ORsDwQJXBn153z/kFSNAAHa9NdnV95
VI3Fxj+en7tIKSoNWoNMhIWpHdYxad9wu3YGZ6+tDq7FehfaqNPj/3wcz4+/JvWv8/vP49vp
f9E5JYrqv8o07TYswqfL49+T9fF8fH14v7z+FZ3e3l9P//nAPVV15V7lk6c7Px/ejn+mwHb8
Nkkvl5fJ73CfPybf+368Kf1Q2/7/XjkElV4dIXlBfvx6vbw9Xl6OMLed3Owl3dryiOTD3/QV
XO2D2sbSjyyN8iqyZX1fFaDmkqVabp2pzGk29rSb9jrQpGpDCggIz/t0uFk79pQoiuNjlxL0
+PD0/lP5jnTU1/dJ9fB+nGSX8+mdTFWwimfkxAtt3amWEKWl2ewLxTavgGqPZH8+nk/fTu+/
zOcWZLajFl2JNo2qkW2iEDq2Z5/LZpslUdKoJwRNbaulWuRv7cE2W63gRQKfuJGyXgDpCV67
UeojknIE3qx39CR7Pj68fbwen4+gLHzADJGVmmgrNWFWalH7cxLu3VI0Kyrbe0Sl3uHS9MTS
JCa8CjBfpbTOvKjej9H1NJ9Xhim9xkTk7huj20Rf4PE5rPIRRNu9pR07BqnDp9sEAF4UZYch
KKN64dA1LGgLPjR7Y81VN0v8rSpOYebYFi3+jCSHP1cFyBnxTA3Rv5atRguAR4sVrks7KKcj
Z7cShDFPp9wplEiMbMG8qDFHQ8ErezHlyudIRPUiERSLOg2pNn/Kfd4UhrIqlGX0pQ4s26LH
1GU1da+W9DJD99OmckfyFqU7WCAztooJiDCQcyQJtKQoOxN5EVgOTQldlA2sI/5uZYBlM0fh
OrGskYNvhPiid82N45CCt81hu0tq22VI9OVtwtohFYIFYU6muy/nA8/V9bhNS4GorsFImKvb
VECYueqJ+rZ2Ld9WdqZ3YZ7SqZYU6t2wizNh2HHHiQKiGRJ2KVixHPNXeES23aZUbkUSFTny
OPHhx/n4LndYmA/Pjb9Q3frEb3VT5Wa6WKifonabLQvWOUs08rsGa4fPzqq8Lnhh3BRZjNF5
Do1ccVxSIbkVyeJWvFbR9UKHuzWAladI5nAN4CsQVpnDVkuTdP3TwE76UCLh5en4D7FqhA22
JaYiYWw/q49Pp7PxJDkBleRhmuT9hF6ffbmd22deoJ845pbinp079OTPydv7w/kbGBTnIx3Q
psJCMBWxSBU4wXDeals2HcOIDtlgrEtaFOVYQ8Khl2ukHwbf2fYjfQY1TriXPZx/fDzB3y//
V9mTNLetM3mfX+HKaaYqiyzLjn3IASIhkRE3g6Ql+8JybCVRvXgpy64vb379dAMEiaWhZA7v
OepuYkej0ejlab+TsWu93SKPlxnmw7A33Z+LsAT456dXEBV2hGb8dGpynLiGnW9r6k5nthsM
3hYnZCg8xCh2NV4fqywozAbaRrYbxtAU5bK8ujie0PK6/Ym6XL1s9yguEcxoXk3OJrn1Mj7P
qynJ/uIsAV5pvgtWtXWCWMcxt83Tk4q0YUyj6nhibXO4rB6bgrn67Sjcq+zk2EmzUZ+ekeId
Isykhz3PciJJmFDnsDu1UiMm1XRyZqBvKgbS2ZkHcPmTNwejwPq4e/xhcRfzaLGQ/Ww+/d49
4BUA1//9DvfX3ZZiT1KmCgowacwEugjz7opUnMyPLcvOKjV938Ui/vx5Ziqba7Fw8tBuLk7I
YwgQp06aTfiW2lF4mLsWgVfZ6Uk28WKBGwN9cHh6y5P90y900Qk9eRhmJgcpFWPePjyjYoPc
YZKBTRiwXJ5bwf6MzYIo2nIm21xMzo4DcdolMnAzaHIQ6Cl7V4kwtkMDvNwM+yV/Ty3nc6p/
hmi69gPZpeLy6O7n7pnwbReXUZIaUTdY1i3MSFo6s464tE5Ft8ChvIpFq85LNCxSKDetyqgJ
pJ+Dfc4bfHxtRJll9iGmdllyfVS/fdtLq4ux/TqzHKDHNhvALk+rFBijiZ5HebfCQPxtPZ/a
X+IXOoFYUwrBC8sUzkRjmfTdwCCqWXZFZyxAqkUNg5JvzvNL1+fdIMrTDc+obiCy2rBuel7k
XVKbk2ahsJdeJ6qIVUFHe1ktq6qkLHiXx/nZWcAtGgnLiGcl6rNF7IZu1BzAmrqhjWiVEjFj
6eXR3D7Y511WRf5K2L6g3bnkIg9K6+Sva7RxiCLLDFOaPeS0tc+hMgcWy4aoYuzx/uVpd29U
V8SitENEaJqxATEZ3kQ7b5k/hwyENhAf+eqYDa5eyfro9eX2Tp5I7gDUjVEo/MALeYNWn2qh
GFaQGoWBFMnMaEChVd4GqC5b0acNKJ1MayM24Uw0c85C5fZki0Ywy5wCBOOsaxIf0i1JaN1Y
xpoDPK9bSsjR6MoOkTPAveQLo7rPH/JBM1ctLVcWljXIOSvMbx5KTILfoC97bBoi9x8uBOc3
fMS6lmuVkGFU2yojLw6yaMGXqflSVi5ouATGCytDrIZ1izzYdESzhWFxvKhT64f09ofrVVeU
djwrxPXBaIK5jwyapKVZlUHCZOyfIFVNBxSTqDlHqyK74WVknoIYYwkGejMa9xi3UyLBX4tv
3cvPF1MzB0y7cS2zMMRebtu0UuUOPDPvSjNEVp2Wltck/sbDNzykdZbmTvQVY/EL+HehosEa
tsYtYiiJtKwb68ZjG+qpd6vdLxBSJOe3ROErhvIuyLpwb62YqOklDKJ/6cRk5ptm2tFOvJvm
pDO5Zg/Ay2oK0xFlPqrmUSuspwPAzNxSZmgYiSFuZe0ebaCCmVOB2YVZML/L13ls1IC/XI9f
KDWfRyxKrPwBKQwhYBa2t5UGA3HAGHwgQctudMWmjPyN4rsNaxpB1myNg1+BMRpUv3Xjjd9k
eV8D5VgEBAM3Pz+U83rjNAR/X7ZlY/H2jdk6sh6kCASpRlRZYEBo5dEeaISedus7VsNgNt2C
OYK0lnwX9dRZA2WkYNTjRyOczmoItaQHnFxMkl8s3aU90Ii2wADkgO5CbkKK1uulAqt+Hmgz
rKtFdwVivhlDu0izYQD0bpl6u0KCcA3Qo9J/MSx0+7s/TrymOrhGJZEax3AbpCmLJRepsmVW
8rT4Cow6tT2NdN1w1EnNSSCKbIBjYRwFe6Q0rI9GVZK52NGNDDPyrCyFBFqso1HZdQAPhcIN
SVxXjS2ImGCQhJb2zNVyykkGsqjdiOqxC0gVwAmxsWC+l5uG9dEr0BY4T+V40m47kkGEMSAF
NRgpRB2yC0aGu5aUUWMaZLZNuajt40jB3BUtzydqcjAgcMaurSJGGIakTDH8ewd/LKZBkLBs
zWSs9Swr12Rfja/SIua0h6RBlHPocFlZs6mEhNu7n1YI/do573qA3MXOClGIBPh7uRSM9p/S
VKFDWOPLOW6yLktrI7aDROGirimYe1obmKFNptDUd1V1O/4gyvxTfBVLuWkUm/T6rcsLuIvb
52SZpdwS2G6ALBDeo40XnYvS7aDrVtrvsv4EJ84nvsH/Fw3duoVkqAYHqOE7Z6FeLYJcFxAx
V7wNc0NU6H85O/k8sie3fAXR36Ql+o7VMBTv3l6/nw8hU4rG2y0SFJYQJFqsyVE6OBJKO7Hf
vt0/HX2nRkiKWGYXJABjBJm7XgKjJM1iwQ3OuOKiML91VATqz9hXrdjwmzPMT1orH2DljGsL
DQJ9ZGVp5Bix2MNpzMIbby75OU2eOAII/FaxQk2hhHtFSlBo986dMrnzO4It6P9WZxxcVY0h
vmxZndg1a5g61uTupnQbFpVioGQpeIPPqw6DL2e015VLKq+ih6o06fDgiqqWrFrKN4ervMlS
Sjod8NnNzB8tgJZ0hTd/qK1uqHfaAT/DwIdX82wFw3XDiYp5PudxbIbIHedBsGXOi6brzw0s
4ERTXbkyf54WIB5ZZ2burcGkCu+Py2IzO4g9C+0fMdZkQTBDAno3XbvBQhUahCUHXsFhY5lw
y9/ILzO8d2sR0dIMKxKYvwFNKaU11exwIbMkIotxKc9n07+iw+XxF+0y2nS45/rooBvvkf25
xqHAd/fb779uX7fvPEJPV9pj0L85XMGgHnU/c+QbZ7zKwp9+2D0UDP9D1vfObTLiVuh8LXfM
2YxA52wDQiKrQYyfEui+0wcKUN1zCeBUurL2QevtQAXp1sIJjG+gHWmMi9I9HHqIfxEdMGFG
OZDcpBXRAJD616VYOYesRjoNwd9XU+e3Zf2mIO7F00TOvjw45LMukMAPw1wUAf6kmuadbRYe
bxx9VL24oLajJkK5hWdIZPctTms2h3XRxhUV/RpIqMNgKZcKnGppabB5eXI7P3E0rApdr5G6
LUQVub+7JbAOYxR7aFhcjHiV0Kw8ShdWUfhb3Vio932JxZgca7g8SeWBHmBLG4tUa85WXbXG
uN50tgFJ1VaY0SOM95a1ifR2wwgNmL4OeHwsqjClBr24FOFftO/QCoQbAgvKpuGD96KiZ6ow
rWXhx8jJd/snzIb64fididYXlG52YgXNsnCfTz7Tu8ci+kzZglok57anuIOjlpJDcmr3zcCE
G0/HunVIjkMFn02DmJMgZhbEBDtwdnagA1TYLIvk4uQsUPCFaRLufBPq2sXsItRMOxIr4uCK
jsuqo2MkWl8fT0//OBVA48yFDIdkg3SdxzR4SoNPQk2njWBMitDK1vgzukZvUWpEaEKHjp0E
Ohwc/mPa3QNJVmV63lHscUC2bqk5i1AaD6TZ0RQRh3sZ7ZA7khQNbwX9gjcQiZI1dFbEgeRa
pFlmGoZozJJxGi64TLPi1ZZCs+kAvQNF0Zo5Ia0BsdJdaEzTipWVtBARbbOwgi7GGSXhtkUa
qfdkG9AVGAolS2+kGe8QpMzQAJfd2jJkst4nlcvn9u7tBc3VxrBp/cd4pJn6mGtUjl62UEGn
1ZOjgM5FnYLEBzdOIMTYV/SJ1Cu7eewdmGM1XZxg3kiVL8oSgBEpFdVppJDU9bl/h+jinNfS
0KoRqZnw038D1RBL3aSL6YVa64avcRVryBxa7IrD/0TMC+goat9R6yuFnciOZu4RWRdur4QF
FIEXY0qfCPIkKvCVhYnRD3z7i2QRmC9QpQv8A1r268u7T/tvu8dPb/vty8PT/fbDz+2v5+3L
O2IY6pwFXlsHkqbMy+vAE72mYVXFoBWkX76myUoWV2ZOOBcDKwyGwr49DjTXLKdfLcausAVa
5qWkYmasCuTtcl2gmxhZj0nQcSbI+JzyiUlS9VcG2W5Y34XV+ADZ8BxJ9ifwkcTCmgI+eiA6
OVGw5k698nncY6ZXNI7GO/S0vX/6z+P7f28fbt//erq9f949vt/fft9CObv79xiq+wfym/ff
nr+/UyxotX153P6SyWW30t54ZEX/NabbONo97tD5bve/t71/rxaOI5nxB1+KuiuGrhAmY8Zf
uMxhQNyhNVCOZG4SyHc5GNCh9+alSlOg8ZJNMBq40K3X6HDnB797l0PryjelUFowS7kL7BX1
keqF5eXf59eno7unl+3R08uR2sLGyElifHZkVeqW0YOnPpyzmAT6pPUqSqvEZDgOwv8ksZKf
GECfVJgPrCOMJDS0X07Dgy1hocavqsqnXpmGSroEVJX5pCAhsCVRbg+3rFd7VEtbDNkfDjoG
aYLgFb9cHE/P8zbzEEWb0UCqJfIPxR51n9smgVOe+BJb5T19Vm/ffu3uPvyz/ffoTi7WH5gx
9V9vjYqaeU2M/YXCTSu2AUYSipgoEvjaFZ+ensrw3cr29e31Jzq03N2+bu+P+KNsJTr6/Gf3
+vOI7fdPdzuJim9fb71mR1HuzwMBixKQqNh0UpXZde+Y6e6vZYoxpIlxrfllSuUmGHqaMGBT
V7pDcxkMAY/0vd/cuT98kZmpXcMaf/VGxJLjkf9tJtYerFzMiY5V0JxwvzZEfSAgrgXzN2KR
hAcWk9M1bU7UjxYlV96KTW73P0PDlzN//BIKuFEj7dZ4lTPfADze/djuX/3KRHQyJaYLwX59
G5KvzjO24lNq7BWGVPMN9TTHkzhd+OubrCo4AXk8I2CnRJvyFJaydA44sCxEHh+bjt0G2Iw+
MIKnp2cU+GTqU9cJO6aAVBEAPj0mTsSEnfjAnIA1IFLMS/+Ea5bi+ILizOsKKvRtS3bPPy1b
3YGh1EQZAO2alBQMNUXRztOAqrOnEBGtLBmWVrnG0MKHaCKGkYHJXKMDBd5DHR23gfMXGkLP
iD47fhw2ciH/El+tEnbDDpyDNctqRqwhzelJRs4PFchFpfxz3MUzI8pq+IGxgxvtIiX2aA8f
h1WtoKeHZ/QetIVuPXbykdFn8jelBzuf+dvBelEfYQnFHN33cuVKd/t4//RwVLw9fNu+6BA/
VEtZUaddVFEyYyzmSyeSuIkhGbjCMDtotomL6MeGkcIr8muKKd05uoTZigBDBoRLcnrgHcQh
1FL2XxGLIvDg49ChpB/uGbZNmlU7V5Bfu28vt3ANenl6e909Emdnls57nkTAgaNYL0sj6o/n
VJ8R9opLcrX7yEoUSjvTHSChUYPgaJRANXgkDLcZ6YArQZd9uD5HQSLGB+SLQySH+hI8j8eO
HhBHkWg4+NxuJmuia6y+znOOujipxsPcs2OpBrJq51lPU7dzm2xzOrnoIi56DSDvXSlGgmoV
1eeYWvsKsVgGRfFZJzwYsaMiU+LxqoKf08qidIlauYoraydplN0rJP3TFwMGfZeXh71MyLff
/XhUrqx3P7d3/8CF3/CiwciUaBggNZ1f3t3Bx/tP+AWQdXBF+vi8fRge5tQLe9dgmmulTxWW
xbGPr60EDz2ebxrBzEENKcjKImbi2q2PplZFw96MVmhMShNrS8y/GCLdp3laYBtggotmoTlM
FmQtgqXxWVddmhOsYd0cbqnA2gWlTUVnBSY6aRVoW/swaddNWeGlILBh8gpjvWrHXJDligj1
t6LMHWtskyTjRQBb8KZrm9R8to1KEVs+sCLNOdza8zm0wS+hitLBuUhvOuSMaLIQ5dUmSpTW
UHBLoI/gBgvHkgU6PrMp/GtA1KVN29lf2ZeSCLMpj88VBgeRGOAAfH5NvxZaJDOSiUoCJtZK
MnG+hImiPzqzRJHI/mWmnEzn/t0rMq4cw2XLWHRFXOZGn4kWmHZhY1kIVRaONhxNFfGctaWv
G3VyOFDTwM2GUiU7hm4j1LBvs6nJ9pnWaw6Yot/cINj93W3M/FE9THpSVz5tyswZ7IFM5BSs
SWCjeIgazgO/3Hn01YPZz2xjh7rljRldwEBkN2ZgeAOxuQnQlwG40Um9u4mnJVbXZZTCqQSS
DxPCSijEpKOh6YaNICtyfQF3EYSgY7x8JTJPayVSyS+UNRrO9NyKbY8oaHXGpB1gwoV1dRlK
qHnTVpK4dJInobZef4jRyC2vSMSjLBoyia6XmRoTo8hLQ8e5zEpL6YG/D+3NIrO9AIdxl4la
LcaR3XQNswpPxSVKW9QDQ16lVmZV+LEw82qWaSx9l+F0MOZvUcKQEDZkCCd9DZD+/Pe5U8L5
b5OT1xiioMycOSrKTqWpsd7c8Mkk5lVpvqoCW7VOF3x2LZY2kx8CyzgHtv0KpKUiCX1+2T2+
/qNiqTxs9z/8Z2opDKw6jDxlndQKjDZXtOq8t9PMymUG53Y2PBB8DlJctuh6MlhsaiHSK2Gg
kMm1+obE3ErqFV8XDHP8OgabFtiJ0Q8y8rxE2ZgLAVTmZpPU8B/IH/OytuJ3BwdwuNvvfm0/
vO4eenFrL0nvFPzFH25VV3/D82DoPtVG3Aoaa2DrKktpJ1GDKF4zsaA1SMt4jj6kaUWuc17I
14+8Rc0QOhsaC17AgHVQcPHleDKdGaIqLNMKmCXGoMhJA3W47spimf3Ym3CMFIOeX7AdyM2t
ulQrt0V0P8lZExlKFxcjm4eestfOJlwz2K2qB1UpXepqt2c93B929fCrLCgxaUlFBwT563Ug
V41Us+zu9JaNt9/efvzAt8v0cf/68oZhUc3gAGyZSrcfGVPHBw7vpmr+vkx+H1NUKqoOXUIf
cadG8xTMDDTadfejYNpVz2tmeZFKALqeUjbNCjnHBFu1/xH6FJELVaFZBlfF3Mn9M9DIS6Yk
JKfkrwbZ7qZ67PcXgdtM81V9KNfgqMjV4F6IMe9th1tVHOLl6UoZ4+O35bpwbtXysl2mdVmE
7oxj0ejqHNxOykWx9hvVIw6d4jYhPtm7LEzjZBjDA5WgRdCBXmgyEbWST/wFqXJcOhB9wibv
WZ0+cYYNU2ftXJOaJzaCtfPoIPJdcb1uQBbMgEW4w/EnOKZaklKDcmY4PptMJm4HB9qDkzJQ
DTYUi4U//AOVtPWoI9IasGe70qyjtVNe1nAqxD2KF/FwSDjVXNFetApZlHne9gFlyGygasfJ
HFSOKUpvqLJiyBt83ZzC4tJCwakoZTwBGNeOxbF9WVIlyH58mXiWJuOOdoYkUVHN1KMiEh2V
T8/790cYvP7tWTH85Pbxh53GDFoRoYlLSbvDW3iMc9ICB7eRuJvKthnBqGhAsd9LlVOXiyaI
RGkKs/jkJpms4W9o+qYdm/OJNXRJC6PdsJrSA60v4fCFozkuLecAyblV4STrPjy4yuwSDtn7
NzxZCQas1qkjGiqgLXhJ2OgUrg2GiLLdZYxzsuK8ctixUqihgcB43vz3/nn3iEYD0JuHt9ft
7y38Y/t69/Hjx/8xYoJKkzMseynl/uF6MsjjmGB3jItgCOqIEGytiihgbENnhCTA7gb3nYC7
YtvwjfmQ0K/+PkWoCw+Qr9cKI5NCSntIh0Csa8u/SUFlC52bp/KzrXw+0yOCnVG3S2gB5xVV
EY6zfObRyYntOjGiX4NuNbayYuwZdTX7f0y9LlC5swFvWWRsaZrQIn/yXPmkkAsj1LUFvnfC
klbKsQMsd6VOvT9TAFuG46Em0jTKDfmPkqTub19vj1CEukMls3e16aMfuIIJgg+0oD4k1Sib
ZTqxsTqqu5g1DO97GB7ZCcl8sPF22yO4finzziF2H8ggpIyndl1kvHk6y2VUXoIUg2k3vRPc
ojC/pq5RSGJHd0EQvzR9r3TQU6vJ7mACT1aXGkFcZ+wLsdwFIMiiHzXVKFSTFtF1Uxrbq5Bh
p6Ghlpk2jNWiLdR9jcaqXZBLAQ7WIarnHRIMfIALX1LKC5srjUX9h6oUY2ZkjdLz1BlDVWvk
uEgjY3DzQsocPZLeeiWCPw2OUL1O8Qrq9s0oqnfWq9emlqcCITqHFQt3MLJbXn1ac+ZW1BP6
54YbKxFPeDy8/KL9CRo1YxoFyx4f7QJxAKRgqL6mCeQRfIAgWWesIQisvuiFUHsTXBesqpPS
n3mN0Hd4ZxZUsXNgpDCFqovOIWvhlJE5Jcv1aFYUGBoe/e/ld9yfUQLT1+GPPjo9Y0xEHeAp
8GZYNEk4k5TqolrEKhaUJZANa49+1hs5lbGeD1PqClkmVeA4LrRKKsL0wP3ALcL903PfMIEq
7zAvNVr4R2Jj+0n9YpiyZpiFi/S4ifAyscJuzEW5MmOwjIp+LiOypr3Hrq3fUw42PY139N6+
PFDnT1usMWaSCOuvBgomKJ8oxeLt59L+AM9cSBrxOLIMMrRuLk+TMixv6vK6FuahO3c8EwNk
GHKfCnw7UGGqhjbmGDYBhuUTFvuxdhRWQ4VuV1QVyXX9ZfL7O1y3J9+2E4ICc8cfpsDC8Uq4
aL5M3a6MBHAbPaS9GAkrluUYWTs8UwPpAo8RPHeE+dwAHFo/cQ0D9HB79/PT2+Ndb4D28ecw
StKppletm4cZfI/JIwgQvumvaoxcjNFnVnWIZKDoGjMz9EgUsaal4OqbKg0jeTO/MvMVGGgV
F5g3+cmGrBNYvhtoa0TaUX0tRO/Oo/wDBXe98nqBy96j5mtMs92/4kUAb68Rpm+//bE1tQOr
tggo9LXMi68VMj9JH7+PZo52jD/KfEizImRUntIEOBjyL8VizafhnnpsL5L1yjNcb0ygTpJm
i0CJyn3RykA6zGQrCglclwnOlPJr8hsTARnqLwEinJRT1IVWGhhST4A8dy9hB8fe8xtSz2X/
B0Ac8rQhfAEA

--Q68bSM7Ycu6FN28Q--
