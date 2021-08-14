Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBYPN36EAMGQELDURTMY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3e.google.com (mail-vk1-xa3e.google.com [IPv6:2607:f8b0:4864:20::a3e])
	by mail.lfdr.de (Postfix) with ESMTPS id 40FD03EC3FF
	for <lists+clang-built-linux@lfdr.de>; Sat, 14 Aug 2021 19:01:23 +0200 (CEST)
Received: by mail-vk1-xa3e.google.com with SMTP id d84-20020a1f1d570000b0290284bac793bdsf2484416vkd.18
        for <lists+clang-built-linux@lfdr.de>; Sat, 14 Aug 2021 10:01:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1628960482; cv=pass;
        d=google.com; s=arc-20160816;
        b=nsAn+SUoaKiRawWRYM/BZ6L9phsg+hLUGNxVWpJADdeJRf7d59erI7Xnp3GXD0j7Ep
         zUTsRirXyhq4Bs4jwEEF4LT7Z9MTVIkr3lKEAbcWV+tnO47KGxbcAbLTszxjqfSp8gz5
         AnXvEcOJ+uLZgJUWTzMeiwjydSw3ufJ5/UdN2h6HII030dIgcBHWKaJo2CGLh5aFSqIe
         iQc1CFerf4KSFSpO9INDhXwLDXSr0PzqgywninyANU/MnMwFUlB8o7DyDvRujdP88HO9
         VTHWScAjsEiPpAUyHmMSRk1+d9rXl8WZ/6vxuJbYyapJxCzfXLghGb9fTcdJ0sNhihxw
         Vshw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=DjNTVKfDBajnCBTK+ZpyPTpRnMbUdHn1fOhsGLYCvQ4=;
        b=zseL4LBM0Guw1VCzevEimoBM4lEnWXuOpPkLFPLloD6j/kGfpQgXcDbYraAsjTtLiO
         eKC+2HAfFGVJ6Y8S58MuBteatgC8Q7vJIXOVJKy33geoJVEkwJ0aCZ2JrvgRMiN6o9hY
         3cJeXteYvQk2MV7wTrRaoMjgy5QfxQx6xKJuePWcBCWBTj93zdxukVkk14abA0Vj4956
         R9GKTgyMYKGuQbnJseqxdcUz4kzCxSsPvk8OHsVPhXQqyzYyVFWWoIPM72zcnD1Simrf
         ZPuHpHnHe8J58DlPrrjzUdST0Da9GgcJJXAih/oMzfLEMh1CJPwNYCOc4LLR4tK4vHdI
         xURA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=DjNTVKfDBajnCBTK+ZpyPTpRnMbUdHn1fOhsGLYCvQ4=;
        b=UC33q6stc4gt3EjPqwEtU78D4tXnzQLjZg3Mr9NSdV2aD0uMdulETBzgD5VL1aufwf
         VDpAg4VYIOuFZWXYpbjbfIqGU7GCbkAaXTyXlNwMNXhguLQw5Flljy89fQ289ZQoJvTM
         Op5BSVaZpA5AL6IJVw1C18Hm54ym6SB+b2gP+hvcJrZyIu4WxuHDoxblhTCuWgPISLN1
         dcYaIq9rB+b19USb/lJuIoKFERQnmi5B87L8FZZ6DvcUpkQgS9hnkVwGO6d6ZxfFvkhL
         tpHtVg2tdY5wrtYHn8T4Le2V64trdDsepKFWCD6f2GqLHTKnMF7jAQJoOxJiqpLSpOIt
         QGUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=DjNTVKfDBajnCBTK+ZpyPTpRnMbUdHn1fOhsGLYCvQ4=;
        b=Nh0NAuqazI5vMxPwdtkPOhFVHfZb+iTQke2+cchfgSSB3zQ7T/hhG9QhbBFfLC0DnB
         0lJLKBIjgOkglaQzHevvMJEP/xFVegnOcHfP+72+5t/ZAGdvl8ctjNiYL9Tw4ur1pgml
         qJAmSN36xWoiESE7ate32Nn3SBXudOTiQPrYsA/WQgGsEVz4slX/+lzQILBCI9oInjJf
         j7O0OWWOnQoTNeM78+almyqGkiDsI78iCkBNNW+QUUPkpva8zs3VwvtEduI0170J3cCN
         /PDh8PA3D1z6ZAAvlYOqJ9HFlzGepq+X4XlXx6lO5TnvNsK98esw0GDZAfRQKHNdz9OA
         ae3g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531KM70qV1KqC88FYEX8nJg3lWSJfPRzKzryvCyHa+lrKb3smjUI
	ELbkt0/QgKSztmadKjfekZc=
X-Google-Smtp-Source: ABdhPJyCSv/mSpTuO4TpkTiJKzKnimcUxYd6Qw84yDGobu7GMcgagkSmZhUiWPEaOoQXQ6Dm4doJ1Q==
X-Received: by 2002:a05:6102:e96:: with SMTP id l22mr5937120vst.19.1628960482019;
        Sat, 14 Aug 2021 10:01:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:7682:: with SMTP id v2ls433230uaq.10.gmail; Sat, 14 Aug
 2021 10:01:20 -0700 (PDT)
