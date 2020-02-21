Return-Path: <clang-built-linux+bncBDNYNPOAQ4GBBEMGX3ZAKGQE65VRXNY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x437.google.com (mail-wr1-x437.google.com [IPv6:2a00:1450:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 969B9167015
	for <lists+clang-built-linux@lfdr.de>; Fri, 21 Feb 2020 08:13:21 +0100 (CET)
Received: by mail-wr1-x437.google.com with SMTP id o9sf615443wrw.14
        for <lists+clang-built-linux@lfdr.de>; Thu, 20 Feb 2020 23:13:21 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582269201; cv=pass;
        d=google.com; s=arc-20160816;
        b=W+rtmjwk59VRWfxvgN3EFPwFAYhscze9hwpIUZmjyb3FjVfZm9cVAeonXHSNHanjfE
         PxhQlIJwZQCvxBhpS6K/t0neFtqPDc9L2ZGnfb+nU+wKOJiSj8xyTN2SwhwWCzgau3Ad
         3Lyp2hYjYnkcQ3GfOvU80ZEYtrkbHIZVgIu6grrCkg/scDORs8zuYC509rt3TmQG4Tru
         c152o/kUa8VkCHQGGOlUSyzpKCZd+Wtf7r8Hua7KxB3Clhq494YzVZoiLf9twG2kZAYu
         oYb9oO7ANTctpqQ6BiuUZCBBV6zsDulcK2WSBCXTVW80RLQmkUdcsY+VBY+pbOluQEId
         fGMA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:autocrypt:from:references
         :cc:to:subject:sender:dkim-signature;
        bh=FOFPkSh7FUOYUan1dnHPy8aPcKJhDk5XsYascgiLsiU=;
        b=j1hJvpSa78FMYXUBjtyV5quVF8JTenzZlPqnyCwNr+hONw5E/V0lb+RFr/5YBAKLCD
         9JZJfh5ed5YWJ29MxLduujHbwQaLScNucl0S+sUvTXKr8W2N99IjmkLoFbmnqOca7xoc
         MKotiuQTjHyzFyJ67dPE/UBGH7VgLFkfUuPl6xjUrVf5VN/+fukNv1j6lOoOuTNvLCoP
         kGxDDKDSAe4jhFveYCGutpz0FBwkq9h9Wy8IZhzW8D/PHhho/5KfwoD6rBqWxeTkPLkK
         ltgltES+d82Zb/T7vdJGfAHW/8ENwJm8SVU1P7zmqY0abQGdVA60BUN84bdtE/55IMW5
         S+tg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@embeddedor.com header.s=default header.b=qJAi+3oV;
       spf=pass (google.com: domain of gustavo@embeddedor.com designates 192.185.52.45 as permitted sender) smtp.mailfrom=gustavo@embeddedor.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:autocrypt:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FOFPkSh7FUOYUan1dnHPy8aPcKJhDk5XsYascgiLsiU=;
        b=XCHZpOknQOSlbVIBdFhSUqn70GKny75GfQnoixsxfoXlJews4XVrmIKIqM33RImjtW
         AzMUf2uh3dGILBbgMHx490x+N0mgfPlrfjyZQ0pv0Mvzshw2p+weFa2+9X6ByAjVe8Yk
         dDUlUdJVGrXNThJQSCb2DJ5wrgNo2YkX1NvhBtrOCSMs5ulg3HYoVcxQSBasF1ZnQBr3
         Ie7k/n9EQjnnTb7j423pw2VBjl2H90ne3I4+NajWSTEyBc89Nh9jjq2aKTGtxA8KgX0r
         7VHwM37DfnvuLrb1QhsrW9WjjSMJAGLPUFuktSO4LYz2AIcFXHkvQpMD3uvlDyQpao0/
         0p6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:autocrypt
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FOFPkSh7FUOYUan1dnHPy8aPcKJhDk5XsYascgiLsiU=;
        b=GJviBdbIVF2IzHhGrPTg7aeJ29Bk/u0x+p41t0MYtNhYC8jtrgKafSIYLWJs9veaLo
         jrJCELSJ6S0wX39AJHKElzSPsr73nffekVL3uA+X3kPTMEdrId4rfnfPHFHarneEWmE0
         Qq5LaGsF8hj/5dY/dXi3NU73khlF3L9v1wwwTQSe5sunYcmiCv0M+CyOGqTsPLAzg79F
         sqpmUJOW6qD9oRNWA/l1GZVAw7Yje8gMBEbUP+Qb7bodQjpyPn/FcBwqbsUJHMVtPZN4
         EYf2n/fJFjWYflqeIvrEMYpMKbaVOx2jU6atCbqq/MpeBbGc6RXautWU8h7cvErqdPlR
         lAjQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAW+1+iqeikO9UmDJFAGR5Z8EiDBoIeuNu6s7JZmMCi15HOpp5gN
	yJXhtWj4ar45wo5CzBXeJS0=
X-Google-Smtp-Source: APXvYqy4/ASEmO5WKs0yYCTaOF6lDL3Ywfhy34IcuTSI07go9lfS6dvQs6ipaPC2mcGdOhNaTYQiCA==
X-Received: by 2002:a1c:6389:: with SMTP id x131mr1893773wmb.155.1582269201195;
        Thu, 20 Feb 2020 23:13:21 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:600c:288:: with SMTP id 8ls313656wmk.3.gmail; Thu, 20
 Feb 2020 23:13:20 -0800 (PST)
X-Received: by 2002:a05:600c:224d:: with SMTP id a13mr1972811wmm.82.1582269200679;
        Thu, 20 Feb 2020 23:13:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582269200; cv=none;
        d=google.com; s=arc-20160816;
        b=wMGhEDKG7oogttym1G73ZiCGxEdNgoFwJuj9Sc4WcXAPQ/n9K7NaOb6HU8LY9RcXwJ
         XevI3R5NZcFejST2y2CjhRpwYrFbbmSjdn8/7vlvo1PXzs6gY8sgiwzuCMWzKUL3MwQ1
         0y62gvhP59lBDbxDoqNwg0LIj0v6r6eTHhaGLZVUjD4nEOgcOTNFR4LqNVY9/KsZK96S
         sAWqC4L9Z+qKrTMpiKpNvxWA6N7DNAL59aoVTGZJDGmNM+lqCuaqMGzCxX9YRtXX2bDp
         ++1DIrK1r5LHD2RCNS3qk0/78hEjjSBgu7Pe0Y6Zlg1L+EY2RCddIaJzZj85yzfa40Lm
         L9Zw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:autocrypt:from:references:cc:to:subject
         :dkim-signature;
        bh=V2vw7pXQ3OQP8FCFLeii9LDD3GPR8eL0xN2/Iraw63E=;
        b=Xrk/OagZ1Ox/eqlGcdXWO6rNAICwtFyuuPhZeX2VcKgIpn5aDqQIcrOKKPigLn+UH3
         I6uBRYCYNGEjLYwTlFGJLMKBnw3J8GFhf+JnsVAvdFD9J/s+OEex833/Vu+9cE9mXp9E
         +dKRWWhv9iOERFq1rpuLvwOZM5mYxt8xOPTIXVACRXsSF21cZsljgfLtCnq2XzlTh99e
         dr07TCEIXo0ZLj0sRq15y37dylPqlUw4gkIR2qEgE9RHwXXm3+fbXFCMryKbT7dQkFPS
         NGxtunxSID16criczYyC1XIT5ZQPIeVOCbmQyzXbwBjA2rUOrn/DP4P+S6RmnlPPkFUu
         iOsA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@embeddedor.com header.s=default header.b=qJAi+3oV;
       spf=pass (google.com: domain of gustavo@embeddedor.com designates 192.185.52.45 as permitted sender) smtp.mailfrom=gustavo@embeddedor.com
Received: from gateway20.websitewelcome.com (gateway20.websitewelcome.com. [192.185.52.45])
        by gmr-mx.google.com with ESMTPS id e21si330501wme.1.2020.02.20.23.13.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 20 Feb 2020 23:13:20 -0800 (PST)
Received-SPF: pass (google.com: domain of gustavo@embeddedor.com designates 192.185.52.45 as permitted sender) client-ip=192.185.52.45;
Received: from cm17.websitewelcome.com (cm17.websitewelcome.com [100.42.49.20])
	by gateway20.websitewelcome.com (Postfix) with ESMTP id 4742F400CF1AE
	for <clang-built-linux@googlegroups.com>; Thu, 20 Feb 2020 23:59:16 -0600 (CST)
Received: from gator4166.hostgator.com ([108.167.133.22])
	by cmsmtp with SMTP
	id 52UxjLjMdAGTX52UxjWBLq; Fri, 21 Feb 2020 01:13:19 -0600
X-Authority-Reason: nr=8
Received: from [200.68.141.13] (port=28470 helo=[192.168.43.131])
	by gator4166.hostgator.com with esmtpsa (TLSv1.2:ECDHE-RSA-AES128-GCM-SHA256:128)
	(Exim 4.92)
	(envelope-from <gustavo@embeddedor.com>)
	id 1j52Ux-003aKj-0P; Fri, 21 Feb 2020 01:13:19 -0600
Subject: Re: [gustavoars-linux:for-next/testing 1/1]
 ./usr/include/rdma/ib_user_verbs.h:436:34: warning: field 'base' with
 variable sized type 'struct ib_uverbs_create_cq_resp' not at the end of a
 struct or class is a GNU extension
To: Nathan Chancellor <natechancellor@gmail.com>,
 kbuild test robot <lkp@intel.com>
Cc: kbuild@lists.01.org, Nick Desaulniers <ndesaulniers@google.com>,
 clang-built-linux@googlegroups.com
References: <202002211103.MQuVvnUg%lkp@intel.com>
 <20200221051144.GA47760@ubuntu-m2-xlarge-x86>
From: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Autocrypt: addr=gustavo@embeddedor.com; keydata=
 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
 VtSixD1uOgytAP7RWS474w==
Message-ID: <5c39ace2-394d-30cd-1572-118cade40fe1@embeddedor.com>
Date: Fri, 21 Feb 2020 01:16:02 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200221051144.GA47760@ubuntu-m2-xlarge-x86>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator4166.hostgator.com
X-AntiAbuse: Original Domain - googlegroups.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - embeddedor.com
X-BWhitelist: no
X-Source-IP: 200.68.141.13
X-Source-L: No
X-Exim-ID: 1j52Ux-003aKj-0P
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: ([192.168.43.131]) [200.68.141.13]:28470
X-Source-Auth: gustavo@embeddedor.com
X-Email-Count: 5
X-Source-Cap: Z3V6aWRpbmU7Z3V6aWRpbmU7Z2F0b3I0MTY2Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
X-Original-Sender: gustavo@embeddedor.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@embeddedor.com header.s=default header.b=qJAi+3oV;       spf=pass
 (google.com: domain of gustavo@embeddedor.com designates 192.185.52.45 as
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



On 2/20/20 23:11, Nathan Chancellor wrote:
> + Gustavo, since I assume the point of that patch is to see what kind of
> warnings crop up?
> 

Precisely! Thanks, Nathan. :)

I would have expected to get this e-mail automatically... could someone help
me with that? I'd really appreciate it.

Thanks
--
Gustavo

> On Fri, Feb 21, 2020 at 11:16:11AM +0800, kbuild test robot wrote:
>> CC: kbuild-all@lists.01.org
>> TO: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
>>
>> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/gustavoars/linux.git for-next/testing
>> head:   2d94fd162464e8b126227a996eaffa9e0442a1be
>> commit: 2d94fd162464e8b126227a996eaffa9e0442a1be [1/1] treewide: Replace zero-length array with flexible-array member
>> config: x86_64-allyesconfig (attached as .config)
>> compiler: clang version 11.0.0 (git://gitmirror/llvm_project 9d37f5afac4a3b9194b9001bed84f58ca8bd6c02)
>> reproduce:
>>         git checkout 2d94fd162464e8b126227a996eaffa9e0442a1be
>>         # save the attached .config to linux build tree
>>         make ARCH=x86_64 
>>
>> If you fix the issue, kindly add following tag
>> Reported-by: kbuild test robot <lkp@intel.com>
>>
>> All warnings (new ones prefixed by >>):
>>
>>    In file included from <built-in>:1:
>>    In file included from ./usr/include/rdma/rdma_user_cm.h:40:
>>>> ./usr/include/rdma/ib_user_verbs.h:436:34: warning: field 'base' with variable sized type 'struct ib_uverbs_create_cq_resp' not at the end of a struct or class is a GNU extension [-Wgnu-variable-sized-type-not-at-end]
>>            struct ib_uverbs_create_cq_resp base;
>>                                            ^
>>>> ./usr/include/rdma/ib_user_verbs.h:647:34: warning: field 'base' with variable sized type 'struct ib_uverbs_create_qp_resp' not at the end of a struct or class is a GNU extension [-Wgnu-variable-sized-type-not-at-end]
>>            struct ib_uverbs_create_qp_resp base;
>>                                            ^
>>>> ./usr/include/rdma/ib_user_verbs.h:743:29: warning: field 'base' with variable sized type 'struct ib_uverbs_modify_qp' not at the end of a struct or class is a GNU extension [-Wgnu-variable-sized-type-not-at-end]
>>            struct ib_uverbs_modify_qp base;
>>                                       ^
>>    3 warnings generated.
>>
>> ---
>> 0-DAY CI Kernel Test Service, Intel Corporation
>> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
>>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/5c39ace2-394d-30cd-1572-118cade40fe1%40embeddedor.com.
