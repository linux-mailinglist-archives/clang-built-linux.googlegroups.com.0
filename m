Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBKXM337AKGQEWJGI3OI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23e.google.com (mail-oi1-x23e.google.com [IPv6:2607:f8b0:4864:20::23e])
	by mail.lfdr.de (Postfix) with ESMTPS id 40E8E2D9FC3
	for <lists+clang-built-linux@lfdr.de>; Mon, 14 Dec 2020 19:59:56 +0100 (CET)
Received: by mail-oi1-x23e.google.com with SMTP id m15sf9473822oig.20
        for <lists+clang-built-linux@lfdr.de>; Mon, 14 Dec 2020 10:59:56 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607972395; cv=pass;
        d=google.com; s=arc-20160816;
        b=lp+NDqW0BKoLkYJRHkn7UjTzmFnKFSon+DXV+togArIVB8HXy8VGPEv3N8REOWEXxO
         qIaF/pCSs452mzFOPLmWo8MU+7bWR7R32c33lTbhtvIVFnbqioxepyiDC1WMDXMBzYhf
         W6xuCTK9wjTeYcGmiS0z7cRzM9rhPNuwuXiokQhmuJVxn/RPhvDs9YH3CwYcCDCJc4jO
         DoPk34ctf9KTqiTDzlygit6m/WFFJ+i4qtsrRtTq3kxHyxB8WEHF+RwISjCmrdQNgE3k
         VifjJZh+a9z8DPtrizCwFZSQLTQROaV8X+95KxNMwn6WRaR44wJLyeDX0wPlGGADD/Ok
         DKbQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=XVQov6o+jdkJ+7pK7n44XXfzKN5qOLcTtl4qwrAHNlM=;
        b=ppggi0J+eDBPvZ2+jkXXQQ8S3jBg0FD/cLtBNzWvvjLWpNoTfkNHzsZ+ictRK7FrF5
         kX1NHot8KtmdmmC6jTRY5mdePW8tD/OuxpRuzGvnke679TGHI0Y8lsTjF284mNXuLnrW
         MW/FT/KNtYU7gSgSa6rLS0FgbA7y+PKJstVoJRH11c9ZVMJknF13NuYm4E3ThDjTeGff
         vsEMV9AXdaAaCHLq/2aLGIrEQff91j72MTgoe98/MPeS586nnYzgRDBpeIXXR/nuyC1h
         qcSSwOL/WsHhq3THDHv9upC4CiED/sZxFVq7jsrNsrd4UKMnMWrzraZBadG8sZuVkeGp
         oXhw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=XVQov6o+jdkJ+7pK7n44XXfzKN5qOLcTtl4qwrAHNlM=;
        b=YAtvq8e9qn52G22j0Z5ftgCdE0rHz+YDgAXmQeeRLyRWy90gq+pghB+HxjH304bMnD
         cEHly1sjmZQuohXeYcH4PEhtYVCi9jXhrcwJf1eYAEJ/EbKZWY8lVixgIHiIONhQ/UZc
         zygiE97Sa4EMuWfg/mp9KGengvf4qJuKC9tP8eQe0uldFZMXAmZFAgDKiI4785juHm8X
         yNLvqIEnUPa9/UVgfu9X2Fcd1h0desYcwXJqM3wcYrA5yhIH6e4Bw7DORMNhVcCeT5hz
         YSlh9jI1q7JWg9xwpv1zLJEsVkSrLnHhaDJGpbNSRZXk0W0iKp2BG2FGOePzI+YPKmc+
         3cUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=XVQov6o+jdkJ+7pK7n44XXfzKN5qOLcTtl4qwrAHNlM=;
        b=MSHISgW8JzyTEh7Sg4z9k+vPH7uuhvfWJnD4xVh1CiyNvUB9T2w29Q/sFV3Dt15qNm
         NX9wzWLK4TD8Ydb4hlGR5eRXXbiTC0/pBCYu7kgrQ0ktmrCk8DjN2Cv4UQxEdjWUQE05
         To1j1kaTd/1dMMVhPuYtOqBmPI8Z5CB/MMStn6X79FzhJscuu4wEHMunK5ZyA+QuDOGl
         ZhGswlL4SrbkzJh8hS3f+epZv+ytgJzAUZzZnsrnnBNQtbUCZcx8zktld2kcE4Mp533a
         pOkg7R3g229c4OZixH0XG0GwODAvxrbsxRk7mnB03//PsBMki9nYmirU+0j9qW0obDAk
         93Jw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531Hux7iFzsqa33lKCAdliiXym9K9S2NQ4Gvc1aamMhYiLmITif0
	qJDdf/F3qhOVzNqUC5VxiQo=
