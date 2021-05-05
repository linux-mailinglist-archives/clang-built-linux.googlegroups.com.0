Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBW4IZGCAMGQEZZMYGJQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33d.google.com (mail-ot1-x33d.google.com [IPv6:2607:f8b0:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id DDF02373559
	for <lists+clang-built-linux@lfdr.de>; Wed,  5 May 2021 09:08:12 +0200 (CEST)
Received: by mail-ot1-x33d.google.com with SMTP id y7-20020a0568301d87b029029e867b551asf674464oti.5
        for <lists+clang-built-linux@lfdr.de>; Wed, 05 May 2021 00:08:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620198491; cv=pass;
        d=google.com; s=arc-20160816;
        b=qKg6AUCPIjfKH+rI45S/zVa0mi1jJ750KIWakDZHO05xT30OdAn4omz6pkHxWtKTaO
         arhmTtGQlnnmwooC1urGXxIYwyq7SLAT+ggcEPA9hNVmveAhfgTDDpCDSxw4Lrb6PYDX
         4mRj1vT1Set7W2jWGnudGHSo8movVpGLkU3KCsOWc3Mh77aaGDt0lSIob7ensKzIMSZ2
         xLT6N1O/Bhxn4Bb1YEI3zmiCIpRyptkrNJ+GYd2OUuvkBDUo75zDT3rT004lXgwe20Xt
         oT2r0GXPBAwlaRFonxiJ1OaM29nol5MY9RDics5r78yzR9Z2pVwbOtpabPlfbMuftJc3
         dPEA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=KjQObdoQ8aKvU6HzZbgr+NzFcCmQ0JeLIq1QKW0BoT4=;
        b=jjbNvVPS4Uyx92PA+2mZ+URs19AiiBZv3US1KuBEv8mMgLksRI71d3Gsk7uVwZ9Dgp
         mdhg8zRuWeaa/zCoqjl1pNHpnbWA4bjAENqNPFaXpveEvm3IKO9FtrDhRfAWe9EQoipZ
         B4WBQEG9bY8DKBG3sfag67GJwNO1A0cVPMAL69bIXZmzy+hPXulLcwY6GruMhEU7dDoT
         Ku1cZqIIGDJ0Gi7Znq186VR/9RlK0qPj6C9PJpqixG94eFX2LZ5wVtN7VpP+uEbFT6Tc
         NGiC9krqKWOYn8zl0vHGowtydbLF/DRvrlLKQSX93Xbd0odbn2byJAK6Fym591tMV47m
         fbXA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=KjQObdoQ8aKvU6HzZbgr+NzFcCmQ0JeLIq1QKW0BoT4=;
        b=TPgsfkdqlpi/re+nSWESVP9IbQw2zW8H+1pZbTOWmjEgbH8BenS5Rnhl8lfd9yETYE
         xHxTJlnwWc2IUty3/PRsOfWJsGnueixT3CrSzdcpLrMtoylIZc++mw3lFfNTONRi2ruK
         9wGCqD+iIhiHempgkMx9BFZxDTyBhSROa/SsRHbJwkRYwyr7wW4erbYD1Dql6Lo9S51E
         Saym9PjBBexO1ZRTjfIHQDEptFf1uIYh11+/bGGY/t2zU/ebQWuireymNynLRms731K6
         WZm9GCt/cs29U8x3ZTJsp0OkMF5TPKr3zw25cIp11wps9d58+NEy9yHJNkr+xiMDgNS9
         UO3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=KjQObdoQ8aKvU6HzZbgr+NzFcCmQ0JeLIq1QKW0BoT4=;
        b=orW6ptlLXS7iDSVmZhJsNpJ6slFwvGQcRAfDYS/x0LIr5R3O1fA4swfLUlgJdjEm5C
         np6TRzwD+BmLcsXL/V7joAa4P2dyPpem5FSxSsf58vMi9UwRMdwvLeehh0GATEtCavZ0
         tJH1kcTum0kGCqvpgITc8XjV5Jm+Y1AucIbcRibfAmLSQkEYm8kA9C2xpXIUpGugWrFj
         x+KgwuDWU1q703kIPl6BMC59MYeZtg6a+9+NqIM9WYEniJdjwgWCO1d69NaXWXn3MpKD
         h8IfprXfzo0oosC1GDhRMfT0DD/+vcY4SOzpcT9s5G7jAgQzB65wQ+G9BUSef8h3jLHQ
         4Xrw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530/h/ZRDWGdtH551Sem4MhiPV9IA6hfNmiUVnFzqZ/yiIFE2pbr
	/y+B77c8fZjhTBsNq/X/eJk=
X-Google-Smtp-Source: ABdhPJwEvIqVtgMuSiavGgU2wUVMV97gjCP0qdGgqHEb3hQnCWWxrdwlHL1kljGsqnNAsyKi1nuzoQ==
X-Received: by 2002:a4a:c316:: with SMTP id c22mr23217321ooq.65.1620198491284;
        Wed, 05 May 2021 00:08:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:5c08:: with SMTP id o8ls5631447otk.0.gmail; Wed, 05 May
 2021 00:08:10 -0700 (PDT)
X-Received: by 2002:a05:6830:16c8:: with SMTP id l8mr22618607otr.56.1620198489983;
        Wed, 05 May 2021 00:08:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620198489; cv=none;
        d=google.com; s=arc-20160816;
        b=fg8rC+xcNQmOPy9Xrqzbfe8tOO2AQF9Bv/jYa6LfGnutZbF/CQhX/A8J4eUqyLJ+Mg
         5pT+wIClqhuAEHRb91HmcKKQhUEHceuStspV7X241HSAos5bsLYf6O/MaQiVxAwUKwQB
         7fd99Y3ZOUyuYB/rjGyg3ssanMXBjw68xf7atRGXUE1jVBmnfO+Nwi1ajTUC7gi1ym3y
         uN9Nf4dVM9x6eXG7TmYhLZyuBP68RRqR38oyAS2DvPnGvjw5zJOjx5E3VUBhL9Y1/JDA
         UwF6//2MiSjqJ2Ff3GDQLluS4FqyX7h+qIijaTfzNdmx3zst1Bk+FXBhMPijIjqZdk8p
         qrEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=dZYv2kOXm0T/5VRFhLKWT8z535zfgTft0ALL3BkQ5FM=;
        b=bUa8jKGIFC4K97BCBdYHN/PGTGqKN+0CSUVbqKj4FP/vVATkNtkrEh/EiFxwFKctgU
         kzvDwYliatV98zfGJnZ9AV8/fKgSmolLwRZ5NjgUWizM34nq0ClhjKPXN5Jq4aJ2I9IU
         cH56+tomJXJ8novetXWY49DlVd7KIkntaL/SXPHn3IB4H4KOu9Y8lRlvnI7mW+nDICTe
         Q1nbyRqfwCK0RiqUtJNsxg00PqC3pGdhIHmKtMG/tv2VJpGDAisecYh06CVeRML1n2bi
         +PW3VPdLIJX4c8y/X18RTSOwsWkl98RQJV88DC3pWzgJlqRxuWRs1UFepVd9iyTl62SL
         qd4w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga07.intel.com (mga07.intel.com. [134.134.136.100])
        by gmr-mx.google.com with ESMTPS id a5si455265oiw.0.2021.05.05.00.08.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 05 May 2021 00:08:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) client-ip=134.134.136.100;
IronPort-SDR: Pf1cKKIKyhqUqAx7qYNJ+/42JtJvu4YA+XqLQkxonE4dgHIxCxRPxyGQzbMwn/kQv98x5BzJwV
 jDxIiw8Pj3mQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9974"; a="262095222"
X-IronPort-AV: E=Sophos;i="5.82,274,1613462400"; 
   d="gz'50?scan'50,208,50";a="262095222"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 May 2021 00:08:07 -0700
IronPort-SDR: 29otSlE6I52PjLCauOkTryVragBnicPxvjlFPAB7S0F9lyCPQZQWT8OQJt/7hliXqZjxUqnSfL
 ZuDz7UyK/dIA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,274,1613462400"; 
   d="gz'50?scan'50,208,50";a="428055113"
Received: from lkp-server01.sh.intel.com (HELO a48ff7ddd223) ([10.239.97.150])
  by orsmga007.jf.intel.com with ESMTP; 05 May 2021 00:08:04 -0700
Received: from kbuild by a48ff7ddd223 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1leBdc-0009sk-32; Wed, 05 May 2021 07:08:04 +0000
Date: Wed, 5 May 2021 15:07:00 +0800
From: kernel test robot <lkp@intel.com>
To: Lijo Lazar <lijo.lazar@amd.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org,
	Alex Deucher <alexander.deucher@amd.com>,
	Feifei Xu <Feifei.Xu@amd.com>,
	Hawking Zhang <Hawking.Zhang@amd.com>
Subject: drivers/gpu/drm/amd/amdgpu/aldebaran.c:317:1: warning: stack frame
 size of 2624 bytes in function 'aldebaran_mode2_restore_hwcontext'
Message-ID: <202105051552.w2tzT25p-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="wac7ysb48OaltWcw"
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


--wac7ysb48OaltWcw
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
head:   d665ea6ea86c785760ee4bad4543dab3267ad074
commit: 142600e854b17f7dac25c8f971c030bb1700d2b6 drm/amdgpu: Add mode2 reset support for aldebaran
date:   4 weeks ago
config: powerpc-randconfig-r016-20210505 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 8f5a2a5836cc8e4c1def2bdeb022e7b496623439)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc cross compiling tool for clang build
        # apt-get install binutils-powerpc-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=142600e854b17f7dac25c8f971c030bb1700d2b6
        git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
        git fetch --no-tags linus master
        git checkout 142600e854b17f7dac25c8f971c030bb1700d2b6
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 ARCH=powerpc 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   In file included from drivers/gpu/drm/amd/amdgpu/aldebaran.c:25:
   drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_reset.h:24:9: warning: '__AMDUGPU_RESET_H__' is used as a header guard here, followed by #define of a different macro [-Wheader-guard]
   #ifndef __AMDUGPU_RESET_H__
           ^~~~~~~~~~~~~~~~~~~
   drivers/gpu/drm/amd/amdgpu/../amdgpu/amdgpu_reset.h:25:9: note: '__AMDGPU_RESET_H__' is defined here; did you mean '__AMDUGPU_RESET_H__'?
   #define __AMDGPU_RESET_H__
           ^~~~~~~~~~~~~~~~~~
           __AMDUGPU_RESET_H__
   drivers/gpu/drm/amd/amdgpu/aldebaran.c:110:6: warning: no previous prototype for function 'aldebaran_async_reset' [-Wmissing-prototypes]
   void aldebaran_async_reset(struct work_struct *work)
        ^
   drivers/gpu/drm/amd/amdgpu/aldebaran.c:110:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   void aldebaran_async_reset(struct work_struct *work)
   ^
   static 
