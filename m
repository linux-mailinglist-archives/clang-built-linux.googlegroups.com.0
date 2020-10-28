Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB3EO4X6AKGQEXFLZ5NA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13e.google.com (mail-il1-x13e.google.com [IPv6:2607:f8b0:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id 2768A29CF77
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Oct 2020 11:26:54 +0100 (CET)
Received: by mail-il1-x13e.google.com with SMTP id d9sf3109668iln.22
        for <lists+clang-built-linux@lfdr.de>; Wed, 28 Oct 2020 03:26:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603880813; cv=pass;
        d=google.com; s=arc-20160816;
        b=EFvrP0wlHQfQF2a6RFMIOKquibLnhxfPZbQYRyZL2JR4AX7Z5WGyn25z8rP4qB7nON
         N+qM0h2EmtAVdWgH+VPB2ruRQ8XNaX7atIEaglhhwZmqvdmJvVQ1ZG4OdleD+y2Jr00J
         bOk/ATsEKGVCzOnaalzepSvqB5SkiahEq/9wBAVb3R4bxlOm/R/KPYY1U2f54QT3BVA+
         Wqobid11BkFXXRIjAruMtEm74KYGlT6V10DQk7vCsqAxL9tpmBbhf719ZvQ8e6ztto8l
         XPlSNB+xkZc3noCB1vSUqAht+EGHr2d4q8T9j60uLxSzXwhTYhRVqzmwG2N3a4gJUBVI
         crfg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=VpUG9B0AVLhGGFKUCPXjETS5BJOGZ5L5cx5EfQszKNc=;
        b=B7cOmBJHB0739fscDWu9x1hYA3HsbaZKonVnepbp7G61gahkw7zMNJy+rcBqDD6d5A
         OfUnGOHyfd1l87GyWJ9nWqT7C4XSH9Z3ZvEIbfFG+M1c0tK4y5aUxnyQ3iPolV2sijMA
         Ub9Exm8VXi9ock68gdgxZQ4uIKgya6ixcovcMIAKJEHdtquHGvNzYmmc/HKFJjBxjF3l
         7Qj8hPvmFIRAjorJbH5g1fVn2bd5Gk2IAyHvLuHnJo4EUMTuel4r7bf5PWBAXZGcKQFM
         bs5bHoIq5MwvzWGhkvuznqZG4G3/yAAAbR+KsAz/sHKmtqe/6jFZm1CAWPkuRslyJ28X
         qVGQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=VpUG9B0AVLhGGFKUCPXjETS5BJOGZ5L5cx5EfQszKNc=;
        b=G2s+LoqU1ymVCEe7axDQECyCBoyQLBinYrneIFg1bkax6uAfIT6NOH88mubkp8Dor8
         AINavgZ1fuYB4/j7DQdz3qlEN7bXtwGy5fSfIPS1IYJQhXtUdJBrPtwwgT8w0B48S+/L
         UkBfEdlaU47DWSUq2D3f+WaeNuuQdMMrBN4Rhpxb8UgGszsAIMkJyQPMKey7goYqWt6t
         TX18isFMN10/UpyMF6jnZX0Q/vDhVCdWspqkc1Ppf6GsYDzI4ppmtjhnaJ6L3aLAGseo
         V42VMlY+2OLmijagFbMtpzb97Ze1MejpB/YuH2WSlIIw/Fso2gzk+OSBGwEly6YVVUY4
         zRXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=VpUG9B0AVLhGGFKUCPXjETS5BJOGZ5L5cx5EfQszKNc=;
        b=XLXGaitAKaZF2O7qxSbUZSxbHh9HKXHNPB8Xu5FVuu3j+8auFEDS8p5WSsMJgeXSpG
         ZSFVg9eQRezYBpC5yHK8yZytQVubsDk6XVsp0ntKH10o8JOmTxfF/IblhDLIPlsHM9Em
         mrKuD2wMSLVerFBxSM0v06oirX5fCht/V12j+YRkWFyoVK7CDDHS01OahvSBNgTadqfA
         kAGuGuTU54eo/oNKE65w7j7upB2RHJE4V1+mlS16B05/aUrFSu4sgblGBlzvVhvhmyIg
         gXOJbhZVVnD/hue7GlqmzljdC3r2eYbrh0JNhGSOgGbMtCpbmnKr48DexSwr2OHl6EL0
         ImjQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531AGMy5sVHfFDpO+uycm9HMv4N0bitJKFZXGhOqZ+VRGG0LqJuC
	TIOiWdRK8vO48a9YIZavKOw=
X-Google-Smtp-Source: ABdhPJx6/BnRRk6E6XSq8ykDSpPE3RmXKcOswnUIxj+5OLFT4hrUQw1Y6SGsksNE9WG9PZ0tP/MoiA==
X-Received: by 2002:a92:5f53:: with SMTP id t80mr4449339ilb.160.1603880812932;
        Wed, 28 Oct 2020 03:26:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:7d02:: with SMTP id y2ls1009008ilc.11.gmail; Wed, 28 Oct
 2020 03:26:52 -0700 (PDT)
X-Received: by 2002:a92:c5ce:: with SMTP id s14mr5332454ilt.40.1603880812403;
        Wed, 28 Oct 2020 03:26:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603880812; cv=none;
        d=google.com; s=arc-20160816;
        b=YYHhVcfmqF5N5w0nU4pTPXiO68DVeN0ycKDgnwv3IYXPeoKsFggn8Pmz1THK3joQeC
         vOa9McXPLJ2ET4oEQEA6bNvoq4DsqtySMGH/0TZiTUrulwYccAHxNNsyqvB4C4aij3up
         wsKM3FGC+PMqc+97tSwVRoAnPnwgoqnLYBjr9OAvEcHiWAXAtd6aUp7YcZ27Vv6dlFbq
         Kz6EUxGYcAqzEgETadoIyie2VHdfMtM7xh/a0wmKM0VA/7VoQuLFL7xCWtdGJFWh87NQ
         VUN1In9vcKttUQRv2PAoylIAR9qtsWJl5PZR30JKgVHE91RPJnoa0P5CT9leRbFGtxSU
         QaOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=tAZiaz6CooOk97p/12QxS8SSvkCxhSRX65HjRobLTrc=;
        b=CRxxHt9ilaX7jySw4y9KZE5aq45H8Zk+8lNDSTXB3I8SIl3oXI1TIbZufRIYsYsrnq
         COPzyAJ0jW8hWBM/TICLrLrPeeZy37M4zupO0uKVY/IztmF0gBKV10x2I8z1ARUJxny6
         lf45KFTDhuZrGgbqm/ePFMpgpCd4HiQV9d7+WzEr3Lpp74EYKhDv2KBvDqAo8msjMM11
         gAeTFl1Wdd/Z7q6ELUot1o+ppeBjpyBWCcd+HjKInv//TfdZdAP4yTymxxET0wA1pd4r
         umI2MfVjY+xBWJOp2z6/ehw3XAm7VcJQK7ZUTsJwUPhLpkgW8QHbTOvu7buXLJ7ounFY
         SyOw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga17.intel.com (mga17.intel.com. [192.55.52.151])
        by gmr-mx.google.com with ESMTPS id u15si266669ilk.1.2020.10.28.03.26.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Oct 2020 03:26:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) client-ip=192.55.52.151;
IronPort-SDR: zhEnOQTzyCahUHR6ozffo8WH9Jd+6gmX0sSDGhhyfQEuYLLNKGv6I/T/LSSWZcvSCA9SEB+kU2
 gXgKGtqb1zgw==
X-IronPort-AV: E=McAfee;i="6000,8403,9787"; a="148092260"
X-IronPort-AV: E=Sophos;i="5.77,426,1596524400"; 
   d="gz'50?scan'50,208,50";a="148092260"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 28 Oct 2020 03:26:50 -0700
IronPort-SDR: 0z6nE6BG/yFc5vK6dBCMBt8DwJFAHPjKn0bH0uP/s6TNED6F5afii3L0OinqcG5jZ48AvC0TtR
 r/wxCBYrePxQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,426,1596524400"; 
   d="gz'50?scan'50,208,50";a="525076145"
Received: from lkp-server02.sh.intel.com (HELO c7f22725f98a) ([10.239.97.151])
  by fmsmga006.fm.intel.com with ESMTP; 28 Oct 2020 03:26:48 -0700
Received: from kbuild by c7f22725f98a with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kXifI-00006M-CJ; Wed, 28 Oct 2020 10:26:48 +0000
Date: Wed, 28 Oct 2020 18:26:05 +0800
From: kernel test robot <lkp@intel.com>
To: Alex Deucher <alexander.deucher@amd.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Linux Memory Management List <linux-mm@kvack.org>
Subject: [linux-next:master 2094/2270]
 drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dcn301/vg_clk_mgr.c:96:6:
 warning: no previous prototype for function 'vg_update_clocks'
Message-ID: <202010281859.wkSfAe1V-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="qDbXVdCdHGoSgWSk"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted
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


--qDbXVdCdHGoSgWSk
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Alex,

First bad commit (maybe != root cause):

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
head:   1c86f90a16d413621918ae1403842b43632f0b3d
commit: 5d7dd14d6bdc2d44f07cec98be65b6edbff2e51c [2094/2270] drm/amdgpu: fold CONFIG_DRM_AMD_DC_DCN3* into CONFIG_DRM_AMD_DC_DCN (v2)
config: x86_64-randconfig-a005-20201028 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 50dfa19cc799ae7cddd39a95dbfce675a12672ad)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=5d7dd14d6bdc2d44f07cec98be65b6edbff2e51c
        git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
        git fetch --no-tags linux-next master
        git checkout 5d7dd14d6bdc2d44f07cec98be65b6edbff2e51c
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dcn301/vg_clk_mgr.c:96:6: warning: no previous prototype for function 'vg_update_clocks' [-Wmissing-prototypes]
   void vg_update_clocks(struct clk_mgr *clk_mgr_base,
        ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dcn301/vg_clk_mgr.c:96:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void vg_update_clocks(struct clk_mgr *clk_mgr_base,
   ^
   static 
>> drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dcn301/vg_clk_mgr.c:375:6: warning: no previous prototype for function 'vg_get_clk_states' [-Wmissing-prototypes]
   void vg_get_clk_states(struct clk_mgr *clk_mgr_base, struct clk_states *s)
        ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dcn301/vg_clk_mgr.c:375:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void vg_get_clk_states(struct clk_mgr *clk_mgr_base, struct clk_states *s)
   ^
   static 
>> drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dcn301/vg_clk_mgr.c:393:6: warning: no previous prototype for function 'vg_init_clocks' [-Wmissing-prototypes]
   void vg_init_clocks(struct clk_mgr *clk_mgr)
        ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dcn301/vg_clk_mgr.c:393:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void vg_init_clocks(struct clk_mgr *clk_mgr)
   ^
   static 
   3 warnings generated.
--
>> drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dcn301/dcn301_smu.c:91:5: warning: no previous prototype for function 'dcn301_smu_send_msg_with_param' [-Wmissing-prototypes]
   int dcn301_smu_send_msg_with_param(
       ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dcn301/dcn301_smu.c:91:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   int dcn301_smu_send_msg_with_param(
   ^
   static 
   1 warning generated.
--
>> drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_init.c:140:6: warning: no previous prototype for function 'dcn301_hw_sequencer_construct' [-Wmissing-prototypes]
   void dcn301_hw_sequencer_construct(struct dc *dc)
        ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_init.c:140:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void dcn301_hw_sequencer_construct(struct dc *dc)
   ^
   static 
   1 warning generated.
--
>> drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:447:2: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
           stream_enc_regs(0),
           ^~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:443:2: note: expanded from macro 'stream_enc_regs'
           SE_DCN3_REG_LIST(id)\
           ^~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_dio_stream_encoder.h:104:2: note: expanded from macro 'SE_DCN3_REG_LIST'
           SRI(DP_SEC_METADATA_TRANSMISSION, DP, id), \
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:259:14: note: expanded from macro 'SRI'
           .reg_name = BASE(mm ## block ## id ## _ ## reg_name ## _BASE_IDX) + \
                       ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   note: (skipping 1 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:250:25: note: expanded from macro 'BASE_INNER'
   #define BASE_INNER(seg) DCN_BASE__INST0_SEG ## seg
                           ^
   <scratch space>:223:1: note: expanded from here
   DCN_BASE__INST0_SEG2
   ^
   drivers/gpu/drm/amd/amdgpu/../include/vangogh_ip_offset.h:454:52: note: expanded from macro 'DCN_BASE__INST0_SEG2'
   #define DCN_BASE__INST0_SEG2                       0x000034C0
                                                      ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:447:2: note: previous initialization is here
           stream_enc_regs(0),
           ^~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:443:2: note: expanded from macro 'stream_enc_regs'
           SE_DCN3_REG_LIST(id)\
           ^~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_dio_stream_encoder.h:99:2: note: expanded from macro 'SE_DCN3_REG_LIST'
           SRI(DP_SEC_METADATA_TRANSMISSION, DP, id), \
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:259:14: note: expanded from macro 'SRI'
           .reg_name = BASE(mm ## block ## id ## _ ## reg_name ## _BASE_IDX) + \
                       ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   note: (skipping 1 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:250:25: note: expanded from macro 'BASE_INNER'
   #define BASE_INNER(seg) DCN_BASE__INST0_SEG ## seg
                           ^
   <scratch space>:173:1: note: expanded from here
   DCN_BASE__INST0_SEG2
   ^
   drivers/gpu/drm/amd/amdgpu/../include/vangogh_ip_offset.h:454:52: note: expanded from macro 'DCN_BASE__INST0_SEG2'
   #define DCN_BASE__INST0_SEG2                       0x000034C0
                                                      ^
>> drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:447:2: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
           stream_enc_regs(0),
           ^~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:443:2: note: expanded from macro 'stream_enc_regs'
           SE_DCN3_REG_LIST(id)\
           ^~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_dio_stream_encoder.h:105:2: note: expanded from macro 'SE_DCN3_REG_LIST'
           SRI(HDMI_METADATA_PACKET_CONTROL, DIG, id), \
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:259:14: note: expanded from macro 'SRI'
           .reg_name = BASE(mm ## block ## id ## _ ## reg_name ## _BASE_IDX) + \
                       ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   note: (skipping 1 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:250:25: note: expanded from macro 'BASE_INNER'
   #define BASE_INNER(seg) DCN_BASE__INST0_SEG ## seg
                           ^
   <scratch space>:233:1: note: expanded from here
   DCN_BASE__INST0_SEG2
   ^
   drivers/gpu/drm/amd/amdgpu/../include/vangogh_ip_offset.h:454:52: note: expanded from macro 'DCN_BASE__INST0_SEG2'
   #define DCN_BASE__INST0_SEG2                       0x000034C0
                                                      ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:447:2: note: previous initialization is here
           stream_enc_regs(0),
           ^~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:443:2: note: expanded from macro 'stream_enc_regs'
           SE_DCN3_REG_LIST(id)\
           ^~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_dio_stream_encoder.h:100:2: note: expanded from macro 'SE_DCN3_REG_LIST'
           SRI(HDMI_METADATA_PACKET_CONTROL, DIG, id), \
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:259:14: note: expanded from macro 'SRI'
           .reg_name = BASE(mm ## block ## id ## _ ## reg_name ## _BASE_IDX) + \
                       ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   note: (skipping 1 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:250:25: note: expanded from macro 'BASE_INNER'
   #define BASE_INNER(seg) DCN_BASE__INST0_SEG ## seg
                           ^
   <scratch space>:183:1: note: expanded from here
   DCN_BASE__INST0_SEG2
   ^
   drivers/gpu/drm/amd/amdgpu/../include/vangogh_ip_offset.h:454:52: note: expanded from macro 'DCN_BASE__INST0_SEG2'
   #define DCN_BASE__INST0_SEG2                       0x000034C0
                                                      ^
>> drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:447:2: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
           stream_enc_regs(0),
           ^~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:443:2: note: expanded from macro 'stream_enc_regs'
           SE_DCN3_REG_LIST(id)\
           ^~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_dio_stream_encoder.h:106:2: note: expanded from macro 'SE_DCN3_REG_LIST'
           SRI(DIG_FE_CNTL, DIG, id), \
           ^~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:259:14: note: expanded from macro 'SRI'
           .reg_name = BASE(mm ## block ## id ## _ ## reg_name ## _BASE_IDX) + \
                       ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   note: (skipping 1 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:250:25: note: expanded from macro 'BASE_INNER'
   #define BASE_INNER(seg) DCN_BASE__INST0_SEG ## seg
                           ^
   <scratch space>:243:1: note: expanded from here
   DCN_BASE__INST0_SEG2
   ^
   drivers/gpu/drm/amd/amdgpu/../include/vangogh_ip_offset.h:454:52: note: expanded from macro 'DCN_BASE__INST0_SEG2'
   #define DCN_BASE__INST0_SEG2                       0x000034C0
                                                      ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:447:2: note: previous initialization is here
           stream_enc_regs(0),
           ^~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:443:2: note: expanded from macro 'stream_enc_regs'
           SE_DCN3_REG_LIST(id)\
           ^~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_dio_stream_encoder.h:50:2: note: expanded from macro 'SE_DCN3_REG_LIST'
           SRI(DIG_FE_CNTL, DIG, id), \
           ^~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:259:14: note: expanded from macro 'SRI'
           .reg_name = BASE(mm ## block ## id ## _ ## reg_name ## _BASE_IDX) + \
                       ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   note: (skipping 1 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:250:25: note: expanded from macro 'BASE_INNER'
   #define BASE_INNER(seg) DCN_BASE__INST0_SEG ## seg
                           ^
   <scratch space>:74:1: note: expanded from here
   DCN_BASE__INST0_SEG2
   ^
   drivers/gpu/drm/amd/amdgpu/../include/vangogh_ip_offset.h:454:52: note: expanded from macro 'DCN_BASE__INST0_SEG2'
   #define DCN_BASE__INST0_SEG2                       0x000034C0
                                                      ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:448:2: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
           stream_enc_regs(1),
           ^~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:443:2: note: expanded from macro 'stream_enc_regs'
           SE_DCN3_REG_LIST(id)\
           ^~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_dio_stream_encoder.h:104:2: note: expanded from macro 'SE_DCN3_REG_LIST'
           SRI(DP_SEC_METADATA_TRANSMISSION, DP, id), \
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:259:14: note: expanded from macro 'SRI'
           .reg_name = BASE(mm ## block ## id ## _ ## reg_name ## _BASE_IDX) + \
                       ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   note: (skipping 1 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:250:25: note: expanded from macro 'BASE_INNER'
   #define BASE_INNER(seg) DCN_BASE__INST0_SEG ## seg
                           ^
   <scratch space>:23:1: note: expanded from here
   DCN_BASE__INST0_SEG2
   ^
   drivers/gpu/drm/amd/amdgpu/../include/vangogh_ip_offset.h:454:52: note: expanded from macro 'DCN_BASE__INST0_SEG2'
   #define DCN_BASE__INST0_SEG2                       0x000034C0
                                                      ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:448:2: note: previous initialization is here
           stream_enc_regs(1),
           ^~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:443:2: note: expanded from macro 'stream_enc_regs'
           SE_DCN3_REG_LIST(id)\
           ^~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_dio_stream_encoder.h:99:2: note: expanded from macro 'SE_DCN3_REG_LIST'
           SRI(DP_SEC_METADATA_TRANSMISSION, DP, id), \
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:259:14: note: expanded from macro 'SRI'
           .reg_name = BASE(mm ## block ## id ## _ ## reg_name ## _BASE_IDX) + \
                       ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   note: (skipping 1 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:250:25: note: expanded from macro 'BASE_INNER'
   #define BASE_INNER(seg) DCN_BASE__INST0_SEG ## seg
                           ^
   <scratch space>:253:1: note: expanded from here
   DCN_BASE__INST0_SEG2
   ^
   drivers/gpu/drm/amd/amdgpu/../include/vangogh_ip_offset.h:454:52: note: expanded from macro 'DCN_BASE__INST0_SEG2'
   #define DCN_BASE__INST0_SEG2                       0x000034C0
                                                      ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:448:2: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
           stream_enc_regs(1),
           ^~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:443:2: note: expanded from macro 'stream_enc_regs'
           SE_DCN3_REG_LIST(id)\
           ^~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_dio_stream_encoder.h:105:2: note: expanded from macro 'SE_DCN3_REG_LIST'
           SRI(HDMI_METADATA_PACKET_CONTROL, DIG, id), \
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:259:14: note: expanded from macro 'SRI'
           .reg_name = BASE(mm ## block ## id ## _ ## reg_name ## _BASE_IDX) + \
                       ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   note: (skipping 1 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
--
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:255:15: note: expanded from macro 'SR'
                   .reg_name = BASE(mm ## reg_name ## _BASE_IDX) +  \
                               ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   note: (skipping 1 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:250:25: note: expanded from macro 'BASE_INNER'
   #define BASE_INNER(seg) DCN_BASE__INST0_SEG ## seg
                           ^
   <scratch space>:91:1: note: expanded from here
   DCN_BASE__INST0_SEG2
   ^
   drivers/gpu/drm/amd/amdgpu/../include/vangogh_ip_offset.h:454:52: note: expanded from macro 'DCN_BASE__INST0_SEG2'
   #define DCN_BASE__INST0_SEG2                       0x000034C0
                                                      ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:704:3: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
                   HUBBUB_REG_LIST_DCN301(0)
                   ^~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_hubbub.h:33:2: note: expanded from macro 'HUBBUB_REG_LIST_DCN301'
           HUBBUB_HVM_REG_LIST()
           ^~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn21/dcn21_hubbub.h:42:2: note: expanded from macro 'HUBBUB_HVM_REG_LIST'
           SR(DCHUBBUB_ARB_REFCYC_PER_TRIP_TO_MEMORY_D),\
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:255:15: note: expanded from macro 'SR'
                   .reg_name = BASE(mm ## reg_name ## _BASE_IDX) +  \
                               ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   note: (skipping 1 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:250:25: note: expanded from macro 'BASE_INNER'
   #define BASE_INNER(seg) DCN_BASE__INST0_SEG ## seg
                           ^
   <scratch space>:27:1: note: expanded from here
   DCN_BASE__INST0_SEG2
   ^
   drivers/gpu/drm/amd/amdgpu/../include/vangogh_ip_offset.h:454:52: note: expanded from macro 'DCN_BASE__INST0_SEG2'
   #define DCN_BASE__INST0_SEG2                       0x000034C0
                                                      ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:704:3: note: previous initialization is here
                   HUBBUB_REG_LIST_DCN301(0)
                   ^~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_hubbub.h:32:2: note: expanded from macro 'HUBBUB_REG_LIST_DCN301'
           HUBBUB_REG_LIST_DCN30(id), \
           ^~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_hubbub.h:51:2: note: expanded from macro 'HUBBUB_REG_LIST_DCN30'
           SR(DCHUBBUB_ARB_REFCYC_PER_TRIP_TO_MEMORY_D)
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:255:15: note: expanded from macro 'SR'
                   .reg_name = BASE(mm ## reg_name ## _BASE_IDX) +  \
                               ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   note: (skipping 1 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:250:25: note: expanded from macro 'BASE_INNER'
   #define BASE_INNER(seg) DCN_BASE__INST0_SEG ## seg
                           ^
   <scratch space>:95:1: note: expanded from here
   DCN_BASE__INST0_SEG2
   ^
   drivers/gpu/drm/amd/amdgpu/../include/vangogh_ip_offset.h:454:52: note: expanded from macro 'DCN_BASE__INST0_SEG2'
   #define DCN_BASE__INST0_SEG2                       0x000034C0
                                                      ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:728:3: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
                   HWSEQ_DCN301_REG_LIST()
                   ^~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_hwseq.h:368:2: note: expanded from macro 'HWSEQ_DCN301_REG_LIST'
           SR(DCFCLK_CNTL), \
           ^~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:255:15: note: expanded from macro 'SR'
                   .reg_name = BASE(mm ## reg_name ## _BASE_IDX) +  \
                               ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:252:19: note: expanded from macro 'BASE'
   #define BASE(seg) BASE_INNER(seg)
                     ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:250:25: note: expanded from macro 'BASE_INNER'
   #define BASE_INNER(seg) DCN_BASE__INST0_SEG ## seg
                           ^
   <scratch space>:52:1: note: expanded from here
   DCN_BASE__INST0_SEG2
   ^
   drivers/gpu/drm/amd/amdgpu/../include/vangogh_ip_offset.h:454:52: note: expanded from macro 'DCN_BASE__INST0_SEG2'
   #define DCN_BASE__INST0_SEG2                       0x000034C0
                                                      ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:728:3: note: previous initialization is here
                   HWSEQ_DCN301_REG_LIST()
                   ^~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_hwseq.h:367:2: note: expanded from macro 'HWSEQ_DCN301_REG_LIST'
           SR(DCFCLK_CNTL),\
           ^~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:255:15: note: expanded from macro 'SR'
                   .reg_name = BASE(mm ## reg_name ## _BASE_IDX) +  \
                               ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:252:19: note: expanded from macro 'BASE'
   #define BASE(seg) BASE_INNER(seg)
                     ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:250:25: note: expanded from macro 'BASE_INNER'
   #define BASE_INNER(seg) DCN_BASE__INST0_SEG ## seg
                           ^
   <scratch space>:48:1: note: expanded from here
   DCN_BASE__INST0_SEG2
   ^
   drivers/gpu/drm/amd/amdgpu/../include/vangogh_ip_offset.h:454:52: note: expanded from macro 'DCN_BASE__INST0_SEG2'
   #define DCN_BASE__INST0_SEG2                       0x000034C0
                                                      ^
>> drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:853:6: warning: no previous prototype for function 'dcn301_dpp_destroy' [-Wmissing-prototypes]
   void dcn301_dpp_destroy(struct dpp **dpp)
        ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:853:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void dcn301_dpp_destroy(struct dpp **dpp)
   ^
   static 
>> drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:859:13: warning: no previous prototype for function 'dcn301_dpp_create' [-Wmissing-prototypes]
   struct dpp *dcn301_dpp_create(
               ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:859:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   struct dpp *dcn301_dpp_create(
   ^
   static 
>> drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:877:32: warning: no previous prototype for function 'dcn301_opp_create' [-Wmissing-prototypes]
   struct output_pixel_processor *dcn301_opp_create(
                                  ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:877:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   struct output_pixel_processor *dcn301_opp_create(
   ^
   static 
>> drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:893:17: warning: no previous prototype for function 'dcn301_aux_engine_create' [-Wmissing-prototypes]
   struct dce_aux *dcn301_aux_engine_create(
                   ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:893:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   struct dce_aux *dcn301_aux_engine_create(
   ^
   static 
>> drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:929:20: warning: no previous prototype for function 'dcn301_i2c_hw_create' [-Wmissing-prototypes]
   struct dce_i2c_hw *dcn301_i2c_hw_create(
                      ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:929:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   struct dce_i2c_hw *dcn301_i2c_hw_create(
   ^
   static 
>> drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:965:16: warning: no previous prototype for function 'dcn301_hubbub_create' [-Wmissing-prototypes]
   struct hubbub *dcn301_hubbub_create(struct dc_context *ctx)
                  ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:965:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   struct hubbub *dcn301_hubbub_create(struct dc_context *ctx)
   ^
   static 
>> drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:996:26: warning: no previous prototype for function 'dcn301_timing_generator_create' [-Wmissing-prototypes]
   struct timing_generator *dcn301_timing_generator_create(
                            ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:996:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   struct timing_generator *dcn301_timing_generator_create(
   ^
   static 
>> drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:1030:22: warning: no previous prototype for function 'dcn301_link_encoder_create' [-Wmissing-prototypes]
   struct link_encoder *dcn301_link_encoder_create(
                        ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:1030:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   struct link_encoder *dcn301_link_encoder_create(
   ^
   static 
>> drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:1051:20: warning: no previous prototype for function 'dcn301_panel_cntl_create' [-Wmissing-prototypes]
   struct panel_cntl *dcn301_panel_cntl_create(const struct panel_cntl_init_data *init_data)
                      ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:1051:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   struct panel_cntl *dcn301_panel_cntl_create(const struct panel_cntl_init_data *init_data)
   ^
   static 
>> drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:1133:24: warning: no previous prototype for function 'dcn301_stream_encoder_create' [-Wmissing-prototypes]
   struct stream_encoder *dcn301_stream_encoder_create(
                          ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:1133:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   struct stream_encoder *dcn301_stream_encoder_create(
   ^
   static 
>> drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:1165:19: warning: no previous prototype for function 'dcn301_hwseq_create' [-Wmissing-prototypes]
   struct dce_hwseq *dcn301_hwseq_create(
                     ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:1165:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   struct dce_hwseq *dcn301_hwseq_create(
   ^
   static 
>> drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:1319:14: warning: no previous prototype for function 'dcn301_hubp_create' [-Wmissing-prototypes]
   struct hubp *dcn301_hubp_create(
                ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:1319:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   struct hubp *dcn301_hubp_create(
   ^
   static 
>> drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:1338:6: warning: no previous prototype for function 'dcn301_dwbc_create' [-Wmissing-prototypes]
   bool dcn301_dwbc_create(struct dc_context *ctx, struct resource_pool *pool)
        ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:1338:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   bool dcn301_dwbc_create(struct dc_context *ctx, struct resource_pool *pool)
   ^
   static 
>> drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:1363:6: warning: no previous prototype for function 'dcn301_mmhubbub_create' [-Wmissing-prototypes]
   bool dcn301_mmhubbub_create(struct dc_context *ctx, struct resource_pool *pool)
        ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn301/dcn301_resource.c:1363:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   bool dcn301_mmhubbub_create(struct dc_context *ctx, struct resource_pool *pool)
   ^
   static 
   80 warnings generated.
..

vim +/vg_update_clocks +96 drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dcn301/vg_clk_mgr.c

3a83e4e64bb1522 Roman Li 2020-09-29   95  
3a83e4e64bb1522 Roman Li 2020-09-29  @96  void vg_update_clocks(struct clk_mgr *clk_mgr_base,
3a83e4e64bb1522 Roman Li 2020-09-29   97  			struct dc_state *context,
3a83e4e64bb1522 Roman Li 2020-09-29   98  			bool safe_to_lower)
3a83e4e64bb1522 Roman Li 2020-09-29   99  {
3a83e4e64bb1522 Roman Li 2020-09-29  100  	struct clk_mgr_internal *clk_mgr = TO_CLK_MGR_INTERNAL(clk_mgr_base);
3a83e4e64bb1522 Roman Li 2020-09-29  101  	struct dc_clocks *new_clocks = &context->bw_ctx.bw.dcn.clk;
3a83e4e64bb1522 Roman Li 2020-09-29  102  	struct dc *dc = clk_mgr_base->ctx->dc;
3a83e4e64bb1522 Roman Li 2020-09-29  103  	int display_count;
3a83e4e64bb1522 Roman Li 2020-09-29  104  	bool update_dppclk = false;
3a83e4e64bb1522 Roman Li 2020-09-29  105  	bool update_dispclk = false;
3a83e4e64bb1522 Roman Li 2020-09-29  106  	bool dpp_clock_lowered = false;
3a83e4e64bb1522 Roman Li 2020-09-29  107  
3a83e4e64bb1522 Roman Li 2020-09-29  108  	if (dc->work_arounds.skip_clock_update)
3a83e4e64bb1522 Roman Li 2020-09-29  109  		return;
3a83e4e64bb1522 Roman Li 2020-09-29  110  
3a83e4e64bb1522 Roman Li 2020-09-29  111  	/*
3a83e4e64bb1522 Roman Li 2020-09-29  112  	 * if it is safe to lower, but we are already in the lower state, we don't have to do anything
3a83e4e64bb1522 Roman Li 2020-09-29  113  	 * also if safe to lower is false, we just go in the higher state
3a83e4e64bb1522 Roman Li 2020-09-29  114  	 */
3a83e4e64bb1522 Roman Li 2020-09-29  115  	if (safe_to_lower) {
3a83e4e64bb1522 Roman Li 2020-09-29  116  		/* check that we're not already in lower */
3a83e4e64bb1522 Roman Li 2020-09-29  117  		if (clk_mgr_base->clks.pwr_state != DCN_PWR_STATE_LOW_POWER) {
3a83e4e64bb1522 Roman Li 2020-09-29  118  
3a83e4e64bb1522 Roman Li 2020-09-29  119  			display_count = vg_get_active_display_cnt_wa(dc, context);
3a83e4e64bb1522 Roman Li 2020-09-29  120  			/* if we can go lower, go lower */
3a83e4e64bb1522 Roman Li 2020-09-29  121  			if (display_count == 0) {
3a83e4e64bb1522 Roman Li 2020-09-29  122  				union display_idle_optimization_u idle_info = { 0 };
3a83e4e64bb1522 Roman Li 2020-09-29  123  
3a83e4e64bb1522 Roman Li 2020-09-29  124  				idle_info.idle_info.df_request_disabled = 1;
3a83e4e64bb1522 Roman Li 2020-09-29  125  				idle_info.idle_info.phy_ref_clk_off = 1;
3a83e4e64bb1522 Roman Li 2020-09-29  126  
3a83e4e64bb1522 Roman Li 2020-09-29  127  				dcn301_smu_set_display_idle_optimization(clk_mgr, idle_info.data);
3a83e4e64bb1522 Roman Li 2020-09-29  128  				/* update power state */
3a83e4e64bb1522 Roman Li 2020-09-29  129  				clk_mgr_base->clks.pwr_state = DCN_PWR_STATE_LOW_POWER;
3a83e4e64bb1522 Roman Li 2020-09-29  130  			}
3a83e4e64bb1522 Roman Li 2020-09-29  131  		}
3a83e4e64bb1522 Roman Li 2020-09-29  132  	} else {
3a83e4e64bb1522 Roman Li 2020-09-29  133  		/* check that we're not already in D0 */
3a83e4e64bb1522 Roman Li 2020-09-29  134  		if (clk_mgr_base->clks.pwr_state != DCN_PWR_STATE_MISSION_MODE) {
3a83e4e64bb1522 Roman Li 2020-09-29  135  			union display_idle_optimization_u idle_info = { 0 };
3a83e4e64bb1522 Roman Li 2020-09-29  136  
3a83e4e64bb1522 Roman Li 2020-09-29  137  			dcn301_smu_set_display_idle_optimization(clk_mgr, idle_info.data);
3a83e4e64bb1522 Roman Li 2020-09-29  138  			/* update power state */
3a83e4e64bb1522 Roman Li 2020-09-29  139  			clk_mgr_base->clks.pwr_state = DCN_PWR_STATE_MISSION_MODE;
3a83e4e64bb1522 Roman Li 2020-09-29  140  		}
3a83e4e64bb1522 Roman Li 2020-09-29  141  	}
3a83e4e64bb1522 Roman Li 2020-09-29  142  
3a83e4e64bb1522 Roman Li 2020-09-29  143  	if (should_set_clock(safe_to_lower, new_clocks->dcfclk_khz, clk_mgr_base->clks.dcfclk_khz)) {
3a83e4e64bb1522 Roman Li 2020-09-29  144  		clk_mgr_base->clks.dcfclk_khz = new_clocks->dcfclk_khz;
3a83e4e64bb1522 Roman Li 2020-09-29  145  		dcn301_smu_set_hard_min_dcfclk(clk_mgr, clk_mgr_base->clks.dcfclk_khz);
3a83e4e64bb1522 Roman Li 2020-09-29  146  	}
3a83e4e64bb1522 Roman Li 2020-09-29  147  
3a83e4e64bb1522 Roman Li 2020-09-29  148  	if (should_set_clock(safe_to_lower,
3a83e4e64bb1522 Roman Li 2020-09-29  149  			new_clocks->dcfclk_deep_sleep_khz, clk_mgr_base->clks.dcfclk_deep_sleep_khz)) {
3a83e4e64bb1522 Roman Li 2020-09-29  150  		clk_mgr_base->clks.dcfclk_deep_sleep_khz = new_clocks->dcfclk_deep_sleep_khz;
3a83e4e64bb1522 Roman Li 2020-09-29  151  		dcn301_smu_set_min_deep_sleep_dcfclk(clk_mgr, clk_mgr_base->clks.dcfclk_deep_sleep_khz);
3a83e4e64bb1522 Roman Li 2020-09-29  152  	}
3a83e4e64bb1522 Roman Li 2020-09-29  153  
3a83e4e64bb1522 Roman Li 2020-09-29  154  	// workaround: Limit dppclk to 100Mhz to avoid lower eDP panel switch to plus 4K monitor underflow.
3a83e4e64bb1522 Roman Li 2020-09-29  155  	if (!IS_DIAG_DC(dc->ctx->dce_environment)) {
3a83e4e64bb1522 Roman Li 2020-09-29  156  		if (new_clocks->dppclk_khz < 100000)
3a83e4e64bb1522 Roman Li 2020-09-29  157  			new_clocks->dppclk_khz = 100000;
3a83e4e64bb1522 Roman Li 2020-09-29  158  	}
3a83e4e64bb1522 Roman Li 2020-09-29  159  
3a83e4e64bb1522 Roman Li 2020-09-29  160  	if (should_set_clock(safe_to_lower, new_clocks->dppclk_khz, clk_mgr->base.clks.dppclk_khz)) {
3a83e4e64bb1522 Roman Li 2020-09-29  161  		if (clk_mgr->base.clks.dppclk_khz > new_clocks->dppclk_khz)
3a83e4e64bb1522 Roman Li 2020-09-29  162  			dpp_clock_lowered = true;
3a83e4e64bb1522 Roman Li 2020-09-29  163  		clk_mgr_base->clks.dppclk_khz = new_clocks->dppclk_khz;
3a83e4e64bb1522 Roman Li 2020-09-29  164  		update_dppclk = true;
3a83e4e64bb1522 Roman Li 2020-09-29  165  	}
3a83e4e64bb1522 Roman Li 2020-09-29  166  
3a83e4e64bb1522 Roman Li 2020-09-29  167  	if (should_set_clock(safe_to_lower, new_clocks->dispclk_khz, clk_mgr_base->clks.dispclk_khz)) {
3a83e4e64bb1522 Roman Li 2020-09-29  168  		clk_mgr_base->clks.dispclk_khz = new_clocks->dispclk_khz;
3a83e4e64bb1522 Roman Li 2020-09-29  169  		dcn301_smu_set_dispclk(clk_mgr, clk_mgr_base->clks.dispclk_khz);
3a83e4e64bb1522 Roman Li 2020-09-29  170  
3a83e4e64bb1522 Roman Li 2020-09-29  171  		update_dispclk = true;
3a83e4e64bb1522 Roman Li 2020-09-29  172  	}
3a83e4e64bb1522 Roman Li 2020-09-29  173  
3a83e4e64bb1522 Roman Li 2020-09-29  174  	if (dpp_clock_lowered) {
3a83e4e64bb1522 Roman Li 2020-09-29  175  		// increase per DPP DTO before lowering global dppclk
3a83e4e64bb1522 Roman Li 2020-09-29  176  		dcn20_update_clocks_update_dpp_dto(clk_mgr, context, safe_to_lower);
3a83e4e64bb1522 Roman Li 2020-09-29  177  		dcn301_smu_set_dppclk(clk_mgr, clk_mgr_base->clks.dppclk_khz);
3a83e4e64bb1522 Roman Li 2020-09-29  178  	} else {
3a83e4e64bb1522 Roman Li 2020-09-29  179  		// increase global DPPCLK before lowering per DPP DTO
3a83e4e64bb1522 Roman Li 2020-09-29  180  		if (update_dppclk || update_dispclk)
3a83e4e64bb1522 Roman Li 2020-09-29  181  			dcn301_smu_set_dppclk(clk_mgr, clk_mgr_base->clks.dppclk_khz);
3a83e4e64bb1522 Roman Li 2020-09-29  182  		// always update dtos unless clock is lowered and not safe to lower
3a83e4e64bb1522 Roman Li 2020-09-29  183  		if (new_clocks->dppclk_khz >= dc->current_state->bw_ctx.bw.dcn.clk.dppclk_khz)
3a83e4e64bb1522 Roman Li 2020-09-29  184  			dcn20_update_clocks_update_dpp_dto(clk_mgr, context, safe_to_lower);
3a83e4e64bb1522 Roman Li 2020-09-29  185  	}
3a83e4e64bb1522 Roman Li 2020-09-29  186  }
3a83e4e64bb1522 Roman Li 2020-09-29  187  

:::::: The code at line 96 was first introduced by commit
:::::: 3a83e4e64bb1522ddac67ffc787d1c38291e1a65 drm/amd/display: Add dcn3.01 support to DC (v2)

:::::: TO: Roman Li <Roman.Li@amd.com>
:::::: CC: Alex Deucher <alexander.deucher@amd.com>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202010281859.wkSfAe1V-lkp%40intel.com.

--qDbXVdCdHGoSgWSk
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--qDbXVdCdHGoSgWSk--
