Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBGXEW2DQMGQEQHV4LNQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83d.google.com (mail-qt1-x83d.google.com [IPv6:2607:f8b0:4864:20::83d])
	by mail.lfdr.de (Postfix) with ESMTPS id 201073C7354
	for <lists+clang-built-linux@lfdr.de>; Tue, 13 Jul 2021 17:32:44 +0200 (CEST)
Received: by mail-qt1-x83d.google.com with SMTP id p20-20020a05622a0494b029024f09fe9ec9sf13955170qtx.4
        for <lists+clang-built-linux@lfdr.de>; Tue, 13 Jul 2021 08:32:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626190363; cv=pass;
        d=google.com; s=arc-20160816;
        b=Fryz/BfqXCQXaiJ4CbgHcQFXbBgtIEZvQSDQ9BHAvHnd//BQyN2wEGvIgL1FIfSI6Y
         KtCkBIR2HouoN8r8+aJMS7UsCQwD+SFMHB4w8t98RHjknZVpPNipbZzVmvsVjGxYkuAt
         DE9r/tc7JRukYTQTKe4spXD8Cb6EgHOiyqLsoOZZnJalq3l1JPfvhbjdkc+QFvhdth5M
         4TzLVz2QSbrn8T79HN3RR2geZGXPRB35BlF7OcdSaR9bkMHmeHTV6N1cet2Q5+6XJAQm
         cy79vn4esJLfahPYVu85jFWxcLQ2c/nAwSGz+T/Ry/LyccymWrTHZDUgKp4yC5CT+huV
         MdHg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=zJ7UVj1po34smYR6QinEagAQTfcHVGoOZOEtLM7rjWM=;
        b=yyVmf8yx6RuXexRlap/cod0DqJvC8OkyU09k/BBdarN6k9LPnXo2PqW2EuYjO3C4h2
         tBO9JVVhs5gNJSaMWotCX+rBhh0NOGhjyrAo/s7XYv2gD+fVANrq44bLHNB+pxUFgxG7
         2OymWuN8eacxm3SoNc4Bifo5rkm75b38lNhu149Vc+dO2V58ezcj9GTb4UlAtpZ6ebVM
         hhREcQomgi04KaAMWjQmUsqwxCMtFetxjzIh5kEPpMLKl8RG05vWC07S0tNfUGCFEHDt
         BFHFtCvIRBCuxSUKtqZXIJcMbPloXX/M5Sb5V3NDF4yi52QQUoDbyslI8hCX8kEgUdpL
         hlhQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zJ7UVj1po34smYR6QinEagAQTfcHVGoOZOEtLM7rjWM=;
        b=n4gkv1Ut5xgxZodE9r+WXBf76G+p91Y58BjqzIyppI1da4SANL79isi2IdubguZIbN
         yn7HkaExI0uONAKM1ZwOz63CiztLRXb9nO7wBR0EK3X2dZxB09FYDR29ctbNj+ziJS3J
         UrqrtUd5py2uV0BY8L0KyS72ZjIBadXl4TPb7DSAx9u0q8RVJhS4TXOIZ4rVHfP0YPxM
         o9lPro9OcJqHa8m1Hs22y/3eICk+9JpLOvkr3u/trk6e3+sOvUafpRVp6TE/fuEtc8Gv
         gqpB4fpitsuW0bV6HXNL6hjpE3jFoIw6teYXzoJwO16k0J3AHGgKj9WUaue/oMB4Qh3y
         XQ1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zJ7UVj1po34smYR6QinEagAQTfcHVGoOZOEtLM7rjWM=;
        b=Gs2wxuE60smkyGrFSutblLCmgTxyfiU5wiHAjA34F25wqEH1YZsGC0tzAMYjrF5OZ1
         ddBxwRJK0Nmv+PVUyBQg/a1dDAS24jIlRL8JlJSJJ6cB+1S0rL35ogDRsdmS4bOcivHH
         W5+avqAMT1RuyKioxTWRsNhRDkSX+YG+njr0K4jWW/DoLh7S974dxifNB9NaLQ14OPIH
         pp/XypgYTAfjT2iQ3oT2RRJ5ndCHFT+EhpxAaavtm3cFdUj+23ti8lf7/ctK7QRopBCN
         9/6qS6w8BXqV0Hl70B3O3mDlPtna7XKuCsbvgZk/Wbzyo5FL/1OaU/Fe8NHG96Btmjk3
         tWBg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531D81moYuNkbRqwlvsssOzdbmMLuzDiIL2eHlhWtZ0NQcbLkZ2V
	BEaqwLb41701jjQFwKDO2ak=
