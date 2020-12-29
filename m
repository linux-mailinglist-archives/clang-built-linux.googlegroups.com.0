Return-Path: <clang-built-linux+bncBAABBVHIVP7QKGQE7J7KVZA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103c.google.com (mail-pj1-x103c.google.com [IPv6:2607:f8b0:4864:20::103c])
	by mail.lfdr.de (Postfix) with ESMTPS id D40D42E6F46
	for <lists+clang-built-linux@lfdr.de>; Tue, 29 Dec 2020 10:18:13 +0100 (CET)
Received: by mail-pj1-x103c.google.com with SMTP id m7sf1673830pjr.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 29 Dec 2020 01:18:13 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609233492; cv=pass;
        d=google.com; s=arc-20160816;
        b=NiXrnL8hV/bRGRJoaXND/wFA8cDUihaUdpN5aXL8OAiPhSWU+R+sKvdb+XL8LwSMl6
         EysreW8VYsTCWtSOswjHkp1ijwUCBnUBtxCaWKQJP/3JLNYP7UdTeprYt+uMZ3hbtzTt
         DTYC4Ku8K8+Wi57lbOI3susFFNlzZoEwtZtOx89/Rsct1oMdkADawR5P2DFwgnXsddYW
         HndqSb8w7bakAMSF9HpbTc+uBhoNHr6zHiWf8/hoaWCwztg8JjBOjmrjP9oCQpu9PUxM
         jvp/KENsAY9f/czisS0f/yMyv3eBbXZEYBZg/EKIf7tFd4nLJF53HzjVFcRfN2JrT4xT
         AfnA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=0p7A0Brcb/YDLfKDvPK2+RgoHt3SAqsXhsuq+N4/IEE=;
        b=heYApf6pOzyCg8/rL/N8lTHSoyNrYeTbtlWyKCGKNL9DaOy7BP7a+WAnpmbuWqBdfh
         Bbod1AZbu+gcw/a3JrBRE3zPZv2uooLm+IUeC4h7t7NzuZvSlmZn9whWpPitEnZbLzzV
         xjydW0n4CkpnsbMCzYxvbMK9iTJO4HEebQCRk2+DqKGaplNrEO0E6kXwSAPCx7RYPBFC
         cayzi17+JEByR45HUWS8cJTDVpxEN5m0JgGMzAytiNRoZwBDemPNKHkdF4sd2wDIpeS2
         W984rsy7eGGmMZ1JRjsNmrWCS5dfwclIOzcEtUyXQ4HTdOCgopzzhgDApZsf/uAYd2PK
         dLLg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=WAbJ7Hko;
       spf=pass (google.com: domain of p.yadav@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=p.yadav@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=0p7A0Brcb/YDLfKDvPK2+RgoHt3SAqsXhsuq+N4/IEE=;
        b=B3a10D5o1ydRpoq8t8JLajlRc9yVXmH0nPwgxsAelKrRCdWRBgQ8ybDV/STTjy2Dkf
         NMq6iKIGhk8rY2XWy65zGlZIPaINiaVJsybYwxs2plD6CArVb85fc/9Juux/j267QE4C
         SjssCwVlMJDU7Li21zPVMM2b/lvhcqF9q6WI851o4FNyaVUyO0gYLC/NrdSumvgyD8nZ
         oE7YGWtXmjqKtd15XkkS7AgYMmXSfZTR+k4DDUTeJ5Z7ds/sGNOvhTYew1bhkJD6GFBN
         QtL0RKhluCbs3KmWnrPYpPyBeGUYeuA368g5pmYRyXRUadOpgJUEDFigcjfcfGW6qC6h
         iPEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=0p7A0Brcb/YDLfKDvPK2+RgoHt3SAqsXhsuq+N4/IEE=;
        b=JxRvM4/YDPdtlo4WL+5RVYi/EXESfv9fO+bg17KqIV/zqVTjJeaJGlVkW+XSdD7oOR
         BDOZXqgnFEmQswu0iKUkgCNMMdyJLhBJ7fwWxiS3sh+t7ftBaIoZ5/yfeLnzWEWU5o2u
         YBVPpbrAITeWO3SA1TjZTodOb2XzK3iYpK6nb1dAKiOQne29fWWN2YUyy26/v3rZLUXd
         zdWckQrL06z271E97ijWNg8FPoxFN2APNPJBj62lH24SLcBcBk3FSDge2LjBgFsjz/iy
         Y/HhYfB0xC7Orgegvhr54haByGMNO8gp+wX0Viwse/ToI+NcK50p1D4NzXxoV4TQV0G/
         9IdA==
X-Gm-Message-State: AOAM531DMtAqdPl+cWjQ4sD0FGxV6NBCuFpj5Ha/SkKtTuHIPIzoqSyR
	X3gQzSFL6pV+CJbLglTUI/A=
X-Google-Smtp-Source: ABdhPJzWDftaRPohS/fO6AilJb8t8tKlTHdTPCeEEqotOOlyarTv8S2GwCKOIeX8tHn3zThi9RwqNg==
X-Received: by 2002:a17:90a:43e2:: with SMTP id r89mr3206760pjg.38.1609233492401;
        Tue, 29 Dec 2020 01:18:12 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:959d:: with SMTP id z29ls19036120pfj.2.gmail; Tue, 29
 Dec 2020 01:18:11 -0800 (PST)
X-Received: by 2002:a65:5283:: with SMTP id y3mr14529630pgp.174.1609233491788;
        Tue, 29 Dec 2020 01:18:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609233491; cv=none;
        d=google.com; s=arc-20160816;
        b=wDl8fh/lfOJvl5u1F933dG687PhOIyWUiHbFvsJQRdv/5wU2DgTUrdDoZA6F3IFz0p
         DZ6UArtHKVH+wPGN+/MVqkgDPoLl/sf+1PMpWo8T1Z2421IKcXEBqf22SfSYvhIV3uFG
         gnLaWmrg9i/zTmyRW204EKhenqZ35eEmT/QW4Niq/4/6k2VNXqwTtQXxWxAoenAJmr62
         Ia48TgXXuqmT0GounnGT0bCS/MlP3IjOzFTbK9ZJFFLIAYy/RHeIzwoLmnegh+pNdbbd
         Y7AE3M8UExTtmomLsol0Vm0zjXZQHZqINMlrMkaPG9kELeMuaeUbYAhvDT2eB3ohBseP
         azJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=/6xBBWpT3WRCMMUgBxrheESjHoePUuf+lz9L67kzo7Q=;
        b=IptH7/qAc5+BTeT5/10YwZUZ4CRSXQij5sozo+DUBDal8aXaQlOYjG8vatOAuJBukO
         ZdnUEHtu4jkRky/9ibFK7eeoE0+gQ/b19xAaqOEeH8mXpKcY8GYCR8YAQj4h99qOWtZ+
         FlFq+5HnHfA8wLnVPMGB2Ez/XmxDhJ2JaCl/1gxbD/6kVApSRmb6CnWWa2Js+nHVRZmH
         ISTsD0b6/W8VXQMag4fPxZqMWyQ+pXfMRd2Scw+DWK9cauWpLooRQxnT5YlOnUdNLCWF
         9cH6T90iH6d0n/VsGRAbZbo4FwazL35LOUK0Q2iAP3oyMZElm1UjbHvv5PwfAqktS//6
         iYFA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@ti.com header.s=ti-com-17Q1 header.b=WAbJ7Hko;
       spf=pass (google.com: domain of p.yadav@ti.com designates 198.47.19.142 as permitted sender) smtp.mailfrom=p.yadav@ti.com;
       dmarc=pass (p=QUARANTINE sp=NONE dis=NONE) header.from=ti.com
Received: from fllv0016.ext.ti.com (fllv0016.ext.ti.com. [198.47.19.142])
        by gmr-mx.google.com with ESMTPS id d2si2794579pfr.4.2020.12.29.01.18.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 29 Dec 2020 01:18:11 -0800 (PST)
Received-SPF: pass (google.com: domain of p.yadav@ti.com designates 198.47.19.142 as permitted sender) client-ip=198.47.19.142;
Received: from lelv0265.itg.ti.com ([10.180.67.224])
	by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id 0BT9IB40012996;
	Tue, 29 Dec 2020 03:18:11 -0600
Received: from DLEE112.ent.ti.com (dlee112.ent.ti.com [157.170.170.23])
	by lelv0265.itg.ti.com (8.15.2/8.15.2) with ESMTPS id 0BT9IA7K103415
	(version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
	Tue, 29 Dec 2020 03:18:10 -0600
Received: from DLEE107.ent.ti.com (157.170.170.37) by DLEE112.ent.ti.com
 (157.170.170.23) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3; Tue, 29
 Dec 2020 03:18:10 -0600
Received: from fllv0040.itg.ti.com (10.64.41.20) by DLEE107.ent.ti.com
 (157.170.170.37) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1979.3 via
 Frontend Transport; Tue, 29 Dec 2020 03:18:10 -0600
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
	by fllv0040.itg.ti.com (8.15.2/8.15.2) with ESMTP id 0BT9I9MH069150;
	Tue, 29 Dec 2020 03:18:10 -0600
Date: Tue, 29 Dec 2020 14:48:08 +0530
From: "'Pratyush Yadav' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: kernel test robot <lkp@intel.com>
CC: Mark Brown <broonie@kernel.org>, Vignesh Raghavendra <vigneshr@ti.com>,
        <kbuild-all@lists.01.org>, <clang-built-linux@googlegroups.com>,
        <linux-spi@vger.kernel.org>, <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH 6/7] spi: cadence-quadspi: Wait at least 500 ms for
 direct reads
Message-ID: <20201229091806.eyrakehdxo6762sg@ti.com>
References: <20201222184425.7028-7-p.yadav@ti.com>
 <202012291151.fApnPO6i-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202012291151.fApnPO6i-lkp@intel.com>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-Original-Sender: p.yadav@ti.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@ti.com header.s=ti-com-17Q1 header.b=WAbJ7Hko;       spf=pass
 (google.com: domain of p.yadav@ti.com designates 198.47.19.142 as permitted
 sender) smtp.mailfrom=p.yadav@ti.com;       dmarc=pass (p=QUARANTINE sp=NONE
 dis=NONE) header.from=ti.com
X-Original-From: Pratyush Yadav <p.yadav@ti.com>
Reply-To: Pratyush Yadav <p.yadav@ti.com>
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

On 29/12/20 11:29AM, kernel test robot wrote:
> Hi Pratyush,
> 
> Thank you for the patch! Perhaps something to improve:
> 
> [auto build test WARNING on spi/for-next]
> [also build test WARNING on v5.11-rc1 next-20201223]
> [If your patch is applied to the wrong git tree, kindly drop us a note.
> And when submitting patch, we suggest to use '--base' as documented in
> https://git-scm.com/docs/git-format-patch]
> 
> url:    https://github.com/0day-ci/linux/commits/Pratyush-Yadav/spi-cadence-quadspi-Add-Octal-DTR-support/20201223-025328
> base:   https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git for-next
> config: arm-randconfig-r006-20201221 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project cee1e7d14f4628d6174b33640d502bff3b54ae45)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install arm cross compiling tool for clang build
>         # apt-get install binutils-arm-linux-gnueabi
>         # https://github.com/0day-ci/linux/commit/04a7bcbc449363e5d6f498376c69116567b49d7d
>         git remote add linux-review https://github.com/0day-ci/linux
>         git fetch --no-tags linux-review Pratyush-Yadav/spi-cadence-quadspi-Add-Octal-DTR-support/20201223-025328
>         git checkout 04a7bcbc449363e5d6f498376c69116567b49d7d
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
> >> drivers/spi/spi-cadence-quadspi.c:966:24: warning: comparison of distinct pointer types ('typeof (len) *' (aka 'unsigned int *') and 'typeof (500UL) *' (aka 'unsigned long *')) [-Wcompare-distinct-pointer-types]
>                                             msecs_to_jiffies(max(len, 500UL)))) {
>                                                              ^~~~~~~~~~~~~~~
>    include/linux/minmax.h:58:19: note: expanded from macro 'max'
>    #define max(x, y)       __careful_cmp(x, y, >)
>                            ^~~~~~~~~~~~~~~~~~~~~~
>    include/linux/minmax.h:42:24: note: expanded from macro '__careful_cmp'
>            __builtin_choose_expr(__safe_cmp(x, y), \
>                                  ^~~~~~~~~~~~~~~~
>    include/linux/minmax.h:32:4: note: expanded from macro '__safe_cmp'
>                    (__typecheck(x, y) && __no_side_effects(x, y))
>                     ^~~~~~~~~~~~~~~~~
>    include/linux/minmax.h:18:28: note: expanded from macro '__typecheck'
>            (!!(sizeof((typeof(x) *)1 == (typeof(y) *)1)))
>                       ~~~~~~~~~~~~~~ ^  ~~~~~~~~~~~~~~
>    1 warning generated.

On arm64 size_t is defined as unsigned long and on arm is it defined as 
unsigned int. So using 500U would generate the same warning on 64-bit 
platforms. Maybe the fix is to do something like: max(len, (size_t)500). 
Any better ideas?

> 
> 
> vim +966 drivers/spi/spi-cadence-quadspi.c
> 
>    919	
>    920	static int cqspi_direct_read_execute(struct cqspi_flash_pdata *f_pdata,
>    921					     u_char *buf, loff_t from, size_t len)
>    922	{
>    923		struct cqspi_st *cqspi = f_pdata->cqspi;
>    924		struct device *dev = &cqspi->pdev->dev;
>    925		enum dma_ctrl_flags flags = DMA_CTRL_ACK | DMA_PREP_INTERRUPT;
>    926		dma_addr_t dma_src = (dma_addr_t)cqspi->mmap_phys_base + from;
>    927		int ret = 0;
>    928		struct dma_async_tx_descriptor *tx;
>    929		dma_cookie_t cookie;
>    930		dma_addr_t dma_dst;
>    931		struct device *ddev;
>    932	
>    933		if (!cqspi->rx_chan || !virt_addr_valid(buf)) {
>    934			memcpy_fromio(buf, cqspi->ahb_base + from, len);
>    935			return 0;
>    936		}
>    937	
>    938		ddev = cqspi->rx_chan->device->dev;
>    939		dma_dst = dma_map_single(ddev, buf, len, DMA_FROM_DEVICE);
>    940		if (dma_mapping_error(ddev, dma_dst)) {
>    941			dev_err(dev, "dma mapping failed\n");
>    942			return -ENOMEM;
>    943		}
>    944		tx = dmaengine_prep_dma_memcpy(cqspi->rx_chan, dma_dst, dma_src,
>    945					       len, flags);
>    946		if (!tx) {
>    947			dev_err(dev, "device_prep_dma_memcpy error\n");
>    948			ret = -EIO;
>    949			goto err_unmap;
>    950		}
>    951	
>    952		tx->callback = cqspi_rx_dma_callback;
>    953		tx->callback_param = cqspi;
>    954		cookie = tx->tx_submit(tx);
>    955		reinit_completion(&cqspi->rx_dma_complete);
>    956	
>    957		ret = dma_submit_error(cookie);
>    958		if (ret) {
>    959			dev_err(dev, "dma_submit_error %d\n", cookie);
>    960			ret = -EIO;
>    961			goto err_unmap;
>    962		}
>    963	
>    964		dma_async_issue_pending(cqspi->rx_chan);
>    965		if (!wait_for_completion_timeout(&cqspi->rx_dma_complete,
>  > 966						 msecs_to_jiffies(max(len, 500UL)))) {
>    967			dmaengine_terminate_sync(cqspi->rx_chan);
>    968			dev_err(dev, "DMA wait_for_completion_timeout\n");
>    969			ret = -ETIMEDOUT;
>    970			goto err_unmap;
>    971		}
>    972	
>    973	err_unmap:
>    974		dma_unmap_single(ddev, dma_dst, len, DMA_FROM_DEVICE);
>    975	
>    976		return ret;
>    977	}
>    978	
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org



-- 
Regards,
Pratyush Yadav
Texas Instruments India

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201229091806.eyrakehdxo6762sg%40ti.com.
