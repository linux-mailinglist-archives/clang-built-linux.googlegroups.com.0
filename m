Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBZGO7CCQMGQECRCKG4Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x139.google.com (mail-il1-x139.google.com [IPv6:2607:f8b0:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id BDF5039DE4F
	for <lists+clang-built-linux@lfdr.de>; Mon,  7 Jun 2021 16:04:21 +0200 (CEST)
Received: by mail-il1-x139.google.com with SMTP id y6-20020a92d0c60000b02901e82edc2af9sf5813374ila.13
        for <lists+clang-built-linux@lfdr.de>; Mon, 07 Jun 2021 07:04:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623074660; cv=pass;
        d=google.com; s=arc-20160816;
        b=Z3t1ov3v34poqCiUOZDBK9wWhizKt2hRuz9459Nu3JSpdlh4jhlOlW6YusFqBke/Kc
         v4/l6e92kr4ORv4z2aArsdvTEVLqjm0+S+3LFoOtVWu41zQ7HE2MicAK1LJRKT8s4SpU
         JN3cZAZB6AvV5BdLdrdZWPy0E+yCXg0V9pc0WFzQzDy6sPuLCY13tENU8lutBtY4w9Jp
         qAiP6kcfvdmVfd0rVF6fpLREkMH7SuSjB2eesXCNTdFmT3eLMmi8pkW2kAz8kiYhtSZs
         nC8mpXDIhmPmwibr+sRtPV3HZobzray03bhSOnb/rJKTyaKcvHLMr+rgKf9lTqdDiZqw
         Or5Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=RAF8LE+rGZdSQ1d8YRi7RKusSXz28E1Z9AmxR525htc=;
        b=wYBK6onYgFM8etpxw93SOb61y+mzeUJyqqR56Mz74c50/1PJxMvqP920ouYVTNObw1
         kNof6XVcQiIIXBaazQuiE1l6cckI0FhEDoKnakEdRDpk5fbjEUpIDr4Bhsr96pEn57Ga
         EE4tioqrB34satn+x1xvt83+GqZzJFYenDFjqIyCnEo9/fFE9IefeEO6coK0JMVcTqr/
         EHWZrE1qregaObKJeVJUHtrstOdoUkyX89VvtSZs5WL3pACTQIdokgscZY5UCxG9WyPv
         BSKZp8jwzRIppTXKJ9VB+7Pm43UZRWRpX3/SHyYrbjQOmwtECzeTKJPW0S/rHwNj+JqI
         rWFg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RAF8LE+rGZdSQ1d8YRi7RKusSXz28E1Z9AmxR525htc=;
        b=T9IrvV/+Rebbk+QFpJ9OSIQdrbhEBzuZ77WLmipmEAhk1+A7YC3ZdJbFRT8ZmY9ODL
         DDaUEXaBSlx9CFcg8Vc7fSeDP9Kg7dHk/ZqJWoZ9hY0IrOg5FW3h6OdNC0LxZRaYXu2B
         VGNhQEgGreP7agLXNBU1gpqvifvlBU37UGAvMTUpqW0n2aeP/fy/e2D81qEv7qk5qs9q
         tDvw90mHdp9p5NB6stK25/c0OqunbkLGCPxR/RPPrpGAexpq09augFbQog3BqliPiPP9
         LOnisv1MEKHRPxCNdzmcXvqjXTdAHGV6KgKyQT9cG3opRTlXuhgG4GKe3aCyXHBuRt23
         WBsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=RAF8LE+rGZdSQ1d8YRi7RKusSXz28E1Z9AmxR525htc=;
        b=KQRwB68GVDiR61xwVcPOF3fZAVB+RrszRZa2TTaXOv+6dRChmPdJvOSrUW2NkV92tA
         QxIE8x7e+UXRnv00ciYGTJpdP/rPuDGncaidQevN+C7aTcuySL0AiHpCGoHU0cMVRvos
         dhM20RPcV7ek+DhLe65+CFndDuJquU+Jg81AviA0pvhI9W05CrC7y5dhTcXEt4FTTzSx
         n3Par72dBOjimBLyUG2XOzb/1vLsvlTkkyeHSGKP2L8CdwGtJ0yC9LPJVEIQh0b70tEd
         dOoCdaJeS3JJ1PDQ2SeMkFt/756QRl1iLMpD4AqkhteE2/5+F1pgS06T+jHiEubDBE44
         o55A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53328nV7KDO/bqbzP+WaJ+gRGBfPRn561iJc5K0lUFBABAinELuM
	Pmuj74gvb/Apxr3Py2w9bBk=
X-Google-Smtp-Source: ABdhPJyVIYEJirVRmo5V30Y4359utUcjS1Fa5AbfUhwVCt6Gv6LGhScrNvGIerrK80ZmfYoML14w0A==
X-Received: by 2002:a05:6e02:b:: with SMTP id h11mr10165642ilr.188.1623074660502;
        Mon, 07 Jun 2021 07:04:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:b002:: with SMTP id x2ls3938185ilh.11.gmail; Mon, 07 Jun
 2021 07:04:20 -0700 (PDT)
X-Received: by 2002:a92:d4c2:: with SMTP id o2mr14360621ilm.123.1623074659807;
        Mon, 07 Jun 2021 07:04:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623074659; cv=none;
        d=google.com; s=arc-20160816;
        b=TM91DkPkNxJULDMzlPnYPSzZWhpzMQji9jRxIpdN6AX3dnDPjADqXMqc4Xp3yMLtc4
         HlvcGOaxOJUT1UO+6TokygGE5DQavyfhibf9q9wcvrxXoawbL8rRUzefSZw8cJcTmQ/8
         6PLI3f/rUdpJiTryHbF8rABL71gAacdZeP/m8Q62PNRs781MMY0qufIRoWWDtx1x3UOk
         /o9xudNWXqOLCwMyU3tA6iPBi7p4houoxzycAMF8szrVxLrFFAOStA+PLGuKR1XU3HPc
         TNake01qQHIrGI9NO4TegLB4Q1prviq6/FRui5O7dOpkh+nSV1oXZwKmvl98lXB9jE2r
         H3fw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=LES4ybGsw2C1u5ufvgYVBkSlcOdLkvU+lQ1Nn9JZgWk=;
        b=z0YpsPxmqns/gcze0STcySVvbmznO32dRy5wbcFkUTAL0ZGsKDp6YrGGYFmgeDirSK
         ew3wwOBBhHYO6VdfhMY3wU6ipmv3ghXcQtDGE8XnwMkIIAtkkVt+1ZVhoIm6h9zE54V3
         Fm4iFNt1Pidb8vl9ObBudf+zjMIhDITrk3i2DSLKNou7OsAshvQIF4xXP4nlwYOEQJUo
         2Czec6qakjXTsDGNWrbPpECraNfgWaWM+CRIMW4iIrLHesrwFpRqH+Nng2jF4HNYJl7R
         gKiBXDyIzjqmI1VzzjSWv1Dve1Y8X8X9jhtclVeMeCtOPoKouII1Zs1D0KAQV0hLIDmQ
         8ntw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga05.intel.com (mga05.intel.com. [192.55.52.43])
        by gmr-mx.google.com with ESMTPS id a7si1404952iod.4.2021.06.07.07.04.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 07 Jun 2021 07:04:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.43 as permitted sender) client-ip=192.55.52.43;
IronPort-SDR: JkpEim3RYbct4DxRHku2ZBnjnQdbI0+9g6USSuDnRRwfO04fjKEEUK6u1WypSP7cdejfIqFVqx
 H2AnkO4VUpPg==
X-IronPort-AV: E=McAfee;i="6200,9189,10008"; a="290253825"
X-IronPort-AV: E=Sophos;i="5.83,255,1616482800"; 
   d="gz'50?scan'50,208,50";a="290253825"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 07 Jun 2021 07:04:17 -0700
IronPort-SDR: wP/Se2vGZwckFk4x46IglORufSZQt+L6bmkyMic0PHawtD3EUwAtW9kIamCRzwHjzGY2A7Crrw
 IsIK41ddgF4w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,255,1616482800"; 
   d="gz'50?scan'50,208,50";a="481535668"
Received: from lkp-server02.sh.intel.com (HELO 1ec8406c5392) ([10.239.97.151])
  by orsmga001.jf.intel.com with ESMTP; 07 Jun 2021 07:04:15 -0700
Received: from kbuild by 1ec8406c5392 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lqFrS-0008N1-JV; Mon, 07 Jun 2021 14:04:14 +0000
Date: Mon, 7 Jun 2021 22:03:31 +0800
From: kernel test robot <lkp@intel.com>
To: Shawn Lin <shawn.lin@rock-chips.com>,
	Ulf Hansson <ulf.hansson@linaro.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-mmc@vger.kernel.org, Shawn Lin <shawn.lin@rock-chips.com>
Subject: Re: [PATCH] mmc: block: Use .card_busy() to detect busy state in
 card_busy_detect
Message-ID: <202106072142.BpsbFmki-lkp@intel.com>
References: <1623057495-63363-1-git-send-email-shawn.lin@rock-chips.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="TB36FDmn/VVEgNH/"
Content-Disposition: inline
In-Reply-To: <1623057495-63363-1-git-send-email-shawn.lin@rock-chips.com>
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


--TB36FDmn/VVEgNH/
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Shawn,

I love your patch! Yet something to improve:

[auto build test ERROR on linus/master]
[also build test ERROR on v5.13-rc5 next-20210607]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Shawn-Lin/mmc-block-Use-card_busy-to-detect-busy-state-in-card_busy_detect/20210607-172028
base:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git 614124bea77e452aa6df7a8714e8bc820b489922
config: x86_64-randconfig-a002-20210607 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project ae973380c5f6be77ce395022be40350942260be9)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        # https://github.com/0day-ci/linux/commit/2224db607cd2136af3a045ca8b2b8442705f8752
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Shawn-Lin/mmc-block-Use-card_busy-to-detect-busy-state-in-card_busy_detect/20210607-172028
        git checkout 2224db607cd2136af3a045ca8b2b8442705f8752
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> drivers/mmc/core/block.c:452:2: error: expected statement
           } while (!mmc_ready_for_data(status));
           ^
   1 error generated.


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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202106072142.BpsbFmki-lkp%40intel.com.

--TB36FDmn/VVEgNH/
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--TB36FDmn/VVEgNH/--
