Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBKH2VKAQMGQEBSPHHAA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3c.google.com (mail-yb1-xb3c.google.com [IPv6:2607:f8b0:4864:20::b3c])
	by mail.lfdr.de (Postfix) with ESMTPS id AECBE31C17D
	for <lists+clang-built-linux@lfdr.de>; Mon, 15 Feb 2021 19:27:53 +0100 (CET)
Received: by mail-yb1-xb3c.google.com with SMTP id 203sf10684260ybz.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 15 Feb 2021 10:27:53 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1613413672; cv=pass;
        d=google.com; s=arc-20160816;
        b=0ObdEZlehSDKu3lTlG21e4Yq8xc48TGJJuz1qrCG5BRKqSKckXyQPptnZRdBFtr8mV
         8keqDK0tbWbq6+BjIrioEMP42fpQXV1QsYUIZiF9Vexr6elUw942ESuxofRcw+dytdAP
         Tlf+zRyEut7GXJsg7AX9Y3SQYkmIJWrAhbn9rdkH25u7qT1l31kCcrR5PJoJNp6xRckr
         VqawOCqb2km1xlQ1upeSSWz7DfGkH7JJfT1bsn1yOHf/3jHp1mXjIj20JLYr39wV0Jxv
         qxv4dJXNhl8nbWhkcGCRjMOPODc/0jZm4JWHNmr62EAVkWZJFVDnRzrnSAZZzrHy/ZPq
         dn6Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=c3IVi3zHaPEPhRcIEofBVNdo3v8arxeGJRApR02Ep5M=;
        b=OZuO9dE9BdoM7oWtOVUfpGm+x792URZj9imdhRAhJT+xmct/y8Pwo/xSKrA27zj0+Q
         a5ftOBrxzUlL4lPsDaT0NabXZXnvbIlvhnAv0PvXAZJLLSP96a7aRcM5yDKvN9lAmo6l
         Cvb1Gw75IPWECtVaxU/+dhe5EzZMHzokvR+mO2nS6XmwgRBZvYz1Cg6tRfCRKUezedxZ
         6LEfiLEmOnoGgpPMundX1hhM9m/d0X47tWYAF/qO6cMK6nbCy2PRc7RIx3uAa3f3XntN
         puXLSbnag6/iLRlT7yIGozUJ9Y9qiFB4SV0QmdsoFhyicbDgS88CNmrCEpn+7HmzUyFN
         A3fg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=c3IVi3zHaPEPhRcIEofBVNdo3v8arxeGJRApR02Ep5M=;
        b=EVSX0+TwxcMSHSd3GigrXipm0awPEi1dpOJUHN8aepeN9kCSTeaBXJIN9FPn7pakNR
         exdSH37I6AECea6646uWTrTkfuQ5NcW22O2iPZ5dbCXXvI9puVhQvwsZzdIHP0ZltZ3W
         tuf8ojKNbR9zXnVTH0Bm98cu6jcH0Tqm10TO4Sd9Q1A2qT7moJLj/o+tUPuF/H8x7OBD
         Ql54jwOVqAXFKg1lZp58NeJQECBpgevHgetrYvuLPzEAeFdXLoDX+6Ri5H5L+tkhDW2B
         lMkBEYULnHEV+fVi8gBC22dY4UIW6V6c2zLgtggoRN79Fc6umUGxxEwI6ZkRtkp7plMZ
         3QWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=c3IVi3zHaPEPhRcIEofBVNdo3v8arxeGJRApR02Ep5M=;
        b=tXG/Y8OM2j4dOPes/QcG+1T2VFI0W9zcthCU+F9wDIyS+i2iPnya0W9ra4owDutQtU
         /ZZscg7MXQMEesOBck3diKmd0269dhk6QNWT7EuL3V5OOgTGpDUs8ACEHO//gvvlC6e9
         c+5L8LoihocJJ5IH2B1PvN5zVIkU22nsRWX7GGdpAaMLQ8bhsBHg52Edg2bnlVcgAF+8
         mtfoEkmHvS5Tqbr5p38cPMFHEOGrxgDXqalhZIOcPaicjkKT2mTWRGDzCshehlETu1sR
         U/Ms5mTYI/NvWzlU0wiNCDFsP5+j5V18oovhwFF3gQzCG2yym44D2ML+BSniXuWfJv5S
         0ZNQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531xP1BngaTE2hvCT/79Riax3p22UVoti63m84QWyiMXg7+Ohnqb
	9DItC+OAvOObAw8brjk/sI4=