>> drivers/gpu/drm/amd/amdgpu/aldebaran.c:317:1: warning: stack frame size of 2624 bytes in function 'aldebaran_mode2_restore_hwcontext' [-Wframe-larger-than=]
   aldebaran_mode2_restore_hwcontext(struct amdgpu_reset_control *reset_ctl,
   ^
   3 warnings generated.


vim +/aldebaran_mode2_restore_hwcontext +317 drivers/gpu/drm/amd/amdgpu/aldebaran.c

   315	
   316	static int
 > 317	aldebaran_mode2_restore_hwcontext(struct amdgpu_reset_control *reset_ctl,
   318					  struct amdgpu_reset_context *reset_context)
   319	{
   320		int r;
   321		struct amdgpu_device *tmp_adev = NULL;
   322	
   323		if (reset_context->hive == NULL) {
   324			/* Wrong context, return error */
   325			return -EINVAL;
   326		}
   327	
   328		list_for_each_entry(tmp_adev, &reset_context->hive->device_list,
   329				     gmc.xgmi.head) {
   330			dev_info(tmp_adev->dev,
   331				 "GPU reset succeeded, trying to resume\n");
   332			r = aldebaran_mode2_restore_ip(tmp_adev);
   333			if (r)
   334				goto end;
   335	
   336			/*
   337			 * Add this ASIC as tracked as reset was already
   338			 * complete successfully.
   339			 */
   340			amdgpu_register_gpu_instance(tmp_adev);
   341	
   342			/* Resume RAS */
   343			amdgpu_ras_resume(tmp_adev);
   344	
   345			/* Update PSP FW topology after reset */
   346			if (reset_context->hive &&
   347			    tmp_adev->gmc.xgmi.num_physical_nodes > 1)
   348				r = amdgpu_xgmi_update_topology(reset_context->hive,
   349								tmp_adev);
   350	
   351			if (!r) {
   352				amdgpu_irq_gpu_reset_resume_helper(tmp_adev);
   353	
   354				r = amdgpu_ib_ring_tests(tmp_adev);
   355				if (r) {
   356					dev_err(tmp_adev->dev,
   357						"ib ring test failed (%d).\n", r);
   358					r = -EAGAIN;
   359					tmp_adev->asic_reset_res = r;
   360					goto end;
   361				}
   362			}
   363		}
   364	
   365	end:
   366		return r;
   367	}
   368	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202105051552.w2tzT25p-lkp%40intel.com.

--wac7ysb48OaltWcw
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
gEcBAA==

--wac7ysb48OaltWcw--
