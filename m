Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBJPATSBQMGQEUK72PCY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3c.google.com (mail-oo1-xc3c.google.com [IPv6:2607:f8b0:4864:20::c3c])
	by mail.lfdr.de (Postfix) with ESMTPS id BE6B9352B9F
	for <lists+clang-built-linux@lfdr.de>; Fri,  2 Apr 2021 16:54:30 +0200 (CEST)
Received: by mail-oo1-xc3c.google.com with SMTP id a1sf4451751oop.23
        for <lists+clang-built-linux@lfdr.de>; Fri, 02 Apr 2021 07:54:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617375269; cv=pass;
        d=google.com; s=arc-20160816;
        b=MEYpjE9myXyUzrhxUa0Pek4b+DaTTUZQgjyxqS+D9o2HTAqKfkwv1qWPN68iEqLN+4
         MP8Nmw94MPpjQPAjZpeLSqdS8Zz4jrgi92S9yh3qEJOfnqpq9bWLQo8/m+y3ehp/dKFH
         /w7tgC78YnvfXKLN2ZRPPLLEMgWyTWR95SzjDlWeE8MZ4E/s6GAAaf83A9vlDinTIbj3
         CYSfkixG52xv0e18bqRGsEkaVPhhvMbktgBczrlae6Toyehkf9Da713ZBy+FKLs+xFbF
         5wBnNVA2453EKW2Buj+l7YsqbUdxTXVsad+qOmVvBK+wPynaUNb3TgjSpyoNAAejrIfb
         h5eA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr:sender:dkim-signature;
        bh=6TBr+gN5Z8DMbP0Wht3Z+XZLKcncOMmzoiba+USEdio=;
        b=v3Laju+CHf91IikwAibfaGwRSxKmGQV6rxAbSY3PAAjQPclu7My4YCDfRW/UAWYWlc
         RycJUwx7aMQ7H/FSzmY9QpmrzJoH0rurb3d7jRzsfhREQ/3G55Ou7PTRZzWIUa8B3Oq8
         X3ZnHFXTpHQZ0R7T8+bI+5noR9MCriWqdAGZf89+abJkAnyV1Z40n/PTroZtCqXboFrf
         rSxYgzOEqG3tOUuwXPSnQr71534Yomljg6WqAOvhKK6lmU/0aPhW4c1aaTigFFSHu4KC
         VqhqH4YRyyCyTghTFF1m6JWyOnDaZDFuBi/31qd45hdwc0OfpvcpJMLt0QlTx2IMZgXk
         gELw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=6TBr+gN5Z8DMbP0Wht3Z+XZLKcncOMmzoiba+USEdio=;
        b=Up6PnTw2+AwwINf+p06F3A3LoEJ8ManXslu2X7kUHDtxzSIG7RBTHYtWFXG24b/qSp
         20H6YWhxbTv/jyY0Ogbz2K1eeiwB83sH8WaIq9chONP1uh50sEAjj/rhj2NuK/wziqDE
         Vu2Yqti3HzX3MzznAByMWh9PMeNbmZfvHbNxM1pjC5kNw5Dn8V1kBOsWTGdgVHlR1F4I
         Q7En10CXx62lK0Qnvjc/6t+2DnCx7ukBnxUkhKs8MWTXfrLyEVoo9sIkhqQAdCtyZ2Ex
         58o8Nba001vvP8WTjqD3SPXbKevh0+r6V5ME0Y5moglprYjs9aNv5Ide42qS3TefCxKX
         MvuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:mime-version:content-disposition:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=6TBr+gN5Z8DMbP0Wht3Z+XZLKcncOMmzoiba+USEdio=;
        b=Zwq2w0HG+mxysCD6DV7nRZgahKnu+iRLr6mGONWXexGC7zHsSg2oHkerWpbhlnISKG
         CabLKThJnqWN0iGOTWQVudoDaCkDfuFj7wDeXf9CDl4KrXchJ0ttmjK13LL2huvsvt0e
         4vWR87mmcRhq/RB2iixev9MPA0px0P8f+swY35b+wGldeNlVIKwGzcTXcg3ANDYpxVw9
         a5F3h4oy1Rsft6wuQ+g2vadPrR7YSLs4JQIxy0ofnys0xDoTU1UlWN9MtfXA1o9iiGoy
         1Ae45v6+VyD2lb/OTM+1JaJb8mO/JhQhG6srVlw3mv97DaeMPAylGEHspJN3r5Bppvxf
         kpDw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530S5dZnfjkZdl6TjfxdvZNGqQYqpLUkRU6zBs1c1L1Oc05ErGou
	kjDkYnXpZH4LCLGyrOIkySs=
