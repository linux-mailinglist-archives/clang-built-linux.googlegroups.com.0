Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBHN5QCDAMGQEYT4UR7Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x339.google.com (mail-ot1-x339.google.com [IPv6:2607:f8b0:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id E31B63A09A4
	for <lists+clang-built-linux@lfdr.de>; Wed,  9 Jun 2021 03:51:26 +0200 (CEST)
Received: by mail-ot1-x339.google.com with SMTP id 43-20020a9d0d2e0000b02903f9def84058sf507134oti.9
        for <lists+clang-built-linux@lfdr.de>; Tue, 08 Jun 2021 18:51:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623203486; cv=pass;
        d=google.com; s=arc-20160816;
        b=W7h7Teyj9M2NAY/4MUKvISeBuQi6r0yQztu97E4GLVcfZwVz+2g7oeFHUVTNAGr9nc
         h5h4VmkFfykxHCEvTeAgd2VawHTP4G3mMXo+/qmLRYV6i/L4qNMLMc/fwdm6jSWpAexx
         MZPTEbajxQ57sc0XhWQ0uz4h0cR9XrkaGRcKpDvq3KbbJuJ+ou3XgaaW5Ai4Nd5EQ9ZU
         SoaMcwPHgFdoWIpK1xAe4H137L8addREGQBVzsiGuPgA4cnDyvlTXFRezCAsRunvAy6R
         b6AooFlbGHexqTUA8IMm4A6cDDBTT99vnCg7JISfTkJ7nr0gcTHcSIyVL2Ex67nywPZO
         n1eQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=6mC1FycWrFhHeDOE4L0+kZAUMEEHKPJpQYWxkdGsUyQ=;
        b=yzo9vHYS7rTIVpMD2dcbPuWzqFhiVBjLdui2nCK0fJkRj1ShNwV15qeYNIpsO7/Co4
         HqYnSLbDK5d1EfUiM8qdvvgSp5xgSk30Hq1QkDOoMEU1CLeRoLH7oXrhy53S8CsASMbp
         vgr89Ok60vXCi+uAilvmtJIUaAA3jeYjH9Zw/9K+b/+2YKoT5JC/IxSeUQ3HwXh38myQ
         6FFk1eyeju/MFarmVzlrfK2tJ00Y/HSd7vq3HZE7Y/WZELXFgMwHnbtP5FBmLkkG83oC
         CR6qPMtWR+jlIFH4+hQFOtvZnsPvLjGnGz3xw1zVKytzwUx9Bqm0pSC0fdIXqfrEEho0
         TF8A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6mC1FycWrFhHeDOE4L0+kZAUMEEHKPJpQYWxkdGsUyQ=;
        b=ckHBrcgRwu+O3sJfg2zP26GFD4V3msJtDFDBwhd9aJj/O/kRjHtH6ikbKBh68AXOl/
         AFEskdTbA9jTEdu908nez5+YnZZxDNp2H4sdBY5vNj0MHldjoboxgFY5j0mTrBLhaOk5
         PaNUPFf3efyZJ4Z0vL9UE6GRrurtMsYemqhFlwqHyOBkYWAYK4QfSnQrttPzlFZSDqfy
         WPaQ1BF40seK+E6/TXwQCTvlvZYpPoJhSnFMG24yJZ1Rg0vIvczobxWPl6xiSX4Cnu4j
         SroxgPnGAMUzwTvjuvvKDvEOly6hiSgynYLYPHAioAkkC82lPqQ3YHPudfU2BbQvmVA+
         i0pQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6mC1FycWrFhHeDOE4L0+kZAUMEEHKPJpQYWxkdGsUyQ=;
        b=Gn2C2OpeCYwCjxDYYDC8zsE7r+dKU0waNTH6RBDaX5qjQ2RN3cBYbo9UwYABVTu9XS
         nL6vOChh6xYJVDe6ZSUBUkVpFEJy4ccgWwUFRF8zwNzTs4VZ6Ln+ZhHw+fzmHisftKql
         y+6l5/8wCQhrTtbPWVUwedL97d+b2ZcyHpI0JOSAB3n7GALO5sLlrJE5IdFwjt0PXp2A
         HlmDk+tzltMHcixvo89l7r6KKRvU9xTH24FCuEnUihbWwfA6Xo2Ege0b6Zqej3J32VRe
         kxpC/+bKiO0Q7xBW3uVYfdxX7X4LuePL6pBhhvhB+xx1XHe+6I5qcXrJk4I8QRZT4ZkG
         UKag==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5308pEMtxAIGDk02gWOkncyUA3zgTJ6aHo0NfUeSNCAM04n3H9Ug
	platL4KcHDZKH/perYFPr3M=
X-Google-Smtp-Source: ABdhPJzo0IHyLZowcV1Y3tCCEkQPO+1F0INwUqWgO4ZlSk3tWaOl3bmcsM6Ghy1RPLKysONSZnYpGw==
X-Received: by 2002:a9d:7a99:: with SMTP id l25mr20368990otn.97.1623203485689;
        Tue, 08 Jun 2021 18:51:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:c595:: with SMTP id x21ls59820oop.8.gmail; Tue, 08 Jun
 2021 18:51:25 -0700 (PDT)
X-Received: by 2002:a4a:3011:: with SMTP id q17mr19729471oof.35.1623203485107;
        Tue, 08 Jun 2021 18:51:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623203485; cv=none;
        d=google.com; s=arc-20160816;
        b=oQMSsLR42XEFVyH8aULfadgNrsyWwlSbpUCM7P4UvjGFPGINxoCa7CHfauDJs14Sn1
         m9prVIyjM2y0nVnS1N34aoRPXYVTL+4s8rheczk97QTdtp2RS6PjKT3PQ6ECX15D8l4U
         UBP1wDh5r1UfuIAV2VOTKanYeoNMyxZZwADEaQMfF2h3Io7kC6Htkt1v54vmIPxhC9gl
         aq/PBs3OEmwIzYS0hvoSbQOyGT11XQWTj4ZG2AAv8SACWZrqwD28TGCNO7rEs69NVr0u
         473o5NAty4+Mtut9jzxnNFIBnbHeDXrjE7FqsXqQdtpJp+vYak4+wHfR66m8FUxwKpdq
         GNVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=gZ7sBUfiPJVtIBkqTGnP2m3SGVFdQnfYkjcvtsXVmvU=;
        b=oQ5OrfxRr83Haa0P60jKSW5QojJdFM/YZTNg1U/ByA9yxE8wRNGEfBHmkjRuiSWOFL
         lHcZhiWHIO1sY6gvRo6cMJ2EdDXBQOAEbEjgUlgBEi3NReh11H3wBILA2dnydG4EyXDv
         eTNldSHNUZ5cokYrs6QEITXLvMt1bpKS+Q4vCmdglBl5QuwTOCltpZD1l89ope4L548k
         Wdp4kY1DbFwQqysqFiZszF3XYSSkfv7Zp6fuOc9TiMoJU35FEGbR3rATeqYHdGjb1xZp
         7cs8UNjSz4d/P+rvXUG3P5asS1WmFpdz88yexDmIVGd07GHeGMf4Fj5gDxkep0Wa8fzN
         G5bg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga05.intel.com (mga05.intel.com. [192.55.52.43])
        by gmr-mx.google.com with ESMTPS id y78si1868002oia.0.2021.06.08.18.51.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 08 Jun 2021 18:51:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) client-ip=192.55.52.43;
IronPort-SDR: 58A5wFkoQQtpeFPZ6qYxtFyW8xRynUgzj2uwFil4zYh1V7TPL+Hn9QYpXDA3/u+BNLtRexmTjv
 UT3TS5HpbvPw==
X-IronPort-AV: E=McAfee;i="6200,9189,10009"; a="290613071"
X-IronPort-AV: E=Sophos;i="5.83,259,1616482800"; 
   d="gz'50?scan'50,208,50";a="290613071"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Jun 2021 18:51:22 -0700
IronPort-SDR: 6m37SY6DyDNwwm2qFtY3TQL0lZWHYdPxZH5qk/tsR9I5iflIH1FPn2snXoeFpFJX4wE79qt+vW
 ifxJDGYdXj1w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,259,1616482800"; 
   d="gz'50?scan'50,208,50";a="476807133"
Received: from lkp-server02.sh.intel.com (HELO 1ec8406c5392) ([10.239.97.151])
  by FMSMGA003.fm.intel.com with ESMTP; 08 Jun 2021 18:51:20 -0700
Received: from kbuild by 1ec8406c5392 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lqnNI-0009JP-2q; Wed, 09 Jun 2021 01:51:20 +0000
Date: Wed, 9 Jun 2021 09:50:29 +0800
From: kernel test robot <lkp@intel.com>
To: Christian =?iso-8859-1?Q?K=F6nig?= <ckoenig.leichtzumerken@gmail.com>,
	thomas_os@shipmail.org, dri-devel@lists.freedesktop.org
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] drm/ttm: fix pipelined gutting
Message-ID: <202106090925.pShVmwzK-lkp@intel.com>
References: <20210608075021.3058-1-christian.koenig@amd.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="u3/rZRmxL6MmkK24"
Content-Disposition: inline
In-Reply-To: <20210608075021.3058-1-christian.koenig@amd.com>
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


