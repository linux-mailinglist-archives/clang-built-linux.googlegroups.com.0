Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB5654WCAMGQEIZLECQI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x639.google.com (mail-pl1-x639.google.com [IPv6:2607:f8b0:4864:20::639])
	by mail.lfdr.de (Postfix) with ESMTPS id 5909C37960E
	for <lists+clang-built-linux@lfdr.de>; Mon, 10 May 2021 19:35:53 +0200 (CEST)
Received: by mail-pl1-x639.google.com with SMTP id d3-20020a1709026543b02900ef00d14127sf4299306pln.23
        for <lists+clang-built-linux@lfdr.de>; Mon, 10 May 2021 10:35:53 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620668152; cv=pass;
        d=google.com; s=arc-20160816;
        b=Vxtp1U34hV7oxyE7a90aH82Q8Dqika3fCp/S27OAHPlOpAz95MkgXS7iF956q7wo6+
         QQXych49iFRO/D8MFFVFgn7nB6WcOkkRqEYkwRMlFlLR/JsMcSVi8aIOeW1haOj6xhPn
         WCdIa1cIJOnjwU+g3+d29ey/XhZpdm5pfEMWe/zJ/JBJU+rfNGxjFeMBbknFyuL0dIy5
         /P/fm6RRbHX+MIArq9CpsntGPBUrIy6N2nL7daxg9+c3DNcB1plLutO98mO9C7lVwj4K
         rxHbKa224rXSoiUCy7ij3bqrko+e3JYrMKCLvU3zahn4uqpwUhJ7BksYHo/cJWzgWGf2
         O2WA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=g5vDIp53sA3F7F1/hKkhCDPalCpsH/oNSyPvls9+DtM=;
        b=jgVxJ0c01XBZcUSbgmDMoD614z2opoPgA715wEw4vNi2G5cCP2sqsGVOnLIFL8pufS
         +XHXTBpkqodu9lBoxPwPuubp4QeijkTTO0O75Ehnd7SiE2JV/qbXgjadZbXEaobCqhzz
         IpWzZJbn3I4zGkbcN/NfC1D8qD8l1L9YRaBYhD7IVRSPmmMOaGLD8kPl3d6RpJyouL9a
         +mtg8bRzCdWlDkF+wZxSjPGlILhfyf1x2soz8wh506nTC/in3WLB68pQBefhLxZ0dIfe
         YwozpOToErK+8A/yH1zoZoG4pXBlesM4UHAT3p06FIx4lA8zwsidhXSOZb5VBYvXFW3h
         2fWQ==
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
        bh=g5vDIp53sA3F7F1/hKkhCDPalCpsH/oNSyPvls9+DtM=;
        b=U2kE1fVd1FGF8KuNfcUCvSJw+TcDa4nErNFJrhSJPmD3MApCMYDEMBQ3ltpupYwECp
         SqW31vzce6eZ1LSjKFT/la38OHYAOcEftES/jg2cco1JjglY8doCneYU0pVy2Ey00GUa
         Eeyer7+YJxWGS7FQ9mRR+vIvvIqa1Hokv5WWGbSE9YWRchiCO5t3sH1zJR9XyCVR4zM2
         MazeGHjRD5iuQzJefoi7u1mE9AL7NXLfPsREnBOjhppO8JvaW2CQm6JCFFfULxhSHy9U
         ciwqtMl9D97yMcmVtoZUc4mIPgcdagpook9rFzytPFwOfg487rkoVEtlWVWHRt4stcKg
         /KcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=g5vDIp53sA3F7F1/hKkhCDPalCpsH/oNSyPvls9+DtM=;
        b=XHvk8VpMHjLI5VMwg2a7O0nzvB4OXoGmCg82nO6HG17qTR4nW9oE1RhJTbkWSbFyld
         DVX3MSwvilMn4OqENeiT78At9+jK2FXmGzD2w9ssOyw5xcknjtypsmxphK7N9A3NODb+
         LUhZ6MoZ8dxrsUsjRyZrW6fC9SaV4T6TGLL3z4uBdzJGqA54+CoLLzj3oK2TJ+EzZoFk
         lcUEkZMgH5EyZIlQWYnH5RmCaiCkJK2gwmKpQgM+T0zG5ls7lT379CyeanY9a6qPLzXq
         3Cry8TQUYf8Pppa3PMDE1D7KlEwQRbDq8fEzcXIp9LYR3xHofDxB5Tgcaf0TQyTviqy0
         pNRQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532p7e4tM206HJ+72lvO1revIKxlIxMU8+M88PvbQg/5fmwt6w3i
	kvRGZIzBfeMqt27dms3vYnA=
