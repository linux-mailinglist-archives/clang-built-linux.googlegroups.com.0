Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBQW27CCQMGQEZDPUQPQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73f.google.com (mail-qk1-x73f.google.com [IPv6:2607:f8b0:4864:20::73f])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EBD739DEBD
	for <lists+clang-built-linux@lfdr.de>; Mon,  7 Jun 2021 16:29:23 +0200 (CEST)
Received: by mail-qk1-x73f.google.com with SMTP id t187-20020a3746c40000b02903aa67b53e3dsf5425628qka.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 07 Jun 2021 07:29:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623076162; cv=pass;
        d=google.com; s=arc-20160816;
        b=CVUTCJfteM5it3yyhtXIksMkIolKWogfU/TSOSG1qr/t+XKkTJ3wIru3MOg9YZvqTd
         LrcUT6JYDxgPTxzdV1cI5Sq+W5RoCl9xXbiKYaWv6sSngRSHq66T+EstqUx+K4BaShjL
         fquS5o8ugL+DH0yYGyRL7ClC52IdKvtdEMvr+QE0wQdSuEPuxpJ5+6pm7CtPmqRzzEZB
         vehyOwbI/VwdLM+R3bEQ0QtqXoAQV6iAIPMFPXwNz5CfFAIABydyTqLKQQhEx6KIvG+M
         TVMomVQfTBWadCzR22bqMtmxS97SocvbfHhIk+zIdJJV/XE+sxq3dctnofhEe0rnrITT
         +kkA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=6nNvAIEEKlEgNznzZXu9Mr36JnV7a+Vc/rXyhQ/SB44=;
        b=gTFG1VGAu7IRTGCzFTOnGaMqS1P42/2bwFbhHGFDPb5YfmggVRpX1SHw6SoJDEhRrK
         UyFC3efHzSWVVvVuuuckgjvny7nz1bsqusL8HgSx45QS8rG8zvPIYeZ1Lnou3aSjPMrj
         MnqSkNIu4R6YZtPdc+2L+3JoBuJ+pdbUEsWYysN2cZQG9xHf43l/l60Cx+D8J9A3sr8Q
         nj68vFP1HUYqHCUGtxJVkk2V/IdJY+BBfNF9En0hqjaUcD/rv+0ywQfWao29FA5v/cjd
         gZMdF4MUl+TuZ9UobzTD243o6DT77TU/WAidy0uewNW2HOFMzvkjGTjNylI18VFjsnzd
         8epA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6nNvAIEEKlEgNznzZXu9Mr36JnV7a+Vc/rXyhQ/SB44=;
        b=iHVOTmtnityWJOIQsXN2BnWvhENKAL1dGpCOVKnuk5ilqMV5+oqBmt7yLVO/4gfQLB
         ELyxZ9BrEkic9Z0YSBRS4RLuicLT2Jex9ePbkx1eO04HY2gI0h+ySrJxVaccVGjbj8MY
         GDQy4KfMZSCwVS8uxXjpmbkg+6+HprN3KVvwoWps3hZnvqXSrS4ppiuvIHpbB8qixm5m
         gocXS/MlbSTa93RmEMiE9khDwBml0paxGiUBXw3kRLgoXT2AoOsfkgGz0rsx9KGxkwfB
         CLZh2AoxWfStbzkehMpTg7lVc2g2+essvZeV/epPcgPZm/uuZscCQLiUj2skkQ02fkqM
         I+jQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6nNvAIEEKlEgNznzZXu9Mr36JnV7a+Vc/rXyhQ/SB44=;
        b=I4GXuZgmLNKJSu1gRDtfosCwVpoGByZGNlzcjjpqbdE7aJqKCnF0yAuq/kdc6rGvmt
         3zwgvH35Ka1dJl7W9ewMepw4JsLWtcRimNVpScfl6szrY/OIdgj1dHA6ZC4Oa/5M2s8r
         Fb6N18X9G3G0Yojwa4RMmwcjDl8WTfeCD+b7Ygzccj7617Jq4disLzecw4Fmb7ib5kR/
         ppVGitYKkC9uyrFCT+LzNs7IuOGp8wIddvWkVhRiRKY+877kkswqJqXRHY/xx+j5cCYx
         Gc8FC+vR2csVRIEMMQd2qOw2sP8xBCJRdRN83tIfiB934u8C8/NfY3khRIHKRj5ag3MY
         /5zg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532eYbMNR98Zq6K6Xy0+y4ih7OOZlzJBXVk6CnKE00R8Zj9iKucn
	cWnIYG/OBPTUiRbOzsLPx+o=
