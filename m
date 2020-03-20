Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB4OQ2PZQKGQEKIDF3TA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x437.google.com (mail-pf1-x437.google.com [IPv6:2607:f8b0:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E31F18D369
	for <lists+clang-built-linux@lfdr.de>; Fri, 20 Mar 2020 16:59:47 +0100 (CET)
Received: by mail-pf1-x437.google.com with SMTP id 20sf4744599pfw.10
        for <lists+clang-built-linux@lfdr.de>; Fri, 20 Mar 2020 08:59:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1584719986; cv=pass;
        d=google.com; s=arc-20160816;
        b=kupm+W3nn3umRlYqiJTftxFMY7YZCuWtJRxSv1XK4YzKtyhCP9jPehFBcGKf5xw8oI
         P6w3Xc4iGDFn7AZ5z95Kwxz1wjaGmH3DMmp44iJj8v+/8rYZPe6v9et15f/jNddxmoAy
         m/+EiYCyEo1oxzu5mAn+B/yXS5Gg/13JZ5aefhRlSQ85OayLh0qYe11t0x/m8LQ0JfrS
         eXIm8AGsSiX69TCtcyeccED+Eg5d6v3ykLyTVlPdwnGOkL4LsL+iw1DzpI7DBVUjBCWw
         LSzIPaNvxMzhJ3KPkSv8Ne+291DtDrZrZnple+AbiHAjIwZJ1r0P2dklB08EcNnqRNKw
         P2vQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature:dkim-signature;
        bh=eO2dty5Zy/xc+l6tEWz0NFULbzwnfdRddmJmhihkY3k=;
        b=qiLsQU5ctzFcfwcuIz56zULX5vS7f7iHwS20RLQ8WlkfhfRrN37zRBwPZMgBPdVYEh
         gO3IdCJjfJldGISbs9EHdAwhh4oAoUqgsZ55ZAuFFKxCL2+HeNXtYqJjDELiFtSHjqs+
         zyB/293GdayzkIbnYopJsJS5ycXDPMiffUFIEDipK8eVjvSNrnehbxl9DVYuxRlYG5cF
         DIrV3DfhW9fCgPS4VdbKbG8oa9c9AsXNsP/gq4GVBsU26NTPKfzrgG2+7xX/Ybl0f6vd
         0D2areJcE0766RO4lRObkN9DJO5aP7G0sIaRmtf+Pu+BSGJCkhi05PefCkUXOctg6mln
         sJpw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QcwHOxhu;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=eO2dty5Zy/xc+l6tEWz0NFULbzwnfdRddmJmhihkY3k=;
        b=kQveYi4r/nEFC1NepdyDUhU/Hh5H4QlL4VQhaVy7kHM8tTHj0LNcbNI538DMT4zBUw
         aBukfQgSYHalPGBKBe1hlLaionjhVUUqh699LbDGU/Q5itvlLrUGmgVe2O4peRSdU5RX
         orqNqGUKkuiwc2sY5+nP4WXgBTBpx96nCF9TUk2Zh0lYo6dW53MDEYtcOY+b4bS2EYAy
         Wp1u2vEUh/Dp/Ws6/Of40lrmNkbYjOGGo5QFhnE0pYeT3XRnNng+z9KQuokRaZFg0gid
         pDbJo/9G8+ix/dCRcIstAvw70g1NKUOPtv1gw+cE2UFUhnJBcn2K2O6AyWHrF7fxbatj
         JXpA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=eO2dty5Zy/xc+l6tEWz0NFULbzwnfdRddmJmhihkY3k=;
        b=G+IBHT+LUnqlJQcag6U6MyYWCJYWgqxQJxHf32pAacXvSgoAQREJH1g7odWNgtCdUj
         n9OhYufNZrBmQdqxNGV9roJ1xCVCLpKcvneM0Emsts3appvWokHk7GltAdWqLFNz50EO
         ajtYCF+foyxbhaopl5TQYWzpzgLFMZfbKBnGDWSMrBDIa5xuo1eH2y1EtdPSKvkhwjfO
         y9ENbkSJYkET54y4KDPDKA435+kEosew2BL2BF/o8RyE0MALNNjety9HHCTbN67JjrxN
         7lvJgOzmpyQKw9L+9LsBtMgg8i2QUMDMjC9tj4Q+qCA1bsArrls3g10ue66WuMYD4sGS
         7F6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=eO2dty5Zy/xc+l6tEWz0NFULbzwnfdRddmJmhihkY3k=;
        b=bHVWv2XrrhQzReah5ZbFGWFkXy1Cb0SD684F7WDidMiGEIy8aFYsTbLmqFRYqDstRG
         blDCbmsQ8FaJ3YbVZoewlSCDI/42B0Kh4O7/KC/IEmQdLMRrCXMELrloF7jagWA/DNOO
         gH9vXIOb3NarOWw5c1J+MEPef1Z/s0IrcftBOxN9GdfiUt7MhNC99JneF+C6oKlD1f27
         ngrBVdBgAhnNWklP4OimwZD65/1ae9on4BO8Pd0udR3++bBApxrDG4FEe8g4Gi5MwEnW
         zETEh4ge4t9jeXq6T67X76Y6pdCF9MAnt4XtA4Fhy35DEBgOnv+erfiZEBxgbH2UEhQA
         +a5A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ1zQZYqz9xFXmDZt8y1KlVy/oInECPAvbFeSwtPO5WDJH1RF+0c
	CrwhnfDWtEOlfnR+TS5xxdg=
X-Google-Smtp-Source: ADFU+vvt+7mfDeaHtW9o/LwS++bLNMhxN72uA8eylsBthWdpVXf20VT651hjBztFmKTZGuI1+JhSaQ==
X-Received: by 2002:aa7:9698:: with SMTP id f24mr10093571pfk.94.1584719985098;
        Fri, 20 Mar 2020 08:59:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:bd4b:: with SMTP id b11ls3410666plx.4.gmail; Fri, 20
 Mar 2020 08:59:44 -0700 (PDT)
X-Received: by 2002:a17:90a:ead6:: with SMTP id ev22mr10691383pjb.66.1584719984614;
        Fri, 20 Mar 2020 08:59:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584719984; cv=none;
        d=google.com; s=arc-20160816;
        b=DE4kwL/8cBsUii/Q3P2vrs13DWK8zz7783qOJORIxdPiQj8NcrDw06Ibzy9FG57fn7
         HsE5TE9WnF/q96RnpuVVB3IIlA/vgcyyGU/3T56Kec9mSs/kLiWIJDd/4d8xSzEI5MDA
         slnfSGebDI4yVayTa5gpH+nWjeyhDyS2zDLa4wYc4UbGhLY3iG134PqXorEqZhbrXOa0
         7wvXZs7Pz9WO5ArwU8Hx6ByljTd+xRYu/1b376comi1p7xagUvzjo+2f2PdQVHMJA0n3
         J0qhWeii+lS3Yyqh0SpMuB7aB3wOfxt7VoYdhTNYwp/ZuQDitQ+/1e3FbAZG4Oy1w84C
         wT6w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=9twzbzqHSdWJX8QqBwg4lcffn2EhpBprr4IVh4zfK/g=;
        b=LmbXulJf1j5umHTplCOz/juGe3ZqHC5yqMITlFLPsNaDIgWzfbGW4PGwdAKOfqLh8p
         F38ViFFt/SD28oyV0tFEVrS40dhrkaVkxBcvIKn01tXRfIOnYa1GHh6S5cfT00HmXn88
         mwW3z4eddmyPai/C18kNITeUBKonEbF8kmvlisyRsp9iJ/pNIqPQXgSoYZN4DvuWAoL+
         T3SpXXC5tswzRBsxiNsfB136bQffD3JJcpEqnWjpFyxVIq6vQNrb6W9xAYw07kO1FmLA
         koA6QxguSdo2JVicjA3/JHiDtf9jjWe+TIUB7EoNgvYGM0kfKb4uiJNv0nhRaNyJ06iL
         4U4Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QcwHOxhu;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-ot1-x344.google.com (mail-ot1-x344.google.com. [2607:f8b0:4864:20::344])
        by gmr-mx.google.com with ESMTPS id h10si346555pju.1.2020.03.20.08.59.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Mar 2020 08:59:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2607:f8b0:4864:20::344 as permitted sender) client-ip=2607:f8b0:4864:20::344;
Received: by mail-ot1-x344.google.com with SMTP id e9so6395103otr.12
        for <clang-built-linux@googlegroups.com>; Fri, 20 Mar 2020 08:59:43 -0700 (PDT)
X-Received: by 2002:a9d:6c4f:: with SMTP id g15mr7328711otq.76.1584719982765;
        Fri, 20 Mar 2020 08:59:42 -0700 (PDT)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
        by smtp.gmail.com with ESMTPSA id j23sm2092177oib.32.2020.03.20.08.59.41
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 20 Mar 2020 08:59:41 -0700 (PDT)
Date: Fri, 20 Mar 2020 08:59:40 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: kbuild test robot <lkp@intel.com>
Cc: Dirk Mueller <dmueller@suse.com>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com, Rob Herring <robh@kernel.org>,
	David Gibson <david@gibson.dropbear.id.au>
Subject: Re: [linux-next:pending-fixes 122/295] arch/x86/kernel/tsc.o:
 warning: objtool: tsc_setup()+0x3c: can't find call dest symbol at
 .text+0x1c1
Message-ID: <20200320155940.GA53052@ubuntu-m2-xlarge-x86>
References: <202003201813.FXjxGFWw%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202003201813.FXjxGFWw%lkp@intel.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=QcwHOxhu;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2607:f8b0:4864:20::344 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
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

On Fri, Mar 20, 2020 at 06:25:16PM +0800, kbuild test robot wrote:
> Hi Dirk,
> 
> First bad commit (maybe != root cause):
> 
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git pending-fixes
> head:   996cfaad8d71b254a245cfbb6f04852fb68fa85e
> commit: 35595372d95c0d10784bce1aec8cc144a39eb66d [122/295] Remove redundant YYLOC global declaration
> config: x86_64-randconfig-c002-20200320 (attached as .config)
> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 6e0aaafbc782bdd2852a48c87a3f6cc8fa667bee)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         git checkout 35595372d95c0d10784bce1aec8cc144a39eb66d
>         # save the attached .config to linux build tree
>         COMPILER=clang make.cross ARCH=x86_64 
> 
> If you fix the issue, kindly add following tag
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
> >> arch/x86/kernel/tsc.o: warning: objtool: tsc_setup()+0x3c: can't find call dest symbol at .text+0x1c1
> --
> >> kernel/printk/printk.o: warning: objtool: ignore_loglevel_setup()+0x14: can't find call dest symbol at .text+0xf53
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> 

Hi all,

Ignore these warnings, these should be fixed in -next with
https://lore.kernel.org/lkml/0a7ee320bc0ea4469bd3dc450a7b4725669e0ea9.1581997059.git.jpoimboe@redhat.com/.

Not to mention that this commit is only revealing them because it fixes
a build error due to -fno-common.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200320155940.GA53052%40ubuntu-m2-xlarge-x86.
