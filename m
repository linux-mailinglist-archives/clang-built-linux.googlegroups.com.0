Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB4U5ST7QKGQEPJ7C34A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb39.google.com (mail-yb1-xb39.google.com [IPv6:2607:f8b0:4864:20::b39])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DF182E28DE
	for <lists+clang-built-linux@lfdr.de>; Thu, 24 Dec 2020 22:58:11 +0100 (CET)
Received: by mail-yb1-xb39.google.com with SMTP id e74sf4721873ybh.19
        for <lists+clang-built-linux@lfdr.de>; Thu, 24 Dec 2020 13:58:11 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608847090; cv=pass;
        d=google.com; s=arc-20160816;
        b=evq+mQ0scxF/n7Kx1pNH1C4iBB6EIS49Th+G7AYTE3bH/IpKcLsENkW5bNGYSgbdql
         52KxRrZyRfom5xmwJPIfU6vIsfOm//n4OqAFIi7ErTTxoDUbHYGwnqUorH9IgZUYWP5I
         M6VyqkbMHV89zHAcVmE5h7iLOeSLsi/UPOCM72S7oxZ99XNuITw/yybPoNfOlywgo4v3
         TnDOu8mN7tbHZT+sjN6EcigPHhOnkWWaViXnMB0yDLMOKn5ggl8s97Vy9nrC83w2Bcrs
         83EMsy8QQ4cNZ4w9pKI6KBSiogEW2utUHQU72sh4L+h0vkFrLI9nz+JlDZDmlZ5DprXO
         SdEg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=Ey92nbzkSr8iCmo6WDYTcRskXROqnULO7/uEsUWMKUE=;
        b=UPVhyvBpADYhyP3ZhOFvr3NbVdLNYTURt9NXriwxNThoodfZqFPZg7gCozU3I5oVWq
         4DwxPcexSi7dSxWCsgBtIoQHivyI2m37i/PAH0c0uISSri5MALzr+HjkQpDIQFhxi38j
         UfwTim9IvNV0+yiLXH7ZepaBUlMXcHNXGNSIzQXV8U0xlmR+j9PcClqztxRv24t3IeiK
         poJhk6C1xtqQCHsVpCvDyeb1Sb1E5t2s/7HR9O94czZLndDVxyhksRw0bzuIB53Q3Yoy
         RwNpy1YZVg242BPUwLVEUIBEq8o5NdPsxu9pZtDjugX/7W/7lc3vDR5kLPrfHJ/Bnwlu
         p5Xg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Ey92nbzkSr8iCmo6WDYTcRskXROqnULO7/uEsUWMKUE=;
        b=TwAFiVEJQc/IHUiGLpiHOGRmCA/cxU2cFanpPOfhMK2uGddkO9oAZcakFAkRBag48o
         YBd0eIRd4A46lpQSNeibrsJEjTpVVKh2u3U8w8wjS6N4zDON2oopWq5xuL0S3knhpP2L
         l6IU72Qp/pzvEzSWOhQU5FZBjt4QyyTCRUGI5+5x4AXy9NRJrNhUBTeiBfaPIwWv+tYe
         czB+RHX9+9gfedCMixQ6rdclK5ON7kYb37H7g4X4oWZ3Px35C78OwMtA2RTSMc8fHpCB
         6DjjTfsR0l+BdmajhM+PAXGEGDmCuPPnUHykiHiIjRzgOADetYtMrsCm5ijeksz6Lhzk
         B8xQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Ey92nbzkSr8iCmo6WDYTcRskXROqnULO7/uEsUWMKUE=;
        b=qwUGF1Ut276H452/C43nbkm3/lSoz3atWU7ktlzXB+y57axi1eLZmVt9gsIDBH4Ij/
         CPycDoEszpvXhg+qpBU6I6rVwlD9e3pxqL3NtNaqfkPNCtPSKRc8N1e8pPFi4brTJHxf
         5C7Mk+sEjjnONggvmxpNbnCVvzhOhburgwAj3wXev05SRMzmEq/5itfHtBaHxEJtXHF0
         g6KJL3P+GVD8cPi9D7IEs5BmbRsRdJnj9+Tkw61fBGJ9/6XwUK+d2bxF56QuZZg8a4Go
         evD3KE4YpbTnGCiHc0i7OXqE8ci9GykThvUZJHz62jfHoOROV1eFL38QpSPwiLTvxQ6a
         0h7g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531zfnWmz19kl+dRlfFwhWKQd9nrQYJbyULi0aKXYQ4Pdygm6IWQ
	KSof0X2un+QQoLirye/PvtY=
