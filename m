Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB75E46BQMGQEI7UZH7I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x340.google.com (mail-ot1-x340.google.com [IPv6:2607:f8b0:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id D6AF5362771
	for <lists+clang-built-linux@lfdr.de>; Fri, 16 Apr 2021 20:08:00 +0200 (CEST)
Received: by mail-ot1-x340.google.com with SMTP id t16-20020a9d74900000b02901c30d41728asf5101815otk.3
        for <lists+clang-built-linux@lfdr.de>; Fri, 16 Apr 2021 11:08:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618596479; cv=pass;
        d=google.com; s=arc-20160816;
        b=bmXMfa+FI1Nc4iFxl7DB4WKRfidtg3GdXINsEUylE/ILeiiXJONEwJUtDVuzpH19hj
         hV94qCDmcXzo/DApPa9yPVOa6U2FOGK4w9zKNA6NnwN1dVQR4DYEAQUh3sotPL+QD/ao
         S3ci+2/Rsiq+8uCYZ3zz11Pnpm7lnwokPy8w7RJLejTLZWsLU98B6YGgSSQRriEotO8i
         MrplCrGqj5ID7bp3muVe0q51/32rJPQqKJg11zPQDqBUUFScgvLRji97cqM+1lZWrLVr
         Sad+whYW3MQ74Rmgcz2IX+IlOMKrTNw0Qc+8ZOrU9NVuHcdWOqZoj7HfoDaARuwIgZfC
         bgQQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=WJe7T/CGZvxj0xWHkQ2/8SV2/GFaKGLpDKWxNITpxRI=;
        b=fp+HXUfUWQF9yW1QzGA9cYlnhx04jObY28C9/KAFBwyQ9p//zrSxuAHbCxcmjcmci8
         DtmLTEe9Rty2t9jJRWydCgCy6zkp+aVg3Grv4gVseD8LYO++6oURe5flV7yrDtKspZfR
         6qCxUnRqhC4L6Z0CBckCwB9zrgWe5j+dSQrzaCRqM1M/jXytpiPnlhu3d2EuWHX95xa+
         u//zB5YjfVbuGiws/wnO/iGS2U9kqOQ8N+092JUBaedvhz0cZCD960jyuZ0t/BY4zrz2
         z1u8Z5IXuMW3cQFjEbFshO5cMVwcOdZc2kSEMykeiq0y/28DWHXERZO4LsTOtLI3nVgF
         /Y9A==
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
        bh=WJe7T/CGZvxj0xWHkQ2/8SV2/GFaKGLpDKWxNITpxRI=;
        b=futb73sYPyfEsPRhEkdCzX95sGRLVj/NZli+Bmji1lZt7z82VrWPaUn0UDAxUgIg6B
         zoMj/IEuNwrULNxwrtjMzd4SjZ09pgwZTEIOQNJzC34COyP8LO3JB7qMatLKi59/OJt5
         /ek/AL2xC4aRj1V8xHAqDd4/wNnEN9fmYm3W2YmK61dRE/a+ljryQF1NEo5XhE5TOES1
         pkbw8r/UqWefTmn9Nc3kt8Z0jbX1P+pHuBViFfKKxfFUF4HyA5iixjT+DjEA3hmTSPBy
         fLDcHaa+tRoGGyc+kTh1hTKrx+Kvt5f4TSrldYBHmm62C4vggcCgCySGw4cNNwsEy0N1
         mWmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=WJe7T/CGZvxj0xWHkQ2/8SV2/GFaKGLpDKWxNITpxRI=;
        b=ATfOb2rdEXtZUFE9DRo5aNAVgqULo/reqOK3ppkXAQfJAK8Ur3zxYN/YC8mkdncgms
         tzXFlBp8rMXhgRLSTFQGvjwUGSr1j1ha00xADRI9D2Hq9Rt2GXlsdOqmuAsbRcPv9FYV
         j7pTTGeEwQgKfxmJerkTX5y8oeeDpjTsrfeBzw+PakGr5kT+cb1ArNYVXe9551hvwiTS
         UxjYhoi9pd21XFpIOc96aPLYHb2mMyYnOpjk/X46MYGLGn+Vil0Rkof8/sk2PCdBY2Ys
         MPJ8eYKYj4cHSgJlvi2W3F9h4DheRVLxEiolNzEmf0sZf0Hfz04w1jS3y7BjuFoPgOI5
         g6wA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530cOAyLgvPA/Xuxk2BYNfEbQg6u8YjsvqjjVD1+YtOTpzFHmME4
	CuB43J0ORbwGaoZgnTFDmR4=
X-Google-Smtp-Source: ABdhPJxM2Py7PiXkVbKqWadDQT84jBPQI7Se671tX1f3XekA3ZLRgK4c/9gqCAF6DKJj6saxjUuMJQ==
X-Received: by 2002:a9d:6c90:: with SMTP id c16mr4612455otr.80.1618596479530;
        Fri, 16 Apr 2021 11:07:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:578a:: with SMTP id q10ls2580295oth.7.gmail; Fri, 16 Apr
 2021 11:07:59 -0700 (PDT)
X-Received: by 2002:a05:6830:1e61:: with SMTP id m1mr4544709otr.36.1618596479007;
        Fri, 16 Apr 2021 11:07:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618596479; cv=none;
        d=google.com; s=arc-20160816;
        b=LCOHVh6OCX+NAydwz60NERwNvYQoRVB4OMCKHH6FepFUZCb4ZwM8aWFRxpP3sMuFlW
         XGXAvgz/1GZ3GWaeaRGwgJLPouBt0hb4g1x/LNkKvMcQpS0YabPyv9VwPFHQPP4V1xDV
         7tEtXeRlpASRPB0SUcpI5EqNNSss0N8vYKtNSPSCKPbvSqc/Doe+Z69t3gCRBi3kDWNP
         Lk3U+usMiVG8LSlaGs+XLRPkr0N3JeASaJAstlZnruUIAAYYKV9bpkOMEwxz3/xVkK75
         WHCuTmvNPP2zlAHB+nkn/4xv+cgFOjsrJMyDFUmTHZukXMOTcEeU4GwNZT36aUvX9TwF
         2zIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=JWp3aacQHy3xou2w0rzaFAPa1EPg5mxtz/NfsoDc+3A=;
        b=A0l/i6RqO8Wxbf6MflLhAIx+oDbFocjErLTduMpsy6965DB47g/2z0hdWbawgJkf+R
         i48/I7YZzoJgENrfa4VpdprZ2I8mmBM+oKfPlyH+rz4kSJHz2zq5q1VXBA+8ySHegPHo
         bUsDabjJxcSjhvAqvmEGFcefAJr+maOzOxAPhzHKtuio8zsqcE7Y9wYpXwZzF3xR9HOX
         qExz0khDkjJ4ZE8OZdEFabxvkU8mvnW2NHNAszHY9BUSubUN1YWSfpNaffv6sAPl0XEL
         4c9EyTA08Gq7U8D6WReZDLXlCUhl/eSHIGjmhcCP6z/v1YrN6nAuW68z49nd84MNfBLS
         OYag==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga12.intel.com (mga12.intel.com. [192.55.52.136])
        by gmr-mx.google.com with ESMTPS id x38si541345otr.3.2021.04.16.11.07.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Apr 2021 11:07:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) client-ip=192.55.52.136;
IronPort-SDR: D1XJ+M43uVcEJbmjNfEpaxCih+svpW3u0UNU5H8O9uKrJ5ZvShLsEyzc+BxQqfV8lIvKkTrkM+
 MqMyoFRBHruw==
X-IronPort-AV: E=McAfee;i="6200,9189,9956"; a="174574226"
X-IronPort-AV: E=Sophos;i="5.82,226,1613462400"; 
   d="gz'50?scan'50,208,50";a="174574226"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Apr 2021 11:07:56 -0700
IronPort-SDR: dx2nSFMJ7nYrcqJbE8rwE/smVy5crg7dbzzslq6mJp4eHpRGlYpWuXrHPN4AcPeIEYptHotXm0
 DryTrxwdIhLQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,226,1613462400"; 
   d="gz'50?scan'50,208,50";a="399980221"
Received: from lkp-server01.sh.intel.com (HELO a48ff7ddd223) ([10.239.97.150])
  by orsmga002.jf.intel.com with ESMTP; 16 Apr 2021 11:07:52 -0700
Received: from kbuild by a48ff7ddd223 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lXSsi-0000Ux-5V; Fri, 16 Apr 2021 18:07:52 +0000
Date: Sat, 17 Apr 2021 02:07:37 +0800
From: kernel test robot <lkp@intel.com>
To: Takashi Iwai <tiwai@suse.de>, dri-devel@lists.freedesktop.org
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org,
	virtualization@lists.linux-foundation.org
Subject: Re: [PATCH] drm: Fix fbcon blank on QEMU graphics drivers
Message-ID: <202104170253.nBucPgtF-lkp@intel.com>
References: <20210416125344.13550-1-tiwai@suse.de>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="IJpNTDwzlM2Ie8A6"
Content-Disposition: inline
In-Reply-To: <20210416125344.13550-1-tiwai@suse.de>
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


--IJpNTDwzlM2Ie8A6
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Takashi,

I love your patch! Yet something to improve:

[auto build test ERROR on drm-intel/for-linux-next]
[also build test ERROR on drm-tip/drm-tip drm-exynos/exynos-drm-next tegra-drm/drm/tegra/for-next linus/master v5.12-rc7 next-20210416]
[cannot apply to drm/drm-next]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Takashi-Iwai/drm-Fix-fbcon-blank-on-QEMU-graphics-drivers/20210416-205539
base:   git://anongit.freedesktop.org/drm-intel for-linux-next
config: x86_64-randconfig-a003-20210416 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 6a18cc23efad410db48a3ccfc233d215de7d4cb9)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        # https://github.com/0day-ci/linux/commit/4b1a07505589e5f12ae52f249fa93b400e35e602
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Takashi-Iwai/drm-Fix-fbcon-blank-on-QEMU-graphics-drivers/20210416-205539
        git checkout 4b1a07505589e5f12ae52f249fa93b400e35e602
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> drivers/gpu/drm/qxl/qxl_drv.c:123:12: error: no member named 'fb_helper' in 'struct qxl_device'
           if (qdev->fb_helper)
               ~~~~  ^
   drivers/gpu/drm/qxl/qxl_drv.c:124:9: error: no member named 'fb_helper' in 'struct qxl_device'
                   qdev->fb_helper->no_dpms_blank = true;
                   ~~~~  ^
   2 errors generated.


