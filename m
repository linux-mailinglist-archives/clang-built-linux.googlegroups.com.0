Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBT7ATCBAMGQEZTV42ZI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3a.google.com (mail-vs1-xe3a.google.com [IPv6:2607:f8b0:4864:20::e3a])
	by mail.lfdr.de (Postfix) with ESMTPS id B4793331069
	for <lists+clang-built-linux@lfdr.de>; Mon,  8 Mar 2021 15:10:24 +0100 (CET)
Received: by mail-vs1-xe3a.google.com with SMTP id v133sf3988108vsv.22
        for <lists+clang-built-linux@lfdr.de>; Mon, 08 Mar 2021 06:10:24 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615212623; cv=pass;
        d=google.com; s=arc-20160816;
        b=rvtxSnlYdCGtQ/vVvqtu4cUtzySABsEVOmw4o/SucKVsKpZFUhzX2+n4woj/BDZ1Wm
         e/1QQguMwDJtCRnY7+S1iySSrKgIhgd10Dt41r78VoSyzBq/lZFxwruisiyI3d7txUgK
         L4rFaCsGOfcyqsZo37o2nLmJAT98r+SJAHAIjInQqXkzyM70fGv0TJSFcq4+RCbeQnUK
         JUHM9GKQ4F49WcWNz18el0odmeNJ8KOBq8+SYSfJA0Z5jBbnpcQUoIR+X2ynpQZ68cX7
         By1L3nqblAXlljt4kx+YFI+N/Eg7wFwhChDthz0Nx1iUq1m+RIhVbwZaWeB6v99fn2GI
         EJyA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=g4RS25Br4AsgLsjIiRhrrz2ZwmfTlegWlvllIBm7pRU=;
        b=bD9j+AZl6gt1f3+AC0AQ4IO5FXBLtJxgSojodrt/6UF+0D87vA3mWzLwRJpRaePkJw
         vw8Bl/o5U4cTeABAIhYqm5pHXqYmnSf483JE2WkcjQkRFRh0lhwJigbbI4oFu5eKNhw0
         SFYJqcpfXSRTjyOpqpdEge5Z86Y9wenQuZ/YkaQlTZZQq7V3txmBH3p/fSFP/SowJ9WB
         KSr65CgeFvFtOoKjg7h4iZG9flclEp1jlMAkuLvgnbJD+wRpV0Dq27E58pe6R7/Q02pE
         HmlmjEPBJX3TtZAGxa9q8a7VsvHb2V/XoaNxtf38UhjEbnKUy1ezhfkjdLjsLfXXFbnJ
         /wVw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=g4RS25Br4AsgLsjIiRhrrz2ZwmfTlegWlvllIBm7pRU=;
        b=ZymEw7KtcfyMZWyTGrrs7Uxn+lgA0SO3cup9RrXC6vDHZsKxwpOm+skkjxNTCLB3pB
         H/sxcLtdlkBStPU+PgFydRvWvC5sHoEIjXYp9U2zBS2RlhbNpgobNDFBH1LGJDviIS23
         0UBIO/DNj/RlDXB3hXvjN7qYuiOp6QSKNfWX6dm0vcA1MdnzfMs2BhrsIg+oHc6/5/Gz
         lxBXew+woPorLlZjV7sPBmve2MisBjU3+owwm23xDncm1OHhxd4775myLlDxLiOlunLt
         qEW5dKepJrErQ8JA+PfnrA3h5X6MIMb+j7BnNmD9xgLk9Ez6qSy/MQoWosN2YY4NUwIL
         uRqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=g4RS25Br4AsgLsjIiRhrrz2ZwmfTlegWlvllIBm7pRU=;
        b=n5I+6QwzDJ2jyveI5joRi8uyubo4xkEJdjCsY91rukmt1xrcrquoHxy5g/GjPrNuCE
         Z4iChknjWrYlLk0WniQyCPDoxSxDdNwfZGEkMcTynyVXBFoTRvQ1ilav7VSjIunEHhNm
         Q9HrK8fBGFsaoIpeNIJ6s/2W6YBkJLJg5F9pz00I8O80HJHrsPw7ueU6tm/427BfK3kJ
         h48huOqklT5m53mAxBiHSu9QiKFlTd9iWh67lHNrh7FzubUu7tQJ70gCZfEx7N2T+TRE
         KyMqoUQ+ZbZeoU12YS6xEQ8livudRsI1zKa4YC4vMSVkYBd6vFUlkn3ZxF0xGEUh4EqN
         exxw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Y8n/nMvPHZsbaiz/ZBJ2jWs5vkDOmc1n1aKF5eCdzBwGXR8Sf
	gjW79q2MCLbEq+byVImz67o=
X-Google-Smtp-Source: ABdhPJyYr0IW9BDSvWR7BgiMPclJoBShWihRq3r3Dil+C6Vv5JkfGalJao9jCivu+vhYT/ukRPVZKw==
X-Received: by 2002:a67:f04f:: with SMTP id q15mr12828933vsm.22.1615212623494;
        Mon, 08 Mar 2021 06:10:23 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:2e09:: with SMTP id u9ls2075982vsu.7.gmail; Mon, 08 Mar
 2021 06:10:22 -0800 (PST)
