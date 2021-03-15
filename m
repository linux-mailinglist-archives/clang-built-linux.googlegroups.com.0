Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBCPWXOBAMGQEBM772UI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83a.google.com (mail-qt1-x83a.google.com [IPv6:2607:f8b0:4864:20::83a])
	by mail.lfdr.de (Postfix) with ESMTPS id 21CF433AB7A
	for <lists+clang-built-linux@lfdr.de>; Mon, 15 Mar 2021 07:13:31 +0100 (CET)
Received: by mail-qt1-x83a.google.com with SMTP id b18sf6829818qte.21
        for <lists+clang-built-linux@lfdr.de>; Sun, 14 Mar 2021 23:13:31 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1615788810; cv=pass;
        d=google.com; s=arc-20160816;
        b=0J+v1LRiezav4JhGHQYrTPRpsX9sjJ0IkDTI8s1Z8x9zFXOuRbBkrXusbNCT9ZYsJk
         6sNtb7Q9SLInIYm5ffklslgKsxwtpOiwAk6sDNNzoaqupOCClMws5J2RGNVCkkjIVnB4
         AIzHRRgBniy10vpiew35dmJwoKz4fqgR8s4NRCxf8BDN7f+RWNR3BR7po3i50XYNC0Ux
         y187Mg2EgEePaFRs68Y6r7fr2qhHA/q0Yaxzg8rdIS+Q+54Npq/f0YEFaCpq2zyicAsH
         ACPOKu31Ybj6mDAL3xRL+XwmIxOL4ovOCQMMoBOJtC5IVhvr83p15WCCFfGnEhPHWTav
         QU2g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=AR1iQSQagty6FrxGWb9jE7a0ByCG/8xAVAYrq/1zOJ4=;
        b=HkXu0rDLTxeSmQxU3m0VucvjNasx0jRad9QMxP2nvdtE6N+RudXBG4htPIraJt/KY6
         X2I1OVb1PfRK3MstxYQu0RWTJp1DyjwYFsquN+5D4l53leQx0jyoJRK6Fs7rfOh8WZnR
         s0bKD1xR4cbkho8YZ0YgmSsmmaWaNvfBNsV3neywACdcBI2C3hRTtQuvuAmQQJTZLbn9
         x09O69YgWiZWANEl80qbRrU9m37ccFEvKPXIvBI98aXr0SMdjg0iymt09IWz1Z/lJhWx
         44dGQvzrAV57T/KS7mQeDimKuCS+6tPjmnRF/wj4mLecwW7ng7TSL6k77cBo1G169M/M
         Bmjg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=AR1iQSQagty6FrxGWb9jE7a0ByCG/8xAVAYrq/1zOJ4=;
        b=FRH6acVvy1iDJ1C/2mlzytd1dz21oxZdyM94hs5f5nRPF0gPHQlGzi+r9rQYzyGUT+
         MOUmjnaz0hfzDMC8lPutRzyvz2MPsan+No3AYu7mRYaAIZvrFyvUI8fZgXtbid8UKIX/
         3s5V0iIrwTo/gz7NzPXcOXN0wYXwen53ppOcMw83tkeFVj4f1xhsnOEM48SFSTgY/7Xj
         KmI+LVvJz9dSOr+GD8p9S/idMbdXpsd8I7mq260Hy4mnMeKSVar8P0uaijN9WYUNJxBJ
         xzEPB6KtiEDAsuUEuwtECpm2JQj4gcGNfzbCcLK6r8kU4O2pxb//26smASI/6mbQO7aC
         hi+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=AR1iQSQagty6FrxGWb9jE7a0ByCG/8xAVAYrq/1zOJ4=;
        b=GHoRgcvHcJeK5Sk1c9kSGNNX+C28MiW4wF0lDB1slPxl/dPkoE7lcdDHewzO1YOup5
         BbcKxUntWaElhooJdS8SljmlZorbgKLhHEgNudqctGYI1qHsd4CV8BcIGLXq/gXddDDI
         pBukEExQzUXf6YxetdgWAzmLUiMbR89NtyGQ3GN8livRE4xP4vHgKnIrPMvxMoeBp8W6
         uFKyYQRhnrF3IbN3SJtBB/scvu6oJUdbW5th1ss2tw0qwwi9Y5elG4anwkqpulpzyXtI
         LlxegcCvS+nPvh3VumhoJ8wkr7KEcGOU1gGOjqaO8fKXRoD2oKQ3HlcmlkelGuKdk23u
         BKtw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532hE7p6IZMyILtHqCclD3gsG5n4HACBXz7B/9ndQ98UAegZ0z89
	n2pgnsulMfq76gNvhS77J40=