X-Google-Smtp-Source: ABdhPJyiPt8httJTNLdLKR2tMPTR+UdfO8s6zn6Ve1obzkVkBwzNxLCbFO6d/gXLLEjmUg4K75eUOQ==
X-Received: by 2002:ae9:efd5:: with SMTP id d204mr4624618qkg.415.1623076162379;
        Mon, 07 Jun 2021 07:29:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:2087:: with SMTP id e7ls7491836qka.11.gmail; Mon,
 07 Jun 2021 07:29:22 -0700 (PDT)
X-Received: by 2002:a37:947:: with SMTP id 68mr9115610qkj.364.1623076161738;
        Mon, 07 Jun 2021 07:29:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623076161; cv=none;
        d=google.com; s=arc-20160816;
        b=zMW0NmlHHGeeYN1YDRNBsU4NTBahXbLbVFkqRQn57hB+4ezIy/xd3LHxYqlvjTYdD6
         Bazh3jYA8195glX/2q7+ys+/TwNvmhk0am/gQTb8mj7ITRZ9egSoYvqqbUjNLyUXPLdI
         BjM9QkL383bAPiiskT775FVsoe9sbiWj2rNrEObhZZBydNI9Uis6Q1JV8L3kIOwCQ57y
         lgT+NfcewmwjOam5Sm0Fkat9xCh1mxv+rVd1cHf9PzaR62/RgOrC9NGD27YB39eW8r3l
         nj9TfufIhW73i5Z+qmgoMWjqbmXwko1CdK+dR9Nhv5i4G8lAkuj6YLdl56C6KBljPuwJ
         d7Ow==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=9MrLhFNLREnmLfZ5qTbjNhCvAkbrv6yQrQt9FYvTR0k=;
        b=kJH+8h9LgD2dJEW3B3eyUqno4Iq134FAsSG0tsee9yWAnf1nAwEIuNQHMo65SB6NVA
         AlhTkcgSjDgsmE8xOU5Fd8CJ+TQk10xEywaUo8WAMf+e209sj6M4BLWmwpB7pd9jHtcV
         HVFBgMBwTh4mdGzm2+clSFPoOFk1OWkxoAWhF75rfLGx6febIQV066f3BVmTfGKDcvGM
         8mKrlKrO+QuNfPO/Nvv8POaOvAKbv9PAtnhw89gEbf3AinVM/nu2FTT5CK3LpDcT6+19
         CEJWGikeFYmnVmbET/TfG0mT2rvv4DYiI131RJ1+o3AEoyaKcE+ly6BAVlDUcEGbVsKz
         3LIQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga12.intel.com (mga12.intel.com. [192.55.52.136])
        by gmr-mx.google.com with ESMTPS id p5si1469220qkj.2.2021.06.07.07.29.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 07 Jun 2021 07:29:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) client-ip=192.55.52.136;
IronPort-SDR: OTcYkTkIgT92R1yxWClkAyg+MCyOCwBwuJTa0oulu0F36e0zMkB8JGME8v1DDkqBIELX1uCum2
 Aa66Lp5FN6xw==
X-IronPort-AV: E=McAfee;i="6200,9189,10008"; a="184313965"
X-IronPort-AV: E=Sophos;i="5.83,255,1616482800"; 
   d="gz'50?scan'50,208,50";a="184313965"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Jun 2021 07:29:17 -0700
IronPort-SDR: jp5OlZedwFMIXTy9hoEZmcDQOUK8R0z+FKlsFn7qmrgNnZbpa7jitsav1C4B+xSoyD+E710vbx
 7+n+F+xn4t4w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,255,1616482800"; 
   d="gz'50?scan'50,208,50";a="447499843"
Received: from lkp-server02.sh.intel.com (HELO 1ec8406c5392) ([10.239.97.151])
  by orsmga008.jf.intel.com with ESMTP; 07 Jun 2021 07:29:15 -0700
Received: from kbuild by 1ec8406c5392 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lqGFe-0008ND-MN; Mon, 07 Jun 2021 14:29:14 +0000
Date: Mon, 7 Jun 2021 22:28:33 +0800
From: kernel test robot <lkp@intel.com>
To: Shawn Lin <shawn.lin@rock-chips.com>,
	Ulf Hansson <ulf.hansson@linaro.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-mmc@vger.kernel.org, Shawn Lin <shawn.lin@rock-chips.com>
