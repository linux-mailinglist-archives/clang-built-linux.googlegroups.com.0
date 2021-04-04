Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBWEOVGBQMGQEENETKRY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83c.google.com (mail-qt1-x83c.google.com [IPv6:2607:f8b0:4864:20::83c])
	by mail.lfdr.de (Postfix) with ESMTPS id 54989353A1E
	for <lists+clang-built-linux@lfdr.de>; Mon,  5 Apr 2021 01:10:18 +0200 (CEST)
Received: by mail-qt1-x83c.google.com with SMTP id v3sf7372181qtw.8
        for <lists+clang-built-linux@lfdr.de>; Sun, 04 Apr 2021 16:10:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617577817; cv=pass;
        d=google.com; s=arc-20160816;
        b=AfXK7YTV0klSuU5JHw2NfiVTy/95NnTC1stwmUJwUTZgbXV2pdZ4z6HZHA5B0YfM4B
         YLi4+Gbi1tnCh+qvTTHXHLbKo1dPR+o86g3v+oEe3mPRNDzCwy0FfnaUiAWbDjdfYMYi
         MGaHzICMJiM+ZuiIcz+rNHT7ar7+kJVsghyNljcRWQyNcgyQDZ6Z0nLDfjaClqhVMDAb
         VM0gP4f5IRnqIAmU4TStQxyzmXD4Xi7hAq4Hcpdne+Lm8n0YWBn8sdRpSgoqkdn6lYXA
         RAkUaHlnGNWS+J3/j6fjlj6tGWA6ii+ePUjs64jfvUYI8keHn3+28RGbvHyWJlXGbqem
         QulQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=CVRq+oOHwf7MlJpS9nqa937SJ9ob60zQjaxm1HDdQ1E=;
        b=n5TDjWOoJsl01Zr1hnCNMGLUwIINfE2piuEflaMBkYGm0X2PbLF2DIKSpXRIb6gEcc
         kdw0V84pfzBi8CYWnJFfPXyHfMPzXzIUjnXHfpJyjja7ENEZSjA2ScnuBrqqCjbc2mX2
         qzGDbCsy372XA+mo8guQmIpnLCBeX8U0vGMXmX9ql2mt+O2ETBKVfPQuPm1Y0rSKQ34t
         mdCWqHKTn1xy5E/goKoHV0Drg/6RGcLBXIq/nzJ+vOdR/VGwN9EGTimVTWomgYvLM6jW
         CCgp52IWsWBHdZ8A2u7V0qzNDPrtee4Op+pl12QNob9ueDrSPnPv6j/eGSBpz/UgzfHN
         cQZQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=CVRq+oOHwf7MlJpS9nqa937SJ9ob60zQjaxm1HDdQ1E=;
        b=Fs9DJqckWw3gEz69UdIograLz49Mhr/wGZTFyjTpG+ys3WAH4YkqLMxZrhgWuWlKPj
         26Ok5wxRMeC4eT2tDOtgOA8jtOj83K8xfvnJf/mSzuNPbwLiGNKeJzSns2ALZ28/gKmo
         1QnJUt8E0jp+CLnfv/S+aylMpOdlW5Vnui+2GWXlU97cXL7dVt+4+BmSm6JPoxHvm/fx
         iwIOnqzQRbWjk2S9t/7Gk2+DrhurzBje4m4ftsEwoLYS4cCeTb/vY5UsqVX+6s4OqoSb
         dUSh2XW+W5tlks97RZwETMKkJzBL7igIGaIW9ndgDBDieSNvFs4rr6+kOXEk7Emyt0Me
         FpTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=CVRq+oOHwf7MlJpS9nqa937SJ9ob60zQjaxm1HDdQ1E=;
        b=D3R76f7n7o4PVy+TZt00LUNn2bSlOjyTkN4TPEuLexWFTPC8fyjBCQc21McHbQMc81
         XN4W8PJcZL7BdM8EDDZ8EiMgty8NYtuVLGLa/VSZ5J1cZliYGrtS/9t31F/uaoZtmxqn
         uc/jH5CvTp6jGAUMBwi8rBMzfZAKePEe4qa8xVOM30McmZQKRbbreXZmqGH7wVhMxtFh
         D95F3jvWOSHBKuAQHV4K/SWM2a0ObBlrjhd+0bl5uw57coP0IA8p3R2UbeZio6kcQX0u
         kpWdVgCnedUXSwMiGO0IhUh6UKORmZnZKSwzRIsj2qQYvTaREqHZhzKXVAKRNpzMXaAa
         AA1Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532oIvAprwEQM2njqlsKQCcqgDlwszrWc3phAkNRAKKQrREiABiN
	Xuzib9lETWtRueW+arNqFqo=
X-Google-Smtp-Source: ABdhPJw+vbVC4gUtdpvzaMagt+GirHjCwYMBwsNbkMBTRmX3Xzb4f7FZhC1VV54jbnuupeviaLwB/A==
X-Received: by 2002:a37:6658:: with SMTP id a85mr22504197qkc.424.1617577816941;
        Sun, 04 Apr 2021 16:10:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:a98:: with SMTP id v24ls7813432qkg.6.gmail; Sun, 04
 Apr 2021 16:10:16 -0700 (PDT)
X-Received: by 2002:a05:620a:4c7:: with SMTP id 7mr22328809qks.31.1617577816223;
        Sun, 04 Apr 2021 16:10:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617577816; cv=none;
        d=google.com; s=arc-20160816;
        b=TdLM6aEBK9+H33vKE1CM4w/L2Jy5HY7H+K3pcc+W8ltz46kG3cACNgmZBIUjIrMS2p
         o2OpVStRyioG1Krh0ri5oJTB4nLJ8TB48Y6x8804r4Z9uMvP4NRcfALD5W4Y10H0LtCi
         fiN5HQXZrEQKH3WSnxk7QXmiVS5+GOaU+QOYLDHT6gE56bQNfAVRapsc2GBTcFGrj6xZ
         kv4TJKJG+sNz57yVgp4UjQiezCUW8sKlW4ql2Mjb5swMkdv/QcvVIKJQIW2keQokRt51
         a9HFoGCXwdZv661Gkwm2ohTZrnC1BymFJ9G/QOJi9lmyhkt/NMXzW1Nq64Dcz2vV5iL0
         OKcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=uTMdRP2OkWA9QLlUb8WjrZdt+UkD6nly4zx5TfPNCnQ=;
        b=m7kspXFyomqyyOy/ZQvBuj99hmAnlxgCDttt/lb7OpB+jV3eyc4h2BzHdbDJpJ+ZoJ
         hxrxv8mU6r+TA2LcQIJt5gS21QaIZlE2JNJISaezfuOHCm7FSJ+KPctSD9urTgBwU/nU
         PV5vmQnxB6mWqySZ+f9ejTTI6rksqHh4k/7V/bbEIG4pIv4BmhOx7NlPCL8vnRSsiJez
         JUX4TE57SqZDvPzeZpOrsxK//oD6ydwzgbbYV+M5PLKo+OVi9P4ommu2xLSDEBqwgX6U
         oXtH3grsPPqqPOhotISGGwkS+y4c1BqGnwak1knhNu2wKH7KRdcH9UiHndObMeMydNtC
         AGmw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga14.intel.com (mga14.intel.com. [192.55.52.115])
        by gmr-mx.google.com with ESMTPS id b2si2550963qtq.5.2021.04.04.16.10.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Apr 2021 16:10:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) client-ip=192.55.52.115;
IronPort-SDR: 9UVwuGM14SXsszHgb5yHYFeA8qINa+q0xuw0m/zLiuRxd8oZGA7E+biF/oX377fCUuFSszgKLK
 jMVz1XnqRwIw==
X-IronPort-AV: E=McAfee;i="6000,8403,9944"; a="192262233"
X-IronPort-AV: E=Sophos;i="5.81,305,1610438400"; 
   d="gz'50?scan'50,208,50";a="192262233"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 Apr 2021 16:10:13 -0700
IronPort-SDR: zFvT7P9ji+Tr0ONdQuFN/wStnSRxbZhP3DV+Z0aMrQFXq42RCXefUuZXANjyyJNPO1RxiFySKP
 /5AUIHOc8Siw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,305,1610438400"; 
   d="gz'50?scan'50,208,50";a="378767829"
Received: from lkp-server01.sh.intel.com (HELO 69d8fcc516b7) ([10.239.97.150])
  by orsmga003.jf.intel.com with ESMTP; 04 Apr 2021 16:10:10 -0700
Received: from kbuild by 69d8fcc516b7 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lTBsf-00095n-P2; Sun, 04 Apr 2021 23:10:09 +0000
Date: Mon, 5 Apr 2021 07:09:30 +0800
From: kernel test robot <lkp@intel.com>
To: Kees Cook <keescook@chromium.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org,
	Andrew Morton <akpm@linux-foundation.org>,
	Linux Memory Management List <linux-mm@kvack.org>
Subject: drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dcn_calc_auto.c:1176:6:
 warning: stack frame size of 2576 bytes in function
 'dispclkdppclkdcfclk_deep_sleep_prefetch_parameters_watermarks_and_performance_calculation'
Message-ID: <202104050720.YYeWQmk2-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="fdj2RfSjLxBAspz7"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted
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


--fdj2RfSjLxBAspz7
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git =
master
head:   2023a53bdf41b7646b1d384b6816af06309f73a5
commit: d0a3ac549f389c1511a4df0d7638536305205d20 ubsan: enable for all*conf=
ig builds
date:   4 months ago
config: powerpc64-randconfig-r011-20210404 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 30df6d=
5d6a8537d3ec7d8fe4299289a4c5a74d5c)
reproduce (this is a W=3D1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/=
make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc64 cross compiling tool for clang build
        # apt-get install binutils-powerpc64-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.gi=
t/commit/?id=3Dd0a3ac549f389c1511a4df0d7638536305205d20
        git remote add linus https://git.kernel.org/pub/scm/linux/kernel/gi=
t/torvalds/linux.git
        git fetch --no-tags linus master
        git checkout d0a3ac549f389c1511a4df0d7638536305205d20
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=3D$HOME/0day COMPILER=3Dclang make.cross ARCH=
=3Dpowerpc64=20

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dcn_calc_auto.c:121:6: wa=
rning: stack frame size of 5552 bytes in function 'mode_support_and_system_=
configuration' [-Wframe-larger-than=3D]
   void mode_support_and_system_configuration(struct dcn_bw_internal_vars *=
v)
        ^
>> drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/dcn_calc_auto.c:1176:6: w=
arning: stack frame size of 2576 bytes in function 'dispclkdppclkdcfclk_dee=
p_sleep_prefetch_parameters_watermarks_and_performance_calculation' [-Wfram=
e-larger-than=3D]
   void dispclkdppclkdcfclk_deep_sleep_prefetch_parameters_watermarks_and_p=
erformance_calculation(struct dcn_bw_internal_vars *v)
        ^
   2 warnings generated.


vim +/dispclkdppclkdcfclk_deep_sleep_prefetch_parameters_watermarks_and_per=
formance_calculation +1176 drivers/gpu/drm/amd/amdgpu/../display/dc/calcs/d=
cn_calc_auto.c

