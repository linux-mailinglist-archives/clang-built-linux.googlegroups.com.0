Return-Path: <clang-built-linux+bncBC4LXIPCY4NRB4OVUPVQKGQE7F5NZSA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33d.google.com (mail-ot1-x33d.google.com [IPv6:2607:f8b0:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EAA1A33BA
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Aug 2019 11:22:59 +0200 (CEST)
Received: by mail-ot1-x33d.google.com with SMTP id k22sf3322844otn.12
        for <lists+clang-built-linux@lfdr.de>; Fri, 30 Aug 2019 02:22:59 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567156978; cv=pass;
        d=google.com; s=arc-20160816;
        b=spevghaB0bt7ARgx/PKe1O1Un/7VrYd5kRj8jFqzYDJyBawu33uRBz6A3Yn5izE9SD
         I26HhF9si2V0MrKZcysKa1LBG1+I1u1HHyieMrX9PzxEEnjnudgVXl2BYk+Ipa94zzJU
         vlsxXTRyaWf08qV8Ky1tE32m29/IK+j339p+4KzCbrU7EuvZK4aMlLgPWKwbXFvaXIUD
         BsZEpVT+Ug8XC8jfOSauzNgchiLA7l5N6rHZHCIfTd5RXg7Co7/OrXqkoVVS91DYJCWu
         UBoS3c90XPl4z38Rd07aXmeAoiiCQv6sYfmnQ2j5DwSe8FTcMC0ALFRNMfZfQff6LNCj
         l/kw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:content-disposition
         :mime-version:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=7w+Tr9mmSGIduBEjOUsmGcLqzSTpiPTphUlBaBOy9K8=;
        b=n009vLb/JYNUwYCmtq2/opJ5QUiZOYHNJRQ+hRHA+7dSl1tq8ycocdUebUr4hzActR
         tQcIXR8iUI/JPsbDxv4YdGONJKPyvRyggjT8R1WgbIjV72g/SQbFp5/X7ModGtgJ0Ot6
         dh1yHlEyGJvpvtw4L1XldXbNwYFBvu82YMEPf0Jcaw3UGSx1RCTbf2GoV+naMONruv55
         y3Z8Iq8XB/eJnavnxcGJqr5QOS/Ze+eo89AELv9bmj76mjtntWv4ZwSmtzQOCnKxwLHH
         /vGFB4q44Lg9SDZBYVOtKCuH25NaCwKRrFCY44N44luOLEUTI+D1+0Afee3o8LTJ+d0z
         Bwjw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=7w+Tr9mmSGIduBEjOUsmGcLqzSTpiPTphUlBaBOy9K8=;
        b=IZP6cCezLXmgvSv/lEClxtMDSpeIrW2dw3FMEMiDLLmAsV/iiCXTib5U+GHXGznYrM
         NU3wD6gDlWA/JWCOvkbr3KZiM9+57WPJxbu65bWYNU0GcreiwujEKjx/0Mv9PreJOZ3K
         sNPDV5zeaEOYbOphxTYCwcoIBJ5atqRXNGgzF9PEgtLoANWGPj6VGN2mH19NcMfmHd2o
         Whx8plkfqboroWI6XJhgI183Q6HfPBJKkpRUN4QBiatT/yxARaqnTrqr+BsXSD0zJVTW
         jLft73hsFBvsB+Fq2jEEmGmpquX56LLdPZrXJ9+dBsObQAhL4lAdPCl0qSj+YUlPP1T5
         dC+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :mime-version:content-disposition:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7w+Tr9mmSGIduBEjOUsmGcLqzSTpiPTphUlBaBOy9K8=;
        b=qYARKL1N8qb+tQRnml5bRGv8pLjKuwT1FWyIn/4Hm1q2Ful6/2uswJ7Me4UpuJOxY/
         j7ts7tWznWZku76A+ayPXsJ8yTQB/VTIvoHrV3tj7jGOBoraforVihZg0wm5xpdaJTh+
         pP/LBv9py+HG8maqpvVivmvzmnuZi7Q/HzViNQiDlkJ5yZulH5dPQdAaEsTIl4b+f+PX
         vK5b+nkMcViZXikftj2VNJktdlSym8X4Ibq77JQwlO/F7XBbD/VNd/IUHgLH0XfefG75
         unHr8dckAetkCNtOIxUhooAksckYpHl04LIFtkJfi9D7ciOw7c2/QQnl8tEwVystI3Qc
         70uA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAW1AcfkafQyhTR35noa4pkU+SY4Bu01BITL4dHSEaXKRQLkxX3Z
	aEbjauNYi2JEH+DP1VvuAww=
X-Google-Smtp-Source: APXvYqwGutnDZVsc+QbVBeAzb4rUrcaoP8Nzdj2hUPdtLmkieAQOiCiPaNWcuTqIZ5hrlFV7TOpeeg==
X-Received: by 2002:a9d:6a1a:: with SMTP id g26mr11214502otn.284.1567156977743;
        Fri, 30 Aug 2019 02:22:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:6343:: with SMTP id y3ls139123otk.7.gmail; Fri, 30 Aug
 2019 02:22:57 -0700 (PDT)
X-Received: by 2002:a05:6830:4a1:: with SMTP id l1mr11693727otd.180.1567156977262;
        Fri, 30 Aug 2019 02:22:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567156977; cv=none;
        d=google.com; s=arc-20160816;
        b=YSxwPEsj2hMjiXL0UgSGyuLRHufSEKgoF5PJAdVw9dHrQIEACd3ank3Biw2YfM4xaR
         mTXG50uKaCkxefSvW/4qBk6yh7R08BfuAtPRS5yvUDxRQDRzVIIkP7/cR/q2FSWGkzuW
         NCwjw1PIRjHoMK5O7FSjdL18MHu7AionzoFbdfCC7VJp3F5EZDS8Hrsdp4N0fYpDGhMU
         S1kNuXVG1hQ2pBqXM8b7lDAgmFo395YLFdxPCC+hZoVR2dpsFfrP84q3to5r70/j9ZAs
         YSoD6VaA0ZGd0Lc2gvQ9izLYzF/PNFR4FqZWdsGrdjJBw2SGc02svxJpxRJ2Gr4sW6n3
         Dxjw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date;
        bh=TeuWOd5pTuOqEzP7lUsuuBOFyj8XPGhX66QDRwyTdL0=;
        b=mm2Czn+ORm2t1YHco49Vo7yxTYMeAB1ZIpI4YutAHKo3yUckiZSjD2J945IoPOFKgE
         zc1ewl9W0nxPcTy7T0ltWpcOc9rYEiBJ87TiXNKAUDmO3OvVcLNB5xhOgivX8pk0b545
         vhsp3gB2Sa3DbhoQPo9+DpQjFI0ZIWoZIxgXlkigObuoGD9mQl/hNjCFcmdE6KMnATZp
         uK91ssHqmHkbSi56DEgwdVGMZZDMn72maFkMAsHxznS/KAXqlN4XWsZhRJM0LttQPqMI
         Mx3Gx+PkrTV/ymPm/qo5GYrDFphSxmcHQ1qDtxfFmoDtS5XqsB/EbWPbTMEo+lqQnY0h
         JZXA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga02.intel.com (mga02.intel.com. [134.134.136.20])
        by gmr-mx.google.com with ESMTPS id d123si227773oig.5.2019.08.30.02.22.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Aug 2019 02:22:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.20 as permitted sender) client-ip=134.134.136.20;
X-Amp-Result: UNSCANNABLE
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 30 Aug 2019 02:22:53 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,446,1559545200"; 
   d="gz'50?scan'50,208,50";a="172185424"
Received: from lkp-server01.sh.intel.com (HELO lkp-server01) ([10.239.97.150])
  by orsmga007.jf.intel.com with ESMTP; 30 Aug 2019 02:22:51 -0700
Received: from kbuild by lkp-server01 with local (Exim 4.89)
	(envelope-from <lkp@intel.com>)
	id 1i3d7K-000CtU-P4; Fri, 30 Aug 2019 17:22:50 +0800
Date: Fri, 30 Aug 2019 17:22:41 +0800
From: kbuild test robot <lkp@intel.com>
To: kbuild@01.org
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com
Subject: [hch-misc:dma-vmap 8/10] kernel/dma/remap.c:138:2: error: expected
 expression
Message-ID: <201908301716.GpvcVKgo%lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="2he4pqqj6vkkb2i4"
Content-Disposition: inline
X-Patchwork-Hint: ignore
User-Agent: NeoMutt/20170113 (1.7.2)
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


--2he4pqqj6vkkb2i4
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

CC: kbuild-all@01.org
TO: Christoph Hellwig <hch@lst.de>

tree:   git://git.infradead.org/users/hch/misc.git dma-vmap
head:   3895c04e745c4c1ba426ad676758bd42cf268eda
commit: 196f07599d0765da2467dde11c31d7d909e27a53 [8/10] dma-mapping: always use VM_DMA_COHERENT for generic DMA remap
config: arm64-defconfig (attached as .config)
compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206fb06f77a08968c99a8172cbf2ccdd0f)
reproduce:
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        git checkout 196f07599d0765da2467dde11c31d7d909e27a53
        # save the attached .config to linux build tree
        make.cross ARCH=arm64 

