Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB76FVL7QKGQERXF3Z4I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3d.google.com (mail-yb1-xb3d.google.com [IPv6:2607:f8b0:4864:20::b3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 698BC2E6D9E
	for <lists+clang-built-linux@lfdr.de>; Tue, 29 Dec 2020 04:31:13 +0100 (CET)
Received: by mail-yb1-xb3d.google.com with SMTP id o8sf6282675ybq.22
        for <lists+clang-built-linux@lfdr.de>; Mon, 28 Dec 2020 19:31:13 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609212672; cv=pass;
        d=google.com; s=arc-20160816;
        b=UndsVGdWA0azPdx1ToUPsqTIdRlpSHC2nBBSy50k8kiye7rYeNWe5AxUmRJ2e9YFPZ
         vYMUb/0MIQHVknLf9jZR14al4eQwIMGZQSto3j6Vwtew/qvLK+X/CdfLlpFJJBIUWJeg
         Vihn1ywaRwaZHLVexNok0VjsFJnN+QNKMUzjPgAy7EAcLe24Q8xVzQIPsIidhvSac7C0
         9VFN0bdHbW1i4bNflZOJcfIeX/LRiRwBbtJ7/hINCyjRuROjzWhRLqeJqj+IDLefX+4M
         /GQJAx1YKdOXu+uFGVlz6yWH00LHbRgB+qI0dq5INBS2M9uTmSbaIQRMNAkVtr/isOQV
         E00Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=FAjyv6HKsDWGJrwxR0pfxek8dvYiCJIDBZit6FfyuoU=;
        b=jqOSiko/zNB/9Y8zRPERp2zDbQ6DmJoZLCCtGkpgrUPayDLZZxv2uFXeihxz6YVzXX
         eafNVs5FWsjJvAt0u9ItNCLLY9QQqMuPPu1ZkMW41LdBh5YTEuAT8YD6cUCwCYIzV+m/
         ZBBhRupniFr5QvsDT4K3WHb67oYWo9rVpVx3KVB8bXrEE04n/KLVUEq4ka+gdTd1/dCS
         RJjYFjUfKQjuLXIb6P3PFbEgHCpoHfo2V/uP0x1A/w30cSO59pZhayWgEr/SZ8aqCcxv
         Li1cKllsHisylkvJtcKlSOMZ1hquftZ6clYU8UJGbHjFhomKayvBehOXLUiErwxemX2U
         5qDA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FAjyv6HKsDWGJrwxR0pfxek8dvYiCJIDBZit6FfyuoU=;
        b=Nlahh09SOqMDwW1lUJMQtNtaHBzOQ4CLpDOlPqCDDo7vaoIYpRwu3aB5UEbkCUtzog
         s1HRi9KGgdTfLKxlPLz7I6oMTu24JDrNhgjvb0QpdtNdUf9MOcFiUIb8ywqfnx3wQAnz
         VCcUABa/L7mDfXrdZhET/hIdxvohHiGfYDF5FgA/CNrSKEi9En/yIOh1lrElufSMQ3qU
         /vgL3T/L6zjL/wRPrmNlY7J2KR77zH00pIh4gWLwef33OYLuAlOdNBxY7rh21K5LTJ8E
         MUH+Mmm4xcn+8Il6zL7LjmOUY9XuhvI30xXHNK31eg3l4kudqSTWwMmmGLrEBxmOJhDj
         I1Aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FAjyv6HKsDWGJrwxR0pfxek8dvYiCJIDBZit6FfyuoU=;
        b=CZR+0y1MzKhEmfC/j2xvfz9hBFt6dz2679gvrTHDCoHgQXut2k5iyBs2iZ8zx2w5eW
         djMYAGV51PBLBEydFS8DH7DKH0Cm8xeNQnEIs7sL+xcB/9DYfmNuJwKcDLL33q7Goukq
         IsEryjIFpDfR2Bv1AoB2M+tdJTJ2H0+WDYXGzbvzt61dNXn61XYc3g3uUiS+ax/+J7RG
         IAzqRiy+4J69Gfr9MuTwM/5jeyirztA3lZxBCYoQNDDihPmbj4SA5VGO6dxgJO53FYNM
         VfphfIdAS4ybcjPr1QFBlbWF2PbDRoHJpjWdEbV6Q3oN0Y8HILxL65xC37WihRgxU+a1
         CZXA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533t59QYv3xYssxh56b7MvAOQg7lwKmXy1BdGzpCG69s2fx1ymi7
	TX69cKjwllGFhT65hZz52Vs=
X-Google-Smtp-Source: ABdhPJwCTlb5IXKQyvrlTOOj7nIjys7Vf8V6TWIIv95IIZvkFfqK4u4D3fA10/5HdT66vwkbbSF/LA==
X-Received: by 2002:a25:3206:: with SMTP id y6mr67233978yby.127.1609212671874;
        Mon, 28 Dec 2020 19:31:11 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:20e:: with SMTP id 14ls29205990ybc.0.gmail; Mon, 28 Dec
 2020 19:31:11 -0800 (PST)
X-Received: by 2002:a25:b883:: with SMTP id w3mr70404122ybj.457.1609212671255;
        Mon, 28 Dec 2020 19:31:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609212671; cv=none;
        d=google.com; s=arc-20160816;
        b=PRqSjmefnkfXWph3nUqla9lA/ufykiq1BN89gKuyTE+s6nYm6K641MVwGW7J32Xipc
         OXuol5VOBH6fmaCK9HgI5h+cV/D+SfOEPaz5OBAUbWmCQ/GpTOlqNzZtbE0XYCulB33q
         2RE7t22aLIsaqWct3lrH3LgrXu2XjMA/w+tkntMf3FJfjrE88r2uWVetn9w6m0Z23QqL
         639QYV01v51Mz4MDR1yHj+zebv73vWVix3/DyScol4JpgFMIGxztMEmYK5ZBIvNCDNq6
         9JxTJ8WiN7UwCyBKaKppBk0wmHGkwhxafHIHoJlZpsWbAVR5c4p20YFzgvZryj6uyxSM
         9UwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=4RYgQtc4qIoc5k03add9XG4Jsg14k0Gaof/xE2WH+wQ=;
        b=N1Ipe7KX+OlDa3ohReLKF0kGvWGUnmRb7l+msK3rkuTfUFKuHbbQC6v5RgvU2eOUv4
         T7ckrb5KZK8V13yGCFgMNWtJIu1UGmi//nHPLEThho5YPgTU7bXFOwxhClyRC7s0/GsV
         U8e2Gy/rFRQIHBX5AhtcTheVBfIimBJImAbTF+N/53xYyrE4LcMOvYcq2OPeRHjtQ/ux
         i3KL9ifVekvaW4bQqV7j8gVEsJBdZ0oSlKLrA3vW66X81wLligX7SzHaG2OZVSDrCU7n
         f71k7B48E1Uos2/u+ZWJ/AqWtsyg9sEYIrg9bRStppkheZ/CMEVDsFgyf+HAJrASl2oW
         V0mw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga12.intel.com (mga12.intel.com. [192.55.52.136])
        by gmr-mx.google.com with ESMTPS id e10si3428569ybp.4.2020.12.28.19.31.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 28 Dec 2020 19:31:11 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) client-ip=192.55.52.136;
IronPort-SDR: ilMe3hh1yujBMR/jizfZa5oqjv4uqf6bfpaTbUDZZKZB76L1tFF2lzkt4EQ+9GLzoP+vwKP7Ef
 nEJ774xKoOrA==
X-IronPort-AV: E=McAfee;i="6000,8403,9848"; a="155656717"
X-IronPort-AV: E=Sophos;i="5.78,456,1599548400"; 
   d="gz'50?scan'50,208,50";a="155656717"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Dec 2020 19:31:09 -0800
IronPort-SDR: cXQ5uPooY6qOVWq7bEfN4dTaYmkLO9S8Qma8JTotde7NBbcuA9tcCMPJMrek5XGB6u+mzx150R
 d6kCzi+KB3SA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,456,1599548400"; 
   d="gz'50?scan'50,208,50";a="384749579"
Received: from lkp-server02.sh.intel.com (HELO 4242b19f17ef) ([10.239.97.151])
  by orsmga007.jf.intel.com with ESMTP; 28 Dec 2020 19:31:06 -0800
Received: from kbuild by 4242b19f17ef with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1ku5j0-0003Ib-JB; Tue, 29 Dec 2020 03:31:06 +0000
Date: Tue, 29 Dec 2020 11:29:26 +0800
From: kernel test robot <lkp@intel.com>
To: Pratyush Yadav <p.yadav@ti.com>, Mark Brown <broonie@kernel.org>,
	Vignesh Raghavendra <vigneshr@ti.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Pratyush Yadav <p.yadav@ti.com>, linux-spi@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH 6/7] spi: cadence-quadspi: Wait at least 500 ms for
 direct reads
