Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBIV3RSCQMGQE7ED3RFQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63b.google.com (mail-pl1-x63b.google.com [IPv6:2607:f8b0:4864:20::63b])
	by mail.lfdr.de (Postfix) with ESMTPS id A2E43386FA1
	for <lists+clang-built-linux@lfdr.de>; Tue, 18 May 2021 03:51:32 +0200 (CEST)
Received: by mail-pl1-x63b.google.com with SMTP id t13-20020a170902dccdb02900f0bc643e1fsf2663408pll.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 17 May 2021 18:51:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621302691; cv=pass;
        d=google.com; s=arc-20160816;
        b=PDIFzfZ04Ve2LcdFhRwZB6ouZRMvvwlU4UaJpcIE3CFRusyI5Sy2F8khJuEhsKHPN1
         nL/AIVkafPtWstIgzU3nQ0jy7g2ye7603EAHdpz8PqEuT+RD906kT/oqp6vFKc49C3VN
         guWVlpRfsebWt66N+1AlnQZ4L5Ul3dLgsm8pRLryNqu/djTAg183lCuE0pGdujL2m6Pa
         pDooHnMj7IRDBqACE3uEqmWiyxY+JjdIkqcRo+seTrO+1nh9j8fUvVK61DchWnPlTjK3
         LgDiFiT3ZhRR3NX9g8/deUkcbVJ1XeqMApCP52JxcwbGyFLtf7rpeH5RLqcbD3J04cDq
         M0CQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=SamyF/7VyGvMQ3+Yct4LskwIw2BkW8u9TYMOQ6KgIvY=;
        b=ngCeSnWYsWV5iA3auE9SFl5aFbQCa9K3XfdGWN2RgqyrsyxPPvVgZP5wJCDcT6XALR
         /IccN/rf0AmMDAxBSJFP/lSAQZD7nXpFmKJd/Mp+E+WRof95MTMjKckZE4myFrjTO428
         CUAo3zSMUsJgjSxBi5g9gh1vm5htnj7mAs/zTg3zC/L0wIKkLXw1SCSmIfa2b6Zn+2hS
         XMxtC2srVYYbsTffC6mOJZIw+pcyNLvanxutJrEy12mwccBYyMvzc4HUu4dRfPXdW7oZ
         3z2doB0e8ffBgu04XkayK7Wvb/nb/pBa6t5x53T/C+i6jfCkajhoDuD573jUQw+cyinx
         C67A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=SamyF/7VyGvMQ3+Yct4LskwIw2BkW8u9TYMOQ6KgIvY=;
        b=KByMXcSqHGl13qNhN9/r4hJJF9ScuVO+t3tM+pAddF57mbtfAfbAk/DFEweazh2pPw
         p9hmRsWmRDrOlWFTQ2UagKOHOyJ85Q3AqcQK4raF2NZJqsOCmF3xPiJw6Ices/emX2Hk
         ZaJphEAhl6MpLJTcbHA+Fa58BeU8qlPnmplqusvKyUWlZpkhL41uJY4fSiR4o+lAtje9
         7TVk0i0Q1Lr+jJ/amvQgq3NmAHMkDbkIvxB7XHhin0SHw1lGfEFgubisWcI+BLZyxPk9
         Iwi+D0gXyd7Pbb2RZqHU2qNwoM6mJrfFYN46s8myftINECER6p4JXyUw8ujl8RJ/bfoE
         OLKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=SamyF/7VyGvMQ3+Yct4LskwIw2BkW8u9TYMOQ6KgIvY=;
        b=fdWUMKWGfQ7Mcyh+vkA6bSn8bToIZxDabIwMt/X5I9Y4lw7blaX24E14GMkpbPyVWn
         HAw91s6E0qGZE5s8sZtGM5bncljuydTWWJenOfqt0DJ4+dpZZwkUSrdNuQBWlkBLc5Zf
         LevG7wUFOrffwNsYMPXSRK1EnHSRUgKGx3BV+AU++4R4R4MbrNeu1RWqlpERjZiN0eag
         lqN8iRrOaZhdVslfc4kgHYnSINrSVdAjEqftDu0rDLge0j0xXSKNLrsJoFwGJ0BLHZR/
         vTh7pT9fuGyQC1YyHda++FU6HScBYQMElxSl8SYdNCjHX98cRglQwpm99sIp+mAbrZL4
         9V8w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531hNpE2nQpbsXbf/2Z9l8YJAiBJpXB7pcW/Iffuegy2f8jxomNe
	sfSN4+EkNvJUygwRjPIZwvc=
