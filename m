Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBOMK22AQMGQEGS6MLGA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc40.google.com (mail-oo1-xc40.google.com [IPv6:2607:f8b0:4864:20::c40])
	by mail.lfdr.de (Postfix) with ESMTPS id 8619B3233CF
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Feb 2021 23:44:10 +0100 (CET)
Received: by mail-oo1-xc40.google.com with SMTP id h12sf53333ool.16
        for <lists+clang-built-linux@lfdr.de>; Tue, 23 Feb 2021 14:44:10 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614120249; cv=pass;
        d=google.com; s=arc-20160816;
        b=I3T3jeSwatZLKR1XBxqO4UOthgiauMFP5gSQAGf9lljIIu/0W8RqV/EoJXimAzAXiD
         K3wgvEOcRNTj90FGF9jVFtA2L2gWdKHTym1qv/sN/raJorqKsm8Usbh+yIsCbK8eUBuh
         QlAl1gYuryKtmI8pE7Z3AD/eYCLCA6shfuuUBvaGOiSG4Ta7wuT58k3AClJUjGkGbuRe
         zJB33w/kicRuO0rugTY5qQYDuEmQGOw+S9ItBovg/5Wk5t1Cg8aAD+caIrWNmndl9hgU
         qoEaE9p/v0Ake95AOSZVVj8STKA/h/TDlTUeQWY/Z2vz1r/Ls9D5CUZP3NiH2kwWjLrd
         IUbQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=mm6L8sjYJ7dqlgyLuJEAMbYA8ZdoBTYeuSsGMX0aRcs=;
        b=cdDrZ+TNZjA1NVYfFswIRK4gUe4TuyDnI2wi5BASJSFMJQOPMmEXCCHudtvr6A43w3
         shB8JScCn70+cpaowTc8X50p36/Mem9M3ntJD3WaxigB5oVQ9+MD8UgPk8EWba+OFxT3
         +jk/zjbpjqbj4uKrnDFbX5T1bekjmmjQDPnQ5aFfp5W88z5rsm7Z8k1esQgZP5aeIV9V
         OUQSqCf0BoMzi5X3skXyPzchvE7/HreDDREquiY+ESp0YgwMaHR9ZeHrTDvNYxWHhjq3
         8FvyaergHr4zZiXXrkN+wmd7RYGxYso+9HsMnJFm0xkwL8iDvff0JT7tt5XqIQ+0G9XZ
         WNzA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=mm6L8sjYJ7dqlgyLuJEAMbYA8ZdoBTYeuSsGMX0aRcs=;
        b=A209CIr7NoFHT/oF+2sSLqPkdYz2tFABS/Oo2WONzg3b/gt0XpQP8IiKMDl6y6aDvp
         R2ns3ceOU3DunZYAsCAmbKzh7auMgsuhbwTKSojf2gSwcI3fbyZAa8BK8flzmJTdqSBa
         mpDoJbOoQg7NLJhrV9AlZT8SxalAuEM7+7W3orDdUvdvAPLVKR/CbOSoDK0Ey5B69MfH
         ygCQGmY6L1ziKTDhe5i7p8PJw+TaPeTCsZH6uq2H6eMR5V/wVyKqMgrfAQOl+ys/cIuU
         yhyho4BY45g1wWzJg+cLJUxBkEKWmK/D/Fr3uDqimLO6AeAa6u9DD51wpltthXF9dvQq
         d7NQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=mm6L8sjYJ7dqlgyLuJEAMbYA8ZdoBTYeuSsGMX0aRcs=;
        b=mMTC3KLS7pwMcGh4g7WcM85OKpdbwloRqdhyjkKUZC+1Tr40zt4vwGaRJ86DfvcvDJ
         Um9vOW2miqq1Te7GwcHqqJi8UsZ7Og47zwtbeYolSkkpGFiY2F4sFDWJeW/o3XiQ2ar7
         NArx281QvtX5bJ5UdRUAgnYMwbLGjo54C57BUhU6QMgZ6kyiZw9dk6tOvrvEbFwXd+p7
         u8SMmPgYGu05lUg8Xsh28if7qv3AJc87oN13aQJIqmmJ10GMUD1m6SikQvUeiQJiy2jB
         kjJq7DKZqQPq6+uxZ2h1sjPHgrBmWncFBYesnuCnxMM5XqaK6vXfIRA/df45ds43Y5fk
         oeVg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530co7pLqXHo0cCVHsFwk2HNpctAjfTh+Yqb3Ty9ZBgsO9rZ+d7M
	1dkCIQdnXT2PgczP7gTfiNg=