Message-ID: <202012291151.fApnPO6i-lkp@intel.com>
References: <20201222184425.7028-7-p.yadav@ti.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="dDRMvlgZJXvWKvBx"
Content-Disposition: inline
In-Reply-To: <20201222184425.7028-7-p.yadav@ti.com>
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


--dDRMvlgZJXvWKvBx
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Pratyush,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on spi/for-next]
[also build test WARNING on v5.11-rc1 next-20201223]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Pratyush-Yadav/spi-cadence-quadspi-Add-Octal-DTR-support/20201223-025328
base:   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git for-next
config: arm-randconfig-r006-20201221 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project cee1e7d14f4628d6174b33640d502bff3b54ae45)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install arm cross compiling tool for clang build
        # apt-get install binutils-arm-linux-gnueabi
        # https://github.com/0day-ci/linux/commit/04a7bcbc449363e5d6f498376c69116567b49d7d
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Pratyush-Yadav/spi-cadence-quadspi-Add-Octal-DTR-support/20201223-025328
        git checkout 04a7bcbc449363e5d6f498376c69116567b49d7d
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/spi/spi-cadence-quadspi.c:966:24: warning: comparison of distinct pointer types ('typeof (len) *' (aka 'unsigned int *') and 'typeof (500UL) *' (aka 'unsigned long *')) [-Wcompare-distinct-pointer-types]
                                            msecs_to_jiffies(max(len, 500UL)))) {
                                                             ^~~~~~~~~~~~~~~
   include/linux/minmax.h:58:19: note: expanded from macro 'max'
   #define max(x, y)       __careful_cmp(x, y, >)
                           ^~~~~~~~~~~~~~~~~~~~~~
   include/linux/minmax.h:42:24: note: expanded from macro '__careful_cmp'
           __builtin_choose_expr(__safe_cmp(x, y), \
                                 ^~~~~~~~~~~~~~~~
   include/linux/minmax.h:32:4: note: expanded from macro '__safe_cmp'
                   (__typecheck(x, y) && __no_side_effects(x, y))
                    ^~~~~~~~~~~~~~~~~
   include/linux/minmax.h:18:28: note: expanded from macro '__typecheck'
           (!!(sizeof((typeof(x) *)1 == (typeof(y) *)1)))
                      ~~~~~~~~~~~~~~ ^  ~~~~~~~~~~~~~~
   1 warning generated.


vim +966 drivers/spi/spi-cadence-quadspi.c

   919	
   920	static int cqspi_direct_read_execute(struct cqspi_flash_pdata *f_pdata,
   921					     u_char *buf, loff_t from, size_t len)
   922	{
   923		struct cqspi_st *cqspi = f_pdata->cqspi;
   924		struct device *dev = &cqspi->pdev->dev;
   925		enum dma_ctrl_flags flags = DMA_CTRL_ACK | DMA_PREP_INTERRUPT;
   926		dma_addr_t dma_src = (dma_addr_t)cqspi->mmap_phys_base + from;
   927		int ret = 0;
   928		struct dma_async_tx_descriptor *tx;
   929		dma_cookie_t cookie;
   930		dma_addr_t dma_dst;
   931		struct device *ddev;
   932	
   933		if (!cqspi->rx_chan || !virt_addr_valid(buf)) {
   934			memcpy_fromio(buf, cqspi->ahb_base + from, len);
   935			return 0;
   936		}
   937	
   938		ddev = cqspi->rx_chan->device->dev;
   939		dma_dst = dma_map_single(ddev, buf, len, DMA_FROM_DEVICE);
   940		if (dma_mapping_error(ddev, dma_dst)) {
   941			dev_err(dev, "dma mapping failed\n");
   942			return -ENOMEM;
   943		}
   944		tx = dmaengine_prep_dma_memcpy(cqspi->rx_chan, dma_dst, dma_src,
   945					       len, flags);
   946		if (!tx) {
   947			dev_err(dev, "device_prep_dma_memcpy error\n");
   948			ret = -EIO;
   949			goto err_unmap;
   950		}
   951	
   952		tx->callback = cqspi_rx_dma_callback;
   953		tx->callback_param = cqspi;
   954		cookie = tx->tx_submit(tx);
   955		reinit_completion(&cqspi->rx_dma_complete);
   956	
   957		ret = dma_submit_error(cookie);
   958		if (ret) {
   959			dev_err(dev, "dma_submit_error %d\n", cookie);
   960			ret = -EIO;
   961			goto err_unmap;
   962		}
   963	
   964		dma_async_issue_pending(cqspi->rx_chan);
   965		if (!wait_for_completion_timeout(&cqspi->rx_dma_complete,
 > 966						 msecs_to_jiffies(max(len, 500UL)))) {
   967			dmaengine_terminate_sync(cqspi->rx_chan);
   968			dev_err(dev, "DMA wait_for_completion_timeout\n");
   969			ret = -ETIMEDOUT;
   970			goto err_unmap;
   971		}
   972	
   973	err_unmap:
   974		dma_unmap_single(ddev, dma_dst, len, DMA_FROM_DEVICE);
   975	
   976		return ret;
   977	}
   978	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202012291151.fApnPO6i-lkp%40intel.com.

--dDRMvlgZJXvWKvBx
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
r8X/BxHP5eWyCwIA

--dDRMvlgZJXvWKvBx--
