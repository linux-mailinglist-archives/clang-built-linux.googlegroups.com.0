Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBI6FV36QKGQE3NBZ4RI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3e.google.com (mail-oo1-xc3e.google.com [IPv6:2607:f8b0:4864:20::c3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 230AF2AEC20
	for <lists+clang-built-linux@lfdr.de>; Wed, 11 Nov 2020 09:36:53 +0100 (CET)
Received: by mail-oo1-xc3e.google.com with SMTP id g15sf632651oon.22
        for <lists+clang-built-linux@lfdr.de>; Wed, 11 Nov 2020 00:36:53 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605083812; cv=pass;
        d=google.com; s=arc-20160816;
        b=gNoCR1tTq8j4vO1GA4t2cgw2lyMTG/Yqr8SERkiOpsWLQauNuNOklhUOvVBU4orZmL
         E+lOyx0Yx7cRXLZuaaq3QJA6OgsZvfDeGqd54DWFmevlRqkvkY5uHJ3UvZsvLJGIpGkt
         hJkaxmAaiY9tHiNQ0Ca9rPWhhHV5jBd0j5H3PYybTOz8qKmR5XfWAo/73rjX9oTZN4/3
         JANH0jxQNQr770DkdJFUadYjZQYd+6HDp6JTPjd4iimlao2HksA10Dx6NKZeLsnuTFVm
         L24ge/1nwKdhRuBFvVK6jKtzSLrLG3uObH+74r/GHhOfeO3E1QEC7zDLtVVUs4Fh8yYn
         s8LA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=nYoaabxw32xRsz941lID2tDJZd43oCk4+dvQSOTDmvU=;
        b=tpyBdIaV/ugZFr6Jvw0Pp6Khs9iWunLoBfcba7vkjqjtgne2Ws9ApW6QgYWtFdMBmX
         zlw7vX7vmldfsYQXQqupi9AQAqCTVCG7hhWYtwNzpZKF3TfqfYsRVgg48Dil0CDBJgZZ
         0cxVboIjtUnSLGvX/O/NtPwCq2qw1aYTTxDCX33fcKeitkp3lqaWC7DVChTQtm23HJFy
         R3VCqTzbiX6eCzzgzydPCtU3w2/7zcFwc5Z0H6Kdrb4rUnI92xAovFLBq2N4BhrLQaOj
         6qYFNExkufB9XAvRIkw7T7gsimaS5/iJajai7sQ8fysD1e8uC0H9GsxrYsWtIVjQBVvI
         hZZw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=nYoaabxw32xRsz941lID2tDJZd43oCk4+dvQSOTDmvU=;
        b=oQhinNwdrlskuMLJYIeQPKJAMLQXSeWqqbl8bYlzQw8w1NPoUEGMq7Qa5GVrSej6pE
         di3Egvbj88TDchMraBmHcjjOHTlG5g7aYgyGD/HvuHRp3o9JhYdT6GR2zLiDDVB79vqe
         /fY/6EaerhnTpdLqxOvmmrLjLSCVFy/3jLzv6rPiw3wtKh7+tb6nGxF385ppfF/76F60
         MJWOuaqSzU3MVRUnXcaOufrwqhwKp+H/U5g4ywnXF1jLr9t46PQQqDfLzz7UPiNzUNTR
         wfKQklmGn+0hquQSYW6w6r68+0LboSn2l6hiBLrZ7QM86s1h9S/veSLser8Ri1nPiq8a
         YKVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=nYoaabxw32xRsz941lID2tDJZd43oCk4+dvQSOTDmvU=;
        b=f2F/MzNNHPx1Xukx5WHEucmWgy+VUolXhdsYxYcacdk8Tj3vKEJ0k6YMZt94AgCQ/x
         zvU5QhAgQlT8oLM82B9lnZbh5/TXOoWmucuWbLTrpeq0gbYFEGjGmKgIPZ0lQ3OcV8Q4
         +06/cBJ925lktiTTbMsIOkuipbSEjZg4IaszLTU91z+3et+ZtqtRp9mcbVoUP/WAv6n2
         yzWUf0bq3yY0nVB7M6PGFbqE9Q1YulksIZI5HEUM4pjzCe1Vys6UqAG//voGXIFbDMHJ
         I2gqqTIhIEK2S1gmkR3Zq23oV5LiDeFQ+gVlJcfL3xIKpx8OTXSB+5S/ymcjTC25PIfT
         vfXw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532dvjmzRGHsa7AbhS4TBQ0Y0qjuOa/ermdhjxHaZF8oEw3GiJYt
	UnLyWQKL0ilonNXzprnIHko=
X-Google-Smtp-Source: ABdhPJz/SlhEldkxWq+8JRYvj4sOzzDLMFDEpUXDCL6GgVFN75+Ky7z7h/bnh+/q6N8RaeA/KssV5w==
X-Received: by 2002:aca:d48c:: with SMTP id l134mr1473074oig.129.1605083811884;
        Wed, 11 Nov 2020 00:36:51 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:6a95:: with SMTP id l21ls3755217otq.4.gmail; Wed, 11 Nov
 2020 00:36:51 -0800 (PST)
X-Received: by 2002:a9d:4c92:: with SMTP id m18mr7299070otf.248.1605083811404;
        Wed, 11 Nov 2020 00:36:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605083811; cv=none;
        d=google.com; s=arc-20160816;
        b=fyp/n1zV9ESE8rl6UvFKNaiSpQMs54iuDvgDtfLRIxG+gWqMklx1r7IomJT5ijQ3Nb
         UP7lxsHZIkE1hOKiBjbWsLR7yewXGtjHS8D06EP6jQwsWt52BlfnjKWigSCjjVkfY/1z
         YsCGN3+72KiMT8bbwRK68j/R3mJD1zqAM8NEWGwSpL6pxz5ny6Tzm082LbCZwDaI5RTp
         +g1N/VHS1bo7bTIiAkum45WN9+fPUMWUs8YBuC82PeAS3+1IQ6Wi9YpDHEYzCccmrwEP
         udKCyupaB2Ry67Yfkz8MDnjCQZBnAo6Q+UI0lwiPSWhEcORIzESufZBp6qxpilEOdRGc
         Dxbw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=d5VK1zekVUTiQxYzXnCnD1EqhzUv+yE+vToSuC6bgkQ=;
        b=cHU+9rroTM7s1gOr/LJ6iDF25TsSCqlOlO+rXaW/pWWQIEeLJyWsFC31GfZrqc8dlT
         MIkRTwuudBm+bAL6rdzwmt9LhNuiFToropMqvzvLDVcrWg1s1cpowpC0pWLGxNfsAhwG
         L5pqlHBtccvbKwpFZ0oyC66fQvlhy6gJD2FrT7jVDH85O0dPTyhk7wJssuIegsrcylGC
         w5S7iL1219GaBncEmvDBRw9KXGYpIVvo4NGynHbuUFuv1sCQyyDK+NvHDMKRS9wQr45E
         8WD5HZLJMpJX7aWUO2+nxK9M/gl6cJS48sxgDLXarVEZylmSvRy5znI15cq68OXP98f2
         sTLg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga07.intel.com (mga07.intel.com. [134.134.136.100])
        by gmr-mx.google.com with ESMTPS id e22si126711oti.2.2020.11.11.00.36.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Nov 2020 00:36:51 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) client-ip=134.134.136.100;
IronPort-SDR: MRpEUv4t9upeAKfhvx5ZlGORvfnb07i76qiNObcTNzdI0J+5eke7qbqnjBNMnGygk6h1Gi4SL/
 8iIrg1fW8/YQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9801"; a="234282041"
X-IronPort-AV: E=Sophos;i="5.77,469,1596524400"; 
   d="gz'50?scan'50,208,50";a="234282041"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 11 Nov 2020 00:36:45 -0800
IronPort-SDR: +50IkrTOiqpNyQyMLV9kukCO1rU4E4jNgKk1TrylvTyDYERflIKTFmNWG1B+JoaAzcVnMI6y1z
 bmkyGkzH0i0g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,469,1596524400"; 
   d="gz'50?scan'50,208,50";a="530149673"
Received: from lkp-server02.sh.intel.com (HELO 5b2c7e53fe46) ([10.239.97.151])
  by fmsmga006.fm.intel.com with ESMTP; 11 Nov 2020 00:36:43 -0800
Received: from kbuild by 5b2c7e53fe46 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kclcQ-00001u-It; Wed, 11 Nov 2020 08:36:42 +0000
Date: Wed, 11 Nov 2020 16:36:06 +0800
From: kernel test robot <lkp@intel.com>
To: Alex Deucher <alexander.deucher@amd.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Linux Memory Management List <linux-mm@kvack.org>,
	Harry Wentland <harry.wentland@amd.com>,
	Nicholas Kazlauskas <nicholas.kazlauskas@amd.com>
Subject: [linux-next:master 2766/5074]
 drivers/gpu/drm/amd/amdgpu/../display/dc/clk_mgr/dcn30/dcn30_clk_mgr.c:214:2:
 error: implicit declaration of function 'enable_kernel_vsx'
Message-ID: <202011111602.c0bYuJV1-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="NzB8fVQJ5HfG6fxh"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted
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


--NzB8fVQJ5HfG6fxh
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
head:   3e14f70c05cda4794901ed8f976de3a88deebcc0
commit: 582e2ce5b4ece37055c6ebe58ab48a4817d30b10 [2766/5074] drm/amdgpu/display: FP fixes for DCN3.x (v4)
config: powerpc64-randconfig-r014-20201109 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 09ec07827b1128504457a93dee80b2ceee1af600)
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
   2 errors generated.
