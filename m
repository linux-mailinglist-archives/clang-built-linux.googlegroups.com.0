Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBJVN2KEAMGQELR2Z4CA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13a.google.com (mail-il1-x13a.google.com [IPv6:2607:f8b0:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id CA86C3E9CF2
	for <lists+clang-built-linux@lfdr.de>; Thu, 12 Aug 2021 05:33:59 +0200 (CEST)
Received: by mail-il1-x13a.google.com with SMTP id c4-20020a056e020cc4b02902242bd90889sf2377785ilj.20
        for <lists+clang-built-linux@lfdr.de>; Wed, 11 Aug 2021 20:33:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628739238; cv=pass;
        d=google.com; s=arc-20160816;
        b=TDVJqjVSb8ca4w82R+Tiwc1hn+nKJtX0aUllk1a+aXkc6bOJTpECqMPGBdTA6IsOAk
         SJDukZalOrSO/PRkbqXhmkDjguEyK4LG9Hdo0pM9FmYgU0VPEk5IHwkXsXfutncmexYN
         46+ppLUYWbm7oobriwm57CUqIEeuImcI4Umwi3Z7IaqyzL6AWkiHukXvvgKNUlqfYBpu
         mxoeRwCU++/lOCobRu/G92dwEx87l5cTVOyJxW8luSCih1UE4ZVdRKZ7vvchMrMUENlr
         uPyocyUXn1f3vQ1P3/DvYd0mr8WKrTtR42nhffYVrJS8OQKD+7heo5nFmbIin7Wgdg1h
         +h3Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=ukIxafd3HpPpDPhgxcyg0eZJFoDIf88BqBDZK/11WNI=;
        b=i8DPtwJmxBgxXKCjRgD/dbjctAV8BWSnRYNbbtQXUKiBpNb7sOvbJrMhb9yxcPOd0F
         qRDpI+OigVWa9NlD8WEJKDzSCcj21j5LG2Ax+Ys8RuwdMAGRCuJuhQbKj/BsWo3UnOOt
         IsdgEg/GgnxzafcIxuHwouPrD7M/u3JzoQtOiwXTtS0j7HtoYSYwczCj5JaxJe3pw7Xm
         B4JAKlJuoHdWLS4LnS3PNqSlwA5UggC5r3+HOkY9q13STQivJfhCJPYHYSwBP6DnjTXB
         AZ0gq5Msg1zOmh4M4Hw+F5eXHk0soUI3flmHO2Z3PqBKBvS9VF2O6zDThWgSR9XLeOyu
         UyDQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ukIxafd3HpPpDPhgxcyg0eZJFoDIf88BqBDZK/11WNI=;
        b=IWo0F0qveZYwrhPCC+4XrlVxhLMAgIHrxPV3htSSSP3tdZBchOp4nU8yG6smol+rME
         7frSP3qU3ZcDKkvJYqIOjfKduu8UgdYbxMnFCLkeRXsIUSuq2DnZ+mJYOukv/UPpt7MT
         M73zmFECL2rVY0LTC8FvD/fpsUwIGJWIcI8AxL8zN6rVxkqg6cYiy/4ThvWUpHo+IMg9
         v05m2AxJkV1aaKGMXgK84JVOlL3i2KHolCHrv9RMy7P3/d+RRtY1JDFftPEA4jHL4QS6
         5DKtXHe3JAYT8blgBxvKKpCaYV21ABNLWOQLIxpPtfIoMyL86hgcFXi1K3Prc8lw8cqm
         xlgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ukIxafd3HpPpDPhgxcyg0eZJFoDIf88BqBDZK/11WNI=;
        b=rjtR8xZ01i43PbExBaQBpr0GMpaTbKP6GVL7tyhJzcI458arKlhdWX+pgiMrnfVSnv
         t1xPvBrzNXDXXEdKRpmUjCYkTsoHfwaIF2aXxgh0cNZBEcH2gaMLZgk9zCw0RQ0pPXum
         6BL2WfoD0pGGPg1Ut2TuV8GauiFhAeDF8zOpTVLiD8g/Od2hdOHCGqU+7jhHB03sOirh
         WjS/mEH2yJsJ9wI6PurStS+RRkWLR5evqtH8K7EjZtcld9lMxWioMNvhCmRhMYUBi2w8
         G4ujWP7FfzwEp37njrVj2aEheIJGDo0wPytlrcMHSo+Zsd4NpzjoBy7hOXjQPf5IwdSE
         Vpdg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5317yEtCIyduCwO13d7o5z3M0EZc/UGNXcJAW/EzCEs5sPwF1RKv
	PFAXhwbC+/iagINF8iaUw78=
X-Google-Smtp-Source: ABdhPJyOEPu18nrPSBytLPqxznGSv6anA1yTG5x8oo7VvyUwl/nXskXBCnhJctIyE6fwEIOwTVHUxg==
X-Received: by 2002:a92:1812:: with SMTP id 18mr1243523ily.83.1628739238432;
        Wed, 11 Aug 2021 20:33:58 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:178a:: with SMTP id y10ls860496ilu.7.gmail; Wed, 11
 Aug 2021 20:33:57 -0700 (PDT)
X-Received: by 2002:a92:c24c:: with SMTP id k12mr1340254ilo.28.1628739237826;
        Wed, 11 Aug 2021 20:33:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628739237; cv=none;
        d=google.com; s=arc-20160816;
        b=EiNxbur0iQtG5FOOSCLfgLIMlq3TCBsEsRK5/QKWYe91imKuBNYtT3FHOuOBgF/d4U
         EfsORTS1Agm8DtsaG1ETPpqNEqNcNUq4U4WiA0Zjbssd1M8nVdYSjU+Vkj9FF9z1EiBJ
         1k3wniQmKv6AezoH4lJQsKYREczL1fSW/uphACF+d9dmfUNKIzABor9HbWYIrR5/uxom
         lprGtod7EMHoe6+H09vnVK/5bD/cMTxQdHX+91qRgRcBJz34txPtGgm19hQekdW1Se3p
         BQ6hVkCPwMJGYW5DYlv+D3gtbHRB2DroBWpTaH9oosFpjQRZqjcmGEJVGNyIWwKIQQNS
         XDoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=HfkjXsU1YU761AKEBFo5VBLLyNAUJ8m/qpVQ4eG57gU=;
        b=XTanLBoad5hqvvhSjmkwzvp/tFc1XDWbkkpY1ZQcaGLk/F3VuKD3uean+LdLooADiF
         axbBhAmf2QUwUFDtU0TcXslvefXr2cQraLm/R79TykEtbT3Ab/0U4la/Zqi9n/HJ4U6V
         NU24fJYObIhbPMCHjGges7ffqKWHGZ+QlBAmrcNajlQuSbC2zrP5q9AZ7bMkG2g4ayL3
         i264YQGP+wcfkznW769OE2OwKpd5rZaZlFf5lXyzjb7W4LWLJGdP89ALmdSj71At48o4
         fd5Kbi+G19h5thI6sX7dH0rIxmAA9RLWwYcskV5/QGF7tQcGy8+Zelp0291UAe4F9xdJ
         KfZQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga05.intel.com (mga05.intel.com. [192.55.52.43])
        by gmr-mx.google.com with ESMTPS id y1si90790iol.2.2021.08.11.20.33.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Aug 2021 20:33:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) client-ip=192.55.52.43;
X-IronPort-AV: E=McAfee;i="6200,9189,10073"; a="300857799"
X-IronPort-AV: E=Sophos;i="5.84,314,1620716400"; 
   d="gz'50?scan'50,208,50";a="300857799"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Aug 2021 20:33:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,314,1620716400"; 
   d="gz'50?scan'50,208,50";a="446217423"
Received: from lkp-server01.sh.intel.com (HELO d053b881505b) ([10.239.97.150])
  by fmsmga007.fm.intel.com with ESMTP; 11 Aug 2021 20:33:54 -0700
Received: from kbuild by d053b881505b with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1mE1Td-000MLi-N8; Thu, 12 Aug 2021 03:33:53 +0000
Date: Thu, 12 Aug 2021 11:33:27 +0800
From: kernel test robot <lkp@intel.com>
To: Pantelis Antoniou <pantelis.antoniou@konsulko.com>
Cc: clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
	linux-arm-kernel@lists.infradead.org,
	Michal Simek <monstr@monstr.eu>,
	Nava kishore Manne <nava.manne@xilinx.com>
Subject: [xlnx:xlnx_rebase_v5.10 625/1760] drivers/of/configfs.c:134:9:
 warning: no previous prototype for function 'cfs_overlay_item_dtbo_read'
Message-ID: <202108121120.21EsCbQ0-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="rwEMma7ioTxnRzrJ"
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


--rwEMma7ioTxnRzrJ
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://github.com/Xilinx/linux-xlnx xlnx_rebase_v5.10
head:   bf98c1493fb23bfd7e2678498b7e337ce2cd1d53
commit: e6de170decc96254704d77b4726ad658c6a2f42c [625/1760] OF: DT-Overlay configfs interface (v8)
config: s390-randconfig-r011-20210812 (attached as .config)
compiler: clang version 14.0.0 (https://github.com/llvm/llvm-project 767496d19cb9a1fbba57ff08095faa161998ee36)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install s390 cross compiling tool for clang build
        # apt-get install binutils-s390x-linux-gnu
        # https://github.com/Xilinx/linux-xlnx/commit/e6de170decc96254704d77b4726ad658c6a2f42c
        git remote add xlnx https://github.com/Xilinx/linux-xlnx
        git fetch --no-tags xlnx xlnx_rebase_v5.10
        git checkout e6de170decc96254704d77b4726ad658c6a2f42c
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=s390 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/of/configfs.c:134:9: warning: no previous prototype for function 'cfs_overlay_item_dtbo_read' [-Wmissing-prototypes]
   ssize_t cfs_overlay_item_dtbo_read(struct config_item *item,
           ^
   drivers/of/configfs.c:134:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   ssize_t cfs_overlay_item_dtbo_read(struct config_item *item,
   ^
   static 
>> drivers/of/configfs.c:156:9: warning: no previous prototype for function 'cfs_overlay_item_dtbo_write' [-Wmissing-prototypes]
   ssize_t cfs_overlay_item_dtbo_write(struct config_item *item,
           ^
   drivers/of/configfs.c:156:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   ssize_t cfs_overlay_item_dtbo_write(struct config_item *item,
   ^
   static 
   2 warnings generated.

Kconfig warnings: (for reference only)
   WARNING: unmet direct dependencies detected for MFD_SUN6I_PRCM
   Depends on HAS_IOMEM && (ARCH_SUNXI || COMPILE_TEST
   Selected by
   - CLK_SUNXI_PRCM_SUN6I && COMMON_CLK && CLK_SUNXI
   - CLK_SUNXI_PRCM_SUN8I && COMMON_CLK && CLK_SUNXI


vim +/cfs_overlay_item_dtbo_read +134 drivers/of/configfs.c

   133	
 > 134	ssize_t cfs_overlay_item_dtbo_read(struct config_item *item,
   135					   void *buf, size_t max_count)
   136	{
   137		struct cfs_overlay_item *overlay = to_cfs_overlay_item(item);
   138	
   139		pr_debug("%s: buf=%p max_count=%zu\n", __func__, buf, max_count);
   140	
   141		if (!overlay->dtbo)
   142			return 0;
   143	
   144		/* copy if buffer provided */
   145		if (buf) {
   146			/* the buffer must be large enough */
   147			if (overlay->dtbo_size > max_count)
   148				return -ENOSPC;
   149	
   150			memcpy(buf, overlay->dtbo, overlay->dtbo_size);
   151		}
   152	
   153		return overlay->dtbo_size;
   154	}
   155	
 > 156	ssize_t cfs_overlay_item_dtbo_write(struct config_item *item,
   157					    const void *buf, size_t count)
   158	{
   159		struct cfs_overlay_item *overlay = to_cfs_overlay_item(item);
   160		int err;
   161	
   162		/* if it's set do not allow changes */
   163		if (overlay->path[0] != '\0' || overlay->dtbo_size > 0)
   164			return -EPERM;
   165	
   166		/* copy the contents */
   167		overlay->dtbo = kmemdup(buf, count, GFP_KERNEL);
   168		if (!overlay->dtbo)
   169			return -ENOMEM;
   170	
   171		overlay->dtbo_size = count;
   172	
   173		err = create_overlay(overlay, overlay->dtbo);
   174		if (err < 0)
   175			goto out_err;
   176	
   177		return count;
   178	
   179	out_err:
   180		kfree(overlay->dtbo);
   181		overlay->dtbo = NULL;
   182		overlay->dtbo_size = 0;
   183	
   184		return err;
   185	}
   186	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202108121120.21EsCbQ0-lkp%40intel.com.

--rwEMma7ioTxnRzrJ
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--rwEMma7ioTxnRzrJ--
