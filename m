Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBGXPUX6QKGQEZSVVA5I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x339.google.com (mail-ot1-x339.google.com [IPv6:2607:f8b0:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id D42E02AC1CF
	for <lists+clang-built-linux@lfdr.de>; Mon,  9 Nov 2020 18:08:43 +0100 (CET)
Received: by mail-ot1-x339.google.com with SMTP id 5sf5353209oti.20
        for <lists+clang-built-linux@lfdr.de>; Mon, 09 Nov 2020 09:08:43 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604941722; cv=pass;
        d=google.com; s=arc-20160816;
        b=dWlTzSD9MTGOo6Ip0v6Q50Jg/VNrwX1tjlF97LO9JP3TNhOcK8kUkhobZ/7QUFDI33
         DWgp7fNT2QjHkYew51DW+jQToYm4T5A9a/xeJewKy7O5mjXY0wHtpG1OJzhyW6cMTeGp
         Ob03BhZghE+n7G6QSgpRQIC85GsWR63SRAP4NhfqdhrzMQ+9qgB6+c7FOlyhGMPxW3ch
         z6w+R7tvIEPOGkS8q/DVS2KlplkG458tw+GJrlQN0116uZtpxX5qycvosRoOJMOaC4tO
         cEXEyJDXMl00RV9KyoZWzgWS+dsqzLLqVDUHt3IZivlZUxGymVfADKewLTJ845tO0JJ1
         ENxA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=wVvX0v/csdPPlP3Bu8eSHdJugIh1nAP7seNbOU1dw9A=;
        b=QGrsCnBkI5VHZeIgYfy8xwgOvGkozn+WGKQlEGmF4rTxjq9bW+UTdCvwB1VrBKzWyK
         75f8Yaz394oWLKQJFapY1qPyLjABYPXGFBBgxSd5jURoFgc1x5NRmIbSIgubF/efc/x6
         RwhYvOd2pgw6WSE2OQ44/xM6Aiz3IzR1t3+aYD7Ttg+/PUF97eDASHYKbGqsZcHza5hF
         E3RY2ctSMubfFf6d7Q79ONSaTr1rejX0SoaCb56FOKDBW+4LtcRMDIft1RWq6lAULol1
         IHTpq7UHxhcO/RD8ZuTF9JCjsxc7UAICCYqP2crpnKtn6yyDTFW5SNubsEX9v/v6VcgI
         Nhxg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wVvX0v/csdPPlP3Bu8eSHdJugIh1nAP7seNbOU1dw9A=;
        b=aJfrr60kYZ1cvVXzngv4ReWhBw3GSr6aXo0ZaxdQO9PN0Ozd+PC3yFLo99v5gZYEXu
         xIPKDeH4YsyME+G8gcAFKTaGMyrGr7X5dI1Jky/1SJp2cyiTYe8CKfA/2ZDyMWvNWjkF
         AcajEFzLIvG4US3SXzPDgsPjpzR004XrKijQDUMupfCE3LeX1JmMR8rmE7o5EDRsbFra
         /U4YxzWXfCqq3eoIS+groxN41Top6TOpm4/o1N2F8IEqnZ7oMX73TBjUG7aAOVvRzkUN
         qEWyhQcV+KhtQXHO8vLen9TSu/rT+bvvV9ZdBqLPPbEVao1ernE1AykCpXI9OAQAG517
         20SA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=wVvX0v/csdPPlP3Bu8eSHdJugIh1nAP7seNbOU1dw9A=;
        b=kispfQ4kM2J/RI7W/XP9p5msPJNqrCVkexoVFoW6LzXPFgl24peQa/wfqINBM9FjpO
         EXxNNYy0+j0g69C7IaZGacA14MVGFIh89gg9MGhnxyAMoD3JSEQWv1VGph8Qonbt3yuV
         ZvskAOyW/mMTX+qtxhhufO+H/B9t6mCAd8nECeKF9ARPiOPwbdXHAWyz5u0IPn156TBx
         WWI9ku2ks8q/1Vu4sDW6y9y8jBF7jsIRYjO+IjVR++9VeisBTiKxeqOgNIjWUMn49hX3
         uPMLsC4HNXM2GVJlRnUN3LpJq99ssZMoHneC83nGyMYezeryVWk1st/XZM8cj2qw89vg
         8iCQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5323nRisGgdhuzX6g+LqXpurMaqFzZKVhVV+FgYrAEmffGXB3uGN
	ogreTrs+ixhFKBtYHhDYDr8=
X-Google-Smtp-Source: ABdhPJwnJz4S4UHgM4zJAZ8EQgseK1jPzClnwxXjguPviKirXRQoUoK8OkhixIwhbyJLVYDW8V+1Cw==
X-Received: by 2002:a05:6830:1e18:: with SMTP id s24mr11396016otr.40.1604941722541;
        Mon, 09 Nov 2020 09:08:42 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:b784:: with SMTP id h126ls2307490oif.3.gmail; Mon, 09
 Nov 2020 09:08:42 -0800 (PST)
X-Received: by 2002:a54:4681:: with SMTP id k1mr86634oic.25.1604941721980;
        Mon, 09 Nov 2020 09:08:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604941721; cv=none;
        d=google.com; s=arc-20160816;
        b=TdfO64eulc1e66Jk3hmmeTOYkgPDXfsns3DvXNSSjMYZaoNVmV2mUoUdYWrvpgRFDW
         87o041KNklJ4wnyffDn7qJIqBPDwetDC93gfw9BTsgBaLAlWfioWa5h9NDE14WxE5vUg
         37QhVCs4Q+o2z5lYpZkvLVCSX9zfvTS2c9H0wzrC+WU8RtK0DtTVKCG1POs7LbLLqAWv
         6BRrE4XHh9/jNqHj25x6/BIOisHCDcJZ/+ZA8ML95AnYzKEeppVj3oI3LRSXXR7Xie+E
         6i58GvwxxSU2sSjxyWQwVbtzstsgTQVvjdlQZgUW+TzVP4yn/PSacNw4Xwexk9u+x5Lw
         gfMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=fWtfQIXuLEBGwhL4YswjrVKPnjAdv1PiLcR6MM2hKdk=;
        b=S48awJH2TGh3Hcn4Lb8U2Etp4Ua8Nune77Evcb38hAlOT38CxQG4mS1nWRIiAs7Wpg
         lS0LdHFQvfdUlMig7e66Fbd2SPxKHwqSHupJ4mG+jTD8s9isXxd5Rndj4eErrjAB0q7e
         Dx/MGLvc8E0URaVLzQqUcbq0LwVGZ5UhNoQzuo/GKjqmPD3IUN6wlblvjlXXPK2B3xwx
         UpRjGjcNZwgvq1D0yunEzxnEerO5yWI2yvUr0wo8eoKafuUK9JjtgQIIfvGV9x1TSi2b
         UJDUxWBoTemW8TR3KqrcC3YXB7KvI/kEjo79dw3IqQQzGeS3+ZX/wz1+C1SCR9OyxoG/
         54qQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga14.intel.com (mga14.intel.com. [192.55.52.115])
        by gmr-mx.google.com with ESMTPS id d20si853424oti.1.2020.11.09.09.08.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Nov 2020 09:08:41 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) client-ip=192.55.52.115;
IronPort-SDR: U3GhOc0dvUDo24K+FC9/QBfkhxFUXqlJik8c7/kfbJgyB8MeJP9TQLyPl4bPt/9UVQfA5aLZQB
 Ui27AfiaGZYA==
X-IronPort-AV: E=McAfee;i="6000,8403,9800"; a="169051197"
X-IronPort-AV: E=Sophos;i="5.77,463,1596524400"; 
   d="gz'50?scan'50,208,50";a="169051197"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 09 Nov 2020 09:08:40 -0800
IronPort-SDR: KiBDBvRoNYZGM/gS3taGyWXIZN8Z1/Pvx56mfzSzr7WpCMrdlV93uReECW4/jzSkS+RycYQ9rG
 IaX6qu3nT7zA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,463,1596524400"; 
   d="gz'50?scan'50,208,50";a="327332193"
Received: from lkp-server01.sh.intel.com (HELO d0be80f1a028) ([10.239.97.150])
  by orsmga006.jf.intel.com with ESMTP; 09 Nov 2020 09:08:37 -0800
Received: from kbuild by d0be80f1a028 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kcAei-0000JK-6n; Mon, 09 Nov 2020 17:08:36 +0000
Date: Tue, 10 Nov 2020 01:07:56 +0800
From: kernel test robot <lkp@intel.com>
To: Luben Tuikov <luben.tuikov@amd.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Linux Memory Management List <linux-mm@kvack.org>,
	Daniel Vetter <daniel.vetter@ffwll.ch>
Subject: [linux-next:master 3872/4770]
 drivers/gpu/drm/amd/amdgpu/amdgpu_kms.c:482:5: warning: no previous
 prototype for function 'amdgpu_info_ioctl'
Message-ID: <202011100152.aSlxwz9A-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="sm4nu43k4a2Rpi4c"
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


--sm4nu43k4a2Rpi4c
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
head:   2ad4382198191b634e69a370d041928484ef0bf8
commit: 5088d6572e8ff6c25433858a4e701aa0fd9364c0 [3872/4770] drm/amdgpu: Make struct drm_driver const
config: x86_64-randconfig-a015-20201109 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 09ec07827b1128504457a93dee80b2ceee1af600)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=5088d6572e8ff6c25433858a4e701aa0fd9364c0
        git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
        git fetch --no-tags linux-next master
        git checkout 5088d6572e8ff6c25433858a4e701aa0fd9364c0
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/gpu/drm/amd/amdgpu/amdgpu_kms.c:482:5: warning: no previous prototype for function 'amdgpu_info_ioctl' [-Wmissing-prototypes]
   int amdgpu_info_ioctl(struct drm_device *dev, void *data, struct drm_file *filp)
       ^
   drivers/gpu/drm/amd/amdgpu/amdgpu_kms.c:482:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   int amdgpu_info_ioctl(struct drm_device *dev, void *data, struct drm_file *filp)
   ^
   static 
   1 warning generated.

