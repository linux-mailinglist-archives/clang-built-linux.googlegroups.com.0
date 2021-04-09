Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBPFUYCBQMGQEHUUBYPI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3f.google.com (mail-oo1-xc3f.google.com [IPv6:2607:f8b0:4864:20::c3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 987B53598E1
	for <lists+clang-built-linux@lfdr.de>; Fri,  9 Apr 2021 11:11:25 +0200 (CEST)
Received: by mail-oo1-xc3f.google.com with SMTP id z19sf2237479oot.3
        for <lists+clang-built-linux@lfdr.de>; Fri, 09 Apr 2021 02:11:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617959484; cv=pass;
        d=google.com; s=arc-20160816;
        b=HwJREkfyoy6QMDs3I3uybX/fWH7lBysRN5KsnsHRbI/UvkXCHbhQx6u0qjTUhla5s9
         86Z5y+tuTdLnMyrytFG0t8J5Gf1s0r5dMUzizue/3rieAXSJ9H3bjdVGFf226e4VPEcu
         m01aqFGAtuRPx6O7nA+YqHNhfaGRfXWaB/wLvvre3Ux4FSC8FNU42B6c2W0o1814sGNu
         2AaR3V8Rm5LJ4BxHnH9h6hC3kqFMZMzi4oIMxin2Z2RxFW/ayqloYy31UO1R800tHqZ/
         k4HKhqLquYvf/fbsjIMfrYFwGg5BcHT+hwQrVqQt0lgfNHqQDCeO3o6BvhoJYZN4rDVX
         P1tQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=KfdYt5oQ8YjkzNat1mrT7nxJ4QrdHlZMmEm48npJYCA=;
        b=DU9nv1im2awrtFwHByEj+b8miIP5pMxtBAJl0ycFqjyP7IF3sRr3EcXpwSNffTNw9U
         oFrF5k+8qlJdFLCsqNolLchOZ8ID9DggBskhvaaTqzdO9YThhLjQ9kQndR/s00lOTBIW
         M3dtck/XACsnLD7N/MAonfS2qsm83PqQdmjSQTvXnaUzsySPhe/mS84dUNhbJFkIy36H
         /zL764Jf/0XUV27S5nAfH9c+FykDzRmiG90SSHJj6h9eRIqW/3me0XJYufnTBV25Aqx8
         YTIcnWngy7dyr2lI5oqYB7BoSBg/RJmzR/y1v1rk1QIP8u2tAPl6rrynUAfWRE8Ckb+Z
         UdGA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=KfdYt5oQ8YjkzNat1mrT7nxJ4QrdHlZMmEm48npJYCA=;
        b=QJ/q+clMGvil8wVi7UP5iGH+jOkfFWRP4ecLmeP8pIQjINbxR/32z5AO12wKQhCPsy
         0QOBfNosAgFrEtETRjLiUjW5+P+5TDT7RbSWtYBYDMbOSvFDPN+8UkK/+jzlkaW1VGek
         pRzJzTWUqXNNOxyTJpwYRdxrb6ploo0re+8iYayLDybIT1GEJHm+JTLhrmiQEwui9ksl
         S6VbhfRd6vfYnUfG2TAuozpl+KD32U415+S3p4QCNN6dlWvww5AAgVJFjgDGrqpzZ4cr
         bHPpiCt9acc1hc7TegFRXqJV3ft1yBC1Z43T2bDXnoGeGt13uCrtEkkJ/BEAkLcXoFDX
         5KIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=KfdYt5oQ8YjkzNat1mrT7nxJ4QrdHlZMmEm48npJYCA=;
        b=UNx9vWjRD+56PnVU9dWU8J2pPGztBDZ0oEnvzS/2xGHeVZxrE/BMFMjClbegXWv14C
         eYG7NcwXcUMCefbIdLs2Orw1joAMSlMoZWou3I6yjmmPzFRG5OTgsxsZT0+j3a7qndHg
         Iu9Bc0rdUqrR6vyqBk6aLKs963a4F14H7xpt3k92PK3n0gQWYiJV8ZRJKGO0yjxzg2lU
         t8sSnsFqNGshu3Ml1mOKQWxdLRI9rOfogzXkg/k2N/5OQWMhic3hTMelk1KbUHYO77er
         sI4sLtkRzFpB1Lkph1sUC2C5vTpeJo7cQeqJ5O0IbjPYgOG6TpxSETXhcVkkqA9T5O4c
         c6nw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532iZ/AsnYcO7L0HxW29rLI6/FPvR2pC02hY3wMLAuSZHX7iG8Oy
	irdfvEiODuaTHGWsf7YwlSU=
X-Google-Smtp-Source: ABdhPJza9YarCPHmi3XILFDP6ymzIR5KPY4jor+J3qhMFOtZEjmDcBuKC7gIGlcgz8VAdghhgBLwdA==
X-Received: by 2002:a9d:387:: with SMTP id f7mr10824518otf.315.1617959484138;
        Fri, 09 Apr 2021 02:11:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:7dd2:: with SMTP id k18ls2034888otn.5.gmail; Fri, 09 Apr
 2021 02:11:23 -0700 (PDT)
X-Received: by 2002:a9d:7ccf:: with SMTP id r15mr11077706otn.108.1617959483462;
        Fri, 09 Apr 2021 02:11:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617959483; cv=none;
        d=google.com; s=arc-20160816;
        b=UrriD6bwk1JqUEQH1bTfrTQ+77KRvFOBLG20tHviAdWa2n4dxMlpC7LN9hFWvP6ZOw
         0uUXOpbPOQj5ixczsoaaFASNGZ1y+zaYiSOXksUd3rmfQRXDPFReuXdqqOojYOY4Iqr/
         qrBMnjvbAnLIn6Tu4OpbHrUmfymzN1Z5cpDVK2+oZwD00KrcyLNNbuMVgqqgLnNn6THb
         usqaNvakG8u022TmyN9WxuPKVZof75zIun7YdkXZ5eCoNORemYM84EJ9JPG9GwLW2zJS
         8gzB0sxYp3AF8S3ydS4o+neZ6o5sTZ5BH3IJnYKI2+Iufjrkv5N5hP5++ySU5FsQvlno
         aHWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=+zSaBbOE6JIWMsOn4smH3QoWBlB2dKAwy83oIoV4v1Q=;
        b=uKqpYZQ7AUCS5XCTAJxtRgmfHGywzn1jnxLcw3WCsa8VUn+9uP2DLNkh3nJ2Y0L9f5
         G1cv2Af3EZjHqevnrU6WDM8qpJv0/Tq2bphuRP5WyayBq7hTcnB4g4MyaCFzetIhK59b
         kDjC1PAkS9A8ltKA8zcOl/XsqGyQI8CI7xjRdgfj0otA9KlovgwhgLAGJToa8R/u7thi
         80HZWJBLHnJN+Ncp3GSQPbI1RmhNRjjrVLXZrF9JF+dDNMQULnX8QTlR/DA/Nt8kHd5m
         ijglJxOmXalzmtwV+b0t4h/ZwDESawCYraHNkVA+J4I6iXZU6CYdz6ZQGb1zaITNMVcy
         RVzg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga18.intel.com (mga18.intel.com. [134.134.136.126])
        by gmr-mx.google.com with ESMTPS id w16si158388oov.0.2021.04.09.02.11.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Apr 2021 02:11:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) client-ip=134.134.136.126;
IronPort-SDR: ZG+mL2txhriKRPb4Krr1640zSkn+6B10JoE30CaNWNl1OZh2cQ9gF9LH3zRlZv4dD+R8SWGapv
 CDjLvTt6p6ng==
X-IronPort-AV: E=McAfee;i="6000,8403,9948"; a="181258324"
X-IronPort-AV: E=Sophos;i="5.82,209,1613462400"; 
   d="gz'50?scan'50,208,50";a="181258324"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Apr 2021 02:11:20 -0700
IronPort-SDR: XzIWsP/aA0hnnauhl42iKKId2C533Rd0EpmwDj3Qaw+LGA3gA/OLwrHEPwgnbtdutrHMFs19YU
 ZdySum0Vu7qQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,209,1613462400"; 
   d="gz'50?scan'50,208,50";a="416186155"
Received: from lkp-server01.sh.intel.com (HELO 69d8fcc516b7) ([10.239.97.150])
  by fmsmga008.fm.intel.com with ESMTP; 09 Apr 2021 02:11:16 -0700
Received: from kbuild by 69d8fcc516b7 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lUnAZ-000GR4-JB; Fri, 09 Apr 2021 09:11:15 +0000
Date: Fri, 9 Apr 2021 17:11:04 +0800
From: kernel test robot <lkp@intel.com>
To: Alex Deucher <alexander.deucher@amd.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org, Luben Tuikov <luben.tuikov@amd.com>
Subject: drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn30/display_rq_dlg_calc_30.c:963:13:
 warning: stack frame size of 2144 bytes in function
 'dml_rq_dlg_get_dlg_params'
Message-ID: <202104091759.TmmG956N-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="y0ulUmNC+osPPQO6"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted
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


--y0ulUmNC+osPPQO6
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Alex,

First bad commit (maybe != root cause):

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   17e7124aad766b3f158943acb51467f86220afe9
commit: 20f2ffe504728612d7b0c34e4f8280e34251e704 drm/amdgpu: fold CONFIG_DRM_AMD_DC_DCN3* into CONFIG_DRM_AMD_DC_DCN (v3)
date:   5 months ago
config: powerpc-randconfig-r005-20210409 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project dd453a1389b6a7e6d9214b449d3c54981b1a89b6)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc cross compiling tool for clang build
        # apt-get install binutils-powerpc-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=20f2ffe504728612d7b0c34e4f8280e34251e704
        git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
        git fetch --no-tags linus master
        git checkout 20f2ffe504728612d7b0c34e4f8280e34251e704
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn30/display_rq_dlg_calc_30.c:963:13: warning: stack frame size of 2144 bytes in function 'dml_rq_dlg_get_dlg_params' [-Wframe-larger-than=]
   static void dml_rq_dlg_get_dlg_params(struct display_mode_lib *mode_lib,
               ^
   1 warning generated.


vim +/dml_rq_dlg_get_dlg_params +963 drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn30/display_rq_dlg_calc_30.c

6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21   960  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21   961  // Note: currently taken in as is.
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21   962  // Nice to decouple code from hw register implement and extract code that are repeated for luma and chroma.
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  @963  static void dml_rq_dlg_get_dlg_params(struct display_mode_lib *mode_lib,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21   964  	const display_e2e_pipe_params_st *e2e_pipe_param,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21   965  	const unsigned int num_pipes,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21   966  	const unsigned int pipe_idx,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21   967  	display_dlg_regs_st *disp_dlg_regs,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21   968  	display_ttu_regs_st *disp_ttu_regs,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21   969  	const display_rq_dlg_params_st rq_dlg_param,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21   970  	const display_dlg_sys_params_st dlg_sys_param,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21   971  	const bool cstate_en,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21   972  	const bool pstate_en,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21   973  	const bool vm_en,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21   974  	const bool ignore_viewport_pos,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21   975  	const bool immediate_flip_support)
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21   976  {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21   977  	const display_pipe_source_params_st *src = &e2e_pipe_param[pipe_idx].pipe.src;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21   978  	const display_pipe_dest_params_st *dst = &e2e_pipe_param[pipe_idx].pipe.dest;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21   979  	const display_output_params_st *dout = &e2e_pipe_param[pipe_idx].dout;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21   980  	const display_clocks_and_cfg_st *clks = &e2e_pipe_param[pipe_idx].clks_cfg;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21   981  	const scaler_ratio_depth_st *scl = &e2e_pipe_param[pipe_idx].pipe.scale_ratio_depth;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21   982  	const scaler_taps_st *taps = &e2e_pipe_param[pipe_idx].pipe.scale_taps;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21   983  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21   984  	// -------------------------
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21   985  	// Section 1.15.2.1: OTG dependent Params
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21   986  	// -------------------------
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21   987  	// Timing
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21   988  	unsigned int htotal = dst->htotal;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21   989  	//	unsigned int hblank_start = dst.hblank_start; // TODO: Remove
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21   990  	unsigned int hblank_end = dst->hblank_end;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21   991  	unsigned int vblank_start = dst->vblank_start;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21   992  	unsigned int vblank_end = dst->vblank_end;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21   993  	unsigned int min_vblank = mode_lib->ip.min_vblank_lines;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21   994  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21   995  	double dppclk_freq_in_mhz = clks->dppclk_mhz;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21   996  	double dispclk_freq_in_mhz = clks->dispclk_mhz;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21   997  	double refclk_freq_in_mhz = clks->refclk_mhz;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21   998  	double pclk_freq_in_mhz = dst->pixel_rate_mhz;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21   999  	bool interlaced = dst->interlaced;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1000  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1001  	double ref_freq_to_pix_freq = refclk_freq_in_mhz / pclk_freq_in_mhz;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1002  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1003  	double min_dcfclk_mhz = 0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1004  	double t_calc_us = 0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1005  	double min_ttu_vblank = 0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1006  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1007  	double min_dst_y_ttu_vblank = 0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1008  	unsigned int dlg_vblank_start = 0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1009  	bool dual_plane = 0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1010  	bool mode_422 = 0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1011  	unsigned int access_dir = 0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1012  	unsigned int vp_height_l = 0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1013  	unsigned int vp_width_l = 0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1014  	unsigned int vp_height_c = 0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1015  	unsigned int vp_width_c = 0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1016  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1017  	// Scaling
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1018  	unsigned int htaps_l = 0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1019  	unsigned int htaps_c = 0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1020  	double hratio_l = 0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1021  	double hratio_c = 0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1022  	double vratio_l = 0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1023  	double vratio_c = 0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1024  	bool scl_enable = 0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1025  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1026  	double line_time_in_us = 0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1027  	//	double vinit_l;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1028  	//	double vinit_c;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1029  	//	double vinit_bot_l;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1030  	//	double vinit_bot_c;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1031  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1032  	//	unsigned int swath_height_l;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1033  	unsigned int swath_width_ub_l = 0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1034  	//	unsigned int dpte_bytes_per_row_ub_l;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1035  	unsigned int dpte_groups_per_row_ub_l = 0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1036  	//	unsigned int meta_pte_bytes_per_frame_ub_l;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1037  	//	unsigned int meta_bytes_per_row_ub_l;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1038  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1039  	//	unsigned int swath_height_c;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1040  	unsigned int swath_width_ub_c = 0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1041  	//   unsigned int dpte_bytes_per_row_ub_c;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1042  	unsigned int dpte_groups_per_row_ub_c = 0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1043  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1044  	unsigned int meta_chunks_per_row_ub_l = 0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1045  	unsigned int meta_chunks_per_row_ub_c = 0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1046  	unsigned int vupdate_offset = 0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1047  	unsigned int vupdate_width = 0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1048  	unsigned int vready_offset = 0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1049  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1050  	unsigned int dppclk_delay_subtotal = 0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1051  	unsigned int dispclk_delay_subtotal = 0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1052  	unsigned int pixel_rate_delay_subtotal = 0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1053  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1054  	unsigned int vstartup_start = 0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1055  	unsigned int dst_x_after_scaler = 0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1056  	unsigned int dst_y_after_scaler = 0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1057  	double line_wait = 0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1058  	double dst_y_prefetch = 0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1059  	double dst_y_per_vm_vblank = 0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1060  	double dst_y_per_row_vblank = 0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1061  	double dst_y_per_vm_flip = 0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1062  	double dst_y_per_row_flip = 0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1063  	double max_dst_y_per_vm_vblank = 0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1064  	double max_dst_y_per_row_vblank = 0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1065  	double lsw = 0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1066  	double vratio_pre_l = 0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1067  	double vratio_pre_c = 0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1068  	unsigned int req_per_swath_ub_l = 0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1069  	unsigned int req_per_swath_ub_c = 0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1070  	unsigned int meta_row_height_l = 0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1071  	unsigned int meta_row_height_c = 0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1072  	unsigned int swath_width_pixels_ub_l = 0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1073  	unsigned int swath_width_pixels_ub_c = 0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1074  	unsigned int scaler_rec_in_width_l = 0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1075  	unsigned int scaler_rec_in_width_c = 0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1076  	unsigned int dpte_row_height_l = 0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1077  	unsigned int dpte_row_height_c = 0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1078  	double hscale_pixel_rate_l = 0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1079  	double hscale_pixel_rate_c = 0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1080  	double min_hratio_fact_l = 0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1081  	double min_hratio_fact_c = 0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1082  	double refcyc_per_line_delivery_pre_l = 0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1083  	double refcyc_per_line_delivery_pre_c = 0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1084  	double refcyc_per_line_delivery_l = 0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1085  	double refcyc_per_line_delivery_c = 0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1086  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1087  	double refcyc_per_req_delivery_pre_l = 0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1088  	double refcyc_per_req_delivery_pre_c = 0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1089  	double refcyc_per_req_delivery_l = 0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1090  	double refcyc_per_req_delivery_c = 0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1091  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1092  	unsigned int full_recout_width = 0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1093  	double refcyc_per_req_delivery_pre_cur0 = 0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1094  	double refcyc_per_req_delivery_cur0 = 0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1095  	double refcyc_per_req_delivery_pre_cur1 = 0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1096  	double refcyc_per_req_delivery_cur1 = 0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1097  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1098  	unsigned int pipe_index_in_combine[DC__NUM_PIPES__MAX] = { 0 };
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1099  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1100  	memset(disp_dlg_regs, 0, sizeof(*disp_dlg_regs));
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1101  	memset(disp_ttu_regs, 0, sizeof(*disp_ttu_regs));
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1102  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1103  	dml_print("DML_DLG: %s:  cstate_en = %d\n", __func__, cstate_en);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1104  	dml_print("DML_DLG: %s:  pstate_en = %d\n", __func__, pstate_en);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1105  	dml_print("DML_DLG: %s:  vm_en     = %d\n", __func__, vm_en);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1106  	dml_print("DML_DLG: %s:  ignore_viewport_pos  = %d\n", __func__, ignore_viewport_pos);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1107  	dml_print("DML_DLG: %s:  immediate_flip_support  = %d\n", __func__, immediate_flip_support);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1108  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1109  	dml_print("DML_DLG: %s: dppclk_freq_in_mhz     = %3.2f\n", __func__, dppclk_freq_in_mhz);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1110  	dml_print("DML_DLG: %s: dispclk_freq_in_mhz    = %3.2f\n", __func__, dispclk_freq_in_mhz);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1111  	dml_print("DML_DLG: %s: refclk_freq_in_mhz     = %3.2f\n", __func__, refclk_freq_in_mhz);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1112  	dml_print("DML_DLG: %s: pclk_freq_in_mhz       = %3.2f\n", __func__, pclk_freq_in_mhz);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1113  	dml_print("DML_DLG: %s: interlaced             = %d\n", __func__, interlaced);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1114  	ASSERT(ref_freq_to_pix_freq < 4.0);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1115  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1116  	disp_dlg_regs->ref_freq_to_pix_freq =
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1117  		(unsigned int)(ref_freq_to_pix_freq * dml_pow(2, 19));
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1118  	disp_dlg_regs->refcyc_per_htotal = (unsigned int)(ref_freq_to_pix_freq * (double)htotal
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1119  		* dml_pow(2, 8));
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1120  	disp_dlg_regs->dlg_vblank_end = interlaced ? (vblank_end / 2) : vblank_end; // 15 bits
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1121  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1122  	min_dcfclk_mhz = dlg_sys_param.deepsleep_dcfclk_mhz;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1123  	t_calc_us = get_tcalc(mode_lib, e2e_pipe_param, num_pipes);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1124  	min_ttu_vblank = get_min_ttu_vblank(mode_lib, e2e_pipe_param, num_pipes, pipe_idx);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1125  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1126  	min_dst_y_ttu_vblank = min_ttu_vblank * pclk_freq_in_mhz / (double)htotal;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1127  	dlg_vblank_start = interlaced ? (vblank_start / 2) : vblank_start;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1128  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1129  	disp_dlg_regs->min_dst_y_next_start = (unsigned int)(((double)dlg_vblank_start
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1130  		) * dml_pow(2, 2));
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1131  	ASSERT(disp_dlg_regs->min_dst_y_next_start < (unsigned int)dml_pow(2, 18));
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1132  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1133  	dml_print("DML_DLG: %s: min_dcfclk_mhz                         = %3.2f\n",
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1134  		__func__,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1135  		min_dcfclk_mhz);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1136  	dml_print("DML_DLG: %s: min_ttu_vblank                         = %3.2f\n",
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1137  		__func__,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1138  		min_ttu_vblank);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1139  	dml_print("DML_DLG: %s: min_dst_y_ttu_vblank                   = %3.2f\n",
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1140  		__func__,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1141  		min_dst_y_ttu_vblank);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1142  	dml_print("DML_DLG: %s: t_calc_us                              = %3.2f\n",
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1143  		__func__,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1144  		t_calc_us);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1145  	dml_print("DML_DLG: %s: disp_dlg_regs->min_dst_y_next_start    = 0x%0x\n",
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1146  		__func__,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1147  		disp_dlg_regs->min_dst_y_next_start);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1148  	dml_print("DML_DLG: %s: ref_freq_to_pix_freq                   = %3.2f\n",
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1149  		__func__,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1150  		ref_freq_to_pix_freq);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1151  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1152  	// -------------------------
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1153  	// Section 1.15.2.2: Prefetch, Active and TTU
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1154  	// -------------------------
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1155  	// Prefetch Calc
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1156  	// Source
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1157  	//			 dcc_en			  = src.dcc;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1158  	dual_plane = is_dual_plane((enum source_format_class)(src->source_format));
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1159  	mode_422 = 0; // TODO
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1160  	access_dir = (src->source_scan == dm_vert); // vp access direction: horizontal or vertical accessed
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1161  	vp_height_l = src->viewport_height;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1162  	vp_width_l = src->viewport_width;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1163  	vp_height_c = src->viewport_height_c;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1164  	vp_width_c = src->viewport_width_c;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1165  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1166  	// Scaling
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1167  	htaps_l = taps->htaps;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1168  	htaps_c = taps->htaps_c;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1169  	hratio_l = scl->hscl_ratio;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1170  	hratio_c = scl->hscl_ratio_c;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1171  	vratio_l = scl->vscl_ratio;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1172  	vratio_c = scl->vscl_ratio_c;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1173  	scl_enable = scl->scl_enable;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1174  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1175  	line_time_in_us = (htotal / pclk_freq_in_mhz);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1176  	swath_width_ub_l = rq_dlg_param.rq_l.swath_width_ub;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1177  	dpte_groups_per_row_ub_l = rq_dlg_param.rq_l.dpte_groups_per_row_ub;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1178  	swath_width_ub_c = rq_dlg_param.rq_c.swath_width_ub;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1179  	dpte_groups_per_row_ub_c = rq_dlg_param.rq_c.dpte_groups_per_row_ub;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1180  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1181  	meta_chunks_per_row_ub_l = rq_dlg_param.rq_l.meta_chunks_per_row_ub;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1182  	meta_chunks_per_row_ub_c = rq_dlg_param.rq_c.meta_chunks_per_row_ub;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1183  	vupdate_offset = dst->vupdate_offset;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1184  	vupdate_width = dst->vupdate_width;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1185  	vready_offset = dst->vready_offset;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1186  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1187  	dppclk_delay_subtotal = mode_lib->ip.dppclk_delay_subtotal;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1188  	dispclk_delay_subtotal = mode_lib->ip.dispclk_delay_subtotal;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1189  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1190  	if (scl_enable)
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1191  		dppclk_delay_subtotal += mode_lib->ip.dppclk_delay_scl;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1192  	else
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1193  		dppclk_delay_subtotal += mode_lib->ip.dppclk_delay_scl_lb_only;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1194  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1195  	dppclk_delay_subtotal += mode_lib->ip.dppclk_delay_cnvc_formatter
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1196  		+ src->num_cursors * mode_lib->ip.dppclk_delay_cnvc_cursor;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1197  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1198  	if (dout->dsc_enable) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1199  		double dsc_delay = get_dsc_delay(mode_lib, e2e_pipe_param, num_pipes, pipe_idx);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1200  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1201  		dispclk_delay_subtotal += dsc_delay;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1202  	}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1203  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1204  	pixel_rate_delay_subtotal = dppclk_delay_subtotal * pclk_freq_in_mhz / dppclk_freq_in_mhz
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1205  		+ dispclk_delay_subtotal * pclk_freq_in_mhz / dispclk_freq_in_mhz;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1206  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1207  	vstartup_start = dst->vstartup_start;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1208  	if (interlaced) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1209  		if (vstartup_start / 2.0
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1210  			- (double)(vready_offset + vupdate_width + vupdate_offset) / htotal
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1211  			<= vblank_end / 2.0)
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1212  			disp_dlg_regs->vready_after_vcount0 = 1;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1213  		else
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1214  			disp_dlg_regs->vready_after_vcount0 = 0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1215  	} else {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1216  		if (vstartup_start
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1217  			- (double)(vready_offset + vupdate_width + vupdate_offset) / htotal
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1218  			<= vblank_end)
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1219  			disp_dlg_regs->vready_after_vcount0 = 1;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1220  		else
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1221  			disp_dlg_regs->vready_after_vcount0 = 0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1222  	}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1223  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1224  	// TODO: Where is this coming from?
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1225  	if (interlaced)
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1226  		vstartup_start = vstartup_start / 2;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1227  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1228  	// TODO: What if this min_vblank doesn't match the value in the dml_config_settings.cpp?
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1229  	if (vstartup_start >= min_vblank) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1230  		dml_print("WARNING: DML_DLG: %s: vblank_start=%d vblank_end=%d\n",
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1231  			__func__,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1232  			vblank_start,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1233  			vblank_end);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1234  		dml_print("WARNING: DML_DLG: %s: vstartup_start=%d should be less than min_vblank=%d\n",
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1235  			__func__,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1236  			vstartup_start,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1237  			min_vblank);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1238  		min_vblank = vstartup_start + 1;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1239  		dml_print("WARNING: DML_DLG: %s: vstartup_start=%d should be less than min_vblank=%d\n",
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1240  			__func__,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1241  			vstartup_start,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1242  			min_vblank);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1243  	}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1244  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1245  	dst_x_after_scaler = get_dst_x_after_scaler(mode_lib, e2e_pipe_param, num_pipes, pipe_idx);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1246  	dst_y_after_scaler = get_dst_y_after_scaler(mode_lib, e2e_pipe_param, num_pipes, pipe_idx);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1247  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1248  	// do some adjustment on the dst_after scaler to account for odm combine mode
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1249  	dml_print("DML_DLG: %s: input dst_x_after_scaler                     = %d\n",
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1250  		__func__,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1251  		dst_x_after_scaler);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1252  	dml_print("DML_DLG: %s: input dst_y_after_scaler                     = %d\n",
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1253  		__func__,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1254  		dst_y_after_scaler);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1255  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1256  	// need to figure out which side of odm combine we're in
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1257  	if (dst->odm_combine) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1258  		// figure out which pipes go together
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1259  		bool visited[DC__NUM_PIPES__MAX] = { false };
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1260  		unsigned int i, j, k;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1261  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1262  		for (k = 0; k < num_pipes; ++k) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1263  			visited[k] = false;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1264  			pipe_index_in_combine[k] = 0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1265  		}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1266  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1267  		for (i = 0; i < num_pipes; i++) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1268  			if (e2e_pipe_param[i].pipe.src.is_hsplit && !visited[i]) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1269  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1270  				unsigned int grp = e2e_pipe_param[i].pipe.src.hsplit_grp;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1271  				unsigned int grp_idx = 0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1272  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1273  				for (j = i; j < num_pipes; j++) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1274  					if (e2e_pipe_param[j].pipe.src.hsplit_grp == grp
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1275  							&& e2e_pipe_param[j].pipe.src.is_hsplit && !visited[j]) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1276  						pipe_index_in_combine[j] = grp_idx;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1277  						dml_print("DML_DLG: %s: pipe[%d] is in grp %d idx %d\n", __func__, j, grp, grp_idx);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1278  						grp_idx++;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1279  						visited[j] = true;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1280  					}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1281  				}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1282  			}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1283  		}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1284  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1285  	}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1286  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1287  	if (dst->odm_combine == dm_odm_combine_mode_disabled) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1288  		disp_dlg_regs->refcyc_h_blank_end = (unsigned int)((double) hblank_end * ref_freq_to_pix_freq);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1289  	} else {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1290  		unsigned int   odm_combine_factor = (dst->odm_combine == dm_odm_combine_mode_2to1 ? 2 : 4); // TODO: We should really check that 4to1 is supported before setting it to 4
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1291  		unsigned int   odm_pipe_index = pipe_index_in_combine[pipe_idx];
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1292  		disp_dlg_regs->refcyc_h_blank_end = (unsigned int)(((double) hblank_end + odm_pipe_index * (double) dst->hactive / odm_combine_factor) * ref_freq_to_pix_freq);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1293  	}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1294  	ASSERT(disp_dlg_regs->refcyc_h_blank_end < (unsigned int)dml_pow(2, 13));
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1295  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1296  	dml_print("DML_DLG: %s: htotal                                     = %d\n", __func__, htotal);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1297  	dml_print("DML_DLG: %s: pixel_rate_delay_subtotal                  = %d\n",
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1298  		__func__,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1299  		pixel_rate_delay_subtotal);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1300  	dml_print("DML_DLG: %s: dst_x_after_scaler[%d]                     = %d\n",
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1301  		__func__,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1302  		pipe_idx,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1303  		dst_x_after_scaler);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1304  	dml_print("DML_DLG: %s: dst_y_after_scaler[%d]                     = %d\n",
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1305  		__func__,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1306  		pipe_idx,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1307  		dst_y_after_scaler);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1308  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1309  	// Lwait
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1310  		// TODO: Should this be urgent_latency_pixel_mixed_with_vm_data_us?
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1311  	line_wait = mode_lib->soc.urgent_latency_pixel_data_only_us;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1312  	if (cstate_en)
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1313  		line_wait = dml_max(mode_lib->soc.sr_enter_plus_exit_time_us, line_wait);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1314  	if (pstate_en)
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1315  		line_wait = dml_max(mode_lib->soc.dram_clock_change_latency_us
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1316  			+ mode_lib->soc.urgent_latency_pixel_data_only_us, // TODO: Should this be urgent_latency_pixel_mixed_with_vm_data_us?
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1317  			line_wait);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1318  	line_wait = line_wait / line_time_in_us;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1319  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1320  	dst_y_prefetch = get_dst_y_prefetch(mode_lib, e2e_pipe_param, num_pipes, pipe_idx);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1321  	dml_print("DML_DLG: %s: dst_y_prefetch (after rnd) = %3.2f\n", __func__, dst_y_prefetch);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1322  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1323  	dst_y_per_vm_vblank = get_dst_y_per_vm_vblank(mode_lib,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1324  		e2e_pipe_param,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1325  		num_pipes,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1326  		pipe_idx);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1327  	dst_y_per_row_vblank = get_dst_y_per_row_vblank(mode_lib,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1328  		e2e_pipe_param,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1329  		num_pipes,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1330  		pipe_idx);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1331  	dst_y_per_vm_flip = get_dst_y_per_vm_flip(mode_lib, e2e_pipe_param, num_pipes, pipe_idx);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1332  	dst_y_per_row_flip = get_dst_y_per_row_flip(mode_lib, e2e_pipe_param, num_pipes, pipe_idx);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1333  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1334  	max_dst_y_per_vm_vblank = 32.0;	 //U5.2
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1335  	max_dst_y_per_row_vblank = 16.0;	//U4.2
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1336  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1337  	// magic!
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1338  	if (htotal <= 75) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1339  		min_vblank = 300;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1340  		max_dst_y_per_vm_vblank = 100.0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1341  		max_dst_y_per_row_vblank = 100.0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1342  	}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1343  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1344  	dml_print("DML_DLG: %s: dst_y_per_vm_flip    = %3.2f\n", __func__, dst_y_per_vm_flip);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1345  	dml_print("DML_DLG: %s: dst_y_per_row_flip   = %3.2f\n", __func__, dst_y_per_row_flip);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1346  	dml_print("DML_DLG: %s: dst_y_per_vm_vblank  = %3.2f\n", __func__, dst_y_per_vm_vblank);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1347  	dml_print("DML_DLG: %s: dst_y_per_row_vblank = %3.2f\n", __func__, dst_y_per_row_vblank);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1348  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1349  	ASSERT(dst_y_per_vm_vblank < max_dst_y_per_vm_vblank);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1350  	ASSERT(dst_y_per_row_vblank < max_dst_y_per_row_vblank);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1351  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1352  	ASSERT(dst_y_prefetch > (dst_y_per_vm_vblank + dst_y_per_row_vblank));
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1353  	lsw = dst_y_prefetch - (dst_y_per_vm_vblank + dst_y_per_row_vblank);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1354  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1355  	dml_print("DML_DLG: %s: lsw = %3.2f\n", __func__, lsw);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1356  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1357  	vratio_pre_l = get_vratio_prefetch_l(mode_lib, e2e_pipe_param, num_pipes, pipe_idx);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1358  	vratio_pre_c = get_vratio_prefetch_c(mode_lib, e2e_pipe_param, num_pipes, pipe_idx);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1359  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1360  	dml_print("DML_DLG: %s: vratio_pre_l=%3.2f\n", __func__, vratio_pre_l);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1361  	dml_print("DML_DLG: %s: vratio_pre_c=%3.2f\n", __func__, vratio_pre_c);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1362  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1363  	// Active
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1364  	req_per_swath_ub_l = rq_dlg_param.rq_l.req_per_swath_ub;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1365  	req_per_swath_ub_c = rq_dlg_param.rq_c.req_per_swath_ub;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1366  	meta_row_height_l = rq_dlg_param.rq_l.meta_row_height;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1367  	meta_row_height_c = rq_dlg_param.rq_c.meta_row_height;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1368  	swath_width_pixels_ub_l = 0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1369  	swath_width_pixels_ub_c = 0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1370  	scaler_rec_in_width_l = 0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1371  	scaler_rec_in_width_c = 0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1372  	dpte_row_height_l = rq_dlg_param.rq_l.dpte_row_height;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1373  	dpte_row_height_c = rq_dlg_param.rq_c.dpte_row_height;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1374  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1375  	if (mode_422) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1376  		swath_width_pixels_ub_l = swath_width_ub_l * 2;  // *2 for 2 pixel per element
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1377  		swath_width_pixels_ub_c = swath_width_ub_c * 2;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1378  	} else {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1379  		swath_width_pixels_ub_l = swath_width_ub_l * 1;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1380  		swath_width_pixels_ub_c = swath_width_ub_c * 1;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1381  	}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1382  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1383  	hscale_pixel_rate_l = 0.;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1384  	hscale_pixel_rate_c = 0.;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1385  	min_hratio_fact_l = 1.0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1386  	min_hratio_fact_c = 1.0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1387  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1388  	if (hratio_l <= 1)
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1389  		min_hratio_fact_l = 2.0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1390  	else if (htaps_l <= 6) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1391  		if ((hratio_l * 2.0) > 4.0)
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1392  			min_hratio_fact_l = 4.0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1393  		else
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1394  			min_hratio_fact_l = hratio_l * 2.0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1395  	} else {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1396  		if (hratio_l > 4.0)
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1397  			min_hratio_fact_l = 4.0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1398  		else
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1399  			min_hratio_fact_l = hratio_l;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1400  	}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1401  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1402  	hscale_pixel_rate_l = min_hratio_fact_l * dppclk_freq_in_mhz;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1403  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1404  	if (hratio_c <= 1)
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1405  		min_hratio_fact_c = 2.0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1406  	else if (htaps_c <= 6) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1407  		if ((hratio_c * 2.0) > 4.0)
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1408  			min_hratio_fact_c = 4.0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1409  		else
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1410  			min_hratio_fact_c = hratio_c * 2.0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1411  	} else {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1412  		if (hratio_c > 4.0)
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1413  			min_hratio_fact_c = 4.0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1414  		else
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1415  			min_hratio_fact_c = hratio_c;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1416  	}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1417  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1418  	hscale_pixel_rate_c = min_hratio_fact_c * dppclk_freq_in_mhz;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1419  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1420  	refcyc_per_line_delivery_pre_l = 0.;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1421  	refcyc_per_line_delivery_pre_c = 0.;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1422  	refcyc_per_line_delivery_l = 0.;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1423  	refcyc_per_line_delivery_c = 0.;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1424  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1425  	refcyc_per_req_delivery_pre_l = 0.;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1426  	refcyc_per_req_delivery_pre_c = 0.;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1427  	refcyc_per_req_delivery_l = 0.;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1428  	refcyc_per_req_delivery_c = 0.;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1429  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1430  	full_recout_width = 0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1431  	// In ODM
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1432  	if (src->is_hsplit) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1433  		// This "hack"  is only allowed (and valid) for MPC combine. In ODM
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1434  		// combine, you MUST specify the full_recout_width...according to Oswin
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1435  		if (dst->full_recout_width == 0 && !dst->odm_combine) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1436  			dml_print("DML_DLG: %s: Warning: full_recout_width not set in hsplit mode\n",
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1437  				__func__);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1438  			full_recout_width = dst->recout_width * 2; // assume half split for dcn1
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1439  		} else
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1440  			full_recout_width = dst->full_recout_width;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1441  	} else
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1442  		full_recout_width = dst->recout_width;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1443  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1444  	// As of DCN2, mpc_combine and odm_combine are mutually exclusive
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1445  	refcyc_per_line_delivery_pre_l = get_refcyc_per_delivery(mode_lib,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1446  		refclk_freq_in_mhz,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1447  		pclk_freq_in_mhz,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1448  		dst->odm_combine,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1449  		full_recout_width,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1450  		dst->hactive,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1451  		vratio_pre_l,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1452  		hscale_pixel_rate_l,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1453  		swath_width_pixels_ub_l,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1454  		1); // per line
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1455  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1456  	refcyc_per_line_delivery_l = get_refcyc_per_delivery(mode_lib,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1457  		refclk_freq_in_mhz,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1458  		pclk_freq_in_mhz,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1459  		dst->odm_combine,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1460  		full_recout_width,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1461  		dst->hactive,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1462  		vratio_l,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1463  		hscale_pixel_rate_l,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1464  		swath_width_pixels_ub_l,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1465  		1); // per line
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1466  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1467  	dml_print("DML_DLG: %s: full_recout_width              = %d\n",
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1468  		__func__,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1469  		full_recout_width);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1470  	dml_print("DML_DLG: %s: hscale_pixel_rate_l            = %3.2f\n",
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1471  		__func__,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1472  		hscale_pixel_rate_l);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1473  	dml_print("DML_DLG: %s: refcyc_per_line_delivery_pre_l = %3.2f\n",
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1474  		__func__,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1475  		refcyc_per_line_delivery_pre_l);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1476  	dml_print("DML_DLG: %s: refcyc_per_line_delivery_l     = %3.2f\n",
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1477  		__func__,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1478  		refcyc_per_line_delivery_l);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1479  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1480  	if (dual_plane) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1481  		refcyc_per_line_delivery_pre_c = get_refcyc_per_delivery(mode_lib,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1482  			refclk_freq_in_mhz,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1483  			pclk_freq_in_mhz,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1484  			dst->odm_combine,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1485  			full_recout_width,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1486  			dst->hactive,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1487  			vratio_pre_c,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1488  			hscale_pixel_rate_c,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1489  			swath_width_pixels_ub_c,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1490  			1); // per line
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1491  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1492  		refcyc_per_line_delivery_c = get_refcyc_per_delivery(mode_lib,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1493  			refclk_freq_in_mhz,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1494  			pclk_freq_in_mhz,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1495  			dst->odm_combine,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1496  			full_recout_width,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1497  			dst->hactive,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1498  			vratio_c,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1499  			hscale_pixel_rate_c,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1500  			swath_width_pixels_ub_c,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1501  			1);  // per line
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1502  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1503  		dml_print("DML_DLG: %s: refcyc_per_line_delivery_pre_c = %3.2f\n",
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1504  			__func__,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1505  			refcyc_per_line_delivery_pre_c);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1506  		dml_print("DML_DLG: %s: refcyc_per_line_delivery_c     = %3.2f\n",
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1507  			__func__,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1508  			refcyc_per_line_delivery_c);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1509  	}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1510  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1511  	// smehta: this is a hack added until we get the real dml, sorry, need to make progress
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1512  	if (src->dynamic_metadata_enable && src->gpuvm) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1513  		unsigned int levels = mode_lib->ip.gpuvm_max_page_table_levels;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1514  		double ref_cycles;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1515  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1516  		if (src->hostvm)
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1517  			levels = levels * (mode_lib->ip.hostvm_max_page_table_levels+1);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1518  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1519  		ref_cycles = (levels * mode_lib->soc.urgent_latency_vm_data_only_us) * refclk_freq_in_mhz;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1520  		dml_print("BENyamin:    dst_y_prefetch                  = %f %d %f %f \n",
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1521  			ref_cycles, levels, mode_lib->soc.urgent_latency_vm_data_only_us, refclk_freq_in_mhz);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1522  		disp_dlg_regs->refcyc_per_vm_dmdata = (unsigned int) ref_cycles;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1523  	}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1524  	dml_print("BENyamin:    dmdta_en vm                     = %d %d \n",
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1525  		src->dynamic_metadata_enable, src->vm);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1526  	// TTU - Luma / Chroma
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1527  	if (access_dir) {  // vertical access
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1528  		scaler_rec_in_width_l = vp_height_l;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1529  		scaler_rec_in_width_c = vp_height_c;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1530  	} else {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1531  		scaler_rec_in_width_l = vp_width_l;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1532  		scaler_rec_in_width_c = vp_width_c;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1533  	}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1534  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1535  	refcyc_per_req_delivery_pre_l = get_refcyc_per_delivery(mode_lib,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1536  		refclk_freq_in_mhz,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1537  		pclk_freq_in_mhz,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1538  		dst->odm_combine,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1539  		full_recout_width,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1540  		dst->hactive,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1541  		vratio_pre_l,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1542  		hscale_pixel_rate_l,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1543  		scaler_rec_in_width_l,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1544  		req_per_swath_ub_l);  // per req
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1545  	refcyc_per_req_delivery_l = get_refcyc_per_delivery(mode_lib,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1546  		refclk_freq_in_mhz,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1547  		pclk_freq_in_mhz,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1548  		dst->odm_combine,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1549  		full_recout_width,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1550  		dst->hactive,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1551  		vratio_l,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1552  		hscale_pixel_rate_l,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1553  		scaler_rec_in_width_l,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1554  		req_per_swath_ub_l);  // per req
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1555  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1556  	dml_print("DML_DLG: %s: refcyc_per_req_delivery_pre_l = %3.2f\n",
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1557  		__func__,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1558  		refcyc_per_req_delivery_pre_l);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1559  	dml_print("DML_DLG: %s: refcyc_per_req_delivery_l     = %3.2f\n",
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1560  		__func__,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1561  		refcyc_per_req_delivery_l);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1562  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1563  	ASSERT(refcyc_per_req_delivery_pre_l < dml_pow(2, 13));
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1564  	ASSERT(refcyc_per_req_delivery_l < dml_pow(2, 13));
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1565  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1566  	if (dual_plane) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1567  		refcyc_per_req_delivery_pre_c = get_refcyc_per_delivery(mode_lib,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1568  			refclk_freq_in_mhz,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1569  			pclk_freq_in_mhz,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1570  			dst->odm_combine,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1571  			full_recout_width,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1572  			dst->hactive,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1573  			vratio_pre_c,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1574  			hscale_pixel_rate_c,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1575  			scaler_rec_in_width_c,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1576  			req_per_swath_ub_c);  // per req
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1577  		refcyc_per_req_delivery_c = get_refcyc_per_delivery(mode_lib,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1578  			refclk_freq_in_mhz,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1579  			pclk_freq_in_mhz,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1580  			dst->odm_combine,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1581  			full_recout_width,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1582  			dst->hactive,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1583  			vratio_c,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1584  			hscale_pixel_rate_c,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1585  			scaler_rec_in_width_c,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1586  			req_per_swath_ub_c);  // per req
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1587  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1588  		dml_print("DML_DLG: %s: refcyc_per_req_delivery_pre_c = %3.2f\n",
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1589  			__func__,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1590  			refcyc_per_req_delivery_pre_c);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1591  		dml_print("DML_DLG: %s: refcyc_per_req_delivery_c     = %3.2f\n",
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1592  			__func__,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1593  			refcyc_per_req_delivery_c);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1594  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1595  		ASSERT(refcyc_per_req_delivery_pre_c < dml_pow(2, 13));
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1596  		ASSERT(refcyc_per_req_delivery_c < dml_pow(2, 13));
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1597  	}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1598  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1599  	// TTU - Cursor
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1600  	refcyc_per_req_delivery_pre_cur0 = 0.0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1601  	refcyc_per_req_delivery_cur0 = 0.0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1602  	if (src->num_cursors > 0) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1603  		calculate_ttu_cursor(mode_lib,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1604  			&refcyc_per_req_delivery_pre_cur0,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1605  			&refcyc_per_req_delivery_cur0,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1606  			refclk_freq_in_mhz,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1607  			ref_freq_to_pix_freq,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1608  			hscale_pixel_rate_l,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1609  			scl->hscl_ratio,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1610  			vratio_pre_l,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1611  			vratio_l,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1612  			src->cur0_src_width,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1613  			(enum cursor_bpp)(src->cur0_bpp));
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1614  	}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1615  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1616  	refcyc_per_req_delivery_pre_cur1 = 0.0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1617  	refcyc_per_req_delivery_cur1 = 0.0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1618  	if (src->num_cursors > 1) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1619  		calculate_ttu_cursor(mode_lib,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1620  			&refcyc_per_req_delivery_pre_cur1,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1621  			&refcyc_per_req_delivery_cur1,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1622  			refclk_freq_in_mhz,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1623  			ref_freq_to_pix_freq,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1624  			hscale_pixel_rate_l,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1625  			scl->hscl_ratio,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1626  			vratio_pre_l,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1627  			vratio_l,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1628  			src->cur1_src_width,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1629  			(enum cursor_bpp)(src->cur1_bpp));
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1630  	}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1631  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1632  	// TTU - Misc
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1633  	// all hard-coded
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1634  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1635  	// Assignment to register structures
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1636  	disp_dlg_regs->dst_y_after_scaler = dst_y_after_scaler; // in terms of line
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1637  	ASSERT(disp_dlg_regs->dst_y_after_scaler < (unsigned int)8);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1638  	disp_dlg_regs->refcyc_x_after_scaler = dst_x_after_scaler * ref_freq_to_pix_freq; // in terms of refclk
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1639  	ASSERT(disp_dlg_regs->refcyc_x_after_scaler < (unsigned int)dml_pow(2, 13));
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1640  	disp_dlg_regs->dst_y_prefetch = (unsigned int)(dst_y_prefetch * dml_pow(2, 2));
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1641  	disp_dlg_regs->dst_y_per_vm_vblank = (unsigned int)(dst_y_per_vm_vblank * dml_pow(2, 2));
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1642  	disp_dlg_regs->dst_y_per_row_vblank = (unsigned int)(dst_y_per_row_vblank * dml_pow(2, 2));
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1643  	disp_dlg_regs->dst_y_per_vm_flip = (unsigned int)(dst_y_per_vm_flip * dml_pow(2, 2));
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1644  	disp_dlg_regs->dst_y_per_row_flip = (unsigned int)(dst_y_per_row_flip * dml_pow(2, 2));
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1645  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1646  	disp_dlg_regs->vratio_prefetch = (unsigned int)(vratio_pre_l * dml_pow(2, 19));
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1647  	disp_dlg_regs->vratio_prefetch_c = (unsigned int)(vratio_pre_c * dml_pow(2, 19));
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1648  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1649  	dml_print("DML_DLG: %s: disp_dlg_regs->dst_y_per_vm_vblank  = 0x%x\n", __func__, disp_dlg_regs->dst_y_per_vm_vblank);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1650  	dml_print("DML_DLG: %s: disp_dlg_regs->dst_y_per_row_vblank = 0x%x\n", __func__, disp_dlg_regs->dst_y_per_row_vblank);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1651  	dml_print("DML_DLG: %s: disp_dlg_regs->dst_y_per_vm_flip    = 0x%x\n", __func__, disp_dlg_regs->dst_y_per_vm_flip);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1652  	dml_print("DML_DLG: %s: disp_dlg_regs->dst_y_per_row_flip   = 0x%x\n", __func__, disp_dlg_regs->dst_y_per_row_flip);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1653  	disp_dlg_regs->refcyc_per_pte_group_vblank_l =
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1654  		(unsigned int)(dst_y_per_row_vblank * (double)htotal
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1655  			* ref_freq_to_pix_freq / (double)dpte_groups_per_row_ub_l);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1656  	ASSERT(disp_dlg_regs->refcyc_per_pte_group_vblank_l < (unsigned int)dml_pow(2, 13));
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1657  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1658  	if (dual_plane) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1659  		disp_dlg_regs->refcyc_per_pte_group_vblank_c = (unsigned int)(dst_y_per_row_vblank
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1660  			* (double)htotal * ref_freq_to_pix_freq
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1661  			/ (double)dpte_groups_per_row_ub_c);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1662  		ASSERT(disp_dlg_regs->refcyc_per_pte_group_vblank_c
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1663  			< (unsigned int)dml_pow(2, 13));
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1664  	}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1665  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1666  	disp_dlg_regs->refcyc_per_meta_chunk_vblank_l =
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1667  		(unsigned int)(dst_y_per_row_vblank * (double)htotal
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1668  			* ref_freq_to_pix_freq / (double)meta_chunks_per_row_ub_l);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1669  	ASSERT(disp_dlg_regs->refcyc_per_meta_chunk_vblank_l < (unsigned int)dml_pow(2, 13));
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1670  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1671  	disp_dlg_regs->refcyc_per_meta_chunk_vblank_c =
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1672  		disp_dlg_regs->refcyc_per_meta_chunk_vblank_l; // dcc for 4:2:0 is not supported in dcn1.0.  assigned to be the same as _l for now
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1673  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1674  	disp_dlg_regs->refcyc_per_pte_group_flip_l = (unsigned int)(dst_y_per_row_flip * htotal
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1675  		* ref_freq_to_pix_freq) / dpte_groups_per_row_ub_l;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1676  	disp_dlg_regs->refcyc_per_meta_chunk_flip_l = (unsigned int)(dst_y_per_row_flip * htotal
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1677  		* ref_freq_to_pix_freq) / meta_chunks_per_row_ub_l;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1678  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1679  	if (dual_plane) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1680  		disp_dlg_regs->refcyc_per_pte_group_flip_c = (unsigned int)(dst_y_per_row_flip
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1681  			* htotal * ref_freq_to_pix_freq) / dpte_groups_per_row_ub_c;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1682  		disp_dlg_regs->refcyc_per_meta_chunk_flip_c = (unsigned int)(dst_y_per_row_flip
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1683  			* htotal * ref_freq_to_pix_freq) / meta_chunks_per_row_ub_c;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1684  	}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1685  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1686  	disp_dlg_regs->refcyc_per_vm_group_vblank   = get_refcyc_per_vm_group_vblank(mode_lib, e2e_pipe_param, num_pipes, pipe_idx) * refclk_freq_in_mhz;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1687  	disp_dlg_regs->refcyc_per_vm_group_flip	 = get_refcyc_per_vm_group_flip(mode_lib, e2e_pipe_param, num_pipes, pipe_idx) * refclk_freq_in_mhz;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1688  	disp_dlg_regs->refcyc_per_vm_req_vblank	 = get_refcyc_per_vm_req_vblank(mode_lib, e2e_pipe_param, num_pipes, pipe_idx) * refclk_freq_in_mhz * dml_pow(2, 10);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1689  	disp_dlg_regs->refcyc_per_vm_req_flip	   = get_refcyc_per_vm_req_flip(mode_lib, e2e_pipe_param, num_pipes, pipe_idx) * refclk_freq_in_mhz * dml_pow(2, 10);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1690  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1691  	// Clamp to max for now
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1692  	if (disp_dlg_regs->refcyc_per_vm_group_vblank >= (unsigned int)dml_pow(2, 23))
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1693  		disp_dlg_regs->refcyc_per_vm_group_vblank = dml_pow(2, 23) - 1;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1694  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1695  	if (disp_dlg_regs->refcyc_per_vm_group_flip >= (unsigned int)dml_pow(2, 23))
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1696  		disp_dlg_regs->refcyc_per_vm_group_flip = dml_pow(2, 23) - 1;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1697  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1698  	if (disp_dlg_regs->refcyc_per_vm_req_vblank >= (unsigned int)dml_pow(2, 23))
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1699  		disp_dlg_regs->refcyc_per_vm_req_vblank = dml_pow(2, 23) - 1;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1700  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1701  	if (disp_dlg_regs->refcyc_per_vm_req_flip >= (unsigned int)dml_pow(2, 23))
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1702  		disp_dlg_regs->refcyc_per_vm_req_flip = dml_pow(2, 23) - 1;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1703  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1704  	disp_dlg_regs->dst_y_per_pte_row_nom_l = (unsigned int)((double)dpte_row_height_l
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1705  		/ (double)vratio_l * dml_pow(2, 2));
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1706  	ASSERT(disp_dlg_regs->dst_y_per_pte_row_nom_l < (unsigned int)dml_pow(2, 17));
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1707  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1708  	if (dual_plane) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1709  		disp_dlg_regs->dst_y_per_pte_row_nom_c = (unsigned int)((double)dpte_row_height_c
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1710  			/ (double)vratio_c * dml_pow(2, 2));
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1711  		if (disp_dlg_regs->dst_y_per_pte_row_nom_c >= (unsigned int)dml_pow(2, 17)) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1712  			dml_print("DML_DLG: %s: Warning dst_y_per_pte_row_nom_c %u larger than supported by register format U15.2 %u\n",
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1713  				__func__,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1714  				disp_dlg_regs->dst_y_per_pte_row_nom_c,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1715  				(unsigned int)dml_pow(2, 17) - 1);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1716  		}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1717  	}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1718  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1719  	disp_dlg_regs->dst_y_per_meta_row_nom_l = (unsigned int)((double)meta_row_height_l
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1720  		/ (double)vratio_l * dml_pow(2, 2));
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1721  	ASSERT(disp_dlg_regs->dst_y_per_meta_row_nom_l < (unsigned int)dml_pow(2, 17));
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1722  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1723  	disp_dlg_regs->dst_y_per_meta_row_nom_c = disp_dlg_regs->dst_y_per_meta_row_nom_l; // TODO: dcc for 4:2:0 is not supported in dcn1.0.  assigned to be the same as _l for now
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1724  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1725  	dml_print("DML: Trow: %fus\n", line_time_in_us * (double)dpte_row_height_l / (double)vratio_l);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1726  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1727  	disp_dlg_regs->refcyc_per_pte_group_nom_l = (unsigned int)((double)dpte_row_height_l
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1728  		/ (double)vratio_l * (double)htotal * ref_freq_to_pix_freq
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1729  		/ (double)dpte_groups_per_row_ub_l);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1730  	if (disp_dlg_regs->refcyc_per_pte_group_nom_l >= (unsigned int)dml_pow(2, 23))
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1731  		disp_dlg_regs->refcyc_per_pte_group_nom_l = dml_pow(2, 23) - 1;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1732  	disp_dlg_regs->refcyc_per_meta_chunk_nom_l = (unsigned int)((double)meta_row_height_l
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1733  		/ (double)vratio_l * (double)htotal * ref_freq_to_pix_freq
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1734  		/ (double)meta_chunks_per_row_ub_l);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1735  	if (disp_dlg_regs->refcyc_per_meta_chunk_nom_l >= (unsigned int)dml_pow(2, 23))
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1736  		disp_dlg_regs->refcyc_per_meta_chunk_nom_l = dml_pow(2, 23) - 1;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1737  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1738  	if (dual_plane) {
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1739  		disp_dlg_regs->refcyc_per_pte_group_nom_c =
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1740  			(unsigned int)((double)dpte_row_height_c / (double)vratio_c
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1741  				* (double)htotal * ref_freq_to_pix_freq
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1742  				/ (double)dpte_groups_per_row_ub_c);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1743  		if (disp_dlg_regs->refcyc_per_pte_group_nom_c >= (unsigned int)dml_pow(2, 23))
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1744  			disp_dlg_regs->refcyc_per_pte_group_nom_c = dml_pow(2, 23) - 1;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1745  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1746  		// TODO: Is this the right calculation? Does htotal need to be halved?
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1747  		disp_dlg_regs->refcyc_per_meta_chunk_nom_c =
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1748  			(unsigned int)((double)meta_row_height_c / (double)vratio_c
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1749  				* (double)htotal * ref_freq_to_pix_freq
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1750  				/ (double)meta_chunks_per_row_ub_c);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1751  		if (disp_dlg_regs->refcyc_per_meta_chunk_nom_c >= (unsigned int)dml_pow(2, 23))
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1752  			disp_dlg_regs->refcyc_per_meta_chunk_nom_c = dml_pow(2, 23) - 1;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1753  	}
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1754  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1755  	disp_dlg_regs->refcyc_per_line_delivery_pre_l = (unsigned int)dml_floor(refcyc_per_line_delivery_pre_l,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1756  		1);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1757  	disp_dlg_regs->refcyc_per_line_delivery_l = (unsigned int)dml_floor(refcyc_per_line_delivery_l,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1758  		1);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1759  	ASSERT(disp_dlg_regs->refcyc_per_line_delivery_pre_l < (unsigned int)dml_pow(2, 13));
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1760  	ASSERT(disp_dlg_regs->refcyc_per_line_delivery_l < (unsigned int)dml_pow(2, 13));
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1761  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1762  	disp_dlg_regs->refcyc_per_line_delivery_pre_c = (unsigned int)dml_floor(refcyc_per_line_delivery_pre_c,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1763  		1);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1764  	disp_dlg_regs->refcyc_per_line_delivery_c = (unsigned int)dml_floor(refcyc_per_line_delivery_c,
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1765  		1);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1766  	ASSERT(disp_dlg_regs->refcyc_per_line_delivery_pre_c < (unsigned int)dml_pow(2, 13));
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1767  	ASSERT(disp_dlg_regs->refcyc_per_line_delivery_c < (unsigned int)dml_pow(2, 13));
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1768  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1769  	disp_dlg_regs->chunk_hdl_adjust_cur0 = 3;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1770  	disp_dlg_regs->dst_y_offset_cur0 = 0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1771  	disp_dlg_regs->chunk_hdl_adjust_cur1 = 3;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1772  	disp_dlg_regs->dst_y_offset_cur1 = 0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1773  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1774  	disp_dlg_regs->dst_y_delta_drq_limit = 0x7fff; // off
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1775  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1776  	disp_ttu_regs->refcyc_per_req_delivery_pre_l = (unsigned int)(refcyc_per_req_delivery_pre_l
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1777  		* dml_pow(2, 10));
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1778  	disp_ttu_regs->refcyc_per_req_delivery_l = (unsigned int)(refcyc_per_req_delivery_l
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1779  		* dml_pow(2, 10));
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1780  	disp_ttu_regs->refcyc_per_req_delivery_pre_c = (unsigned int)(refcyc_per_req_delivery_pre_c
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1781  		* dml_pow(2, 10));
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1782  	disp_ttu_regs->refcyc_per_req_delivery_c = (unsigned int)(refcyc_per_req_delivery_c
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1783  		* dml_pow(2, 10));
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1784  	disp_ttu_regs->refcyc_per_req_delivery_pre_cur0 =
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1785  		(unsigned int)(refcyc_per_req_delivery_pre_cur0 * dml_pow(2, 10));
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1786  	disp_ttu_regs->refcyc_per_req_delivery_cur0 = (unsigned int)(refcyc_per_req_delivery_cur0
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1787  		* dml_pow(2, 10));
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1788  	disp_ttu_regs->refcyc_per_req_delivery_pre_cur1 =
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1789  		(unsigned int)(refcyc_per_req_delivery_pre_cur1 * dml_pow(2, 10));
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1790  	disp_ttu_regs->refcyc_per_req_delivery_cur1 = (unsigned int)(refcyc_per_req_delivery_cur1
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1791  		* dml_pow(2, 10));
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1792  	disp_ttu_regs->qos_level_low_wm = 0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1793  	ASSERT(disp_ttu_regs->qos_level_low_wm < dml_pow(2, 14));
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1794  	disp_ttu_regs->qos_level_high_wm = (unsigned int)(4.0 * (double)htotal
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1795  		* ref_freq_to_pix_freq);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1796  	ASSERT(disp_ttu_regs->qos_level_high_wm < dml_pow(2, 14));
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1797  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1798  	disp_ttu_regs->qos_level_flip = 14;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1799  	disp_ttu_regs->qos_level_fixed_l = 8;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1800  	disp_ttu_regs->qos_level_fixed_c = 8;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1801  	disp_ttu_regs->qos_level_fixed_cur0 = 8;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1802  	disp_ttu_regs->qos_ramp_disable_l = 0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1803  	disp_ttu_regs->qos_ramp_disable_c = 0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1804  	disp_ttu_regs->qos_ramp_disable_cur0 = 0;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1805  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1806  	disp_ttu_regs->min_ttu_vblank = min_ttu_vblank * refclk_freq_in_mhz;
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1807  	ASSERT(disp_ttu_regs->min_ttu_vblank < dml_pow(2, 24));
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1808  
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1809  	print__ttu_regs_st(mode_lib, *disp_ttu_regs);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1810  	print__dlg_regs_st(mode_lib, *disp_dlg_regs);
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1811  }
6725a88f88a7e9 Bhawanpreet Lakha 2020-05-21  1812  

:::::: The code at line 963 was first introduced by commit
:::::: 6725a88f88a7e922e91c45bf83d320487810c192 drm/amd/display: Add DCN3 DML

:::::: TO: Bhawanpreet Lakha <Bhawanpreet.Lakha@amd.com>
:::::: CC: Alex Deucher <alexander.deucher@amd.com>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202104091759.TmmG956N-lkp%40intel.com.

--y0ulUmNC+osPPQO6
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--y0ulUmNC+osPPQO6--
