Return-Path: <clang-built-linux+bncBC4LXIPCY4NRBRVERT5AKGQEEWHEMZA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x538.google.com (mail-pg1-x538.google.com [IPv6:2607:f8b0:4864:20::538])
	by mail.lfdr.de (Postfix) with ESMTPS id 62AC124F0D8
	for <lists+clang-built-linux@lfdr.de>; Mon, 24 Aug 2020 03:05:12 +0200 (CEST)
Received: by mail-pg1-x538.google.com with SMTP id 130sf4375781pga.11
        for <lists+clang-built-linux@lfdr.de>; Sun, 23 Aug 2020 18:05:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598231111; cv=pass;
        d=google.com; s=arc-20160816;
        b=yz+ldo61nxfB7BD3utYM7NU4FJW5p17z6v2oml7L42IykKfrFcIARYRKOzb3zgvnYx
         9WyYqe/71Tzg/gdb9XNVE/Xh4Wu1qW1IDIIX8rJuuiZjbHNTKOu3IMBDHpvlG4dNa9jn
         iQc4LcZYebnPp8WOFzYOzeOurlweNQg+ANlIBoQSUzqe/gcZt28TT0o9BhcQAjecqN3y
         pRJO/Zpp5o3587EjBn0pOy6BipJMYFd7jlKXnMNF4tHYY1bOFtWPR19PMjrNSt29h4LX
         xQWN1QaAcX+7O38Y1vIHVWLacwABaRuIRV4DHa4SbssYGmrDyDhciUDDN0XL2c2ffoE+
         jcyw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=6yArtcC3SrQ7ZsUS/zMbpK9I9cP+ZDFLVqaKSKfRYNQ=;
        b=zbixRv4MtfXlRxScaZveQHjfqS879wRi8UPxUEn0ovR8YYkEYREeLnPBiFN45msJZl
         mIKntNAIQVN6fLahicigU38tG/jkjC+GWpX2rR7noCFIdA4p0hpZtcK/+M+HhQxMJwvK
         Ws2p+/FgHuhrKcPfvcAzol0bmtfnHP+pJSRtLVhApYZVWfst0FBhRLWGXouycO61LaOA
         TCvIyP9v8+C/N/Wrjx6hSQ8t3ShVJqTqew80U2pZgM5bxqo4wPzLQ39KR5LGinI0ydCi
         ZBaZxSL65YLlFg95LJnVWj/STvndT8efLCF6JVHFnpcQmYjfMABTLR7eKrGPUYmOPtWL
         qETg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6yArtcC3SrQ7ZsUS/zMbpK9I9cP+ZDFLVqaKSKfRYNQ=;
        b=OCNf780HeFAz5aVx78KCwY/Ih98n+d6EwPKxMqDAXAmUMLCRT9u9itQHRNJc5OtCjM
         PL4MGH9WAyg7hqThwbvNJJfdx0rdDCFUIAa9jgwpKUer29QfgShWE6wJPsupnq2qiYeR
         y8MzS2xJFxq05/9q9rpLM34GVuGpGTBBXGCf2gyKF2jkWcdwWHzm6+q+NYvzW2JKFjIA
         /vGUrZ9riyCQVaiZj1HYrmlP/HQKW5nLgV1ckTCdOI9AjhZ1aRnRCKNPrh1u24wPxJPq
         M6Gkq1b0WzVrl5nRlyAvZTTfajGWuPxrgyuf9JzXLU79b0tyuN+rtfZ7G8MEGdO7rQTa
         +wsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6yArtcC3SrQ7ZsUS/zMbpK9I9cP+ZDFLVqaKSKfRYNQ=;
        b=orGW/KlRT8w52wQ269eAT05udwfmuU2Gj/RHelBRqvl+BizomNWuqmY23AE+q3OJCS
         BSrx2o4G/U2r7tQ81vp9k4ODKcVWmVR3/RcirkVN68vX3XO+OQjiFoxaARnVu0+123PI
         StG7qFeaTOHZyFyaQMhBc0T8PUfz7GiyMOMykV8+TsUgAyYd7Ftiy3UPKzFIl/yXU/6t
         bXJmCGMtun28AOxUrUlP34nF+bQCG0EEizrSOJ4xrdUe4GvumqWlhH1H/E52KcbCI+g6
         mgMmhP6Hh9wDHMcnQJKcAriPvk13ULIfuLwlqB9lDIGLXCA7TSqdq0KTRCqLlu5+ZlaK
         zG8w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532ItBRRFLN4G7/p9cklwd3uQFdDo856cLZVIca0cU/HMSNkBhpb
	LQnhCYU+Z202pWBmugk9TyQ=
X-Google-Smtp-Source: ABdhPJy11iWf7Hvcs2OrZS12kI/0BT2VjyMzrcThffOikRvylClN+VFkgpHEncG02YNWix1x4KdwLg==
X-Received: by 2002:a62:1cd2:: with SMTP id c201mr1800143pfc.231.1598231110651;
        Sun, 23 Aug 2020 18:05:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:ca88:: with SMTP id y8ls3186741pjt.1.gmail; Sun, 23
 Aug 2020 18:05:10 -0700 (PDT)