Subject: Re: [PATCH] mmc: block: Use .card_busy() to detect busy state in
 card_busy_detect
Message-ID: <202106072204.AQuPJZc8-lkp@intel.com>
References: <1623057495-63363-1-git-send-email-shawn.lin@rock-chips.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="M9NhX3UHpAaciwkO"
Content-Disposition: inline
In-Reply-To: <1623057495-63363-1-git-send-email-shawn.lin@rock-chips.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted
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


--M9NhX3UHpAaciwkO
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Shawn,

I love your patch! Yet something to improve:

[auto build test ERROR on linus/master]
[also build test ERROR on v5.13-rc5 next-20210607]
[cannot apply to ulf.hansson-mmc/next mmc/mmc-next]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Shawn-Lin/mmc-block-Use-card_busy-to-detect-busy-state-in-card_busy_detect/20210607-172028
base:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git 614124bea77e452aa6df7a8714e8bc820b489922
config: riscv-randconfig-r002-20210607 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project ae973380c5f6be77ce395022be40350942260be9)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install riscv cross compiling tool for clang build
        # apt-get install binutils-riscv64-linux-gnu
        # https://github.com/0day-ci/linux/commit/2224db607cd2136af3a045ca8b2b8442705f8752
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Shawn-Lin/mmc-block-Use-card_busy-to-detect-busy-state-in-card_busy_detect/20210607-172028
        git checkout 2224db607cd2136af3a045ca8b2b8442705f8752
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=riscv 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> drivers/mmc/core/block.c:452:2: error: expected statement
           } while (!mmc_ready_for_data(status));
           ^
   1 error generated.

Kconfig warnings: (for reference only)
   WARNING: unmet direct dependencies detected for LOCKDEP
   Depends on DEBUG_KERNEL && LOCK_DEBUGGING_SUPPORT && (FRAME_POINTER || MIPS || PPC || S390 || MICROBLAZE || ARM || ARC || X86)
   Selected by
   - PROVE_LOCKING && DEBUG_KERNEL && LOCK_DEBUGGING_SUPPORT
   - LOCK_STAT && DEBUG_KERNEL && LOCK_DEBUGGING_SUPPORT
   - DEBUG_LOCK_ALLOC && DEBUG_KERNEL && LOCK_DEBUGGING_SUPPORT


vim +452 drivers/mmc/core/block.c

