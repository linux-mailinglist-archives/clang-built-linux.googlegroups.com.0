Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBKGD6KAQMGQEQDETXCQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73b.google.com (mail-qk1-x73b.google.com [IPv6:2607:f8b0:4864:20::73b])
	by mail.lfdr.de (Postfix) with ESMTPS id 30CD03278EB
	for <lists+clang-built-linux@lfdr.de>; Mon,  1 Mar 2021 09:11:21 +0100 (CET)
Received: by mail-qk1-x73b.google.com with SMTP id p27sf13350873qkp.8
        for <lists+clang-built-linux@lfdr.de>; Mon, 01 Mar 2021 00:11:21 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614586280; cv=pass;
        d=google.com; s=arc-20160816;
        b=wdwoS5Lfb/Xo43wjjc5TlnoqFWH7t3YU54JmHi2rdY4+Taq+qAO6hjL5sJX4tvaQoZ
         OnSSzzON5XJ13PG3AAa0wlUKgVUgI27+tuVxNJIGftiwSQkm2MGfw7Nt8Xs6AhO/EZjI
         BHvHq+UQxOvOhmLbUjQtaMqLOVGvO9E2vZJNNDuxobj9BspYKM42UY3Gdy4ZYQeJtXyo
         HTeVbKGXaIq0wuuPLvkEF4XQtd7F/mbfDaK1swKypZv0AzfZM5oh1qEthMF7lJmL6Usv
         vGh0tpcnMu22yxqL5Nlll8Pl9VWPHjuToaAFevcUKnKdWdXYc8fOS/qBe0wMduzIfGe+
         PJrg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=9Ut1aBp1fDDsS/xvruaxvSXx13An9tdk0CkABSxDtks=;
        b=GuxudAtzrqyfhn6WLCjbN3B4gC/rzp1F3+iuuReaQHUipNQCQXpoliOc0skcaLqkFe
         QY2ZaJ6D2DczkiQSGQGNQEYSYurx8A14nvPBOZ0rfq99vm+WPwfs0e9TygdSW667eFAr
         3qxjXSFvXmjzbvXWWOBv95aBL+E7kQf3j5rhqxuJ/G0dcEkMeNgIl9/OU9RrHmgqREA8
         8dcLok++k8Y0i/+Q1TBuJQc6u2cUSRrWTDJ/xJBNdC8Ic3LzE2DyYumSwzxh8EF+r/MB
         0E8NJKu5lrGti/5kvbDhtvAsxOn1DkDZrc0OWFb0GIf2+h3tMil2TQM+qJi403gJpIkx
         r/Zw==
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
        bh=9Ut1aBp1fDDsS/xvruaxvSXx13An9tdk0CkABSxDtks=;
        b=HuJK6XwqnvNX1rzxxBmzS6yft8zwbiztSghR+lpe3IaRnEBglfWLHehKUZksfVdy1f
         cbvhsD1lTvVt8kPhJaJlp890b7FkGjffbuKpHx4jfhI33f+XxriQrqC51R5oK3I9Z3ud
         saGA7oZep1t+UdRQ57sNqzBjudM2BKSfmG1CpzC3Gj+mCTblucSIvUiypo7trhxfbRUq
         bavfLk2ZS1lxRWdEx9c7mGAa812cupU9FakHdvJjy8Tn9s4ECWeOa15gwY2VSyZq8sW/
         auk7ItNAy0ZLR9+AA4tscMKLhtgJg4eBe674lW4NvEDcAiD6FvVnXdMkPunecza9tqZI
         H2Zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9Ut1aBp1fDDsS/xvruaxvSXx13An9tdk0CkABSxDtks=;
        b=B/1OdYAgWBvaUDcS/ZDx6Ji2nrVAOLwNM35DBLalnTSouWDeg56HLwKvP6eUQWsCQx
         Nb2bXCwXeqSeapHW2GzkRrROI1FcPDpF4Bgke57dYYyWhV/+gqahqv0K0Ujc7ryt3u0B
         hz/C+n5ALSZXzVv594SE0Es66H9AAJ7OX7l46iffFJvV05rCZWyDNSSEwlKQ8zO8mKFu
         0cTwhlIUynoWII40Nhy66CCR/u8GiT3AgUjtyb/C+VRZF6OuZ/dfWRT3gZ2ozdBtsQ2t
         nFn74wPDay8JY7eciWOQUFEyci3tNgyIofc+Zu2foTmBQc42/ch4iBJuy32bTJSMyMjU
         HAaA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531RNxAWsd9V8QK/+7c44xFc5+drWvnpzV4IBYAXTdrV3rI5DAIH
	I3NnxFhgoXIdXSxfIiRODfs=
