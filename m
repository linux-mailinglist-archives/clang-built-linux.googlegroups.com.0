Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBTFIQDWAKGQESUAMB3I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13b.google.com (mail-lf1-x13b.google.com [IPv6:2a00:1450:4864:20::13b])
	by mail.lfdr.de (Postfix) with ESMTPS id 065CEB445E
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Sep 2019 01:01:33 +0200 (CEST)
Received: by mail-lf1-x13b.google.com with SMTP id a14sf382080lfk.18
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Sep 2019 16:01:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568674892; cv=pass;
        d=google.com; s=arc-20160816;
        b=cKlo60bn5U9JGwiQO1UTNue17c2jwUM62xRVNMvX55sF1Xr1ILf6IlATZh3Ny0FSVQ
         oTMfKtDP1xE95FmXMQ3p0tKHHFPwl7uuy6w2C4BUbewbRrISPs4gMKjN3D41qTKcZ2t/
         iOocrilJGLA+yk/C9ncQcGtFd839SdFwTsP7HXX6MxudcCg3SFGQ7NV/omyj156FjALA
         y/gEFDzbY01fcSAG2JdYFqcDQ+VZ6P0XcuN//CEF+8/yWMqaNAZP8remHcfHGsuHORX8
         d0ozRrxzSlK3uF4J9yk2gp28379LfU4/57Dd3ZSFrS2nuHOmF96wsCHX3yH8sDGyFLGR
         lNSg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=NIPQz7QuVeujXd9i2SZLcHxSZRFTvYzP3Z4PIJcRZz8=;
        b=vr0q9Lo0LdO0eepMWrtB595Zncs83d4U5FG2U/MdmLCmLYxPoSt6UjeJ7gbChxnVpp
         TXLk8gJLJFOAQ+P/0PiMqS1FXTwbJ5hsBRwrKqdBqkyx1L8h+h9fmzIrm0JYCqvOH9Kf
         ZIkiW1qR5z6oNl020RoW7TTePiJuemYjvaeC2OkP+tcSacCCf/0VZmDi10kEUDWZJlBc
         tJXpUdNDVP2uzgR4lAXkZqEeUjKHAQc402fmY5mEETq6/nc48rNQxqvgBZMHaW6PayDe
         lE4bOSV9SjpXWn7aYYr1caVaHPAM1Pl2/6bjR8r+iAh5166VO8rD0wmVFr5fRVDUsGR9
         8bjA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=b84WUCiG;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=NIPQz7QuVeujXd9i2SZLcHxSZRFTvYzP3Z4PIJcRZz8=;
        b=AZ06WjsAzIyS/Lz0mYoAA1eUJ3WlDwmHpGT1JBtcq+857P9c9HuGzwH7DhTE0G/kVC
         wltC76FI+cTpDpqx84N5f81mhN1qQBjLkLGesKmHgNIFUnyKjjjhlr1NjvE1QCZA3EB2
         Djkn1F5CB1FFod9ovyfUjeQ31U9nF3raySrQKMWSQGhwn2x73fTsP2yzwhU+KYuQ1W7O
         9UVxXTnTtZJc+R9Enzf4sKhjSzoTNlRKZgIkqMoqSEljuw+Q6zfVKXhBiGv3WSz4I0mq
         EDLZj+42lzeLhR25KXcSRpg0oapXLwB3auP0Qy6YbXJUcqgvf3mTzLgESFdLEj9oYejW
         GBEw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=NIPQz7QuVeujXd9i2SZLcHxSZRFTvYzP3Z4PIJcRZz8=;
        b=fpkRBNS6l3awlhaMeLi6q8GbluwRM6dpcWrUM+z9YkuIrkYdZaNbq7zPDlN6z+AUca
         9vwMY/xUfTrMhBHjeb8py37oa727CuQakZVJK6u7N2IF45GSbqgQqDZxs6SX8rnWkI06
         j5DIemdNgOQpxQ0IVDBa/5ro7eu7OcE2mHKyIZlA9CZ+eAd2bUTC1VR2fSCffORecIE5
         rxMOwPklwgxPvFcTev6rX7FfH9buMdqhZ5zNR2Xz98WRAuBSrQeGv524Lt1BPGUFFpd5
         pR7A0El70KvcSH+kc8rZTwrv4Zh/H9OWIc40lDexmqk67CEFD5cVs5NJOZdZIQK+BquQ
         78Ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=NIPQz7QuVeujXd9i2SZLcHxSZRFTvYzP3Z4PIJcRZz8=;
        b=sNpAYGlQ71wI/bagt+LJ+FvvVrl9jWPYxI/44UvzT8LB6j+pj7aqK6h0b+C4RMW9dx
         KWRaFTIPsHlcpN/VeewyGv5SYi007Dd5Btzu5zG0v9xmkdxVXik3wYKazSkGAvpGR93L
         D6zmzmouYeRGZJGYulwYDa9LsBZbe6ghtvkLbyNN0TuBgCPXLArrW4LnFD2rz1jDAIH5
         PN48/g7Ak0vNgQcDEiGvyx45gid93sIAWAL3vQqml8BVVgA42zVadGYPtRUMKdSacFjG
         AZc3sAnowBVV6M6W0zVc5jPSitJMFJa7sostgq57tS+ZacWahgosaxFMUQlb71xSlrKm
         huFw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVHNZtkjtt8gcJBqdlZJkzJhVqFwHiSyWeVWtmcviHLs6Uiff29
	XfTfC2jrX4QyfLFYcvdur3k=
