Return-Path: <clang-built-linux+bncBDNYNPOAQ4GBB6ECRX2QKGQEVROO3HQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x440.google.com (mail-wr1-x440.google.com [IPv6:2a00:1450:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id C5F3A1B7F34
	for <lists+clang-built-linux@lfdr.de>; Fri, 24 Apr 2020 21:43:52 +0200 (CEST)
Received: by mail-wr1-x440.google.com with SMTP id f4sf3889821wrp.14
        for <lists+clang-built-linux@lfdr.de>; Fri, 24 Apr 2020 12:43:52 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587757432; cv=pass;
        d=google.com; s=arc-20160816;
        b=VwCcgk2Lfl2Wghkq5keBBu31r/tJttnUytAxo4SwIp9u4vj17YxoJcwe2TWIqoLUIT
         HmSylrY0lF9bpkd8Ah2hk0asfDf2th3lVx2h+c3TO72YgwgwQlr4sB0nUJuqKoYPuBHe
         mw5fqm+EYWFrjR63ckp0KGNCRn8JPrUCN/mXtH3pdfQ/d2aYx/KaS0mv+J0n2RdcMkr1
         b3D/axm8EOgjR+RWsiwxRBpYeBPF39GC82NJum4C6M6BH7dbPYlr6q8gHsjzZ4LLc9BP
         Y1Huqkp8aWBPiJzXyMbk/e6RxpBWgp+eKfpDYQz48UUl6cT1lfM9piQXrujGBmRMYd/G
         g/zw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:subject:autocrypt:from
         :references:cc:to:sender:dkim-signature;
        bh=AjiQvLkkY9e4btZJCJAUQOJ4kpLfYI6f2kF4Ga8h8ac=;
        b=v8z3Dkt6MrtldPYCZbGNLyjNwvhOxFu0rFmTjHO+cxBOpEbKu/bHw7zbYZvWL2/kFW
         jy4ir+3icvv2MzN3dA6qOur3qruCdvHS9QRQoq7E7VuwkB1+Pk4cm5Kw9wbaK6NggdHE
         +SO4GtcHpG9u2RRJefv8GeWf1CMIn9cCwP74B1eyKoVXZi24F2e1evuNa8B7tYS4NFcr
         btGuBuk5uwYD3IfPwMesQWg5Q8YC3GjmoO6KS+SttDAcj2Cg36nhpa2ohduzFHe//rJb
         UyR0xlENSthi8ETOdg2vXl46Qv1MtTNTQp19n/fIIuUtJ9FD3U9Vppo6p5+lRWQNGL3O
         P01A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@embeddedor.com header.s=default header.b=dbTkngbm;
       spf=pass (google.com: domain of gustavo@embeddedor.com designates 192.185.46.107 as permitted sender) smtp.mailfrom=gustavo@embeddedor.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:to:cc:references:from:autocrypt:subject:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AjiQvLkkY9e4btZJCJAUQOJ4kpLfYI6f2kF4Ga8h8ac=;
        b=XfQtIVnoCxR0vy+xh114EHoZv9jfxxhQP5kOcBj3VAkMkaYSWvvsLxJQUG2a+wpC9u
         UadEkFwFc/DQv2DUYafjKgLaReFNFMzoj3n2ZZ2z3qUofkXXDo+6ZwNdTRnglh7fzV4u
         4vqT2aNqX5CasK/FSEsBUjy+D59/axzDTeq2QsUnBR2aEYjV2rakCJGUhJel5zh/vP0H
         uhwAjY/S55MMUOdX4GlrzmFI1fao4rR8YsGhHPcT+eEIg/FjF4Wo1tvsQLzt+s7L0dz0
         gUftBSJT6ah4lmcLmu/hezo5T3FspmUe6RT96ZOWqalJMv66JQFPvIwpY0yYWXE2eAf0
         u4XA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:to:cc:references:from:autocrypt:subject
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AjiQvLkkY9e4btZJCJAUQOJ4kpLfYI6f2kF4Ga8h8ac=;
        b=dAN8h406pEFHqUABY/eQDCx/4IAXVGgyvpjRzEREdhQqvsWLi5vKTpjYb083rV2XMZ
         Kc40m++dlJ9WjCQpnZfVpMFG4HxAMWJj2Y3uctcXZ6rdRU03hpV8bLmT9kIRKxd+fMEp
         k4Bv8jN+B5hS4C+xzjx9O7N38lo0vDu5WIEAQ8jKabIdeXYYLN/TgJh0KOHq+gcEryqp
         dLahJi8Q7kC9wLXbV6fg6V3J+AiqHnQw2RFCP1J/jdhAERpGrUjwc8PXJ+GCFWrvuN7e
         0JkHWTPhEbfD3jFxpAZ6CazF6f3IX+ZCK3JabHxO83OBJezmC+IZnhL/NVimMPZB9v7V
         sZrg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuYo/qZXy8Wv1H1c/ENag4dbxPslm++jTsc55W8FegAyfrUF7r0/
	bTnTvK6MpujpUYaVQb7vWqA=
X-Google-Smtp-Source: APiQypL5YWbz432OmGRPMjXwaytpozIKPt1rcUkBTqUqcOYAEMuNzECOvIzu/zzQb0lId2qJsuzOOA==
X-Received: by 2002:a05:600c:148:: with SMTP id w8mr12394729wmm.144.1587757432483;
        Fri, 24 Apr 2020 12:43:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:a754:: with SMTP id q81ls8837323wme.3.canary-gmail; Fri,
 24 Apr 2020 12:43:52 -0700 (PDT)
X-Received: by 2002:a7b:c7d2:: with SMTP id z18mr12263758wmk.72.1587757431952;
        Fri, 24 Apr 2020 12:43:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587757431; cv=none;
        d=google.com; s=arc-20160816;
        b=ixXyu7hhu4MUJQlRpFb/YVhXvlU3rEgLQOcV8WqHR8zT18hdBm3j5Uug/wb0bgQ0Rf
         msFR9dzA9noGHA4RRCRhpA6CtKzjj8mkx2yvLjEZWA1VH+CH6s24+QdCo1rPtzqLAPYv
         dqBsqpVKx259kjJSbebE8VtMM8rw/0qMxyD6/FJDtGbcOcVVRKroD48g0Q6+c9Flg13f
         dsEUkVuKxVCfFte9lZJW5a5U2MpbEkmyDbYJFRC5zVl/2CDQfVusOvzssEdgNfEDS1I9
         Mjm2vzgB3hTUHTB4kjJxxuCwqDs5M217T9O77d/IguNlmQfa+Kq4zW2qsu+VOV3djKBc
         iQEQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:subject:autocrypt:from:references:cc:to
         :dkim-signature;
        bh=VBzACWS2uvqYFdt9a6g/fZv+0Rvnfu32Bc6cr2UT370=;
        b=V9ak7AvGOwHQVQ0DLdLWCOrHU3rgGYFHDlsI1s9zJyjXjqqg8hqcR6Bn6mXQktAcdF
         TA/zGKRXv9jECDi1XTgQEDfk238a+bqsaoTxxTBtRR8fX4bZeu1Q8WTPISzLLYBnRjBy
         rb/8+cbAy7yKt2a+kdlaZZdJAe44nR2ihYClzFFhbNVU8JC7LHj90MvivFIduK3aZ8Iq
         O2t3sekspGBJ/FfjqQdQfGrc/uwXBzSRz8AkrWDBNqkElkMSFRQ9FCMOJmasXZHLaEAx
         /dku9ZpOQMnwppYLMsfgyY+oiB17O24c9UQJmbVfjZe8x7pSzAZZ1G/1KDa757sSf4DT
         vDCg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@embeddedor.com header.s=default header.b=dbTkngbm;
       spf=pass (google.com: domain of gustavo@embeddedor.com designates 192.185.46.107 as permitted sender) smtp.mailfrom=gustavo@embeddedor.com
Received: from gateway20.websitewelcome.com (gateway20.websitewelcome.com. [192.185.46.107])
        by gmr-mx.google.com with ESMTPS id q187si189725wme.2.2020.04.24.12.43.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 24 Apr 2020 12:43:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of gustavo@embeddedor.com designates 192.185.46.107 as permitted sender) client-ip=192.185.46.107;
Received: from cm10.websitewelcome.com (cm10.websitewelcome.com [100.42.49.4])
	by gateway20.websitewelcome.com (Postfix) with ESMTP id 6D65C400CCA52
	for <clang-built-linux@googlegroups.com>; Fri, 24 Apr 2020 13:26:30 -0500 (CDT)
Received: from gator4166.hostgator.com ([108.167.133.22])
	by cmsmtp with SMTP
	id S4EojLcd7EfyqS4EojCNqq; Fri, 24 Apr 2020 14:43:50 -0500
X-Authority-Reason: nr=8
Received: from [201.162.177.157] (port=35048 helo=[192.168.43.132])
	by gator4166.hostgator.com with esmtpsa (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
	(Exim 4.92)
	(envelope-from <gustavo@embeddedor.com>)
	id 1jS4En-002k4u-KI; Fri, 24 Apr 2020 14:43:49 -0500
To: kbuild test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
 Nathan Chancellor <natechancellor@gmail.com>, Jason Gunthorpe
 <jgg@ziepe.ca>, Kees Cook <keescook@chromium.org>
References: <202004250359.aVWzqi8q%lkp@intel.com>
From: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Autocrypt: addr=gustavo@embeddedor.com; keydata=
 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
 VtSixD1uOgytAP7RWS474w==
Subject: Re: [linux-next:master 3451/3999]
 ./usr/include/rdma/ib_user_verbs.h:436:34: warning: field 'base' with
 variable sized type 'struct ib_uverbs_create_cq_resp' not at the end of a
 struct or class is a GNU extension
Message-ID: <03107b27-a6f9-4708-64b4-34703c075261@embeddedor.com>
Date: Fri, 24 Apr 2020 14:48:01 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <202004250359.aVWzqi8q%lkp@intel.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator4166.hostgator.com
X-AntiAbuse: Original Domain - googlegroups.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - embeddedor.com
X-BWhitelist: no
X-Source-IP: 201.162.177.157
X-Source-L: No
X-Exim-ID: 1jS4En-002k4u-KI
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: ([192.168.43.132]) [201.162.177.157]:35048
X-Source-Auth: gustavo@embeddedor.com
X-Email-Count: 3
X-Source-Cap: Z3V6aWRpbmU7Z3V6aWRpbmU7Z2F0b3I0MTY2Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
X-Original-Sender: gustavo@embeddedor.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@embeddedor.com header.s=default header.b=dbTkngbm;       spf=pass
 (google.com: domain of gustavo@embeddedor.com designates 192.185.46.107 as
 permitted sender) smtp.mailfrom=gustavo@embeddedor.com
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

Hi,

I just got this report. And just for you to know, the changes to
ib_user_verbs.h, including all the changes to include/uapi/, have
been dropped already[1].

[1] https://git.kernel.org/pub/scm/linux/kernel/git/gustavoars/linux.git/commit/?h=for-next/kspp&id=3ba225b506a2e0a6942eb99fceb799f29220bcea

Thanks
--
Gustavo

On 4/24/20 14:09, kbuild test robot wrote:
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> head:   a5840f9618a90ecbe1617f7632482563c0ee307e
> commit: d496496793ff69c4a6b1262a0001eb5cd0a56544 [3451/3999] treewide: Replace zero-length array with flexible-array member
> config: x86_64-randconfig-a001-20200423 (attached as .config)
> compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project bbf386f02b05db017fda66875cc5edef70779244)
> reproduce:
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install x86_64 cross compiling tool for clang build
>         # apt-get install binutils-x86-64-linux-gnu
>         git checkout d496496793ff69c4a6b1262a0001eb5cd0a56544
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64 
> 
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kbuild test robot <lkp@intel.com>
> 
> All warnings (new ones prefixed by >>):
> 
>    In file included from <built-in>:1:
>    In file included from ./usr/include/rdma/rdma_user_cm.h:40:
>>> ./usr/include/rdma/ib_user_verbs.h:436:34: warning: field 'base' with variable sized type 'struct ib_uverbs_create_cq_resp' not at the end of a struct or class is a GNU extension [-Wgnu-variable-sized-type-not-at-end]
>            struct ib_uverbs_create_cq_resp base;
>                                            ^
>>> ./usr/include/rdma/ib_user_verbs.h:647:34: warning: field 'base' with variable sized type 'struct ib_uverbs_create_qp_resp' not at the end of a struct or class is a GNU extension [-Wgnu-variable-sized-type-not-at-end]
>            struct ib_uverbs_create_qp_resp base;
>                                            ^
>>> ./usr/include/rdma/ib_user_verbs.h:743:29: warning: field 'base' with variable sized type 'struct ib_uverbs_modify_qp' not at the end of a struct or class is a GNU extension [-Wgnu-variable-sized-type-not-at-end]
>            struct ib_uverbs_modify_qp base;
>                                       ^
>    3 warnings generated.
> 
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/03107b27-a6f9-4708-64b4-34703c075261%40embeddedor.com.
