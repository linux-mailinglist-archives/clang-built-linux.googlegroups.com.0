Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBLV5476AKGQE4P3XU2A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3a.google.com (mail-io1-xd3a.google.com [IPv6:2607:f8b0:4864:20::d3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BABF29D24F
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Oct 2020 22:12:15 +0100 (CET)
Received: by mail-io1-xd3a.google.com with SMTP id z25sf520286ior.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Oct 2020 14:12:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603919534; cv=pass;
        d=google.com; s=arc-20160816;
        b=vbM27818RNUCvgpXpSqBcCrA1Fgzvf7DTzNgfV+KHVT3c8VzZ68SuAVgkoTTSW1hdD
         +UkNmzddMftX+YhWSWLT87zV4kpz4TtmgHg71ie5oRw6DsXSLlZHe25Mp57XlDF/YMzT
         3p+lWyAPry4WTq/5m8nR9OEdq/jxpkOlMg6g/ni3AcgWqFyyEwGyEtedPXzQ14j9Mdlq
         Ux29Nw5E9waL/Zx7TORikAMe7y8fxp1+ua+V5NZEyrGKkdLkXz3EqMsAuZHYIMclZWPb
         HOk/ForNJ9/Rpq7ql29DT7q54l/af9+vosj2f9zZTrk8Ld01fVXBwIt1aT/E/1Spyx8W
         1u2A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=6WXvxc0JC6FOHVzUqBvNhsV66g9RXQlo/ONdF/HBlFY=;
        b=JrJR0vC9YHq5/ImYxkgF7j4lJj38oqTJg8uB+kaKnX9UDdG8LmeJDzpb8xn0WDghRG
         EesTkdtQGg+OmmqY5cEkABQD3MivgIUvMgmIGbN1qyP2gwRwXSaukjVpK55wIhz8lrjY
         hebGhzfLW7BeJv0/Lfz1S9Zti/jOI5IswkAlggO9r+ZymDe54wzF0R/9EVtxrdQTkYkK
         9mscBuw9E0yPKz2x6NiyI5I1jMrGVRZT8SfbeUUElb9QNRP3UdGDF6qlTTzZQUVM6hNN
         +mXbOGscw3s8uX9pvz2/SOP0D3KXEidVPPw2/8aTgivTOwlQKDnd7FdaWx5AcJN/S/Di
         7GLg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6WXvxc0JC6FOHVzUqBvNhsV66g9RXQlo/ONdF/HBlFY=;
        b=B+8qg2ZXUjymQGu1YJfRczRzOndFxSlIy0jxzJztb8oRtOXBYOCuHPRpik4p0bLNgV
         Pqh873hvpEjimYb7ScHpfI56BJ35lnIQIrWK/HEFpQTM6lV2r3kntdE8wry4UMSdTCwr
         rbyqq0OOuU8vkZW0+6ieyvTb2szXcJRKzXj+5G2SQKwidAiqs65haMRAj/0mrW/oX/Os
         MoPiUmVaJ4DgepZH3fGiLwvaRZZ9K+5ro874MiYlIlVl/JZecaWM7axe7CglHfbU0nox
         PWU3VHmbVKX7bERHkxqG6JJAOCp1SuXGpbrrP4H9DAV4EqW+S5YB0cY2WUv5x6bfXF91
         r6lQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6WXvxc0JC6FOHVzUqBvNhsV66g9RXQlo/ONdF/HBlFY=;
        b=JNuuu/JTQjGnJVwocwv1jif3t2yHHePoRd0jrHSkXkz4/1Dwd9rJ1/Lu9V3GE/5gzb
         kdU/NthfjZn6a6HAIdgf2ptBDUSnLg0+1hAeO63EH3PMb/MN6S28ENKxFk6QxTOKAn4l
         4DdgRrW5yKnL5+jbA0xdXYJao4wGuKutU2ik+zkDET+L6J4BzhRo5vYPbuRbwykQHA2y
         lo4Je8shWJ8w8vwME/Z1Lw14Pbs5czy60qi2yBc1E3CdEV7YAldCrYUNsry3ZMyhFN8i
         k7VEJb05El+3iq+BcIEzRyTWq8OEDsSE9nHlzjqlc/0C06V/APfMQIwvouel+eKnoRXM
         PYDA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530mOkaN036/Qn3HLf9MKTWp+BdvAjN4i9aHa849nGmBl2OrGsZv
	JjMb4PbLoBKfsLvDual9Cxk=
X-Google-Smtp-Source: ABdhPJyTmb/4F/HTotoKcidCIWetIgucSt/uR4cpUmOj+GzwBSrSjtDT1mzRDuAhyJoZ8q4pgBsKhw==
X-Received: by 2002:a92:cc92:: with SMTP id x18mr738696ilo.63.1603919534165;
        Wed, 28 Oct 2020 14:12:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:8d06:: with SMTP id p6ls90625ioj.9.gmail; Wed, 28 Oct
 2020 14:12:13 -0700 (PDT)
X-Received: by 2002:a05:6602:20c4:: with SMTP id 4mr1052798ioz.149.1603919533687;
        Wed, 28 Oct 2020 14:12:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603919533; cv=none;
        d=google.com; s=arc-20160816;
        b=JAzY37p5nVIE8H5WOgRTzaePaR83dV5q4ccz4apdE8GDJLsL0KPl4VT2P9xeeZcV1Z
         Mg3MQjsRdR923fqDs33CIfN04Yc2jUey98LOY5DFOqbfi1MEQL5Xq9RtSkq5qJyGU7eQ
         EvKEfJCCt3PW/aDyyC7v7BWJv+t0mUvv4GTWisE99ojNc/P4W1uvuEyBfA5MuP5MwNzy
         d7OtyeeU3X8ufUQ1h5mYkaneY0MYAu9PQCKqSZ2Dsi7+567890OHKSmS3jBGVtP9vOPG
         J2YfwxUWh/NUE42EG4pdCYk35RwV1tWDAgT+N4ZxkgpKa6Ylh3M2s2fV/6wh/Cw2KZlV
         twOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=vyXsGJLdCDymO+knxjXdCAQP2qrxGvjbVtGh5dA8pts=;
        b=VHC6pQZFQ30+fAldZelnhZCOpkGpn/wrGHNRg5YJwoKps6Gm0SivOWVkgyEssyvDno
         kT5+tVUmejmb5DMNZfsE1ae+gyjzhBgBN6+xHnF5D/VxWTpWVgwwdnlg+oXbZgTGtLpm
         rWqspK1zooT2J+uGX476aE1n39t9cSS8HLwCEw+49uNA3K/XyFbDg6GGlZfwksUeI+WN
         ObytFVSBxjAHgu7vIlDXdmVu2fjyjwHq0lLTPu9txYAOAdE5x0+JtVnpmdsh7LP1mxMs
         GAk51ZNM5PuxUfNRXXuiQ3gWE1lsbUMUGRTYXPMKSE60HDbc67ivNdW4vaozmlgeAQ19
         u6+w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga09.intel.com (mga09.intel.com. [134.134.136.24])
        by gmr-mx.google.com with ESMTPS id l1si32838ili.0.2020.10.28.14.12.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Oct 2020 14:12:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) client-ip=134.134.136.24;
IronPort-SDR: vN+wdAlRtNHNK+FBTjP4i3YPtbbL0Vy60cGjVJWfUiPoWUIaEadO3JIYtGavP9YC49+g0+5z+m
 3Jn/BkGwwX+A==
X-IronPort-AV: E=McAfee;i="6000,8403,9788"; a="168467923"
X-IronPort-AV: E=Sophos;i="5.77,428,1596524400"; 
   d="gz'50?scan'50,208,50";a="168467923"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Oct 2020 14:12:10 -0700
IronPort-SDR: iYDEFGfjS5j0HUDHnnvss/cte/58K8jzXTGP4ws+P0QJ05LZYBw0R+utncRtodth9O+O7ZDSyR
 I/VFWKPH94qg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,428,1596524400"; 
   d="gz'50?scan'50,208,50";a="361889001"
Received: from lkp-server02.sh.intel.com (HELO 0471ce7c9af6) ([10.239.97.151])
  by orsmga007.jf.intel.com with ESMTP; 28 Oct 2020 14:12:07 -0700
Received: from kbuild by 0471ce7c9af6 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kXsjm-0000Ax-78; Wed, 28 Oct 2020 21:12:06 +0000
Date: Thu, 29 Oct 2020 05:11:32 +0800
From: kernel test robot <lkp@intel.com>
To: Thomas Zimmermann <tzimmermann@suse.de>,
	maarten.lankhorst@linux.intel.com, mripard@kernel.org,
	airlied@linux.ie, daniel@ffwll.ch, sam@ravnborg.org,
	alexander.deucher@amd.com, christian.koenig@amd.com,
	kraxel@redhat.com, l.stach@pengutronix.de,
	linux+etnaviv@armlinux.org.uk
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH v6 06/10] drm/gem: Use struct dma_buf_map in GEM vmap ops
 and convert GEM backends
Message-ID: <202010290540.aLMMli50-lkp@intel.com>
References: <20201028193521.2489-7-tzimmermann@suse.de>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="IS0zKkzwUGydFO0o"
Content-Disposition: inline
In-Reply-To: <20201028193521.2489-7-tzimmermann@suse.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted
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


--IS0zKkzwUGydFO0o
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Thomas,

I love your patch! Perhaps something to improve:

[auto build test WARNING on next-20201028]
[cannot apply to drm-exynos/exynos-drm-next rockchip/for-next linus/master anholt/for-next v5.10-rc1 v5.9 v5.9-rc8 v5.10-rc1]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Thomas-Zimmermann/Support-GEM-object-mappings-from-I-O-memory/20201029-033704
base:    1c86f90a16d413621918ae1403842b43632f0b3d
config: arm64-randconfig-r005-20201028 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 50dfa19cc799ae7cddd39a95dbfce675a12672ad)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install arm64 cross compiling tool for clang build
        # apt-get install binutils-aarch64-linux-gnu
        # https://github.com/0day-ci/linux/commit/649bc838b7c4e7b01ccad3decaa3e13f31659c6b
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Thomas-Zimmermann/Support-GEM-object-mappings-from-I-O-memory/20201029-033704
        git checkout 649bc838b7c4e7b01ccad3decaa3e13f31659c6b
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/gpu/drm/qxl/qxl_display.c:624:3: warning: variable 'cursor' is uninitialized when used here [-Wuninitialized]
                   cursor->header.unique = 0;
                   ^~~~~~
   drivers/gpu/drm/qxl/qxl_display.c:581:27: note: initialize the variable 'cursor' to silence this warning
           struct qxl_cursor *cursor;
                                    ^
                                     = NULL
   1 warning generated.

vim +/cursor +624 drivers/gpu/drm/qxl/qxl_display.c

