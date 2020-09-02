Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB3OQYD5AKGQEQRGI3MQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103e.google.com (mail-pj1-x103e.google.com [IPv6:2607:f8b0:4864:20::103e])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BCCD25B733
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Sep 2020 01:19:11 +0200 (CEST)
Received: by mail-pj1-x103e.google.com with SMTP id y7sf513788pjt.1
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Sep 2020 16:19:11 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599088749; cv=pass;
        d=google.com; s=arc-20160816;
        b=daAs3t+smpKB4D9UDcL3frCf4VQv/pthrgslI21g64e8mvaw78ZUCZG2YNOaNZtCuh
         GiPVudoMKJk7zxq0H5ySMDslIoVusnLmW7ts8GCNukysJaBPS1hqUtp3K2Gs6M42OaNm
         ACcPi47uLvzMfNB44TJXl9yngkpBzmMgAxmuvfZhdS8gn6Qh6gHIwkB8MkHfnQ1HyS2T
         QtRcSYbteUKYz04dG8ULzdpzIrLebCpYsVi39bEDjiaO8r8VH0gDPksPz8LMyyH8HunI
         v88nGX9nWMu/6n+S5wwBD0l3t92U6pmgceZscQX2RzS6+NeAQPlvVxKhdlL2m+gYDnzN
         YCNQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=ETNQib6cjPqfvuGNLzeBjfQFOzlqLZcFeFveKdA8f5w=;
        b=n6m94u2F4IfQnowgzHgynr0v6Jnaj2UGssNsje77bL5YpECRfdfqpdws646P6iZzqq
         KiGkb9WmKSgxAwRcrZ/7Qy2aUFjrJZp+pwpfbmXgrj7gNPaN2fXjIfxCJDGNKA+hm4cN
         /bREzrkgUe5J76ked7W+wu5ZpzeVFD8Usq0Y5HH1g09OkqaXEU362a0IsIBWgYgfEbnH
         hGRJuric1EhLNtjHeJQbXfmvkCp3gYtSi38VCnkjDiDtp6wKPeSFbsUy4xcig7G8jcyY
         tbT259Kc/aSCJqYpASDQmhztamrsBgi3tpOdovSBFiqgIDLRzSzYvJVjqszfd9Ke4P3f
         pfaQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ETNQib6cjPqfvuGNLzeBjfQFOzlqLZcFeFveKdA8f5w=;
        b=oRNC9mioVyliO0PW2Lir0oyznBu1BewdJDLsDlKszCTbRzReLRhTOakEIIcE5kw+uq
         PHcE/zHP/0uSK2n2qZsS5BEqZ6o4QWXq8Dp/KflM3v/M1ukO8vMPwKSRkPuyX/v6fzOL
         GQQgyoDwBO5M7FI9hegSJAv+FJwkOTld6YaTO9wtRQMAZtiygZhBnu5UQ/qJtxxaG5zR
         G+994qp668wtI7PilbXpPdNtaAsVwWEczV9APlDYQwHCmZrae+rt6W4S9SVq2yhr7GGH
         uv5v9OpvD6Nmsx81oOzZ0u4t8aSl+erR9kq4neVee6ppgFGpf5WjUm8vsnKCO1YJEAAq
         fx/Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ETNQib6cjPqfvuGNLzeBjfQFOzlqLZcFeFveKdA8f5w=;
        b=XeYpgEyUJSbOVWRVR47UDe4cuAcTtrLW5bc7mEyQwFf7A9oOfchCFDpspfJ1ac3iZt
         74WRAsr6HLnQSUfLXJn5zS5K94kaOlbgC2sm0GV7NQut4I5tNPAgCvd8IYH3SAfTc9cK
         soyqj6T+ETMmeyJwRjwEJ8qrX7I+29tnkNwfaeTQ01RMLxKDIHDnPcKtTVVFtiu1RE+S
         zZKPMyxj/VaOv9BbMAc9nCgZ9EYZItylQIy/asv1/IVdfjjVpcy34oEM2xUpjTU2kzif
         1pmGkXbymL1JLBJNF7Koq1dcJdW8Pe+LXzyq9cq1dwKgzrtF6XqzMLGCsQtU6R8vG4/b
         ak2Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533uf8eqYgPgew107mUBXDF9+RWFl6CMJsBIh5TcZS3NaD1iDqf6
	NZJhmQO9PSZyxd+wxGMswE0=
X-Google-Smtp-Source: ABdhPJz6prrSqofyboRuXgB0cc6qZjQ1lLaKK9l2xXCBSP1Y3HN8rHgMgdolDf2+YoEaCJ3BPFmxWw==
X-Received: by 2002:aa7:9f50:: with SMTP id h16mr748526pfr.178.1599088749601;
        Wed, 02 Sep 2020 16:19:09 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:3590:: with SMTP id mm16ls1241073pjb.3.canary-gmail;
 Wed, 02 Sep 2020 16:19:09 -0700 (PDT)