X-Google-Smtp-Source: ABdhPJyG4XhSIuaoa3FBJy6bXgS9m06A/vD/U+gRmEjZXL+9b2WmACRuam20MNCOazVx+GbIGgeHFw==
X-Received: by 2002:a25:ef47:: with SMTP id w7mr41979114ybm.509.1608847090297;
        Thu, 24 Dec 2020 13:58:10 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:20e:: with SMTP id 14ls24646572ybc.0.gmail; Thu, 24 Dec
 2020 13:58:09 -0800 (PST)
X-Received: by 2002:a25:2301:: with SMTP id j1mr47566724ybj.151.1608847089569;
        Thu, 24 Dec 2020 13:58:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608847089; cv=none;
        d=google.com; s=arc-20160816;
        b=MCi3HqkEuzFmxOElynDDf8rbpq+v10Mw6+8luRF0cD0netEN+uL31QvIa7vSeyVEFN
         POoaIcE8R6T86K7Rq/07U4dJfkP84CRQpyOCSeYSU7sLc33JevtaJoCwIolfHSmY9Sii
         tf1Sismb3awiRAv9r1kTmoUyJjrT8cXm3+qQI/YT/twCCtoup7bQKChT1XSkhEnu1ebc
         WCqU7TWDa2ac2wXIShQlavF6NmMRyRa4reQRMNBtZ15sSVWU2eWoNfST/678es2pjPek
         s03Joo/B+1NQA2VVd4IZtYP1jVm9HbMNRHmbZpQw2rZXMIn9i/dIseDTPhxrQuBHhHOZ
         /q7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=d+bJFjd0XoIL75R8E/h6fAuGIH7Qj1qG1sS/jt9YU2Y=;
        b=HSgFhhlHPjPneK6BY6BpK30D/LT0cu2fIKTOPTrkbEK8RTGMxzwCu6RcG+OdGOTxGp
         c8Fn7q4tTMO50EXpSkD5tXoOfzZWu9mYumr1JjxBuufUbGZLq6Y5qVLHkPpKChsZzS9u
         /nPGxkDSOsYeeSg8/Q6vGzFFQl+t+cl2MtM1RG77BfjIWrN2Pf6rjIsOeoKTVxGBgUeY
         JHLruy1KEAM3RrlVi7gS8VZIwcgMiLFW5AlnmiKu8IG+j24ZQY5gy5FtxrQsxqCMiS5d
         Y/je8xvKrsS9KSFcMAwJZ4/dwMXh8vNIy4ERQAKxwIZ4I1t8VPnLpVyMKYtfy/4xhxmx
         x6Sg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga09.intel.com (mga09.intel.com. [134.134.136.24])
        by gmr-mx.google.com with ESMTPS id 23si2083228ybc.0.2020.12.24.13.58.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 24 Dec 2020 13:58:09 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) client-ip=134.134.136.24;
IronPort-SDR: /LqcZb2mgNFU0kNko1vVWsySEH64FXZDvwDMUrGeoRsAUxy7VfUfKdEwSppUt0JoNLFaQwbp7X
 m7bfxCI3iw0A==
X-IronPort-AV: E=McAfee;i="6000,8403,9845"; a="176332607"
X-IronPort-AV: E=Sophos;i="5.78,446,1599548400"; 
   d="gz'50?scan'50,208,50";a="176332607"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Dec 2020 13:58:07 -0800
IronPort-SDR: ObOE0/FrAqxwyJHxUEbhaAdYuVjHDcZrIubYoIWoJUWinmftcSa+lgtpbfFSrIu+OoG7wX1IVA
 s2QGsO2ne3wQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,446,1599548400"; 
   d="gz'50?scan'50,208,50";a="398937970"