X-Received: by 2002:a17:902:4b:: with SMTP id 69mr2210705pla.245.1598231110147;
        Sun, 23 Aug 2020 18:05:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598231110; cv=none;
        d=google.com; s=arc-20160816;
        b=0kWPIvxKjHPjg67IYug6L/Uj1cmcAvR/w0LGWfEWyX/3CprEYbITRaTJJKNfNAgpKf
         HX+tJX2fVS92Y7T2AGA633SMzu157EMjv26Kj8R8Erdz5iMMg0PvSv9bqAM+Fp2Y9JOE
         I03nxU0eQoQYv2F2Y82H8ritfoiP2hFf3BsjOb36LdVO61bZdscRuFqIREAHplxiFcSf
         46+9PjG0f/Jp7QkgI8Q8uRvz0qH6cEFr7S6+Uc68K85lDm6h1dKf/ed8BCjymbPK3NqE
         +cjAR2a+mbkYq4pvYgbUF3UWantU6YPEnB3VTWDlBtHpuzU/ce4WcFPUp3ijsKWxprBu
         Rhkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=19bNNLhTzoeGNit/F7HwE3gFc0hPFa4tF35kulpRI4o=;
        b=GOZGUbIWrpDjvPWJSRMGs2im2F8lxIfvcYvwHhEfL4XMFO7kK8d8fJs6kmHRoyTXWv
         ZjTyqtWW3ZveEhS6+1kvfP2wTyR5d4YPa+A+WymNDn9OtTZzA20SB9xJdlSyuqhUlZ+1
         Hyjp8eJAGM4yVTGnaqLBTa400URA8EbYE4uJngVNqX03Ec7gUrpAUiCCFVvN46zGo90q
         /EGcMVWhIucIxtJE80TOhpQxBuTqgKN/Knhul4HnA0/xjnVZQc3dj0bcLnhA7Y1FoorB
         7KI3krx60nirQchDTDC0pJBxKPZpZ6CjqocVHh8WlVzX44tGtv9gkDYMA1Es0hraS4sU
         IrKg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) smtp.mailfrom=lkp@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga09.intel.com (mga09.intel.com. [134.134.136.24])
        by gmr-mx.google.com with ESMTPS id j4si561397pjd.0.2020.08.23.18.05.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 23 Aug 2020 18:05:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted sender) client-ip=134.134.136.24;
IronPort-SDR: mh5882qgJ4/v7smVmL7xdXEXc7MjWASw1xL+BizPtLRmMJ/G0Q00CIJhWiWXBFojKqnFW1jq/7
 lKVzUafIYN/A==
X-IronPort-AV: E=McAfee;i="6000,8403,9722"; a="156879790"
X-IronPort-AV: E=Sophos;i="5.76,346,1592895600"; 
   d="gz'50?scan'50,208,50";a="156879790"
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
  by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 23 Aug 2020 18:05:08 -0700
IronPort-SDR: qS2fl2IgUysKAc6Hzd6hasLFWxzQ9ZmW6SxZADh5qeTzzvIzuxh0H6dWgTvgZq7ymXjq4nvABl
 dEGOC9l8qtsQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,346,1592895600"; 
   d="gz'50?scan'50,208,50";a="372504736"
Received: from lkp-server01.sh.intel.com (HELO 91ed66e1ca04) ([10.239.97.150])
  by orsmga001.jf.intel.com with ESMTP; 23 Aug 2020 18:05:04 -0700
Received: from kbuild by 91ed66e1ca04 with local (Exim 4.92)
	(envelope-from <lkp@intel.com>)
	id 1kA0v0-0002Jr-PH; Mon, 24 Aug 2020 01:05:02 +0000
Date: Mon, 24 Aug 2020 09:04:03 +0800
From: kernel test robot <lkp@intel.com>
To: Xianting Tian <tian.xianting@h3c.com>, axboe@kernel.dk, ast@kernel.org,
	daniel@iogearbox.net, kafai@fb.com, songliubraving@fb.com,
	yhs@fb.com, andriin@fb.com, john.fastabend@gmail.com,
	kpsingh@chromium.org
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-block@vger.kernel.org
Subject: Re: [PATCH] blk-mq: use BLK_MQ_NO_TAG for no tag
Message-ID: <202008240800.8PxefkXY%lkp@intel.com>
References: <20200823154459.40731-1-tian.xianting@h3c.com>
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="bp/iNruPH9dso1Pn"
Content-Disposition: inline
In-Reply-To: <20200823154459.40731-1-tian.xianting@h3c.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: lkp@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of lkp@intel.com designates 134.134.136.24 as permitted
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


--bp/iNruPH9dso1Pn
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi Xianting,

Thank you for the patch! Perhaps something to improve:

[auto build test WARNING on block/for-next]
[also build test WARNING on linux/master linus/master v5.9-rc2 next-20200821]
[If your patch is applied to the wrong git tree, kindly drop us a note.
And when submitting patch, we suggest to use '--base' as documented in
https://git-scm.com/docs/git-format-patch]

url:    https://github.com/0day-ci/linux/commits/Xianting-Tian/blk-mq-use-BLK_MQ_NO_TAG-for-no-tag/20200824-012255
base:   https://git.kernel.org/pub/scm/linux/kernel/git/axboe/linux-block.git for-next
config: mips-randconfig-r031-20200823 (attached as .config)
compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project b587ca93be114d07ec3bf654add97d7872325281)
reproduce (this is a W=1 build):
        wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
        chmod +x ~/bin/make.cross
        # install mips cross compiling tool for clang build
        # apt-get install binutils-mips-linux-gnu
        # save the attached .config to linux build tree
        COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=mips 

If you fix the issue, kindly add following tag as appropriate
Reported-by: kernel test robot <lkp@intel.com>

All warnings (new ones prefixed by >>):

   In file included from drivers/scsi/dpt_i2o.c:62:
   In file included from include/scsi/scsi_cmnd.h:13:
   In file included from include/scsi/scsi_request.h:5:
   include/linux/blk-mq.h:572:17: error: use of undeclared identifier 'BLK_MQ_NO_TAG'
           if (rq->tag != BLK_MQ_NO_TAG)
                          ^
   include/linux/blk-mq.h:572:17: error: use of undeclared identifier 'BLK_MQ_NO_TAG'
   include/linux/blk-mq.h:572:17: error: use of undeclared identifier 'BLK_MQ_NO_TAG'
>> drivers/scsi/dpt_i2o.c:893:31: warning: shift count >= width of type [-Wshift-count-overflow]
               dma_set_mask(&pDev->dev, DMA_BIT_MASK(64)) == 0)
               ~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~
   include/linux/dma-mapping.h:139:54: note: expanded from macro 'DMA_BIT_MASK'
   #define DMA_BIT_MASK(n) (((n) == 64) ? ~0ULL : ((1ULL<<(n))-1))
                                                        ^
   include/linux/compiler.h:56:47: note: expanded from macro 'if'
   #define if(cond, ...) if ( __trace_if_var( !!(cond , ## __VA_ARGS__) ) )
                              ~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler.h:58:52: note: expanded from macro '__trace_if_var'
   #define __trace_if_var(cond) (__builtin_constant_p(cond) ? (cond) : __trace_if_value(cond))
                                                      ^~~~
>> drivers/scsi/dpt_i2o.c:893:31: warning: shift count >= width of type [-Wshift-count-overflow]
               dma_set_mask(&pDev->dev, DMA_BIT_MASK(64)) == 0)
               ~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~
   include/linux/dma-mapping.h:139:54: note: expanded from macro 'DMA_BIT_MASK'
   #define DMA_BIT_MASK(n) (((n) == 64) ? ~0ULL : ((1ULL<<(n))-1))
                                                        ^
   include/linux/compiler.h:56:47: note: expanded from macro 'if'
   #define if(cond, ...) if ( __trace_if_var( !!(cond , ## __VA_ARGS__) ) )
                              ~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler.h:58:61: note: expanded from macro '__trace_if_var'
   #define __trace_if_var(cond) (__builtin_constant_p(cond) ? (cond) : __trace_if_value(cond))
                                                               ^~~~
>> drivers/scsi/dpt_i2o.c:893:31: warning: shift count >= width of type [-Wshift-count-overflow]
               dma_set_mask(&pDev->dev, DMA_BIT_MASK(64)) == 0)
               ~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~
   include/linux/dma-mapping.h:139:54: note: expanded from macro 'DMA_BIT_MASK'
   #define DMA_BIT_MASK(n) (((n) == 64) ? ~0ULL : ((1ULL<<(n))-1))
                                                        ^
   include/linux/compiler.h:56:47: note: expanded from macro 'if'
   #define if(cond, ...) if ( __trace_if_var( !!(cond , ## __VA_ARGS__) ) )
                              ~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler.h:58:86: note: expanded from macro '__trace_if_var'
   #define __trace_if_var(cond) (__builtin_constant_p(cond) ? (cond) : __trace_if_value(cond))
                                                                       ~~~~~~~~~~~~~~~~~^~~~~
   include/linux/compiler.h:69:3: note: expanded from macro '__trace_if_value'
           (cond) ?                                        \
            ^~~~
   3 warnings and 3 errors generated.
--
   In file included from drivers/scsi/hpsa.c:39:
   In file included from include/scsi/scsi_cmnd.h:13:
   In file included from include/scsi/scsi_request.h:5:
   include/linux/blk-mq.h:572:17: error: use of undeclared identifier 'BLK_MQ_NO_TAG'
           if (rq->tag != BLK_MQ_NO_TAG)
                          ^
   include/linux/blk-mq.h:572:17: error: use of undeclared identifier 'BLK_MQ_NO_TAG'
   include/linux/blk-mq.h:572:17: error: use of undeclared identifier 'BLK_MQ_NO_TAG'
