Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBZXE7L2AKGQEDEJWA5A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13b.google.com (mail-il1-x13b.google.com [IPv6:2607:f8b0:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id B409A1B21E8
	for <lists+clang-built-linux@lfdr.de>; Tue, 21 Apr 2020 10:44:23 +0200 (CEST)
Received: by mail-il1-x13b.google.com with SMTP id y2sf15435175ilm.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 21 Apr 2020 01:44:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587458662; cv=pass;
        d=google.com; s=arc-20160816;
        b=j6fVh/OOuOcenJJ+oYnIS7CpQx/3fepSXkZdhHrPNBm4s9ppoQ4tHUjcKyGxmgDm6N
         ttOSPIRImzsO940IpX3pIHd3LrQS0ALIlba6wwSyBeBcYN8QAkmHkDuHf5zxr3oVYvRh
         lq5k+giJdEfVqLKzdC0z08I4WzDbhDgCO33547pgjlfu6V7TFL3/NNMKSd0+wYCYCiU9
         onewMagrlJZO/6zDwJx1NVPd9/agNflAjSLiCdHYmQKJbB6v5XPcTtMbe2ot6S6pVfgq
         oe5O2K08/WqRwPeW/ZlvIOxYYQhCoOylAg3SDBqt9P3a+5dVfFMc3R1ckoQXSCDzbGSV
         HexA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=TPyxnFIY7cBg/KNJO8Dh1Qo5Jr8lUapegAfOSuZKlME=;
        b=sTWjoN25spZwvHfVWMg1WZZs3jljC/T+x2kQzFnUTb4QAJEqyTGAQm3P1OPR4rbstg
         zkl7IIdibAO4V63JKnVWjiTtEJ7nWdFx8VBcQQhJC8h7KNE1Qjz49ipoD+pn0AvMm6g9
         jODzdtoT/m0/Fv5t3fL00NC4LjS78wyz7gcbzswOhEiXJBuARllKLPcRC/WcS6yUrS2i
         57yUOuPfaqqCRChDjGhbWtQxHaH6JqvO/NuFHwCa23hPwlgNqiMpWl4e6P3CWh5IXdhS
         Q7yxnMbveDMITTshyX4h8VD65Vs6igSVMg0y3Fn7vUq+Bm9Axcm8YmD9EoxCgZPsAETP
         qwTQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=TPyxnFIY7cBg/KNJO8Dh1Qo5Jr8lUapegAfOSuZKlME=;
        b=s+6lqAWb5F09AwdqlmYb6HZ3Kjk54ogCBaLSbx8phCpQBOwlQWAp1Nl8ZQ/HxfXXmo
         ZJLeFbaaCswSMsP7mDL92Z1zj9zpIhXxNNQTZuB+e7ylRgn8sozlgwfJdH6+oEoApxOw
         /UHTracrZMnSE4axB43IEAZHWJMlcnJ6dlajo5eE4xofU9bBJopL+w/e0ArL9xrHl+gR
         A8js1NxZFkOpzIA4+UuyzZ9EHCMF1eWcusgUp0wPRoFogrEilD1y+T0VEWWCJOFGgMcE
         tLB3lmuqE6q7YT4doL7RNIZpz6BxK8KDRcbHALKth8lo6k0+x0oAOudj8j//+PF3vbGY
         ou4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=TPyxnFIY7cBg/KNJO8Dh1Qo5Jr8lUapegAfOSuZKlME=;
        b=bAjjPK1eOkkrwmPMYIG88N8xsnHgOW3JNDzMUa/5yJQfpRbFAlg54oAs0EyxDAIDA4
         Mocu4WWESE7HkdCNpKHOaiMNwmIG2m/haP/5XI/2ZNhbvd0KPVRwKs3jGP1C8GU/fUlE
         uso98ogJzdsvgAiKynKRQLBXQ5xQi37T3Gd/QToE3h9sDyyQ0TSFW9aL0grCQR77UvhB
         ttynKHIXLr4NNCJUgeWOpiR/XGOzpQF6aNS3AVEEzOtAhkfxMqHKU5DJQtfLOJZziUr7
         fwVV2mEvrZ8QQQqqMUCpp1vLNrtZazWrUJJNgOatBJNgge81uDy1ZAZHph7vU49F1tj+
         pvug==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0Pub2kE0dB+ueKjPFkBCjXvLk991mBelHUbDAMSwzthYLwa/w+NuM
	qs89UaC9rC/p2wSlOkJw4Lw=
X-Google-Smtp-Source: APiQypK8G2OrE8nvPZEGi2mBw3S8RB7p3LL6Iy81s26eSoPgM+GJjTm8umUo0KnwWX89nTYcIEXxRg==
X-Received: by 2002:a6b:8bd2:: with SMTP id n201mr19849024iod.131.1587458662232;
        Tue, 21 Apr 2020 01:44:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:d481:: with SMTP id p1ls6402727ilg.2.gmail; Tue, 21 Apr
 2020 01:44:21 -0700 (PDT)
X-Received: by 2002:a92:d6c6:: with SMTP id z6mr14526046ilp.32.1587458661789;
        Tue, 21 Apr 2020 01:44:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587458661; cv=none;
        d=google.com; s=arc-20160816;
        b=ocslEhCABGqd3jubGh/MiRkebpFqCZUbJX33AsHdu+ToNr//be3KBRumAm+Aj7RQQT
         Q4OAhoQorknNtBgV0ieX7yLs3AdJ8HEu7g8wvVndL3DNelXB/aDT6blDxH5JI8xpiqAF
         8DfcZcIRlrcg2SIDPk/EE6AkdPQTRIDbtdE7cqm2TUwZ7nqIjEDohRZxKlZsgMeHSqhr
         98zkYt3CmCzaFrxfhW1+qyLwEAy6aMFeLaLcO1X5Je1RQBuBXuSQFp9YiMRiNz1VZLAU
         57/yoTcnnOlnnC+rXLmOr2CI17324hmwnoc7FQr7zpKspRMpG1q9wxtLNGyuiE5NqaLC
         JP6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=2ntlmful7PLrjEX7EMnRP8h6SVS+MOB+nlfrDosJU40=;
        b=fTyj1PfIarHCLRwK8rFEgObOGBaTBnPHmp6r8H0vMrvVr5VEufuzD7eTT2sM5x2AzT
         io5TFipuGOQiX5Sx/FbBn6dSTbwnzh8Cto8MMlWfDK0KJcGh8TdrY5e4sQucNsd3F3nI
         ADvZooLKS5fPWOo7UX7AWAPcdz0wLOli2D7tL4FpBjqK15n1DRt79uxnbmBcsT//vwEW
         ZU5zje9oYkEtFvnCVTT3U81fgLUTCIOVOe9wdksXVe+oJhlyw1EzaxbjVaLr52IeMEz2
         GXnHT1na+zH140v7QapNzuE7xCWV8+EGrQPU29TvT0C+NQLM6I6UFGICTVJOWaVTvOGJ
         TN9Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga03.intel.com (mga03.intel.com. [134.134.136.65])
        by gmr-mx.google.com with ESMTPS id t125si218115iof.4.2020.04.21.01.44.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Apr 2020 01:44:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) client-ip=134.134.136.65;
IronPort-SDR: SoTAdMZSdS8tYh9DvK7szFE5Yj5sPXXzusr3E0pINZvY34D9wmOvhX1BK9qPQ+M34I8l7BR+dn
 UYAknLpQ9FxA==
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Apr 2020 01:44:20 -0700
IronPort-SDR: tFALlWI+NUWvr9iCjn/seKEwxvZGrdYa0GJryD+NGH4CIs1VUadEkqTvB9cQb83VM6FcNQViFK
 oZ2552SAZ6zA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,409,1580803200"; 
   d="gz'50?scan'50,208,50";a="291537972"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by orsmga008.jf.intel.com with ESMTP; 21 Apr 2020 01:44:18 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1jQoVt-0006bZ-Om; Tue, 21 Apr 2020 16:44:17 +0800
Date: Tue, 21 Apr 2020 16:43:45 +0800
From: kbuild test robot <lkp@intel.com>
To: barzur <boris@konbu.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Urja Rannikko <urjaman@gmail.com>
Subject: [urjaman:c201-5.7-rc1_v1 13/16] drivers/usb/dwc2/hcd_intr.c:1976:1:
 warning: unused label 'error'
Message-ID: <202004211623.APiP1xfu%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="0OAP2g/MAC+5xKAE"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted
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


--0OAP2g/MAC+5xKAE
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://github.com/urjaman/linux c201-5.7-rc1_v1
head:   7e2ed13d58db5bd82626347bc1ea3e22ae6ac514
commit: 0a30cd6978d56604a8070ed50c7e0810d67a3b14 [13/16] usb/dwc2/hcd: channel halt may not be an error
config: x86_64-randconfig-g001-20200421 (attached as .config)
compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project a9b137f9ffba8cb25dfd7dd1fb613e8aac121b37)
reproduce:
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        git checkout 0a30cd6978d56604a8070ed50c7e0810d67a3b14
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kbuild test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/usb/dwc2/hcd_intr.c:1976:1: warning: unused label 'error' [-Wunused-label]
   error:
   ^~~~~~
   1 warning generated.