X-Google-Smtp-Source: ABdhPJwPZ6jJzVi5KOdzIbisBOuc81XJ7YB1UznEsaQK2QkeiFohfE4+r0Xa2Qf/hyHtNgEMpC/MAg==
X-Received: by 2002:a05:620a:88e:: with SMTP id b14mr13342159qka.166.1614586280153;
        Mon, 01 Mar 2021 00:11:20 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:2f42:: with SMTP id v63ls8555373qkh.5.gmail; Mon, 01 Mar
 2021 00:11:19 -0800 (PST)
X-Received: by 2002:a37:f516:: with SMTP id l22mr13378054qkk.139.1614586279543;
        Mon, 01 Mar 2021 00:11:19 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614586279; cv=none;
        d=google.com; s=arc-20160816;
        b=SC1PDYF0NYub8JXvwFKHNgksjmk56jks4/Hei4OL76zn59ZMjFJtAFqF6L7QUXbnxe
         1Uyxwj4wVorwrGxfwjx2wCllafOrZWEDrMWu7aQtkbC5zEYax/yDysIqiBxrrbCxmg67
         UfxjgRQjIE0DisShFZRxbG4vd5ZG7tRV2z6B2jAfAw22+UsMTVf8ZR87OF2Qp2R1jTS9
         FwbxAXePR+STHi0IlyCOhgArSWwMvJuWvUIrlsLEDJ+VqXwckDhKdAQc/ogctl4Rq5H9
         jWi4jWgfWi1P/YpbFUGL+YOr/hOwduvhGRZ0orVuATqyP6TQ6SOzviqy69enJVLKOXZH
         5pGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=yBuxEfkjXeGLJur/1rAjcmjS5P/QaEEiTdG141fd+CA=;
        b=rR2ITTSKcohUW5btdsY2tMjeXhS+vKK/1QLwQioaBCUCEFSOoY4Rm4kADKOb1PozwY
         zmU9VYc4lnaobfbKJgk4lgGtz0xYY4k8FLlM6minXdfVfpN8NeMh+S0bvkIEB19zHTnK
         RLYNfeD5nxcnkSM+ccU2w/OwP9cy7dVS79qwdmRD1YQ+2vq1RXmEdFDbRk49BNBfPq42
         Hq3cOafTS9BYdTl+t+BbHXfmI8Fq5P+vXkghzqYod/oVBkrcTMX3whGOp7iIFj+XQ9Ll
         MD0xX+WPEoHvAQqZPKVTP/PuWF+FFL1m/gj+0fAlKqf2eKpnuctv1C+wf0WIWYwIQeaR
         Koog==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga04.intel.com (mga04.intel.com. [192.55.52.120])
        by gmr-mx.google.com with ESMTPS id g4si714486qtg.3.2021.03.01.00.11.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Mar 2021 00:11:19 -0800 (PST)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.120 as permitted sender) client-ip=192.55.52.120;
IronPort-SDR: GlKJz4Nkf4NDLTCveZJzjICq+5r0oIR8tub5pBdXkdOmIjRdGlkrEknAYDODD9Z5+EkgulQtVc
 RpZfhvofhxqw==
X-IronPort-AV: E=McAfee;i="6000,8403,9909"; a="183946340"
X-IronPort-AV: E=Sophos;i="5.81,215,1610438400"; 
   d="gz'50?scan'50,208,50";a="183946340"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Mar 2021 00:11:14 -0800
