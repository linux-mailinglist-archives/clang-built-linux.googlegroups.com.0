Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBG6763UQKGQEP4PP6MY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x439.google.com (mail-pf1-x439.google.com [IPv6:2607:f8b0:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EEE077FD7
	for <lists+clang-built-linux@lfdr.de>; Sun, 28 Jul 2019 16:22:21 +0200 (CEST)
Received: by mail-pf1-x439.google.com with SMTP id e20sf36610413pfd.3
        for <lists+clang-built-linux@lfdr.de>; Sun, 28 Jul 2019 07:22:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564323739; cv=pass;
        d=google.com; s=arc-20160816;
        b=xKCgqhpydwkNFWMyCDUw6awfzm74DfNqYXc4JQPm4tIBsEQNGlamAuHRkRUEJm1fwX
         tl3KyUp3/lmLvKViu4Nh2d+YedFLfiXVGwq0VMl6IEVnGsGGdwcGhznQo+VfvkGOGDx0
         j5W3kUcItBGXK0BkwMLNUNk0FSCvqkNQeQBmjXDUGF0vzd/ikLnz35Lx+XjrAUZhWIwo
         w8TJQPE2kzJWI+9vEbpEvmP96zblW9dPwLrURYRMuDPw47f3TR5WMxtIifCBeIlSK7PV
         iLNwfM8JkKvzoyz9E/3ZTEDONjZ+QFmbPJ2Lyrav7PDTYteDvIeyjIyVBGrp/kTHvXxS
         7JRQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=iPdw8CBGPUNou99MvgUziHkWmcHsfgpoGEZSoMIbWWc=;
        b=ZFc/4KkasXBD2gdOf/znAvN+gS45wfML/XzPwJLXP6Z88l5KtV5Yy7ibMH2Nngbq84
         DRq9Z0wckFa8/jE3HUi63LmbFdMMelUwurDTntpS2cGnHhXxRX8C7iHp/qjNHAeK2XFq
         tm9OB9Mx9wJcIu6bevFIdR53Jx0DxEjHu5E6tTbIwr2O82vyQW/glMPeQlQyLik3SLWv
         4VU74aTqcQNwWvmnZZHHtWlSjQzsLQo4/NPAqztCWlrTSdUbodKHJAgTGaGlf50+o5Tv
         oiBXyB7WyH95zu2nHnmEVxZLmE7SvUTTVdwvi+jcZ27bHZ/TnTvmZjCffuBUACf3FfPl
         U2vQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=iPdw8CBGPUNou99MvgUziHkWmcHsfgpoGEZSoMIbWWc=;
        b=p9aZfhPV+fSxA6G0apQLldi+HVDuIS+MJRX7KT/xyj3nrEvCvmE9/KXxvaXJBwOoaV
         3A+UyEMr/K0dHmOjUi5tvMTGNyRiNWYE54dqb3aethmS+NgZrJlbN9IbvAf8kI8XYsNQ
         1pQFsDDB0WiTh5PnI6Ma2wW3ZAmKMELUv32i9L/2V6mjhULUVBMQ6iNqV/iApMPFgVWJ
         LG3N+XRCpaWXBrCiFwTYqSKIX+sc5PCU1oZrOBM6Kob7Q6rvJsfkWImCg1Nu3UB7m/fz
         D4w1cOt93Dj+mzHGkW87v5o3tOkzYRSILIvXtKhTT9GMd9Dk4wqRrDPT/yDisq4A3uHv
         WBog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iPdw8CBGPUNou99MvgUziHkWmcHsfgpoGEZSoMIbWWc=;
        b=iOVenab7EzTlS6PdQYDRXQ0KrBfIsmqt0rZ/NrqzvJjTWJT7tQKDLZtbyyW3CD5lyq
         ey2kTkBSwsegF6PARqb5kPZjUP30h+ME5mNy+j33R626Z2qvfeJ2s+BKxOjHTMRpnD6t
         WuaTFL9YSjD2RiY4kLWUlDTFzU+ppJgr8A31YWM87PBRSWNvVAwzRwoMN7Hvt7Jk4M/t
         6aDyZQWpEAGLQc/5QZFTbRR6fyXPZl+6Jumc4I2CztMs0Qk/wIT6CASsS6X2hMZUgnab
         28R/mZ4qbbmRFXs5pumAAHQ608JI52pWa80F06xEBeT5jb24VCt2yK0I0YnP5DugZbvR
         jMEQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXA44RUBy4Yn+Yo9fWzNTDVyr4TFaxfGS3bIF4xtBBylkcadD4N
	Bd7Xm6Xy1y3bEF06Iny1ICo=
X-Google-Smtp-Source: APXvYqwvR/TciCOPxQtavpNkVLyO1ErrbAwhOQTrxwhJnzTXRnwJidLu9v+QBhQS/XyNuPsAbg3yEw==
X-Received: by 2002:a17:90a:ad41:: with SMTP id w1mr106171208pjv.52.1564323739496;
        Sun, 28 Jul 2019 07:22:19 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:75ce:: with SMTP id q197ls11704154pfc.3.gmail; Sun, 28
 Jul 2019 07:22:19 -0700 (PDT)
X-Received: by 2002:aa7:86cc:: with SMTP id h12mr24280666pfo.2.1564323739023;
        Sun, 28 Jul 2019 07:22:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564323739; cv=none;
        d=google.com; s=arc-20160816;
        b=NQ+9ViGzSLkeZX6+1vyRBNE63Sv+R25lTxNFUp/WtliFcJtjrnt4WqQM6X6kUlJkCj
         j6K3ctts1xvBFgnzXoKFCg6PV8kO/+gmJPfBoPcT53wQTOujGmIlTpES9YSB2J68HQfK
         8E2iZY4eJ8vuvQ643PhAC85sKgtZ6uurmmdzGM/pI/ywBLwlS0D5Mxqq5yqQXVXPINuD
         ky9wWe/0mtn9DtuciL8biFtU4jmgTknBmKUte1GhAHEA+r5h8r2tSrOJrxPzEEQdj/Qd
         29hvD6iJFIzsWi4UTe5sGLnH7iVARefvOZTO4pN+/0/eShodLzS7W9BptxdstF9ROLz/
         /MIQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=w78Rumnsi69d5gqR35IM//hIMFVUz6KDyFhV5G8QKqE=;
        b=nQ3M9Gez8dqWWnygWC29NDVOJXQzVFBgcL6uLWiZ7jk4Iqj1405VBJ3VR7dSL9pqki
         x2ZNLk7McKUi6F5hYFTtySSLU9lfQQrkSEg7pDvGxKyeJ2TXpdWrAd9n9fbiqlygLhJa
         nSb22mtv8qji+a6Wv6smnVYy0WHqeH36AHYebkZcRUt71O6u55/NWN04ix0CO9UNda1a
         1SRbg9YmY2+MLaKyLfW9RSFvVoiSFObRp3QpC784xMegxe35FrFZqSxXuyihJUekd3wc
         iX+nLATVNeptdXDbJxAIzr9sZNHXcduDrdRWPqbtk65mjSGhrRlBR+ef57usd6H0CUCd
         OYwQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga06.intel.com (mga06.intel.com. [134.134.136.31])
        by gmr-mx.google.com with ESMTPS id w72si2354549pfd.2.2019.07.28.07.22.18
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Jul 2019 07:22:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted sender) client-ip=134.134.136.31;
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 28 Jul 2019 07:21:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,319,1559545200"; 
   d="gz'50?scan'50,208,50";a="190264662"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by fmsmga001.fm.intel.com with ESMTP; 28 Jul 2019 07:21:50 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1hrk3a-000DYK-EN; Sun, 28 Jul 2019 22:21:50 +0800
Date: Sun, 28 Jul 2019 22:21:40 +0800
From: kbuild test robot <lkp@intel.com>
To: kbuild@01.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: [arm-integrator:apq8060-dragonboard-wm8903 10/10]
 drivers/clk/qcom/clk-rcg.c:77:6: warning: variable 'ns' is used
 uninitialized whenever 'if' condition is true
Message-ID: <201907282236.8BVFJxC8%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="cphll2k3r7nhwlyp"
Content-Disposition: inline
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.31 as permitted
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


--cphll2k3r7nhwlyp
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

CC: kbuild-all@01.org
TO: Linus Walleij <linus.walleij@linaro.org>

tree:   https://kernel.googlesource.com/pub/scm/linux/kernel/git/linusw/linux-integrator.git apq8060-dragonboard-wm8903
head:   41c3ab26cdfb8d6ab3da2d7b2ae0b462a06b8c42
commit: 41c3ab26cdfb8d6ab3da2d7b2ae0b462a06b8c42 [10/10] stab
config: arm64-defconfig (attached as .config)
compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206fb06f77a08968c99a8172cbf2ccdd0f)
reproduce:
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        git checkout 41c3ab26cdfb8d6ab3da2d7b2ae0b462a06b8c42
        # save the attached .config to linux build tree
        make.cross ARCH=arm64 

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/clk/qcom/clk-rcg.c:77:6: warning: variable 'ns' is used uninitialized whenever 'if' condition is true [-Wsometimes-uninitialized]
           if (ret)
               ^~~
   drivers/clk/qcom/clk-rcg.c:96:34: note: uninitialized use occurs here
                   __func__, clk_hw_get_name(hw), ns);
                                                  ^~
   include/linux/printk.h:311:34: note: expanded from macro 'pr_info'
           printk(KERN_INFO pr_fmt(fmt), ##__VA_ARGS__)
                                           ^~~~~~~~~~~
   drivers/clk/qcom/clk-rcg.c:77:2: note: remove the 'if' if its condition is always false
           if (ret)
           ^~~~~~~~
   drivers/clk/qcom/clk-rcg.c:71:8: note: initialize the variable 'ns' to silence this warning
           u32 ns, reg;
                 ^
                  = 0
   1 warning generated.

vim +77 drivers/clk/qcom/clk-rcg.c

bcd61c0f535a04a Stephen Boyd    2014-01-15   66  
bcd61c0f535a04a Stephen Boyd    2014-01-15   67  static u8 clk_dyn_rcg_get_parent(struct clk_hw *hw)
bcd61c0f535a04a Stephen Boyd    2014-01-15   68  {
bcd61c0f535a04a Stephen Boyd    2014-01-15   69  	struct clk_dyn_rcg *rcg = to_clk_dyn_rcg(hw);
497295afb5ab070 Stephen Boyd    2015-06-25   70  	int num_parents = clk_hw_get_num_parents(hw);
229fd4a505553c3 Stephen Boyd    2014-04-28   71  	u32 ns, reg;
bcd61c0f535a04a Stephen Boyd    2014-01-15   72  	int bank;
7f218978f10693f Georgi Djakov   2015-03-20   73  	int i, ret;
bcd61c0f535a04a Stephen Boyd    2014-01-15   74  	struct src_sel *s;
bcd61c0f535a04a Stephen Boyd    2014-01-15   75  
7f218978f10693f Georgi Djakov   2015-03-20   76  	ret = regmap_read(rcg->clkr.regmap, rcg->bank_reg, &reg);
7f218978f10693f Georgi Djakov   2015-03-20  @77  	if (ret)
7f218978f10693f Georgi Djakov   2015-03-20   78  		goto err;
229fd4a505553c3 Stephen Boyd    2014-04-28   79  	bank = reg_to_bank(rcg, reg);
bcd61c0f535a04a Stephen Boyd    2014-01-15   80  	s = &rcg->s[bank];
bcd61c0f535a04a Stephen Boyd    2014-01-15   81  
7f218978f10693f Georgi Djakov   2015-03-20   82  	ret = regmap_read(rcg->clkr.regmap, rcg->ns_reg[bank], &ns);
7f218978f10693f Georgi Djakov   2015-03-20   83  	if (ret)
7f218978f10693f Georgi Djakov   2015-03-20   84  		goto err;
bcd61c0f535a04a Stephen Boyd    2014-01-15   85  	ns = ns_to_src(s, ns);
bcd61c0f535a04a Stephen Boyd    2014-01-15   86  
bcd61c0f535a04a Stephen Boyd    2014-01-15   87  	for (i = 0; i < num_parents; i++)
41c3ab26cdfb8d6 Linus Walleij   2017-04-07   88  		if (ns == s->parent_map[i].cfg) {
41c3ab26cdfb8d6 Linus Walleij   2017-04-07   89  			pr_info("%s: Clock %s has parent %d\n",
41c3ab26cdfb8d6 Linus Walleij   2017-04-07   90  				__func__, clk_hw_get_name(hw), i);
bcd61c0f535a04a Stephen Boyd    2014-01-15   91  			return i;
41c3ab26cdfb8d6 Linus Walleij   2017-04-07   92  		}
bcd61c0f535a04a Stephen Boyd    2014-01-15   93  
7f218978f10693f Georgi Djakov   2015-03-20   94  err:
41c3ab26cdfb8d6 Linus Walleij   2017-04-07   95  	pr_info("%s: Clock %s has invalid parent %d, using default.\n",
41c3ab26cdfb8d6 Linus Walleij   2017-04-07   96  		__func__, clk_hw_get_name(hw), ns);
7f218978f10693f Georgi Djakov   2015-03-20   97  	return 0;
bcd61c0f535a04a Stephen Boyd    2014-01-15   98  }
bcd61c0f535a04a Stephen Boyd    2014-01-15   99  
bcd61c0f535a04a Stephen Boyd    2014-01-15  100  static int clk_rcg_set_parent(struct clk_hw *hw, u8 index)
bcd61c0f535a04a Stephen Boyd    2014-01-15  101  {
bcd61c0f535a04a Stephen Boyd    2014-01-15  102  	struct clk_rcg *rcg = to_clk_rcg(hw);
bcd61c0f535a04a Stephen Boyd    2014-01-15  103  	u32 ns;
bcd61c0f535a04a Stephen Boyd    2014-01-15  104  
bcd61c0f535a04a Stephen Boyd    2014-01-15  105  	regmap_read(rcg->clkr.regmap, rcg->ns_reg, &ns);
293d2e97b37f545 Georgi Djakov   2015-03-20  106  	ns = src_to_ns(&rcg->s, rcg->s.parent_map[index].cfg, ns);
bcd61c0f535a04a Stephen Boyd    2014-01-15  107  	regmap_write(rcg->clkr.regmap, rcg->ns_reg, ns);
bcd61c0f535a04a Stephen Boyd    2014-01-15  108  
bcd61c0f535a04a Stephen Boyd    2014-01-15  109  	return 0;
bcd61c0f535a04a Stephen Boyd    2014-01-15  110  }
bcd61c0f535a04a Stephen Boyd    2014-01-15  111  
bcd61c0f535a04a Stephen Boyd    2014-01-15  112  static u32 md_to_m(struct mn *mn, u32 md)
bcd61c0f535a04a Stephen Boyd    2014-01-15  113  {
bcd61c0f535a04a Stephen Boyd    2014-01-15  114  	md >>= mn->m_val_shift;
bcd61c0f535a04a Stephen Boyd    2014-01-15  115  	md &= BIT(mn->width) - 1;
bcd61c0f535a04a Stephen Boyd    2014-01-15  116  	return md;
bcd61c0f535a04a Stephen Boyd    2014-01-15  117  }
bcd61c0f535a04a Stephen Boyd    2014-01-15  118  
bcd61c0f535a04a Stephen Boyd    2014-01-15  119  static u32 ns_to_pre_div(struct pre_div *p, u32 ns)
bcd61c0f535a04a Stephen Boyd    2014-01-15  120  {
bcd61c0f535a04a Stephen Boyd    2014-01-15  121  	ns >>= p->pre_div_shift;
bcd61c0f535a04a Stephen Boyd    2014-01-15  122  	ns &= BIT(p->pre_div_width) - 1;
bcd61c0f535a04a Stephen Boyd    2014-01-15  123  	return ns;
bcd61c0f535a04a Stephen Boyd    2014-01-15  124  }
bcd61c0f535a04a Stephen Boyd    2014-01-15  125  
bcd61c0f535a04a Stephen Boyd    2014-01-15  126  static u32 pre_div_to_ns(struct pre_div *p, u8 pre_div, u32 ns)
bcd61c0f535a04a Stephen Boyd    2014-01-15  127  {
bcd61c0f535a04a Stephen Boyd    2014-01-15  128  	u32 mask;
bcd61c0f535a04a Stephen Boyd    2014-01-15  129  
bcd61c0f535a04a Stephen Boyd    2014-01-15  130  	mask = BIT(p->pre_div_width) - 1;
bcd61c0f535a04a Stephen Boyd    2014-01-15  131  	mask <<= p->pre_div_shift;
bcd61c0f535a04a Stephen Boyd    2014-01-15  132  	ns &= ~mask;
bcd61c0f535a04a Stephen Boyd    2014-01-15  133  
bcd61c0f535a04a Stephen Boyd    2014-01-15  134  	ns |= pre_div << p->pre_div_shift;
bcd61c0f535a04a Stephen Boyd    2014-01-15  135  	return ns;
bcd61c0f535a04a Stephen Boyd    2014-01-15  136  }
bcd61c0f535a04a Stephen Boyd    2014-01-15  137  
bcd61c0f535a04a Stephen Boyd    2014-01-15  138  static u32 mn_to_md(struct mn *mn, u32 m, u32 n, u32 md)
bcd61c0f535a04a Stephen Boyd    2014-01-15  139  {
bcd61c0f535a04a Stephen Boyd    2014-01-15  140  	u32 mask, mask_w;
bcd61c0f535a04a Stephen Boyd    2014-01-15  141  
bcd61c0f535a04a Stephen Boyd    2014-01-15  142  	mask_w = BIT(mn->width) - 1;
bcd61c0f535a04a Stephen Boyd    2014-01-15  143  	mask = (mask_w << mn->m_val_shift) | mask_w;
bcd61c0f535a04a Stephen Boyd    2014-01-15  144  	md &= ~mask;
bcd61c0f535a04a Stephen Boyd    2014-01-15  145  
bcd61c0f535a04a Stephen Boyd    2014-01-15  146  	if (n) {
bcd61c0f535a04a Stephen Boyd    2014-01-15  147  		m <<= mn->m_val_shift;
bcd61c0f535a04a Stephen Boyd    2014-01-15  148  		md |= m;
bcd61c0f535a04a Stephen Boyd    2014-01-15  149  		md |= ~n & mask_w;
bcd61c0f535a04a Stephen Boyd    2014-01-15  150  	}
bcd61c0f535a04a Stephen Boyd    2014-01-15  151  
bcd61c0f535a04a Stephen Boyd    2014-01-15  152  	return md;
bcd61c0f535a04a Stephen Boyd    2014-01-15  153  }
bcd61c0f535a04a Stephen Boyd    2014-01-15  154  
bcd61c0f535a04a Stephen Boyd    2014-01-15  155  static u32 ns_m_to_n(struct mn *mn, u32 ns, u32 m)
bcd61c0f535a04a Stephen Boyd    2014-01-15  156  {
bcd61c0f535a04a Stephen Boyd    2014-01-15  157  	ns = ~ns >> mn->n_val_shift;
bcd61c0f535a04a Stephen Boyd    2014-01-15  158  	ns &= BIT(mn->width) - 1;
bcd61c0f535a04a Stephen Boyd    2014-01-15  159  	return ns + m;
bcd61c0f535a04a Stephen Boyd    2014-01-15  160  }
bcd61c0f535a04a Stephen Boyd    2014-01-15  161  
bcd61c0f535a04a Stephen Boyd    2014-01-15  162  static u32 reg_to_mnctr_mode(struct mn *mn, u32 val)
bcd61c0f535a04a Stephen Boyd    2014-01-15  163  {
bcd61c0f535a04a Stephen Boyd    2014-01-15  164  	val >>= mn->mnctr_mode_shift;
bcd61c0f535a04a Stephen Boyd    2014-01-15  165  	val &= MNCTR_MODE_MASK;
bcd61c0f535a04a Stephen Boyd    2014-01-15  166  	return val;
bcd61c0f535a04a Stephen Boyd    2014-01-15  167  }
bcd61c0f535a04a Stephen Boyd    2014-01-15  168  
bcd61c0f535a04a Stephen Boyd    2014-01-15  169  static u32 mn_to_ns(struct mn *mn, u32 m, u32 n, u32 ns)
bcd61c0f535a04a Stephen Boyd    2014-01-15  170  {
bcd61c0f535a04a Stephen Boyd    2014-01-15  171  	u32 mask;
bcd61c0f535a04a Stephen Boyd    2014-01-15  172  
bcd61c0f535a04a Stephen Boyd    2014-01-15  173  	mask = BIT(mn->width) - 1;
bcd61c0f535a04a Stephen Boyd    2014-01-15  174  	mask <<= mn->n_val_shift;
bcd61c0f535a04a Stephen Boyd    2014-01-15  175  	ns &= ~mask;
bcd61c0f535a04a Stephen Boyd    2014-01-15  176  
bcd61c0f535a04a Stephen Boyd    2014-01-15  177  	if (n) {
bcd61c0f535a04a Stephen Boyd    2014-01-15  178  		n = n - m;
bcd61c0f535a04a Stephen Boyd    2014-01-15  179  		n = ~n;
bcd61c0f535a04a Stephen Boyd    2014-01-15  180  		n &= BIT(mn->width) - 1;
bcd61c0f535a04a Stephen Boyd    2014-01-15  181  		n <<= mn->n_val_shift;
bcd61c0f535a04a Stephen Boyd    2014-01-15  182  		ns |= n;
bcd61c0f535a04a Stephen Boyd    2014-01-15  183  	}
bcd61c0f535a04a Stephen Boyd    2014-01-15  184  
bcd61c0f535a04a Stephen Boyd    2014-01-15  185  	return ns;
bcd61c0f535a04a Stephen Boyd    2014-01-15  186  }
bcd61c0f535a04a Stephen Boyd    2014-01-15  187  
bcd61c0f535a04a Stephen Boyd    2014-01-15  188  static u32 mn_to_reg(struct mn *mn, u32 m, u32 n, u32 val)
bcd61c0f535a04a Stephen Boyd    2014-01-15  189  {
bcd61c0f535a04a Stephen Boyd    2014-01-15  190  	u32 mask;
bcd61c0f535a04a Stephen Boyd    2014-01-15  191  
bcd61c0f535a04a Stephen Boyd    2014-01-15  192  	mask = MNCTR_MODE_MASK << mn->mnctr_mode_shift;
bcd61c0f535a04a Stephen Boyd    2014-01-15  193  	mask |= BIT(mn->mnctr_en_bit);
bcd61c0f535a04a Stephen Boyd    2014-01-15  194  	val &= ~mask;
bcd61c0f535a04a Stephen Boyd    2014-01-15  195  
bcd61c0f535a04a Stephen Boyd    2014-01-15  196  	if (n) {
bcd61c0f535a04a Stephen Boyd    2014-01-15  197  		val |= BIT(mn->mnctr_en_bit);
bcd61c0f535a04a Stephen Boyd    2014-01-15  198  		val |= MNCTR_MODE_DUAL << mn->mnctr_mode_shift;
bcd61c0f535a04a Stephen Boyd    2014-01-15  199  	}
bcd61c0f535a04a Stephen Boyd    2014-01-15  200  
bcd61c0f535a04a Stephen Boyd    2014-01-15  201  	return val;
bcd61c0f535a04a Stephen Boyd    2014-01-15  202  }
bcd61c0f535a04a Stephen Boyd    2014-01-15  203  
fae507afbdf3384 Georgi Djakov   2015-03-20  204  static int configure_bank(struct clk_dyn_rcg *rcg, const struct freq_tbl *f)
bcd61c0f535a04a Stephen Boyd    2014-01-15  205  {
229fd4a505553c3 Stephen Boyd    2014-04-28  206  	u32 ns, md, reg;
293d2e97b37f545 Georgi Djakov   2015-03-20  207  	int bank, new_bank, ret, index;
bcd61c0f535a04a Stephen Boyd    2014-01-15  208  	struct mn *mn;
bcd61c0f535a04a Stephen Boyd    2014-01-15  209  	struct pre_div *p;
bcd61c0f535a04a Stephen Boyd    2014-01-15  210  	struct src_sel *s;
bcd61c0f535a04a Stephen Boyd    2014-01-15  211  	bool enabled;
229fd4a505553c3 Stephen Boyd    2014-04-28  212  	u32 md_reg, ns_reg;
bcd61c0f535a04a Stephen Boyd    2014-01-15  213  	bool banked_mn = !!rcg->mn[1].width;
229fd4a505553c3 Stephen Boyd    2014-04-28  214  	bool banked_p = !!rcg->p[1].pre_div_width;
bcd61c0f535a04a Stephen Boyd    2014-01-15  215  	struct clk_hw *hw = &rcg->clkr.hw;
bcd61c0f535a04a Stephen Boyd    2014-01-15  216  
bcd61c0f535a04a Stephen Boyd    2014-01-15  217  	enabled = __clk_is_enabled(hw->clk);
bcd61c0f535a04a Stephen Boyd    2014-01-15  218  
fae507afbdf3384 Georgi Djakov   2015-03-20  219  	ret = regmap_read(rcg->clkr.regmap, rcg->bank_reg, &reg);
fae507afbdf3384 Georgi Djakov   2015-03-20  220  	if (ret)
fae507afbdf3384 Georgi Djakov   2015-03-20  221  		return ret;
229fd4a505553c3 Stephen Boyd    2014-04-28  222  	bank = reg_to_bank(rcg, reg);
bcd61c0f535a04a Stephen Boyd    2014-01-15  223  	new_bank = enabled ? !bank : bank;
bcd61c0f535a04a Stephen Boyd    2014-01-15  224  
229fd4a505553c3 Stephen Boyd    2014-04-28  225  	ns_reg = rcg->ns_reg[new_bank];
fae507afbdf3384 Georgi Djakov   2015-03-20  226  	ret = regmap_read(rcg->clkr.regmap, ns_reg, &ns);
fae507afbdf3384 Georgi Djakov   2015-03-20  227  	if (ret)
fae507afbdf3384 Georgi Djakov   2015-03-20  228  		return ret;
229fd4a505553c3 Stephen Boyd    2014-04-28  229  
bcd61c0f535a04a Stephen Boyd    2014-01-15  230  	if (banked_mn) {
bcd61c0f535a04a Stephen Boyd    2014-01-15  231  		mn = &rcg->mn[new_bank];
bcd61c0f535a04a Stephen Boyd    2014-01-15  232  		md_reg = rcg->md_reg[new_bank];
bcd61c0f535a04a Stephen Boyd    2014-01-15  233  
bcd61c0f535a04a Stephen Boyd    2014-01-15  234  		ns |= BIT(mn->mnctr_reset_bit);
fae507afbdf3384 Georgi Djakov   2015-03-20  235  		ret = regmap_write(rcg->clkr.regmap, ns_reg, ns);
fae507afbdf3384 Georgi Djakov   2015-03-20  236  		if (ret)
fae507afbdf3384 Georgi Djakov   2015-03-20  237  			return ret;
bcd61c0f535a04a Stephen Boyd    2014-01-15  238  
fae507afbdf3384 Georgi Djakov   2015-03-20  239  		ret = regmap_read(rcg->clkr.regmap, md_reg, &md);
fae507afbdf3384 Georgi Djakov   2015-03-20  240  		if (ret)
fae507afbdf3384 Georgi Djakov   2015-03-20  241  			return ret;
bcd61c0f535a04a Stephen Boyd    2014-01-15  242  		md = mn_to_md(mn, f->m, f->n, md);
fae507afbdf3384 Georgi Djakov   2015-03-20  243  		ret = regmap_write(rcg->clkr.regmap, md_reg, md);
fae507afbdf3384 Georgi Djakov   2015-03-20  244  		if (ret)
fae507afbdf3384 Georgi Djakov   2015-03-20  245  			return ret;
bcd61c0f535a04a Stephen Boyd    2014-01-15  246  		ns = mn_to_ns(mn, f->m, f->n, ns);
fae507afbdf3384 Georgi Djakov   2015-03-20  247  		ret = regmap_write(rcg->clkr.regmap, ns_reg, ns);
fae507afbdf3384 Georgi Djakov   2015-03-20  248  		if (ret)
fae507afbdf3384 Georgi Djakov   2015-03-20  249  			return ret;
bcd61c0f535a04a Stephen Boyd    2014-01-15  250  
229fd4a505553c3 Stephen Boyd    2014-04-28  251  		/* Two NS registers means mode control is in NS register */
229fd4a505553c3 Stephen Boyd    2014-04-28  252  		if (rcg->ns_reg[0] != rcg->ns_reg[1]) {
229fd4a505553c3 Stephen Boyd    2014-04-28  253  			ns = mn_to_reg(mn, f->m, f->n, ns);
fae507afbdf3384 Georgi Djakov   2015-03-20  254  			ret = regmap_write(rcg->clkr.regmap, ns_reg, ns);
fae507afbdf3384 Georgi Djakov   2015-03-20  255  			if (ret)
fae507afbdf3384 Georgi Djakov   2015-03-20  256  				return ret;
229fd4a505553c3 Stephen Boyd    2014-04-28  257  		} else {
229fd4a505553c3 Stephen Boyd    2014-04-28  258  			reg = mn_to_reg(mn, f->m, f->n, reg);
fae507afbdf3384 Georgi Djakov   2015-03-20  259  			ret = regmap_write(rcg->clkr.regmap, rcg->bank_reg,
fae507afbdf3384 Georgi Djakov   2015-03-20  260  					   reg);
fae507afbdf3384 Georgi Djakov   2015-03-20  261  			if (ret)
fae507afbdf3384 Georgi Djakov   2015-03-20  262  				return ret;
229fd4a505553c3 Stephen Boyd    2014-04-28  263  		}
bcd61c0f535a04a Stephen Boyd    2014-01-15  264  
bcd61c0f535a04a Stephen Boyd    2014-01-15  265  		ns &= ~BIT(mn->mnctr_reset_bit);
fae507afbdf3384 Georgi Djakov   2015-03-20  266  		ret = regmap_write(rcg->clkr.regmap, ns_reg, ns);
fae507afbdf3384 Georgi Djakov   2015-03-20  267  		if (ret)
fae507afbdf3384 Georgi Djakov   2015-03-20  268  			return ret;
229fd4a505553c3 Stephen Boyd    2014-04-28  269  	}
229fd4a505553c3 Stephen Boyd    2014-04-28  270  
229fd4a505553c3 Stephen Boyd    2014-04-28  271  	if (banked_p) {
bcd61c0f535a04a Stephen Boyd    2014-01-15  272  		p = &rcg->p[new_bank];
bcd61c0f535a04a Stephen Boyd    2014-01-15  273  		ns = pre_div_to_ns(p, f->pre_div - 1, ns);
bcd61c0f535a04a Stephen Boyd    2014-01-15  274  	}
bcd61c0f535a04a Stephen Boyd    2014-01-15  275  
bcd61c0f535a04a Stephen Boyd    2014-01-15  276  	s = &rcg->s[new_bank];
293d2e97b37f545 Georgi Djakov   2015-03-20  277  	index = qcom_find_src_index(hw, s->parent_map, f->src);
293d2e97b37f545 Georgi Djakov   2015-03-20  278  	if (index < 0)
293d2e97b37f545 Georgi Djakov   2015-03-20  279  		return index;
293d2e97b37f545 Georgi Djakov   2015-03-20  280  	ns = src_to_ns(s, s->parent_map[index].cfg, ns);
fae507afbdf3384 Georgi Djakov   2015-03-20  281  	ret = regmap_write(rcg->clkr.regmap, ns_reg, ns);
fae507afbdf3384 Georgi Djakov   2015-03-20  282  	if (ret)
fae507afbdf3384 Georgi Djakov   2015-03-20  283  		return ret;
bcd61c0f535a04a Stephen Boyd    2014-01-15  284  
bcd61c0f535a04a Stephen Boyd    2014-01-15  285  	if (enabled) {
fae507afbdf3384 Georgi Djakov   2015-03-20  286  		ret = regmap_read(rcg->clkr.regmap, rcg->bank_reg, &reg);
fae507afbdf3384 Georgi Djakov   2015-03-20  287  		if (ret)
fae507afbdf3384 Georgi Djakov   2015-03-20  288  			return ret;
229fd4a505553c3 Stephen Boyd    2014-04-28  289  		reg ^= BIT(rcg->mux_sel_bit);
fae507afbdf3384 Georgi Djakov   2015-03-20  290  		ret = regmap_write(rcg->clkr.regmap, rcg->bank_reg, reg);
fae507afbdf3384 Georgi Djakov   2015-03-20  291  		if (ret)
fae507afbdf3384 Georgi Djakov   2015-03-20  292  			return ret;
bcd61c0f535a04a Stephen Boyd    2014-01-15  293  	}
fae507afbdf3384 Georgi Djakov   2015-03-20  294  	return 0;
bcd61c0f535a04a Stephen Boyd    2014-01-15  295  }
bcd61c0f535a04a Stephen Boyd    2014-01-15  296  
bcd61c0f535a04a Stephen Boyd    2014-01-15  297  static int clk_dyn_rcg_set_parent(struct clk_hw *hw, u8 index)
bcd61c0f535a04a Stephen Boyd    2014-01-15  298  {
bcd61c0f535a04a Stephen Boyd    2014-01-15  299  	struct clk_dyn_rcg *rcg = to_clk_dyn_rcg(hw);
229fd4a505553c3 Stephen Boyd    2014-04-28  300  	u32 ns, md, reg;
bcd61c0f535a04a Stephen Boyd    2014-01-15  301  	int bank;
bcd61c0f535a04a Stephen Boyd    2014-01-15  302  	struct freq_tbl f = { 0 };
bcd61c0f535a04a Stephen Boyd    2014-01-15  303  	bool banked_mn = !!rcg->mn[1].width;
229fd4a505553c3 Stephen Boyd    2014-04-28  304  	bool banked_p = !!rcg->p[1].pre_div_width;
bcd61c0f535a04a Stephen Boyd    2014-01-15  305  
229fd4a505553c3 Stephen Boyd    2014-04-28  306  	regmap_read(rcg->clkr.regmap, rcg->bank_reg, &reg);
bcd61c0f535a04a Stephen Boyd    2014-01-15  307  	bank = reg_to_bank(rcg, reg);
bcd61c0f535a04a Stephen Boyd    2014-01-15  308  
229fd4a505553c3 Stephen Boyd    2014-04-28  309  	regmap_read(rcg->clkr.regmap, rcg->ns_reg[bank], &ns);
229fd4a505553c3 Stephen Boyd    2014-04-28  310  
bcd61c0f535a04a Stephen Boyd    2014-01-15  311  	if (banked_mn) {
bcd61c0f535a04a Stephen Boyd    2014-01-15  312  		regmap_read(rcg->clkr.regmap, rcg->md_reg[bank], &md);
bcd61c0f535a04a Stephen Boyd    2014-01-15  313  		f.m = md_to_m(&rcg->mn[bank], md);
bcd61c0f535a04a Stephen Boyd    2014-01-15  314  		f.n = ns_m_to_n(&rcg->mn[bank], ns, f.m);
bcd61c0f535a04a Stephen Boyd    2014-01-15  315  	}
bcd61c0f535a04a Stephen Boyd    2014-01-15  316  
229fd4a505553c3 Stephen Boyd    2014-04-28  317  	if (banked_p)
229fd4a505553c3 Stephen Boyd    2014-04-28  318  		f.pre_div = ns_to_pre_div(&rcg->p[bank], ns) + 1;
229fd4a505553c3 Stephen Boyd    2014-04-28  319  
2f272e7b015c6d0 Georgi Djakov   2015-04-07  320  	f.src = qcom_find_src_index(hw, rcg->s[bank].parent_map, index);
fae507afbdf3384 Georgi Djakov   2015-03-20  321  	return configure_bank(rcg, &f);
bcd61c0f535a04a Stephen Boyd    2014-01-15  322  }
bcd61c0f535a04a Stephen Boyd    2014-01-15  323  
bcd61c0f535a04a Stephen Boyd    2014-01-15  324  /*
bcd61c0f535a04a Stephen Boyd    2014-01-15  325   * Calculate m/n:d rate
bcd61c0f535a04a Stephen Boyd    2014-01-15  326   *
bcd61c0f535a04a Stephen Boyd    2014-01-15  327   *          parent_rate     m
bcd61c0f535a04a Stephen Boyd    2014-01-15  328   *   rate = ----------- x  ---
bcd61c0f535a04a Stephen Boyd    2014-01-15  329   *            pre_div       n
bcd61c0f535a04a Stephen Boyd    2014-01-15  330   */
bcd61c0f535a04a Stephen Boyd    2014-01-15  331  static unsigned long
bcd61c0f535a04a Stephen Boyd    2014-01-15  332  calc_rate(unsigned long rate, u32 m, u32 n, u32 mode, u32 pre_div)
bcd61c0f535a04a Stephen Boyd    2014-01-15  333  {
bcd61c0f535a04a Stephen Boyd    2014-01-15  334  	if (pre_div)
bcd61c0f535a04a Stephen Boyd    2014-01-15  335  		rate /= pre_div + 1;
bcd61c0f535a04a Stephen Boyd    2014-01-15  336  
bcd61c0f535a04a Stephen Boyd    2014-01-15  337  	if (mode) {
bcd61c0f535a04a Stephen Boyd    2014-01-15  338  		u64 tmp = rate;
bcd61c0f535a04a Stephen Boyd    2014-01-15  339  		tmp *= m;
bcd61c0f535a04a Stephen Boyd    2014-01-15  340  		do_div(tmp, n);
bcd61c0f535a04a Stephen Boyd    2014-01-15  341  		rate = tmp;
bcd61c0f535a04a Stephen Boyd    2014-01-15  342  	}
bcd61c0f535a04a Stephen Boyd    2014-01-15  343  
bcd61c0f535a04a Stephen Boyd    2014-01-15  344  	return rate;
bcd61c0f535a04a Stephen Boyd    2014-01-15  345  }
bcd61c0f535a04a Stephen Boyd    2014-01-15  346  
bcd61c0f535a04a Stephen Boyd    2014-01-15  347  static unsigned long
bcd61c0f535a04a Stephen Boyd    2014-01-15  348  clk_rcg_recalc_rate(struct clk_hw *hw, unsigned long parent_rate)
bcd61c0f535a04a Stephen Boyd    2014-01-15  349  {
bcd61c0f535a04a Stephen Boyd    2014-01-15  350  	struct clk_rcg *rcg = to_clk_rcg(hw);
bcd61c0f535a04a Stephen Boyd    2014-01-15  351  	u32 pre_div, m = 0, n = 0, ns, md, mode = 0;
bcd61c0f535a04a Stephen Boyd    2014-01-15  352  	struct mn *mn = &rcg->mn;
bcd61c0f535a04a Stephen Boyd    2014-01-15  353  
bcd61c0f535a04a Stephen Boyd    2014-01-15  354  	regmap_read(rcg->clkr.regmap, rcg->ns_reg, &ns);
bcd61c0f535a04a Stephen Boyd    2014-01-15  355  	pre_div = ns_to_pre_div(&rcg->p, ns);
bcd61c0f535a04a Stephen Boyd    2014-01-15  356  
bcd61c0f535a04a Stephen Boyd    2014-01-15  357  	if (rcg->mn.width) {
bcd61c0f535a04a Stephen Boyd    2014-01-15  358  		regmap_read(rcg->clkr.regmap, rcg->md_reg, &md);
bcd61c0f535a04a Stephen Boyd    2014-01-15  359  		m = md_to_m(mn, md);
bcd61c0f535a04a Stephen Boyd    2014-01-15  360  		n = ns_m_to_n(mn, ns, m);
bcd61c0f535a04a Stephen Boyd    2014-01-15  361  		/* MN counter mode is in hw.enable_reg sometimes */
bcd61c0f535a04a Stephen Boyd    2014-01-15  362  		if (rcg->clkr.enable_reg != rcg->ns_reg)
bcd61c0f535a04a Stephen Boyd    2014-01-15  363  			regmap_read(rcg->clkr.regmap, rcg->clkr.enable_reg, &mode);
bcd61c0f535a04a Stephen Boyd    2014-01-15  364  		else
bcd61c0f535a04a Stephen Boyd    2014-01-15  365  			mode = ns;
bcd61c0f535a04a Stephen Boyd    2014-01-15  366  		mode = reg_to_mnctr_mode(mn, mode);
bcd61c0f535a04a Stephen Boyd    2014-01-15  367  	}
bcd61c0f535a04a Stephen Boyd    2014-01-15  368  
bcd61c0f535a04a Stephen Boyd    2014-01-15  369  	return calc_rate(parent_rate, m, n, mode, pre_div);
bcd61c0f535a04a Stephen Boyd    2014-01-15  370  }
bcd61c0f535a04a Stephen Boyd    2014-01-15  371  
bcd61c0f535a04a Stephen Boyd    2014-01-15  372  static unsigned long
bcd61c0f535a04a Stephen Boyd    2014-01-15  373  clk_dyn_rcg_recalc_rate(struct clk_hw *hw, unsigned long parent_rate)
bcd61c0f535a04a Stephen Boyd    2014-01-15  374  {
bcd61c0f535a04a Stephen Boyd    2014-01-15  375  	struct clk_dyn_rcg *rcg = to_clk_dyn_rcg(hw);
bcd61c0f535a04a Stephen Boyd    2014-01-15  376  	u32 m, n, pre_div, ns, md, mode, reg;
bcd61c0f535a04a Stephen Boyd    2014-01-15  377  	int bank;
bcd61c0f535a04a Stephen Boyd    2014-01-15  378  	struct mn *mn;
229fd4a505553c3 Stephen Boyd    2014-04-28  379  	bool banked_p = !!rcg->p[1].pre_div_width;
bcd61c0f535a04a Stephen Boyd    2014-01-15  380  	bool banked_mn = !!rcg->mn[1].width;
bcd61c0f535a04a Stephen Boyd    2014-01-15  381  
229fd4a505553c3 Stephen Boyd    2014-04-28  382  	regmap_read(rcg->clkr.regmap, rcg->bank_reg, &reg);
bcd61c0f535a04a Stephen Boyd    2014-01-15  383  	bank = reg_to_bank(rcg, reg);
bcd61c0f535a04a Stephen Boyd    2014-01-15  384  
229fd4a505553c3 Stephen Boyd    2014-04-28  385  	regmap_read(rcg->clkr.regmap, rcg->ns_reg[bank], &ns);
229fd4a505553c3 Stephen Boyd    2014-04-28  386  	m = n = pre_div = mode = 0;
229fd4a505553c3 Stephen Boyd    2014-04-28  387  
bcd61c0f535a04a Stephen Boyd    2014-01-15  388  	if (banked_mn) {
bcd61c0f535a04a Stephen Boyd    2014-01-15  389  		mn = &rcg->mn[bank];
bcd61c0f535a04a Stephen Boyd    2014-01-15  390  		regmap_read(rcg->clkr.regmap, rcg->md_reg[bank], &md);
bcd61c0f535a04a Stephen Boyd    2014-01-15  391  		m = md_to_m(mn, md);
bcd61c0f535a04a Stephen Boyd    2014-01-15  392  		n = ns_m_to_n(mn, ns, m);
229fd4a505553c3 Stephen Boyd    2014-04-28  393  		/* Two NS registers means mode control is in NS register */
229fd4a505553c3 Stephen Boyd    2014-04-28  394  		if (rcg->ns_reg[0] != rcg->ns_reg[1])
229fd4a505553c3 Stephen Boyd    2014-04-28  395  			reg = ns;
bcd61c0f535a04a Stephen Boyd    2014-01-15  396  		mode = reg_to_mnctr_mode(mn, reg);
bcd61c0f535a04a Stephen Boyd    2014-01-15  397  	}
229fd4a505553c3 Stephen Boyd    2014-04-28  398  
229fd4a505553c3 Stephen Boyd    2014-04-28  399  	if (banked_p)
229fd4a505553c3 Stephen Boyd    2014-04-28  400  		pre_div = ns_to_pre_div(&rcg->p[bank], ns);
229fd4a505553c3 Stephen Boyd    2014-04-28  401  
229fd4a505553c3 Stephen Boyd    2014-04-28  402  	return calc_rate(parent_rate, m, n, mode, pre_div);
bcd61c0f535a04a Stephen Boyd    2014-01-15  403  }
bcd61c0f535a04a Stephen Boyd    2014-01-15  404  
0817b62cc037a56 Boris Brezillon 2015-07-07  405  static int _freq_tbl_determine_rate(struct clk_hw *hw, const struct freq_tbl *f,
0817b62cc037a56 Boris Brezillon 2015-07-07  406  		struct clk_rate_request *req,
2f272e7b015c6d0 Georgi Djakov   2015-04-07  407  		const struct parent_map *parent_map)
bcd61c0f535a04a Stephen Boyd    2014-01-15  408  {
0817b62cc037a56 Boris Brezillon 2015-07-07  409  	unsigned long clk_flags, rate = req->rate;
ac269395cdd80b9 Stephen Boyd    2015-07-30  410  	struct clk_hw *p;
2f272e7b015c6d0 Georgi Djakov   2015-04-07  411  	int index;
bcd61c0f535a04a Stephen Boyd    2014-01-15  412  
50c6a50344c58f7 Stephen Boyd    2014-09-04  413  	f = qcom_find_freq(f, rate);
bcd61c0f535a04a Stephen Boyd    2014-01-15  414  	if (!f)
bcd61c0f535a04a Stephen Boyd    2014-01-15  415  		return -EINVAL;
bcd61c0f535a04a Stephen Boyd    2014-01-15  416  
2f272e7b015c6d0 Georgi Djakov   2015-04-07  417  	index = qcom_find_src_index(hw, parent_map, f->src);
2f272e7b015c6d0 Georgi Djakov   2015-04-07  418  	if (index < 0)
2f272e7b015c6d0 Georgi Djakov   2015-04-07  419  		return index;
2f272e7b015c6d0 Georgi Djakov   2015-04-07  420  
98d8a60eccee741 Stephen Boyd    2015-06-29  421  	clk_flags = clk_hw_get_flags(hw);
ac269395cdd80b9 Stephen Boyd    2015-07-30  422  	p = clk_hw_get_parent_by_index(hw, index);
bcd61c0f535a04a Stephen Boyd    2014-01-15  423  	if (clk_flags & CLK_SET_RATE_PARENT) {
bcd61c0f535a04a Stephen Boyd    2014-01-15  424  		rate = rate * f->pre_div;
bcd61c0f535a04a Stephen Boyd    2014-01-15  425  		if (f->n) {
bcd61c0f535a04a Stephen Boyd    2014-01-15  426  			u64 tmp = rate;
bcd61c0f535a04a Stephen Boyd    2014-01-15  427  			tmp = tmp * f->n;
bcd61c0f535a04a Stephen Boyd    2014-01-15  428  			do_div(tmp, f->m);
bcd61c0f535a04a Stephen Boyd    2014-01-15  429  			rate = tmp;
bcd61c0f535a04a Stephen Boyd    2014-01-15  430  		}
bcd61c0f535a04a Stephen Boyd    2014-01-15  431  	} else {
ac269395cdd80b9 Stephen Boyd    2015-07-30  432  		rate =  clk_hw_get_rate(p);
bcd61c0f535a04a Stephen Boyd    2014-01-15  433  	}
ac269395cdd80b9 Stephen Boyd    2015-07-30  434  	req->best_parent_hw = p;
0817b62cc037a56 Boris Brezillon 2015-07-07  435  	req->best_parent_rate = rate;
0817b62cc037a56 Boris Brezillon 2015-07-07  436  	req->rate = f->freq;
bcd61c0f535a04a Stephen Boyd    2014-01-15  437  
0817b62cc037a56 Boris Brezillon 2015-07-07  438  	return 0;
bcd61c0f535a04a Stephen Boyd    2014-01-15  439  }
bcd61c0f535a04a Stephen Boyd    2014-01-15  440  
0817b62cc037a56 Boris Brezillon 2015-07-07  441  static int clk_rcg_determine_rate(struct clk_hw *hw,
0817b62cc037a56 Boris Brezillon 2015-07-07  442  				  struct clk_rate_request *req)
bcd61c0f535a04a Stephen Boyd    2014-01-15  443  {
bcd61c0f535a04a Stephen Boyd    2014-01-15  444  	struct clk_rcg *rcg = to_clk_rcg(hw);
bcd61c0f535a04a Stephen Boyd    2014-01-15  445  
0817b62cc037a56 Boris Brezillon 2015-07-07  446  	return _freq_tbl_determine_rate(hw, rcg->freq_tbl, req,
0817b62cc037a56 Boris Brezillon 2015-07-07  447  					rcg->s.parent_map);
bcd61c0f535a04a Stephen Boyd    2014-01-15  448  }
bcd61c0f535a04a Stephen Boyd    2014-01-15  449  
0817b62cc037a56 Boris Brezillon 2015-07-07  450  static int clk_dyn_rcg_determine_rate(struct clk_hw *hw,
0817b62cc037a56 Boris Brezillon 2015-07-07  451  				      struct clk_rate_request *req)
bcd61c0f535a04a Stephen Boyd    2014-01-15  452  {
bcd61c0f535a04a Stephen Boyd    2014-01-15  453  	struct clk_dyn_rcg *rcg = to_clk_dyn_rcg(hw);
2f272e7b015c6d0 Georgi Djakov   2015-04-07  454  	u32 reg;
2f272e7b015c6d0 Georgi Djakov   2015-04-07  455  	int bank;
2f272e7b015c6d0 Georgi Djakov   2015-04-07  456  	struct src_sel *s;
2f272e7b015c6d0 Georgi Djakov   2015-04-07  457  
2f272e7b015c6d0 Georgi Djakov   2015-04-07  458  	regmap_read(rcg->clkr.regmap, rcg->bank_reg, &reg);
2f272e7b015c6d0 Georgi Djakov   2015-04-07  459  	bank = reg_to_bank(rcg, reg);
2f272e7b015c6d0 Georgi Djakov   2015-04-07  460  	s = &rcg->s[bank];
bcd61c0f535a04a Stephen Boyd    2014-01-15  461  
0817b62cc037a56 Boris Brezillon 2015-07-07  462  	return _freq_tbl_determine_rate(hw, rcg->freq_tbl, req, s->parent_map);
bcd61c0f535a04a Stephen Boyd    2014-01-15  463  }
bcd61c0f535a04a Stephen Boyd    2014-01-15  464  
0817b62cc037a56 Boris Brezillon 2015-07-07  465  static int clk_rcg_bypass_determine_rate(struct clk_hw *hw,
0817b62cc037a56 Boris Brezillon 2015-07-07  466  					 struct clk_rate_request *req)
bcd61c0f535a04a Stephen Boyd    2014-01-15  467  {
bcd61c0f535a04a Stephen Boyd    2014-01-15  468  	struct clk_rcg *rcg = to_clk_rcg(hw);
404c1ff67d241e8 Stephen Boyd    2014-07-11  469  	const struct freq_tbl *f = rcg->freq_tbl;
ac269395cdd80b9 Stephen Boyd    2015-07-30  470  	struct clk_hw *p;
2f272e7b015c6d0 Georgi Djakov   2015-04-07  471  	int index = qcom_find_src_index(hw, rcg->s.parent_map, f->src);
404c1ff67d241e8 Stephen Boyd    2014-07-11  472  
ac269395cdd80b9 Stephen Boyd    2015-07-30  473  	req->best_parent_hw = p = clk_hw_get_parent_by_index(hw, index);
ac269395cdd80b9 Stephen Boyd    2015-07-30  474  	req->best_parent_rate = clk_hw_round_rate(p, req->rate);
0817b62cc037a56 Boris Brezillon 2015-07-07  475  	req->rate = req->best_parent_rate;
404c1ff67d241e8 Stephen Boyd    2014-07-11  476  
0817b62cc037a56 Boris Brezillon 2015-07-07  477  	return 0;
404c1ff67d241e8 Stephen Boyd    2014-07-11  478  }
404c1ff67d241e8 Stephen Boyd    2014-07-11  479  
404c1ff67d241e8 Stephen Boyd    2014-07-11  480  static int __clk_rcg_set_rate(struct clk_rcg *rcg, const struct freq_tbl *f)
404c1ff67d241e8 Stephen Boyd    2014-07-11  481  {
bcd61c0f535a04a Stephen Boyd    2014-01-15  482  	u32 ns, md, ctl;
bcd61c0f535a04a Stephen Boyd    2014-01-15  483  	struct mn *mn = &rcg->mn;
bcd61c0f535a04a Stephen Boyd    2014-01-15  484  	u32 mask = 0;
bcd61c0f535a04a Stephen Boyd    2014-01-15  485  	unsigned int reset_reg;
bcd61c0f535a04a Stephen Boyd    2014-01-15  486  
bcd61c0f535a04a Stephen Boyd    2014-01-15  487  	if (rcg->mn.reset_in_cc)
bcd61c0f535a04a Stephen Boyd    2014-01-15  488  		reset_reg = rcg->clkr.enable_reg;
bcd61c0f535a04a Stephen Boyd    2014-01-15  489  	else
bcd61c0f535a04a Stephen Boyd    2014-01-15  490  		reset_reg = rcg->ns_reg;
bcd61c0f535a04a Stephen Boyd    2014-01-15  491  
bcd61c0f535a04a Stephen Boyd    2014-01-15  492  	if (rcg->mn.width) {
bcd61c0f535a04a Stephen Boyd    2014-01-15  493  		mask = BIT(mn->mnctr_reset_bit);
bcd61c0f535a04a Stephen Boyd    2014-01-15  494  		regmap_update_bits(rcg->clkr.regmap, reset_reg, mask, mask);
bcd61c0f535a04a Stephen Boyd    2014-01-15  495  
bcd61c0f535a04a Stephen Boyd    2014-01-15  496  		regmap_read(rcg->clkr.regmap, rcg->md_reg, &md);
bcd61c0f535a04a Stephen Boyd    2014-01-15  497  		md = mn_to_md(mn, f->m, f->n, md);
bcd61c0f535a04a Stephen Boyd    2014-01-15  498  		regmap_write(rcg->clkr.regmap, rcg->md_reg, md);
bcd61c0f535a04a Stephen Boyd    2014-01-15  499  
bcd61c0f535a04a Stephen Boyd    2014-01-15  500  		regmap_read(rcg->clkr.regmap, rcg->ns_reg, &ns);
bcd61c0f535a04a Stephen Boyd    2014-01-15  501  		/* MN counter mode is in hw.enable_reg sometimes */
bcd61c0f535a04a Stephen Boyd    2014-01-15  502  		if (rcg->clkr.enable_reg != rcg->ns_reg) {
bcd61c0f535a04a Stephen Boyd    2014-01-15  503  			regmap_read(rcg->clkr.regmap, rcg->clkr.enable_reg, &ctl);
bcd61c0f535a04a Stephen Boyd    2014-01-15  504  			ctl = mn_to_reg(mn, f->m, f->n, ctl);
bcd61c0f535a04a Stephen Boyd    2014-01-15  505  			regmap_write(rcg->clkr.regmap, rcg->clkr.enable_reg, ctl);
bcd61c0f535a04a Stephen Boyd    2014-01-15  506  		} else {
bcd61c0f535a04a Stephen Boyd    2014-01-15  507  			ns = mn_to_reg(mn, f->m, f->n, ns);
bcd61c0f535a04a Stephen Boyd    2014-01-15  508  		}
bcd61c0f535a04a Stephen Boyd    2014-01-15  509  		ns = mn_to_ns(mn, f->m, f->n, ns);
bcd61c0f535a04a Stephen Boyd    2014-01-15  510  	} else {
bcd61c0f535a04a Stephen Boyd    2014-01-15  511  		regmap_read(rcg->clkr.regmap, rcg->ns_reg, &ns);
bcd61c0f535a04a Stephen Boyd    2014-01-15  512  	}
bcd61c0f535a04a Stephen Boyd    2014-01-15  513  
bcd61c0f535a04a Stephen Boyd    2014-01-15  514  	ns = pre_div_to_ns(&rcg->p, f->pre_div - 1, ns);
bcd61c0f535a04a Stephen Boyd    2014-01-15  515  	regmap_write(rcg->clkr.regmap, rcg->ns_reg, ns);
bcd61c0f535a04a Stephen Boyd    2014-01-15  516  
bcd61c0f535a04a Stephen Boyd    2014-01-15  517  	regmap_update_bits(rcg->clkr.regmap, reset_reg, mask, 0);
bcd61c0f535a04a Stephen Boyd    2014-01-15  518  
bcd61c0f535a04a Stephen Boyd    2014-01-15  519  	return 0;
bcd61c0f535a04a Stephen Boyd    2014-01-15  520  }
bcd61c0f535a04a Stephen Boyd    2014-01-15  521  
404c1ff67d241e8 Stephen Boyd    2014-07-11  522  static int clk_rcg_set_rate(struct clk_hw *hw, unsigned long rate,
404c1ff67d241e8 Stephen Boyd    2014-07-11  523  			    unsigned long parent_rate)
404c1ff67d241e8 Stephen Boyd    2014-07-11  524  {
404c1ff67d241e8 Stephen Boyd    2014-07-11  525  	struct clk_rcg *rcg = to_clk_rcg(hw);
404c1ff67d241e8 Stephen Boyd    2014-07-11  526  	const struct freq_tbl *f;
404c1ff67d241e8 Stephen Boyd    2014-07-11  527  
50c6a50344c58f7 Stephen Boyd    2014-09-04  528  	f = qcom_find_freq(rcg->freq_tbl, rate);
404c1ff67d241e8 Stephen Boyd    2014-07-11  529  	if (!f)
404c1ff67d241e8 Stephen Boyd    2014-07-11  530  		return -EINVAL;
404c1ff67d241e8 Stephen Boyd    2014-07-11  531  
404c1ff67d241e8 Stephen Boyd    2014-07-11  532  	return __clk_rcg_set_rate(rcg, f);
404c1ff67d241e8 Stephen Boyd    2014-07-11  533  }
404c1ff67d241e8 Stephen Boyd    2014-07-11  534  
404c1ff67d241e8 Stephen Boyd    2014-07-11  535  static int clk_rcg_bypass_set_rate(struct clk_hw *hw, unsigned long rate,
404c1ff67d241e8 Stephen Boyd    2014-07-11  536  				unsigned long parent_rate)
404c1ff67d241e8 Stephen Boyd    2014-07-11  537  {
404c1ff67d241e8 Stephen Boyd    2014-07-11  538  	struct clk_rcg *rcg = to_clk_rcg(hw);
404c1ff67d241e8 Stephen Boyd    2014-07-11  539  
404c1ff67d241e8 Stephen Boyd    2014-07-11  540  	return __clk_rcg_set_rate(rcg, rcg->freq_tbl);
404c1ff67d241e8 Stephen Boyd    2014-07-11  541  }
404c1ff67d241e8 Stephen Boyd    2014-07-11  542  
d8aa2beed870f08 Archit Taneja   2015-10-14  543  static int clk_rcg_bypass2_determine_rate(struct clk_hw *hw,
d8aa2beed870f08 Archit Taneja   2015-10-14  544  				struct clk_rate_request *req)
d8aa2beed870f08 Archit Taneja   2015-10-14  545  {
d8aa2beed870f08 Archit Taneja   2015-10-14  546  	struct clk_hw *p;
d8aa2beed870f08 Archit Taneja   2015-10-14  547  
d8aa2beed870f08 Archit Taneja   2015-10-14  548  	p = req->best_parent_hw;
d8aa2beed870f08 Archit Taneja   2015-10-14  549  	req->best_parent_rate = clk_hw_round_rate(p, req->rate);
d8aa2beed870f08 Archit Taneja   2015-10-14  550  	req->rate = req->best_parent_rate;
d8aa2beed870f08 Archit Taneja   2015-10-14  551  
d8aa2beed870f08 Archit Taneja   2015-10-14  552  	return 0;
d8aa2beed870f08 Archit Taneja   2015-10-14  553  }
d8aa2beed870f08 Archit Taneja   2015-10-14  554  
d8aa2beed870f08 Archit Taneja   2015-10-14  555  static int clk_rcg_bypass2_set_rate(struct clk_hw *hw, unsigned long rate,
d8aa2beed870f08 Archit Taneja   2015-10-14  556  				unsigned long parent_rate)
d8aa2beed870f08 Archit Taneja   2015-10-14  557  {
d8aa2beed870f08 Archit Taneja   2015-10-14  558  	struct clk_rcg *rcg = to_clk_rcg(hw);
d8aa2beed870f08 Archit Taneja   2015-10-14  559  	struct freq_tbl f = { 0 };
d8aa2beed870f08 Archit Taneja   2015-10-14  560  	u32 ns, src;
d8aa2beed870f08 Archit Taneja   2015-10-14  561  	int i, ret, num_parents = clk_hw_get_num_parents(hw);
d8aa2beed870f08 Archit Taneja   2015-10-14  562  
d8aa2beed870f08 Archit Taneja   2015-10-14  563  	ret = regmap_read(rcg->clkr.regmap, rcg->ns_reg, &ns);
d8aa2beed870f08 Archit Taneja   2015-10-14  564  	if (ret)
d8aa2beed870f08 Archit Taneja   2015-10-14  565  		return ret;
d8aa2beed870f08 Archit Taneja   2015-10-14  566  
d8aa2beed870f08 Archit Taneja   2015-10-14  567  	src = ns_to_src(&rcg->s, ns);
d8aa2beed870f08 Archit Taneja   2015-10-14  568  	f.pre_div = ns_to_pre_div(&rcg->p, ns) + 1;
d8aa2beed870f08 Archit Taneja   2015-10-14  569  
d8aa2beed870f08 Archit Taneja   2015-10-14  570  	for (i = 0; i < num_parents; i++) {
d8aa2beed870f08 Archit Taneja   2015-10-14  571  		if (src == rcg->s.parent_map[i].cfg) {
d8aa2beed870f08 Archit Taneja   2015-10-14  572  			f.src = rcg->s.parent_map[i].src;
d8aa2beed870f08 Archit Taneja   2015-10-14  573  			return __clk_rcg_set_rate(rcg, &f);
d8aa2beed870f08 Archit Taneja   2015-10-14  574  		}
d8aa2beed870f08 Archit Taneja   2015-10-14  575  	}
d8aa2beed870f08 Archit Taneja   2015-10-14  576  
d8aa2beed870f08 Archit Taneja   2015-10-14  577  	return -EINVAL;
d8aa2beed870f08 Archit Taneja   2015-10-14  578  }
d8aa2beed870f08 Archit Taneja   2015-10-14  579  
d8aa2beed870f08 Archit Taneja   2015-10-14  580  static int clk_rcg_bypass2_set_rate_and_parent(struct clk_hw *hw,
d8aa2beed870f08 Archit Taneja   2015-10-14  581  		unsigned long rate, unsigned long parent_rate, u8 index)
d8aa2beed870f08 Archit Taneja   2015-10-14  582  {
d8aa2beed870f08 Archit Taneja   2015-10-14  583  	/* Read the hardware to determine parent during set_rate */
d8aa2beed870f08 Archit Taneja   2015-10-14  584  	return clk_rcg_bypass2_set_rate(hw, rate, parent_rate);
d8aa2beed870f08 Archit Taneja   2015-10-14  585  }
d8aa2beed870f08 Archit Taneja   2015-10-14  586  
d8aa2beed870f08 Archit Taneja   2015-10-14  587  struct frac_entry {
d8aa2beed870f08 Archit Taneja   2015-10-14  588  	int num;
d8aa2beed870f08 Archit Taneja   2015-10-14  589  	int den;
d8aa2beed870f08 Archit Taneja   2015-10-14  590  };
d8aa2beed870f08 Archit Taneja   2015-10-14  591  
d8aa2beed870f08 Archit Taneja   2015-10-14  592  static const struct frac_entry pixel_table[] = {
d8aa2beed870f08 Archit Taneja   2015-10-14  593  	{ 1, 2 },
d8aa2beed870f08 Archit Taneja   2015-10-14  594  	{ 1, 3 },
d8aa2beed870f08 Archit Taneja   2015-10-14  595  	{ 3, 16 },
d8aa2beed870f08 Archit Taneja   2015-10-14  596  	{ }
d8aa2beed870f08 Archit Taneja   2015-10-14  597  };
d8aa2beed870f08 Archit Taneja   2015-10-14  598  
d8aa2beed870f08 Archit Taneja   2015-10-14  599  static int clk_rcg_pixel_determine_rate(struct clk_hw *hw,
d8aa2beed870f08 Archit Taneja   2015-10-14  600  		struct clk_rate_request *req)
d8aa2beed870f08 Archit Taneja   2015-10-14  601  {
d8aa2beed870f08 Archit Taneja   2015-10-14  602  	int delta = 100000;
d8aa2beed870f08 Archit Taneja   2015-10-14  603  	const struct frac_entry *frac = pixel_table;
d8aa2beed870f08 Archit Taneja   2015-10-14  604  	unsigned long request, src_rate;
d8aa2beed870f08 Archit Taneja   2015-10-14  605  
d8aa2beed870f08 Archit Taneja   2015-10-14  606  	for (; frac->num; frac++) {
d8aa2beed870f08 Archit Taneja   2015-10-14  607  		request = (req->rate * frac->den) / frac->num;
d8aa2beed870f08 Archit Taneja   2015-10-14  608  
d8aa2beed870f08 Archit Taneja   2015-10-14  609  		src_rate = clk_hw_round_rate(req->best_parent_hw, request);
d8aa2beed870f08 Archit Taneja   2015-10-14  610  
d8aa2beed870f08 Archit Taneja   2015-10-14  611  		if ((src_rate < (request - delta)) ||
d8aa2beed870f08 Archit Taneja   2015-10-14  612  			(src_rate > (request + delta)))
d8aa2beed870f08 Archit Taneja   2015-10-14  613  			continue;
d8aa2beed870f08 Archit Taneja   2015-10-14  614  
d8aa2beed870f08 Archit Taneja   2015-10-14  615  		req->best_parent_rate = src_rate;
d8aa2beed870f08 Archit Taneja   2015-10-14  616  		req->rate = (src_rate * frac->num) / frac->den;
d8aa2beed870f08 Archit Taneja   2015-10-14  617  		return 0;
d8aa2beed870f08 Archit Taneja   2015-10-14  618  	}
d8aa2beed870f08 Archit Taneja   2015-10-14  619  
d8aa2beed870f08 Archit Taneja   2015-10-14  620  	return -EINVAL;
d8aa2beed870f08 Archit Taneja   2015-10-14  621  }
d8aa2beed870f08 Archit Taneja   2015-10-14  622  
d8aa2beed870f08 Archit Taneja   2015-10-14  623  static int clk_rcg_pixel_set_rate(struct clk_hw *hw, unsigned long rate,
d8aa2beed870f08 Archit Taneja   2015-10-14  624  				unsigned long parent_rate)
d8aa2beed870f08 Archit Taneja   2015-10-14  625  {
d8aa2beed870f08 Archit Taneja   2015-10-14  626  	struct clk_rcg *rcg = to_clk_rcg(hw);
d8aa2beed870f08 Archit Taneja   2015-10-14  627  	int delta = 100000;
d8aa2beed870f08 Archit Taneja   2015-10-14  628  	const struct frac_entry *frac = pixel_table;
d8aa2beed870f08 Archit Taneja   2015-10-14  629  	unsigned long request;
d8aa2beed870f08 Archit Taneja   2015-10-14  630  	struct freq_tbl f = { 0 };
d8aa2beed870f08 Archit Taneja   2015-10-14  631  	u32 ns, src;
d8aa2beed870f08 Archit Taneja   2015-10-14  632  	int i, ret, num_parents = clk_hw_get_num_parents(hw);
d8aa2beed870f08 Archit Taneja   2015-10-14  633  
d8aa2beed870f08 Archit Taneja   2015-10-14  634  	ret = regmap_read(rcg->clkr.regmap, rcg->ns_reg, &ns);
d8aa2beed870f08 Archit Taneja   2015-10-14  635  	if (ret)
d8aa2beed870f08 Archit Taneja   2015-10-14  636  		return ret;
d8aa2beed870f08 Archit Taneja   2015-10-14  637  
d8aa2beed870f08 Archit Taneja   2015-10-14  638  	src = ns_to_src(&rcg->s, ns);
d8aa2beed870f08 Archit Taneja   2015-10-14  639  
d8aa2beed870f08 Archit Taneja   2015-10-14  640  	for (i = 0; i < num_parents; i++) {
d8aa2beed870f08 Archit Taneja   2015-10-14  641  		if (src == rcg->s.parent_map[i].cfg) {
d8aa2beed870f08 Archit Taneja   2015-10-14  642  			f.src = rcg->s.parent_map[i].src;
d8aa2beed870f08 Archit Taneja   2015-10-14  643  			break;
d8aa2beed870f08 Archit Taneja   2015-10-14  644  		}
d8aa2beed870f08 Archit Taneja   2015-10-14  645  	}
d8aa2beed870f08 Archit Taneja   2015-10-14  646  
811a498e5e9ab80 Archit Taneja   2016-02-28  647  	/* bypass the pre divider */
811a498e5e9ab80 Archit Taneja   2016-02-28  648  	f.pre_div = 1;
811a498e5e9ab80 Archit Taneja   2016-02-28  649  
d8aa2beed870f08 Archit Taneja   2015-10-14  650  	/* let us find appropriate m/n values for this */
d8aa2beed870f08 Archit Taneja   2015-10-14  651  	for (; frac->num; frac++) {
d8aa2beed870f08 Archit Taneja   2015-10-14  652  		request = (rate * frac->den) / frac->num;
d8aa2beed870f08 Archit Taneja   2015-10-14  653  
d8aa2beed870f08 Archit Taneja   2015-10-14  654  		if ((parent_rate < (request - delta)) ||
d8aa2beed870f08 Archit Taneja   2015-10-14  655  			(parent_rate > (request + delta)))
d8aa2beed870f08 Archit Taneja   2015-10-14  656  			continue;
d8aa2beed870f08 Archit Taneja   2015-10-14  657  
d8aa2beed870f08 Archit Taneja   2015-10-14  658  		f.m = frac->num;
d8aa2beed870f08 Archit Taneja   2015-10-14  659  		f.n = frac->den;
d8aa2beed870f08 Archit Taneja   2015-10-14  660  
d8aa2beed870f08 Archit Taneja   2015-10-14  661  		return __clk_rcg_set_rate(rcg, &f);
d8aa2beed870f08 Archit Taneja   2015-10-14  662  	}
d8aa2beed870f08 Archit Taneja   2015-10-14  663  
d8aa2beed870f08 Archit Taneja   2015-10-14  664  	return -EINVAL;
d8aa2beed870f08 Archit Taneja   2015-10-14  665  }
d8aa2beed870f08 Archit Taneja   2015-10-14  666  
d8aa2beed870f08 Archit Taneja   2015-10-14  667  static int clk_rcg_pixel_set_rate_and_parent(struct clk_hw *hw,
d8aa2beed870f08 Archit Taneja   2015-10-14  668  		unsigned long rate, unsigned long parent_rate, u8 index)
d8aa2beed870f08 Archit Taneja   2015-10-14  669  {
d8aa2beed870f08 Archit Taneja   2015-10-14  670  	return clk_rcg_pixel_set_rate(hw, rate, parent_rate);
d8aa2beed870f08 Archit Taneja   2015-10-14  671  }
d8aa2beed870f08 Archit Taneja   2015-10-14  672  
d8aa2beed870f08 Archit Taneja   2015-10-14  673  static int clk_rcg_esc_determine_rate(struct clk_hw *hw,
d8aa2beed870f08 Archit Taneja   2015-10-14  674  		struct clk_rate_request *req)
d8aa2beed870f08 Archit Taneja   2015-10-14  675  {
d8aa2beed870f08 Archit Taneja   2015-10-14  676  	struct clk_rcg *rcg = to_clk_rcg(hw);
d8aa2beed870f08 Archit Taneja   2015-10-14  677  	int pre_div_max = BIT(rcg->p.pre_div_width);
d8aa2beed870f08 Archit Taneja   2015-10-14  678  	int div;
d8aa2beed870f08 Archit Taneja   2015-10-14  679  	unsigned long src_rate;
d8aa2beed870f08 Archit Taneja   2015-10-14  680  
d8aa2beed870f08 Archit Taneja   2015-10-14  681  	if (req->rate == 0)
d8aa2beed870f08 Archit Taneja   2015-10-14  682  		return -EINVAL;
d8aa2beed870f08 Archit Taneja   2015-10-14  683  
d8aa2beed870f08 Archit Taneja   2015-10-14  684  	src_rate = clk_hw_get_rate(req->best_parent_hw);
d8aa2beed870f08 Archit Taneja   2015-10-14  685  
d8aa2beed870f08 Archit Taneja   2015-10-14  686  	div = src_rate / req->rate;
d8aa2beed870f08 Archit Taneja   2015-10-14  687  
d8aa2beed870f08 Archit Taneja   2015-10-14  688  	if (div >= 1 && div <= pre_div_max) {
d8aa2beed870f08 Archit Taneja   2015-10-14  689  		req->best_parent_rate = src_rate;
d8aa2beed870f08 Archit Taneja   2015-10-14  690  		req->rate = src_rate / div;
d8aa2beed870f08 Archit Taneja   2015-10-14  691  		return 0;
d8aa2beed870f08 Archit Taneja   2015-10-14  692  	}
d8aa2beed870f08 Archit Taneja   2015-10-14  693  
d8aa2beed870f08 Archit Taneja   2015-10-14  694  	return -EINVAL;
d8aa2beed870f08 Archit Taneja   2015-10-14  695  }
d8aa2beed870f08 Archit Taneja   2015-10-14  696  
d8aa2beed870f08 Archit Taneja   2015-10-14  697  static int clk_rcg_esc_set_rate(struct clk_hw *hw, unsigned long rate,
d8aa2beed870f08 Archit Taneja   2015-10-14  698  				unsigned long parent_rate)
d8aa2beed870f08 Archit Taneja   2015-10-14  699  {
d8aa2beed870f08 Archit Taneja   2015-10-14  700  	struct clk_rcg *rcg = to_clk_rcg(hw);
d8aa2beed870f08 Archit Taneja   2015-10-14  701  	struct freq_tbl f = { 0 };
d8aa2beed870f08 Archit Taneja   2015-10-14  702  	int pre_div_max = BIT(rcg->p.pre_div_width);
d8aa2beed870f08 Archit Taneja   2015-10-14  703  	int div;
d8aa2beed870f08 Archit Taneja   2015-10-14  704  	u32 ns;
d8aa2beed870f08 Archit Taneja   2015-10-14  705  	int i, ret, num_parents = clk_hw_get_num_parents(hw);
d8aa2beed870f08 Archit Taneja   2015-10-14  706  
d8aa2beed870f08 Archit Taneja   2015-10-14  707  	if (rate == 0)
d8aa2beed870f08 Archit Taneja   2015-10-14  708  		return -EINVAL;
d8aa2beed870f08 Archit Taneja   2015-10-14  709  
d8aa2beed870f08 Archit Taneja   2015-10-14  710  	ret = regmap_read(rcg->clkr.regmap, rcg->ns_reg, &ns);
d8aa2beed870f08 Archit Taneja   2015-10-14  711  	if (ret)
d8aa2beed870f08 Archit Taneja   2015-10-14  712  		return ret;
d8aa2beed870f08 Archit Taneja   2015-10-14  713  
d8aa2beed870f08 Archit Taneja   2015-10-14  714  	ns = ns_to_src(&rcg->s, ns);
d8aa2beed870f08 Archit Taneja   2015-10-14  715  
d8aa2beed870f08 Archit Taneja   2015-10-14  716  	for (i = 0; i < num_parents; i++) {
d8aa2beed870f08 Archit Taneja   2015-10-14  717  		if (ns == rcg->s.parent_map[i].cfg) {
d8aa2beed870f08 Archit Taneja   2015-10-14  718  			f.src = rcg->s.parent_map[i].src;
d8aa2beed870f08 Archit Taneja   2015-10-14  719  			break;
d8aa2beed870f08 Archit Taneja   2015-10-14  720  		}
d8aa2beed870f08 Archit Taneja   2015-10-14  721  	}
d8aa2beed870f08 Archit Taneja   2015-10-14  722  
d8aa2beed870f08 Archit Taneja   2015-10-14  723  	div = parent_rate / rate;
d8aa2beed870f08 Archit Taneja   2015-10-14  724  
d8aa2beed870f08 Archit Taneja   2015-10-14  725  	if (div >= 1 && div <= pre_div_max) {
d8aa2beed870f08 Archit Taneja   2015-10-14  726  		f.pre_div = div;
d8aa2beed870f08 Archit Taneja   2015-10-14  727  		return __clk_rcg_set_rate(rcg, &f);
d8aa2beed870f08 Archit Taneja   2015-10-14  728  	}
d8aa2beed870f08 Archit Taneja   2015-10-14  729  
d8aa2beed870f08 Archit Taneja   2015-10-14  730  	return -EINVAL;
d8aa2beed870f08 Archit Taneja   2015-10-14  731  }
d8aa2beed870f08 Archit Taneja   2015-10-14  732  
d8aa2beed870f08 Archit Taneja   2015-10-14  733  static int clk_rcg_esc_set_rate_and_parent(struct clk_hw *hw,
d8aa2beed870f08 Archit Taneja   2015-10-14  734  		unsigned long rate, unsigned long parent_rate, u8 index)
d8aa2beed870f08 Archit Taneja   2015-10-14  735  {
d8aa2beed870f08 Archit Taneja   2015-10-14  736  	return clk_rcg_esc_set_rate(hw, rate, parent_rate);
d8aa2beed870f08 Archit Taneja   2015-10-14  737  }
d8aa2beed870f08 Archit Taneja   2015-10-14  738  
9d3745d44a7faa7 Stephen Boyd    2015-03-06  739  /*
9d3745d44a7faa7 Stephen Boyd    2015-03-06  740   * This type of clock has a glitch-free mux that switches between the output of
9d3745d44a7faa7 Stephen Boyd    2015-03-06  741   * the M/N counter and an always on clock source (XO). When clk_set_rate() is
9d3745d44a7faa7 Stephen Boyd    2015-03-06  742   * called we need to make sure that we don't switch to the M/N counter if it
9d3745d44a7faa7 Stephen Boyd    2015-03-06  743   * isn't clocking because the mux will get stuck and the clock will stop
9d3745d44a7faa7 Stephen Boyd    2015-03-06  744   * outputting a clock. This can happen if the framework isn't aware that this
9d3745d44a7faa7 Stephen Boyd    2015-03-06  745   * clock is on and so clk_set_rate() doesn't turn on the new parent. To fix
9d3745d44a7faa7 Stephen Boyd    2015-03-06  746   * this we switch the mux in the enable/disable ops and reprogram the M/N
9d3745d44a7faa7 Stephen Boyd    2015-03-06  747   * counter in the set_rate op. We also make sure to switch away from the M/N
9d3745d44a7faa7 Stephen Boyd    2015-03-06  748   * counter in set_rate if software thinks the clock is off.
9d3745d44a7faa7 Stephen Boyd    2015-03-06  749   */
9d3745d44a7faa7 Stephen Boyd    2015-03-06  750  static int clk_rcg_lcc_set_rate(struct clk_hw *hw, unsigned long rate,
9d3745d44a7faa7 Stephen Boyd    2015-03-06  751  				unsigned long parent_rate)
9d3745d44a7faa7 Stephen Boyd    2015-03-06  752  {
9d3745d44a7faa7 Stephen Boyd    2015-03-06  753  	struct clk_rcg *rcg = to_clk_rcg(hw);
9d3745d44a7faa7 Stephen Boyd    2015-03-06  754  	const struct freq_tbl *f;
9d3745d44a7faa7 Stephen Boyd    2015-03-06  755  	int ret;
9d3745d44a7faa7 Stephen Boyd    2015-03-06  756  	u32 gfm = BIT(10);
9d3745d44a7faa7 Stephen Boyd    2015-03-06  757  
9d3745d44a7faa7 Stephen Boyd    2015-03-06  758  	f = qcom_find_freq(rcg->freq_tbl, rate);
9d3745d44a7faa7 Stephen Boyd    2015-03-06  759  	if (!f)
9d3745d44a7faa7 Stephen Boyd    2015-03-06  760  		return -EINVAL;
9d3745d44a7faa7 Stephen Boyd    2015-03-06  761  
9d3745d44a7faa7 Stephen Boyd    2015-03-06  762  	/* Switch to XO to avoid glitches */
9d3745d44a7faa7 Stephen Boyd    2015-03-06  763  	regmap_update_bits(rcg->clkr.regmap, rcg->ns_reg, gfm, 0);
9d3745d44a7faa7 Stephen Boyd    2015-03-06  764  	ret = __clk_rcg_set_rate(rcg, f);
9d3745d44a7faa7 Stephen Boyd    2015-03-06  765  	/* Switch back to M/N if it's clocking */
9d3745d44a7faa7 Stephen Boyd    2015-03-06  766  	if (__clk_is_enabled(hw->clk))
9d3745d44a7faa7 Stephen Boyd    2015-03-06  767  		regmap_update_bits(rcg->clkr.regmap, rcg->ns_reg, gfm, gfm);
9d3745d44a7faa7 Stephen Boyd    2015-03-06  768  
9d3745d44a7faa7 Stephen Boyd    2015-03-06  769  	return ret;
9d3745d44a7faa7 Stephen Boyd    2015-03-06  770  }
9d3745d44a7faa7 Stephen Boyd    2015-03-06  771  
9d3745d44a7faa7 Stephen Boyd    2015-03-06  772  static int clk_rcg_lcc_enable(struct clk_hw *hw)
9d3745d44a7faa7 Stephen Boyd    2015-03-06  773  {
9d3745d44a7faa7 Stephen Boyd    2015-03-06  774  	struct clk_rcg *rcg = to_clk_rcg(hw);
9d3745d44a7faa7 Stephen Boyd    2015-03-06  775  	u32 gfm = BIT(10);
9d3745d44a7faa7 Stephen Boyd    2015-03-06  776  
9d3745d44a7faa7 Stephen Boyd    2015-03-06  777  	/* Use M/N */
9d3745d44a7faa7 Stephen Boyd    2015-03-06  778  	return regmap_update_bits(rcg->clkr.regmap, rcg->ns_reg, gfm, gfm);
9d3745d44a7faa7 Stephen Boyd    2015-03-06  779  }
9d3745d44a7faa7 Stephen Boyd    2015-03-06  780  
9d3745d44a7faa7 Stephen Boyd    2015-03-06  781  static void clk_rcg_lcc_disable(struct clk_hw *hw)
9d3745d44a7faa7 Stephen Boyd    2015-03-06  782  {
9d3745d44a7faa7 Stephen Boyd    2015-03-06  783  	struct clk_rcg *rcg = to_clk_rcg(hw);
9d3745d44a7faa7 Stephen Boyd    2015-03-06  784  	u32 gfm = BIT(10);
9d3745d44a7faa7 Stephen Boyd    2015-03-06  785  
9d3745d44a7faa7 Stephen Boyd    2015-03-06  786  	/* Use XO */
9d3745d44a7faa7 Stephen Boyd    2015-03-06  787  	regmap_update_bits(rcg->clkr.regmap, rcg->ns_reg, gfm, 0);
9d3745d44a7faa7 Stephen Boyd    2015-03-06  788  }
9d3745d44a7faa7 Stephen Boyd    2015-03-06  789  
bcd61c0f535a04a Stephen Boyd    2014-01-15  790  static int __clk_dyn_rcg_set_rate(struct clk_hw *hw, unsigned long rate)
bcd61c0f535a04a Stephen Boyd    2014-01-15  791  {
bcd61c0f535a04a Stephen Boyd    2014-01-15  792  	struct clk_dyn_rcg *rcg = to_clk_dyn_rcg(hw);
bcd61c0f535a04a Stephen Boyd    2014-01-15  793  	const struct freq_tbl *f;
bcd61c0f535a04a Stephen Boyd    2014-01-15  794  
50c6a50344c58f7 Stephen Boyd    2014-09-04  795  	f = qcom_find_freq(rcg->freq_tbl, rate);
bcd61c0f535a04a Stephen Boyd    2014-01-15  796  	if (!f)
bcd61c0f535a04a Stephen Boyd    2014-01-15  797  		return -EINVAL;
bcd61c0f535a04a Stephen Boyd    2014-01-15  798  
fae507afbdf3384 Georgi Djakov   2015-03-20  799  	return configure_bank(rcg, f);
bcd61c0f535a04a Stephen Boyd    2014-01-15  800  }
bcd61c0f535a04a Stephen Boyd    2014-01-15  801  
bcd61c0f535a04a Stephen Boyd    2014-01-15  802  static int clk_dyn_rcg_set_rate(struct clk_hw *hw, unsigned long rate,
bcd61c0f535a04a Stephen Boyd    2014-01-15  803  			    unsigned long parent_rate)
bcd61c0f535a04a Stephen Boyd    2014-01-15  804  {
bcd61c0f535a04a Stephen Boyd    2014-01-15  805  	return __clk_dyn_rcg_set_rate(hw, rate);
bcd61c0f535a04a Stephen Boyd    2014-01-15  806  }
bcd61c0f535a04a Stephen Boyd    2014-01-15  807  
bcd61c0f535a04a Stephen Boyd    2014-01-15  808  static int clk_dyn_rcg_set_rate_and_parent(struct clk_hw *hw,
bcd61c0f535a04a Stephen Boyd    2014-01-15  809  		unsigned long rate, unsigned long parent_rate, u8 index)
bcd61c0f535a04a Stephen Boyd    2014-01-15  810  {
bcd61c0f535a04a Stephen Boyd    2014-01-15  811  	return __clk_dyn_rcg_set_rate(hw, rate);
bcd61c0f535a04a Stephen Boyd    2014-01-15  812  }
bcd61c0f535a04a Stephen Boyd    2014-01-15  813  
bcd61c0f535a04a Stephen Boyd    2014-01-15  814  const struct clk_ops clk_rcg_ops = {
bcd61c0f535a04a Stephen Boyd    2014-01-15  815  	.enable = clk_enable_regmap,
bcd61c0f535a04a Stephen Boyd    2014-01-15  816  	.disable = clk_disable_regmap,
bcd61c0f535a04a Stephen Boyd    2014-01-15  817  	.get_parent = clk_rcg_get_parent,
bcd61c0f535a04a Stephen Boyd    2014-01-15  818  	.set_parent = clk_rcg_set_parent,
bcd61c0f535a04a Stephen Boyd    2014-01-15  819  	.recalc_rate = clk_rcg_recalc_rate,
bcd61c0f535a04a Stephen Boyd    2014-01-15  820  	.determine_rate = clk_rcg_determine_rate,
bcd61c0f535a04a Stephen Boyd    2014-01-15  821  	.set_rate = clk_rcg_set_rate,
bcd61c0f535a04a Stephen Boyd    2014-01-15  822  };
bcd61c0f535a04a Stephen Boyd    2014-01-15  823  EXPORT_SYMBOL_GPL(clk_rcg_ops);
bcd61c0f535a04a Stephen Boyd    2014-01-15  824  
404c1ff67d241e8 Stephen Boyd    2014-07-11  825  const struct clk_ops clk_rcg_bypass_ops = {
404c1ff67d241e8 Stephen Boyd    2014-07-11  826  	.enable = clk_enable_regmap,
404c1ff67d241e8 Stephen Boyd    2014-07-11  827  	.disable = clk_disable_regmap,
404c1ff67d241e8 Stephen Boyd    2014-07-11  828  	.get_parent = clk_rcg_get_parent,
404c1ff67d241e8 Stephen Boyd    2014-07-11  829  	.set_parent = clk_rcg_set_parent,
404c1ff67d241e8 Stephen Boyd    2014-07-11  830  	.recalc_rate = clk_rcg_recalc_rate,
404c1ff67d241e8 Stephen Boyd    2014-07-11  831  	.determine_rate = clk_rcg_bypass_determine_rate,
404c1ff67d241e8 Stephen Boyd    2014-07-11  832  	.set_rate = clk_rcg_bypass_set_rate,
404c1ff67d241e8 Stephen Boyd    2014-07-11  833  };
404c1ff67d241e8 Stephen Boyd    2014-07-11  834  EXPORT_SYMBOL_GPL(clk_rcg_bypass_ops);
404c1ff67d241e8 Stephen Boyd    2014-07-11  835  
d8aa2beed870f08 Archit Taneja   2015-10-14  836  const struct clk_ops clk_rcg_bypass2_ops = {
d8aa2beed870f08 Archit Taneja   2015-10-14  837  	.enable = clk_enable_regmap,
d8aa2beed870f08 Archit Taneja   2015-10-14  838  	.disable = clk_disable_regmap,
d8aa2beed870f08 Archit Taneja   2015-10-14  839  	.get_parent = clk_rcg_get_parent,
d8aa2beed870f08 Archit Taneja   2015-10-14  840  	.set_parent = clk_rcg_set_parent,
d8aa2beed870f08 Archit Taneja   2015-10-14  841  	.recalc_rate = clk_rcg_recalc_rate,
d8aa2beed870f08 Archit Taneja   2015-10-14  842  	.determine_rate = clk_rcg_bypass2_determine_rate,
d8aa2beed870f08 Archit Taneja   2015-10-14  843  	.set_rate = clk_rcg_bypass2_set_rate,
d8aa2beed870f08 Archit Taneja   2015-10-14  844  	.set_rate_and_parent = clk_rcg_bypass2_set_rate_and_parent,
d8aa2beed870f08 Archit Taneja   2015-10-14  845  };
d8aa2beed870f08 Archit Taneja   2015-10-14  846  EXPORT_SYMBOL_GPL(clk_rcg_bypass2_ops);
d8aa2beed870f08 Archit Taneja   2015-10-14  847  
d8aa2beed870f08 Archit Taneja   2015-10-14  848  const struct clk_ops clk_rcg_pixel_ops = {
d8aa2beed870f08 Archit Taneja   2015-10-14  849  	.enable = clk_enable_regmap,
d8aa2beed870f08 Archit Taneja   2015-10-14  850  	.disable = clk_disable_regmap,
d8aa2beed870f08 Archit Taneja   2015-10-14  851  	.get_parent = clk_rcg_get_parent,
d8aa2beed870f08 Archit Taneja   2015-10-14  852  	.set_parent = clk_rcg_set_parent,
d8aa2beed870f08 Archit Taneja   2015-10-14  853  	.recalc_rate = clk_rcg_recalc_rate,
d8aa2beed870f08 Archit Taneja   2015-10-14  854  	.determine_rate = clk_rcg_pixel_determine_rate,
d8aa2beed870f08 Archit Taneja   2015-10-14  855  	.set_rate = clk_rcg_pixel_set_rate,
d8aa2beed870f08 Archit Taneja   2015-10-14  856  	.set_rate_and_parent = clk_rcg_pixel_set_rate_and_parent,
d8aa2beed870f08 Archit Taneja   2015-10-14  857  };
d8aa2beed870f08 Archit Taneja   2015-10-14  858  EXPORT_SYMBOL_GPL(clk_rcg_pixel_ops);
d8aa2beed870f08 Archit Taneja   2015-10-14  859  
d8aa2beed870f08 Archit Taneja   2015-10-14  860  const struct clk_ops clk_rcg_esc_ops = {
d8aa2beed870f08 Archit Taneja   2015-10-14  861  	.enable = clk_enable_regmap,
d8aa2beed870f08 Archit Taneja   2015-10-14  862  	.disable = clk_disable_regmap,
d8aa2beed870f08 Archit Taneja   2015-10-14  863  	.get_parent = clk_rcg_get_parent,
d8aa2beed870f08 Archit Taneja   2015-10-14  864  	.set_parent = clk_rcg_set_parent,
d8aa2beed870f08 Archit Taneja   2015-10-14  865  	.recalc_rate = clk_rcg_recalc_rate,
d8aa2beed870f08 Archit Taneja   2015-10-14  866  	.determine_rate = clk_rcg_esc_determine_rate,
d8aa2beed870f08 Archit Taneja   2015-10-14  867  	.set_rate = clk_rcg_esc_set_rate,
d8aa2beed870f08 Archit Taneja   2015-10-14  868  	.set_rate_and_parent = clk_rcg_esc_set_rate_and_parent,
d8aa2beed870f08 Archit Taneja   2015-10-14  869  };
d8aa2beed870f08 Archit Taneja   2015-10-14  870  EXPORT_SYMBOL_GPL(clk_rcg_esc_ops);
d8aa2beed870f08 Archit Taneja   2015-10-14  871  
9d3745d44a7faa7 Stephen Boyd    2015-03-06  872  const struct clk_ops clk_rcg_lcc_ops = {
9d3745d44a7faa7 Stephen Boyd    2015-03-06  873  	.enable = clk_rcg_lcc_enable,
9d3745d44a7faa7 Stephen Boyd    2015-03-06  874  	.disable = clk_rcg_lcc_disable,
9d3745d44a7faa7 Stephen Boyd    2015-03-06  875  	.get_parent = clk_rcg_get_parent,
9d3745d44a7faa7 Stephen Boyd    2015-03-06  876  	.set_parent = clk_rcg_set_parent,
9d3745d44a7faa7 Stephen Boyd    2015-03-06  877  	.recalc_rate = clk_rcg_recalc_rate,
9d3745d44a7faa7 Stephen Boyd    2015-03-06  878  	.determine_rate = clk_rcg_determine_rate,
9d3745d44a7faa7 Stephen Boyd    2015-03-06  879  	.set_rate = clk_rcg_lcc_set_rate,
9d3745d44a7faa7 Stephen Boyd    2015-03-06  880  };
9d3745d44a7faa7 Stephen Boyd    2015-03-06  881  EXPORT_SYMBOL_GPL(clk_rcg_lcc_ops);
9d3745d44a7faa7 Stephen Boyd    2015-03-06  882  
bcd61c0f535a04a Stephen Boyd    2014-01-15  883  const struct clk_ops clk_dyn_rcg_ops = {
bcd61c0f535a04a Stephen Boyd    2014-01-15  884  	.enable = clk_enable_regmap,
bcd61c0f535a04a Stephen Boyd    2014-01-15  885  	.is_enabled = clk_is_enabled_regmap,
bcd61c0f535a04a Stephen Boyd    2014-01-15  886  	.disable = clk_disable_regmap,
bcd61c0f535a04a Stephen Boyd    2014-01-15  887  	.get_parent = clk_dyn_rcg_get_parent,
bcd61c0f535a04a Stephen Boyd    2014-01-15  888  	.set_parent = clk_dyn_rcg_set_parent,
bcd61c0f535a04a Stephen Boyd    2014-01-15  889  	.recalc_rate = clk_dyn_rcg_recalc_rate,
bcd61c0f535a04a Stephen Boyd    2014-01-15  890  	.determine_rate = clk_dyn_rcg_determine_rate,
bcd61c0f535a04a Stephen Boyd    2014-01-15  891  	.set_rate = clk_dyn_rcg_set_rate,
bcd61c0f535a04a Stephen Boyd    2014-01-15  892  	.set_rate_and_parent = clk_dyn_rcg_set_rate_and_parent,
bcd61c0f535a04a Stephen Boyd    2014-01-15  893  };
bcd61c0f535a04a Stephen Boyd    2014-01-15  894  EXPORT_SYMBOL_GPL(clk_dyn_rcg_ops);

:::::: The code at line 77 was first introduced by commit
:::::: 7f218978f10693f65e35b0bbcdcd539fbe78221a clk: qcom: Fix clk_get_parent function return value

:::::: TO: Georgi Djakov <georgi.djakov@linaro.org>
:::::: CC: Stephen Boyd <sboyd@codeaurora.org>

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/201907282236.8BVFJxC8%25lkp%40intel.com.

--cphll2k3r7nhwlyp
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--cphll2k3r7nhwlyp--
