Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBK4UW35QKGQEHDTPHMQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3c.google.com (mail-io1-xd3c.google.com [IPv6:2607:f8b0:4864:20::d3c])
	by mail.lfdr.de (Postfix) with ESMTPS id C9199278058
	for <lists+clang-built-linux@lfdr.de>; Fri, 25 Sep 2020 08:11:56 +0200 (CEST)
Received: by mail-io1-xd3c.google.com with SMTP id h8sf1171017ioa.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 24 Sep 2020 23:11:56 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1601014315; cv=pass;
        d=google.com; s=arc-20160816;
        b=GI7YngVmsj3qBwASI0h6SbH001FkGRNA6bCOPGeBhkvDT008A72lc9+Q67kzHIosk6
         y3jrN4GreRF9Lh2I/yHis4ZjCbM2ism2zwkBdP4R+ogHwNk/XfaHCuwSWNuim91Dt2ru
         F7hEWK5/UNv9zCSw1CvzrvM8VATAepQtcoumOQPLRGWkqX6Wkd6rm1G3KmHIfw/dl9aN
         iKjzBDFjIBDHcLtqPAdjXS7dO+1hJwzd0VMsCpeZK7f/n0tcK1LLeCTxTuI45vWAu+Ua
         h5hanDK7KE8LDBkCl67JxUXQ8ust36SacNYtisMuGr/k+Aeh8RVBqJPmbdJwgeQ5RCys
         zq/w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=qDCv/0rkGFY57Q57TXIV3nbBs7LGKHIp9C6qnfBBIhE=;
        b=KC1FoTVCCtluc33jWQK1il/ga9j53poKZmty05pkHI/gIb+R4cNTAx0KC2N8De4icn
         dfhNWwxMjp7AsoSEqUTkVmjSCE7Pr40cYc5HCoOgQ0jv25RVOEOG6R36azkaluv/QUHz
         jkX8EYOH3tmui9GLYHK6jtQD2ZE/OPT8YZONhgAjtdbh94n1bDw08snlkMHCq5xTIq1V
         vvVRPqsu1m2RgQZ+H/MVT6GAmvznIUcwcgUvmgYpzs4ToLRYcienwj8lNQDAP2R2iqyo
         WSIhYPXrNtpKcKHpAxccnB819hLCmf22M7TDdt2ueCOzfYlUqAIzRhIXhSxol8pzYIzN
         BDXQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qDCv/0rkGFY57Q57TXIV3nbBs7LGKHIp9C6qnfBBIhE=;
        b=ruugOFJr2GFxxgWbL7xi/vKuJY2xO3N01rEtggfDcLfGyOwyxSaZEcRirURA1OrMnD
         fTR2yTh07QtWzEf6wtjeUZkqFSNn8qai5EQGMtF0Dj3q+u5F+6IIfTuCGHFVQ4wRJKyO
         fV/r2rvmU+plxSbAFjTETnJinmBKRk7WrAQGXPD8qdxs8z8mhSPOIEEd8RgQRM0ydizD
         2inGStGhAnPWyM3YaagIzUFfMbswOMZDvhrQpc7Ad2/SolkcIo5lqaIdhP6JOFR/8CE9
         CuJ9jkJcetJIqfSzhtAxgdzBlAnrMDl60FJkrwTtoi1Hw9tlwnKqu/bjf2nR3iRGfwkW
         +cqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qDCv/0rkGFY57Q57TXIV3nbBs7LGKHIp9C6qnfBBIhE=;
        b=TjmJXZ/WulcmoIlo1JiuwZJq3EL8e8a5PqkeAlcpJATYI7zbpeuXEdg9UE1ljfRNTU
         m20qE6va2aEWMeWbhCGirs0LL7vMb2XFpDLYybPq8KoA7bu8X4IVKVnpCsWucYWJRi3e
         u0XJRWiBdqXXH0glzXEAjwyKT/XsgBA6vNJgMdN4NfckI2IwTavz9MoTF6MOthUs9dyi
         zySj0Q+i+ZK10i5M9op379ViHPY6DD5FWYlrufTU6M5ZnfptBlkiVbwjTlkgixhjwoPq
         Cxn/3KLN/cCT+L73hXI3l0PAbWdKpr9RMHG5bWUOh5zH1iMNWpCVZtmsR87iJ7ak0fjX
         GN2Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532KEzXm9PZMWXfkKdTXK1L0Jc2DG+NF8d5/JFM1EQj7pWEo9t9l
	9yt+DtIuAqnNks1Xkmf9Wz8=