>> drivers/scsi/hpsa.c:8713:32: warning: shift count >= width of type [-Wshift-count-overflow]
           rc = dma_set_mask(&pdev->dev, DMA_BIT_MASK(64));
                                         ^~~~~~~~~~~~~~~~
   include/linux/dma-mapping.h:139:54: note: expanded from macro 'DMA_BIT_MASK'
   #define DMA_BIT_MASK(n) (((n) == 64) ? ~0ULL : ((1ULL<<(n))-1))
                                                        ^ ~~~
   1 warning and 3 errors generated.
--
   In file included from drivers/scsi/3w-9xxx.c:97:
   In file included from include/scsi/scsi_host.h:11:
   include/linux/blk-mq.h:572:17: error: use of undeclared identifier 'BLK_MQ_NO_TAG'
           if (rq->tag != BLK_MQ_NO_TAG)
                          ^
   include/linux/blk-mq.h:572:17: error: use of undeclared identifier 'BLK_MQ_NO_TAG'
   include/linux/blk-mq.h:572:17: error: use of undeclared identifier 'BLK_MQ_NO_TAG'
>> drivers/scsi/3w-9xxx.c:2023:49: warning: shift count >= width of type [-Wshift-count-overflow]
           retval = dma_set_mask_and_coherent(&pdev->dev, DMA_BIT_MASK(64));
                                                          ^~~~~~~~~~~~~~~~
   include/linux/dma-mapping.h:139:54: note: expanded from macro 'DMA_BIT_MASK'
   #define DMA_BIT_MASK(n) (((n) == 64) ? ~0ULL : ((1ULL<<(n))-1))
                                                        ^ ~~~
   drivers/scsi/3w-9xxx.c:2245:49: warning: shift count >= width of type [-Wshift-count-overflow]
           retval = dma_set_mask_and_coherent(&pdev->dev, DMA_BIT_MASK(64));
                                                          ^~~~~~~~~~~~~~~~
   include/linux/dma-mapping.h:139:54: note: expanded from macro 'DMA_BIT_MASK'
   #define DMA_BIT_MASK(n) (((n) == 64) ? ~0ULL : ((1ULL<<(n))-1))
                                                        ^ ~~~
   2 warnings and 3 errors generated.
--
   In file included from drivers/scsi/arcmsr/arcmsr_hba.c:65:
   In file included from include/scsi/scsi_host.h:11:
   include/linux/blk-mq.h:572:17: error: use of undeclared identifier 'BLK_MQ_NO_TAG'
           if (rq->tag != BLK_MQ_NO_TAG)
                          ^
   include/linux/blk-mq.h:572:17: error: use of undeclared identifier 'BLK_MQ_NO_TAG'
   include/linux/blk-mq.h:572:17: error: use of undeclared identifier 'BLK_MQ_NO_TAG'
>> drivers/scsi/arcmsr/arcmsr_hba.c:930:34: warning: shift count >= width of type [-Wshift-count-overflow]
                       dma_set_mask(&pcidev->dev, DMA_BIT_MASK(64)))
                       ~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~
   include/linux/dma-mapping.h:139:54: note: expanded from macro 'DMA_BIT_MASK'
   #define DMA_BIT_MASK(n) (((n) == 64) ? ~0ULL : ((1ULL<<(n))-1))
                                                        ^
   include/linux/compiler.h:56:47: note: expanded from macro 'if'
   #define if(cond, ...) if ( __trace_if_var( !!(cond , ## __VA_ARGS__) ) )
                              ~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler.h:58:52: note: expanded from macro '__trace_if_var'
   #define __trace_if_var(cond) (__builtin_constant_p(cond) ? (cond) : __trace_if_value(cond))
                                                      ^~~~
>> drivers/scsi/arcmsr/arcmsr_hba.c:930:34: warning: shift count >= width of type [-Wshift-count-overflow]
                       dma_set_mask(&pcidev->dev, DMA_BIT_MASK(64)))
                       ~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~
   include/linux/dma-mapping.h:139:54: note: expanded from macro 'DMA_BIT_MASK'
   #define DMA_BIT_MASK(n) (((n) == 64) ? ~0ULL : ((1ULL<<(n))-1))
                                                        ^
   include/linux/compiler.h:56:47: note: expanded from macro 'if'
   #define if(cond, ...) if ( __trace_if_var( !!(cond , ## __VA_ARGS__) ) )
                              ~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler.h:58:61: note: expanded from macro '__trace_if_var'
   #define __trace_if_var(cond) (__builtin_constant_p(cond) ? (cond) : __trace_if_value(cond))
                                                               ^~~~