X-Received: by 2002:a05:6102:399:: with SMTP id m25mr12966059vsq.21.1615212622409;
        Mon, 08 Mar 2021 06:10:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615212622; cv=none;
        d=google.com; s=arc-20160816;
        b=r0LCeC5Kk5HTLzzKKKycGNARongJlxHjaUCWBbO0McPkWNprASMnZvfJlfe/gWsMLi
         aLF9mFMh4DNh991AUm9GPYi3/5+r7qp+eYyITAKgbossQDv0Hc+8INR+Nlk5+eUAwpxr
         3Pa/8k3Ehm5XgYFcCWg/3Qqq2C7X5pnTBuEb/XEJBQfQRE9OIiV2qP4H73mgHgvEGpYP
         1cCuh0h3xrBvdzRXSBh2V+DNPzyh73P9DgiykqIkAn9B0kQryPaApuiFF+voUfCULWiP
         aqMwjtx8olgHHk5AGxs65rKPJ+LA+o8zeUGvp/3TKoNkxbE2jL09MNbwYUVO9s+uCKlb
         88eA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=x66GikA+tqztWn+GNN0jqEkhyUyOV1t/V7Ay6efmOto=;
        b=ojBNB+Y7+mzQz/OPcaLGY80L9nn0WcURRjMDc/etMorsPZbi5ZuDjlb7SLxd075/o1
         XGqWWagNVnGOWxnVMPW82mu0q3cHX4IKn/O/tgmEvJ8Ly5pZHgtqPROmz1F9owD14cN0
         XVhBdzxTKO+auDkd3e7miVfnTNXRFNvyETKLIRqGj+BAMBdqUIffa9xgKZYl2pHrUh49
         ETwFK14CViVmTOPETUDR9QF1zXDcoA5n4mRpC6ExUzQbBNWdM2YyknOlD7hKjrkIbbTp
         pVQ4s1sdlqXRnqTUOIVm+EeBWJbdzePHOqGw0xDWIRi3rfQDgvkmADgXaT7nrgtskhBz
         QDLg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga11.intel.com (mga11.intel.com. [192.55.52.93])
        by gmr-mx.google.com with ESMTPS id d23si766162vsq.1.2021.03.08.06.10.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 08 Mar 2021 06:10:22 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) client-ip=192.55.52.93;
IronPort-SDR: GsQpGEGJqjqoIlkGIeFUDI/pr69mHY8PPCcLhYNQEUnCHT46uksnRynJlI6vUFj0AqVQ8dE2Le
 TWLcXLv5IU8A==
X-IronPort-AV: E=McAfee;i="6000,8403,9916"; a="184671596"
X-IronPort-AV: E=Sophos;i="5.81,232,1610438400"; 
   d="gz'50?scan'50,208,50";a="184671596"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Mar 2021 06:09:21 -0800
IronPort-SDR: nPJ5X+vLHiX5ikv4TH/CWU8RiLXk+bikX9Yf8fD8ojRSXkilXXiQhyV4+eQ3Bjn+tidLLiuyLO
 i8SFeXCOdWPw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,232,1610438400"; 
   d="gz'50?scan'50,208,50";a="519948953"
Received: from lkp-server01.sh.intel.com (HELO 3e992a48ca98) ([10.239.97.150])
  by orsmga004.jf.intel.com with ESMTP; 08 Mar 2021 06:09:18 -0800
Received: from kbuild by 3e992a48ca98 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lJGZR-00010m-9r; Mon, 08 Mar 2021 14:09:17 +0000
Date: Mon, 8 Mar 2021 22:08:59 +0800
From: kernel test robot <lkp@intel.com>
To: Alex Deucher <alexander.deucher@amd.com>
Cc: kbuild-all@01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org, Luben Tuikov <luben.tuikov@amd.com>
Subject: drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn30/display_rq_dlg_calc_30.c:963:13:
 warning: stack frame size of 2112 bytes in function
 'dml_rq_dlg_get_dlg_params'
Message-ID: <202103082251.Dllr8aVq-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="d6Gm4EdcadzBjdND"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted
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


--d6Gm4EdcadzBjdND
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Alex,

First bad commit (maybe != root cause):

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   144c79ef33536b4ecb4951e07dbc1f2b7fa99d32
commit: 20f2ffe504728612d7b0c34e4f8280e34251e704 drm/amdgpu: fold CONFIG_DRM_AMD_DC_DCN3* into CONFIG_DRM_AMD_DC_DCN (v3)
date:   4 months ago
config: powerpc-randconfig-r003-20210307 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 4d90e460bcc7b3e5ff6c7e2e05e974772489c4b8)
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

>> drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn30/display_rq_dlg_calc_30.c:963:13: warning: stack frame size of 2112 bytes in function 'dml_rq_dlg_get_dlg_params' [-Wframe-larger-than=]
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202103082251.Dllr8aVq-lkp%40intel.com.

--d6Gm4EdcadzBjdND
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--d6Gm4EdcadzBjdND--