X-Google-Smtp-Source: ABdhPJxvvCvZ2odHkakbQjDQsXGG7kJFRKNQ+nqFkEX7npI0Iu+4v7pGGyH92k0TqiftlWphsbA7nA==
X-Received: by 2002:a25:4984:: with SMTP id w126mr25511586yba.57.1613413672722;
        Mon, 15 Feb 2021 10:27:52 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:68d4:: with SMTP id d203ls8063779ybc.9.gmail; Mon, 15
 Feb 2021 10:27:52 -0800 (PST)
X-Received: by 2002:a25:e4c4:: with SMTP id b187mr14902783ybh.92.1613413672230;
        Mon, 15 Feb 2021 10:27:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1613413672; cv=none;
        d=google.com; s=arc-20160816;
        b=yABg7caDbUWDVFcostdFlayiRPmjX3NUaaAyO7LoT5rDIoOleT05anfDH3n5DYBW0J
         J7hySsThTlSljIIqE0jeBxYhm2NUcCYCH8Zgso8RtlPNIIl6KSX4tZd5xMqseWDkGSdW
         MfSliqCvYRBSIzqOz/1uPHF/zHobB7ZZyKENuLt87l2i5XKoaG8mislPVnH524NtN2i6
         QObpElUfMPizBAXpSONbch+6keC90igjgt7S3IyTX6iTvijoAKomnGhETlcWYMac7POw
         G4qYeJEWVyzDPNsBuCqOSt09Y3SbwRSmiQCSwmsQ9X2/jsKhijtzJCH0SMEmaHgKyxF8
         MPig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=mShDJPSQoBZE4PL0YnIqgQv/lw9ro5A0xk0G6npcH78=;
        b=uXPHgRVaWSp6J7z84krr7TFl8Bbiw9u1cwEZEgOFAsDuwzC91P8hcwnlfrgM6QiBG0
         X1ubKO4l2wPq7cc+hOE/Ae7q2QC6Fu6qzRapw6FVtu1pJVTg5dAibgtmBxOvBeaDbF80
         3ILUHAv8bCiva/ksxn9bpg1qqpzIOajenaFIiFOnlLIyqVU7P8MJXWhwzlT3t1ejnFxi
         Lc5E7e2iNCv0nRtiVh5cKI/9qhL6ZoULetnWt3K1QdoBqUarrHq0x3ta0rNxCP/Xep21
         7X1GZASiKLrGX4/kxuaFB0XPgMMk76cjX/hfIo0l4SiA4RXJ7hZdAb5Vkh9DKpmcv67/
         aEZQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga01.intel.com (mga01.intel.com. [192.55.52.88])
        by gmr-mx.google.com with ESMTPS id i194si1214858yba.2.2021.02.15.10.27.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 Feb 2021 10:27:52 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) client-ip=192.55.52.88;
IronPort-SDR: IGoNc+znVrq2zshlIzKF6X9xDxYgQp23kwDAF+vyCtIC5aTUVs+uJz27WP9Ok1lLkhDwJrA7jn
 uqXF97YLSFSw==
X-IronPort-AV: E=McAfee;i="6000,8403,9896"; a="201916135"
X-IronPort-AV: E=Sophos;i="5.81,181,1610438400"; 
   d="gz'50?scan'50,208,50";a="201916135"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Feb 2021 10:27:50 -0800