X-Google-Smtp-Source: APXvYqyRO/+d/CSkKTiXndXbCQCmQg9npCppImO0npnW7GL6lXmjNBQl7MH7syZHHMqM2BVdvaT30g==
X-Received: by 2002:ac2:59c2:: with SMTP id x2mr265645lfn.125.1568674892595;
        Mon, 16 Sep 2019 16:01:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac2:51de:: with SMTP id u30ls108622lfm.14.gmail; Mon, 16 Sep
 2019 16:01:32 -0700 (PDT)
X-Received: by 2002:ac2:554e:: with SMTP id l14mr367211lfk.32.1568674892163;
        Mon, 16 Sep 2019 16:01:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568674892; cv=none;
        d=google.com; s=arc-20160816;
        b=zArPytVwHR20P2a6ojNmGSLs5//lYc/phV7ts94IH5vEWeRi24k8uLNoBFL/hoMdoj
         aark9frZKzuajcoWDnONBZDFe6wzmurP2uXLhvcfYurTlrI0qk/tMwYtYaM+3QMH5XyT
         dFAt5lb0mIfoZlfl+VpdP2T/RoRyxwV10WfjQGHatjPYs4GGT+GqdnTr34EXk1QZ+lcv
         VJR8kOp73+TBFnQyuN2TYW3VxDttuV7stk8NB4Y2ne3v8FNFvr5pt1iZpCbR64BzLkaK
         KeKB1MB1wVg+Mc1i+tDvyWXN8b7C8bBqE9KU+A8TvU4dA6SBRw0Ycl6MbGUMtZdqq08q
         s3sA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=cG5ZA/xfGA/si5RuD4insbMma12M7WL5RnzxNofgFRE=;
        b=oB4UniX2eFeavj5YhMMaLI9DQlbP4AgvjeEsePYqgJFt+gAP5DuWCVlxKc8k8z+iG2
         c6bZ7Z11XmCjC3HCbnQswoNSbGLMuZ76v+XYggKW5KuHs+Jy/BysTJx6WLjaqB69/LQX
         C7cclxPyFPefyQBp07XKVyssDCyDVJ+WRXpIDMuWBIhVsDGtnaAhEGP81VMTiT056aVZ
         +GiWJRDWamzg4vAiUcI5mmQ677ATMh6PcGebApRgrZM74TUHqY9+LUJjmxXYwxdRu0k5
         3ZqrvQ4JC2bz4oM7p15gfYm3KuX2uYJ06miZPrZmVqfcQ9fsCGtoibLzy93M+cZ0NaBk
         Ps/A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=b84WUCiG;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com. [2a00:1450:4864:20::342])
        by gmr-mx.google.com with ESMTPS id h6si184394lfc.3.2019.09.16.16.01.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 16 Sep 2019 16:01:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) client-ip=2a00:1450:4864:20::342;
Received: by mail-wm1-x342.google.com with SMTP id b24so926228wmj.5
        for <clang-built-linux@googlegroups.com>; Mon, 16 Sep 2019 16:01:32 -0700 (PDT)
X-Received: by 2002:a7b:cc08:: with SMTP id f8mr955331wmh.12.1568674891357;
        Mon, 16 Sep 2019 16:01:31 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id c74sm406576wme.46.2019.09.16.16.01.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Sep 2019 16:01:30 -0700 (PDT)