X-Received: by 2002:ab0:4467:: with SMTP id m94mr5541381uam.99.1628960479831;
        Sat, 14 Aug 2021 10:01:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1628960479; cv=none;
        d=google.com; s=arc-20160816;
        b=cvLD5w+MDoV4weqWqQcwaUs4rdV1ORmUcmK5AZ9gThGfcJ8Qan+tC5x671PTlU3e9e
         veYct8kS24qhfRbFQ1LkXw+PAqoBqiSrjG7uqt+pbd2fy/FmWt35H71bfIt8/Wo+DuTr
         PdW2PrBC3YZkyBmpYgBYEwEchXvJIvi+JCiBLK9/VRBIRg9Je4AQZ9+K6kHW29I0C+RV
         Me2QREjMZU0/ku9VwBddTs3ENlE0ERaaJjQwdeIFqmrJNw013g/oUWXmOPM7AReZf+vF
         3tyiWVgFrIDLOtp3J++Rh/T4VraGLbfi2moQNGuuYrEtCmD9Cvy7Kj4s9K+VKT8OoIZj
         CnUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=1GFNxJw//T3OhjSH9GY0QVtgJGKjTTaGjLpmak3MRy0=;
        b=A39I9AG13FT8u3V5b8WCsQGaYLskdbYq5tGFltg4Eu1ajNYEnrv5hAND3wZ2sHjpvf
         hlnca4MlqtuuXzeLim1DV6lzrGYdJgyKLeuoXhCoEY0EzpyQlnx+lDTCrpeRShfGmHtN
         3Z3RcQEPZH7wnJs1GxoT1fDxtAkCBOgWc9E6kRxBtKu2b3V8L3TbdfLTx3qPkZ9QG+/L
         V/ImqvMWKUNw10+Nh1zTY9a7XFgM0VMERWqpRjwfDITpjYd7sYw2cMAC9S3Ba1wDXrKA
         M8jFJ9NwMx8pddSSQ5oldGrAqDE3R3X9dNdozuzNB8Spj6YvL6M6GZySxaVC2znWs5Ew
         PxdQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga01.intel.com (mga01.intel.com. [192.55.52.88])
        by gmr-mx.google.com with ESMTPS id p6si112114vsm.1.2021.08.14.10.01.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 14 Aug 2021 10:01:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.88 as permitted sender) client-ip=192.55.52.88;
X-IronPort-AV: E=McAfee;i="6200,9189,10076"; a="237744261"
X-IronPort-AV: E=Sophos;i="5.84,322,1620716400"; 
   d="gz'50?scan'50,208,50";a="237744261"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
  by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Aug 2021 10:01:17 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,322,1620716400"; 
   d="gz'50?scan'50,208,50";a="518597232"
Received: from lkp-server01.sh.intel.com (HELO d053b881505b) ([10.239.97.150])
  by FMSMGA003.fm.intel.com with ESMTP; 14 Aug 2021 10:01:15 -0700
Received: from kbuild by d053b881505b with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1mEx22-000OyY-Gm; Sat, 14 Aug 2021 17:01:14 +0000
Date: Sun, 15 Aug 2021 01:01:07 +0800
From: kernel test robot <lkp@intel.com>
To: Ming Lei <ming.lei@redhat.com>, Thomas Gleixner <tglx@linutronix.de>,
	Jens Axboe <axboe@kernel.dk>
Cc: clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
	linux-kernel@vger.kernel.org, linux-block@vger.kernel.org,
	Christoph Hellwig <hch@lst.de>, Ming Lei <ming.lei@redhat.com>
Subject: Re: [PATCH 5/7] genirq/affinity: move group_cpus_evenly() into lib/
Message-ID: <202108150001.EBuNGcQ8-lkp@intel.com>
References: <20210814123532.229494-6-ming.lei@redhat.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="ZGiS0Q5IWpPtfppv"
Content-Disposition: inline
In-Reply-To: <20210814123532.229494-6-ming.lei@redhat.com>
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


--ZGiS0Q5IWpPtfppv
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Ming,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on tip/irq/core]
[also build test WARNING on next-20210813]
[cannot apply to block/for-next linux/master linus/master v5.14-rc5]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Ming-Lei/genirq-affinity-abstract-new-API-from-managed-irq-affinity-spread/20210814-203741
base:   https://git.kernel.org/pub/scm/linux/kernel/git/tip/tip.git 04c2721d3530f0723b4c922a8fa9f26b202a20de
config: hexagon-randconfig-r041-20210814 (attached as .config)
compiler: clang version 12.0.0
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # https://github.com/0day-ci/linux/commit/759f72186bfdd5c3ba8b53ac0749cf7ba930012c
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Ming-Lei/genirq-affinity-abstract-new-API-from-managed-irq-affinity-spread/20210814-203741
        git checkout 759f72186bfdd5c3ba8b53ac0749cf7ba930012c
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=hexagon 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> lib/group_cpus.c:344:17: warning: no previous prototype for function 'group_cpus_evenly' [-Wmissing-prototypes]
   struct cpumask *group_cpus_evenly(unsigned int numgrps)
                   ^
   lib/group_cpus.c:344:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
   struct cpumask *group_cpus_evenly(unsigned int numgrps)
   ^
   static 
   1 warning generated.


vim +/group_cpus_evenly +344 lib/group_cpus.c

   328	
   329	/**
   330	 * group_cpus_evenly - Group all CPUs evenly per NUMA/CPU locality
   331	 * @numgrps: number of groups
   332	 *
   333	 * Return: cpumask array if successful, NULL otherwise. And each element
   334	 * includes CPUs assigned to this group
   335	 *
   336	 * Try to put close CPUs from viewpoint of CPU and NUMA locality into
   337	 * same group, and run two-stage grouping:
   338	 *	1) allocate present CPUs on these groups evenly first
   339	 *	2) allocate other possible CPUs on these groups evenly
   340	 *
   341	 * We guarantee in the resulted grouping that all CPUs are covered, and
   342	 * no same CPU is assigned to different groups
   343	 */
 > 344	struct cpumask *group_cpus_evenly(unsigned int numgrps)

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202108150001.EBuNGcQ8-lkp%40intel.com.

--ZGiS0Q5IWpPtfppv
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
h2of/AV1+I3/qH8BAA==

--ZGiS0Q5IWpPtfppv--