X-Google-Smtp-Source: ABdhPJxSuw3M+0woDkEDLfbau/mWC1QlCzpbMobqBHliS5scLHbZWTZrMSzf+V0vpPtdINoPrRmJzg==
X-Received: by 2002:a05:6830:458:: with SMTP id d24mr20649476otc.163.1607972394780;
        Mon, 14 Dec 2020 10:59:54 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:12f5:: with SMTP id g108ls3263599otg.2.gmail; Mon, 14
 Dec 2020 10:59:54 -0800 (PST)
X-Received: by 2002:a9d:6188:: with SMTP id g8mr20644707otk.299.1607972394236;
        Mon, 14 Dec 2020 10:59:54 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607972394; cv=none;
        d=google.com; s=arc-20160816;
        b=H0paWbOhmnL+5HsC8TY63Zi7BgouuLZBRCVD5gJwhHNajNB+yXzq9mpbi5z2RQZOik
         fe1Owa3Yt2CmfNV73WKtDxgMOLZdYDf10KemMG7GGMliJkOku/VqVudSQKS4/8BjBJCG
         661F3Cb1ZgYWZkBhk/mdk0zxpii3zKWEj4hMxJeF3jqDF6G3QCseBpa7jzspBQ9Jw9zf
         7wQhUZ2vwCr/KS+uH/x3VAO/gSiOjho3uTpZ5c63VIR8EvSMkYfUjmQvEkrvI9ZqelPd
         NbAH19vJ14815TWtY9c2Tow7S6ixw04fp/0pf5GBAoncM/WpHN4eLhtATaLDPYp7riC6
         GXxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=J2wcPa/TcW7v+0oJv5tT2h3rObDG9fi5GY0c26o+DJ8=;
        b=ufoTve4hNU2OjrnRKNm2qJf2clY2PnLBfYefDIKZ1WqTEP6SQlqXDghE4fSmNUOsnK
         XAubsatdNqScB63FHLD3fvebYHkUQtnHzWDYtE/fxLGRgH9VlZNSyvafS8elCfgMHvNs
         dPWUbu8tNTTQV8RfGvTs8e3hkQtOtbB6KLiKxLOce+PlKn+qh6QBoB1fExWxiBKKV0hk
         hF7YVu7SZyLSWTK5Iw87YZtGzfTpX2cPMEeQt5e80FLlmHY8XmjCSiGg6GGTUKJU6rws
         VmFfSEJG65B5AbOjuG28b0QhcvpDnoiaOp3zZ7CwGIs19tjK62XnPmhunswih8ngaDHU
         Asfg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga02.intel.com (mga02.intel.com. [134.134.136.20])
        by gmr-mx.google.com with ESMTPS id v23si1564364otn.0.2020.12.14.10.59.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 14 Dec 2020 10:59:54 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) client-ip=134.134.136.20;
IronPort-SDR: fcEkVEO5nXzvsWUWIy9QB0bWkFgpIAZCmJpj6eWJffLQk+2HorgH1/jseB1O2GBezKj6wkW+ZF
 MuC8CQ+4zqUw==
X-IronPort-AV: E=McAfee;i="6000,8403,9834"; a="161810306"
X-IronPort-AV: E=Sophos;i="5.78,420,1599548400"; 
   d="gz'50?scan'50,208,50";a="161810306"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Dec 2020 10:59:38 -0800
IronPort-SDR: 9aL9r3NGshXzRu/TNhuXAIRJxgZ7qjPHnV8w77Vlsvs1nNeNsi/CeJqYz6XYAv/93uAILvhRT7
 SB+MY+KwZ/XQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,420,1599548400"; 
   d="gz'50?scan'50,208,50";a="383391107"
