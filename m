Return-Path: <clang-built-linux+bncBDUNBGN3R4KRBKOX735AKGQEZLFY6JY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x540.google.com (mail-ed1-x540.google.com [IPv6:2a00:1450:4864:20::540])
	by mail.lfdr.de (Postfix) with ESMTPS id 64CE32693C8
	for <lists+clang-built-linux@lfdr.de>; Mon, 14 Sep 2020 19:43:06 +0200 (CEST)
Received: by mail-ed1-x540.google.com with SMTP id c25sf273921edx.11
        for <lists+clang-built-linux@lfdr.de>; Mon, 14 Sep 2020 10:43:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600105386; cv=pass;
        d=google.com; s=arc-20160816;
        b=cM+XdFVPtp6gBIrb/Wuzv8VSdyrhGlFLiAgDYaB4KAsZSoJJasxO/zY+SuSw18T1dy
         SxhZDoGgcTsTrdkNB72IlwAN3LjjuJWctmReNAM5wY6ikEskuCsZxezTjm38LDfqH65+
         jkFS2aUt7ALX53qPJ6qM479Kg/gLV7ZkyQRzYxSChPEU5DhKXgMKCtk6FTlq5qjrzzUV
         juEPZ4O1bMkZQ9/ZeWFc+bvKg4uSHu2cIaenIa7a9iVdbKm7SUx5O6UsVw8c+aSkaCQ+
         5bXAEEUo1duaqulJt8nrFEihlJNVZbMO5WBjbBvKB/2CdWiGpdwk5Rvz2pArpudiLBM1
         9Ruw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=VB5AXdyEAJhe3zycZ1zVnjnSXmen9TakscasOtgSM/0=;
        b=W2EEo9Omvnmr4MUTvEqARePzAQMkKH4ZYBcih2wQ/Zn3SZE8cZjRStSfQYI48oarbd
         MS6T1jQKocUwFl3/i0ENQurIx5AlA+WBjTyyT42qhytBpc3Mp3lFGUCiWceVCs1J3Tbm
         iTccXusflHK0x4bFBP1ZHVmBZiCdA+7EdgpeagqWw4iUYgLk8/NEtbcF8tWF7ofW1+1B
         VVRV7KIoTcBEx8OBI0Piovzek6elkYA7VEpMxDWMLS9oZDF6Z6fAsASUvA5WL733P6AM
         5wk7dpKQmBRH4Ifxmz7vqCECjHAXsfdIrnEYVI9UJm+wb2b8A/F4ubwsrb5tmBDvt63O
         +84A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=VB5AXdyEAJhe3zycZ1zVnjnSXmen9TakscasOtgSM/0=;
        b=WrKueRr8hrn2yiBxgbUOR62SJ12k2E07p1rkoBmZ7qN8upQ3jZosSJ0m3amef5qCAA
         jWYZl/NNodaFKQLOtmjcepPX01PpE9RqhmNYtjKQ/LEHf9+XDKsVY1bNtJeB1IGcIUAO
         S4FPs/ExXqll+Em4Xff/RjkA/waQ5C4MHb3zmT6JxV577vGIe508n5IYQfAlunGDhqVM
         a2BgKPl5l2EKeQFiZqM27WosAJgEITuOa+OyKfX0t1z1JKEEPjMZCRXf7gPLj+4n7G1E
         MTXIDwkrqi4+hmj97q7EKAu6+EA3Jr+3hOAyNpNklMdy6MsbJjOR1KmjVE95/u1zqLHr
         rbHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=VB5AXdyEAJhe3zycZ1zVnjnSXmen9TakscasOtgSM/0=;
        b=QOlHoTqI9yyRB0A9qtxQjOKf2vQ1yjX8Ainrn54JZBlXR76a+PQS6BITtzn+k/nSnw
         I1v/8HbrvmBWcNXBQGutQYHTRcl8YcScbdRZiQYH+tsrfL6L1KmRClMwJoUrhGT2o785
         T1YbSYHZsgPaAnrYrTBDVA93gGDIHhavkUgmmJJypY0Z9dYAkMxfWzVYA7EWEMywY/LE
         liVzyq/r47TTmsg5JHAzwKpf49J3uXaX/ziRdRxHAH6Vagg8JzFv6ytn+M5pK/E81/YY
         tmekToP48ZAGkghVpEi6O5lhIMblUhtjsY3/LbgPiVJwgw4fxKtirO7pkqk0hbdhSq1W
         qxlQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530YXisbbCaord3XF/rBwc8D/SosbwRUmnlaLkZk5X1LSrGbt7wF
	xk+aoPke9UzoyK85KCDHYVw=