Received: from lkp-server02.sh.intel.com (HELO 4242b19f17ef) ([10.239.97.151])
  by FMSMGA003.fm.intel.com with ESMTP; 24 Dec 2020 13:58:05 -0800
Received: from kbuild by 4242b19f17ef with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1ksYcW-0001BS-OJ; Thu, 24 Dec 2020 21:58:04 +0000
Date: Fri, 25 Dec 2020 05:57:25 +0800
From: kernel test robot <lkp@intel.com>
To: Alex Deucher <alexander.deucher@amd.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org, Luben Tuikov <luben.tuikov@amd.com>
Subject: drivers/gpu/drm/amd/amdgpu/../display/dc/dml/display_mode_lib.c:122:6:
 warning: stack frame size of 4240 bytes in function 'dml_log_pipe_params'
Message-ID: <202012250521.8yvM46A0-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="envbJBWh7q8WU6mo"
Content-Disposition: inline
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


--envbJBWh7q8WU6mo
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Alex,

FYI, the error/warning still remains.

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   58cf05f597b03a8212d9ecf2c79ee046d3ee8ad9
commit: 20f2ffe504728612d7b0c34e4f8280e34251e704 drm/amdgpu: fold CONFIG_DRM_AMD_DC_DCN3* into CONFIG_DRM_AMD_DC_DCN (v3)
date:   7 weeks ago
config: powerpc-randconfig-r016-20201223 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project cee1e7d14f4628d6174b33640d502bff3b54ae45)
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