>> drivers/scsi/arcmsr/arcmsr_hba.c:930:34: warning: shift count >= width of type [-Wshift-count-overflow]
                       dma_set_mask(&pcidev->dev, DMA_BIT_MASK(64)))
                       ~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~
   include/linux/dma-mapping.h:139:54: note: expanded from macro 'DMA_BIT_MASK'
   #define DMA_BIT_MASK(n) (((n) == 64) ? ~0ULL : ((1ULL<<(n))-1))
                                                        ^
   include/linux/compiler.h:56:47: note: expanded from macro 'if'
   #define if(cond, ...) if ( __trace_if_var( !!(cond , ## __VA_ARGS__) ) )
                              ~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler.h:58:86: note: expanded from macro '__trace_if_var'
   #define __trace_if_var(cond) (__builtin_constant_p(cond) ? (cond) : __trace_if_value(cond))
                                                                       ~~~~~~~~~~~~~~~~~^~~~~
   include/linux/compiler.h:69:3: note: expanded from macro '__trace_if_value'
           (cond) ?                                        \
            ^~~~
   drivers/scsi/arcmsr/arcmsr_hba.c:932:43: warning: shift count >= width of type [-Wshift-count-overflow]
                   if (dma_set_coherent_mask(&pcidev->dev, DMA_BIT_MASK(64)) ||
                   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~
   include/linux/dma-mapping.h:139:54: note: expanded from macro 'DMA_BIT_MASK'
   #define DMA_BIT_MASK(n) (((n) == 64) ? ~0ULL : ((1ULL<<(n))-1))
                                                        ^
   include/linux/compiler.h:56:47: note: expanded from macro 'if'
   #define if(cond, ...) if ( __trace_if_var( !!(cond , ## __VA_ARGS__) ) )
                              ~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler.h:58:52: note: expanded from macro '__trace_if_var'
   #define __trace_if_var(cond) (__builtin_constant_p(cond) ? (cond) : __trace_if_value(cond))
                                                      ^~~~
   drivers/scsi/arcmsr/arcmsr_hba.c:933:47: warning: shift count >= width of type [-Wshift-count-overflow]
                       dma_set_mask_and_coherent(&pcidev->dev, DMA_BIT_MASK(64))) {
                       ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~
   include/linux/dma-mapping.h:139:54: note: expanded from macro 'DMA_BIT_MASK'
   #define DMA_BIT_MASK(n) (((n) == 64) ? ~0ULL : ((1ULL<<(n))-1))
                                                        ^
   include/linux/compiler.h:56:47: note: expanded from macro 'if'
   #define if(cond, ...) if ( __trace_if_var( !!(cond , ## __VA_ARGS__) ) )
                              ~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler.h:58:52: note: expanded from macro '__trace_if_var'
   #define __trace_if_var(cond) (__builtin_constant_p(cond) ? (cond) : __trace_if_value(cond))
                                                      ^~~~
   drivers/scsi/arcmsr/arcmsr_hba.c:932:43: warning: shift count >= width of type [-Wshift-count-overflow]
                   if (dma_set_coherent_mask(&pcidev->dev, DMA_BIT_MASK(64)) ||
                   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~
   include/linux/dma-mapping.h:139:54: note: expanded from macro 'DMA_BIT_MASK'
   #define DMA_BIT_MASK(n) (((n) == 64) ? ~0ULL : ((1ULL<<(n))-1))
                                                        ^
   include/linux/compiler.h:56:47: note: expanded from macro 'if'
   #define if(cond, ...) if ( __trace_if_var( !!(cond , ## __VA_ARGS__) ) )
                              ~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler.h:58:61: note: expanded from macro '__trace_if_var'
   #define __trace_if_var(cond) (__builtin_constant_p(cond) ? (cond) : __trace_if_value(cond))
                                                               ^~~~
   drivers/scsi/arcmsr/arcmsr_hba.c:933:47: warning: shift count >= width of type [-Wshift-count-overflow]
                       dma_set_mask_and_coherent(&pcidev->dev, DMA_BIT_MASK(64))) {
                       ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~
   include/linux/dma-mapping.h:139:54: note: expanded from macro 'DMA_BIT_MASK'
   #define DMA_BIT_MASK(n) (((n) == 64) ? ~0ULL : ((1ULL<<(n))-1))
                                                        ^
   include/linux/compiler.h:56:47: note: expanded from macro 'if'
   #define if(cond, ...) if ( __trace_if_var( !!(cond , ## __VA_ARGS__) ) )
                              ~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler.h:58:61: note: expanded from macro '__trace_if_var'
   #define __trace_if_var(cond) (__builtin_constant_p(cond) ? (cond) : __trace_if_value(cond))
                                                               ^~~~
   drivers/scsi/arcmsr/arcmsr_hba.c:932:43: warning: shift count >= width of type [-Wshift-count-overflow]
                   if (dma_set_coherent_mask(&pcidev->dev, DMA_BIT_MASK(64)) ||
                   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~
   include/linux/dma-mapping.h:139:54: note: expanded from macro 'DMA_BIT_MASK'
   #define DMA_BIT_MASK(n) (((n) == 64) ? ~0ULL : ((1ULL<<(n))-1))
                                                        ^
   include/linux/compiler.h:56:47: note: expanded from macro 'if'
   #define if(cond, ...) if ( __trace_if_var( !!(cond , ## __VA_ARGS__) ) )
                              ~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler.h:58:86: note: expanded from macro '__trace_if_var'
   #define __trace_if_var(cond) (__builtin_constant_p(cond) ? (cond) : __trace_if_value(cond))
                                                                       ~~~~~~~~~~~~~~~~~^~~~~
   include/linux/compiler.h:69:3: note: expanded from macro '__trace_if_value'
           (cond) ?                                        \
            ^~~~
   drivers/scsi/arcmsr/arcmsr_hba.c:933:47: warning: shift count >= width of type [-Wshift-count-overflow]
                       dma_set_mask_and_coherent(&pcidev->dev, DMA_BIT_MASK(64))) {
                       ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~
   include/linux/dma-mapping.h:139:54: note: expanded from macro 'DMA_BIT_MASK'
   #define DMA_BIT_MASK(n) (((n) == 64) ? ~0ULL : ((1ULL<<(n))-1))
                                                        ^
   include/linux/compiler.h:56:47: note: expanded from macro 'if'
   #define if(cond, ...) if ( __trace_if_var( !!(cond , ## __VA_ARGS__) ) )
                              ~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler.h:58:86: note: expanded from macro '__trace_if_var'
   #define __trace_if_var(cond) (__builtin_constant_p(cond) ? (cond) : __trace_if_value(cond))
                                                                       ~~~~~~~~~~~~~~~~~^~~~~
   include/linux/compiler.h:69:3: note: expanded from macro '__trace_if_value'
           (cond) ?                                        \
            ^~~~
   9 warnings and 3 errors generated.
--
   In file included from drivers/scsi/ufs/ufshcd.c:18:
   In file included from drivers/scsi/ufs/ufshcd.h:41:
   In file included from include/scsi/scsi_cmnd.h:13:
   In file included from include/scsi/scsi_request.h:5:
   include/linux/blk-mq.h:572:17: error: use of undeclared identifier 'BLK_MQ_NO_TAG'
           if (rq->tag != BLK_MQ_NO_TAG)
                          ^
   include/linux/blk-mq.h:572:17: error: use of undeclared identifier 'BLK_MQ_NO_TAG'
   include/linux/blk-mq.h:572:17: error: use of undeclared identifier 'BLK_MQ_NO_TAG'
   In file included from drivers/scsi/ufs/ufshcd.c:28:
   In file included from include/trace/events/ufs.h:313:
   In file included from include/trace/define_trace.h:102:
   In file included from include/trace/trace_events.h:21:
   In file included from include/linux/trace_events.h:6:
   In file included from include/linux/ring_buffer.h:7:
   include/linux/poll.h:142:27: warning: division by zero is undefined [-Wdivision-by-zero]
                   M(RDNORM) | M(RDBAND) | M(WRNORM) | M(WRBAND) |
                                           ^~~~~~~~~
   include/linux/poll.h:140:32: note: expanded from macro 'M'
   #define M(X) (__force __poll_t)__MAP(val, POLL##X, (__force __u16)EPOLL##X)
                                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/poll.h:126:51: note: expanded from macro '__MAP'
           (from < to ? (v & from) * (to/from) : (v & from) / (from/to))
                                                            ^ ~~~~~~~~~
   include/linux/poll.h:142:39: warning: division by zero is undefined [-Wdivision-by-zero]
                   M(RDNORM) | M(RDBAND) | M(WRNORM) | M(WRBAND) |
                                                       ^~~~~~~~~
   include/linux/poll.h:140:32: note: expanded from macro 'M'
   #define M(X) (__force __poll_t)__MAP(val, POLL##X, (__force __u16)EPOLL##X)
                                  ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/poll.h:126:51: note: expanded from macro '__MAP'
           (from < to ? (v & from) * (to/from) : (v & from) / (from/to))
                                                            ^ ~~~~~~~~~
>> drivers/scsi/ufs/ufshcd.c:8711:44: warning: shift count >= width of type [-Wshift-count-overflow]
                   if (!dma_set_mask_and_coherent(hba->dev, DMA_BIT_MASK(64)))
                   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~
   include/linux/dma-mapping.h:139:54: note: expanded from macro 'DMA_BIT_MASK'
   #define DMA_BIT_MASK(n) (((n) == 64) ? ~0ULL : ((1ULL<<(n))-1))
                                                        ^
   include/linux/compiler.h:56:47: note: expanded from macro 'if'
   #define if(cond, ...) if ( __trace_if_var( !!(cond , ## __VA_ARGS__) ) )
                              ~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler.h:58:52: note: expanded from macro '__trace_if_var'
   #define __trace_if_var(cond) (__builtin_constant_p(cond) ? (cond) : __trace_if_value(cond))
                                                      ^~~~
>> drivers/scsi/ufs/ufshcd.c:8711:44: warning: shift count >= width of type [-Wshift-count-overflow]
                   if (!dma_set_mask_and_coherent(hba->dev, DMA_BIT_MASK(64)))
                   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~
   include/linux/dma-mapping.h:139:54: note: expanded from macro 'DMA_BIT_MASK'
   #define DMA_BIT_MASK(n) (((n) == 64) ? ~0ULL : ((1ULL<<(n))-1))
                                                        ^
   include/linux/compiler.h:56:47: note: expanded from macro 'if'
   #define if(cond, ...) if ( __trace_if_var( !!(cond , ## __VA_ARGS__) ) )
                              ~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler.h:58:61: note: expanded from macro '__trace_if_var'
   #define __trace_if_var(cond) (__builtin_constant_p(cond) ? (cond) : __trace_if_value(cond))
                                                               ^~~~
>> drivers/scsi/ufs/ufshcd.c:8711:44: warning: shift count >= width of type [-Wshift-count-overflow]
                   if (!dma_set_mask_and_coherent(hba->dev, DMA_BIT_MASK(64)))
                   ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~
   include/linux/dma-mapping.h:139:54: note: expanded from macro 'DMA_BIT_MASK'
   #define DMA_BIT_MASK(n) (((n) == 64) ? ~0ULL : ((1ULL<<(n))-1))
                                                        ^
   include/linux/compiler.h:56:47: note: expanded from macro 'if'
   #define if(cond, ...) if ( __trace_if_var( !!(cond , ## __VA_ARGS__) ) )
                              ~~~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~~~~~~~~~~
   include/linux/compiler.h:58:86: note: expanded from macro '__trace_if_var'
   #define __trace_if_var(cond) (__builtin_constant_p(cond) ? (cond) : __trace_if_value(cond))
                                                                       ~~~~~~~~~~~~~~~~~^~~~~
   include/linux/compiler.h:69:3: note: expanded from macro '__trace_if_value'
           (cond) ?                                        \
            ^~~~
   5 warnings and 3 errors generated.
--
   In file included from drivers/block/skd_main.c:17:
   include/linux/blk-mq.h:572:17: error: use of undeclared identifier 'BLK_MQ_NO_TAG'
           if (rq->tag != BLK_MQ_NO_TAG)
                          ^
   include/linux/blk-mq.h:572:17: error: use of undeclared identifier 'BLK_MQ_NO_TAG'
   include/linux/blk-mq.h:572:17: error: use of undeclared identifier 'BLK_MQ_NO_TAG'
>> drivers/block/skd_main.c:3183:45: warning: shift count >= width of type [-Wshift-count-overflow]
           rc = dma_set_mask_and_coherent(&pdev->dev, DMA_BIT_MASK(64));
                                                      ^~~~~~~~~~~~~~~~
   include/linux/dma-mapping.h:139:54: note: expanded from macro 'DMA_BIT_MASK'
   #define DMA_BIT_MASK(n) (((n) == 64) ? ~0ULL : ((1ULL<<(n))-1))
                                                        ^ ~~~
   drivers/block/skd_main.c:3372:45: warning: shift count >= width of type [-Wshift-count-overflow]
           rc = dma_set_mask_and_coherent(&pdev->dev, DMA_BIT_MASK(64));
                                                      ^~~~~~~~~~~~~~~~
   include/linux/dma-mapping.h:139:54: note: expanded from macro 'DMA_BIT_MASK'
   #define DMA_BIT_MASK(n) (((n) == 64) ? ~0ULL : ((1ULL<<(n))-1))
                                                        ^ ~~~
   2 warnings and 3 errors generated.
..

# https://github.com/0day-ci/linux/commit/3f57d0952e89e23c6c5b65b816d3f0a9c9747583
git remote add linux-review https://github.com/0day-ci/linux
git fetch --no-tags linux-review Xianting-Tian/blk-mq-use-BLK_MQ_NO_TAG-for-no-tag/20200824-012255
git checkout 3f57d0952e89e23c6c5b65b816d3f0a9c9747583
vim +893 drivers/scsi/dpt_i2o.c

^1da177e4c3f41 Linus Torvalds         2005-04-16  864  
^1da177e4c3f41 Linus Torvalds         2005-04-16  865  	adpt_hba* pHba = NULL;
^1da177e4c3f41 Linus Torvalds         2005-04-16  866  	adpt_hba* p = NULL;
^1da177e4c3f41 Linus Torvalds         2005-04-16  867  	ulong base_addr0_phys = 0;
^1da177e4c3f41 Linus Torvalds         2005-04-16  868  	ulong base_addr1_phys = 0;
^1da177e4c3f41 Linus Torvalds         2005-04-16  869  	u32 hba_map0_area_size = 0;
^1da177e4c3f41 Linus Torvalds         2005-04-16  870  	u32 hba_map1_area_size = 0;
^1da177e4c3f41 Linus Torvalds         2005-04-16  871  	void __iomem *base_addr_virt = NULL;
^1da177e4c3f41 Linus Torvalds         2005-04-16  872  	void __iomem *msg_addr_virt = NULL;
62ac5aedc51485 Miquel van Smoorenburg 2008-05-02  873  	int dma64 = 0;
^1da177e4c3f41 Linus Torvalds         2005-04-16  874  
^1da177e4c3f41 Linus Torvalds         2005-04-16  875  	int raptorFlag = FALSE;
^1da177e4c3f41 Linus Torvalds         2005-04-16  876  
^1da177e4c3f41 Linus Torvalds         2005-04-16  877  	if(pci_enable_device(pDev)) {
^1da177e4c3f41 Linus Torvalds         2005-04-16  878  		return -EINVAL;
^1da177e4c3f41 Linus Torvalds         2005-04-16  879  	}
9638d89a75776a Salyzyn, Mark          2006-01-12  880  
9638d89a75776a Salyzyn, Mark          2006-01-12  881  	if (pci_request_regions(pDev, "dpt_i2o")) {
9638d89a75776a Salyzyn, Mark          2006-01-12  882  		PERROR("dpti: adpt_config_hba: pci request region failed\n");
9638d89a75776a Salyzyn, Mark          2006-01-12  883  		return -EINVAL;
9638d89a75776a Salyzyn, Mark          2006-01-12  884  	}
9638d89a75776a Salyzyn, Mark          2006-01-12  885  
^1da177e4c3f41 Linus Torvalds         2005-04-16  886  	pci_set_master(pDev);
62ac5aedc51485 Miquel van Smoorenburg 2008-05-02  887  
62ac5aedc51485 Miquel van Smoorenburg 2008-05-02  888  	/*
62ac5aedc51485 Miquel van Smoorenburg 2008-05-02  889  	 *	See if we should enable dma64 mode.
62ac5aedc51485 Miquel van Smoorenburg 2008-05-02  890  	 */
62ac5aedc51485 Miquel van Smoorenburg 2008-05-02  891  	if (sizeof(dma_addr_t) > 4 &&
c79cd9a24ef71c Christoph Hellwig      2018-10-18  892  	    dma_get_required_mask(&pDev->dev) > DMA_BIT_MASK(32) &&
c79cd9a24ef71c Christoph Hellwig      2018-10-18 @893  	    dma_set_mask(&pDev->dev, DMA_BIT_MASK(64)) == 0)
62ac5aedc51485 Miquel van Smoorenburg 2008-05-02  894  		dma64 = 1;
c79cd9a24ef71c Christoph Hellwig      2018-10-18  895  
c79cd9a24ef71c Christoph Hellwig      2018-10-18  896  	if (!dma64 && dma_set_mask(&pDev->dev, DMA_BIT_MASK(32)) != 0)
^1da177e4c3f41 Linus Torvalds         2005-04-16  897  		return -EINVAL;
^1da177e4c3f41 Linus Torvalds         2005-04-16  898  
67af2b060e027c Miquel van Smoorenburg 2008-05-02  899  	/* adapter only supports message blocks below 4GB */
c79cd9a24ef71c Christoph Hellwig      2018-10-18  900  	dma_set_coherent_mask(&pDev->dev, DMA_BIT_MASK(32));
67af2b060e027c Miquel van Smoorenburg 2008-05-02  901  
^1da177e4c3f41 Linus Torvalds         2005-04-16  902  	base_addr0_phys = pci_resource_start(pDev,0);
^1da177e4c3f41 Linus Torvalds         2005-04-16  903  	hba_map0_area_size = pci_resource_len(pDev,0);
^1da177e4c3f41 Linus Torvalds         2005-04-16  904  
^1da177e4c3f41 Linus Torvalds         2005-04-16  905  	// Check if standard PCI card or single BAR Raptor
^1da177e4c3f41 Linus Torvalds         2005-04-16  906  	if(pDev->device == PCI_DPT_DEVICE_ID){
^1da177e4c3f41 Linus Torvalds         2005-04-16  907  		if(pDev->subsystem_device >=0xc032 && pDev->subsystem_device <= 0xc03b){
^1da177e4c3f41 Linus Torvalds         2005-04-16  908  			// Raptor card with this device id needs 4M
^1da177e4c3f41 Linus Torvalds         2005-04-16  909  			hba_map0_area_size = 0x400000;
^1da177e4c3f41 Linus Torvalds         2005-04-16  910  		} else { // Not Raptor - it is a PCI card
^1da177e4c3f41 Linus Torvalds         2005-04-16  911  			if(hba_map0_area_size > 0x100000 ){ 
^1da177e4c3f41 Linus Torvalds         2005-04-16  912  				hba_map0_area_size = 0x100000;
^1da177e4c3f41 Linus Torvalds         2005-04-16  913  			}
^1da177e4c3f41 Linus Torvalds         2005-04-16  914  		}
^1da177e4c3f41 Linus Torvalds         2005-04-16  915  	} else {// Raptor split BAR config
^1da177e4c3f41 Linus Torvalds         2005-04-16  916  		// Use BAR1 in this configuration
^1da177e4c3f41 Linus Torvalds         2005-04-16  917  		base_addr1_phys = pci_resource_start(pDev,1);
^1da177e4c3f41 Linus Torvalds         2005-04-16  918  		hba_map1_area_size = pci_resource_len(pDev,1);
^1da177e4c3f41 Linus Torvalds         2005-04-16  919  		raptorFlag = TRUE;
^1da177e4c3f41 Linus Torvalds         2005-04-16  920  	}
^1da177e4c3f41 Linus Torvalds         2005-04-16  921  

---
0-DAY CI Kernel Test Service, Intel Corporation
https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202008240800.8PxefkXY%25lkp%40intel.com.

--bp/iNruPH9dso1Pn
Content-Type: application/gzip
Content-Disposition: attachment; filename=".config.gz"
Content-Transfer-Encoding: base64

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

--bp/iNruPH9dso1Pn--