X-Google-Smtp-Source: ABdhPJxUl4TV6NIaFU9/e4mGZnpqwwL8AcPXQclEyMwVRnKMR0QU9eRER69pYl2lm9KlI1z4aB/BJg==
X-Received: by 2002:a17:906:288d:: with SMTP id o13mr16398847ejd.195.1600105386087;
        Mon, 14 Sep 2020 10:43:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:bc05:: with SMTP id j5ls74011edh.0.gmail; Mon, 14 Sep
 2020 10:43:05 -0700 (PDT)
X-Received: by 2002:a50:ce06:: with SMTP id y6mr18655795edi.273.1600105384996;
        Mon, 14 Sep 2020 10:43:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600105384; cv=none;
        d=google.com; s=arc-20160816;
        b=HGD6AmLUutAAco5T4+ScVj0DZW0YjiuFjAJEMn1kdY+65pn4KrUcSWp1+Akcy1oD6h
         fxtwkijnfBkoHyN1EH6qvrz4lZEEUmL3U8U9idmRH2ZnrQqsDy0bm4lbh/a0n3ZyrckD
         WT8AKln0QZFi1zAvC9sdWDuortudxBBEQPTwur/MD+1MpRST53Wk954glFfJgpa0zw4q
         ndPHbcW7uQ+OHce6zK627YEM8EqnV74dJGIpE6e2Rb54AtEx0ip96bq7qQp93ncPIz81
         fa0GqjKyrecoeEqHbBW6myq1AU6cta13ZuhAI2jJLgG0um565mVx31Yf0AzvGXAFaXsT
         mxaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=rvVsEo6yb+t4lTz8M7tZsSGMj3Lc9ywNcD8V7Oq/S94=;
        b=oJEmigBNg2A1idLw1kFLvPAGmAcPKHP4thphGRZ8lVOVcrbGYgC/psoti5vYq9QqX7
         SbZhsE3orIxoa7S09SR5T7JFKVT533ADViYKIR4BXihqzGjph3+PGd+kgyqtNUZBEFRu
         gKBlaDfxEgUho19+QdTHYPHMMDrd1UdkY599GU8uMyp9696S84UDR5n3vZqLfRlNwdQx
         yiZjRzCtcT6J5thwuhw/h1VWAIXSSkgrYwzb/8xKq79C44D4zHvnRw3MOFDrAUWDGRxV
         2klfZb3NvvnoMbp9YCu/Vz562zJT384+8z9UDXs1X50f7AsNcHI2yrMSmSOoW3m/MMmL
         pkYQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of hch@lst.de designates 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
Received: from verein.lst.de (verein.lst.de. [213.95.11.211])
        by gmr-mx.google.com with ESMTPS id k6si285032eds.3.2020.09.14.10.43.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 14 Sep 2020 10:43:04 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of hch@lst.de designates 213.95.11.211 as permitted sender) client-ip=213.95.11.211;
Received: by verein.lst.de (Postfix, from userid 2407)
	id 4C8356736F; Mon, 14 Sep 2020 19:43:03 +0200 (CEST)
Date: Mon, 14 Sep 2020 19:43:02 +0200
From: Christoph Hellwig <hch@lst.de>
To: kernel test robot <lkp@intel.com>
Cc: Jim Quinlan <james.quinlan@broadcom.com>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com, Christoph Hellwig <hch@lst.de>
Subject: Re: [hch-misc:dma-ranges.3 25/25]
 include/linux/dma-direct.h:82:38: error: use of undeclared
 identifier 'dma_addr'; did you mean
Message-ID: <20200914174302.GA4705@lst.de>
References: <202009150145.kEJg7yNv%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202009150145.kEJg7yNv%lkp@intel.com>
User-Agent: Mutt/1.5.17 (2007-11-01)
X-Original-Sender: hch@lst.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of hch@lst.de designates
 213.95.11.211 as permitted sender) smtp.mailfrom=hch@lst.de
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

Oops, this was a mis-merge that I incorrectly commited.