X-Google-Smtp-Source: ABdhPJy4do6gAjHo89nd8KVBKOl9Tr7ZZRx6XZxF0mI4S+UmKIYFfxxSC/PC56FbHgCMJE5PgTUaVQ==
X-Received: by 2002:a05:620a:13ac:: with SMTP id m12mr23818634qki.458.1615788809974;
        Sun, 14 Mar 2021 23:13:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:fd64:: with SMTP id k4ls4045823qvs.1.gmail; Sun, 14 Mar
 2021 23:13:29 -0700 (PDT)
X-Received: by 2002:a05:6214:d8a:: with SMTP id e10mr9407462qve.39.1615788809495;
        Sun, 14 Mar 2021 23:13:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1615788809; cv=none;
        d=google.com; s=arc-20160816;
        b=y2QPCrJOrc8dKyrblV3pQKIcOmLN9t0oIowMqOodehZrv39cyR1s9FjrptUysavw/2
         bHIiw7YcZsiqVVBioTFSjNQzmcU7YUOYAdbg8FSpnvCjh5u9LDjZScRTTmfSVpp/Dlub
         +akkPwmkR2QoaaNuGlYpjgR5PWbKwK3DNM+4DKiMtolwaxHZsvAfmTIRLunSs+8jNjmF
         Ke34DlXiXoRyVdvvy40eTH3Ot3s4mqpAFVsT/03BIlKvnrVGfRxvyi2uNH7vn+XeNXIi
         cPJi9+M69e5Ku1MLMWCwFRZwKg1Cvfrr0xOnZgGqN+KuaemB1HH5wfEPgm/zYMWNNMqt
         IYLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=jnwInS3zIKCe9ybMfVO648FtaVMI/ucHFCj8UMoC6jU=;
        b=XpD3Gqf6bCcR3XxaxWEi0ivigz2x/i9e+PJSHWq6XaXgSKvPcS9sJeNSgdYEPNfNEK
         Y719N4uMlWt+0ZZ+KEzLJO7fJLkCZo48j4N5QJq0HJw1dXWyd9oo7H8fCind0b36/Gpe
         Zy+se9S3scLM3Bd19nIZrE3gzDscZqyPJKpGcQITxXJfj1J1CAqNm006YHYautGZnlo1
         kkceh2IMS4ovGkPMEo6limLch7uiSF9K/eQvkjfh8TQsWUvmlo9LXXJfZl4gdmjtxniI
         QU0+GlfowmqgVnwXK9zY7UsW1eBoY+qay8nIEOfrGyk9uSCk1air/SuE9d2syHwnCTW3
         rJqQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga05.intel.com (mga05.intel.com. [192.55.52.43])
        by gmr-mx.google.com with ESMTPS id d12si567003qkn.0.2021.03.14.23.13.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 14 Mar 2021 23:13:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) client-ip=192.55.52.43;
IronPort-SDR: 24GYb4iRFyHIjeCosFb69o6dW9fX32DMiBWJFndgEobHFNIsyPRhJ/IFjFQT/WN3g+YyCRSr3G
 v5aHlCYtLWww==
X-IronPort-AV: E=McAfee;i="6000,8403,9923"; a="274083342"
X-IronPort-AV: E=Sophos;i="5.81,249,1610438400"; 
   d="gz'50?scan'50,208,50";a="274083342"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Mar 2021 23:13:27 -0700
IronPort-SDR: +q5vGmP9CjZQHHjYlg5eHdJpVvzm1eyBjwGnHmHuSFSusNFmLy/qEoKVmHklOK/z+vGwveUcmH
 jnciEHECaHKw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,249,1610438400"; 
   d="gz'50?scan'50,208,50";a="432572395"
Received: from lkp-server02.sh.intel.com (HELO 1dc5e1a854f4) ([10.239.97.151])
  by fmsmga004.fm.intel.com with ESMTP; 14 Mar 2021 23:13:25 -0700
