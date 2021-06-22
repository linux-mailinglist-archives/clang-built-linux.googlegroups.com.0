Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB3NNZGDAMGQEEFU5STQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63d.google.com (mail-pl1-x63d.google.com [IPv6:2607:f8b0:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id 15F5A3B0F6D
	for <lists+clang-built-linux@lfdr.de>; Tue, 22 Jun 2021 23:32:31 +0200 (CEST)
Received: by mail-pl1-x63d.google.com with SMTP id q12-20020a170902a3ccb0290124d72c3413sf2854486plb.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 22 Jun 2021 14:32:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624397549; cv=pass;
        d=google.com; s=arc-20160816;
        b=oSRSB0rjAO+dCdFgIxrMjEBK2iKmpuBlj4QnRtXpMIjPp6RN2FODEd6EfYZqOwWMma
         eaPqENgVnt/2ZsRNcQ9JUHxManwaRI/e/Eg9+OTK8PhfAB3rzJjmwyU687a/q+ZYtvgU
         HrS7UtPEDtoRp2PYrkHBVhRKZ5UfADJLZJCpHHdiHaItZEgRduUwjDg5ppAwZeDHnd9F
         Cm5nW4Sjomc9UxDChoovnq6Gqjtf8ZPW5u/s8qY8gbQsugRKbabOgxkRLv4hOaQQ9wh1
         OyCWCaArHWfWQNulvb1yjhds8BEG3AsCM1qRVGPoPwEyHAX4d6NkKmTCD9/8ALktzIT/
         2dfA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=fjCJV/0RINltY/JIixJaMvXGOLKaKuIpsKBt+sKrSm4=;
        b=IEvlGU1CLYGUlZKUMC0Ed9urJ/BGDkAIRTK3G87Iam+WVYpdMmKNLZM2fkd1xhc7UB
         c3YcjAxx5mUc1OMU65d2wZgjhID00jMLpeDgRToBrkc/xswMyZcCKvXb74g2mae4kQBl
         A4BM9wtSgc87xDhXluDc2eTHBAH7vp8eCn37GAGr5itu2a8pVIkFLst7hiMNLUNRwbpR
         ysnmqe4gyHYnsK4KqhNsPxntqL23sFGuIsR8HZcWgAktFb5xPkpyNC0cXNodVzkVJ+ol
         qf03kksVQLB0YB/UYT7ezp2Rm8sSTgs3iPbypphIBtOyP1waGFstFTfsZ/H+Z2RlOYrB
         /v+Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=fjCJV/0RINltY/JIixJaMvXGOLKaKuIpsKBt+sKrSm4=;
        b=RY1fKVyAc93ds5AElSX+VOZ8piGU0vgoFy69tlCOLwWBNHSnoAWp130TNAHSwp9lmY
         gvVAcWO24IQfAD/AtcUo1BPB5Y25Mqp8NQDsiWmsmFyUmTdwbbrP8hd8SPDcEPGLHZDD
         7YqN3c6BhZArqSfAQIBV/6TBLabPwwEsZge1+IWhLNBHRnpoFeYcE31TbVZGD//9CZiu
         ueiujtqvU8huEAp/ZCi9vhD8wq1CT280zye7D0/9xXEU7N1kRxbr4EuIlsiWx2sbFhs8
         YHskyQZBX7AI9LzIWvZr60AUifpbsyv11o2OGEtYjgthCu/cds07xxF7XAC/0ayiPjik
         4dcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=fjCJV/0RINltY/JIixJaMvXGOLKaKuIpsKBt+sKrSm4=;
        b=QQ0RlWy5RxkMJfHGCZZjyAsfk3SGsyHKLyzCrXreDAIG79cIzJ0H1hGsiJoBS0+2Nk
         +z/HHEp87JFNMf4cHtYRGeJILMUjSwo4jyEzTgYcRKZ7itAOFRiiqh/xnOdMaDTXMXAw
         JFpvMO5aLIZnhjSyZkosxUn0TudR1uZuvg2Xpwj6w7aX++Sreaiy/3G7seVrA2Y89bui
         SDOyxKEbw/dtoxTD2+L1Non477XtIZkb+9Pe27ID9iA7kwkT7HNbZaALskGOG+nWLqOJ
         5SJd1+Tq5SKOWz5giOqqydSo5A2AEowYZgTySrmsed6pECbo9IIXUKc593yc2v6rwt1C
         8QJg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530AWhcQAl4XeweCAVlzBGMk7Z+rNs3Yl0jh6m5aypDAGXgfOFX2
	3I5YJOnGAf6xWK0Fn9xhtvk=
X-Google-Smtp-Source: ABdhPJzTsIHGZTKJSF/j7yzwDhMcilHWkB+cpMjGmX4uNr9a4VNNWS/lgRMLz8xp6S805hrRcP5t6g==
X-Received: by 2002:a17:90a:9b13:: with SMTP id f19mr5813299pjp.229.1624397549200;
        Tue, 22 Jun 2021 14:32:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6a00:24d5:: with SMTP id d21ls63399pfv.1.gmail; Tue, 22
 Jun 2021 14:32:28 -0700 (PDT)
X-Received: by 2002:a05:6a00:14c4:b029:303:fd5e:3800 with SMTP id w4-20020a056a0014c4b0290303fd5e3800mr5647651pfu.41.1624397548390;
        Tue, 22 Jun 2021 14:32:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624397548; cv=none;
        d=google.com; s=arc-20160816;
        b=W4LzqKx/AlAxp29n7o9yALUBcUJdZSGDADNrdDGmKKZbvYAHVPWOW/UGS82aQJsqRt
         /xZyBYHTu7a5E8uIzyz8scbT8hCfmcFZuR00gYiP/+iJLJq0OhG6eYC6SElJlLvVIZfT
         u1zS2HzzgWGeDuE3C66LYdEIXbIDlMr45g4h2ovl1ZACfCEBN8SL3Pe/WNTw9YlkIC+H
         nuQcIMFoPF9dQkr6XhtqNpACZY7141cEb69ow3+GTwgn377Nbb5/5TDDdn+rTBZLgFof
         iWmiuv2fZzTmtyU7gGuvLhSaeVG4SJ8X99j7+QsVEBNTKYHO3AEjuMZKT1H93GLe6b6o
         VaUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=2QDq4CoNBUuF174DgGhMA/ekIBMOjLzMVlM/I71+Wvg=;
        b=VJtw73bjYGerOu8vGL/p4YUHH5VzizCAG/faYWSnYGUC6sk51O0LUhkdPwBkwfVedp
         QswOYhicylPUP4v8+IwCjduM9SVjh64sa9iNHRQvShvmimlQbWtS9nssm3b8WGjkerC5
         0ORGqzJpsrBOEJESB4rsFqnCK28+Pl3q3b/f4ecymPzRuMCIgKh18TRk2/RRD6QDNx/0
         IbP0W1CjRgj8Korum/1/oeQ0L93YUIwxvMhjqYGU8isTgKqWsP4/tP4pMxk7320YhSKE
         gJ/H+FjWKdHLumpUZVJz3GxzEJyVKcHUncoz3RQkkZ14MlSWKEN4l/F2M00cztIGfFLT
         y0XA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga06.intel.com (mga06.intel.com. [134.134.136.31])
        by gmr-mx.google.com with ESMTPS id z18si26979pfc.5.2021.06.22.14.32.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 22 Jun 2021 14:32:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) client-ip=134.134.136.31;
IronPort-SDR: oIzl2U2BwGsx/pUeo0dKfxjQj0uPq8gaMfb2JPrNEdhyja9fUR/prMe/a+lfcqZU85m8CjG7fy
 gMVv8vKbBZcg==
X-IronPort-AV: E=McAfee;i="6200,9189,10023"; a="268286464"
X-IronPort-AV: E=Sophos;i="5.83,292,1616482800"; 
   d="gz'50?scan'50,208,50";a="268286464"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 22 Jun 2021 14:32:25 -0700
IronPort-SDR: oBJ2o73ypytYQVedxEk9AWSTtZPgRdPqkMEeMboRPwfB/JDnr183DV2kVZpTSCanlX+f4ofW65
 PpOFc44tjNlg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,292,1616482800"; 
   d="gz'50?scan'50,208,50";a="406467324"
Received: from lkp-server01.sh.intel.com (HELO 4aae0cb4f5b5) ([10.239.97.150])
  by orsmga003.jf.intel.com with ESMTP; 22 Jun 2021 14:32:22 -0700
Received: from kbuild by 4aae0cb4f5b5 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lvo0M-0005TR-9V; Tue, 22 Jun 2021 21:32:22 +0000
Date: Wed, 23 Jun 2021 05:31:52 +0800
From: kernel test robot <lkp@intel.com>
To: Alex Deucher <alexander.deucher@amd.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Linux Memory Management List <linux-mm@kvack.org>,
	Nicholas Kazlauskas <nicholas.kazlauskas@amd.com>
Subject: [linux-next:master 11974/12271]
 drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn31/display_rq_dlg_calc_31.c:939:13:
 warning: stack frame size of 2400 bytes in function
 'dml_rq_dlg_get_dlg_params'
Message-ID: <202106230543.SzVclaM1-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="CE+1k2dSO48ffgeK"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted
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


--CE+1k2dSO48ffgeK
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Alex,

First bad commit (maybe != root cause):

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
head:   4238b1710eadd18dd16de0288a2bc5bb84614b4e
commit: 2631b42588c114dbb29d06934cfa742e5fe0897f [11974/12271] drm/amdgpu/display: fold DRM_AMD_DC_DCN3_1 into DRM_AMD_DC_DCN
config: powerpc64-randconfig-r001-20210622 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project b3634d3e88b7f26534a5057bff182b7dced584fc)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc64 cross compiling tool for clang build
        # apt-get install binutils-powerpc64-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=2631b42588c114dbb29d06934cfa742e5fe0897f
        git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
        git fetch --no-tags linux-next master
        git checkout 2631b42588c114dbb29d06934cfa742e5fe0897f
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   In file included from drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn31/display_rq_dlg_calc_31.c:26:
   In file included from drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn31/../display_mode_lib.h:28:
   In file included from drivers/gpu/drm/amd/amdgpu/../display/dc/dm_services.h:35:
   In file included from drivers/gpu/drm/amd/amdgpu/../display/dc/dm_services_types.h:29:
   In file included from drivers/gpu/drm/amd/amdgpu/../display/dc/os_types.h:30:
   In file included from include/linux/kgdb.h:18:
   In file included from include/linux/atomic.h:7:
   In file included from arch/powerpc/include/asm/atomic.h:11:
   In file included from arch/powerpc/include/asm/cmpxchg.h:8:
   In file included from include/linux/bug.h:5:
   In file included from arch/powerpc/include/asm/bug.h:109:
   In file included from include/asm-generic/bug.h:20:
   In file included from include/linux/kernel.h:12:
   In file included from include/linux/bitops.h:32:
   In file included from arch/powerpc/include/asm/bitops.h:62:
   arch/powerpc/include/asm/barrier.h:49:9: warning: '__lwsync' macro redefined [-Wmacro-redefined]
   #define __lwsync()      __asm__ __volatile__ (stringify_in_c(LWSYNC) : : :"memory")
           ^
   <built-in>:309:9: note: previous definition is here
   #define __lwsync __builtin_ppc_lwsync
           ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn31/display_rq_dlg_calc_31.c:1006:15: warning: variable 'dppclk_delay_subtotal' set but not used [-Wunused-but-set-variable]
           unsigned int dppclk_delay_subtotal;
                        ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn31/display_rq_dlg_calc_31.c:1007:15: warning: variable 'dispclk_delay_subtotal' set but not used [-Wunused-but-set-variable]
           unsigned int dispclk_delay_subtotal;
                        ^
>> drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn31/display_rq_dlg_calc_31.c:939:13: warning: stack frame size of 2400 bytes in function 'dml_rq_dlg_get_dlg_params' [-Wframe-larger-than]
   static void dml_rq_dlg_get_dlg_params(
               ^
   4 warnings generated.


vim +/dml_rq_dlg_get_dlg_params +939 drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn31/display_rq_dlg_calc_31.c

74458c081fcfb0 Nicholas Kazlauskas 2021-05-19   936  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19   937  // Note: currently taken in as is.
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19   938  // Nice to decouple code from hw register implement and extract code that are repeated for luma and chroma.
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  @939  static void dml_rq_dlg_get_dlg_params(
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19   940  		struct display_mode_lib *mode_lib,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19   941  		const display_e2e_pipe_params_st *e2e_pipe_param,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19   942  		const unsigned int num_pipes,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19   943  		const unsigned int pipe_idx,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19   944  		display_dlg_regs_st *disp_dlg_regs,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19   945  		display_ttu_regs_st *disp_ttu_regs,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19   946  		const display_rq_dlg_params_st rq_dlg_param,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19   947  		const display_dlg_sys_params_st dlg_sys_param,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19   948  		const bool cstate_en,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19   949  		const bool pstate_en,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19   950  		const bool vm_en,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19   951  		const bool ignore_viewport_pos,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19   952  		const bool immediate_flip_support)
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19   953  {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19   954  	const display_pipe_source_params_st *src = &e2e_pipe_param[pipe_idx].pipe.src;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19   955  	const display_pipe_dest_params_st *dst = &e2e_pipe_param[pipe_idx].pipe.dest;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19   956  	const display_output_params_st *dout = &e2e_pipe_param[pipe_idx].dout;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19   957  	const display_clocks_and_cfg_st *clks = &e2e_pipe_param[pipe_idx].clks_cfg;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19   958  	const scaler_ratio_depth_st *scl = &e2e_pipe_param[pipe_idx].pipe.scale_ratio_depth;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19   959  	const scaler_taps_st *taps = &e2e_pipe_param[pipe_idx].pipe.scale_taps;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19   960  	unsigned int pipe_index_in_combine[DC__NUM_PIPES__MAX];
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19   961  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19   962  	// -------------------------
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19   963  	// Section 1.15.2.1: OTG dependent Params
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19   964  	// -------------------------
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19   965  	// Timing
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19   966  	unsigned int htotal = dst->htotal;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19   967  	unsigned int hblank_end = dst->hblank_end;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19   968  	unsigned int vblank_start = dst->vblank_start;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19   969  	unsigned int vblank_end = dst->vblank_end;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19   970  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19   971  	double dppclk_freq_in_mhz = clks->dppclk_mhz;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19   972  	double refclk_freq_in_mhz = clks->refclk_mhz;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19   973  	double pclk_freq_in_mhz = dst->pixel_rate_mhz;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19   974  	bool interlaced = dst->interlaced;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19   975  	double ref_freq_to_pix_freq = refclk_freq_in_mhz / pclk_freq_in_mhz;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19   976  	double min_ttu_vblank;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19   977  	unsigned int dlg_vblank_start;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19   978  	bool dual_plane;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19   979  	bool mode_422;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19   980  	unsigned int access_dir;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19   981  	unsigned int vp_height_l;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19   982  	unsigned int vp_width_l;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19   983  	unsigned int vp_height_c;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19   984  	unsigned int vp_width_c;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19   985  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19   986  	// Scaling
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19   987  	unsigned int htaps_l;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19   988  	unsigned int htaps_c;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19   989  	double hratio_l;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19   990  	double hratio_c;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19   991  	double vratio_l;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19   992  	double vratio_c;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19   993  	bool scl_enable;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19   994  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19   995  	unsigned int swath_width_ub_l;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19   996  	unsigned int dpte_groups_per_row_ub_l;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19   997  	unsigned int swath_width_ub_c;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19   998  	unsigned int dpte_groups_per_row_ub_c;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19   999  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1000  	unsigned int meta_chunks_per_row_ub_l;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1001  	unsigned int meta_chunks_per_row_ub_c;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1002  	unsigned int vupdate_offset;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1003  	unsigned int vupdate_width;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1004  	unsigned int vready_offset;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1005  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1006  	unsigned int dppclk_delay_subtotal;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1007  	unsigned int dispclk_delay_subtotal;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1008  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1009  	unsigned int vstartup_start;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1010  	unsigned int dst_x_after_scaler;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1011  	unsigned int dst_y_after_scaler;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1012  	double dst_y_prefetch;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1013  	double dst_y_per_vm_vblank;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1014  	double dst_y_per_row_vblank;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1015  	double dst_y_per_vm_flip;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1016  	double dst_y_per_row_flip;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1017  	double max_dst_y_per_vm_vblank;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1018  	double max_dst_y_per_row_vblank;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1019  	double vratio_pre_l;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1020  	double vratio_pre_c;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1021  	unsigned int req_per_swath_ub_l;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1022  	unsigned int req_per_swath_ub_c;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1023  	unsigned int meta_row_height_l;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1024  	unsigned int meta_row_height_c;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1025  	unsigned int swath_width_pixels_ub_l;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1026  	unsigned int swath_width_pixels_ub_c;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1027  	unsigned int scaler_rec_in_width_l;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1028  	unsigned int scaler_rec_in_width_c;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1029  	unsigned int dpte_row_height_l;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1030  	unsigned int dpte_row_height_c;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1031  	double hscale_pixel_rate_l;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1032  	double hscale_pixel_rate_c;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1033  	double min_hratio_fact_l;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1034  	double min_hratio_fact_c;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1035  	double refcyc_per_line_delivery_pre_l;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1036  	double refcyc_per_line_delivery_pre_c;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1037  	double refcyc_per_line_delivery_l;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1038  	double refcyc_per_line_delivery_c;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1039  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1040  	double refcyc_per_req_delivery_pre_l;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1041  	double refcyc_per_req_delivery_pre_c;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1042  	double refcyc_per_req_delivery_l;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1043  	double refcyc_per_req_delivery_c;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1044  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1045  	unsigned int full_recout_width;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1046  	double refcyc_per_req_delivery_pre_cur0;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1047  	double refcyc_per_req_delivery_cur0;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1048  	double refcyc_per_req_delivery_pre_cur1;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1049  	double refcyc_per_req_delivery_cur1;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1050  	int unsigned vba__min_dst_y_next_start = get_min_dst_y_next_start(mode_lib, e2e_pipe_param, num_pipes, pipe_idx); // FROM VBA
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1051  	int unsigned vba__vready_after_vcount0 = get_vready_at_or_after_vsync(mode_lib, e2e_pipe_param, num_pipes, pipe_idx); // From VBA
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1052  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1053  	float vba__refcyc_per_line_delivery_pre_l = get_refcyc_per_line_delivery_pre_l_in_us(mode_lib, e2e_pipe_param, num_pipes, pipe_idx) * refclk_freq_in_mhz; // From VBA
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1054  	float vba__refcyc_per_line_delivery_l = get_refcyc_per_line_delivery_l_in_us(mode_lib, e2e_pipe_param, num_pipes, pipe_idx) * refclk_freq_in_mhz; // From VBA
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1055  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1056  	float vba__refcyc_per_req_delivery_pre_l = get_refcyc_per_req_delivery_pre_l_in_us(mode_lib, e2e_pipe_param, num_pipes, pipe_idx) * refclk_freq_in_mhz;  // From VBA
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1057  	float vba__refcyc_per_req_delivery_l = get_refcyc_per_req_delivery_l_in_us(mode_lib, e2e_pipe_param, num_pipes, pipe_idx) * refclk_freq_in_mhz;  // From VBA
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1058  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1059  	memset(disp_dlg_regs, 0, sizeof(*disp_dlg_regs));
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1060  	memset(disp_ttu_regs, 0, sizeof(*disp_ttu_regs));
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1061  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1062  	dml_print("DML_DLG: %s: cstate_en = %d\n", __func__, cstate_en);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1063  	dml_print("DML_DLG: %s: pstate_en = %d\n", __func__, pstate_en);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1064  	dml_print("DML_DLG: %s: vm_en     = %d\n", __func__, vm_en);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1065  	dml_print("DML_DLG: %s: ignore_viewport_pos  = %d\n", __func__, ignore_viewport_pos);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1066  	dml_print("DML_DLG: %s: immediate_flip_support  = %d\n", __func__, immediate_flip_support);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1067  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1068  	dml_print("DML_DLG: %s: dppclk_freq_in_mhz     = %3.2f\n", __func__, dppclk_freq_in_mhz);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1069  	dml_print("DML_DLG: %s: refclk_freq_in_mhz     = %3.2f\n", __func__, refclk_freq_in_mhz);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1070  	dml_print("DML_DLG: %s: pclk_freq_in_mhz       = %3.2f\n", __func__, pclk_freq_in_mhz);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1071  	dml_print("DML_DLG: %s: interlaced             = %d\n", __func__, interlaced); ASSERT(ref_freq_to_pix_freq < 4.0);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1072  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1073  	disp_dlg_regs->ref_freq_to_pix_freq = (unsigned int) (ref_freq_to_pix_freq * dml_pow(2, 19));
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1074  	disp_dlg_regs->refcyc_per_htotal = (unsigned int) (ref_freq_to_pix_freq * (double) htotal * dml_pow(2, 8));
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1075  	disp_dlg_regs->dlg_vblank_end = interlaced ? (vblank_end / 2) : vblank_end;	// 15 bits
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1076  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1077  	//set_prefetch_mode(mode_lib, cstate_en, pstate_en, ignore_viewport_pos, immediate_flip_support);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1078  	min_ttu_vblank = get_min_ttu_vblank_in_us(mode_lib, e2e_pipe_param, num_pipes, pipe_idx);	// From VBA
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1079  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1080  	dlg_vblank_start = interlaced ? (vblank_start / 2) : vblank_start;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1081  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1082  	disp_dlg_regs->min_dst_y_next_start = (unsigned int) (((double) dlg_vblank_start) * dml_pow(2, 2));
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1083  	ASSERT(disp_dlg_regs->min_dst_y_next_start < (unsigned int)dml_pow(2, 18));
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1084  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1085  	dml_print("DML_DLG: %s: min_ttu_vblank (us)         = %3.2f\n", __func__, min_ttu_vblank);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1086  	dml_print("DML_DLG: %s: min_dst_y_next_start        = 0x%0x\n", __func__, disp_dlg_regs->min_dst_y_next_start);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1087  	dml_print("DML_DLG: %s: dlg_vblank_start            = 0x%0x\n", __func__, dlg_vblank_start);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1088  	dml_print("DML_DLG: %s: ref_freq_to_pix_freq        = %3.2f\n", __func__, ref_freq_to_pix_freq);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1089  	dml_print("DML_DLG: %s: vba__min_dst_y_next_start   = 0x%0x\n", __func__, vba__min_dst_y_next_start);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1090  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1091  	//old_impl_vs_vba_impl("min_dst_y_next_start", dlg_vblank_start, vba__min_dst_y_next_start);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1092  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1093  	// -------------------------
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1094  	// Section 1.15.2.2: Prefetch, Active and TTU
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1095  	// -------------------------
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1096  	// Prefetch Calc
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1097  	// Source
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1098  	dual_plane = is_dual_plane((enum source_format_class) (src->source_format));
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1099  	mode_422 = 0;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1100  	access_dir = (src->source_scan == dm_vert);	// vp access direction: horizontal or vertical accessed
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1101  	vp_height_l = src->viewport_height;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1102  	vp_width_l = src->viewport_width;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1103  	vp_height_c = src->viewport_height_c;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1104  	vp_width_c = src->viewport_width_c;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1105  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1106  	// Scaling
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1107  	htaps_l = taps->htaps;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1108  	htaps_c = taps->htaps_c;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1109  	hratio_l = scl->hscl_ratio;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1110  	hratio_c = scl->hscl_ratio_c;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1111  	vratio_l = scl->vscl_ratio;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1112  	vratio_c = scl->vscl_ratio_c;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1113  	scl_enable = scl->scl_enable;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1114  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1115  	swath_width_ub_l = rq_dlg_param.rq_l.swath_width_ub;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1116  	dpte_groups_per_row_ub_l = rq_dlg_param.rq_l.dpte_groups_per_row_ub;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1117  	swath_width_ub_c = rq_dlg_param.rq_c.swath_width_ub;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1118  	dpte_groups_per_row_ub_c = rq_dlg_param.rq_c.dpte_groups_per_row_ub;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1119  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1120  	meta_chunks_per_row_ub_l = rq_dlg_param.rq_l.meta_chunks_per_row_ub;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1121  	meta_chunks_per_row_ub_c = rq_dlg_param.rq_c.meta_chunks_per_row_ub;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1122  	vupdate_offset = dst->vupdate_offset;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1123  	vupdate_width = dst->vupdate_width;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1124  	vready_offset = dst->vready_offset;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1125  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1126  	dppclk_delay_subtotal = mode_lib->ip.dppclk_delay_subtotal;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1127  	dispclk_delay_subtotal = mode_lib->ip.dispclk_delay_subtotal;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1128  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1129  	if (scl_enable)
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1130  		dppclk_delay_subtotal += mode_lib->ip.dppclk_delay_scl;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1131  	else
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1132  		dppclk_delay_subtotal += mode_lib->ip.dppclk_delay_scl_lb_only;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1133  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1134  	dppclk_delay_subtotal += mode_lib->ip.dppclk_delay_cnvc_formatter + src->num_cursors * mode_lib->ip.dppclk_delay_cnvc_cursor;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1135  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1136  	if (dout->dsc_enable) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1137  		double dsc_delay = get_dsc_delay(mode_lib, e2e_pipe_param, num_pipes, pipe_idx); // FROM VBA
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1138  		dispclk_delay_subtotal += dsc_delay;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1139  	}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1140  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1141  	vstartup_start = dst->vstartup_start;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1142  	if (interlaced) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1143  		if (vstartup_start / 2.0 - (double) (vready_offset + vupdate_width + vupdate_offset) / htotal <= vblank_end / 2.0)
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1144  			disp_dlg_regs->vready_after_vcount0 = 1;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1145  		else
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1146  			disp_dlg_regs->vready_after_vcount0 = 0;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1147  	} else {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1148  		if (vstartup_start - (double) (vready_offset + vupdate_width + vupdate_offset) / htotal <= vblank_end)
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1149  			disp_dlg_regs->vready_after_vcount0 = 1;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1150  		else
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1151  			disp_dlg_regs->vready_after_vcount0 = 0;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1152  	}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1153  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1154  	dml_print("DML_DLG: %s: vready_after_vcount0 = %d\n", __func__, disp_dlg_regs->vready_after_vcount0);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1155  	dml_print("DML_DLG: %s: vba__vready_after_vcount0 = %d\n", __func__, vba__vready_after_vcount0);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1156  	//old_impl_vs_vba_impl("vready_after_vcount0", disp_dlg_regs->vready_after_vcount0, vba__vready_after_vcount0);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1157  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1158  	if (interlaced)
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1159  		vstartup_start = vstartup_start / 2;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1160  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1161  	dst_x_after_scaler = get_dst_x_after_scaler(mode_lib, e2e_pipe_param, num_pipes, pipe_idx); // From VBA
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1162  	dst_y_after_scaler = get_dst_y_after_scaler(mode_lib, e2e_pipe_param, num_pipes, pipe_idx); // From VBA
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1163  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1164  	// do some adjustment on the dst_after scaler to account for odm combine mode
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1165  	dml_print("DML_DLG: %s: input dst_x_after_scaler   = %d\n", __func__, dst_x_after_scaler);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1166  	dml_print("DML_DLG: %s: input dst_y_after_scaler   = %d\n", __func__, dst_y_after_scaler);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1167  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1168  	// need to figure out which side of odm combine we're in
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1169  	if (dst->odm_combine) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1170  		// figure out which pipes go together
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1171  		bool visited[DC__NUM_PIPES__MAX];
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1172  		unsigned int i, j, k;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1173  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1174  		for (k = 0; k < num_pipes; ++k) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1175  			visited[k] = false;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1176  			pipe_index_in_combine[k] = 0;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1177  		}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1178  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1179  		for (i = 0; i < num_pipes; i++) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1180  			if (e2e_pipe_param[i].pipe.src.is_hsplit && !visited[i]) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1181  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1182  				unsigned int grp = e2e_pipe_param[i].pipe.src.hsplit_grp;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1183  				unsigned int grp_idx = 0;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1184  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1185  				for (j = i; j < num_pipes; j++) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1186  					if (e2e_pipe_param[j].pipe.src.hsplit_grp == grp && e2e_pipe_param[j].pipe.src.is_hsplit && !visited[j]) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1187  						pipe_index_in_combine[j] = grp_idx;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1188  						dml_print("DML_DLG: %s: pipe[%d] is in grp %d idx %d\n", __func__, j, grp, grp_idx);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1189  						grp_idx++;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1190  						visited[j] = true;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1191  					}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1192  				}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1193  			}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1194  		}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1195  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1196  	}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1197  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1198  	if (dst->odm_combine == dm_odm_combine_mode_disabled) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1199  		disp_dlg_regs->refcyc_h_blank_end = (unsigned int) ((double) hblank_end * ref_freq_to_pix_freq);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1200  	} else {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1201  		unsigned int odm_combine_factor = (dst->odm_combine == dm_odm_combine_mode_2to1 ? 2 : 4); // TODO: We should really check that 4to1 is supported before setting it to 4
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1202  		unsigned int odm_pipe_index = pipe_index_in_combine[pipe_idx];
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1203  		disp_dlg_regs->refcyc_h_blank_end = (unsigned int) (((double) hblank_end + odm_pipe_index * (double) dst->hactive / odm_combine_factor) * ref_freq_to_pix_freq);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1204  	} ASSERT(disp_dlg_regs->refcyc_h_blank_end < (unsigned int)dml_pow(2, 13));
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1205  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1206  	dml_print("DML_DLG: %s: htotal                     = %d\n", __func__, htotal);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1207  	dml_print("DML_DLG: %s: dst_x_after_scaler[%d]     = %d\n", __func__, pipe_idx, dst_x_after_scaler);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1208  	dml_print("DML_DLG: %s: dst_y_after_scaler[%d]     = %d\n", __func__, pipe_idx, dst_y_after_scaler);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1209  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1210  	dst_y_prefetch = get_dst_y_prefetch(mode_lib, e2e_pipe_param, num_pipes, pipe_idx);        // From VBA
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1211  	dst_y_per_vm_vblank = get_dst_y_per_vm_vblank(mode_lib, e2e_pipe_param, num_pipes, pipe_idx);        // From VBA
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1212  	dst_y_per_row_vblank = get_dst_y_per_row_vblank(mode_lib, e2e_pipe_param, num_pipes, pipe_idx);        // From VBA
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1213  	dst_y_per_vm_flip = get_dst_y_per_vm_flip(mode_lib, e2e_pipe_param, num_pipes, pipe_idx);        // From VBA
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1214  	dst_y_per_row_flip = get_dst_y_per_row_flip(mode_lib, e2e_pipe_param, num_pipes, pipe_idx);        // From VBA
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1215  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1216  	max_dst_y_per_vm_vblank = 32.0;        //U5.2
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1217  	max_dst_y_per_row_vblank = 16.0;        //U4.2
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1218  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1219  	// magic!
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1220  	if (htotal <= 75) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1221  		max_dst_y_per_vm_vblank = 100.0;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1222  		max_dst_y_per_row_vblank = 100.0;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1223  	}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1224  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1225  	dml_print("DML_DLG: %s: dst_y_prefetch (after rnd) = %3.2f\n", __func__, dst_y_prefetch);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1226  	dml_print("DML_DLG: %s: dst_y_per_vm_flip    = %3.2f\n", __func__, dst_y_per_vm_flip);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1227  	dml_print("DML_DLG: %s: dst_y_per_row_flip   = %3.2f\n", __func__, dst_y_per_row_flip);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1228  	dml_print("DML_DLG: %s: dst_y_per_vm_vblank  = %3.2f\n", __func__, dst_y_per_vm_vblank);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1229  	dml_print("DML_DLG: %s: dst_y_per_row_vblank = %3.2f\n", __func__, dst_y_per_row_vblank);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1230  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1231  	ASSERT(dst_y_per_vm_vblank < max_dst_y_per_vm_vblank); ASSERT(dst_y_per_row_vblank < max_dst_y_per_row_vblank);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1232  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1233  	ASSERT(dst_y_prefetch > (dst_y_per_vm_vblank + dst_y_per_row_vblank));
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1234  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1235  	vratio_pre_l = get_vratio_prefetch_l(mode_lib, e2e_pipe_param, num_pipes, pipe_idx);    // From VBA
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1236  	vratio_pre_c = get_vratio_prefetch_c(mode_lib, e2e_pipe_param, num_pipes, pipe_idx);    // From VBA
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1237  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1238  	dml_print("DML_DLG: %s: vratio_pre_l = %3.2f\n", __func__, vratio_pre_l);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1239  	dml_print("DML_DLG: %s: vratio_pre_c = %3.2f\n", __func__, vratio_pre_c);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1240  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1241  	// Active
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1242  	req_per_swath_ub_l = rq_dlg_param.rq_l.req_per_swath_ub;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1243  	req_per_swath_ub_c = rq_dlg_param.rq_c.req_per_swath_ub;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1244  	meta_row_height_l = rq_dlg_param.rq_l.meta_row_height;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1245  	meta_row_height_c = rq_dlg_param.rq_c.meta_row_height;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1246  	swath_width_pixels_ub_l = 0;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1247  	swath_width_pixels_ub_c = 0;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1248  	scaler_rec_in_width_l = 0;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1249  	scaler_rec_in_width_c = 0;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1250  	dpte_row_height_l = rq_dlg_param.rq_l.dpte_row_height;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1251  	dpte_row_height_c = rq_dlg_param.rq_c.dpte_row_height;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1252  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1253  	if (mode_422) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1254  		swath_width_pixels_ub_l = swath_width_ub_l * 2;  // *2 for 2 pixel per element
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1255  		swath_width_pixels_ub_c = swath_width_ub_c * 2;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1256  	} else {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1257  		swath_width_pixels_ub_l = swath_width_ub_l * 1;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1258  		swath_width_pixels_ub_c = swath_width_ub_c * 1;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1259  	}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1260  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1261  	hscale_pixel_rate_l = 0.;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1262  	hscale_pixel_rate_c = 0.;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1263  	min_hratio_fact_l = 1.0;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1264  	min_hratio_fact_c = 1.0;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1265  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1266  	if (hratio_l <= 1)
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1267  		min_hratio_fact_l = 2.0;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1268  	else if (htaps_l <= 6) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1269  		if ((hratio_l * 2.0) > 4.0)
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1270  			min_hratio_fact_l = 4.0;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1271  		else
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1272  			min_hratio_fact_l = hratio_l * 2.0;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1273  	} else {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1274  		if (hratio_l > 4.0)
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1275  			min_hratio_fact_l = 4.0;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1276  		else
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1277  			min_hratio_fact_l = hratio_l;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1278  	}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1279  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1280  	hscale_pixel_rate_l = min_hratio_fact_l * dppclk_freq_in_mhz;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1281  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1282  	dml_print("DML_DLG: %s: hratio_l = %3.2f\n", __func__, hratio_l);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1283  	dml_print("DML_DLG: %s: min_hratio_fact_l = %3.2f\n", __func__, min_hratio_fact_l);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1284  	dml_print("DML_DLG: %s: hscale_pixel_rate_l = %3.2f\n", __func__, hscale_pixel_rate_l);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1285  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1286  	if (hratio_c <= 1)
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1287  		min_hratio_fact_c = 2.0;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1288  	else if (htaps_c <= 6) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1289  		if ((hratio_c * 2.0) > 4.0)
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1290  			min_hratio_fact_c = 4.0;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1291  		else
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1292  			min_hratio_fact_c = hratio_c * 2.0;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1293  	} else {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1294  		if (hratio_c > 4.0)
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1295  			min_hratio_fact_c = 4.0;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1296  		else
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1297  			min_hratio_fact_c = hratio_c;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1298  	}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1299  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1300  	hscale_pixel_rate_c = min_hratio_fact_c * dppclk_freq_in_mhz;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1301  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1302  	refcyc_per_line_delivery_pre_l = 0.;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1303  	refcyc_per_line_delivery_pre_c = 0.;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1304  	refcyc_per_line_delivery_l = 0.;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1305  	refcyc_per_line_delivery_c = 0.;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1306  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1307  	refcyc_per_req_delivery_pre_l = 0.;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1308  	refcyc_per_req_delivery_pre_c = 0.;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1309  	refcyc_per_req_delivery_l = 0.;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1310  	refcyc_per_req_delivery_c = 0.;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1311  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1312  	full_recout_width = 0;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1313  	// In ODM
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1314  	if (src->is_hsplit) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1315  		// This "hack"  is only allowed (and valid) for MPC combine. In ODM
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1316  		// combine, you MUST specify the full_recout_width...according to Oswin
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1317  		if (dst->full_recout_width == 0 && !dst->odm_combine) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1318  			dml_print("DML_DLG: %s: Warning: full_recout_width not set in hsplit mode\n", __func__);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1319  			full_recout_width = dst->recout_width * 2; // assume half split for dcn1
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1320  		} else
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1321  			full_recout_width = dst->full_recout_width;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1322  	} else
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1323  		full_recout_width = dst->recout_width;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1324  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1325  	// As of DCN2, mpc_combine and odm_combine are mutually exclusive
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1326  	refcyc_per_line_delivery_pre_l = get_refcyc_per_delivery(
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1327  			mode_lib,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1328  			refclk_freq_in_mhz,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1329  			pclk_freq_in_mhz,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1330  			dst->odm_combine,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1331  			full_recout_width,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1332  			dst->hactive,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1333  			vratio_pre_l,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1334  			hscale_pixel_rate_l,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1335  			swath_width_pixels_ub_l,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1336  			1); // per line
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1337  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1338  	refcyc_per_line_delivery_l = get_refcyc_per_delivery(
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1339  			mode_lib,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1340  			refclk_freq_in_mhz,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1341  			pclk_freq_in_mhz,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1342  			dst->odm_combine,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1343  			full_recout_width,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1344  			dst->hactive,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1345  			vratio_l,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1346  			hscale_pixel_rate_l,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1347  			swath_width_pixels_ub_l,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1348  			1); // per line
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1349  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1350  	dml_print("DML_DLG: %s: full_recout_width              = %d\n", __func__, full_recout_width);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1351  	dml_print("DML_DLG: %s: hscale_pixel_rate_l            = %3.2f\n", __func__, hscale_pixel_rate_l);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1352  	dml_print("DML_DLG: %s: refcyc_per_line_delivery_pre_l = %3.2f\n", __func__, refcyc_per_line_delivery_pre_l);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1353  	dml_print("DML_DLG: %s: refcyc_per_line_delivery_l     = %3.2f\n", __func__, refcyc_per_line_delivery_l);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1354  	dml_print("DML_DLG: %s: vba__refcyc_per_line_delivery_pre_l = %3.2f\n", __func__, vba__refcyc_per_line_delivery_pre_l);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1355  	dml_print("DML_DLG: %s: vba__refcyc_per_line_delivery_l     = %3.2f\n", __func__, vba__refcyc_per_line_delivery_l);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1356  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1357  	//old_impl_vs_vba_impl("refcyc_per_line_delivery_pre_l", refcyc_per_line_delivery_pre_l, vba__refcyc_per_line_delivery_pre_l);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1358  	//old_impl_vs_vba_impl("refcyc_per_line_delivery_l", refcyc_per_line_delivery_l, vba__refcyc_per_line_delivery_l);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1359  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1360  	if (dual_plane) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1361  		float vba__refcyc_per_line_delivery_pre_c = get_refcyc_per_line_delivery_pre_c_in_us(mode_lib, e2e_pipe_param, num_pipes, pipe_idx) * refclk_freq_in_mhz; // From VBA
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1362  		float vba__refcyc_per_line_delivery_c = get_refcyc_per_line_delivery_c_in_us(mode_lib, e2e_pipe_param, num_pipes, pipe_idx) * refclk_freq_in_mhz; // From VBA
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1363  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1364  		refcyc_per_line_delivery_pre_c = get_refcyc_per_delivery(
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1365  				mode_lib,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1366  				refclk_freq_in_mhz,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1367  				pclk_freq_in_mhz,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1368  				dst->odm_combine,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1369  				full_recout_width,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1370  				dst->hactive,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1371  				vratio_pre_c,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1372  				hscale_pixel_rate_c,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1373  				swath_width_pixels_ub_c,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1374  				1); // per line
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1375  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1376  		refcyc_per_line_delivery_c = get_refcyc_per_delivery(
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1377  				mode_lib,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1378  				refclk_freq_in_mhz,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1379  				pclk_freq_in_mhz,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1380  				dst->odm_combine,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1381  				full_recout_width,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1382  				dst->hactive,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1383  				vratio_c,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1384  				hscale_pixel_rate_c,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1385  				swath_width_pixels_ub_c,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1386  				1); // per line
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1387  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1388  		dml_print("DML_DLG: %s: refcyc_per_line_delivery_pre_c = %3.2f\n", __func__, refcyc_per_line_delivery_pre_c);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1389  		dml_print("DML_DLG: %s: refcyc_per_line_delivery_c     = %3.2f\n", __func__, refcyc_per_line_delivery_c);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1390  		dml_print("DML_DLG: %s: vba__refcyc_per_line_delivery_pre_c = %3.2f\n", __func__, vba__refcyc_per_line_delivery_pre_c);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1391  		dml_print("DML_DLG: %s: vba__refcyc_per_line_delivery_c     = %3.2f\n", __func__, vba__refcyc_per_line_delivery_c);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1392  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1393  		//old_impl_vs_vba_impl("refcyc_per_line_delivery_pre_c", refcyc_per_line_delivery_pre_c, vba__refcyc_per_line_delivery_pre_c);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1394  		//old_impl_vs_vba_impl("refcyc_per_line_delivery_c", refcyc_per_line_delivery_c, vba__refcyc_per_line_delivery_c);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1395  	}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1396  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1397  	if (src->dynamic_metadata_enable && src->gpuvm)
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1398  		disp_dlg_regs->refcyc_per_vm_dmdata = get_refcyc_per_vm_dmdata_in_us(mode_lib, e2e_pipe_param, num_pipes, pipe_idx) * refclk_freq_in_mhz; // From VBA
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1399  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1400  	disp_dlg_regs->dmdata_dl_delta = get_dmdata_dl_delta_in_us(mode_lib, e2e_pipe_param, num_pipes, pipe_idx) * refclk_freq_in_mhz; // From VBA
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1401  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1402  	// TTU - Luma / Chroma
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1403  	if (access_dir) {  // vertical access
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1404  		scaler_rec_in_width_l = vp_height_l;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1405  		scaler_rec_in_width_c = vp_height_c;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1406  	} else {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1407  		scaler_rec_in_width_l = vp_width_l;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1408  		scaler_rec_in_width_c = vp_width_c;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1409  	}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1410  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1411  	refcyc_per_req_delivery_pre_l = get_refcyc_per_delivery(
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1412  			mode_lib,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1413  			refclk_freq_in_mhz,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1414  			pclk_freq_in_mhz,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1415  			dst->odm_combine,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1416  			full_recout_width,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1417  			dst->hactive,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1418  			vratio_pre_l,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1419  			hscale_pixel_rate_l,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1420  			scaler_rec_in_width_l,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1421  			req_per_swath_ub_l);  // per req
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1422  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1423  	refcyc_per_req_delivery_l = get_refcyc_per_delivery(
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1424  			mode_lib,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1425  			refclk_freq_in_mhz,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1426  			pclk_freq_in_mhz,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1427  			dst->odm_combine,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1428  			full_recout_width,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1429  			dst->hactive,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1430  			vratio_l,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1431  			hscale_pixel_rate_l,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1432  			scaler_rec_in_width_l,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1433  			req_per_swath_ub_l);  // per req
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1434  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1435  	dml_print("DML_DLG: %s: refcyc_per_req_delivery_pre_l = %3.2f\n", __func__, refcyc_per_req_delivery_pre_l);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1436  	dml_print("DML_DLG: %s: refcyc_per_req_delivery_l     = %3.2f\n", __func__, refcyc_per_req_delivery_l);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1437  	dml_print("DML_DLG: %s: vba__refcyc_per_req_delivery_pre_l = %3.2f\n", __func__, vba__refcyc_per_req_delivery_pre_l);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1438  	dml_print("DML_DLG: %s: vba__refcyc_per_req_delivery_l     = %3.2f\n", __func__, vba__refcyc_per_req_delivery_l);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1439  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1440  	//old_impl_vs_vba_impl("refcyc_per_req_delivery_pre_l", refcyc_per_req_delivery_pre_l, vba__refcyc_per_req_delivery_pre_l);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1441  	//old_impl_vs_vba_impl("refcyc_per_req_delivery_l", refcyc_per_req_delivery_l, vba__refcyc_per_req_delivery_l);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1442  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1443  	ASSERT(refcyc_per_req_delivery_pre_l < dml_pow(2, 13)); ASSERT(refcyc_per_req_delivery_l < dml_pow(2, 13));
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1444  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1445  	if (dual_plane) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1446  		float vba__refcyc_per_req_delivery_pre_c = get_refcyc_per_req_delivery_pre_c_in_us(mode_lib, e2e_pipe_param, num_pipes, pipe_idx) * refclk_freq_in_mhz;  // From VBA
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1447  		float vba__refcyc_per_req_delivery_c = get_refcyc_per_req_delivery_c_in_us(mode_lib, e2e_pipe_param, num_pipes, pipe_idx) * refclk_freq_in_mhz;  // From VBA
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1448  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1449  		refcyc_per_req_delivery_pre_c = get_refcyc_per_delivery(
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1450  				mode_lib,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1451  				refclk_freq_in_mhz,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1452  				pclk_freq_in_mhz,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1453  				dst->odm_combine,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1454  				full_recout_width,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1455  				dst->hactive,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1456  				vratio_pre_c,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1457  				hscale_pixel_rate_c,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1458  				scaler_rec_in_width_c,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1459  				req_per_swath_ub_c);  // per req
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1460  		refcyc_per_req_delivery_c = get_refcyc_per_delivery(
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1461  				mode_lib,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1462  				refclk_freq_in_mhz,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1463  				pclk_freq_in_mhz,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1464  				dst->odm_combine,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1465  				full_recout_width,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1466  				dst->hactive,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1467  				vratio_c,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1468  				hscale_pixel_rate_c,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1469  				scaler_rec_in_width_c,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1470  				req_per_swath_ub_c);  // per req
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1471  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1472  		dml_print("DML_DLG: %s: refcyc_per_req_delivery_pre_c = %3.2f\n", __func__, refcyc_per_req_delivery_pre_c);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1473  		dml_print("DML_DLG: %s: refcyc_per_req_delivery_c     = %3.2f\n", __func__, refcyc_per_req_delivery_c);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1474  		dml_print("DML_DLG: %s: vba__refcyc_per_req_delivery_pre_c = %3.2f\n", __func__, vba__refcyc_per_req_delivery_pre_c);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1475  		dml_print("DML_DLG: %s: vba__refcyc_per_req_delivery_c     = %3.2f\n", __func__, vba__refcyc_per_req_delivery_c);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1476  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1477  		//old_impl_vs_vba_impl("refcyc_per_req_delivery_pre_c", refcyc_per_req_delivery_pre_c, vba__refcyc_per_req_delivery_pre_c);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1478  		//old_impl_vs_vba_impl("refcyc_per_req_delivery_c", refcyc_per_req_delivery_c, vba__refcyc_per_req_delivery_c);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1479  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1480  		ASSERT(refcyc_per_req_delivery_pre_c < dml_pow(2, 13)); ASSERT(refcyc_per_req_delivery_c < dml_pow(2, 13));
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1481  	}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1482  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1483  	// TTU - Cursor
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1484  	refcyc_per_req_delivery_pre_cur0 = 0.0;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1485  	refcyc_per_req_delivery_cur0 = 0.0;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1486  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1487  	ASSERT(src->num_cursors <= 1);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1488  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1489  	if (src->num_cursors > 0) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1490  		float vba__refcyc_per_req_delivery_pre_cur0;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1491  		float vba__refcyc_per_req_delivery_cur0;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1492  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1493  		calculate_ttu_cursor(
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1494  				mode_lib,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1495  				&refcyc_per_req_delivery_pre_cur0,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1496  				&refcyc_per_req_delivery_cur0,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1497  				refclk_freq_in_mhz,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1498  				ref_freq_to_pix_freq,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1499  				hscale_pixel_rate_l,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1500  				scl->hscl_ratio,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1501  				vratio_pre_l,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1502  				vratio_l,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1503  				src->cur0_src_width,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1504  				(enum cursor_bpp) (src->cur0_bpp));
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1505  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1506  		vba__refcyc_per_req_delivery_pre_cur0 = get_refcyc_per_cursor_req_delivery_pre_in_us(mode_lib, e2e_pipe_param, num_pipes, pipe_idx) * refclk_freq_in_mhz; // From VBA
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1507  		vba__refcyc_per_req_delivery_cur0 = get_refcyc_per_cursor_req_delivery_in_us(mode_lib, e2e_pipe_param, num_pipes, pipe_idx) * refclk_freq_in_mhz; // From VBA
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1508  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1509  		dml_print("DML_DLG: %s: refcyc_per_req_delivery_pre_cur0 = %3.2f\n", __func__, refcyc_per_req_delivery_pre_cur0);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1510  		dml_print("DML_DLG: %s: refcyc_per_req_delivery_cur0     = %3.2f\n", __func__, refcyc_per_req_delivery_cur0);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1511  		dml_print("DML_DLG: %s: vba__refcyc_per_req_delivery_pre_cur0 = %3.2f\n", __func__, vba__refcyc_per_req_delivery_pre_cur0);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1512  		dml_print("DML_DLG: %s: vba__refcyc_per_req_delivery_cur0     = %3.2f\n", __func__, vba__refcyc_per_req_delivery_cur0);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1513  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1514  		//old_impl_vs_vba_impl("refcyc_per_req_delivery_pre_cur0", refcyc_per_req_delivery_pre_cur0, vba__refcyc_per_req_delivery_pre_cur0);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1515  		//old_impl_vs_vba_impl("refcyc_per_req_delivery_cur0", refcyc_per_req_delivery_cur0, vba__refcyc_per_req_delivery_cur0);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1516  	}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1517  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1518  	refcyc_per_req_delivery_pre_cur1 = 0.0;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1519  	refcyc_per_req_delivery_cur1 = 0.0;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1520  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1521  	// TTU - Misc
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1522  	// all hard-coded
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1523  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1524  	// Assignment to register structures
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1525  	disp_dlg_regs->dst_y_after_scaler = dst_y_after_scaler;	// in terms of line
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1526  	ASSERT(disp_dlg_regs->dst_y_after_scaler < (unsigned int)8);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1527  	disp_dlg_regs->refcyc_x_after_scaler = dst_x_after_scaler * ref_freq_to_pix_freq;	// in terms of refclk
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1528  	ASSERT(disp_dlg_regs->refcyc_x_after_scaler < (unsigned int)dml_pow(2, 13));
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1529  	disp_dlg_regs->dst_y_prefetch = (unsigned int) (dst_y_prefetch * dml_pow(2, 2));
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1530  	disp_dlg_regs->dst_y_per_vm_vblank = (unsigned int) (dst_y_per_vm_vblank * dml_pow(2, 2));
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1531  	disp_dlg_regs->dst_y_per_row_vblank = (unsigned int) (dst_y_per_row_vblank * dml_pow(2, 2));
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1532  	disp_dlg_regs->dst_y_per_vm_flip = (unsigned int) (dst_y_per_vm_flip * dml_pow(2, 2));
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1533  	disp_dlg_regs->dst_y_per_row_flip = (unsigned int) (dst_y_per_row_flip * dml_pow(2, 2));
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1534  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1535  	disp_dlg_regs->vratio_prefetch = (unsigned int) (vratio_pre_l * dml_pow(2, 19));
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1536  	disp_dlg_regs->vratio_prefetch_c = (unsigned int) (vratio_pre_c * dml_pow(2, 19));
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1537  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1538  	dml_print("DML_DLG: %s: disp_dlg_regs->dst_y_per_vm_vblank  = 0x%x\n", __func__, disp_dlg_regs->dst_y_per_vm_vblank);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1539  	dml_print("DML_DLG: %s: disp_dlg_regs->dst_y_per_row_vblank = 0x%x\n", __func__, disp_dlg_regs->dst_y_per_row_vblank);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1540  	dml_print("DML_DLG: %s: disp_dlg_regs->dst_y_per_vm_flip    = 0x%x\n", __func__, disp_dlg_regs->dst_y_per_vm_flip);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1541  	dml_print("DML_DLG: %s: disp_dlg_regs->dst_y_per_row_flip   = 0x%x\n", __func__, disp_dlg_regs->dst_y_per_row_flip);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1542  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1543  	// hack for FPGA
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1544  	if (mode_lib->project == DML_PROJECT_DCN31_FPGA) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1545  		if (disp_dlg_regs->vratio_prefetch >= (unsigned int) dml_pow(2, 22)) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1546  			disp_dlg_regs->vratio_prefetch = (unsigned int) dml_pow(2, 22) - 1;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1547  			dml_print("vratio_prefetch exceed the max value, the register field is [21:0]\n");
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1548  		}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1549  	}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1550  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1551  	disp_dlg_regs->refcyc_per_pte_group_vblank_l = (unsigned int) (dst_y_per_row_vblank * (double) htotal * ref_freq_to_pix_freq / (double) dpte_groups_per_row_ub_l);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1552  	ASSERT(disp_dlg_regs->refcyc_per_pte_group_vblank_l < (unsigned int)dml_pow(2, 13));
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1553  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1554  	if (dual_plane) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1555  		disp_dlg_regs->refcyc_per_pte_group_vblank_c = (unsigned int) (dst_y_per_row_vblank * (double) htotal * ref_freq_to_pix_freq / (double) dpte_groups_per_row_ub_c);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1556  		ASSERT(disp_dlg_regs->refcyc_per_pte_group_vblank_c < (unsigned int)dml_pow(2, 13));
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1557  	}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1558  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1559  	disp_dlg_regs->refcyc_per_meta_chunk_vblank_l = (unsigned int) (dst_y_per_row_vblank * (double) htotal * ref_freq_to_pix_freq / (double) meta_chunks_per_row_ub_l);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1560  	ASSERT(disp_dlg_regs->refcyc_per_meta_chunk_vblank_l < (unsigned int)dml_pow(2, 13));
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1561  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1562  	disp_dlg_regs->refcyc_per_meta_chunk_vblank_c = disp_dlg_regs->refcyc_per_meta_chunk_vblank_l; // dcc for 4:2:0 is not supported in dcn1.0.  assigned to be the same as _l for now
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1563  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1564  	disp_dlg_regs->refcyc_per_pte_group_flip_l = (unsigned int) (dst_y_per_row_flip * htotal * ref_freq_to_pix_freq) / dpte_groups_per_row_ub_l;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1565  	disp_dlg_regs->refcyc_per_meta_chunk_flip_l = (unsigned int) (dst_y_per_row_flip * htotal * ref_freq_to_pix_freq) / meta_chunks_per_row_ub_l;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1566  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1567  	if (dual_plane) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1568  		disp_dlg_regs->refcyc_per_pte_group_flip_c = (unsigned int) (dst_y_per_row_flip * htotal * ref_freq_to_pix_freq) / dpte_groups_per_row_ub_c;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1569  		disp_dlg_regs->refcyc_per_meta_chunk_flip_c = (unsigned int) (dst_y_per_row_flip * htotal * ref_freq_to_pix_freq) / meta_chunks_per_row_ub_c;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1570  	}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1571  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1572  	disp_dlg_regs->refcyc_per_vm_group_vblank = get_refcyc_per_vm_group_vblank_in_us(mode_lib, e2e_pipe_param, num_pipes, pipe_idx) * refclk_freq_in_mhz;            // From VBA
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1573  	disp_dlg_regs->refcyc_per_vm_group_flip = get_refcyc_per_vm_group_flip_in_us(mode_lib, e2e_pipe_param, num_pipes, pipe_idx) * refclk_freq_in_mhz;            // From VBA
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1574  	disp_dlg_regs->refcyc_per_vm_req_vblank = get_refcyc_per_vm_req_vblank_in_us(mode_lib, e2e_pipe_param, num_pipes, pipe_idx) * refclk_freq_in_mhz * dml_pow(2, 10); // From VBA
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1575  	disp_dlg_regs->refcyc_per_vm_req_flip = get_refcyc_per_vm_req_flip_in_us(mode_lib, e2e_pipe_param, num_pipes, pipe_idx) * refclk_freq_in_mhz * dml_pow(2, 10);   // From VBA
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1576  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1577  	// Clamp to max for now
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1578  	if (disp_dlg_regs->refcyc_per_vm_group_vblank >= (unsigned int) dml_pow(2, 23))
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1579  		disp_dlg_regs->refcyc_per_vm_group_vblank = dml_pow(2, 23) - 1;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1580  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1581  	if (disp_dlg_regs->refcyc_per_vm_group_flip >= (unsigned int) dml_pow(2, 23))
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1582  		disp_dlg_regs->refcyc_per_vm_group_flip = dml_pow(2, 23) - 1;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1583  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1584  	if (disp_dlg_regs->refcyc_per_vm_req_vblank >= (unsigned int) dml_pow(2, 23))
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1585  		disp_dlg_regs->refcyc_per_vm_req_vblank = dml_pow(2, 23) - 1;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1586  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1587  	if (disp_dlg_regs->refcyc_per_vm_req_flip >= (unsigned int) dml_pow(2, 23))
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1588  		disp_dlg_regs->refcyc_per_vm_req_flip = dml_pow(2, 23) - 1;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1589  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1590  	disp_dlg_regs->dst_y_per_pte_row_nom_l = (unsigned int) ((double) dpte_row_height_l / (double) vratio_l * dml_pow(2, 2));
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1591  	ASSERT(disp_dlg_regs->dst_y_per_pte_row_nom_l < (unsigned int)dml_pow(2, 17));
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1592  	if (dual_plane) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1593  		disp_dlg_regs->dst_y_per_pte_row_nom_c = (unsigned int) ((double) dpte_row_height_c / (double) vratio_c * dml_pow(2, 2));
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1594  		if (disp_dlg_regs->dst_y_per_pte_row_nom_c >= (unsigned int) dml_pow(2, 17)) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1595  			dml_print(
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1596  					"DML_DLG: %s: Warning dst_y_per_pte_row_nom_c %u larger than supported by register format U15.2 %u\n",
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1597  					__func__,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1598  					disp_dlg_regs->dst_y_per_pte_row_nom_c,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1599  					(unsigned int) dml_pow(2, 17) - 1);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1600  		}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1601  	}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1602  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1603  	disp_dlg_regs->dst_y_per_meta_row_nom_l = (unsigned int) ((double) meta_row_height_l / (double) vratio_l * dml_pow(2, 2));
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1604  	ASSERT(disp_dlg_regs->dst_y_per_meta_row_nom_l < (unsigned int)dml_pow(2, 17));
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1605  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1606  	disp_dlg_regs->dst_y_per_meta_row_nom_c = (unsigned int) ((double) meta_row_height_c / (double) vratio_c * dml_pow(2, 2));
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1607  	ASSERT(disp_dlg_regs->dst_y_per_meta_row_nom_c < (unsigned int)dml_pow(2, 17));
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1608  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1609  	disp_dlg_regs->refcyc_per_pte_group_nom_l = (unsigned int) ((double) dpte_row_height_l / (double) vratio_l * (double) htotal * ref_freq_to_pix_freq
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1610  			/ (double) dpte_groups_per_row_ub_l);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1611  	if (disp_dlg_regs->refcyc_per_pte_group_nom_l >= (unsigned int) dml_pow(2, 23))
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1612  		disp_dlg_regs->refcyc_per_pte_group_nom_l = dml_pow(2, 23) - 1;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1613  	disp_dlg_regs->refcyc_per_meta_chunk_nom_l = (unsigned int) ((double) meta_row_height_l / (double) vratio_l * (double) htotal * ref_freq_to_pix_freq
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1614  			/ (double) meta_chunks_per_row_ub_l);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1615  	if (disp_dlg_regs->refcyc_per_meta_chunk_nom_l >= (unsigned int) dml_pow(2, 23))
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1616  		disp_dlg_regs->refcyc_per_meta_chunk_nom_l = dml_pow(2, 23) - 1;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1617  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1618  	if (dual_plane) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1619  		disp_dlg_regs->refcyc_per_pte_group_nom_c = (unsigned int) ((double) dpte_row_height_c / (double) vratio_c * (double) htotal * ref_freq_to_pix_freq
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1620  				/ (double) dpte_groups_per_row_ub_c);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1621  		if (disp_dlg_regs->refcyc_per_pte_group_nom_c >= (unsigned int) dml_pow(2, 23))
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1622  			disp_dlg_regs->refcyc_per_pte_group_nom_c = dml_pow(2, 23) - 1;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1623  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1624  		// TODO: Is this the right calculation? Does htotal need to be halved?
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1625  		disp_dlg_regs->refcyc_per_meta_chunk_nom_c = (unsigned int) ((double) meta_row_height_c / (double) vratio_c * (double) htotal * ref_freq_to_pix_freq
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1626  				/ (double) meta_chunks_per_row_ub_c);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1627  		if (disp_dlg_regs->refcyc_per_meta_chunk_nom_c >= (unsigned int) dml_pow(2, 23))
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1628  			disp_dlg_regs->refcyc_per_meta_chunk_nom_c = dml_pow(2, 23) - 1;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1629  	}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1630  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1631  	disp_dlg_regs->refcyc_per_line_delivery_pre_l = (unsigned int) dml_floor(refcyc_per_line_delivery_pre_l, 1);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1632  	disp_dlg_regs->refcyc_per_line_delivery_l = (unsigned int) dml_floor(refcyc_per_line_delivery_l, 1);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1633  	ASSERT(disp_dlg_regs->refcyc_per_line_delivery_pre_l < (unsigned int)dml_pow(2, 13)); ASSERT(disp_dlg_regs->refcyc_per_line_delivery_l < (unsigned int)dml_pow(2, 13));
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1634  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1635  	disp_dlg_regs->refcyc_per_line_delivery_pre_c = (unsigned int) dml_floor(refcyc_per_line_delivery_pre_c, 1);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1636  	disp_dlg_regs->refcyc_per_line_delivery_c = (unsigned int) dml_floor(refcyc_per_line_delivery_c, 1);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1637  	ASSERT(disp_dlg_regs->refcyc_per_line_delivery_pre_c < (unsigned int)dml_pow(2, 13)); ASSERT(disp_dlg_regs->refcyc_per_line_delivery_c < (unsigned int)dml_pow(2, 13));
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1638  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1639  	disp_dlg_regs->chunk_hdl_adjust_cur0 = 3;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1640  	disp_dlg_regs->dst_y_offset_cur0 = 0;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1641  	disp_dlg_regs->chunk_hdl_adjust_cur1 = 3;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1642  	disp_dlg_regs->dst_y_offset_cur1 = 0;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1643  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1644  	disp_dlg_regs->dst_y_delta_drq_limit = 0x7fff; // off
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1645  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1646  	disp_ttu_regs->refcyc_per_req_delivery_pre_l = (unsigned int) (refcyc_per_req_delivery_pre_l * dml_pow(2, 10));
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1647  	disp_ttu_regs->refcyc_per_req_delivery_l = (unsigned int) (refcyc_per_req_delivery_l * dml_pow(2, 10));
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1648  	disp_ttu_regs->refcyc_per_req_delivery_pre_c = (unsigned int) (refcyc_per_req_delivery_pre_c * dml_pow(2, 10));
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1649  	disp_ttu_regs->refcyc_per_req_delivery_c = (unsigned int) (refcyc_per_req_delivery_c * dml_pow(2, 10));
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1650  	disp_ttu_regs->refcyc_per_req_delivery_pre_cur0 = (unsigned int) (refcyc_per_req_delivery_pre_cur0 * dml_pow(2, 10));
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1651  	disp_ttu_regs->refcyc_per_req_delivery_cur0 = (unsigned int) (refcyc_per_req_delivery_cur0 * dml_pow(2, 10));
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1652  	disp_ttu_regs->refcyc_per_req_delivery_pre_cur1 = (unsigned int) (refcyc_per_req_delivery_pre_cur1 * dml_pow(2, 10));
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1653  	disp_ttu_regs->refcyc_per_req_delivery_cur1 = (unsigned int) (refcyc_per_req_delivery_cur1 * dml_pow(2, 10));
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1654  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1655  	disp_ttu_regs->qos_level_low_wm = 0;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1656  	ASSERT(disp_ttu_regs->qos_level_low_wm < dml_pow(2, 14));
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1657  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1658  	disp_ttu_regs->qos_level_high_wm = (unsigned int) (4.0 * (double) htotal * ref_freq_to_pix_freq);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1659  	ASSERT(disp_ttu_regs->qos_level_high_wm < dml_pow(2, 14));
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1660  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1661  	disp_ttu_regs->qos_level_flip = 14;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1662  	disp_ttu_regs->qos_level_fixed_l = 8;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1663  	disp_ttu_regs->qos_level_fixed_c = 8;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1664  	disp_ttu_regs->qos_level_fixed_cur0 = 8;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1665  	disp_ttu_regs->qos_ramp_disable_l = 0;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1666  	disp_ttu_regs->qos_ramp_disable_c = 0;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1667  	disp_ttu_regs->qos_ramp_disable_cur0 = 0;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1668  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1669  	disp_ttu_regs->min_ttu_vblank = min_ttu_vblank * refclk_freq_in_mhz;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1670  	ASSERT(disp_ttu_regs->min_ttu_vblank < dml_pow(2, 24));
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1671  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1672  	print__ttu_regs_st(mode_lib, *disp_ttu_regs);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1673  	print__dlg_regs_st(mode_lib, *disp_dlg_regs);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1674  }
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  1675  

:::::: The code at line 939 was first introduced by commit
:::::: 74458c081fcfb0423877e630de2746daefdb16e4 drm/amd/display: Add DCN3.1 DML calculation support

:::::: TO: Nicholas Kazlauskas <nicholas.kazlauskas@amd.com>
:::::: CC: Alex Deucher <alexander.deucher@amd.com>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202106230543.SzVclaM1-lkp%40intel.com.

--CE+1k2dSO48ffgeK
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
3s4GgBuDIvODF6hiLmP+D1aWRVqrvAEA

--CE+1k2dSO48ffgeK--