X-Google-Smtp-Source: ABdhPJwjy50nEKpD6YSa9icVcZhiGkMVDrgDqqLiy0P9HQdwFUqmr08S67WIaLGZFM+GBidHwJd+Pw==
X-Received: by 2002:a62:18ca:0:b029:28c:eeca:e7b1 with SMTP id 193-20020a6218ca0000b029028ceecae7b1mr25616204pfy.37.1620668151928;
        Mon, 10 May 2021 10:35:51 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:b185:: with SMTP id s5ls6022559plr.3.gmail; Mon, 10
 May 2021 10:35:51 -0700 (PDT)
X-Received: by 2002:a17:902:aa42:b029:ee:f55a:b2c1 with SMTP id c2-20020a170902aa42b02900eef55ab2c1mr25693453plr.15.1620668151169;
        Mon, 10 May 2021 10:35:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620668151; cv=none;
        d=google.com; s=arc-20160816;
        b=jVaD45PLqRLDycogcRuaecMTNz9wKeMIADTitG1ZwJ8/s84jamN/JCpfE8IVFWhnoL
         81WBrC80ITkm7B+mMMKaVuleQvsp0d0yovuMpYIGb5nKHAA4jrgFDkvGjatA2lMG7pRz
         gUpRooDaOc7q4FzZgWXS+6KtQZ1H5UHrgII+3wbfxqoiYyNI0mg7nt9QVmCXXBkg2lup
         hJAx8Ykjekp56GvkvwILsUiWpY75ljnQwWyC8O4hBvg0zRoEjE2P0D75l/a53zQz8/Cx
         85DN+RGKjFgt3TMzdA5zfLzFKlQPE6dyOR5oaSiNxL4jruRGbgbhURoC2XkFgLotbx+w
         HLMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=UiKwxES4+d1Gpv89974xFJQ8fKi4Ryaa2i94IIqGIfU=;
        b=lWyDmMrJs2kWjyPPHoqcqNk+7RH8/E4ynHRdAip9vnAn7a+RXYQtSlBFKFeeMExDu+
         iFNvxytlG8/pIFqtQ581sQrvT77fgZHZ2yACA/FHapHa3tIL5ZICJXPtKKqRAis07ouM
         E1LrUH0yGoVNLcZJCnf8T5Op1hxWPJJFvP0H2h28MrnOT5HSGVMEVmD5TC1EAdGRtSBz
         MoVs9J8ygl8x61ahu/TgP3jK29Yc+bkDg0AgI8TEs5ragUYQYnUByovVEEml5HwbRG0A
         dcbXox3UROFInucTCyBkmx/4YGnnm6rLY66LQ5QPU8t5usxbrhr0v+jckob8dp/DnI5v
         Xrzg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga12.intel.com (mga12.intel.com. [192.55.52.136])
        by gmr-mx.google.com with ESMTPS id b17si1465941pgs.1.2021.05.10.10.35.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 10 May 2021 10:35:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.136 as permitted sender) client-ip=192.55.52.136;
IronPort-SDR: cLkYHjbY9ZoArBjRj0qKTqMuEajkf5l9Tsw35C3Lp4asRX5H5Zkb9AjRvv5YTzzIGeumCmNA/e
 sOlxUTvQ2nIw==
X-IronPort-AV: E=McAfee;i="6200,9189,9980"; a="178837119"
X-IronPort-AV: E=Sophos;i="5.82,287,1613462400"; 
   d="gz'50?scan'50,208,50";a="178837119"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 10 May 2021 10:35:50 -0700