On Tue, Sep 15, 2020 at 01:34:50AM +0800, kernel test robot wrote:
> tree:   git://git.infradead.org/users/hch/misc.git dma-ranges.3
> head:   e65920d7e325dcfaa9c560553c007cddfa199868
> commit: e65920d7e325dcfaa9c560553c007cddfa199868 [25/25] dma-mapping: introduce DMA range map, supplanting dma_pfn_offset
> config: arm64-randconfig-r024-20200914 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project b2c32c90bab09a6e2c1f370429db26017a182143)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install arm64 cross compiling tool for clang build
>         # apt-get install binutils-aarch64-linux-gnu
>         git checkout e65920d7e325dcfaa9c560553c007cddfa199868
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=arm64 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
> 
> All error/warnings (new ones prefixed by >>):
> 
>    In file included from arch/arm64/mm/init.c:23:
> >> include/linux/dma-direct.h:82:38: error: use of undeclared identifier 'dma_addr'; did you mean 'dev_addr'?
>                    paddr = translate_dma_to_phys(dev, dma_addr);
>                                                       ^~~~~~~~
>                                                       dev_addr
>    include/linux/dma-direct.h:77:70: note: 'dev_addr' declared here
>    static inline phys_addr_t dma_to_phys(struct device *dev, dma_addr_t dev_addr)
>                                                                         ^
>    include/linux/dma-direct.h:84:11: error: use of undeclared identifier 'dma_addr'; did you mean 'dev_addr'?
>                    paddr = dma_addr;
>                            ^~~~~~~~
>                            dev_addr
>    include/linux/dma-direct.h:77:70: note: 'dev_addr' declared here
>    static inline phys_addr_t dma_to_phys(struct device *dev, dma_addr_t dev_addr)
>                                                                         ^
>    2 errors generated.
> --
>    In file included from kernel/dma/direct.c:10:
> >> include/linux/dma-direct.h:82:38: error: use of undeclared identifier 'dma_addr'; did you mean 'dev_addr'?
>                    paddr = translate_dma_to_phys(dev, dma_addr);
>                                                       ^~~~~~~~
>                                                       dev_addr
>    include/linux/dma-direct.h:77:70: note: 'dev_addr' declared here
>    static inline phys_addr_t dma_to_phys(struct device *dev, dma_addr_t dev_addr)
>                                                                         ^
>    include/linux/dma-direct.h:84:11: error: use of undeclared identifier 'dma_addr'; did you mean 'dev_addr'?
>                    paddr = dma_addr;
>                            ^~~~~~~~
>                            dev_addr
>    include/linux/dma-direct.h:77:70: note: 'dev_addr' declared here
>    static inline phys_addr_t dma_to_phys(struct device *dev, dma_addr_t dev_addr)
>                                                                         ^
> >> kernel/dma/direct.c:135:20: warning: shift count >= width of type [-Wshift-count-overflow]
>                        phys_limit < DMA_BIT_MASK(64) &&
>                                     ^~~~~~~~~~~~~~~~
>    include/linux/dma-mapping.h:139:54: note: expanded from macro 'DMA_BIT_MASK'
>    #define DMA_BIT_MASK(n) (((n) == 64) ? ~0ULL : ((1ULL<<(n))-1))
>                                                         ^ ~~~
>    1 warning and 2 errors generated.
> --
>    In file included from kernel/dma/swiotlb.c:24:
> >> include/linux/dma-direct.h:82:38: error: use of undeclared identifier 'dma_addr'; did you mean 'dev_addr'?
>                    paddr = translate_dma_to_phys(dev, dma_addr);
>                                                       ^~~~~~~~
>                                                       dev_addr
>    include/linux/dma-direct.h:77:70: note: 'dev_addr' declared here
>    static inline phys_addr_t dma_to_phys(struct device *dev, dma_addr_t dev_addr)
>                                                                         ^
>    include/linux/dma-direct.h:84:11: error: use of undeclared identifier 'dma_addr'; did you mean 'dev_addr'?
>                    paddr = dma_addr;
>                            ^~~~~~~~
>                            dev_addr
>    include/linux/dma-direct.h:77:70: note: 'dev_addr' declared here
>    static inline phys_addr_t dma_to_phys(struct device *dev, dma_addr_t dev_addr)
>                                                                         ^
>    kernel/dma/swiotlb.c:278:1: warning: no previous prototype for function 'swiotlb_late_init_with_default_size' [-Wmissing-prototypes]
>    swiotlb_late_init_with_default_size(size_t default_size)
>    ^
>    kernel/dma/swiotlb.c:277:1: note: declare 'static' if the function is not intended to be used outside of this translation unit
>    int
>    ^
>    static 
>    1 warning and 2 errors generated.
> 
> git remote add hch-misc git://git.infradead.org/users/hch/misc.git
> git fetch --no-tags hch-misc dma-ranges.3
> git checkout e65920d7e325dcfaa9c560553c007cddfa199868
> vim +82 include/linux/dma-direct.h
> 
>     76	
>     77	static inline phys_addr_t dma_to_phys(struct device *dev, dma_addr_t dev_addr)
>     78	{
>     79		phys_addr_t paddr;
>     80	
>     81		if (dev->dma_range_map)
>   > 82			paddr = translate_dma_to_phys(dev, dma_addr);
>     83		else
>     84			paddr = dma_addr;
>     85	
>     86		return __sme_clr(paddr);
>     87	}
>     88	#endif /* !CONFIG_ARCH_HAS_PHYS_TO_DMA */
>     89	
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org


---end quoted text---

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200914174302.GA4705%40lst.de.