X-Google-Smtp-Source: ABdhPJzQM5W24DN5EmwD4DfQvkO50p/WI3ef9d6X4pQtXy52tR4rkzeV2pYG3OTtxFGXSm+98myJrQ==
X-Received: by 2002:ad4:558a:: with SMTP id e10mr5313718qvx.19.1626190362953;
        Tue, 13 Jul 2021 08:32:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6214:da7:: with SMTP id h7ls6615687qvh.3.gmail; Tue, 13
 Jul 2021 08:32:42 -0700 (PDT)
X-Received: by 2002:a0c:ecc5:: with SMTP id o5mr5469667qvq.40.1626190362230;
        Tue, 13 Jul 2021 08:32:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626190362; cv=none;
        d=google.com; s=arc-20160816;
        b=iWeahr1NF6SomFRckc3hxBZEoi8sKmuxW2Z3YhlpwmWJBQwppupKqpXv1eWNDedzIC
         gTjOhstvi7ApeCNhUd3tbfS2PzNwfpnrag+nrzeInI/GOoWoC9Pv7CJdsRp/75fhnktb
         Fnv49cyqp6o18rKs1y8BHxUUU5POZZD2JmksEkNywxHN6b057wFpjQPdPMA7kg3cyBJL
         q7VYkc4mxB19rqDmQjHCHMyLZ0yAumcLrEh7lqGRFpHsgEl4G9IMJCf/8wCReSn3l3PA
         DKaITSwYRrRcF31ao/H2yp2rV2kG7ncRt70KhpUJU/IrWz1XDSSl6fS3GPpFxFLcoY/4
         +4tA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=k5uXdbXeT1ApVfGiXDcxK98hXO/YID+kd51rxMw93fo=;
        b=TMEQ9N/xSz7jXpmtBVObZlBoZSKglzuJdPBDNpZSrvmM1ojNxZQummbPnscNDva+Ua
         CzEbvlaLt9P3ftbvxR3Qo9SZy/o6+QRbrGwNdJhYUb0OItY0kc0yFjO5EhNJq5QEl1iR
         GaFYSIVMhXiDdtTjHaZjtQQmLzW9Xmz/RoQZsboAqO/EvfUBwxKOI4tCYkLexoCTjGYD
         VFpNeKj+3jWbPyE0SuD99lTqE9z+po73Wv3bu/Ikd1Wdcgd8TpG8iRtkUIWVZmoYKhg1
         hmRLm+TQkHU1bt8SWVy7LvWbgXer9FWioGX57/m7MfBXPUO0WJYVmHRCKPVstd6QCvbk
         1vCQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga17.intel.com (mga17.intel.com. [192.55.52.151])
        by gmr-mx.google.com with ESMTPS id r17si1777467qkp.1.2021.07.13.08.32.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Jul 2021 08:32:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted sender) client-ip=192.55.52.151;
X-IronPort-AV: E=McAfee;i="6200,9189,10044"; a="190563025"
X-IronPort-AV: E=Sophos;i="5.84,236,1620716400"; 
   d="gz'50?scan'50,208,50";a="190563025"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
  by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 13 Jul 2021 08:30:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.84,236,1620716400"; 
   d="gz'50?scan'50,208,50";a="654397626"
Received: from lkp-server01.sh.intel.com (HELO 4aae0cb4f5b5) ([10.239.97.150])
  by fmsmga005.fm.intel.com with ESMTP; 13 Jul 2021 08:30:06 -0700
