Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBNHD4KDQMGQERTQKFCI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3f.google.com (mail-vs1-xe3f.google.com [IPv6:2607:f8b0:4864:20::e3f])
	by mail.lfdr.de (Postfix) with ESMTPS id D60C63D1A84
	for <lists+clang-built-linux@lfdr.de>; Thu, 22 Jul 2021 01:45:57 +0200 (CEST)
Received: by mail-vs1-xe3f.google.com with SMTP id i123-20020a6722810000b029025b7f69ef9asf1066724vsi.22
        for <lists+clang-built-linux@lfdr.de>; Wed, 21 Jul 2021 16:45:57 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626911157; cv=pass;
        d=google.com; s=arc-20160816;
        b=iedAXZh3NSYergkf7cSxuT77kUDWShAKbEPl32bzCTBSQrF/ML5ADKbu04MtE2YtcN
         Y23P9+6mkMh+wG0Ct8fUyZnaQX6VHnGgE10p1P9EbsjPYNfxbHIYcPEeVn8iUcllvuFF
         U3h4nfzBphxorqtV7hcBFL/5GuJ6DGEUaELd1SO5DmdvIilhIrslnOkdEJRLxnL/l/vM
         /VQRg4DTcb5SOzH9nbrifhXWAX4aliOOxPQHReTnwX1yj4MeJycwagIMSzxsfh23PF0+
         u7U6vieioTH3T3X7hWIqzHmBRACEccwt6d/FyvDEKm8d58PO51spqdHfGZnky7shgkW7
         bhVg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=6GtSb445HTsrStfmcvPvQClArRr9nWeFXX1t6W2XGvI=;
        b=MRDokCqXGWOmpAfq1bVfSLPMB7G4u5DgO2FcErvamtg0aL4Co3lS1KtqhgjHYduDv1
         7/yeDbvFA368ASmNzG+nunkbvs4o0/3iMd8A0NjMG6Gcgn4mmTuMvddrh00ptRWixP04
         t8ykEv/dK4kUzLlZTx2twp5oCIN6vLgkqmymZ0k9AKUwBlPR/t9o1Og81enfanRb02Y/
         jNIF1KMb8uWGnS3t5wYn9L9OIYgPP7tCP7Fp1QwzYyn/0rKBAdor6NaoeJ1XnWsgdf+S
         SeAeaC8cA7KF0Rn85WWXdcj45hM5tVBNgcf8cYCZwyQ3/UddIHHEvJqzHU6wwA6y0xQ4
         G0xQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=6GtSb445HTsrStfmcvPvQClArRr9nWeFXX1t6W2XGvI=;
        b=FQPVtKUW54auh2zcxLxxXw6zC5Lw0rcMjIkoE0zZMtjPg2cER6s57caCqrMV7lgQf2
         rLJsk2lIhr2pXH1ArPI0EgEekTIfATqKoUNzxRBLCmyJ/QRLvHjg0xVbc863gotXM55g
         zONNbPMDyU42fKgi7u1uUwsGVvx28kqlUgvsk3vAEwAIxqiimvA5ri9n6b+pOZlD3UbF
         XLIXLXvio+UP9oqNo91EOShOtM7TSBBqMqGqmdsT7ezU1bwVVt59mYdfoMT95Adqj/Sj
         coqJOua/xr/A71glGXh5oesOXm6ksOB/2Fr0XTY/ltO+UedPC75haJCHfaSj1dpAekiH
         //VQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=6GtSb445HTsrStfmcvPvQClArRr9nWeFXX1t6W2XGvI=;
        b=fsmsRdVewTMnNWfjjf5G3iFXsrXLd1ozEtr1HzMRqizGZP6mfqFTsq3/58t8SWPckz
         CcSqxjvCjr9nApq8UEowdiszCaao54GUF4nNBVuxcJOnHT5UANLXnpBzpfqFKbIykY85
         6AEZPi/HVnc1uzr3VmB2fHrtFMgok1fivSeAEVAEQLVmM9Slc6l8x6J0EMIKNfgDeoAb
         vOd/N2i5TDupqJHt3YmTvHNx3HU+uqfx2fRK0W02We8GAhI+FjrgDIEA+SkzelESh8CK
         YdZRHkkzIq6XrmNSWu65zDaJUdYqPDJKGY/PXXAtfzcFRL0dbB55V1fFYfj/C++dwbz3
         KkWw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5301LiK+ZKJentcdpQp3eo1Sw8xY9vOt75aBmJ0k+Xrfut6IxncD
	hENeDf2boIVH/giVI651qqk=
