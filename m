Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBF6NUH6AKGQEBZ5JB6Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3a.google.com (mail-vs1-xe3a.google.com [IPv6:2607:f8b0:4864:20::e3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 23D7028F596
	for <lists+clang-built-linux@lfdr.de>; Thu, 15 Oct 2020 17:11:21 +0200 (CEST)
Received: by mail-vs1-xe3a.google.com with SMTP id u12sf1030477vsh.18
        for <lists+clang-built-linux@lfdr.de>; Thu, 15 Oct 2020 08:11:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602774680; cv=pass;
        d=google.com; s=arc-20160816;
        b=XZwPK7tmA+joMrUKu1i3ptgoielFp5nVCi+dJjq/9MEA0HvEanDIdvEPUWdGI7j68T
         pjt9rHGpom8qImeVMXjbDxPlIqNSmLFs79z9XNyPsr1+HM0DyStOsgLLIPij6ZGHxQfW
         n9V2bZ9uiyAeRsSZdDv7ETPQ/QRdSsh/68Pag8ZY/TZo5VoTUxT4dtgl5s3FTdLJSBKO
         FFLwKzMZ7iiYhHoYrFdS5TdDxOyN26noPzeKIXZHI3uh1W/SYcNhLojISs+Jjp957ntD
         Vc37BT8Lk26r7bnhWLRCmHhXb4k/6FMCw6/88AviOvH4a66Gw29Ymv+JPLsxjwOjrSbv
         hNSQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=6nglgrWa9nShAoGTp5hAMrAh+7HO18xRqyTfnMCf7SA=;
        b=lgwr+Cv2a3PRyMttAdpLGjL+4ZtzQF7Pvw6jN7UpugNNGgoUuXhRVqkBHk82ZXvM1L
         vlNWilV/wSwB8z/yZysjgWJWcYAl8USO0quegJF744NUUB7wZf4AZuYrexoKTzbhCQbj
         +YUaXa19AxYyTHWm/wPAjzN3g+WtcutqNfNRIY+Ybe2VjzSARV9PLiALuuGXoKcyjHxV
         8ERXlGWQbQH3H4I3Tb5aBGTaMt2Mwgj7C4qjm568L0dCsVDrmI5mQ8s0yXedzePPj3Cs
         Z6Q/z3TK3Rogz16L7MrHy4FYtIS2UN1N+HIqYpcyunkjCvjGc00r/p6l/R3Ye7Bv+WYJ
         HTrw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6nglgrWa9nShAoGTp5hAMrAh+7HO18xRqyTfnMCf7SA=;
        b=fWXuUdH7VDKbL/qMwSF7AVj8QuWLE9mPCDAEbAU2JL4jsXja9ptD0tCdQh+9Uk6UmP
         2qckWF6HMw9h9iRVD7x7T51/yQ0s8LoiJVVntfdt6IMr+jqfqa7sLGpf09Uh7ral4c4x
         kH+1LY5B3Xm3f8Kr+2ce2qTcOc8//+Sl4G3VG35M7s5+0r+llHhwISs90yCfiRnUANlF
         Ob0Otm65899uS7VyCt1T1uJbpSO1V7eQqSdJLRB8FDNffamRPrqjforUKeFWpUIAVsnE
         vD/pLxGDZb+GrJG7yifVRfZgRz2mmZ/0yC5+CyexVTp4RPcK+KSmDIrAgkfx4nUPLkch
         rz5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6nglgrWa9nShAoGTp5hAMrAh+7HO18xRqyTfnMCf7SA=;
        b=V+TpZlw0WAdajSywwHmQ3gxTJCKgo8LoK9o6yMLNxLUrr0Z8cDUek7Oqzyd3znd0cP
         v9e0Ej6aDKY11NNOA8qigpjIjGH/4RveUz0EdR+ufjBDm4IkvJ2Tgpeqiuo/WZ6rEhUP
         IOb1QdYTpYIq/MnGMdsP5yD62rInO2my5Ov4AbL4IC8hMrwLUF+vbU9CWVHC0KVNEIxg
         LWvPyITaOC91O1pmHgR3ABofrqTTAh3Ins9NGYf0ERHbwbuyMxH7CzGw81b2fh+mXEjP
         xHdgMH7pMPdq0W/yZDLNzB22DaVUnVqN3capB22QKdqsI2WEVH1nwLuJJ8d27c3OjJw5
         calg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532UsC9E85u+BBoN+lbQvHIrNvenrU2AC8bvKXUW2N/6fIA8Mkkz
	LO0sPGpUR4mrN9HGAZfrf7M=
X-Google-Smtp-Source: ABdhPJwGE9uZ9wb9/8M3xSFGSR58Hpdf9Viy6HWThQKSM30wt3ULbvbQtf1i/WSIoZrU89Bdm85rwA==
X-Received: by 2002:ab0:2005:: with SMTP id v5mr2242590uak.128.1602774680037;
        Thu, 15 Oct 2020 08:11:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:4754:: with SMTP id i20ls198180uac.0.gmail; Thu, 15 Oct
 2020 08:11:19 -0700 (PDT)
X-Received: by 2002:a9f:3f4f:: with SMTP id i15mr2517649uaj.7.1602774679280;
        Thu, 15 Oct 2020 08:11:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602774679; cv=none;
        d=google.com; s=arc-20160816;
        b=GNzlXvxsOPZ4IDHVjqcV+BIHEspr4n6cgl5d8VPfXEb9zMfzkQcsNhO3ZlZmvJhBGe
         Cmsa3nk/OKMP886y1dTFsjreSGqVWysGCaF+FaXt8OcRwo3Z5icXpClfEt7CShOn9U4L
         PT9AAtQrpgNUd4kxMESBagsbv4a+quMaHRIIUAyVLkhSYmjHtOYwSx4jUqniE9tj4lzb
         D9B+WAURLQN0i/RfazKwBPGvEdI14FxYfEdh5PYnF4i30i3ERR3oSTpAF8cEzr4pQOhz
         99HFBVJ+mmBnySYzFjMg9ddfpuvQ9G/39VHq9hYy+Nrpml7enA+kKxPY/qR10xDIStQ1
         nCKg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=TcdS5gTtJSWleK+yPjx7T26E2TuxTlE0D0UhNEjwaoc=;
        b=K+Op9RcxLLrrsV9zrqe58lxk5QzaU4/38kpA1uno2rEBqpouJwsLzyusp8z4da4FhV
         6u8Z8cQcQAmkQL/YYJOsF9zC0+14dPPS62DdSFSXSRN1ChM1GA/kLtG0xAF2895YM8ew
         NSZTP592uEYPct4kPbvsxmhF933C4g41E+sGcKEaO0YYWL3dMkaEe0FsmLjZ+lDpAETT
         vHZpQYB6IRZARYYIG4VjWlA1ursJ10lSK2UINnWSjBMOQrlB2gXOQf6ekuzowmUVC0mO
         DdpwVSNwfFkO8tXcAfkxH7HtAkmVuiaPe3+l0ga4CHqGDWzZ6GpV4NRRhSy1aUv+EeDf
         MhHw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga06.intel.com (mga06.intel.com. [134.134.136.31])
        by gmr-mx.google.com with ESMTPS id v3si184058vkb.2.2020.10.15.08.11.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Oct 2020 08:11:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) client-ip=134.134.136.31;
IronPort-SDR: s3PH/tVVP9lwGaIR+bFXrSL6jAJmOrEgMUInmfSmuZgJB87X/KoXFGche9ExmuMVH0KW5FCDqw
 S5y3WSvgOhtQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9775"; a="228019244"
X-IronPort-AV: E=Sophos;i="5.77,379,1596524400"; 
   d="gz'50?scan'50,208,50";a="228019244"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 15 Oct 2020 08:11:17 -0700
IronPort-SDR: RZ6J6z0YaHIo4SygEPPfmW9nVK0uOlD4xd3TW7yaGDaCxFowBzBR7G61D6Rzvp8bHL6uiJzOKo
 hYG714CKTGwg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,379,1596524400"; 
   d="gz'50?scan'50,208,50";a="531288548"
Received: from lkp-server01.sh.intel.com (HELO 5003fa193bf3) ([10.239.97.150])
  by orsmga005.jf.intel.com with ESMTP; 15 Oct 2020 08:11:15 -0700
Received: from kbuild by 5003fa193bf3 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kT4uQ-000015-Hz; Thu, 15 Oct 2020 15:11:14 +0000
Date: Thu, 15 Oct 2020 23:10:51 +0800
From: kernel test robot <lkp@intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: Re: [Intel-gfx] [RFC 11/13] drm/i915: Read DSC capabilities of the
 HDMI2.1 PCON encoder
Message-ID: <202010152340.AO4ylsCf-lkp@intel.com>
References: <20201015105259.27934-12-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="d6Gm4EdcadzBjdND"
Content-Disposition: inline
In-Reply-To: <20201015105259.27934-12-ankit.k.nautiyal@intel.com>
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


--d6Gm4EdcadzBjdND
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Ankit,

[FYI, it's a private test report for your RFC patch.]
[auto build test WARNING on drm-tip/drm-tip]
[cannot apply to drm-intel/for-linux-next drm-exynos/exynos-drm-next tegra-drm/drm/tegra/for-next linus/master drm/drm-next v5.9 next-20201015]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Ankit-Nautiyal/Add-support-for-DP-HDMI2-1-PCON/20201015-190247
base:   git://anongit.freedesktop.org/drm/drm-tip drm-tip
config: x86_64-randconfig-a006-20201014 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project e7b4feea8e1bf520b34ad8c116abab6677344b74)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        # https://github.com/0day-ci/linux/commit/7e4e2d9558b0439382a9b2a477d7ab9d25e09394
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Ankit-Nautiyal/Add-support-for-DP-HDMI2-1-PCON/20201015-190247
        git checkout 7e4e2d9558b0439382a9b2a477d7ab9d25e09394
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/gpu/drm/i915/display/intel_dp.c:4015:13: warning: converting the result of '<<' to a boolean always evaluates to true [-Wtautological-constant-compare]
           if (buf && DP_PCON_DSC_BLOCK_PRED_SUPPORT)
                      ^
   include/drm/drm_dp_helper.h:490:50: note: expanded from macro 'DP_PCON_DSC_BLOCK_PRED_SUPPORT'
   # define DP_PCON_DSC_BLOCK_PRED_SUPPORT     (0x1 << 0)
                                                    ^
>> drivers/gpu/drm/i915/display/intel_dp.c:3885:6: warning: no previous prototype for function 'intel_dp_get_pcon_dsc_cap' [-Wmissing-prototypes]
   void intel_dp_get_pcon_dsc_cap(struct intel_dp *intel_dp)
        ^
   drivers/gpu/drm/i915/display/intel_dp.c:3885:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void intel_dp_get_pcon_dsc_cap(struct intel_dp *intel_dp)
   ^
   static 
   2 warnings generated.

vim +4015 drivers/gpu/drm/i915/display/intel_dp.c

  3884	
> 3885	void intel_dp_get_pcon_dsc_cap(struct intel_dp *intel_dp)
  3886	{
  3887		u8 buf;
  3888		u8 rc_buf_blk_size;
  3889		u8 max_slices = 0;
  3890	
  3891		struct drm_i915_private *i915 = dp_to_i915(intel_dp);
  3892		struct intel_dp_pcon_dsc *pcon_dsc = &intel_dp->pcon_dsc;
  3893	
  3894		if (drm_dp_dpcd_readb(&intel_dp->aux, DP_PCON_DSC_ENCODER, &buf) < 0) {
  3895			drm_err(&i915->drm, "Failed to read DP_PCON_DSC_ENCODER\n");
  3896			return;
  3897		}
  3898		pcon_dsc->enc_support = buf & DP_PCON_DSC_ENCODER_SUPPORTED;
  3899		pcon_dsc->pps_override_support = buf & DP_PCON_DSC_PPS_ENC_OVERRIDE;
  3900	
  3901		if (drm_dp_dpcd_readb(&intel_dp->aux, DP_PCON_DSC_VERSION, &buf) < 0) {
  3902			drm_err(&i915->drm, "Failed to read DP_PCON_DSC_VERSION\n");
  3903			return;
  3904		}
  3905		pcon_dsc->version_major = (buf & DP_PCON_DSC_MAJOR_MASK) >>
  3906					  DP_PCON_DSC_MAJOR_SHIFT;
  3907		pcon_dsc->version_minor = (buf & DP_PCON_DSC_MINOR_MASK) >>
  3908					  DP_PCON_DSC_MINOR_SHIFT;
  3909	
  3910		if (drm_dp_dpcd_readb(&intel_dp->aux, DP_PCON_DSC_RC_BUF_BLK_INFO, &buf) < 0) {
  3911			drm_err(&i915->drm, "Failed to read DP_PCON_DSC_RC_BUF_BLK_INFO\n");
  3912			return;
  3913		}
  3914	
  3915		switch (buf & DP_PCON_DSC_RC_BUF_BLK_SIZE) {
  3916		case DP_PCON_DSC_RC_BUF_BLK_1KB :
  3917			rc_buf_blk_size = 1;
  3918			break;
  3919		case DP_PCON_DSC_RC_BUF_BLK_4KB :
  3920			rc_buf_blk_size = 4;
  3921			break;
  3922		case DP_PCON_DSC_RC_BUF_BLK_16KB :
  3923			rc_buf_blk_size = 16;
  3924			break;
  3925		case DP_PCON_DSC_RC_BUF_BLK_64KB :
  3926			rc_buf_blk_size = 64;
  3927			break;
  3928		default :
  3929			rc_buf_blk_size = 0;
  3930		}
  3931	
  3932		if (drm_dp_dpcd_readb(&intel_dp->aux, DP_PCON_DSC_RC_BUF_SIZE, &buf) < 0) {
  3933			drm_err(&i915->drm, "Failed to read DP_PCON_DSC_RC_BUF_SIZE\n");
  3934			return;
  3935		}
  3936		/* storing rc_buf_size in bytes */
  3937		pcon_dsc->rc_buf_size = (buf + 1) * rc_buf_blk_size * 1024;
  3938	
  3939		if (drm_dp_dpcd_readb(&intel_dp->aux, DP_PCON_DSC_SLICE_CAP_2, &buf) < 0) {
  3940			drm_err(&i915->drm, "Failed to read DP_PCON_DSC_SLICE_CAP_2\n");
  3941			return;
  3942		}
  3943		if (buf & DP_PCON_DSC_24_PER_DSC_ENC)
  3944		       max_slices = 24;
  3945		else if (buf & DP_PCON_DSC_20_PER_DSC_ENC)
  3946			max_slices = 20;
  3947		else if (buf & DP_PCON_DSC_16_PER_DSC_ENC)
  3948			max_slices = 16;
  3949	
  3950		if (max_slices == 0) {
  3951			if (drm_dp_dpcd_readb(&intel_dp->aux, DP_PCON_DSC_SLICE_CAP_1,
  3952					      &buf) < 0) {
  3953				drm_err(&i915->drm, "Failed to read DP_PCON_DSC_SLICE_CAP_2\n");
  3954				return;
  3955			}
  3956	
  3957			if (buf & DP_PCON_DSC_12_PER_DSC_ENC)
  3958				max_slices = 12;
  3959			else if (buf & DP_PCON_DSC_10_PER_DSC_ENC)
  3960				max_slices = 10;
  3961			else if (buf & DP_PCON_DSC_8_PER_DSC_ENC)
  3962				max_slices = 8;
  3963			else if (buf & DP_PCON_DSC_6_PER_DSC_ENC)
  3964				max_slices = 6;
  3965			else if (buf & DP_PCON_DSC_4_PER_DSC_ENC)
  3966				max_slices = 4;
  3967			else if (buf & DP_PCON_DSC_2_PER_DSC_ENC)
  3968				max_slices = 2;
  3969			else if (buf & DP_PCON_DSC_1_PER_DSC_ENC)
  3970				max_slices = 1;
  3971		}
  3972	
  3973		pcon_dsc->max_slices = max_slices;
  3974	
  3975		if (drm_dp_dpcd_readb(&intel_dp->aux, DP_PCON_DSC_BUF_BIT_DEPTH, &buf) < 0) {
  3976			drm_err(&i915->drm, "Failed to read DP_PCON_DSC_BUF_BIT_DEPTH\n");
  3977			return;
  3978		}
  3979		switch (buf & DP_PCON_DSC_BIT_DEPTH_MASK) {
  3980		case DP_PCON_DSC_DEPTH_8_BITS :
  3981			pcon_dsc->line_buf_bit_depth = 8;
  3982			break;
  3983		case DP_PCON_DSC_DEPTH_9_BITS :
  3984			pcon_dsc->line_buf_bit_depth = 9;
  3985			break;
  3986		case DP_PCON_DSC_DEPTH_10_BITS :
  3987			pcon_dsc->line_buf_bit_depth = 10;
  3988			break;
  3989		case DP_PCON_DSC_DEPTH_11_BITS :
  3990			pcon_dsc->line_buf_bit_depth = 11;
  3991			break;
  3992		case DP_PCON_DSC_DEPTH_12_BITS :
  3993			pcon_dsc->line_buf_bit_depth = 12;
  3994			break;
  3995		case DP_PCON_DSC_DEPTH_13_BITS :
  3996			pcon_dsc->line_buf_bit_depth = 13;
  3997			break;
  3998		case DP_PCON_DSC_DEPTH_14_BITS :
  3999			pcon_dsc->line_buf_bit_depth = 14;
  4000			break;
  4001		case DP_PCON_DSC_DEPTH_15_BITS :
  4002			pcon_dsc->line_buf_bit_depth = 15;
  4003			break;
  4004		case DP_PCON_DSC_DEPTH_16_BITS :
  4005			pcon_dsc->line_buf_bit_depth = 16;
  4006			break;
  4007		default :
  4008			pcon_dsc->line_buf_bit_depth = 0;
  4009		}
  4010	
  4011		if (drm_dp_dpcd_readb(&intel_dp->aux, DP_PCON_DSC_BLOCK_PREDICTION, &buf) < 0) {
  4012			drm_err(&i915->drm, "Failed to read DP_PCON_DSC_BLOCK_PREDICTION\n");
  4013			return;
  4014		}
> 4015		if (buf && DP_PCON_DSC_BLOCK_PRED_SUPPORT)
  4016			pcon_dsc->blk_prediction_support = true;
  4017	
  4018		if (drm_dp_dpcd_readb(&intel_dp->aux, DP_PCON_DSC_ENC_COLOR_FMT_CAP, &buf) < 0) {
  4019			drm_err(&i915->drm, "Failed to read DP_PCON_DSC_ENC_COLOR_FMT_CAP\n");
  4020			return;
  4021		}
  4022		pcon_dsc->color_fmt_mask = buf;
  4023	
  4024		if (drm_dp_dpcd_readb(&intel_dp->aux, DP_PCON_DSC_ENC_COLOR_DEPTH_CAP, &buf) < 0) {
  4025			drm_err(&i915->drm, "Failed to read DP_PCON_DSC_ENC_COLOR_DEPTH_CAP\n");
  4026			return;
  4027		}
  4028		pcon_dsc->color_depth_mask = buf;
  4029	
  4030		if (drm_dp_dpcd_readb(&intel_dp->aux, DP_PCON_DSC_MAX_SLICE_WIDTH, &buf) < 0) {
  4031			drm_err(&i915->drm, "Failed to read DP_PCON_DSC_MAX_SLICE_WIDTH\n");
  4032			return;
  4033		}
  4034		pcon_dsc->max_slice_width = buf;;
  4035	
  4036		if (drm_dp_dpcd_readb(&intel_dp->aux, DP_PCON_DSC_BPP_INCR, &buf) < 0) {
  4037			drm_err(&i915->drm, "Failed to read DP_PCON_DSC_BPP_INCR\n");
  4038			return;
  4039		}
  4040		switch(buf & DP_PCON_DSC_BPP_INCR_MASK) {
  4041		case DP_PCON_DSC_ONE_16TH_BPP:
  4042			pcon_dsc->bpp_precision_incr = 16;
  4043			break;
  4044		case DP_PCON_DSC_ONE_8TH_BPP:
  4045			pcon_dsc->bpp_precision_incr = 8;
  4046			break;
  4047		case DP_PCON_DSC_ONE_4TH_BPP:
  4048			pcon_dsc->bpp_precision_incr = 4;
  4049			break;
  4050		case DP_PCON_DSC_ONE_HALF_BPP:
  4051			pcon_dsc->bpp_precision_incr = 2;
  4052			break;
  4053		case DP_PCON_DSC_ONE_BPP:
  4054			pcon_dsc->bpp_precision_incr = 1;
  4055			break;
  4056		default :
  4057			pcon_dsc->bpp_precision_incr = 0;
  4058		}
  4059	}
  4060	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202010152340.AO4ylsCf-lkp%40intel.com.

--d6Gm4EdcadzBjdND
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
4/8BxIob7YbRAQA=

--d6Gm4EdcadzBjdND--
