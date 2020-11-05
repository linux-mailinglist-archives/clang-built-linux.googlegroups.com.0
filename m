Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBIMNR76QKGQETQQ4C5A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb40.google.com (mail-yb1-xb40.google.com [IPv6:2607:f8b0:4864:20::b40])
	by mail.lfdr.de (Postfix) with ESMTPS id 56CCB2A7A9D
	for <lists+clang-built-linux@lfdr.de>; Thu,  5 Nov 2020 10:32:19 +0100 (CET)
Received: by mail-yb1-xb40.google.com with SMTP id w4sf934630ybq.21
        for <lists+clang-built-linux@lfdr.de>; Thu, 05 Nov 2020 01:32:19 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604568738; cv=pass;
        d=google.com; s=arc-20160816;
        b=lSHN22yZ0t1v+iRv9RuJA88jfNGZv9PIf0vcxjGRwD61gyV89Jfzg45N4Tgr66Il22
         gGbGL/BlChe463GBq6NdsX+KlNgn/t9VWg9IhKkwDn64fB+1uNyBvN4Mx5N5TW0wQq33
         Y5uuJZLHltHmedbC0r8RWbubC6Aw6QNir+Rtl3v7q8huF3kDfaH9k9vZ7Uh/QuOOl42x
         KkKtuSLpCE4PSH/M8rJ2nkqKkvYjnsKAacZKbXIotLlWIsh0hCEOH79Tvt7X0CgAyb+y
         +Kmn8DV9/NVLrtZBy7wu+yDj8Xsv1x9ne+AnA1jyVJlWgTn2HBv89TRHuBjxDVQJZ9Fx
         kRUA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=imZJY81jZzRpaKrfHBhN/gqGxkU5bXAUXOrmG24BnaE=;
        b=Ej3/PqmeE4i2pit6n9VPLT33FRIuNyPADCc6PxfK96Os4CfweCzBIYFMDJ/e7i0lpY
         8yIEboM4dQgZvOHvpvOQRQiqv8c6jJw0ZvpqW/gA4mmJPjRDPOpTysTgUMfQVbV85SCN
         8c6LeNlULD9fFFYghDwe9ZHswSt4ik5dJkONNJok2IvhGjPxbN/qHFfniYgHdHA0oylL
         6jTUaxvWf66DFHgxY8A1PWpeGii3aeNVguKQHqdSABcdS4hnjwu9MBjUEOx+cL9yphgP
         N8Lx/S6w+f2HkJypRxAFTTgw9YujhVQlIUm3L67WKrRXoQSWuR79SbEmgjKJE1SxnPai
         Ugbg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=imZJY81jZzRpaKrfHBhN/gqGxkU5bXAUXOrmG24BnaE=;
        b=Hsc5hnxC0vfX6jASZOKtCkQC+cB0cmmkQ+lbgQl1Kpf1yzNXKyzAQywh15AVbjc35h
         GVhqQD2b12ZTTRPheAIpJ9Y+Bpj0eEtNKPxOsLIwNumeCgXX0dxRxeLHPYwNDUNUZCV9
         +Icj3B2cYDoxsyk2nSKV9E4N81IlRKVEDCHgEEUOa5B8OgIpJpDWyG8b1yTUPLpf4CEQ
         rW9pqo0oZjMWeK5QYTD9fDo5JQrpfTSdSHVWFBx38/+9qh7j0ObCydMJFtQsWZIEcVjp
         51pWb7TdJvuLliCxogIAnXqQutmccvwcH3oAd1Tx6wYTZf7OKPKcshkfU2GNlDC+Utwm
         pGeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=imZJY81jZzRpaKrfHBhN/gqGxkU5bXAUXOrmG24BnaE=;
        b=Z63OyNPiYNAYaT30OILXdMy3X6ZysLnT2sISl19QTQ/HWZNSQ5zmmO6dXPwZwoeoSQ
         49QM2pJ4TttA1hPpGEP6Dfga2LHOhbfqfI9AfnJjZhbf9JsujanTu4jTvQJMkuke/kMB
         r9c5+t/OeVor0bo0qo2O2estDGTYgjgcwFwKKw3bP9QV5mH8LwVxtN5eeerdZGMv5Ahn
         opWLLLNKci0BRPTsFdU7QTY+e5Ng2kexeZDfXiTxIvlBO/G3D770rDpziZbxmR7dBTtM
         ZIal8Rc858SAHQnkS6Oo5w+ecgiSff3AqsxFpS6eT4NfG/t7vBQvvjil37VGS2MsKK+l
         xoww==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530ju4G+00BIbmAHg7GBfqttKrC5EyWeehoLgkFQnd3h+AePwEHo
	F4GuQm8VrxQkz4zyEupy5ik=
X-Google-Smtp-Source: ABdhPJzRjAaqonPvD9066Ea8CIr4xCywYMlU/AeIOV5TPU65dEyvtmNevQFZSUYWQG2f25K9uoqFBA==
X-Received: by 2002:a25:5702:: with SMTP id l2mr2382804ybb.184.1604568738124;
        Thu, 05 Nov 2020 01:32:18 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:e64d:: with SMTP id d74ls602556ybh.5.gmail; Thu, 05 Nov
 2020 01:32:17 -0800 (PST)