X-Google-Smtp-Source: ABdhPJxKNtGV+oV2XA0GvxP05uRtF1G0cQ/Hxjfhc/0JsoZTMxZmZbZG9/RxJR3Qy3H/a0+QQl9HNA==
X-Received: by 2002:a05:6102:12:: with SMTP id j18mr19950963vsp.55.1626911156755;
        Wed, 21 Jul 2021 16:45:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:3ca2:: with SMTP id a34ls645315uax.0.gmail; Wed, 21 Jul
 2021 16:45:56 -0700 (PDT)
X-Received: by 2002:ab0:859:: with SMTP id b25mr2846123uaf.39.1626911155926;
        Wed, 21 Jul 2021 16:45:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626911155; cv=none;
        d=google.com; s=arc-20160816;
        b=G5enoKgNVYC4GVkp8XGx9u2w6KqCnIIogM0xe7SY+1etFyWEk7KNGQvfDsrf3kr9vp
         bgvUG8BdLG9BchRMXIKePgP8slMUY0Jxdio6n8HM6MCzAplJao/zxmJi9xgrYobBaijh
         +rbl5dakrulLiPLA0JEB1miyIx2cQbZh2+QB3MS6tPlDusc/WL2SZmcn7HunBmoSTh33
         iSEXmTpkZVBGeN7saZ5gyiV7rawo53zUKBjj/hUJ8PWTWEJpRyxDB+fBEaGWogw8/tIk
         Jajbl25EuhNcawfeQVkwa/AlpMtRGE+jPzyH3zEHJYxaZAWK5XFFj+8JYskMz5f/hYFu
         8PUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=OjnAs4eE3xDqEv86zj3JAxe2Syj/Bel+pI8jHQKe+x8=;
        b=yvPq08YLf0uLdeCqfYZEzLEkYCfw0WA53vrtj1WgTTdmqCHrETY62V2QOWKPrzXUHD
         mdzWWgNdPbFmDJOU0HBtiuyZwlZIAVOxg9hMCtFMYfZSF+bWl4bOGs34kiIzpZktzQkt
         WLk1+mYModWLbN97xqwhihAdGT4T9rqDyCD3Si9H36jcIlmKVy7n5AxrC4f7xtV/+/H9
         6ry/FVAruA47SBeNyWUY+2gnsnryKtfkpVNlppsxBwFxE+m5JwBaMWha1+uXuiai5P1s
         pElkhHer2ws51zg0CPH8yLeQ2+GI0UYy4Hv+FMQ97ptGUXIt4Lf2niNzZCyJEWN9rn51
         AVLw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga09.intel.com (mga09.intel.com. [134.134.136.24])
        by gmr-mx.google.com with ESMTPS id x18si1292706vsn.0.2021.07.21.16.45.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Jul 2021 16:45:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) client-ip=134.134.136.24;
X-IronPort-AV: E=McAfee;i="6200,9189,10052"; a="211537508"
X-IronPort-AV: E=Sophos;i="5.84,259,1620716400"; 
   d="gz'50?scan'50,208,50";a="211537508"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Jul 2021 16:45:45 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,259,1620716400"; 
   d="gz'50?scan'50,208,50";a="432804869"
Received: from lkp-server01.sh.intel.com (HELO b8b92b2878b0) ([10.239.97.150])
  by fmsmga007.fm.intel.com with ESMTP; 21 Jul 2021 16:45:42 -0700