X-Google-Smtp-Source: ABdhPJy2XHK2cmQeHujgCJQxmygWD39zyLKrXSOeKsqmDgQiGd74qvBqIVhR9iTR018Jg5/2Kfo/wQ==
X-Received: by 2002:a9d:6ad2:: with SMTP id m18mr21206892otq.331.1614120249476;
        Tue, 23 Feb 2021 14:44:09 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:1482:: with SMTP id e2ls45718oiw.4.gmail; Tue, 23
 Feb 2021 14:44:09 -0800 (PST)
X-Received: by 2002:aca:3408:: with SMTP id b8mr716679oia.102.1614120248846;
        Tue, 23 Feb 2021 14:44:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614120248; cv=none;
        d=google.com; s=arc-20160816;
        b=SIOhQbXQTvr8cO5JSveOxFdqHyVCZUkRr+9R7hzXsxDPbqAgqIoprLGncIVo16dwsm
         wSAD2Y4E1tEmJdVHSMtfMur280AS3xddDLEl5OKiaD2iONDPr8ClyCBTTVe9GdX7QTMU
         PbnNoY2DzEIm4GYDcs3LaZA3kHhEb+RsZz8sYfNwXsIOyfENPez5IYz3byQlPqrSzun4
         CSPo3nka5uWSsCwMzVQkcsgvjlDTdH2NwRYBlwsoN61NqwL3d2JRlixN8PDJQ/5qwrre
         m3NzXTAuMHH6t77M1hDVai7ulpYDlU2dgwYY8xNmMspp17+LKr9Pu+H9JI+0nAvl0Wj6
         PDXA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=+x4mgrN2cHj1UIwKcXGCr6V1J9/LEGWo/TpP8/o4F9M=;
        b=FowzOgBh1zKW7CpSHSyr4sudUt0/qDkXZs2bhQ4gdp85V1BmNFG3AYF5T9WcTT5MnR
         vRskT9iEyPUlALpA7qNqJmcsgmIJFKYazu3SXfnDbLNmnhi7l7FyNwFdjLgBEPRvVypM
         jlvYYkxQON7xj8UzTwnudgqJqpm9YG+XB8Xy4gGKFWeCG5KeX8U4Qt1WXKFy7tQEPoV5
         y4uhRiMswnc0XzPWknvEY15ef3Z75Wbjg8+VwPPwD/JhSYjpacr9KA48tOMBLzW+Xg6j
         qi9u43bvrYDNPpGzQbVv53H7OXc0JtltPbF6/R/LxgUsodAJMqMQQorIXnKevx/+ZHbo
         jm/g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga04.intel.com (mga04.intel.com. [192.55.52.120])
        by gmr-mx.google.com with ESMTPS id b10si12140ots.5.2021.02.23.14.44.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Feb 2021 14:44:08 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) client-ip=192.55.52.120;
IronPort-SDR: 3hqSgQCyhrLee0OuFCcgplc/AscqTStqZwvDLoexUSAc0TGM4f+6IuGaZ4iwa9ibz7cMxe7/Nn
 UdWuNheYwmUw==
X-IronPort-AV: E=McAfee;i="6000,8403,9904"; a="182497788"
X-IronPort-AV: E=Sophos;i="5.81,201,1610438400"; 
   d="gz'50?scan'50,208,50";a="182497788"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Feb 2021 14:44:07 -0800
IronPort-SDR: +NYF6A3Q7hdN6ncu7jxzvsRY2ET7K00o0IZ9FDpbstQUyP/wcrT0UxEDuNUt2XZrAMPjICL0NK
 HQmDh4bfWbBA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,201,1610438400"; 
   d="gz'50?scan'50,208,50";a="583392831"
Received: from lkp-server01.sh.intel.com (HELO 16660e54978b) ([10.239.97.150])
  by orsmga005.jf.intel.com with ESMTP; 23 Feb 2021 14:44:05 -0800