--u3/rZRmxL6MmkK24
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi "Christian,

I love your patch! Yet something to improve:

[auto build test ERROR on drm-tip/drm-tip]
[also build test ERROR on next-20210608]
[cannot apply to drm-intel/for-linux-next drm-exynos/exynos-drm-next tegra-drm/drm/tegra/for-next linus/master drm/drm-next v5.13-rc5]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Christian-K-nig/drm-ttm-fix-pipelined-gutting/20210608-155139
base:   git://anongit.freedesktop.org/drm/drm-tip drm-tip
config: x86_64-randconfig-a005-20210607 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project d32cc150feb72f315a5bbd34f92e7beca21a50da)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        # https://github.com/0day-ci/linux/commit/f7422b929beac0ad1d98db9ede99fa91a73f0360
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Christian-K-nig/drm-ttm-fix-pipelined-gutting/20210608-155139
        git checkout f7422b929beac0ad1d98db9ede99fa91a73f0360
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> drivers/gpu/drm/ttm/ttm_bo_util.c:637:24: error: passing 'const struct ttm_place' to parameter of incompatible type 'struct ttm_resource *'
           ttm_bo_assign_mem(bo, sys_mem);
                                 ^~~~~~~
   include/drm/ttm/ttm_bo_driver.h:190:31: note: passing argument to parameter 'new_mem' here
                                        struct ttm_resource *new_mem)
                                                             ^