X-Google-Smtp-Source: ABdhPJwqiAyBCmN/NVZFU+p9ZImgSYTuU09zCO+qpJBP798hqvSXR2IzASQ158go80sDQRlTkvYPHA==
X-Received: by 2002:a05:6638:24d1:: with SMTP id y17mr2054742jat.3.1601014315285;
        Thu, 24 Sep 2020 23:11:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:5807:: with SMTP id m7ls416043ilb.3.gmail; Thu, 24 Sep
 2020 23:11:54 -0700 (PDT)
X-Received: by 2002:a92:8708:: with SMTP id m8mr2003831ild.19.1601014314787;
        Thu, 24 Sep 2020 23:11:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1601014314; cv=none;
        d=google.com; s=arc-20160816;
        b=GoIPTFAa32RyCBIwjRpChM2/9lXVhEhFzT9CwfeZDqHWI+2aSpvwwaxmGhEk6nKkLG
         KFqGU4fV5jb2P+gcLo8caf2bsUxzP61gHS0uI1VNyR360dpGRQlpCvXfJgfHCUkA7zfl
         f09PeKYZhCxoKRI2niVgBOKH56tMnM3e808gULgBNrQK22LBT0/Zrd7xIjy3avJwJOGD
         G1UWpQWVQUn6ZHXoofW/YkXfojtG6+OWrJ8ArXN6o/Cy++NBNHjB0Ot1Gi4pdypQ98jt
         ijNgHEncu9UGJLi77TdY0x1tW4SbMQqaSO24IiWjzuSRI5+oHaG5rU7aOlOzZ6TWLTZP
         Zb9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=deanl6N+yY4IwFQAg/KySgGyYxZDR4X+1J3A1STrVzc=;
        b=A7zQx91P1MkUlcWh7M/6XKOVr+hVjK794LwZlnwLeDH8AeuLJ2fw4DHNVG1SFJwzXR
         dRG2CTXOVMsK+GLRTciRbwj4dunmsPg3RTgJu6eoSYFZEJHItgDKf88JfO3MjE8kqrAa
         PEHi5e7Rolp2iG9HRt2pU/Zl4BQxFpGF+LVcWcqYSBJbPAfscxsv84XZuuamLMfvm1hw
         +/3/q1T24klxBt3nNRoSBlWWDgPYgGDiadIZdyixkkuZxoXGJHEjXcJkCmKyanVKiz5r
         5hdt4N+Y1tzbz9on0k4EYM4SP7Q1HQnIdUNr02UjJ7ISl8TOAE7YmuNywglsr4bVH+KI
         Oh5g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga07.intel.com (mga07.intel.com. [134.134.136.100])
        by gmr-mx.google.com with ESMTPS id n86si111292ild.4.2020.09.24.23.11.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 24 Sep 2020 23:11:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted sender) client-ip=134.134.136.100;
IronPort-SDR: DiQ8w9zLquS86bbjU4oRA/eruKKDuWAKjq+KAFx1FA/d96POipWkiPPiIPRWO9oHoKFFULDivy
 D5oPym6eRcig==
X-IronPort-AV: E=McAfee;i="6000,8403,9754"; a="225592620"
X-IronPort-AV: E=Sophos;i="5.77,300,1596524400"; 
   d="gz'50?scan'50,208,50";a="225592620"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 24 Sep 2020 23:11:53 -0700
IronPort-SDR: APH9tdfO5NRV9RlDJXVYdHeC4YmBRRJwNtIcV3TOPE99o78YqxOQWLCjfzE1GznKXJrYJ548p+
 LRpxQaSDGoqA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,301,1596524400"; 
   d="gz'50?scan'50,208,50";a="383371917"
Received: from lkp-server01.sh.intel.com (HELO bb5857c652c6) ([10.239.97.150])
  by orsmga001.jf.intel.com with ESMTP; 24 Sep 2020 23:11:51 -0700
