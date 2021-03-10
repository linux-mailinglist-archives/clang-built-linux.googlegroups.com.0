Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBHW2UOBAMGQEXKYWL5A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83b.google.com (mail-qt1-x83b.google.com [IPv6:2607:f8b0:4864:20::83b])
	by mail.lfdr.de (Postfix) with ESMTPS id F1A6533424E
	for <lists+clang-built-linux@lfdr.de>; Wed, 10 Mar 2021 17:00:31 +0100 (CET)
Received: by mail-qt1-x83b.google.com with SMTP id w2sf7446677qts.18
        for <lists+clang-built-linux@lfdr.de>; Wed, 10 Mar 2021 08:00:31 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615392031; cv=pass;
        d=google.com; s=arc-20160816;
        b=u29KvDF4xEDTvG9sy/dr/m0ZtRXfL0SXafwDO3Qcxw+v/ljOaptzy447aPg65EVZ+v
         q5oU6IWAw3FFvfHbS7rK3+C77sE1of59ChBGKmyHnlbyngVxU/iu51ZVK0b/jN8Gltb4
         KLOYQekKDUHdEHOuobUZDHThdUdBSUPnM3rogV7TtA7w/juKsHQ5s/l+JuFMu/iWcjzp
         csE39gezYQ7mMs0+JEVOWxH2UccwqGzLdxIwqd7SNJzY3MK9VoYnTgHW4nVanVQF5VmI
         eXoquNj3MK8l3ScpIyhumoT5F0VZEbsfzOHStfEx5l1wYkfLQ0D8uC3UYLWyRd6/0G/Z
         2MwQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=Bmyc2fJi+0W9COq9nGEPjGSbA6HgP9MTWPvqdZSshXY=;
        b=USDkKCjY2aqVGmJal60+b0PysI3O7WFSU0ehxG/c7usZY8oIWFjLK8meZ0yO0TNpJZ
         2B/iS9Q1SAY8cWGaehzBq4WkXM8L4ZDOV9/TD2hEmSLCq3q7AKkb1ktSenJL9dbQ/ltI
         XuJy/3TVeo6jJYXh9KOg9hjM3nCaTrvs/YnJJTuDsz3IzM0pqclldUSyewp8ihVYCdhS
         /4KXS73zzq7CDlb4veyr/JwfLIZZnmnJtvlWyOs+ZpI25OG1lZ1vV3CEw0oH5TuxflT+
         9iztUErIlvuz43CiuX/Zu/qG2Q9GySxyiHZopPH2fkPgAJlhAUoRjIMYURvrkRhLUNFx
         eBrg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Bmyc2fJi+0W9COq9nGEPjGSbA6HgP9MTWPvqdZSshXY=;
        b=ZbwWt7duxctfAimvtMu1aL/P9NdctB4Cg6zkeIZfAYoTlRmp3ZuJyxU0pOsZ48ClqK
         1ae2ts2WTHjJqq3bEKMcqn3mvyh+nicYKwjiPcScItRBJmcLUW/IplPxg9Uus6En/Ilg
         cjQdFDFxiTlAZvc+jAC8w6IP9uyv28Qm/5qmeTjALlqAxGDmeVS3K8yAROMO6fTHFX8W
         +VbbLMZ/bLFs7CxZckNyWszBB79yF+QG7VBEx95uiS4C5UOyM5gGEIBL1hy7oC368znL
         dsNe8UN2DpuiYgKzlrm0Vd0gLQjFlx4B8zLrkeHmvqI3xS4/0AyA0edXeJVdsVuy3lq2
         NCSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Bmyc2fJi+0W9COq9nGEPjGSbA6HgP9MTWPvqdZSshXY=;
        b=WW0tlgNA4uxVVcFUSgrGxYZoAsFB9cDE7PhUG2mk6N6QA9V97WlOVTM4Z1gH7k5CVK
         +Ixd3WFv2Kc8bOh5joFCL6LwbTbPvFsqoxUuLFv26/mnqdV/8kCFWBkideacH2GiU4aN
         TomCXICEySigcu5oT29Kp0rQ8O2HIA3cqFqbepMiPMbsninU+Ice7ejuiY29Zx7CEyiS
         892S1aXd0tUeyqt1dJKw7Lhi2lH+eNRVGElXGW0QK25jk8L8EmH/WCKCajvcs02hfbv+
         TdttucjCu/K1K0ORrVSp8qhkzz8Kpr17R2tnAvJNXknLteIrdRg5a73/B2MmzkkPfcjr
         6N0w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530PLMs8OVQ2gu3QX66yQDI3NLcecbEM+HnjXRzN58lXkQiCKHR2
	E8zh4kKIiALw1lkQXssqRqU=
