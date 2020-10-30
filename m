Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBGXV6D6AKGQE7ZDZTIY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43b.google.com (mail-pf1-x43b.google.com [IPv6:2607:f8b0:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id 666C72A0AB8
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Oct 2020 17:09:00 +0100 (CET)
Received: by mail-pf1-x43b.google.com with SMTP id j207sf5244749pfd.13
        for <lists+clang-built-linux@lfdr.de>; Fri, 30 Oct 2020 09:09:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1604074139; cv=pass;
        d=google.com; s=arc-20160816;
        b=OrGoQHUjEc46ZVqgvfK2vrcgU+G2oBxz5kQo7vuIrwxbCz3gStlOSvIPLKKGGf7jIk
         8OUV22OMYkoRu5v/WkAgbn6I7rH3UsNKdZvNUyMdA4GpvDQKa6BiYAsUnS1e3JEtn9Ek
         /bz3+sZ6/mR2fFPu7XzQ4Cbma6EVKhZwtPrSOKab4ew4LkaP8geigzlm2Zy2L+NZ+cjm
         FmxHreFjz5gSr7cFwqvZhoVqwOqEW/UE6Tn2qTZaGs5A+OSuYilVlYAOGR4HG/yrj4+m
         1j4GQOmBvNUB7OGsYZhfHqK2ExV089FuuuXnvOaI9Pc5Nw7JH//+4mH37c8S040E/X/R
         x/xw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=/7D89kxySGfm2vJUcGauTFw1jYRU6enPo8ggLvR8f70=;
        b=tJm9owajdM1UbgteChlaUH2r+6qG/h1d62o03BquxdinAayfntQupQeqQ2aUuXp2hQ
         g9VDkXMBy5oZLxmF2FsEBlcBnJ46Ck09MXjsn+i0TKzTC0kEHiQlC+5YK5Ux1vkDkl8a
         1io7txLbyZfOU3C/xixmRwUdLpO8H3+Jdshwek1STc3BN6YOf2jqpbUTe7sZoZk2sAq1
         xVRwNhLrbdO/DAqyqQWGtgQrhssAJZ/o+Ups+Rpjk+AvVBhqAXPA3N0klVUakDCxowKY
         KIIneJtip0Ouf/WO3rXOTot8RWT+HNF15TnXnOpCweBpQ+wVrmK2SM5RWDz7uH2fXW9A
         QUQg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/7D89kxySGfm2vJUcGauTFw1jYRU6enPo8ggLvR8f70=;
        b=TlxYPcsf2WH4zOvSN4fLQ4zAgwcv6wXQJMbr7Cm5sYXJqjRrSkp1K/1S5iZWAi7Lo4
         KvUSkj5q/uKOMHtUrJOWin2HEOecj5iGzZkhcKoMFvGrQBW7YLt84S1G/W8F2jIuoNK7
         N8Mhb/4vjPl3ZLDp6OaruPiLsivd0xo0Nb9qIByuSQjTi4UsYd17GBlK/NZ5KR5WI1eW
         pCo4L/V8DpXLIJvXSHu9C5hAtICWUcgUC3PzRoq+BlwbLiG/Rdtx4GDYEW4h+E4guDcy
         pqJvtmwm+F8xrD8IZX2DBNPh7sGMacDbrsIwzcqrFi5OyOIqZa3ArD1bN4pWmWl2sl/H
         vrFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/7D89kxySGfm2vJUcGauTFw1jYRU6enPo8ggLvR8f70=;
        b=H5mqsxfwXFTlabYwePUNd4ckVGq7wPU2MrJyXicHBa/tcuul7nH7ib20tSz1Y7Sueh
         40jbnNTmTTUHolkMoBkb/GaCil5tvABXV0CioUibxv8m98ptxECQ9dCFWcFLK7+AWzwH
         l/4E74eD6Ypfj1oB4Wp5P6WDbnIfzUSHdkfrd7SSPyeBLu+WjIHQa811fhv+GweRLceJ
         uCN558n5f2rLY06gaqIRqMXCdUmPsjhTCcYPC6/fFy3rgeFjBiigHB1c2Q/Re6eWvPLR
         I4T1UriANoS+LE/hd5iayCpqNX41BNUvLSRbDup4lqLpQs+ToWa5cRzeQYnNTaJYkzNP
         2LtQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530/jFWb8JxwyHJtZ0ctjkWM936yD9q6uFFkKf0C4wjP0Cj0Uul3
	8hNaXZgpMtDKtKn1glcFVt4=
X-Google-Smtp-Source: ABdhPJy+T1+NstBu+5Peg000gq/m3VQ9fwNKottDfib52OwaSxAsTosgBRs2dx03B/tXLKiDtDQvzA==
X-Received: by 2002:aa7:9ac3:0:b029:158:db9f:c541 with SMTP id x3-20020aa79ac30000b0290158db9fc541mr9742067pfp.34.1604074139019;
        Fri, 30 Oct 2020 09:08:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:8f47:: with SMTP id r7ls2452649pgn.8.gmail; Fri, 30 Oct
 2020 09:08:58 -0700 (PDT)
X-Received: by 2002:a63:b819:: with SMTP id p25mr2815304pge.282.1604074138230;
        Fri, 30 Oct 2020 09:08:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1604074138; cv=none;
        d=google.com; s=arc-20160816;
        b=CHHmKeAQ9B8qALvmWc+2b46GdTkWPd+FC9DVtWM60fT2PwqvqPLs1xK+rbwN47tgdh
         Xy/r6Q8YuxGbmKob1UCqtu8TEYpEdKFzKJZX6XulcBaQrjPXk25ZFPPGXcZbYEKMJQGF
         pL4XIwwPq//kvpGTH3/yuUSthgGgsU+ijuLt3do7Dd6L3CmFCdUPNOCNzXtFNaXJMER1
         E+sffZQBOdrBimTAcYoJ73bcbxyo5OMd0Od/DS8hArTumg3GAUAn+NxwfMc1AeK8Xf9a
         vfzSaqlo9whbAGM8tw6r+72QJf3jDbyN+ZJmNT5KSrUjcUgJIkXRymkw3L8/w+KM+sD2
         VaIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=TSRvr1m8LTAo3rL9r5/DlRw85RTJ32aq+eazpHzzbdA=;
        b=0MMezx4wIlecoL+7rS7tf4hJWliZOa46lT+dhYT1ELxtA/eQWO3Vns/p6uY6YFFSmY
         B9foiGrZOJqwz+QvYI4PG3mDBFu3skd95eK6/FRqvV5puDYc1qnRSdVK5LpI+gSKYLCh
         cofOmIlhsg4sEsvYQCC6fIHDBGcAeCkhdC4wP9SoxZVIU0fb61jdwx4A0aCa78YOoxLV
         uRtSUyr1n6jWZvX7LNikJcB+lRAVRFmvgVKFbLQUVLOmWxveutlpb5dLKK4ZeuweETpL
         KSWnAh/HWvoY4HX6iq4o/j6Mu1kwCS1h7t75iIwUB+ORgnYPq4+BCYYtp22bl286aiBz
         g/9Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga04.intel.com (mga04.intel.com. [192.55.52.120])
        by gmr-mx.google.com with ESMTPS id cl2si464992pjb.0.2020.10.30.09.08.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Oct 2020 09:08:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) client-ip=192.55.52.120;
IronPort-SDR: ejyTRvGTrPcKUTJUR82ka3EOP3wcRxA4FTfpQjW9dLT0QVhBTmFFPjVQTQbnCbgCE7DoYddQKR
 dIm/k7eVhg1A==
X-IronPort-AV: E=McAfee;i="6000,8403,9790"; a="166043267"
X-IronPort-AV: E=Sophos;i="5.77,433,1596524400"; 
   d="gz'50?scan'50,208,50";a="166043267"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga002.jf.intel.com ([10.7.209.21])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 30 Oct 2020 09:08:56 -0700
IronPort-SDR: ymsPomoap2tnez+xYzSCztr2KMvlfav7uykTWso08dqIqLgrw1wt2Gzub/Zyd43/FrZM/cQk1/
 C4XXWknH4Rqw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,433,1596524400"; 
   d="gz'50?scan'50,208,50";a="335465519"
Received: from lkp-server02.sh.intel.com (HELO fcc9f8859912) ([10.239.97.151])
  by orsmga002.jf.intel.com with ESMTP; 30 Oct 2020 09:08:53 -0700
Received: from kbuild by fcc9f8859912 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kYWxQ-0000D3-Py; Fri, 30 Oct 2020 16:08:52 +0000
Date: Sat, 31 Oct 2020 00:07:57 +0800
From: kernel test robot <lkp@intel.com>
To: Martin Kaiser <martin@kaiser.cx>, Jassi Brar <jassisinghbrar@gmail.com>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@st.com>,
	Fabien Dessenne <fabien.dessenne@st.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-kernel@vger.kernel.org, Martin Kaiser <martin@kaiser.cx>
Subject: Re: [PATCH 1/2] mailbox: stm32-ipcc: add COMPILE_TEST dependency
Message-ID: <202010310011.DzdBmBpc-lkp@intel.com>
References: <20201024133154.22767-1-martin@kaiser.cx>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="EeQfGwPcQSOJBaQU"
Content-Disposition: inline
In-Reply-To: <20201024133154.22767-1-martin@kaiser.cx>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted
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


--EeQfGwPcQSOJBaQU
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Martin,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on fujitsu-integration/mailbox-for-next]
[also build test WARNING on stm32/stm32-next linus/master linux/master v5.10-rc1 next-20201030]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Martin-Kaiser/mailbox-stm32-ipcc-add-COMPILE_TEST-dependency/20201024-220512
base:   https://git.linaro.org/landing-teams/working/fujitsu/integration.git mailbox-for-next
config: x86_64-randconfig-r023-20201030 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 772aaa602383cf82795572ebcd86b0e660f3579f)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        # https://github.com/0day-ci/linux/commit/6e22aaac25dcdd4c098c57d29363fa2c204e411e
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Martin-Kaiser/mailbox-stm32-ipcc-add-COMPILE_TEST-dependency/20201024-220512
        git checkout 6e22aaac25dcdd4c098c57d29363fa2c204e411e
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/mailbox/stm32-ipcc.c:147:22: warning: cast to smaller integer type 'unsigned int' from 'void *' [-Wvoid-pointer-to-int-cast]
           unsigned int chan = (unsigned int)link->con_priv;
                               ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/mailbox/stm32-ipcc.c:166:22: warning: cast to smaller integer type 'unsigned int' from 'void *' [-Wvoid-pointer-to-int-cast]
           unsigned int chan = (unsigned int)link->con_priv;
                               ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/mailbox/stm32-ipcc.c:186:22: warning: cast to smaller integer type 'unsigned int' from 'void *' [-Wvoid-pointer-to-int-cast]
           unsigned int chan = (unsigned int)link->con_priv;
                               ^~~~~~~~~~~~~~~~~~~~~~~~~~~~