X-Received: by 2002:a17:90b:b8f:: with SMTP id bd15mr96623pjb.65.1599088749063;
        Wed, 02 Sep 2020 16:19:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599088749; cv=none;
        d=google.com; s=arc-20160816;
        b=D2NaTx3aWmg7CTJrBiP/rZUUwYUG0RK936d8fLJpNdCakVob3w1Q9fHt5JJGdteZiq
         9ixD+Az3BQgJRoA0eHDcOfwKyWmEaXpday+og5yYrS03LYETqXaJg6YI3x4OgpRFBOmU
         BvjCHQon7gFsrEGj2/EkJ75j3NuZjUyf0kdAkg2xKKuOOZEupWcjXP3hvYF7ZAdnZc8s
         I3NxChZQATEnDlxP3oErXZhf3ejOHEEHfW60JKuO4/GqsBHu3owAl73T4FH0L0qWuZc3
         Vgi/DXMVhrayiOEhGStNtHGA2MCsy3YVdUJuCcqU+MDILO7rb/7eZr8lmvYvUpedohNI
         be6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=z4icLgE6IpUHzwvoj6Y/MbCq+snCa7QMsInk5+/tycU=;
        b=W952C5+YtGhuO9n9j7Fnj6dQU9v49urnuZJj3AD9xBD7cIGhVLy8XQoyoc1MuvlNuB
         CxquE15nZ9Olb2wvpsrlGd+EFKdoi91yUkJdFm8wO7oorIHT0OJrWK+0J0mjMbHpe4/4
         dHaEFH365SH/IhW8mhBdQJY3PSblhsPhE3SyTP2te7/fiU/DXcL6/DLSen5XdW9yClLv
         WJ8qc4Wk3LCLYZHgFi2E4+eerDm1fAKDO6r4zqX44IvM8ZsLeiF97JEJSp8ERVtl9rDm
         u5seKIzSUNRVU1IbdQgdkzshWI5UrGKSAgTMJJWfNMR3+anz5R7eZxJ5nlNU3cLGRQ71
         qeVg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga11.intel.com (mga11.intel.com. [192.55.52.93])
        by gmr-mx.google.com with ESMTPS id l26si77985pfe.2.2020.09.02.16.19.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 02 Sep 2020 16:19:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted sender) client-ip=192.55.52.93;
IronPort-SDR: 5ZUivzjGCXRiynibGWTIHRqnrJSE8CEFvd8e4Z0afyqQOpUnOBjgESMI+998OTdYRsYoa4GfVR
 8b1DpKssaqxw==
X-IronPort-AV: E=McAfee;i="6000,8403,9732"; a="154999821"
X-IronPort-AV: E=Sophos;i="5.76,384,1592895600"; 
   d="gz'50?scan'50,208,50";a="154999821"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Sep 2020 16:19:08 -0700
IronPort-SDR: /Xu3yC/DnuuMpACs7nqL5YgrdyykBRR5eoaKCVs8NOvKggcf6ZnLHYIpHeqqA1x443msUO86JU
 3CDKWROlTuIQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,384,1592895600"; 
   d="gz'50?scan'50,208,50";a="297849462"
Received: from lkp-server02.sh.intel.com (HELO eb469fda2af7) ([10.239.97.151])
  by orsmga003.jf.intel.com with ESMTP; 02 Sep 2020 16:19:05 -0700
Received: from kbuild by eb469fda2af7 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kDc1w-0000I4-Ru; Wed, 02 Sep 2020 23:19:04 +0000
Date: Thu, 3 Sep 2020 07:18:41 +0800
From: kernel test robot <lkp@intel.com>
To: barzur <boris@konbu.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Urja Rannikko <urjaman@gmail.com>
Subject: [urjaman:c201-5.9-rc3_v2 13/28] drivers/usb/dwc2/hcd_intr.c:1976:1:
 warning: unused label 'error'
Message-ID: <202009030735.2gN1ZrIe%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="sdtB3X0nJg68CQEu"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.93 as permitted
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


--sdtB3X0nJg68CQEu
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://github.com/urjaman/linux c201-5.9-rc3_v2
head:   d9367838cfd73f4d6acef87f5ce1cc99dd167685
commit: 66d64d2a887a1dee90bc14baa1d940919c75d1b4 [13/28] usb/dwc2/hcd: channel halt may not be an error
config: x86_64-randconfig-a012-20200903 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 224d8153b53b16cf535ea1a55afdfe1ec5b1374f)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        git checkout 66d64d2a887a1dee90bc14baa1d940919c75d1b4
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/usb/dwc2/hcd_intr.c:1976:1: warning: unused label 'error' [-Wunused-label]
   error:
   ^~~~~~
   1 warning generated.

# https://github.com/urjaman/linux/commit/66d64d2a887a1dee90bc14baa1d940919c75d1b4
git remote add urjaman https://github.com/urjaman/linux
git fetch --no-tags urjaman c201-5.9-rc3_v2
git checkout 66d64d2a887a1dee90bc14baa1d940919c75d1b4
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
66d64d2a887a1d drivers/usb/dwc2/hcd_intr.c     barzur            2019-07-12  1968  				dwc2_halt_channel(hsotg, chan, qtd,
66d64d2a887a1d drivers/usb/dwc2/hcd_intr.c     barzur            2019-07-12  1969  					DWC2_HC_XFER_PERIODIC_INCOMPLETE);
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202009030735.2gN1ZrIe%25lkp%40intel.com.

--sdtB3X0nJg68CQEu
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--sdtB3X0nJg68CQEu--