>> drivers/gpu/drm/amd/amdgpu/../display/dc/dml/display_mode_lib.c:122:6: warning: stack frame size of 4240 bytes in function 'dml_log_pipe_params' [-Wframe-larger-than=]
   void dml_log_pipe_params(
        ^
   1 warning generated.


vim +/dml_log_pipe_params +122 drivers/gpu/drm/amd/amdgpu/../display/dc/dml/display_mode_lib.c

20f2ffe50472861 Alex Deucher      2020-11-02  121  
6725a88f88a7e92 Bhawanpreet Lakha 2020-05-21 @122  void dml_log_pipe_params(
6725a88f88a7e92 Bhawanpreet Lakha 2020-05-21  123  		struct display_mode_lib *mode_lib,
6725a88f88a7e92 Bhawanpreet Lakha 2020-05-21  124  		display_e2e_pipe_params_st *pipes,
6725a88f88a7e92 Bhawanpreet Lakha 2020-05-21  125  		int pipe_cnt)
6725a88f88a7e92 Bhawanpreet Lakha 2020-05-21  126  {
6725a88f88a7e92 Bhawanpreet Lakha 2020-05-21  127  	display_pipe_source_params_st *pipe_src;
6725a88f88a7e92 Bhawanpreet Lakha 2020-05-21  128  	display_pipe_dest_params_st   *pipe_dest;
6725a88f88a7e92 Bhawanpreet Lakha 2020-05-21  129  	scaler_ratio_depth_st         *scale_ratio_depth;
6725a88f88a7e92 Bhawanpreet Lakha 2020-05-21  130  	scaler_taps_st                *scale_taps;
6725a88f88a7e92 Bhawanpreet Lakha 2020-05-21  131  	display_output_params_st      *dout;
6725a88f88a7e92 Bhawanpreet Lakha 2020-05-21  132  	display_clocks_and_cfg_st     *clks_cfg;
6725a88f88a7e92 Bhawanpreet Lakha 2020-05-21  133  	int i;
6725a88f88a7e92 Bhawanpreet Lakha 2020-05-21  134  
6725a88f88a7e92 Bhawanpreet Lakha 2020-05-21  135  	for (i = 0; i < pipe_cnt; i++) {
6725a88f88a7e92 Bhawanpreet Lakha 2020-05-21  136  		pipe_src = &(pipes[i].pipe.src);
6725a88f88a7e92 Bhawanpreet Lakha 2020-05-21  137  		pipe_dest = &(pipes[i].pipe.dest);
6725a88f88a7e92 Bhawanpreet Lakha 2020-05-21  138  		scale_ratio_depth = &(pipes[i].pipe.scale_ratio_depth);
6725a88f88a7e92 Bhawanpreet Lakha 2020-05-21  139  		scale_taps = &(pipes[i].pipe.scale_taps);
6725a88f88a7e92 Bhawanpreet Lakha 2020-05-21  140  		dout = &(pipes[i].dout);
6725a88f88a7e92 Bhawanpreet Lakha 2020-05-21  141  		clks_cfg = &(pipes[i].clks_cfg);
6725a88f88a7e92 Bhawanpreet Lakha 2020-05-21  142  
6725a88f88a7e92 Bhawanpreet Lakha 2020-05-21  143  		dml_print("DML PARAMS: =====================================\n");
6725a88f88a7e92 Bhawanpreet Lakha 2020-05-21  144  		dml_print("DML PARAMS: PIPE [%d] SOURCE PARAMS:\n", i);
6725a88f88a7e92 Bhawanpreet Lakha 2020-05-21  145  		dml_print("DML PARAMS:     source_format              = %d\n", pipe_src->source_format);
6725a88f88a7e92 Bhawanpreet Lakha 2020-05-21  146  		dml_print("DML PARAMS:     dcc                        = %d\n", pipe_src->dcc);
6725a88f88a7e92 Bhawanpreet Lakha 2020-05-21  147  		dml_print("DML PARAMS:     dcc_rate                   = %d\n", pipe_src->dcc_rate);
6725a88f88a7e92 Bhawanpreet Lakha 2020-05-21  148  		dml_print("DML PARAMS:     dcc_use_global             = %d\n", pipe_src->dcc_use_global);
6725a88f88a7e92 Bhawanpreet Lakha 2020-05-21  149  		dml_print("DML PARAMS:     vm                         = %d\n", pipe_src->vm);
6725a88f88a7e92 Bhawanpreet Lakha 2020-05-21  150  		dml_print("DML PARAMS:     gpuvm                      = %d\n", pipe_src->gpuvm);
6725a88f88a7e92 Bhawanpreet Lakha 2020-05-21  151  		dml_print("DML PARAMS:     hostvm                     = %d\n", pipe_src->hostvm);
6725a88f88a7e92 Bhawanpreet Lakha 2020-05-21  152  		dml_print("DML PARAMS:     gpuvm_levels_force_en      = %d\n", pipe_src->gpuvm_levels_force_en);
6725a88f88a7e92 Bhawanpreet Lakha 2020-05-21  153  		dml_print("DML PARAMS:     gpuvm_levels_force         = %d\n", pipe_src->gpuvm_levels_force);
6725a88f88a7e92 Bhawanpreet Lakha 2020-05-21  154  		dml_print("DML PARAMS:     source_scan                = %d\n", pipe_src->source_scan);
6725a88f88a7e92 Bhawanpreet Lakha 2020-05-21  155  		dml_print("DML PARAMS:     sw_mode                    = %d\n", pipe_src->sw_mode);
6725a88f88a7e92 Bhawanpreet Lakha 2020-05-21  156  		dml_print("DML PARAMS:     macro_tile_size            = %d\n", pipe_src->macro_tile_size);
6725a88f88a7e92 Bhawanpreet Lakha 2020-05-21  157  		dml_print("DML PARAMS:     viewport_width             = %d\n", pipe_src->viewport_width);
6725a88f88a7e92 Bhawanpreet Lakha 2020-05-21  158  		dml_print("DML PARAMS:     viewport_height            = %d\n", pipe_src->viewport_height);
6725a88f88a7e92 Bhawanpreet Lakha 2020-05-21  159  		dml_print("DML PARAMS:     viewport_y_y               = %d\n", pipe_src->viewport_y_y);
6725a88f88a7e92 Bhawanpreet Lakha 2020-05-21  160  		dml_print("DML PARAMS:     viewport_y_c               = %d\n", pipe_src->viewport_y_c);
6725a88f88a7e92 Bhawanpreet Lakha 2020-05-21  161  		dml_print("DML PARAMS:     viewport_width_c           = %d\n", pipe_src->viewport_width_c);
6725a88f88a7e92 Bhawanpreet Lakha 2020-05-21  162  		dml_print("DML PARAMS:     viewport_height_c          = %d\n", pipe_src->viewport_height_c);
6725a88f88a7e92 Bhawanpreet Lakha 2020-05-21  163  		dml_print("DML PARAMS:     data_pitch                 = %d\n", pipe_src->data_pitch);
6725a88f88a7e92 Bhawanpreet Lakha 2020-05-21  164  		dml_print("DML PARAMS:     data_pitch_c               = %d\n", pipe_src->data_pitch_c);
6725a88f88a7e92 Bhawanpreet Lakha 2020-05-21  165  		dml_print("DML PARAMS:     meta_pitch                 = %d\n", pipe_src->meta_pitch);
6725a88f88a7e92 Bhawanpreet Lakha 2020-05-21  166  		dml_print("DML PARAMS:     meta_pitch_c               = %d\n", pipe_src->meta_pitch_c);
6725a88f88a7e92 Bhawanpreet Lakha 2020-05-21  167  		dml_print("DML PARAMS:     cur0_src_width             = %d\n", pipe_src->cur0_src_width);
6725a88f88a7e92 Bhawanpreet Lakha 2020-05-21  168  		dml_print("DML PARAMS:     cur0_bpp                   = %d\n", pipe_src->cur0_bpp);
6725a88f88a7e92 Bhawanpreet Lakha 2020-05-21  169  		dml_print("DML PARAMS:     cur1_src_width             = %d\n", pipe_src->cur1_src_width);
6725a88f88a7e92 Bhawanpreet Lakha 2020-05-21  170  		dml_print("DML PARAMS:     cur1_bpp                   = %d\n", pipe_src->cur1_bpp);
6725a88f88a7e92 Bhawanpreet Lakha 2020-05-21  171  		dml_print("DML PARAMS:     num_cursors                = %d\n", pipe_src->num_cursors);
6725a88f88a7e92 Bhawanpreet Lakha 2020-05-21  172  		dml_print("DML PARAMS:     is_hsplit                  = %d\n", pipe_src->is_hsplit);
6725a88f88a7e92 Bhawanpreet Lakha 2020-05-21  173  		dml_print("DML PARAMS:     hsplit_grp                 = %d\n", pipe_src->hsplit_grp);
6725a88f88a7e92 Bhawanpreet Lakha 2020-05-21  174  		dml_print("DML PARAMS:     dynamic_metadata_enable    = %d\n", pipe_src->dynamic_metadata_enable);
6725a88f88a7e92 Bhawanpreet Lakha 2020-05-21  175  		dml_print("DML PARAMS:     dmdata_lines_before_active = %d\n", pipe_src->dynamic_metadata_lines_before_active);
6725a88f88a7e92 Bhawanpreet Lakha 2020-05-21  176  		dml_print("DML PARAMS:     dmdata_xmit_bytes          = %d\n", pipe_src->dynamic_metadata_xmit_bytes);
6725a88f88a7e92 Bhawanpreet Lakha 2020-05-21  177  		dml_print("DML PARAMS:     immediate_flip             = %d\n", pipe_src->immediate_flip);
6725a88f88a7e92 Bhawanpreet Lakha 2020-05-21  178  		dml_print("DML PARAMS:     v_total_min                = %d\n", pipe_src->v_total_min);
6725a88f88a7e92 Bhawanpreet Lakha 2020-05-21  179  		dml_print("DML PARAMS:     v_total_max                = %d\n", pipe_src->v_total_max);
6725a88f88a7e92 Bhawanpreet Lakha 2020-05-21  180  		dml_print("DML PARAMS: =====================================\n");
6725a88f88a7e92 Bhawanpreet Lakha 2020-05-21  181  
6725a88f88a7e92 Bhawanpreet Lakha 2020-05-21  182  		dml_print("DML PARAMS: PIPE [%d] DESTINATION PARAMS:\n", i);
6725a88f88a7e92 Bhawanpreet Lakha 2020-05-21  183  		dml_print("DML PARAMS:     recout_width               = %d\n", pipe_dest->recout_width);
6725a88f88a7e92 Bhawanpreet Lakha 2020-05-21  184  		dml_print("DML PARAMS:     recout_height              = %d\n", pipe_dest->recout_height);
6725a88f88a7e92 Bhawanpreet Lakha 2020-05-21  185  		dml_print("DML PARAMS:     full_recout_width          = %d\n", pipe_dest->full_recout_width);
6725a88f88a7e92 Bhawanpreet Lakha 2020-05-21  186  		dml_print("DML PARAMS:     full_recout_height         = %d\n", pipe_dest->full_recout_height);
6725a88f88a7e92 Bhawanpreet Lakha 2020-05-21  187  		dml_print("DML PARAMS:     hblank_start               = %d\n", pipe_dest->hblank_start);
6725a88f88a7e92 Bhawanpreet Lakha 2020-05-21  188  		dml_print("DML PARAMS:     hblank_end                 = %d\n", pipe_dest->hblank_end);
6725a88f88a7e92 Bhawanpreet Lakha 2020-05-21  189  		dml_print("DML PARAMS:     vblank_start               = %d\n", pipe_dest->vblank_start);
6725a88f88a7e92 Bhawanpreet Lakha 2020-05-21  190  		dml_print("DML PARAMS:     vblank_end                 = %d\n", pipe_dest->vblank_end);
6725a88f88a7e92 Bhawanpreet Lakha 2020-05-21  191  		dml_print("DML PARAMS:     htotal                     = %d\n", pipe_dest->htotal);
6725a88f88a7e92 Bhawanpreet Lakha 2020-05-21  192  		dml_print("DML PARAMS:     vtotal                     = %d\n", pipe_dest->vtotal);
6725a88f88a7e92 Bhawanpreet Lakha 2020-05-21  193  		dml_print("DML PARAMS:     vactive                    = %d\n", pipe_dest->vactive);
6725a88f88a7e92 Bhawanpreet Lakha 2020-05-21  194  		dml_print("DML PARAMS:     hactive                    = %d\n", pipe_dest->hactive);
6725a88f88a7e92 Bhawanpreet Lakha 2020-05-21  195  		dml_print("DML PARAMS:     vstartup_start             = %d\n", pipe_dest->vstartup_start);
6725a88f88a7e92 Bhawanpreet Lakha 2020-05-21  196  		dml_print("DML PARAMS:     vupdate_offset             = %d\n", pipe_dest->vupdate_offset);
6725a88f88a7e92 Bhawanpreet Lakha 2020-05-21  197  		dml_print("DML PARAMS:     vupdate_width              = %d\n", pipe_dest->vupdate_width);
6725a88f88a7e92 Bhawanpreet Lakha 2020-05-21  198  		dml_print("DML PARAMS:     vready_offset              = %d\n", pipe_dest->vready_offset);
6725a88f88a7e92 Bhawanpreet Lakha 2020-05-21  199  		dml_print("DML PARAMS:     interlaced                 = %d\n", pipe_dest->interlaced);
6725a88f88a7e92 Bhawanpreet Lakha 2020-05-21  200  		dml_print("DML PARAMS:     pixel_rate_mhz             = %3.2f\n", pipe_dest->pixel_rate_mhz);
6725a88f88a7e92 Bhawanpreet Lakha 2020-05-21  201  		dml_print("DML PARAMS:     sync_vblank_all_planes     = %d\n", pipe_dest->synchronized_vblank_all_planes);
6725a88f88a7e92 Bhawanpreet Lakha 2020-05-21  202  		dml_print("DML PARAMS:     otg_inst                   = %d\n", pipe_dest->otg_inst);
6725a88f88a7e92 Bhawanpreet Lakha 2020-05-21  203  		dml_print("DML PARAMS:     odm_combine                = %d\n", pipe_dest->odm_combine);
6725a88f88a7e92 Bhawanpreet Lakha 2020-05-21  204  		dml_print("DML PARAMS:     use_maximum_vstartup       = %d\n", pipe_dest->use_maximum_vstartup);
6725a88f88a7e92 Bhawanpreet Lakha 2020-05-21  205  		dml_print("DML PARAMS:     vtotal_max                 = %d\n", pipe_dest->vtotal_max);
6725a88f88a7e92 Bhawanpreet Lakha 2020-05-21  206  		dml_print("DML PARAMS:     vtotal_min                 = %d\n", pipe_dest->vtotal_min);
6725a88f88a7e92 Bhawanpreet Lakha 2020-05-21  207  		dml_print("DML PARAMS: =====================================\n");
6725a88f88a7e92 Bhawanpreet Lakha 2020-05-21  208  
6725a88f88a7e92 Bhawanpreet Lakha 2020-05-21  209  		dml_print("DML PARAMS: PIPE [%d] SCALER PARAMS:\n", i);
6725a88f88a7e92 Bhawanpreet Lakha 2020-05-21  210  		dml_print("DML PARAMS:     hscl_ratio                 = %3.4f\n", scale_ratio_depth->hscl_ratio);
6725a88f88a7e92 Bhawanpreet Lakha 2020-05-21  211  		dml_print("DML PARAMS:     vscl_ratio                 = %3.4f\n", scale_ratio_depth->vscl_ratio);
6725a88f88a7e92 Bhawanpreet Lakha 2020-05-21  212  		dml_print("DML PARAMS:     hscl_ratio_c               = %3.4f\n", scale_ratio_depth->hscl_ratio_c);
6725a88f88a7e92 Bhawanpreet Lakha 2020-05-21  213  		dml_print("DML PARAMS:     vscl_ratio_c               = %3.4f\n", scale_ratio_depth->vscl_ratio_c);
6725a88f88a7e92 Bhawanpreet Lakha 2020-05-21  214  		dml_print("DML PARAMS:     vinit                      = %3.4f\n", scale_ratio_depth->vinit);
6725a88f88a7e92 Bhawanpreet Lakha 2020-05-21  215  		dml_print("DML PARAMS:     vinit_c                    = %3.4f\n", scale_ratio_depth->vinit_c);
6725a88f88a7e92 Bhawanpreet Lakha 2020-05-21  216  		dml_print("DML PARAMS:     vinit_bot                  = %3.4f\n", scale_ratio_depth->vinit_bot);
6725a88f88a7e92 Bhawanpreet Lakha 2020-05-21  217  		dml_print("DML PARAMS:     vinit_bot_c                = %3.4f\n", scale_ratio_depth->vinit_bot_c);
6725a88f88a7e92 Bhawanpreet Lakha 2020-05-21  218  		dml_print("DML PARAMS:     lb_depth                   = %d\n", scale_ratio_depth->lb_depth);
6725a88f88a7e92 Bhawanpreet Lakha 2020-05-21  219  		dml_print("DML PARAMS:     scl_enable                 = %d\n", scale_ratio_depth->scl_enable);
6725a88f88a7e92 Bhawanpreet Lakha 2020-05-21  220  		dml_print("DML PARAMS:     htaps                      = %d\n", scale_taps->htaps);
6725a88f88a7e92 Bhawanpreet Lakha 2020-05-21  221  		dml_print("DML PARAMS:     vtaps                      = %d\n", scale_taps->vtaps);
6725a88f88a7e92 Bhawanpreet Lakha 2020-05-21  222  		dml_print("DML PARAMS:     htaps_c                    = %d\n", scale_taps->htaps_c);
6725a88f88a7e92 Bhawanpreet Lakha 2020-05-21  223  		dml_print("DML PARAMS:     vtaps_c                    = %d\n", scale_taps->vtaps_c);
6725a88f88a7e92 Bhawanpreet Lakha 2020-05-21  224  		dml_print("DML PARAMS: =====================================\n");
6725a88f88a7e92 Bhawanpreet Lakha 2020-05-21  225  
6725a88f88a7e92 Bhawanpreet Lakha 2020-05-21  226  		dml_print("DML PARAMS: PIPE [%d] DISPLAY OUTPUT PARAMS:\n", i);
6725a88f88a7e92 Bhawanpreet Lakha 2020-05-21  227  		dml_print("DML PARAMS:     output_type                = %d\n", dout->output_type);
6725a88f88a7e92 Bhawanpreet Lakha 2020-05-21  228  		dml_print("DML PARAMS:     output_format              = %d\n", dout->output_format);
6725a88f88a7e92 Bhawanpreet Lakha 2020-05-21  229  		dml_print("DML PARAMS:     output_bpc                 = %d\n", dout->output_bpc);
6725a88f88a7e92 Bhawanpreet Lakha 2020-05-21  230  		dml_print("DML PARAMS:     output_bpp                 = %3.4f\n", dout->output_bpp);
6725a88f88a7e92 Bhawanpreet Lakha 2020-05-21  231  		dml_print("DML PARAMS:     dp_lanes                   = %d\n", dout->dp_lanes);
6725a88f88a7e92 Bhawanpreet Lakha 2020-05-21  232  		dml_print("DML PARAMS:     dsc_enable                 = %d\n", dout->dsc_enable);
6725a88f88a7e92 Bhawanpreet Lakha 2020-05-21  233  		dml_print("DML PARAMS:     dsc_slices                 = %d\n", dout->dsc_slices);
6725a88f88a7e92 Bhawanpreet Lakha 2020-05-21  234  		dml_print("DML PARAMS:     wb_enable                  = %d\n", dout->wb_enable);
6725a88f88a7e92 Bhawanpreet Lakha 2020-05-21  235  		dml_print("DML PARAMS:     num_active_wb              = %d\n", dout->num_active_wb);
6725a88f88a7e92 Bhawanpreet Lakha 2020-05-21  236  		dml_print("DML PARAMS: =====================================\n");
6725a88f88a7e92 Bhawanpreet Lakha 2020-05-21  237  
6725a88f88a7e92 Bhawanpreet Lakha 2020-05-21  238  		dml_print("DML PARAMS: PIPE [%d] CLOCK CONFIG PARAMS:\n", i);
6725a88f88a7e92 Bhawanpreet Lakha 2020-05-21  239  		dml_print("DML PARAMS:     voltage                    = %d\n", clks_cfg->voltage);
6725a88f88a7e92 Bhawanpreet Lakha 2020-05-21  240  		dml_print("DML PARAMS:     dppclk_mhz                 = %3.2f\n", clks_cfg->dppclk_mhz);
6725a88f88a7e92 Bhawanpreet Lakha 2020-05-21  241  		dml_print("DML PARAMS:     refclk_mhz                 = %3.2f\n", clks_cfg->refclk_mhz);
6725a88f88a7e92 Bhawanpreet Lakha 2020-05-21  242  		dml_print("DML PARAMS:     dispclk_mhz                = %3.2f\n", clks_cfg->dispclk_mhz);
6725a88f88a7e92 Bhawanpreet Lakha 2020-05-21  243  		dml_print("DML PARAMS:     dcfclk_mhz                 = %3.2f\n", clks_cfg->dcfclk_mhz);
6725a88f88a7e92 Bhawanpreet Lakha 2020-05-21  244  		dml_print("DML PARAMS:     socclk_mhz                 = %3.2f\n", clks_cfg->socclk_mhz);
6725a88f88a7e92 Bhawanpreet Lakha 2020-05-21  245  		dml_print("DML PARAMS: =====================================\n");
6725a88f88a7e92 Bhawanpreet Lakha 2020-05-21  246  	}
6725a88f88a7e92 Bhawanpreet Lakha 2020-05-21  247  }
6725a88f88a7e92 Bhawanpreet Lakha 2020-05-21  248  

:::::: The code at line 122 was first introduced by commit
:::::: 6725a88f88a7e922e91c45bf83d320487810c192 drm/amd/display: Add DCN3 DML

:::::: TO: Bhawanpreet Lakha <Bhawanpreet.Lakha@amd.com>
:::::: CC: Alex Deucher <alexander.deucher@amd.com>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202012250521.8yvM46A0-lkp%40intel.com.

--envbJBWh7q8WU6mo
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
ilMCOVl0Vx69b0G2IHsv/wMurp/yCO4BAA==

--envbJBWh7q8WU6mo--