vim +/amdgpu_info_ioctl +482 drivers/gpu/drm/amd/amdgpu/amdgpu_kms.c

   466	
   467	/*
   468	 * Userspace get information ioctl
   469	 */
   470	/**
   471	 * amdgpu_info_ioctl - answer a device specific request.
   472	 *
   473	 * @adev: amdgpu device pointer
   474	 * @data: request object
   475	 * @filp: drm filp
   476	 *
   477	 * This function is used to pass device specific parameters to the userspace
   478	 * drivers.  Examples include: pci device id, pipeline parms, tiling params,
   479	 * etc. (all asics).
   480	 * Returns 0 on success, -EINVAL on failure.
   481	 */
 > 482	int amdgpu_info_ioctl(struct drm_device *dev, void *data, struct drm_file *filp)
   483	{
   484		struct amdgpu_device *adev = drm_to_adev(dev);
   485		struct drm_amdgpu_info *info = data;
   486		struct amdgpu_mode_info *minfo = &adev->mode_info;
   487		void __user *out = (void __user *)(uintptr_t)info->return_pointer;
   488		uint32_t size = info->return_size;
   489		struct drm_crtc *crtc;
   490		uint32_t ui32 = 0;
   491		uint64_t ui64 = 0;
   492		int i, found;
   493		int ui32_size = sizeof(ui32);
   494	
   495		if (!info->return_size || !info->return_pointer)
   496			return -EINVAL;
   497	
   498		switch (info->query) {
   499		case AMDGPU_INFO_ACCEL_WORKING:
   500			ui32 = adev->accel_working;
   501			return copy_to_user(out, &ui32, min(size, 4u)) ? -EFAULT : 0;
   502		case AMDGPU_INFO_CRTC_FROM_ID:
   503			for (i = 0, found = 0; i < adev->mode_info.num_crtc; i++) {
   504				crtc = (struct drm_crtc *)minfo->crtcs[i];
   505				if (crtc && crtc->base.id == info->mode_crtc.id) {
   506					struct amdgpu_crtc *amdgpu_crtc = to_amdgpu_crtc(crtc);
   507					ui32 = amdgpu_crtc->crtc_id;
   508					found = 1;
   509					break;
   510				}
   511			}
   512			if (!found) {
   513				DRM_DEBUG_KMS("unknown crtc id %d\n", info->mode_crtc.id);
   514				return -EINVAL;
   515			}
   516			return copy_to_user(out, &ui32, min(size, 4u)) ? -EFAULT : 0;
   517		case AMDGPU_INFO_HW_IP_INFO: {
   518			struct drm_amdgpu_info_hw_ip ip = {};
   519			int ret;
   520	
   521			ret = amdgpu_hw_ip_info(adev, info, &ip);
   522			if (ret)
   523				return ret;
   524	
   525			ret = copy_to_user(out, &ip, min((size_t)size, sizeof(ip)));
   526			return ret ? -EFAULT : 0;
   527		}
   528		case AMDGPU_INFO_HW_IP_COUNT: {
   529			enum amd_ip_block_type type;
   530			uint32_t count = 0;
   531	
   532			switch (info->query_hw_ip.type) {
   533			case AMDGPU_HW_IP_GFX:
   534				type = AMD_IP_BLOCK_TYPE_GFX;
   535				break;
   536			case AMDGPU_HW_IP_COMPUTE:
   537				type = AMD_IP_BLOCK_TYPE_GFX;
   538				break;
   539			case AMDGPU_HW_IP_DMA:
   540				type = AMD_IP_BLOCK_TYPE_SDMA;
   541				break;
   542			case AMDGPU_HW_IP_UVD:
   543				type = AMD_IP_BLOCK_TYPE_UVD;
   544				break;
   545			case AMDGPU_HW_IP_VCE:
   546				type = AMD_IP_BLOCK_TYPE_VCE;
   547				break;
   548			case AMDGPU_HW_IP_UVD_ENC:
   549				type = AMD_IP_BLOCK_TYPE_UVD;
   550				break;
   551			case AMDGPU_HW_IP_VCN_DEC:
   552			case AMDGPU_HW_IP_VCN_ENC:
   553				type = AMD_IP_BLOCK_TYPE_VCN;
   554				break;
   555			case AMDGPU_HW_IP_VCN_JPEG:
   556				type = (amdgpu_device_ip_get_ip_block(adev, AMD_IP_BLOCK_TYPE_JPEG)) ?
   557					AMD_IP_BLOCK_TYPE_JPEG : AMD_IP_BLOCK_TYPE_VCN;
   558				break;
   559			default:
   560				return -EINVAL;
   561			}
   562	
   563			for (i = 0; i < adev->num_ip_blocks; i++)
   564				if (adev->ip_blocks[i].version->type == type &&
   565				    adev->ip_blocks[i].status.valid &&
   566				    count < AMDGPU_HW_IP_INSTANCE_MAX_COUNT)
   567					count++;
   568	
   569			return copy_to_user(out, &count, min(size, 4u)) ? -EFAULT : 0;
   570		}
   571		case AMDGPU_INFO_TIMESTAMP:
   572			ui64 = amdgpu_gfx_get_gpu_clock_counter(adev);
   573			return copy_to_user(out, &ui64, min(size, 8u)) ? -EFAULT : 0;
   574		case AMDGPU_INFO_FW_VERSION: {
   575			struct drm_amdgpu_info_firmware fw_info;
   576			int ret;
   577	
   578			/* We only support one instance of each IP block right now. */
   579			if (info->query_fw.ip_instance != 0)
   580				return -EINVAL;
   581	
   582			ret = amdgpu_firmware_info(&fw_info, &info->query_fw, adev);
   583			if (ret)
   584				return ret;
   585	
   586			return copy_to_user(out, &fw_info,
   587					    min((size_t)size, sizeof(fw_info))) ? -EFAULT : 0;
   588		}
   589		case AMDGPU_INFO_NUM_BYTES_MOVED:
   590			ui64 = atomic64_read(&adev->num_bytes_moved);
   591			return copy_to_user(out, &ui64, min(size, 8u)) ? -EFAULT : 0;
   592		case AMDGPU_INFO_NUM_EVICTIONS:
   593			ui64 = atomic64_read(&adev->num_evictions);
   594			return copy_to_user(out, &ui64, min(size, 8u)) ? -EFAULT : 0;
   595		case AMDGPU_INFO_NUM_VRAM_CPU_PAGE_FAULTS:
   596			ui64 = atomic64_read(&adev->num_vram_cpu_page_faults);
   597			return copy_to_user(out, &ui64, min(size, 8u)) ? -EFAULT : 0;
   598		case AMDGPU_INFO_VRAM_USAGE:
   599			ui64 = amdgpu_vram_mgr_usage(ttm_manager_type(&adev->mman.bdev, TTM_PL_VRAM));
   600			return copy_to_user(out, &ui64, min(size, 8u)) ? -EFAULT : 0;
   601		case AMDGPU_INFO_VIS_VRAM_USAGE:
   602			ui64 = amdgpu_vram_mgr_vis_usage(ttm_manager_type(&adev->mman.bdev, TTM_PL_VRAM));
   603			return copy_to_user(out, &ui64, min(size, 8u)) ? -EFAULT : 0;
   604		case AMDGPU_INFO_GTT_USAGE:
   605			ui64 = amdgpu_gtt_mgr_usage(ttm_manager_type(&adev->mman.bdev, TTM_PL_TT));
   606			return copy_to_user(out, &ui64, min(size, 8u)) ? -EFAULT : 0;
   607		case AMDGPU_INFO_GDS_CONFIG: {
   608			struct drm_amdgpu_info_gds gds_info;
   609	
   610			memset(&gds_info, 0, sizeof(gds_info));
   611			gds_info.compute_partition_size = adev->gds.gds_size;
   612			gds_info.gds_total_size = adev->gds.gds_size;
   613			gds_info.gws_per_compute_partition = adev->gds.gws_size;
   614			gds_info.oa_per_compute_partition = adev->gds.oa_size;
   615			return copy_to_user(out, &gds_info,
   616					    min((size_t)size, sizeof(gds_info))) ? -EFAULT : 0;
   617		}
   618		case AMDGPU_INFO_VRAM_GTT: {
   619			struct drm_amdgpu_info_vram_gtt vram_gtt;
   620	
   621			vram_gtt.vram_size = adev->gmc.real_vram_size -
   622				atomic64_read(&adev->vram_pin_size) -
   623				AMDGPU_VM_RESERVED_VRAM;
   624			vram_gtt.vram_cpu_accessible_size =
   625				min(adev->gmc.visible_vram_size -
   626				    atomic64_read(&adev->visible_pin_size),
   627				    vram_gtt.vram_size);
   628			vram_gtt.gtt_size = ttm_manager_type(&adev->mman.bdev, TTM_PL_TT)->size;
   629			vram_gtt.gtt_size *= PAGE_SIZE;
   630			vram_gtt.gtt_size -= atomic64_read(&adev->gart_pin_size);
   631			return copy_to_user(out, &vram_gtt,
   632					    min((size_t)size, sizeof(vram_gtt))) ? -EFAULT : 0;
   633		}
   634		case AMDGPU_INFO_MEMORY: {
   635			struct drm_amdgpu_memory_info mem;
   636			struct ttm_resource_manager *vram_man =
   637				ttm_manager_type(&adev->mman.bdev, TTM_PL_VRAM);
   638			struct ttm_resource_manager *gtt_man =
   639				ttm_manager_type(&adev->mman.bdev, TTM_PL_TT);
   640			memset(&mem, 0, sizeof(mem));
   641			mem.vram.total_heap_size = adev->gmc.real_vram_size;
   642			mem.vram.usable_heap_size = adev->gmc.real_vram_size -
   643				atomic64_read(&adev->vram_pin_size) -
   644				AMDGPU_VM_RESERVED_VRAM;
   645			mem.vram.heap_usage =
   646				amdgpu_vram_mgr_usage(vram_man);
   647			mem.vram.max_allocation = mem.vram.usable_heap_size * 3 / 4;
   648	
   649			mem.cpu_accessible_vram.total_heap_size =
   650				adev->gmc.visible_vram_size;
   651			mem.cpu_accessible_vram.usable_heap_size =
   652				min(adev->gmc.visible_vram_size -
   653				    atomic64_read(&adev->visible_pin_size),
   654				    mem.vram.usable_heap_size);
   655			mem.cpu_accessible_vram.heap_usage =
   656				amdgpu_vram_mgr_vis_usage(vram_man);
   657			mem.cpu_accessible_vram.max_allocation =
   658				mem.cpu_accessible_vram.usable_heap_size * 3 / 4;
   659	
   660			mem.gtt.total_heap_size = gtt_man->size;
   661			mem.gtt.total_heap_size *= PAGE_SIZE;
   662			mem.gtt.usable_heap_size = mem.gtt.total_heap_size -
   663				atomic64_read(&adev->gart_pin_size);
   664			mem.gtt.heap_usage =
   665				amdgpu_gtt_mgr_usage(gtt_man);
   666			mem.gtt.max_allocation = mem.gtt.usable_heap_size * 3 / 4;
   667	
   668			return copy_to_user(out, &mem,
   669					    min((size_t)size, sizeof(mem)))
   670					    ? -EFAULT : 0;
   671		}
   672		case AMDGPU_INFO_READ_MMR_REG: {
   673			unsigned n, alloc_size;
   674			uint32_t *regs;
   675			unsigned se_num = (info->read_mmr_reg.instance >>
   676					   AMDGPU_INFO_MMR_SE_INDEX_SHIFT) &
   677					  AMDGPU_INFO_MMR_SE_INDEX_MASK;
   678			unsigned sh_num = (info->read_mmr_reg.instance >>
   679					   AMDGPU_INFO_MMR_SH_INDEX_SHIFT) &
   680					  AMDGPU_INFO_MMR_SH_INDEX_MASK;
   681	
   682			/* set full masks if the userspace set all bits
   683			 * in the bitfields */
   684			if (se_num == AMDGPU_INFO_MMR_SE_INDEX_MASK)
   685				se_num = 0xffffffff;
   686			else if (se_num >= AMDGPU_GFX_MAX_SE)
   687				return -EINVAL;
   688			if (sh_num == AMDGPU_INFO_MMR_SH_INDEX_MASK)
   689				sh_num = 0xffffffff;
   690			else if (sh_num >= AMDGPU_GFX_MAX_SH_PER_SE)
   691				return -EINVAL;
   692	
   693			if (info->read_mmr_reg.count > 128)
   694				return -EINVAL;
   695	
   696			regs = kmalloc_array(info->read_mmr_reg.count, sizeof(*regs), GFP_KERNEL);
   697			if (!regs)
   698				return -ENOMEM;
   699			alloc_size = info->read_mmr_reg.count * sizeof(*regs);
   700	
   701			amdgpu_gfx_off_ctrl(adev, false);
   702			for (i = 0; i < info->read_mmr_reg.count; i++) {
   703				if (amdgpu_asic_read_register(adev, se_num, sh_num,
   704							      info->read_mmr_reg.dword_offset + i,
   705							      &regs[i])) {
   706					DRM_DEBUG_KMS("unallowed offset %#x\n",
   707						      info->read_mmr_reg.dword_offset + i);
   708					kfree(regs);
   709					amdgpu_gfx_off_ctrl(adev, true);
   710					return -EFAULT;
   711				}
   712			}
   713			amdgpu_gfx_off_ctrl(adev, true);
   714			n = copy_to_user(out, regs, min(size, alloc_size));
   715			kfree(regs);
   716			return n ? -EFAULT : 0;
   717		}
   718		case AMDGPU_INFO_DEV_INFO: {
   719			struct drm_amdgpu_info_device dev_info;
   720			uint64_t vm_size;
   721	
   722			memset(&dev_info, 0, sizeof(dev_info));
   723			dev_info.device_id = dev->pdev->device;
   724			dev_info.chip_rev = adev->rev_id;
   725			dev_info.external_rev = adev->external_rev_id;
   726			dev_info.pci_rev = dev->pdev->revision;
   727			dev_info.family = adev->family;
   728			dev_info.num_shader_engines = adev->gfx.config.max_shader_engines;
   729			dev_info.num_shader_arrays_per_engine = adev->gfx.config.max_sh_per_se;
   730			/* return all clocks in KHz */
   731			dev_info.gpu_counter_freq = amdgpu_asic_get_xclk(adev) * 10;
   732			if (adev->pm.dpm_enabled) {
   733				dev_info.max_engine_clock = amdgpu_dpm_get_sclk(adev, false) * 10;
   734				dev_info.max_memory_clock = amdgpu_dpm_get_mclk(adev, false) * 10;
   735			} else {
   736				dev_info.max_engine_clock = adev->clock.default_sclk * 10;
   737				dev_info.max_memory_clock = adev->clock.default_mclk * 10;
   738			}
   739			dev_info.enabled_rb_pipes_mask = adev->gfx.config.backend_enable_mask;
   740			dev_info.num_rb_pipes = adev->gfx.config.max_backends_per_se *
   741				adev->gfx.config.max_shader_engines;
   742			dev_info.num_hw_gfx_contexts = adev->gfx.config.max_hw_contexts;
   743			dev_info._pad = 0;
   744			dev_info.ids_flags = 0;
   745			if (adev->flags & AMD_IS_APU)
   746				dev_info.ids_flags |= AMDGPU_IDS_FLAGS_FUSION;
   747			if (amdgpu_mcbp || amdgpu_sriov_vf(adev))
   748				dev_info.ids_flags |= AMDGPU_IDS_FLAGS_PREEMPTION;
   749			if (amdgpu_is_tmz(adev))
   750				dev_info.ids_flags |= AMDGPU_IDS_FLAGS_TMZ;
   751	
   752			vm_size = adev->vm_manager.max_pfn * AMDGPU_GPU_PAGE_SIZE;
   753			vm_size -= AMDGPU_VA_RESERVED_SIZE;
   754	
   755			/* Older VCE FW versions are buggy and can handle only 40bits */
   756			if (adev->vce.fw_version &&
   757			    adev->vce.fw_version < AMDGPU_VCE_FW_53_45)
   758				vm_size = min(vm_size, 1ULL << 40);
   759	
   760			dev_info.virtual_address_offset = AMDGPU_VA_RESERVED_SIZE;
   761			dev_info.virtual_address_max =
   762				min(vm_size, AMDGPU_GMC_HOLE_START);
   763	
   764			if (vm_size > AMDGPU_GMC_HOLE_START) {
   765				dev_info.high_va_offset = AMDGPU_GMC_HOLE_END;
   766				dev_info.high_va_max = AMDGPU_GMC_HOLE_END | vm_size;
   767			}
   768			dev_info.virtual_address_alignment = max((int)PAGE_SIZE, AMDGPU_GPU_PAGE_SIZE);
   769			dev_info.pte_fragment_size = (1 << adev->vm_manager.fragment_size) * AMDGPU_GPU_PAGE_SIZE;
   770			dev_info.gart_page_size = AMDGPU_GPU_PAGE_SIZE;
   771			dev_info.cu_active_number = adev->gfx.cu_info.number;
   772			dev_info.cu_ao_mask = adev->gfx.cu_info.ao_cu_mask;
   773			dev_info.ce_ram_size = adev->gfx.ce_ram_size;
   774			memcpy(&dev_info.cu_ao_bitmap[0], &adev->gfx.cu_info.ao_cu_bitmap[0],
   775			       sizeof(adev->gfx.cu_info.ao_cu_bitmap));
   776			memcpy(&dev_info.cu_bitmap[0], &adev->gfx.cu_info.bitmap[0],
   777			       sizeof(adev->gfx.cu_info.bitmap));
   778			dev_info.vram_type = adev->gmc.vram_type;
   779			dev_info.vram_bit_width = adev->gmc.vram_width;
   780			dev_info.vce_harvest_config = adev->vce.harvest_config;
   781			dev_info.gc_double_offchip_lds_buf =
   782				adev->gfx.config.double_offchip_lds_buf;
   783			dev_info.wave_front_size = adev->gfx.cu_info.wave_front_size;
   784			dev_info.num_shader_visible_vgprs = adev->gfx.config.max_gprs;
   785			dev_info.num_cu_per_sh = adev->gfx.config.max_cu_per_sh;
   786			dev_info.num_tcc_blocks = adev->gfx.config.max_texture_channel_caches;
   787			dev_info.gs_vgt_table_depth = adev->gfx.config.gs_vgt_table_depth;
   788			dev_info.gs_prim_buffer_depth = adev->gfx.config.gs_prim_buffer_depth;
   789			dev_info.max_gs_waves_per_vgt = adev->gfx.config.max_gs_threads;
   790	
   791			if (adev->family >= AMDGPU_FAMILY_NV)
   792				dev_info.pa_sc_tile_steering_override =
   793					adev->gfx.config.pa_sc_tile_steering_override;
   794	
   795			dev_info.tcc_disabled_mask = adev->gfx.config.tcc_disabled_mask;
   796	
   797			return copy_to_user(out, &dev_info,
   798					    min((size_t)size, sizeof(dev_info))) ? -EFAULT : 0;
   799		}
   800		case AMDGPU_INFO_VCE_CLOCK_TABLE: {
   801			unsigned i;
   802			struct drm_amdgpu_info_vce_clock_table vce_clk_table = {};
   803			struct amd_vce_state *vce_state;
   804	
   805			for (i = 0; i < AMDGPU_VCE_CLOCK_TABLE_ENTRIES; i++) {
   806				vce_state = amdgpu_dpm_get_vce_clock_state(adev, i);
   807				if (vce_state) {
   808					vce_clk_table.entries[i].sclk = vce_state->sclk;
   809					vce_clk_table.entries[i].mclk = vce_state->mclk;
   810					vce_clk_table.entries[i].eclk = vce_state->evclk;
   811					vce_clk_table.num_valid_entries++;
   812				}
   813			}
   814	
   815			return copy_to_user(out, &vce_clk_table,
   816					    min((size_t)size, sizeof(vce_clk_table))) ? -EFAULT : 0;
   817		}
   818		case AMDGPU_INFO_VBIOS: {
   819			uint32_t bios_size = adev->bios_size;
   820	
   821			switch (info->vbios_info.type) {
   822			case AMDGPU_INFO_VBIOS_SIZE:
   823				return copy_to_user(out, &bios_size,
   824						min((size_t)size, sizeof(bios_size)))
   825						? -EFAULT : 0;
   826			case AMDGPU_INFO_VBIOS_IMAGE: {
   827				uint8_t *bios;
   828				uint32_t bios_offset = info->vbios_info.offset;
   829	
   830				if (bios_offset >= bios_size)
   831					return -EINVAL;
   832	
   833				bios = adev->bios + bios_offset;
   834				return copy_to_user(out, bios,
   835						    min((size_t)size, (size_t)(bios_size - bios_offset)))
   836						? -EFAULT : 0;
   837			}
   838			default:
   839				DRM_DEBUG_KMS("Invalid request %d\n",
   840						info->vbios_info.type);
   841				return -EINVAL;
   842			}
   843		}
   844		case AMDGPU_INFO_NUM_HANDLES: {
   845			struct drm_amdgpu_info_num_handles handle;
   846	
   847			switch (info->query_hw_ip.type) {
   848			case AMDGPU_HW_IP_UVD:
   849				/* Starting Polaris, we support unlimited UVD handles */
   850				if (adev->asic_type < CHIP_POLARIS10) {
   851					handle.uvd_max_handles = adev->uvd.max_handles;
   852					handle.uvd_used_handles = amdgpu_uvd_used_handles(adev);
   853	
   854					return copy_to_user(out, &handle,
   855						min((size_t)size, sizeof(handle))) ? -EFAULT : 0;
   856				} else {
   857					return -ENODATA;
   858				}
   859	
   860				break;
   861			default:
   862				return -EINVAL;
   863			}
   864		}
   865		case AMDGPU_INFO_SENSOR: {
   866			if (!adev->pm.dpm_enabled)
   867				return -ENOENT;
   868	
   869			switch (info->sensor_info.type) {
   870			case AMDGPU_INFO_SENSOR_GFX_SCLK:
   871				/* get sclk in Mhz */
   872				if (amdgpu_dpm_read_sensor(adev,
   873							   AMDGPU_PP_SENSOR_GFX_SCLK,
   874							   (void *)&ui32, &ui32_size)) {
   875					return -EINVAL;
   876				}
   877				ui32 /= 100;
   878				break;
   879			case AMDGPU_INFO_SENSOR_GFX_MCLK:
   880				/* get mclk in Mhz */
   881				if (amdgpu_dpm_read_sensor(adev,
   882							   AMDGPU_PP_SENSOR_GFX_MCLK,
   883							   (void *)&ui32, &ui32_size)) {
   884					return -EINVAL;
   885				}
   886				ui32 /= 100;
   887				break;
   888			case AMDGPU_INFO_SENSOR_GPU_TEMP:
   889				/* get temperature in millidegrees C */
   890				if (amdgpu_dpm_read_sensor(adev,
   891							   AMDGPU_PP_SENSOR_GPU_TEMP,
   892							   (void *)&ui32, &ui32_size)) {
   893					return -EINVAL;
   894				}
   895				break;
   896			case AMDGPU_INFO_SENSOR_GPU_LOAD:
   897				/* get GPU load */
   898				if (amdgpu_dpm_read_sensor(adev,
   899							   AMDGPU_PP_SENSOR_GPU_LOAD,
   900							   (void *)&ui32, &ui32_size)) {
   901					return -EINVAL;
   902				}
   903				break;
   904			case AMDGPU_INFO_SENSOR_GPU_AVG_POWER:
   905				/* get average GPU power */
   906				if (amdgpu_dpm_read_sensor(adev,
   907							   AMDGPU_PP_SENSOR_GPU_POWER,
   908							   (void *)&ui32, &ui32_size)) {
   909					return -EINVAL;
   910				}
   911				ui32 >>= 8;
   912				break;
   913			case AMDGPU_INFO_SENSOR_VDDNB:
   914				/* get VDDNB in millivolts */
   915				if (amdgpu_dpm_read_sensor(adev,
   916							   AMDGPU_PP_SENSOR_VDDNB,
   917							   (void *)&ui32, &ui32_size)) {
   918					return -EINVAL;
   919				}
   920				break;
   921			case AMDGPU_INFO_SENSOR_VDDGFX:
   922				/* get VDDGFX in millivolts */
   923				if (amdgpu_dpm_read_sensor(adev,
   924							   AMDGPU_PP_SENSOR_VDDGFX,
   925							   (void *)&ui32, &ui32_size)) {
   926					return -EINVAL;
   927				}
   928				break;
   929			case AMDGPU_INFO_SENSOR_STABLE_PSTATE_GFX_SCLK:
   930				/* get stable pstate sclk in Mhz */
   931				if (amdgpu_dpm_read_sensor(adev,
   932							   AMDGPU_PP_SENSOR_STABLE_PSTATE_SCLK,
   933							   (void *)&ui32, &ui32_size)) {
   934					return -EINVAL;
   935				}
   936				ui32 /= 100;
   937				break;
   938			case AMDGPU_INFO_SENSOR_STABLE_PSTATE_GFX_MCLK:
   939				/* get stable pstate mclk in Mhz */
   940				if (amdgpu_dpm_read_sensor(adev,
   941							   AMDGPU_PP_SENSOR_STABLE_PSTATE_MCLK,
   942							   (void *)&ui32, &ui32_size)) {
   943					return -EINVAL;
   944				}
   945				ui32 /= 100;
   946				break;
   947			default:
   948				DRM_DEBUG_KMS("Invalid request %d\n",
   949					      info->sensor_info.type);
   950				return -EINVAL;
   951			}
   952			return copy_to_user(out, &ui32, min(size, 4u)) ? -EFAULT : 0;
   953		}
   954		case AMDGPU_INFO_VRAM_LOST_COUNTER:
   955			ui32 = atomic_read(&adev->vram_lost_counter);
   956			return copy_to_user(out, &ui32, min(size, 4u)) ? -EFAULT : 0;
   957		case AMDGPU_INFO_RAS_ENABLED_FEATURES: {
   958			struct amdgpu_ras *ras = amdgpu_ras_get_context(adev);
   959			uint64_t ras_mask;
   960	
   961			if (!ras)
   962				return -EINVAL;
   963			ras_mask = (uint64_t)ras->supported << 32 | ras->features;
   964	
   965			return copy_to_user(out, &ras_mask,
   966					min_t(u64, size, sizeof(ras_mask))) ?
   967				-EFAULT : 0;
   968		}
   969		default:
   970			DRM_DEBUG_KMS("Invalid request %d\n", info->query);
   971			return -EINVAL;
   972		}
   973		return 0;
   974	}
   975	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202011100152.aSlxwz9A-lkp%40intel.com.

--sm4nu43k4a2Rpi4c
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
AA==

--sm4nu43k4a2Rpi4c--