c2ff663260fee3 Gabriel Krisman Bertazi 2017-02-27  571  
1277eed5fecb88 Gabriel Krisman Bertazi 2017-02-27  572  static void qxl_cursor_atomic_update(struct drm_plane *plane,
1277eed5fecb88 Gabriel Krisman Bertazi 2017-02-27  573  				     struct drm_plane_state *old_state)
1277eed5fecb88 Gabriel Krisman Bertazi 2017-02-27  574  {
1277eed5fecb88 Gabriel Krisman Bertazi 2017-02-27  575  	struct drm_device *dev = plane->dev;
e304f8a0513b83 Daniel Vetter           2020-04-15  576  	struct qxl_device *qdev = to_qxl(dev);
1277eed5fecb88 Gabriel Krisman Bertazi 2017-02-27  577  	struct drm_framebuffer *fb = plane->state->fb;
9428088c90b6f7 Ray Strode              2017-11-27  578  	struct qxl_crtc *qcrtc = to_qxl_crtc(plane->state->crtc);
1277eed5fecb88 Gabriel Krisman Bertazi 2017-02-27  579  	struct qxl_release *release;
1277eed5fecb88 Gabriel Krisman Bertazi 2017-02-27  580  	struct qxl_cursor_cmd *cmd;
1277eed5fecb88 Gabriel Krisman Bertazi 2017-02-27  581  	struct qxl_cursor *cursor;
1277eed5fecb88 Gabriel Krisman Bertazi 2017-02-27  582  	struct drm_gem_object *obj;
889ad63d41eea2 Jeremy Cline            2018-06-01  583  	struct qxl_bo *cursor_bo = NULL, *user_bo = NULL, *old_cursor_bo = NULL;
1277eed5fecb88 Gabriel Krisman Bertazi 2017-02-27  584  	int ret;
649bc838b7c4e7 Thomas Zimmermann       2020-10-28  585  	struct dma_buf_map user_map;
649bc838b7c4e7 Thomas Zimmermann       2020-10-28  586  	struct dma_buf_map cursor_map;
1277eed5fecb88 Gabriel Krisman Bertazi 2017-02-27  587  	void *user_ptr;
1277eed5fecb88 Gabriel Krisman Bertazi 2017-02-27  588  	int size = 64*64*4;
1277eed5fecb88 Gabriel Krisman Bertazi 2017-02-27  589  
1277eed5fecb88 Gabriel Krisman Bertazi 2017-02-27  590  	ret = qxl_alloc_release_reserved(qdev, sizeof(*cmd),
1277eed5fecb88 Gabriel Krisman Bertazi 2017-02-27  591  					 QXL_RELEASE_CURSOR_CMD,
1277eed5fecb88 Gabriel Krisman Bertazi 2017-02-27  592  					 &release, NULL);
ee5cb7c465360f Dan Carpenter           2017-03-14  593  	if (ret)
ee5cb7c465360f Dan Carpenter           2017-03-14  594  		return;
1277eed5fecb88 Gabriel Krisman Bertazi 2017-02-27  595  
1277eed5fecb88 Gabriel Krisman Bertazi 2017-02-27  596  	if (fb != old_state->fb) {
bf8744e40cd6db Peter Wu                2018-09-10  597  		obj = fb->obj[0];
1277eed5fecb88 Gabriel Krisman Bertazi 2017-02-27  598  		user_bo = gem_to_qxl_bo(obj);
1277eed5fecb88 Gabriel Krisman Bertazi 2017-02-27  599  
1277eed5fecb88 Gabriel Krisman Bertazi 2017-02-27  600  		/* pinning is done in the prepare/cleanup framevbuffer */
649bc838b7c4e7 Thomas Zimmermann       2020-10-28  601  		ret = qxl_bo_kmap(user_bo, &user_map);
1277eed5fecb88 Gabriel Krisman Bertazi 2017-02-27  602  		if (ret)
1277eed5fecb88 Gabriel Krisman Bertazi 2017-02-27  603  			goto out_free_release;
649bc838b7c4e7 Thomas Zimmermann       2020-10-28  604  		user_ptr = user_map.vaddr; /* TODO: Use mapping abstraction properly */
1277eed5fecb88 Gabriel Krisman Bertazi 2017-02-27  605  
1277eed5fecb88 Gabriel Krisman Bertazi 2017-02-27  606  		ret = qxl_alloc_bo_reserved(qdev, release,
1277eed5fecb88 Gabriel Krisman Bertazi 2017-02-27  607  					    sizeof(struct qxl_cursor) + size,
1277eed5fecb88 Gabriel Krisman Bertazi 2017-02-27  608  					    &cursor_bo);
1277eed5fecb88 Gabriel Krisman Bertazi 2017-02-27  609  		if (ret)
1277eed5fecb88 Gabriel Krisman Bertazi 2017-02-27  610  			goto out_kunmap;
1277eed5fecb88 Gabriel Krisman Bertazi 2017-02-27  611  
0081cdfe63f0b5 Christophe Fergeau      2018-11-20  612  		ret = qxl_bo_pin(cursor_bo);
1277eed5fecb88 Gabriel Krisman Bertazi 2017-02-27  613  		if (ret)
1277eed5fecb88 Gabriel Krisman Bertazi 2017-02-27  614  			goto out_free_bo;
1277eed5fecb88 Gabriel Krisman Bertazi 2017-02-27  615  
0081cdfe63f0b5 Christophe Fergeau      2018-11-20  616  		ret = qxl_release_reserve_list(release, true);
0081cdfe63f0b5 Christophe Fergeau      2018-11-20  617  		if (ret)
0081cdfe63f0b5 Christophe Fergeau      2018-11-20  618  			goto out_unpin;
0081cdfe63f0b5 Christophe Fergeau      2018-11-20  619  
649bc838b7c4e7 Thomas Zimmermann       2020-10-28  620  		ret = qxl_bo_kmap(cursor_bo, &cursor_map);
1277eed5fecb88 Gabriel Krisman Bertazi 2017-02-27  621  		if (ret)
1277eed5fecb88 Gabriel Krisman Bertazi 2017-02-27  622  			goto out_backoff;
1277eed5fecb88 Gabriel Krisman Bertazi 2017-02-27  623  
1277eed5fecb88 Gabriel Krisman Bertazi 2017-02-27 @624  		cursor->header.unique = 0;
1277eed5fecb88 Gabriel Krisman Bertazi 2017-02-27  625  		cursor->header.type = SPICE_CURSOR_TYPE_ALPHA;
1277eed5fecb88 Gabriel Krisman Bertazi 2017-02-27  626  		cursor->header.width = 64;
1277eed5fecb88 Gabriel Krisman Bertazi 2017-02-27  627  		cursor->header.height = 64;
1277eed5fecb88 Gabriel Krisman Bertazi 2017-02-27  628  		cursor->header.hot_spot_x = fb->hot_x;
1277eed5fecb88 Gabriel Krisman Bertazi 2017-02-27  629  		cursor->header.hot_spot_y = fb->hot_y;
1277eed5fecb88 Gabriel Krisman Bertazi 2017-02-27  630  		cursor->data_size = size;
1277eed5fecb88 Gabriel Krisman Bertazi 2017-02-27  631  		cursor->chunk.next_chunk = 0;
1277eed5fecb88 Gabriel Krisman Bertazi 2017-02-27  632  		cursor->chunk.prev_chunk = 0;
1277eed5fecb88 Gabriel Krisman Bertazi 2017-02-27  633  		cursor->chunk.data_size = size;
1277eed5fecb88 Gabriel Krisman Bertazi 2017-02-27  634  		memcpy(cursor->chunk.data, user_ptr, size);
1277eed5fecb88 Gabriel Krisman Bertazi 2017-02-27  635  		qxl_bo_kunmap(cursor_bo);
1277eed5fecb88 Gabriel Krisman Bertazi 2017-02-27  636  		qxl_bo_kunmap(user_bo);
1277eed5fecb88 Gabriel Krisman Bertazi 2017-02-27  637  
429030bc944ee9 Gabriel Krisman Bertazi 2017-05-19  638  		cmd = (struct qxl_cursor_cmd *) qxl_release_map(qdev, release);
1277eed5fecb88 Gabriel Krisman Bertazi 2017-02-27  639  		cmd->u.set.visible = 1;
1277eed5fecb88 Gabriel Krisman Bertazi 2017-02-27  640  		cmd->u.set.shape = qxl_bo_physical_address(qdev,
1277eed5fecb88 Gabriel Krisman Bertazi 2017-02-27  641  							   cursor_bo, 0);
1277eed5fecb88 Gabriel Krisman Bertazi 2017-02-27  642  		cmd->type = QXL_CURSOR_SET;
9428088c90b6f7 Ray Strode              2017-11-27  643  
889ad63d41eea2 Jeremy Cline            2018-06-01  644  		old_cursor_bo = qcrtc->cursor_bo;
9428088c90b6f7 Ray Strode              2017-11-27  645  		qcrtc->cursor_bo = cursor_bo;
9428088c90b6f7 Ray Strode              2017-11-27  646  		cursor_bo = NULL;
1277eed5fecb88 Gabriel Krisman Bertazi 2017-02-27  647  	} else {
1277eed5fecb88 Gabriel Krisman Bertazi 2017-02-27  648  
1277eed5fecb88 Gabriel Krisman Bertazi 2017-02-27  649  		ret = qxl_release_reserve_list(release, true);
1277eed5fecb88 Gabriel Krisman Bertazi 2017-02-27  650  		if (ret)
1277eed5fecb88 Gabriel Krisman Bertazi 2017-02-27  651  			goto out_free_release;
1277eed5fecb88 Gabriel Krisman Bertazi 2017-02-27  652  
429030bc944ee9 Gabriel Krisman Bertazi 2017-05-19  653  		cmd = (struct qxl_cursor_cmd *) qxl_release_map(qdev, release);
1277eed5fecb88 Gabriel Krisman Bertazi 2017-02-27  654  		cmd->type = QXL_CURSOR_MOVE;
1277eed5fecb88 Gabriel Krisman Bertazi 2017-02-27  655  	}
1277eed5fecb88 Gabriel Krisman Bertazi 2017-02-27  656  
1277eed5fecb88 Gabriel Krisman Bertazi 2017-02-27  657  	cmd->u.position.x = plane->state->crtc_x + fb->hot_x;
1277eed5fecb88 Gabriel Krisman Bertazi 2017-02-27  658  	cmd->u.position.y = plane->state->crtc_y + fb->hot_y;
1277eed5fecb88 Gabriel Krisman Bertazi 2017-02-27  659  
1277eed5fecb88 Gabriel Krisman Bertazi 2017-02-27  660  	qxl_release_unmap(qdev, release, &cmd->release_info);
1277eed5fecb88 Gabriel Krisman Bertazi 2017-02-27  661  	qxl_release_fence_buffer_objects(release);
933db73351d359 Vasily Averin           2020-04-29  662  	qxl_push_cursor_ring_release(qdev, release, QXL_CMD_CURSOR, false);
1277eed5fecb88 Gabriel Krisman Bertazi 2017-02-27  663  
0081cdfe63f0b5 Christophe Fergeau      2018-11-20  664  	if (old_cursor_bo != NULL)
0081cdfe63f0b5 Christophe Fergeau      2018-11-20  665  		qxl_bo_unpin(old_cursor_bo);
889ad63d41eea2 Jeremy Cline            2018-06-01  666  	qxl_bo_unref(&old_cursor_bo);
16c6db3688734b Ray Strode              2017-11-27  667  	qxl_bo_unref(&cursor_bo);
16c6db3688734b Ray Strode              2017-11-27  668  
1277eed5fecb88 Gabriel Krisman Bertazi 2017-02-27  669  	return;
1277eed5fecb88 Gabriel Krisman Bertazi 2017-02-27  670  
1277eed5fecb88 Gabriel Krisman Bertazi 2017-02-27  671  out_backoff:
1277eed5fecb88 Gabriel Krisman Bertazi 2017-02-27  672  	qxl_release_backoff_reserve_list(release);
0081cdfe63f0b5 Christophe Fergeau      2018-11-20  673  out_unpin:
0081cdfe63f0b5 Christophe Fergeau      2018-11-20  674  	qxl_bo_unpin(cursor_bo);
1277eed5fecb88 Gabriel Krisman Bertazi 2017-02-27  675  out_free_bo:
1277eed5fecb88 Gabriel Krisman Bertazi 2017-02-27  676  	qxl_bo_unref(&cursor_bo);
1277eed5fecb88 Gabriel Krisman Bertazi 2017-02-27  677  out_kunmap:
1277eed5fecb88 Gabriel Krisman Bertazi 2017-02-27  678  	qxl_bo_kunmap(user_bo);
1277eed5fecb88 Gabriel Krisman Bertazi 2017-02-27  679  out_free_release:
1277eed5fecb88 Gabriel Krisman Bertazi 2017-02-27  680  	qxl_release_free(qdev, release);
1277eed5fecb88 Gabriel Krisman Bertazi 2017-02-27  681  	return;
1277eed5fecb88 Gabriel Krisman Bertazi 2017-02-27  682  

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202010290540.aLMMli50-lkp%40intel.com.

--IS0zKkzwUGydFO0o
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

H4sICNnamV8AAy5jb25maWcAnDzLduO2kvt8hU5nc2eRtCTbsnvmeAGSoISILwOgLHnDo9jq
jue67VzZ7iR/P1UAHwBZVPeZLNImqgAUUIV6oaCff/p5wt7fXr7u3x7v909P/0y+HJ4Px/3b
4WHy+fHp8D+TKJ9kuZ7wSOhfATl5fH7/++P++HVxPrn4dTb9dfrL8X42WR+Oz4enSfjy/Pnx
yzv0f3x5/unnn8I8i8WyCsNqw6USeVZpvtXXH+6f9s9fJt8Ox1fAm8zmv8I4k399eXz7748f
4f9fH4/Hl+PHp6dvX6s/jy//e7h/m1xMHz7vZ5/u7y8/fdofLu8fHh7OPu0/XTz8/vn+sLi8
2M/mi8v5/uG/PjSzLrtpr6dNYxK1bfOzi6n5zyFTqCpMWLa8/qdtxM+2z2ze67BiqmIqrZa5
zp1OPqDKS12UmoSLLBEZd0B5prQsQ51L1bUKeVPd5nLdtQSlSCItUl5pFiS8Url0JtAryVkE
g8c5/A9QFHYFjvw8WRoGP01eD2/vf3Y8EpnQFc82FZOwSyIV+vpsDugtWWkhYBrNlZ48vk6e
X95whHZb85AlzSZ9+EA1V6x0t8jQXymWaAc/4jErE22IIZpXudIZS/n1h389vzwfOlarndqI
IuxGrxvw31AnXXuRK7Gt0puSl5xu7bq0a79lOlxVBuouvdsbmStVpTzN5a5iWrNwReKViici
IHaPlXC6OnJWbMOBDTCnASBBLHEW0Ws1XAUBmby+//76z+vb4WvH1SXPuBShkZ9C5oGzaBek
VvntOKRK+IYnNJzHMQ+1QILjuEqtnBF4qVhKplE6nGXKCECqUreV5IpnEd01XInCPwlRnjKR
UW3VSnCJW7ejxxKFGAJSJRA4CiDnM7A8TUt3QVkER6SmxBsRe8S5DHlUH03h6hhVMKl43aMV
F5fuiAflMla+WB2eHyYvn3usJzcfDo+oyZPDZRotshmIWQMO4RSvQQIy7SgkI56ow7QI11Ug
cxaFTOmTvT00I7X68SvYAEpwzbB5xkH+3JNxVxUwah6J0N2pLEeIgNWR586C4zJJiLMH/6BN
qrRk4dpyxVF6PsyykBjEzOCQKZYrFGmzs0aNt8warLibrZCcp4WGwTJ6HQ3CJk/KTDO5Iyip
cRzdZhvsyTObHhblR71//ffkDWiZ7IGu17f92+tkf3//8v789vj8pWPDRkhdQYeKhWEOk/Y2
yHDJBxM0EYOgeLgDoZQaMaQHavECFaEeCzkoXEClTBHaOqWZK6zYBEcoYTvTqQfYEm0iH1lx
oQR5CH9gUx25gr0QKk+MQnSHM/yRYTlRxIkARlYAG7DWb4SPim/hlDhLUh6GGajXhHtmutbH
lgD1m/BQ8OHcsPVJgu5C6up6hGQctJ/iyzBIhKspEBazDHyk68X5sBGsD4uvZ4tu+xAW5Lnv
iHjQLA8D3OUx8eiIr4yflAbuGfUZ0Krwtf3DUerrlhF56DavYEzuum9Jjg5PDNZUxPp6PnXb
URhStnXgs3nHYZHpNXhJMe+NMTvrK1oVrmB/jbptTrq6/+Pw8P50OE4+H/Zv78fDq2mul0lA
Pe2uyqIAp1JVWZmyKmDgCIee2aq9WCBxNr/qmYa2cx8aLmVeFso9U+A5hfRxt8h2aacQChGp
U3AZpewUPIYjcccljVKA36ZPDh/xjQhHfEOLAYP01dVgDVzGp+BBcRJsPATKNIG/DP4FaEx3
y0tkK70mo4Z9WCPY4FBn/jCKSxoXOGJxGzK49r6Bo+G6yEE60FBCsMPdca0sY8BgFkfSCf5K
rGDZoAVDpkfkQ6LSJ8gLEjQIGxNoSMfvNN8shYFVXoKtd4IQGVXLO9cThYYAGuZeS3KXMq9h
e9eD573vc+/7TunI3QnQc7qyf9PcD6scrHsq7jh6J0aKcpnCUaX8lD62gj+8oMkLluw3WJOQ
GwfCak0nhCvi7qNvc4zPifLh8XXJNcYIVe1snmAsgVHDY+vIelbZBHDW2yKdIlSjruE0ajVL
nWAATo/zwcAdR4exa4pLcAV7n5UbTZiozTaHabENV854vMjdsZRYZiyJHbkzpLsNxmN2G9QK
1KS7ZiZy6ozmVSl7PguLNkLxZkepDYKhAyalcKODNeLuUjVsqbwwoW01m4YHDsNBT0qqYQiL
NuKWwelvYntE+82NglF20jyCeErCeNIfEA59ArFEXxeZoeKIWGEbr3RLBaoyiE96qgcCsRui
P/TiUcSjHr/xuFX92Mg0AjnVJoVF516oUoSz6fnA5avTZ8Xh+Pnl+HX/fH+Y8G+HZ/AfGdjq
ED1IiBo6X5Cc1lgAevLa4v/gNB21m9TOUhlXuHe4ugOblMHQ/nipIwYMluuR3ozKieCgnupI
8mC0P3BVLnkjS+RogIRWHl3PSoICyVPnbHlQzEuAT+WdvTKOIbIvGExidpWBxfKpK43DCShS
C0apLTgDmqdVxDTDdKKIRdhLiIAbGYvEc7GMxjVm0osi/RxeJ+PpwrEmi/PAPU9eqsKg2vXU
/uTCB8GHrgrdgC8oaBoNoXDK0pSBx5WBdRTgZaQiu56dn0Jg2+v5JY3QiE4z0I+gwXDdYiAa
CdfW2a89UsfWJwlfsqQy2wvqYMOSkl9P/3447B+mzn+dsx6uwd0YDmTHhxA2TthSDeGNh+6Z
GKexVZoNKWqItrrlYrmi8iuqTIlWlohAgltkw15XVO/yDFpH/OEGeDYf06E8M+nmOtu5ynWR
uMuicST85doElTp+1JrLjCeV0fUZdw9EDEadM5ns4Luy5q85Kkub9TaZSXU996ZvY4/SpDz7
WSuM1qo16n17G1EHS8XT/g3VIqz46XDvX2DYZGyIx7U/GluKxDgGnbm1NGRbQW6x7ZUUYiTL
Y+BBmM6vzi7GmABg8Ma9qNO2c5mIbEAMHAxMSY6OJsNU6WDQjW93WU6rfLtGUHbbi3H4+mxs
RhBJkPKQFXwwabKc0XbCWnDRz794E3I07rtxhJRHAg7FiQkgWPJTMj3wBszcCfA2HAfegJoa
h0rOkpOUSTjaip1gB4jDGnPlJxjmH+sekDOtEypqsGCN+fvtbDoU9V12A9HtSPhsUDRfSjY6
ciGjwaB6VWaRPyQBng/6lZko8A5grOMG4hQIONWgI7jIaNVOSNcWles4+G57AgZblPYYU5ty
Qu24LmHcJW5MM9jfyeF43L/tJ3+9HP+9P4LT9vA6+fa4n7z9cZjsn8CDe96/PX47vE4+H/df
D4jlKjI033iTyCCwRtOZcJaBuYCAu+8dcAkcL9Pqar44m30ah16ehJ5PF5/8zfbgs0/nl2NC
6SGezaeXtD700c7n8+koNedn5+O0zqbz88vZ1Tixs9ni4mL+I9TOYEvOFpc/gnlxNv00P/sR
zPnV4mp6+d0tmJ0vzubzi9FVXpzP7SZ0DjrbCIA0GPP5GbnTfbQzGOrUMJfnFws6IPARz6az
2Yn59HbejelyLy4hXlRlC5zOwFmbubcwCrxpdB3atS9mi+n0auqkbFApVzFL1rl0BGF65i5s
BOcTQbNBvYliEPtpR9h0cXF6Rg5BoUO5ykPwNPDmqdWtGPEKPwj4/6mCvnidr00YMGZXEGW2
IHA8jEUzSl/qNsx65efz4bFqYVej49Yo1+dzv71ouw5DmrrHVStGEJUFGMFnYPs93wghiUCj
VwPp+NLkItOQINKCVOq45Zk0CePr+UUbg9Q+Mra7s2NWnRhzlSccs+bGFXfxV3codCSJAJpf
jILO/F7ecI6qXN1dz5xox65tJfGKbyy3X2ccgPFNqqHvHioObnsdD4yC67C9D+cJD3UTRGB0
0M8fQbilqeG7+okizjCsE24sv1PdAlblkuskiKmLbWMTKyzO6aVJzbXHBiNjFuW3GGolNs50
whMmGd56epmfuu2H7jnXfMtDiH9GbrRDydSqikrfp6iBW55hDYLD2i13gyq8wzY3TihhuQQ3
ygnQywyD6jokg5iaJ844MjfZC0yMtnk7u/lR/xyq20rrQE5h2dnw6Gu2XGKCP4pkxQLa57JB
/SBVBgN8u/p1Ntkf7/94fAOP6R0TIc79ljfR6rZicRSkQxKKkeNeK54VJ72178zuUDgfp7A3
V8moRG5NpRf12jbgPYRmOuvZglNzOnSd/TBdhZZ4BbOiTLO9+Qsky2xArWE/QwhRhjVumOtG
QCkzw2/rezcTKYMDfQdtYSyqjC8xhSEZni/NhwseXYyz4PMfXjBLS7OxFDcsUYC3uarOCYFO
AswqLk9JzSghDrEXP0xs4Icq32UMdiBc22lBX5zZiNLkSUeFs96UlOLM6EL8IUCtl5hYTbQi
jqjiZZTjNQ1BAl4AhEzXmr9L3xuS8X4LryNIbvQjK7O3wQugvfyJ8ZejRMI0MtWZHz503T1M
Ku2lV4VX7mazSy9/HY6Tr/vn/ZfD18OzO1fnaZSqAEeEusDyFFiRjt72AihMXEOUtilBW5bm
HL7bm6rIb8G15HEsQsG7y5hT/avcufQzGe+0bzxFAObDrB4v5pQgbL9dqQvuAuKxnWqKl2qM
tMVoYmOEiYeng8M/LLSJ3OmbFns/WSTN9ZIiUJb5pkpAZ7mXTx4w5Vk5AtLcueeNtAUYLaYa
kUD/vSF5Eh0fv9krHvcQ4Jj9sjYHWqhQNCielfAgXfmiFzoMp3Zqmew+trsaHw//eT883/8z
eb3fP9kKMc+NjqV/a+aNRfR2wQN2msHjx+PXv/ZHd2ec9amIVyZVHtsb6ZaYWMj0lkmTfAZP
hro+Bpctrm+ZHa/IaW2PvVMWoHnSpcDAN5VY8TGOIJUjGMs8XwIbGtIGAExFm3v+gTarEbBA
Js9U7uCSSrtG3xSUDuFgUJtkOiEssVMAXDvQsM1pGIZj7VWEKTM4O7ue6q7BEMWC2A8cOH34
ctxPPjfsfTDsdeuSRhAa8EAwWh7ImyrYFQxrsVkGQYlzbNHxLiEQuOtdua03aW950IIj+UXH
LiTu3wHX7eAdl9q7vGuhg8t8bExTkRO4qerXFGArnjG8JdpaqceCDH+0TUyOZpOl4JzESalW
vYv7jaPcYX92WGFmyuHQb+BhvyK9WafdYwK4MVSWmSn+CVfoDg2Neih3hc4HUtHcaDpew+GX
h8OfwHTfWnoRUH1539hP8HJiz49Y2wsg8rD8BtETqPeAU5e1Zk2dXSwzkJ1lhiFLGPLh4vv3
TLYVvC4SEJeZuUrC9E8ugaO/8bBfGg9oXnlKF9Oa28ZVnq97wChl5l5WLMu8JG4QFSzXmANb
gD5EMEAsVMGNLAtXR9QhMYSOWsS7pjZqiLDmvOiXVLVAZI+N5keAIIQm4mf9k1en/I1s2scx
1e1KaO7XkVpUlaJTWb856e+85Etw4rPIxus1Mys2KOPBIpAxpuH7mNGOEG8GQKatbOvBTGUG
UkC1m0o6SxWG9dQGdAJ7GkrU4KQQ2UAotYI57L0pFjuQYCyJpVBqRlmxtAWpgyonS0x9UGo+
YXKoh1H3s4+DRmBRXo6kdBQPMTNwAoRpE+0q/0GXMURnKOREAozsAU17rR5zd4ofasdNybP+
bXmbjTqRUDoBsvs2fMXggscr8F0sogi/h4G3+FVR9i2gbU77zY26yjDVh2oU022EQFjZAhjW
LPU5C4e5yRfyEItmHLE1waMy1U48iY3cE6rFgJqwkJraq0fpDeDDeoUsXgGbzgtgUWZ7JGyX
ew/+EiysCIA54AFGbrBhS1fO5jC+2XyKQNyWPtuptk6balDouknjydutK5GjoH73OjinulOg
jt76saCsVmRSFvh0Nm8CeKKkAvkJhkJyXCIeng6ONThuSRqVuIWBZRNjLcFB/eX3/evhYfJv
G/b/eXz5/PjkPXJBpHpDiOEM1JZmcd+BIiBdhdaJib0twVeqeD0gMrLC6zv+UJsNAZZg6anr
a5h6TIVVgN3z1/rIuD5SzUqbFsaiStJbqrHK7BRGY3VPjaBk2D4IHSkAbjBHSp5rMAoZZhNP
4eC1xG2VCqVQ47Wl8JVIjcYlu5YZyB/Yr10a5MlIibwUaYO3xtpXqqS2Vk7mtU0C7prxqLq6
bpTk8fdbVZaDpyW8vARTmXNHWGb25TDoRZEZvozf0zANui+sIPx0lKepVDadgRWguFxDKG8V
T8eA5gyOwNrza17LRgYN8Z1ljEP6neUt3XXQ3p7VDCkC8UpYUSDH64RzZbhOKTpbl1zdSujA
W63B/z7cv7/tf386mEfwE1Mt++ZEH4HI4hQvR+LeoB2gTVkPHCgE+lqtXfgyKxGElfSOkwwd
/ECnnkWFUrhxYN0M4u6VHGPf/lVRq2fGlmr2IT18fTn+46RmhnEYfUvXpWPqKzoIyEu6Kra9
BbQojqVpIEQTpunBPHAKtLGZn8Gt4ACj7+AzpavlIO7BkMYUjfsHrF5w+4pvABlURvrtNTme
IvYRGr8iN8ecLtofK68sEoHVu+akmuvo816nADWjS3XdYP2RXjRKtZnSYclRv3huIvHO2wal
Ve+KuFjtlL0A1ESlcqv/nHSFciSh2RzD6VTYq6Xr8+mnhce8VgPWy46ZSEpJ7XoNoR4MnnRg
KSgs9ZbtPCNLoqX2YQZ9+4l1WeYKmrrlMW+MOlyI/E+U3zfQmDJTCAWymLq+7LrcFXlOm+a7
oKRyi3dq+NKhaWtrdVOrlOlxG2TUmsQETY7CJDArkRvf0J0NBIJL6ced5jUXOZ1NdSBKEzCd
ejJSmDLqTW9GWyo9/vIPlDhGXOYpMrWisjA/puEOaRIccN535g4JH2iRPPMIM2ER83zPcbXd
jJC5F7X4NA92ziRfGguYHd6wWgi81aHKB12wdvvb7yoSzNED4J5s/S8wV2mvpe7SnZIRf2sb
y9RkSEgo0r/m1Cu/bVRgFhqo8w6j02xIoJ5R2R3qBKawF0b44wW0RBX4zAqf3UUmEUxWoAJS
kbm/ZWG+q2gVFr3JsBnT/HQxb40gmaThuCOiGKkEtsClROFNyy1BpsWodJllvjVXOzQQ+VqM
pFRtx81IES1C45yunq5h3bT0BMiWitG/rmJg4N+PA0WBlmyE291y3UZfqC1eWAwE1wDKqBiI
k48h2e13MBAKfME8EV3GjrPDn8tW2iiL1eCEZeDmS9pMRQ2//nD//vvj/Qd/9DS66EVerdRt
Fr6Ybha1rGPYQr9ONkj2zanSeNEwEj3i6henWLs4ydsFwVyfhlQUdDWqgW7IagoDUkIPVg1t
1UJSe2/AGd6MgQsTcb3znzgYsJW0E6Q2V9PGbo6cBINodn8crvhyUSW335vPoK1SRr9dsGwu
ktMDQcwaUkcLeIPV5phyTZn7+1Uo7YUu8Pe1IDqPdx7EdAEP0WTEwIKmRe9JK+DY5C1JTFCc
AIKKicJwVLGqcETpypGfGABWUbWhEPe4BMMnLHXscQYAEzb2uACAgZwvrs5JcDIfoTeQIlpS
3qPN4qOyUay3p9hEDrYB8qqr6XxGvY2NeOg5FPa7Vg1O3iAJvQ+nCptp5lat4Mt8cBYT7jeL
IoqK3ieEeaEbym3dyveEFd6rpmIFPhttvxdJfjtWEig457j2i3NawG2tbOM63bwf3g/gOH2s
f1+jVy1R41dhcENO1sBXmn7u2sJjRYldA7bi12sspLkkHoxlFM5pciRpaRqoigNqXBVT4tJA
Nb9JqF46iE/0CgNFdQJ9cJJ+zXDxJ8YFhyga7likaq01GBD+5VRpXNtTSnKrb/p0DHdtHXyH
1nCVr/mQ2Jv4hpoyxKTM/3H2LM3N4zj+ldQctmYOve1HnDiHPtASZeuzXhFlW+6Lyv0lPe2a
dJJK8u3O/PslSEoiSNDu2kMeAsD3CwAB8GKJyaNP5GbCtpzK/OIIbzYJlaZKA3G6DF7u9a5i
180BaVbGOSCIEXRN2nouSJ4RSam0Pj7OJP7lb++/n39/634/fX79zVhDvZw+P8+/n787IS4h
RZR5U1OCQA+f0kdrT9FEaRFz2n+sp1G7aWgDAgJlwOMl25GevEOmYl/hLuuhdz44yUqyiCgc
o2Xogiq0pPuM7YOih+cQd7G/V7FwXCEuZMgiR7xloBEoM2Sy1cPXiHqtSOvS288Anqd1HQg0
05MIyauQ9no9QcGouvEYc5lDdmmApx0ItitIe5EGXMQv1EhW2Ju3AIcz/0IyFP3Fqk5exj48
TbzdA8CaoXSld48MrMBDcmrCVaHELm1QF/ZSQ2GWn5u+iQAJquYLOxFsItb+Ea2sjwLuIkWZ
4egl8mRmoK/co+ugAdr/uycKtansq24LHrMmkG9BsQsWPsfxG+08tfYwjAuUqIwpad50JAIF
XEgrWFa82ItDSq/2/ajacSCO2D6As7KsVvgWPa2btKSywggvoJ0c/ywttk5JZilZcwQg3Vog
tkvBjLVgYGoVYmOn2Iiw6kv3j2SZgxTZHAKzgpjuUBmax7qxJih8dSJHLtkKJhdrsIgiEqSR
fmV1R52omI22jqXFgeBMKDMlGoa4JItGi44hvrSGkHri2OHQSyvMc5qoQ4Es4GAysZCxXvTm
6/nzi2Dsq22z5uFeiuuy6uQ0SpvSGU+jufWydxC2PnYU5/KaxYqx154Gp+//ev66qU9P5zcw
Ovh6+/72YptPaxFplC/lt9w2cgZhcPaBfbYukTRbl/jaQtuzt/89W9y8miY8Pf/P+XtvvWsV
n29T237yrkLrcVU9crBDs/eaIzjMgnlcErckfEPAK4bY7yPLyQ6/WOfhjoTZt1ly36rZAQNW
tmobAGuH4Nv0Yf6AQakom6ofNAm4iXXpnr07EO+9OuxbDyQyDyQXPFpgytc/i8CaCVRy5P4D
REnG/fzXtQfa7hmMQBWl3LZvBlQLoYz8TCLTnbhO6neVsQaC19HrfiSLSM8nwEf39xMvbwDK
3qacbUd8X7YzRkkKf92m5f6UyFEL3DpUnG1NJwVqIb4x7I4LQJ4LSIWByXJ6Z7u542HA8L5c
GsojB561PrGpGHQgjaB7TpSJGzpXz8eVutqGWzM6mjWxEoaljVkbCCnG44AGEMLGhjExJVxK
TC4SExJohI3cj52H4FkSiIUvsQlnzU7dsGjuSLuYvfx4/np7+/ojuDeuGu1IgspHe4v8rhuM
30TpqhGxbf6voTtWNxQM9ky9L/iozS0JLsptypwe6HGrSFCKX4uCNZv5lsw385qiwPNDii/p
LZzqoMvluT3Ww2sc1t/CPEbU7mA3YX3XtoHEeb0PV2i/iVInnUuPcM0WhjIwO5utGdPRGTE0
p6zzPZGsUF0FAhMl3TaihMMkXXW1MRU0IBiUDDk/9JAOrZkDGCJjgyUFwvGqDCi15mGUrEHN
au1tRaYA6qIcbIt8WthLeAYWU92B1YXccjBH2ZNFHFwXTMi9rix2pDFET13zx51sm3Jehgtd
vo5XRNlgstUb0gIJCLKCrKNROdF1I4P7ew2oY9bbs1yq+kGPxShssEghiDQ9CmwUwJ5go6IC
qGAHk3GIIaDef9Cn2cX1qxBDnI062ab2etbfarNFrKMGp0W1o9ph0OvK3s+Ad36o3G8jo3lg
FO3AwPqNeDiKUqSZhO+gT61CynzQnqmAO4HURBGvNh39wkeRWFNffki5cZ02trkbAAu8VxhQ
B4uelikkwQZzQ0ZKOX3cJOfnFwjq+eefP16NuvLm7zLFP8xWYZ07kI9Ic7fsJA7oniSuKhbz
eZfOAopNQzG7XHfRqPZdyqVoK6AJZzFPDnWx8PMYBKe/1BV9T1Raf4fnj6O8ou5BDSqWLXJi
aUlxVU6MzNULyMkE+oMRqKyRwO5qBIFNWomUR1I2aiRJr30YEdqwdIyhq6ZBSKAAF02Wr5iT
HLF+7ofvPm4B/VcDAOkF/QWWE7avle2e1ps7QgogwOQMx482IOMyR04KIOl4VNNTSmUgKurE
UwmrnLvldXHg7NQJGlpcUcjVgS4HO3kaAPnSDODgKNoKp1rhCAASV+t4PH1AAvPwEkoumh19
v6jGIfHwFhY9rQEAHrEcQ9JyjwHyoHcATKSx19VyZoCaiXdlQl/nDVREqF+fCNzUQiMNeCtY
OlmVivN6Br+oW/Rx3iJNnTWdI1pStUnERr1apRU3kvr72+vXx9sLPMrw5EcEgBRJI39PyZBO
gIYnsjxl5YAY1ylurJbVA1mquIfu/FFAmLah/nXCk44wQmC0kO7KAGPahteMBBpqVDHVThMe
Ug5gYKVjMjOBnQmgo6J6h2v8/Hn+5+sBPNBhxKI3+Y/48f7+9vFl2UiqjePg1Do+qHJ9KK98
GHSTvxdpuMom1PM9Da/cvhnDrgZ6ZSRwq6Si6TmV3Ka1u1ep8KneWNkSy6Xu004Hb7/JiX9+
AfSz2724N6zqyul4SzIAF7LT+Z2eniEQukKPyw+eaKLGNGIxLyLnlOqh1Oj2KG+Ie4QZ5xCq
zxO3HFFwSv6G0fh2P5t6K1cBL0wgQ2BmT6+VudpLQ/gWehcbdjj++vT+dn7F/Qrx9xyXaRtq
HsBI3HNHnlODCbVV/FDEUOjn/56/vv9B7672oXgwtykNj9xMw1nY3Rsx0iqwZlUaY9sbA+oa
kcr+DqdRUTaUHRw4lM4nfg7mlK/brmk7z6/NzS1nMsEaRTcZcFhIGvPf5dqIwcdFm9zWhPZg
5V7XRVpi0o9and7PT2l5I3Q3Eoeb1SGLe9oWYii1El1LHVd2HndLorqV4lVnPqZuFWZuD3ug
zmO8ivN3w1zflH40p512U93wrCIZCNk5TV5hxWIP63JwbiX7QMrqRcyyknQJqmpd6BAFR72y
2Y/BEDnl5U0u549x7icH5fhpSxoDSAkmMbw8ZYkhbSMP3yGezfhGzphKxTPQbacytdAQCzUz
t7JDK0dK2s3TjQVjWjSoKbRj9n7wfRvroF1CaZwDtYZFaa1VoChyUAa1dh0w19UEsFmZbDrt
s0USKzKmXicxxCqMCDHeEMxyc6wgGpGwww4MzwCAy7/k/gNPfwJ6v8vkB1tJDrBJbXUfhO9B
klrN18hrTn+D5O3BpISVesDD1APhGDh9hvbDmT1sbtuxw13lhtV6WiZYRARkos5GFSiF6LS+
9To8QVmVWbk+2us+sLa1Ev/Hp68/UZG6bIHZ8I7dOhUricUPmaSgYYDIaitSCdlHKDeHHloV
IuvyyE03qvo2qY/rFcVWvQcdVlkUTrwKxYO7D8usC+F8wRVC73Rkg3N4rE6hqH5XCdM6GVPb
mN2q9RA5fgxLfqrFITymvDp9fJ2VXuf99PGJL5wbCCBxr15mEW5uJtKXRlIqUklTJkNaO8tE
0FnKaamCeXlZjuyEV1nVht0nhEF7gyf59IM8zcfp9fNFq6uy03+8VpVl5VRKvT4DGm6IWKxM
Pobzl+U/12X+c/Jy+pRczB/nd+oMVl2SUDIdYL7xmEfOVgJwuaDcx4VNRsrCp6z6IA9uOV1R
igOjlYw9yUoeYkfwczuQ0dx6sswio0pa8zLnDflkKpDAHrNixbY7pHGz6aa4JQ52dhF76/dC
OiVgM7eajreXSw/3XuieZejjPNaPxjlwySkwH7prUrzAJAuUO4DSAbCV4AVisy9MJy3End7f
wVjFAMGtXFOdvssdyJ9zJeyJbe8iGtjeYIJvjoIO6wdYHYVvX8t5Vbu9C5JSHbACuVZb/Zjm
88vvPwH7fzq/Pj/dyDzDNi5QXh4tFlOvFgoKj/4kKcXAWjQONw4YkXljVW08kPxxYfJbnnQN
y/Ttju0nbbCSBRAm0PV0tjSajvPnv34qX3+KoCs8ZTJqV1xG6znZt9e7TV9ZSK7W2d0KDkDc
NgPUD2gdu0OdNpymIFRdNjrkWmnTzFrY1tberEFr59ABrXcg8SiSPfBP2WZLkTBGXSCww40F
9IQizqo4rm/+S/+dSSk0v/lTu/aSM06R4c54TIukHPbmoYjrGduZ7FYpzlUCukOmArKJTSnl
C2c+KYIVXxnTufG52x4HRveIlewR62zHV6k7ZorDpZmluLH4whLd6clje1ekTcBIQ2IhNkWD
gpxJoHYwJ1HbcvUNAeJjwfIUVcAPcS1hiKEtE+x9XULcKognCkc2fuFRonQwE/Khb1bjV8YM
oGPtcnn/gDw1e5Rc2ZQHQY8ugGsZ1NHFPudI89bPTxuuN/vz53eCKY4Xs0XbxRWKdDICseAg
Ra78iHuq2kgpzj6KmjTJHcMCBbpvW7TRppF4mM/E7YRSq0jRICsFGOeYIK6IMdlIUSOjDU9Z
FYuH5WTGQr7JIps9TCb0Uy4aOaPfaJCHq5TeRNdIosWC0uz3FKvNVFu4OXBVt4eJHYwrj+7m
C4tTicX0bol4DuFsbH2324o3N0KBvijoRJxwypwcQs90ku1FpjLVvmJFSt+hRTPXnkHvnlzu
WbmvgtXwjjUzi8syQHjML0KhaA0iZ+3d8p5+p8yQPMyj9o6aLBot+bpu+bCpOG6YwXI+nUxo
5bPTjkHwWt1PJ97LoxoatEIYsR0TYpcPXLWJqvvv0+dN+vr59fHjT/Wk5+cfpw954H6BEAGl
37zAcfMk1+r5Hf61XpYHXtE+H/4fmfmzOUuFZyDQLyV9eyMZ1CrrG5C+fj2/3MjtVJ5LH89S
6pHFffp6/31ZBWXcS1lYgiovDo+UXoBHG0sZoaYyy6LSMascprh388ekEMA6RtsqwPPfdDh6
tHtqThOM6Q2T5C0BQHbax2bksYgEw0agrvbh2Q7KODXZQSQ2b/2Bx+vNdP5we/P35PzxfJA/
//CrkqQ1dy31elhXbgJWGwOF44rroUuBtDIX69Sn1mY6ZlcfRswaPuU34Cy8VVnEtCm0OpVs
UqjZekcr+fmjijBtKzxT3y+24eSum7MI/K0Q6yNBTUA6TivXO2tcIW0IAyxxQOW4YjXfBcx9
1rRcyiJhGxDLtkU6RjkF83klicOeGcp/AqIPy++mlv9gvV7RrMzoUnp/UHlYbIb+hvuQQaLB
mNrCjHrXHeXvJqHdXk2buhRyW0NTZ88bOmSF8R+i53iRoet5sSvWPAfZ1s6a1VHIWR1CAphn
C+hTVZmz+QS9VPf1cf7tB+yO5maDWUEmkVqov7P9i0mGlQAuHGhA8tj3PN9LLkPurvPQs5gW
DYtZ1ZAch0205jZryJvpfNri+dVTZiwCyTGy4pMKeCoOvwuJUjS8JB+G0UdZIzz/xj5lzn4l
UyIaO152Hi+n0yl0osULw1yY40fU8rhr1+S1gJ213JSKBhtvs8cmDTxyaqcMmFDZJDDOgRdi
bbJdXdZ0XAmLalWXLP4Lc0HSwe335WaP1/T2dhqOqDAkgycHr2S94Zmwry0MoGumFKybYieI
HkG9jTsgb4mcbrF36QjfJz7UxAbVwfbJNRDB4w3WaimwrsSmVDH+KAP5uOCe17JJFPOrswc0
7/R7txYRz3cZDwWp6ml+xa816O+uqPqHIHK4E+WFG/TMJIdA52CpaO0dcNGS5Pg4Blj1qHYy
mq+R+HYtZ1mYZJ2yImH0FSIkhypSm9yA6+yxHqHu7jpiHstQGAXTeP1kCLrICfkA9kmGdzUt
aTNtF5t41kHzbahkVRPuwKrJrdnbRtY5nc7bqUpN2csVwmshwGLBaCNBQHL65JWouVUZ+dVt
ogy/U6GgcUSZP44J7IFQUDW9/iTn8GbHDpy6VLFo0uVs0dKnVe8SNMqdtPkfNw5kiG4SCA+1
pvdCCd8HAnm1oSTuIYQxoexuQzWTiFCaQKTFJJ9O6I0kXdO70Lc8HIHE9HrO6j0PBKi2ySQN
K8orO5TkfGvbrWsrlkv8JCpAFtMuD5S4Fb/KFK3r+0jWSJZVuu+AB8gEz1NyzuXHGqth5fd0
QoaTSjjLCi94gsmnYA2Ucbkq8l9e65CxoxZhRnpB7Vu8VuG7N66A6343pjhZWF0WpR07uEjQ
laH8vBBO1c7q6lgU+zROr3I+5ZbqILlHlhE5OCbgpjbjQq+JyA10Yw3okYOxS5IWdDa8EPAs
giWulmEu4DEr1wElnk21A5VJfoWFqmPbZORucjshKwhm7A23vByWUvyPKvzdlOhgMKCuIqdP
j1U25s0hNTfkXurldPZANhUIujKLQYAEtT3pwrSc3j0EGiTHiwkaB4EmvJBRBilYDkLitd4X
nIfCMfUUZcbqRP6gVSQSemAFOAHBgF4VFiRHEFA6IKKrooLIg1HNhhaYt7FDXdWone1KJju0
2WxYVR1zTgcoV8I5YuEh6kRB7mnpjhxbcSzKStiugfEh6trMsEtDziP0r2z0Dd/sLoRa7amu
bL771DISkB9dvUHGoQPIMdYCOHheRmlzJBt9SH91xAMN6Q4Lmn8Z0HPMxhi48vpQQYrDaYEm
LYZQxlQWrAjHGjI1970hRlYjjukel+dtRfpCbI6OnxcALDlOHLTex3xmPIbnJdZrsPqzEUna
8tjVEYkEnfL6Ni5NbySZb5yANAdAQaqW4rRwkT3KqBJwvcx14wpDe2HerfAqyhe309tJsHxJ
cN+27SX88na5nAbqCOh7ndyqTJR30XFdgEePC1daR2dIojRisdNMIwRjYMz26djIgUutsqGk
od5Z2wTbpM1W2gM7BlolRXpQZ02m0wiXZZhUGij5NbcWmg8NlDIwjlQqjWi8fsdEwOsFctcP
wjKnruDe2Xxj06k7ZqxZTuatW5PHCwUYbgFnY05cByiPWqqdcPgEMpeMwnTSWqwHaP3k3Ekj
J++4Ws6Xs5kPbKLldErQ3i4J4N09BXzAwH3acCE4BpoL2rXcBWb1Gl195NrGf4+i4CkgMvMt
k17adtLVzrtBKmXarBh5daLRcoU5jmADfFekSDOgEFoB5wCRHgGXL0csggse8koFCMoIFLdO
hmn1eDuZPvjQ5eTu1ivDeIn5Gy2oefIfL1/n95fnf2NzHNOrXb5r/b4GaLhrDB57wCNUHx+6
ta+aMEUOTyQMkUeqSARt1SSua+WvX5C/i0c/kGcpdiurKDlTZLY+TmSbyP5Kq8Gq3465qhAQ
bxUd3QoKsR/Uf3feKGzePr9++jw/Pd/sxKq/D1RUz89Pz0/Klg8wfWgt9nR6/3r+oO6WDw4P
q3CHc87aG7htfHn+/LxZfbydnn47yX4aDV60ycKrekTHrsTXm8zm2eQACOJq5Wr2A4dj+9ls
YjuWMnzhmFQ9BF8iKKij91WwpHYAclQdiBM0TLKns8lE8rXkWSDr2lK8dBVJ1k4LbD1Xw2rw
c7B2usy+bIcvsN8Yo0xASOc+QthQHkQwY4J8AYIX5tZQNrKU52yBDMotNHigOI+vj5f3YnXr
XuXZjKNML9LwxUXvx08f/iIm7t9f3398BU0AVOwMi+GATy/OhoYmCRiVZaFn0jQR3LqG4gdq
Cv1Y0TYP3UYropxJxrV1iQbT9heY1edXufZ+P+l146Yv4UG1i/X4Vh4vE/D9Nbyj17G6OxQu
Qafc8uOqZDWaPj1Mcs20AG0RVIvFcvlXiB6IaTySNNsVXYVHyR8uaPsyRHN/lWY2vbtCE5vQ
l/XdkjarGiizrazvZZJ1FbgtQRRqkgZi7w6ETcTubqf0Mw820fJ2emUo9Fy+0rZ8OZ/R5n6I
Zn6FRu5v9/MFrW8aiSJ6BY8EVT3FfqQ+TcEPTUCXM9BAzFUwkLlS3CWN1EjUlAd2YLTAMFLt
iquTRDR5Ravsx4rLjYd+IsEa+rlcX1eGtclnXVPuok0oKvFA2TZX6x2xCmSby0SriD47xrFt
pFiTp5RmzNo6LV4QPrtKzAhQxzLkNTTAV8eYAoPaV/61GYIRKc9uVoEQdBEpmTokYYwk0bHC
1tIjSj3M1fuEjwz5gOeSWQMLDloYHSvBQbgOKK6t0tSAk4FgR6IEHqzGViNWQaaNTua+N5xD
oN+5gOIvEIHa5OGent2aIjqyir5o0HjormCgJU2yF23bskuZBLdq09ZhwC8XNNIBU3zxtIc3
gwJXe4pEvZATeJFLE0DPiqjmgbC8Zv2kgq5wnae3yl7QlztOH0/K9Tj9ubwB/gw9ilnbwpv6
hN/YYF+DJWelj3QEhfBMW/tuzhBHKVrVGpqlKwKqBYJRjtL5anMlSU5JbboMMcv1gwlu2jq6
mFBy5kQ19OFtw3dO96xZzk3PDCX2sK4QkiUih2Ygyeh1MeB5vptOtpQvwECS5MvJ1JaAqdEd
zYwJ5lyzs3+cPk7fQbr0vCGaBqma9tROA2/iPSy7qrFvCrRZexCon8H+Zba4s3SNKmQE+H27
jzUbR7aP8+nF1wTorUp7wETIPlEjlrPFxJ0V/8fYlTTHrSPpv6LjzOFFk+B+6AOLZFXR4maC
tciXCrWtaTvGlhy2uue9fz9IACSxJFh9sCzll8SaWBLITEjyrazYRF7kU1XO7p74hZLyiR9H
kZffzjkjdY63mFX+PRyTYk8mq0zFYoKKF7PFpzeVBw/apHJ0Iw9rp7yqqqIj64+6rbZYqiso
olWJNjHYLD2JOB44ntOhYu181uO7qhzcOV460zi6a4JXexnHnaqOatRfLYWLfouhdhRtXN+4
yjNOJE3xXZJkAydsJDy08FR6e/0DkmEULtn88AU535FJwdzKEvN8lzeOzoVNHMZQ4QEA4Gha
j/8juaCfGs1P0QAUqXUwLBLnGxy6N5RC3BgJHyh2WipBWu/rM/aVAOZkt1qOFkV3RU8FZ9yP
awq3NGjpF9iN6K5jc4eJpe3DlB/QkWHgzkZ38LH98ZBTe0hK9q0sRZTg/CrGtDkjqEy7/FSO
8Gy470fE82yhVHiRntCZ5VXAQPHC6bC7OcYCkQbYC9wtADAxyRXVNiV3HIiVF6Otoh4QAwWr
xmZA67JCG3LPmeoOQts7o5IuI6irrjyGTH2oC7aM4md3s1wOqD/IPHNdGqQwjIqPpcVtWluk
jTTbYhqXILlm0h1LlgcJGh1PFd0O6AzQ9Z96zRzs1DRy3zJvYriJlfmun6BSPR7peY5do9M0
B08gaMF6JUE9qlXTK+xBz09uT/ao5JF8oI1Y+c29JSNBPMpuwjYTHNBeLRwwkRoG3BFFun1Y
g6lm6vvtyDql0dyDgMpDuJX5pJnoCwTcJkU0FkzzBxZxncdvkMd9Xpg5qiH7BIHqgY858QLP
aZU9/uYrlAOe5+r3ey2t3UbexwvTPrpS9d1dSDyUGdv/C19nC93lYaA5866QCBA5dgeCmo+s
jGZc6BUxrxcVhEmL/lzBil3r4ViNmAE8KO9gAaB+By+FV/iBDoNMd9dVKgv2Dw1Myybq5kkT
8pkyB8xd7zNmoN+js4qtoMxJzp0znujEX55eAoKJE3Km0Nv3EOoqzP648dMqCDmgiRgp+HVf
7lDTAWb7VXw8ASruUMWV63rbyovEI1Ng5YKgS0L15C/IVd2h0otqX7GuVJGhVkIAmqkIAw9z
E545hiLPotC30xTAnwhQdzBN2YC4vVWI/LFuN3/bXIuh0bxCNxtLr56MxAYqo6N68/HWIg35
93++/fr2/vXHb6Phm0O/M55MluShwF4BXNFcLb2Rx5LvoplDRKu16+U99wMrJ6N/ffv9vhnt
UWRa+1EQ6W3JiXFgF5+Rr5jPDkfbMoliIyHhxqUT6/mYQaVR9HUzgIa6voZ6CmxwjUVFzESE
oTGTXfx5dd6DNY2iLHL1b03jwNPzYrQsvuq0s+5KJkmDbnC5Thl//X5/+fHwDwg+JmPr/NcP
1jff/3p4+fGPly9wQf83yfUH0+Ig6M5/azeDMKsULUkD/KJJ4mJtcFRNBmPT62HFceVEmDrt
WaGs4B0IHk/RdB02YNcLWgYb5oltsjjsP4GtaqszcaLmIa0qaq01sT1WLZs2XHNac93tDfnr
27ysH81keuvKSAUvxoTFhjoSBRqQ8TG4mkLYTpWxzsCG2xDLaqT5VDdGh0rTHSNJofkYtGbI
rss6U/3J1shXtv9m0N/ElPIs7UbQqcQKxsIzz3vKdm/tnGj//lXMxDJFZVSYIr+nNbp+OydA
Y6jjwds5BBJqtGbDHw/goSowBGKAQCQdW1rB7cI8HEdYYHa/w+IM6aDsO5aSBZpGWsA7m4wm
A97hG6/LPQ6KWu/KOJbrntDsl0UdQEISTsPD5+9vn/8XCwBlg4sCYq7wc7hKCdz4+4dqJOS6
06zMFH7YGOxP7DMZKUTJgv2GZyEAZcsK3SPzxusuy5XTICHY7cDCcB2Il2lalETKPPPirU/b
YiAB9VJ9y2miNsKUUsO7cUGufuThJ44Ly9Tutzng5j6JCRqLX7KMj6kXYQXoi6rp0RDcM4M6
ay5litQ34hZqglIzjCpXUxsQ6pW++s1YR4luyrikVo1N3WH1A3HYahjx5W13CIvlwZLx5fXl
9/Pvh5/fXj+///qO2cu5WKzKa0uESr3RIktjpGVaUHhym17QMGl8pMU4gDUlB1IXkCF5C0A5
EYN+0E7YJYHHTmO61FEGV4v85Zis3xu9N39Sjx+lg7QxrB1bBa438cd79bTmgN7rFdtMvJ3R
6zWAradhONWMJcyJ3BDGW5U9EZLux/PPn2ybyMtqLb78uyS8Xg3vFE5fXo7QCwz7xeuBOveM
gsncNIq6mrtGTi0v+WByVvWyTdFz30/wn3H5gDQYukkUDONWvx2bS2mUhXvunc0uaHdpTJOr
SR2K9Ho1qUPjxb5Bo3mbRyUBT7vdycTmWwSNqA3JWcgK9aaRE+f3RjSasWUTxGawGgd8W/am
LcWsELsFatFYOPXlz5/Pr1+MfZlI3rbj0+HOFOoDvMZh1ltIuodRydWqk6Q7rutEB8EBQ2B1
m6Dqp64rkpgFYAp6GlkiMQ11QVLfM7Vzo6nEmN2XdhNq46pMvIikRhaM6qcIlZXRby/2nAMb
hgjbMKxoZCQmFB1zZAxBFgZW8s2QMn0eU5Vlf5TYvLKxG1DwyGz0sYimKA3MkdGQtLALzO3g
zP4RVm1WeaaBstxS7MBqxTOf2B9eGvDJdX13aVMRWEf/CsimAeo88GypWJ7muDPgdlOKvvQg
5bW+8dcb/NiSZHhRCCASWiUdyyIg/hUtKlIkcwo4HNjqlVtPeGtd3RePJ+wKVI2Bf/FvYvLj
lfb/+L9vUqlrn3+/ayOHccoH3MEutdfafsVKSsIUPxdQmfwLdsi8cuh7iJVOD7U6AyDlVetB
vz//WzfyZilJffJYOd54Xlhoiz7ctOBQVX1brUO4xZDG4+NWuXo6uCmxxkOwQ0GVI90oaID6
wWocvvvj/6AGwf2WMNQghCNJPU0gFMDHgbTyQhfiJ4gYSXFZtsVw4yQc7DXdYiUj6ibKhrzi
hXAZWo+BwK+Tdu2scjRTQbKIuMrZTrHLSlxlk1ncKef8NgReEvuhNgUUW6076Qsm5MJvrPib
BvIN3vXURPArKHavDPdhRgpa3vCqbfOEU80w6Bp2vOjP3IHTLuD2yUZeFrddPrF5THOUvaYZ
iZZv1uHBVzjuEoTP4gJHvwMLMqDjl3zwsosFS1CW75amQ8sUVGUbBvdj4BAOu09tIz5/khdT
moWR/kS3xIoL8XxsLzMzwECOPexTMfbvfJoi5eF0YtPpjtq10ogiYJdBnD/ffSSJppwYgH48
ZILH8iNWyRkup9uJSRDrIpBYtPuW6lnbz/U0UlaKsfhoKGclDV/dCy59DKdkSBVNuvjblHeg
pultf6qa2yE/qbeec0JM6v1EC7liIEi/cYT4iEi6hZWPLi+wAdhdk8Sm65PwmgwXCCSZKYj1
BxaUnP0wShKk9Zfu4QaQveSNo9iRDt+wb6QjWLLA8XmaZZiuuHAMJCaZXTUmkqEfIW3KgQyR
GgBIlGDFACgJsAlA4Yhc2THNwnOkGmXo3LAM63YXhEg3C7UkQyccLrJiRQ2xE6WZb5wiL0Ab
fZzYPLhV2VNBfc8jaJ2Ebro5rplOmmURFkV/7KIp9lNzRBprFP/zdq5LkyRvU8Q5nTBrfX7/
9m/EY3sJ+l4moa9sszR6itFb3yO+C9B2qTqEb4N1HsxtUeMIHDn7SeLIOSOoErpyTMnVx6Lh
MyB0A2g5GBATvBwMQk+ydY4ISRWOwDFykcRoP1zhaYxuDoCMlobbfm93x3QdcD/AmaNgP/J6
vBXGtb3FWFL8OGPFfbQiYn2ETZcDQxqrjh7B5toG9onPVKg9DqRkf8CQKEgiagMHWmCt2hZ+
kKSB0413SXdimvBpgj3CRqscmshPaYtlxCDiOcyvJQfbiuVIwRNcOsWRsiP01sx0rI+xj6qa
S+Pv2rxCS8yQAY2/ujDAmbM+xy3QlKJD+0MR4l5EAmYT6OgTgowciGmbHyoE4CsGIlUCSJyA
aUmugBlWgKlgCzMi8QAQHy9ASAhxAI4ihyR2ZE5iJHPYw8RejKTFETXQiQbEyCIBQIa0F6MH
fhIgxYLnNdBZgAMBnnkch0ibcCBy5eEuFtZVbTEE6Go3FXEUorNA1e2Jv2sLIc+bQ6odEzaS
saOfpbda3YpspSfbn2ErCaNiMtwmSA82bYoJT6seMStUNLcUzU3fsyn0rdHMYEc7ZBEJsI2U
xhH6zo9DbJu3TCJFmgTYKAIgJEj9uqkQR5M11Z7EXPBiYiMGaUQAEqzXGMDUZ3TeBijztmrf
DTwSGvZxXxS3IXU62WpsGdOkcReNuTn2aZQpw2Qw/ZgXzhZ/gkvdy5E4tpuBAwm6vdxBMLK9
y5toWYFuxX4/bOVdd3Q4jbd6oAOy6tdjEBFsKmCAjPhkAQONQg/7hDZxynYL2PggkYfVn68m
fKTaciwguA4/NeaVgs0bpD7ajHIB2BInMeF76GhiGPGSzQ2CYMFWPjEDY9MIIGEY4tN5Gqdo
izCVOEs2B/a1YksakijTK0MvxJZahkRBnCAr0akoMyNotgoZjgYWz7UcKh+1eZo5PjWsrGj6
w6W9u3GbLwE3MqDHCZcJBjjCgSgcwZ/3OIo7aTiNipf9fluxfQO6D6zYvjvcXEQZB/E9dP1g
UAwnm1tt09IiTFpU5mcsw4/xdLZdkGGHSQtTcYxi7s7YovtgjhO0CTgUbOvXdJooG3qbFW3j
2KG/Fz5Jy9QR72Zlo0lKsKOqhYM1d0rQpqy7nHhb6j8w6O6cCz1A5+WpSJBJeTq2BbY5nNrB
97BhD3RkveZ0ZOPE6CE+QQJCtjqAMUQ+kpV9X7MgdR6ncY7ldp584m8Pu/OUkmCrQJc0SJLg
gCUPUOpvnyEAT+ZvzTucg5R2xTiAjliO4Gb8CkvD1hJnNACVK0bDTio8bMgd946CMKw6Yt4o
C89s5IDQVSHkO0b9JXRJgtBv5gsnBged8qmmevycGavaajxUHUR5kLdxt7Jq8qdbS//u2Zm5
VZaZo8eqO4PwkC6EUoHYwwNSmrLa56dmuh36M8RCHW6XWn/xCGPcwyETj0WwWTD1E4gNAtHm
HC89zJ+4U0cY1fIiMMQv5T9weC3RipfVeT9WH5XOtzoPtnPGkwYzCJaKaO1mA6KZE6mXsJRW
MuYnxTxq5Oe3Hw/gYfADi+0hr8HtEvMYyBSn01ETb3lj78xMqWkNYdo3qqFey1pZcyNdizo7
qdoUI4zAQu76S/7Un/RA4DMofHG5p+Ot6kD0sdluYYeoaNxzFdLzLHg2lhURQ5/fP3/98vbP
h+HXy/u3Hy9v/3p/OLyxJnp904x65o/ZCiFTBoFDKqIzsKmo+fuPe0xd3w9oxQ2+wXyadYNf
Hagyfb3C7jfCab+ftvyM5dUL0svyLNkBRA4gDlRgNXsWw2ejIMKUDflUAyC0wZHtX+qpyB0v
tqynSRu5SUMCRLaFJYENyKgNWAk/1fUIVjYb+XGcDki6s6qBpszDmwypF22lzZl2NEdTkIbT
6Pdr71w2yy7v1+yyw+lgcMUbZZlTt5zc2yuTiVKbKJjUn+7WVulcbZ8BE9hmTfOmbhPf8yFX
rEBx4HkV3clCSaqwYNVpEC7fC1Kz9Ez4bjlxJQ8hFsQHsxXmH/94/v3yZR3IxfOvL1qM6Hoo
ECEtJ+1pXMpKPPSU1jsj/gbF7K9Y0XOVXSHrf90gqg639cQS1zhc2XCcqrG2OVlEqDAf8uUQ
3Tc5xfxy1Q/5Sx1F2+HJ6vYMApHGTKsz+//86/Xz+7e3V2d87nZfGgscUOYXlJ9oexgNCLEF
4nQaJGgwoxkkug1by9fnIYrQK0D+UT6RNPGw4k1t1dwg0ooRHGEFj01Rok+I70sR7tBTVUZO
VczB1eQMw5iVpl/uAN108VlpNq/l9rMQA4yYYkT1YmIl2u0M61KA3bItqPqUO6Qkl0Wr1Ob1
6kyLke/jwKJpJklAO+RTdenHx/nuVG24wg+uZidJItL0hq0L0I51zPRqXskVOE7gT0vrItBp
LMU5wIGkNgOjos7zgNDiaEpe/ZHGBHfpA/hD3n1iw7kvUe8a4DCdCIDGLaD0M76VjJ2MLWhs
iu1suGRR+RKGUSMrX0FHrf5XOAuQxFLdE0LS08zDzr4WlERWUmmW2VUAUyiDOMXaDc1Msz6e
d1I6GVZos7xDsY+YWGNHivwTYfhvpDPbEqk00yeDEx9Tz6iC3JOYxaBVYflFq3AdJrEZ/UwA
TLwqIarm+KGrQ4ieVxuhh6Ace3xKmUDpzwbvrpHnbRZP+piIYJFT++3zr7eX7y+f33+9vX77
/PtBxGKu50ju6HYfWOwLqjm21X+eplYuw1kMaEzTzNsgiK63iRaavQmgtnuPoKYJ6sIlE2xa
W67yps3xQykwZ/O9CJ9VhK2bI9CgABNs2uclke47RoUR67mFTvzEOblBxVjF0VVGwSP9HFlJ
Gj9BXhjS2D2xSk8j1z5CcURCqHIomAmyKTfAD0mnSxN6gVPEpXeTFcoD0r00PkmCrcHRtEFk
zhaIAxYnf2yvznn4fE0jq6Wbvjh2+cHxQjDf2Iz1p77LzaGlVqFNQ8+YVc3DzJVmzzPmAedK
wzqCIVnmiEsN82N/bIVzH+rEpbLoXoH6x8SeYSfYNDjnPfDc1xObT+JhFtFiK80q8SIOavQk
1+58+Xi+t1XSm0mm58IKiKfczn0zacZMKwMEMDuJMIT01FZo6nAuyY8lVS5FfZ352E7j4Bqb
GhdsYjC1W+eJvQQrDSgdqWqBpENSH7GxMgqyFC+41C42i7SoLTZiaAUrYisXCrbIIVIgKYqb
BUJ0FEUgjH28gaCtZ+7dDSRwIMT38EpwDBs3injmXRRE+uxkoClq+b0ymZEpV0Rs+e9Io2A6
R6hJwspW0yYLPLTZwEyDJD4qdGwKjwO0+2G/kPhOBO0G7s1wxSvLF1RMBTBYYkdbN2JludNa
wBUn2EKz8tiahY5F6j5DgwzVw8Qih5xxE4/wXtE5V7zdy5aWYUD69tYA0Xt7kyd1V0+/yTTQ
lNxpdKkL6xt9HU9SdAgDlGaowLXF4LNmx7EhCv3YUeQhTR2vzOhMMbZUqywfk8whEkx7831H
9pYfJMoS4Z1hqIo6kiV4lhDkIHS8iaRw7U+fKt9h6aOwndmkd0dUOU+KlpNDGQ5dWoz8EV4W
lQGocPBEd7ezYa23sow5HXbVOD4NtfoKxi2fptrxBq7ysVCAN2s768PY50Iv3v58ClMPnWxN
jVxF2jNxzDizsnunZrQ5wPvD2x1JWVJejK4eDEpJiC4fHEo6vHhghOazIbCZL+g8xCHpQvMj
jgkJUyadbClucGSyZffGBGfzg3tNPmtyd9jOzhBjCo/cxm+2oh2gQsfuTglCh7rDxIdgk+/q
Hf6Gzeg8Ayrk8dDay0Dp+qne15qnY8VDsqkVkaQbG9ewy+k+YBpQBaFAgRPcpLWwhDznYxKo
e2agmfs1mFmGU0OrFGC0esAy5nVHj3nZX5xsojCyICoHPy46/Hr++RXOf5DXGs6HHKL4YkYQ
atRI9setrdkcV1LtFgfo5XDLT1csvLDOxl3vWswtZ4Vp1ezBfVvP+bGlMniulTf/ipWgpfAK
0dA3/eGJic8eP0aCT/Y7CKW12I44+SA08421a8k0ybG9uOxrZAsYPaOA02S0IyPAEym3geml
t6HvGx0+j3m71tb4DqMfqvbGr98QDFrOhcF39AhRAzCUFkf+dMoSs+nl9fPbl5dfD2+/Hr6+
fP/JfoM4ssodGnwl4kwnnhebPSWijDY+aj89M/CHqpnylKVXvTQaGFlBklxl44XPx1Z5KUgr
FDy6ilmkcHHPGybuNR2a/Mlo1J6NNy2MspqFyjnmpfYu8krjJwvDZAl03pau8MIAd/3pXOUn
R5HPB929jNOYCDjYczqZ3O0hNwO/a/hY5CNYEBzLFo/RuTA159KV78drY+a769nOyZmgjPdv
NIzCMORdtdhpld9+//z+/NfD8Pz68t2QT87IzQrUWLZaZpKFnujtk+exWaWNhujWTUxZz/AV
ff1q11dMrQZ9hySZS7BW1unse/7lxLq1iXUhETzQhhhd3GBgSNXUZX57LINo8tXN3cqxr+or
W9oewS6ibskuV3Ucje0JTPb2T17ikbCsSZwHXok3Vg3P5zzCf1ma+vgSpXB3Xd9AlHUvyT4V
+FNRK/eHsma6NytEW3mRtyGagv2x7g5y0LJm8LKkRP1/lDau8hIK30yPLP1j4IfxBe2LlY8V
41j6qXrPuvJ1/TkHPi4w+vkQyhTHCbnXBm3eTTVEn/9/xq5tuW2cSb+K6r/Ymqna2ZFEHS8h
kpIw4skERVG5YXkcxVHFsVK2UjvZp99u8ASADXpqKmO7vwaIMxqNRjfbjufLk0+aqXfsccBD
vyhhacNfoyP0d0wVNU65QA8N+zLOUC+5ZiSX8PAfjJdsOl8ty7mTCbpW8H8mYoymkefFZLwd
O7OIPAJ0SSzHJ6ocKTt7HOZKGi6WE/UtFcmymqrqeYUljjZxmW5gQHmOpXfqqKulWHiThffR
iOu4fWfPqJMHybtw/hoX+qMLC1843IQK72rFxrCDCDif+dsx2UQqN2NkEwmfH+Jy5pzy7WRH
MoCkl5TBAwyJdCIKy4cqJjF2lvnSO33ANHOySeDr7wLU9S6DfoMZILLlkryHtfHa2jeO0J1P
MZvO2IHyPdSxZl5cZgEMl5PYO2R7ZekxONcbxLI8PRQ7Rn815wIEzrjA8bmermktUccO0zbx
oauKJBnP5+50aRztatnD2O7U8m1S7u3IfaJFtB2zuxnevF0/P1+MzVP6APfUaDeSupdxhAIp
9zm9Bm8WYyBF0hmMpbUDyATnbpCtF5PeOMCdELLwrFJ2iLEa9zzBhzxeUqBCEKTrzWo+zp1y
a6zo0SmwnmZQykyyyJmRWqiqBVGEKxOxWkx7e2cLzYyxArIv/OMrTc9bAXw9nhZ94tSZmURp
uND2nVbubM8j9PrnLhxorAns2bbzSCz2fMOq+9TlwqiBgc4G0eUguhpC9ZeqEocdYJvMyPvr
GhfRYg5dtjKEJUyZeJOpGKuGZFLCjRi65S3gl2LhzAbQ5aooLKiXDCRbTHsVkXFJvHw5J2+A
2okU7r1kNZ8t1HOEfSKqyf0sYjnP9VLVxL5Jvyxy6ia7o1nQPaxH8L9NaJfYJMuBp9x+Tg4L
sbXoD0qXpynI0Q9+eDQmSqBFbUFSYW77dIwyuRrwsC+qAKupN8i4J3qyShXV1VJgv6gi1aI+
zRcZKX2D2ORHmVQelA9Hnh6EWbpNF5hLrq/bt8fvl9HfP798gZOpZwat3W7giO6h140uH6BJ
TdVZJak1aXQSUkNBVAYy8FRDHfwI/NvyIEh9N+sBbpycITvWA6Cpd/4m4HoScRZ0XgiQeSFA
5wWN7fNdVEI3c6bp4QDcxNm+RsgRiCzwo8/R4fC9DJbNNnujFrH6Egubzd+CQOp7pWpXjMz5
jmm+4vHTzD0EfLfXK4TeF2udip41Hjex+hmPduTY+NpEHekZKGNvyMlktE8S0gpfgOCU6xrq
DRV2zyB4T2kdPaaGDQtDBmsV4KHIMqMEx9wXVNQ2gPA9jwxZozfkxDNMWnG0y9BKBMm0h+kA
qfuz1a7maTuILmDKc/2bSCC+KMmD35McH3yNL1WhAAdK42fYJIF0guHUtCh6CogB2x+OPoXt
KKJmfqTkw3LfnG+VdsoyJLLzRDfbaIkfVZ3pgbkrSunaucud3i5IomebcIw/64VP/ZhgOaw8
tr4TnNJU4SDyY1ixuJnb4ZxSpsuAON5WLzYS4KDh+kGf3B9meRx7cUxJDQhmIDvqdc1AEvSN
KcrSQ2+JoB3j4hoAawTsOzYYnYLsimw2t6hdsFSVERVRZLl9S117fxPHMejjOS0OjVG8gUoa
S0NNk29Tdsae1mD9tqyEZbophYAVaLw0U4RL8/asFsvI/bt6E/r49O3l+vz1PvqvEa61Rrz6
dvlGXYwbMCHqeJ5dJRDpR+lqh7olVYcfMm86dyjENKLskOouvK17Bwy4XO2YalMRomk7Hnlt
dwrU4OsdaBpKdgjz0DJibIWWY7rcjaH/YJlqUzdLUy0c1SOcAa3pzwYgwM+HP6oYh/cw4+lS
l20+n46XQUJhG28xUY0DleqlbuFGEV3S2v5ysKhVb3UvkIeHdpMepCJ8YK+MTdh5Yd0kZSC8
NlCGfryL9b9Kqa4EASrSLkoVCD43obXwCpMbHLPpdEbO5d5laJeDiI+RJi7JKb4H+bo3n/dc
U4XDn5335Sz1o122JwsJjCk70Ve9e1KQx6y76D7Va4EflycMW40JiNB2mILNUK9rKwLsSOmR
NmKQaJJYYs9L9AiiPW1BIJvBDw6W0yLC7h61vQMwh78G8PhoM9xGOGT4Unggubwot8PnntmD
hkPf7eIIteZWFj+EI8XWDgc+rIx2+NPBt5d+54cbbgk3LvGtJeKDBAM4t8ZmAECFIQcJNvDo
Wz3EoWRSQ29nONub5cSCLE4Gvu2f5M2Bvfjn1H5djwwcHz/b0cyO/cU2qX1MZCce7S2Hz6pZ
Iox/lw0ULXDtvuolbvE1W2FRnNOOLCQc7/jgTJfyawj9bq9/CH2TDhQ/ZOfeM12NAQ7LcmLY
c+BuGqNzAjsHSojpwNgPj0HGh8dflNkHb5xm/sGKJnDOhXUJZoi9IxI/Y8E5sq+aCaxctuO2
xAMWyasJ1z4HkxQvj62wYHyoGvXdjh1Hr8amsxydI/OZfQkB1A8E7ES+vQZQgCQYWGVSi92A
nON49cfEwAItQpZmf8XnwU9kfGDCwCokbL6dJb6HyWxvgmyPodsHIpwi0xH3+DIR9LFLLoec
h/HAklTwKLTX4ZOfxoMt8OnswQ4/MCErP0vl/kgb1cltPkjoYLGU9NHFDdeEpTZDGf2ce2R+
vWQNoBIbaQjt4eI9HAQtSj3EO3u8TrYCMqyyeGCmpwcyHIOE90PkKgzwa2SL5oi4dFeyZ6Lc
u57xdUuKyieCbClkwqoqEl1LT77+er8+QZsHj7+04MjtJ6I4kRkWrs9pEzxEpXeV3FbFjO3z
2Cxsr4XIPhwopFEC5u18ehvIzsmQEWQMvS1OPCNfoofqs+XklAr/ASQxgmhazggMXnbUog5B
srI2QawcSITun8L7EzlHe4x473YR772eH4nQNV+kIYmlIfzQ7hqRDCuJM4UyhCH5zhA5vL3q
+6MllRgizXVBWI3V81WHJ/2vwQki3pcffAu2qWwbUjnGW6gGE+ps00G5vdjAbD3p1b4Bffxt
sFDA5J3cUOxdKv8uXiiRf1KwnHyp3nJs8aduC9KBIQ82PjvSQ1bpDkuUU9n5gas+XZTji29D
SEl/Eh3bWLJyN0vVKSuScjT89bSxLgfhyfyb6lmgboKjv+V+4PUQvzhHseiR99xZrldurhnY
1NjB6X/VHL9HqCVfwHw2kuOpEm2iegnch94c2IsHo0Hry+Ve4jA70K1sD1nW8RQgfNPDXQur
29FZWHk9VwAtwHTH6RcgQUTol0+9ygzh+JhxVy9yTevfPyjxe8X9+vSN2hja1MdIsK2PEciO
oT+Yy8eLXJOnHMah6Je//EuK/FHpqIa8LZrOde8sHdCNAaJjIv+Eu7jyPfyr0pBStFIeW0hE
HidAXo81A1zJsElRGxbhK+b9Ca3ao53f1wrhma13SSfTK05H9IwZyybTNXXdVsGRM57O16yf
TjiL2ZwWiisG9NBLrXFVfdxw4aivvjvqfNX7mFQa09r+Dqc1xB1OC74NviDjUrToWrWFaanj
Sb9BB4L+SbwKzDtQWIssV30UvVrMzJIAUdXl1sS59tC5Ic4JZ8Utpjrk7YgOQVz0v7eaj/vJ
a8U50QQWtxktw4J0VyHh2n8BaniP5hwzfRhIYvv62vgMGQ5VQurrfmMmetPV2D5WMmeuPxyt
BkX13NOWKnMZvuAySp0F7nw9KYghRgQnozjW1g92nnr6E2X+jzWV4o1HT4f3PQuLP23JwIUz
2QbOZG3t1JqjumczVrPRl9vb6O+X6+u33ya/S7k+3W1GtYbqJ4bqpQ6Ao9+6s/Pv6vZT9SPq
HKz9bzqcqeofFJr/CEnEJxNmx0lHMpZphouJ2dNInC7NeS12oTORl/Ntc2Rv1+fn/uqOJ8hd
daehV7IGpPtSysZRY4phe9nHmTWTMKMkQI1l78OpBUTTzGyRGlcvy+mPuJZ3JhoTczOe84yy
l9L49LssDWocmnZRmK8/7o9/v1zeR/eqkbuxFV3uX64vd3zAc3v9cn0e/YZ9cX98e77cf6e7
An6ySPDqHtxSUwZ9MrCBNnyJxU2rxhT5mefnlrom8hLIHIltYx49tZWqAxzf4POJs3K58/jt
5w+s//vt5TJ6/3G5PH2VUKeAoTgUbQv8PwJpOKIGke8x4skiUtXmk1yVpVzldpdsPMllN4up
MmFnmC4uS6i7eMmR7Y+R56eFXpra+SJJBBk6ZWGvvDXooy43smgZVEYQvW1lar+jHawk1Iv/
W7VC6NIuHNPMLTWzMSQ0ImubBxL3LpxizuSjW0AByWL1/KsQG/OA/7zdn8b/0XO1dw+iMmpw
T7gFZHRtTFC14wSm4VG27Q8KkwEPxGYNJWC8EVWLmuaa5gU1g1iUnpzdMPf9+2kIBbDNZv7J
V22GOsSPP63NIldIsSJtCxqG+ixJ5Nlz+NkgnkALlIE8kWE5syVdzixeZxWmheZKpabvz+Fq
viCqj+591+qRXgEMzyAqoLn10IAlCUiviX3E8PrXksXcdahqcBFMpoZfBA0i48UYLAsqeQEI
6UymxmUopynRgBIYU00rEceKWIGVQxUwnE0y2jFQMxpNN18t8OBMD0Qjt24Ye99CaDGhoo40
HAKOe2vVcqYBtiBROcRwSmEuGW6TOmS+sjgtUhKTlkcNgx/CIZoYeWkOdGqAAd0hJ2iKrkTo
w2Vbdw+m8Kq3eoqE25ct+Tggwru4VvOP/I+wtX+43HkCjrvEZKjoZnxIZShNJ3pcHK1V1u60
V4Xk5fEOB4HvRnmopWhKOt9TGOaqob9Kn5NDDheu1bzcspAHlNSp8C1nlqV1OiMffbYMpocw
lU4sdD0fYE3/Z4fJMmPkKhTOVtlgyyCDQ62qQJ+vCboIF9MZUerNw8wIf9d2bzJ3yddyDQN2
PzFFCc8eCkJG6m4YPp2jh7ANWXB7/QMPGR8Moq0Iym0WgszFLPYr7VAOxhbdlMoxVOPuqsAs
RAa/jSfU/mc6YG4Bw4tu2+xLR6pnWusxcQFB/Y2e2x46xkbhTX+n0lItWl8UXXsPSZg4RyBO
F3WoDam7lK8d5bVZV1B0PuFHO+3BCdJah4hVOqGjsRIcuBaPQ7Gr1NdtwVmISvhgvKJVTt5J
hl+GRPRNHw4FnxbLEXrQlOXybZJG4fIdIgfaQpOcQtjW0a0NJRPEJ0MHnwSOMy6NeiVBYR4X
WkwGIqALXceRMDKrqdVcGU7Z8CRaEaV17R7rWYa7UDv3dpCtA6yNX2MW5TteCBn1qEmYwBJc
Eo4BRkna0eu+XC+vd21BaMcv3SRANVzDtOMYfeS0zkqAvDluR7cf6FNUjeiOuW+5dv17klS1
Usc6OdlCEirDOPfr51lDbI0vG9INRsWy91liTvyWLk93PukvR+VyQ80ViVH7dsYei54vk703
my1XmizGQ+wGl/PSasqUTRYH0vd3wlL5eC6pnXG05Mo3gAS7qD41OY1lj8yVqSaB6t6lDH0h
jJcbNRu6G0Lb+Q3G3NICkKkIbQKjcNgCUBiVqFN0hKPhyonHpcvpUYNYghvDzo94+kCZggCH
h454Kg7tKyXzXfNLwk/dWFB9IL+F7yRai2EFiPys0ClJetT1EEgMtwvy8XC+BZDHYXiUthqK
VCcR2D0etp5ONFiiWCY3qNqdbUMpQ+2KtSXDEl+Y5O71RFsPCeBmRPaIlgxkgqDwPVbIOCOp
L3zqXK0nYaFX7DZ+xW0pDl6xYWwOdIhTs+kFCG3esnAfLqvwJtTaUXnDUb5aeccJ/Uh74VuT
jdXchHMvodbaGt2wIIj1+Go1wqPEYhTRFCck79bwe9qCs3VzetrkMpwM1qp/W42O7d9vX+6j
/a8fl7c/8tHzz8v7XbM8axxMf8AqeYvLa3P9QRiv4UOmuiGojRpQ6VAsBxlLOX5VqdxD9e5J
zYzUmyE7Pkfdw8xKcy5UixHE4N/mKIinVAjuIl0l3dHqrcIoQblLWZTJYmO9KJW3wgW7rORS
t00eZ8GmfrKt5ZzkaIHfFZTsWpWxbiNLERKYBW7odZHYkMiOWVwWgfbopH0sXiY7T4YsbKpd
DwSij7sC7VL/bIm7nbFd9Vq32z3Q/RfvDUoO4/39/vh8fX02bfjY09Pl5fJ2+365N2egxnGY
jlTcr48vt+fR/Tb6fH2+3h9fUNMP2fXSDvGpOTXw39c/Pl/fLpWvdS3PRkjwsqUzUdRzNaF9
Xqd/+aN8q0n0+OPxCdheny4DVWq/t5yQ50sAlrqrhI/zrV2bYMHgRwWLX6/3r5f3q9aQVh7J
FF3u/3t7+yYr/ev/Lm//PeLff1w+yw+7llrM16YNRP2pf5lZPWruMIog5eXt+ddIjhAcW9zV
v+UvV3P6qZM9g0rLf3m/veB8+HCkfcTZmvISU0A53MknlmT31rOs8mPZyPHs9fPb7fpZPd+i
t0J9IFYsypGjzmkTM4sx/5an/gn+oRTFLQ+ZdrCAJTuGcStpkS7isFiLhFE3vQexrBQJlfPN
x/dvl7vigNAo6I6Jg5/B2sVCGQJKXWkaHpb4RS0QkB1tfEM5Q+JxGz01bFVfBmjth5uJtmfs
QzRBwlVQlIa3Y3xZWGNoA52lcRCQd9yYh5ToI1UqOiTu1Aj/XpN6rlt7DHQEjgY1zqMPgeWN
N/p3luoCZ0GGOlCiZNWuoDvFkukuf2F5C72LA2/LLa9k0EdS6LeiIX2bGvpBwNA9VMNGtTC+
43QDRYsPf+A+DtLJ4agIzA0jRhaFYap6wZW2EnUm6qZWU2v1X29/c19urYmhtBJBbV16+XJ5
u+Dq9RlWzGf1uM1d9ayOGYtkpSrYkNQGDImFtsP8y4/160TcMengeqbGkFMw4wpKQQSfO7OJ
pbUQJP3x6TyTmS3rmRVR3yoriOu5/nJMVxAx7bJOxUQ15xISRf2aYFzvnjqKj058iFP+oLUG
EAMxGU9XqPsLPMsbC+Vj8g59uM00f+0KPXfp2tXxbyy9VAWDscaERha0dIkjemrKD7jhdOVQ
l0/Kd3h97a2nKyMxNRusCv1M7YWoTtQmqQoId71ajM3Z20EOQ4zW3JxEwiMQ5A+WuS1uP9+o
4JjSpEnT/1YUqOvG1yorUlc2sqKjO8HutakS0FQtY9TGGrys8l+1b+nKvqQieALDt9eMWjcN
1jgOStxsWYpPvtU8pQY6TVl2hATj8Wq+onoc95IAXyq3vJPFZCz/0wq+mLUMkNNaNfqs4m/r
VZVG0+jFrkx4tpht+iui0UXK5sF4sIkpI4VKY8Nj1dNNRWMJN0mdYVAlvKDseH0aSXCUPD5f
pOHWSJjv4ZuPwOlLRrg38+2QMkiYZj5DMrTKU3Ik95JAU+dL+rnaR1Uwc5X3LRZ7p4ajsmdL
mBAZbOzHHaVAjLeloeyqU6uK/Cq+scrUUBrjKy8rNzzyQAoU5tCXbB4XsgU2ZywO/GiKZ5kE
MlHukHnlTinyAW1QU5/69PD9dr/8eLs9kXd7Pr5vNB/FKAeKXuIq0x/f35+JC/AkFNoRXBKk
Upa665NgqyXrPqpl3s5DXAHwPNBUDKbY6+cTHAmVC7YKgMr8Jn693y/fR/HryP16/fE7Gt89
Xb/A+CLiM+JiloSlF4fowb+36LLvcIiGlOKmX482ZxsCrnzOvN0ePz/dvhsJ2/q4ij1SW5aa
BOUhO4TMszr+Fsmf27fL5f3pEWbNw+2NP/RKrKydXsJonevDkbtufV1D35pAyqkMsxab3iea
w/MHRalsS/8nLGxN2sMk+PDz8QWqbrZnm4rE1ebOWlOO4vpyff3H1j71nV7uHsnqUYlbm89/
NfbaywsMjJBvU/+hvROr/hztbsD4etNuoCsIDjB542E0jjw/ZJrXRYUp8VM8nTDjyZ3Ggv4O
BBxB6J5WONsAex9y4vrG8/7TpaZqxATs2gGEAz+i1kS/yNzOMNn/5/50e60nfv/hU8VcMs8t
/2L6K60a2goGBwzqjFkz6HbSNbEfN6wDHEePEdchtmcHKocRbbiDLEG7aoYki+ZakOqanmar
9dJhRJYinM/Jtxo13jw/7mUJAMwg+L+jhxwKYQdJKQMgrmbC8ZLiuN2qUlRHK90NSdaNBjS6
aRehoPgarBcqEvED6lfKSt+skGurbzh3UCWsft0KMk2PVX5V4NRrWaYqizj1XITVZDLHrmhy
XrQaN1NP3UgIXhFo3nNrgul2TZKXU4vWZhOyiX7bDJQZ6X9yE7ow/EzHeSpV92nosakaEMxj
juZdNmSpZ0QkkSTKsFEiuoGibMn/Z+3ZlhvHdXzfr0j1025VTx3fY29VP9ASbautW+viOHlR
uRN3xzVJnE2cM9Pn6xcgJZkgIc+crX3oShsAKV5BgMSlqL87xBs17k5qm/vEelgB3OzMLdb7
ijkYWNdkbziw/ZHF9Wg87kpIC9jJxC4w7crSBbjZeMwbWmocb/YYbT2YLTbX+tabDCibyov1
dNjnGAJi5oLmcPk/PIO0S+66N+tnZG1eD6izOUAmvUkVLDCPK4boDkPJRSwEutlsa9YUKHMl
kvFapzx1YdMphaF+r24DavB50csMxIABgrm7BA/TpvVpXb6Y4cJfplZVMt7IMEkl7P2iK7b6
antt7oWw8AajazI8CsSquQpDEsXDQaUNmQ3Fc4sB2/kV46XDEWuJHaWDyWBGexmL8npqZiNR
tkwbPG1b/y5q56TudQN+IM8EG/KVMxzApv2lTqZHm5T76rCPEt91UdTZ1/mPF6r23rRv1KVg
eV/HKG9rOadW52vaLCb9Hm1ULUZum8Xw7z4HLt6OL6cr+fJgXtYCi8tk7olQMnUaJWrN5fUJ
BE+yEVeRN6pjobcKTEulhbLH/bMKEKLtIemTWREKON5WdWQabnMqCnmX1CTmsSAnJvfXv+kB
4Xn51NwGgfhGc8OBznjdo+kics/vzm+OjQgyDAGeL1PTzj1Pc/Pn5q7JWd7c49ijoM1EDw+N
mSg+onmgbhxfTCWEJzCnL8rrkcnrrmulNU+bcm6lLpIID4VVIY+rx7F+bdUrDxbhTi8dnmeP
e9RAEzNUs1IzIEajiUU6ng3ZFeKPyb0//p5NLEEhTTDKqQnJR6OBGbNhMhiaRvbA38Z9ygLH
0wENZuKlo2vWLQF2N3xsPL4mxlK4oxt/u/YJ+sLAteYFDx/Pz79q5ZDu3Vpx88soIoGWbZyW
9zj5xaFshVbyvEuaUAcw3//Px/7l/lf7cP4v9Aj2/fwfaRg2lyf6+lJdxu1Ox7d/+If309vh
+wfaDJhL8iKd9k143L3vfwuBbP9wFR6Pr1f/Cd/5r6sfbTvejXaYdf+7Jc/hfy/2kKz8n7/e
ju/3x9c9jG3D5Vq+tOyT2LbqtxO6eCvyAcgAvKSXlsOeqZfVAHaDLm+zRIurPApdUWx0sRwO
ej1uZbod04xrv3s6PRosvYG+na6y3Wl/FR1fDieb2y/kyHLRMOWJYa/PagU1amA2j/2SgTQb
p5v28Xx4OJx+ufMjosGQHs7+qmBzeKx8lNIMSREAA+I8sCrygXnbr3/TaVoVJeUjeXBtydcE
NbAenptO2h3S7AI20Am99J/3u/ePt/3zHk7wDxggMhHzKKiXIGdxv03y6bXpEthAaD/W0XZi
Hq3xpgq8aDSYmEVNqLVaAQPLeKKWMdHtTQSzvsM8mvj5tgt+qUwVDAn7vTBaOiCAioP8zsgt
/le/yofsKhF+ue336K2GCHEFs1MMKNh7/OWpSP18NmQ3hULNTL4i8uvhwBR25qv+tck08Lcp
MHkR0E/7FGCegfB7SFMiexiShX0LBcRkbNS1TAci7VEHJQ2DzvZ6iw7ZSkkdeTiY9frGozzF
mA59CtI3X76/5qI/6JsOU2nWI3FXmtraQOmGSpSNe7xOE25gAkcdMTyBQwFj67AQqZF82q84
Ef0hO6JJWsDMG81OoV+DXg0zOES/z5rlI8K8uwH9ezikFxywMcpNkPMijJcPR6b1ggKYPrnN
MBYwBcSZVQGmFuDaLAqA0Xho9K3Mx/3pgLzIbrw47BxTjWRf5TcyCic9eo+iYdcddYWg/3Fb
7A6mAEa8b3IMyhG0VfLu58v+pO8wmNNlPZ2ZcUfUb3LaiHVvNuvQpOurr0gs465LILEENkRj
qg3HA9N4o+aBqhJeLmjqt9HNFIOSN9ZXyjyC8twGmUWw3npdcNu4lB1GPcAfT6fD69P+T6JN
KN2nJDoWIayPw/unw4szN8YBwOAVQRMH5uo3NG18eQDh/GVvHgH4/VWm7Qrqe9UO8Rrd07Ks
TIuOS1mM1hImSWqgqSCPMRe4b7Td4BtbH2EvICopR+Pdy8+PJ/j/6/H9oGx2mQH5O+RE8H09
nuDQPJg2zmc9zMpd2KpesN/MiIGgWo2I7gWKFeH/CCD8okhDWyLsaBDbWBgkKhCFUTrrO8ym
o2ZdWislb/t3FByYfT9Pe5NeZMQymkfpgN5X4G9LTw1XwKjMB7g0HxIBMzVHLvBSND6hV8CY
Y63zyjgNgVsQ9hPl4857PEANueeimm0oEz6HmWjDPtKtYjyidyyrdNCbcA28SwWIIIY2XwNs
buEM/Flee0EzZHZp28h6Co9/Hp5RkMZF/3B417blzoQqSYMGYAt8THgdFLLamKt33idSVKr9
CBppZIEm7eZ1Z54tesYBkW9n9jG9nY1ZGRBLEi90PBaHPTYezSYcD8Pe1h3Hi73//zUY14x1
//yKSj7dNec1F25nvUm/Q0lUyI7QfkUE8ibneq8QxlVOAQyVClEKMuDjVHPtbWqKzeAv8AN2
TEABgV9QgHbKLqRHwbhI0sRcKAgtkiS06GS2cD5ZUf9YVRKDY9FYT5tI1hbearzhZ51l0n3w
RtICBMjRlBZfiLUk5Y+7tweueIDUoGyMTequ53WkpTHeiBEo/NBHoDljCOwOcYTY9iGGWRE1
Hu066Xf0I439oe6YsYit4xjYhVQgSdZfFpAq/OLU+jgwmKmXmhF5FTTNfLtu9QbheiJl367u
Hw+vbtoawKB5oSGFZlG1NP1EawCexVWcfenb8M0gcok3Qw5WBWb+TAq341MLGLqAfTT2ouve
cFqF/Yp4xjb2TOGAwmvL0sArzLC7wsdwBYSwGWSUyoz+hzkaJhBKAOXeYkn3dCpA5FMpQGEn
emlJbhPs8W+HPxXeut57TT/QTwXEGC8YUBEZfVOgQOIVZjLXNsS8cik1vDGMg+UvMO3SplAn
hJUJrt+GzBnTeB1xYXnDzJwmsAOuayjm8m3CPurDd3V7lX98f1cWTuf1WrsxV4A2bhTOwDqL
M0Ej2InRphIALCNEcjsRimh7bCQ0Jgdg6yQWCB3UjTjvv7pQnCs0z38IDf+sjjRxPnCiKFho
7IGf+bSfOD1VLgrBgHVPnKZAHzvjNSBNHSEFjpws402mTCp36BtMHqDls92CFivCjiQdSIWc
NIi20+hbR+4EPfVbGZIFQPuqlrkanK4Z1xRkxhGebkU1mMZRtcpNzkhQOONO34CZp535E1ST
RZquklhWkR9NJqwoh2SJJ8MEH9gyn4aFQaTecWspo7m4VUkOWGmFbiijCrTMg3Z2vNfPncMk
3b9hJCglDT7rG3b3XEHm7mGw/Yi4oNfgESj5gOmwSAaC8Z9/8kU5h2uFiWKb2PoAwfl5eaEB
eSrbrzejd6HTLScTBhuHWR9Z/GbUmJJXN5mVfqrDvTH2syQwdngNUAbgMoPDwOvCmWZkVqkm
utCn7weMsPr58Y/6P/98edD/+9T9vdYM3xyc1umyOXKFmTkdfc4ZQLXWrpuNaLpxf7bCHQWi
qUbuC4camVniJYUhzdRZDiuJludGAeVrIRcgWzbnzerm6vS2u1dKoL2Y88IsWkTo51JgLATC
Ds4IdNsn0R0Qpd5Q+accwOZJmQEX9FxjZ5eICfRrYBcg4BOrP8UeipULoXE2WuiSpc1ZaJSX
XL0FV2+TBeX8TuUOufHqmS75oE9ESoSfKgkArqk48dnsrkCi0zNZ5qYGYlXOWbidwQRRIKRE
FmQuLX9aACYeecQtJNc2lXQApKGtEsrsK03XlD8q0SpoeT0bmCkiAEh7hpDa6Yq7AXVM1lPY
N2lKFmyQ8PG68jCI+LgI6i4T/h/rBPDnh6GkjLtyY0WJ7c/TXKxRhVCbFRwwtLE6vkxjdU94
K4m+W34dPplcewi8iilgV+QooOfsTSzikjzAtMyGYC23qCSb7KeBVHN0matomvgA/ZQATK50
0GQercRuO/BQFwg/2W2KegMBb0CgLW4ZkJ1M6IyYlwGsJhBwgmUsipImWc91dCpzbHw3YFU7
lQrTqN7n3SYuxLiKcJ51EKzAE92ek9/KpOh40yyLZJGPKjYcikZWVNdHBl51uGYlMCyhuLXQ
dQSK+0caxXiRq2XErsWaWss+7/uPh+PVD1iKzkpUpp3melGAtWVVhjDUdAqiOylwKjC+VRIH
vN2mogFlPfQzaSyWtcxi86vWmVlEKR0zBTgveP5WDCi2oigyt2CAbHbCX8KtyqUswjk7f3BA
L/zKyyQJ0tJqr8tgKeIi0INwxus/53lvpDF3GtrvBLmO6aZjpRkjkWQYQMxZQ1Ltv65V9HWx
AFWrA1nOA1Ud9+qdicicBv0bw/gTlTmJnArOayIvuoIhxLJAZ1Wzn0wbYjNgI/xoHAG/fDq8
H6fT8ey3/icT7cHMqjU4Gl7Tgi3muhtDny4JbsqG+LBIBh0VT8eXKr7mx4cQTfjXXYuIM9iw
SDqbSA2gLRy/Vywi7r3aIpl0fn3WgZkNu8rMxr3OFs86btEp0YhzlaDtMh+3ERPkCa66atrR
qP7AtEmxUX2KUjEJ+fr7PHhg97hB8LcwJgUX/M7Ej/kvTrq+yL2cmfhZV0HWO4QQjDqLdi2x
dRJMq8wupqCcgoxIFRcviURsl0KEJzGTVueYahIQCcuMv+9pibIExAjBafwtyW0WhGHgcc1Y
ChmyF8gtQSblmk4cgkE3DomnY4uIy6BwwWocSMrRBgMy2DpQ6cZI48piMWU77od8sOMyDjxe
twmS6uabeTASGVmbe+/vP97wFc+JfrqWt+QgxN9VJr+VoN1XjDjUHEsyywM4ckDYgxIZ+qEz
LavFWulzn6n8FUjPMrsgJebSK7W4G8lcXRIXWeDxzv8N7UUke0qrmDgrkfkyhpaWKopmequD
29neHQ4Z+7kFaAgoOmtlvEPdFyjoYDURTOtKhimrljRRBc5DIcizRPTlE5pGPxz/ePn8a/e8
+/x03D28Hl4+v+9+7KGew8NnTNnxE2f/8/fXH5/0gljv3172T1ePu7eHvXrzPi8MrYCqxH9X
h5cD2j8e/rWrDbIbQcZT8pqKuLcRGeyKoHCT3LBUmKXYvBcAEIwFaFJxQu/mDRRMRVM7O5gW
KX6imw49dXFqjQREF4kXwCE6aRu9mh+uBt092q3Lhb1BzyIjbKCkuRfw3n69no5X98e3/dXx
7epx//RqmvxrYujeksTwIOCBC5fCZ4Euab72gnRlPh5ZCLfIiuRaNIAuaWZqxWcYS9iKsU7D
O1siuhq/TlOXep2mbg1eEjGkwPrFkqm3hrsF6Gs2pW5Dd6gY0Q7VctEfTKMydBBxGfJAGmJI
w1P1l9VYFF79YRZFWawkjYtdY+yYLBTbek9r9fnj+9Ph/rff97+u7tV6/vm2e3385SzjLBfM
l3wuqkrzHc9z2iw9311/oO75uXBXccQNFjDejRyMxzThib6s/zg9os3X/e60f7iSL6o/aAv3
x+H0eCXe34/3B4Xyd6ed00HPi9z5ZWDeCs5hMeilSXiL1sDMZl0GmHKDaXyDwhdXLppq03P5
Ldgww7QSwAY3zczNlRfO8/HBjFjYNHLujr23mLswep/QQnn9uW6GW02Y3TDVJAv+la1d9nPW
uVZjt8x2AznlJhMpN7CYYb4ouahSTbMxMEUzdKvd+2PXyEXCHboVB9xyg7zRlI0h4/795H4h
84YDZnoQzHRtu13x0c9r/DwUazlw50TD3UGE7xT9nh8s3NXOng7GOrebFvmcFtYi3a0RBbCG
1YOw2/8s8vums4ABNh0nzuDBeMK0CRBD1qau2Vsr0XdZDWzo8YQDj/vMubsSQxcYMbACpJV5
4p6jxTLrz9yKb1L9OS1dHF4fyUtDy0NybgNIzLN5abuJuJyzQREafOaNmIrnYXLTHTKzXlIC
w2IG3ONQS4EKjOMgbmBZP5Uz2p0cX7pre6H+unxjJe4YqSoXYS4G7tpqOLxbgLw8tcAs1eE5
7AUxcuddcodocZPYI6xXwPH5FS1nqbDf9H5BY2s3nPguYb4wZbM5t0W4eQfo6gJ7vsuLNpdH
tnt5OD5fxR/P3/dvjVso12hMAVp5KSdZ+tl82UTHZzA1A3bED4UTl1enIoKDrrszSOF892uA
Ko5EC6301sGi0Fhxcn2D4EXtFtspu7cUmRXQ3EXDxtjwNiI2MeoP3d1vyeqURMkcH7yZxYVq
srvpsKOYztTWi54O3992oIe9HT9OhxfmqA2Dec3NGLjmRi6iPtbc5BkuDYvTm9so7iz8lujS
0CoqVhR16ThOhfDmZAXZOriTX2aXSC5198IJfe7MWWC93NiOo3B1wzBgnRbMEyJykjuzNDUX
QGMwmbt9MYkv12Q9uHIkX92tRfDqlowbdkJF7U67KPSDelWsQv8LrIe/JEc/pJq6N5r+vSHj
uJ9JKdQ2BMILbM6kT9cey7/oIKm45jyRKCI7wpOD5VTAMxaXWm/kKn5I4XmcmF9jKv8CN1N2
JwFw7S1bsUZVXhyPx1YkYuMbYhOUUXUXpJe/461kmJtmHgbOzgBjoHKxkFsSNYv0D4RGFqNy
qeWSPQhxUKMwQePt5ZaNm5TfRpHEG1t13YvJgc4fMZBpOQ9rmrycU7LtuDerPJnV9gSytt84
E8CiyqcqHwhisQ6O4rrJGNWBxesLLGz2Ey0opF+lUpttoH1FY9Pgyk3oJ/5DXQO8q7jkGIdc
+4TcP+7vfz+8/DQMydRbbVVkZV5fjWfEHsTF518+Gemba7zcFpkwx6br5juJfZHd2t/jqXXV
cJphlvi84Ikbk4i/0emmT/MgxjbAPMXFojm1w87jOgxiKbJKvdWbthTCMp2Zw9aSmA/JWDLq
Ol+ZFHDYxkocFKXYS28xOUxk3ceZJKGMO7CxLKqyCMzXdS/JfGIanCHXjctoDm04g/WLh2m+
35quYyarhGS4Uh1BAxcvSrfeaqnMhzK5sCjwnn2BGk9tTBbQUNl1HbDnQCKOk0K/uZwpMJRw
Jr2iSin/8NAMtyCahtefUApXtfeqoCgrWsq+aADA5WDONQlwBjm/5Z/KCAl/L6AIRHajFRer
JKyPrnonHdVZeovHveGCTONeuHjGPYO+XzHmp/SDwpW3NFhNHt47C4YENoifRMZQnlF3KFqB
jEx1tjstHVpQUOHUJ6i/JkJ9ycFHLPWIpUa1jSFXYI5+e4dg+3e1nZKrlxqqzNZT/pm5JglE
h+1FjRdsQo0zsljB/nWagzle3EbOva9MIzvuxs+dr5Z3pvOVgZgDYsBiwjszWKmB2N510Ccd
8BELr7Vti0GZb6It6wCddSPCqiBCxFZkmbjV7Mg89fPEC4D7KBadkayTwMGA95nm3xqkkkcS
nohwEqtV5aE1DTFjCQddrhHAwokxs8KpHKkiVfqlbYmmMpv5flYV1WQ0N1/7EQNjFIoMjbRX
SldnGHEuizJ1G9XiCzjb/OQmvkCikpIiepE0tvp/RaW9zWwSlYg1kynT3jpdG+1enMQNpZVr
EbEtKiWep4jKpENdnykMxrMyxmIjZQYnpUI54pW//7H7eDqhr/Dp8PPj+PF+9axfXHdv+90V
Bt76b0PXh1pQz6qi+S3svS/9iYNB5zzoBloZ9nsGQ2/wOd4Yq9L8AWHSnev6a9oo4AxZKInp
JeGpJHsgiEY4c1M6YlqrtXxcm7ldhnZ2PlgfkcjXmBZVPZUTTJXROfpmSidhMqe/mOMmDmtL
0abO8K4qBHE1C7JveHHAqQpRGsDBZHw/iMhv+LEwPaXRHSXDl60iIywE2ErDqjZ+bnC8BrqU
BarCycIXjOsgltGqsikcLRJY8OcMGCZ0+qcpDSkQWjvA8Gj793Y24MAIA45XpOizQhTeFlVq
S/ZqEZb5SpniWERqGm8ESQZToLjOzI/ScGorfGJF6wjh1D6k0V0U9PXt8HL6XYcCeN6//3TN
iZSAv1ZjaE59DcbUjqyVi6c9XkC4XYYgsYft6/51J8W3MpDFl1G7gmr9zqlhdG4F5m1rmuLL
UHSkab6NRRR4F9zHCUVnJNDbaJ6gXiuzDMjNnOqqGPwD1WSe5CSyaucIt9fzh6f9b6fDc61j
vSvSew1/c+dDf6u+KnVgsIf80pPEGtnAqjXLj8CZyL8R2YKXsJY+cAovC1L2cbe++o1KXJgr
aTIklfWugopjfV1lWE1BbSBFoFNYR7q0TApfJ3/JeUO6lUS3b7Rhh/3DciPdO9CclSN3FOSR
KDxDgrAxqqVVEoe39iDDuYzOWGWsCyhWXg3Np1O1kW8woarudJoEzRYlg1HD+Q/cSLFWQeAt
j/O/vV7+w8zqU+99f/+/lR3Lbts48FeCnnaBRZAugt56kGXZVm1LikhFyV4MbxsERZFs0DhA
P3/nQUlDciinN5sckRQ1nBfn8e/bI9VsLJ9fTz/fnlxd9uHAZWj5MfdGxsSLxtFlir/z56tf
HzUojmjXR3DR7ga9EbGqxIcPwcubGHFXhvhefwg+bQyGfjYESTErSTQYB3T+aZLX0MfbAprL
deB/NaR0IOsLk2EAclVa5PmZdNuhvuAv5upowrYFlqfxS3RTO4rnO9erLIKBMDoiHDBYzxTv
gXyDQFKek9scn0fFodz5iWHfhVD+bmMci7RScqtbsPRMHAfzCnsgByjuLCZhTnj18YAIGJU4
9ocB+TwRr0bdcB5NXaXsaNMsQI/0OtYM0tbLzGYpFXGS4gm4v4vxvddqe432JLvs9p5Vm1tm
q1nxuPXiSxE45UxUeNct+GYuhRPuY4JsswPSFK966EkTX3Lm7AzHAU0zA6NYus6iWjLfOL9x
t/u4ANnQE7eQR40vbo1d7UJpbNarXbZWiNE07zvWWLa283NpeB3JreKKKOSuKsgoN3IgHhbB
a9saHXC/eHKpQ1NmHKgPG5XAZR5RCjqomAi//SCqsdsv98a3iLI39SzGNaEcW9UTXQKNPIjr
pDHm/HEnIhFg14YzuTjlEoAu6v9eXv+6wCTQby/MJDfH50cp2cJCcvQHrj2N3WvGSNOumLLj
cCcpHJ39fDVqM3W+RQOBq84gBIt6ZeNOT37FOhV7CUhzKMiRBnarvJKIhpMdNh1suQUdUT31
/Q3IKSDtLGud5hGn4HnUbzK/zxymADLKtzcUTCR5985+cA/Ljb58S22D48DkYa2MHR41/FLb
omjOkPW2KPa+9yxfZ6Bz5MTk/nh9+f6MDpPwvk9vp4dfD/Dj4fT18vLyT3HTgUHENC6VdI7U
zKatb2XMsFCpsKPNeh6igt0Pli1nwO0Izz2a1Tpb3MkbFnc+XEHQiA/r4H3PPcAY6r7JpLHN
zdQbLwiTW2lhgZEC25ZFE1NB15GkgpmtUSUzuyL1NFfMLkfdWGNetCQ4dRg4HWRNm14y0q1N
vko8lJslj9lnpY1zH/wOxoyKPCZ2QFvKwHNG1QiYYpD1gfQSjIjoKnQkg5PCFwYKQ2Z+P8/P
PZVV0M4fLN99O56OFyjYfcU7wEgJxfvEeOIGm9NiwDpEmoGjyVxZKK5UBxKkQBnHTKqlc/rz
SE9imeGKclCKi8qC5hHHjLd5p5EmdxbzTjmgeXdIvGKAMpMGC49QyZVILPRA5ONJIJA+E2MJ
IGT+pAuPrOrvj8FcbaoUH/YWN2bGWkKvQ3FbhzXhLsgbZa0nU/T3N6AyN07bbQNbNy5/A8xu
x3KjLYYsZ4KsQGuV39taKFIVZdSFBQkGTMg+quvzvfAyzUaHGQxEYRYWpfPQl3aDtsxQ9HLd
e3b0aQu8XA5AMIMAfTWEJANBOEjuHuRRhDWQVk3Z/IIl8qy5T/3JphhWq6OSIQTvXcnj3oMK
5hJZRvsjhnJ6temleuuYK9qK1deK5ht0nXAiB6gYboc39uQqdpDiZ/SYPh8rUkF9yD/SAPBa
II2t5kDcBiggnsgzvu5k1+oBy9OPOXxyOGMiXDAViP9wjJIdo57gf7AFsBT4zkDtyE0mjOIb
2p3bAVY9pAcSNysjOKD1LGBHVcaVujXCl6WCkzUDsEEHF5c2WxMGeMMYzUfNaRJ3R+w8LIC2
bPZZq2miEt9HuPC4FXh/iteR+O5yknWOFU7dnqzSVHj4uDZr8eoxzRLEas4Ci6NI1vI0pMkw
m6OasGVScik7V+msacXoyn38+fTpWjfnOMmuXNL9prn/Z1GriQdL1AAGwlMuw2Lwn66BCmLA
ZypIrQbFEpOsSyLmmtATaWswBdrB4C85tA80whxsmHsvgmewptQi6wOowi5uZYJv0c2Zvgq7
v77Tl2WsbgGfIPA4p64QBZQt9Qmgg+7/1+zSRGxM5evhR5Z3TPbh9YTSL+qCOdYhPj56ifS3
XVVqn021bXgZlJr9OQNIvSIGmR5PiAuF5fxis1Bs8lbWssrKndn5F6LYxkbCtC0yGPBM3DkO
uEIt5V1jDQbuuXO7BQoUmWcMEGYgTEx0Gs87FOF10gMCCPFYVlQp8kIFBDIRExo/kFpHmSja
mu8u/wfdPICnZvcBAA==

--IS0zKkzwUGydFO0o--