--
                           ^
   <scratch space>:155:1: note: expanded from here
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
   <scratch space>:170:1: note: expanded from here
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
   <scratch space>:159:1: note: expanded from here
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
   <scratch space>:174:1: note: expanded from here
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
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_resource.c:2401:2: error: implicit declaration of function 'enable_kernel_vsx' [-Werror,-Wimplicit-function-declaration]
           DC_FP_START();
           ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/os_types.h:68:3: note: expanded from macro 'DC_FP_START'
                   enable_kernel_vsx(); \
                   ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_resource.c:2403:2: error: implicit declaration of function 'disable_kernel_vsx' [-Werror,-Wimplicit-function-declaration]
           DC_FP_END();
           ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/os_types.h:79:3: note: expanded from macro 'DC_FP_END'
                   disable_kernel_vsx(); \
                   ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_resource.c:2463:2: error: implicit declaration of function 'enable_kernel_vsx' [-Werror,-Wimplicit-function-declaration]
           DC_FP_START();
           ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/os_types.h:68:3: note: expanded from macro 'DC_FP_START'
                   enable_kernel_vsx(); \
                   ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_resource.c:2465:2: error: implicit declaration of function 'disable_kernel_vsx' [-Werror,-Wimplicit-function-declaration]
           DC_FP_END();
           ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/os_types.h:79:3: note: expanded from macro 'DC_FP_END'
                   disable_kernel_vsx(); \
                   ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_resource.c:2537:4: error: implicit declaration of function 'enable_kernel_vsx' [-Werror,-Wimplicit-function-declaration]
                           DC_FP_START();
                           ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/os_types.h:68:3: note: expanded from macro 'DC_FP_START'
                   enable_kernel_vsx(); \
                   ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_resource.c:2540:4: error: implicit declaration of function 'disable_kernel_vsx' [-Werror,-Wimplicit-function-declaration]
                           DC_FP_END();
                           ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/os_types.h:79:3: note: expanded from macro 'DC_FP_END'
                   disable_kernel_vsx(); \
                   ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_resource.c:2644:2: error: implicit declaration of function 'enable_kernel_vsx' [-Werror,-Wimplicit-function-declaration]
           DC_FP_START();
           ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/os_types.h:68:3: note: expanded from macro 'DC_FP_START'
                   enable_kernel_vsx(); \
                   ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_resource.c:2923:2: error: implicit declaration of function 'disable_kernel_vsx' [-Werror,-Wimplicit-function-declaration]
           DC_FP_END();
           ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/os_types.h:79:3: note: expanded from macro 'DC_FP_END'
                   disable_kernel_vsx(); \
                   ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn30/dcn30_resource.c:2929:2: error: implicit declaration of function 'disable_kernel_vsx' [-Werror,-Wimplicit-function-declaration]
           DC_FP_END();
           ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/os_types.h:79:3: note: expanded from macro 'DC_FP_END'
                   disable_kernel_vsx(); \
                   ^
   115 warnings and 11 errors generated.

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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202011111602.c0bYuJV1-lkp%40intel.com.

--NzB8fVQJ5HfG6fxh
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
878q4Hkx9/EBAA==

--NzB8fVQJ5HfG6fxh--