X-Google-Smtp-Source: ABdhPJwV+aoPRMXFD9gIObOQODbolXFlGZnKZYdWO/h9eKeJBO7iOZ5+VkvMJfE6Q0pN89FXAdYXcQ==
X-Received: by 2002:a17:90a:690d:: with SMTP id r13mr2342632pjj.19.1621302691089;
        Mon, 17 May 2021 18:51:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:3593:: with SMTP id mm19ls629905pjb.3.canary-gmail;
 Mon, 17 May 2021 18:51:30 -0700 (PDT)
X-Received: by 2002:a17:902:854b:b029:f0:b966:1ee6 with SMTP id d11-20020a170902854bb02900f0b9661ee6mr1754591plo.50.1621302690348;
        Mon, 17 May 2021 18:51:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621302690; cv=none;
        d=google.com; s=arc-20160816;
        b=Yv9lqbhTyo+0aOikTGsigNhE4yYWx1lgZbi7EwQLOZwxRe7veEAHyt2uMe8EC5bpbJ
         Hlhbk5mENjBrYTxfLugkVoqQ7uTCduo4MYcwKtU/JSdlyT8K83OmgF6m3rkGd5VCkW9j
         6H1rdzyKNOZsz3wUr0UsSWyTw7JSBgQE/jN35kEYI8oXml8ZYufJCCgN4j88X+nrb+pS
         l87zdq8VLiGbNazRdzQFxt8OaBPnCCOEwWnhgFEXUSf/YN8mOjaiHv3tHgR4zc7L13a/
         AzzIvjd6MuAU+2TX4sewJtp8K2OfSwTTcN5ra3Jb5XtMggZanyYG079Q73LjjkLPoRRw
         Uq4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=G/hJIPyVh2K439xhIK1N4+mMHRgjxBhn2Zav44IzgCc=;
        b=tgD3ecEOETLm51M78vaECXBNLd/KCDH2glTIT7Ph3qUeUnK5sWpUjaM/ZjrazbIqGw
         saEqMiWOz08QZsVBJYH/uUEHYyhCNF36fznGFvv48n9FtrL9oxNTqzlwz+lE+g1bMlBz
         AIvlVBZVl5BSbW+fo8hq+ahK34rHUm/gBeOMCzmvJAqyVmIDwYAQeKH+hipkRyFexVPU
         yxRm1LnMH52zxmKQi8cnC+bu1BLPlchyTQS8Z3eeR1oYTmQsfrdlmBBYOcc9mNjAujCW
         VNXqXiw4Xd4mdEmmPA7CvVbZqvUDhKAi4DHlnl+Z2wofv1z8ZWXzL7xRT6mSxE7LsuZA
         ivoA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga03.intel.com (mga03.intel.com. [134.134.136.65])
        by gmr-mx.google.com with ESMTPS id mu11si1533748pjb.3.2021.05.17.18.51.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 17 May 2021 18:51:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) client-ip=134.134.136.65;
IronPort-SDR: eUG8orCawnxerSPEg19lrruMKE9ceOFu50FhoRDEdU1G/88GfG4Cgap2nH1cgxQHQ2sbPlfVk4
 BQk4Ash18mFA==
X-IronPort-AV: E=McAfee;i="6200,9189,9987"; a="200658760"
X-IronPort-AV: E=Sophos;i="5.82,307,1613462400"; 
   d="gz'50?scan'50,208,50";a="200658760"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 May 2021 18:51:28 -0700
IronPort-SDR: W9oPCQ1qrN1LoksOx7D+G0Yowihmuf+Jzyb0OQqPgg3nQ7gRTFXweNi7LaQ5RDqA1KgnbSRROv
 P23XvcLFuTLA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,307,1613462400"; 
   d="gz'50?scan'50,208,50";a="439204650"
Received: from lkp-server01.sh.intel.com (HELO ddd90b05c979) ([10.239.97.150])
  by orsmga008.jf.intel.com with ESMTP; 17 May 2021 18:51:25 -0700
Received: from kbuild by ddd90b05c979 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1liotI-0001zs-QM; Tue, 18 May 2021 01:51:24 +0000
Date: Tue, 18 May 2021 09:51:09 +0800
From: kernel test robot <lkp@intel.com>
To: Aurabindo Pillai <aurabindo.pillai@amd.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Alex Deucher <alexander.deucher@amd.com>,
	Chris Park <Chris.Park@amd.com>