IronPort-SDR: j3h4G0MkVMHL/KwVGFFIg/2eCyin6MUxPiEs+NbKWxMXRHxXWds4hSzNpbEhuyjKNwq76Udn46
 oNAaEkV35/ZA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.81,215,1610438400"; 
   d="gz'50?scan'50,208,50";a="595273919"
Received: from lkp-server01.sh.intel.com (HELO 16660e54978b) ([10.239.97.150])
  by fmsmga006.fm.intel.com with ESMTP; 01 Mar 2021 00:11:10 -0800
Received: from kbuild by 16660e54978b with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1lGde2-0004UI-31; Mon, 01 Mar 2021 08:11:10 +0000
Date: Mon, 1 Mar 2021 16:10:12 +0800
From: kernel test robot <lkp@intel.com>
To: Hui Tang <tanghui20@huawei.com>, herbert@gondor.apana.org.au,
	davem@davemloft.net, marco.chiappero@intel.com, ebiggers@google.com,
	tomaszx.kowalik@intel.com
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-crypto@vger.kernel.org, xuzaibo@huawei.com,
	wangzhou1@hisilicon.com, tanghui20@huawei.com,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] crypto: qat - fix use of 'dma_map_single'
Message-ID: <202103011616.7QEDpNZD-lkp@intel.com>
References: <1614570058-38194-1-git-send-email-tanghui20@huawei.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="4Ckj6UjgE2iN1+kY"
Content-Disposition: inline
In-Reply-To: <1614570058-38194-1-git-send-email-tanghui20@huawei.com>
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


--4Ckj6UjgE2iN1+kY
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Hui,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on cryptodev/master]
[also build test WARNING on crypto/master v5.12-rc1 next-20210301]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Hui-Tang/crypto-qat-fix-use-of-dma_map_single/20210301-114717
base:   https://git.kernel.org/pub/scm/linux/kernel/git/herbert/cryptodev-2.6.git master
config: x86_64-randconfig-a001-20210301 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 5de09ef02e24d234d9fc0cd1c6dfe18a1bb784b0)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install x86_64 cross compiling tool for clang build
        # apt-get install binutils-x86-64-linux-gnu
        # https://github.com/0day-ci/linux/commit/54bc41cf4d0517cc36b01680dd2394a48f62da09
        git remote add linux-review https://github.com/0day-ci/linux
        git fetch --no-tags linux-review Hui-Tang/crypto-qat-fix-use-of-dma_map_single/20210301-114717
        git checkout 54bc41cf4d0517cc36b01680dd2394a48f62da09
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

>> drivers/crypto/qat/qat_common/qat_algs.c:744:7: warning: variable 'blp' is used uninitialized whenever 'if' condition is true [-Wsometimes-uninitialized]
                   if (unlikely(dma_mapping_error(dev, bufl->bufers[y].addr)))
                       ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler.h:78:22: note: expanded from macro 'unlikely'
   # define unlikely(x)    __builtin_expect(!!(x), 0)
                           ^~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/crypto/qat/qat_common/qat_algs.c:809:30: note: uninitialized use occurs here
           if (!dma_mapping_error(dev, blp))
                                       ^~~
   drivers/crypto/qat/qat_common/qat_algs.c:744:3: note: remove the 'if' if its condition is always false
                   if (unlikely(dma_mapping_error(dev, bufl->bufers[y].addr)))
                   ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   drivers/crypto/qat/qat_common/qat_algs.c:721:16: note: initialize the variable 'blp' to silence this warning
           dma_addr_t blp;
                         ^
                          = 0
   1 warning generated.


vim +744 drivers/crypto/qat/qat_common/qat_algs.c

