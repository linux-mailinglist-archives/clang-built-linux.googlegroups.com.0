Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB5UK533AKGQEPGICTIQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33d.google.com (mail-ot1-x33d.google.com [IPv6:2607:f8b0:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EE961F0665
	for <lists+clang-built-linux@lfdr.de>; Sat,  6 Jun 2020 14:00:56 +0200 (CEST)
Received: by mail-ot1-x33d.google.com with SMTP id h26sf5720280otl.17
        for <lists+clang-built-linux@lfdr.de>; Sat, 06 Jun 2020 05:00:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591444855; cv=pass;
        d=google.com; s=arc-20160816;
        b=GbcPXUqC+yXvzyKgOzK2V0Ro7z71CtXtBnggqLXRB4t40HrqZHR7KHJ3Ffhtg40Atg
         asDkLhGcBdKGjGQDnlI2JAJLHomwQcD7Ljtxbfq4q88EKIJ4RtrksYrH9zf7vwhfaGih
         pKOq5rAEuC2KlCpLpNPaBa2fXME/y1k6qJ4MSD+p+QkkIqLAsDzvNBWIhAhkZ8Y52TD+
         aJh36kBnjxmWH9dg5OY1MLNhKcc3Hg9x8hFqx+9LLtjIU9zumPNnlDp7Y1vviVBOGSxj
         6yoVT6GatAtU//gqOEw/z0z73EkkVjfux0TSwKkvGWPTV1Lr2ZiLbhpsxF3WcYsaXzQO
         HZgQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=1Gx1DZU0mpvvhZyZ1UqUBBF0Z3MZ4dQs3tRPpfGr3wY=;
        b=0J/oCaDZNkEuZifjtKYBGyvk0Qv00sc4uZoYC4NpG1tL+ZVqUNV043LmoYve3wxicy
         nft46LlTntK8VNH04KCjVl2Q8RuoS1KlGV7FlPephYel50sTHTRI1Mx6c4VLTLa0nJqA
         qX+XKoc33R9dOdOrCTWXJn6hICpLJ6QaTB+Q1dlCtjSR+Y8OnfOFaoXDW+LHyxaL71os
         ZvRs4sU4SXq+txnGOpkHYLVdaKnv3aCGGiFiiQUKNb3aT0uRc2Yeu5Rwzn8jJhmpnwps
         OVCfyml5P4fepCd6ZZ/u/I3fJgfRMFBkwnl2F7pwW8OSeFP1Kr5/Bh8ZqlTBsTct1cCR
         1jfQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1Gx1DZU0mpvvhZyZ1UqUBBF0Z3MZ4dQs3tRPpfGr3wY=;
        b=Ui0NoQhxS68d0WorEKNeuVjUAoJtsBlAgWZaoYtiieqGGRCpiPf0+nfWbuhquOZubK
         8HB/ydTn6333/ldRVxJcRwWHro6Ee3OiAAKsmqsrYH2TdwJ/Y8Cgg1kNZHp4BpuzcVIX
         a//Wl6S8l994AvxYtRUt5bcWHDdMFOennh9LRIGr3zI0K/mKeliM5wAOAQyYNZs7+BZ9
         sW7WdiRLk7ZxWimRlPyk08UnvXlmYVL84CNYGlSDK1fvaY3zed94o3eghLNXG8+bF3K+
         JUN3UwwKL1KJcmq9DTApxIyc7kyeS4UxjLcUHM0YH2j0f9bUX2wltFWnWOgYhpT2ajbq
         ir0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1Gx1DZU0mpvvhZyZ1UqUBBF0Z3MZ4dQs3tRPpfGr3wY=;
        b=V+YnSbeWyc6pNiZi6vADSzPuV1UCrfS1BX5B7ibhxv3XQjdB3dE8Agu903yCTocctW
         jJRMFl63081E5H4cufCSaV6dcCHtbS+hf63wPeNptoAr3M2L1h+zBZBW7/Q5xmYQcJ1g
         uEtwwVZGwTtTnd5BOBechoAEDpcee8iHn0VnwVP8d+2nLi3QfSEqOi/goBO9Dh6D4r+G
         RG9AG/Foc90Z6xuPd3ywDXqLPgx5PxkPTsp41Z+Jek67DOHoQrTY/d31x04j0UgoolKl
         8tJ/WbkoG2e8eyqnTFgYWPEfi04ZjT0ZdZnjjDT3/9J93FgZImsreEoPWWja3JdG2E96
         bZXA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532HP3Gxi03UKhz36Eevs43U3VoZktQPzD3TiPhCS58mn9S8oK93
	hr/r33jG8IyZ2Pv+dLRvn5s=
X-Google-Smtp-Source: ABdhPJxMDc5lTtwfLrpMwD2gyID6ei46PCUDlF7wkRlIYHl3acVHpQqPpk1qdp6Ds6KVai+ElIFSLg==
X-Received: by 2002:aca:abd3:: with SMTP id u202mr4580761oie.76.1591444854963;
        Sat, 06 Jun 2020 05:00:54 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:4549:: with SMTP id p9ls216231oti.11.gmail; Sat, 06 Jun
 2020 05:00:54 -0700 (PDT)
X-Received: by 2002:a9d:e93:: with SMTP id 19mr11245776otj.371.1591444854537;
        Sat, 06 Jun 2020 05:00:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591444854; cv=none;
        d=google.com; s=arc-20160816;
        b=u9M+ECJxhgThd5QEw4cNHdOH3uCo/mMKghd/dQ9bq6bHjgE9CteoK1RFDJH1j356p4
         LpbXDQNH1RDEEQxnmIuqan8+i5IdC4MSDOD0qsExSbRDQCHEYPQPb/tWka5KopLbxEXM
         1aI97NJwug+WVXT2vMTkMXOCwZcqEtZmRyhBo4MhEcwEZDJpM0WiW4AWknkz1NVlaFu8
         MLj6y5wb2s3hM5WsA43Ut6KUdBVI9ig9YEfPKY5g/8sr/hIYe5fLo5exFUjxcmbFOJW8
         zEp6CGbPQoiBLqSOgSVleaxPLrukTAEIIPvkNq8QbZcz9niYD0dgQaXG8OKrlMw5vL0D
         DiEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=rOJfjHQEAE6U/ffLymk5ian85Xs7TOdeCWKbuhAAgbg=;
        b=Mv5rOU+dW7bmdTl5uliz8IUNyx3yuWaXkKNERbJgfw0hQ31o2KA8vX8GZVdhkTIyS+
         0c74BM/srKoDAh8YkSi2BHkLMTUh7PNmt5VmpfjkPIda/c1CkZiQJRqbqq6P4HJsqgIQ
         pAjxI17vCTBzHRnb9mwIgCSzMSi7T6EOHhtbO7fx78OSz+Q0dCab1VeTEpFq1BdhECbz
         E/SrPhV8w94xX/mFwxA/cMH6ltIW7oKPitjBbvYigBakH0r809PIwiJw2CmLC5vP1poF
         Et+mLqPQzNpuGCitTeyRJXFeK5isbtmqZf4vdtZiXq5oGLPNO4HjWqfZ/qC27GZJl2j8
         NucA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga14.intel.com (mga14.intel.com. [192.55.52.115])
        by gmr-mx.google.com with ESMTPS id y198si242213oie.1.2020.06.06.05.00.53
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 06 Jun 2020 05:00:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.115 as permitted sender) client-ip=192.55.52.115;
IronPort-SDR: nzcxVlZwSwOwYuVMog2KgIMhqCk9/0VXw4nHUpcCwl4qlCi8kCYbnnYI7FaXwR+DoMUXxTs4cg
 VG392kRifh5Q==
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 06 Jun 2020 05:00:51 -0700
IronPort-SDR: N9g7u6BCpzgBhc1BxTkURSnmue+2B4ZCak2iI1VbS/dKyEw3CA95cgvBnap1nwxuJf5JJKBOyI
 64AGkUj2HOug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,480,1583222400"; 
   d="gz'50?scan'50,208,50";a="348718095"
Received: from lkp-server02.sh.intel.com (HELO cef0526ad5d0) ([10.239.97.151])
  by orsmga001.jf.intel.com with ESMTP; 06 Jun 2020 05:00:49 -0700
Received: from kbuild by cef0526ad5d0 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1jhXVI-00005p-MM; Sat, 06 Jun 2020 12:00:48 +0000
Date: Sat, 6 Jun 2020 20:00:34 +0800
From: kernel test robot <lkp@intel.com>
To: Chen Yu <yu.c.chen@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH 1/2][RFC] PM-runtime: Move all runtime usage related
 function to runtime.c
