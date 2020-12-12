Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBD7I2P7AKGQETO4K7UY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3d.google.com (mail-oo1-xc3d.google.com [IPv6:2607:f8b0:4864:20::c3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C0312D8863
	for <lists+clang-built-linux@lfdr.de>; Sat, 12 Dec 2020 17:47:12 +0100 (CET)
Received: by mail-oo1-xc3d.google.com with SMTP id l5sf3746434ooj.2
        for <lists+clang-built-linux@lfdr.de>; Sat, 12 Dec 2020 08:47:12 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607791631; cv=pass;
        d=google.com; s=arc-20160816;
        b=fA482HR9kBC5g0BLJwsFObLhiJjH/MHyCZkeJhqupeF6LiF3jVqXkEKlqGmy0zrEBM
         JocplaeoeiE5QkXxhAulGDZ7cUzZ6HZDDkm6JFtLAayUdlUzyAZRkCT9ctqnzPkTMTiW
         BRBcfsKjOQVi/wePFkrT00BKWmIvS9r3kqFOhg7URyC3GWCvprPN3f8c+UGm2Pw2rgn+
         4ONxA9fN0B/7lrPpYLMo0uukslpxqWJZXESMgZcKITQ/BciSdiMaugl1wEh1WH6nO1Wt
         fMb7uXt8MCwLZz/a6A3/cmJZ6Xg3ydcm74ZgDoKjM3wXORi9JjGb+gGc8IRzCUqr03Ao
         Tk2Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=kC9AL6RTSyMqDuBcgYyZ+DZ3Ona/Fp7jKMDpX7QZhBk=;
        b=B4A1sFfI/KzF25veXoFjxt0dqWqNDO5dFN2f2jvr086MEpyuZGX1Nwa3IrAvWvNI6J
         7GvJqBf6MEzws56Vz8L8dedLsbOJirpOKgNzwUfM4hLeQT2k0dZycLUsL34tjcFKxp7v
         XwwtpPt/slECqvlRgFn1bTzr5gXiEigVlurdrgMOzXJpGhiGjtoruvef/9KboKhPjzUj
         R1D56/+12iEdrdm6QBqHcWCnp3Dspy+w3A5/LDUCWEgKYiDshD+JOZbfntOx/0dz7fqe
         46En6HdD/5FuVaqFSfxf7f9kmfLF6+a6kNQqWo+HzAWFrg08Mt7VNgoJGGsH+NANkh2s
         Rpgw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=kC9AL6RTSyMqDuBcgYyZ+DZ3Ona/Fp7jKMDpX7QZhBk=;
        b=koZ1kuY9R8X61eeI1hlNfhc81BS0t7PifVX9s9RXz0hUCZtYFgSXuw9jTWVwQRGetQ
         AspzPVie2OUGV3UJZe1YBX3aoAwMT1UiaG5a1L6K1aUf9F/9Su9uWY2YthPsEb2MQtqx
         aW9yPY2pW6t++bAJbPCzu9zHduzW5yaKfOi7JBNs8Il3fOlKIr6jdI6z3qnI96KgE40U
         7VCR2Sz/zZGa3MEJjpZJPdcamSILlLiZ+tw5m+EZbgg4SII2SOs6/vTwjCYlOHuTmHxw
         adOA7VGNGwAW9SxHA0JFAMx4PFy5fwuHmOuIg4R2wF1SJxMmWdImjxcZw8QpStqErZ+O
         M9CA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=kC9AL6RTSyMqDuBcgYyZ+DZ3Ona/Fp7jKMDpX7QZhBk=;
        b=Bpj0aLX9kCtT9jlMtJlXCsI78mntlSqfUkAPaYdobyK/O0R1PrTAtjAQY1Qg9Md3CZ
         e4+p98oTqo9AH3k5g8tSEE7XHPFkTV9deCV2Y/WaC3qFMqwOCZcLd4q/PGpz36vNluQ9
         HrBftXPRlVGlgq7dKuKKJv41krKQRrjsEkCD13mGJsMgm4EcLn9v/nZ9M3RaPLprASYT
         ahWvhu8aBwmFjdOQxa+81RNQ2P0B51S/EdeMsiDdkf9r/AxDnbCblPENPvS3f+R+uEE1
         NzDlCBl8m8TaszIzUQ0MGmLOItW7iqnolI/0RqWWMZSndik0LinlpzOXXaWoUU/4c8QA
         UNVA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531DtawMOk61ViVyV/AfckV+7093mXLdJ7mc9QSL0TmhGyjMyt1T
	la1K711vYBeAaoQT3MuZ4uA=
X-Google-Smtp-Source: ABdhPJwzWqW1NisJKbzVAwgFnlhZ4efObsm14rK5tkSNOcYcEMLzubkItb1HHxh7afSKFchBA/VV3w==
X-Received: by 2002:aca:1b04:: with SMTP id b4mr4730126oib.3.1607791631139;
        Sat, 12 Dec 2020 08:47:11 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:72d3:: with SMTP id p202ls427867oic.9.gmail; Sat, 12 Dec
 2020 08:47:10 -0800 (PST)
X-Received: by 2002:aca:538c:: with SMTP id h134mr13800657oib.44.1607791630645;
        Sat, 12 Dec 2020 08:47:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607791630; cv=none;
        d=google.com; s=arc-20160816;
        b=MFJMD07v7+MOaxtSK9SCgsZEaMRqELRoVQ58MkroOM51zrXwzATQDcNIkt7P4j6HoJ
         8DDHMUd2eMrvtPfgAD8c0kM4TidX6/ZbCOId5i/mXKpGrUARSxQL/Z1/SuBMNixdG+lJ
         34nzW/UVnxudH0pvX/73zFJ2shbvrFWX7f25NTdfiYtgenfbOOGV6+h14FU9MvLnBoCQ
         KnVIZaMo8CzkQJDeAVszXwmkyFwLAskymm/ZuEJTF+6Z9cbKYDQ4u1ec9TAA5EgHczpT
         oWCNSCkTKkMfRCPOAtl7jmE+8JxQQMl0UVYluhXku28STgZx1raMzn5WN5kdFBzBwuVF
         pZ4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=TcIvbNZ4oek5N1G2ykBYtQbTM75I0i9Ua2qF0GnmA8o=;
        b=yZAYMjJRyKmnH0hypX1rWu9Z8jIhmTg9qQzunzlXOREfFDMjMr0Y4C6w0XYrCevJo1
         HWT38KAShzjp1tcgVuW607yP1D4IYVCUpybwH7JxfhqFKCEvO3viyAoByFrHhCyuictI
         j5ArIdXjiYS6wU0mkAVcYiOsNvrid2r7y/VeH2xb5nfzfuE9XReWmNARG9Qqeg6M+Y2o
         HI9GxHUT6F9wx1frZC2lp+pW+S6FCfZ3KhK3c+RV7Ev3SpqxI1wHr/kfLijo4S7jJ3xL
         X9qpHOW5cWuErHKQZz1z0ZlRXH/ERKy0jwFVrMrsg/xHYX138vAmN815G00V5Q2oLXF3
         ToDA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga14.intel.com (mga14.intel.com. [192.55.52.115])
        by gmr-mx.google.com with ESMTPS id l19si673053oib.3.2020.12.12.08.47.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 12 Dec 2020 08:47:10 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) client-ip=192.55.52.115;
IronPort-SDR: kfaAeHifAMUCQE29nZt/Kksi0y+vhQtQNBaX5MD2Mn8noNtarMQSz2tPhmTnJJmZB+NzySFgQk
 5JcFsDG4aTpg==
X-IronPort-AV: E=McAfee;i="6000,8403,9833"; a="173790043"
X-IronPort-AV: E=Sophos;i="5.78,414,1599548400"; 
   d="gz'50?scan'50,208,50";a="173790043"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Dec 2020 08:47:09 -0800
IronPort-SDR: /asDVvXUbqnBnTsT2VAqVSMnJTzIJellSwYPTHT/T4gSY+yNYdxBLfFeWcIwDsg2YAN/AL7DMb
 USshVC38z6Yw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,414,1599548400"; 
   d="gz'50?scan'50,208,50";a="350174113"
Received: from lkp-server01.sh.intel.com (HELO ecc0cebe68d1) ([10.239.97.150])
  by orsmga002.jf.intel.com with ESMTP; 12 Dec 2020 08:47:07 -0800
Received: from kbuild by ecc0cebe68d1 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1ko831-0001Q2-8F; Sat, 12 Dec 2020 16:47:07 +0000
Date: Sun, 13 Dec 2020 00:46:21 +0800
From: kernel test robot <lkp@intel.com>
To: Frank Wunderlich <frank-w@public-files.de>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: [frank-w-bpi-r2-4.14:5.10-rc 23/24]
 drivers/soc/mediatek/mtk-pmic-wrap.c:2022:16: warning: no previous prototype
 for function 'pwrap_node_to_regmap'
Message-ID: <202012130017.fSqZlawW-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="6TrnltStXW4iwmi0"
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


--6TrnltStXW4iwmi0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://github.com/frank-w/BPI-R2-4.14 5.10-rc
head:   9cab5c0a19ff709f07113ec5bd8e8cedbfdf6b08
commit: 5618cb934d20e290d8e4ddaee3da1e02f901b1a3 [23/24] mt6625l: add changes outside driver dir
config: s390-randconfig-r032-20201212 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 84c09ab44599ece409e4e19761288ddf796fceec)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install s390 cross compiling tool for clang build
        # apt-get install binutils-s390x-linux-gnu
        # https://github.com/frank-w/BPI-R2-4.14/commit/5618cb934d20e290d8e4ddaee3da1e02f901b1a3
        git remote add frank-w-bpi-r2-4.14 https://github.com/frank-w/BPI-R2-4.14
        git fetch --no-tags frank-w-bpi-r2-4.14 5.10-rc
        git checkout 5618cb934d20e290d8e4ddaee3da1e02f901b1a3
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=s390 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   In file included from arch/s390/include/asm/io.h:80:
   include/asm-generic/io.h:490:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:119:21: note: expanded from macro '__swab32'
           ___constant_swab32(x) :                 \
                              ^
   include/uapi/linux/swab.h:19:12: note: expanded from macro '___constant_swab32'
           (((__u32)(x) & (__u32)0x000000ffUL) << 24) |            \
                     ^
   In file included from drivers/soc/mediatek/mtk-pmic-wrap.c:8:
   In file included from include/linux/io.h:13:
   In file included from arch/s390/include/asm/io.h:80:
   include/asm-generic/io.h:490:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:119:21: note: expanded from macro '__swab32'
           ___constant_swab32(x) :                 \
                              ^
   include/uapi/linux/swab.h:20:12: note: expanded from macro '___constant_swab32'
           (((__u32)(x) & (__u32)0x0000ff00UL) <<  8) |            \
                     ^
   In file included from drivers/soc/mediatek/mtk-pmic-wrap.c:8:
   In file included from include/linux/io.h:13:
   In file included from arch/s390/include/asm/io.h:80:
   include/asm-generic/io.h:490:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:119:21: note: expanded from macro '__swab32'
           ___constant_swab32(x) :                 \
                              ^
   include/uapi/linux/swab.h:21:12: note: expanded from macro '___constant_swab32'
           (((__u32)(x) & (__u32)0x00ff0000UL) >>  8) |            \
                     ^
   In file included from drivers/soc/mediatek/mtk-pmic-wrap.c:8:
   In file included from include/linux/io.h:13:
   In file included from arch/s390/include/asm/io.h:80:
   include/asm-generic/io.h:490:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:119:21: note: expanded from macro '__swab32'
           ___constant_swab32(x) :                 \
                              ^
   include/uapi/linux/swab.h:22:12: note: expanded from macro '___constant_swab32'
           (((__u32)(x) & (__u32)0xff000000UL) >> 24)))
                     ^
   In file included from drivers/soc/mediatek/mtk-pmic-wrap.c:8:
   In file included from include/linux/io.h:13:
   In file included from arch/s390/include/asm/io.h:80:
   include/asm-generic/io.h:490:61: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu((__le32 __force)__raw_readl(PCI_IOBASE + addr));
                                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/big_endian.h:34:59: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) __swab32((__force __u32)(__le32)(x))
                                                             ^
   include/uapi/linux/swab.h:120:12: note: expanded from macro '__swab32'
           __fswab32(x))
                     ^
   In file included from drivers/soc/mediatek/mtk-pmic-wrap.c:8:
   In file included from include/linux/io.h:13:
   In file included from arch/s390/include/asm/io.h:80:
   include/asm-generic/io.h:501:33: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writeb(value, PCI_IOBASE + addr);
                               ~~~~~~~~~~ ^
   include/asm-generic/io.h:511:59: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writew((u16 __force)cpu_to_le16(value), PCI_IOBASE + addr);
                                                         ~~~~~~~~~~ ^
   include/asm-generic/io.h:521:59: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writel((u32 __force)cpu_to_le32(value), PCI_IOBASE + addr);
                                                         ~~~~~~~~~~ ^
   include/asm-generic/io.h:609:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           readsb(PCI_IOBASE + addr, buffer, count);
                  ~~~~~~~~~~ ^
   include/asm-generic/io.h:617:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           readsw(PCI_IOBASE + addr, buffer, count);
                  ~~~~~~~~~~ ^
   include/asm-generic/io.h:625:20: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           readsl(PCI_IOBASE + addr, buffer, count);
                  ~~~~~~~~~~ ^
   include/asm-generic/io.h:634:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           writesb(PCI_IOBASE + addr, buffer, count);
                   ~~~~~~~~~~ ^
   include/asm-generic/io.h:643:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           writesw(PCI_IOBASE + addr, buffer, count);
                   ~~~~~~~~~~ ^
   include/asm-generic/io.h:652:21: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           writesl(PCI_IOBASE + addr, buffer, count);
                   ~~~~~~~~~~ ^