IronPort-SDR: SZiT39e4AVwvppapo/mVHKBf0KPbaaLfU32OkiUGkohMcUsmsBQumlQle/vyNsq57zA2dW2TRU
 lCjsS8WXTBzQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,287,1613462400"; 
   d="gz'50?scan'50,208,50";a="536498907"
Received: from lkp-server01.sh.intel.com (HELO f375d57c4ed4) ([10.239.97.150])
  by fmsmga001.fm.intel.com with ESMTP; 10 May 2021 10:35:42 -0700
Received: from kbuild by f375d57c4ed4 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lg9oj-0000If-QV; Mon, 10 May 2021 17:35:41 +0000
Date: Tue, 11 May 2021 01:35:37 +0800
From: kernel test robot <lkp@intel.com>
To: Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>,
	Matti Vaittinen <mazziesaccount@gmail.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Mark Brown <broonie@kernel.org>, Kees Cook <keescook@chromium.org>,
	Andy Shevchenko <andy.shevchenko@gmail.com>,
	Zhang Rui <rui.zhang@intel.com>, Guenter Roeck <linux@roeck-us.net>,
	"agross@kernel.org" <agross@kernel.org>,
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
	linux-power <linux-power@fi.rohmeurope.com>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v9 05/10] regulator: IRQ based event/error notification
 helpers
Message-ID: <202105110116.2KVffy45-lkp@intel.com>
References: <a22cf56239512f52ae5927f226e79d890d7a1240.1620645507.git.matti.vaittinen@fi.rohmeurope.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="IJpNTDwzlM2Ie8A6"
Content-Disposition: inline
In-Reply-To: <a22cf56239512f52ae5927f226e79d890d7a1240.1620645507.git.matti.vaittinen@fi.rohmeurope.com>
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


--IJpNTDwzlM2Ie8A6
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Matti,

I love your patch! Yet something to improve:

[auto build test ERROR on 6efb943b8616ec53a5e444193dccf1af9ad627b5]

