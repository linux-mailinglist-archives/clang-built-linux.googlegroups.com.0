Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBMNTV74QKGQEXC3MRUI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x638.google.com (mail-pl1-x638.google.com [IPv6:2607:f8b0:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C3A223D939
	for <lists+clang-built-linux@lfdr.de>; Thu,  6 Aug 2020 12:21:39 +0200 (CEST)
Received: by mail-pl1-x638.google.com with SMTP id y10sf7262274plp.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 06 Aug 2020 03:21:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1596709297; cv=pass;
        d=google.com; s=arc-20160816;
        b=noH8Q6J7vt8dsISNJ3wSwOitF7ddUPkEZSeYnZq+eflxnZF/WeWoM3lNXwj94SdDWv
         KUW+y8CB4GBxuV9IRpHELAz9Yc1GTHurKrPLX64rn2vMmQ5IwbKI6Uj3ZynWj0n2ErN9
         N8MxIGD4yNLO3H6cpE/7p+LofoSIedUqALzN43EzoXdHlF+jnFdx60oTx2T9LkvKNbu1
         OUqVDQyWIbmYd3FulWJh/FCAEA25kE7VsO5UfbLrr7PUt2VOwSaZcIHbXXgaqG4hBx4v
         T4okl/m/LfDDbnDF9qJKAiefFocEfB8aUGvCOm2nlmwoks46QnCuQRbx8oVStJw522W7
         41ow==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=nLtwFI8FxxUOAR41WHi0Pn9H9472vPmxTdD5uqFo1D4=;
        b=FXcfKGowkxYeHGd3A+5tD+Z+BY6mj3IfE6s/dnkSm8S40b5eBeSkOp02eSBFCxT3pB
         VdCdfCofq3C5ZGbpSPmnxECIF0sguZDgajY2+Bg1bRtG+9in62hdWCbbhYA4ttOvmAru
         hciM+NDCBS0NrhEgPa8rEbmNicAgVKWaSxzWlY3ufxEqLikiUkwMW3tNGzfuf+65XbSf
         OgYBqbuZ3K7XSOGSVRF5IpKl5UiWiun159VK3FPAqDF8mh3wg+rumI0cfeXrKfQz9DSO
         B9gRlqOm/gtUAbAE8gHlByYzQZFdjRnMXeTvScBrEJOvk6re+JqCtINRQsjIL4vPgQvo
         tgcw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=nLtwFI8FxxUOAR41WHi0Pn9H9472vPmxTdD5uqFo1D4=;
        b=HZpLBDDCyBaFz39gvCrPOkSkFKU7UDS7AmlB6Yx3nAqxqKiCJmf5Dnr2wJNDSgs6wb
         XVF4ZSqjfBaH7moN9MqobRAy6W+po+cw6w1dKwM88ziA28y5R4wKRF8cfjz0wdezATjq
         49rfdSBewoVYMMsyqB6B7Ysx82GmwJAEslB3nzsywTHqFEyG7y8K0gKg95TTYJ9GTUU7
         qWmC0JqEcuf6DIpsVd8ZUVnjGmUWyO2pe6JEFTrsDfrRtiP/nHVv8kjdLxl6YMZumozD
         EQY2kGSSECFDW0EAMF0tGzD7xptrkA4P2comI+WWPbAyYO+LodX4h9CCL3029wDFhg5n
         k7wA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=nLtwFI8FxxUOAR41WHi0Pn9H9472vPmxTdD5uqFo1D4=;
        b=FSNvivHr6a9lXMKRnatbiz4IZ+n5XxoAwoz6drN8QNLBvEF1y4PTckr1p5xmA+w5jQ
         xiFZtKQN7BWstRG5SwMnIaiXubJSXPmxy5s6aNI3Avl/3vNDqW8dawPBySIqu8NEfyxV
         RD2JeoHv8jESu6cOtl5uGr85yeQCIVCNdEQinx3TMsrxfJYYyeSMD0cpFx6c7zeUZBTg
         Lm2eBcsjwSvwfCampU9a3achQgX7A2iUedT/vUxtdYyazjamDVhHtjVjGyG28TXci/fj
         zhSPcI3fNwYWiHhQQwExwdgFIF+o8wUFX+AEfC9uu1rY/vG0iIOaGPsI0n/+GBvN1Lnm
         UTRQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532wqjsxTOrERUOliRgxXsrbTHB4bf7dSKp8Dc8zhH0TK+MjB0pk
	mCqqd9xamhFcAqZrfXIMx5s=
X-Google-Smtp-Source: ABdhPJzZJ1unVevE19RtqQ9NHTfI11vUOLU1CQR3JnHlmBNU9mlPFwUiCm7InV4Pp7IJxTXIMwfJyw==
X-Received: by 2002:a17:90a:9312:: with SMTP id p18mr7806657pjo.82.1596709297119;
        Thu, 06 Aug 2020 03:21:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:c252:: with SMTP id 18ls2399014plg.3.gmail; Thu, 06
 Aug 2020 03:21:36 -0700 (PDT)
X-Received: by 2002:a17:902:7e86:: with SMTP id z6mr6994193pla.161.1596709296599;
        Thu, 06 Aug 2020 03:21:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1596709296; cv=none;
        d=google.com; s=arc-20160816;
        b=wxW03ESLNkKPg0w+1frSe2IIQ0ef4cGC5kgU/hO24J++jLeptKcZv1kQUwA8Py3zr+
         hKmMQ/kCehuZYkUXzPQW+ILKA/F/AAjDbMCVGBrujGtn4MAGl4ho/9sgDjC4/kCO3mMW
         iq6nYqB6sVGhbOrAa4N2pnZt4eFzfKXd3FRdWf2CkCIOIGy/lSEhDDTpJ8n2J+X4nAry
         CHIyvg2USS8e3BUEEJTmCpdWaaVJbxB5T01ZqG6HgSfTXYUXD3WyVn9/fIqeTil1QAhg
         UfwnO/2U/R/eCKoQURTMyInck2Xa5S4PWO0/wmm8Ak3yhsUpgZnuKSiwiOjXJ1EByVV/
         Tw2Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=9jOwbj+FZXjHLhW5/DVBM0NYmcxyxCtWxmgEnYyW0cg=;
        b=NWRT1+qIywzShTd6jifJDlZqq8j9Pj+Kto9HPzPMLJGcehG88AC130E/Cg5x5LYDwr
         6/eVOgFUIj47cc/TafNl3FbdlLcdy1FiST8ZKzK3l/sSGm4eToCGZoKySSRP1IGxlSZL
         auIv37Xt4JITtmeo/XxB72+d1DhbXUEFaa+Nb4zLo4AgGVjuhg44Iue1hToH9WM/xEiI
         QYkwyxlADo/WExcwrdnSo4z63sfNIodgNjAiNC9zSty7A16icZ0UGxuYhYfG38Ekq2hR
         WfzvxKreEZwJTP45waKjbB7F/7YDOVYXXRl8khB1JOfCKw6BzFkO1Bov0ozFXRdEgmrO
         ceNA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga02.intel.com (mga02.intel.com. [134.134.136.20])
        by gmr-mx.google.com with ESMTPS id h2si266288pls.2.2020.08.06.03.21.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 06 Aug 2020 03:21:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) client-ip=134.134.136.20;
IronPort-SDR: NbGjTwbflp7go+YMERzhr6wsxzx+gpl+LQjAfiQcBkw9VIxPEzYBG4folnRWHG1Os4qhFY08wj
 so8eVuD0uN/g==
X-IronPort-AV: E=McAfee;i="6000,8403,9704"; a="140645846"
X-IronPort-AV: E=Sophos;i="5.75,441,1589266800"; 
   d="gz'50?scan'50,208,50";a="140645846"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 06 Aug 2020 03:21:34 -0700
IronPort-SDR: K6wOtcFYT8rXDBOrbHi61A6AanzY6PDWDyzWFa+nGvYlA4etHbnYBUFox5uIzHn4xBiL2ItR/I
 iahBffQ7UMWw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,441,1589266800"; 
   d="gz'50?scan'50,208,50";a="275041593"
Received: from lkp-server02.sh.intel.com (HELO 37a337f97289) ([10.239.97.151])
  by fmsmga007.fm.intel.com with ESMTP; 06 Aug 2020 03:21:32 -0700
Received: from kbuild by 37a337f97289 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1k3d1f-0001EH-OD; Thu, 06 Aug 2020 10:21:31 +0000
Date: Thu, 6 Aug 2020 18:21:16 +0800
From: kernel test robot <lkp@intel.com>
To: Sia Jee Heng <jee.heng.sia@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	"Qin, Chao" <chao.qin@intel.com>
Subject: [intel-linux-intel-lts:5.4/preempt-rt 8748/9103]
 drivers/dma/dw-axi-dmac/dw-axi-dmac-platform.c:1058:35: warning: variable
 'mem' is uninitialized when used here
Message-ID: <202008061813.FBTiezDX%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="k+w/mQv8wyuph6w0"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted
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


--k+w/mQv8wyuph6w0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://github.com/intel/linux-intel-lts.git 5.4/preempt-rt
head:   64f494c08613ebb24a83b69223e7f90e8b7ce956
commit: beacc09a3cf774f4c9f3010b2098a15c1a883320 [8748/9103] dmaengine: dw-axi-dma: support cyclic mode
config: x86_64-randconfig-a012-20200806 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 076b120bebfd727b502208601012a44ab2e1028e)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        git checkout beacc09a3cf774f4c9f3010b2098a15c1a883320
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/dma/dw-axi-dmac/dw-axi-dmac-platform.c:1058:35: warning: variable 'mem' is uninitialized when used here [-Wuninitialized]
                           mem_width = __ffs(data_width | mem | xfer_len);
                                                          ^~~
   drivers/dma/dw-axi-dmac/dw-axi-dmac-platform.c:1044:11: note: initialize the variable 'mem' to silence this warning
                           u32 mem, len;
                                  ^
                                   = 0