d370cec3219490 Tadeusz Struk       2014-06-05  710  
d370cec3219490 Tadeusz Struk       2014-06-05  711  static int qat_alg_sgl_to_bufl(struct qat_crypto_instance *inst,
d370cec3219490 Tadeusz Struk       2014-06-05  712  			       struct scatterlist *sgl,
e19ab1211d2848 Herbert Xu          2015-07-30  713  			       struct scatterlist *sglout,
d370cec3219490 Tadeusz Struk       2014-06-05  714  			       struct qat_crypto_request *qat_req)
d370cec3219490 Tadeusz Struk       2014-06-05  715  {
d370cec3219490 Tadeusz Struk       2014-06-05  716  	struct device *dev = &GET_DEV(inst->accel_dev);
e19ab1211d2848 Herbert Xu          2015-07-30  717  	int i, sg_nctr = 0;
e19ab1211d2848 Herbert Xu          2015-07-30  718  	int n = sg_nents(sgl);
d370cec3219490 Tadeusz Struk       2014-06-05  719  	struct qat_alg_buf_list *bufl;
d370cec3219490 Tadeusz Struk       2014-06-05  720  	struct qat_alg_buf_list *buflout = NULL;
d370cec3219490 Tadeusz Struk       2014-06-05  721  	dma_addr_t blp;
d370cec3219490 Tadeusz Struk       2014-06-05  722  	dma_addr_t bloutp = 0;
d370cec3219490 Tadeusz Struk       2014-06-05  723  	struct scatterlist *sg;
1793d1aba19415 Gustavo A. R. Silva 2019-06-06  724  	size_t sz_out, sz = struct_size(bufl, bufers, n + 1);
d370cec3219490 Tadeusz Struk       2014-06-05  725  
d370cec3219490 Tadeusz Struk       2014-06-05  726  	if (unlikely(!n))
d370cec3219490 Tadeusz Struk       2014-06-05  727  		return -EINVAL;
d370cec3219490 Tadeusz Struk       2014-06-05  728  
82f82504b8f5f1 Tadeusz Struk       2014-12-08  729  	bufl = kzalloc_node(sz, GFP_ATOMIC,
09adc8789c4e89 Tadeusz Struk       2014-10-13  730  			    dev_to_node(&GET_DEV(inst->accel_dev)));
d370cec3219490 Tadeusz Struk       2014-06-05  731  	if (unlikely(!bufl))
d370cec3219490 Tadeusz Struk       2014-06-05  732  		return -ENOMEM;
d370cec3219490 Tadeusz Struk       2014-06-05  733  
d370cec3219490 Tadeusz Struk       2014-06-05  734  	for_each_sg(sgl, sg, n, i) {
e19ab1211d2848 Herbert Xu          2015-07-30  735  		int y = sg_nctr;
82f82504b8f5f1 Tadeusz Struk       2014-12-08  736  
82f82504b8f5f1 Tadeusz Struk       2014-12-08  737  		if (!sg->length)
82f82504b8f5f1 Tadeusz Struk       2014-12-08  738  			continue;
d65071ecde1ed1 Tadeusz Struk       2014-06-24  739  
d370cec3219490 Tadeusz Struk       2014-06-05  740  		bufl->bufers[y].addr = dma_map_single(dev, sg_virt(sg),
d370cec3219490 Tadeusz Struk       2014-06-05  741  						      sg->length,
d370cec3219490 Tadeusz Struk       2014-06-05  742  						      DMA_BIDIRECTIONAL);
d370cec3219490 Tadeusz Struk       2014-06-05  743  		bufl->bufers[y].len = sg->length;
d370cec3219490 Tadeusz Struk       2014-06-05 @744  		if (unlikely(dma_mapping_error(dev, bufl->bufers[y].addr)))
72eed063767e13 Arnd Bergmann       2017-06-22  745  			goto err_in;
82f82504b8f5f1 Tadeusz Struk       2014-12-08  746  		sg_nctr++;
d370cec3219490 Tadeusz Struk       2014-06-05  747  	}
e19ab1211d2848 Herbert Xu          2015-07-30  748  	bufl->num_bufs = sg_nctr;
54bc41cf4d0517 Hui Tang            2021-03-01  749  	blp = dma_map_single(dev, bufl, sz, DMA_TO_DEVICE);
54bc41cf4d0517 Hui Tang            2021-03-01  750  	if (unlikely(dma_mapping_error(dev, blp)))
54bc41cf4d0517 Hui Tang            2021-03-01  751  		goto err_in;
d370cec3219490 Tadeusz Struk       2014-06-05  752  	qat_req->buf.bl = bufl;
d370cec3219490 Tadeusz Struk       2014-06-05  753  	qat_req->buf.blp = blp;
d370cec3219490 Tadeusz Struk       2014-06-05  754  	qat_req->buf.sz = sz;
d370cec3219490 Tadeusz Struk       2014-06-05  755  	/* Handle out of place operation */
d370cec3219490 Tadeusz Struk       2014-06-05  756  	if (sgl != sglout) {
d370cec3219490 Tadeusz Struk       2014-06-05  757  		struct qat_alg_buf *bufers;
d370cec3219490 Tadeusz Struk       2014-06-05  758  
82f82504b8f5f1 Tadeusz Struk       2014-12-08  759  		n = sg_nents(sglout);
1793d1aba19415 Gustavo A. R. Silva 2019-06-06  760  		sz_out = struct_size(buflout, bufers, n + 1);
82f82504b8f5f1 Tadeusz Struk       2014-12-08  761  		sg_nctr = 0;
82f82504b8f5f1 Tadeusz Struk       2014-12-08  762  		buflout = kzalloc_node(sz_out, GFP_ATOMIC,
09adc8789c4e89 Tadeusz Struk       2014-10-13  763  				       dev_to_node(&GET_DEV(inst->accel_dev)));
d370cec3219490 Tadeusz Struk       2014-06-05  764  		if (unlikely(!buflout))
72eed063767e13 Arnd Bergmann       2017-06-22  765  			goto err_in;
d370cec3219490 Tadeusz Struk       2014-06-05  766  		bufers = buflout->bufers;
d370cec3219490 Tadeusz Struk       2014-06-05  767  		for_each_sg(sglout, sg, n, i) {
e19ab1211d2848 Herbert Xu          2015-07-30  768  			int y = sg_nctr;
82f82504b8f5f1 Tadeusz Struk       2014-12-08  769  
82f82504b8f5f1 Tadeusz Struk       2014-12-08  770  			if (!sg->length)
82f82504b8f5f1 Tadeusz Struk       2014-12-08  771  				continue;
d65071ecde1ed1 Tadeusz Struk       2014-06-24  772  
d370cec3219490 Tadeusz Struk       2014-06-05  773  			bufers[y].addr = dma_map_single(dev, sg_virt(sg),
d370cec3219490 Tadeusz Struk       2014-06-05  774  							sg->length,
d370cec3219490 Tadeusz Struk       2014-06-05  775  							DMA_BIDIRECTIONAL);
d370cec3219490 Tadeusz Struk       2014-06-05  776  			if (unlikely(dma_mapping_error(dev, bufers[y].addr)))
72eed063767e13 Arnd Bergmann       2017-06-22  777  				goto err_out;
82f82504b8f5f1 Tadeusz Struk       2014-12-08  778  			bufers[y].len = sg->length;
82f82504b8f5f1 Tadeusz Struk       2014-12-08  779  			sg_nctr++;
d370cec3219490 Tadeusz Struk       2014-06-05  780  		}
e19ab1211d2848 Herbert Xu          2015-07-30  781  		buflout->num_bufs = sg_nctr;
82f82504b8f5f1 Tadeusz Struk       2014-12-08  782  		buflout->num_mapped_bufs = sg_nctr;
54bc41cf4d0517 Hui Tang            2021-03-01  783  		bloutp = dma_map_single(dev, buflout, sz_out, DMA_TO_DEVICE);
54bc41cf4d0517 Hui Tang            2021-03-01  784  		if (unlikely(dma_mapping_error(dev, bloutp)))
54bc41cf4d0517 Hui Tang            2021-03-01  785  			goto err_out;
d370cec3219490 Tadeusz Struk       2014-06-05  786  		qat_req->buf.blout = buflout;
d370cec3219490 Tadeusz Struk       2014-06-05  787  		qat_req->buf.bloutp = bloutp;
82f82504b8f5f1 Tadeusz Struk       2014-12-08  788  		qat_req->buf.sz_out = sz_out;
d370cec3219490 Tadeusz Struk       2014-06-05  789  	} else {
d370cec3219490 Tadeusz Struk       2014-06-05  790  		/* Otherwise set the src and dst to the same address */
d370cec3219490 Tadeusz Struk       2014-06-05  791  		qat_req->buf.bloutp = qat_req->buf.blp;
82f82504b8f5f1 Tadeusz Struk       2014-12-08  792  		qat_req->buf.sz_out = 0;
d370cec3219490 Tadeusz Struk       2014-06-05  793  	}
d370cec3219490 Tadeusz Struk       2014-06-05  794  	return 0;
82f82504b8f5f1 Tadeusz Struk       2014-12-08  795  
72eed063767e13 Arnd Bergmann       2017-06-22  796  err_out:
54bc41cf4d0517 Hui Tang            2021-03-01  797  	if (!dma_mapping_error(dev, bloutp))
54bc41cf4d0517 Hui Tang            2021-03-01  798  		dma_unmap_single(dev, bloutp, sz_out, DMA_TO_DEVICE);
54bc41cf4d0517 Hui Tang            2021-03-01  799  
82f82504b8f5f1 Tadeusz Struk       2014-12-08  800  	n = sg_nents(sglout);
e19ab1211d2848 Herbert Xu          2015-07-30  801  	for (i = 0; i < n; i++)
82f82504b8f5f1 Tadeusz Struk       2014-12-08  802  		if (!dma_mapping_error(dev, buflout->bufers[i].addr))
82f82504b8f5f1 Tadeusz Struk       2014-12-08  803  			dma_unmap_single(dev, buflout->bufers[i].addr,
82f82504b8f5f1 Tadeusz Struk       2014-12-08  804  					 buflout->bufers[i].len,
d370cec3219490 Tadeusz Struk       2014-06-05  805  					 DMA_BIDIRECTIONAL);
d370cec3219490 Tadeusz Struk       2014-06-05  806  	kfree(buflout);
72eed063767e13 Arnd Bergmann       2017-06-22  807  
72eed063767e13 Arnd Bergmann       2017-06-22  808  err_in:
54bc41cf4d0517 Hui Tang            2021-03-01  809  	if (!dma_mapping_error(dev, blp))
54bc41cf4d0517 Hui Tang            2021-03-01  810  		dma_unmap_single(dev, blp, sz, DMA_TO_DEVICE);
54bc41cf4d0517 Hui Tang            2021-03-01  811  
72eed063767e13 Arnd Bergmann       2017-06-22  812  	n = sg_nents(sgl);
72eed063767e13 Arnd Bergmann       2017-06-22  813  	for (i = 0; i < n; i++)
72eed063767e13 Arnd Bergmann       2017-06-22  814  		if (!dma_mapping_error(dev, bufl->bufers[i].addr))
72eed063767e13 Arnd Bergmann       2017-06-22  815  			dma_unmap_single(dev, bufl->bufers[i].addr,
72eed063767e13 Arnd Bergmann       2017-06-22  816  					 bufl->bufers[i].len,
72eed063767e13 Arnd Bergmann       2017-06-22  817  					 DMA_BIDIRECTIONAL);
72eed063767e13 Arnd Bergmann       2017-06-22  818  
72eed063767e13 Arnd Bergmann       2017-06-22  819  	kfree(bufl);
72eed063767e13 Arnd Bergmann       2017-06-22  820  
72eed063767e13 Arnd Bergmann       2017-06-22  821  	dev_err(dev, "Failed to map buf for dma\n");
d370cec3219490 Tadeusz Struk       2014-06-05  822  	return -ENOMEM;
d370cec3219490 Tadeusz Struk       2014-06-05  823  }
d370cec3219490 Tadeusz Struk       2014-06-05  824  

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202103011616.7QEDpNZD-lkp%40intel.com.

--4Ckj6UjgE2iN1+kY
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--4Ckj6UjgE2iN1+kY--