Received: from lkp-server02.sh.intel.com (HELO a947d92d0467) ([10.239.97.151])
  by fmsmga002.fm.intel.com with ESMTP; 14 Dec 2020 10:59:35 -0800
Received: from kbuild by a947d92d0467 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kot4J-0000Qy-8e; Mon, 14 Dec 2020 18:59:35 +0000
Date: Tue, 15 Dec 2020 02:59:34 +0800
From: kernel test robot <lkp@intel.com>
To: Alex Deucher <alexander.deucher@amd.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Linux Memory Management List <linux-mm@kvack.org>,
	Harry Wentland <harry.wentland@amd.com>,
	Nicholas Kazlauskas <nicholas.kazlauskas@amd.com>
Subject: [linux-next:master 2505/13375]
 drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dcn30/dcn30_clk_mgr.c:214:2:
 error: implicit declaration of function 'enable_kernel_vsx'
Message-ID: <202012150230.pIpP0K38-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="dDRMvlgZJXvWKvBx"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted
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

Hi Alex,

FYI, the error/warning still remains.

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
head:   7bba37a1591369e2e506d599b8f5d7d0516b2dbc
commit: 582e2ce5b4ece37055c6ebe58ab48a4817d30b10 [2505/13375] drm/amdgpu/display: FP fixes for DCN3.x (v4)
config: powerpc64-randconfig-r006-20201214 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project d38205144febf4dc42c9270c6aa3d978f1ef65e1)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc64 cross compiling tool for clang build
        # apt-get install binutils-powerpc64-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=582e2ce5b4ece37055c6ebe58ab48a4817d30b10
        git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
        git fetch --no-tags linux-next master
        git checkout 582e2ce5b4ece37055c6ebe58ab48a4817d30b10
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dcn30/dcn30_clk_mgr.c:214:2: error: implicit declaration of function 'enable_kernel_vsx' [-Werror,-Wimplicit-function-declaration]
           DC_FP_START();
           ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/os_types.h:68:3: note: expanded from macro 'DC_FP_START'
                   enable_kernel_vsx(); \
                   ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dcn30/dcn30_clk_mgr.c:214:2: note: did you mean 'enable_kernel_fp'?
   drivers/gpu/drm/amd/amdgpu/../display/dc/os_types.h:68:3: note: expanded from macro 'DC_FP_START'
                   enable_kernel_vsx(); \
                   ^
   arch/powerpc/include/asm/switch_to.h:40:13: note: 'enable_kernel_fp' declared here
   extern void enable_kernel_fp(void);
               ^
>> drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dcn30/dcn30_clk_mgr.c:214:2: error: implicit declaration of function 'enable_kernel_altivec' [-Werror,-Wimplicit-function-declaration]
           DC_FP_START();
           ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/os_types.h:71:3: note: expanded from macro 'DC_FP_START'
                   enable_kernel_altivec(); \
                   ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dcn30/dcn30_clk_mgr.c:214:2: note: did you mean 'enable_kernel_fp'?
   drivers/gpu/drm/amd/amdgpu/../display/dc/os_types.h:71:3: note: expanded from macro 'DC_FP_START'
                   enable_kernel_altivec(); \
                   ^
   arch/powerpc/include/asm/switch_to.h:40:13: note: 'enable_kernel_fp' declared here
   extern void enable_kernel_fp(void);
               ^
>> drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dcn30/dcn30_clk_mgr.c:216:2: error: implicit declaration of function 'disable_kernel_vsx' [-Werror,-Wimplicit-function-declaration]
           DC_FP_END();
           ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/os_types.h:79:3: note: expanded from macro 'DC_FP_END'
                   disable_kernel_vsx(); \
                   ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dcn30/dcn30_clk_mgr.c:216:2: note: did you mean 'disable_kernel_fp'?
   drivers/gpu/drm/amd/amdgpu/../display/dc/os_types.h:79:3: note: expanded from macro 'DC_FP_END'
                   disable_kernel_vsx(); \
                   ^
   arch/powerpc/include/asm/switch_to.h:44:20: note: 'disable_kernel_fp' declared here
   static inline void disable_kernel_fp(void)
                      ^
>> drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dcn30/dcn30_clk_mgr.c:216:2: error: implicit declaration of function 'disable_kernel_altivec' [-Werror,-Wimplicit-function-declaration]
           DC_FP_END();
           ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/os_types.h:82:3: note: expanded from macro 'DC_FP_END'
                   disable_kernel_altivec(); \
                   ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dcn30/dcn30_clk_mgr.c:216:2: note: did you mean 'disable_kernel_fp'?
   drivers/gpu/drm/amd/amdgpu/../display/dc/os_types.h:82:3: note: expanded from macro 'DC_FP_END'
                   disable_kernel_altivec(); \
                   ^
   arch/powerpc/include/asm/switch_to.h:44:20: note: 'disable_kernel_fp' declared here
   static inline void disable_kernel_fp(void)
                      ^
   4 errors generated.
--
                           ^
   <scratch space>:143:1: note: expanded from here
   DCN_BASE__INST0_SEG3
   ^
   drivers/gpu/drm/amd/amdgpu/../include/sienna_cichlid_ip_offset.h:373:52: note: expanded from macro 'DCN_BASE__INST0_SEG3'
   #define DCN_BASE__INST0_SEG3                       0x00009000
                                                      ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_resource.c:753:3: note: previous initialization is here
                   HWSEQ_DCN30_REG_LIST()
                   ^~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_hwseq.h:341:2: note: expanded from macro 'HWSEQ_DCN30_REG_LIST'
           HWSEQ_DCN2_REG_LIST(),\
           ^~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_hwseq.h:244:2: note: expanded from macro 'HWSEQ_DCN2_REG_LIST'
           SR(MPC_CRC_RESULT_C), \
           ^~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_resource.c:247:15: note: expanded from macro 'SR'
                   .reg_name = BASE(mm ## reg_name ## _BASE_IDX) +  \
                               ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   note: (skipping 1 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_resource.c:242:25: note: expanded from macro 'BASE_INNER'
   #define BASE_INNER(seg) DCN_BASE__INST0_SEG ## seg
                           ^
   <scratch space>:155:1: note: expanded from here
   DCN_BASE__INST0_SEG3
   ^
   drivers/gpu/drm/amd/amdgpu/../include/sienna_cichlid_ip_offset.h:373:52: note: expanded from macro 'DCN_BASE__INST0_SEG3'
   #define DCN_BASE__INST0_SEG3                       0x00009000
                                                      ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_resource.c:753:3: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
                   HWSEQ_DCN30_REG_LIST()
                   ^~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_hwseq.h:357:2: note: expanded from macro 'HWSEQ_DCN30_REG_LIST'
           SR(MPC_CRC_RESULT_AR), \
           ^~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_resource.c:247:15: note: expanded from macro 'SR'
                   .reg_name = BASE(mm ## reg_name ## _BASE_IDX) +  \
                               ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_resource.c:244:19: note: expanded from macro 'BASE'
   #define BASE(seg) BASE_INNER(seg)
                     ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_resource.c:242:25: note: expanded from macro 'BASE_INNER'
   #define BASE_INNER(seg) DCN_BASE__INST0_SEG ## seg
                           ^
   <scratch space>:147:1: note: expanded from here
   DCN_BASE__INST0_SEG3
   ^
   drivers/gpu/drm/amd/amdgpu/../include/sienna_cichlid_ip_offset.h:373:52: note: expanded from macro 'DCN_BASE__INST0_SEG3'
   #define DCN_BASE__INST0_SEG3                       0x00009000
                                                      ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_resource.c:753:3: note: previous initialization is here
                   HWSEQ_DCN30_REG_LIST()
                   ^~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_hwseq.h:341:2: note: expanded from macro 'HWSEQ_DCN30_REG_LIST'
           HWSEQ_DCN2_REG_LIST(),\
           ^~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_hwseq.h:245:2: note: expanded from macro 'HWSEQ_DCN2_REG_LIST'
           SR(MPC_CRC_RESULT_AR), \
           ^~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_resource.c:247:15: note: expanded from macro 'SR'
                   .reg_name = BASE(mm ## reg_name ## _BASE_IDX) +  \
                               ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   note: (skipping 1 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_resource.c:242:25: note: expanded from macro 'BASE_INNER'
   #define BASE_INNER(seg) DCN_BASE__INST0_SEG ## seg
                           ^
   <scratch space>:159:1: note: expanded from here
   DCN_BASE__INST0_SEG3
   ^
   drivers/gpu/drm/amd/amdgpu/../include/sienna_cichlid_ip_offset.h:373:52: note: expanded from macro 'DCN_BASE__INST0_SEG3'
   #define DCN_BASE__INST0_SEG3                       0x00009000
                                                      ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_resource.c:875:6: warning: no previous prototype for function 'dcn30_dpp_destroy' [-Wmissing-prototypes]
   void dcn30_dpp_destroy(struct dpp **dpp)
        ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_resource.c:875:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void dcn30_dpp_destroy(struct dpp **dpp)
   ^
   static 
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_resource.c:992:16: warning: no previous prototype for function 'dcn30_hubbub_create' [-Wmissing-prototypes]
   struct hubbub *dcn30_hubbub_create(struct dc_context *ctx)
                  ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_resource.c:992:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   struct hubbub *dcn30_hubbub_create(struct dc_context *ctx)
   ^
   static 
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_resource.c:1143:24: warning: no previous prototype for function 'dcn30_stream_encoder_create' [-Wmissing-prototypes]
   struct stream_encoder *dcn30_stream_encoder_create(
                          ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_resource.c:1143:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   struct stream_encoder *dcn30_stream_encoder_create(
   ^
   static 
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_resource.c:1175:19: warning: no previous prototype for function 'dcn30_hwseq_create' [-Wmissing-prototypes]
   struct dce_hwseq *dcn30_hwseq_create(
                     ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_resource.c:1175:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   struct dce_hwseq *dcn30_hwseq_create(
   ^
   static 
>> drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_resource.c:1576:2: error: implicit declaration of function 'enable_kernel_vsx' [-Werror,-Wimplicit-function-declaration]
           DC_FP_START();
           ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/os_types.h:68:3: note: expanded from macro 'DC_FP_START'
                   enable_kernel_vsx(); \
                   ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_resource.c:1576:2: note: did you mean 'enable_kernel_fp'?
   drivers/gpu/drm/amd/amdgpu/../display/dc/os_types.h:68:3: note: expanded from macro 'DC_FP_START'
                   enable_kernel_vsx(); \
                   ^
   arch/powerpc/include/asm/switch_to.h:40:13: note: 'enable_kernel_fp' declared here
   extern void enable_kernel_fp(void);
               ^
>> drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_resource.c:1576:2: error: implicit declaration of function 'enable_kernel_altivec' [-Werror,-Wimplicit-function-declaration]
           DC_FP_START();
           ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/os_types.h:71:3: note: expanded from macro 'DC_FP_START'
                   enable_kernel_altivec(); \
                   ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_resource.c:1576:2: note: did you mean 'enable_kernel_fp'?
   drivers/gpu/drm/amd/amdgpu/../display/dc/os_types.h:71:3: note: expanded from macro 'DC_FP_START'
                   enable_kernel_altivec(); \
                   ^
   arch/powerpc/include/asm/switch_to.h:40:13: note: 'enable_kernel_fp' declared here
   extern void enable_kernel_fp(void);
               ^
>> drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_resource.c:1578:2: error: implicit declaration of function 'disable_kernel_vsx' [-Werror,-Wimplicit-function-declaration]
           DC_FP_END();
           ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/os_types.h:79:3: note: expanded from macro 'DC_FP_END'
                   disable_kernel_vsx(); \
                   ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_resource.c:1578:2: note: did you mean 'disable_kernel_fp'?
   drivers/gpu/drm/amd/amdgpu/../display/dc/os_types.h:79:3: note: expanded from macro 'DC_FP_END'
                   disable_kernel_vsx(); \
                   ^
   arch/powerpc/include/asm/switch_to.h:44:20: note: 'disable_kernel_fp' declared here
   static inline void disable_kernel_fp(void)
                      ^
>> drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_resource.c:1578:2: error: implicit declaration of function 'disable_kernel_altivec' [-Werror,-Wimplicit-function-declaration]
           DC_FP_END();
           ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/os_types.h:82:3: note: expanded from macro 'DC_FP_END'
                   disable_kernel_altivec(); \
                   ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_resource.c:1578:2: note: did you mean 'disable_kernel_fp'?
   drivers/gpu/drm/amd/amdgpu/../display/dc/os_types.h:82:3: note: expanded from macro 'DC_FP_END'
                   disable_kernel_altivec(); \
                   ^
   arch/powerpc/include/asm/switch_to.h:44:20: note: 'disable_kernel_fp' declared here
   static inline void disable_kernel_fp(void)
                      ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_resource.c:2401:2: error: implicit declaration of function 'enable_kernel_vsx' [-Werror,-Wimplicit-function-declaration]
           DC_FP_START();
           ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/os_types.h:68:3: note: expanded from macro 'DC_FP_START'
                   enable_kernel_vsx(); \
                   ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_resource.c:2401:2: error: implicit declaration of function 'enable_kernel_altivec' [-Werror,-Wimplicit-function-declaration]
   drivers/gpu/drm/amd/amdgpu/../display/dc/os_types.h:71:3: note: expanded from macro 'DC_FP_START'
                   enable_kernel_altivec(); \
                   ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_resource.c:2403:2: error: implicit declaration of function 'disable_kernel_vsx' [-Werror,-Wimplicit-function-declaration]
           DC_FP_END();
           ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/os_types.h:79:3: note: expanded from macro 'DC_FP_END'
                   disable_kernel_vsx(); \
                   ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_resource.c:2403:2: error: implicit declaration of function 'disable_kernel_altivec' [-Werror,-Wimplicit-function-declaration]
   drivers/gpu/drm/amd/amdgpu/../display/dc/os_types.h:82:3: note: expanded from macro 'DC_FP_END'
                   disable_kernel_altivec(); \
                   ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_resource.c:2463:2: error: implicit declaration of function 'enable_kernel_vsx' [-Werror,-Wimplicit-function-declaration]
           DC_FP_START();
           ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/os_types.h:68:3: note: expanded from macro 'DC_FP_START'
                   enable_kernel_vsx(); \
                   ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_resource.c:2463:2: error: implicit declaration of function 'enable_kernel_altivec' [-Werror,-Wimplicit-function-declaration]
   drivers/gpu/drm/amd/amdgpu/../display/dc/os_types.h:71:3: note: expanded from macro 'DC_FP_START'
                   enable_kernel_altivec(); \
                   ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_resource.c:2465:2: error: implicit declaration of function 'disable_kernel_vsx' [-Werror,-Wimplicit-function-declaration]
           DC_FP_END();
           ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/os_types.h:79:3: note: expanded from macro 'DC_FP_END'
                   disable_kernel_vsx(); \
                   ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_resource.c:2465:2: error: implicit declaration of function 'disable_kernel_altivec' [-Werror,-Wimplicit-function-declaration]
   drivers/gpu/drm/amd/amdgpu/../display/dc/os_types.h:82:3: note: expanded from macro 'DC_FP_END'
                   disable_kernel_altivec(); \
                   ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_resource.c:2537:4: error: implicit declaration of function 'enable_kernel_vsx' [-Werror,-Wimplicit-function-declaration]
                           DC_FP_START();
                           ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/os_types.h:68:3: note: expanded from macro 'DC_FP_START'
                   enable_kernel_vsx(); \
                   ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_resource.c:2537:4: error: implicit declaration of function 'enable_kernel_altivec' [-Werror,-Wimplicit-function-declaration]
   drivers/gpu/drm/amd/amdgpu/../display/dc/os_types.h:71:3: note: expanded from macro 'DC_FP_START'
                   enable_kernel_altivec(); \
                   ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_resource.c:2540:4: error: implicit declaration of function 'disable_kernel_vsx' [-Werror,-Wimplicit-function-declaration]
                           DC_FP_END();
                           ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/os_types.h:79:3: note: expanded from macro 'DC_FP_END'
                   disable_kernel_vsx(); \
                   ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_resource.c:2540:4: error: implicit declaration of function 'disable_kernel_altivec' [-Werror,-Wimplicit-function-declaration]
   drivers/gpu/drm/amd/amdgpu/../display/dc/os_types.h:82:3: note: expanded from macro 'DC_FP_END'
                   disable_kernel_altivec(); \
                   ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_resource.c:2644:2: error: implicit declaration of function 'enable_kernel_vsx' [-Werror,-Wimplicit-function-declaration]
           DC_FP_START();
           ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/os_types.h:68:3: note: expanded from macro 'DC_FP_START'
                   enable_kernel_vsx(); \
                   ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_resource.c:2644:2: error: implicit declaration of function 'enable_kernel_altivec' [-Werror,-Wimplicit-function-declaration]
   drivers/gpu/drm/amd/amdgpu/../display/dc/os_types.h:71:3: note: expanded from macro 'DC_FP_START'
                   enable_kernel_altivec(); \
                   ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_resource.c:2923:2: error: implicit declaration of function 'disable_kernel_vsx' [-Werror,-Wimplicit-function-declaration]
           DC_FP_END();
           ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/os_types.h:79:3: note: expanded from macro 'DC_FP_END'
                   disable_kernel_vsx(); \
                   ^
   fatal error: too many errors emitted, stopping now [-ferror-limit=]
   115 warnings and 20 errors generated.

vim +/enable_kernel_vsx +214 drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dcn30/dcn30_clk_mgr.c

   159	
   160	void dcn3_init_clocks(struct clk_mgr *clk_mgr_base)
   161	{
   162		struct clk_mgr_internal *clk_mgr = TO_CLK_MGR_INTERNAL(clk_mgr_base);
   163		unsigned int num_levels;
   164	
   165		memset(&(clk_mgr_base->clks), 0, sizeof(struct dc_clocks));
   166		clk_mgr_base->clks.p_state_change_support = true;
   167		clk_mgr_base->clks.prev_p_state_change_support = true;
   168		clk_mgr->smu_present = false;
   169	
   170		if (!clk_mgr_base->bw_params)
   171			return;
   172	
   173		if (!clk_mgr_base->force_smu_not_present && dcn30_smu_get_smu_version(clk_mgr, &clk_mgr->smu_ver))
   174			clk_mgr->smu_present = true;
   175	
   176		if (!clk_mgr->smu_present)
   177			return;
   178	
   179		// do we fail if these fail? if so, how? do we not care to check?
   180		dcn30_smu_check_driver_if_version(clk_mgr);
   181		dcn30_smu_check_msg_header_version(clk_mgr);
   182	
   183		/* DCFCLK */
   184		dcn3_init_single_clock(clk_mgr, PPCLK_DCEFCLK,
   185				&clk_mgr_base->bw_params->clk_table.entries[0].dcfclk_mhz,
   186				&num_levels);
   187	
   188		/* DTBCLK */
   189		dcn3_init_single_clock(clk_mgr, PPCLK_DTBCLK,
   190				&clk_mgr_base->bw_params->clk_table.entries[0].dtbclk_mhz,
   191				&num_levels);
   192	
   193		// DPREFCLK ???
   194	
   195		/* DISPCLK */
   196		dcn3_init_single_clock(clk_mgr, PPCLK_DISPCLK,
   197				&clk_mgr_base->bw_params->clk_table.entries[0].dispclk_mhz,
   198				&num_levels);
   199	
   200		/* DPPCLK */
   201		dcn3_init_single_clock(clk_mgr, PPCLK_PIXCLK,
   202				&clk_mgr_base->bw_params->clk_table.entries[0].dppclk_mhz,
   203				&num_levels);
   204	
   205		/* PHYCLK */
   206		dcn3_init_single_clock(clk_mgr, PPCLK_PHYCLK,
   207				&clk_mgr_base->bw_params->clk_table.entries[0].phyclk_mhz,
   208				&num_levels);
   209	
   210		/* Get UCLK, update bounding box */
   211		clk_mgr_base->funcs->get_memclk_states_from_smu(clk_mgr_base);
   212	
   213		/* WM range table */
 > 214		DC_FP_START();
   215		dcn3_build_wm_range_table(clk_mgr);
 > 216		DC_FP_END();
   217	}
   218	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202012150230.pIpP0K38-lkp%40intel.com.

--dDRMvlgZJXvWKvBx
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--dDRMvlgZJXvWKvBx--