>> drivers/mailbox/stm32-ipcc.c:310:40: warning: cast to 'void *' from smaller integer type 'unsigned int' [-Wint-to-void-pointer-cast]
                   ipcc->controller.chans[i].con_priv = (void *)i;
                                                        ^~~~~~~~~
   4 warnings generated.

vim +147 drivers/mailbox/stm32-ipcc.c

ffbded7dee97563 Fabien Dessenne  2018-05-31  144  
ffbded7dee97563 Fabien Dessenne  2018-05-31  145  static int stm32_ipcc_send_data(struct mbox_chan *link, void *data)
ffbded7dee97563 Fabien Dessenne  2018-05-31  146  {
ffbded7dee97563 Fabien Dessenne  2018-05-31 @147  	unsigned int chan = (unsigned int)link->con_priv;
ffbded7dee97563 Fabien Dessenne  2018-05-31  148  	struct stm32_ipcc *ipcc = container_of(link->mbox, struct stm32_ipcc,
ffbded7dee97563 Fabien Dessenne  2018-05-31  149  					       controller);
ffbded7dee97563 Fabien Dessenne  2018-05-31  150  
ffbded7dee97563 Fabien Dessenne  2018-05-31  151  	dev_dbg(ipcc->controller.dev, "%s: chan:%d\n", __func__, chan);
ffbded7dee97563 Fabien Dessenne  2018-05-31  152  
ffbded7dee97563 Fabien Dessenne  2018-05-31  153  	/* set channel n occupied */
dba9a3dfe912dc4 Arnaud Pouliquen 2019-05-22  154  	stm32_ipcc_set_bits(&ipcc->lock, ipcc->reg_proc + IPCC_XSCR,
dba9a3dfe912dc4 Arnaud Pouliquen 2019-05-22  155  			    TX_BIT_CHAN(chan));
ffbded7dee97563 Fabien Dessenne  2018-05-31  156  
ffbded7dee97563 Fabien Dessenne  2018-05-31  157  	/* unmask 'tx channel free' interrupt */
dba9a3dfe912dc4 Arnaud Pouliquen 2019-05-22  158  	stm32_ipcc_clr_bits(&ipcc->lock, ipcc->reg_proc + IPCC_XMR,
dba9a3dfe912dc4 Arnaud Pouliquen 2019-05-22  159  			    TX_BIT_CHAN(chan));
ffbded7dee97563 Fabien Dessenne  2018-05-31  160  
ffbded7dee97563 Fabien Dessenne  2018-05-31  161  	return 0;
ffbded7dee97563 Fabien Dessenne  2018-05-31  162  }
ffbded7dee97563 Fabien Dessenne  2018-05-31  163  
ffbded7dee97563 Fabien Dessenne  2018-05-31  164  static int stm32_ipcc_startup(struct mbox_chan *link)
ffbded7dee97563 Fabien Dessenne  2018-05-31  165  {
ffbded7dee97563 Fabien Dessenne  2018-05-31  166  	unsigned int chan = (unsigned int)link->con_priv;
ffbded7dee97563 Fabien Dessenne  2018-05-31  167  	struct stm32_ipcc *ipcc = container_of(link->mbox, struct stm32_ipcc,
ffbded7dee97563 Fabien Dessenne  2018-05-31  168  					       controller);
ffbded7dee97563 Fabien Dessenne  2018-05-31  169  	int ret;
ffbded7dee97563 Fabien Dessenne  2018-05-31  170  
ffbded7dee97563 Fabien Dessenne  2018-05-31  171  	ret = clk_prepare_enable(ipcc->clk);
ffbded7dee97563 Fabien Dessenne  2018-05-31  172  	if (ret) {
ffbded7dee97563 Fabien Dessenne  2018-05-31  173  		dev_err(ipcc->controller.dev, "can not enable the clock\n");
ffbded7dee97563 Fabien Dessenne  2018-05-31  174  		return ret;
ffbded7dee97563 Fabien Dessenne  2018-05-31  175  	}
ffbded7dee97563 Fabien Dessenne  2018-05-31  176  
ffbded7dee97563 Fabien Dessenne  2018-05-31  177  	/* unmask 'rx channel occupied' interrupt */
dba9a3dfe912dc4 Arnaud Pouliquen 2019-05-22  178  	stm32_ipcc_clr_bits(&ipcc->lock, ipcc->reg_proc + IPCC_XMR,
dba9a3dfe912dc4 Arnaud Pouliquen 2019-05-22  179  			    RX_BIT_CHAN(chan));
ffbded7dee97563 Fabien Dessenne  2018-05-31  180  
ffbded7dee97563 Fabien Dessenne  2018-05-31  181  	return 0;
ffbded7dee97563 Fabien Dessenne  2018-05-31  182  }
ffbded7dee97563 Fabien Dessenne  2018-05-31  183  
ffbded7dee97563 Fabien Dessenne  2018-05-31  184  static void stm32_ipcc_shutdown(struct mbox_chan *link)
ffbded7dee97563 Fabien Dessenne  2018-05-31  185  {
ffbded7dee97563 Fabien Dessenne  2018-05-31  186  	unsigned int chan = (unsigned int)link->con_priv;
ffbded7dee97563 Fabien Dessenne  2018-05-31  187  	struct stm32_ipcc *ipcc = container_of(link->mbox, struct stm32_ipcc,
ffbded7dee97563 Fabien Dessenne  2018-05-31  188  					       controller);
ffbded7dee97563 Fabien Dessenne  2018-05-31  189  
ffbded7dee97563 Fabien Dessenne  2018-05-31  190  	/* mask rx/tx interrupt */
dba9a3dfe912dc4 Arnaud Pouliquen 2019-05-22  191  	stm32_ipcc_set_bits(&ipcc->lock, ipcc->reg_proc + IPCC_XMR,
ffbded7dee97563 Fabien Dessenne  2018-05-31  192  			    RX_BIT_CHAN(chan) | TX_BIT_CHAN(chan));
ffbded7dee97563 Fabien Dessenne  2018-05-31  193  
ffbded7dee97563 Fabien Dessenne  2018-05-31  194  	clk_disable_unprepare(ipcc->clk);
ffbded7dee97563 Fabien Dessenne  2018-05-31  195  }
ffbded7dee97563 Fabien Dessenne  2018-05-31  196  
ffbded7dee97563 Fabien Dessenne  2018-05-31  197  static const struct mbox_chan_ops stm32_ipcc_ops = {
ffbded7dee97563 Fabien Dessenne  2018-05-31  198  	.send_data	= stm32_ipcc_send_data,
ffbded7dee97563 Fabien Dessenne  2018-05-31  199  	.startup	= stm32_ipcc_startup,
ffbded7dee97563 Fabien Dessenne  2018-05-31  200  	.shutdown	= stm32_ipcc_shutdown,
ffbded7dee97563 Fabien Dessenne  2018-05-31  201  };
ffbded7dee97563 Fabien Dessenne  2018-05-31  202  
ffbded7dee97563 Fabien Dessenne  2018-05-31  203  static int stm32_ipcc_probe(struct platform_device *pdev)
ffbded7dee97563 Fabien Dessenne  2018-05-31  204  {
ffbded7dee97563 Fabien Dessenne  2018-05-31  205  	struct device *dev = &pdev->dev;
ffbded7dee97563 Fabien Dessenne  2018-05-31  206  	struct device_node *np = dev->of_node;
ffbded7dee97563 Fabien Dessenne  2018-05-31  207  	struct stm32_ipcc *ipcc;
ffbded7dee97563 Fabien Dessenne  2018-05-31  208  	struct resource *res;
ffbded7dee97563 Fabien Dessenne  2018-05-31  209  	unsigned int i;
ffbded7dee97563 Fabien Dessenne  2018-05-31  210  	int ret;
ffbded7dee97563 Fabien Dessenne  2018-05-31  211  	u32 ip_ver;
ffbded7dee97563 Fabien Dessenne  2018-05-31  212  	static const char * const irq_name[] = {"rx", "tx"};
ffbded7dee97563 Fabien Dessenne  2018-05-31  213  	irq_handler_t irq_thread[] = {stm32_ipcc_rx_irq, stm32_ipcc_tx_irq};
ffbded7dee97563 Fabien Dessenne  2018-05-31  214  
ffbded7dee97563 Fabien Dessenne  2018-05-31  215  	if (!np) {
ffbded7dee97563 Fabien Dessenne  2018-05-31  216  		dev_err(dev, "No DT found\n");
ffbded7dee97563 Fabien Dessenne  2018-05-31  217  		return -ENODEV;
ffbded7dee97563 Fabien Dessenne  2018-05-31  218  	}
ffbded7dee97563 Fabien Dessenne  2018-05-31  219  
ffbded7dee97563 Fabien Dessenne  2018-05-31  220  	ipcc = devm_kzalloc(dev, sizeof(*ipcc), GFP_KERNEL);
ffbded7dee97563 Fabien Dessenne  2018-05-31  221  	if (!ipcc)
ffbded7dee97563 Fabien Dessenne  2018-05-31  222  		return -ENOMEM;
ffbded7dee97563 Fabien Dessenne  2018-05-31  223  
dba9a3dfe912dc4 Arnaud Pouliquen 2019-05-22  224  	spin_lock_init(&ipcc->lock);
dba9a3dfe912dc4 Arnaud Pouliquen 2019-05-22  225  
ffbded7dee97563 Fabien Dessenne  2018-05-31  226  	/* proc_id */
ffbded7dee97563 Fabien Dessenne  2018-05-31  227  	if (of_property_read_u32(np, "st,proc-id", &ipcc->proc_id)) {
ffbded7dee97563 Fabien Dessenne  2018-05-31  228  		dev_err(dev, "Missing st,proc-id\n");
ffbded7dee97563 Fabien Dessenne  2018-05-31  229  		return -ENODEV;
ffbded7dee97563 Fabien Dessenne  2018-05-31  230  	}
ffbded7dee97563 Fabien Dessenne  2018-05-31  231  
ffbded7dee97563 Fabien Dessenne  2018-05-31  232  	if (ipcc->proc_id >= STM32_MAX_PROCS) {
ffbded7dee97563 Fabien Dessenne  2018-05-31  233  		dev_err(dev, "Invalid proc_id (%d)\n", ipcc->proc_id);
ffbded7dee97563 Fabien Dessenne  2018-05-31  234  		return -EINVAL;
ffbded7dee97563 Fabien Dessenne  2018-05-31  235  	}
ffbded7dee97563 Fabien Dessenne  2018-05-31  236  
ffbded7dee97563 Fabien Dessenne  2018-05-31  237  	/* regs */
ffbded7dee97563 Fabien Dessenne  2018-05-31  238  	res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
ffbded7dee97563 Fabien Dessenne  2018-05-31  239  	ipcc->reg_base = devm_ioremap_resource(dev, res);
ffbded7dee97563 Fabien Dessenne  2018-05-31  240  	if (IS_ERR(ipcc->reg_base))
ffbded7dee97563 Fabien Dessenne  2018-05-31  241  		return PTR_ERR(ipcc->reg_base);
ffbded7dee97563 Fabien Dessenne  2018-05-31  242  
ffbded7dee97563 Fabien Dessenne  2018-05-31  243  	ipcc->reg_proc = ipcc->reg_base + ipcc->proc_id * IPCC_PROC_OFFST;
ffbded7dee97563 Fabien Dessenne  2018-05-31  244  
ffbded7dee97563 Fabien Dessenne  2018-05-31  245  	/* clock */
ffbded7dee97563 Fabien Dessenne  2018-05-31  246  	ipcc->clk = devm_clk_get(dev, NULL);
ffbded7dee97563 Fabien Dessenne  2018-05-31  247  	if (IS_ERR(ipcc->clk))
ffbded7dee97563 Fabien Dessenne  2018-05-31  248  		return PTR_ERR(ipcc->clk);
ffbded7dee97563 Fabien Dessenne  2018-05-31  249  
ffbded7dee97563 Fabien Dessenne  2018-05-31  250  	ret = clk_prepare_enable(ipcc->clk);
ffbded7dee97563 Fabien Dessenne  2018-05-31  251  	if (ret) {
ffbded7dee97563 Fabien Dessenne  2018-05-31  252  		dev_err(dev, "can not enable the clock\n");
ffbded7dee97563 Fabien Dessenne  2018-05-31  253  		return ret;
ffbded7dee97563 Fabien Dessenne  2018-05-31  254  	}
ffbded7dee97563 Fabien Dessenne  2018-05-31  255  
ffbded7dee97563 Fabien Dessenne  2018-05-31  256  	/* irq */
ffbded7dee97563 Fabien Dessenne  2018-05-31  257  	for (i = 0; i < IPCC_IRQ_NUM; i++) {
68a1c8485cf8373 Fabien Dessenne  2019-04-24  258  		ipcc->irqs[i] = platform_get_irq_byname(pdev, irq_name[i]);
ffbded7dee97563 Fabien Dessenne  2018-05-31  259  		if (ipcc->irqs[i] < 0) {
68a1c8485cf8373 Fabien Dessenne  2019-04-24  260  			if (ipcc->irqs[i] != -EPROBE_DEFER)
68a1c8485cf8373 Fabien Dessenne  2019-04-24  261  				dev_err(dev, "no IRQ specified %s\n",
68a1c8485cf8373 Fabien Dessenne  2019-04-24  262  					irq_name[i]);
ffbded7dee97563 Fabien Dessenne  2018-05-31  263  			ret = ipcc->irqs[i];
ffbded7dee97563 Fabien Dessenne  2018-05-31  264  			goto err_clk;
ffbded7dee97563 Fabien Dessenne  2018-05-31  265  		}
ffbded7dee97563 Fabien Dessenne  2018-05-31  266  
ffbded7dee97563 Fabien Dessenne  2018-05-31  267  		ret = devm_request_threaded_irq(dev, ipcc->irqs[i], NULL,
ffbded7dee97563 Fabien Dessenne  2018-05-31  268  						irq_thread[i], IRQF_ONESHOT,
ffbded7dee97563 Fabien Dessenne  2018-05-31  269  						dev_name(dev), ipcc);
ffbded7dee97563 Fabien Dessenne  2018-05-31  270  		if (ret) {
ffbded7dee97563 Fabien Dessenne  2018-05-31  271  			dev_err(dev, "failed to request irq %d (%d)\n", i, ret);
ffbded7dee97563 Fabien Dessenne  2018-05-31  272  			goto err_clk;
ffbded7dee97563 Fabien Dessenne  2018-05-31  273  		}
ffbded7dee97563 Fabien Dessenne  2018-05-31  274  	}
ffbded7dee97563 Fabien Dessenne  2018-05-31  275  
ffbded7dee97563 Fabien Dessenne  2018-05-31  276  	/* mask and enable rx/tx irq */
dba9a3dfe912dc4 Arnaud Pouliquen 2019-05-22  277  	stm32_ipcc_set_bits(&ipcc->lock, ipcc->reg_proc + IPCC_XMR,
ffbded7dee97563 Fabien Dessenne  2018-05-31  278  			    RX_BIT_MASK | TX_BIT_MASK);
dba9a3dfe912dc4 Arnaud Pouliquen 2019-05-22  279  	stm32_ipcc_set_bits(&ipcc->lock, ipcc->reg_proc + IPCC_XCR,
dba9a3dfe912dc4 Arnaud Pouliquen 2019-05-22  280  			    XCR_RXOIE | XCR_TXOIE);
ffbded7dee97563 Fabien Dessenne  2018-05-31  281  
ffbded7dee97563 Fabien Dessenne  2018-05-31  282  	/* wakeup */
ffbded7dee97563 Fabien Dessenne  2018-05-31  283  	if (of_property_read_bool(np, "wakeup-source")) {
eac36c8651210df Fabien Dessenne  2019-01-04  284  		device_set_wakeup_capable(dev, true);
69269446ccbf2b4 Fabien Dessenne  2019-10-30  285  
69269446ccbf2b4 Fabien Dessenne  2019-10-30  286  		ret = dev_pm_set_wake_irq(dev, ipcc->irqs[IPCC_IRQ_RX]);
ffbded7dee97563 Fabien Dessenne  2018-05-31  287  		if (ret) {
ffbded7dee97563 Fabien Dessenne  2018-05-31  288  			dev_err(dev, "Failed to set wake up irq\n");
ffbded7dee97563 Fabien Dessenne  2018-05-31  289  			goto err_init_wkp;
ffbded7dee97563 Fabien Dessenne  2018-05-31  290  		}
ffbded7dee97563 Fabien Dessenne  2018-05-31  291  	}
ffbded7dee97563 Fabien Dessenne  2018-05-31  292  
ffbded7dee97563 Fabien Dessenne  2018-05-31  293  	/* mailbox controller */
ffbded7dee97563 Fabien Dessenne  2018-05-31  294  	ipcc->n_chans = readl_relaxed(ipcc->reg_base + IPCC_HWCFGR);
ffbded7dee97563 Fabien Dessenne  2018-05-31  295  	ipcc->n_chans &= IPCFGR_CHAN_MASK;
ffbded7dee97563 Fabien Dessenne  2018-05-31  296  
ffbded7dee97563 Fabien Dessenne  2018-05-31  297  	ipcc->controller.dev = dev;
ffbded7dee97563 Fabien Dessenne  2018-05-31  298  	ipcc->controller.txdone_irq = true;
ffbded7dee97563 Fabien Dessenne  2018-05-31  299  	ipcc->controller.ops = &stm32_ipcc_ops;
ffbded7dee97563 Fabien Dessenne  2018-05-31  300  	ipcc->controller.num_chans = ipcc->n_chans;
ffbded7dee97563 Fabien Dessenne  2018-05-31  301  	ipcc->controller.chans = devm_kcalloc(dev, ipcc->controller.num_chans,
ffbded7dee97563 Fabien Dessenne  2018-05-31  302  					      sizeof(*ipcc->controller.chans),
ffbded7dee97563 Fabien Dessenne  2018-05-31  303  					      GFP_KERNEL);
ffbded7dee97563 Fabien Dessenne  2018-05-31  304  	if (!ipcc->controller.chans) {
ffbded7dee97563 Fabien Dessenne  2018-05-31  305  		ret = -ENOMEM;
ffbded7dee97563 Fabien Dessenne  2018-05-31  306  		goto err_irq_wkp;
ffbded7dee97563 Fabien Dessenne  2018-05-31  307  	}
ffbded7dee97563 Fabien Dessenne  2018-05-31  308  
ffbded7dee97563 Fabien Dessenne  2018-05-31  309  	for (i = 0; i < ipcc->controller.num_chans; i++)
ffbded7dee97563 Fabien Dessenne  2018-05-31 @310  		ipcc->controller.chans[i].con_priv = (void *)i;
ffbded7dee97563 Fabien Dessenne  2018-05-31  311  
368d7767b50154e Thierry Reding   2018-12-20  312  	ret = devm_mbox_controller_register(dev, &ipcc->controller);
ffbded7dee97563 Fabien Dessenne  2018-05-31  313  	if (ret)
ffbded7dee97563 Fabien Dessenne  2018-05-31  314  		goto err_irq_wkp;
ffbded7dee97563 Fabien Dessenne  2018-05-31  315  
ffbded7dee97563 Fabien Dessenne  2018-05-31  316  	platform_set_drvdata(pdev, ipcc);
ffbded7dee97563 Fabien Dessenne  2018-05-31  317  
ffbded7dee97563 Fabien Dessenne  2018-05-31  318  	ip_ver = readl_relaxed(ipcc->reg_base + IPCC_VER);
ffbded7dee97563 Fabien Dessenne  2018-05-31  319  
ffbded7dee97563 Fabien Dessenne  2018-05-31  320  	dev_info(dev, "ipcc rev:%ld.%ld enabled, %d chans, proc %d\n",
ffbded7dee97563 Fabien Dessenne  2018-05-31  321  		 FIELD_GET(VER_MAJREV_MASK, ip_ver),
ffbded7dee97563 Fabien Dessenne  2018-05-31  322  		 FIELD_GET(VER_MINREV_MASK, ip_ver),
ffbded7dee97563 Fabien Dessenne  2018-05-31  323  		 ipcc->controller.num_chans, ipcc->proc_id);
ffbded7dee97563 Fabien Dessenne  2018-05-31  324  
ffbded7dee97563 Fabien Dessenne  2018-05-31  325  	clk_disable_unprepare(ipcc->clk);
ffbded7dee97563 Fabien Dessenne  2018-05-31  326  	return 0;
ffbded7dee97563 Fabien Dessenne  2018-05-31  327  
ffbded7dee97563 Fabien Dessenne  2018-05-31  328  err_irq_wkp:
69269446ccbf2b4 Fabien Dessenne  2019-10-30  329  	if (of_property_read_bool(np, "wakeup-source"))
ffbded7dee97563 Fabien Dessenne  2018-05-31  330  		dev_pm_clear_wake_irq(dev);
ffbded7dee97563 Fabien Dessenne  2018-05-31  331  err_init_wkp:
69269446ccbf2b4 Fabien Dessenne  2019-10-30  332  	device_set_wakeup_capable(dev, false);
ffbded7dee97563 Fabien Dessenne  2018-05-31  333  err_clk:
ffbded7dee97563 Fabien Dessenne  2018-05-31  334  	clk_disable_unprepare(ipcc->clk);
ffbded7dee97563 Fabien Dessenne  2018-05-31  335  	return ret;
ffbded7dee97563 Fabien Dessenne  2018-05-31  336  }
ffbded7dee97563 Fabien Dessenne  2018-05-31  337  

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202010310011.DzdBmBpc-lkp%40intel.com.

--EeQfGwPcQSOJBaQU
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
6X19QstZZJwjQ0iqWJwK1jD8H7UOSImrnwIA

--EeQfGwPcQSOJBaQU--