5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   120 =20
74c49c7ac14f3a Harry Wentland     2017-05-08   121  void mode_support_and_s=
ystem_configuration(struct dcn_bw_internal_vars *v)
74c49c7ac14f3a Harry Wentland     2017-05-08   122  {
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   123  	int i;
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   124  	int j;
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   125  	int k;
74c49c7ac14f3a Harry Wentland     2017-05-08   126  	/*mode support, voltag=
e state and soc configuration*/
74c49c7ac14f3a Harry Wentland     2017-05-08   127 =20
74c49c7ac14f3a Harry Wentland     2017-05-08   128  	/*scale ratio support =
check*/
74c49c7ac14f3a Harry Wentland     2017-05-08   129 =20
74c49c7ac14f3a Harry Wentland     2017-05-08   130  	v->scale_ratio_support=
 =3D dcn_bw_yes;
74c49c7ac14f3a Harry Wentland     2017-05-08   131  	for (k =3D 0; k <=3D v=
->number_of_active_planes - 1; k++) {
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   132  		if (v->h_ratio[k] > v=
->max_hscl_ratio || v->v_ratio[k] > v->max_vscl_ratio || v->h_ratio[k] > v-=
>htaps[k] || v->v_ratio[k] > v->vtaps[k] || (v->source_pixel_format[k] !=3D=
 dcn_bw_rgb_sub_64 && v->source_pixel_format[k] !=3D dcn_bw_rgb_sub_32 && v=
->source_pixel_format[k] !=3D dcn_bw_rgb_sub_16 && (v->h_ratio[k] / 2.0 > v=
->hta_pschroma[k] || v->v_ratio[k] / 2.0 > v->vta_pschroma[k]))) {
74c49c7ac14f3a Harry Wentland     2017-05-08   133  			v->scale_ratio_suppo=
rt =3D dcn_bw_no;
74c49c7ac14f3a Harry Wentland     2017-05-08   134  		}
74c49c7ac14f3a Harry Wentland     2017-05-08   135  	}
74c49c7ac14f3a Harry Wentland     2017-05-08   136  	/*source format, pixel=
 format and scan support check*/
74c49c7ac14f3a Harry Wentland     2017-05-08   137 =20
74c49c7ac14f3a Harry Wentland     2017-05-08   138  	v->source_format_pixel=
_and_scan_support =3D dcn_bw_yes;
74c49c7ac14f3a Harry Wentland     2017-05-08   139  	for (k =3D 0; k <=3D v=
->number_of_active_planes - 1; k++) {
afa80d64d20ac1 Dmytro Laktyushkin 2017-06-21   140  		if ((v->source_surfac=
e_mode[k] =3D=3D dcn_bw_sw_linear && v->source_scan[k] !=3D dcn_bw_hor) || =
((v->source_surface_mode[k] =3D=3D dcn_bw_sw_4_kb_d || v->source_surface_mo=
de[k] =3D=3D dcn_bw_sw_4_kb_d_x || v->source_surface_mode[k] =3D=3D dcn_bw_=
sw_64_kb_d || v->source_surface_mode[k] =3D=3D dcn_bw_sw_64_kb_d_t || v->so=
urce_surface_mode[k] =3D=3D dcn_bw_sw_64_kb_d_x || v->source_surface_mode[k=
] =3D=3D dcn_bw_sw_var_d || v->source_surface_mode[k] =3D=3D dcn_bw_sw_var_=
d_x) && v->source_pixel_format[k] !=3D dcn_bw_rgb_sub_64)) {
74c49c7ac14f3a Harry Wentland     2017-05-08   141  			v->source_format_pix=
el_and_scan_support =3D dcn_bw_no;
74c49c7ac14f3a Harry Wentland     2017-05-08   142  		}
74c49c7ac14f3a Harry Wentland     2017-05-08   143  	}
74c49c7ac14f3a Harry Wentland     2017-05-08   144  	/*bandwidth support ch=
eck*/
74c49c7ac14f3a Harry Wentland     2017-05-08   145 =20
74c49c7ac14f3a Harry Wentland     2017-05-08   146  	for (k =3D 0; k <=3D v=
->number_of_active_planes - 1; k++) {
74c49c7ac14f3a Harry Wentland     2017-05-08   147  		if (v->source_scan[k]=
 =3D=3D dcn_bw_hor) {
74c49c7ac14f3a Harry Wentland     2017-05-08   148  			v->swath_width_ysing=
le_dpp[k] =3D v->viewport_width[k];
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   149  		}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   150  		else {
74c49c7ac14f3a Harry Wentland     2017-05-08   151  			v->swath_width_ysing=
le_dpp[k] =3D v->viewport_height[k];
74c49c7ac14f3a Harry Wentland     2017-05-08   152  		}
74c49c7ac14f3a Harry Wentland     2017-05-08   153  		if (v->source_pixel_f=
ormat[k] =3D=3D dcn_bw_rgb_sub_64) {
74c49c7ac14f3a Harry Wentland     2017-05-08   154  			v->byte_per_pixel_in=
_dety[k] =3D 8.0;
74c49c7ac14f3a Harry Wentland     2017-05-08   155  			v->byte_per_pixel_in=
_detc[k] =3D 0.0;
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   156  		}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   157  		else if (v->source_pi=
xel_format[k] =3D=3D dcn_bw_rgb_sub_32) {
74c49c7ac14f3a Harry Wentland     2017-05-08   158  			v->byte_per_pixel_in=
_dety[k] =3D 4.0;
74c49c7ac14f3a Harry Wentland     2017-05-08   159  			v->byte_per_pixel_in=
_detc[k] =3D 0.0;
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   160  		}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   161  		else if (v->source_pi=
xel_format[k] =3D=3D dcn_bw_rgb_sub_16) {
74c49c7ac14f3a Harry Wentland     2017-05-08   162  			v->byte_per_pixel_in=
_dety[k] =3D 2.0;
74c49c7ac14f3a Harry Wentland     2017-05-08   163  			v->byte_per_pixel_in=
_detc[k] =3D 0.0;
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   164  		}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   165  		else if (v->source_pi=
xel_format[k] =3D=3D dcn_bw_yuv420_sub_8) {
74c49c7ac14f3a Harry Wentland     2017-05-08   166  			v->byte_per_pixel_in=
_dety[k] =3D 1.0;
74c49c7ac14f3a Harry Wentland     2017-05-08   167  			v->byte_per_pixel_in=
_detc[k] =3D 2.0;
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   168  		}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   169  		else {
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   170  			v->byte_per_pixel_in=
_dety[k] =3D 4.0f / 3.0f;
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   171  			v->byte_per_pixel_in=
_detc[k] =3D 8.0f / 3.0f;
74c49c7ac14f3a Harry Wentland     2017-05-08   172  		}
74c49c7ac14f3a Harry Wentland     2017-05-08   173  	}
74c49c7ac14f3a Harry Wentland     2017-05-08   174  	v->total_read_bandwidt=
h_consumed_gbyte_per_second =3D 0.0;
74c49c7ac14f3a Harry Wentland     2017-05-08   175  	for (k =3D 0; k <=3D v=
->number_of_active_planes - 1; k++) {
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   176  		v->read_bandwidth[k] =
=3D v->swath_width_ysingle_dpp[k] * (dcn_bw_ceil2(v->byte_per_pixel_in_dety=
[k], 1.0) * v->v_ratio[k] +dcn_bw_ceil2(v->byte_per_pixel_in_detc[k], 2.0) =
/ 2.0 * v->v_ratio[k] / 2) / (v->htotal[k] / v->pixel_clock[k]);
74c49c7ac14f3a Harry Wentland     2017-05-08   177  		if (v->dcc_enable[k] =
=3D=3D dcn_bw_yes) {
74c49c7ac14f3a Harry Wentland     2017-05-08   178  			v->read_bandwidth[k]=
 =3D v->read_bandwidth[k] * (1 + 1 / 256);
74c49c7ac14f3a Harry Wentland     2017-05-08   179  		}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   180  		if (v->pte_enable =3D=
=3D dcn_bw_yes && v->source_scan[k] !=3D dcn_bw_hor && (v->source_surface_m=
ode[k] =3D=3D dcn_bw_sw_4_kb_s || v->source_surface_mode[k] =3D=3D dcn_bw_s=
w_4_kb_s_x || v->source_surface_mode[k] =3D=3D dcn_bw_sw_4_kb_d || v->sourc=
e_surface_mode[k] =3D=3D dcn_bw_sw_4_kb_d_x)) {
74c49c7ac14f3a Harry Wentland     2017-05-08   181  			v->read_bandwidth[k]=
 =3D v->read_bandwidth[k] * (1 + 1 / 64);
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   182  		}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   183  		else if (v->pte_enabl=
e =3D=3D dcn_bw_yes && v->source_scan[k] =3D=3D dcn_bw_hor && (v->source_pi=
xel_format[k] =3D=3D dcn_bw_rgb_sub_64 || v->source_pixel_format[k] =3D=3D =
dcn_bw_rgb_sub_32) && (v->source_surface_mode[k] =3D=3D dcn_bw_sw_64_kb_s |=
| v->source_surface_mode[k] =3D=3D dcn_bw_sw_64_kb_s_t || v->source_surface=
_mode[k] =3D=3D dcn_bw_sw_64_kb_s_x || v->source_surface_mode[k] =3D=3D dcn=
_bw_sw_64_kb_d || v->source_surface_mode[k] =3D=3D dcn_bw_sw_64_kb_d_t || v=
->source_surface_mode[k] =3D=3D dcn_bw_sw_64_kb_d_x)) {
74c49c7ac14f3a Harry Wentland     2017-05-08   184  			v->read_bandwidth[k]=
 =3D v->read_bandwidth[k] * (1 + 1 / 256);
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   185  		}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   186  		else if (v->pte_enabl=
e =3D=3D dcn_bw_yes) {
74c49c7ac14f3a Harry Wentland     2017-05-08   187  			v->read_bandwidth[k]=
 =3D v->read_bandwidth[k] * (1 + 1 / 512);
74c49c7ac14f3a Harry Wentland     2017-05-08   188  		}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   189  		v->total_read_bandwid=
th_consumed_gbyte_per_second =3D v->total_read_bandwidth_consumed_gbyte_per=
_second + v->read_bandwidth[k] / 1000.0;
74c49c7ac14f3a Harry Wentland     2017-05-08   190  	}
74c49c7ac14f3a Harry Wentland     2017-05-08   191  	v->total_write_bandwid=
th_consumed_gbyte_per_second =3D 0.0;
74c49c7ac14f3a Harry Wentland     2017-05-08   192  	for (k =3D 0; k <=3D v=
->number_of_active_planes - 1; k++) {
74c49c7ac14f3a Harry Wentland     2017-05-08   193  		if (v->output[k] =3D=
=3D dcn_bw_writeback && v->output_format[k] =3D=3D dcn_bw_444) {
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   194  			v->write_bandwidth[k=
] =3D v->scaler_rec_out_width[k] / (v->htotal[k] / v->pixel_clock[k]) * 4.0=
;
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   195  		}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   196  		else if (v->output[k]=
 =3D=3D dcn_bw_writeback) {
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   197  			v->write_bandwidth[k=
] =3D v->scaler_rec_out_width[k] / (v->htotal[k] / v->pixel_clock[k]) * 1.5=
;
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   198  		}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   199  		else {
74c49c7ac14f3a Harry Wentland     2017-05-08   200  			v->write_bandwidth[k=
] =3D 0.0;
74c49c7ac14f3a Harry Wentland     2017-05-08   201  		}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   202  		v->total_write_bandwi=
dth_consumed_gbyte_per_second =3D v->total_write_bandwidth_consumed_gbyte_p=
er_second + v->write_bandwidth[k] / 1000.0;
74c49c7ac14f3a Harry Wentland     2017-05-08   203  	}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   204  	v->total_bandwidth_con=
sumed_gbyte_per_second =3D v->total_read_bandwidth_consumed_gbyte_per_secon=
d + v->total_write_bandwidth_consumed_gbyte_per_second;
74c49c7ac14f3a Harry Wentland     2017-05-08   205  	v->dcc_enabled_in_any_=
plane =3D dcn_bw_no;
74c49c7ac14f3a Harry Wentland     2017-05-08   206  	for (k =3D 0; k <=3D v=
->number_of_active_planes - 1; k++) {
74c49c7ac14f3a Harry Wentland     2017-05-08   207  		if (v->dcc_enable[k] =
=3D=3D dcn_bw_yes) {
74c49c7ac14f3a Harry Wentland     2017-05-08   208  			v->dcc_enabled_in_an=
y_plane =3D dcn_bw_yes;
74c49c7ac14f3a Harry Wentland     2017-05-08   209  		}
74c49c7ac14f3a Harry Wentland     2017-05-08   210  	}
74c49c7ac14f3a Harry Wentland     2017-05-08   211  	for (i =3D 0; i <=3D n=
umber_of_states_plus_one; i++) {
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   212  		v->return_bw_todcn_pe=
r_state =3Ddcn_bw_min2(v->return_bus_width * v->dcfclk_per_state[i], v->fab=
ric_and_dram_bandwidth_per_state[i] * 1000.0 * v->percent_of_ideal_drambw_r=
eceived_after_urg_latency / 100.0);
74c49c7ac14f3a Harry Wentland     2017-05-08   213  		v->return_bw_per_stat=
e[i] =3D v->return_bw_todcn_per_state;
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   214  		if (v->dcc_enabled_in=
_any_plane =3D=3D dcn_bw_yes && v->return_bw_todcn_per_state > v->dcfclk_pe=
r_state[i] * v->return_bus_width / 4.0) {
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   215  			v->return_bw_per_sta=
te[i] =3Ddcn_bw_min2(v->return_bw_per_state[i], v->return_bw_todcn_per_stat=
e * 4.0 * (1.0 - v->urgent_latency / ((v->rob_buffer_size_in_kbyte - v->pix=
el_chunk_size_in_kbyte) * 1024.0 / (v->return_bw_todcn_per_state - v->dcfcl=
k_per_state[i] * v->return_bus_width / 4.0) + v->urgent_latency)));
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   216  		}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   217  		v->critical_point =3D=
 2.0 * v->return_bus_width * v->dcfclk_per_state[i] * v->urgent_latency / (=
v->return_bw_todcn_per_state * v->urgent_latency + (v->rob_buffer_size_in_k=
byte - v->pixel_chunk_size_in_kbyte) * 1024.0);
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   218  		if (v->dcc_enabled_in=
_any_plane =3D=3D dcn_bw_yes && v->critical_point > 1.0 && v->critical_poin=
t < 4.0) {
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   219  			v->return_bw_per_sta=
te[i] =3Ddcn_bw_min2(v->return_bw_per_state[i], dcn_bw_pow(4.0 * v->return_=
bw_todcn_per_state * (v->rob_buffer_size_in_kbyte - v->pixel_chunk_size_in_=
kbyte) * 1024.0 * v->return_bus_width * v->dcfclk_per_state[i] * v->urgent_=
latency / (v->return_bw_todcn_per_state * v->urgent_latency + (v->rob_buffe=
r_size_in_kbyte - v->pixel_chunk_size_in_kbyte) * 1024.0), 2));
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   220  		}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   221  		v->return_bw_todcn_pe=
r_state =3Ddcn_bw_min2(v->return_bus_width * v->dcfclk_per_state[i], v->fab=
ric_and_dram_bandwidth_per_state[i] * 1000.0);
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   222  		if (v->dcc_enabled_in=
_any_plane =3D=3D dcn_bw_yes && v->return_bw_todcn_per_state > v->dcfclk_pe=
r_state[i] * v->return_bus_width / 4.0) {
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   223  			v->return_bw_per_sta=
te[i] =3Ddcn_bw_min2(v->return_bw_per_state[i], v->return_bw_todcn_per_stat=
e * 4.0 * (1.0 - v->urgent_latency / ((v->rob_buffer_size_in_kbyte - v->pix=
el_chunk_size_in_kbyte) * 1024.0 / (v->return_bw_todcn_per_state - v->dcfcl=
k_per_state[i] * v->return_bus_width / 4.0) + v->urgent_latency)));
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   224  		}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   225  		v->critical_point =3D=
 2.0 * v->return_bus_width * v->dcfclk_per_state[i] * v->urgent_latency / (=
v->return_bw_todcn_per_state * v->urgent_latency + (v->rob_buffer_size_in_k=
byte - v->pixel_chunk_size_in_kbyte) * 1024.0);
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   226  		if (v->dcc_enabled_in=
_any_plane =3D=3D dcn_bw_yes && v->critical_point > 1.0 && v->critical_poin=
t < 4.0) {
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   227  			v->return_bw_per_sta=
te[i] =3Ddcn_bw_min2(v->return_bw_per_state[i], dcn_bw_pow(4.0 * v->return_=
bw_todcn_per_state * (v->rob_buffer_size_in_kbyte - v->pixel_chunk_size_in_=
kbyte) * 1024.0 * v->return_bus_width * v->dcfclk_per_state[i] * v->urgent_=
latency / (v->return_bw_todcn_per_state * v->urgent_latency + (v->rob_buffe=
r_size_in_kbyte - v->pixel_chunk_size_in_kbyte) * 1024.0), 2));
74c49c7ac14f3a Harry Wentland     2017-05-08   228  		}
74c49c7ac14f3a Harry Wentland     2017-05-08   229  	}
74c49c7ac14f3a Harry Wentland     2017-05-08   230  	for (i =3D 0; i <=3D n=
umber_of_states_plus_one; i++) {
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   231  		if ((v->total_read_ba=
ndwidth_consumed_gbyte_per_second * 1000.0 <=3D v->return_bw_per_state[i]) =
&& (v->total_bandwidth_consumed_gbyte_per_second * 1000.0 <=3D v->fabric_an=
d_dram_bandwidth_per_state[i] * 1000.0 * v->percent_of_ideal_drambw_receive=
d_after_urg_latency / 100.0)) {
74c49c7ac14f3a Harry Wentland     2017-05-08   232  			v->bandwidth_support=
[i] =3D dcn_bw_yes;
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   233  		}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   234  		else {
74c49c7ac14f3a Harry Wentland     2017-05-08   235  			v->bandwidth_support=
[i] =3D dcn_bw_no;
74c49c7ac14f3a Harry Wentland     2017-05-08   236  		}
74c49c7ac14f3a Harry Wentland     2017-05-08   237  	}
74c49c7ac14f3a Harry Wentland     2017-05-08   238  	/*writeback latency su=
pport check*/
74c49c7ac14f3a Harry Wentland     2017-05-08   239 =20
74c49c7ac14f3a Harry Wentland     2017-05-08   240  	v->writeback_latency_s=
upport =3D dcn_bw_yes;
74c49c7ac14f3a Harry Wentland     2017-05-08   241  	for (k =3D 0; k <=3D v=
->number_of_active_planes - 1; k++) {
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   242  		if (v->output[k] =3D=
=3D dcn_bw_writeback && v->output_format[k] =3D=3D dcn_bw_444 && v->scaler_=
rec_out_width[k] / (v->htotal[k] / v->pixel_clock[k]) * 4.0 > (v->writeback=
_luma_buffer_size + v->writeback_chroma_buffer_size) * 1024.0 / v->write_ba=
ck_latency) {
74c49c7ac14f3a Harry Wentland     2017-05-08   243  			v->writeback_latency=
_support =3D dcn_bw_no;
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   244  		}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   245  		else if (v->output[k]=
 =3D=3D dcn_bw_writeback && v->scaler_rec_out_width[k] / (v->htotal[k] / v-=
>pixel_clock[k]) >dcn_bw_min2(v->writeback_luma_buffer_size, 2.0 * v->write=
back_chroma_buffer_size) * 1024.0 / v->write_back_latency) {
74c49c7ac14f3a Harry Wentland     2017-05-08   246  			v->writeback_latency=
_support =3D dcn_bw_no;
74c49c7ac14f3a Harry Wentland     2017-05-08   247  		}
74c49c7ac14f3a Harry Wentland     2017-05-08   248  	}
74c49c7ac14f3a Harry Wentland     2017-05-08   249  	/*re-ordering buffer s=
upport check*/
74c49c7ac14f3a Harry Wentland     2017-05-08   250 =20
74c49c7ac14f3a Harry Wentland     2017-05-08   251  	for (i =3D 0; i <=3D n=
umber_of_states_plus_one; i++) {
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   252  		v->urgent_round_trip_=
and_out_of_order_latency_per_state[i] =3D (v->round_trip_ping_latency_cycle=
s + 32.0) / v->dcfclk_per_state[i] + v->urgent_out_of_order_return_per_chan=
nel * v->number_of_channels / v->return_bw_per_state[i];
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   253  		if ((v->rob_buffer_si=
ze_in_kbyte - v->pixel_chunk_size_in_kbyte) * 1024.0 / v->return_bw_per_sta=
te[i] > v->urgent_round_trip_and_out_of_order_latency_per_state[i]) {
74c49c7ac14f3a Harry Wentland     2017-05-08   254  			v->rob_support[i] =
=3D dcn_bw_yes;
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   255  		}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   256  		else {
74c49c7ac14f3a Harry Wentland     2017-05-08   257  			v->rob_support[i] =
=3D dcn_bw_no;
74c49c7ac14f3a Harry Wentland     2017-05-08   258  		}
74c49c7ac14f3a Harry Wentland     2017-05-08   259  	}
74c49c7ac14f3a Harry Wentland     2017-05-08   260  	/*display io support c=
heck*/
74c49c7ac14f3a Harry Wentland     2017-05-08   261 =20
74c49c7ac14f3a Harry Wentland     2017-05-08   262  	for (k =3D 0; k <=3D v=
->number_of_active_planes - 1; k++) {
74c49c7ac14f3a Harry Wentland     2017-05-08   263  		if (v->output[k] =3D=
=3D dcn_bw_dp && v->dsc_capability =3D=3D dcn_bw_yes) {
74c49c7ac14f3a Harry Wentland     2017-05-08   264  			if (v->output_format=
[k] =3D=3D dcn_bw_420) {
74c49c7ac14f3a Harry Wentland     2017-05-08   265  				v->required_output_=
bw =3D v->pixel_clock[k] / 2.0;
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   266  			}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   267  			else {
74c49c7ac14f3a Harry Wentland     2017-05-08   268  				v->required_output_=
bw =3D v->pixel_clock[k];
74c49c7ac14f3a Harry Wentland     2017-05-08   269  			}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   270  		}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   271  		else if (v->output_fo=
rmat[k] =3D=3D dcn_bw_420) {
74c49c7ac14f3a Harry Wentland     2017-05-08   272  			v->required_output_b=
w =3D v->pixel_clock[k] * 3.0 / 2.0;
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   273  		}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   274  		else {
74c49c7ac14f3a Harry Wentland     2017-05-08   275  			v->required_output_b=
w =3D v->pixel_clock[k] * 3.0;
74c49c7ac14f3a Harry Wentland     2017-05-08   276  		}
74c49c7ac14f3a Harry Wentland     2017-05-08   277  		if (v->output[k] =3D=
=3D dcn_bw_hdmi) {
6dd28867b1f964 Charlene Liu       2017-07-31   278  			v->required_phyclk[k=
] =3D v->required_output_bw;
6dd28867b1f964 Charlene Liu       2017-07-31   279  			switch (v->output_de=
ep_color[k]) {
6dd28867b1f964 Charlene Liu       2017-07-31   280  			case dcn_bw_encoder_=
10bpc:
6dd28867b1f964 Charlene Liu       2017-07-31   281  				v->required_phyclk[=
k] =3D  v->required_phyclk[k] * 5.0 / 4;
6dd28867b1f964 Charlene Liu       2017-07-31   282  			break;
6dd28867b1f964 Charlene Liu       2017-07-31   283  			case dcn_bw_encoder_=
12bpc:
6dd28867b1f964 Charlene Liu       2017-07-31   284  				v->required_phyclk[=
k] =3D  v->required_phyclk[k] * 3.0 / 2;
6dd28867b1f964 Charlene Liu       2017-07-31   285  				break;
6dd28867b1f964 Charlene Liu       2017-07-31   286  			default:
6dd28867b1f964 Charlene Liu       2017-07-31   287  				break;
6dd28867b1f964 Charlene Liu       2017-07-31   288  			}
f0f8b2db570bf3 Charlene Liu       2017-07-31   289  			v->required_phyclk[k=
] =3D v->required_phyclk[k] / 3.0;
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   290  		}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   291  		else if (v->output[k]=
 =3D=3D dcn_bw_dp) {
74c49c7ac14f3a Harry Wentland     2017-05-08   292  			v->required_phyclk[k=
] =3D v->required_output_bw / 4.0;
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   293  		}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   294  		else {
74c49c7ac14f3a Harry Wentland     2017-05-08   295  			v->required_phyclk[k=
] =3D 0.0;
74c49c7ac14f3a Harry Wentland     2017-05-08   296  		}
74c49c7ac14f3a Harry Wentland     2017-05-08   297  	}
74c49c7ac14f3a Harry Wentland     2017-05-08   298  	for (i =3D 0; i <=3D n=
umber_of_states_plus_one; i++) {
74c49c7ac14f3a Harry Wentland     2017-05-08   299  		v->dio_support[i] =3D=
 dcn_bw_yes;
74c49c7ac14f3a Harry Wentland     2017-05-08   300  		for (k =3D 0; k <=3D =
v->number_of_active_planes - 1; k++) {
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   301  			if (v->required_phyc=
lk[k] > v->phyclk_per_state[i] || (v->output[k] =3D=3D dcn_bw_hdmi && v->re=
quired_phyclk[k] > 600.0)) {
74c49c7ac14f3a Harry Wentland     2017-05-08   302  				v->dio_support[i] =
=3D dcn_bw_no;
74c49c7ac14f3a Harry Wentland     2017-05-08   303  			}
74c49c7ac14f3a Harry Wentland     2017-05-08   304  		}
74c49c7ac14f3a Harry Wentland     2017-05-08   305  	}
74c49c7ac14f3a Harry Wentland     2017-05-08   306  	/*total available writ=
eback support check*/
74c49c7ac14f3a Harry Wentland     2017-05-08   307 =20
74c49c7ac14f3a Harry Wentland     2017-05-08   308  	v->total_number_of_act=
ive_writeback =3D 0.0;
74c49c7ac14f3a Harry Wentland     2017-05-08   309  	for (k =3D 0; k <=3D v=
->number_of_active_planes - 1; k++) {
74c49c7ac14f3a Harry Wentland     2017-05-08   310  		if (v->output[k] =3D=
=3D dcn_bw_writeback) {
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   311  			v->total_number_of_a=
ctive_writeback =3D v->total_number_of_active_writeback + 1.0;
74c49c7ac14f3a Harry Wentland     2017-05-08   312  		}
74c49c7ac14f3a Harry Wentland     2017-05-08   313  	}
74c49c7ac14f3a Harry Wentland     2017-05-08   314  	if (v->total_number_of=
_active_writeback <=3D v->max_num_writeback) {
74c49c7ac14f3a Harry Wentland     2017-05-08   315  		v->total_available_wr=
iteback_support =3D dcn_bw_yes;
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   316  	}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   317  	else {
74c49c7ac14f3a Harry Wentland     2017-05-08   318  		v->total_available_wr=
iteback_support =3D dcn_bw_no;
74c49c7ac14f3a Harry Wentland     2017-05-08   319  	}
74c49c7ac14f3a Harry Wentland     2017-05-08   320  	/*maximum dispclk/dppc=
lk support check*/
74c49c7ac14f3a Harry Wentland     2017-05-08   321 =20
74c49c7ac14f3a Harry Wentland     2017-05-08   322  	for (k =3D 0; k <=3D v=
->number_of_active_planes - 1; k++) {
74c49c7ac14f3a Harry Wentland     2017-05-08   323  		if (v->h_ratio[k] > 1=
.0) {
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   324  			v->pscl_factor[k] =
=3Ddcn_bw_min2(v->max_dchub_topscl_throughput, v->max_pscl_tolb_throughput =
* v->h_ratio[k] /dcn_bw_ceil2(v->htaps[k] / 6.0, 1.0));
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   325  		}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   326  		else {
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   327  			v->pscl_factor[k] =
=3Ddcn_bw_min2(v->max_dchub_topscl_throughput, v->max_pscl_tolb_throughput)=
;
74c49c7ac14f3a Harry Wentland     2017-05-08   328  		}
74c49c7ac14f3a Harry Wentland     2017-05-08   329  		if (v->byte_per_pixel=
_in_detc[k] =3D=3D 0.0) {
74c49c7ac14f3a Harry Wentland     2017-05-08   330  			v->pscl_factor_chrom=
a[k] =3D 0.0;
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   331  			v->min_dppclk_using_=
single_dpp[k] =3D v->pixel_clock[k] *dcn_bw_max3(v->vtaps[k] / 6.0 *dcn_bw_=
min2(1.0, v->h_ratio[k]), v->h_ratio[k] * v->v_ratio[k] / v->pscl_factor[k]=
, 1.0);
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   332  		}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   333  		else {
74c49c7ac14f3a Harry Wentland     2017-05-08   334  			if (v->h_ratio[k] / =
2.0 > 1.0) {
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   335  				v->pscl_factor_chro=
ma[k] =3Ddcn_bw_min2(v->max_dchub_topscl_throughput, v->max_pscl_tolb_throu=
ghput * v->h_ratio[k] / 2.0 /dcn_bw_ceil2(v->hta_pschroma[k] / 6.0, 1.0));
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   336  			}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   337  			else {
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   338  				v->pscl_factor_chro=
ma[k] =3Ddcn_bw_min2(v->max_dchub_topscl_throughput, v->max_pscl_tolb_throu=
ghput);
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   339  			}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   340  			v->min_dppclk_using_=
single_dpp[k] =3D v->pixel_clock[k] *dcn_bw_max5(v->vtaps[k] / 6.0 *dcn_bw_=
min2(1.0, v->h_ratio[k]), v->h_ratio[k] * v->v_ratio[k] / v->pscl_factor[k]=
, v->vta_pschroma[k] / 6.0 *dcn_bw_min2(1.0, v->h_ratio[k] / 2.0), v->h_rat=
io[k] * v->v_ratio[k] / 4.0 / v->pscl_factor_chroma[k], 1.0);
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   341  		}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   342  	}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   343  	for (k =3D 0; k <=3D v=
->number_of_active_planes - 1; k++) {
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   344  		if ((v->source_pixel_=
format[k] =3D=3D dcn_bw_rgb_sub_64 || v->source_pixel_format[k] =3D=3D dcn_=
bw_rgb_sub_32 || v->source_pixel_format[k] =3D=3D dcn_bw_rgb_sub_16)) {
74c49c7ac14f3a Harry Wentland     2017-05-08   345  			if (v->source_surfac=
e_mode[k] =3D=3D dcn_bw_sw_linear) {
74c49c7ac14f3a Harry Wentland     2017-05-08   346  				v->read256_block_he=
ight_y[k] =3D 1.0;
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   347  			}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   348  			else if (v->source_p=
ixel_format[k] =3D=3D dcn_bw_rgb_sub_64) {
74c49c7ac14f3a Harry Wentland     2017-05-08   349  				v->read256_block_he=
ight_y[k] =3D 4.0;
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   350  			}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   351  			else {
74c49c7ac14f3a Harry Wentland     2017-05-08   352  				v->read256_block_he=
ight_y[k] =3D 8.0;
74c49c7ac14f3a Harry Wentland     2017-05-08   353  			}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   354  			v->read256_block_wid=
th_y[k] =3D 256.0 /dcn_bw_ceil2(v->byte_per_pixel_in_dety[k], 1.0) / v->rea=
d256_block_height_y[k];
74c49c7ac14f3a Harry Wentland     2017-05-08   355  			v->read256_block_hei=
ght_c[k] =3D 0.0;
74c49c7ac14f3a Harry Wentland     2017-05-08   356  			v->read256_block_wid=
th_c[k] =3D 0.0;
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   357  		}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   358  		else {
74c49c7ac14f3a Harry Wentland     2017-05-08   359  			if (v->source_surfac=
e_mode[k] =3D=3D dcn_bw_sw_linear) {
74c49c7ac14f3a Harry Wentland     2017-05-08   360  				v->read256_block_he=
ight_y[k] =3D 1.0;
74c49c7ac14f3a Harry Wentland     2017-05-08   361  				v->read256_block_he=
ight_c[k] =3D 1.0;
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   362  			}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   363  			else if (v->source_p=
ixel_format[k] =3D=3D dcn_bw_yuv420_sub_8) {
74c49c7ac14f3a Harry Wentland     2017-05-08   364  				v->read256_block_he=
ight_y[k] =3D 16.0;
74c49c7ac14f3a Harry Wentland     2017-05-08   365  				v->read256_block_he=
ight_c[k] =3D 8.0;
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   366  			}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   367  			else {
74c49c7ac14f3a Harry Wentland     2017-05-08   368  				v->read256_block_he=
ight_y[k] =3D 8.0;
74c49c7ac14f3a Harry Wentland     2017-05-08   369  				v->read256_block_he=
ight_c[k] =3D 8.0;
74c49c7ac14f3a Harry Wentland     2017-05-08   370  			}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   371  			v->read256_block_wid=
th_y[k] =3D 256.0 /dcn_bw_ceil2(v->byte_per_pixel_in_dety[k], 1.0) / v->rea=
d256_block_height_y[k];
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   372  			v->read256_block_wid=
th_c[k] =3D 256.0 /dcn_bw_ceil2(v->byte_per_pixel_in_detc[k], 2.0) / v->rea=
d256_block_height_c[k];
74c49c7ac14f3a Harry Wentland     2017-05-08   373  		}
74c49c7ac14f3a Harry Wentland     2017-05-08   374  		if (v->source_scan[k]=
 =3D=3D dcn_bw_hor) {
74c49c7ac14f3a Harry Wentland     2017-05-08   375  			v->max_swath_height_=
y[k] =3D v->read256_block_height_y[k];
74c49c7ac14f3a Harry Wentland     2017-05-08   376  			v->max_swath_height_=
c[k] =3D v->read256_block_height_c[k];
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   377  		}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   378  		else {
74c49c7ac14f3a Harry Wentland     2017-05-08   379  			v->max_swath_height_=
y[k] =3D v->read256_block_width_y[k];
74c49c7ac14f3a Harry Wentland     2017-05-08   380  			v->max_swath_height_=
c[k] =3D v->read256_block_width_c[k];
74c49c7ac14f3a Harry Wentland     2017-05-08   381  		}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   382  		if ((v->source_pixel_=
format[k] =3D=3D dcn_bw_rgb_sub_64 || v->source_pixel_format[k] =3D=3D dcn_=
bw_rgb_sub_32 || v->source_pixel_format[k] =3D=3D dcn_bw_rgb_sub_16)) {
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   383  			if (v->source_surfac=
e_mode[k] =3D=3D dcn_bw_sw_linear || (v->source_pixel_format[k] =3D=3D dcn_=
bw_rgb_sub_64 && (v->source_surface_mode[k] =3D=3D dcn_bw_sw_4_kb_s || v->s=
ource_surface_mode[k] =3D=3D dcn_bw_sw_4_kb_s_x || v->source_surface_mode[k=
] =3D=3D dcn_bw_sw_64_kb_s || v->source_surface_mode[k] =3D=3D dcn_bw_sw_64=
_kb_s_t || v->source_surface_mode[k] =3D=3D dcn_bw_sw_64_kb_s_x || v->sourc=
e_surface_mode[k] =3D=3D dcn_bw_sw_var_s || v->source_surface_mode[k] =3D=
=3D dcn_bw_sw_var_s_x) && v->source_scan[k] =3D=3D dcn_bw_hor)) {
74c49c7ac14f3a Harry Wentland     2017-05-08   384  				v->min_swath_height=
_y[k] =3D v->max_swath_height_y[k];
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   385  			}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   386  			else {
74c49c7ac14f3a Harry Wentland     2017-05-08   387  				v->min_swath_height=
_y[k] =3D v->max_swath_height_y[k] / 2.0;
74c49c7ac14f3a Harry Wentland     2017-05-08   388  			}
74c49c7ac14f3a Harry Wentland     2017-05-08   389  			v->min_swath_height_=
c[k] =3D v->max_swath_height_c[k];
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   390  		}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   391  		else {
74c49c7ac14f3a Harry Wentland     2017-05-08   392  			if (v->source_surfac=
e_mode[k] =3D=3D dcn_bw_sw_linear) {
74c49c7ac14f3a Harry Wentland     2017-05-08   393  				v->min_swath_height=
_y[k] =3D v->max_swath_height_y[k];
74c49c7ac14f3a Harry Wentland     2017-05-08   394  				v->min_swath_height=
_c[k] =3D v->max_swath_height_c[k];
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   395  			}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   396  			else if (v->source_p=
ixel_format[k] =3D=3D dcn_bw_yuv420_sub_8 && v->source_scan[k] =3D=3D dcn_b=
w_hor) {
74c49c7ac14f3a Harry Wentland     2017-05-08   397  				v->min_swath_height=
_y[k] =3D v->max_swath_height_y[k] / 2.0;
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   398  				if (v->bug_forcing_=
luma_and_chroma_request_to_same_size_fixed =3D=3D dcn_bw_yes) {
74c49c7ac14f3a Harry Wentland     2017-05-08   399  					v->min_swath_heigh=
t_c[k] =3D v->max_swath_height_c[k];
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   400  				}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   401  				else {
74c49c7ac14f3a Harry Wentland     2017-05-08   402  					v->min_swath_heigh=
t_c[k] =3D v->max_swath_height_c[k] / 2.0;
74c49c7ac14f3a Harry Wentland     2017-05-08   403  				}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   404  			}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   405  			else if (v->source_p=
ixel_format[k] =3D=3D dcn_bw_yuv420_sub_10 && v->source_scan[k] =3D=3D dcn_=
bw_hor) {
74c49c7ac14f3a Harry Wentland     2017-05-08   406  				v->min_swath_height=
_c[k] =3D v->max_swath_height_c[k] / 2.0;
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   407  				if (v->bug_forcing_=
luma_and_chroma_request_to_same_size_fixed =3D=3D dcn_bw_yes) {
74c49c7ac14f3a Harry Wentland     2017-05-08   408  					v->min_swath_heigh=
t_y[k] =3D v->max_swath_height_y[k];
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   409  				}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   410  				else {
74c49c7ac14f3a Harry Wentland     2017-05-08   411  					v->min_swath_heigh=
t_y[k] =3D v->max_swath_height_y[k] / 2.0;
74c49c7ac14f3a Harry Wentland     2017-05-08   412  				}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   413  			}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   414  			else {
74c49c7ac14f3a Harry Wentland     2017-05-08   415  				v->min_swath_height=
_y[k] =3D v->max_swath_height_y[k];
74c49c7ac14f3a Harry Wentland     2017-05-08   416  				v->min_swath_height=
_c[k] =3D v->max_swath_height_c[k];
74c49c7ac14f3a Harry Wentland     2017-05-08   417  			}
74c49c7ac14f3a Harry Wentland     2017-05-08   418  		}
74c49c7ac14f3a Harry Wentland     2017-05-08   419  		if (v->source_surface=
_mode[k] =3D=3D dcn_bw_sw_linear) {
74c49c7ac14f3a Harry Wentland     2017-05-08   420  			v->maximum_swath_wid=
th =3D 8192.0;
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   421  		}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   422  		else {
74c49c7ac14f3a Harry Wentland     2017-05-08   423  			v->maximum_swath_wid=
th =3D 5120.0;
74c49c7ac14f3a Harry Wentland     2017-05-08   424  		}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   425  		v->number_of_dpp_requ=
ired_for_det_size =3Ddcn_bw_ceil2(v->swath_width_ysingle_dpp[k] /dcn_bw_min=
2(v->maximum_swath_width, v->det_buffer_size_in_kbyte * 1024.0 / 2.0 / (v->=
byte_per_pixel_in_dety[k] * v->min_swath_height_y[k] + v->byte_per_pixel_in=
_detc[k] / 2.0 * v->min_swath_height_c[k])), 1.0);
74c49c7ac14f3a Harry Wentland     2017-05-08   426  		if (v->byte_per_pixel=
_in_detc[k] =3D=3D 0.0) {
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   427  			v->number_of_dpp_req=
uired_for_lb_size =3Ddcn_bw_ceil2((v->vtaps[k] +dcn_bw_max2(dcn_bw_ceil2(v-=
>v_ratio[k], 1.0) - 2, 0.0)) * v->swath_width_ysingle_dpp[k] /dcn_bw_max2(v=
->h_ratio[k], 1.0) * v->lb_bit_per_pixel[k] / v->line_buffer_size, 1.0);
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   428  		}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   429  		else {
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   430  			v->number_of_dpp_req=
uired_for_lb_size =3Ddcn_bw_max2(dcn_bw_ceil2((v->vtaps[k] +dcn_bw_max2(dcn=
_bw_ceil2(v->v_ratio[k], 1.0) - 2, 0.0)) * v->swath_width_ysingle_dpp[k] /d=
cn_bw_max2(v->h_ratio[k], 1.0) * v->lb_bit_per_pixel[k] / v->line_buffer_si=
ze, 1.0),dcn_bw_ceil2((v->vta_pschroma[k] +dcn_bw_max2(dcn_bw_ceil2(v->v_ra=
tio[k] / 2.0, 1.0) - 2, 0.0)) * v->swath_width_ysingle_dpp[k] / 2.0 /dcn_bw=
_max2(v->h_ratio[k] / 2.0, 1.0) * v->lb_bit_per_pixel[k] / v->line_buffer_s=
ize, 1.0));
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   431  		}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   432  		v->number_of_dpp_requ=
ired_for_det_and_lb_size[k] =3Ddcn_bw_max2(v->number_of_dpp_required_for_de=
t_size, v->number_of_dpp_required_for_lb_size);
74c49c7ac14f3a Harry Wentland     2017-05-08   433  	}
74c49c7ac14f3a Harry Wentland     2017-05-08   434  	for (i =3D 0; i <=3D n=
umber_of_states_plus_one; i++) {
74c49c7ac14f3a Harry Wentland     2017-05-08   435  		for (j =3D 0; j <=3D =
1; j++) {
74c49c7ac14f3a Harry Wentland     2017-05-08   436  			v->total_number_of_a=
ctive_dpp[i][j] =3D 0.0;
74c49c7ac14f3a Harry Wentland     2017-05-08   437  			v->required_dispclk[=
i][j] =3D 0.0;
74c49c7ac14f3a Harry Wentland     2017-05-08   438  			v->dispclk_dppclk_su=
pport[i][j] =3D dcn_bw_yes;
74c49c7ac14f3a Harry Wentland     2017-05-08   439  			for (k =3D 0; k <=3D=
 v->number_of_active_planes - 1; k++) {
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   440  				v->min_dispclk_usin=
g_single_dpp =3Ddcn_bw_max2(v->pixel_clock[k], v->min_dppclk_using_single_d=
pp[k] * (j + 1)) * (1.0 + v->downspreading / 100.0);
74c49c7ac14f3a Harry Wentland     2017-05-08   441  				if (v->odm_capabili=
ty =3D=3D dcn_bw_yes) {
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   442  					v->min_dispclk_usi=
ng_dual_dpp =3Ddcn_bw_max2(v->pixel_clock[k] / 2.0, v->min_dppclk_using_sin=
gle_dpp[k] / 2.0 * (j + 1)) * (1.0 + v->downspreading / 100.0);
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   443  				}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   444  				else {
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   445  					v->min_dispclk_usi=
ng_dual_dpp =3Ddcn_bw_max2(v->pixel_clock[k], v->min_dppclk_using_single_dp=
p[k] / 2.0 * (j + 1)) * (1.0 + v->downspreading / 100.0);
74c49c7ac14f3a Harry Wentland     2017-05-08   446  				}
74c49c7ac14f3a Harry Wentland     2017-05-08   447  				if (i < number_of_s=
tates) {
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   448  					v->min_dispclk_usi=
ng_single_dpp =3D v->min_dispclk_using_single_dpp * (1.0 + v->dispclk_rampi=
ng_margin / 100.0);
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   449  					v->min_dispclk_usi=
ng_dual_dpp =3D v->min_dispclk_using_dual_dpp * (1.0 + v->dispclk_ramping_m=
argin / 100.0);
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   450  				}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   451  				if (v->min_dispclk_=
using_single_dpp <=3Ddcn_bw_min2(v->max_dispclk[i], (j + 1) * v->max_dppclk=
[i]) && v->number_of_dpp_required_for_det_and_lb_size[k] <=3D 1.0) {
74c49c7ac14f3a Harry Wentland     2017-05-08   452  					v->no_of_dpp[i][j]=
[k] =3D 1.0;
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   453  					v->required_dispcl=
k[i][j] =3Ddcn_bw_max2(v->required_dispclk[i][j], v->min_dispclk_using_sing=
le_dpp);
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   454  				}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   455  				else if (v->min_dis=
pclk_using_dual_dpp <=3Ddcn_bw_min2(v->max_dispclk[i], (j + 1) * v->max_dpp=
clk[i])) {
74c49c7ac14f3a Harry Wentland     2017-05-08   456  					v->no_of_dpp[i][j]=
[k] =3D 2.0;
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   457  					v->required_dispcl=
k[i][j] =3Ddcn_bw_max2(v->required_dispclk[i][j], v->min_dispclk_using_dual=
_dpp);
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   458  				}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   459  				else {
74c49c7ac14f3a Harry Wentland     2017-05-08   460  					v->no_of_dpp[i][j]=
[k] =3D 2.0;
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   461  					v->required_dispcl=
k[i][j] =3Ddcn_bw_max2(v->required_dispclk[i][j], v->min_dispclk_using_dual=
_dpp);
74c49c7ac14f3a Harry Wentland     2017-05-08   462  					v->dispclk_dppclk_=
support[i][j] =3D dcn_bw_no;
74c49c7ac14f3a Harry Wentland     2017-05-08   463  				}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   464  				v->total_number_of_=
active_dpp[i][j] =3D v->total_number_of_active_dpp[i][j] + v->no_of_dpp[i][=
j][k];
74c49c7ac14f3a Harry Wentland     2017-05-08   465  			}
74c49c7ac14f3a Harry Wentland     2017-05-08   466  			if (v->total_number_=
of_active_dpp[i][j] > v->max_num_dpp) {
74c49c7ac14f3a Harry Wentland     2017-05-08   467  				v->total_number_of_=
active_dpp[i][j] =3D 0.0;
74c49c7ac14f3a Harry Wentland     2017-05-08   468  				v->required_dispclk=
[i][j] =3D 0.0;
74c49c7ac14f3a Harry Wentland     2017-05-08   469  				v->dispclk_dppclk_s=
upport[i][j] =3D dcn_bw_yes;
74c49c7ac14f3a Harry Wentland     2017-05-08   470  				for (k =3D 0; k <=
=3D v->number_of_active_planes - 1; k++) {
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   471  					v->min_dispclk_usi=
ng_single_dpp =3Ddcn_bw_max2(v->pixel_clock[k], v->min_dppclk_using_single_=
dpp[k] * (j + 1)) * (1.0 + v->downspreading / 100.0);
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   472  					v->min_dispclk_usi=
ng_dual_dpp =3Ddcn_bw_max2(v->pixel_clock[k], v->min_dppclk_using_single_dp=
p[k] / 2.0 * (j + 1)) * (1.0 + v->downspreading / 100.0);
74c49c7ac14f3a Harry Wentland     2017-05-08   473  					if (i < number_of_=
states) {
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   474  						v->min_dispclk_us=
ing_single_dpp =3D v->min_dispclk_using_single_dpp * (1.0 + v->dispclk_ramp=
ing_margin / 100.0);
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   475  						v->min_dispclk_us=
ing_dual_dpp =3D v->min_dispclk_using_dual_dpp * (1.0 + v->dispclk_ramping_=
margin / 100.0);
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   476  					}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   477  					if (v->number_of_d=
pp_required_for_det_and_lb_size[k] <=3D 1.0) {
74c49c7ac14f3a Harry Wentland     2017-05-08   478  						v->no_of_dpp[i][j=
][k] =3D 1.0;
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   479  						v->required_dispc=
lk[i][j] =3Ddcn_bw_max2(v->required_dispclk[i][j], v->min_dispclk_using_sin=
gle_dpp);
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   480  						if (v->min_dispcl=
k_using_single_dpp >dcn_bw_min2(v->max_dispclk[i], (j + 1) * v->max_dppclk[=
i])) {
74c49c7ac14f3a Harry Wentland     2017-05-08   481  							v->dispclk_dppcl=
k_support[i][j] =3D dcn_bw_no;
74c49c7ac14f3a Harry Wentland     2017-05-08   482  						}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   483  					}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   484  					else {
74c49c7ac14f3a Harry Wentland     2017-05-08   485  						v->no_of_dpp[i][j=
][k] =3D 2.0;
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   486  						v->required_dispc=
lk[i][j] =3Ddcn_bw_max2(v->required_dispclk[i][j], v->min_dispclk_using_dua=
l_dpp);
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   487  						if (v->min_dispcl=
k_using_dual_dpp >dcn_bw_min2(v->max_dispclk[i], (j + 1) * v->max_dppclk[i]=
)) {
74c49c7ac14f3a Harry Wentland     2017-05-08   488  							v->dispclk_dppcl=
k_support[i][j] =3D dcn_bw_no;
74c49c7ac14f3a Harry Wentland     2017-05-08   489  						}
74c49c7ac14f3a Harry Wentland     2017-05-08   490  					}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   491  					v->total_number_of=
_active_dpp[i][j] =3D v->total_number_of_active_dpp[i][j] + v->no_of_dpp[i]=
[j][k];
74c49c7ac14f3a Harry Wentland     2017-05-08   492  				}
74c49c7ac14f3a Harry Wentland     2017-05-08   493  			}
74c49c7ac14f3a Harry Wentland     2017-05-08   494  		}
74c49c7ac14f3a Harry Wentland     2017-05-08   495  	}
74c49c7ac14f3a Harry Wentland     2017-05-08   496  	/*viewport size check*=
/
74c49c7ac14f3a Harry Wentland     2017-05-08   497 =20
74c49c7ac14f3a Harry Wentland     2017-05-08   498  	v->viewport_size_suppo=
rt =3D dcn_bw_yes;
74c49c7ac14f3a Harry Wentland     2017-05-08   499  	for (k =3D 0; k <=3D v=
->number_of_active_planes - 1; k++) {
74c49c7ac14f3a Harry Wentland     2017-05-08   500  		if (v->number_of_dpp_=
required_for_det_and_lb_size[k] > 2.0) {
74c49c7ac14f3a Harry Wentland     2017-05-08   501  			v->viewport_size_sup=
port =3D dcn_bw_no;
74c49c7ac14f3a Harry Wentland     2017-05-08   502  		}
74c49c7ac14f3a Harry Wentland     2017-05-08   503  	}
74c49c7ac14f3a Harry Wentland     2017-05-08   504  	/*total available pipe=
s support check*/
74c49c7ac14f3a Harry Wentland     2017-05-08   505 =20
74c49c7ac14f3a Harry Wentland     2017-05-08   506  	for (i =3D 0; i <=3D n=
umber_of_states_plus_one; i++) {
74c49c7ac14f3a Harry Wentland     2017-05-08   507  		for (j =3D 0; j <=3D =
1; j++) {
74c49c7ac14f3a Harry Wentland     2017-05-08   508  			if (v->total_number_=
of_active_dpp[i][j] <=3D v->max_num_dpp) {
74c49c7ac14f3a Harry Wentland     2017-05-08   509  				v->total_available_=
pipes_support[i][j] =3D dcn_bw_yes;
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   510  			}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   511  			else {
74c49c7ac14f3a Harry Wentland     2017-05-08   512  				v->total_available_=
pipes_support[i][j] =3D dcn_bw_no;
74c49c7ac14f3a Harry Wentland     2017-05-08   513  			}
74c49c7ac14f3a Harry Wentland     2017-05-08   514  		}
74c49c7ac14f3a Harry Wentland     2017-05-08   515  	}
74c49c7ac14f3a Harry Wentland     2017-05-08   516  	/*urgent latency suppo=
rt check*/
74c49c7ac14f3a Harry Wentland     2017-05-08   517 =20
74c49c7ac14f3a Harry Wentland     2017-05-08   518  	for (k =3D 0; k <=3D v=
->number_of_active_planes - 1; k++) {
74c49c7ac14f3a Harry Wentland     2017-05-08   519  		for (i =3D 0; i <=3D =
number_of_states_plus_one; i++) {
74c49c7ac14f3a Harry Wentland     2017-05-08   520  			for (j =3D 0; j <=3D=
 1; j++) {
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   521  				v->swath_width_yper=
_state[i][j][k] =3D v->swath_width_ysingle_dpp[k] / v->no_of_dpp[i][j][k];
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   522  				v->swath_width_gran=
ularity_y =3D 256.0 /dcn_bw_ceil2(v->byte_per_pixel_in_dety[k], 1.0) / v->m=
ax_swath_height_y[k];
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   523  				v->rounded_up_max_s=
wath_size_bytes_y =3D (dcn_bw_ceil2(v->swath_width_yper_state[i][j][k] - 1.=
0, v->swath_width_granularity_y) + v->swath_width_granularity_y) * v->byte_=
per_pixel_in_dety[k] * v->max_swath_height_y[k];
74c49c7ac14f3a Harry Wentland     2017-05-08   524  				if (v->source_pixel=
_format[k] =3D=3D dcn_bw_yuv420_sub_10) {
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   525  					v->rounded_up_max_=
swath_size_bytes_y =3Ddcn_bw_ceil2(v->rounded_up_max_swath_size_bytes_y, 25=
6.0) + 256;
74c49c7ac14f3a Harry Wentland     2017-05-08   526  				}
74c49c7ac14f3a Harry Wentland     2017-05-08   527  				if (v->max_swath_he=
ight_c[k] > 0.0) {
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   528  					v->swath_width_gra=
nularity_c =3D 256.0 /dcn_bw_ceil2(v->byte_per_pixel_in_detc[k], 2.0) / v->=
max_swath_height_c[k];
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   529  				}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   530  				v->rounded_up_max_s=
wath_size_bytes_c =3D (dcn_bw_ceil2(v->swath_width_yper_state[i][j][k] / 2.=
0 - 1.0, v->swath_width_granularity_c) + v->swath_width_granularity_c) * v-=
>byte_per_pixel_in_detc[k] * v->max_swath_height_c[k];
74c49c7ac14f3a Harry Wentland     2017-05-08   531  				if (v->source_pixel=
_format[k] =3D=3D dcn_bw_yuv420_sub_10) {
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   532  					v->rounded_up_max_=
swath_size_bytes_c =3Ddcn_bw_ceil2(v->rounded_up_max_swath_size_bytes_c, 25=
6.0) + 256;
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   533  				}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   534  				if (v->rounded_up_m=
ax_swath_size_bytes_y + v->rounded_up_max_swath_size_bytes_c <=3D v->det_bu=
ffer_size_in_kbyte * 1024.0 / 2.0) {
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   535  					v->swath_height_yp=
er_state[i][j][k] =3D v->max_swath_height_y[k];
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   536  					v->swath_height_cp=
er_state[i][j][k] =3D v->max_swath_height_c[k];
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   537  				}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   538  				else {
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   539  					v->swath_height_yp=
er_state[i][j][k] =3D v->min_swath_height_y[k];
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   540  					v->swath_height_cp=
er_state[i][j][k] =3D v->min_swath_height_c[k];
74c49c7ac14f3a Harry Wentland     2017-05-08   541  				}
74c49c7ac14f3a Harry Wentland     2017-05-08   542  				if (v->byte_per_pix=
el_in_detc[k] =3D=3D 0.0) {
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   543  					v->lines_in_det_lu=
ma =3D v->det_buffer_size_in_kbyte * 1024.0 / v->byte_per_pixel_in_dety[k] =
/ v->swath_width_yper_state[i][j][k];
74c49c7ac14f3a Harry Wentland     2017-05-08   544  					v->lines_in_det_ch=
roma =3D 0.0;
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   545  				}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   546  				else if (v->swath_h=
eight_yper_state[i][j][k] <=3D v->swath_height_cper_state[i][j][k]) {
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   547  					v->lines_in_det_lu=
ma =3D v->det_buffer_size_in_kbyte * 1024.0 / 2.0 / v->byte_per_pixel_in_de=
ty[k] / v->swath_width_yper_state[i][j][k];
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   548  					v->lines_in_det_ch=
roma =3D v->det_buffer_size_in_kbyte * 1024.0 / 2.0 / v->byte_per_pixel_in_=
detc[k] / (v->swath_width_yper_state[i][j][k] / 2.0);
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   549  				}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   550  				else {
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   551  					v->lines_in_det_lu=
ma =3D v->det_buffer_size_in_kbyte * 1024.0 * 2.0 / 3.0 / v->byte_per_pixel=
_in_dety[k] / v->swath_width_yper_state[i][j][k];
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   552  					v->lines_in_det_ch=
roma =3D v->det_buffer_size_in_kbyte * 1024.0 / 3.0 / v->byte_per_pixel_in_=
dety[k] / (v->swath_width_yper_state[i][j][k] / 2.0);
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   553  				}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   554  				v->effective_lb_lat=
ency_hiding_source_lines_luma =3Ddcn_bw_min2(v->max_line_buffer_lines,dcn_b=
w_floor2(v->line_buffer_size / v->lb_bit_per_pixel[k] / (v->swath_width_ype=
r_state[i][j][k] /dcn_bw_max2(v->h_ratio[k], 1.0)), 1.0)) - (v->vtaps[k] - =
1.0);
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   555  				v->effective_lb_lat=
ency_hiding_source_lines_chroma =3Ddcn_bw_min2(v->max_line_buffer_lines,dcn=
_bw_floor2(v->line_buffer_size / v->lb_bit_per_pixel[k] / (v->swath_width_y=
per_state[i][j][k] / 2.0 /dcn_bw_max2(v->h_ratio[k] / 2.0, 1.0)), 1.0)) - (=
v->vta_pschroma[k] - 1.0);
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   556  				v->effective_detlb_=
lines_luma =3Ddcn_bw_floor2(v->lines_in_det_luma +dcn_bw_min2(v->lines_in_d=
et_luma * v->required_dispclk[i][j] * v->byte_per_pixel_in_dety[k] * v->psc=
l_factor[k] / v->return_bw_per_state[i], v->effective_lb_latency_hiding_sou=
rce_lines_luma), v->swath_height_yper_state[i][j][k]);
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   557  				v->effective_detlb_=
lines_chroma =3Ddcn_bw_floor2(v->lines_in_det_chroma +dcn_bw_min2(v->lines_=
in_det_chroma * v->required_dispclk[i][j] * v->byte_per_pixel_in_detc[k] * =
v->pscl_factor_chroma[k] / v->return_bw_per_state[i], v->effective_lb_laten=
cy_hiding_source_lines_chroma), v->swath_height_cper_state[i][j][k]);
74c49c7ac14f3a Harry Wentland     2017-05-08   558  				if (v->byte_per_pix=
el_in_detc[k] =3D=3D 0.0) {
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   559  					v->urgent_latency_=
support_us_per_state[i][j][k] =3D v->effective_detlb_lines_luma * (v->htota=
l[k] / v->pixel_clock[k]) / v->v_ratio[k] - v->effective_detlb_lines_luma *=
 v->swath_width_yper_state[i][j][k] *dcn_bw_ceil2(v->byte_per_pixel_in_dety=
[k], 1.0) / (v->return_bw_per_state[i] / v->no_of_dpp[i][j][k]);
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   560  				}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   561  				else {
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   562  					v->urgent_latency_=
support_us_per_state[i][j][k] =3Ddcn_bw_min2(v->effective_detlb_lines_luma =
* (v->htotal[k] / v->pixel_clock[k]) / v->v_ratio[k] - v->effective_detlb_l=
ines_luma * v->swath_width_yper_state[i][j][k] *dcn_bw_ceil2(v->byte_per_pi=
xel_in_dety[k], 1.0) / (v->return_bw_per_state[i] / v->no_of_dpp[i][j][k]),=
 v->effective_detlb_lines_chroma * (v->htotal[k] / v->pixel_clock[k]) / (v-=
>v_ratio[k] / 2.0) - v->effective_detlb_lines_chroma * v->swath_width_yper_=
state[i][j][k] / 2.0 *dcn_bw_ceil2(v->byte_per_pixel_in_detc[k], 2.0) / (v-=
>return_bw_per_state[i] / v->no_of_dpp[i][j][k]));
74c49c7ac14f3a Harry Wentland     2017-05-08   563  				}
74c49c7ac14f3a Harry Wentland     2017-05-08   564  			}
74c49c7ac14f3a Harry Wentland     2017-05-08   565  		}
74c49c7ac14f3a Harry Wentland     2017-05-08   566  	}
74c49c7ac14f3a Harry Wentland     2017-05-08   567  	for (i =3D 0; i <=3D n=
umber_of_states_plus_one; i++) {
74c49c7ac14f3a Harry Wentland     2017-05-08   568  		for (j =3D 0; j <=3D =
1; j++) {
74c49c7ac14f3a Harry Wentland     2017-05-08   569  			v->urgent_latency_su=
pport[i][j] =3D dcn_bw_yes;
74c49c7ac14f3a Harry Wentland     2017-05-08   570  			for (k =3D 0; k <=3D=
 v->number_of_active_planes - 1; k++) {
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   571  				if (v->urgent_laten=
cy_support_us_per_state[i][j][k] < v->urgent_latency / 1.0) {
74c49c7ac14f3a Harry Wentland     2017-05-08   572  					v->urgent_latency_=
support[i][j] =3D dcn_bw_no;
74c49c7ac14f3a Harry Wentland     2017-05-08   573  				}
74c49c7ac14f3a Harry Wentland     2017-05-08   574  			}
74c49c7ac14f3a Harry Wentland     2017-05-08   575  		}
74c49c7ac14f3a Harry Wentland     2017-05-08   576  	}
74c49c7ac14f3a Harry Wentland     2017-05-08   577  	/*prefetch check*/
74c49c7ac14f3a Harry Wentland     2017-05-08   578 =20
74c49c7ac14f3a Harry Wentland     2017-05-08   579  	for (i =3D 0; i <=3D n=
umber_of_states_plus_one; i++) {
74c49c7ac14f3a Harry Wentland     2017-05-08   580  		for (j =3D 0; j <=3D =
1; j++) {
74c49c7ac14f3a Harry Wentland     2017-05-08   581  			v->total_number_of_d=
cc_active_dpp[i][j] =3D 0.0;
74c49c7ac14f3a Harry Wentland     2017-05-08   582  			for (k =3D 0; k <=3D=
 v->number_of_active_planes - 1; k++) {
74c49c7ac14f3a Harry Wentland     2017-05-08   583  				if (v->dcc_enable[k=
] =3D=3D dcn_bw_yes) {
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   584  					v->total_number_of=
_dcc_active_dpp[i][j] =3D v->total_number_of_dcc_active_dpp[i][j] + v->no_o=
f_dpp[i][j][k];
74c49c7ac14f3a Harry Wentland     2017-05-08   585  				}
74c49c7ac14f3a Harry Wentland     2017-05-08   586  			}
74c49c7ac14f3a Harry Wentland     2017-05-08   587  		}
74c49c7ac14f3a Harry Wentland     2017-05-08   588  	}
74c49c7ac14f3a Harry Wentland     2017-05-08   589  	for (i =3D 0; i <=3D n=
umber_of_states_plus_one; i++) {
74c49c7ac14f3a Harry Wentland     2017-05-08   590  		for (j =3D 0; j <=3D =
1; j++) {
74c49c7ac14f3a Harry Wentland     2017-05-08   591  			v->projected_dcfclk_=
deep_sleep =3D 8.0;
74c49c7ac14f3a Harry Wentland     2017-05-08   592  			for (k =3D 0; k <=3D=
 v->number_of_active_planes - 1; k++) {
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   593  				v->projected_dcfclk=
_deep_sleep =3Ddcn_bw_max2(v->projected_dcfclk_deep_sleep, v->pixel_clock[k=
] / 16.0);
74c49c7ac14f3a Harry Wentland     2017-05-08   594  				if (v->byte_per_pix=
el_in_detc[k] =3D=3D 0.0) {
74c49c7ac14f3a Harry Wentland     2017-05-08   595  					if (v->v_ratio[k] =
<=3D 1.0) {
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   596  						v->projected_dcfc=
lk_deep_sleep =3Ddcn_bw_max2(v->projected_dcfclk_deep_sleep, 1.1 *dcn_bw_ce=
il2(v->byte_per_pixel_in_dety[k], 1.0) / 64.0 * v->h_ratio[k] * v->pixel_cl=
ock[k] / v->no_of_dpp[i][j][k]);
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   597  					}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   598  					else {
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   599  						v->projected_dcfc=
lk_deep_sleep =3Ddcn_bw_max2(v->projected_dcfclk_deep_sleep, 1.1 *dcn_bw_ce=
il2(v->byte_per_pixel_in_dety[k], 1.0) / 64.0 * v->pscl_factor[k] * v->requ=
ired_dispclk[i][j] / (1 + j));
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   600  					}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   601  				}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   602  				else {
74c49c7ac14f3a Harry Wentland     2017-05-08   603  					if (v->v_ratio[k] =
<=3D 1.0) {
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   604  						v->projected_dcfc=
lk_deep_sleep =3Ddcn_bw_max2(v->projected_dcfclk_deep_sleep, 1.1 *dcn_bw_ce=
il2(v->byte_per_pixel_in_dety[k], 1.0) / 32.0 * v->h_ratio[k] * v->pixel_cl=
ock[k] / v->no_of_dpp[i][j][k]);
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   605  					}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   606  					else {
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   607  						v->projected_dcfc=
lk_deep_sleep =3Ddcn_bw_max2(v->projected_dcfclk_deep_sleep, 1.1 *dcn_bw_ce=
il2(v->byte_per_pixel_in_dety[k], 1.0) / 32.0 * v->pscl_factor[k] * v->requ=
ired_dispclk[i][j] / (1 + j));
74c49c7ac14f3a Harry Wentland     2017-05-08   608  					}
74c49c7ac14f3a Harry Wentland     2017-05-08   609  					if (v->v_ratio[k] =
/ 2.0 <=3D 1.0) {
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   610  						v->projected_dcfc=
lk_deep_sleep =3Ddcn_bw_max2(v->projected_dcfclk_deep_sleep, 1.1 *dcn_bw_ce=
il2(v->byte_per_pixel_in_detc[k], 2.0) / 32.0 * v->h_ratio[k] / 2.0 * v->pi=
xel_clock[k] / v->no_of_dpp[i][j][k]);
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   611  					}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   612  					else {
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   613  						v->projected_dcfc=
lk_deep_sleep =3Ddcn_bw_max2(v->projected_dcfclk_deep_sleep, 1.1 *dcn_bw_ce=
il2(v->byte_per_pixel_in_detc[k], 2.0) / 32.0 * v->pscl_factor_chroma[k] * =
v->required_dispclk[i][j] / (1 + j));
74c49c7ac14f3a Harry Wentland     2017-05-08   614  					}
74c49c7ac14f3a Harry Wentland     2017-05-08   615  				}
74c49c7ac14f3a Harry Wentland     2017-05-08   616  			}
74c49c7ac14f3a Harry Wentland     2017-05-08   617  			for (k =3D 0; k <=3D=
 v->number_of_active_planes - 1; k++) {
74c49c7ac14f3a Harry Wentland     2017-05-08   618  				if (v->dcc_enable[k=
] =3D=3D dcn_bw_yes) {
74c49c7ac14f3a Harry Wentland     2017-05-08   619  					v->meta_req_height=
_y =3D 8.0 * v->read256_block_height_y[k];
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   620  					v->meta_req_width_=
y =3D 64.0 * 256.0 /dcn_bw_ceil2(v->byte_per_pixel_in_dety[k], 1.0) / v->me=
ta_req_height_y;
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   621  					v->meta_surface_wi=
dth_y =3Ddcn_bw_ceil2(v->viewport_width[k] / v->no_of_dpp[i][j][k] - 1.0, v=
->meta_req_width_y) + v->meta_req_width_y;
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   622  					v->meta_surface_he=
ight_y =3Ddcn_bw_ceil2(v->viewport_height[k] - 1.0, v->meta_req_height_y) +=
 v->meta_req_height_y;
74c49c7ac14f3a Harry Wentland     2017-05-08   623  					if (v->pte_enable =
=3D=3D dcn_bw_yes) {
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   624  						v->meta_pte_bytes=
_per_frame_y =3D (dcn_bw_ceil2((v->meta_surface_width_y * v->meta_surface_h=
eight_y *dcn_bw_ceil2(v->byte_per_pixel_in_dety[k], 1.0) / 256.0 - 4096.0) =
/ 8.0 / 4096.0, 1.0) + 1) * 64.0;
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   625  					}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   626  					else {
74c49c7ac14f3a Harry Wentland     2017-05-08   627  						v->meta_pte_bytes=
_per_frame_y =3D 0.0;
74c49c7ac14f3a Harry Wentland     2017-05-08   628  					}
74c49c7ac14f3a Harry Wentland     2017-05-08   629  					if (v->source_scan=
[k] =3D=3D dcn_bw_hor) {
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   630  						v->meta_row_bytes=
_y =3D v->meta_surface_width_y * v->meta_req_height_y *dcn_bw_ceil2(v->byte=
_per_pixel_in_dety[k], 1.0) / 256.0;
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   631  					}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   632  					else {
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   633  						v->meta_row_bytes=
_y =3D v->meta_surface_height_y * v->meta_req_width_y *dcn_bw_ceil2(v->byte=
_per_pixel_in_dety[k], 1.0) / 256.0;
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   634  					}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   635  				}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   636  				else {
74c49c7ac14f3a Harry Wentland     2017-05-08   637  					v->meta_pte_bytes_=
per_frame_y =3D 0.0;
74c49c7ac14f3a Harry Wentland     2017-05-08   638  					v->meta_row_bytes_=
y =3D 0.0;
74c49c7ac14f3a Harry Wentland     2017-05-08   639  				}
74c49c7ac14f3a Harry Wentland     2017-05-08   640  				if (v->pte_enable =
=3D=3D dcn_bw_yes) {
74c49c7ac14f3a Harry Wentland     2017-05-08   641  					if (v->source_surf=
ace_mode[k] =3D=3D dcn_bw_sw_linear) {
74c49c7ac14f3a Harry Wentland     2017-05-08   642  						v->macro_tile_blo=
ck_size_bytes_y =3D 256.0;
74c49c7ac14f3a Harry Wentland     2017-05-08   643  						v->macro_tile_blo=
ck_height_y =3D 1.0;
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   644  					}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   645  					else if (v->source=
_surface_mode[k] =3D=3D dcn_bw_sw_4_kb_s || v->source_surface_mode[k] =3D=
=3D dcn_bw_sw_4_kb_s_x || v->source_surface_mode[k] =3D=3D dcn_bw_sw_4_kb_d=
 || v->source_surface_mode[k] =3D=3D dcn_bw_sw_4_kb_d_x) {
74c49c7ac14f3a Harry Wentland     2017-05-08   646  						v->macro_tile_blo=
ck_size_bytes_y =3D 4096.0;
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   647  						v->macro_tile_blo=
ck_height_y =3D 4.0 * v->read256_block_height_y[k];
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   648  					}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   649  					else if (v->source=
_surface_mode[k] =3D=3D dcn_bw_sw_64_kb_s || v->source_surface_mode[k] =3D=
=3D dcn_bw_sw_64_kb_s_t || v->source_surface_mode[k] =3D=3D dcn_bw_sw_64_kb=
_s_x || v->source_surface_mode[k] =3D=3D dcn_bw_sw_64_kb_d || v->source_sur=
face_mode[k] =3D=3D dcn_bw_sw_64_kb_d_t || v->source_surface_mode[k] =3D=3D=
 dcn_bw_sw_64_kb_d_x) {
74c49c7ac14f3a Harry Wentland     2017-05-08   650  						v->macro_tile_blo=
ck_size_bytes_y =3D 64.0 * 1024;
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   651  						v->macro_tile_blo=
ck_height_y =3D 16.0 * v->read256_block_height_y[k];
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   652  					}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   653  					else {
74c49c7ac14f3a Harry Wentland     2017-05-08   654  						v->macro_tile_blo=
ck_size_bytes_y =3D 256.0 * 1024;
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   655  						v->macro_tile_blo=
ck_height_y =3D 32.0 * v->read256_block_height_y[k];
74c49c7ac14f3a Harry Wentland     2017-05-08   656  					}
74c49c7ac14f3a Harry Wentland     2017-05-08   657  					if (v->macro_tile_=
block_size_bytes_y <=3D 65536.0) {
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   658  						v->data_pte_req_h=
eight_y =3D v->macro_tile_block_height_y;
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   659  					}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   660  					else {
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   661  						v->data_pte_req_h=
eight_y =3D 16.0 * v->read256_block_height_y[k];
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   662  					}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   663  					v->data_pte_req_wi=
dth_y =3D 4096.0 /dcn_bw_ceil2(v->byte_per_pixel_in_dety[k], 1.0) / v->data=
_pte_req_height_y * 8;
74c49c7ac14f3a Harry Wentland     2017-05-08   664  					if (v->source_surf=
ace_mode[k] =3D=3D dcn_bw_sw_linear) {
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   665  						v->dpte_bytes_per=
_row_y =3D 64.0 * (dcn_bw_ceil2((v->viewport_width[k] / v->no_of_dpp[i][j][=
k] *dcn_bw_min2(128.0, dcn_bw_pow(2.0,dcn_bw_floor2(dcn_bw_log(v->pte_buffe=
r_size_in_requests * v->data_pte_req_width_y / (v->viewport_width[k] / v->n=
o_of_dpp[i][j][k]), 2.0), 1.0))) - 1.0) / v->data_pte_req_width_y, 1.0) + 1=
);
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   666  					}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   667  					else if (v->source=
_scan[k] =3D=3D dcn_bw_hor) {
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   668  						v->dpte_bytes_per=
_row_y =3D 64.0 * (dcn_bw_ceil2((v->viewport_width[k] / v->no_of_dpp[i][j][=
k] - 1.0) / v->data_pte_req_width_y, 1.0) + 1);
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   669  					}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   670  					else {
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   671  						v->dpte_bytes_per=
_row_y =3D 64.0 * (dcn_bw_ceil2((v->viewport_height[k] - 1.0) / v->data_pte=
_req_height_y, 1.0) + 1);
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   672  					}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   673  				}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   674  				else {
74c49c7ac14f3a Harry Wentland     2017-05-08   675  					v->dpte_bytes_per_=
row_y =3D 0.0;
74c49c7ac14f3a Harry Wentland     2017-05-08   676  				}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   677  				if ((v->source_pixe=
l_format[k] !=3D dcn_bw_rgb_sub_64 && v->source_pixel_format[k] !=3D dcn_bw=
_rgb_sub_32 && v->source_pixel_format[k] !=3D dcn_bw_rgb_sub_16)) {
74c49c7ac14f3a Harry Wentland     2017-05-08   678  					if (v->dcc_enable[=
k] =3D=3D dcn_bw_yes) {
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   679  						v->meta_req_heigh=
t_c =3D 8.0 * v->read256_block_height_c[k];
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   680  						v->meta_req_width=
_c =3D 64.0 * 256.0 /dcn_bw_ceil2(v->byte_per_pixel_in_detc[k], 2.0) / v->m=
eta_req_height_c;
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   681  						v->meta_surface_w=
idth_c =3Ddcn_bw_ceil2(v->viewport_width[k] / v->no_of_dpp[i][j][k] / 2.0 -=
 1.0, v->meta_req_width_c) + v->meta_req_width_c;
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   682  						v->meta_surface_h=
eight_c =3Ddcn_bw_ceil2(v->viewport_height[k] / 2.0 - 1.0, v->meta_req_heig=
ht_c) + v->meta_req_height_c;
74c49c7ac14f3a Harry Wentland     2017-05-08   683  						if (v->pte_enable=
 =3D=3D dcn_bw_yes) {
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   684  							v->meta_pte_byte=
s_per_frame_c =3D (dcn_bw_ceil2((v->meta_surface_width_c * v->meta_surface_=
height_c *dcn_bw_ceil2(v->byte_per_pixel_in_detc[k], 2.0) / 256.0 - 4096.0)=
 / 8.0 / 4096.0, 1.0) + 1) * 64.0;
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   685  						}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   686  						else {
74c49c7ac14f3a Harry Wentland     2017-05-08   687  							v->meta_pte_byte=
s_per_frame_c =3D 0.0;
74c49c7ac14f3a Harry Wentland     2017-05-08   688  						}
74c49c7ac14f3a Harry Wentland     2017-05-08   689  						if (v->source_sca=
n[k] =3D=3D dcn_bw_hor) {
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   690  							v->meta_row_byte=
s_c =3D v->meta_surface_width_c * v->meta_req_height_c *dcn_bw_ceil2(v->byt=
e_per_pixel_in_detc[k], 2.0) / 256.0;
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   691  						}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   692  						else {
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   693  							v->meta_row_byte=
s_c =3D v->meta_surface_height_c * v->meta_req_width_c *dcn_bw_ceil2(v->byt=
e_per_pixel_in_detc[k], 2.0) / 256.0;
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   694  						}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   695  					}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   696  					else {
74c49c7ac14f3a Harry Wentland     2017-05-08   697  						v->meta_pte_bytes=
_per_frame_c =3D 0.0;
74c49c7ac14f3a Harry Wentland     2017-05-08   698  						v->meta_row_bytes=
_c =3D 0.0;
74c49c7ac14f3a Harry Wentland     2017-05-08   699  					}
74c49c7ac14f3a Harry Wentland     2017-05-08   700  					if (v->pte_enable =
=3D=3D dcn_bw_yes) {
74c49c7ac14f3a Harry Wentland     2017-05-08   701  						if (v->source_sur=
face_mode[k] =3D=3D dcn_bw_sw_linear) {
74c49c7ac14f3a Harry Wentland     2017-05-08   702  							v->macro_tile_bl=
ock_size_bytes_c =3D 256.0;
74c49c7ac14f3a Harry Wentland     2017-05-08   703  							v->macro_tile_bl=
ock_height_c =3D 1.0;
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   704  						}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   705  						else if (v->sourc=
e_surface_mode[k] =3D=3D dcn_bw_sw_4_kb_s || v->source_surface_mode[k] =3D=
=3D dcn_bw_sw_4_kb_s_x || v->source_surface_mode[k] =3D=3D dcn_bw_sw_4_kb_d=
 || v->source_surface_mode[k] =3D=3D dcn_bw_sw_4_kb_d_x) {
74c49c7ac14f3a Harry Wentland     2017-05-08   706  							v->macro_tile_bl=
ock_size_bytes_c =3D 4096.0;
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   707  							v->macro_tile_bl=
ock_height_c =3D 4.0 * v->read256_block_height_c[k];
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   708  						}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   709  						else if (v->sourc=
e_surface_mode[k] =3D=3D dcn_bw_sw_64_kb_s || v->source_surface_mode[k] =3D=
=3D dcn_bw_sw_64_kb_s_t || v->source_surface_mode[k] =3D=3D dcn_bw_sw_64_kb=
_s_x || v->source_surface_mode[k] =3D=3D dcn_bw_sw_64_kb_d || v->source_sur=
face_mode[k] =3D=3D dcn_bw_sw_64_kb_d_t || v->source_surface_mode[k] =3D=3D=
 dcn_bw_sw_64_kb_d_x) {
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   710  							v->macro_tile_bl=
ock_size_bytes_c =3D 64.0 * 1024;
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   711  							v->macro_tile_bl=
ock_height_c =3D 16.0 * v->read256_block_height_c[k];
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   712  						}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   713  						else {
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   714  							v->macro_tile_bl=
ock_size_bytes_c =3D 256.0 * 1024;
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   715  							v->macro_tile_bl=
ock_height_c =3D 32.0 * v->read256_block_height_c[k];
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   716  						}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   717  						v->macro_tile_blo=
ck_width_c =3D v->macro_tile_block_size_bytes_c /dcn_bw_ceil2(v->byte_per_p=
ixel_in_detc[k], 2.0) / v->macro_tile_block_height_c;
74c49c7ac14f3a Harry Wentland     2017-05-08   718  						if (v->macro_tile=
_block_size_bytes_c <=3D 65536.0) {
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   719  							v->data_pte_req_=
height_c =3D v->macro_tile_block_height_c;
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   720  						}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   721  						else {
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   722  							v->data_pte_req_=
height_c =3D 16.0 * v->read256_block_height_c[k];
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   723  						}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   724  						v->data_pte_req_w=
idth_c =3D 4096.0 /dcn_bw_ceil2(v->byte_per_pixel_in_detc[k], 2.0) / v->dat=
a_pte_req_height_c * 8;
74c49c7ac14f3a Harry Wentland     2017-05-08   725  						if (v->source_sur=
face_mode[k] =3D=3D dcn_bw_sw_linear) {
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   726  							v->dpte_bytes_pe=
r_row_c =3D 64.0 * (dcn_bw_ceil2((v->viewport_width[k] / v->no_of_dpp[i][j]=
[k] / 2.0 * dcn_bw_min2(128.0, dcn_bw_pow(2.0,dcn_bw_floor2(dcn_bw_log(v->p=
te_buffer_size_in_requests * v->data_pte_req_width_c / (v->viewport_width[k=
] / v->no_of_dpp[i][j][k] / 2.0), 2.0), 1.0))) - 1.0) / v->data_pte_req_wid=
th_c, 1.0) + 1);
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   727  						}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   728  						else if (v->sourc=
e_scan[k] =3D=3D dcn_bw_hor) {
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   729  							v->dpte_bytes_pe=
r_row_c =3D 64.0 * (dcn_bw_ceil2((v->viewport_width[k] / v->no_of_dpp[i][j]=
[k] / 2.0 - 1.0) / v->data_pte_req_width_c, 1.0) + 1);
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   730  						}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   731  						else {
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   732  							v->dpte_bytes_pe=
r_row_c =3D 64.0 * (dcn_bw_ceil2((v->viewport_height[k] / 2.0 - 1.0) / v->d=
ata_pte_req_height_c, 1.0) + 1);
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   733  						}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   734  					}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   735  					else {
74c49c7ac14f3a Harry Wentland     2017-05-08   736  						v->dpte_bytes_per=
_row_c =3D 0.0;
74c49c7ac14f3a Harry Wentland     2017-05-08   737  					}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   738  				}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   739  				else {
74c49c7ac14f3a Harry Wentland     2017-05-08   740  					v->dpte_bytes_per_=
row_c =3D 0.0;
74c49c7ac14f3a Harry Wentland     2017-05-08   741  					v->meta_pte_bytes_=
per_frame_c =3D 0.0;
74c49c7ac14f3a Harry Wentland     2017-05-08   742  					v->meta_row_bytes_=
c =3D 0.0;
74c49c7ac14f3a Harry Wentland     2017-05-08   743  				}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   744  				v->dpte_bytes_per_r=
ow[k] =3D v->dpte_bytes_per_row_y + v->dpte_bytes_per_row_c;
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   745  				v->meta_pte_bytes_p=
er_frame[k] =3D v->meta_pte_bytes_per_frame_y + v->meta_pte_bytes_per_frame=
_c;
74c49c7ac14f3a Harry Wentland     2017-05-08   746  				v->meta_row_bytes[k=
] =3D v->meta_row_bytes_y + v->meta_row_bytes_c;
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   747  				v->v_init_y =3D (v-=
>v_ratio[k] + v->vtaps[k] + 1.0 + v->interlace_output[k] * 0.5 * v->v_ratio=
[k]) / 2.0;
74c49c7ac14f3a Harry Wentland     2017-05-08   748  				v->prefill_y[k] =3D=
dcn_bw_floor2(v->v_init_y, 1.0);
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   749  				v->max_num_sw_y[k] =
=3Ddcn_bw_ceil2((v->prefill_y[k] - 1.0) / v->swath_height_yper_state[i][j][=
k], 1.0) + 1;
74c49c7ac14f3a Harry Wentland     2017-05-08   750  				if (v->prefill_y[k]=
 > 1.0) {
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   751  					v->max_partial_sw_=
y =3Ddcn_bw_mod((v->prefill_y[k] - 2.0), v->swath_height_yper_state[i][j][k=
]);
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   752  				}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   753  				else {
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   754  					v->max_partial_sw_=
y =3Ddcn_bw_mod((v->prefill_y[k] + v->swath_height_yper_state[i][j][k] - 2.=
0), v->swath_height_yper_state[i][j][k]);
74c49c7ac14f3a Harry Wentland     2017-05-08   755  				}
74c49c7ac14f3a Harry Wentland     2017-05-08   756  				v->max_partial_sw_y=
 =3Ddcn_bw_max2(1.0, v->max_partial_sw_y);
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   757  				v->prefetch_lines_y=
[k] =3D v->max_num_sw_y[k] * v->swath_height_yper_state[i][j][k] + v->max_p=
artial_sw_y;
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   758  				if ((v->source_pixe=
l_format[k] !=3D dcn_bw_rgb_sub_64 && v->source_pixel_format[k] !=3D dcn_bw=
_rgb_sub_32 && v->source_pixel_format[k] !=3D dcn_bw_rgb_sub_16)) {
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   759  					v->v_init_c =3D (v=
->v_ratio[k] / 2.0 + v->vtaps[k] + 1.0 + v->interlace_output[k] * 0.5 * v->=
v_ratio[k] / 2.0) / 2.0;
74c49c7ac14f3a Harry Wentland     2017-05-08   760  					v->prefill_c[k] =
=3Ddcn_bw_floor2(v->v_init_c, 1.0);
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   761  					v->max_num_sw_c[k]=
 =3Ddcn_bw_ceil2((v->prefill_c[k] - 1.0) / v->swath_height_cper_state[i][j]=
[k], 1.0) + 1;
74c49c7ac14f3a Harry Wentland     2017-05-08   762  					if (v->prefill_c[k=
] > 1.0) {
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   763  						v->max_partial_sw=
_c =3Ddcn_bw_mod((v->prefill_c[k] - 2.0), v->swath_height_cper_state[i][j][=
k]);
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   764  					}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   765  					else {
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   766  						v->max_partial_sw=
_c =3Ddcn_bw_mod((v->prefill_c[k] + v->swath_height_cper_state[i][j][k] - 2=
.0), v->swath_height_cper_state[i][j][k]);
74c49c7ac14f3a Harry Wentland     2017-05-08   767  					}
74c49c7ac14f3a Harry Wentland     2017-05-08   768  					v->max_partial_sw_=
c =3Ddcn_bw_max2(1.0, v->max_partial_sw_c);
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   769  					v->prefetch_lines_=
c[k] =3D v->max_num_sw_c[k] * v->swath_height_cper_state[i][j][k] + v->max_=
partial_sw_c;
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   770  				}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   771  				else {
74c49c7ac14f3a Harry Wentland     2017-05-08   772  					v->prefetch_lines_=
c[k] =3D 0.0;
74c49c7ac14f3a Harry Wentland     2017-05-08   773  				}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   774  				v->dst_x_after_scal=
er =3D 90.0 * v->pixel_clock[k] / (v->required_dispclk[i][j] / (j + 1)) + 4=
2.0 * v->pixel_clock[k] / v->required_dispclk[i][j];
74c49c7ac14f3a Harry Wentland     2017-05-08   775  				if (v->no_of_dpp[i]=
[j][k] > 1.0) {
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   776  					v->dst_x_after_sca=
ler =3D v->dst_x_after_scaler + v->scaler_rec_out_width[k] / 2.0;
74c49c7ac14f3a Harry Wentland     2017-05-08   777  				}
74c49c7ac14f3a Harry Wentland     2017-05-08   778  				if (v->output_forma=
t[k] =3D=3D dcn_bw_420) {
74c49c7ac14f3a Harry Wentland     2017-05-08   779  					v->dst_y_after_sca=
ler =3D 1.0;
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   780  				}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   781  				else {
74c49c7ac14f3a Harry Wentland     2017-05-08   782  					v->dst_y_after_sca=
ler =3D 0.0;
74c49c7ac14f3a Harry Wentland     2017-05-08   783  				}
74c49c7ac14f3a Harry Wentland     2017-05-08   784  				v->time_calc =3D 24=
.0 / v->projected_dcfclk_deep_sleep;
2961fef7058dcd Dmytro Laktyushkin 2017-12-04   785  				v->v_update_offset[=
k][j] =3D dcn_bw_ceil2(v->htotal[k] / 4.0, 1.0);
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   786  				v->total_repeater_d=
elay =3D v->max_inter_dcn_tile_repeaters * (2.0 / (v->required_dispclk[i][j=
] / (j + 1)) + 3.0 / v->required_dispclk[i][j]);
2961fef7058dcd Dmytro Laktyushkin 2017-12-04   787  				v->v_update_width[k=
][j] =3D (14.0 / v->projected_dcfclk_deep_sleep + 12.0 / (v->required_dispc=
lk[i][j] / (j + 1)) + v->total_repeater_delay) * v->pixel_clock[k];
2961fef7058dcd Dmytro Laktyushkin 2017-12-04   788  				v->v_ready_offset[k=
][j] =3D dcn_bw_max2(150.0 / (v->required_dispclk[i][j] / (j + 1)), v->tota=
l_repeater_delay + 20.0 / v->projected_dcfclk_deep_sleep + 10.0 / (v->requi=
red_dispclk[i][j] / (j + 1))) * v->pixel_clock[k];
2961fef7058dcd Dmytro Laktyushkin 2017-12-04   789  				v->time_setup =3D (=
v->v_update_offset[k][j] + v->v_update_width[k][j] + v->v_ready_offset[k][j=
]) / v->pixel_clock[k];
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   790  				v->extra_latency =
=3D v->urgent_round_trip_and_out_of_order_latency_per_state[i] + (v->total_=
number_of_active_dpp[i][j] * v->pixel_chunk_size_in_kbyte + v->total_number=
_of_dcc_active_dpp[i][j] * v->meta_chunk_size) * 1024.0 / v->return_bw_per_=
state[i];
74c49c7ac14f3a Harry Wentland     2017-05-08   791  				if (v->pte_enable =
=3D=3D dcn_bw_yes) {
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   792  					v->extra_latency =
=3D v->extra_latency + v->total_number_of_active_dpp[i][j] * v->pte_chunk_s=
ize * 1024.0 / v->return_bw_per_state[i];
74c49c7ac14f3a Harry Wentland     2017-05-08   793  				}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   794  				if (v->can_vstartup=
_lines_exceed_vsync_plus_back_porch_lines_minus_one =3D=3D dcn_bw_yes) {
74c49c7ac14f3a Harry Wentland     2017-05-08   795  					v->maximum_vstartu=
p =3D v->vtotal[k] - v->vactive[k] - 1.0;
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   796  				}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   797  				else {
74c49c7ac14f3a Harry Wentland     2017-05-08   798  					v->maximum_vstartu=
p =3D v->v_sync_plus_back_porch[k] - 1.0;
74c49c7ac14f3a Harry Wentland     2017-05-08   799  				}
987741af33e5b8 Eric Yang          2018-11-21   800 =20
987741af33e5b8 Eric Yang          2018-11-21   801  				do {
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   802  					v->line_times_for_=
prefetch[k] =3D v->maximum_vstartup - v->urgent_latency / (v->htotal[k] / v=
->pixel_clock[k]) - (v->time_calc + v->time_setup) / (v->htotal[k] / v->pix=
el_clock[k]) - (v->dst_y_after_scaler + v->dst_x_after_scaler / v->htotal[k=
]);
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   803  					v->line_times_for_=
prefetch[k] =3Ddcn_bw_floor2(4.0 * (v->line_times_for_prefetch[k] + 0.125),=
 1.0) / 4;
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   804  					v->prefetch_bw[k] =
=3D (v->meta_pte_bytes_per_frame[k] + 2.0 * v->meta_row_bytes[k] + 2.0 * v-=
>dpte_bytes_per_row[k] + v->prefetch_lines_y[k] * v->swath_width_yper_state=
[i][j][k] *dcn_bw_ceil2(v->byte_per_pixel_in_dety[k], 1.0) + v->prefetch_li=
nes_c[k] * v->swath_width_yper_state[i][j][k] / 2.0 *dcn_bw_ceil2(v->byte_p=
er_pixel_in_detc[k], 2.0)) / (v->line_times_for_prefetch[k] * v->htotal[k] =
/ v->pixel_clock[k]);
987741af33e5b8 Eric Yang          2018-11-21   805 =20
987741af33e5b8 Eric Yang          2018-11-21   806  					if (v->pte_enable =
=3D=3D dcn_bw_yes && v->dcc_enable[k] =3D=3D dcn_bw_yes) {
987741af33e5b8 Eric Yang          2018-11-21   807  						v->time_for_meta_=
pte_without_immediate_flip =3D dcn_bw_max3(
4a673157b8d1e4 Michael Strauss    2020-05-08   808  								v->meta_pte_byt=
es_frame[k] / v->prefetch_bw[k],
987741af33e5b8 Eric Yang          2018-11-21   809  								v->extra_latenc=
y,
987741af33e5b8 Eric Yang          2018-11-21   810  								v->htotal[k] / =
v->pixel_clock[k] / 4.0);
987741af33e5b8 Eric Yang          2018-11-21   811  					} else {
987741af33e5b8 Eric Yang          2018-11-21   812  						v->time_for_meta_=
pte_without_immediate_flip =3D v->htotal[k] / v->pixel_clock[k] / 4.0;
987741af33e5b8 Eric Yang          2018-11-21   813  					}
987741af33e5b8 Eric Yang          2018-11-21   814 =20
987741af33e5b8 Eric Yang          2018-11-21   815  					if (v->pte_enable =
=3D=3D dcn_bw_yes || v->dcc_enable[k] =3D=3D dcn_bw_yes) {
987741af33e5b8 Eric Yang          2018-11-21   816  						v->time_for_meta_=
and_dpte_row_without_immediate_flip =3D dcn_bw_max3((
4a673157b8d1e4 Michael Strauss    2020-05-08   817  								v->meta_row_byt=
es[k] + v->dpte_bytes_per_row[k]) / v->prefetch_bw[k],
987741af33e5b8 Eric Yang          2018-11-21   818  								v->htotal[k] / =
v->pixel_clock[k] - v->time_for_meta_pte_without_immediate_flip,
987741af33e5b8 Eric Yang          2018-11-21   819  								v->extra_latenc=
y);
987741af33e5b8 Eric Yang          2018-11-21   820  					} else {
987741af33e5b8 Eric Yang          2018-11-21   821  						v->time_for_meta_=
and_dpte_row_without_immediate_flip =3D dcn_bw_max2(
987741af33e5b8 Eric Yang          2018-11-21   822  								v->htotal[k] / =
v->pixel_clock[k] - v->time_for_meta_pte_without_immediate_flip,
987741af33e5b8 Eric Yang          2018-11-21   823  								v->extra_latenc=
y - v->time_for_meta_pte_with_immediate_flip);
987741af33e5b8 Eric Yang          2018-11-21   824  					}
987741af33e5b8 Eric Yang          2018-11-21   825 =20
987741af33e5b8 Eric Yang          2018-11-21   826  					v->lines_for_meta_=
pte_without_immediate_flip[k] =3Ddcn_bw_floor2(4.0 * (v->time_for_meta_pte_=
without_immediate_flip / (v->htotal[k] / v->pixel_clock[k]) + 0.125), 1.0) =
/ 4;
987741af33e5b8 Eric Yang          2018-11-21   827  					v->lines_for_meta_=
and_dpte_row_without_immediate_flip[k] =3Ddcn_bw_floor2(4.0 * (v->time_for_=
meta_and_dpte_row_without_immediate_flip / (v->htotal[k] / v->pixel_clock[k=
]) + 0.125), 1.0) / 4;
987741af33e5b8 Eric Yang          2018-11-21   828  					v->maximum_vstartu=
p =3D v->maximum_vstartup - 1;
987741af33e5b8 Eric Yang          2018-11-21   829 =20
4a673157b8d1e4 Michael Strauss    2020-05-08   830  					if (v->lines_for_m=
eta_pte_without_immediate_flip[k] < 32.0 && v->lines_for_meta_and_dpte_row_=
without_immediate_flip[k] < 16.0)
987741af33e5b8 Eric Yang          2018-11-21   831  						break;
987741af33e5b8 Eric Yang          2018-11-21   832 =20
987741af33e5b8 Eric Yang          2018-11-21   833  				} while(1);
74c49c7ac14f3a Harry Wentland     2017-05-08   834  			}
74c49c7ac14f3a Harry Wentland     2017-05-08   835  			v->bw_available_for_=
immediate_flip =3D v->return_bw_per_state[i];
74c49c7ac14f3a Harry Wentland     2017-05-08   836  			for (k =3D 0; k <=3D=
 v->number_of_active_planes - 1; k++) {
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   837  				v->bw_available_for=
_immediate_flip =3D v->bw_available_for_immediate_flip -dcn_bw_max2(v->read=
_bandwidth[k], v->prefetch_bw[k]);
74c49c7ac14f3a Harry Wentland     2017-05-08   838  			}
74c49c7ac14f3a Harry Wentland     2017-05-08   839  			for (k =3D 0; k <=3D=
 v->number_of_active_planes - 1; k++) {
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   840  				v->total_immediate_=
flip_bytes[k] =3D 0.0;
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   841  				if ((v->source_pixe=
l_format[k] !=3D dcn_bw_yuv420_sub_8 && v->source_pixel_format[k] !=3D dcn_=
bw_yuv420_sub_10)) {
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   842  					v->total_immediate=
_flip_bytes[k] =3D v->total_immediate_flip_bytes[k] + v->meta_pte_bytes_per=
_frame[k] + v->meta_row_bytes[k] + v->dpte_bytes_per_row[k];
74c49c7ac14f3a Harry Wentland     2017-05-08   843  				}
74c49c7ac14f3a Harry Wentland     2017-05-08   844  			}
74c49c7ac14f3a Harry Wentland     2017-05-08   845  			for (k =3D 0; k <=3D=
 v->number_of_active_planes - 1; k++) {
74c49c7ac14f3a Harry Wentland     2017-05-08   846  				if (v->pte_enable =
=3D=3D dcn_bw_yes && v->dcc_enable[k] =3D=3D dcn_bw_yes) {
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   847  					v->time_for_meta_p=
te_with_immediate_flip =3Ddcn_bw_max5(v->meta_pte_bytes_per_frame[k] / v->p=
refetch_bw[k], v->meta_pte_bytes_per_frame[k] * v->total_immediate_flip_byt=
es[k] / (v->bw_available_for_immediate_flip * (v->meta_pte_bytes_per_frame[=
k] + v->meta_row_bytes[k] + v->dpte_bytes_per_row[k])), v->extra_latency, v=
->urgent_latency, v->htotal[k] / v->pixel_clock[k] / 4.0);
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   848  				}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   849  				else {
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   850  					v->time_for_meta_p=
te_with_immediate_flip =3D v->htotal[k] / v->pixel_clock[k] / 4.0;
74c49c7ac14f3a Harry Wentland     2017-05-08   851  				}
74c49c7ac14f3a Harry Wentland     2017-05-08   852  				if (v->pte_enable =
=3D=3D dcn_bw_yes || v->dcc_enable[k] =3D=3D dcn_bw_yes) {
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   853  					v->time_for_meta_a=
nd_dpte_row_with_immediate_flip =3Ddcn_bw_max5((v->meta_row_bytes[k] + v->d=
pte_bytes_per_row[k]) / v->prefetch_bw[k], (v->meta_row_bytes[k] + v->dpte_=
bytes_per_row[k]) * v->total_immediate_flip_bytes[k] / (v->bw_available_for=
_immediate_flip * (v->meta_pte_bytes_per_frame[k] + v->meta_row_bytes[k] + =
v->dpte_bytes_per_row[k])), v->htotal[k] / v->pixel_clock[k] - v->time_for_=
meta_pte_with_immediate_flip, v->extra_latency, 2.0 * v->urgent_latency);
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   854  				}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   855  				else {
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   856  					v->time_for_meta_a=
nd_dpte_row_with_immediate_flip =3Ddcn_bw_max2(v->htotal[k] / v->pixel_cloc=
k[k] - v->time_for_meta_pte_with_immediate_flip, v->extra_latency - v->time=
_for_meta_pte_with_immediate_flip);
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   857  				}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   858  				v->lines_for_meta_p=
te_with_immediate_flip[k] =3Ddcn_bw_floor2(4.0 * (v->time_for_meta_pte_with=
_immediate_flip / (v->htotal[k] / v->pixel_clock[k]) + 0.125), 1.0) / 4;
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   859  				v->lines_for_meta_a=
nd_dpte_row_with_immediate_flip[k] =3Ddcn_bw_floor2(4.0 * (v->time_for_meta=
_and_dpte_row_with_immediate_flip / (v->htotal[k] / v->pixel_clock[k]) + 0.=
125), 1.0) / 4;
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   860  				v->line_times_to_re=
quest_prefetch_pixel_data_with_immediate_flip =3D v->line_times_for_prefetc=
h[k] - v->lines_for_meta_pte_with_immediate_flip[k] - v->lines_for_meta_and=
_dpte_row_with_immediate_flip[k];
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   861  				v->line_times_to_re=
quest_prefetch_pixel_data_without_immediate_flip =3D v->line_times_for_pref=
etch[k] - v->lines_for_meta_pte_without_immediate_flip[k] - v->lines_for_me=
ta_and_dpte_row_without_immediate_flip[k];
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   862  				if (v->line_times_t=
o_request_prefetch_pixel_data_with_immediate_flip > 0.0) {
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   863  					v->v_ratio_pre_ywi=
th_immediate_flip[i][j][k] =3D v->prefetch_lines_y[k] / v->line_times_to_re=
quest_prefetch_pixel_data_with_immediate_flip;
74c49c7ac14f3a Harry Wentland     2017-05-08   864  					if ((v->swath_heig=
ht_yper_state[i][j][k] > 4.0)) {
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   865  						if (v->line_times=
_to_request_prefetch_pixel_data_with_immediate_flip - (v->prefill_y[k] - 3.=
0) / 2.0 > 0.0) {
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   866  							v->v_ratio_pre_y=
with_immediate_flip[i][j][k] =3Ddcn_bw_max2(v->v_ratio_pre_ywith_immediate_=
flip[i][j][k], (v->max_num_sw_y[k] * v->swath_height_yper_state[i][j][k]) /=
 (v->line_times_to_request_prefetch_pixel_data_with_immediate_flip - (v->pr=
efill_y[k] - 3.0) / 2.0));
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   867  						}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   868  						else {
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   869  							v->v_ratio_pre_y=
with_immediate_flip[i][j][k] =3D 999999.0;
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   870  						}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   871  					}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   872  					v->v_ratio_pre_cwi=
th_immediate_flip[i][j][k] =3D v->prefetch_lines_c[k] / v->line_times_to_re=
quest_prefetch_pixel_data_with_immediate_flip;
74c49c7ac14f3a Harry Wentland     2017-05-08   873  					if ((v->swath_heig=
ht_cper_state[i][j][k] > 4.0)) {
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   874  						if (v->line_times=
_to_request_prefetch_pixel_data_with_immediate_flip - (v->prefill_c[k] - 3.=
0) / 2.0 > 0.0) {
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   875  							v->v_ratio_pre_c=
with_immediate_flip[i][j][k] =3Ddcn_bw_max2(v->v_ratio_pre_cwith_immediate_=
flip[i][j][k], (v->max_num_sw_c[k] * v->swath_height_cper_state[i][j][k]) /=
 (v->line_times_to_request_prefetch_pixel_data_with_immediate_flip - (v->pr=
efill_c[k] - 3.0) / 2.0));
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   876  						}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   877  						else {
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   878  							v->v_ratio_pre_c=
with_immediate_flip[i][j][k] =3D 999999.0;
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   879  						}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   880  					}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   881  					v->required_prefet=
ch_pixel_data_bw_with_immediate_flip[i][j][k] =3D v->no_of_dpp[i][j][k] * (=
v->prefetch_lines_y[k] / v->line_times_to_request_prefetch_pixel_data_with_=
immediate_flip *dcn_bw_ceil2(v->byte_per_pixel_in_dety[k], 1.0) + v->prefet=
ch_lines_c[k] / v->line_times_to_request_prefetch_pixel_data_with_immediate=
_flip *dcn_bw_ceil2(v->byte_per_pixel_in_detc[k], 2.0) / 2.0) * v->swath_wi=
dth_yper_state[i][j][k] / (v->htotal[k] / v->pixel_clock[k]);
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   882  				}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   883  				else {
74c49c7ac14f3a Harry Wentland     2017-05-08   884  					v->v_ratio_pre_ywi=
th_immediate_flip[i][j][k] =3D 999999.0;
74c49c7ac14f3a Harry Wentland     2017-05-08   885  					v->v_ratio_pre_cwi=
th_immediate_flip[i][j][k] =3D 999999.0;
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   886  					v->required_prefet=
ch_pixel_data_bw_with_immediate_flip[i][j][k] =3D 999999.0;
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   887  				}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   888  				if (v->line_times_t=
o_request_prefetch_pixel_data_without_immediate_flip > 0.0) {
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   889  					v->v_ratio_pre_ywi=
thout_immediate_flip[i][j][k] =3D v->prefetch_lines_y[k] / v->line_times_to=
_request_prefetch_pixel_data_without_immediate_flip;
74c49c7ac14f3a Harry Wentland     2017-05-08   890  					if ((v->swath_heig=
ht_yper_state[i][j][k] > 4.0)) {
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   891  						if (v->line_times=
_to_request_prefetch_pixel_data_without_immediate_flip - (v->prefill_y[k] -=
 3.0) / 2.0 > 0.0) {
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   892  							v->v_ratio_pre_y=
without_immediate_flip[i][j][k] =3Ddcn_bw_max2(v->v_ratio_pre_ywithout_imme=
diate_flip[i][j][k], (v->max_num_sw_y[k] * v->swath_height_yper_state[i][j]=
[k]) / (v->line_times_to_request_prefetch_pixel_data_without_immediate_flip=
 - (v->prefill_y[k] - 3.0) / 2.0));
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   893  						}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   894  						else {
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   895  							v->v_ratio_pre_y=
without_immediate_flip[i][j][k] =3D 999999.0;
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   896  						}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   897  					}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   898  					v->v_ratio_pre_cwi=
thout_immediate_flip[i][j][k] =3D v->prefetch_lines_c[k] / v->line_times_to=
_request_prefetch_pixel_data_without_immediate_flip;
74c49c7ac14f3a Harry Wentland     2017-05-08   899  					if ((v->swath_heig=
ht_cper_state[i][j][k] > 4.0)) {
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   900  						if (v->line_times=
_to_request_prefetch_pixel_data_without_immediate_flip - (v->prefill_c[k] -=
 3.0) / 2.0 > 0.0) {
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   901  							v->v_ratio_pre_c=
without_immediate_flip[i][j][k] =3Ddcn_bw_max2(v->v_ratio_pre_cwithout_imme=
diate_flip[i][j][k], (v->max_num_sw_c[k] * v->swath_height_cper_state[i][j]=
[k]) / (v->line_times_to_request_prefetch_pixel_data_without_immediate_flip=
 - (v->prefill_c[k] - 3.0) / 2.0));
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   902  						}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   903  						else {
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   904  							v->v_ratio_pre_c=
without_immediate_flip[i][j][k] =3D 999999.0;
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   905  						}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   906  					}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   907  					v->required_prefet=
ch_pixel_data_bw_without_immediate_flip[i][j][k] =3D v->no_of_dpp[i][j][k] =
* (v->prefetch_lines_y[k] / v->line_times_to_request_prefetch_pixel_data_wi=
thout_immediate_flip *dcn_bw_ceil2(v->byte_per_pixel_in_dety[k], 1.0) + v->=
prefetch_lines_c[k] / v->line_times_to_request_prefetch_pixel_data_without_=
immediate_flip *dcn_bw_ceil2(v->byte_per_pixel_in_detc[k], 2.0) / 2.0) * v-=
>swath_width_yper_state[i][j][k] / (v->htotal[k] / v->pixel_clock[k]);
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   908  				}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   909  				else {
74c49c7ac14f3a Harry Wentland     2017-05-08   910  					v->v_ratio_pre_ywi=
thout_immediate_flip[i][j][k] =3D 999999.0;
74c49c7ac14f3a Harry Wentland     2017-05-08   911  					v->v_ratio_pre_cwi=
thout_immediate_flip[i][j][k] =3D 999999.0;
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   912  					v->required_prefet=
ch_pixel_data_bw_without_immediate_flip[i][j][k] =3D 999999.0;
74c49c7ac14f3a Harry Wentland     2017-05-08   913  				}
74c49c7ac14f3a Harry Wentland     2017-05-08   914  			}
74c49c7ac14f3a Harry Wentland     2017-05-08   915  			v->maximum_read_band=
width_with_prefetch_with_immediate_flip =3D 0.0;
74c49c7ac14f3a Harry Wentland     2017-05-08   916  			for (k =3D 0; k <=3D=
 v->number_of_active_planes - 1; k++) {
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   917  				if ((v->source_pixe=
l_format[k] !=3D dcn_bw_yuv420_sub_8 && v->source_pixel_format[k] !=3D dcn_=
bw_yuv420_sub_10)) {
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   918  					v->maximum_read_ba=
ndwidth_with_prefetch_with_immediate_flip =3D v->maximum_read_bandwidth_wit=
h_prefetch_with_immediate_flip +dcn_bw_max2(v->read_bandwidth[k], v->requir=
ed_prefetch_pixel_data_bw_with_immediate_flip[i][j][k]) +dcn_bw_max2(v->met=
a_pte_bytes_per_frame[k] / (v->lines_for_meta_pte_with_immediate_flip[k] * =
v->htotal[k] / v->pixel_clock[k]), (v->meta_row_bytes[k] + v->dpte_bytes_pe=
r_row[k]) / (v->lines_for_meta_and_dpte_row_with_immediate_flip[k] * v->hto=
tal[k] / v->pixel_clock[k]));
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   919  				}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   920  				else {
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   921  					v->maximum_read_ba=
ndwidth_with_prefetch_with_immediate_flip =3D v->maximum_read_bandwidth_wit=
h_prefetch_with_immediate_flip +dcn_bw_max2(v->read_bandwidth[k], v->requir=
ed_prefetch_pixel_data_bw_without_immediate_flip[i][j][k]);
74c49c7ac14f3a Harry Wentland     2017-05-08   922  				}
74c49c7ac14f3a Harry Wentland     2017-05-08   923  			}
74c49c7ac14f3a Harry Wentland     2017-05-08   924  			v->maximum_read_band=
width_with_prefetch_without_immediate_flip =3D 0.0;
74c49c7ac14f3a Harry Wentland     2017-05-08   925  			for (k =3D 0; k <=3D=
 v->number_of_active_planes - 1; k++) {
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   926  				v->maximum_read_ban=
dwidth_with_prefetch_without_immediate_flip =3D v->maximum_read_bandwidth_w=
ith_prefetch_without_immediate_flip +dcn_bw_max2(v->read_bandwidth[k], v->r=
equired_prefetch_pixel_data_bw_without_immediate_flip[i][j][k]);
74c49c7ac14f3a Harry Wentland     2017-05-08   927  			}
74c49c7ac14f3a Harry Wentland     2017-05-08   928  			v->prefetch_supporte=
d_with_immediate_flip[i][j] =3D dcn_bw_yes;
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   929  			if (v->maximum_read_=
bandwidth_with_prefetch_with_immediate_flip > v->return_bw_per_state[i]) {
74c49c7ac14f3a Harry Wentland     2017-05-08   930  				v->prefetch_support=
ed_with_immediate_flip[i][j] =3D dcn_bw_no;
74c49c7ac14f3a Harry Wentland     2017-05-08   931  			}
74c49c7ac14f3a Harry Wentland     2017-05-08   932  			for (k =3D 0; k <=3D=
 v->number_of_active_planes - 1; k++) {
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   933  				if (v->line_times_f=
or_prefetch[k] < 2.0 || v->lines_for_meta_pte_with_immediate_flip[k] >=3D 8=
.0 || v->lines_for_meta_and_dpte_row_with_immediate_flip[k] >=3D 16.0) {
74c49c7ac14f3a Harry Wentland     2017-05-08   934  					v->prefetch_suppor=
ted_with_immediate_flip[i][j] =3D dcn_bw_no;
74c49c7ac14f3a Harry Wentland     2017-05-08   935  				}
74c49c7ac14f3a Harry Wentland     2017-05-08   936  			}
74c49c7ac14f3a Harry Wentland     2017-05-08   937  			v->prefetch_supporte=
d_without_immediate_flip[i][j] =3D dcn_bw_yes;
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   938  			if (v->maximum_read_=
bandwidth_with_prefetch_without_immediate_flip > v->return_bw_per_state[i])=
 {
74c49c7ac14f3a Harry Wentland     2017-05-08   939  				v->prefetch_support=
ed_without_immediate_flip[i][j] =3D dcn_bw_no;
74c49c7ac14f3a Harry Wentland     2017-05-08   940  			}
74c49c7ac14f3a Harry Wentland     2017-05-08   941  			for (k =3D 0; k <=3D=
 v->number_of_active_planes - 1; k++) {
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   942  				if (v->line_times_f=
or_prefetch[k] < 2.0 || v->lines_for_meta_pte_without_immediate_flip[k] >=
=3D 8.0 || v->lines_for_meta_and_dpte_row_without_immediate_flip[k] >=3D 16=
.0) {
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   943  					v->prefetch_suppor=
ted_without_immediate_flip[i][j] =3D dcn_bw_no;
74c49c7ac14f3a Harry Wentland     2017-05-08   944  				}
74c49c7ac14f3a Harry Wentland     2017-05-08   945  			}
74c49c7ac14f3a Harry Wentland     2017-05-08   946  		}
74c49c7ac14f3a Harry Wentland     2017-05-08   947  	}
74c49c7ac14f3a Harry Wentland     2017-05-08   948  	for (i =3D 0; i <=3D n=
umber_of_states_plus_one; i++) {
74c49c7ac14f3a Harry Wentland     2017-05-08   949  		for (j =3D 0; j <=3D =
1; j++) {
74c49c7ac14f3a Harry Wentland     2017-05-08   950  			v->v_ratio_in_prefet=
ch_supported_with_immediate_flip[i][j] =3D dcn_bw_yes;
74c49c7ac14f3a Harry Wentland     2017-05-08   951  			for (k =3D 0; k <=3D=
 v->number_of_active_planes - 1; k++) {
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   952  				if ((((v->source_pi=
xel_format[k] !=3D dcn_bw_yuv420_sub_8 && v->source_pixel_format[k] !=3D dc=
n_bw_yuv420_sub_10) && (v->v_ratio_pre_ywith_immediate_flip[i][j][k] > 4.0 =
|| v->v_ratio_pre_cwith_immediate_flip[i][j][k] > 4.0)) || ((v->source_pixe=
l_format[k] =3D=3D dcn_bw_yuv420_sub_8 || v->source_pixel_format[k] =3D=3D =
dcn_bw_yuv420_sub_10) && (v->v_ratio_pre_ywithout_immediate_flip[i][j][k] >=
 4.0 || v->v_ratio_pre_cwithout_immediate_flip[i][j][k] > 4.0)))) {
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   953  					v->v_ratio_in_pref=
etch_supported_with_immediate_flip[i][j] =3D dcn_bw_no;
74c49c7ac14f3a Harry Wentland     2017-05-08   954  				}
74c49c7ac14f3a Harry Wentland     2017-05-08   955  			}
74c49c7ac14f3a Harry Wentland     2017-05-08   956  			v->v_ratio_in_prefet=
ch_supported_without_immediate_flip[i][j] =3D dcn_bw_yes;
74c49c7ac14f3a Harry Wentland     2017-05-08   957  			for (k =3D 0; k <=3D=
 v->number_of_active_planes - 1; k++) {
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   958  				if ((v->v_ratio_pre=
_ywithout_immediate_flip[i][j][k] > 4.0 || v->v_ratio_pre_cwithout_immediat=
e_flip[i][j][k] > 4.0)) {
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   959  					v->v_ratio_in_pref=
etch_supported_without_immediate_flip[i][j] =3D dcn_bw_no;
74c49c7ac14f3a Harry Wentland     2017-05-08   960  				}
74c49c7ac14f3a Harry Wentland     2017-05-08   961  			}
74c49c7ac14f3a Harry Wentland     2017-05-08   962  		}
74c49c7ac14f3a Harry Wentland     2017-05-08   963  	}
74c49c7ac14f3a Harry Wentland     2017-05-08   964  	/*mode support, voltag=
e state and soc configuration*/
74c49c7ac14f3a Harry Wentland     2017-05-08   965 =20
74c49c7ac14f3a Harry Wentland     2017-05-08   966  	for (i =3D number_of_s=
tates_plus_one; i >=3D 0; i--) {
74c49c7ac14f3a Harry Wentland     2017-05-08   967  		for (j =3D 0; j <=3D =
1; j++) {
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   968  			if (v->scale_ratio_s=
upport =3D=3D dcn_bw_yes && v->source_format_pixel_and_scan_support =3D=3D =
dcn_bw_yes && v->viewport_size_support =3D=3D dcn_bw_yes && v->bandwidth_su=
pport[i] =3D=3D dcn_bw_yes && v->dio_support[i] =3D=3D dcn_bw_yes && v->urg=
ent_latency_support[i][j] =3D=3D dcn_bw_yes && v->rob_support[i] =3D=3D dcn=
_bw_yes && v->dispclk_dppclk_support[i][j] =3D=3D dcn_bw_yes && v->total_av=
ailable_pipes_support[i][j] =3D=3D dcn_bw_yes && v->total_available_writeba=
ck_support =3D=3D dcn_bw_yes && v->writeback_latency_support =3D=3D dcn_bw_=
yes) {
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   969  				if (v->prefetch_sup=
ported_with_immediate_flip[i][j] =3D=3D dcn_bw_yes && v->v_ratio_in_prefetc=
h_supported_with_immediate_flip[i][j] =3D=3D dcn_bw_yes) {
74c49c7ac14f3a Harry Wentland     2017-05-08   970  					v->mode_support_wi=
th_immediate_flip[i][j] =3D dcn_bw_yes;
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   971  				}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   972  				else {
74c49c7ac14f3a Harry Wentland     2017-05-08   973  					v->mode_support_wi=
th_immediate_flip[i][j] =3D dcn_bw_no;
74c49c7ac14f3a Harry Wentland     2017-05-08   974  				}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   975  				if (v->prefetch_sup=
ported_without_immediate_flip[i][j] =3D=3D dcn_bw_yes && v->v_ratio_in_pref=
etch_supported_without_immediate_flip[i][j] =3D=3D dcn_bw_yes) {
74c49c7ac14f3a Harry Wentland     2017-05-08   976  					v->mode_support_wi=
thout_immediate_flip[i][j] =3D dcn_bw_yes;
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   977  				}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   978  				else {
74c49c7ac14f3a Harry Wentland     2017-05-08   979  					v->mode_support_wi=
thout_immediate_flip[i][j] =3D dcn_bw_no;
74c49c7ac14f3a Harry Wentland     2017-05-08   980  				}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   981  			}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   982  			else {
74c49c7ac14f3a Harry Wentland     2017-05-08   983  				v->mode_support_wit=
h_immediate_flip[i][j] =3D dcn_bw_no;
74c49c7ac14f3a Harry Wentland     2017-05-08   984  				v->mode_support_wit=
hout_immediate_flip[i][j] =3D dcn_bw_no;
74c49c7ac14f3a Harry Wentland     2017-05-08   985  			}
74c49c7ac14f3a Harry Wentland     2017-05-08   986  		}
74c49c7ac14f3a Harry Wentland     2017-05-08   987  	}
74c49c7ac14f3a Harry Wentland     2017-05-08   988  	for (i =3D number_of_s=
tates_plus_one; i >=3D 0; i--) {
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   989  		if ((i =3D=3D number_=
of_states_plus_one || v->mode_support_with_immediate_flip[i][1] =3D=3D dcn_=
bw_yes || v->mode_support_with_immediate_flip[i][0] =3D=3D dcn_bw_yes) && i=
 >=3D v->voltage_override_level) {
74c49c7ac14f3a Harry Wentland     2017-05-08   990  			v->voltage_level_wit=
h_immediate_flip =3D i;
74c49c7ac14f3a Harry Wentland     2017-05-08   991  		}
74c49c7ac14f3a Harry Wentland     2017-05-08   992  	}
74c49c7ac14f3a Harry Wentland     2017-05-08   993  	for (i =3D number_of_s=
tates_plus_one; i >=3D 0; i--) {
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15   994  		if ((i =3D=3D number_=
of_states_plus_one || v->mode_support_without_immediate_flip[i][1] =3D=3D d=
cn_bw_yes || v->mode_support_without_immediate_flip[i][0] =3D=3D dcn_bw_yes=
) && i >=3D v->voltage_override_level) {
74c49c7ac14f3a Harry Wentland     2017-05-08   995  			v->voltage_level_wit=
hout_immediate_flip =3D i;
74c49c7ac14f3a Harry Wentland     2017-05-08   996  		}
74c49c7ac14f3a Harry Wentland     2017-05-08   997  	}
74c49c7ac14f3a Harry Wentland     2017-05-08   998  	if (v->voltage_level_w=
ith_immediate_flip =3D=3D number_of_states_plus_one) {
74c49c7ac14f3a Harry Wentland     2017-05-08   999  		v->immediate_flip_sup=
ported =3D dcn_bw_no;
74c49c7ac14f3a Harry Wentland     2017-05-08  1000  		v->voltage_level =3D =
v->voltage_level_without_immediate_flip;
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15  1001  	}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15  1002  	else {
74c49c7ac14f3a Harry Wentland     2017-05-08  1003  		v->immediate_flip_sup=
ported =3D dcn_bw_yes;
74c49c7ac14f3a Harry Wentland     2017-05-08  1004  		v->voltage_level =3D =
v->voltage_level_with_immediate_flip;
74c49c7ac14f3a Harry Wentland     2017-05-08  1005  	}
74c49c7ac14f3a Harry Wentland     2017-05-08  1006  	v->dcfclk =3D v->dcfcl=
k_per_state[v->voltage_level];
74c49c7ac14f3a Harry Wentland     2017-05-08  1007  	v->fabric_and_dram_ban=
dwidth =3D v->fabric_and_dram_bandwidth_per_state[v->voltage_level];
74c49c7ac14f3a Harry Wentland     2017-05-08  1008  	for (j =3D 0; j <=3D 1=
; j++) {
74c49c7ac14f3a Harry Wentland     2017-05-08  1009  		v->required_dispclk_p=
er_ratio[j] =3D v->required_dispclk[v->voltage_level][j];
74c49c7ac14f3a Harry Wentland     2017-05-08  1010  		for (k =3D 0; k <=3D =
v->number_of_active_planes - 1; k++) {
74c49c7ac14f3a Harry Wentland     2017-05-08  1011  			v->dpp_per_plane_per=
_ratio[j][k] =3D v->no_of_dpp[v->voltage_level][j][k];
74c49c7ac14f3a Harry Wentland     2017-05-08  1012  		}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15  1013  		v->dispclk_dppclk_sup=
port_per_ratio[j] =3D v->dispclk_dppclk_support[v->voltage_level][j];
74c49c7ac14f3a Harry Wentland     2017-05-08  1014  	}
74c49c7ac14f3a Harry Wentland     2017-05-08  1015  	v->max_phyclk =3D v->p=
hyclk_per_state[v->voltage_level];
74c49c7ac14f3a Harry Wentland     2017-05-08  1016  }
74c49c7ac14f3a Harry Wentland     2017-05-08  1017  void display_pipe_confi=
guration(struct dcn_bw_internal_vars *v)
74c49c7ac14f3a Harry Wentland     2017-05-08  1018  {
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15  1019  	int j;
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15  1020  	int k;
74c49c7ac14f3a Harry Wentland     2017-05-08  1021  	/*display pipe configu=
ration*/
74c49c7ac14f3a Harry Wentland     2017-05-08  1022 =20
74c49c7ac14f3a Harry Wentland     2017-05-08  1023  	for (j =3D 0; j <=3D 1=
; j++) {
74c49c7ac14f3a Harry Wentland     2017-05-08  1024  		v->total_number_of_ac=
tive_dpp_per_ratio[j] =3D 0.0;
74c49c7ac14f3a Harry Wentland     2017-05-08  1025  		for (k =3D 0; k <=3D =
v->number_of_active_planes - 1; k++) {
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15  1026  			v->total_number_of_a=
ctive_dpp_per_ratio[j] =3D v->total_number_of_active_dpp_per_ratio[j] + v->=
dpp_per_plane_per_ratio[j][k];
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15  1027  		}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15  1028  	}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15  1029  	if ((v->dispclk_dppclk=
_support_per_ratio[0] =3D=3D dcn_bw_yes && v->dispclk_dppclk_support_per_ra=
tio[1] =3D=3D dcn_bw_no) || (v->dispclk_dppclk_support_per_ratio[0] =3D=3D =
v->dispclk_dppclk_support_per_ratio[1] && (v->total_number_of_active_dpp_pe=
r_ratio[0] < v->total_number_of_active_dpp_per_ratio[1] || (((v->total_numb=
er_of_active_dpp_per_ratio[0] =3D=3D v->total_number_of_active_dpp_per_rati=
o[1]) && v->required_dispclk_per_ratio[0] <=3D 0.5 * v->required_dispclk_pe=
r_ratio[1]))))) {
74c49c7ac14f3a Harry Wentland     2017-05-08  1030  		v->dispclk_dppclk_rat=
io =3D 1;
74c49c7ac14f3a Harry Wentland     2017-05-08  1031  		v->final_error_messag=
e =3D v->error_message[0];
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15  1032  	}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15  1033  	else {
74c49c7ac14f3a Harry Wentland     2017-05-08  1034  		v->dispclk_dppclk_rat=
io =3D 2;
74c49c7ac14f3a Harry Wentland     2017-05-08  1035  		v->final_error_messag=
e =3D v->error_message[1];
74c49c7ac14f3a Harry Wentland     2017-05-08  1036  	}
74c49c7ac14f3a Harry Wentland     2017-05-08  1037  	for (k =3D 0; k <=3D v=
->number_of_active_planes - 1; k++) {
74c49c7ac14f3a Harry Wentland     2017-05-08  1038  		v->dpp_per_plane[k] =
=3D v->dpp_per_plane_per_ratio[v->dispclk_dppclk_ratio - 1][k];
74c49c7ac14f3a Harry Wentland     2017-05-08  1039  	}
74c49c7ac14f3a Harry Wentland     2017-05-08  1040  	for (k =3D 0; k <=3D v=
->number_of_active_planes - 1; k++) {
74c49c7ac14f3a Harry Wentland     2017-05-08  1041  		if (v->source_pixel_f=
ormat[k] =3D=3D dcn_bw_rgb_sub_64) {
74c49c7ac14f3a Harry Wentland     2017-05-08  1042  			v->byte_per_pix_dety=
 =3D 8.0;
74c49c7ac14f3a Harry Wentland     2017-05-08  1043  			v->byte_per_pix_detc=
 =3D 0.0;
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15  1044  		}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15  1045  		else if (v->source_pi=
xel_format[k] =3D=3D dcn_bw_rgb_sub_32) {
74c49c7ac14f3a Harry Wentland     2017-05-08  1046  			v->byte_per_pix_dety=
 =3D 4.0;
74c49c7ac14f3a Harry Wentland     2017-05-08  1047  			v->byte_per_pix_detc=
 =3D 0.0;
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15  1048  		}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15  1049  		else if (v->source_pi=
xel_format[k] =3D=3D dcn_bw_rgb_sub_16) {
74c49c7ac14f3a Harry Wentland     2017-05-08  1050  			v->byte_per_pix_dety=
 =3D 2.0;
74c49c7ac14f3a Harry Wentland     2017-05-08  1051  			v->byte_per_pix_detc=
 =3D 0.0;
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15  1052  		}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15  1053  		else if (v->source_pi=
xel_format[k] =3D=3D dcn_bw_yuv420_sub_8) {
74c49c7ac14f3a Harry Wentland     2017-05-08  1054  			v->byte_per_pix_dety=
 =3D 1.0;
74c49c7ac14f3a Harry Wentland     2017-05-08  1055  			v->byte_per_pix_detc=
 =3D 2.0;
74c49c7ac14f3a Harry Wentland     2017-05-08  1056  		}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15  1057  		else {
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15  1058  			v->byte_per_pix_dety=
 =3D 4.0f / 3.0f;
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15  1059  			v->byte_per_pix_detc=
 =3D 8.0f / 3.0f;
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15  1060  		}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15  1061  		if ((v->source_pixel_=
format[k] =3D=3D dcn_bw_rgb_sub_64 || v->source_pixel_format[k] =3D=3D dcn_=
bw_rgb_sub_32 || v->source_pixel_format[k] =3D=3D dcn_bw_rgb_sub_16)) {
74c49c7ac14f3a Harry Wentland     2017-05-08  1062  			if (v->source_surfac=
e_mode[k] =3D=3D dcn_bw_sw_linear) {
74c49c7ac14f3a Harry Wentland     2017-05-08  1063  				v->read256_bytes_bl=
ock_height_y =3D 1.0;
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15  1064  			}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15  1065  			else if (v->source_p=
ixel_format[k] =3D=3D dcn_bw_rgb_sub_64) {
74c49c7ac14f3a Harry Wentland     2017-05-08  1066  				v->read256_bytes_bl=
ock_height_y =3D 4.0;
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15  1067  			}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15  1068  			else {
74c49c7ac14f3a Harry Wentland     2017-05-08  1069  				v->read256_bytes_bl=
ock_height_y =3D 8.0;
74c49c7ac14f3a Harry Wentland     2017-05-08  1070  			}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15  1071  			v->read256_bytes_blo=
ck_width_y =3D 256.0 /dcn_bw_ceil2(v->byte_per_pix_dety, 1.0) / v->read256_=
bytes_block_height_y;
74c49c7ac14f3a Harry Wentland     2017-05-08  1072  			v->read256_bytes_blo=
ck_height_c =3D 0.0;
74c49c7ac14f3a Harry Wentland     2017-05-08  1073  			v->read256_bytes_blo=
ck_width_c =3D 0.0;
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15  1074  		}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15  1075  		else {
74c49c7ac14f3a Harry Wentland     2017-05-08  1076  			if (v->source_surfac=
e_mode[k] =3D=3D dcn_bw_sw_linear) {
74c49c7ac14f3a Harry Wentland     2017-05-08  1077  				v->read256_bytes_bl=
ock_height_y =3D 1.0;
74c49c7ac14f3a Harry Wentland     2017-05-08  1078  				v->read256_bytes_bl=
ock_height_c =3D 1.0;
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15  1079  			}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15  1080  			else if (v->source_p=
ixel_format[k] =3D=3D dcn_bw_yuv420_sub_8) {
74c49c7ac14f3a Harry Wentland     2017-05-08  1081  				v->read256_bytes_bl=
ock_height_y =3D 16.0;
74c49c7ac14f3a Harry Wentland     2017-05-08  1082  				v->read256_bytes_bl=
ock_height_c =3D 8.0;
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15  1083  			}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15  1084  			else {
74c49c7ac14f3a Harry Wentland     2017-05-08  1085  				v->read256_bytes_bl=
ock_height_y =3D 8.0;
74c49c7ac14f3a Harry Wentland     2017-05-08  1086  				v->read256_bytes_bl=
ock_height_c =3D 8.0;
74c49c7ac14f3a Harry Wentland     2017-05-08  1087  			}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15  1088  			v->read256_bytes_blo=
ck_width_y =3D 256.0 /dcn_bw_ceil2(v->byte_per_pix_dety, 1.0) / v->read256_=
bytes_block_height_y;
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15  1089  			v->read256_bytes_blo=
ck_width_c =3D 256.0 /dcn_bw_ceil2(v->byte_per_pix_detc, 2.0) / v->read256_=
bytes_block_height_c;
74c49c7ac14f3a Harry Wentland     2017-05-08  1090  		}
74c49c7ac14f3a Harry Wentland     2017-05-08  1091  		if (v->source_scan[k]=
 =3D=3D dcn_bw_hor) {
74c49c7ac14f3a Harry Wentland     2017-05-08  1092  			v->maximum_swath_hei=
ght_y =3D v->read256_bytes_block_height_y;
74c49c7ac14f3a Harry Wentland     2017-05-08  1093  			v->maximum_swath_hei=
ght_c =3D v->read256_bytes_block_height_c;
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15  1094  		}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15  1095  		else {
74c49c7ac14f3a Harry Wentland     2017-05-08  1096  			v->maximum_swath_hei=
ght_y =3D v->read256_bytes_block_width_y;
74c49c7ac14f3a Harry Wentland     2017-05-08  1097  			v->maximum_swath_hei=
ght_c =3D v->read256_bytes_block_width_c;
74c49c7ac14f3a Harry Wentland     2017-05-08  1098  		}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15  1099  		if ((v->source_pixel_=
format[k] =3D=3D dcn_bw_rgb_sub_64 || v->source_pixel_format[k] =3D=3D dcn_=
bw_rgb_sub_32 || v->source_pixel_format[k] =3D=3D dcn_bw_rgb_sub_16)) {
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15  1100  			if (v->source_surfac=
e_mode[k] =3D=3D dcn_bw_sw_linear || (v->source_pixel_format[k] =3D=3D dcn_=
bw_rgb_sub_64 && (v->source_surface_mode[k] =3D=3D dcn_bw_sw_4_kb_s || v->s=
ource_surface_mode[k] =3D=3D dcn_bw_sw_4_kb_s_x || v->source_surface_mode[k=
] =3D=3D dcn_bw_sw_64_kb_s || v->source_surface_mode[k] =3D=3D dcn_bw_sw_64=
_kb_s_t || v->source_surface_mode[k] =3D=3D dcn_bw_sw_64_kb_s_x || v->sourc=
e_surface_mode[k] =3D=3D dcn_bw_sw_var_s || v->source_surface_mode[k] =3D=
=3D dcn_bw_sw_var_s_x) && v->source_scan[k] =3D=3D dcn_bw_hor)) {
74c49c7ac14f3a Harry Wentland     2017-05-08  1101  				v->minimum_swath_he=
ight_y =3D v->maximum_swath_height_y;
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15  1102  			}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15  1103  			else {
74c49c7ac14f3a Harry Wentland     2017-05-08  1104  				v->minimum_swath_he=
ight_y =3D v->maximum_swath_height_y / 2.0;
74c49c7ac14f3a Harry Wentland     2017-05-08  1105  			}
74c49c7ac14f3a Harry Wentland     2017-05-08  1106  			v->minimum_swath_hei=
ght_c =3D v->maximum_swath_height_c;
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15  1107  		}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15  1108  		else {
74c49c7ac14f3a Harry Wentland     2017-05-08  1109  			if (v->source_surfac=
e_mode[k] =3D=3D dcn_bw_sw_linear) {
74c49c7ac14f3a Harry Wentland     2017-05-08  1110  				v->minimum_swath_he=
ight_y =3D v->maximum_swath_height_y;
74c49c7ac14f3a Harry Wentland     2017-05-08  1111  				v->minimum_swath_he=
ight_c =3D v->maximum_swath_height_c;
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15  1112  			}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15  1113  			else if (v->source_p=
ixel_format[k] =3D=3D dcn_bw_yuv420_sub_8 && v->source_scan[k] =3D=3D dcn_b=
w_hor) {
74c49c7ac14f3a Harry Wentland     2017-05-08  1114  				v->minimum_swath_he=
ight_y =3D v->maximum_swath_height_y / 2.0;
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15  1115  				if (v->bug_forcing_=
luma_and_chroma_request_to_same_size_fixed =3D=3D dcn_bw_yes) {
74c49c7ac14f3a Harry Wentland     2017-05-08  1116  					v->minimum_swath_h=
eight_c =3D v->maximum_swath_height_c;
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15  1117  				}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15  1118  				else {
74c49c7ac14f3a Harry Wentland     2017-05-08  1119  					v->minimum_swath_h=
eight_c =3D v->maximum_swath_height_c / 2.0;
74c49c7ac14f3a Harry Wentland     2017-05-08  1120  				}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15  1121  			}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15  1122  			else if (v->source_p=
ixel_format[k] =3D=3D dcn_bw_yuv420_sub_10 && v->source_scan[k] =3D=3D dcn_=
bw_hor) {
74c49c7ac14f3a Harry Wentland     2017-05-08  1123  				v->minimum_swath_he=
ight_c =3D v->maximum_swath_height_c / 2.0;
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15  1124  				if (v->bug_forcing_=
luma_and_chroma_request_to_same_size_fixed =3D=3D dcn_bw_yes) {
74c49c7ac14f3a Harry Wentland     2017-05-08  1125  					v->minimum_swath_h=
eight_y =3D v->maximum_swath_height_y;
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15  1126  				}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15  1127  				else {
74c49c7ac14f3a Harry Wentland     2017-05-08  1128  					v->minimum_swath_h=
eight_y =3D v->maximum_swath_height_y / 2.0;
74c49c7ac14f3a Harry Wentland     2017-05-08  1129  				}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15  1130  			}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15  1131  			else {
74c49c7ac14f3a Harry Wentland     2017-05-08  1132  				v->minimum_swath_he=
ight_y =3D v->maximum_swath_height_y;
74c49c7ac14f3a Harry Wentland     2017-05-08  1133  				v->minimum_swath_he=
ight_c =3D v->maximum_swath_height_c;
74c49c7ac14f3a Harry Wentland     2017-05-08  1134  			}
74c49c7ac14f3a Harry Wentland     2017-05-08  1135  		}
74c49c7ac14f3a Harry Wentland     2017-05-08  1136  		if (v->source_scan[k]=
 =3D=3D dcn_bw_hor) {
74c49c7ac14f3a Harry Wentland     2017-05-08  1137  			v->swath_width =3D v=
->viewport_width[k] / v->dpp_per_plane[k];
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15  1138  		}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15  1139  		else {
74c49c7ac14f3a Harry Wentland     2017-05-08  1140  			v->swath_width =3D v=
->viewport_height[k] / v->dpp_per_plane[k];
74c49c7ac14f3a Harry Wentland     2017-05-08  1141  		}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15  1142  		v->swath_width_granul=
arity_y =3D 256.0 /dcn_bw_ceil2(v->byte_per_pix_dety, 1.0) / v->maximum_swa=
th_height_y;
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15  1143  		v->rounded_up_max_swa=
th_size_bytes_y =3D (dcn_bw_ceil2(v->swath_width - 1.0, v->swath_width_gran=
ularity_y) + v->swath_width_granularity_y) * v->byte_per_pix_dety * v->maxi=
mum_swath_height_y;
74c49c7ac14f3a Harry Wentland     2017-05-08  1144  		if (v->source_pixel_f=
ormat[k] =3D=3D dcn_bw_yuv420_sub_10) {
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15  1145  			v->rounded_up_max_sw=
ath_size_bytes_y =3Ddcn_bw_ceil2(v->rounded_up_max_swath_size_bytes_y, 256.=
0) + 256;
74c49c7ac14f3a Harry Wentland     2017-05-08  1146  		}
74c49c7ac14f3a Harry Wentland     2017-05-08  1147  		if (v->maximum_swath_=
height_c > 0.0) {
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15  1148  			v->swath_width_granu=
larity_c =3D 256.0 /dcn_bw_ceil2(v->byte_per_pix_detc, 2.0) / v->maximum_sw=
ath_height_c;
74c49c7ac14f3a Harry Wentland     2017-05-08  1149  		}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15  1150  		v->rounded_up_max_swa=
th_size_bytes_c =3D (dcn_bw_ceil2(v->swath_width / 2.0 - 1.0, v->swath_widt=
h_granularity_c) + v->swath_width_granularity_c) * v->byte_per_pix_detc * v=
->maximum_swath_height_c;
74c49c7ac14f3a Harry Wentland     2017-05-08  1151  		if (v->source_pixel_f=
ormat[k] =3D=3D dcn_bw_yuv420_sub_10) {
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15  1152  			v->rounded_up_max_sw=
ath_size_bytes_c =3Ddcn_bw_ceil2(v->rounded_up_max_swath_size_bytes_c, 256.=
0) + 256;
74c49c7ac14f3a Harry Wentland     2017-05-08  1153  		}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15  1154  		if (v->rounded_up_max=
_swath_size_bytes_y + v->rounded_up_max_swath_size_bytes_c <=3D v->det_buff=
er_size_in_kbyte * 1024.0 / 2.0) {
74c49c7ac14f3a Harry Wentland     2017-05-08  1155  			v->swath_height_y[k]=
 =3D v->maximum_swath_height_y;
74c49c7ac14f3a Harry Wentland     2017-05-08  1156  			v->swath_height_c[k]=
 =3D v->maximum_swath_height_c;
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15  1157  		}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15  1158  		else {
74c49c7ac14f3a Harry Wentland     2017-05-08  1159  			v->swath_height_y[k]=
 =3D v->minimum_swath_height_y;
74c49c7ac14f3a Harry Wentland     2017-05-08  1160  			v->swath_height_c[k]=
 =3D v->minimum_swath_height_c;
74c49c7ac14f3a Harry Wentland     2017-05-08  1161  		}
74c49c7ac14f3a Harry Wentland     2017-05-08  1162  		if (v->swath_height_c=
[k] =3D=3D 0.0) {
74c49c7ac14f3a Harry Wentland     2017-05-08  1163  			v->det_buffer_size_y=
[k] =3D v->det_buffer_size_in_kbyte * 1024.0;
74c49c7ac14f3a Harry Wentland     2017-05-08  1164  			v->det_buffer_size_c=
[k] =3D 0.0;
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15  1165  		}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15  1166  		else if (v->swath_hei=
ght_y[k] <=3D v->swath_height_c[k]) {
74c49c7ac14f3a Harry Wentland     2017-05-08  1167  			v->det_buffer_size_y=
[k] =3D v->det_buffer_size_in_kbyte * 1024.0 / 2.0;
74c49c7ac14f3a Harry Wentland     2017-05-08  1168  			v->det_buffer_size_c=
[k] =3D v->det_buffer_size_in_kbyte * 1024.0 / 2.0;
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15  1169  		}
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15  1170  		else {
74c49c7ac14f3a Harry Wentland     2017-05-08  1171  			v->det_buffer_size_y=
[k] =3D v->det_buffer_size_in_kbyte * 1024.0 * 2.0 / 3.0;
74c49c7ac14f3a Harry Wentland     2017-05-08  1172  			v->det_buffer_size_c=
[k] =3D v->det_buffer_size_in_kbyte * 1024.0 / 3.0;
74c49c7ac14f3a Harry Wentland     2017-05-08  1173  		}
74c49c7ac14f3a Harry Wentland     2017-05-08  1174  	}
74c49c7ac14f3a Harry Wentland     2017-05-08  1175  }
5634fb6078dd9b Dmytro Laktyushkin 2017-06-15 @1176  void dispclkdppclkdcfcl=
k_deep_sleep_prefetch_parameters_watermarks_and_performance_calculation(str=
uct dcn_bw_internal_vars *v)

:::::: The code at line 1176 was first introduced by commit
:::::: 5634fb6078dd9b9f794e93eef2fef52150cdc827 drm/amd/display: dcn bw_cal=
c_auto update rev 247 to 250

:::::: TO: Dmytro Laktyushkin <Dmytro.Laktyushkin@amd.com>
:::::: CC: Alex Deucher <alexander.deucher@amd.com>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/202104050720.YYeWQmk2-lkp%40intel.com.

--fdj2RfSjLxBAspz7
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
AWSfMFadJwIA

--fdj2RfSjLxBAspz7--