X-Google-Smtp-Source: ABdhPJz1Ms8LRSq3Bnd3rcraa9zVJfg93HmkAHvy6rs2ahD3b8+VWuXRF6kT8Hy0X0iN4CUUYopZHA==
X-Received: by 2002:aca:1a19:: with SMTP id a25mr9836304oia.167.1617375269287;
        Fri, 02 Apr 2021 07:54:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:5551:: with SMTP id h17ls2174932oti.1.gmail; Fri, 02 Apr
 2021 07:54:29 -0700 (PDT)
X-Received: by 2002:a05:6830:1658:: with SMTP id h24mr10821304otr.263.1617375268770;
        Fri, 02 Apr 2021 07:54:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617375268; cv=none;
        d=google.com; s=arc-20160816;
        b=NbjF8m+AAtgj7YuEiZCJV54/vwZjoswBxXcPaRXI+6CredWDEwyIBjG8ZQCaS+xQA/
         PrYPDDr46YcApHWKfYVQ7YiirPtGQcpn1xo+4Sv23N0Mps5x+qflJ+xvKywe8Xj1nd6a
         olCTWSZ8hzIfcoJ/soFu7TKps0v2pSeBCYm4Huw9G5lmQ0te3EG0tFjGgCA87hhtwBpS
         AfiGhKDb+3Z7stnBtBYUnhL5o9RO6h+2NSlSRtf4xoR1+4i1tyhxUViSOS13hWzCIt5c
         Hi7YWaUgNm6hUUsRHB/cnsxBiikzBm39rEKBiBYv140Wjodw6gfrfhzTNSXHwmnNFekc
         XxrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr;
        bh=36lZ7VvBOAo1Xg9rqcbMi6uaH67u/YaoIAZlO/2lWB4=;
        b=pUpZie+6pjj5MwFQTCSdH1mjw+w17FMDm9Wk41ucuhzCi5G3cR5EwOr9xjCXifm9xL
         HoCaLXzm/RbYBuO3klQPW/tU0RPcOp5cYKn9bWal90rbw2JmmIujmVwVPb/RfL722L+I
         vqLI2IYF/jRITnC/YrLDq1VGdf99bt1tXuvQQFLePtUFkiHllQyCArd52hXWzNWdbO6c
         xgYi81VPz/jPAZpTOX09+fpV15lqVnSMh+Fsnk7d+ap3FQqSM0EoORjofyv66sTzR7dA
         N7+FHL8FXhX438YGcMLevKh1ireL5IvQMp/kvnC0PRV9FYAo8KHbBZontAPUHEtQSLXC
         3qLA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga03.intel.com (mga03.intel.com. [134.134.136.65])
        by gmr-mx.google.com with ESMTPS id w4si467038oiv.4.2021.04.02.07.54.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 02 Apr 2021 07:54:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.65 as permitted sender) client-ip=134.134.136.65;
IronPort-SDR: 6LSl7rq4nHBlRu1QZl32UIgs32gUK7G4HMpmvuG5gP1Jukym1d35pLDpc+JpkQmX0ZXUdh8zEw
 Y73YLITrKITw==
X-IronPort-AV: E=McAfee;i="6000,8403,9942"; a="192516935"
X-IronPort-AV: E=Sophos;i="5.81,300,1610438400"; 
   d="gz'50?scan'50,208,50";a="192516935"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 02 Apr 2021 07:54:27 -0700
IronPort-SDR: Gb3hUKnjhvWQ3hon65wVqoCnq00DbmegdT7XeJvrR6c53SpAA23atM4rH4qPx8W+7MiIo67xqd
 Vlzuw6F79nOA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,300,1610438400"; 
   d="gz'50?scan'50,208,50";a="456454940"