>> drivers/gpu/drm/ttm/ttm_bo_util.c:644:24: error: incompatible pointer types passing 'const struct ttm_place *' to parameter of type 'struct ttm_resource **' [-Werror,-Wincompatible-pointer-types]
           ttm_resource_free(bo, &sys_mem);
                                 ^~~~~~~~
   include/drm/ttm/ttm_resource.h:268:76: note: passing argument to parameter 'res' here
   void ttm_resource_free(struct ttm_buffer_object *bo, struct ttm_resource **res);
                                                                              ^
   2 errors generated.


vim +637 drivers/gpu/drm/ttm/ttm_bo_util.c

   569	
   570	/**
   571	 * ttm_bo_pipeline_gutting - purge the contents of a bo
   572	 * @bo: The buffer object
   573	 *
   574	 * Purge the contents of a bo, async if the bo is not idle.
   575	 * After a successful call, the bo is left unpopulated in
   576	 * system placement. The function may wait uninterruptible
   577	 * for idle on OOM.
   578	 *
   579	 * Return: 0 if successful, negative error code on failure.
   580	 */
   581	int ttm_bo_pipeline_gutting(struct ttm_buffer_object *bo)
   582	{
   583		static const struct ttm_place sys_mem = { .mem_type = TTM_PL_SYSTEM };
   584		struct ttm_buffer_object *ghost;
   585		struct ttm_resource *sys_res;
   586		struct ttm_tt *ttm;
   587		int ret;
   588	
   589		/* If already idle, no need for ghost object dance. */
   590		ret = ttm_bo_wait(bo, false, true);
   591		if (ret != -EBUSY) {
   592			if (!bo->ttm) {
   593				/* See comment below about clearing. */
   594				ret = ttm_tt_create(bo, true);
   595				if (ret)
   596					return ret;
   597			} else {
   598				ttm_tt_unpopulate(bo->bdev, bo->ttm);
   599				if (bo->type == ttm_bo_type_device)
   600					ttm_tt_mark_for_clear(bo->ttm);
   601			}
   602			ttm_resource_free(bo, &bo->resource);
   603			return ttm_resource_alloc(bo, &sys_mem, &bo->resource);
   604		}
   605	
   606	
   607		ret = ttm_resource_alloc(bo, &sys_mem, &sys_res);
   608	
   609		/*
   610		 * We need an unpopulated ttm_tt after giving our current one,
   611		 * if any, to the ghost object. And we can't afford to fail
   612		 * creating one *after* the operation. If the bo subsequently gets
   613		 * resurrected, make sure it's cleared (if ttm_bo_type_device)
   614		 * to avoid leaking sensitive information to user-space.
   615		 */
   616	
   617		ttm = bo->ttm;
   618		bo->ttm = NULL;
   619		ret = ttm_tt_create(bo, true);
   620		swap(bo->ttm, ttm);
   621		if (ret)
   622			goto error_free_sys_mem;
   623	
   624		ret = ttm_buffer_object_transfer(bo, &ghost);
   625		if (ret)
   626			goto error_destroy_tt;
   627	
   628		ret = dma_resv_copy_fences(&ghost->base._resv, bo->base.resv);
   629		/* Last resort, wait for the BO to be idle when we are OOM */
   630		if (ret)
   631			ttm_bo_wait(bo, false, false);
   632	
   633		dma_resv_unlock(&ghost->base._resv);
   634		ttm_bo_put(ghost);
   635		bo->ttm = ttm;
   636		bo->resource = NULL;
 > 637		ttm_bo_assign_mem(bo, sys_mem);
   638		return 0;
   639	
   640	error_destroy_tt:
   641		ttm_tt_destroy(bo->bdev, ttm);
   642	
   643	error_free_sys_mem:
 > 644		ttm_resource_free(bo, &sys_mem);

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202106090925.pShVmwzK-lkp%40intel.com.

--u3/rZRmxL6MmkK24
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
XpH/HzQIWJ1C2wEA

--u3/rZRmxL6MmkK24--