X-Google-Smtp-Source: ABdhPJxxUeULjKnXWXMo8p9TozjRLusnxt+wt5oemm5wNOw7Bg/WOH9ITRu1jwFOkcL1VB0ewO6P5Q==
X-Received: by 2002:a05:622a:28d:: with SMTP id z13mr3289644qtw.87.1615392030764;
        Wed, 10 Mar 2021 08:00:30 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:7a82:: with SMTP id v124ls279475qkc.3.gmail; Wed, 10 Mar
 2021 08:00:30 -0800 (PST)
X-Received: by 2002:a37:2e46:: with SMTP id u67mr3399250qkh.488.1615392030114;
        Wed, 10 Mar 2021 08:00:30 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615392030; cv=none;
        d=google.com; s=arc-20160816;
        b=cjiRrc6resBy2RZcm1RoJsWoJIOBQ8EUTgsCGWfJcWKWnQCAawmf9gdBefqxl/JTux
         Mlhg+hZzEQyPR6SwxCfq/rcaqvFMd66uyzjgQh2JWnhreYqnlrGodiPWWtNnLa5M31dw
         VeQiNewACfekBWCzto7b/5ljD3a8+oS+Xwm3Nbc2yc319M430Jo9/bHSRmPc67aZ02W7
         dLYox/+vpP5adjj29yAoT/DUQOK2A0hrj5UHA/CNr2R4q8KVVKElwoZjvxjVZM/8OOXx
         /Y548IqC/Do3KOQH7iB3VfesvuZVOT2fioKnchjrmLq747YCT3kb823GRAb/wVPuPuNo
         a1VQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=b92/Szh1jBRm/0gNJ/vIu/vWD/10CIt64PBvLYTjH/U=;
        b=TcZ0QBM+HLjB5sFBvprcYdAeY300dm8Sw4p8CvaN2gKyBLYPX67h3ogwQHG5mumslE
         OCrGNxpR0A9Oe1EwcKIniWoppexbM+9NIjV41bXaSOGnQ9V/+hZ/urL9SThMzxb7LdXS
         QfAOIHaREvFo3y2V65Rdz3n3DjOBRtgq8Rn/UeuJjcowiF+Dl2KTd+zu7Gp2got4tH41
         0zs2wd3MHyhypPzgwF7Y5i2jbNr0C1fk6Rb1Aum4QOnYce2yfQhXabiYCY7gKL01gt+K
         /P9kBjReTb0bTj0p52gIeWgJtzshLfTEVCPpZQaEoJIVVFUubkt18MZnspRlPsSmGzXB
         kqiA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga05.intel.com (mga05.intel.com. [192.55.52.43])
        by gmr-mx.google.com with ESMTPS id r24si879607qtp.1.2021.03.10.08.00.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 Mar 2021 08:00:29 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) client-ip=192.55.52.43;
IronPort-SDR: c2pkk4OPbw0yHNAB3SfXi02ebMfMyaCJwfjSbQknM4H49B98wlGkcvgEPArh2hjQLAb5k/B8Hc
 G0QDkO4IUE3g==
X-IronPort-AV: E=McAfee;i="6000,8403,9919"; a="273536167"
X-IronPort-AV: E=Sophos;i="5.81,237,1610438400"; 
   d="gz'50?scan'50,208,50";a="273536167"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 Mar 2021 08:00:27 -0800
IronPort-SDR: B7TNDrweCYQFZpBaSrV5sXRnuv1mIO31R4jPD7UL1+K897bnJPM66QLOGLEW6ncULaQv5D6S0I
 +gtxAC9JcsaA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,237,1610438400"; 
   d="gz'50?scan'50,208,50";a="386674031"
Received: from lkp-server02.sh.intel.com (HELO ce64c092ff93) ([10.239.97.151])
  by orsmga002.jf.intel.com with ESMTP; 10 Mar 2021 08:00:25 -0800
Received: from kbuild by ce64c092ff93 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lK1G4-0000GL-2I; Wed, 10 Mar 2021 16:00:24 +0000
Date: Wed, 10 Mar 2021 23:59:58 +0800
From: kernel test robot <lkp@intel.com>
To: Jonathan Kim <Jonathan.Kim@amd.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Alex Deucher <alexander.deucher@amd.com>,
	Oak Zeng <Oak.Zeng@amd.com>
