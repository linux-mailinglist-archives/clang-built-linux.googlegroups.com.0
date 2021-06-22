Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBOMDY6DAMGQEFDCRUUI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3f.google.com (mail-io1-xd3f.google.com [IPv6:2607:f8b0:4864:20::d3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 768743B01E2
	for <lists+clang-built-linux@lfdr.de>; Tue, 22 Jun 2021 12:55:54 +0200 (CEST)
Received: by mail-io1-xd3f.google.com with SMTP id w2-20020a5d96020000b02904d5a6cb5d72sf12235281iol.14
        for <lists+clang-built-linux@lfdr.de>; Tue, 22 Jun 2021 03:55:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624359353; cv=pass;
        d=google.com; s=arc-20160816;
        b=JkX0RLwdeKnmHaVIY8ofterdEJXsG+q6co/EgMwyIIlAfHQ+4gtMFe4WWsMKJXGh9z
         wRCibLX153KZaDP2c0ehryHLCVLEjjEp9la8UIp8/wh920gzHaDvnH93HS6zQServ94W
         N+sEddAaazKHdLYtRFZ0FHBdy2CJCKR7EKLU8364Vudqli5SKlfbIHFua7ebiaaVYtlS
         qPk7wFeetmQ33uOOmPHg0Fq6jLJI7Onbu+Ot0CrUc3JL5e6+CUrxCWZjFrxx1rM5S505
         EkGCueS4AVlhGdih/ASImg8epWtE235CFbNyziJ/inZzGUKB9BWrBWRdU5lQCNbGX2DE
         xqTg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=1a8WTxVQCSpsoWtgzuPO6E/UqBmxf4w1mC0WzSBvYXc=;
        b=ZfC9LACkAR5tQAYtKPBmQkckJe+bKLb2aaMKFSmCzXw1zgFrLXIV3s5exnNiAxpJSN
         nxoWbSBgrPQJ/SouZrH0UvsME4beCFjKlaFqVhuV7gVO9flqoktpc5rvIP+6BjrRFunE
         jWNeuujSE25GEIK2vFOs6oB/8tkV9S4bpMABksjc6CuDyghqcASs6LuB7Z4D8t/jT0br
         IyAdd5HHAQRA5aW0thVd6SIF7olSyUR6yJ3UQRHJgZfQNVIisnpmDY85JycRP3smG0Rx
         tVhl23C0ObOYI8+BUIy6UTvh46G5ErIGB5RUVJn8R/m0MIe7bitR/7/9RGdlFP76ihtD
         RZmw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1a8WTxVQCSpsoWtgzuPO6E/UqBmxf4w1mC0WzSBvYXc=;
        b=qDe9AbOEnK/LWP1lSStUm5Z+0YRZ/1vAF+cn+gjXU7b0122XLJrnD1wft6npFDo4fs
         jcmpxwYpRlSvrbfBc34Jvocy1SU3c+tPBI33pF6jwZ3pq5133irJinKbVDRk278ukSOp
         6YRuHV8lrZLePboGhHTU1WYeloN4b6sprSBYcVJw4N46r/UprYrcL/+QACKD0yanlRK4
         +IaSFYr2jeDagB0trh2qhD7CqdUDZHkb9dBz93XKoDTbuBIQPQCmfKirZnSBHBRriuxI
         r/rvWZXelurohFnMn+2H+R/IjoXJtb/Cufc7hj0R12UaI8c1DoRNIt1Oje6Fj7/W3hXZ
         8tZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=1a8WTxVQCSpsoWtgzuPO6E/UqBmxf4w1mC0WzSBvYXc=;
        b=lzgf+86ZMTf37pFe28w21nu3HpHBSioudMw4MylUgDq/ogkGqWT6RNvN89uCvH0gN1
         iAvNgsUjV/3tdCVZKRPriWQvLDUSexn3NgyLozbawxVok6jpUHVoSgVErpqJJAPilp1k
         ZM0NmVkQouZ3GaNloAGGlfEQi6HTUclm/ZL5+6FzGt8TtWwVNavpGyA25ef8n9WlHH1X
         Ir/tBMrCOFGVxMany+x3JCkBrQPpcTXO4pGfeLGvyAFe1tQTeAKh31bIN8Np67OADxix
         CzYwMNnx7H0zK7R7UD1kO2AjoRl3s42Yd5MSETsGEbke5bwzU9xSy92eboSVjbC823vq
         Pehg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532Q7zGjzgDmrra0NduWMxR466AG8Xh29l0qysRF0180V6rOzA8B
	GDcIBx7GVrfnOXITRQdsgH0=
X-Google-Smtp-Source: ABdhPJxOn2+4ickDsZhrv3LA9pUXKU/PMPUriCCbyP4Y1AnvA8Ho9YTJIomP9jR5TeGlNUe14qjmrA==
X-Received: by 2002:a05:6e02:10c2:: with SMTP id s2mr2222123ilj.24.1624359353287;
        Tue, 22 Jun 2021 03:55:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:3414:: with SMTP id b20ls3291177ila.3.gmail; Tue, 22 Jun
 2021 03:55:52 -0700 (PDT)
X-Received: by 2002:a92:a30d:: with SMTP id a13mr2294393ili.236.1624359352527;
        Tue, 22 Jun 2021 03:55:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624359352; cv=none;
        d=google.com; s=arc-20160816;
        b=qKCcAh6AvjCaGZKxu+J0klf/aPFghGHVzbAYJpLWSxMLDzGWZywZBm/XxBN4/nHePC
         7DJnsZl8rzcxKa4hVbQe2856eoeS0UY9pRpaZK2pHsvS5ub2asdGaqXvL+pQz54rr9Jd
         Ojn1xPaxhmRKW7kL/asQb/i7Iu2i+2XzIbSD7BOzkkUGsoefz2jdkO3E855r9iABw7Jj
         RfoJPuabYVZvZl2pLK7ZBSRp15knALypLWM2pdoYrdI8BkBu4pj59CkcEVxzG6U136dd
         43SU6/Zz6dhgJa22Y/6+dvL2v6PNasXqBE5DLzCaZ56YN89coMs9KuitgQn0WAvIu9g/
         HpRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=7rJVD4O9YsYOFbmdS490bGXhYlDMa+8SEbb0JUUQ+PY=;
        b=Dhf1+ZGaz0WKEbJGCcIuUSc7EooTzgTRa2+Oy6pexl9CCrYX8nEc2svTyeEbYTwrzD
         LZWepiXqmYravF02sZghMfEnbzGx8zZvBXSMSM2yO2GUDZw7OZuXu4U4okc1ECssZiVl
         IXJtsKVOgiqU0ns0uOeR9SmLb7uPGS+8BuqPcwv+3VcwKnepwRKA6fqRt528lMidVyh3
         ivuFLTNKs+12fUCF+8+t5Z0OTwhNcedMr135WTQmrA11+SF0Ig2iaL5sy8SnYhbOBlAx
         iu48fyMupuIv5cJBCCsagpG4dhX+4W0wncoMZduGz3R0W0xv910moBysVHhVZE5UP2gI
         VxGw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga01.intel.com (mga01.intel.com. [192.55.52.88])
        by gmr-mx.google.com with ESMTPS id v124si154557iof.2.2021.06.22.03.55.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 22 Jun 2021 03:55:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) client-ip=192.55.52.88;
IronPort-SDR: KfA7TkWfXWYhdWEnQwH5fLNSKvSpBvcUAYZXqtXR22LBzq/8DGV//DUQ8eIVZFD3X4hriW7hvM
 6FHCFL24n5GA==
X-IronPort-AV: E=McAfee;i="6200,9189,10022"; a="228585451"
X-IronPort-AV: E=Sophos;i="5.83,291,1616482800"; 
   d="gz'50?scan'50,208,50";a="228585451"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 22 Jun 2021 03:55:50 -0700
IronPort-SDR: MouA9QfCkeVKiSWryM1n+2rpxZFTjG2AxMjX0WuBs+xEUJyPvD1p/YMFuVLEW3jrCLhv+v49gz
 Iq+dQGK4qf6Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,291,1616482800"; 
   d="gz'50?scan'50,208,50";a="452568295"
Received: from lkp-server01.sh.intel.com (HELO 4aae0cb4f5b5) ([10.239.97.150])
  by orsmga008.jf.intel.com with ESMTP; 22 Jun 2021 03:55:47 -0700
Received: from kbuild by 4aae0cb4f5b5 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lve4J-0005AA-4V; Tue, 22 Jun 2021 10:55:47 +0000
Date: Tue, 22 Jun 2021 18:54:48 +0800
From: kernel test robot <lkp@intel.com>
To: Alex Deucher <alexander.deucher@amd.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Nicholas Kazlauskas <nicholas.kazlauskas@amd.com>
Subject: [agd5f:drm-next 45/45]
 drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn31/display_mode_vba_31.c:3957:6:
 warning: stack frame size of 2504 bytes in function
 'dml31_ModeSupportAndSystemConfigurationFull'
Message-ID: <202106221843.FaxseTzB-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="6c2NcOVqGQ03X4Wi"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted
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


--6c2NcOVqGQ03X4Wi
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://gitlab.freedesktop.org/agd5f/linux.git drm-next
head:   2631b42588c114dbb29d06934cfa742e5fe0897f
commit: 2631b42588c114dbb29d06934cfa742e5fe0897f [45/45] drm/amdgpu/display: fold DRM_AMD_DC_DCN3_1 into DRM_AMD_DC_DCN
config: x86_64-randconfig-a006-20210622 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project b3634d3e88b7f26534a5057bff182b7dced584fc)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        git remote add agd5f https://gitlab.freedesktop.org/agd5f/linux.git
        git fetch --no-tags agd5f drm-next
        git checkout 2631b42588c114dbb29d06934cfa742e5fe0897f
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dcn31/dcn31_smu.c:98:5: warning: no previous prototype for function 'dcn31_smu_send_msg_with_param' [-Wmissing-prototypes]
   int dcn31_smu_send_msg_with_param(
       ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dcn31/dcn31_smu.c:98:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   int dcn31_smu_send_msg_with_param(
   ^
   static 
   1 warning generated.
--
>> drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dcn31/dcn31_clk_mgr.c:54:5: warning: no previous prototype for function 'dcn31_get_active_display_cnt_wa' [-Wmissing-prototypes]
   int dcn31_get_active_display_cnt_wa(
       ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dcn31/dcn31_clk_mgr.c:54:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   int dcn31_get_active_display_cnt_wa(
   ^
   static 
>> drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dcn31/dcn31_clk_mgr.c:491:6: warning: no previous prototype for function 'dcn31_clk_mgr_helper_populate_bw_params' [-Wmissing-prototypes]
   void dcn31_clk_mgr_helper_populate_bw_params(
        ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dcn31/dcn31_clk_mgr.c:491:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void dcn31_clk_mgr_helper_populate_bw_params(
   ^
   static 
   2 warnings generated.
--
>> drivers/gpu/drm/amd/amdgpu/../display/dc/irq/dcn31/irq_service_dcn31.c:39:20: warning: no previous prototype for function 'to_dal_irq_source_dcn31' [-Wmissing-prototypes]
   enum dc_irq_source to_dal_irq_source_dcn31(
                      ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/irq/dcn31/irq_service_dcn31.c:39:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   enum dc_irq_source to_dal_irq_source_dcn31(
   ^
   static 
   1 warning generated.
--
>> drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn31/display_mode_vba_31.c:3957:6: warning: stack frame size of 2504 bytes in function 'dml31_ModeSupportAndSystemConfigurationFull' [-Wframe-larger-than]
   void dml31_ModeSupportAndSystemConfigurationFull(struct display_mode_lib *mode_lib)
        ^
   1 warning generated.
--
>> drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn31/display_rq_dlg_calc_31.c:1007:15: warning: variable 'dispclk_delay_subtotal' set but not used [-Wunused-but-set-variable]
           unsigned int dispclk_delay_subtotal;
                        ^
>> drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn31/display_rq_dlg_calc_31.c:1006:15: warning: variable 'dppclk_delay_subtotal' set but not used [-Wunused-but-set-variable]
           unsigned int dppclk_delay_subtotal;
                        ^
   2 warnings generated.
--
>> drivers/gpu/drm/amd/amdgpu/../display/dc/dcn31/dcn31_resource.c:465:2: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
           stream_enc_regs(0),
           ^~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn31/dcn31_resource.c:461:2: note: expanded from macro 'stream_enc_regs'
           SE_DCN3_REG_LIST(id)\
           ^~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_dio_stream_encoder.h:106:2: note: expanded from macro 'SE_DCN3_REG_LIST'
           SRI(DP_SEC_METADATA_TRANSMISSION, DP, id), \
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn31/dcn31_resource.c:272:14: note: expanded from macro 'SRI'
           .reg_name = BASE(reg ## block ## id ## _ ## reg_name ## _BASE_IDX) + \
                       ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   note: (skipping 1 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn31/dcn31_resource.c:263:25: note: expanded from macro 'BASE_INNER'
   #define BASE_INNER(seg) DCN_BASE__INST0_SEG ## seg
                           ^
   <scratch space>:63:1: note: expanded from here
   DCN_BASE__INST0_SEG2
   ^
   drivers/gpu/drm/amd/amdgpu/../include/yellow_carp_offset.h:388:52: note: expanded from macro 'DCN_BASE__INST0_SEG2'
   #define DCN_BASE__INST0_SEG2                       0x000034C0
                                                      ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn31/dcn31_resource.c:465:2: note: previous initialization is here
           stream_enc_regs(0),
           ^~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn31/dcn31_resource.c:461:2: note: expanded from macro 'stream_enc_regs'
           SE_DCN3_REG_LIST(id)\
           ^~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_dio_stream_encoder.h:101:2: note: expanded from macro 'SE_DCN3_REG_LIST'
           SRI(DP_SEC_METADATA_TRANSMISSION, DP, id), \
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn31/dcn31_resource.c:272:14: note: expanded from macro 'SRI'
           .reg_name = BASE(reg ## block ## id ## _ ## reg_name ## _BASE_IDX) + \
                       ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   note: (skipping 1 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn31/dcn31_resource.c:263:25: note: expanded from macro 'BASE_INNER'
   #define BASE_INNER(seg) DCN_BASE__INST0_SEG ## seg
                           ^
   <scratch space>:13:1: note: expanded from here
   DCN_BASE__INST0_SEG2
   ^
   drivers/gpu/drm/amd/amdgpu/../include/yellow_carp_offset.h:388:52: note: expanded from macro 'DCN_BASE__INST0_SEG2'
   #define DCN_BASE__INST0_SEG2                       0x000034C0
                                                      ^
>> drivers/gpu/drm/amd/amdgpu/../display/dc/dcn31/dcn31_resource.c:465:2: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
           stream_enc_regs(0),
           ^~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn31/dcn31_resource.c:461:2: note: expanded from macro 'stream_enc_regs'
           SE_DCN3_REG_LIST(id)\
           ^~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_dio_stream_encoder.h:107:2: note: expanded from macro 'SE_DCN3_REG_LIST'
           SRI(HDMI_METADATA_PACKET_CONTROL, DIG, id), \
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn31/dcn31_resource.c:272:14: note: expanded from macro 'SRI'
           .reg_name = BASE(reg ## block ## id ## _ ## reg_name ## _BASE_IDX) + \
                       ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   note: (skipping 1 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn31/dcn31_resource.c:263:25: note: expanded from macro 'BASE_INNER'
   #define BASE_INNER(seg) DCN_BASE__INST0_SEG ## seg
                           ^
   <scratch space>:73:1: note: expanded from here
   DCN_BASE__INST0_SEG2
   ^
   drivers/gpu/drm/amd/amdgpu/../include/yellow_carp_offset.h:388:52: note: expanded from macro 'DCN_BASE__INST0_SEG2'
   #define DCN_BASE__INST0_SEG2                       0x000034C0
                                                      ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn31/dcn31_resource.c:465:2: note: previous initialization is here
           stream_enc_regs(0),
           ^~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn31/dcn31_resource.c:461:2: note: expanded from macro 'stream_enc_regs'
           SE_DCN3_REG_LIST(id)\
           ^~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_dio_stream_encoder.h:102:2: note: expanded from macro 'SE_DCN3_REG_LIST'
           SRI(HDMI_METADATA_PACKET_CONTROL, DIG, id), \
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn31/dcn31_resource.c:272:14: note: expanded from macro 'SRI'
           .reg_name = BASE(reg ## block ## id ## _ ## reg_name ## _BASE_IDX) + \
                       ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   note: (skipping 1 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn31/dcn31_resource.c:263:25: note: expanded from macro 'BASE_INNER'
   #define BASE_INNER(seg) DCN_BASE__INST0_SEG ## seg
                           ^
   <scratch space>:23:1: note: expanded from here
   DCN_BASE__INST0_SEG2
   ^
   drivers/gpu/drm/amd/amdgpu/../include/yellow_carp_offset.h:388:52: note: expanded from macro 'DCN_BASE__INST0_SEG2'
   #define DCN_BASE__INST0_SEG2                       0x000034C0
                                                      ^
>> drivers/gpu/drm/amd/amdgpu/../display/dc/dcn31/dcn31_resource.c:465:2: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
           stream_enc_regs(0),
           ^~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn31/dcn31_resource.c:461:2: note: expanded from macro 'stream_enc_regs'
           SE_DCN3_REG_LIST(id)\
           ^~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_dio_stream_encoder.h:108:2: note: expanded from macro 'SE_DCN3_REG_LIST'
           SRI(DIG_FE_CNTL, DIG, id), \
           ^~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn31/dcn31_resource.c:272:14: note: expanded from macro 'SRI'
           .reg_name = BASE(reg ## block ## id ## _ ## reg_name ## _BASE_IDX) + \
                       ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   note: (skipping 1 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn31/dcn31_resource.c:263:25: note: expanded from macro 'BASE_INNER'
   #define BASE_INNER(seg) DCN_BASE__INST0_SEG ## seg
                           ^
   <scratch space>:83:1: note: expanded from here
   DCN_BASE__INST0_SEG2
   ^
   drivers/gpu/drm/amd/amdgpu/../include/yellow_carp_offset.h:388:52: note: expanded from macro 'DCN_BASE__INST0_SEG2'
   #define DCN_BASE__INST0_SEG2                       0x000034C0
                                                      ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn31/dcn31_resource.c:465:2: note: previous initialization is here
           stream_enc_regs(0),
           ^~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn31/dcn31_resource.c:461:2: note: expanded from macro 'stream_enc_regs'
           SE_DCN3_REG_LIST(id)\
           ^~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_dio_stream_encoder.h:50:2: note: expanded from macro 'SE_DCN3_REG_LIST'
           SRI(DIG_FE_CNTL, DIG, id), \
           ^~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn31/dcn31_resource.c:272:14: note: expanded from macro 'SRI'
           .reg_name = BASE(reg ## block ## id ## _ ## reg_name ## _BASE_IDX) + \
                       ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   note: (skipping 1 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn31/dcn31_resource.c:263:25: note: expanded from macro 'BASE_INNER'
   #define BASE_INNER(seg) DCN_BASE__INST0_SEG ## seg
                           ^
   <scratch space>:99:1: note: expanded from here
   DCN_BASE__INST0_SEG2
   ^
   drivers/gpu/drm/amd/amdgpu/../include/yellow_carp_offset.h:388:52: note: expanded from macro 'DCN_BASE__INST0_SEG2'
   #define DCN_BASE__INST0_SEG2                       0x000034C0
                                                      ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn31/dcn31_resource.c:466:2: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
           stream_enc_regs(1),
           ^~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn31/dcn31_resource.c:461:2: note: expanded from macro 'stream_enc_regs'
           SE_DCN3_REG_LIST(id)\
           ^~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_dio_stream_encoder.h:106:2: note: expanded from macro 'SE_DCN3_REG_LIST'
           SRI(DP_SEC_METADATA_TRANSMISSION, DP, id), \
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn31/dcn31_resource.c:272:14: note: expanded from macro 'SRI'
           .reg_name = BASE(reg ## block ## id ## _ ## reg_name ## _BASE_IDX) + \
                       ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   note: (skipping 1 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn31/dcn31_resource.c:263:25: note: expanded from macro 'BASE_INNER'
   #define BASE_INNER(seg) DCN_BASE__INST0_SEG ## seg
                           ^
   <scratch space>:210:1: note: expanded from here
   DCN_BASE__INST0_SEG2
   ^
   drivers/gpu/drm/amd/amdgpu/../include/yellow_carp_offset.h:388:52: note: expanded from macro 'DCN_BASE__INST0_SEG2'
   #define DCN_BASE__INST0_SEG2                       0x000034C0
                                                      ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn31/dcn31_resource.c:466:2: note: previous initialization is here
           stream_enc_regs(1),
           ^~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn31/dcn31_resource.c:461:2: note: expanded from macro 'stream_enc_regs'
           SE_DCN3_REG_LIST(id)\
           ^~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_dio_stream_encoder.h:101:2: note: expanded from macro 'SE_DCN3_REG_LIST'
           SRI(DP_SEC_METADATA_TRANSMISSION, DP, id), \
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn31/dcn31_resource.c:272:14: note: expanded from macro 'SRI'
           .reg_name = BASE(reg ## block ## id ## _ ## reg_name ## _BASE_IDX) + \
                       ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   note: (skipping 1 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn31/dcn31_resource.c:263:25: note: expanded from macro 'BASE_INNER'
   #define BASE_INNER(seg) DCN_BASE__INST0_SEG ## seg
                           ^
   <scratch space>:160:1: note: expanded from here
   DCN_BASE__INST0_SEG2
   ^
   drivers/gpu/drm/amd/amdgpu/../include/yellow_carp_offset.h:388:52: note: expanded from macro 'DCN_BASE__INST0_SEG2'
   #define DCN_BASE__INST0_SEG2                       0x000034C0
                                                      ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn31/dcn31_resource.c:466:2: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
           stream_enc_regs(1),
           ^~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn31/dcn31_resource.c:461:2: note: expanded from macro 'stream_enc_regs'
           SE_DCN3_REG_LIST(id)\
           ^~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_dio_stream_encoder.h:107:2: note: expanded from macro 'SE_DCN3_REG_LIST'
           SRI(HDMI_METADATA_PACKET_CONTROL, DIG, id), \
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn31/dcn31_resource.c:272:14: note: expanded from macro 'SRI'
           .reg_name = BASE(reg ## block ## id ## _ ## reg_name ## _BASE_IDX) + \
                       ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   note: (skipping 1 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
--
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_hwseq.h:642:28: note: expanded from macro 'HWS_SF'
           .field_name = blk_name ## reg_name ## __ ## field_name ## post_fix
                                     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   <scratch space>:63:1: note: expanded from here
   DOMAIN2_PG_STATUS__DOMAIN_PGFSM_PWR_STATUS_MASK
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../include/asic_reg/dcn/dcn_3_1_2_sh_mask.h:5635:111: note: expanded from macro 'DOMAIN2_PG_STATUS__DOMAIN_PGFSM_PWR_STATUS_MASK'
   #define DOMAIN2_PG_STATUS__DOMAIN_PGFSM_PWR_STATUS_MASK                                                       0xC0000000L
                                                                                                                 ^~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn31/dcn31_resource.c:838:3: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
                   HWSEQ_DCN31_MASK_SH_LIST(_MASK)
                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn31/dcn31_resource.c:822:2: note: expanded from macro 'HWSEQ_DCN31_MASK_SH_LIST'
           HWS_SF(, DOMAIN16_PG_STATUS, DOMAIN_PGFSM_PWR_STATUS, mask_sh), \
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_hwseq.h:642:28: note: expanded from macro 'HWS_SF'
           .field_name = blk_name ## reg_name ## __ ## field_name ## post_fix
                                     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   <scratch space>:69:1: note: expanded from here
   DOMAIN16_PG_STATUS__DOMAIN_PGFSM_PWR_STATUS_MASK
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../include/asic_reg/dcn/dcn_3_1_2_sh_mask.h:5655:111: note: expanded from macro 'DOMAIN16_PG_STATUS__DOMAIN_PGFSM_PWR_STATUS_MASK'
   #define DOMAIN16_PG_STATUS__DOMAIN_PGFSM_PWR_STATUS_MASK                                                      0xC0000000L
                                                                                                                 ^~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn31/dcn31_resource.c:838:3: note: previous initialization is here
                   HWSEQ_DCN31_MASK_SH_LIST(_MASK)
                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn31/dcn31_resource.c:821:2: note: expanded from macro 'HWSEQ_DCN31_MASK_SH_LIST'
           HWS_SF(, DOMAIN3_PG_STATUS, DOMAIN_PGFSM_PWR_STATUS, mask_sh), \
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_hwseq.h:642:28: note: expanded from macro 'HWS_SF'
           .field_name = blk_name ## reg_name ## __ ## field_name ## post_fix
                                     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   <scratch space>:66:1: note: expanded from here
   DOMAIN3_PG_STATUS__DOMAIN_PGFSM_PWR_STATUS_MASK
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../include/asic_reg/dcn/dcn_3_1_2_sh_mask.h:5645:111: note: expanded from macro 'DOMAIN3_PG_STATUS__DOMAIN_PGFSM_PWR_STATUS_MASK'
   #define DOMAIN3_PG_STATUS__DOMAIN_PGFSM_PWR_STATUS_MASK                                                       0xC0000000L
                                                                                                                 ^~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn31/dcn31_resource.c:838:3: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
                   HWSEQ_DCN31_MASK_SH_LIST(_MASK)
                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn31/dcn31_resource.c:823:2: note: expanded from macro 'HWSEQ_DCN31_MASK_SH_LIST'
           HWS_SF(, DOMAIN17_PG_STATUS, DOMAIN_PGFSM_PWR_STATUS, mask_sh), \
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_hwseq.h:642:28: note: expanded from macro 'HWS_SF'
           .field_name = blk_name ## reg_name ## __ ## field_name ## post_fix
                                     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   <scratch space>:72:1: note: expanded from here
   DOMAIN17_PG_STATUS__DOMAIN_PGFSM_PWR_STATUS_MASK
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../include/asic_reg/dcn/dcn_3_1_2_sh_mask.h:5665:111: note: expanded from macro 'DOMAIN17_PG_STATUS__DOMAIN_PGFSM_PWR_STATUS_MASK'
   #define DOMAIN17_PG_STATUS__DOMAIN_PGFSM_PWR_STATUS_MASK                                                      0xC0000000L
                                                                                                                 ^~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn31/dcn31_resource.c:838:3: note: previous initialization is here
                   HWSEQ_DCN31_MASK_SH_LIST(_MASK)
                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn31/dcn31_resource.c:822:2: note: expanded from macro 'HWSEQ_DCN31_MASK_SH_LIST'
           HWS_SF(, DOMAIN16_PG_STATUS, DOMAIN_PGFSM_PWR_STATUS, mask_sh), \
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_hwseq.h:642:28: note: expanded from macro 'HWS_SF'
           .field_name = blk_name ## reg_name ## __ ## field_name ## post_fix
                                     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   <scratch space>:69:1: note: expanded from here
   DOMAIN16_PG_STATUS__DOMAIN_PGFSM_PWR_STATUS_MASK
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../include/asic_reg/dcn/dcn_3_1_2_sh_mask.h:5655:111: note: expanded from macro 'DOMAIN16_PG_STATUS__DOMAIN_PGFSM_PWR_STATUS_MASK'
   #define DOMAIN16_PG_STATUS__DOMAIN_PGFSM_PWR_STATUS_MASK                                                      0xC0000000L
                                                                                                                 ^~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn31/dcn31_resource.c:838:3: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
                   HWSEQ_DCN31_MASK_SH_LIST(_MASK)
                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn31/dcn31_resource.c:824:2: note: expanded from macro 'HWSEQ_DCN31_MASK_SH_LIST'
           HWS_SF(, DOMAIN18_PG_STATUS, DOMAIN_PGFSM_PWR_STATUS, mask_sh), \
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_hwseq.h:642:28: note: expanded from macro 'HWS_SF'
           .field_name = blk_name ## reg_name ## __ ## field_name ## post_fix
                                     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   <scratch space>:75:1: note: expanded from here
   DOMAIN18_PG_STATUS__DOMAIN_PGFSM_PWR_STATUS_MASK
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../include/asic_reg/dcn/dcn_3_1_2_sh_mask.h:5675:111: note: expanded from macro 'DOMAIN18_PG_STATUS__DOMAIN_PGFSM_PWR_STATUS_MASK'
   #define DOMAIN18_PG_STATUS__DOMAIN_PGFSM_PWR_STATUS_MASK                                                      0xC0000000L
                                                                                                                 ^~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn31/dcn31_resource.c:838:3: note: previous initialization is here
                   HWSEQ_DCN31_MASK_SH_LIST(_MASK)
                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn31/dcn31_resource.c:823:2: note: expanded from macro 'HWSEQ_DCN31_MASK_SH_LIST'
           HWS_SF(, DOMAIN17_PG_STATUS, DOMAIN_PGFSM_PWR_STATUS, mask_sh), \
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dce/dce_hwseq.h:642:28: note: expanded from macro 'HWS_SF'
           .field_name = blk_name ## reg_name ## __ ## field_name ## post_fix
                                     ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   <scratch space>:72:1: note: expanded from here
   DOMAIN17_PG_STATUS__DOMAIN_PGFSM_PWR_STATUS_MASK
   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../include/asic_reg/dcn/dcn_3_1_2_sh_mask.h:5665:111: note: expanded from macro 'DOMAIN17_PG_STATUS__DOMAIN_PGFSM_PWR_STATUS_MASK'
   #define DOMAIN17_PG_STATUS__DOMAIN_PGFSM_PWR_STATUS_MASK                                                      0xC0000000L
                                                                                                                 ^~~~~~~~~~~
>> drivers/gpu/drm/amd/amdgpu/../display/dc/dcn31/dcn31_resource.c:1197:20: warning: no previous prototype for function 'dcn31_panel_cntl_create' [-Wmissing-prototypes]
   struct panel_cntl *dcn31_panel_cntl_create(const struct panel_cntl_init_data *init_data)
                      ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn31/dcn31_resource.c:1197:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   struct panel_cntl *dcn31_panel_cntl_create(const struct panel_cntl_init_data *init_data)
   ^
   static 
   102 warnings generated.
..


vim +/dml31_ModeSupportAndSystemConfigurationFull +3957 drivers/gpu/drm/amd/amdgpu/../display/dc/dml/dcn31/display_mode_vba_31.c

74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  3956  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19 @3957  void dml31_ModeSupportAndSystemConfigurationFull(struct display_mode_lib *mode_lib)
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  3958  {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  3959  	struct vba_vars_st *v = &mode_lib->vba;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  3960  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  3961  	int i, j;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  3962  	unsigned int k, m;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  3963  	int ReorderingBytes;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  3964  	int MinPrefetchMode = 0, MaxPrefetchMode = 2;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  3965  	bool NoChroma = true;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  3966  	bool EnoughWritebackUnits = true;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  3967  	bool P2IWith420 = false;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  3968  	bool DSCOnlyIfNecessaryWithBPP = false;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  3969  	bool DSC422NativeNotSupported = false;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  3970  	double MaxTotalVActiveRDBandwidth;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  3971  	bool ViewportExceedsSurface = false;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  3972  	bool FMTBufferExceeded = false;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  3973  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  3974  	/*MODE SUPPORT, VOLTAGE STATE AND SOC CONFIGURATION*/
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  3975  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  3976  	CalculateMinAndMaxPrefetchMode(
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  3977  		mode_lib->vba.AllowDRAMSelfRefreshOrDRAMClockChangeInVblank,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  3978  		&MinPrefetchMode, &MaxPrefetchMode);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  3979  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  3980  	/*Scale Ratio, taps Support Check*/
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  3981  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  3982  	v->ScaleRatioAndTapsSupport = true;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  3983  	for (k = 0; k < v->NumberOfActivePlanes; k++) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  3984  		if (v->ScalerEnabled[k] == false
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  3985  				&& ((v->SourcePixelFormat[k] != dm_444_64 && v->SourcePixelFormat[k] != dm_444_32
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  3986  						&& v->SourcePixelFormat[k] != dm_444_16 && v->SourcePixelFormat[k] != dm_mono_16
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  3987  						&& v->SourcePixelFormat[k] != dm_mono_8 && v->SourcePixelFormat[k] != dm_rgbe
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  3988  						&& v->SourcePixelFormat[k] != dm_rgbe_alpha) || v->HRatio[k] != 1.0 || v->htaps[k] != 1.0
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  3989  						|| v->VRatio[k] != 1.0 || v->vtaps[k] != 1.0)) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  3990  			v->ScaleRatioAndTapsSupport = false;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  3991  		} else if (v->vtaps[k] < 1.0 || v->vtaps[k] > 8.0 || v->htaps[k] < 1.0 || v->htaps[k] > 8.0
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  3992  				|| (v->htaps[k] > 1.0 && (v->htaps[k] % 2) == 1) || v->HRatio[k] > v->MaxHSCLRatio
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  3993  				|| v->VRatio[k] > v->MaxVSCLRatio || v->HRatio[k] > v->htaps[k]
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  3994  				|| v->VRatio[k] > v->vtaps[k]
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  3995  				|| (v->SourcePixelFormat[k] != dm_444_64 && v->SourcePixelFormat[k] != dm_444_32
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  3996  						&& v->SourcePixelFormat[k] != dm_444_16 && v->SourcePixelFormat[k] != dm_mono_16
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  3997  						&& v->SourcePixelFormat[k] != dm_mono_8 && v->SourcePixelFormat[k] != dm_rgbe
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  3998  						&& (v->VTAPsChroma[k] < 1 || v->VTAPsChroma[k] > 8 || v->HTAPsChroma[k] < 1
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  3999  								|| v->HTAPsChroma[k] > 8 || (v->HTAPsChroma[k] > 1 && v->HTAPsChroma[k] % 2 == 1)
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4000  								|| v->HRatioChroma[k] > v->MaxHSCLRatio
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4001  								|| v->VRatioChroma[k] > v->MaxVSCLRatio
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4002  								|| v->HRatioChroma[k] > v->HTAPsChroma[k]
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4003  								|| v->VRatioChroma[k] > v->VTAPsChroma[k]))) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4004  			v->ScaleRatioAndTapsSupport = false;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4005  		}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4006  	}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4007  	/*Source Format, Pixel Format and Scan Support Check*/
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4008  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4009  	v->SourceFormatPixelAndScanSupport = true;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4010  	for (k = 0; k < v->NumberOfActivePlanes; k++) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4011  		if ((v->SurfaceTiling[k] == dm_sw_linear && (!(v->SourceScan[k] != dm_vert) || v->DCCEnable[k] == true))
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4012  				|| ((v->SurfaceTiling[k] == dm_sw_64kb_d || v->SurfaceTiling[k] == dm_sw_64kb_d_t
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4013  						|| v->SurfaceTiling[k] == dm_sw_64kb_d_x) && !(v->SourcePixelFormat[k] == dm_444_64))) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4014  			v->SourceFormatPixelAndScanSupport = false;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4015  		}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4016  	}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4017  	/*Bandwidth Support Check*/
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4018  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4019  	for (k = 0; k < v->NumberOfActivePlanes; k++) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4020  		CalculateBytePerPixelAnd256BBlockSizes(
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4021  				v->SourcePixelFormat[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4022  				v->SurfaceTiling[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4023  				&v->BytePerPixelY[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4024  				&v->BytePerPixelC[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4025  				&v->BytePerPixelInDETY[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4026  				&v->BytePerPixelInDETC[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4027  				&v->Read256BlockHeightY[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4028  				&v->Read256BlockHeightC[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4029  				&v->Read256BlockWidthY[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4030  				&v->Read256BlockWidthC[k]);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4031  	}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4032  	for (k = 0; k < v->NumberOfActivePlanes; k++) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4033  		if (v->SourceScan[k] != dm_vert) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4034  			v->SwathWidthYSingleDPP[k] = v->ViewportWidth[k];
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4035  			v->SwathWidthCSingleDPP[k] = v->ViewportWidthChroma[k];
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4036  		} else {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4037  			v->SwathWidthYSingleDPP[k] = v->ViewportHeight[k];
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4038  			v->SwathWidthCSingleDPP[k] = v->ViewportHeightChroma[k];
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4039  		}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4040  	}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4041  	for (k = 0; k < v->NumberOfActivePlanes; k++) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4042  		v->ReadBandwidthLuma[k] = v->SwathWidthYSingleDPP[k] * dml_ceil(v->BytePerPixelInDETY[k], 1.0)
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4043  				/ (v->HTotal[k] / v->PixelClock[k]) * v->VRatio[k];
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4044  		v->ReadBandwidthChroma[k] = v->SwathWidthYSingleDPP[k] / 2 * dml_ceil(v->BytePerPixelInDETC[k], 2.0)
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4045  				/ (v->HTotal[k] / v->PixelClock[k]) * v->VRatio[k] / 2.0;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4046  	}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4047  	for (k = 0; k < v->NumberOfActivePlanes; k++) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4048  		if (v->WritebackEnable[k] == true && v->WritebackPixelFormat[k] == dm_444_64) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4049  			v->WriteBandwidth[k] = v->WritebackDestinationWidth[k] * v->WritebackDestinationHeight[k]
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4050  					/ (v->WritebackSourceHeight[k] * v->HTotal[k] / v->PixelClock[k]) * 8.0;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4051  		} else if (v->WritebackEnable[k] == true) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4052  			v->WriteBandwidth[k] = v->WritebackDestinationWidth[k] * v->WritebackDestinationHeight[k]
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4053  					/ (v->WritebackSourceHeight[k] * v->HTotal[k] / v->PixelClock[k]) * 4.0;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4054  		} else {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4055  			v->WriteBandwidth[k] = 0.0;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4056  		}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4057  	}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4058  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4059  	/*Writeback Latency support check*/
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4060  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4061  	v->WritebackLatencySupport = true;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4062  	for (k = 0; k < v->NumberOfActivePlanes; k++) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4063  		if (v->WritebackEnable[k] == true && (v->WriteBandwidth[k] > v->WritebackInterfaceBufferSize * 1024 / v->WritebackLatency)) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4064  			v->WritebackLatencySupport = false;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4065  		}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4066  	}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4067  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4068  	/*Writeback Mode Support Check*/
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4069  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4070  	v->TotalNumberOfActiveWriteback = 0;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4071  	for (k = 0; k < v->NumberOfActivePlanes; k++) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4072  		if (v->WritebackEnable[k] == true) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4073  			v->TotalNumberOfActiveWriteback = v->TotalNumberOfActiveWriteback + 1;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4074  		}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4075  	}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4076  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4077  	if (v->TotalNumberOfActiveWriteback > v->MaxNumWriteback) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4078  		EnoughWritebackUnits = false;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4079  	}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4080  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4081  	/*Writeback Scale Ratio and Taps Support Check*/
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4082  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4083  	v->WritebackScaleRatioAndTapsSupport = true;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4084  	for (k = 0; k < v->NumberOfActivePlanes; k++) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4085  		if (v->WritebackEnable[k] == true) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4086  			if (v->WritebackHRatio[k] > v->WritebackMaxHSCLRatio || v->WritebackVRatio[k] > v->WritebackMaxVSCLRatio
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4087  					|| v->WritebackHRatio[k] < v->WritebackMinHSCLRatio
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4088  					|| v->WritebackVRatio[k] < v->WritebackMinVSCLRatio
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4089  					|| v->WritebackHTaps[k] > v->WritebackMaxHSCLTaps
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4090  					|| v->WritebackVTaps[k] > v->WritebackMaxVSCLTaps
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4091  					|| v->WritebackHRatio[k] > v->WritebackHTaps[k] || v->WritebackVRatio[k] > v->WritebackVTaps[k]
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4092  					|| (v->WritebackHTaps[k] > 2.0 && ((v->WritebackHTaps[k] % 2) == 1))) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4093  				v->WritebackScaleRatioAndTapsSupport = false;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4094  			}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4095  			if (2.0 * v->WritebackDestinationWidth[k] * (v->WritebackVTaps[k] - 1) * 57 > v->WritebackLineBufferSize) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4096  				v->WritebackScaleRatioAndTapsSupport = false;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4097  			}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4098  		}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4099  	}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4100  	/*Maximum DISPCLK/DPPCLK Support check*/
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4101  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4102  	v->WritebackRequiredDISPCLK = 0.0;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4103  	for (k = 0; k < v->NumberOfActivePlanes; k++) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4104  		if (v->WritebackEnable[k] == true) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4105  			v->WritebackRequiredDISPCLK = dml_max(
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4106  					v->WritebackRequiredDISPCLK,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4107  					dml31_CalculateWriteBackDISPCLK(
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4108  							v->WritebackPixelFormat[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4109  							v->PixelClock[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4110  							v->WritebackHRatio[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4111  							v->WritebackVRatio[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4112  							v->WritebackHTaps[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4113  							v->WritebackVTaps[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4114  							v->WritebackSourceWidth[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4115  							v->WritebackDestinationWidth[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4116  							v->HTotal[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4117  							v->WritebackLineBufferSize));
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4118  		}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4119  	}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4120  	for (k = 0; k < v->NumberOfActivePlanes; k++) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4121  		if (v->HRatio[k] > 1.0) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4122  			v->PSCL_FACTOR[k] = dml_min(
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4123  					v->MaxDCHUBToPSCLThroughput,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4124  					v->MaxPSCLToLBThroughput * v->HRatio[k] / dml_ceil(v->htaps[k] / 6.0, 1.0));
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4125  		} else {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4126  			v->PSCL_FACTOR[k] = dml_min(v->MaxDCHUBToPSCLThroughput, v->MaxPSCLToLBThroughput);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4127  		}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4128  		if (v->BytePerPixelC[k] == 0.0) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4129  			v->PSCL_FACTOR_CHROMA[k] = 0.0;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4130  			v->MinDPPCLKUsingSingleDPP[k] = v->PixelClock[k]
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4131  					* dml_max3(
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4132  							v->vtaps[k] / 6.0 * dml_min(1.0, v->HRatio[k]),
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4133  							v->HRatio[k] * v->VRatio[k] / v->PSCL_FACTOR[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4134  							1.0);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4135  			if ((v->htaps[k] > 6.0 || v->vtaps[k] > 6.0) && v->MinDPPCLKUsingSingleDPP[k] < 2.0 * v->PixelClock[k]) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4136  				v->MinDPPCLKUsingSingleDPP[k] = 2.0 * v->PixelClock[k];
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4137  			}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4138  		} else {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4139  			if (v->HRatioChroma[k] > 1.0) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4140  				v->PSCL_FACTOR_CHROMA[k] = dml_min(
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4141  						v->MaxDCHUBToPSCLThroughput,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4142  						v->MaxPSCLToLBThroughput * v->HRatioChroma[k] / dml_ceil(v->HTAPsChroma[k] / 6.0, 1.0));
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4143  			} else {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4144  				v->PSCL_FACTOR_CHROMA[k] = dml_min(v->MaxDCHUBToPSCLThroughput, v->MaxPSCLToLBThroughput);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4145  			}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4146  			v->MinDPPCLKUsingSingleDPP[k] = v->PixelClock[k]
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4147  					* dml_max5(
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4148  							v->vtaps[k] / 6.0 * dml_min(1.0, v->HRatio[k]),
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4149  							v->HRatio[k] * v->VRatio[k] / v->PSCL_FACTOR[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4150  							v->VTAPsChroma[k] / 6.0 * dml_min(1.0, v->HRatioChroma[k]),
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4151  							v->HRatioChroma[k] * v->VRatioChroma[k] / v->PSCL_FACTOR_CHROMA[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4152  							1.0);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4153  			if ((v->htaps[k] > 6.0 || v->vtaps[k] > 6.0 || v->HTAPsChroma[k] > 6.0 || v->VTAPsChroma[k] > 6.0)
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4154  					&& v->MinDPPCLKUsingSingleDPP[k] < 2.0 * v->PixelClock[k]) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4155  				v->MinDPPCLKUsingSingleDPP[k] = 2.0 * v->PixelClock[k];
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4156  			}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4157  		}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4158  	}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4159  	for (k = 0; k < v->NumberOfActivePlanes; k++) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4160  		int MaximumSwathWidthSupportLuma;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4161  		int MaximumSwathWidthSupportChroma;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4162  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4163  		if (v->SurfaceTiling[k] == dm_sw_linear) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4164  			MaximumSwathWidthSupportLuma = 8192.0;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4165  		} else if (v->SourceScan[k] == dm_vert && v->BytePerPixelC[k] > 0) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4166  			MaximumSwathWidthSupportLuma = 2880.0;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4167  		} else if (v->SourcePixelFormat[k] == dm_rgbe_alpha) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4168  			MaximumSwathWidthSupportLuma = 3840.0;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4169  		} else {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4170  			MaximumSwathWidthSupportLuma = 5760.0;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4171  		}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4172  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4173  		if (v->SourcePixelFormat[k] == dm_420_8 || v->SourcePixelFormat[k] == dm_420_10 || v->SourcePixelFormat[k] == dm_420_12) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4174  			MaximumSwathWidthSupportChroma = MaximumSwathWidthSupportLuma / 2.0;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4175  		} else {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4176  			MaximumSwathWidthSupportChroma = MaximumSwathWidthSupportLuma;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4177  		}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4178  		v->MaximumSwathWidthInLineBufferLuma = v->LineBufferSize * dml_max(v->HRatio[k], 1.0) / v->LBBitPerPixel[k]
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4179  				/ (v->vtaps[k] + dml_max(dml_ceil(v->VRatio[k], 1.0) - 2, 0.0));
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4180  		if (v->BytePerPixelC[k] == 0.0) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4181  			v->MaximumSwathWidthInLineBufferChroma = 0;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4182  		} else {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4183  			v->MaximumSwathWidthInLineBufferChroma = v->LineBufferSize * dml_max(v->HRatioChroma[k], 1.0) / v->LBBitPerPixel[k]
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4184  					/ (v->VTAPsChroma[k] + dml_max(dml_ceil(v->VRatioChroma[k], 1.0) - 2, 0.0));
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4185  		}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4186  		v->MaximumSwathWidthLuma[k] = dml_min(MaximumSwathWidthSupportLuma, v->MaximumSwathWidthInLineBufferLuma);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4187  		v->MaximumSwathWidthChroma[k] = dml_min(MaximumSwathWidthSupportChroma, v->MaximumSwathWidthInLineBufferChroma);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4188  	}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4189  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4190  	CalculateSwathAndDETConfiguration(
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4191  			true,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4192  			v->NumberOfActivePlanes,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4193  			v->DETBufferSizeInKByte[0],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4194  			v->MaximumSwathWidthLuma,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4195  			v->MaximumSwathWidthChroma,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4196  			v->SourceScan,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4197  			v->SourcePixelFormat,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4198  			v->SurfaceTiling,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4199  			v->ViewportWidth,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4200  			v->ViewportHeight,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4201  			v->SurfaceWidthY,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4202  			v->SurfaceWidthC,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4203  			v->SurfaceHeightY,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4204  			v->SurfaceHeightC,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4205  			v->Read256BlockHeightY,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4206  			v->Read256BlockHeightC,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4207  			v->Read256BlockWidthY,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4208  			v->Read256BlockWidthC,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4209  			v->odm_combine_dummy,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4210  			v->BlendingAndTiming,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4211  			v->BytePerPixelY,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4212  			v->BytePerPixelC,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4213  			v->BytePerPixelInDETY,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4214  			v->BytePerPixelInDETC,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4215  			v->HActive,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4216  			v->HRatio,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4217  			v->HRatioChroma,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4218  			v->NoOfDPPThisState,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4219  			v->swath_width_luma_ub_this_state,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4220  			v->swath_width_chroma_ub_this_state,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4221  			v->SwathWidthYThisState,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4222  			v->SwathWidthCThisState,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4223  			v->SwathHeightYThisState,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4224  			v->SwathHeightCThisState,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4225  			v->DETBufferSizeYThisState,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4226  			v->DETBufferSizeCThisState,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4227  			v->SingleDPPViewportSizeSupportPerPlane,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4228  			&v->ViewportSizeSupport[0][0]);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4229  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4230  	for (i = 0; i < v->soc.num_states; i++) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4231  		for (j = 0; j < 2; j++) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4232  			v->MaxDispclkRoundedDownToDFSGranularity = RoundToDFSGranularityDown(v->MaxDispclk[i], v->DISPCLKDPPCLKVCOSpeed);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4233  			v->MaxDppclkRoundedDownToDFSGranularity = RoundToDFSGranularityDown(v->MaxDppclk[i], v->DISPCLKDPPCLKVCOSpeed);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4234  			v->RequiredDISPCLK[i][j] = 0.0;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4235  			v->DISPCLK_DPPCLK_Support[i][j] = true;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4236  			for (k = 0; k < v->NumberOfActivePlanes; k++) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4237  				v->PlaneRequiredDISPCLKWithoutODMCombine = v->PixelClock[k] * (1.0 + v->DISPCLKDPPCLKDSCCLKDownSpreading / 100.0)
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4238  						* (1.0 + v->DISPCLKRampingMargin / 100.0);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4239  				if ((v->PlaneRequiredDISPCLKWithoutODMCombine >= v->MaxDispclk[i]
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4240  						&& v->MaxDispclk[i] == v->MaxDispclk[v->soc.num_states - 1]
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4241  						&& v->MaxDppclk[i] == v->MaxDppclk[v->soc.num_states - 1])) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4242  					v->PlaneRequiredDISPCLKWithoutODMCombine = v->PixelClock[k]
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4243  							* (1 + v->DISPCLKDPPCLKDSCCLKDownSpreading / 100.0);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4244  				}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4245  				v->PlaneRequiredDISPCLKWithODMCombine2To1 = v->PixelClock[k] / 2 * (1 + v->DISPCLKDPPCLKDSCCLKDownSpreading / 100.0)
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4246  						* (1 + v->DISPCLKRampingMargin / 100.0);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4247  				if ((v->PlaneRequiredDISPCLKWithODMCombine2To1 >= v->MaxDispclk[i]
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4248  						&& v->MaxDispclk[i] == v->MaxDispclk[v->soc.num_states - 1]
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4249  						&& v->MaxDppclk[i] == v->MaxDppclk[v->soc.num_states - 1])) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4250  					v->PlaneRequiredDISPCLKWithODMCombine2To1 = v->PixelClock[k] / 2
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4251  							* (1 + v->DISPCLKDPPCLKDSCCLKDownSpreading / 100.0);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4252  				}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4253  				v->PlaneRequiredDISPCLKWithODMCombine4To1 = v->PixelClock[k] / 4 * (1 + v->DISPCLKDPPCLKDSCCLKDownSpreading / 100.0)
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4254  						* (1 + v->DISPCLKRampingMargin / 100.0);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4255  				if ((v->PlaneRequiredDISPCLKWithODMCombine4To1 >= v->MaxDispclk[i]
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4256  						&& v->MaxDispclk[i] == v->MaxDispclk[v->soc.num_states - 1]
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4257  						&& v->MaxDppclk[i] == v->MaxDppclk[v->soc.num_states - 1])) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4258  					v->PlaneRequiredDISPCLKWithODMCombine4To1 = v->PixelClock[k] / 4
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4259  							* (1 + v->DISPCLKDPPCLKDSCCLKDownSpreading / 100.0);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4260  				}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4261  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4262  				if (v->ODMCombinePolicy == dm_odm_combine_policy_none
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4263  						|| !(v->Output[k] == dm_dp ||
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4264  						     v->Output[k] == dm_edp)) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4265  					v->ODMCombineEnablePerState[i][k] = dm_odm_combine_mode_disabled;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4266  					v->PlaneRequiredDISPCLK = v->PlaneRequiredDISPCLKWithoutODMCombine;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4267  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4268  					if (v->HActive[k] / 2 > DCN31_MAX_FMT_420_BUFFER_WIDTH)
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4269  						FMTBufferExceeded = true;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4270  				} else if (v->ODMCombinePolicy == dm_odm_combine_policy_2to1) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4271  					v->ODMCombineEnablePerState[i][k] = dm_odm_combine_mode_2to1;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4272  					v->PlaneRequiredDISPCLK = v->PlaneRequiredDISPCLKWithODMCombine2To1;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4273  				} else if (v->ODMCombinePolicy == dm_odm_combine_policy_4to1
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4274  						|| v->PlaneRequiredDISPCLKWithODMCombine2To1 > v->MaxDispclkRoundedDownToDFSGranularity) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4275  					v->ODMCombineEnablePerState[i][k] = dm_odm_combine_mode_4to1;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4276  					v->PlaneRequiredDISPCLK = v->PlaneRequiredDISPCLKWithODMCombine4To1;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4277  				} else if (v->PlaneRequiredDISPCLKWithoutODMCombine > v->MaxDispclkRoundedDownToDFSGranularity) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4278  					v->ODMCombineEnablePerState[i][k] = dm_odm_combine_mode_2to1;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4279  					v->PlaneRequiredDISPCLK = v->PlaneRequiredDISPCLKWithODMCombine2To1;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4280  				} else {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4281  					v->ODMCombineEnablePerState[i][k] = dm_odm_combine_mode_disabled;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4282  					v->PlaneRequiredDISPCLK = v->PlaneRequiredDISPCLKWithoutODMCombine;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4283  				}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4284  				if (v->DSCEnabled[k] && v->HActive[k] > DCN31_MAX_DSC_IMAGE_WIDTH
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4285  						&& v->ODMCombineEnablePerState[i][k] != dm_odm_combine_mode_4to1) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4286  					if (v->HActive[k] / 2 > DCN31_MAX_DSC_IMAGE_WIDTH) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4287  						v->ODMCombineEnablePerState[i][k] = dm_odm_combine_mode_4to1;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4288  						v->PlaneRequiredDISPCLK = v->PlaneRequiredDISPCLKWithODMCombine4To1;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4289  					} else {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4290  						v->ODMCombineEnablePerState[i][k] = dm_odm_combine_mode_2to1;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4291  						v->PlaneRequiredDISPCLK = v->PlaneRequiredDISPCLKWithODMCombine2To1;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4292  					}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4293  				}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4294  				if (v->OutputFormat[k] == dm_420 && v->HActive[k] > DCN31_MAX_FMT_420_BUFFER_WIDTH
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4295  						&& v->ODMCombineEnablePerState[i][k] != dm_odm_combine_mode_4to1) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4296  					if (v->HActive[k] / 2 > DCN31_MAX_FMT_420_BUFFER_WIDTH) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4297  						v->ODMCombineEnablePerState[i][k] = dm_odm_combine_mode_4to1;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4298  						v->PlaneRequiredDISPCLK = v->PlaneRequiredDISPCLKWithODMCombine4To1;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4299  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4300  						if (v->HActive[k] / 4 > DCN31_MAX_FMT_420_BUFFER_WIDTH)
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4301  							FMTBufferExceeded = true;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4302  					} else {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4303  						v->ODMCombineEnablePerState[i][k] = dm_odm_combine_mode_2to1;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4304  						v->PlaneRequiredDISPCLK = v->PlaneRequiredDISPCLKWithODMCombine2To1;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4305  					}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4306  				}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4307  				if (v->ODMCombineEnablePerState[i][k] == dm_odm_combine_mode_4to1) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4308  					v->MPCCombine[i][j][k] = false;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4309  					v->NoOfDPP[i][j][k] = 4;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4310  					v->RequiredDPPCLK[i][j][k] = v->MinDPPCLKUsingSingleDPP[k] * (1 + v->DISPCLKDPPCLKDSCCLKDownSpreading / 100.0) / 4;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4311  				} else if (v->ODMCombineEnablePerState[i][k] == dm_odm_combine_mode_2to1) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4312  					v->MPCCombine[i][j][k] = false;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4313  					v->NoOfDPP[i][j][k] = 2;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4314  					v->RequiredDPPCLK[i][j][k] = v->MinDPPCLKUsingSingleDPP[k] * (1 + v->DISPCLKDPPCLKDSCCLKDownSpreading / 100.0) / 2;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4315  				} else if ((v->WhenToDoMPCCombine == dm_mpc_never
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4316  						|| (v->MinDPPCLKUsingSingleDPP[k] * (1 + v->DISPCLKDPPCLKDSCCLKDownSpreading / 100.0)
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4317  								<= v->MaxDppclkRoundedDownToDFSGranularity && v->SingleDPPViewportSizeSupportPerPlane[k] == true))) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4318  					v->MPCCombine[i][j][k] = false;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4319  					v->NoOfDPP[i][j][k] = 1;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4320  					v->RequiredDPPCLK[i][j][k] = v->MinDPPCLKUsingSingleDPP[k] * (1.0 + v->DISPCLKDPPCLKDSCCLKDownSpreading / 100.0);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4321  				} else {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4322  					v->MPCCombine[i][j][k] = true;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4323  					v->NoOfDPP[i][j][k] = 2;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4324  					v->RequiredDPPCLK[i][j][k] = v->MinDPPCLKUsingSingleDPP[k] * (1.0 + v->DISPCLKDPPCLKDSCCLKDownSpreading / 100.0) / 2.0;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4325  				}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4326  				v->RequiredDISPCLK[i][j] = dml_max(v->RequiredDISPCLK[i][j], v->PlaneRequiredDISPCLK);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4327  				if ((v->MinDPPCLKUsingSingleDPP[k] / v->NoOfDPP[i][j][k] * (1.0 + v->DISPCLKDPPCLKDSCCLKDownSpreading / 100.0)
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4328  						> v->MaxDppclkRoundedDownToDFSGranularity)
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4329  						|| (v->PlaneRequiredDISPCLK > v->MaxDispclkRoundedDownToDFSGranularity)) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4330  					v->DISPCLK_DPPCLK_Support[i][j] = false;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4331  				}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4332  			}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4333  			v->TotalNumberOfActiveDPP[i][j] = 0;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4334  			v->TotalNumberOfSingleDPPPlanes[i][j] = 0;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4335  			for (k = 0; k < v->NumberOfActivePlanes; k++) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4336  				v->TotalNumberOfActiveDPP[i][j] = v->TotalNumberOfActiveDPP[i][j] + v->NoOfDPP[i][j][k];
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4337  				if (v->NoOfDPP[i][j][k] == 1)
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4338  					v->TotalNumberOfSingleDPPPlanes[i][j] = v->TotalNumberOfSingleDPPPlanes[i][j] + 1;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4339  				if (v->SourcePixelFormat[k] == dm_420_8 || v->SourcePixelFormat[k] == dm_420_10
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4340  						|| v->SourcePixelFormat[k] == dm_420_12 || v->SourcePixelFormat[k] == dm_rgbe_alpha)
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4341  					NoChroma = false;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4342  			}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4343  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4344  			// UPTO
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4345  			if (j == 1 && v->WhenToDoMPCCombine != dm_mpc_never
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4346  					&& !UnboundedRequest(v->UseUnboundedRequesting, v->TotalNumberOfActiveDPP[i][j], NoChroma, v->Output[0])) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4347  				while (!(v->TotalNumberOfActiveDPP[i][j] >= v->MaxNumDPP || v->TotalNumberOfSingleDPPPlanes[i][j] == 0)) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4348  					double BWOfNonSplitPlaneOfMaximumBandwidth;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4349  					unsigned int NumberOfNonSplitPlaneOfMaximumBandwidth;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4350  					BWOfNonSplitPlaneOfMaximumBandwidth = 0;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4351  					NumberOfNonSplitPlaneOfMaximumBandwidth = 0;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4352  					for (k = 0; k < v->NumberOfActivePlanes; ++k) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4353  						if (v->ReadBandwidthLuma[k] + v->ReadBandwidthChroma[k] > BWOfNonSplitPlaneOfMaximumBandwidth
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4354  								&& v->ODMCombineEnablePerState[i][k] == dm_odm_combine_mode_disabled && v->MPCCombine[i][j][k] == false) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4355  							BWOfNonSplitPlaneOfMaximumBandwidth = v->ReadBandwidthLuma[k] + v->ReadBandwidthChroma[k];
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4356  							NumberOfNonSplitPlaneOfMaximumBandwidth = k;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4357  						}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4358  					}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4359  					v->MPCCombine[i][j][NumberOfNonSplitPlaneOfMaximumBandwidth] = true;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4360  					v->NoOfDPP[i][j][NumberOfNonSplitPlaneOfMaximumBandwidth] = 2;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4361  					v->RequiredDPPCLK[i][j][NumberOfNonSplitPlaneOfMaximumBandwidth] =
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4362  							v->MinDPPCLKUsingSingleDPP[NumberOfNonSplitPlaneOfMaximumBandwidth]
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4363  									* (1 + v->DISPCLKDPPCLKDSCCLKDownSpreading / 100) / 2;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4364  					v->TotalNumberOfActiveDPP[i][j] = v->TotalNumberOfActiveDPP[i][j] + 1;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4365  					v->TotalNumberOfSingleDPPPlanes[i][j] = v->TotalNumberOfSingleDPPPlanes[i][j] - 1;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4366  				}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4367  			}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4368  			if (v->TotalNumberOfActiveDPP[i][j] > v->MaxNumDPP) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4369  				v->RequiredDISPCLK[i][j] = 0.0;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4370  				v->DISPCLK_DPPCLK_Support[i][j] = true;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4371  				for (k = 0; k < v->NumberOfActivePlanes; k++) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4372  					v->ODMCombineEnablePerState[i][k] = dm_odm_combine_mode_disabled;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4373  					if (v->SingleDPPViewportSizeSupportPerPlane[k] == false && v->WhenToDoMPCCombine != dm_mpc_never) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4374  						v->MPCCombine[i][j][k] = true;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4375  						v->NoOfDPP[i][j][k] = 2;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4376  						v->RequiredDPPCLK[i][j][k] = v->MinDPPCLKUsingSingleDPP[k]
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4377  								* (1.0 + v->DISPCLKDPPCLKDSCCLKDownSpreading / 100.0) / 2.0;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4378  					} else {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4379  						v->MPCCombine[i][j][k] = false;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4380  						v->NoOfDPP[i][j][k] = 1;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4381  						v->RequiredDPPCLK[i][j][k] = v->MinDPPCLKUsingSingleDPP[k]
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4382  								* (1.0 + v->DISPCLKDPPCLKDSCCLKDownSpreading / 100.0);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4383  					}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4384  					if (!(v->MaxDispclk[i] == v->MaxDispclk[v->soc.num_states - 1]
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4385  							&& v->MaxDppclk[i] == v->MaxDppclk[v->soc.num_states - 1])) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4386  						v->PlaneRequiredDISPCLK = v->PixelClock[k] * (1.0 + v->DISPCLKDPPCLKDSCCLKDownSpreading / 100.0)
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4387  								* (1.0 + v->DISPCLKRampingMargin / 100.0);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4388  					} else {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4389  						v->PlaneRequiredDISPCLK = v->PixelClock[k] * (1.0 + v->DISPCLKDPPCLKDSCCLKDownSpreading / 100.0);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4390  					}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4391  					v->RequiredDISPCLK[i][j] = dml_max(v->RequiredDISPCLK[i][j], v->PlaneRequiredDISPCLK);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4392  					if ((v->MinDPPCLKUsingSingleDPP[k] / v->NoOfDPP[i][j][k] * (1.0 + v->DISPCLKDPPCLKDSCCLKDownSpreading / 100.0)
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4393  							> v->MaxDppclkRoundedDownToDFSGranularity)
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4394  							|| (v->PlaneRequiredDISPCLK > v->MaxDispclkRoundedDownToDFSGranularity)) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4395  						v->DISPCLK_DPPCLK_Support[i][j] = false;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4396  					}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4397  				}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4398  				v->TotalNumberOfActiveDPP[i][j] = 0.0;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4399  				for (k = 0; k < v->NumberOfActivePlanes; k++) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4400  					v->TotalNumberOfActiveDPP[i][j] = v->TotalNumberOfActiveDPP[i][j] + v->NoOfDPP[i][j][k];
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4401  				}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4402  			}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4403  			v->RequiredDISPCLK[i][j] = dml_max(v->RequiredDISPCLK[i][j], v->WritebackRequiredDISPCLK);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4404  			if (v->MaxDispclkRoundedDownToDFSGranularity < v->WritebackRequiredDISPCLK) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4405  				v->DISPCLK_DPPCLK_Support[i][j] = false;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4406  			}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4407  		}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4408  	}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4409  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4410  	/*Total Available Pipes Support Check*/
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4411  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4412  	for (i = 0; i < v->soc.num_states; i++) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4413  		for (j = 0; j < 2; j++) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4414  			if (v->TotalNumberOfActiveDPP[i][j] <= v->MaxNumDPP) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4415  				v->TotalAvailablePipesSupport[i][j] = true;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4416  			} else {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4417  				v->TotalAvailablePipesSupport[i][j] = false;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4418  			}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4419  		}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4420  	}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4421  	/*Display IO and DSC Support Check*/
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4422  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4423  	v->NonsupportedDSCInputBPC = false;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4424  	for (k = 0; k < v->NumberOfActivePlanes; k++) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4425  		if (!(v->DSCInputBitPerComponent[k] == 12.0 || v->DSCInputBitPerComponent[k] == 10.0 || v->DSCInputBitPerComponent[k] == 8.0)
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4426  				|| v->DSCInputBitPerComponent[k] > v->MaximumDSCBitsPerComponent) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4427  			v->NonsupportedDSCInputBPC = true;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4428  		}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4429  	}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4430  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4431  	/*Number Of DSC Slices*/
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4432  	for (k = 0; k < v->NumberOfActivePlanes; ++k) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4433  		if (v->BlendingAndTiming[k] == k) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4434  			if (v->PixelClockBackEnd[k] > 3200) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4435  				v->NumberOfDSCSlices[k] = dml_ceil(v->PixelClockBackEnd[k] / 400.0, 4.0);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4436  			} else if (v->PixelClockBackEnd[k] > 1360) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4437  				v->NumberOfDSCSlices[k] = 8;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4438  			} else if (v->PixelClockBackEnd[k] > 680) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4439  				v->NumberOfDSCSlices[k] = 4;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4440  			} else if (v->PixelClockBackEnd[k] > 340) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4441  				v->NumberOfDSCSlices[k] = 2;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4442  			} else {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4443  				v->NumberOfDSCSlices[k] = 1;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4444  			}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4445  		} else {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4446  			v->NumberOfDSCSlices[k] = 0;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4447  		}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4448  	}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4449  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4450  	for (i = 0; i < v->soc.num_states; i++) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4451  		for (k = 0; k < v->NumberOfActivePlanes; k++) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4452  			v->RequiresDSC[i][k] = false;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4453  			v->RequiresFEC[i][k] = false;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4454  			if (v->BlendingAndTiming[k] == k) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4455  				if (v->Output[k] == dm_hdmi) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4456  					v->RequiresDSC[i][k] = false;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4457  					v->RequiresFEC[i][k] = false;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4458  					v->OutputBppPerState[i][k] = TruncToValidBPP(
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4459  							dml_min(600.0, v->PHYCLKPerState[i]) * 10,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4460  							3,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4461  							v->HTotal[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4462  							v->HActive[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4463  							v->PixelClockBackEnd[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4464  							v->ForcedOutputLinkBPP[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4465  							false,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4466  							v->Output[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4467  							v->OutputFormat[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4468  							v->DSCInputBitPerComponent[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4469  							v->NumberOfDSCSlices[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4470  							v->AudioSampleRate[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4471  							v->AudioSampleLayout[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4472  							v->ODMCombineEnablePerState[i][k]);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4473  				} else if (v->Output[k] == dm_dp || v->Output[k] == dm_edp) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4474  					if (v->DSCEnable[k] == true) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4475  						v->RequiresDSC[i][k] = true;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4476  						v->LinkDSCEnable = true;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4477  						if (v->Output[k] == dm_dp) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4478  							v->RequiresFEC[i][k] = true;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4479  						} else {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4480  							v->RequiresFEC[i][k] = false;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4481  						}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4482  					} else {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4483  						v->RequiresDSC[i][k] = false;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4484  						v->LinkDSCEnable = false;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4485  						v->RequiresFEC[i][k] = false;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4486  					}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4487  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4488  					v->Outbpp = BPP_INVALID;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4489  					if (v->PHYCLKPerState[i] >= 270.0) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4490  						v->Outbpp = TruncToValidBPP(
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4491  								(1.0 - v->Downspreading / 100.0) * 2700,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4492  								v->OutputLinkDPLanes[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4493  								v->HTotal[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4494  								v->HActive[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4495  								v->PixelClockBackEnd[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4496  								v->ForcedOutputLinkBPP[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4497  								v->LinkDSCEnable,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4498  								v->Output[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4499  								v->OutputFormat[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4500  								v->DSCInputBitPerComponent[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4501  								v->NumberOfDSCSlices[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4502  								v->AudioSampleRate[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4503  								v->AudioSampleLayout[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4504  								v->ODMCombineEnablePerState[i][k]);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4505  						v->OutputBppPerState[i][k] = v->Outbpp;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4506  						// TODO: Need some other way to handle this nonsense
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4507  						// v->OutputTypeAndRatePerState[i][k] = v->Output[k] & " HBR"
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4508  					}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4509  					if (v->Outbpp == BPP_INVALID && v->PHYCLKPerState[i] >= 540.0) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4510  						v->Outbpp = TruncToValidBPP(
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4511  								(1.0 - v->Downspreading / 100.0) * 5400,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4512  								v->OutputLinkDPLanes[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4513  								v->HTotal[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4514  								v->HActive[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4515  								v->PixelClockBackEnd[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4516  								v->ForcedOutputLinkBPP[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4517  								v->LinkDSCEnable,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4518  								v->Output[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4519  								v->OutputFormat[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4520  								v->DSCInputBitPerComponent[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4521  								v->NumberOfDSCSlices[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4522  								v->AudioSampleRate[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4523  								v->AudioSampleLayout[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4524  								v->ODMCombineEnablePerState[i][k]);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4525  						v->OutputBppPerState[i][k] = v->Outbpp;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4526  						// TODO: Need some other way to handle this nonsense
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4527  						// v->OutputTypeAndRatePerState[i][k] = v->Output[k] & " HBR2"
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4528  					}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4529  					if (v->Outbpp == BPP_INVALID && v->PHYCLKPerState[i] >= 810.0) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4530  						v->Outbpp = TruncToValidBPP(
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4531  								(1.0 - v->Downspreading / 100.0) * 8100,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4532  								v->OutputLinkDPLanes[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4533  								v->HTotal[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4534  								v->HActive[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4535  								v->PixelClockBackEnd[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4536  								v->ForcedOutputLinkBPP[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4537  								v->LinkDSCEnable,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4538  								v->Output[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4539  								v->OutputFormat[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4540  								v->DSCInputBitPerComponent[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4541  								v->NumberOfDSCSlices[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4542  								v->AudioSampleRate[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4543  								v->AudioSampleLayout[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4544  								v->ODMCombineEnablePerState[i][k]);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4545  						v->OutputBppPerState[i][k] = v->Outbpp;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4546  						// TODO: Need some other way to handle this nonsense
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4547  						// v->OutputTypeAndRatePerState[i][k] = v->Output[k] & " HBR3"
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4548  					}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4549  					if (v->Outbpp == BPP_INVALID && v->PHYCLKD18PerState[i] >= 10000.0 / 18) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4550  						v->Outbpp = TruncToValidBPP(
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4551  								(1.0 - v->Downspreading / 100.0) * 10000,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4552  								4,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4553  								v->HTotal[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4554  								v->HActive[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4555  								v->PixelClockBackEnd[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4556  								v->ForcedOutputLinkBPP[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4557  								v->LinkDSCEnable,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4558  								v->Output[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4559  								v->OutputFormat[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4560  								v->DSCInputBitPerComponent[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4561  								v->NumberOfDSCSlices[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4562  								v->AudioSampleRate[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4563  								v->AudioSampleLayout[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4564  								v->ODMCombineEnablePerState[i][k]);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4565  						v->OutputBppPerState[i][k] = v->Outbpp;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4566  						//v->OutputTypeAndRatePerState[i][k] = v->Output[k] & "10x4";
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4567  					}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4568  					if (v->Outbpp == BPP_INVALID && v->PHYCLKD18PerState[i] >= 12000.0 / 18) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4569  						v->Outbpp = TruncToValidBPP(
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4570  								12000,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4571  								4,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4572  								v->HTotal[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4573  								v->HActive[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4574  								v->PixelClockBackEnd[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4575  								v->ForcedOutputLinkBPP[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4576  								v->LinkDSCEnable,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4577  								v->Output[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4578  								v->OutputFormat[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4579  								v->DSCInputBitPerComponent[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4580  								v->NumberOfDSCSlices[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4581  								v->AudioSampleRate[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4582  								v->AudioSampleLayout[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4583  								v->ODMCombineEnablePerState[i][k]);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4584  						v->OutputBppPerState[i][k] = v->Outbpp;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4585  						//v->OutputTypeAndRatePerState[i][k] = v->Output[k] & "12x4";
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4586  					}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4587  				}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4588  			} else {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4589  				v->OutputBppPerState[i][k] = 0;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4590  			}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4591  		}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4592  	}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4593  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4594  	for (i = 0; i < v->soc.num_states; i++) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4595  		v->LinkCapacitySupport[i] = true;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4596  		for (k = 0; k < v->NumberOfActivePlanes; k++) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4597  			if (v->BlendingAndTiming[k] == k
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4598  					&& (v->Output[k] == dm_dp ||
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4599  					    v->Output[k] == dm_edp ||
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4600  					    v->Output[k] == dm_hdmi) && v->OutputBppPerState[i][k] == 0) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4601  				v->LinkCapacitySupport[i] = false;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4602  			}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4603  		}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4604  	}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4605  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4606  	// UPTO 2172
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4607  	for (k = 0; k < v->NumberOfActivePlanes; ++k) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4608  		if (v->BlendingAndTiming[k] == k
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4609  				&& (v->Output[k] == dm_dp ||
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4610  				    v->Output[k] == dm_edp ||
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4611  				    v->Output[k] == dm_hdmi)) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4612  			if (v->OutputFormat[k] == dm_420 && v->Interlace[k] == 1 && v->ProgressiveToInterlaceUnitInOPP == true) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4613  				P2IWith420 = true;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4614  			}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4615  			if (v->DSCEnable[k] == true && v->OutputFormat[k] == dm_n422
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4616  					&& !v->DSC422NativeSupport) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4617  				DSC422NativeNotSupported = true;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4618  			}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4619  		}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4620  	}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4621  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4622  	for (i = 0; i < v->soc.num_states; ++i) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4623  		v->ODMCombine4To1SupportCheckOK[i] = true;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4624  		for (k = 0; k < v->NumberOfActivePlanes; ++k) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4625  			if (v->BlendingAndTiming[k] == k && v->ODMCombineEnablePerState[i][k] == dm_odm_combine_mode_4to1
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4626  					&& (v->ODMCombine4To1Supported == false || v->Output[k] == dm_dp || v->Output[k] == dm_edp
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4627  							|| v->Output[k] == dm_hdmi)) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4628  				v->ODMCombine4To1SupportCheckOK[i] = false;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4629  			}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4630  		}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4631  	}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4632  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4633  	/* Skip dscclk validation: as long as dispclk is supported, dscclk is also implicitly supported */
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4634  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4635  	for (i = 0; i < v->soc.num_states; i++) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4636  		v->NotEnoughDSCUnits[i] = false;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4637  		v->TotalDSCUnitsRequired = 0.0;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4638  		for (k = 0; k < v->NumberOfActivePlanes; k++) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4639  			if (v->RequiresDSC[i][k] == true) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4640  				if (v->ODMCombineEnablePerState[i][k] == dm_odm_combine_mode_4to1) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4641  					v->TotalDSCUnitsRequired = v->TotalDSCUnitsRequired + 4.0;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4642  				} else if (v->ODMCombineEnablePerState[i][k] == dm_odm_combine_mode_2to1) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4643  					v->TotalDSCUnitsRequired = v->TotalDSCUnitsRequired + 2.0;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4644  				} else {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4645  					v->TotalDSCUnitsRequired = v->TotalDSCUnitsRequired + 1.0;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4646  				}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4647  			}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4648  		}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4649  		if (v->TotalDSCUnitsRequired > v->NumberOfDSC) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4650  			v->NotEnoughDSCUnits[i] = true;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4651  		}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4652  	}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4653  	/*DSC Delay per state*/
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4654  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4655  	for (i = 0; i < v->soc.num_states; i++) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4656  		for (k = 0; k < v->NumberOfActivePlanes; k++) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4657  			if (v->OutputBppPerState[i][k] == BPP_INVALID) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4658  				v->BPP = 0.0;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4659  			} else {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4660  				v->BPP = v->OutputBppPerState[i][k];
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4661  			}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4662  			if (v->RequiresDSC[i][k] == true && v->BPP != 0.0) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4663  				if (v->ODMCombineEnablePerState[i][k] == dm_odm_combine_mode_disabled) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4664  					v->DSCDelayPerState[i][k] = dscceComputeDelay(
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4665  							v->DSCInputBitPerComponent[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4666  							v->BPP,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4667  							dml_ceil(1.0 * v->HActive[k] / v->NumberOfDSCSlices[k], 1.0),
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4668  							v->NumberOfDSCSlices[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4669  							v->OutputFormat[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4670  							v->Output[k]) + dscComputeDelay(v->OutputFormat[k], v->Output[k]);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4671  				} else if (v->ODMCombineEnablePerState[i][k] == dm_odm_combine_mode_2to1) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4672  					v->DSCDelayPerState[i][k] = 2.0
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4673  							* (dscceComputeDelay(
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4674  									v->DSCInputBitPerComponent[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4675  									v->BPP,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4676  									dml_ceil(1.0 * v->HActive[k] / v->NumberOfDSCSlices[k], 1.0),
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4677  									v->NumberOfDSCSlices[k] / 2,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4678  									v->OutputFormat[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4679  									v->Output[k]) + dscComputeDelay(v->OutputFormat[k], v->Output[k]));
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4680  				} else {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4681  					v->DSCDelayPerState[i][k] = 4.0
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4682  							* (dscceComputeDelay(
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4683  									v->DSCInputBitPerComponent[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4684  									v->BPP,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4685  									dml_ceil(1.0 * v->HActive[k] / v->NumberOfDSCSlices[k], 1.0),
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4686  									v->NumberOfDSCSlices[k] / 4,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4687  									v->OutputFormat[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4688  									v->Output[k]) + dscComputeDelay(v->OutputFormat[k], v->Output[k]));
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4689  				}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4690  				v->DSCDelayPerState[i][k] = v->DSCDelayPerState[i][k] * v->PixelClock[k] / v->PixelClockBackEnd[k];
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4691  			} else {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4692  				v->DSCDelayPerState[i][k] = 0.0;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4693  			}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4694  		}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4695  		for (k = 0; k < v->NumberOfActivePlanes; k++) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4696  			for (m = 0; m < v->NumberOfActivePlanes; m++) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4697  				if (v->BlendingAndTiming[k] == m && v->RequiresDSC[i][m] == true) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4698  					v->DSCDelayPerState[i][k] = v->DSCDelayPerState[i][m];
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4699  				}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4700  			}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4701  		}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4702  	}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4703  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4704  	//Calculate Swath, DET Configuration, DCFCLKDeepSleep
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4705  	//
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4706  	for (i = 0; i < v->soc.num_states; ++i) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4707  		for (j = 0; j <= 1; ++j) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4708  			for (k = 0; k < v->NumberOfActivePlanes; ++k) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4709  				v->RequiredDPPCLKThisState[k] = v->RequiredDPPCLK[i][j][k];
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4710  				v->NoOfDPPThisState[k] = v->NoOfDPP[i][j][k];
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4711  				v->ODMCombineEnableThisState[k] = v->ODMCombineEnablePerState[i][k];
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4712  			}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4713  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4714  			CalculateSwathAndDETConfiguration(
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4715  					false,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4716  					v->NumberOfActivePlanes,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4717  					v->DETBufferSizeInKByte[0],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4718  					v->MaximumSwathWidthLuma,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4719  					v->MaximumSwathWidthChroma,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4720  					v->SourceScan,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4721  					v->SourcePixelFormat,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4722  					v->SurfaceTiling,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4723  					v->ViewportWidth,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4724  					v->ViewportHeight,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4725  					v->SurfaceWidthY,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4726  					v->SurfaceWidthC,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4727  					v->SurfaceHeightY,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4728  					v->SurfaceHeightC,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4729  					v->Read256BlockHeightY,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4730  					v->Read256BlockHeightC,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4731  					v->Read256BlockWidthY,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4732  					v->Read256BlockWidthC,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4733  					v->ODMCombineEnableThisState,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4734  					v->BlendingAndTiming,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4735  					v->BytePerPixelY,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4736  					v->BytePerPixelC,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4737  					v->BytePerPixelInDETY,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4738  					v->BytePerPixelInDETC,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4739  					v->HActive,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4740  					v->HRatio,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4741  					v->HRatioChroma,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4742  					v->NoOfDPPThisState,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4743  					v->swath_width_luma_ub_this_state,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4744  					v->swath_width_chroma_ub_this_state,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4745  					v->SwathWidthYThisState,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4746  					v->SwathWidthCThisState,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4747  					v->SwathHeightYThisState,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4748  					v->SwathHeightCThisState,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4749  					v->DETBufferSizeYThisState,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4750  					v->DETBufferSizeCThisState,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4751  					v->dummystring,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4752  					&v->ViewportSizeSupport[i][j]);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4753  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4754  			CalculateDCFCLKDeepSleep(
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4755  					mode_lib,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4756  					v->NumberOfActivePlanes,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4757  					v->BytePerPixelY,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4758  					v->BytePerPixelC,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4759  					v->VRatio,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4760  					v->VRatioChroma,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4761  					v->SwathWidthYThisState,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4762  					v->SwathWidthCThisState,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4763  					v->NoOfDPPThisState,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4764  					v->HRatio,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4765  					v->HRatioChroma,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4766  					v->PixelClock,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4767  					v->PSCL_FACTOR,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4768  					v->PSCL_FACTOR_CHROMA,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4769  					v->RequiredDPPCLKThisState,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4770  					v->ReadBandwidthLuma,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4771  					v->ReadBandwidthChroma,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4772  					v->ReturnBusWidth,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4773  					&v->ProjectedDCFCLKDeepSleep[i][j]);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4774  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4775  			for (k = 0; k < v->NumberOfActivePlanes; ++k) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4776  				v->swath_width_luma_ub_all_states[i][j][k] = v->swath_width_luma_ub_this_state[k];
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4777  				v->swath_width_chroma_ub_all_states[i][j][k] = v->swath_width_chroma_ub_this_state[k];
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4778  				v->SwathWidthYAllStates[i][j][k] = v->SwathWidthYThisState[k];
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4779  				v->SwathWidthCAllStates[i][j][k] = v->SwathWidthCThisState[k];
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4780  				v->SwathHeightYAllStates[i][j][k] = v->SwathHeightYThisState[k];
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4781  				v->SwathHeightCAllStates[i][j][k] = v->SwathHeightCThisState[k];
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4782  				v->DETBufferSizeYAllStates[i][j][k] = v->DETBufferSizeYThisState[k];
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4783  				v->DETBufferSizeCAllStates[i][j][k] = v->DETBufferSizeCThisState[k];
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4784  			}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4785  		}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4786  	}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4787  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4788  	for (k = 0; k < v->NumberOfActivePlanes; ++k) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4789  		v->cursor_bw[k] = v->NumberOfCursors[k] * v->CursorWidth[k][0] * v->CursorBPP[k][0] / 8.0
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4790  				/ (v->HTotal[k] / v->PixelClock[k]) * v->VRatio[k];
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4791  	}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4792  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4793  	for (i = 0; i < v->soc.num_states; i++) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4794  		for (j = 0; j < 2; j++) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4795  			bool NotUrgentLatencyHiding[DC__NUM_DPP__MAX];
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4796  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4797  			for (k = 0; k < v->NumberOfActivePlanes; k++) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4798  				v->swath_width_luma_ub_this_state[k] = v->swath_width_luma_ub_all_states[i][j][k];
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4799  				v->swath_width_chroma_ub_this_state[k] = v->swath_width_chroma_ub_all_states[i][j][k];
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4800  				v->SwathWidthYThisState[k] = v->SwathWidthYAllStates[i][j][k];
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4801  				v->SwathWidthCThisState[k] = v->SwathWidthCAllStates[i][j][k];
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4802  				v->SwathHeightYThisState[k] = v->SwathHeightYAllStates[i][j][k];
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4803  				v->SwathHeightCThisState[k] = v->SwathHeightCAllStates[i][j][k];
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4804  				v->DETBufferSizeYThisState[k] = v->DETBufferSizeYAllStates[i][j][k];
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4805  				v->DETBufferSizeCThisState[k] = v->DETBufferSizeCAllStates[i][j][k];
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4806  			}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4807  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4808  			v->TotalNumberOfDCCActiveDPP[i][j] = 0;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4809  			for (k = 0; k < v->NumberOfActivePlanes; ++k) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4810  				if (v->DCCEnable[k] == true) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4811  					v->TotalNumberOfDCCActiveDPP[i][j] = v->TotalNumberOfDCCActiveDPP[i][j] + v->NoOfDPP[i][j][k];
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4812  				}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4813  			}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4814  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4815  			for (k = 0; k < v->NumberOfActivePlanes; k++) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4816  				if (v->SourcePixelFormat[k] == dm_420_8 || v->SourcePixelFormat[k] == dm_420_10
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4817  						|| v->SourcePixelFormat[k] == dm_420_12 || v->SourcePixelFormat[k] == dm_rgbe_alpha) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4818  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4819  					if ((v->SourcePixelFormat[k] == dm_420_10 || v->SourcePixelFormat[k] == dm_420_12)
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4820  							&& v->SourceScan[k] != dm_vert) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4821  						v->PTEBufferSizeInRequestsForLuma = (v->PTEBufferSizeInRequestsLuma + v->PTEBufferSizeInRequestsChroma)
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4822  								/ 2;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4823  						v->PTEBufferSizeInRequestsForChroma = v->PTEBufferSizeInRequestsForLuma;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4824  					} else {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4825  						v->PTEBufferSizeInRequestsForLuma = v->PTEBufferSizeInRequestsLuma;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4826  						v->PTEBufferSizeInRequestsForChroma = v->PTEBufferSizeInRequestsChroma;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4827  					}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4828  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4829  					v->PDEAndMetaPTEBytesPerFrameC = CalculateVMAndRowBytes(
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4830  							mode_lib,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4831  							v->DCCEnable[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4832  							v->Read256BlockHeightC[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4833  							v->Read256BlockWidthC[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4834  							v->SourcePixelFormat[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4835  							v->SurfaceTiling[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4836  							v->BytePerPixelC[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4837  							v->SourceScan[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4838  							v->SwathWidthCThisState[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4839  							v->ViewportHeightChroma[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4840  							v->GPUVMEnable,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4841  							v->HostVMEnable,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4842  							v->HostVMMaxNonCachedPageTableLevels,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4843  							v->GPUVMMinPageSize,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4844  							v->HostVMMinPageSize,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4845  							v->PTEBufferSizeInRequestsForChroma,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4846  							v->PitchC[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4847  							0.0,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4848  							&v->MacroTileWidthC[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4849  							&v->MetaRowBytesC,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4850  							&v->DPTEBytesPerRowC,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4851  							&v->PTEBufferSizeNotExceededC[i][j][k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4852  							&v->dummyinteger7,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4853  							&v->dpte_row_height_chroma[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4854  							&v->dummyinteger28,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4855  							&v->dummyinteger26,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4856  							&v->dummyinteger23,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4857  							&v->meta_row_height_chroma[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4858  							&v->dummyinteger8,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4859  							&v->dummyinteger9,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4860  							&v->dummyinteger19,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4861  							&v->dummyinteger20,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4862  							&v->dummyinteger17,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4863  							&v->dummyinteger10,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4864  							&v->dummyinteger11);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4865  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4866  					v->PrefetchLinesC[i][j][k] = CalculatePrefetchSourceLines(
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4867  							mode_lib,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4868  							v->VRatioChroma[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4869  							v->VTAPsChroma[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4870  							v->Interlace[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4871  							v->ProgressiveToInterlaceUnitInOPP,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4872  							v->SwathHeightCThisState[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4873  							v->ViewportYStartC[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4874  							&v->PrefillC[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4875  							&v->MaxNumSwC[k]);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4876  				} else {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4877  					v->PTEBufferSizeInRequestsForLuma = v->PTEBufferSizeInRequestsLuma + v->PTEBufferSizeInRequestsChroma;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4878  					v->PTEBufferSizeInRequestsForChroma = 0;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4879  					v->PDEAndMetaPTEBytesPerFrameC = 0.0;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4880  					v->MetaRowBytesC = 0.0;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4881  					v->DPTEBytesPerRowC = 0.0;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4882  					v->PrefetchLinesC[i][j][k] = 0.0;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4883  					v->PTEBufferSizeNotExceededC[i][j][k] = true;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4884  				}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4885  				v->PDEAndMetaPTEBytesPerFrameY = CalculateVMAndRowBytes(
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4886  						mode_lib,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4887  						v->DCCEnable[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4888  						v->Read256BlockHeightY[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4889  						v->Read256BlockWidthY[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4890  						v->SourcePixelFormat[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4891  						v->SurfaceTiling[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4892  						v->BytePerPixelY[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4893  						v->SourceScan[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4894  						v->SwathWidthYThisState[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4895  						v->ViewportHeight[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4896  						v->GPUVMEnable,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4897  						v->HostVMEnable,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4898  						v->HostVMMaxNonCachedPageTableLevels,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4899  						v->GPUVMMinPageSize,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4900  						v->HostVMMinPageSize,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4901  						v->PTEBufferSizeInRequestsForLuma,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4902  						v->PitchY[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4903  						v->DCCMetaPitchY[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4904  						&v->MacroTileWidthY[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4905  						&v->MetaRowBytesY,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4906  						&v->DPTEBytesPerRowY,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4907  						&v->PTEBufferSizeNotExceededY[i][j][k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4908  						&v->dummyinteger7,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4909  						&v->dpte_row_height[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4910  						&v->dummyinteger29,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4911  						&v->dummyinteger27,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4912  						&v->dummyinteger24,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4913  						&v->meta_row_height[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4914  						&v->dummyinteger25,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4915  						&v->dpte_group_bytes[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4916  						&v->dummyinteger21,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4917  						&v->dummyinteger22,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4918  						&v->dummyinteger18,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4919  						&v->dummyinteger5,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4920  						&v->dummyinteger6);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4921  				v->PrefetchLinesY[i][j][k] = CalculatePrefetchSourceLines(
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4922  						mode_lib,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4923  						v->VRatio[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4924  						v->vtaps[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4925  						v->Interlace[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4926  						v->ProgressiveToInterlaceUnitInOPP,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4927  						v->SwathHeightYThisState[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4928  						v->ViewportYStartY[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4929  						&v->PrefillY[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4930  						&v->MaxNumSwY[k]);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4931  				v->PDEAndMetaPTEBytesPerFrame[i][j][k] = v->PDEAndMetaPTEBytesPerFrameY + v->PDEAndMetaPTEBytesPerFrameC;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4932  				v->MetaRowBytes[i][j][k] = v->MetaRowBytesY + v->MetaRowBytesC;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4933  				v->DPTEBytesPerRow[i][j][k] = v->DPTEBytesPerRowY + v->DPTEBytesPerRowC;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4934  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4935  				CalculateRowBandwidth(
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4936  						v->GPUVMEnable,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4937  						v->SourcePixelFormat[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4938  						v->VRatio[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4939  						v->VRatioChroma[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4940  						v->DCCEnable[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4941  						v->HTotal[k] / v->PixelClock[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4942  						v->MetaRowBytesY,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4943  						v->MetaRowBytesC,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4944  						v->meta_row_height[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4945  						v->meta_row_height_chroma[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4946  						v->DPTEBytesPerRowY,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4947  						v->DPTEBytesPerRowC,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4948  						v->dpte_row_height[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4949  						v->dpte_row_height_chroma[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4950  						&v->meta_row_bandwidth[i][j][k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4951  						&v->dpte_row_bandwidth[i][j][k]);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4952  			}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4953  			v->UrgLatency[i] = CalculateUrgentLatency(
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4954  					v->UrgentLatencyPixelDataOnly,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4955  					v->UrgentLatencyPixelMixedWithVMData,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4956  					v->UrgentLatencyVMDataOnly,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4957  					v->DoUrgentLatencyAdjustment,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4958  					v->UrgentLatencyAdjustmentFabricClockComponent,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4959  					v->UrgentLatencyAdjustmentFabricClockReference,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4960  					v->FabricClockPerState[i]);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4961  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4962  			for (k = 0; k < v->NumberOfActivePlanes; ++k) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4963  				CalculateUrgentBurstFactor(
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4964  						v->swath_width_luma_ub_this_state[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4965  						v->swath_width_chroma_ub_this_state[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4966  						v->SwathHeightYThisState[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4967  						v->SwathHeightCThisState[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4968  						v->HTotal[k] / v->PixelClock[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4969  						v->UrgLatency[i],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4970  						v->CursorBufferSize,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4971  						v->CursorWidth[k][0],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4972  						v->CursorBPP[k][0],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4973  						v->VRatio[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4974  						v->VRatioChroma[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4975  						v->BytePerPixelInDETY[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4976  						v->BytePerPixelInDETC[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4977  						v->DETBufferSizeYThisState[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4978  						v->DETBufferSizeCThisState[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4979  						&v->UrgentBurstFactorCursor[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4980  						&v->UrgentBurstFactorLuma[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4981  						&v->UrgentBurstFactorChroma[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4982  						&NotUrgentLatencyHiding[k]);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4983  			}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4984  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4985  			v->NotEnoughUrgentLatencyHidingA[i][j] = false;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4986  			for (k = 0; k < v->NumberOfActivePlanes; ++k) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4987  				if (NotUrgentLatencyHiding[k]) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4988  					v->NotEnoughUrgentLatencyHidingA[i][j] = true;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4989  				}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4990  			}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4991  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4992  			for (k = 0; k < v->NumberOfActivePlanes; ++k) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4993  				v->VActivePixelBandwidth[i][j][k] = v->ReadBandwidthLuma[k] * v->UrgentBurstFactorLuma[k]
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4994  						+ v->ReadBandwidthChroma[k] * v->UrgentBurstFactorChroma[k];
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4995  				v->VActiveCursorBandwidth[i][j][k] = v->cursor_bw[k] * v->UrgentBurstFactorCursor[k];
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4996  			}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4997  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4998  			v->TotalVActivePixelBandwidth[i][j] = 0;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  4999  			v->TotalVActiveCursorBandwidth[i][j] = 0;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5000  			v->TotalMetaRowBandwidth[i][j] = 0;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5001  			v->TotalDPTERowBandwidth[i][j] = 0;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5002  			for (k = 0; k < v->NumberOfActivePlanes; ++k) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5003  				v->TotalVActivePixelBandwidth[i][j] = v->TotalVActivePixelBandwidth[i][j] + v->VActivePixelBandwidth[i][j][k];
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5004  				v->TotalVActiveCursorBandwidth[i][j] = v->TotalVActiveCursorBandwidth[i][j] + v->VActiveCursorBandwidth[i][j][k];
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5005  				v->TotalMetaRowBandwidth[i][j] = v->TotalMetaRowBandwidth[i][j] + v->NoOfDPP[i][j][k] * v->meta_row_bandwidth[i][j][k];
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5006  				v->TotalDPTERowBandwidth[i][j] = v->TotalDPTERowBandwidth[i][j] + v->NoOfDPP[i][j][k] * v->dpte_row_bandwidth[i][j][k];
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5007  			}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5008  		}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5009  	}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5010  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5011  	//Calculate Return BW
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5012  	for (i = 0; i < v->soc.num_states; ++i) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5013  		for (j = 0; j <= 1; ++j) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5014  			for (k = 0; k < v->NumberOfActivePlanes; k++) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5015  				if (v->BlendingAndTiming[k] == k) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5016  					if (v->WritebackEnable[k] == true) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5017  						v->WritebackDelayTime[k] = v->WritebackLatency
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5018  								+ CalculateWriteBackDelay(
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5019  										v->WritebackPixelFormat[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5020  										v->WritebackHRatio[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5021  										v->WritebackVRatio[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5022  										v->WritebackVTaps[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5023  										v->WritebackDestinationWidth[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5024  										v->WritebackDestinationHeight[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5025  										v->WritebackSourceHeight[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5026  										v->HTotal[k]) / v->RequiredDISPCLK[i][j];
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5027  					} else {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5028  						v->WritebackDelayTime[k] = 0.0;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5029  					}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5030  					for (m = 0; m < v->NumberOfActivePlanes; m++) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5031  						if (v->BlendingAndTiming[m] == k && v->WritebackEnable[m] == true) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5032  							v->WritebackDelayTime[k] = dml_max(
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5033  									v->WritebackDelayTime[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5034  									v->WritebackLatency
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5035  											+ CalculateWriteBackDelay(
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5036  													v->WritebackPixelFormat[m],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5037  													v->WritebackHRatio[m],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5038  													v->WritebackVRatio[m],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5039  													v->WritebackVTaps[m],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5040  													v->WritebackDestinationWidth[m],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5041  													v->WritebackDestinationHeight[m],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5042  													v->WritebackSourceHeight[m],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5043  													v->HTotal[m]) / v->RequiredDISPCLK[i][j]);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5044  						}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5045  					}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5046  				}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5047  			}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5048  			for (k = 0; k < v->NumberOfActivePlanes; k++) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5049  				for (m = 0; m < v->NumberOfActivePlanes; m++) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5050  					if (v->BlendingAndTiming[k] == m) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5051  						v->WritebackDelayTime[k] = v->WritebackDelayTime[m];
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5052  					}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5053  				}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5054  			}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5055  			v->MaxMaxVStartup[i][j] = 0;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5056  			for (k = 0; k < v->NumberOfActivePlanes; k++) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5057  				v->MaximumVStartup[i][j][k] =
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5058  						(v->Interlace[k] && !v->ProgressiveToInterlaceUnitInOPP) ?
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5059  								dml_floor((v->VTotal[k] - v->VActive[k]) / 2.0, 1.0) :
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5060  								v->VTotal[k] - v->VActive[k]
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5061  										- dml_max(
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5062  												1.0,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5063  												dml_ceil(
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5064  														1.0 * v->WritebackDelayTime[k]
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5065  																/ (v->HTotal[k]
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5066  																		/ v->PixelClock[k]),
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5067  														1.0));
5d9e7fe8ef9b1c Nikola Cornij       2021-06-07  5068  				if (v->MaximumVStartup[i][j][k] > 1023)
5d9e7fe8ef9b1c Nikola Cornij       2021-06-07  5069  					v->MaximumVStartup[i][j][k] = 1023;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5070  				v->MaxMaxVStartup[i][j] = dml_max(v->MaxMaxVStartup[i][j], v->MaximumVStartup[i][j][k]);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5071  			}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5072  		}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5073  	}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5074  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5075  	ReorderingBytes = v->NumberOfChannels
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5076  			* dml_max3(
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5077  					v->UrgentOutOfOrderReturnPerChannelPixelDataOnly,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5078  					v->UrgentOutOfOrderReturnPerChannelPixelMixedWithVMData,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5079  					v->UrgentOutOfOrderReturnPerChannelVMDataOnly);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5080  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5081  	for (i = 0; i < v->soc.num_states; ++i) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5082  		for (j = 0; j <= 1; ++j) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5083  			v->DCFCLKState[i][j] = v->DCFCLKPerState[i];
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5084  		}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5085  	}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5086  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5087  	if (v->UseMinimumRequiredDCFCLK == true) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5088  		UseMinimumDCFCLK(
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5089  				mode_lib,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5090  				v->MaxInterDCNTileRepeaters,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5091  				MaxPrefetchMode,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5092  				v->DRAMClockChangeLatency,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5093  				v->SREnterPlusExitTime,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5094  				v->ReturnBusWidth,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5095  				v->RoundTripPingLatencyCycles,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5096  				ReorderingBytes,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5097  				v->PixelChunkSizeInKByte,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5098  				v->MetaChunkSize,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5099  				v->GPUVMEnable,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5100  				v->GPUVMMaxPageTableLevels,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5101  				v->HostVMEnable,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5102  				v->NumberOfActivePlanes,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5103  				v->HostVMMinPageSize,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5104  				v->HostVMMaxNonCachedPageTableLevels,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5105  				v->DynamicMetadataVMEnabled,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5106  				v->ImmediateFlipRequirement,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5107  				v->ProgressiveToInterlaceUnitInOPP,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5108  				v->MaxAveragePercentOfIdealFabricAndSDPPortBWDisplayCanUseInNormalSystemOperation,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5109  				v->PercentOfIdealFabricAndSDPPortBWReceivedAfterUrgLatency,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5110  				v->VTotal,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5111  				v->VActive,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5112  				v->DynamicMetadataTransmittedBytes,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5113  				v->DynamicMetadataLinesBeforeActiveRequired,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5114  				v->Interlace,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5115  				v->RequiredDPPCLK,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5116  				v->RequiredDISPCLK,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5117  				v->UrgLatency,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5118  				v->NoOfDPP,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5119  				v->ProjectedDCFCLKDeepSleep,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5120  				v->MaximumVStartup,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5121  				v->TotalVActivePixelBandwidth,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5122  				v->TotalVActiveCursorBandwidth,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5123  				v->TotalMetaRowBandwidth,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5124  				v->TotalDPTERowBandwidth,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5125  				v->TotalNumberOfActiveDPP,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5126  				v->TotalNumberOfDCCActiveDPP,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5127  				v->dpte_group_bytes,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5128  				v->PrefetchLinesY,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5129  				v->PrefetchLinesC,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5130  				v->swath_width_luma_ub_all_states,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5131  				v->swath_width_chroma_ub_all_states,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5132  				v->BytePerPixelY,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5133  				v->BytePerPixelC,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5134  				v->HTotal,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5135  				v->PixelClock,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5136  				v->PDEAndMetaPTEBytesPerFrame,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5137  				v->DPTEBytesPerRow,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5138  				v->MetaRowBytes,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5139  				v->DynamicMetadataEnable,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5140  				v->VActivePixelBandwidth,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5141  				v->VActiveCursorBandwidth,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5142  				v->ReadBandwidthLuma,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5143  				v->ReadBandwidthChroma,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5144  				v->DCFCLKPerState,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5145  				v->DCFCLKState);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5146  	}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5147  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5148  	for (i = 0; i < v->soc.num_states; ++i) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5149  		for (j = 0; j <= 1; ++j) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5150  			double IdealFabricAndSDPPortBandwidthPerState = dml_min(
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5151  					v->ReturnBusWidth * v->DCFCLKState[i][j],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5152  					v->FabricClockPerState[i] * v->FabricDatapathToDCNDataReturn);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5153  			double IdealDRAMBandwidthPerState = v->DRAMSpeedPerState[i] * v->NumberOfChannels * v->DRAMChannelWidth;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5154  			double PixelDataOnlyReturnBWPerState = dml_min(
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5155  					IdealFabricAndSDPPortBandwidthPerState * v->PercentOfIdealFabricAndSDPPortBWReceivedAfterUrgLatency / 100.0,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5156  					IdealDRAMBandwidthPerState * v->PercentOfIdealDRAMBWReceivedAfterUrgLatencyPixelDataOnly / 100.0);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5157  			double PixelMixedWithVMDataReturnBWPerState = dml_min(
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5158  					IdealFabricAndSDPPortBandwidthPerState * v->PercentOfIdealFabricAndSDPPortBWReceivedAfterUrgLatency / 100.0,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5159  					IdealDRAMBandwidthPerState * v->PercentOfIdealDRAMBWReceivedAfterUrgLatencyPixelMixedWithVMData / 100.0);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5160  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5161  			if (v->HostVMEnable != true) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5162  				v->ReturnBWPerState[i][j] = PixelDataOnlyReturnBWPerState;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5163  			} else {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5164  				v->ReturnBWPerState[i][j] = PixelMixedWithVMDataReturnBWPerState;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5165  			}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5166  		}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5167  	}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5168  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5169  	//Re-ordering Buffer Support Check
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5170  	for (i = 0; i < v->soc.num_states; ++i) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5171  		for (j = 0; j <= 1; ++j) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5172  			if ((v->ROBBufferSizeInKByte - v->PixelChunkSizeInKByte) * 1024 / v->ReturnBWPerState[i][j]
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5173  					> (v->RoundTripPingLatencyCycles + __DML_ARB_TO_RET_DELAY__) / v->DCFCLKState[i][j] + ReorderingBytes / v->ReturnBWPerState[i][j]) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5174  				v->ROBSupport[i][j] = true;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5175  			} else {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5176  				v->ROBSupport[i][j] = false;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5177  			}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5178  		}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5179  	}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5180  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5181  	//Vertical Active BW support check
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5182  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5183  	MaxTotalVActiveRDBandwidth = 0;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5184  	for (k = 0; k < v->NumberOfActivePlanes; ++k) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5185  		MaxTotalVActiveRDBandwidth = MaxTotalVActiveRDBandwidth + v->ReadBandwidthLuma[k] + v->ReadBandwidthChroma[k];
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5186  	}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5187  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5188  	for (i = 0; i < v->soc.num_states; ++i) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5189  		for (j = 0; j <= 1; ++j) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5190  			v->MaxTotalVerticalActiveAvailableBandwidth[i][j] = dml_min(
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5191  					dml_min(
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5192  							v->ReturnBusWidth * v->DCFCLKState[i][j],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5193  							v->FabricClockPerState[i] * v->FabricDatapathToDCNDataReturn)
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5194  							* v->MaxAveragePercentOfIdealFabricAndSDPPortBWDisplayCanUseInNormalSystemOperation / 100,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5195  					v->DRAMSpeedPerState[i] * v->NumberOfChannels * v->DRAMChannelWidth
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5196  							* v->MaxAveragePercentOfIdealDRAMBWDisplayCanUseInNormalSystemOperation / 100);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5197  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5198  			if (MaxTotalVActiveRDBandwidth <= v->MaxTotalVerticalActiveAvailableBandwidth[i][j]) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5199  				v->TotalVerticalActiveBandwidthSupport[i][j] = true;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5200  			} else {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5201  				v->TotalVerticalActiveBandwidthSupport[i][j] = false;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5202  			}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5203  		}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5204  	}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5205  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5206  	v->UrgentLatency = CalculateUrgentLatency(
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5207  			v->UrgentLatencyPixelDataOnly,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5208  			v->UrgentLatencyPixelMixedWithVMData,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5209  			v->UrgentLatencyVMDataOnly,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5210  			v->DoUrgentLatencyAdjustment,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5211  			v->UrgentLatencyAdjustmentFabricClockComponent,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5212  			v->UrgentLatencyAdjustmentFabricClockReference,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5213  			v->FabricClock);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5214  	//Prefetch Check
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5215  	for (i = 0; i < v->soc.num_states; ++i) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5216  		for (j = 0; j <= 1; ++j) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5217  			double VMDataOnlyReturnBWPerState;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5218  			double HostVMInefficiencyFactor = 1;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5219  			int NextPrefetchModeState = MinPrefetchMode;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5220  			bool UnboundedRequestEnabledThisState = false;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5221  			int CompressedBufferSizeInkByteThisState = 0;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5222  			double dummy;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5223  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5224  			v->TimeCalc = 24 / v->ProjectedDCFCLKDeepSleep[i][j];
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5225  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5226  			v->BandwidthWithoutPrefetchSupported[i][j] = true;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5227  			if (v->TotalVActivePixelBandwidth[i][j] + v->TotalVActiveCursorBandwidth[i][j] + v->TotalMetaRowBandwidth[i][j]
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5228  					+ v->TotalDPTERowBandwidth[i][j] > v->ReturnBWPerState[i][j] || v->NotEnoughUrgentLatencyHidingA[i][j]) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5229  				v->BandwidthWithoutPrefetchSupported[i][j] = false;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5230  			}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5231  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5232  			for (k = 0; k < v->NumberOfActivePlanes; ++k) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5233  				v->NoOfDPPThisState[k] = v->NoOfDPP[i][j][k];
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5234  				v->swath_width_luma_ub_this_state[k] = v->swath_width_luma_ub_all_states[i][j][k];
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5235  				v->swath_width_chroma_ub_this_state[k] = v->swath_width_chroma_ub_all_states[i][j][k];
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5236  				v->SwathWidthYThisState[k] = v->SwathWidthYAllStates[i][j][k];
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5237  				v->SwathWidthCThisState[k] = v->SwathWidthCAllStates[i][j][k];
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5238  				v->SwathHeightYThisState[k] = v->SwathHeightYAllStates[i][j][k];
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5239  				v->SwathHeightCThisState[k] = v->SwathHeightCAllStates[i][j][k];
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5240  				v->DETBufferSizeYThisState[k] = v->DETBufferSizeYAllStates[i][j][k];
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5241  				v->DETBufferSizeCThisState[k] = v->DETBufferSizeCAllStates[i][j][k];
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5242  			}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5243  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5244  			VMDataOnlyReturnBWPerState = dml_min(
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5245  					dml_min(
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5246  							v->ReturnBusWidth * v->DCFCLKState[i][j],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5247  							v->FabricClockPerState[i] * v->FabricDatapathToDCNDataReturn)
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5248  							* v->PercentOfIdealFabricAndSDPPortBWReceivedAfterUrgLatency / 100.0,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5249  					v->DRAMSpeedPerState[i] * v->NumberOfChannels * v->DRAMChannelWidth
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5250  							* v->PercentOfIdealDRAMBWReceivedAfterUrgLatencyVMDataOnly / 100.0);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5251  			if (v->GPUVMEnable && v->HostVMEnable)
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5252  				HostVMInefficiencyFactor = v->ReturnBWPerState[i][j] / VMDataOnlyReturnBWPerState;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5253  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5254  			v->ExtraLatency = CalculateExtraLatency(
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5255  					v->RoundTripPingLatencyCycles,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5256  					ReorderingBytes,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5257  					v->DCFCLKState[i][j],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5258  					v->TotalNumberOfActiveDPP[i][j],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5259  					v->PixelChunkSizeInKByte,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5260  					v->TotalNumberOfDCCActiveDPP[i][j],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5261  					v->MetaChunkSize,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5262  					v->ReturnBWPerState[i][j],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5263  					v->GPUVMEnable,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5264  					v->HostVMEnable,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5265  					v->NumberOfActivePlanes,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5266  					v->NoOfDPPThisState,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5267  					v->dpte_group_bytes,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5268  					HostVMInefficiencyFactor,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5269  					v->HostVMMinPageSize,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5270  					v->HostVMMaxNonCachedPageTableLevels);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5271  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5272  			v->NextMaxVStartup = v->MaxMaxVStartup[i][j];
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5273  			do {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5274  				v->PrefetchModePerState[i][j] = NextPrefetchModeState;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5275  				v->MaxVStartup = v->NextMaxVStartup;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5276  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5277  				v->TWait = CalculateTWait(
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5278  						v->PrefetchModePerState[i][j],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5279  						v->DRAMClockChangeLatency,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5280  						v->UrgLatency[i],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5281  						v->SREnterPlusExitTime);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5282  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5283  				for (k = 0; k < v->NumberOfActivePlanes; k++) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5284  					Pipe myPipe;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5285  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5286  					myPipe.DPPCLK = v->RequiredDPPCLK[i][j][k];
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5287  					myPipe.DISPCLK = v->RequiredDISPCLK[i][j];
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5288  					myPipe.PixelClock = v->PixelClock[k];
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5289  					myPipe.DCFCLKDeepSleep = v->ProjectedDCFCLKDeepSleep[i][j];
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5290  					myPipe.DPPPerPlane = v->NoOfDPP[i][j][k];
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5291  					myPipe.ScalerEnabled = v->ScalerEnabled[k];
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5292  					myPipe.SourceScan = v->SourceScan[k];
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5293  					myPipe.BlockWidth256BytesY = v->Read256BlockWidthY[k];
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5294  					myPipe.BlockHeight256BytesY = v->Read256BlockHeightY[k];
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5295  					myPipe.BlockWidth256BytesC = v->Read256BlockWidthC[k];
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5296  					myPipe.BlockHeight256BytesC = v->Read256BlockHeightC[k];
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5297  					myPipe.InterlaceEnable = v->Interlace[k];
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5298  					myPipe.NumberOfCursors = v->NumberOfCursors[k];
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5299  					myPipe.VBlank = v->VTotal[k] - v->VActive[k];
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5300  					myPipe.HTotal = v->HTotal[k];
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5301  					myPipe.DCCEnable = v->DCCEnable[k];
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5302  					myPipe.ODMCombineIsEnabled = v->ODMCombineEnablePerState[i][k] == dm_odm_combine_mode_4to1
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5303  							|| v->ODMCombineEnablePerState[i][k] == dm_odm_combine_mode_2to1;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5304  					myPipe.SourcePixelFormat = v->SourcePixelFormat[k];
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5305  					myPipe.BytePerPixelY = v->BytePerPixelY[k];
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5306  					myPipe.BytePerPixelC = v->BytePerPixelC[k];
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5307  					myPipe.ProgressiveToInterlaceUnitInOPP = v->ProgressiveToInterlaceUnitInOPP;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5308  					v->NoTimeForPrefetch[i][j][k] = CalculatePrefetchSchedule(
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5309  							mode_lib,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5310  							HostVMInefficiencyFactor,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5311  							&myPipe,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5312  							v->DSCDelayPerState[i][k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5313  							v->DPPCLKDelaySubtotal + v->DPPCLKDelayCNVCFormater,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5314  							v->DPPCLKDelaySCL,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5315  							v->DPPCLKDelaySCLLBOnly,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5316  							v->DPPCLKDelayCNVCCursor,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5317  							v->DISPCLKDelaySubtotal,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5318  							v->SwathWidthYThisState[k] / v->HRatio[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5319  							v->OutputFormat[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5320  							v->MaxInterDCNTileRepeaters,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5321  							dml_min(v->MaxVStartup, v->MaximumVStartup[i][j][k]),
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5322  							v->MaximumVStartup[i][j][k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5323  							v->GPUVMMaxPageTableLevels,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5324  							v->GPUVMEnable,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5325  							v->HostVMEnable,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5326  							v->HostVMMaxNonCachedPageTableLevels,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5327  							v->HostVMMinPageSize,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5328  							v->DynamicMetadataEnable[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5329  							v->DynamicMetadataVMEnabled,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5330  							v->DynamicMetadataLinesBeforeActiveRequired[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5331  							v->DynamicMetadataTransmittedBytes[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5332  							v->UrgLatency[i],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5333  							v->ExtraLatency,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5334  							v->TimeCalc,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5335  							v->PDEAndMetaPTEBytesPerFrame[i][j][k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5336  							v->MetaRowBytes[i][j][k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5337  							v->DPTEBytesPerRow[i][j][k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5338  							v->PrefetchLinesY[i][j][k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5339  							v->SwathWidthYThisState[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5340  							v->PrefillY[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5341  							v->MaxNumSwY[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5342  							v->PrefetchLinesC[i][j][k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5343  							v->SwathWidthCThisState[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5344  							v->PrefillC[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5345  							v->MaxNumSwC[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5346  							v->swath_width_luma_ub_this_state[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5347  							v->swath_width_chroma_ub_this_state[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5348  							v->SwathHeightYThisState[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5349  							v->SwathHeightCThisState[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5350  							v->TWait,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5351  							&v->DSTXAfterScaler[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5352  							&v->DSTYAfterScaler[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5353  							&v->LineTimesForPrefetch[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5354  							&v->PrefetchBW[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5355  							&v->LinesForMetaPTE[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5356  							&v->LinesForMetaAndDPTERow[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5357  							&v->VRatioPreY[i][j][k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5358  							&v->VRatioPreC[i][j][k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5359  							&v->RequiredPrefetchPixelDataBWLuma[i][j][k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5360  							&v->RequiredPrefetchPixelDataBWChroma[i][j][k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5361  							&v->NoTimeForDynamicMetadata[i][j][k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5362  							&v->Tno_bw[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5363  							&v->prefetch_vmrow_bw[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5364  							&v->dummy7[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5365  							&v->dummy8[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5366  							&v->dummy13[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5367  							&v->VUpdateOffsetPix[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5368  							&v->VUpdateWidthPix[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5369  							&v->VReadyOffsetPix[k]);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5370  				}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5371  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5372  				for (k = 0; k < v->NumberOfActivePlanes; k++) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5373  					CalculateUrgentBurstFactor(
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5374  							v->swath_width_luma_ub_this_state[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5375  							v->swath_width_chroma_ub_this_state[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5376  							v->SwathHeightYThisState[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5377  							v->SwathHeightCThisState[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5378  							v->HTotal[k] / v->PixelClock[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5379  							v->UrgentLatency,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5380  							v->CursorBufferSize,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5381  							v->CursorWidth[k][0],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5382  							v->CursorBPP[k][0],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5383  							v->VRatioPreY[i][j][k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5384  							v->VRatioPreC[i][j][k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5385  							v->BytePerPixelInDETY[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5386  							v->BytePerPixelInDETC[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5387  							v->DETBufferSizeYThisState[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5388  							v->DETBufferSizeCThisState[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5389  							&v->UrgentBurstFactorCursorPre[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5390  							&v->UrgentBurstFactorLumaPre[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5391  							&v->UrgentBurstFactorChroma[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5392  							&v->NotUrgentLatencyHidingPre[k]);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5393  				}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5394  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5395  				v->MaximumReadBandwidthWithPrefetch = 0.0;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5396  				for (k = 0; k < v->NumberOfActivePlanes; k++) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5397  					v->cursor_bw_pre[k] = v->NumberOfCursors[k] * v->CursorWidth[k][0] * v->CursorBPP[k][0] / 8.0
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5398  							/ (v->HTotal[k] / v->PixelClock[k]) * v->VRatioPreY[i][j][k];
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5399  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5400  					v->MaximumReadBandwidthWithPrefetch =
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5401  							v->MaximumReadBandwidthWithPrefetch
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5402  									+ dml_max4(
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5403  											v->VActivePixelBandwidth[i][j][k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5404  											v->VActiveCursorBandwidth[i][j][k]
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5405  													+ v->NoOfDPP[i][j][k]
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5406  															* (v->meta_row_bandwidth[i][j][k]
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5407  																	+ v->dpte_row_bandwidth[i][j][k]),
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5408  											v->NoOfDPP[i][j][k] * v->prefetch_vmrow_bw[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5409  											v->NoOfDPP[i][j][k]
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5410  													* (v->RequiredPrefetchPixelDataBWLuma[i][j][k]
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5411  															* v->UrgentBurstFactorLumaPre[k]
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5412  															+ v->RequiredPrefetchPixelDataBWChroma[i][j][k]
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5413  																	* v->UrgentBurstFactorChromaPre[k])
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5414  													+ v->cursor_bw_pre[k] * v->UrgentBurstFactorCursorPre[k]);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5415  				}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5416  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5417  				v->NotEnoughUrgentLatencyHidingPre = false;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5418  				for (k = 0; k < v->NumberOfActivePlanes; k++) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5419  					if (v->NotUrgentLatencyHidingPre[k] == true) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5420  						v->NotEnoughUrgentLatencyHidingPre = true;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5421  					}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5422  				}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5423  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5424  				v->PrefetchSupported[i][j] = true;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5425  				if (v->BandwidthWithoutPrefetchSupported[i][j] == false || v->MaximumReadBandwidthWithPrefetch > v->ReturnBWPerState[i][j]
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5426  						|| v->NotEnoughUrgentLatencyHidingPre == 1) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5427  					v->PrefetchSupported[i][j] = false;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5428  				}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5429  				for (k = 0; k < v->NumberOfActivePlanes; k++) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5430  					if (v->LineTimesForPrefetch[k] < 2.0 || v->LinesForMetaPTE[k] >= 32.0 || v->LinesForMetaAndDPTERow[k] >= 16.0
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5431  							|| v->NoTimeForPrefetch[i][j][k] == true) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5432  						v->PrefetchSupported[i][j] = false;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5433  					}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5434  				}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5435  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5436  				v->DynamicMetadataSupported[i][j] = true;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5437  				for (k = 0; k < v->NumberOfActivePlanes; ++k) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5438  					if (v->NoTimeForDynamicMetadata[i][j][k] == true) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5439  						v->DynamicMetadataSupported[i][j] = false;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5440  					}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5441  				}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5442  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5443  				v->VRatioInPrefetchSupported[i][j] = true;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5444  				for (k = 0; k < v->NumberOfActivePlanes; k++) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5445  					if (v->VRatioPreY[i][j][k] > 4.0 || v->VRatioPreC[i][j][k] > 4.0 || v->NoTimeForPrefetch[i][j][k] == true) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5446  						v->VRatioInPrefetchSupported[i][j] = false;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5447  					}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5448  				}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5449  				v->AnyLinesForVMOrRowTooLarge = false;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5450  				for (k = 0; k < v->NumberOfActivePlanes; ++k) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5451  					if (v->LinesForMetaAndDPTERow[k] >= 16 || v->LinesForMetaPTE[k] >= 32) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5452  						v->AnyLinesForVMOrRowTooLarge = true;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5453  					}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5454  				}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5455  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5456  				v->NextPrefetchMode = v->NextPrefetchMode + 1;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5457  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5458  				if (v->PrefetchSupported[i][j] == true && v->VRatioInPrefetchSupported[i][j] == true) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5459  					v->BandwidthAvailableForImmediateFlip = v->ReturnBWPerState[i][j];
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5460  					for (k = 0; k < v->NumberOfActivePlanes; k++) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5461  						v->BandwidthAvailableForImmediateFlip = v->BandwidthAvailableForImmediateFlip
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5462  								- dml_max(
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5463  										v->VActivePixelBandwidth[i][j][k] + v->VActiveCursorBandwidth[i][j][k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5464  										v->NoOfDPP[i][j][k]
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5465  												* (v->RequiredPrefetchPixelDataBWLuma[i][j][k]
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5466  														* v->UrgentBurstFactorLumaPre[k]
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5467  														+ v->RequiredPrefetchPixelDataBWChroma[i][j][k]
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5468  																* v->UrgentBurstFactorChromaPre[k])
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5469  												+ v->cursor_bw_pre[k] * v->UrgentBurstFactorCursorPre[k]);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5470  					}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5471  					v->TotImmediateFlipBytes = 0.0;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5472  					for (k = 0; k < v->NumberOfActivePlanes; k++) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5473  						v->TotImmediateFlipBytes = v->TotImmediateFlipBytes
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5474  								+ v->NoOfDPP[i][j][k] * v->PDEAndMetaPTEBytesPerFrame[i][j][k] + v->MetaRowBytes[i][j][k]
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5475  								+ v->DPTEBytesPerRow[i][j][k];
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5476  					}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5477  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5478  					for (k = 0; k < v->NumberOfActivePlanes; k++) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5479  						CalculateFlipSchedule(
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5480  								mode_lib,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5481  								HostVMInefficiencyFactor,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5482  								v->ExtraLatency,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5483  								v->UrgLatency[i],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5484  								v->GPUVMMaxPageTableLevels,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5485  								v->HostVMEnable,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5486  								v->HostVMMaxNonCachedPageTableLevels,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5487  								v->GPUVMEnable,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5488  								v->HostVMMinPageSize,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5489  								v->PDEAndMetaPTEBytesPerFrame[i][j][k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5490  								v->MetaRowBytes[i][j][k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5491  								v->DPTEBytesPerRow[i][j][k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5492  								v->BandwidthAvailableForImmediateFlip,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5493  								v->TotImmediateFlipBytes,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5494  								v->SourcePixelFormat[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5495  								v->HTotal[k] / v->PixelClock[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5496  								v->VRatio[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5497  								v->VRatioChroma[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5498  								v->Tno_bw[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5499  								v->DCCEnable[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5500  								v->dpte_row_height[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5501  								v->meta_row_height[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5502  								v->dpte_row_height_chroma[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5503  								v->meta_row_height_chroma[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5504  								&v->DestinationLinesToRequestVMInImmediateFlip[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5505  								&v->DestinationLinesToRequestRowInImmediateFlip[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5506  								&v->final_flip_bw[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5507  								&v->ImmediateFlipSupportedForPipe[k]);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5508  					}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5509  					v->total_dcn_read_bw_with_flip = 0.0;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5510  					for (k = 0; k < v->NumberOfActivePlanes; k++) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5511  						v->total_dcn_read_bw_with_flip = v->total_dcn_read_bw_with_flip
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5512  								+ dml_max3(
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5513  										v->NoOfDPP[i][j][k] * v->prefetch_vmrow_bw[k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5514  										v->NoOfDPP[i][j][k] * v->final_flip_bw[k] + v->VActivePixelBandwidth[i][j][k]
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5515  												+ v->VActiveCursorBandwidth[i][j][k],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5516  										v->NoOfDPP[i][j][k]
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5517  												* (v->final_flip_bw[k]
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5518  														+ v->RequiredPrefetchPixelDataBWLuma[i][j][k]
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5519  																* v->UrgentBurstFactorLumaPre[k]
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5520  														+ v->RequiredPrefetchPixelDataBWChroma[i][j][k]
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5521  																* v->UrgentBurstFactorChromaPre[k])
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5522  												+ v->cursor_bw_pre[k] * v->UrgentBurstFactorCursorPre[k]);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5523  					}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5524  					v->ImmediateFlipSupportedForState[i][j] = true;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5525  					if (v->total_dcn_read_bw_with_flip > v->ReturnBWPerState[i][j]) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5526  						v->ImmediateFlipSupportedForState[i][j] = false;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5527  					}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5528  					for (k = 0; k < v->NumberOfActivePlanes; k++) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5529  						if (v->ImmediateFlipSupportedForPipe[k] == false) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5530  							v->ImmediateFlipSupportedForState[i][j] = false;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5531  						}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5532  					}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5533  				} else {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5534  					v->ImmediateFlipSupportedForState[i][j] = false;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5535  				}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5536  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5537  				if (v->MaxVStartup <= __DML_VBA_MIN_VSTARTUP__ || v->AnyLinesForVMOrRowTooLarge == false) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5538  					v->NextMaxVStartup = v->MaxMaxVStartup[i][j];
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5539  					NextPrefetchModeState = NextPrefetchModeState + 1;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5540  				} else {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5541  					v->NextMaxVStartup = v->NextMaxVStartup - 1;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5542  				}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5543  				v->NextPrefetchMode = v->NextPrefetchMode + 1;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5544  			} while (!((v->PrefetchSupported[i][j] == true && v->DynamicMetadataSupported[i][j] == true && v->VRatioInPrefetchSupported[i][j] == true
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5545  					&& ((v->HostVMEnable == false && v->ImmediateFlipRequirement != dm_immediate_flip_required)
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5546  							|| v->ImmediateFlipSupportedForState[i][j] == true))
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5547  					|| (v->NextMaxVStartup == v->MaxMaxVStartup[i][j] && NextPrefetchModeState > MaxPrefetchMode)));
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5548  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5549  			CalculateUnboundedRequestAndCompressedBufferSize(
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5550  					v->DETBufferSizeInKByte[0],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5551  					v->ConfigReturnBufferSizeInKByte,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5552  					v->UseUnboundedRequesting,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5553  					v->TotalNumberOfActiveDPP[i][j],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5554  					NoChroma,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5555  					v->MaxNumDPP,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5556  					v->CompressedBufferSegmentSizeInkByte,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5557  					v->Output,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5558  					&UnboundedRequestEnabledThisState,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5559  					&CompressedBufferSizeInkByteThisState);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5560  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5561  			CalculateWatermarksAndDRAMSpeedChangeSupport(
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5562  					mode_lib,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5563  					v->PrefetchModePerState[i][j],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5564  					v->NumberOfActivePlanes,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5565  					v->MaxLineBufferLines,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5566  					v->LineBufferSize,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5567  					v->WritebackInterfaceBufferSize,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5568  					v->DCFCLKState[i][j],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5569  					v->ReturnBWPerState[i][j],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5570  					v->SynchronizedVBlank,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5571  					v->dpte_group_bytes,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5572  					v->MetaChunkSize,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5573  					v->UrgLatency[i],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5574  					v->ExtraLatency,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5575  					v->WritebackLatency,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5576  					v->WritebackChunkSize,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5577  					v->SOCCLKPerState[i],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5578  					v->DRAMClockChangeLatency,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5579  					v->SRExitTime,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5580  					v->SREnterPlusExitTime,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5581  					v->SRExitZ8Time,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5582  					v->SREnterPlusExitZ8Time,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5583  					v->ProjectedDCFCLKDeepSleep[i][j],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5584  					v->DETBufferSizeYThisState,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5585  					v->DETBufferSizeCThisState,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5586  					v->SwathHeightYThisState,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5587  					v->SwathHeightCThisState,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5588  					v->LBBitPerPixel,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5589  					v->SwathWidthYThisState,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5590  					v->SwathWidthCThisState,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5591  					v->HRatio,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5592  					v->HRatioChroma,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5593  					v->vtaps,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5594  					v->VTAPsChroma,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5595  					v->VRatio,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5596  					v->VRatioChroma,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5597  					v->HTotal,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5598  					v->PixelClock,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5599  					v->BlendingAndTiming,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5600  					v->NoOfDPPThisState,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5601  					v->BytePerPixelInDETY,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5602  					v->BytePerPixelInDETC,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5603  					v->DSTXAfterScaler,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5604  					v->DSTYAfterScaler,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5605  					v->WritebackEnable,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5606  					v->WritebackPixelFormat,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5607  					v->WritebackDestinationWidth,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5608  					v->WritebackDestinationHeight,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5609  					v->WritebackSourceHeight,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5610  					UnboundedRequestEnabledThisState,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5611  					CompressedBufferSizeInkByteThisState,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5612  					&v->DRAMClockChangeSupport[i][j],
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5613  					&v->UrgentWatermark,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5614  					&v->WritebackUrgentWatermark,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5615  					&v->DRAMClockChangeWatermark,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5616  					&v->WritebackDRAMClockChangeWatermark,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5617  					&dummy,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5618  					&dummy,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5619  					&dummy,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5620  					&dummy,
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5621  					&v->MinActiveDRAMClockChangeLatencySupported);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5622  		}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5623  	}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5624  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5625  	/*PTE Buffer Size Check*/
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5626  	for (i = 0; i < v->soc.num_states; i++) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5627  		for (j = 0; j < 2; j++) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5628  			v->PTEBufferSizeNotExceeded[i][j] = true;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5629  			for (k = 0; k < v->NumberOfActivePlanes; k++) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5630  				if (v->PTEBufferSizeNotExceededY[i][j][k] == false || v->PTEBufferSizeNotExceededC[i][j][k] == false) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5631  					v->PTEBufferSizeNotExceeded[i][j] = false;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5632  				}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5633  			}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5634  		}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5635  	}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5636  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5637  	/*Cursor Support Check*/
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5638  	v->CursorSupport = true;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5639  	for (k = 0; k < v->NumberOfActivePlanes; k++) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5640  		if (v->CursorWidth[k][0] > 0.0) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5641  			if (v->CursorBPP[k][0] == 64 && v->Cursor64BppSupport == false) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5642  				v->CursorSupport = false;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5643  			}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5644  		}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5645  	}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5646  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5647  	/*Valid Pitch Check*/
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5648  	v->PitchSupport = true;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5649  	for (k = 0; k < v->NumberOfActivePlanes; k++) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5650  		v->AlignedYPitch[k] = dml_ceil(dml_max(v->PitchY[k], v->SurfaceWidthY[k]), v->MacroTileWidthY[k]);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5651  		if (v->DCCEnable[k] == true) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5652  			v->AlignedDCCMetaPitchY[k] = dml_ceil(dml_max(v->DCCMetaPitchY[k], v->SurfaceWidthY[k]), 64.0 * v->Read256BlockWidthY[k]);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5653  		} else {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5654  			v->AlignedDCCMetaPitchY[k] = v->DCCMetaPitchY[k];
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5655  		}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5656  		if (v->SourcePixelFormat[k] != dm_444_64 && v->SourcePixelFormat[k] != dm_444_32 && v->SourcePixelFormat[k] != dm_444_16
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5657  				&& v->SourcePixelFormat[k] != dm_mono_16 && v->SourcePixelFormat[k] != dm_rgbe
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5658  				&& v->SourcePixelFormat[k] != dm_mono_8) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5659  			v->AlignedCPitch[k] = dml_ceil(dml_max(v->PitchC[k], v->SurfaceWidthC[k]), v->MacroTileWidthC[k]);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5660  			if (v->DCCEnable[k] == true) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5661  				v->AlignedDCCMetaPitchC[k] = dml_ceil(
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5662  						dml_max(v->DCCMetaPitchC[k], v->SurfaceWidthC[k]),
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5663  						64.0 * v->Read256BlockWidthC[k]);
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5664  			} else {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5665  				v->AlignedDCCMetaPitchC[k] = v->DCCMetaPitchC[k];
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5666  			}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5667  		} else {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5668  			v->AlignedCPitch[k] = v->PitchC[k];
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5669  			v->AlignedDCCMetaPitchC[k] = v->DCCMetaPitchC[k];
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5670  		}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5671  		if (v->AlignedYPitch[k] > v->PitchY[k] || v->AlignedCPitch[k] > v->PitchC[k]
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5672  				|| v->AlignedDCCMetaPitchY[k] > v->DCCMetaPitchY[k] || v->AlignedDCCMetaPitchC[k] > v->DCCMetaPitchC[k]) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5673  			v->PitchSupport = false;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5674  		}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5675  	}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5676  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5677  	for (k = 0; k < v->NumberOfActivePlanes; k++) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5678  		if (v->ViewportWidth[k] > v->SurfaceWidthY[k] || v->ViewportHeight[k] > v->SurfaceHeightY[k]) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5679  			ViewportExceedsSurface = true;
28a0a14423b855 Wan Jiabing         2021-06-09  5680  			if (v->SourcePixelFormat[k] != dm_444_64 && v->SourcePixelFormat[k] != dm_444_32
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5681  					&& v->SourcePixelFormat[k] != dm_444_16 && v->SourcePixelFormat[k] != dm_444_8
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5682  					&& v->SourcePixelFormat[k] != dm_rgbe) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5683  				if (v->ViewportWidthChroma[k] > v->SurfaceWidthC[k]
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5684  						|| v->ViewportHeightChroma[k] > v->SurfaceHeightC[k]) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5685  					ViewportExceedsSurface = true;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5686  				}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5687  			}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5688  		}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5689  	}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5690  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5691  	/*Mode Support, Voltage State and SOC Configuration*/
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5692  	for (i = v->soc.num_states - 1; i >= 0; i--) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5693  		for (j = 0; j < 2; j++) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5694  			if (v->ScaleRatioAndTapsSupport == true && v->SourceFormatPixelAndScanSupport == true && v->ViewportSizeSupport[i][j] == true
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5695  					&& v->LinkCapacitySupport[i] == true && !P2IWith420 && !DSCOnlyIfNecessaryWithBPP
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5696  					&& !DSC422NativeNotSupported && v->ODMCombine4To1SupportCheckOK[i] == true && v->NotEnoughDSCUnits[i] == false
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5697  					&& v->DTBCLKRequiredMoreThanSupported[i] == false
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5698  					&& v->ROBSupport[i][j] == true && v->DISPCLK_DPPCLK_Support[i][j] == true
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5699  					&& v->TotalAvailablePipesSupport[i][j] == true && EnoughWritebackUnits == true
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5700  					&& v->WritebackLatencySupport == true && v->WritebackScaleRatioAndTapsSupport == true
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5701  					&& v->CursorSupport == true && v->PitchSupport == true && ViewportExceedsSurface == false
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5702  					&& v->PrefetchSupported[i][j] == true && v->DynamicMetadataSupported[i][j] == true
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5703  					&& v->TotalVerticalActiveBandwidthSupport[i][j] == true && v->VRatioInPrefetchSupported[i][j] == true
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5704  					&& v->PTEBufferSizeNotExceeded[i][j] == true && v->NonsupportedDSCInputBPC == false
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5705  					&& ((v->HostVMEnable == false && v->ImmediateFlipRequirement != dm_immediate_flip_required)
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5706  							|| v->ImmediateFlipSupportedForState[i][j] == true)
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5707  					&& FMTBufferExceeded == false) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5708  				v->ModeSupport[i][j] = true;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5709  			} else {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5710  				v->ModeSupport[i][j] = false;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5711  			}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5712  		}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5713  	}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5714  
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5715  	{
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5716  		unsigned int MaximumMPCCombine = 0;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5717  		for (i = v->soc.num_states; i >= 0; i--) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5718  			if (i == v->soc.num_states || v->ModeSupport[i][0] == true || v->ModeSupport[i][1] == true) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5719  				v->VoltageLevel = i;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5720  				v->ModeIsSupported = v->ModeSupport[i][0] == true || v->ModeSupport[i][1] == true;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5721  				if (v->ModeSupport[i][0] == true) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5722  					MaximumMPCCombine = 0;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5723  				} else {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5724  					MaximumMPCCombine = 1;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5725  				}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5726  			}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5727  		}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5728  		v->ImmediateFlipSupport = v->ImmediateFlipSupportedForState[v->VoltageLevel][MaximumMPCCombine];
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5729  		for (k = 0; k <= v->NumberOfActivePlanes - 1; k++) {
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5730  			v->MPCCombineEnable[k] = v->MPCCombine[v->VoltageLevel][MaximumMPCCombine][k];
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5731  			v->DPPPerPlane[k] = v->NoOfDPP[v->VoltageLevel][MaximumMPCCombine][k];
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5732  		}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5733  		v->DCFCLK = v->DCFCLKState[v->VoltageLevel][MaximumMPCCombine];
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5734  		v->DRAMSpeed = v->DRAMSpeedPerState[v->VoltageLevel];
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5735  		v->FabricClock = v->FabricClockPerState[v->VoltageLevel];
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5736  		v->SOCCLK = v->SOCCLKPerState[v->VoltageLevel];
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5737  		v->ReturnBW = v->ReturnBWPerState[v->VoltageLevel][MaximumMPCCombine];
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5738  		v->maxMpcComb = MaximumMPCCombine;
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5739  	}
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5740  }
74458c081fcfb0 Nicholas Kazlauskas 2021-05-19  5741  

:::::: The code at line 3957 was first introduced by commit
:::::: 74458c081fcfb0423877e630de2746daefdb16e4 drm/amd/display: Add DCN3.1 DML calculation support

:::::: TO: Nicholas Kazlauskas <nicholas.kazlauskas@amd.com>
:::::: CC: Alex Deucher <alexander.deucher@amd.com>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202106221843.FaxseTzB-lkp%40intel.com.

--6c2NcOVqGQ03X4Wi
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
HzWQLgbyCAMA

--6c2NcOVqGQ03X4Wi--
