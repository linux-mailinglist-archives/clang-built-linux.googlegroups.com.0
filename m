Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB6WCZLZQKGQEY7AIRSA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x337.google.com (mail-ot1-x337.google.com [IPv6:2607:f8b0:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id D9F8718A83D
	for <lists+clang-built-linux@lfdr.de>; Wed, 18 Mar 2020 23:32:27 +0100 (CET)
Received: by mail-ot1-x337.google.com with SMTP id n11sf251871otq.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 18 Mar 2020 15:32:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584570746; cv=pass;
        d=google.com; s=arc-20160816;
        b=abymG5FQRBA0/ngK7Tw2DhNwpQnjaTTQi0M1ZjlszaaPhe4SPWYhf6jZJfkSB7wWmw
         FfUbwkRfVd7BjYdk2EY458pf4Fy9kEq8QygtZUUbocGDP/SYN7e+vRypccdNHjLa2A7w
         vpVYlIxPfrPSLOcigBYc5Ljv3ePEoBRwDifm3PeZ6Itkqxu6E0gtYzyVYtDJonJz/vBA
         IFe39l+HEhyonu2suL691v7gMleXmM4Ite9ezNMJOGuSj7QiFUYiGl900AdnGw8Wnl3B
         z2WCXRb1CXM9Ckg1pOOsiljNhuFVuH122BwTqmmoyGOJiStMc8naPiWsWZopiTwwOYws
         K4eg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=nv0o1aOJEiTtT6UnCoS27xg+yRXFMsF7T59bfAu9AE0=;
        b=xJzROZeSJ3GMa9tI1fdx0AA9yRr79/wgpuzNlrdjCdSCC8ndZ3t007GUHiow5o/sGq
         3Z68yP8KqLDO/iLXAh3BNa/bbjpMZ0qzrNg4Jl3rHZG7x9h9dArKfUscAto+52l3ziJH
         2nccion5C0mo9IxlOiSp45uIctkIjNp3px9xoK44jcSEUWnBwXOytTfmefDsXBFUROg+
         byShIQve/3Masrc7PbWFs7ZU0uQSAxp4gxnE2QyBoA1qmRedp3IRPhimPkYqr+OwCclI
         kh08aWQkIxtJVrIei7feGCEKbPH+LEFUbfiv9XLPRxUOtDWITxoPUj76TlAkUfgVZYWK
         9j8A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nv0o1aOJEiTtT6UnCoS27xg+yRXFMsF7T59bfAu9AE0=;
        b=flHUGje9VHN8OjqYBbDLg0S5fwqIhPDhPGFFwxav95wnAimMCJRYdAK9hAYhaJcJBc
         GuGgYxbcmQhgpJjOlY/V99uJwMvepVBI1+JMy5ztytFjCbdh4Q5RYnSfLMK+BEqUbFhk
         wxPXCSXWNfAaLSSEFUyTjnVXBZ0d45/WiHHszaIXmhRRpZ/MF+vl2xkdn7gB6RgDxCYu
         jPJ54/Rsbg23vlvNB4NunOJmYlggfkGStsuTid+iHA5FS6jLvddGb35zLYbAzBOaDJeO
         VqEZE43a2MWlUXVfcbVzNpY3HrCQ5UIX5fJ8HILyI75Fybdd8ZZX4D0XKwHq+XNwefcT
         +8KA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nv0o1aOJEiTtT6UnCoS27xg+yRXFMsF7T59bfAu9AE0=;
        b=EZr+arLKvvH5HFioyA4QbqvpZjyccGJuHxW83Lh8ylUFPXcH/FbjKyDxbOa7RAHVIi
         OXOVgC2+5eaq0G/6ksCx3kzoGITZAezD4oVf39m8ejkS6LhL+fjImP5X7l6aNXBtcfml
         6Dq3Ede8JITetmxrpEAMiHIha1Bvb/VXfBo7JrUtZAe9zQiFeaYKTJpIdWg5ISqVdIbo
         DBSts25wceW/wnPO+nekqO1WjtTnpGSb4tDHFVEayqgfiHH5HLMYnnPN3vW+pYtJpeCv
         +bQ8Shwjk8NiFm53rFD4h0fRgD1G3It6xDYgJGeKI0aWyzEgkrhqFt+GZQUv8ep5FixA
         8SPQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ2b1URcpREyEqmzP1qM2hWSspQwTphA6HXWqLKDcP2z4DmCs8g6
	vlekxWX0Slr/PL2Pm0OmCMo=
X-Google-Smtp-Source: ADFU+vu1Z6GugXXcUpnohCInQTkvk2JnhHJNmZPs+dbIxvbSLKYtRTrVUZevL+aO//8lZOcokk8tBw==
X-Received: by 2002:a9d:62c2:: with SMTP id z2mr5959293otk.65.1584570746682;
        Wed, 18 Mar 2020 15:32:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:474a:: with SMTP id u71ls187175oia.0.gmail; Wed, 18 Mar
 2020 15:32:26 -0700 (PDT)
X-Received: by 2002:aca:eb4e:: with SMTP id j75mr206160oih.18.1584570746290;
        Wed, 18 Mar 2020 15:32:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584570746; cv=none;
        d=google.com; s=arc-20160816;
        b=W5Wp4lwKvkG4KDcmASgR0e9vP7qmXy/SvIbnsRqtUdtILM161P87IajdWHISlV2qFU
         1R54XbnsluJHaJmLrDM9z4XkWS0PUk3HeTf72+Ux1NqueJJ099kgpd5RgNwTG4SnXino
         Y1d2ymPhmZvFTU5zXx3DVDQnCYDwqszlC+IzjdjV3u3Dy9XjuUviX0PSNsl/6xepQ6R1
         q9bm2V18+doRHHX7hn6y47fMnIVYKachVR0eaWEcn3sku20PDxxbFZ1ZWCqwCossdWG9
         26KIkpdYF4Qz++4A9pMTlsaXUngcUn4qy8bWsAj5lfX4Msb/bP6HmeWilTUIJpkLMwZ+
         IDoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=L0XC0ETFZp2IJaYTLbKZ7aYCQ23f3WACh8/APoSamV0=;
        b=kdw9e6uc9nnQb0QVPKSuLmWzrr3Yh8WYOkp02jt+UE5yagdf2qfkwauwwmQEVUzrzS
         3E/eUNUotsqrKt0ePg2vDHfTlMs72UsyhvBI+FyOOZ0woZlekfcWaLcPJ8VA+YFBnTSF
         stWmuLF1xWQDtS8IKn+QckLB90JYC2WM8t+xRixOISJb5ovUdTHMXXVe9Pxc66GyaBhX
         m7eE6BVhnMTKSXynxKnjpaa2bJ2cz1jOUSb9u/ZjkGV+XVeV3l6EE7cHSy6N14sox1mA
         CZJuAyte92+Co0LT8s5io8SsXUQZE1e0swagd94sX3O7I2zWEqVK1tCScW0d5ussjtai
         WEHA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga04.intel.com (mga04.intel.com. [192.55.52.120])
        by gmr-mx.google.com with ESMTPS id d11si28579otk.5.2020.03.18.15.32.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Mar 2020 15:32:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) client-ip=192.55.52.120;
IronPort-SDR: ghJXYX6Vnq3rfU7Z7mGxBxE11uoRa30xrsV9DeOuPslNl1aGfQd4PHx3YE+R1Narz5Bb06EkG4
 qMZx8H2ZV2UQ==
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Mar 2020 15:32:24 -0700
IronPort-SDR: i68Dcu2sXR6SOq+D9m2JaQxQT1nQlOTxDP6jG0LkPs1vq9iWrVLPdI2gZ3ad56MRziyGpOSmgN
 Pqjn3KkjSBHg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,569,1574150400"; 
   d="gz'50?scan'50,208,50";a="244967491"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by orsmga003.jf.intel.com with ESMTP; 18 Mar 2020 15:32:21 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1jEhEa-000CWO-OA; Thu, 19 Mar 2020 06:32:20 +0800
Date: Thu, 19 Mar 2020 06:31:21 +0800
From: kbuild test robot <lkp@intel.com>
To: John Garry <john.garry@huawei.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	xuwei5@huawei.com, arnd@arndb.de
Subject: Re: [PATCH 1/3] io: Provide _inX() and _outX()
Message-ID: <202003190624.e8ZL3OS2%lkp@intel.com>
References: <1584546935-75393-2-git-send-email-john.garry@huawei.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="Qxx1br4bt0+wmkIi"
Content-Disposition: inline
In-Reply-To: <1584546935-75393-2-git-send-email-john.garry@huawei.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted
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


--Qxx1br4bt0+wmkIi
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi John,

I love your patch! Perhaps something to improve:

[auto build test WARNING on arm-soc/for-next]
[also build test WARNING on linux/master linus/master v5.6-rc6 next-20200318]
[if your patch is applied to the wrong git tree, please drop us a note to help
improve the system. BTW, we also suggest to use '--base' option to specify the
base tree in git format-patch, please see https://stackoverflow.com/a/37406982]

url:    https://github.com/0day-ci/linux/commits/John-Garry/io-h-logic_pio-Allow-barriers-for-inX-and-outX-be-overridden/20200319-040340
base:   https://git.kernel.org/pub/scm/linux/kernel/git/arm/arm-soc.git for-next
config: x86_64-defconfig (attached as .config)
compiler: clang version 11.0.0 (git://gitmirror/llvm_project 14a1b80e044aac1947c891525cf30521be0a79b7)
reproduce:
        # FIXME the reproduce steps for clang is not ready yet

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   In file included from drivers/gpu/drm/i915/i915_drv.c:30:
   In file included from include/linux/acpi.h:35:
   In file included from include/acpi/acpi_io.h:5:
   In file included from include/linux/io.h:13:
   In file included from arch/x86/include/asm/io.h:375:
>> include/asm-generic/io.h:464:31: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __raw_readb(PCI_IOBASE + addr);
                             ~~~~~~~~~~ ^
   include/asm-generic/io.h:477:45: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le16_to_cpu(__raw_readw(PCI_IOBASE + addr));
                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/little_endian.h:36:51: note: expanded from macro '__le16_to_cpu'
   #define __le16_to_cpu(x) ((__force __u16)(__le16)(x))
                                                     ^
   In file included from drivers/gpu/drm/i915/i915_drv.c:30:
   In file included from include/linux/acpi.h:35:
   In file included from include/acpi/acpi_io.h:5:
   In file included from include/linux/io.h:13:
   In file included from arch/x86/include/asm/io.h:375:
   include/asm-generic/io.h:490:45: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu(__raw_readl(PCI_IOBASE + addr));
                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/little_endian.h:34:51: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) ((__force __u32)(__le32)(x))
                                                     ^
   In file included from drivers/gpu/drm/i915/i915_drv.c:30:
   In file included from include/linux/acpi.h:35:
   In file included from include/acpi/acpi_io.h:5:
   In file included from include/linux/io.h:13:
   In file included from arch/x86/include/asm/io.h:375:
   include/asm-generic/io.h:501:33: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writeb(value, PCI_IOBASE + addr);
                               ~~~~~~~~~~ ^
   include/asm-generic/io.h:511:46: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writew(cpu_to_le16(value), PCI_IOBASE + addr);
                                            ~~~~~~~~~~ ^
   include/asm-generic/io.h:521:46: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writel(cpu_to_le32(value), PCI_IOBASE + addr);
                                            ~~~~~~~~~~ ^
   6 warnings generated.
--
   In file included from drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:7:
   In file included from include/linux/intel-iommu.h:14:
   In file included from include/linux/iova.h:16:
   In file included from include/linux/dma-mapping.h:11:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/x86/include/asm/io.h:375:
>> include/asm-generic/io.h:464:31: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __raw_readb(PCI_IOBASE + addr);
                             ~~~~~~~~~~ ^
   include/asm-generic/io.h:477:45: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le16_to_cpu(__raw_readw(PCI_IOBASE + addr));
                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/little_endian.h:36:51: note: expanded from macro '__le16_to_cpu'
   #define __le16_to_cpu(x) ((__force __u16)(__le16)(x))
                                                     ^
   In file included from drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:7:
   In file included from include/linux/intel-iommu.h:14:
   In file included from include/linux/iova.h:16:
   In file included from include/linux/dma-mapping.h:11:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/x86/include/asm/io.h:375:
   include/asm-generic/io.h:490:45: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu(__raw_readl(PCI_IOBASE + addr));
                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/little_endian.h:34:51: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) ((__force __u32)(__le32)(x))
                                                     ^
   In file included from drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:7:
   In file included from include/linux/intel-iommu.h:14:
   In file included from include/linux/iova.h:16:
   In file included from include/linux/dma-mapping.h:11:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/x86/include/asm/io.h:375:
   include/asm-generic/io.h:501:33: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writeb(value, PCI_IOBASE + addr);
                               ~~~~~~~~~~ ^
   include/asm-generic/io.h:511:46: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writew(cpu_to_le16(value), PCI_IOBASE + addr);
                                            ~~~~~~~~~~ ^
   include/asm-generic/io.h:521:46: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writel(cpu_to_le32(value), PCI_IOBASE + addr);
                                            ~~~~~~~~~~ ^
   drivers/gpu/drm/i915/gem/i915_gem_execbuffer.c:1433:22: warning: result of comparison of constant 576460752303423487 with expression of type 'unsigned int' is always false [-Wtautological-constant-out-of-range-compare]
           if (unlikely(remain > N_RELOC(ULONG_MAX)))
               ~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler.h:78:42: note: expanded from macro 'unlikely'
   # define unlikely(x)    __builtin_expect(!!(x), 0)
                                               ^
   7 warnings generated.
--
   In file included from drivers/gpu//drm/i915/gem/i915_gem_execbuffer.c:7:
   In file included from include/linux/intel-iommu.h:14:
   In file included from include/linux/iova.h:16:
   In file included from include/linux/dma-mapping.h:11:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/x86/include/asm/io.h:375:
>> include/asm-generic/io.h:464:31: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __raw_readb(PCI_IOBASE + addr);
                             ~~~~~~~~~~ ^
   include/asm-generic/io.h:477:45: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le16_to_cpu(__raw_readw(PCI_IOBASE + addr));
                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/little_endian.h:36:51: note: expanded from macro '__le16_to_cpu'
   #define __le16_to_cpu(x) ((__force __u16)(__le16)(x))
                                                     ^
   In file included from drivers/gpu//drm/i915/gem/i915_gem_execbuffer.c:7:
   In file included from include/linux/intel-iommu.h:14:
   In file included from include/linux/iova.h:16:
   In file included from include/linux/dma-mapping.h:11:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/x86/include/asm/io.h:375:
   include/asm-generic/io.h:490:45: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           val = __le32_to_cpu(__raw_readl(PCI_IOBASE + addr));
                                           ~~~~~~~~~~ ^
   include/uapi/linux/byteorder/little_endian.h:34:51: note: expanded from macro '__le32_to_cpu'
   #define __le32_to_cpu(x) ((__force __u32)(__le32)(x))
                                                     ^
   In file included from drivers/gpu//drm/i915/gem/i915_gem_execbuffer.c:7:
   In file included from include/linux/intel-iommu.h:14:
   In file included from include/linux/iova.h:16:
   In file included from include/linux/dma-mapping.h:11:
   In file included from include/linux/scatterlist.h:9:
   In file included from arch/x86/include/asm/io.h:375:
   include/asm-generic/io.h:501:33: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writeb(value, PCI_IOBASE + addr);
                               ~~~~~~~~~~ ^
   include/asm-generic/io.h:511:46: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writew(cpu_to_le16(value), PCI_IOBASE + addr);
                                            ~~~~~~~~~~ ^
   include/asm-generic/io.h:521:46: warning: performing pointer arithmetic on a null pointer has undefined behavior [-Wnull-pointer-arithmetic]
           __raw_writel(cpu_to_le32(value), PCI_IOBASE + addr);
                                            ~~~~~~~~~~ ^
   drivers/gpu//drm/i915/gem/i915_gem_execbuffer.c:1433:22: warning: result of comparison of constant 576460752303423487 with expression of type 'unsigned int' is always false [-Wtautological-constant-out-of-range-compare]
           if (unlikely(remain > N_RELOC(ULONG_MAX)))
               ~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler.h:78:42: note: expanded from macro 'unlikely'
   # define unlikely(x)    __builtin_expect(!!(x), 0)
                                               ^
   7 warnings generated.

vim +464 include/asm-generic/io.h

3f7e212df82ca0 Arnd Bergmann  2009-05-13  450  
9216efafc52ff9 Thierry Reding 2014-10-01  451  /*
9216efafc52ff9 Thierry Reding 2014-10-01  452   * {in,out}{b,w,l}() access little endian I/O. {in,out}{b,w,l}_p() can be
9216efafc52ff9 Thierry Reding 2014-10-01  453   * implemented on hardware that needs an additional delay for I/O accesses to
9216efafc52ff9 Thierry Reding 2014-10-01  454   * take effect.
9216efafc52ff9 Thierry Reding 2014-10-01  455   */
9216efafc52ff9 Thierry Reding 2014-10-01  456  
5ae6dd12ec6d6b John Garry     2020-03-18  457  #ifndef _inb
5ae6dd12ec6d6b John Garry     2020-03-18  458  #define _inb _inb
5ae6dd12ec6d6b John Garry     2020-03-18  459  static inline u16 _inb(unsigned long addr)
9216efafc52ff9 Thierry Reding 2014-10-01  460  {
87fe2d543f8173 Sinan Kaya     2018-04-05  461  	u8 val;
87fe2d543f8173 Sinan Kaya     2018-04-05  462  
87fe2d543f8173 Sinan Kaya     2018-04-05  463  	__io_pbr();
87fe2d543f8173 Sinan Kaya     2018-04-05 @464  	val = __raw_readb(PCI_IOBASE + addr);
abbbbc83a210e9 Will Deacon    2019-02-22  465  	__io_par(val);
87fe2d543f8173 Sinan Kaya     2018-04-05  466  	return val;
9216efafc52ff9 Thierry Reding 2014-10-01  467  }
9216efafc52ff9 Thierry Reding 2014-10-01  468  #endif
9216efafc52ff9 Thierry Reding 2014-10-01  469  

:::::: The code at line 464 was first introduced by commit
:::::: 87fe2d543f817300e13f0ea683f38c122737856e io: change inX() to have their own IO barrier overrides

:::::: TO: Sinan Kaya <okaya@codeaurora.org>
:::::: CC: Arnd Bergmann <arnd@arndb.de>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202003190624.e8ZL3OS2%25lkp%40intel.com.

--Qxx1br4bt0+wmkIi
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
VKPmAQA=

--Qxx1br4bt0+wmkIi--