>> drivers/dma/dw-axi-dmac/dw-axi-dmac-platform.c:1050:15: warning: variable 'len' is uninitialized when used here [-Wuninitialized]
                           xfer_len = len;
                                      ^~~
   drivers/dma/dw-axi-dmac/dw-axi-dmac-platform.c:1044:16: note: initialize the variable 'len' to silence this warning
                           u32 mem, len;
                                       ^
                                        = 0
   drivers/dma/dw-axi-dmac/dw-axi-dmac-platform.c:972:35: warning: variable 'mem' is uninitialized when used here [-Wuninitialized]
                           mem_width = __ffs(data_width | mem | len);
                                                          ^~~
   drivers/dma/dw-axi-dmac/dw-axi-dmac-platform.c:970:11: note: initialize the variable 'mem' to silence this warning
                           u32 mem, len;
                                  ^
                                   = 0
   drivers/dma/dw-axi-dmac/dw-axi-dmac-platform.c:972:41: warning: variable 'len' is uninitialized when used here [-Wuninitialized]
                           mem_width = __ffs(data_width | mem | len);
                                                                ^~~
   drivers/dma/dw-axi-dmac/dw-axi-dmac-platform.c:970:16: note: initialize the variable 'len' to silence this warning
                           u32 mem, len;
                                       ^
                                        = 0
   4 warnings generated.