a5f5774c55a2e3 drivers/mmc/card/block.c Jon Hunter    2015-09-22  412  
a0d4c7eb71dd08 drivers/mmc/core/block.c Chaotian Jing 2019-09-05  413  static int card_busy_detect(struct mmc_card *card, unsigned int timeout_ms,
a0d4c7eb71dd08 drivers/mmc/core/block.c Chaotian Jing 2019-09-05  414  			    u32 *resp_errs)
a0d4c7eb71dd08 drivers/mmc/core/block.c Chaotian Jing 2019-09-05  415  {
a0d4c7eb71dd08 drivers/mmc/core/block.c Chaotian Jing 2019-09-05  416  	unsigned long timeout = jiffies + msecs_to_jiffies(timeout_ms);
a0d4c7eb71dd08 drivers/mmc/core/block.c Chaotian Jing 2019-09-05  417  	int err = 0;
a0d4c7eb71dd08 drivers/mmc/core/block.c Chaotian Jing 2019-09-05  418  	u32 status;
2224db607cd213 drivers/mmc/core/block.c Shawn Lin     2021-06-07  419  	bool busy;
a0d4c7eb71dd08 drivers/mmc/core/block.c Chaotian Jing 2019-09-05  420  
a0d4c7eb71dd08 drivers/mmc/core/block.c Chaotian Jing 2019-09-05  421  	do {
a0d4c7eb71dd08 drivers/mmc/core/block.c Chaotian Jing 2019-09-05  422  		bool done = time_after(jiffies, timeout);
a0d4c7eb71dd08 drivers/mmc/core/block.c Chaotian Jing 2019-09-05  423  
2224db607cd213 drivers/mmc/core/block.c Shawn Lin     2021-06-07  424  		if (card->host->ops->card_busy) {
2224db607cd213 drivers/mmc/core/block.c Shawn Lin     2021-06-07  425  			busy = card->host->ops->card_busy(card->host);
2224db607cd213 drivers/mmc/core/block.c Shawn Lin     2021-06-07  426  			status = busy ?	0 : R1_READY_FOR_DATA | R1_STATE_TRAN << 9;
2224db607cd213 drivers/mmc/core/block.c Shawn Lin     2021-06-07  427  			goto cb;
2224db607cd213 drivers/mmc/core/block.c Shawn Lin     2021-06-07  428  		}
2224db607cd213 drivers/mmc/core/block.c Shawn Lin     2021-06-07  429  
a0d4c7eb71dd08 drivers/mmc/core/block.c Chaotian Jing 2019-09-05  430  		err = __mmc_send_status(card, &status, 5);
a0d4c7eb71dd08 drivers/mmc/core/block.c Chaotian Jing 2019-09-05  431  		if (err) {
a0d4c7eb71dd08 drivers/mmc/core/block.c Chaotian Jing 2019-09-05  432  			dev_err(mmc_dev(card->host),
a0d4c7eb71dd08 drivers/mmc/core/block.c Chaotian Jing 2019-09-05  433  				"error %d requesting status\n", err);
a0d4c7eb71dd08 drivers/mmc/core/block.c Chaotian Jing 2019-09-05  434  			return err;
a0d4c7eb71dd08 drivers/mmc/core/block.c Chaotian Jing 2019-09-05  435  		}
a0d4c7eb71dd08 drivers/mmc/core/block.c Chaotian Jing 2019-09-05  436  
a0d4c7eb71dd08 drivers/mmc/core/block.c Chaotian Jing 2019-09-05  437  		/* Accumulate any response error bits seen */
a0d4c7eb71dd08 drivers/mmc/core/block.c Chaotian Jing 2019-09-05  438  		if (resp_errs)
a0d4c7eb71dd08 drivers/mmc/core/block.c Chaotian Jing 2019-09-05  439  			*resp_errs |= status;
a0d4c7eb71dd08 drivers/mmc/core/block.c Chaotian Jing 2019-09-05  440  
a0d4c7eb71dd08 drivers/mmc/core/block.c Chaotian Jing 2019-09-05  441  		/*
a0d4c7eb71dd08 drivers/mmc/core/block.c Chaotian Jing 2019-09-05  442  		 * Timeout if the device never becomes ready for data and never
a0d4c7eb71dd08 drivers/mmc/core/block.c Chaotian Jing 2019-09-05  443  		 * leaves the program state.
a0d4c7eb71dd08 drivers/mmc/core/block.c Chaotian Jing 2019-09-05  444  		 */
a0d4c7eb71dd08 drivers/mmc/core/block.c Chaotian Jing 2019-09-05  445  		if (done) {
a0d4c7eb71dd08 drivers/mmc/core/block.c Chaotian Jing 2019-09-05  446  			dev_err(mmc_dev(card->host),
a0d4c7eb71dd08 drivers/mmc/core/block.c Chaotian Jing 2019-09-05  447  				"Card stuck in wrong state! %s status: %#x\n",
a0d4c7eb71dd08 drivers/mmc/core/block.c Chaotian Jing 2019-09-05  448  				 __func__, status);
a0d4c7eb71dd08 drivers/mmc/core/block.c Chaotian Jing 2019-09-05  449  			return -ETIMEDOUT;
a0d4c7eb71dd08 drivers/mmc/core/block.c Chaotian Jing 2019-09-05  450  		}
2224db607cd213 drivers/mmc/core/block.c Shawn Lin     2021-06-07  451  cb:
40c96853fef1bd drivers/mmc/core/block.c Ulf Hansson   2020-02-04 @452  	} while (!mmc_ready_for_data(status));
a0d4c7eb71dd08 drivers/mmc/core/block.c Chaotian Jing 2019-09-05  453  
a0d4c7eb71dd08 drivers/mmc/core/block.c Chaotian Jing 2019-09-05  454  	return err;
a0d4c7eb71dd08 drivers/mmc/core/block.c Chaotian Jing 2019-09-05  455  }
a0d4c7eb71dd08 drivers/mmc/core/block.c Chaotian Jing 2019-09-05  456  

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202106072204.AQuPJZc8-lkp%40intel.com.

--M9NhX3UHpAaciwkO
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
9H8boVJ37rIBAA==

--M9NhX3UHpAaciwkO--
