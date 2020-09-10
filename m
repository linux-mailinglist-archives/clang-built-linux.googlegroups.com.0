Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBUFE5L5AKGQE74FSTDQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53f.google.com (mail-pg1-x53f.google.com [IPv6:2607:f8b0:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id 5E92E26515F
	for <lists+clang-built-linux@lfdr.de>; Thu, 10 Sep 2020 22:53:38 +0200 (CEST)
Received: by mail-pg1-x53f.google.com with SMTP id w69sf4522173pgw.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 10 Sep 2020 13:53:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599771217; cv=pass;
        d=google.com; s=arc-20160816;
        b=CkDJdQX6gDW+/wS1RKeMfy1LlfSIQz7oeB3BbYEFLOU8vvDaBurfFDQh+CEAWyHn8s
         oPyr08gzCEv5JHv+E9YvS+0hTaXdCxiBKJnEInoJrkgbg9rIBaMPI441fS8GKHq5L+ta
         Jus9h3YDYf2NceblNDEnWyj7G1WLy1NE/pAmJC/2qPiLnSPnMq04arvAcUKtpsrBP/R7
         YFrbVQeMV4sDfduFV+vw2BE0rBdXrAeWFW6P8E3I51xSndlOzdK2BxSh34Yr4n3hySAh
         JuRZ8NkbSihsa1to4WW2JpXQQnJ5s6BtyQO5uYLsYnhd3HOWWn9yqWIX37TQSArkN/Q0
         9jJQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=q6PW0bSEznj0xEPBbDw1JCJNY0RD/GmAaKxRx+4F49U=;
        b=C6pg201DDri2fcqR/mIrLInWOyGPvEyEvod2GntriTHAcRaL8JbwOxVi0pgwH66VwN
         /3pg4iCGKw3y3RFOFSx2bmnkAa2fMNB5WCn86yi3ecRZ2YSau6u6aqqXpTK0+v5QyVOP
         SQ8vWfW3PgMn/al5NSdISYPFOQMI3H/KPyFAEQokIm4teDQrlbzOcvUYYAEsHasGmhXC
         4r4JwLCm8IOPNQFtfG4p38zKhcy45I5ff6U11A9m7NkQgMTentsgCNjM4pNz+sKY745R
         mcod4nz9gNDgEsVzKb9NKw/eeP1SXbmSfbJYRzxIe5mRPorxF8kvK9uzSCDmuKrklepH
         3xkg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=q6PW0bSEznj0xEPBbDw1JCJNY0RD/GmAaKxRx+4F49U=;
        b=LdOXsYG+VnMsGjcbEdOQJ1iZeBjMmh93qWmiSFZXOccn4RiZrV8VbwDkTzSxh3caH6
         VNLHVS28aOVKfiJCP9FC2kOcW64KSBWC9sCKYasEud4Kk3hoXO/FGQVkO0aXIqJ4bKdh
         WrRSEQCyx205Sy5CchPCCHZeDLVMdTqn1zu1EEsQ/ywO+be8lql52p2IcGs4D5jJykvW
         +b/tXP4fswWTU59cvNMYeP/z8FsbtiOsDemBoIUvBBQwM+zMqgDwv0Ch7RccagHSlUry
         2yIcxpMDcGWSVk1/yMbrjJjkjf2LyJsDLPqSQM3XNXBKTKaJiT9w2Cn3cgFK4s2AqTf9
         vccg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=q6PW0bSEznj0xEPBbDw1JCJNY0RD/GmAaKxRx+4F49U=;
        b=NeGKswQYUzZe3nZ9LyoC0pkwZzI8NDVn5N1OhuLqoT4dRieN6shfLXXHVpwIUIOTX8
         7no6cL+qAahWaJIuG5xY8ncsdLQ0m7SMNQfSNzYAaNZzQT3dLBF4IyWNNRLhPKy0Oq9n
         viCYLJLFiB/3PMHDdLvHQw8E7+I5bM0nk2qZgSfaG3OapsHz6aTGeEvKQIHEx4znblZi
         dcr3i6FOlxga92yVrCoCwxoiL6cA9sRPCzFm0HT0RTxkJeUYfJR4uGpfrBp42HchlWyJ
         s5Pz/W3MLjnVYDw4b+YBtlyP+OKoBrvGTlI5DpI7BlOY+wEZu0lQv3D/6/woojMJC0+l
         8l8g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533nH58zByQhpV3JBzQOdo41KnT14Gpu8TtMZhEdmS0dzm4/yfYX
	Q1e5I5Cfro4FkzesFYyoNAU=
X-Google-Smtp-Source: ABdhPJxFPqVfQgdC6VgxR5BQW5Ej3znNxEux5mBaJ1tNWl0QFjf0FQJy0VP7IISJmmzEkLrOdNYs/g==
X-Received: by 2002:a17:90a:71c9:: with SMTP id m9mr1655633pjs.146.1599771216836;
        Thu, 10 Sep 2020 13:53:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:eb49:: with SMTP id i9ls3681662pli.10.gmail; Thu, 10
 Sep 2020 13:53:36 -0700 (PDT)
X-Received: by 2002:a17:90b:3c3:: with SMTP id go3mr1831867pjb.64.1599771216149;
        Thu, 10 Sep 2020 13:53:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599771216; cv=none;
        d=google.com; s=arc-20160816;
        b=VVncUHCjGYtDoE4yDe0vVjp9NFgBCIxVSt7YFPlrxon2GUOerdnrGji+PsHap+Sscl
         q7pK0SsLKjIUXxsO8MM+Fkc4Q0aDkWQnuCCMbXTV10Gr/KYfSvQxcCuT9Bi+GDBc55VG
         nOdugn9sPrzp9xZBpJW9pmtcmAXiDKzDLeILEaUQlbiD+RGGbuGEiY3we5NE6fIm+3Sy
         chh4hkgFFkic2epwh9dDxdv897Ov0jxEcSnhaJF7W1buYAvUNxDZNoxWmLATV+6w/2e4
         wGwsf5lAkS/KvvCvsSTjl3j/OFevM2HJQ+l07Vp6Om/xD1nqmu4bnSnilcBV1N/oWGQD
         6SqQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=TzZkLbVOSyT2HB9zGLd3GRk92QnUPfvQZmsPrv+Awmo=;
        b=VJT1bUv63bxiWYkYnhaD1w/wgNMK1hQAyn5nj/DAQHNCAJDt/OEmXnr+i4mX4WWjvT
         rJKu3+pQnNqJ9ovlaik+Qa3H+y50WL8XZbaoEuR4nwV91ZJJFmXjXG60x1q5kniK/VfL
         rDhkBmShqDYkrdWoIlxYRB7/+tOABe/ugH8Xy8HhsP+uwNoYdr8lw/tzQlOMrtRIMoLR
         mgAtLq3xOFfxrZlTxJL/2fOl9xWupiariHsgQUmH+6VZbapS9ii9qQ6F8QOfx3edo/Lx
         s2kskwudxSJGbBtTKxbXTqtfBgmAoWZBoIOsVX7aZhkUv9lFdkpgah1YjdK9AFV24ZfY
         4EDw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga12.intel.com (mga12.intel.com. [192.55.52.136])
        by gmr-mx.google.com with ESMTPS id y1si8239pjv.0.2020.09.10.13.53.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 10 Sep 2020 13:53:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) client-ip=192.55.52.136;
IronPort-SDR: Y+mEetJDmfcgaWkAU+peaz/p1fYbnfTHy5ejjPRda6Rqstpt0eewdI+//+/Zypb1cb9VzDVlm8
 fLmrJDUWEoIw==
X-IronPort-AV: E=McAfee;i="6000,8403,9740"; a="138149646"
X-IronPort-AV: E=Sophos;i="5.76,413,1592895600"; 
   d="gz'50?scan'50,208,50";a="138149646"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Sep 2020 13:53:35 -0700
IronPort-SDR: bR4AJ3SkfzPIs1EgEGXZTmRWpdCrQqZG92SP0uYpnOkBNt2CW4c19v/Dk7dfmqnpYu2wkck9Gw
 0ZUFFTaDDWjw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,413,1592895600"; 
   d="gz'50?scan'50,208,50";a="285361369"
Received: from lkp-server01.sh.intel.com (HELO 12ff3cf3f2e9) ([10.239.97.150])
  by fmsmga007.fm.intel.com with ESMTP; 10 Sep 2020 13:53:31 -0700
Received: from kbuild by 12ff3cf3f2e9 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kGTZS-000125-N9; Thu, 10 Sep 2020 20:53:30 +0000
Date: Fri, 11 Sep 2020 04:52:50 +0800
From: kernel test robot <lkp@intel.com>
To: Kalle Valo <kvalo@codeaurora.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org,
	Anilkumar Kolli <akolli@codeaurora.org>,
	Bhagavathi Perumal S <bperumal@codeaurora.org>,
	Ganesh Sesetti <gseset@codeaurora.org>,
	Govindaraj Saminathan <gsamin@codeaurora.org>,
	John Crispin <john@phrozen.org>,
	Julia Lawall <julia.lawall@lip6.fr>,
	Karthikeyan Periyasamy <periyasa@codeaurora.org>,
	kbuild test robot <lkp@intel.com>,
	Maharaja Kennadyrajan <mkenna@codeaurora.org>
Subject: drivers/net/wireless/ath/ath11k/ahb.c:919:15: warning: cast to
 smaller integer type 'enum ath11k_hw_rev' from 'const void
Message-ID: <202009110445.WqWCY2F0%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="r5Pyd7+fXNt84Ff3"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted
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


--r5Pyd7+fXNt84Ff3
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   7fe10096c1508c7f033d34d0741809f8eecc1ed4
commit: d5c65159f2895379e11ca13f62feabe93278985d ath11k: driver for Qualcomm IEEE 802.11ax devices
date:   10 months ago
config: x86_64-randconfig-a015-20200910 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 0a5dc7effb191eff740e0e7ae7bd8e1f6bdb3ad9)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        git checkout d5c65159f2895379e11ca13f62feabe93278985d
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/net/wireless/ath/ath11k/ahb.c:919:15: warning: cast to smaller integer type 'enum ath11k_hw_rev' from 'const void *' [-Wvoid-pointer-to-enum-cast]
           ab->hw_rev = (enum ath11k_hw_rev)of_id->data;
                        ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   1 warning generated.