Message-ID: <202006061931.EzmanYwx%lkp@intel.com>
References: <3e7c571eb9e444c6e326d5cbb1f6e2dce4bb52fe.1591380524.git.yu.c.chen@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="LZvS9be/3tNcYl/X"
Content-Disposition: inline
In-Reply-To: <3e7c571eb9e444c6e326d5cbb1f6e2dce4bb52fe.1591380524.git.yu.c.chen@intel.com>
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


--LZvS9be/3tNcYl/X
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Chen,

[FYI, it's a private test report for your RFC patch.]
[auto build test WARNING on pm/linux-next]
[also build test WARNING on v5.7 next-20200605]
[if your patch is applied to the wrong git tree, please drop us a note to help
improve the system. BTW, we also suggest to use '--base' option to specify the
base tree in git format-patch, please see https://stackoverflow.com/a/37406982]

url:    https://github.com/0day-ci/linux/commits/Chen-Yu/Add-more-trace-point-for-runtime-usage-count/20200606-030705
base:   https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git linux-next
config: x86_64-randconfig-a005-20200606 (attached as .config)
compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project e429cffd4f228f70c1d9df0e5d77c08590dd9766)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>, old ones prefixed by <<):

In file included from drivers/misc/mei/pci-me.c:17:
include/linux/pm_runtime.h:183:20: error: redefinition of 'pm_runtime_get_noresume'
static inline void pm_runtime_get_noresume(struct device *dev) {}
^
include/linux/pm_runtime.h:157:20: note: previous definition is here
static inline void pm_runtime_get_noresume(struct device *dev) {}
^
include/linux/pm_runtime.h:184:20: error: redefinition of 'pm_runtime_put_noidle'
static inline void pm_runtime_put_noidle(struct device *dev) {}
^
include/linux/pm_runtime.h:158:20: note: previous definition is here
static inline void pm_runtime_put_noidle(struct device *dev) {}
^
>> drivers/misc/mei/pci-me.c:185:31: warning: shift count >= width of type [-Wshift-count-overflow]
if (dma_set_mask(&pdev->dev, DMA_BIT_MASK(64)) ||
^~~~~~~~~~~~~~~~
include/linux/dma-mapping.h:139:54: note: expanded from macro 'DMA_BIT_MASK'
#define DMA_BIT_MASK(n) (((n) == 64) ? ~0ULL : ((1ULL<<(n))-1))
^ ~~~
drivers/misc/mei/pci-me.c:186:40: warning: shift count >= width of type [-Wshift-count-overflow]
dma_set_coherent_mask(&pdev->dev, DMA_BIT_MASK(64))) {
^~~~~~~~~~~~~~~~
include/linux/dma-mapping.h:139:54: note: expanded from macro 'DMA_BIT_MASK'
#define DMA_BIT_MASK(n) (((n) == 64) ? ~0ULL : ((1ULL<<(n))-1))
^ ~~~
2 warnings and 2 errors generated.
--
In file included from drivers/block/mtip32xx/mtip32xx.c:29:
In file included from include/../drivers/ata/ahci.h:25:
In file included from include/linux/phy/phy.h:16:
include/linux/pm_runtime.h:183:20: error: redefinition of 'pm_runtime_get_noresume'
static inline void pm_runtime_get_noresume(struct device *dev) {}
^
include/linux/pm_runtime.h:157:20: note: previous definition is here
static inline void pm_runtime_get_noresume(struct device *dev) {}
^
include/linux/pm_runtime.h:184:20: error: redefinition of 'pm_runtime_put_noidle'
static inline void pm_runtime_put_noidle(struct device *dev) {}
^
include/linux/pm_runtime.h:158:20: note: previous definition is here
static inline void pm_runtime_put_noidle(struct device *dev) {}
^
>> drivers/block/mtip32xx/mtip32xx.c:4043:45: warning: shift count >= width of type [-Wshift-count-overflow]
rv = dma_set_mask_and_coherent(&pdev->dev, DMA_BIT_MASK(64));
^~~~~~~~~~~~~~~~
include/linux/dma-mapping.h:139:54: note: expanded from macro 'DMA_BIT_MASK'
#define DMA_BIT_MASK(n) (((n) == 64) ? ~0ULL : ((1ULL<<(n))-1))
^ ~~~
1 warning and 2 errors generated.
--
In file included from sound/soc/intel/skylake/skl.c:18:
include/linux/pm_runtime.h:183:20: error: redefinition of 'pm_runtime_get_noresume'
static inline void pm_runtime_get_noresume(struct device *dev) {}
^
include/linux/pm_runtime.h:157:20: note: previous definition is here
static inline void pm_runtime_get_noresume(struct device *dev) {}
^
include/linux/pm_runtime.h:184:20: error: redefinition of 'pm_runtime_put_noidle'
static inline void pm_runtime_put_noidle(struct device *dev) {}
^
include/linux/pm_runtime.h:158:20: note: previous definition is here
static inline void pm_runtime_put_noidle(struct device *dev) {}
^
>> sound/soc/intel/skylake/skl.c:953:30: warning: shift count >= width of type [-Wshift-count-overflow]
if (!dma_set_mask(bus->dev, DMA_BIT_MASK(64))) {
^~~~~~~~~~~~~~~~
include/linux/dma-mapping.h:139:54: note: expanded from macro 'DMA_BIT_MASK'
#define DMA_BIT_MASK(n) (((n) == 64) ? ~0ULL : ((1ULL<<(n))-1))
^ ~~~
sound/soc/intel/skylake/skl.c:954:35: warning: shift count >= width of type [-Wshift-count-overflow]
dma_set_coherent_mask(bus->dev, DMA_BIT_MASK(64));
^~~~~~~~~~~~~~~~
include/linux/dma-mapping.h:139:54: note: expanded from macro 'DMA_BIT_MASK'
#define DMA_BIT_MASK(n) (((n) == 64) ? ~0ULL : ((1ULL<<(n))-1))
^ ~~~
2 warnings and 2 errors generated.

vim +185 drivers/misc/mei/pci-me.c

c919951d940f28 Tomas Winkler     2014-05-13  146  
2703d4b2e673cc Tomas Winkler     2013-02-06  147  /**
ce23139c6c2ee9 Alexander Usyskin 2014-09-29  148   * mei_me_probe - Device Initialization Routine
2703d4b2e673cc Tomas Winkler     2013-02-06  149   *
2703d4b2e673cc Tomas Winkler     2013-02-06  150   * @pdev: PCI device structure
2703d4b2e673cc Tomas Winkler     2013-02-06  151   * @ent: entry in kcs_pci_tbl
2703d4b2e673cc Tomas Winkler     2013-02-06  152   *
a8605ea2c20c2b Alexander Usyskin 2014-09-29  153   * Return: 0 on success, <0 on failure.
2703d4b2e673cc Tomas Winkler     2013-02-06  154   */
b68301e9acd30f Tomas Winkler     2013-03-27  155  static int mei_me_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
2703d4b2e673cc Tomas Winkler     2013-02-06  156  {
f5ac3c49ff0b36 Tomas Winkler     2017-06-14  157  	const struct mei_cfg *cfg;
2703d4b2e673cc Tomas Winkler     2013-02-06  158  	struct mei_device *dev;
52c34561415b42 Tomas Winkler     2013-02-06  159  	struct mei_me_hw *hw;
1fa55b4e0e161b Alexander Usyskin 2015-08-02  160  	unsigned int irqflags;
2703d4b2e673cc Tomas Winkler     2013-02-06  161  	int err;
2703d4b2e673cc Tomas Winkler     2013-02-06  162  
f5ac3c49ff0b36 Tomas Winkler     2017-06-14  163  	cfg = mei_me_get_cfg(ent->driver_data);
f5ac3c49ff0b36 Tomas Winkler     2017-06-14  164  	if (!cfg)
f5ac3c49ff0b36 Tomas Winkler     2017-06-14  165  		return -ENODEV;
2703d4b2e673cc Tomas Winkler     2013-02-06  166  
c919951d940f28 Tomas Winkler     2014-05-13  167  	if (!mei_me_quirk_probe(pdev, cfg))
c919951d940f28 Tomas Winkler     2014-05-13  168  		return -ENODEV;
2703d4b2e673cc Tomas Winkler     2013-02-06  169  
2703d4b2e673cc Tomas Winkler     2013-02-06  170  	/* enable pci dev */
f8a096059fc5f7 Tomas Winkler     2017-01-26  171  	err = pcim_enable_device(pdev);
2703d4b2e673cc Tomas Winkler     2013-02-06  172  	if (err) {
2703d4b2e673cc Tomas Winkler     2013-02-06  173  		dev_err(&pdev->dev, "failed to enable pci device.\n");
2703d4b2e673cc Tomas Winkler     2013-02-06  174  		goto end;
2703d4b2e673cc Tomas Winkler     2013-02-06  175  	}
2703d4b2e673cc Tomas Winkler     2013-02-06  176  	/* set PCI host mastering  */
2703d4b2e673cc Tomas Winkler     2013-02-06  177  	pci_set_master(pdev);
f8a096059fc5f7 Tomas Winkler     2017-01-26  178  	/* pci request regions and mapping IO device memory for mei driver */
f8a096059fc5f7 Tomas Winkler     2017-01-26  179  	err = pcim_iomap_regions(pdev, BIT(0), KBUILD_MODNAME);
2703d4b2e673cc Tomas Winkler     2013-02-06  180  	if (err) {
2703d4b2e673cc Tomas Winkler     2013-02-06  181  		dev_err(&pdev->dev, "failed to get pci regions.\n");
f8a096059fc5f7 Tomas Winkler     2017-01-26  182  		goto end;
2703d4b2e673cc Tomas Winkler     2013-02-06  183  	}
3ecfb168a51ddf Tomas Winkler     2013-12-17  184  
3ecfb168a51ddf Tomas Winkler     2013-12-17 @185  	if (dma_set_mask(&pdev->dev, DMA_BIT_MASK(64)) ||
3ecfb168a51ddf Tomas Winkler     2013-12-17  186  	    dma_set_coherent_mask(&pdev->dev, DMA_BIT_MASK(64))) {
3ecfb168a51ddf Tomas Winkler     2013-12-17  187  
3ecfb168a51ddf Tomas Winkler     2013-12-17  188  		err = dma_set_mask(&pdev->dev, DMA_BIT_MASK(32));
3ecfb168a51ddf Tomas Winkler     2013-12-17  189  		if (err)
3ecfb168a51ddf Tomas Winkler     2013-12-17  190  			err = dma_set_coherent_mask(&pdev->dev,
3ecfb168a51ddf Tomas Winkler     2013-12-17  191  						    DMA_BIT_MASK(32));
3ecfb168a51ddf Tomas Winkler     2013-12-17  192  	}
3ecfb168a51ddf Tomas Winkler     2013-12-17  193  	if (err) {
3ecfb168a51ddf Tomas Winkler     2013-12-17  194  		dev_err(&pdev->dev, "No usable DMA configuration, aborting\n");
f8a096059fc5f7 Tomas Winkler     2017-01-26  195  		goto end;
3ecfb168a51ddf Tomas Winkler     2013-12-17  196  	}
3ecfb168a51ddf Tomas Winkler     2013-12-17  197  
2703d4b2e673cc Tomas Winkler     2013-02-06  198  	/* allocates and initializes the mei dev structure */
907b471ca228a5 Tomas Winkler     2019-11-07  199  	dev = mei_me_dev_init(&pdev->dev, cfg);
2703d4b2e673cc Tomas Winkler     2013-02-06  200  	if (!dev) {
2703d4b2e673cc Tomas Winkler     2013-02-06  201  		err = -ENOMEM;
f8a096059fc5f7 Tomas Winkler     2017-01-26  202  		goto end;
2703d4b2e673cc Tomas Winkler     2013-02-06  203  	}
52c34561415b42 Tomas Winkler     2013-02-06  204  	hw = to_me_hw(dev);
f8a096059fc5f7 Tomas Winkler     2017-01-26  205  	hw->mem_addr = pcim_iomap_table(pdev)[0];
261e071acd9bcb Tomas Winkler     2019-11-07  206  	hw->read_fws = mei_me_read_fws;
f8a096059fc5f7 Tomas Winkler     2017-01-26  207  
2703d4b2e673cc Tomas Winkler     2013-02-06  208  	pci_enable_msi(pdev);
2703d4b2e673cc Tomas Winkler     2013-02-06  209  
fec874a81b3ec2 Benjamin Lee      2020-04-17  210  	hw->irq = pdev->irq;
fec874a81b3ec2 Benjamin Lee      2020-04-17  211  
2703d4b2e673cc Tomas Winkler     2013-02-06  212  	 /* request and enable interrupt */
1fa55b4e0e161b Alexander Usyskin 2015-08-02  213  	irqflags = pci_dev_msi_enabled(pdev) ? IRQF_ONESHOT : IRQF_SHARED;
1fa55b4e0e161b Alexander Usyskin 2015-08-02  214  
2703d4b2e673cc Tomas Winkler     2013-02-06  215  	err = request_threaded_irq(pdev->irq,
06ecd645980096 Tomas Winkler     2013-02-06  216  			mei_me_irq_quick_handler,
06ecd645980096 Tomas Winkler     2013-02-06  217  			mei_me_irq_thread_handler,
1fa55b4e0e161b Alexander Usyskin 2015-08-02  218  			irqflags, KBUILD_MODNAME, dev);
2703d4b2e673cc Tomas Winkler     2013-02-06  219  	if (err) {
2703d4b2e673cc Tomas Winkler     2013-02-06  220  		dev_err(&pdev->dev, "request_threaded_irq failure. irq = %d\n",
2703d4b2e673cc Tomas Winkler     2013-02-06  221  		       pdev->irq);
f8a096059fc5f7 Tomas Winkler     2017-01-26  222  		goto end;
2703d4b2e673cc Tomas Winkler     2013-02-06  223  	}
2703d4b2e673cc Tomas Winkler     2013-02-06  224  
c4d589be4405d4 Tomas Winkler     2013-03-27  225  	if (mei_start(dev)) {
2703d4b2e673cc Tomas Winkler     2013-02-06  226  		dev_err(&pdev->dev, "init hw failure.\n");
2703d4b2e673cc Tomas Winkler     2013-02-06  227  		err = -ENODEV;
2703d4b2e673cc Tomas Winkler     2013-02-06  228  		goto release_irq;
2703d4b2e673cc Tomas Winkler     2013-02-06  229  	}
2703d4b2e673cc Tomas Winkler     2013-02-06  230  
180ea05bcedbd6 Tomas Winkler     2014-03-18  231  	pm_runtime_set_autosuspend_delay(&pdev->dev, MEI_ME_RPM_TIMEOUT);
180ea05bcedbd6 Tomas Winkler     2014-03-18  232  	pm_runtime_use_autosuspend(&pdev->dev);
180ea05bcedbd6 Tomas Winkler     2014-03-18  233  
f3d8e8788b4efb Alexander Usyskin 2014-06-23  234  	err = mei_register(dev, &pdev->dev);
2703d4b2e673cc Tomas Winkler     2013-02-06  235  	if (err)
1f7e489a285c8b Alexander Usyskin 2016-02-07  236  		goto stop;
2703d4b2e673cc Tomas Winkler     2013-02-06  237  
2703d4b2e673cc Tomas Winkler     2013-02-06  238  	pci_set_drvdata(pdev, dev);
2703d4b2e673cc Tomas Winkler     2013-02-06  239  
557909e195aea2 Alexander Usyskin 2017-08-03  240  	/*
557909e195aea2 Alexander Usyskin 2017-08-03  241  	 * MEI requires to resume from runtime suspend mode
557909e195aea2 Alexander Usyskin 2017-08-03  242  	 * in order to perform link reset flow upon system suspend.
557909e195aea2 Alexander Usyskin 2017-08-03  243  	 */
e07515563d010d Rafael J. Wysocki 2020-04-18  244  	dev_pm_set_driver_flags(&pdev->dev, DPM_FLAG_NO_DIRECT_COMPLETE);
557909e195aea2 Alexander Usyskin 2017-08-03  245  
e13fa90ce42d8e Tomas Winkler     2014-03-18  246  	/*
b42dc0635bf0a6 Alexander Usyskin 2017-09-26  247  	 * ME maps runtime suspend/resume to D0i states,
b42dc0635bf0a6 Alexander Usyskin 2017-09-26  248  	 * hence we need to go around native PCI runtime service which
b42dc0635bf0a6 Alexander Usyskin 2017-09-26  249  	 * eventually brings the device into D3cold/hot state,
b42dc0635bf0a6 Alexander Usyskin 2017-09-26  250  	 * but the mei device cannot wake up from D3 unlike from D0i3.
b42dc0635bf0a6 Alexander Usyskin 2017-09-26  251  	 * To get around the PCI device native runtime pm,
b42dc0635bf0a6 Alexander Usyskin 2017-09-26  252  	 * ME uses runtime pm domain handlers which take precedence
b42dc0635bf0a6 Alexander Usyskin 2017-09-26  253  	 * over the driver's pm handlers.
e13fa90ce42d8e Tomas Winkler     2014-03-18  254  	 */
e13fa90ce42d8e Tomas Winkler     2014-03-18  255  	mei_me_set_pm_domain(dev);
e13fa90ce42d8e Tomas Winkler     2014-03-18  256  
cc365dcf0e5627 Tomas Winkler     2018-01-02  257  	if (mei_pg_is_enabled(dev)) {
180ea05bcedbd6 Tomas Winkler     2014-03-18  258  		pm_runtime_put_noidle(&pdev->dev);
cc365dcf0e5627 Tomas Winkler     2018-01-02  259  		if (hw->d0i3_supported)
cc365dcf0e5627 Tomas Winkler     2018-01-02  260  			pm_runtime_allow(&pdev->dev);
cc365dcf0e5627 Tomas Winkler     2018-01-02  261  	}
180ea05bcedbd6 Tomas Winkler     2014-03-18  262  
c4e87b525936da Alexander Usyskin 2013-10-21  263  	dev_dbg(&pdev->dev, "initialization successful.\n");
2703d4b2e673cc Tomas Winkler     2013-02-06  264  
2703d4b2e673cc Tomas Winkler     2013-02-06  265  	return 0;
2703d4b2e673cc Tomas Winkler     2013-02-06  266  
1f7e489a285c8b Alexander Usyskin 2016-02-07  267  stop:
1f7e489a285c8b Alexander Usyskin 2016-02-07  268  	mei_stop(dev);
2703d4b2e673cc Tomas Winkler     2013-02-06  269  release_irq:
dc844b0d99b853 Tomas Winkler     2013-11-11  270  	mei_cancel_work(dev);
2703d4b2e673cc Tomas Winkler     2013-02-06  271  	mei_disable_interrupts(dev);
2703d4b2e673cc Tomas Winkler     2013-02-06  272  	free_irq(pdev->irq, dev);
2703d4b2e673cc Tomas Winkler     2013-02-06  273  end:
2703d4b2e673cc Tomas Winkler     2013-02-06  274  	dev_err(&pdev->dev, "initialization failed.\n");
2703d4b2e673cc Tomas Winkler     2013-02-06  275  	return err;
2703d4b2e673cc Tomas Winkler     2013-02-06  276  }
2703d4b2e673cc Tomas Winkler     2013-02-06  277  

:::::: The code at line 185 was first introduced by commit
:::::: 3ecfb168a51ddf0226abe245065516bc2ebfdef5 mei: me: set dma mask using DMA mapping API

:::::: TO: Tomas Winkler <tomas.winkler@intel.com>
:::::: CC: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202006061931.EzmanYwx%25lkp%40intel.com.

--LZvS9be/3tNcYl/X
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
B8DqjkzPMQIA

--LZvS9be/3tNcYl/X--