Received: from kbuild by 16660e54978b with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lEgPU-0001bg-BS; Tue, 23 Feb 2021 22:44:04 +0000
Date: Wed, 24 Feb 2021 06:43:52 +0800
From: kernel test robot <lkp@intel.com>
To: Vladimir Stempen <vladimir.stempen@amd.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Alex Deucher <alexander.deucher@amd.com>
Subject: [agd5f:drm-next 103/133]
 drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_optc.c:312:6: warning:
 no previous prototype for function 'optc2_align_vblanks'
Message-ID: <202102240650.5AAA7Nhs-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="y0ulUmNC+osPPQO6"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted
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

tree:   https://gitlab.freedesktop.org/agd5f/linux.git drm-next
head:   eb3703ae5632160bb09fed30be53fd30a249debc
commit: 77a2b7265f20ee827e527eaa6f82b87e88388947 [103/133] drm/amd/display: Synchronize displays with different timings
config: x86_64-randconfig-a006-20210223 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project c9439ca36342fb6013187d0a69aef92736951476)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        git remote add agd5f https://gitlab.freedesktop.org/agd5f/linux.git
        git fetch --no-tags agd5f drm-next
        git checkout 77a2b7265f20ee827e527eaa6f82b87e88388947
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_optc.c:80:6: warning: no previous prototype for function 'optc2_set_timing_db_mode' [-Wmissing-prototypes]
   void optc2_set_timing_db_mode(struct timing_generator *optc, bool enable)
        ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_optc.c:80:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void optc2_set_timing_db_mode(struct timing_generator *optc, bool enable)
   ^
   static 
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_optc.c:114:6: warning: no previous prototype for function 'optc2_use_gsl_as_master_update_lock' [-Wmissing-prototypes]
   void optc2_use_gsl_as_master_update_lock(struct timing_generator *optc,
        ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_optc.c:114:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void optc2_use_gsl_as_master_update_lock(struct timing_generator *optc,
   ^
   static 
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_optc.c:124:6: warning: no previous prototype for function 'optc2_set_gsl_window' [-Wmissing-prototypes]
   void optc2_set_gsl_window(struct timing_generator *optc,
        ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_optc.c:124:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void optc2_set_gsl_window(struct timing_generator *optc,
   ^
   static 
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_optc.c:142:6: warning: no previous prototype for function 'optc2_set_vupdate_keepout' [-Wmissing-prototypes]
   void optc2_set_vupdate_keepout(struct timing_generator *optc,
        ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_optc.c:142:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void optc2_set_vupdate_keepout(struct timing_generator *optc,
   ^
   static 
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_optc.c:176:6: warning: no previous prototype for function 'optc2_set_dsc_encoder_frame_start' [-Wmissing-prototypes]
   void optc2_set_dsc_encoder_frame_start(struct timing_generator *optc,
        ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_optc.c:176:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void optc2_set_dsc_encoder_frame_start(struct timing_generator *optc,
   ^
   static 
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_optc.c:299:6: warning: no previous prototype for function 'optc2_set_dwb_source' [-Wmissing-prototypes]
   void optc2_set_dwb_source(struct timing_generator *optc,
        ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_optc.c:299:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void optc2_set_dwb_source(struct timing_generator *optc,
   ^
   static 
>> drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_optc.c:312:6: warning: no previous prototype for function 'optc2_align_vblanks' [-Wmissing-prototypes]
   void optc2_align_vblanks(
        ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_optc.c:312:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void optc2_align_vblanks(
   ^
   static 
   7 warnings generated.
--
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn10/dcn10_hw_sequencer.c:74:6: warning: no previous prototype for function 'print_microsec' [-Wmissing-prototypes]
   void print_microsec(struct dc_context *dc_ctx,
        ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn10/dcn10_hw_sequencer.c:74:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void print_microsec(struct dc_context *dc_ctx,
   ^
   static 
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn10/dcn10_hw_sequencer.c:129:6: warning: no previous prototype for function 'dcn10_log_hubbub_state' [-Wmissing-prototypes]
   void dcn10_log_hubbub_state(struct dc *dc, struct dc_log_buffer_ctx *log_ctx)
        ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn10/dcn10_hw_sequencer.c:129:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void dcn10_log_hubbub_state(struct dc *dc, struct dc_log_buffer_ctx *log_ctx)
   ^
   static 
>> drivers/gpu/drm/amd/amdgpu/../display/dc/dcn10/dcn10_hw_sequencer.c:1854:10: warning: no previous prototype for function 'reduceSizeAndFraction' [-Wmissing-prototypes]
   uint64_t reduceSizeAndFraction(
            ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn10/dcn10_hw_sequencer.c:1854:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   uint64_t reduceSizeAndFraction(
   ^
   static 
>> drivers/gpu/drm/amd/amdgpu/../display/dc/dcn10/dcn10_hw_sequencer.c:1900:6: warning: no previous prototype for function 'is_low_refresh_rate' [-Wmissing-prototypes]
   bool is_low_refresh_rate(struct pipe_ctx *pipe)
        ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn10/dcn10_hw_sequencer.c:1900:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   bool is_low_refresh_rate(struct pipe_ctx *pipe)
   ^
   static 
>> drivers/gpu/drm/amd/amdgpu/../display/dc/dcn10/dcn10_hw_sequencer.c:1909:9: warning: no previous prototype for function 'get_clock_divider' [-Wmissing-prototypes]
   uint8_t get_clock_divider(struct pipe_ctx *pipe, bool account_low_refresh_rate)
           ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn10/dcn10_hw_sequencer.c:1909:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   uint8_t get_clock_divider(struct pipe_ctx *pipe, bool account_low_refresh_rate)
   ^
   static 
>> drivers/gpu/drm/amd/amdgpu/../display/dc/dcn10/dcn10_hw_sequencer.c:1929:5: warning: no previous prototype for function 'dcn10_align_pixel_clocks' [-Wmissing-prototypes]
   int dcn10_align_pixel_clocks(
       ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn10/dcn10_hw_sequencer.c:1929:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   int dcn10_align_pixel_clocks(
   ^
   static 
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn10/dcn10_hw_sequencer.c:2344:6: warning: no previous prototype for function 'dcn10_program_pte_vm' [-Wmissing-prototypes]
   void dcn10_program_pte_vm(struct dce_hwseq *hws, struct hubp *hubp)
        ^
   drivers/gpu/drm/amd/amdgpu/../display/dc/dcn10/dcn10_hw_sequencer.c:2344:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void dcn10_program_pte_vm(struct dce_hwseq *hws, struct hubp *hubp)
   ^
   static 
   7 warnings generated.


vim +/optc2_align_vblanks +312 drivers/gpu/drm/amd/amdgpu/../display/dc/dcn20/dcn20_optc.c

   298	
 > 299	void optc2_set_dwb_source(struct timing_generator *optc,
   300			uint32_t dwb_pipe_inst)
   301	{
   302		struct optc *optc1 = DCN10TG_FROM_TG(optc);
   303	
   304		if (dwb_pipe_inst == 0)
   305			REG_UPDATE(DWB_SOURCE_SELECT,
   306					OPTC_DWB0_SOURCE_SELECT, optc->inst);
   307		else if (dwb_pipe_inst == 1)
   308			REG_UPDATE(DWB_SOURCE_SELECT,
   309					OPTC_DWB1_SOURCE_SELECT, optc->inst);
   310	}
   311	
 > 312	void optc2_align_vblanks(
   313		struct timing_generator *optc_master,
   314		struct timing_generator *optc_slave,
   315		uint32_t master_pixel_clock_100Hz,
   316		uint32_t slave_pixel_clock_100Hz,
   317		uint8_t master_clock_divider,
   318		uint8_t slave_clock_divider)
   319	{
   320		/* accessing slave OTG registers */
   321		struct optc *optc1 = DCN10TG_FROM_TG(optc_slave);
   322	
   323		uint32_t master_v_active = 0;
   324		uint32_t master_h_total = 0;
   325		uint32_t slave_h_total = 0;
   326		uint64_t L, XY, p = 10000;
   327		uint32_t X, Y;
   328		uint32_t master_update_lock;
   329	
   330		/* disable slave OTG */
   331		REG_UPDATE(OTG_CONTROL, OTG_MASTER_EN, 0);
   332		/* wait until disabled */
   333		REG_WAIT(OTG_CONTROL,
   334				 OTG_CURRENT_MASTER_EN_STATE,
   335				 0, 10, 5000);
   336	
   337		REG_GET(OTG_H_TOTAL, OTG_H_TOTAL, &slave_h_total);
   338	
   339		/* assign slave OTG to be controlled by master update lock */
   340		REG_SET(OTG_GLOBAL_CONTROL0, 0,
   341				OTG_MASTER_UPDATE_LOCK_SEL, optc_master->inst);
   342	
   343		/* accessing master OTG registers */
   344		optc1 = DCN10TG_FROM_TG(optc_master);
   345	
   346		/* saving update lock state, not sure if it's needed */
   347		REG_GET(OTG_MASTER_UPDATE_LOCK,
   348				OTG_MASTER_UPDATE_LOCK, &master_update_lock);
   349		/* unlocking master OTG */
   350		REG_SET(OTG_MASTER_UPDATE_LOCK, 0,
   351				OTG_MASTER_UPDATE_LOCK, 0);
   352	
   353		REG_GET(OTG_V_BLANK_START_END,
   354				OTG_V_BLANK_START, &master_v_active);
   355		REG_GET(OTG_H_TOTAL, OTG_H_TOTAL, &master_h_total);
   356	
   357		/* calculate when to enable slave OTG */
   358		L = p * slave_h_total * master_pixel_clock_100Hz /
   359			master_h_total / slave_pixel_clock_100Hz;
   360		XY = L / p;
   361		Y = master_v_active - XY - 1;
   362		X = ((XY + 1) * p - L) * master_h_total / master_clock_divider / p;
   363	
   364		/*
   365		 * set master OTG to unlock when V/H
   366		 * counters reach calculated values
   367		 */
   368		REG_UPDATE(OTG_GLOBAL_CONTROL1,
   369				   MASTER_UPDATE_LOCK_DB_EN, 1);
   370		REG_UPDATE_2(OTG_GLOBAL_CONTROL1,
   371					 MASTER_UPDATE_LOCK_DB_X,
   372					 X,
   373					 MASTER_UPDATE_LOCK_DB_Y,
   374					 Y);
   375	
   376		/* lock master OTG */
   377		REG_SET(OTG_MASTER_UPDATE_LOCK, 0,
   378				OTG_MASTER_UPDATE_LOCK, 1);
   379		REG_WAIT(OTG_MASTER_UPDATE_LOCK,
   380				 UPDATE_LOCK_STATUS, 1, 1, 10);
   381	
   382		/* accessing slave OTG registers */
   383		optc1 = DCN10TG_FROM_TG(optc_slave);
   384	
   385		/*
   386		 * enable slave OTG, the OTG is locked with
   387		 * master's update lock, so it will not run
   388		 */
   389		REG_UPDATE(OTG_CONTROL,
   390				   OTG_MASTER_EN, 1);
   391	
   392		/* accessing master OTG registers */
   393		optc1 = DCN10TG_FROM_TG(optc_master);
   394	
   395		/*
   396		 * unlock master OTG. When master H/V counters reach
   397		 * DB_XY point, slave OTG will start
   398		 */
   399		REG_SET(OTG_MASTER_UPDATE_LOCK, 0,
   400				OTG_MASTER_UPDATE_LOCK, 0);
   401	
   402		/* accessing slave OTG registers */
   403		optc1 = DCN10TG_FROM_TG(optc_slave);
   404	
   405		/* wait for slave OTG to start running*/
   406		REG_WAIT(OTG_CONTROL,
   407				 OTG_CURRENT_MASTER_EN_STATE,
   408				 1, 10, 5000);
   409	
   410		/* accessing master OTG registers */
   411		optc1 = DCN10TG_FROM_TG(optc_master);
   412	
   413		/* disable the XY point*/
   414		REG_UPDATE(OTG_GLOBAL_CONTROL1,
   415				   MASTER_UPDATE_LOCK_DB_EN, 0);
   416		REG_UPDATE_2(OTG_GLOBAL_CONTROL1,
   417					 MASTER_UPDATE_LOCK_DB_X,
   418					 0,
   419					 MASTER_UPDATE_LOCK_DB_Y,
   420					 0);
   421	
   422		/*restore master update lock*/
   423		REG_SET(OTG_MASTER_UPDATE_LOCK, 0,
   424				OTG_MASTER_UPDATE_LOCK, master_update_lock);
   425	
   426		/* accessing slave OTG registers */
   427		optc1 = DCN10TG_FROM_TG(optc_slave);
   428		/* restore slave to be controlled by it's own */
   429		REG_SET(OTG_GLOBAL_CONTROL0, 0,
   430				OTG_MASTER_UPDATE_LOCK_SEL, optc_slave->inst);
   431	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202102240650.5AAA7Nhs-lkp%40intel.com.

--y0ulUmNC+osPPQO6
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--y0ulUmNC+osPPQO6--