Subject: [agd5f:drm-next 356/428]
 drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd_arcturus.c:125:5: warning: no
 previous prototype for function 'kgd_arcturus_hqd_sdma_load'
Message-ID: <202103102348.FWBBuSe5-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="BXVAT5kNtrzKuDFl"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted
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


--BXVAT5kNtrzKuDFl
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://gitlab.freedesktop.org/agd5f/linux.git drm-next
head:   e90c92dc6b09574f7fe2e7e5774a3af30e36c632
commit: 86541dd5d1690a823cd5e6505522825e832f83e4 [356/428] drm/amdkfd: add aldebaran kfd2kgd callbacks to kfd device (v2)
config: powerpc-randconfig-r035-20210309 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project cd9a69289c7825d54450cb6829fef2c8e0f1963a)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install powerpc cross compiling tool for clang build
        # apt-get install binutils-powerpc-linux-gnu
        git remote add agd5f https://gitlab.freedesktop.org/agd5f/linux.git
        git fetch --no-tags agd5f drm-next
        git checkout 86541dd5d1690a823cd5e6505522825e832f83e4
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd_arcturus.c:125:5: warning: no previous prototype for function 'kgd_arcturus_hqd_sdma_load' [-Wmissing-prototypes]
   int kgd_arcturus_hqd_sdma_load(struct kgd_dev *kgd, void *mqd,
       ^
   drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd_arcturus.c:125:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   int kgd_arcturus_hqd_sdma_load(struct kgd_dev *kgd, void *mqd,
   ^
   static 
>> drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd_arcturus.c:195:5: warning: no previous prototype for function 'kgd_arcturus_hqd_sdma_dump' [-Wmissing-prototypes]
   int kgd_arcturus_hqd_sdma_dump(struct kgd_dev *kgd,
       ^
   drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd_arcturus.c:195:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   int kgd_arcturus_hqd_sdma_dump(struct kgd_dev *kgd,
   ^
   static 
>> drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd_arcturus.c:227:6: warning: no previous prototype for function 'kgd_arcturus_hqd_sdma_is_occupied' [-Wmissing-prototypes]
   bool kgd_arcturus_hqd_sdma_is_occupied(struct kgd_dev *kgd, void *mqd)
        ^
   drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd_arcturus.c:227:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   bool kgd_arcturus_hqd_sdma_is_occupied(struct kgd_dev *kgd, void *mqd)
   ^
   static 
>> drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd_arcturus.c:246:5: warning: no previous prototype for function 'kgd_arcturus_hqd_sdma_destroy' [-Wmissing-prototypes]
   int kgd_arcturus_hqd_sdma_destroy(struct kgd_dev *kgd, void *mqd,
       ^
   drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd_arcturus.c:246:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   int kgd_arcturus_hqd_sdma_destroy(struct kgd_dev *kgd, void *mqd,
   ^
   static 
   4 warnings generated.


vim +/kgd_arcturus_hqd_sdma_load +125 drivers/gpu/drm/amd/amdgpu/amdgpu_amdkfd_arcturus.c

   124	
 > 125	int kgd_arcturus_hqd_sdma_load(struct kgd_dev *kgd, void *mqd,
   126				     uint32_t __user *wptr, struct mm_struct *mm)
   127	{
   128		struct amdgpu_device *adev = get_amdgpu_device(kgd);
   129		struct v9_sdma_mqd *m;
   130		uint32_t sdma_rlc_reg_offset;
   131		unsigned long end_jiffies;
   132		uint32_t data;
   133		uint64_t data64;
   134		uint64_t __user *wptr64 = (uint64_t __user *)wptr;
   135	
   136		m = get_sdma_mqd(mqd);
   137		sdma_rlc_reg_offset = get_sdma_rlc_reg_offset(adev, m->sdma_engine_id,
   138						    m->sdma_queue_id);
   139	
   140		WREG32(sdma_rlc_reg_offset + mmSDMA0_RLC0_RB_CNTL,
   141			m->sdmax_rlcx_rb_cntl & (~SDMA0_RLC0_RB_CNTL__RB_ENABLE_MASK));
   142	
   143		end_jiffies = msecs_to_jiffies(2000) + jiffies;
   144		while (true) {
   145			data = RREG32(sdma_rlc_reg_offset + mmSDMA0_RLC0_CONTEXT_STATUS);
   146			if (data & SDMA0_RLC0_CONTEXT_STATUS__IDLE_MASK)
   147				break;
   148			if (time_after(jiffies, end_jiffies)) {
   149				pr_err("SDMA RLC not idle in %s\n", __func__);
   150				return -ETIME;
   151			}
   152			usleep_range(500, 1000);
   153		}
   154	
   155		WREG32(sdma_rlc_reg_offset + mmSDMA0_RLC0_DOORBELL_OFFSET,
   156		       m->sdmax_rlcx_doorbell_offset);
   157	
   158		data = REG_SET_FIELD(m->sdmax_rlcx_doorbell, SDMA0_RLC0_DOORBELL,
   159				     ENABLE, 1);
   160		WREG32(sdma_rlc_reg_offset + mmSDMA0_RLC0_DOORBELL, data);
   161		WREG32(sdma_rlc_reg_offset + mmSDMA0_RLC0_RB_RPTR,
   162					m->sdmax_rlcx_rb_rptr);
   163		WREG32(sdma_rlc_reg_offset + mmSDMA0_RLC0_RB_RPTR_HI,
   164					m->sdmax_rlcx_rb_rptr_hi);
   165	
   166		WREG32(sdma_rlc_reg_offset + mmSDMA0_RLC0_MINOR_PTR_UPDATE, 1);
   167		if (read_user_wptr(mm, wptr64, data64)) {
   168			WREG32(sdma_rlc_reg_offset + mmSDMA0_RLC0_RB_WPTR,
   169			       lower_32_bits(data64));
   170			WREG32(sdma_rlc_reg_offset + mmSDMA0_RLC0_RB_WPTR_HI,
   171			       upper_32_bits(data64));
   172		} else {
   173			WREG32(sdma_rlc_reg_offset + mmSDMA0_RLC0_RB_WPTR,
   174			       m->sdmax_rlcx_rb_rptr);
   175			WREG32(sdma_rlc_reg_offset + mmSDMA0_RLC0_RB_WPTR_HI,
   176			       m->sdmax_rlcx_rb_rptr_hi);
   177		}
   178		WREG32(sdma_rlc_reg_offset + mmSDMA0_RLC0_MINOR_PTR_UPDATE, 0);
   179	
   180		WREG32(sdma_rlc_reg_offset + mmSDMA0_RLC0_RB_BASE, m->sdmax_rlcx_rb_base);
   181		WREG32(sdma_rlc_reg_offset + mmSDMA0_RLC0_RB_BASE_HI,
   182				m->sdmax_rlcx_rb_base_hi);
   183		WREG32(sdma_rlc_reg_offset + mmSDMA0_RLC0_RB_RPTR_ADDR_LO,
   184				m->sdmax_rlcx_rb_rptr_addr_lo);
   185		WREG32(sdma_rlc_reg_offset + mmSDMA0_RLC0_RB_RPTR_ADDR_HI,
   186				m->sdmax_rlcx_rb_rptr_addr_hi);
   187	
   188		data = REG_SET_FIELD(m->sdmax_rlcx_rb_cntl, SDMA0_RLC0_RB_CNTL,
   189				     RB_ENABLE, 1);
   190		WREG32(sdma_rlc_reg_offset + mmSDMA0_RLC0_RB_CNTL, data);
   191	
   192		return 0;
   193	}
   194	
 > 195	int kgd_arcturus_hqd_sdma_dump(struct kgd_dev *kgd,
   196				     uint32_t engine_id, uint32_t queue_id,
   197				     uint32_t (**dump)[2], uint32_t *n_regs)
   198	{
   199		struct amdgpu_device *adev = get_amdgpu_device(kgd);
   200		uint32_t sdma_rlc_reg_offset = get_sdma_rlc_reg_offset(adev,
   201				engine_id, queue_id);
   202		uint32_t i = 0, reg;
   203	#undef HQD_N_REGS
   204	#define HQD_N_REGS (19+6+7+10)
   205	
   206		*dump = kmalloc_array(HQD_N_REGS * 2, sizeof(uint32_t), GFP_KERNEL);
   207		if (*dump == NULL)
   208			return -ENOMEM;
   209	
   210		for (reg = mmSDMA0_RLC0_RB_CNTL; reg <= mmSDMA0_RLC0_DOORBELL; reg++)
   211			DUMP_REG(sdma_rlc_reg_offset + reg);
   212		for (reg = mmSDMA0_RLC0_STATUS; reg <= mmSDMA0_RLC0_CSA_ADDR_HI; reg++)
   213			DUMP_REG(sdma_rlc_reg_offset + reg);
   214		for (reg = mmSDMA0_RLC0_IB_SUB_REMAIN;
   215		     reg <= mmSDMA0_RLC0_MINOR_PTR_UPDATE; reg++)
   216			DUMP_REG(sdma_rlc_reg_offset + reg);
   217		for (reg = mmSDMA0_RLC0_MIDCMD_DATA0;
   218		     reg <= mmSDMA0_RLC0_MIDCMD_CNTL; reg++)
   219			DUMP_REG(sdma_rlc_reg_offset + reg);
   220	
   221		WARN_ON_ONCE(i != HQD_N_REGS);
   222		*n_regs = i;
   223	
   224		return 0;
   225	}
   226	
 > 227	bool kgd_arcturus_hqd_sdma_is_occupied(struct kgd_dev *kgd, void *mqd)
   228	{
   229		struct amdgpu_device *adev = get_amdgpu_device(kgd);
   230		struct v9_sdma_mqd *m;
   231		uint32_t sdma_rlc_reg_offset;
   232		uint32_t sdma_rlc_rb_cntl;
   233	
   234		m = get_sdma_mqd(mqd);
   235		sdma_rlc_reg_offset = get_sdma_rlc_reg_offset(adev, m->sdma_engine_id,
   236						    m->sdma_queue_id);
   237	
   238		sdma_rlc_rb_cntl = RREG32(sdma_rlc_reg_offset + mmSDMA0_RLC0_RB_CNTL);
   239	
   240		if (sdma_rlc_rb_cntl & SDMA0_RLC0_RB_CNTL__RB_ENABLE_MASK)
   241			return true;
   242	
   243		return false;
   244	}
   245	
 > 246	int kgd_arcturus_hqd_sdma_destroy(struct kgd_dev *kgd, void *mqd,
   247					unsigned int utimeout)
   248	{
   249		struct amdgpu_device *adev = get_amdgpu_device(kgd);
   250		struct v9_sdma_mqd *m;
   251		uint32_t sdma_rlc_reg_offset;
   252		uint32_t temp;
   253		unsigned long end_jiffies = (utimeout * HZ / 1000) + jiffies;
   254	
   255		m = get_sdma_mqd(mqd);
   256		sdma_rlc_reg_offset = get_sdma_rlc_reg_offset(adev, m->sdma_engine_id,
   257						    m->sdma_queue_id);
   258	
   259		temp = RREG32(sdma_rlc_reg_offset + mmSDMA0_RLC0_RB_CNTL);
   260		temp = temp & ~SDMA0_RLC0_RB_CNTL__RB_ENABLE_MASK;
   261		WREG32(sdma_rlc_reg_offset + mmSDMA0_RLC0_RB_CNTL, temp);
   262	
   263		while (true) {
   264			temp = RREG32(sdma_rlc_reg_offset + mmSDMA0_RLC0_CONTEXT_STATUS);
   265			if (temp & SDMA0_RLC0_CONTEXT_STATUS__IDLE_MASK)
   266				break;
   267			if (time_after(jiffies, end_jiffies)) {
   268				pr_err("SDMA RLC not idle in %s\n", __func__);
   269				return -ETIME;
   270			}
   271			usleep_range(500, 1000);
   272		}
   273	
   274		WREG32(sdma_rlc_reg_offset + mmSDMA0_RLC0_DOORBELL, 0);
   275		WREG32(sdma_rlc_reg_offset + mmSDMA0_RLC0_RB_CNTL,
   276			RREG32(sdma_rlc_reg_offset + mmSDMA0_RLC0_RB_CNTL) |
   277			SDMA0_RLC0_RB_CNTL__RB_ENABLE_MASK);
   278	
   279		m->sdmax_rlcx_rb_rptr = RREG32(sdma_rlc_reg_offset + mmSDMA0_RLC0_RB_RPTR);
   280		m->sdmax_rlcx_rb_rptr_hi =
   281			RREG32(sdma_rlc_reg_offset + mmSDMA0_RLC0_RB_RPTR_HI);
   282	
   283		return 0;
   284	}
   285	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202103102348.FWBBuSe5-lkp%40intel.com.

--BXVAT5kNtrzKuDFl
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
+VpaWseNWlOSKb5VI/wvJv2zJuIcAgA=

--BXVAT5kNtrzKuDFl--