--
>> drivers/net/wireless/ath/ath11k/wmi.c:142:8: warning: format specifies type 'unsigned char' but the argument has type 'u16' (aka 'unsigned short') [-Wformat]
                                      tlv_tag, ptr - begin, len, tlv_len);
                                      ^~~~~~~
   drivers/net/wireless/ath/ath11k/wmi.c:142:35: warning: format specifies type 'unsigned char' but the argument has type 'u16' (aka 'unsigned short') [-Wformat]
                                      tlv_tag, ptr - begin, len, tlv_len);
                                                                 ^~~~~~~
   drivers/net/wireless/ath/ath11k/wmi.c:150:8: warning: format specifies type 'unsigned char' but the argument has type 'u16' (aka 'unsigned short') [-Wformat]
                                      tlv_tag, ptr - begin, tlv_len,
                                      ^~~~~~~
   drivers/net/wireless/ath/ath11k/wmi.c:150:30: warning: format specifies type 'unsigned char' but the argument has type 'u16' (aka 'unsigned short') [-Wformat]
                                      tlv_tag, ptr - begin, tlv_len,
                                                            ^~~~~~~
   drivers/net/wireless/ath/ath11k/wmi.c:1812:23: warning: implicit conversion from enumeration type 'enum wmi_scan_priority' to different enumeration type 'enum scan_priority' [-Wenum-conversion]
           arg->scan_priority = WMI_SCAN_PRIORITY_LOW;
                              ~ ^~~~~~~~~~~~~~~~~~~~~
   5 warnings generated.