IronPort-SDR: n5R/y9J+OBSYHQnSGQAveJZlgGu6+3kQdLf9C95osq2DYUJUjlHQWPMud7v0EgXCP+0V7cOeku
 xlNhLGPKnLEA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,181,1610438400"; 
   d="gz'50?scan'50,208,50";a="417832607"
Received: from lkp-server02.sh.intel.com (HELO cd560a204411) ([10.239.97.151])
  by fmsmga004.fm.intel.com with ESMTP; 15 Feb 2021 10:27:48 -0800
Received: from kbuild by cd560a204411 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lBib5-0007Sv-Il; Mon, 15 Feb 2021 18:27:47 +0000
Date: Tue, 16 Feb 2021 02:26:53 +0800
From: kernel test robot <lkp@intel.com>
To: Brian Kim <brian.kim@hardkernel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Dongjin Kim <tobetter@gmail.com>, memeka <mihailescu2m@gmail.com>,
	Yang Deokgyu <secugyu@gmail.com>
Subject: [tobetter-linux:odroid-5.11.y 50/88]
 drivers/char/exynos-gpiomem.c:121:22: error: implicit declaration of
 function 'phys_mem_access_prot'
Message-ID: <202102160242.nZXHs98u-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="ibTvN161/egqYuK8"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted
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


--ibTvN161/egqYuK8
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://github.com/tobetter/linux odroid-5.11.y
head:   f22a0a376737d4e5d61f155ab65bde2de835dc2e
commit: d565b01bf703a1fcb33747d62b76676ea1a64c64 [50/88] ODROID-XU4: char: exynos: add /dev/gpiomem device for rootless user GPIO access
config: riscv-randconfig-r031-20210215 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project c9439ca36342fb6013187d0a69aef92736951476)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install riscv cross compiling tool for clang build
        # apt-get install binutils-riscv64-linux-gnu
        # https://github.com/tobetter/linux/commit/d565b01bf703a1fcb33747d62b76676ea1a64c64
        git remote add tobetter-linux https://github.com/tobetter/linux
        git fetch --no-tags tobetter-linux odroid-5.11.y
        git checkout d565b01bf703a1fcb33747d62b76676ea1a64c64
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=riscv 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> drivers/char/exynos-gpiomem.c:121:22: error: implicit declaration of function 'phys_mem_access_prot' [-Werror,-Wimplicit-function-declaration]
           vma->vm_page_prot = phys_mem_access_prot(file, vma->vm_pgoff,
                               ^
   drivers/char/exynos-gpiomem.c:121:20: error: assigning to 'pgprot_t' from incompatible type 'int'
           vma->vm_page_prot = phys_mem_access_prot(file, vma->vm_pgoff,
                             ^ ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   2 errors generated.


vim +/phys_mem_access_prot +121 drivers/char/exynos-gpiomem.c

   106	
   107	static int exynos_gpiomem_mmap(struct file *file, struct vm_area_struct *vma)
   108	{
   109		int gpio_area = 0;
   110	
   111		while (gpio_area < inst->gpio_area_count) {
   112			if ((inst->gpio_regs_phys[gpio_area] >> PAGE_SHIFT) == vma->vm_pgoff)
   113				goto found;
   114	
   115			gpio_area++;
   116		}
   117	
   118		return -EACCES;
   119	
   120	found:
 > 121		vma->vm_page_prot = phys_mem_access_prot(file, vma->vm_pgoff,
   122				PAGE_SIZE,
   123				vma->vm_page_prot);
   124	
   125		vma->vm_ops = &exynos_gpiomem_vm_ops;
   126	
   127		if (remap_pfn_range(vma, vma->vm_start,
   128					vma->vm_pgoff,
   129					PAGE_SIZE,
   130					vma->vm_page_prot)) {
   131			return -EAGAIN;
   132		}
   133	
   134		return 0;
   135	}
   136	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202102160242.nZXHs98u-lkp%40intel.com.

--ibTvN161/egqYuK8
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--ibTvN161/egqYuK8--