Received: from kbuild by 1dc5e1a854f4 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lLgTk-0000QF-Ta; Mon, 15 Mar 2021 06:13:24 +0000
Date: Mon, 15 Mar 2021 14:12:41 +0800
From: kernel test robot <lkp@intel.com>
To: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Rob Herring <robh@kernel.org>,
	Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: rmem.c:undefined reference to `memremap'
Message-ID: <202103151438.MHav3EBj-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="gBBFr7Ir9EOA20Yy"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted
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


--gBBFr7Ir9EOA20Yy
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Nicolas,

FYI, the error/warning still remains.

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   1e28eed17697bcf343c6743f0028cc3b5dd88bf0
commit: 5a3fa75a4d9cb6bcfc9081ef224a4cdcd4b3eafe nvmem: Add driver to expose reserved memory as nvmem
date:   6 weeks ago
config: s390-randconfig-r022-20210315 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project a28facba1ccdc957f386b7753f4958307f1bfde8)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install s390 cross compiling tool for clang build
        # apt-get install binutils-s390x-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=5a3fa75a4d9cb6bcfc9081ef224a4cdcd4b3eafe
        git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
        git fetch --no-tags linus master
        git checkout 5a3fa75a4d9cb6bcfc9081ef224a4cdcd4b3eafe
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=s390 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

   s390x-linux-gnu-ld: kernel/dma/coherent.o: in function `dma_declare_coherent_memory':
   coherent.c:(.text+0xa4): undefined reference to `memunmap'
   s390x-linux-gnu-ld: kernel/dma/coherent.o: in function `dma_init_coherent_memory':
   coherent.c:(.text+0x134): undefined reference to `memremap'
   s390x-linux-gnu-ld: coherent.c:(.text+0x240): undefined reference to `memunmap'
   s390x-linux-gnu-ld: drivers/dma/altera-msgdma.o: in function `request_and_map':
   altera-msgdma.c:(.text+0x584): undefined reference to `devm_ioremap'
   s390x-linux-gnu-ld: drivers/dma/dw/platform.o: in function `dw_probe':
   platform.c:(.text+0xa2): undefined reference to `devm_platform_ioremap_resource'
   s390x-linux-gnu-ld: drivers/dma/fsl-edma.o: in function `fsl_edma_probe':
   fsl-edma.c:(.text+0xe4): undefined reference to `devm_ioremap_resource'
   s390x-linux-gnu-ld: fsl-edma.c:(.text+0x234): undefined reference to `devm_ioremap_resource'
   s390x-linux-gnu-ld: drivers/dma/sf-pdma/sf-pdma.o: in function `sf_pdma_probe':
   sf-pdma.c:(.text+0x60): undefined reference to `devm_ioremap_resource'
   s390x-linux-gnu-ld: drivers/dma/xilinx/xilinx_dpdma.o: in function `xilinx_dpdma_probe':
   xilinx_dpdma.c:(.text+0x86): undefined reference to `devm_platform_ioremap_resource'
   s390x-linux-gnu-ld: drivers/char/xillybus/xillybus_of.o: in function `xilly_drv_probe':
   xillybus_of.c:(.text+0x72): undefined reference to `devm_platform_ioremap_resource'
   s390x-linux-gnu-ld: drivers/net/ethernet/xilinx/ll_temac_main.o: in function `temac_probe':
   ll_temac_main.c:(.text+0x5e6): undefined reference to `devm_platform_ioremap_resource_byname'
   s390x-linux-gnu-ld: ll_temac_main.c:(.text+0x898): undefined reference to `devm_of_iomap'
   s390x-linux-gnu-ld: ll_temac_main.c:(.text+0x8fa): undefined reference to `devm_platform_ioremap_resource'
   s390x-linux-gnu-ld: drivers/net/ethernet/xilinx/ll_temac_mdio.o: in function `temac_mdio_setup':
   ll_temac_mdio.c:(.text+0x196): undefined reference to `of_address_to_resource'
   s390x-linux-gnu-ld: drivers/crypto/ccree/cc_driver.o: in function `ccree_probe':
   cc_driver.c:(.text+0x3b0): undefined reference to `devm_ioremap_resource'
   s390x-linux-gnu-ld: drivers/crypto/ccree/cc_debugfs.o: in function `cc_debugfs_init':
   cc_debugfs.c:(.text+0x94): undefined reference to `debugfs_create_regset32'
   s390x-linux-gnu-ld: cc_debugfs.c:(.text+0x16c): undefined reference to `debugfs_create_regset32'
   s390x-linux-gnu-ld: drivers/nvmem/rmem.o: in function `rmem_read':
>> rmem.c:(.text+0x14e): undefined reference to `memremap'
>> s390x-linux-gnu-ld: rmem.c:(.text+0x1b6): undefined reference to `memunmap'

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202103151438.MHav3EBj-lkp%40intel.com.

--gBBFr7Ir9EOA20Yy
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
6SBfcTy89NvT/wMftxU60AABAA==

--gBBFr7Ir9EOA20Yy--