--
>> drivers/net/wireless/ath/ath11k/mac.c:3970:6: warning: format specifies type 'unsigned short' but the argument has type 'u32' (aka 'unsigned int') [-Wformat]
                      ctx->def.chan->center_freq, ctx->def.width, ctx);
                      ^~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/net/wireless/ath/ath11k/debug.h:275:37: note: expanded from macro 'ath11k_dbg'
                   __ath11k_dbg(ar, dbg_mask, fmt, ##__VA_ARGS__); \
                                              ~~~    ^~~~~~~~~~~
   drivers/net/wireless/ath/ath11k/mac.c:3994:6: warning: format specifies type 'unsigned short' but the argument has type 'u32' (aka 'unsigned int') [-Wformat]
                      ctx->def.chan->center_freq, ctx->def.width, ctx);
                      ^~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/net/wireless/ath/ath11k/debug.h:275:37: note: expanded from macro 'ath11k_dbg'
                   __ath11k_dbg(ar, dbg_mask, fmt, ##__VA_ARGS__); \
                                              ~~~    ^~~~~~~~~~~
   drivers/net/wireless/ath/ath11k/mac.c:4241:7: warning: format specifies type 'unsigned short' but the argument has type 'u32' (aka 'unsigned int') [-Wformat]
                              vifs[i].old_ctx->def.chan->center_freq,
                              ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/net/wireless/ath/ath11k/debug.h:275:37: note: expanded from macro 'ath11k_dbg'
                   __ath11k_dbg(ar, dbg_mask, fmt, ##__VA_ARGS__); \
                                              ~~~    ^~~~~~~~~~~
   drivers/net/wireless/ath/ath11k/mac.c:4242:7: warning: format specifies type 'unsigned short' but the argument has type 'u32' (aka 'unsigned int') [-Wformat]
                              vifs[i].new_ctx->def.chan->center_freq,
                              ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/net/wireless/ath/ath11k/debug.h:275:37: note: expanded from macro 'ath11k_dbg'
                   __ath11k_dbg(ar, dbg_mask, fmt, ##__VA_ARGS__); \
                                              ~~~    ^~~~~~~~~~~
   drivers/net/wireless/ath/ath11k/mac.c:4337:6: warning: format specifies type 'unsigned short' but the argument has type 'u32' (aka 'unsigned int') [-Wformat]
                      ctx->def.chan->center_freq, ctx->def.width, ctx, changed);
                      ^~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/net/wireless/ath/ath11k/debug.h:275:37: note: expanded from macro 'ath11k_dbg'
                   __ath11k_dbg(ar, dbg_mask, fmt, ##__VA_ARGS__); \
                                              ~~~    ^~~~~~~~~~~
>> drivers/net/wireless/ath/ath11k/mac.c:4640:22: warning: format specifies type 'unsigned char' but the argument has type 'u32' (aka 'unsigned int') [-Wformat]
                      arvif->vdev_id, rate, nss, sgi);
                                      ^~~~
   drivers/net/wireless/ath/ath11k/debug.h:275:37: note: expanded from macro 'ath11k_dbg'
                   __ath11k_dbg(ar, dbg_mask, fmt, ##__VA_ARGS__); \
                                              ~~~    ^~~~~~~~~~~
   6 warnings generated.
--
>> drivers/net/wireless/ath/ath11k/dp_rx.c:977:8: warning: format specifies type 'unsigned char' but the argument has type 'u16' (aka 'unsigned short') [-Wformat]
                                      tlv_tag, ptr - begin, len, tlv_len);
                                      ^~~~~~~
   drivers/net/wireless/ath/ath11k/dp_rx.c:977:35: warning: format specifies type 'unsigned char' but the argument has type 'u16' (aka 'unsigned short') [-Wformat]
                                      tlv_tag, ptr - begin, len, tlv_len);
                                                                 ^~~~~~~
   2 warnings generated.

# https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=d5c65159f2895379e11ca13f62feabe93278985d
git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
git fetch --no-tags linus master
git checkout d5c65159f2895379e11ca13f62feabe93278985d
vim +919 drivers/net/wireless/ath/ath11k/ahb.c

   879	
   880	static int ath11k_ahb_probe(struct platform_device *pdev)
   881	{
   882		struct ath11k_base *ab;
   883		const struct of_device_id *of_id;
   884		struct resource *mem_res;
   885		void __iomem *mem;
   886		int ret;
   887	
   888		of_id = of_match_device(ath11k_ahb_of_match, &pdev->dev);
   889		if (!of_id) {
   890			dev_err(&pdev->dev, "failed to find matching device tree id\n");
   891			return -EINVAL;
   892		}
   893	
   894		mem_res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
   895		if (!mem_res) {
   896			dev_err(&pdev->dev, "failed to get IO memory resource\n");
   897			return -ENXIO;
   898		}
   899	
   900		mem = devm_ioremap_resource(&pdev->dev, mem_res);
   901		if (IS_ERR(mem)) {
   902			dev_err(&pdev->dev, "ioremap error\n");
   903			return PTR_ERR(mem);
   904		}
   905	
   906		ret = dma_set_mask_and_coherent(&pdev->dev, DMA_BIT_MASK(32));
   907		if (ret) {
   908			dev_err(&pdev->dev, "failed to set 32-bit consistent dma\n");
   909			return ret;
   910		}
   911	
   912		ab = ath11k_core_alloc(&pdev->dev);
   913		if (!ab) {
   914			dev_err(&pdev->dev, "failed to allocate ath11k base\n");
   915			return -ENOMEM;
   916		}
   917	
   918		ab->pdev = pdev;
 > 919		ab->hw_rev = (enum ath11k_hw_rev)of_id->data;
   920		ab->mem = mem;
   921		ab->mem_len = resource_size(mem_res);
   922		platform_set_drvdata(pdev, ab);
   923	
   924		ret = ath11k_hal_srng_init(ab);
   925		if (ret)
   926			goto err_core_free;
   927	
   928		ret = ath11k_ce_alloc_pipes(ab);
   929		if (ret) {
   930			ath11k_err(ab, "failed to allocate ce pipes: %d\n", ret);
   931			goto err_hal_srng_deinit;
   932		}
   933	
   934		ath11k_ahb_init_qmi_ce_config(ab);
   935	
   936		ret = ath11k_ahb_config_irq(ab);
   937		if (ret) {
   938			ath11k_err(ab, "failed to configure irq: %d\n", ret);
   939			goto err_ce_free;
   940		}
   941	
   942		ret = ath11k_core_init(ab);
   943		if (ret) {
   944			ath11k_err(ab, "failed to init core: %d\n", ret);
   945			goto err_ce_free;
   946		}
   947	
   948		return 0;
   949	
   950	err_ce_free:
   951		ath11k_ce_free_pipes(ab);
   952	
   953	err_hal_srng_deinit:
   954		ath11k_hal_srng_deinit(ab);
   955	
   956	err_core_free:
   957		ath11k_core_free(ab);
   958		platform_set_drvdata(pdev, NULL);
   959	
   960		return ret;
   961	}
   962	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202009110445.WqWCY2F0%25lkp%40intel.com.

--r5Pyd7+fXNt84Ff3
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--r5Pyd7+fXNt84Ff3--