Subject: [agd5f:drm-next 393/414]
 drivers/gpu/drm/amd/amdgpu/../display/dc/dcn303/dcn303_init.c:30:6: warning:
 no previous prototype for function 'dcn303_hw_sequencer_construct'
Message-ID: <202105180907.aKHesP9a-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="yrj/dFKFPuw6o+aM"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted
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


--yrj/dFKFPuw6o+aM
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://gitlab.freedesktop.org/agd5f/linux.git drm-next
head:   2117d5f920190bd219e1aca5bf903477781ca161
commit: 774f62c5206248846cafa1513a4c6a05f0f5e06c [393/414] drm/amd/display: Initial DC support for Beige Goby
config: x86_64-randconfig-a003-20210517 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project ceb1ac9812cb0972cfa34cecc5e5704ae2a22063)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        git remote add agd5f https://gitlab.freedesktop.org/agd5f/linux.git
        git fetch --no-tags agd5f drm-next
        git checkout 774f62c5206248846cafa1513a4c6a05f0f5e06c
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/gpu/drm/amd/amdgpu/../display/dc/dcn303/dcn303_init.c:30:6: warning: no previous prototype for function 'dcn303_hw_sequencer_construct' [-Wmissing-prototypes]
   void dcn303_hw_sequencer_construct(struct dc *dc)
        ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn303/dcn303_init.c:30:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void dcn303_hw_sequencer_construct(struct dc *dc)
   ^
   static 
   1 warning generated.