url:    https://github.com/0day-ci/linux/commits/Matti-Vaittinen/Extend-regulator-notification-support/20210510-203125
base:   6efb943b8616ec53a5e444193dccf1af9ad627b5
config: x86_64-randconfig-a015-20210510 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 492173d42b32cb91d5d0d72d5ed84fcab80d059a)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        # https://github.com/0day-ci/linux/commit/904edb46fa37ac86bc1e7a1629141e037f45ebed
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Matti-Vaittinen/Extend-regulator-notification-support/20210510-203125
        git checkout 904edb46fa37ac86bc1e7a1629141e037f45ebed
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross W=1 ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> drivers/regulator/irq_helpers.c:244:4: error: implicit declaration of function 'pr_dbg' [-Werror,-Wimplicit-function-declaration]
                           pr_dbg("Sending regulator notification EVT 0x%lx\r\n",
                           ^
   1 error generated.


vim +/pr_dbg +244 drivers/regulator/irq_helpers.c

   153	
   154	static irqreturn_t regulator_notifier_isr(int irq, void *data)
   155	{
   156		struct regulator_irq *h = data;
   157		struct regulator_irq_desc *d;
   158		struct regulator_irq_data *rid;
   159		unsigned long rdev_map = 0;
   160		int num_rdevs;
   161		int ret, i, j;
   162	
   163		d = &h->desc;
   164		rid = &h->rdata;
   165		num_rdevs = rid->num_states;
   166	
   167		if (d->fatal_cnt)
   168			h->retry_cnt++;
   169	
   170		/*
   171		 * we spare a few cycles by not clearing statuses prior to this call.
   172		 * The IC driver must initialize the status buffers for rdevs
   173		 * which it indicates having active events via rdev_map.
   174		 *
   175		 * Maybe we should just to be on a safer side(?)
   176		 */
   177		ret = d->map_event(irq, rid, &rdev_map);
   178	
   179		/*
   180		 * If status reading fails (which is unlikely) we don't ack/disable
   181		 * IRQ but just increase fail count and retry when IRQ fires again.
   182		 * If retry_count exceeds the given safety limit we call IC specific die
   183		 * handler which can try disabling regulator(s).
   184		 *
   185		 * If no die handler is given we will just bug() as a last resort.
   186		 *
   187		 * We could try disabling all associated rdevs - but we might shoot
   188		 * ourselves in the head and leave the problematic regulator enabled. So
   189		 * if IC has no die-handler populated we just assume the regulator
   190		 * can't be disabled.
   191		 */
   192		if (unlikely(ret == REGULATOR_FAILED_RETRY))
   193			goto fail_out;
   194	
   195		h->retry_cnt = 0;
   196		/*
   197		 * Let's not disable IRQ if there were no status bits for us. We'd
   198		 * better leave spurious IRQ handling to genirq
   199		 */
   200		if (ret || !rdev_map)
   201			return IRQ_NONE;
   202	
   203		/*
   204		 * Some events are bogus if the regulator is disabled. Skip such events
   205		 * if all relevant regulators are disabled
   206		 */
   207		if (d->skip_off) {
   208			for_each_set_bit(i, &rdev_map, num_rdevs) {
   209				struct regulator_dev *rdev;
   210				const struct regulator_ops *ops;
   211	
   212				rdev = rid->states[i].rdev;
   213				ops = rdev->desc->ops;
   214	
   215				/*
   216				 * If any of the flagged regulators is enabled we do
   217				 * handle this
   218				 */
   219				if (ops->is_enabled(rdev))
   220					break;
   221			}
   222			if (i == num_rdevs)
   223				return IRQ_NONE;
   224		}
   225	
   226		/* Disable IRQ if HW keeps line asserted */
   227		if (d->irq_off_ms)
   228			disable_irq_nosync(irq);
   229	
   230		/*
   231		 * IRQ seems to be for us. Let's fire correct notifiers / store error
   232		 * flags
   233		 */
   234		for_each_set_bit(i, &rdev_map, num_rdevs) {
   235			unsigned long evt;
   236			struct regulator_err_state *stat;
   237			struct regulator_dev *rdev;
   238	
   239			stat = &rid->states[i];
   240			rdev = stat->rdev;
   241	
   242			for_each_set_bit(j, &stat->notifs, BITS_PER_TYPE(stat->notifs))
   243				evt =  BIT(j);
 > 244				pr_dbg("Sending regulator notification EVT 0x%lx\r\n",
   245				       stat->notifs, evt);
   246				regulator_notifier_call_chain(rdev, evt, NULL);
   247	
   248			rdev_flag_err(rdev, stat->errors);
   249		}
   250	
   251		if (d->irq_off_ms) {
   252			if (!d->high_prio)
   253				schedule_delayed_work(&h->isr_work,
   254						      msecs_to_jiffies(d->irq_off_ms));
   255			else
   256				mod_delayed_work(system_highpri_wq,
   257						 &h->isr_work,
   258						 msecs_to_jiffies(d->irq_off_ms));
   259		}
   260	
   261		return IRQ_HANDLED;
   262	
   263	fail_out:
   264		if (d->fatal_cnt && h->retry_cnt > d->fatal_cnt) {
   265			/* If we have no recovery, just try shut down straight away */
   266			if (!d->die) {
   267				hw_protection_shutdown("Regulator failure. Retry count exceeded",
   268						       REGULATOR_FORCED_SAFETY_SHUTDOWN_WAIT_MS);
   269			} else {
   270				ret = d->die(rid);
   271				/* If die() failed shut down as a last attempt to save the HW */
   272				if (ret)
   273					hw_protection_shutdown("Regulator failure. Recovery failed",
   274							       REGULATOR_FORCED_SAFETY_SHUTDOWN_WAIT_MS);
   275			}
   276		}
   277	
   278		return IRQ_NONE;
   279	}
   280	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202105110116.2KVffy45-lkp%40intel.com.

--IJpNTDwzlM2Ie8A6
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
8lQ/OMSBb7N54Po/CWcZg4DgAQA=

--IJpNTDwzlM2Ie8A6--