vim +/mem +1058 drivers/dma/dw-axi-dmac/dw-axi-dmac-platform.c

   912	
   913	static struct dma_async_tx_descriptor *
   914	dw_chan_prep_dma_cyclic(struct dma_chan *dchan, dma_addr_t buf_addr,
   915				size_t buf_len, size_t period_len,
   916				enum dma_transfer_direction direction,
   917				unsigned long flags)
   918	{
   919		struct axi_dma_chan *chan = dchan_to_axi_dma_chan(dchan);
   920		struct axi_dma_desc *first = NULL, *prev = NULL;
   921		unsigned int reg_width;
   922		unsigned int mem_width;
   923		unsigned int data_width = BIT(chan->chip->dw->hdata->m_data_width);
   924		dma_addr_t reg;
   925		u32 reg_value = 0;
   926		unsigned int i = 0;
   927		u32 ctllo, ctlhi;
   928		size_t total_len = 0;
   929		size_t block_ts, max_block_ts;
   930		u8 lms = 0; // Select AXI0 master for LLI fetching
   931		u32 offset;
   932	
   933		if (unlikely(!is_slave_direction(direction)))
   934			return NULL;
   935	
   936		chan->direction = direction;
   937		chan->cyclic = 0x1;
   938	
   939		max_block_ts = chan->chip->dw->hdata->block_size[chan->id];
   940	
   941		axi_set_hw_channel(chan->chip, chan->hw_hs_num);
   942	
   943		switch (direction) {
   944		case DMA_MEM_TO_DEV:
   945			reg_width = __ffs(chan->slave_config.dst_addr_width);
   946	
   947			chan->reg_width = reg_width;
   948			if (reg_width == DWAXIDMAC_TRANS_WIDTH_16) {
   949				offset = DMAC_APB_HALFWORD_WR_CH_EN;
   950				reg_value = axi_dma_apb_ioread32(chan->chip, offset);
   951				reg_value |= 0x1 << chan->id;
   952				axi_dma_apb_iowrite32(chan->chip,
   953					DMAC_APB_HALFWORD_WR_CH_EN, reg_value);
   954			} else if (reg_width == DWAXIDMAC_TRANS_WIDTH_8) {
   955				offset = DMAC_APB_BYTE_WR_CH_EN;
   956				reg_value = axi_dma_apb_ioread32(chan->chip, offset);
   957				reg_value |= 0x1 << chan->id;
   958				axi_dma_apb_iowrite32(chan->chip, offset, reg_value);
   959			}
   960			reg = chan->slave_config.dst_addr;
   961	
   962			ctllo = axi_dma_prepare_ctllo(chan) |
   963				reg_width << CH_CTL_L_DST_WIDTH_POS |
   964				DWAXIDMAC_CH_CTL_L_NOINC << CH_CTL_L_DST_INC_POS |
   965				DWAXIDMAC_CH_CTL_L_INC << CH_CTL_L_SRC_INC_POS;
   966	
   967			for (i = 0; i < buf_len / period_len; i++) {
   968				struct axi_dma_desc *desc;
   969				size_t xfer_len;
   970				u32 mem, len;
   971	
   972				mem_width = __ffs(data_width | mem | len);
   973				if (mem_width > DWAXIDMAC_TRANS_WIDTH_32)
   974					mem_width = DWAXIDMAC_TRANS_WIDTH_32;
   975	
   976				xfer_len = period_len;
   977				block_ts = period_len;
   978	
   979				desc = axi_desc_get(chan);
   980				if (unlikely(!desc))
   981					goto err_desc_get;
   982	
   983				if (block_ts > max_block_ts) {
   984					block_ts = max_block_ts;
   985					xfer_len = max_block_ts << mem_width;
   986				}
   987	
   988				ctlhi = axi_dma_prepare_ctlhi(chan);
   989	
   990				ctllo |= mem_width << CH_CTL_L_SRC_WIDTH_POS;
   991				write_desc_sar(desc, buf_addr + i * period_len);
   992				write_desc_dar(desc, reg);
   993				desc->lli.block_ts_lo = period_len / 4;
   994				desc->lli.ctl_hi = cpu_to_le32(ctlhi);
   995				desc->lli.ctl_lo = cpu_to_le32(ctllo);
   996	
   997				set_desc_src_master(desc);
   998				set_desc_src_master(desc);
   999	
  1000				// Manage transfer list (xfer_list)
  1001				if (!first) {
  1002					first = desc;
  1003				} else {
  1004					write_desc_llp(prev, desc->vd.tx.phys | lms);
  1005					list_add_tail(&desc->xfer_list,
  1006						      &first->xfer_list);
  1007				}
  1008				prev = desc;
  1009				if (i == ((buf_len / period_len) - 1))
  1010					write_desc_llp(prev, first->vd.tx.phys | lms);
  1011	
  1012				total_len += xfer_len;
  1013	
  1014				set_desc_last(desc);
  1015			}
  1016			break;
  1017		case DMA_DEV_TO_MEM:
  1018			reg_width = __ffs(chan->slave_config.src_addr_width);
  1019	
  1020			chan->reg_width = reg_width;
  1021			if (reg_width == DWAXIDMAC_TRANS_WIDTH_16) {
  1022				offset = DMAC_APB_HALFWORD_WR_CH_EN;
  1023				reg_value = axi_dma_apb_ioread32(chan->chip, offset);
  1024				reg_value |= 0x1 << chan->id;
  1025				axi_dma_apb_iowrite32(chan->chip, offset, reg_value);
  1026			} else if (reg_width == DWAXIDMAC_TRANS_WIDTH_8) {
  1027				offset = DMAC_APB_BYTE_WR_CH_EN;
  1028				reg_value = axi_dma_apb_ioread32(chan->chip, offset);
  1029				reg_value |= 0x1 << chan->id;
  1030				axi_dma_apb_iowrite32(chan->chip, offset, reg_value);
  1031			}
  1032			reg = chan->slave_config.src_addr;
  1033			if (reg_width > DWAXIDMAC_TRANS_WIDTH_32)
  1034				reg_width = DWAXIDMAC_TRANS_WIDTH_32;
  1035			ctllo = axi_dma_prepare_ctllo(chan) |
  1036				reg_width << CH_CTL_L_SRC_WIDTH_POS |
  1037				DWAXIDMAC_CH_CTL_L_INC << CH_CTL_L_DST_INC_POS |
  1038				// Workaround
  1039				DWAXIDMAC_CH_CTL_L_NOINC << CH_CTL_L_SRC_INC_POS;
  1040	
  1041			for (i = 0; i < buf_len / period_len; i++) {
  1042				struct axi_dma_desc *desc;
  1043				size_t xfer_len;
  1044				u32 mem, len;
  1045	
  1046				desc = axi_desc_get(chan);
  1047				if (unlikely(!desc))
  1048					goto err_desc_get;
  1049	
> 1050				xfer_len = len;
  1051				block_ts = xfer_len >> reg_width;
  1052				if (block_ts > max_block_ts) {
  1053					block_ts = max_block_ts;
  1054					xfer_len = max_block_ts << reg_width;
  1055				}
  1056				xfer_len = period_len;
  1057				block_ts = period_len;
> 1058				mem_width = __ffs(data_width | mem | xfer_len);
  1059				if (mem_width > DWAXIDMAC_TRANS_WIDTH_32)
  1060					mem_width = DWAXIDMAC_TRANS_WIDTH_32;
  1061	
  1062				ctlhi = axi_dma_prepare_ctlhi(chan);
  1063				ctllo |= mem_width << CH_CTL_L_DST_WIDTH_POS;
  1064	
  1065				write_desc_sar(desc, reg);
  1066				write_desc_dar(desc, buf_addr + i * period_len);
  1067				if (reg_width == DWAXIDMAC_TRANS_WIDTH_16)
  1068					desc->lli.block_ts_lo = period_len / 2;
  1069				else if (reg_width >= DWAXIDMAC_TRANS_WIDTH_32)
  1070					desc->lli.block_ts_lo = period_len / 4;
  1071				desc->lli.ctl_hi = cpu_to_le32(ctlhi);
  1072				desc->lli.ctl_lo = cpu_to_le32(ctllo);
  1073	
  1074				set_desc_src_master(desc);
  1075				set_desc_src_master(desc);
  1076	
  1077				// Manage transfer list (xfer_list)
  1078				if (!first) {
  1079					first = desc;
  1080				} else {
  1081					write_desc_llp(prev, desc->vd.tx.phys | lms);
  1082					list_add_tail(&desc->xfer_list,
  1083						      &first->xfer_list);
  1084				}
  1085				prev = desc;
  1086				if (i == ((buf_len / period_len) - 1))
  1087					write_desc_llp(prev, first->vd.tx.phys | lms);
  1088	
  1089				total_len += xfer_len;
  1090	
  1091				// TODO: check if needed
  1092				set_desc_last(desc);
  1093			}
  1094			break;
  1095		default:
  1096			return NULL;
  1097		}
  1098	
  1099		if (unlikely(!first))
  1100			return NULL;
  1101	
  1102		return vchan_tx_prep(&chan->vc, &first->vd, flags);
  1103	
  1104	err_desc_get:
  1105		if (first)
  1106			axi_desc_put(first);
  1107	
  1108		return NULL;
  1109	}
  1110	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202008061813.FBTiezDX%25lkp%40intel.com.

--k+w/mQv8wyuph6w0
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--k+w/mQv8wyuph6w0--