Received: from lkp-server01.sh.intel.com (HELO 69d8fcc516b7) ([10.239.97.150])
  by orsmga001.jf.intel.com with ESMTP; 02 Apr 2021 07:54:24 -0700
Received: from kbuild by 69d8fcc516b7 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lSLBn-0007BH-Qy; Fri, 02 Apr 2021 14:54:23 +0000
Date: Fri, 2 Apr 2021 22:53:40 +0800
From: kernel test robot <lkp@intel.com>
To: Jonathan Cameron <Jonathan.Cameron@huawei.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	Alexandru Ardelean <alexandru.ardelean@analog.com>
Subject: [iio:testing 39/57] drivers/iio/cdc/ad7150.c:258:6: warning:
 variable 'ret' is used uninitialized whenever 'if' condition is false
Message-ID: <202104022233.wgovuF9S-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="gKMricLos+KVdGMg"
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


--gKMricLos+KVdGMg
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   https://git.kernel.org/pub/scm/linux/kernel/git/jic23/iio.git testing
head:   cf957639a7fcb5f07c6dd5b959ea1d18efc932db
commit: 53e5aaab4c850f99a9eb3144cc29eccea7570c7f [39/57] iio:cdc:ad7150: Move driver out of staging.
config: x86_64-randconfig-a001-20210401 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project b23a314146956dd29b719ab537608ced736fc036)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        # https://git.kernel.org/pub/scm/linux/kernel/git/jic23/iio.git/commit/?id=53e5aaab4c850f99a9eb3144cc29eccea7570c7f
        git remote add iio https://git.kernel.org/pub/scm/linux/kernel/git/jic23/iio.git
        git fetch --no-tags iio testing
        git checkout 53e5aaab4c850f99a9eb3144cc29eccea7570c7f
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/iio/cdc/ad7150.c:258:6: warning: variable 'ret' is used uninitialized whenever 'if' condition is false [-Wsometimes-uninitialized]
           if ((type != chip->type) || (dir != chip->dir)) {
               ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/iio/cdc/ad7150.c:321:9: note: uninitialized use occurs here
           return ret;
                  ^~~
   drivers/iio/cdc/ad7150.c:258:2: note: remove the 'if' if its condition is always true
           if ((type != chip->type) || (dir != chip->dir)) {
           ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/iio/cdc/ad7150.c:238:9: note: initialize the variable 'ret' to silence this warning
           int ret;
                  ^
                   = 0
   1 warning generated.


vim +258 drivers/iio/cdc/ad7150.c

54c5be349bf66e drivers/staging/iio/adc/ad7150.c Barry Song         2010-10-27  231  
531efd6aa09916 drivers/staging/iio/adc/ad7150.c Jonathan Cameron   2011-09-02  232  static int ad7150_write_event_config(struct iio_dev *indio_dev,
c4f0ebd91467c7 drivers/staging/iio/cdc/ad7150.c Shraddha Barke     2015-12-29  233  				     const struct iio_chan_spec *chan,
c4f0ebd91467c7 drivers/staging/iio/cdc/ad7150.c Shraddha Barke     2015-12-29  234  				     enum iio_event_type type,
1489d629a481dc drivers/staging/iio/cdc/ad7150.c Lars-Peter Clausen 2013-10-07  235  				     enum iio_event_direction dir, int state)
54c5be349bf66e drivers/staging/iio/adc/ad7150.c Barry Song         2010-10-27  236  {
531efd6aa09916 drivers/staging/iio/adc/ad7150.c Jonathan Cameron   2011-09-02  237  	struct ad7150_chip_info *chip = iio_priv(indio_dev);
887b66527c6435 drivers/staging/iio/cdc/ad7150.c Jonathan Cameron   2021-03-14  238  	int ret;
54c5be349bf66e drivers/staging/iio/adc/ad7150.c Barry Song         2010-10-27  239  
b8546bdcf08e97 drivers/staging/iio/cdc/ad7150.c Jonathan Cameron   2021-03-14  240  	/*
b8546bdcf08e97 drivers/staging/iio/cdc/ad7150.c Jonathan Cameron   2021-03-14  241  	 * There is only a single shared control and no on chip
b8546bdcf08e97 drivers/staging/iio/cdc/ad7150.c Jonathan Cameron   2021-03-14  242  	 * interrupt disables for the two interrupt lines.
b8546bdcf08e97 drivers/staging/iio/cdc/ad7150.c Jonathan Cameron   2021-03-14  243  	 * So, enabling will switch the events configured to enable
b8546bdcf08e97 drivers/staging/iio/cdc/ad7150.c Jonathan Cameron   2021-03-14  244  	 * whatever was most recently requested and if necessary enable_irq()
b8546bdcf08e97 drivers/staging/iio/cdc/ad7150.c Jonathan Cameron   2021-03-14  245  	 * the interrupt and any disable will disable_irq() for that
b8546bdcf08e97 drivers/staging/iio/cdc/ad7150.c Jonathan Cameron   2021-03-14  246  	 * channels interrupt.
b8546bdcf08e97 drivers/staging/iio/cdc/ad7150.c Jonathan Cameron   2021-03-14  247  	 */
b8546bdcf08e97 drivers/staging/iio/cdc/ad7150.c Jonathan Cameron   2021-03-14  248  	if (!state) {
b8546bdcf08e97 drivers/staging/iio/cdc/ad7150.c Jonathan Cameron   2021-03-14  249  		if ((chip->int_enabled[chan->channel]) &&
b8546bdcf08e97 drivers/staging/iio/cdc/ad7150.c Jonathan Cameron   2021-03-14  250  		    (type == chip->type) && (dir == chip->dir)) {
b8546bdcf08e97 drivers/staging/iio/cdc/ad7150.c Jonathan Cameron   2021-03-14  251  			disable_irq(chip->interrupts[chan->channel]);
b8546bdcf08e97 drivers/staging/iio/cdc/ad7150.c Jonathan Cameron   2021-03-14  252  			chip->int_enabled[chan->channel] = false;
b8546bdcf08e97 drivers/staging/iio/cdc/ad7150.c Jonathan Cameron   2021-03-14  253  		}
531efd6aa09916 drivers/staging/iio/adc/ad7150.c Jonathan Cameron   2011-09-02  254  		return 0;
b8546bdcf08e97 drivers/staging/iio/cdc/ad7150.c Jonathan Cameron   2021-03-14  255  	}
b8546bdcf08e97 drivers/staging/iio/cdc/ad7150.c Jonathan Cameron   2021-03-14  256  
531efd6aa09916 drivers/staging/iio/adc/ad7150.c Jonathan Cameron   2011-09-02  257  	mutex_lock(&chip->state_lock);
b8546bdcf08e97 drivers/staging/iio/cdc/ad7150.c Jonathan Cameron   2021-03-14 @258  	if ((type != chip->type) || (dir != chip->dir)) {
887b66527c6435 drivers/staging/iio/cdc/ad7150.c Jonathan Cameron   2021-03-14  259  		int rising = (dir == IIO_EV_DIR_RISING);
887b66527c6435 drivers/staging/iio/cdc/ad7150.c Jonathan Cameron   2021-03-14  260  		u8 thresh_type, cfg, fixed;
b8546bdcf08e97 drivers/staging/iio/cdc/ad7150.c Jonathan Cameron   2021-03-14  261  
b8546bdcf08e97 drivers/staging/iio/cdc/ad7150.c Jonathan Cameron   2021-03-14  262  		/*
b8546bdcf08e97 drivers/staging/iio/cdc/ad7150.c Jonathan Cameron   2021-03-14  263  		 * Need to temporarily disable both interrupts if
b8546bdcf08e97 drivers/staging/iio/cdc/ad7150.c Jonathan Cameron   2021-03-14  264  		 * enabled - this is to avoid races around changing
b8546bdcf08e97 drivers/staging/iio/cdc/ad7150.c Jonathan Cameron   2021-03-14  265  		 * config and thresholds.
b8546bdcf08e97 drivers/staging/iio/cdc/ad7150.c Jonathan Cameron   2021-03-14  266  		 * Note enable/disable_irq() are reference counted so
b8546bdcf08e97 drivers/staging/iio/cdc/ad7150.c Jonathan Cameron   2021-03-14  267  		 * no need to check if already enabled.
b8546bdcf08e97 drivers/staging/iio/cdc/ad7150.c Jonathan Cameron   2021-03-14  268  		 */
b8546bdcf08e97 drivers/staging/iio/cdc/ad7150.c Jonathan Cameron   2021-03-14  269  		disable_irq(chip->interrupts[0]);
b8546bdcf08e97 drivers/staging/iio/cdc/ad7150.c Jonathan Cameron   2021-03-14  270  		disable_irq(chip->interrupts[1]);
b8546bdcf08e97 drivers/staging/iio/cdc/ad7150.c Jonathan Cameron   2021-03-14  271  
45fdaf4b51faa3 drivers/staging/iio/cdc/ad7150.c Jonathan Cameron   2021-03-14  272  		ret = i2c_smbus_read_byte_data(chip->client, AD7150_CFG_REG);
531efd6aa09916 drivers/staging/iio/adc/ad7150.c Jonathan Cameron   2011-09-02  273  		if (ret < 0)
531efd6aa09916 drivers/staging/iio/adc/ad7150.c Jonathan Cameron   2011-09-02  274  			goto error_ret;
54c5be349bf66e drivers/staging/iio/adc/ad7150.c Barry Song         2010-10-27  275  
45fdaf4b51faa3 drivers/staging/iio/cdc/ad7150.c Jonathan Cameron   2021-03-14  276  		cfg = ret & ~(AD7150_CFG_THRESHTYPE_MSK | AD7150_CFG_FIX);
531efd6aa09916 drivers/staging/iio/adc/ad7150.c Jonathan Cameron   2011-09-02  277  
45fdaf4b51faa3 drivers/staging/iio/cdc/ad7150.c Jonathan Cameron   2021-03-14  278  		if (type == IIO_EV_TYPE_THRESH_ADAPTIVE)
45fdaf4b51faa3 drivers/staging/iio/cdc/ad7150.c Jonathan Cameron   2021-03-14  279  			fixed = 0;
531efd6aa09916 drivers/staging/iio/adc/ad7150.c Jonathan Cameron   2011-09-02  280  		else
45fdaf4b51faa3 drivers/staging/iio/cdc/ad7150.c Jonathan Cameron   2021-03-14  281  			fixed = 1;
45fdaf4b51faa3 drivers/staging/iio/cdc/ad7150.c Jonathan Cameron   2021-03-14  282  
531efd6aa09916 drivers/staging/iio/adc/ad7150.c Jonathan Cameron   2011-09-02  283  		if (rising)
45fdaf4b51faa3 drivers/staging/iio/cdc/ad7150.c Jonathan Cameron   2021-03-14  284  			thresh_type = AD7150_CFG_TT_POS;
531efd6aa09916 drivers/staging/iio/adc/ad7150.c Jonathan Cameron   2011-09-02  285  		else
45fdaf4b51faa3 drivers/staging/iio/cdc/ad7150.c Jonathan Cameron   2021-03-14  286  			thresh_type = AD7150_CFG_TT_NEG;
54c5be349bf66e drivers/staging/iio/adc/ad7150.c Barry Song         2010-10-27  287  
45fdaf4b51faa3 drivers/staging/iio/cdc/ad7150.c Jonathan Cameron   2021-03-14  288  		cfg |= FIELD_PREP(AD7150_CFG_FIX, fixed) |
45fdaf4b51faa3 drivers/staging/iio/cdc/ad7150.c Jonathan Cameron   2021-03-14  289  			FIELD_PREP(AD7150_CFG_THRESHTYPE_MSK, thresh_type);
54c5be349bf66e drivers/staging/iio/adc/ad7150.c Barry Song         2010-10-27  290  
45fdaf4b51faa3 drivers/staging/iio/cdc/ad7150.c Jonathan Cameron   2021-03-14  291  		ret = i2c_smbus_write_byte_data(chip->client, AD7150_CFG_REG,
45fdaf4b51faa3 drivers/staging/iio/cdc/ad7150.c Jonathan Cameron   2021-03-14  292  						cfg);
531efd6aa09916 drivers/staging/iio/adc/ad7150.c Jonathan Cameron   2011-09-02  293  		if (ret < 0)
531efd6aa09916 drivers/staging/iio/adc/ad7150.c Jonathan Cameron   2011-09-02  294  			goto error_ret;
54c5be349bf66e drivers/staging/iio/adc/ad7150.c Barry Song         2010-10-27  295  
b8546bdcf08e97 drivers/staging/iio/cdc/ad7150.c Jonathan Cameron   2021-03-14  296  		/*
b8546bdcf08e97 drivers/staging/iio/cdc/ad7150.c Jonathan Cameron   2021-03-14  297  		 * There is a potential race condition here, but not easy
b8546bdcf08e97 drivers/staging/iio/cdc/ad7150.c Jonathan Cameron   2021-03-14  298  		 * to close given we can't disable the interrupt at the
b8546bdcf08e97 drivers/staging/iio/cdc/ad7150.c Jonathan Cameron   2021-03-14  299  		 * chip side of things. Rely on the status bit.
b8546bdcf08e97 drivers/staging/iio/cdc/ad7150.c Jonathan Cameron   2021-03-14  300  		 */
b8546bdcf08e97 drivers/staging/iio/cdc/ad7150.c Jonathan Cameron   2021-03-14  301  		chip->type = type;
b8546bdcf08e97 drivers/staging/iio/cdc/ad7150.c Jonathan Cameron   2021-03-14  302  		chip->dir = dir;
54c5be349bf66e drivers/staging/iio/adc/ad7150.c Barry Song         2010-10-27  303  
531efd6aa09916 drivers/staging/iio/adc/ad7150.c Jonathan Cameron   2011-09-02  304  		/* update control attributes */
b8546bdcf08e97 drivers/staging/iio/cdc/ad7150.c Jonathan Cameron   2021-03-14  305  		ret = ad7150_write_event_params(indio_dev, chan->channel, type,
b8546bdcf08e97 drivers/staging/iio/cdc/ad7150.c Jonathan Cameron   2021-03-14  306  						dir);
b8546bdcf08e97 drivers/staging/iio/cdc/ad7150.c Jonathan Cameron   2021-03-14  307  		if (ret)
b8546bdcf08e97 drivers/staging/iio/cdc/ad7150.c Jonathan Cameron   2021-03-14  308  			goto error_ret;
b8546bdcf08e97 drivers/staging/iio/cdc/ad7150.c Jonathan Cameron   2021-03-14  309  		/* reenable any irq's we disabled whilst changing mode */
b8546bdcf08e97 drivers/staging/iio/cdc/ad7150.c Jonathan Cameron   2021-03-14  310  		enable_irq(chip->interrupts[0]);
b8546bdcf08e97 drivers/staging/iio/cdc/ad7150.c Jonathan Cameron   2021-03-14  311  		enable_irq(chip->interrupts[1]);
b8546bdcf08e97 drivers/staging/iio/cdc/ad7150.c Jonathan Cameron   2021-03-14  312  	}
b8546bdcf08e97 drivers/staging/iio/cdc/ad7150.c Jonathan Cameron   2021-03-14  313  	if (!chip->int_enabled[chan->channel]) {
b8546bdcf08e97 drivers/staging/iio/cdc/ad7150.c Jonathan Cameron   2021-03-14  314  		enable_irq(chip->interrupts[chan->channel]);
b8546bdcf08e97 drivers/staging/iio/cdc/ad7150.c Jonathan Cameron   2021-03-14  315  		chip->int_enabled[chan->channel] = true;
b8546bdcf08e97 drivers/staging/iio/cdc/ad7150.c Jonathan Cameron   2021-03-14  316  	}
b8546bdcf08e97 drivers/staging/iio/cdc/ad7150.c Jonathan Cameron   2021-03-14  317  
531efd6aa09916 drivers/staging/iio/adc/ad7150.c Jonathan Cameron   2011-09-02  318  error_ret:
531efd6aa09916 drivers/staging/iio/adc/ad7150.c Jonathan Cameron   2011-09-02  319  	mutex_unlock(&chip->state_lock);
54c5be349bf66e drivers/staging/iio/adc/ad7150.c Barry Song         2010-10-27  320  
91ca1a8c584f55 drivers/staging/iio/cdc/ad7150.c Pan Bian           2016-12-03  321  	return ret;
54c5be349bf66e drivers/staging/iio/adc/ad7150.c Barry Song         2010-10-27  322  }
54c5be349bf66e drivers/staging/iio/adc/ad7150.c Barry Song         2010-10-27  323  

:::::: The code at line 258 was first introduced by commit
:::::: b8546bdcf08e97b6ff31482cd7d244850c424994 staging:iio:cdc:ad7150: Rework interrupt handling.

:::::: TO: Jonathan Cameron <Jonathan.Cameron@huawei.com>
:::::: CC: Jonathan Cameron <Jonathan.Cameron@huawei.com>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202104022233.wgovuF9S-lkp%40intel.com.

--gKMricLos+KVdGMg
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

H4sICBUpZ2AAAy5jb25maWcAlDzLdts4svv+Cp30pnvRact23OmZ4wVIghJaJMEAoCx7w6PY
SsZ3/MiV5Z7k728VAJIACMpzs0giVAEoAPVGgT//9POMvB6eH7eH+9vtw8OP2dfd026/Pezu
Zl/uH3b/nGV8VnE1oxlT7wG5uH96/f77948X7cX57MP7+en7k9/2t+ez1W7/tHuYpc9PX+6/
vsIA989PP/38U8qrnC3aNG3XVEjGq1bRjbp8d/uwffo6+3u3fwG82fzs/cn7k9kvX+8P//j9
d/j78X6/f97//vDw92P7bf/8P7vbw+zz6dn2bH4+P7/488PF3d3pn5//mP+5/fzh7I+Lk4+3
u7s/zi6+3J6cXfz6rpt1MUx7eeKQwmSbFqRaXP7oG/Fnjzs/O4E/HazIxoNAGwxSFNkwROHg
+QPAjCmp2oJVK2fGobGViiiWerAlkS2RZbvgik8CWt6oulFROKtgaOqAeCWVaFLFhRxamfjU
XnHh0JU0rMgUK2mrSFLQVnLhTKCWghJYe5Vz+AtQJHaFc/55ttB88zB72R1evw0nzyqmWlqt
WyJgj1jJ1OXZKaD3ZJU1g2kUlWp2/zJ7ej7gCP2m8pQU3a6+exdrbknjbpGmv5WkUA7+kqxp
u6KiokW7uGH1gO5CEoCcxkHFTUnikM3NVA8+BTiPA26kctjJp7bfL5dUd79CBCT4GHxzc7w3
Pw4+PwbGhUTOMqM5aQqlOcI5m655yaWqSEkv3/3y9Py0G6RYXhHnwOS1XLM6HTXgv6kqhvaa
S7Zpy08NbWi8ddTliqh02XY9Bh4VXMq2pCUX1y1RiqTL6PIbSQuWREGkAfUZ2RN9/kTArBoD
CSJF0YkUSOfs5fXzy4+Xw+5xEKkFrahgqRbeWvDEWZ4Lkkt+FYfQPKepYjh1nrelEeIAr6ZV
xiqtIeKDlGwhQG2BXDrcLDIASTiyVlAJI8S7pktXBLEl4yVhld8mWRlDapeMCtyy6wm6iBJw
xLCNoCRA28WxkDyx1vS3Jc+oP1PORUozq+2YayhkTYSkdlf643VHzmjSLHLps8Hu6W72/CU4
0MH48HQleQNzGhbMuDOj5g4XRcvPj1jnNSlYRhRtCyJVm16nRYQ1tG5fD5wWgPV4dE0rJY8C
20RwkqUw0XG0Ek6MZH81UbySy7apkeRAJRoxTetGkyuktjSBpTqKo+VH3T+CgxETITC3q5ZX
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
GORMeJw4O/dRxrA+Xfwfq1Ng3H6HAgA=

--gKMricLos+KVdGMg--