Received: from kbuild by bb5857c652c6 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kLgxT-00003e-7Y; Fri, 25 Sep 2020 06:11:51 +0000
Date: Fri, 25 Sep 2020 14:10:54 +0800
From: kernel test robot <lkp@intel.com>
To: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH 14/18] bus: mhi: core: Introduce debugfs entries for MHI
Message-ID: <202009251451.kjWEptdi%lkp@intel.com>
References: <20200921160815.28071-16-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="ZPt4rx8FFjLCG7dd"
Content-Disposition: inline
In-Reply-To: <20200921160815.28071-16-manivannan.sadhasivam@linaro.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.100 as permitted
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


--ZPt4rx8FFjLCG7dd
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Manivannan,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on char-misc/char-misc-testing]
[also build test WARNING on staging/staging-testing linux/master linus/master v5.9-rc6]
[cannot apply to next-20200924]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Manivannan-Sadhasivam/MHI-changes-for-v5-10/20200922-001434
base:   https://git.kernel.org/pub/scm/linux/kernel/git/gregkh/char-misc.git 8fd0e2a6df262539eaa28b0a2364cca10d1dc662
config: arm-randconfig-r014-20200925 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project c32e69b2ce7abfb151a87ba363ac9e25abf7d417)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install arm cross compiling tool for clang build
        # apt-get install binutils-arm-linux-gnueabi
        # https://github.com/0day-ci/linux/commit/27f290c3151e7f043e2a1c0faa7e42afd081e267
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Manivannan-Sadhasivam/MHI-changes-for-v5-10/20200922-001434
        git checkout 27f290c3151e7f043e2a1c0faa7e42afd081e267
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/bus/mhi/core/debugfs.c:75:7: warning: format specifies type 'unsigned long long' but the argument has type 'dma_addr_t' (aka 'unsigned int') [-Wformat]
                              mhi_event->db_cfg.db_val);
                              ^~~~~~~~~~~~~~~~~~~~~~~~
   drivers/bus/mhi/core/debugfs.c:123:7: warning: format specifies type 'unsigned long long' but the argument has type 'dma_addr_t' (aka 'unsigned int') [-Wformat]
                              mhi_chan->db_cfg.db_val);
                              ^~~~~~~~~~~~~~~~~~~~~~~
   2 warnings generated.

vim +75 drivers/bus/mhi/core/debugfs.c

    37	
    38	static int mhi_debugfs_events_show(struct seq_file *m, void *d)
    39	{
    40		struct mhi_controller *mhi_cntrl = m->private;
    41		struct mhi_event *mhi_event;
    42		struct mhi_event_ctxt *er_ctxt;
    43		int i;
    44	
    45		if (!mhi_is_active(mhi_cntrl)) {
    46			seq_puts(m, "Device not ready\n");
    47			return -ENODEV;
    48		}
    49	
    50		er_ctxt = mhi_cntrl->mhi_ctxt->er_ctxt;
    51		mhi_event = mhi_cntrl->mhi_event;
    52		for (i = 0; i < mhi_cntrl->total_ev_rings;
    53							i++, er_ctxt++, mhi_event++) {
    54			struct mhi_ring *ring = &mhi_event->ring;
    55	
    56			if (mhi_event->offload_ev) {
    57				seq_printf(m, "Index: %d is an offload event ring\n",
    58					   i);
    59				continue;
    60			}
    61	
    62			seq_printf(m, "Index: %d intmod count: %lu time: %lu",
    63				   i, (er_ctxt->intmod & EV_CTX_INTMODC_MASK) >>
    64				   EV_CTX_INTMODC_SHIFT,
    65				   (er_ctxt->intmod & EV_CTX_INTMODT_MASK) >>
    66				   EV_CTX_INTMODT_SHIFT);
    67	
    68			seq_printf(m, " base: 0x%0llx len: 0x%llx", er_ctxt->rbase,
    69				   er_ctxt->rlen);
    70	
    71			seq_printf(m, " rp: 0x%llx wp: 0x%llx", er_ctxt->rp,
    72				   er_ctxt->wp);
    73	
    74			seq_printf(m, " local rp: 0x%llx db: 0x%llx\n", (u64)ring->rp,
  > 75				   mhi_event->db_cfg.db_val);
    76		}
    77	
    78		return 0;
    79	}
    80	

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202009251451.kjWEptdi%25lkp%40intel.com.

--ZPt4rx8FFjLCG7dd
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
+9PRgABEAQA=

--ZPt4rx8FFjLCG7dd--