Received: from kbuild by b8b92b2878b0 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1m6LuH-0000fP-Mi; Wed, 21 Jul 2021 23:45:41 +0000
Date: Thu, 22 Jul 2021 07:44:55 +0800
From: kernel test robot <lkp@intel.com>
To: Vinay Belgaumkar <vinay.belgaumkar@intel.com>,
	intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Cc: clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
	Vinay Belgaumkar <vinay.belgaumkar@intel.com>,
	Sundaresan Sujaritha <sujaritha.sundaresan@intel.com>
Subject: Re: [PATCH 06/14] drm/i915/guc/slpc: Enable SLPC and add related H2G
 events
Message-ID: <202107220730.RcYwtYi0-lkp@intel.com>
References: <20210721161120.24610-7-vinay.belgaumkar@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="DocE+STaALJfprDB"
Content-Disposition: inline
In-Reply-To: <20210721161120.24610-7-vinay.belgaumkar@intel.com>
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


--DocE+STaALJfprDB
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Vinay,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on drm-tip/drm-tip]
[cannot apply to drm-intel/for-linux-next drm-exynos/exynos-drm-next tegra-drm/drm/tegra/for-next drm/drm-next v5.14-rc2 next-20210721]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Vinay-Belgaumkar/drm-i915-guc-Enable-GuC-based-power-management-features/20210722-001528
base:   git://anongit.freedesktop.org/drm/drm-tip drm-tip
config: x86_64-randconfig-a016-20210720 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project c781eb153bfbd1b52b03efe34f56bbeccbb8aba6)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        # https://github.com/0day-ci/linux/commit/14352081e4f18759e70413f3be4151d623c97b8c
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Vinay-Belgaumkar/drm-i915-guc-Enable-GuC-based-power-management-features/20210722-001528
        git checkout 14352081e4f18759e70413f3be4151d623c97b8c
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c:217:5: warning: no previous prototype for function 'slpc_decode_min_freq' [-Wmissing-prototypes]
   u32 slpc_decode_min_freq(struct intel_guc_slpc *slpc)
       ^
   drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c:217:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   u32 slpc_decode_min_freq(struct intel_guc_slpc *slpc)
   ^
   static 
>> drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c:229:5: warning: no previous prototype for function 'slpc_decode_max_freq' [-Wmissing-prototypes]
   u32 slpc_decode_max_freq(struct intel_guc_slpc *slpc)
       ^
   drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c:229:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   u32 slpc_decode_max_freq(struct intel_guc_slpc *slpc)
   ^
   static 
   2 warnings generated.


vim +/slpc_decode_min_freq +217 drivers/gpu/drm/i915/gt/uc/intel_guc_slpc.c

   216	
 > 217	u32 slpc_decode_min_freq(struct intel_guc_slpc *slpc)
   218	{
   219		struct slpc_shared_data *data = slpc->vaddr;
   220	
   221		GEM_BUG_ON(!slpc->vma);
   222	
   223		return	DIV_ROUND_CLOSEST(
   224			REG_FIELD_GET(SLPC_MIN_UNSLICE_FREQ_MASK,
   225				data->task_state_data.freq) *
   226			GT_FREQUENCY_MULTIPLIER, GEN9_FREQ_SCALER);
   227	}
   228	
 > 229	u32 slpc_decode_max_freq(struct intel_guc_slpc *slpc)
   230	{
   231		struct slpc_shared_data *data = slpc->vaddr;
   232	
   233		GEM_BUG_ON(!slpc->vma);
   234	
   235		return	DIV_ROUND_CLOSEST(
   236			REG_FIELD_GET(SLPC_MAX_UNSLICE_FREQ_MASK,
   237				data->task_state_data.freq) *
   238			GT_FREQUENCY_MULTIPLIER, GEN9_FREQ_SCALER);
   239	}
   240	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202107220730.RcYwtYi0-lkp%40intel.com.

--DocE+STaALJfprDB
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
lWJatfIpAwA=

--DocE+STaALJfprDB--