X-Received: by 2002:a25:d854:: with SMTP id p81mr2332801ybg.23.1604568737540;
        Thu, 05 Nov 2020 01:32:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604568737; cv=none;
        d=google.com; s=arc-20160816;
        b=D47R1Jie8rbYa1Q2GUmY764jyMY0TunJXPP194BJWWcrdBNNfCKRW/coZuf1JsBtoT
         V6zVvCzJ3+c3KOIZYKSqmoCGoLyq6y3qPOKkRBeybHLpciAy68JnoLeJOtBJ5uBWDSC1
         li2/r53eSUTWpozypLbouwJQJ53QMAYDLujQKdo8HNsGt4goe5EIgh6um48NnjeLsFVR
         7dCH9qI0PTWyGdYPpu2kfCp8oaonVdaYdeAY9a7XjZYWHKakzFp9Mh/OiVnr2kuzoN/M
         CjonJceDzKRszTqPkWMKZWWLt0VNC5UJToDHT7Gk6tJZGFMavgH9YmEe+Hhd0j3V2uOP
         izPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=vJCVaWVUP1wzjsKvrIZmpKaesos0qfnT0ol7Ehip0ho=;
        b=MLzPrp+TmgoOATWSjr/w2ZyS1Ox4ez4QnyI+xiFioejhUFLLGnunzFv8Xow1tjh90+
         mUudWRt60KTlAYEewmtXp31xgUIn2hcWnRu7EAwBCGsmOEb8yq2AxndhCnRUfN2fdYvU
         qHhAIXuYs2GZMkty5sqm8aB0EMksiVeG/mjg4Gqip1tB2KRC0HODSibnQfbYaOhPj5t+
         UvtjLxk1gl5YzFJmg8gWbENufbNNAfslEomfmNVNXPoLbV4kntLQDHjDQ3L1UCrSPX87
         SAtS8YlYGeaQJP4pG462PhHitPYtuQECN6fMeRJectr2JsrsL5fEV0D+Tdjp3SZ+aqYt
         8zYg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga18.intel.com (mga18.intel.com. [134.134.136.126])
        by gmr-mx.google.com with ESMTPS id t12si88477ybp.2.2020.11.05.01.32.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 Nov 2020 01:32:17 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted sender) client-ip=134.134.136.126;
IronPort-SDR: Ox2QQfrqz0CknbDfGErMw0Mq2WBidE6mDBY2Cu5eVYno+Azsb1L1yEfPdQdYWEODvmPn1irpYk
 z3gQTgKFVxAw==
X-IronPort-AV: E=McAfee;i="6000,8403,9795"; a="157133490"
X-IronPort-AV: E=Sophos;i="5.77,453,1596524400"; 
   d="gz'50?scan'50,208,50";a="157133490"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 05 Nov 2020 01:32:13 -0800
IronPort-SDR: gTa23zr3zHw3LICB6Zwk3Pc4GEJz1b9UTlz9U7H4L0XoXIITKBv7rwAUEPOZ48VSgzYf0PeamP
 GbcqMgv9Gy1w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,453,1596524400"; 
   d="gz'50?scan'50,208,50";a="354213259"
Received: from lkp-server02.sh.intel.com (HELO e61783667810) ([10.239.97.151])
  by fmsmga004.fm.intel.com with ESMTP; 05 Nov 2020 01:32:11 -0800
Received: from kbuild by e61783667810 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kabcm-0001Ir-Ki; Thu, 05 Nov 2020 09:32:08 +0000
Date: Thu, 5 Nov 2020 17:32:04 +0800
From: kernel test robot <lkp@intel.com>
To: Sia Jee Heng <jee.heng.sia@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	"Li, Yifan" <yifan2.li@intel.com>
Subject: [intel-linux-intel-lts:5.4/yocto 40/1142]
 drivers/dma/dw-axi-dmac/dw-axi-dmac-platform.c:1058:35: warning: variable
 'mem' is uninitialized when used here
Message-ID: <202011051759.cF5sJGtt-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="wac7ysb48OaltWcw"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.126 as permitted
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


--wac7ysb48OaltWcw
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://github.com/intel/linux-intel-lts.git 5.4/yocto
head:   eeb611e5394c56d45c5cc8f7dc484c9f19e93143
commit: 94e13c2880167751eb5cbbcb0e7be68ca83f0653 [40/1142] dmaengine: dw-axi-dma: support cyclic mode
config: x86_64-randconfig-a004-20201104 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 09ec07827b1128504457a93dee80b2ceee1af600)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        # https://github.com/intel/linux-intel-lts/commit/94e13c2880167751eb5cbbcb0e7be68ca83f0653
        git remote add intel-linux-intel-lts https://github.com/intel/linux-intel-lts.git
        git fetch --no-tags intel-linux-intel-lts 5.4/yocto
        git checkout 94e13c2880167751eb5cbbcb0e7be68ca83f0653
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202011051759.cF5sJGtt-lkp%40intel.com.

--wac7ysb48OaltWcw
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--wac7ysb48OaltWcw--