Received: from kbuild by 4aae0cb4f5b5 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1m3KMH-000HxL-OJ; Tue, 13 Jul 2021 15:30:05 +0000
Date: Tue, 13 Jul 2021 23:29:36 +0800
From: kernel test robot <lkp@intel.com>
To: Christoph Hellwig <hch@lst.de>
Cc: clang-built-linux@googlegroups.com, kbuild-all@lists.01.org,
	linux-kernel@vger.kernel.org
Subject: [hch-misc:follow_pfn 1/3]
 drivers/media/common/videobuf2/videobuf2-dma-contig.c:539:1: warning: unused
 label 'out'
Message-ID: <202107132321.IXpwIn4Y-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="ew6BAiZeqk4r7MaW"
Content-Disposition: inline
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 192.55.52.151 as permitted
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


--ew6BAiZeqk4r7MaW
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

tree:   git://git.infradead.org/users/hch/misc.git follow_pfn
head:   66855f59863300731d08162e8d20d951b0827e28
commit: ba9792af6d1881f3e5fffbdd8b2308d854217878 [1/3] media: videobuf2: remove userptr support
config: arm-buildonly-randconfig-r001-20210713 (attached as .config)
compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 8d69635ed9ecf36fd0ca85906bfde17949671cbe)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install arm cross compiling tool for clang build
        # apt-get install binutils-arm-linux-gnueabi
        git remote add hch-misc git://git.infradead.org/users/hch/misc.git
        git fetch --no-tags hch-misc follow_pfn
        git checkout ba9792af6d1881f3e5fffbdd8b2308d854217878
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   drivers/media/common/videobuf2/videobuf2-dma-contig.c:468:15: warning: unused variable 'i' [-Wunused-variable]
           int n_pages, i;
                        ^
>> drivers/media/common/videobuf2/videobuf2-dma-contig.c:539:1: warning: unused label 'out' [-Wunused-label]
   out:
   ^~~~
   2 warnings generated.


vim +/out +539 drivers/media/common/videobuf2/videobuf2-dma-contig.c