If you fix the issue, kindly add following tag
Reported-by: kbuild test robot <lkp@intel.com>

All errors (new ones prefixed by >>):

>> kernel/dma/remap.c:138:2: error: expected expression
           if (!addr)
           ^
>> kernel/dma/remap.c:167:1: error: function definition is not allowed here
   {
   ^
   kernel/dma/remap.c:175:1: error: function definition is not allowed here
   {
   ^
   kernel/dma/remap.c:197:1: error: function definition is not allowed here
   {
   ^
   kernel/dma/remap.c:206:1: error: function definition is not allowed here
   {
   ^
   kernel/dma/remap.c:243:1: error: function definition is not allowed here
   {
   ^
   kernel/dma/remap.c:255:1: error: function definition is not allowed here
   {
   ^
>> kernel/dma/remap.c:258:37: error: expected '}'
   #endif /* CONFIG_DMA_DIRECT_REMAP */
                                       ^
   kernel/dma/remap.c:115:1: note: to match this '{'
   {
   ^
>> kernel/dma/remap.c:134:8: error: use of undeclared label 'free_page'
                   goto free_page;
                        ^
>> kernel/dma/remap.c:128:8: error: use of undeclared label 'out'
                   goto out;
                        ^
   10 errors generated.

vim +138 kernel/dma/remap.c

8e3a68fb55e00e Christoph Hellwig 2019-08-03  113  
8e3a68fb55e00e Christoph Hellwig 2019-08-03  114  static int __init dma_atomic_pool_init(void)
0c3b3171ceccb8 Christoph Hellwig 2018-11-04  115  {
0c3b3171ceccb8 Christoph Hellwig 2018-11-04  116  	unsigned int pool_size_order = get_order(atomic_pool_size);
0c3b3171ceccb8 Christoph Hellwig 2018-11-04  117  	unsigned long nr_pages = atomic_pool_size >> PAGE_SHIFT;
0c3b3171ceccb8 Christoph Hellwig 2018-11-04  118  	struct page *page;
0c3b3171ceccb8 Christoph Hellwig 2018-11-04  119  	void *addr;
0c3b3171ceccb8 Christoph Hellwig 2018-11-04  120  	int ret;
0c3b3171ceccb8 Christoph Hellwig 2018-11-04  121  
0c3b3171ceccb8 Christoph Hellwig 2018-11-04  122  	if (dev_get_cma_area(NULL))
0c3b3171ceccb8 Christoph Hellwig 2018-11-04  123  		page = dma_alloc_from_contiguous(NULL, nr_pages,
0c3b3171ceccb8 Christoph Hellwig 2018-11-04  124  						 pool_size_order, false);
0c3b3171ceccb8 Christoph Hellwig 2018-11-04  125  	else
8e3a68fb55e00e Christoph Hellwig 2019-08-03  126  		page = alloc_pages(dma_atomic_pool_gfp(), pool_size_order);
0c3b3171ceccb8 Christoph Hellwig 2018-11-04  127  	if (!page)
0c3b3171ceccb8 Christoph Hellwig 2018-11-04 @128  		goto out;
0c3b3171ceccb8 Christoph Hellwig 2018-11-04  129  
0c3b3171ceccb8 Christoph Hellwig 2018-11-04  130  	arch_dma_prep_coherent(page, atomic_pool_size);
0c3b3171ceccb8 Christoph Hellwig 2018-11-04  131  
0c3b3171ceccb8 Christoph Hellwig 2018-11-04  132  	atomic_pool = gen_pool_create(PAGE_SHIFT, -1);
0c3b3171ceccb8 Christoph Hellwig 2018-11-04  133  	if (!atomic_pool)
0c3b3171ceccb8 Christoph Hellwig 2018-11-04 @134  		goto free_page;
0c3b3171ceccb8 Christoph Hellwig 2018-11-04  135  
196f07599d0765 Christoph Hellwig 2019-08-30  136  	addr = dma_common_contiguous_remap(page, atomic_pool_size,
8e3a68fb55e00e Christoph Hellwig 2019-08-03  137  					   pgprot_dmacoherent(PAGE_KERNEL),
0c3b3171ceccb8 Christoph Hellwig 2018-11-04 @138  	if (!addr)
0c3b3171ceccb8 Christoph Hellwig 2018-11-04  139  		goto destroy_genpool;
0c3b3171ceccb8 Christoph Hellwig 2018-11-04  140  
0c3b3171ceccb8 Christoph Hellwig 2018-11-04  141  	ret = gen_pool_add_virt(atomic_pool, (unsigned long)addr,
0c3b3171ceccb8 Christoph Hellwig 2018-11-04  142  				page_to_phys(page), atomic_pool_size, -1);
0c3b3171ceccb8 Christoph Hellwig 2018-11-04  143  	if (ret)
0c3b3171ceccb8 Christoph Hellwig 2018-11-04  144  		goto remove_mapping;
0c3b3171ceccb8 Christoph Hellwig 2018-11-04  145  	gen_pool_set_algo(atomic_pool, gen_pool_first_fit_order_align, NULL);
0c3b3171ceccb8 Christoph Hellwig 2018-11-04  146  
0c3b3171ceccb8 Christoph Hellwig 2018-11-04  147  	pr_info("DMA: preallocated %zu KiB pool for atomic allocations\n",
0c3b3171ceccb8 Christoph Hellwig 2018-11-04  148  		atomic_pool_size / 1024);
0c3b3171ceccb8 Christoph Hellwig 2018-11-04  149  	return 0;
0c3b3171ceccb8 Christoph Hellwig 2018-11-04  150  
0c3b3171ceccb8 Christoph Hellwig 2018-11-04  151  remove_mapping:
196f07599d0765 Christoph Hellwig 2019-08-30  152  	dma_common_free_remap(addr, atomic_pool_size);
0c3b3171ceccb8 Christoph Hellwig 2018-11-04  153  destroy_genpool:
0c3b3171ceccb8 Christoph Hellwig 2018-11-04  154  	gen_pool_destroy(atomic_pool);
0c3b3171ceccb8 Christoph Hellwig 2018-11-04  155  	atomic_pool = NULL;
0c3b3171ceccb8 Christoph Hellwig 2018-11-04  156  free_page:
0c3b3171ceccb8 Christoph Hellwig 2018-11-04  157  	if (!dma_release_from_contiguous(NULL, page, nr_pages))
0c3b3171ceccb8 Christoph Hellwig 2018-11-04  158  		__free_pages(page, pool_size_order);
0c3b3171ceccb8 Christoph Hellwig 2018-11-04  159  out:
0c3b3171ceccb8 Christoph Hellwig 2018-11-04  160  	pr_err("DMA: failed to allocate %zu KiB pool for atomic coherent allocation\n",
0c3b3171ceccb8 Christoph Hellwig 2018-11-04  161  		atomic_pool_size / 1024);
0c3b3171ceccb8 Christoph Hellwig 2018-11-04  162  	return -ENOMEM;
0c3b3171ceccb8 Christoph Hellwig 2018-11-04  163  }
8e3a68fb55e00e Christoph Hellwig 2019-08-03  164  postcore_initcall(dma_atomic_pool_init);
0c3b3171ceccb8 Christoph Hellwig 2018-11-04  165  
0c3b3171ceccb8 Christoph Hellwig 2018-11-04  166  bool dma_in_atomic_pool(void *start, size_t size)
0c3b3171ceccb8 Christoph Hellwig 2018-11-04 @167  {
4b4b077cbd0a99 Florian Fainelli  2019-06-10  168  	if (unlikely(!atomic_pool))
4b4b077cbd0a99 Florian Fainelli  2019-06-10  169  		return false;
4b4b077cbd0a99 Florian Fainelli  2019-06-10  170  
0c3b3171ceccb8 Christoph Hellwig 2018-11-04  171  	return addr_in_gen_pool(atomic_pool, (unsigned long)start, size);
0c3b3171ceccb8 Christoph Hellwig 2018-11-04  172  }
0c3b3171ceccb8 Christoph Hellwig 2018-11-04  173  
0c3b3171ceccb8 Christoph Hellwig 2018-11-04  174  void *dma_alloc_from_pool(size_t size, struct page **ret_page, gfp_t flags)
0c3b3171ceccb8 Christoph Hellwig 2018-11-04  175  {
0c3b3171ceccb8 Christoph Hellwig 2018-11-04  176  	unsigned long val;
0c3b3171ceccb8 Christoph Hellwig 2018-11-04  177  	void *ptr = NULL;
0c3b3171ceccb8 Christoph Hellwig 2018-11-04  178  
0c3b3171ceccb8 Christoph Hellwig 2018-11-04  179  	if (!atomic_pool) {
0c3b3171ceccb8 Christoph Hellwig 2018-11-04  180  		WARN(1, "coherent pool not initialised!\n");
0c3b3171ceccb8 Christoph Hellwig 2018-11-04  181  		return NULL;
0c3b3171ceccb8 Christoph Hellwig 2018-11-04  182  	}
0c3b3171ceccb8 Christoph Hellwig 2018-11-04  183  
0c3b3171ceccb8 Christoph Hellwig 2018-11-04  184  	val = gen_pool_alloc(atomic_pool, size);
0c3b3171ceccb8 Christoph Hellwig 2018-11-04  185  	if (val) {
0c3b3171ceccb8 Christoph Hellwig 2018-11-04  186  		phys_addr_t phys = gen_pool_virt_to_phys(atomic_pool, val);
0c3b3171ceccb8 Christoph Hellwig 2018-11-04  187  
0c3b3171ceccb8 Christoph Hellwig 2018-11-04  188  		*ret_page = pfn_to_page(__phys_to_pfn(phys));
0c3b3171ceccb8 Christoph Hellwig 2018-11-04  189  		ptr = (void *)val;
0c3b3171ceccb8 Christoph Hellwig 2018-11-04  190  		memset(ptr, 0, size);
0c3b3171ceccb8 Christoph Hellwig 2018-11-04  191  	}
0c3b3171ceccb8 Christoph Hellwig 2018-11-04  192  
0c3b3171ceccb8 Christoph Hellwig 2018-11-04  193  	return ptr;
0c3b3171ceccb8 Christoph Hellwig 2018-11-04  194  }
0c3b3171ceccb8 Christoph Hellwig 2018-11-04  195  
0c3b3171ceccb8 Christoph Hellwig 2018-11-04  196  bool dma_free_from_pool(void *start, size_t size)
0c3b3171ceccb8 Christoph Hellwig 2018-11-04  197  {
0c3b3171ceccb8 Christoph Hellwig 2018-11-04  198  	if (!dma_in_atomic_pool(start, size))
0c3b3171ceccb8 Christoph Hellwig 2018-11-04  199  		return false;
0c3b3171ceccb8 Christoph Hellwig 2018-11-04  200  	gen_pool_free(atomic_pool, (unsigned long)start, size);
0c3b3171ceccb8 Christoph Hellwig 2018-11-04  201  	return true;
0c3b3171ceccb8 Christoph Hellwig 2018-11-04  202  }
0c3b3171ceccb8 Christoph Hellwig 2018-11-04  203  
0c3b3171ceccb8 Christoph Hellwig 2018-11-04  204  void *arch_dma_alloc(struct device *dev, size_t size, dma_addr_t *dma_handle,
0c3b3171ceccb8 Christoph Hellwig 2018-11-04  205  		gfp_t flags, unsigned long attrs)
0c3b3171ceccb8 Christoph Hellwig 2018-11-04 @206  {
0c3b3171ceccb8 Christoph Hellwig 2018-11-04  207  	struct page *page = NULL;
bfd56cd605219d Christoph Hellwig 2018-11-04  208  	void *ret;
0c3b3171ceccb8 Christoph Hellwig 2018-11-04  209  
0c3b3171ceccb8 Christoph Hellwig 2018-11-04  210  	size = PAGE_ALIGN(size);
0c3b3171ceccb8 Christoph Hellwig 2018-11-04  211  
d98849aff87911 Christoph Hellwig 2019-06-14  212  	if (!gfpflags_allow_blocking(flags)) {
0c3b3171ceccb8 Christoph Hellwig 2018-11-04  213  		ret = dma_alloc_from_pool(size, &page, flags);
0c3b3171ceccb8 Christoph Hellwig 2018-11-04  214  		if (!ret)
0c3b3171ceccb8 Christoph Hellwig 2018-11-04  215  			return NULL;
8270f3a11ceef6 Christoph Hellwig 2019-01-04  216  		goto done;
0c3b3171ceccb8 Christoph Hellwig 2018-11-04  217  	}
0c3b3171ceccb8 Christoph Hellwig 2018-11-04  218  
bfd56cd605219d Christoph Hellwig 2018-11-04  219  	page = __dma_direct_alloc_pages(dev, size, dma_handle, flags, attrs);
bfd56cd605219d Christoph Hellwig 2018-11-04  220  	if (!page)
0c3b3171ceccb8 Christoph Hellwig 2018-11-04  221  		return NULL;
0c3b3171ceccb8 Christoph Hellwig 2018-11-04  222  
0c3b3171ceccb8 Christoph Hellwig 2018-11-04  223  	/* remove any dirty cache lines on the kernel alias */
0c3b3171ceccb8 Christoph Hellwig 2018-11-04  224  	arch_dma_prep_coherent(page, size);
0c3b3171ceccb8 Christoph Hellwig 2018-11-04  225  
0c3b3171ceccb8 Christoph Hellwig 2018-11-04  226  	/* create a coherent mapping */
196f07599d0765 Christoph Hellwig 2019-08-30  227  	ret = dma_common_contiguous_remap(page, size,
33dcb37cef7412 Christoph Hellwig 2019-07-26  228  			dma_pgprot(dev, PAGE_KERNEL, attrs),
0c3b3171ceccb8 Christoph Hellwig 2018-11-04  229  			__builtin_return_address(0));
a1da439cc0d929 Marek Szyprowski  2018-12-05  230  	if (!ret) {
bfd56cd605219d Christoph Hellwig 2018-11-04  231  		__dma_direct_free_pages(dev, size, page);
0c3b3171ceccb8 Christoph Hellwig 2018-11-04  232  		return ret;
0c3b3171ceccb8 Christoph Hellwig 2018-11-04  233  	}
0c3b3171ceccb8 Christoph Hellwig 2018-11-04  234  
a1da439cc0d929 Marek Szyprowski  2018-12-05  235  	memset(ret, 0, size);
8270f3a11ceef6 Christoph Hellwig 2019-01-04  236  done:
8270f3a11ceef6 Christoph Hellwig 2019-01-04  237  	*dma_handle = phys_to_dma(dev, page_to_phys(page));
a1da439cc0d929 Marek Szyprowski  2018-12-05  238  	return ret;
a1da439cc0d929 Marek Szyprowski  2018-12-05  239  }
a1da439cc0d929 Marek Szyprowski  2018-12-05  240  
0c3b3171ceccb8 Christoph Hellwig 2018-11-04  241  void arch_dma_free(struct device *dev, size_t size, void *vaddr,
0c3b3171ceccb8 Christoph Hellwig 2018-11-04  242  		dma_addr_t dma_handle, unsigned long attrs)
0c3b3171ceccb8 Christoph Hellwig 2018-11-04  243  {
d98849aff87911 Christoph Hellwig 2019-06-14  244  	if (!dma_free_from_pool(vaddr, PAGE_ALIGN(size))) {
bfd56cd605219d Christoph Hellwig 2018-11-04  245  		phys_addr_t phys = dma_to_phys(dev, dma_handle);
bfd56cd605219d Christoph Hellwig 2018-11-04  246  		struct page *page = pfn_to_page(__phys_to_pfn(phys));
0c3b3171ceccb8 Christoph Hellwig 2018-11-04  247  
0c3b3171ceccb8 Christoph Hellwig 2018-11-04  248  		vunmap(vaddr);
bfd56cd605219d Christoph Hellwig 2018-11-04  249  		__dma_direct_free_pages(dev, size, page);
0c3b3171ceccb8 Christoph Hellwig 2018-11-04  250  	}
0c3b3171ceccb8 Christoph Hellwig 2018-11-04  251  }
0c3b3171ceccb8 Christoph Hellwig 2018-11-04  252  
0c3b3171ceccb8 Christoph Hellwig 2018-11-04  253  long arch_dma_coherent_to_pfn(struct device *dev, void *cpu_addr,
0c3b3171ceccb8 Christoph Hellwig 2018-11-04  254  		dma_addr_t dma_addr)
0c3b3171ceccb8 Christoph Hellwig 2018-11-04 @255  {
0c3b3171ceccb8 Christoph Hellwig 2018-11-04  256  	return __phys_to_pfn(dma_to_phys(dev, dma_addr));
0c3b3171ceccb8 Christoph Hellwig 2018-11-04  257  }
0c3b3171ceccb8 Christoph Hellwig 2018-11-04 @258  #endif /* CONFIG_DMA_DIRECT_REMAP */

:::::: The code at line 138 was first introduced by commit
:::::: 0c3b3171ceccb8830c2bb5adff1b4e9b204c1450 dma-mapping: move the arm64 noncoherent alloc/free support to common code

:::::: TO: Christoph Hellwig <hch@lst.de>
:::::: CC: Christoph Hellwig <hch@lst.de>

---
0-DAY kernel test infrastructure                Open Source Technology Center
https://lists.01.org/pipermail/kbuild-all                   Intel Corporation

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/201908301716.GpvcVKgo%25lkp%40intel.com.

--2he4pqqj6vkkb2i4
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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
L3/mIuuFCwMA

--2he4pqqj6vkkb2i4--