vim +/error +1976 drivers/usb/dwc2/hcd_intr.c

7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1825  
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1826  /*
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1827   * Handles a host Channel Halted interrupt in DMA mode. This handler
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1828   * determines the reason the channel halted and proceeds accordingly.
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1829   */
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1830  static void dwc2_hc_chhltd_intr_dma(struct dwc2_hsotg *hsotg,
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1831  				    struct dwc2_host_chan *chan, int chnum,
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1832  				    struct dwc2_qtd *qtd)
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1833  {
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1834  	u32 hcintmsk;
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1835  	int out_nak_enh = 0;
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1836  
b49977a60dff52 drivers/staging/dwc2/hcd_intr.c Matthijs Kooijman 2013-04-10  1837  	if (dbg_hc(chan))
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1838  		dev_vdbg(hsotg->dev,
b49977a60dff52 drivers/staging/dwc2/hcd_intr.c Matthijs Kooijman 2013-04-10  1839  			 "--Host Channel %d Interrupt: DMA Channel Halted--\n",
b49977a60dff52 drivers/staging/dwc2/hcd_intr.c Matthijs Kooijman 2013-04-10  1840  			 chnum);
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1841  
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1842  	/*
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1843  	 * For core with OUT NAK enhancement, the flow for high-speed
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1844  	 * CONTROL/BULK OUT is handled a little differently
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1845  	 */
9badec2f9fa920 drivers/staging/dwc2/hcd_intr.c Matthijs Kooijman 2013-08-30  1846  	if (hsotg->hw_params.snpsid >= DWC2_CORE_REV_2_71a) {
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1847  		if (chan->speed == USB_SPEED_HIGH && !chan->ep_is_in &&
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1848  		    (chan->ep_type == USB_ENDPOINT_XFER_CONTROL ||
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1849  		     chan->ep_type == USB_ENDPOINT_XFER_BULK)) {
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1850  			out_nak_enh = 1;
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1851  		}
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1852  	}
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1853  
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1854  	if (chan->halt_status == DWC2_HC_XFER_URB_DEQUEUE ||
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1855  	    (chan->halt_status == DWC2_HC_XFER_AHB_ERR &&
95832c00bc5ce3 drivers/usb/dwc2/hcd_intr.c     John Youn         2017-01-23  1856  	     !hsotg->params.dma_desc_enable)) {
95832c00bc5ce3 drivers/usb/dwc2/hcd_intr.c     John Youn         2017-01-23  1857  		if (hsotg->params.dma_desc_enable)
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1858  			dwc2_hcd_complete_xfer_ddma(hsotg, chan, chnum,
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1859  						    chan->halt_status);
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1860  		else
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1861  			/*
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1862  			 * Just release the channel. A dequeue can happen on a
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1863  			 * transfer timeout. In the case of an AHB Error, the
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1864  			 * channel was forced to halt because there's no way to
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1865  			 * gracefully recover.
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1866  			 */
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1867  			dwc2_release_channel(hsotg, chan, qtd,
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1868  					     chan->halt_status);
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1869  		return;
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1870  	}
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1871  
f25c42b8d604fb drivers/usb/dwc2/hcd_intr.c     Gevorg Sahakyan   2018-07-26  1872  	hcintmsk = dwc2_readl(hsotg, HCINTMSK(chnum));
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1873  
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1874  	if (chan->hcint & HCINTMSK_XFERCOMPL) {
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1875  		/*
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1876  		 * Todo: This is here because of a possible hardware bug. Spec
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1877  		 * says that on SPLIT-ISOC OUT transfers in DMA mode that a HALT
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1878  		 * interrupt w/ACK bit set should occur, but I only see the
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1879  		 * XFERCOMP bit, even with it masked out. This is a workaround
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1880  		 * for that behavior. Should fix this when hardware is fixed.
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1881  		 */
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1882  		if (chan->ep_type == USB_ENDPOINT_XFER_ISOC && !chan->ep_is_in)
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1883  			dwc2_hc_ack_intr(hsotg, chan, chnum, qtd);
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1884  		dwc2_hc_xfercomp_intr(hsotg, chan, chnum, qtd);
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1885  	} else if (chan->hcint & HCINTMSK_STALL) {
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1886  		dwc2_hc_stall_intr(hsotg, chan, chnum, qtd);
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1887  	} else if ((chan->hcint & HCINTMSK_XACTERR) &&
95832c00bc5ce3 drivers/usb/dwc2/hcd_intr.c     John Youn         2017-01-23  1888  		   !hsotg->params.dma_desc_enable) {
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1889  		if (out_nak_enh) {
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1890  			if (chan->hcint &
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1891  			    (HCINTMSK_NYET | HCINTMSK_NAK | HCINTMSK_ACK)) {
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1892  				dev_vdbg(hsotg->dev,
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1893  					 "XactErr with NYET/NAK/ACK\n");
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1894  				qtd->error_count = 0;
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1895  			} else {
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1896  				dev_vdbg(hsotg->dev,
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1897  					 "XactErr without NYET/NAK/ACK\n");
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1898  			}
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1899  		}
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1900  
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1901  		/*
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1902  		 * Must handle xacterr before nak or ack. Could get a xacterr
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1903  		 * at the same time as either of these on a BULK/CONTROL OUT
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1904  		 * that started with a PING. The xacterr takes precedence.
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1905  		 */
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1906  		dwc2_hc_xacterr_intr(hsotg, chan, chnum, qtd);
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1907  	} else if ((chan->hcint & HCINTMSK_XCS_XACT) &&
95832c00bc5ce3 drivers/usb/dwc2/hcd_intr.c     John Youn         2017-01-23  1908  		   hsotg->params.dma_desc_enable) {
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1909  		dwc2_hc_xacterr_intr(hsotg, chan, chnum, qtd);
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1910  	} else if ((chan->hcint & HCINTMSK_AHBERR) &&
95832c00bc5ce3 drivers/usb/dwc2/hcd_intr.c     John Youn         2017-01-23  1911  		   hsotg->params.dma_desc_enable) {
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1912  		dwc2_hc_ahberr_intr(hsotg, chan, chnum, qtd);
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1913  	} else if (chan->hcint & HCINTMSK_BBLERR) {
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1914  		dwc2_hc_babble_intr(hsotg, chan, chnum, qtd);
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1915  	} else if (chan->hcint & HCINTMSK_FRMOVRUN) {
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1916  		dwc2_hc_frmovrun_intr(hsotg, chan, chnum, qtd);
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1917  	} else if (!out_nak_enh) {
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1918  		if (chan->hcint & HCINTMSK_NYET) {
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1919  			/*
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1920  			 * Must handle nyet before nak or ack. Could get a nyet
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1921  			 * at the same time as either of those on a BULK/CONTROL
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1922  			 * OUT that started with a PING. The nyet takes
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1923  			 * precedence.
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1924  			 */
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1925  			dwc2_hc_nyet_intr(hsotg, chan, chnum, qtd);
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1926  		} else if ((chan->hcint & HCINTMSK_NAK) &&
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1927  			   !(hcintmsk & HCINTMSK_NAK)) {
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1928  			/*
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1929  			 * If nak is not masked, it's because a non-split IN
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1930  			 * transfer is in an error state. In that case, the nak
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1931  			 * is handled by the nak interrupt handler, not here.
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1932  			 * Handle nak here for BULK/CONTROL OUT transfers, which
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1933  			 * halt on a NAK to allow rewinding the buffer pointer.
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1934  			 */
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1935  			dwc2_hc_nak_intr(hsotg, chan, chnum, qtd);
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1936  		} else if ((chan->hcint & HCINTMSK_ACK) &&
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1937  			   !(hcintmsk & HCINTMSK_ACK)) {
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1938  			/*
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1939  			 * If ack is not masked, it's because a non-split IN
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1940  			 * transfer is in an error state. In that case, the ack
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1941  			 * is handled by the ack interrupt handler, not here.
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1942  			 * Handle ack here for split transfers. Start splits
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1943  			 * halt on ACK.
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1944  			 */
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1945  			dwc2_hc_ack_intr(hsotg, chan, chnum, qtd);
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1946  		} else {
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1947  			if (chan->ep_type == USB_ENDPOINT_XFER_INT ||
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1948  			    chan->ep_type == USB_ENDPOINT_XFER_ISOC) {
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1949  				/*
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1950  				 * A periodic transfer halted with no other
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1951  				 * channel interrupts set. Assume it was halted
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1952  				 * by the core because it could not be completed
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1953  				 * in its scheduled (micro)frame.
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1954  				 */
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1955  				dev_dbg(hsotg->dev,
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1956  					"%s: Halt channel %d (assume incomplete periodic transfer)\n",
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1957  					__func__, chnum);
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1958  				dwc2_halt_channel(hsotg, chan, qtd,
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1959  					DWC2_HC_XFER_PERIODIC_INCOMPLETE);
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1960  			} else {
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1961  				dev_err(hsotg->dev,
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1962  					"%s: Channel %d - ChHltd set, but reason is unknown\n",
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1963  					__func__, chnum);
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1964  				dev_err(hsotg->dev,
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1965  					"hcint 0x%08x, intsts 0x%08x\n",
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1966  					chan->hcint,
f25c42b8d604fb drivers/usb/dwc2/hcd_intr.c     Gevorg Sahakyan   2018-07-26  1967  					dwc2_readl(hsotg, GINTSTS));
0a30cd6978d566 drivers/usb/dwc2/hcd_intr.c     barzur            2019-07-12  1968  				dwc2_halt_channel(hsotg, chan, qtd,
0a30cd6978d566 drivers/usb/dwc2/hcd_intr.c     barzur            2019-07-12  1969  					DWC2_HC_XFER_PERIODIC_INCOMPLETE);
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1970  			}
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1971  		}
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1972  	} else {
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1973  		dev_info(hsotg->dev,
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1974  			 "NYET/NAK/ACK/other in non-error case, 0x%08x\n",
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1975  			 chan->hcint);
151d0cbdbe8609 drivers/usb/dwc2/hcd_intr.c     Nick Hudson       2014-09-11 @1976  error:
151d0cbdbe8609 drivers/usb/dwc2/hcd_intr.c     Nick Hudson       2014-09-11  1977  		/* Failthrough: use 3-strikes rule */
151d0cbdbe8609 drivers/usb/dwc2/hcd_intr.c     Nick Hudson       2014-09-11  1978  		qtd->error_count++;
151d0cbdbe8609 drivers/usb/dwc2/hcd_intr.c     Nick Hudson       2014-09-11  1979  		dwc2_update_urb_state_abn(hsotg, chan, chnum, qtd->urb,
151d0cbdbe8609 drivers/usb/dwc2/hcd_intr.c     Nick Hudson       2014-09-11  1980  					  qtd, DWC2_HC_XFER_XACT_ERR);
151d0cbdbe8609 drivers/usb/dwc2/hcd_intr.c     Nick Hudson       2014-09-11  1981  		dwc2_hcd_save_data_toggle(hsotg, chan, chnum, qtd);
151d0cbdbe8609 drivers/usb/dwc2/hcd_intr.c     Nick Hudson       2014-09-11  1982  		dwc2_halt_channel(hsotg, chan, qtd, DWC2_HC_XFER_XACT_ERR);
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1983  	}
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1984  }
7359d482eb4d39 drivers/staging/dwc2/hcd_intr.c Paul Zimmerman    2013-03-11  1985  

:::::: The code at line 1976 was first introduced by commit
:::::: 151d0cbdbe8609e8489d10ddb7aed6e431fe6b5d usb: dwc2: make the scheduler handle excessive NAKs better

:::::: TO: Nick Hudson <skrll@netbsd.org>
:::::: CC: Greg Kroah-Hartman <gregkh@linuxfoundation.org>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202004211623.APiP1xfu%25lkp%40intel.com.

--0OAP2g/MAC+5xKAE
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--0OAP2g/MAC+5xKAE--