>> drivers/soc/mediatek/mtk-pmic-wrap.c:2022:16: warning: no previous prototype for function 'pwrap_node_to_regmap' [-Wmissing-prototypes]
   struct regmap *pwrap_node_to_regmap(struct device_node *np)
                  ^
   drivers/soc/mediatek/mtk-pmic-wrap.c:2022:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   struct regmap *pwrap_node_to_regmap(struct device_node *np)
   ^
   static 
   21 warnings generated.

vim +/pwrap_node_to_regmap +2022 drivers/soc/mediatek/mtk-pmic-wrap.c

  2021	
> 2022	struct regmap *pwrap_node_to_regmap(struct device_node *np)
  2023	{
  2024		struct platform_device *pdev;
  2025		struct pmic_wrapper *wrp;
  2026		pdev = of_find_device_by_node(np);
  2027		if (!pdev)
  2028			return ERR_PTR(-ENODEV);
  2029		wrp = platform_get_drvdata(pdev);
  2030		return wrp->regmap;
  2031	}
  2032	EXPORT_SYMBOL_GPL(pwrap_node_to_regmap);
  2033	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202012130017.fSqZlawW-lkp%40intel.com.

--6TrnltStXW4iwmi0
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
55EeKD5esmNO/j93YkAqHQ8BAA==

--6TrnltStXW4iwmi0--