Date: Mon, 16 Sep 2019 16:01:29 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Max Gurtovoy <maxg@mellanox.com>, Jens Axboe <axboe@kernel.dk>
Cc: kbuild@01.org, Nick Desaulniers <ndesaulniers@google.com>,
	clang-built-linux@googlegroups.com,
	kbuild test robot <lkp@intel.com>
Subject: Re: [block:for-next 249/251] block/t10-pi.c:62:11: warning:
 enumeration value 'T10_PI_TYPE0_PROTECTION' not handled in switch
Message-ID: <20190916230129.GA442@archlinux-threadripper>
References: <201909170619.96Ee4t8P%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <201909170619.96Ee4t8P%lkp@intel.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=b84WUCiG;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Tue, Sep 17, 2019 at 06:44:21AM +0800, kbuild test robot wrote:
> CC: kbuild-all@01.org
> TO: Max Gurtovoy <maxg@mellanox.com>
> CC: Jens Axboe <axboe@kernel.dk>
> CC: Christoph Hellwig <hch@lst.de>
> CC: "Martin K. Petersen" <martin.petersen@oracle.com>
> 
> tree:   https://kernel.googlesource.com/pub/scm/linux/kernel/git/axboe/linux-block.git for-next
> head:   6e5f4c097e0fecf64ced408e60c5d8f5a9d9e8f9
> commit: 9b2061b1a262acda71b660ffdcb4b36537e387b3 [249/251] block: use symbolic constants for t10_pi type
> config: arm64-defconfig (attached as .config)
> compiler: clang version 10.0.0 (git://gitmirror/llvm_project 45a3fd206fb06f77a08968c99a8172cbf2ccdd0f)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         git checkout 9b2061b1a262acda71b660ffdcb4b36537e387b3
>         # save the attached .config to linux build tree
>         make.cross ARCH=arm64 
> 
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
> >> block/t10-pi.c:62:11: warning: enumeration value 'T10_PI_TYPE0_PROTECTION' not handled in switch [-Wswitch]
>                    switch (type) {
>                            ^
>    1 warning generated.
> 
> vim +/T10_PI_TYPE0_PROTECTION +62 block/t10-pi.c
> 
> 2341c2f8c33196 Martin K. Petersen 2014-09-26   52  
> 4e4cbee93d5613 Christoph Hellwig  2017-06-03   53  static blk_status_t t10_pi_verify(struct blk_integrity_iter *iter,
> 9b2061b1a262ac Max Gurtovoy       2019-09-16   54  		csum_fn *fn, enum t10_dif_type type)
> 2341c2f8c33196 Martin K. Petersen 2014-09-26   55  {
> 2341c2f8c33196 Martin K. Petersen 2014-09-26   56  	unsigned int i;
> 2341c2f8c33196 Martin K. Petersen 2014-09-26   57  
> 2341c2f8c33196 Martin K. Petersen 2014-09-26   58  	for (i = 0 ; i < iter->data_size ; i += iter->interval) {
> 2341c2f8c33196 Martin K. Petersen 2014-09-26   59  		struct t10_pi_tuple *pi = iter->prot_buf;
> 2341c2f8c33196 Martin K. Petersen 2014-09-26   60  		__be16 csum;
> 2341c2f8c33196 Martin K. Petersen 2014-09-26   61  
> 2341c2f8c33196 Martin K. Petersen 2014-09-26  @62  		switch (type) {
> 9b2061b1a262ac Max Gurtovoy       2019-09-16   63  		case T10_PI_TYPE1_PROTECTION:
> 9b2061b1a262ac Max Gurtovoy       2019-09-16   64  		case T10_PI_TYPE2_PROTECTION:
> 128b6f9fdd9ace Dmitry Monakhov    2017-06-29   65  			if (pi->app_tag == T10_PI_APP_ESCAPE)
> 2341c2f8c33196 Martin K. Petersen 2014-09-26   66  				goto next;
> 2341c2f8c33196 Martin K. Petersen 2014-09-26   67  
> 2341c2f8c33196 Martin K. Petersen 2014-09-26   68  			if (be32_to_cpu(pi->ref_tag) !=
> 2341c2f8c33196 Martin K. Petersen 2014-09-26   69  			    lower_32_bits(iter->seed)) {
> 2341c2f8c33196 Martin K. Petersen 2014-09-26   70  				pr_err("%s: ref tag error at location %llu " \
> 2341c2f8c33196 Martin K. Petersen 2014-09-26   71  				       "(rcvd %u)\n", iter->disk_name,
> 2341c2f8c33196 Martin K. Petersen 2014-09-26   72  				       (unsigned long long)
> 2341c2f8c33196 Martin K. Petersen 2014-09-26   73  				       iter->seed, be32_to_cpu(pi->ref_tag));
> a462b950834945 Bart Van Assche    2017-06-13   74  				return BLK_STS_PROTECTION;
> 2341c2f8c33196 Martin K. Petersen 2014-09-26   75  			}
> 2341c2f8c33196 Martin K. Petersen 2014-09-26   76  			break;
> 9b2061b1a262ac Max Gurtovoy       2019-09-16   77  		case T10_PI_TYPE3_PROTECTION:
> 128b6f9fdd9ace Dmitry Monakhov    2017-06-29   78  			if (pi->app_tag == T10_PI_APP_ESCAPE &&
> 128b6f9fdd9ace Dmitry Monakhov    2017-06-29   79  			    pi->ref_tag == T10_PI_REF_ESCAPE)
> 2341c2f8c33196 Martin K. Petersen 2014-09-26   80  				goto next;
> 2341c2f8c33196 Martin K. Petersen 2014-09-26   81  			break;
> 2341c2f8c33196 Martin K. Petersen 2014-09-26   82  		}
> 2341c2f8c33196 Martin K. Petersen 2014-09-26   83  
> 2341c2f8c33196 Martin K. Petersen 2014-09-26   84  		csum = fn(iter->data_buf, iter->interval);
> 2341c2f8c33196 Martin K. Petersen 2014-09-26   85  
> 2341c2f8c33196 Martin K. Petersen 2014-09-26   86  		if (pi->guard_tag != csum) {
> 2341c2f8c33196 Martin K. Petersen 2014-09-26   87  			pr_err("%s: guard tag error at sector %llu " \
> 2341c2f8c33196 Martin K. Petersen 2014-09-26   88  			       "(rcvd %04x, want %04x)\n", iter->disk_name,
> 2341c2f8c33196 Martin K. Petersen 2014-09-26   89  			       (unsigned long long)iter->seed,
> 2341c2f8c33196 Martin K. Petersen 2014-09-26   90  			       be16_to_cpu(pi->guard_tag), be16_to_cpu(csum));
> 4e4cbee93d5613 Christoph Hellwig  2017-06-03   91  			return BLK_STS_PROTECTION;
> 2341c2f8c33196 Martin K. Petersen 2014-09-26   92  		}
> 2341c2f8c33196 Martin K. Petersen 2014-09-26   93  
> 2341c2f8c33196 Martin K. Petersen 2014-09-26   94  next:
> 2341c2f8c33196 Martin K. Petersen 2014-09-26   95  		iter->data_buf += iter->interval;
> 2341c2f8c33196 Martin K. Petersen 2014-09-26   96  		iter->prot_buf += sizeof(struct t10_pi_tuple);
> 2341c2f8c33196 Martin K. Petersen 2014-09-26   97  		iter->seed++;
> 2341c2f8c33196 Martin K. Petersen 2014-09-26   98  	}
> 2341c2f8c33196 Martin K. Petersen 2014-09-26   99  
> 4e4cbee93d5613 Christoph Hellwig  2017-06-03  100  	return BLK_STS_OK;
> 2341c2f8c33196 Martin K. Petersen 2014-09-26  101  }
> 2341c2f8c33196 Martin K. Petersen 2014-09-26  102  
> 
> :::::: The code at line 62 was first introduced by commit
> :::::: 2341c2f8c33196d02cf5a721746eea4e3c06674a block: Add T10 Protection Information functions
> 
> :::::: TO: Martin K. Petersen <martin.petersen@oracle.com>
> :::::: CC: Jens Axboe <axboe@fb.com>
> 
> ---
> 0-DAY kernel test infrastructure                Open Source Technology Center
> https://lists.01.org/pipermail/kbuild-all                   Intel Corporation
> 

Hi all,

The 0day team has been doing clang builds for us and this one just
cropped up.

While this code doesn't appear to care about T10_PI_TYPE0_PROTECTION,
it also doesn't care about T10_PI_TYPE2_PROTECTION and that is also
checked. How should this value be handled?

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190916230129.GA442%40archlinux-threadripper.