e15dab752d4c58 drivers/media/v4l2-core/videobuf2-dma-contig.c        Tomasz Stanislawski 2012-06-14  461  
36c0f8b32c4bd4 drivers/media/v4l2-core/videobuf2-dma-contig.c        Hans Verkuil        2016-04-15  462  static void *vb2_dc_get_userptr(struct device *dev, unsigned long vaddr,
cd474037c4a9a9 drivers/media/v4l2-core/videobuf2-dma-contig.c        Hans Verkuil        2014-11-18  463  	unsigned long size, enum dma_data_direction dma_dir)
1a758d4e847f77 drivers/media/video/videobuf2-dma-contig.c            Pawel Osciak        2010-10-11  464  {
1a758d4e847f77 drivers/media/video/videobuf2-dma-contig.c            Pawel Osciak        2010-10-11  465  	struct vb2_dc_buf *buf;
fb639eb3915431 drivers/media/v4l2-core/videobuf2-dma-contig.c        Jan Kara            2015-07-13  466  	struct frame_vector *vec;
c4860ad6056483 drivers/media/v4l2-core/videobuf2-dma-contig.c        Tvrtko Ursulin      2017-07-31  467  	unsigned int offset;
fb639eb3915431 drivers/media/v4l2-core/videobuf2-dma-contig.c        Jan Kara            2015-07-13  468  	int n_pages, i;
e15dab752d4c58 drivers/media/v4l2-core/videobuf2-dma-contig.c        Tomasz Stanislawski 2012-06-14  469  	int ret = 0;
e15dab752d4c58 drivers/media/v4l2-core/videobuf2-dma-contig.c        Tomasz Stanislawski 2012-06-14  470  	struct sg_table *sgt;
e15dab752d4c58 drivers/media/v4l2-core/videobuf2-dma-contig.c        Tomasz Stanislawski 2012-06-14  471  	unsigned long contig_size;
d81e870d5afa1b drivers/media/v4l2-core/videobuf2-dma-contig.c        Marek Szyprowski    2012-06-12  472  	unsigned long dma_align = dma_get_cache_alignment();
d81e870d5afa1b drivers/media/v4l2-core/videobuf2-dma-contig.c        Marek Szyprowski    2012-06-12  473  
d81e870d5afa1b drivers/media/v4l2-core/videobuf2-dma-contig.c        Marek Szyprowski    2012-06-12  474  	/* Only cache aligned DMA transfers are reliable */
d81e870d5afa1b drivers/media/v4l2-core/videobuf2-dma-contig.c        Marek Szyprowski    2012-06-12  475  	if (!IS_ALIGNED(vaddr | size, dma_align)) {
d81e870d5afa1b drivers/media/v4l2-core/videobuf2-dma-contig.c        Marek Szyprowski    2012-06-12  476  		pr_debug("user data must be aligned to %lu bytes\n", dma_align);
d81e870d5afa1b drivers/media/v4l2-core/videobuf2-dma-contig.c        Marek Szyprowski    2012-06-12  477  		return ERR_PTR(-EINVAL);
d81e870d5afa1b drivers/media/v4l2-core/videobuf2-dma-contig.c        Marek Szyprowski    2012-06-12  478  	}
d81e870d5afa1b drivers/media/v4l2-core/videobuf2-dma-contig.c        Marek Szyprowski    2012-06-12  479  
d81e870d5afa1b drivers/media/v4l2-core/videobuf2-dma-contig.c        Marek Szyprowski    2012-06-12  480  	if (!size) {
d81e870d5afa1b drivers/media/v4l2-core/videobuf2-dma-contig.c        Marek Szyprowski    2012-06-12  481  		pr_debug("size is zero\n");
d81e870d5afa1b drivers/media/v4l2-core/videobuf2-dma-contig.c        Marek Szyprowski    2012-06-12  482  		return ERR_PTR(-EINVAL);
d81e870d5afa1b drivers/media/v4l2-core/videobuf2-dma-contig.c        Marek Szyprowski    2012-06-12  483  	}
1a758d4e847f77 drivers/media/video/videobuf2-dma-contig.c            Pawel Osciak        2010-10-11  484  
10791829eb52d5 drivers/media/v4l2-core/videobuf2-dma-contig.c        Hans Verkuil        2016-07-21  485  	if (WARN_ON(!dev))
10791829eb52d5 drivers/media/v4l2-core/videobuf2-dma-contig.c        Hans Verkuil        2016-07-21  486  		return ERR_PTR(-EINVAL);
10791829eb52d5 drivers/media/v4l2-core/videobuf2-dma-contig.c        Hans Verkuil        2016-07-21  487  
1a758d4e847f77 drivers/media/video/videobuf2-dma-contig.c            Pawel Osciak        2010-10-11  488  	buf = kzalloc(sizeof *buf, GFP_KERNEL);
1a758d4e847f77 drivers/media/video/videobuf2-dma-contig.c            Pawel Osciak        2010-10-11  489  	if (!buf)
1a758d4e847f77 drivers/media/video/videobuf2-dma-contig.c            Pawel Osciak        2010-10-11  490  		return ERR_PTR(-ENOMEM);
1a758d4e847f77 drivers/media/video/videobuf2-dma-contig.c            Pawel Osciak        2010-10-11  491  
36c0f8b32c4bd4 drivers/media/v4l2-core/videobuf2-dma-contig.c        Hans Verkuil        2016-04-15  492  	buf->dev = dev;
cd474037c4a9a9 drivers/media/v4l2-core/videobuf2-dma-contig.c        Hans Verkuil        2014-11-18  493  	buf->dma_dir = dma_dir;
e15dab752d4c58 drivers/media/v4l2-core/videobuf2-dma-contig.c        Tomasz Stanislawski 2012-06-14  494  
c4860ad6056483 drivers/media/v4l2-core/videobuf2-dma-contig.c        Tvrtko Ursulin      2017-07-31  495  	offset = lower_32_bits(offset_in_page(vaddr));
707947247e9517 drivers/media/common/videobuf2/videobuf2-dma-contig.c Hans Verkuil        2019-04-04  496  	vec = vb2_create_framevec(vaddr, size);
fb639eb3915431 drivers/media/v4l2-core/videobuf2-dma-contig.c        Jan Kara            2015-07-13  497  	if (IS_ERR(vec)) {
fb639eb3915431 drivers/media/v4l2-core/videobuf2-dma-contig.c        Jan Kara            2015-07-13  498  		ret = PTR_ERR(vec);
e15dab752d4c58 drivers/media/v4l2-core/videobuf2-dma-contig.c        Tomasz Stanislawski 2012-06-14  499  		goto fail_buf;
e15dab752d4c58 drivers/media/v4l2-core/videobuf2-dma-contig.c        Tomasz Stanislawski 2012-06-14  500  	}
fb639eb3915431 drivers/media/v4l2-core/videobuf2-dma-contig.c        Jan Kara            2015-07-13  501  	buf->vec = vec;
fb639eb3915431 drivers/media/v4l2-core/videobuf2-dma-contig.c        Jan Kara            2015-07-13  502  	n_pages = frame_vector_count(vec);
e15dab752d4c58 drivers/media/v4l2-core/videobuf2-dma-contig.c        Tomasz Stanislawski 2012-06-14  503  
e15dab752d4c58 drivers/media/v4l2-core/videobuf2-dma-contig.c        Tomasz Stanislawski 2012-06-14  504  	sgt = kzalloc(sizeof(*sgt), GFP_KERNEL);
e15dab752d4c58 drivers/media/v4l2-core/videobuf2-dma-contig.c        Tomasz Stanislawski 2012-06-14  505  	if (!sgt) {
e15dab752d4c58 drivers/media/v4l2-core/videobuf2-dma-contig.c        Tomasz Stanislawski 2012-06-14  506  		pr_err("failed to allocate sg table\n");
e15dab752d4c58 drivers/media/v4l2-core/videobuf2-dma-contig.c        Tomasz Stanislawski 2012-06-14  507  		ret = -ENOMEM;
fb639eb3915431 drivers/media/v4l2-core/videobuf2-dma-contig.c        Jan Kara            2015-07-13  508  		goto fail_pfnvec;
1a758d4e847f77 drivers/media/video/videobuf2-dma-contig.c            Pawel Osciak        2010-10-11  509  	}
1a758d4e847f77 drivers/media/video/videobuf2-dma-contig.c            Pawel Osciak        2010-10-11  510  
ba9792af6d1881 drivers/media/common/videobuf2/videobuf2-dma-contig.c Christoph Hellwig   2021-07-13  511  	ret = sg_alloc_table_from_pages(sgt, vec->pages, n_pages,
e15dab752d4c58 drivers/media/v4l2-core/videobuf2-dma-contig.c        Tomasz Stanislawski 2012-06-14  512  		offset, size, GFP_KERNEL);
e15dab752d4c58 drivers/media/v4l2-core/videobuf2-dma-contig.c        Tomasz Stanislawski 2012-06-14  513  	if (ret) {
e15dab752d4c58 drivers/media/v4l2-core/videobuf2-dma-contig.c        Tomasz Stanislawski 2012-06-14  514  		pr_err("failed to initialize sg table\n");
e15dab752d4c58 drivers/media/v4l2-core/videobuf2-dma-contig.c        Tomasz Stanislawski 2012-06-14  515  		goto fail_sgt;
e15dab752d4c58 drivers/media/v4l2-core/videobuf2-dma-contig.c        Tomasz Stanislawski 2012-06-14  516  	}
e15dab752d4c58 drivers/media/v4l2-core/videobuf2-dma-contig.c        Tomasz Stanislawski 2012-06-14  517  
251a79f8f5adfd drivers/media/v4l2-core/videobuf2-dma-contig.c        Hans Verkuil        2014-11-18  518  	/*
251a79f8f5adfd drivers/media/v4l2-core/videobuf2-dma-contig.c        Hans Verkuil        2014-11-18  519  	 * No need to sync to the device, this will happen later when the
251a79f8f5adfd drivers/media/v4l2-core/videobuf2-dma-contig.c        Hans Verkuil        2014-11-18  520  	 * prepare() memop is called.
251a79f8f5adfd drivers/media/v4l2-core/videobuf2-dma-contig.c        Hans Verkuil        2014-11-18  521  	 */
8b7c0280ab03dd drivers/media/common/videobuf2/videobuf2-dma-contig.c Marek Szyprowski    2020-09-04  522  	if (dma_map_sgtable(buf->dev, sgt, buf->dma_dir,
8b7c0280ab03dd drivers/media/common/videobuf2/videobuf2-dma-contig.c Marek Szyprowski    2020-09-04  523  			    DMA_ATTR_SKIP_CPU_SYNC)) {
e15dab752d4c58 drivers/media/v4l2-core/videobuf2-dma-contig.c        Tomasz Stanislawski 2012-06-14  524  		pr_err("failed to map scatterlist\n");
e15dab752d4c58 drivers/media/v4l2-core/videobuf2-dma-contig.c        Tomasz Stanislawski 2012-06-14  525  		ret = -EIO;
e15dab752d4c58 drivers/media/v4l2-core/videobuf2-dma-contig.c        Tomasz Stanislawski 2012-06-14  526  		goto fail_sgt_init;
e15dab752d4c58 drivers/media/v4l2-core/videobuf2-dma-contig.c        Tomasz Stanislawski 2012-06-14  527  	}
e15dab752d4c58 drivers/media/v4l2-core/videobuf2-dma-contig.c        Tomasz Stanislawski 2012-06-14  528  
e15dab752d4c58 drivers/media/v4l2-core/videobuf2-dma-contig.c        Tomasz Stanislawski 2012-06-14  529  	contig_size = vb2_dc_get_contiguous_size(sgt);
e15dab752d4c58 drivers/media/v4l2-core/videobuf2-dma-contig.c        Tomasz Stanislawski 2012-06-14  530  	if (contig_size < size) {
e15dab752d4c58 drivers/media/v4l2-core/videobuf2-dma-contig.c        Tomasz Stanislawski 2012-06-14  531  		pr_err("contiguous mapping is too small %lu/%lu\n",
e15dab752d4c58 drivers/media/v4l2-core/videobuf2-dma-contig.c        Tomasz Stanislawski 2012-06-14  532  			contig_size, size);
e15dab752d4c58 drivers/media/v4l2-core/videobuf2-dma-contig.c        Tomasz Stanislawski 2012-06-14  533  		ret = -EFAULT;
e15dab752d4c58 drivers/media/v4l2-core/videobuf2-dma-contig.c        Tomasz Stanislawski 2012-06-14  534  		goto fail_map_sg;
e15dab752d4c58 drivers/media/v4l2-core/videobuf2-dma-contig.c        Tomasz Stanislawski 2012-06-14  535  	}
e15dab752d4c58 drivers/media/v4l2-core/videobuf2-dma-contig.c        Tomasz Stanislawski 2012-06-14  536  
e15dab752d4c58 drivers/media/v4l2-core/videobuf2-dma-contig.c        Tomasz Stanislawski 2012-06-14  537  	buf->dma_addr = sg_dma_address(sgt->sgl);
e15dab752d4c58 drivers/media/v4l2-core/videobuf2-dma-contig.c        Tomasz Stanislawski 2012-06-14  538  	buf->dma_sgt = sgt;
fb639eb3915431 drivers/media/v4l2-core/videobuf2-dma-contig.c        Jan Kara            2015-07-13 @539  out:
fb639eb3915431 drivers/media/v4l2-core/videobuf2-dma-contig.c        Jan Kara            2015-07-13  540  	buf->size = size;
1a758d4e847f77 drivers/media/video/videobuf2-dma-contig.c            Pawel Osciak        2010-10-11  541  
1a758d4e847f77 drivers/media/video/videobuf2-dma-contig.c            Pawel Osciak        2010-10-11  542  	return buf;
1a758d4e847f77 drivers/media/video/videobuf2-dma-contig.c            Pawel Osciak        2010-10-11  543  
e15dab752d4c58 drivers/media/v4l2-core/videobuf2-dma-contig.c        Tomasz Stanislawski 2012-06-14  544  fail_map_sg:
8b7c0280ab03dd drivers/media/common/videobuf2/videobuf2-dma-contig.c Marek Szyprowski    2020-09-04  545  	dma_unmap_sgtable(buf->dev, sgt, buf->dma_dir, DMA_ATTR_SKIP_CPU_SYNC);
1a758d4e847f77 drivers/media/video/videobuf2-dma-contig.c            Pawel Osciak        2010-10-11  546  
e15dab752d4c58 drivers/media/v4l2-core/videobuf2-dma-contig.c        Tomasz Stanislawski 2012-06-14  547  fail_sgt_init:
e15dab752d4c58 drivers/media/v4l2-core/videobuf2-dma-contig.c        Tomasz Stanislawski 2012-06-14  548  	sg_free_table(sgt);
e15dab752d4c58 drivers/media/v4l2-core/videobuf2-dma-contig.c        Tomasz Stanislawski 2012-06-14  549  
e15dab752d4c58 drivers/media/v4l2-core/videobuf2-dma-contig.c        Tomasz Stanislawski 2012-06-14  550  fail_sgt:
e15dab752d4c58 drivers/media/v4l2-core/videobuf2-dma-contig.c        Tomasz Stanislawski 2012-06-14  551  	kfree(sgt);
e15dab752d4c58 drivers/media/v4l2-core/videobuf2-dma-contig.c        Tomasz Stanislawski 2012-06-14  552  
fb639eb3915431 drivers/media/v4l2-core/videobuf2-dma-contig.c        Jan Kara            2015-07-13  553  fail_pfnvec:
fb639eb3915431 drivers/media/v4l2-core/videobuf2-dma-contig.c        Jan Kara            2015-07-13  554  	vb2_destroy_framevec(vec);
e15dab752d4c58 drivers/media/v4l2-core/videobuf2-dma-contig.c        Tomasz Stanislawski 2012-06-14  555  
e15dab752d4c58 drivers/media/v4l2-core/videobuf2-dma-contig.c        Tomasz Stanislawski 2012-06-14  556  fail_buf:
1a758d4e847f77 drivers/media/video/videobuf2-dma-contig.c            Pawel Osciak        2010-10-11  557  	kfree(buf);
e15dab752d4c58 drivers/media/v4l2-core/videobuf2-dma-contig.c        Tomasz Stanislawski 2012-06-14  558  
e15dab752d4c58 drivers/media/v4l2-core/videobuf2-dma-contig.c        Tomasz Stanislawski 2012-06-14  559  	return ERR_PTR(ret);
1a758d4e847f77 drivers/media/video/videobuf2-dma-contig.c            Pawel Osciak        2010-10-11  560  }
1a758d4e847f77 drivers/media/video/videobuf2-dma-contig.c            Pawel Osciak        2010-10-11  561  

:::::: The code at line 539 was first introduced by commit
:::::: fb639eb39154312af8bf08c58cc0142179e0c224 [media] media: vb2: Convert vb2_dc_get_userptr() to use frame vector

:::::: TO: Jan Kara <jack@suse.cz>
:::::: CC: Mauro Carvalho Chehab <mchehab@osg.samsung.com>

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202107132321.IXpwIn4Y-lkp%40intel.com.

--ew6BAiZeqk4r7MaW
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
WFon5wnt/wMvRhDpkUcCAA==

--ew6BAiZeqk4r7MaW--