--
>> drivers/gpu/drm/amd/amdgpu/../display/dc/dcn303/dcn303_resource.c:499:3: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
                   stream_enc_regs(0),
                   ^~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn303/dcn303_resource.c:496:12: note: expanded from macro 'stream_enc_regs'
                   [id] = { SE_DCN3_REG_LIST(id) }
                            ^~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_dio_stream_encoder.h:106:2: note: expanded from macro 'SE_DCN3_REG_LIST'
           SRI(DP_SEC_METADATA_TRANSMISSION, DP, id), \
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn303/dcn303_resource.c:315:15: note: expanded from macro 'SRI'
                   .reg_name = BASE(mm ## block ## id ## _ ## reg_name ## _BASE_IDX) + mm ## block ## id ## _ ## reg_name
                               ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   note: (skipping 1 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn303/dcn303_resource.c:304:25: note: expanded from macro 'BASE_INNER'
   #define BASE_INNER(seg) DCN_BASE__INST0_SEG ## seg
                           ^
   <scratch space>:148:1: note: expanded from here
   DCN_BASE__INST0_SEG2
   ^
   drivers/gpu/drm/amd/amdgpu/../include/sienna_cichlid_ip_offset.h:372:52: note: expanded from macro 'DCN_BASE__INST0_SEG2'
   #define DCN_BASE__INST0_SEG2                       0x000034C0
                                                      ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn303/dcn303_resource.c:499:3: note: previous initialization is here
                   stream_enc_regs(0),
                   ^~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn303/dcn303_resource.c:496:12: note: expanded from macro 'stream_enc_regs'
                   [id] = { SE_DCN3_REG_LIST(id) }
                            ^~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_dio_stream_encoder.h:101:2: note: expanded from macro 'SE_DCN3_REG_LIST'
           SRI(DP_SEC_METADATA_TRANSMISSION, DP, id), \
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn303/dcn303_resource.c:315:15: note: expanded from macro 'SRI'
                   .reg_name = BASE(mm ## block ## id ## _ ## reg_name ## _BASE_IDX) + mm ## block ## id ## _ ## reg_name
                               ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   note: (skipping 1 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn303/dcn303_resource.c:304:25: note: expanded from macro 'BASE_INNER'
   #define BASE_INNER(seg) DCN_BASE__INST0_SEG ## seg
                           ^
   <scratch space>:98:1: note: expanded from here
   DCN_BASE__INST0_SEG2
   ^
   drivers/gpu/drm/amd/amdgpu/../include/sienna_cichlid_ip_offset.h:372:52: note: expanded from macro 'DCN_BASE__INST0_SEG2'
   #define DCN_BASE__INST0_SEG2                       0x000034C0
                                                      ^
>> drivers/gpu/drm/amd/amdgpu/../display/dc/dcn303/dcn303_resource.c:499:3: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
                   stream_enc_regs(0),
                   ^~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn303/dcn303_resource.c:496:12: note: expanded from macro 'stream_enc_regs'
                   [id] = { SE_DCN3_REG_LIST(id) }
                            ^~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_dio_stream_encoder.h:107:2: note: expanded from macro 'SE_DCN3_REG_LIST'
           SRI(HDMI_METADATA_PACKET_CONTROL, DIG, id), \
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn303/dcn303_resource.c:315:15: note: expanded from macro 'SRI'
                   .reg_name = BASE(mm ## block ## id ## _ ## reg_name ## _BASE_IDX) + mm ## block ## id ## _ ## reg_name
                               ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   note: (skipping 1 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn303/dcn303_resource.c:304:25: note: expanded from macro 'BASE_INNER'
   #define BASE_INNER(seg) DCN_BASE__INST0_SEG ## seg
                           ^
   <scratch space>:158:1: note: expanded from here
   DCN_BASE__INST0_SEG2
   ^
   drivers/gpu/drm/amd/amdgpu/../include/sienna_cichlid_ip_offset.h:372:52: note: expanded from macro 'DCN_BASE__INST0_SEG2'
   #define DCN_BASE__INST0_SEG2                       0x000034C0
                                                      ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn303/dcn303_resource.c:499:3: note: previous initialization is here
                   stream_enc_regs(0),
                   ^~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn303/dcn303_resource.c:496:12: note: expanded from macro 'stream_enc_regs'
                   [id] = { SE_DCN3_REG_LIST(id) }
                            ^~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_dio_stream_encoder.h:102:2: note: expanded from macro 'SE_DCN3_REG_LIST'
           SRI(HDMI_METADATA_PACKET_CONTROL, DIG, id), \
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn303/dcn303_resource.c:315:15: note: expanded from macro 'SRI'
                   .reg_name = BASE(mm ## block ## id ## _ ## reg_name ## _BASE_IDX) + mm ## block ## id ## _ ## reg_name
                               ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   note: (skipping 1 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn303/dcn303_resource.c:304:25: note: expanded from macro 'BASE_INNER'
   #define BASE_INNER(seg) DCN_BASE__INST0_SEG ## seg
                           ^
   <scratch space>:108:1: note: expanded from here
   DCN_BASE__INST0_SEG2
   ^
   drivers/gpu/drm/amd/amdgpu/../include/sienna_cichlid_ip_offset.h:372:52: note: expanded from macro 'DCN_BASE__INST0_SEG2'
   #define DCN_BASE__INST0_SEG2                       0x000034C0
                                                      ^
>> drivers/gpu/drm/amd/amdgpu/../display/dc/dcn303/dcn303_resource.c:499:3: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
                   stream_enc_regs(0),
                   ^~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn303/dcn303_resource.c:496:12: note: expanded from macro 'stream_enc_regs'
                   [id] = { SE_DCN3_REG_LIST(id) }
                            ^~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_dio_stream_encoder.h:108:2: note: expanded from macro 'SE_DCN3_REG_LIST'
           SRI(DIG_FE_CNTL, DIG, id), \
           ^~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn303/dcn303_resource.c:315:15: note: expanded from macro 'SRI'
                   .reg_name = BASE(mm ## block ## id ## _ ## reg_name ## _BASE_IDX) + mm ## block ## id ## _ ## reg_name
                               ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   note: (skipping 1 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn303/dcn303_resource.c:304:25: note: expanded from macro 'BASE_INNER'
   #define BASE_INNER(seg) DCN_BASE__INST0_SEG ## seg
                           ^
   <scratch space>:168:1: note: expanded from here
   DCN_BASE__INST0_SEG2
   ^
   drivers/gpu/drm/amd/amdgpu/../include/sienna_cichlid_ip_offset.h:372:52: note: expanded from macro 'DCN_BASE__INST0_SEG2'
   #define DCN_BASE__INST0_SEG2                       0x000034C0
                                                      ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn303/dcn303_resource.c:499:3: note: previous initialization is here
                   stream_enc_regs(0),
                   ^~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn303/dcn303_resource.c:496:12: note: expanded from macro 'stream_enc_regs'
                   [id] = { SE_DCN3_REG_LIST(id) }
                            ^~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_dio_stream_encoder.h:50:2: note: expanded from macro 'SE_DCN3_REG_LIST'
           SRI(DIG_FE_CNTL, DIG, id), \
           ^~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn303/dcn303_resource.c:315:15: note: expanded from macro 'SRI'
                   .reg_name = BASE(mm ## block ## id ## _ ## reg_name ## _BASE_IDX) + mm ## block ## id ## _ ## reg_name
                               ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   note: (skipping 1 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn303/dcn303_resource.c:304:25: note: expanded from macro 'BASE_INNER'
   #define BASE_INNER(seg) DCN_BASE__INST0_SEG ## seg
                           ^
   <scratch space>:43:1: note: expanded from here
   DCN_BASE__INST0_SEG2
   ^
   drivers/gpu/drm/amd/amdgpu/../include/sienna_cichlid_ip_offset.h:372:52: note: expanded from macro 'DCN_BASE__INST0_SEG2'
   #define DCN_BASE__INST0_SEG2                       0x000034C0
                                                      ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn303/dcn303_resource.c:500:3: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
                   stream_enc_regs(1)
                   ^~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn303/dcn303_resource.c:496:12: note: expanded from macro 'stream_enc_regs'
                   [id] = { SE_DCN3_REG_LIST(id) }
                            ^~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_dio_stream_encoder.h:106:2: note: expanded from macro 'SE_DCN3_REG_LIST'
           SRI(DP_SEC_METADATA_TRANSMISSION, DP, id), \
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn303/dcn303_resource.c:315:15: note: expanded from macro 'SRI'
                   .reg_name = BASE(mm ## block ## id ## _ ## reg_name ## _BASE_IDX) + mm ## block ## id ## _ ## reg_name
                               ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   note: (skipping 1 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn303/dcn303_resource.c:304:25: note: expanded from macro 'BASE_INNER'
   #define BASE_INNER(seg) DCN_BASE__INST0_SEG ## seg
                           ^
   <scratch space>:248:1: note: expanded from here
   DCN_BASE__INST0_SEG2
   ^
   drivers/gpu/drm/amd/amdgpu/../include/sienna_cichlid_ip_offset.h:372:52: note: expanded from macro 'DCN_BASE__INST0_SEG2'
   #define DCN_BASE__INST0_SEG2                       0x000034C0
                                                      ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn303/dcn303_resource.c:500:3: note: previous initialization is here
                   stream_enc_regs(1)
                   ^~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn303/dcn303_resource.c:496:12: note: expanded from macro 'stream_enc_regs'
                   [id] = { SE_DCN3_REG_LIST(id) }
                            ^~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_dio_stream_encoder.h:101:2: note: expanded from macro 'SE_DCN3_REG_LIST'
           SRI(DP_SEC_METADATA_TRANSMISSION, DP, id), \
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn303/dcn303_resource.c:315:15: note: expanded from macro 'SRI'
                   .reg_name = BASE(mm ## block ## id ## _ ## reg_name ## _BASE_IDX) + mm ## block ## id ## _ ## reg_name
                               ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   note: (skipping 1 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn303/dcn303_resource.c:304:25: note: expanded from macro 'BASE_INNER'
   #define BASE_INNER(seg) DCN_BASE__INST0_SEG ## seg
                           ^
   <scratch space>:198:1: note: expanded from here
   DCN_BASE__INST0_SEG2
   ^
   drivers/gpu/drm/amd/amdgpu/../include/sienna_cichlid_ip_offset.h:372:52: note: expanded from macro 'DCN_BASE__INST0_SEG2'
   #define DCN_BASE__INST0_SEG2                       0x000034C0
                                                      ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn303/dcn303_resource.c:500:3: warning: initializer overrides prior initialization of this subobject [-Winitializer-overrides]
                   stream_enc_regs(1)
                   ^~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn303/dcn303_resource.c:496:12: note: expanded from macro 'stream_enc_regs'
                   [id] = { SE_DCN3_REG_LIST(id) }
                            ^~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_dio_stream_encoder.h:107:2: note: expanded from macro 'SE_DCN3_REG_LIST'
           SRI(HDMI_METADATA_PACKET_CONTROL, DIG, id), \
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn303/dcn303_resource.c:315:15: note: expanded from macro 'SRI'
                   .reg_name = BASE(mm ## block ## id ## _ ## reg_name ## _BASE_IDX) + mm ## block ## id ## _ ## reg_name
                               ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   note: (skipping 1 expansions in backtrace; use -fmacro-backtrace-limit=0 to see all)


vim +/dcn303_hw_sequencer_construct +30 drivers/gpu/drm/amd/amdgpu/../display/dc/dcn303/dcn303_init.c

    29	
  > 30	void dcn303_hw_sequencer_construct(struct dc *dc)

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202105180907.aKHesP9a-lkp%40intel.com.

--yrj/dFKFPuw6o+aM
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--yrj/dFKFPuw6o+aM--