vim +123 drivers/gpu/drm/qxl/qxl_drv.c

    71	
    72	static int
    73	qxl_pci_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
    74	{
    75		struct qxl_device *qdev;
    76		int ret;
    77	
    78		if (pdev->revision < 4) {
    79			DRM_ERROR("qxl too old, doesn't support client_monitors_config,"
    80				  " use xf86-video-qxl in user mode");
    81			return -EINVAL; /* TODO: ENODEV ? */
    82		}
    83	
    84		qdev = devm_drm_dev_alloc(&pdev->dev, &qxl_driver,
    85					  struct qxl_device, ddev);
    86		if (IS_ERR(qdev)) {
    87			pr_err("Unable to init drm dev");
    88			return -ENOMEM;
    89		}
    90	
    91		ret = pci_enable_device(pdev);
    92		if (ret)
    93			return ret;
    94	
    95		ret = drm_fb_helper_remove_conflicting_pci_framebuffers(pdev, "qxl");
    96		if (ret)
    97			goto disable_pci;
    98	
    99		if (is_vga(pdev) && pdev->revision < 5) {
   100			ret = vga_get_interruptible(pdev, VGA_RSRC_LEGACY_IO);
   101			if (ret) {
   102				DRM_ERROR("can't get legacy vga ioports\n");
   103				goto disable_pci;
   104			}
   105		}
   106	
   107		ret = qxl_device_init(qdev, pdev);
   108		if (ret)
   109			goto put_vga;
   110	
   111		ret = qxl_modeset_init(qdev);
   112		if (ret)
   113			goto unload;
   114	
   115		drm_kms_helper_poll_init(&qdev->ddev);
   116	
   117		/* Complete initialization. */
   118		ret = drm_dev_register(&qdev->ddev, ent->driver_data);
   119		if (ret)
   120			goto modeset_cleanup;
   121	
   122		drm_fbdev_generic_setup(&qdev->ddev, 32);
 > 123		if (qdev->fb_helper)
   124			qdev->fb_helper->no_dpms_blank = true;
   125	
   126		return 0;
   127	
   128	modeset_cleanup:
   129		qxl_modeset_fini(qdev);
   130	unload:
   131		qxl_device_fini(qdev);
   132	put_vga:
   133		if (is_vga(pdev) && pdev->revision < 5)
   134			vga_put(pdev, VGA_RSRC_LEGACY_IO);
   135	disable_pci:
   136		pci_disable_device(pdev);
   137	
   138		return ret;
   139	}
   140	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202104170253.nBucPgtF-lkp%40intel.com.

--IJpNTDwzlM2Ie8A6
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
GhcRgU1GD/YWCSa4hG3O+f4D5YtJjrQGAgA=

--IJpNTDwzlM2Ie8A6--
