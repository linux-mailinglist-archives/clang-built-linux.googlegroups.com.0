Return-Path: <clang-built-linux+bncBDR5N7WPRQGRBSG746BAMGQEL7BVCBA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103b.google.com (mail-pj1-x103b.google.com [IPv6:2607:f8b0:4864:20::103b])
	by mail.lfdr.de (Postfix) with ESMTPS id 95132345FDD
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Mar 2021 14:40:26 +0100 (CET)
Received: by mail-pj1-x103b.google.com with SMTP id j12sf2106534pjm.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 23 Mar 2021 06:40:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616506825; cv=pass;
        d=google.com; s=arc-20160816;
        b=lBfHpVrzcZDniVQmtdutd+8VhcypL8E/oPg0Xl061gEctDoc04CejaSDVKW75eDXsx
         QmJCaT3qNC6p9+3HTKsfDhz1GAnvpQrE0/McV0whEG32X7Ncf7P4S6oZjqEwfJcyUk5J
         UyEEfFe6ADMwSen4VaZOnPHsNim+Jl0RcB3be4oz5ZTfSdhe9ly72ww43nSViyTrCGQs
         nydJNssqyOpU/IqzX2ufBEQdUUXqCCOW/MubPQJQPpJz4PLjxRnVrL3gmPmIUAiplDQl
         UPi5dlimu330YN9OiQ6yyjnM41Jm7fVWgYhcqFJ6u3GCTcsyfylUD+RCEIAhkDmGKzdk
         UD1A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=/1z6f4x+JT7dJrxjC2sgolwtWwZb6r9ib1/5qeFJxCo=;
        b=eKINuxehMzRcxAIwMRuANo+/uvbErnMEbOm0hNDjoAm1pU2q2JvNmrqLmlKSPbtXIX
         cX9mqdky31os7g8TsphyODFlFvxHENXfivTcu2dtYkS7MQUpEXsgXybXbJCGtcEiGc60
         eJYf9C7uHdrBnlEa8eJwp+Jky8vmb19u/KBPR7+LNryKfjOtnvHcXZyHHWKC3AqIIk7P
         JnRsVV0THbH9ah5WYa4oByJf3o8186LpE5GNt2sW+eZh5c23RqjTpZDMpIWvZrmDXLHA
         YPLVe8PqOAYHew34jMld/UXInWLOTa9bQ9CYOqgr3IzJjLak5NZDQ3Vx2gK0hn9o37zY
         goWQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel-dk.20150623.gappssmtp.com header.s=20150623 header.b=0lT3wqbS;
       spf=pass (google.com: domain of axboe@kernel.dk designates 2607:f8b0:4864:20::133 as permitted sender) smtp.mailfrom=axboe@kernel.dk
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/1z6f4x+JT7dJrxjC2sgolwtWwZb6r9ib1/5qeFJxCo=;
        b=H849Y+6a7qwcwaBrF09u1RvhHWQq3iZC5Pc8AwaWsRqwDOw+VSX93YjCeLb8K8IfSu
         lZbXQ/9hA6dlix3xykWBXehvcqYmyKgeEC8xb6XGScGrkcahGZb4zM1EPRWl5rp1uAJr
         TJyJsXkwpRjvLzOJvJNVwQa0GSMxod0ioMfth0brsJfOaznPicLvTXp9H608wkmmpRh7
         oUIqcZtTnsfKTAuOLmWspNtncZcD9xWLm9njLavwvrDRVC7AXexq0HLag4b1bORf+QS6
         DVJG7kX2VqixjZ2JjgdduBrYcCmshHNhyw3eNtsaqteiO/tCNIShRGwkD7cKaJt2chDk
         8MPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=/1z6f4x+JT7dJrxjC2sgolwtWwZb6r9ib1/5qeFJxCo=;
        b=YpRkmFCOPTJ+f1X0h6rVJKfaMdUYqjq5HZGzre5+3umIi8sci6QtJ5WC1m56mOWnjm
         IvqBP+cFj0yv0krGQ4yZgXPL9quIljrugDlpsCTo6SrTq0rBRY5RZ1q8t20dBJFFAu9E
         yiRMr6Nsf1sIC8ibc95rr0+gShHKt9jcG4kBhbYweivrkuEydabUJv9AX44bbTYT2AWg
         /wjbt439UMIeCbMWf2ilGrHM3xMv/y/ppeVjQyLbo1I1J5QRV68C0j9n5xTe+ZOTp4+s
         m1+3JKtMsCf6E2/lYfUPqnZwfO+swG+gqcT/mi1zPBZL0hvwe0bkYav5uZ13FXLUDUOY
         xW0Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530ZzvATrCEvHbU2fDBfqQNuXSt249Eju7CJPhPNYTBDVYf6FVJq
	Dv2Nc5eHeUNmEdourm9t2eo=
X-Google-Smtp-Source: ABdhPJy55YxGrFKLwHQycZEVgR9m5gtt+7nv8yia8Rt5uluZUKD29aDCa+cf2YpYfpmKbrXsBNNRHQ==
X-Received: by 2002:a17:902:8498:b029:e6:f010:a6fa with SMTP id c24-20020a1709028498b02900e6f010a6famr4505757plo.30.1616506825102;
        Tue, 23 Mar 2021 06:40:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:2a8e:: with SMTP id j14ls1546524pjd.3.canary-gmail;
 Tue, 23 Mar 2021 06:40:24 -0700 (PDT)
X-Received: by 2002:a17:90a:20c:: with SMTP id c12mr4504409pjc.224.1616506824416;
        Tue, 23 Mar 2021 06:40:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616506824; cv=none;
        d=google.com; s=arc-20160816;
        b=jeQLQsNxBXvG4pZyaF8FaB+b6CRlPdRrJdZpfjY5DUYX6PnoTHEWFOFpvaQKlJFPrG
         OpQwEkrZhGsfscyJKrq0vJBnOLGFodnQiJROlUNVlS/p92x7PxKyEKO1zCjNfbjaiHPV
         sbyA3YkpgkJ5NLy/+ksD/z3HHxOSVMuMPngBM0vaIitvWmWadMk1mLIE8MjDaozbxZTT
         EUVQ93/U+oOBReOM1ZKA85FAXmaEBcPK5M/gmQd/IV1ogOQc1BpD5d4x7GSoqEtz0eWN
         umNSSm2V94sNmwDzlpdN08aTcoO5DhAbS80AwvBjzSgQBhd10T/wJ+z7vncG1LjSInKp
         G++Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=BDLBUMGQcuT53tWnulg5VAGeYmglp65rO3igDVXqL/w=;
        b=qXffIJMcVZuBExn7ic+CPbQIOQCtBPxmGyNQbpX6Lm50+sI6Kkn6GgxpwKfLxQnfPJ
         R3xDWYGVaFy5vILRlnjawSXhRUDUr/CKMctrJ6vo1Owjjq4oJghb0TwrCkHEgUbp2q/R
         BOw8H0yf5wVgxWBmRY4Co6KuMnxst1k1XRnEFfRnuhwtsHZEr0jU+bIjdY8XZ2gI64Cg
         f1ZwMndWsI0UAcWzRo6cIQLHDMYN8ugvimOC3M/7gQ2jvQ7GUibOorjYxFM19swIwxMp
         dDAQ3NjFckg420OHE9m6kfmDVWhZ0Ix2SV18a2OM5OzQj91g4dueCgON9xGKIBhJD2LV
         kkkA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel-dk.20150623.gappssmtp.com header.s=20150623 header.b=0lT3wqbS;
       spf=pass (google.com: domain of axboe@kernel.dk designates 2607:f8b0:4864:20::133 as permitted sender) smtp.mailfrom=axboe@kernel.dk
Received: from mail-il1-x133.google.com (mail-il1-x133.google.com. [2607:f8b0:4864:20::133])
        by gmr-mx.google.com with ESMTPS id k3si1112840pll.1.2021.03.23.06.40.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Mar 2021 06:40:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of axboe@kernel.dk designates 2607:f8b0:4864:20::133 as permitted sender) client-ip=2607:f8b0:4864:20::133;
Received: by mail-il1-x133.google.com with SMTP id r8so18143547ilo.8
        for <clang-built-linux@googlegroups.com>; Tue, 23 Mar 2021 06:40:24 -0700 (PDT)
X-Received: by 2002:a92:194b:: with SMTP id e11mr4884099ilm.184.1616506824042;
        Tue, 23 Mar 2021 06:40:24 -0700 (PDT)
Received: from [192.168.1.30] ([65.144.74.34])
        by smtp.gmail.com with ESMTPSA id 23sm9481779iog.45.2021.03.23.06.40.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Mar 2021 06:40:23 -0700 (PDT)
Subject: Re: fs/io_uring.c:6920:12: warning: stack frame size of 1040 bytes in
 function 'io_submit_sqes'
To: Pavel Begunkov <asml.silence@gmail.com>, kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
 linux-kernel@vger.kernel.org
References: <202103231939.qtWh2L33-lkp@intel.com>
 <a8a053dd-5ba1-5c03-8915-f84c7938adf9@gmail.com>
From: Jens Axboe <axboe@kernel.dk>
Message-ID: <741263a9-2c59-c503-8fe3-0f80351890c5@kernel.dk>
Date: Tue, 23 Mar 2021 07:40:24 -0600
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.10.0
MIME-Version: 1.0
In-Reply-To: <a8a053dd-5ba1-5c03-8915-f84c7938adf9@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: axboe@kernel.dk
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel-dk.20150623.gappssmtp.com header.s=20150623
 header.b=0lT3wqbS;       spf=pass (google.com: domain of axboe@kernel.dk
 designates 2607:f8b0:4864:20::133 as permitted sender) smtp.mailfrom=axboe@kernel.dk
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

On 3/23/21 6:51 AM, Pavel Begunkov wrote:
> On 23/03/2021 11:31, kernel test robot wrote:
>> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git master
>> head:   84196390620ac0e5070ae36af84c137c6216a7dc
>> commit: e5d1bc0a91f16959aa279aa3ee9fdc246d4bb382 io_uring: defer flushing cached reqs
>> date:   6 weeks ago
>> config: powerpc64-randconfig-r023-20210323 (attached as .config)
>> compiler: clang version 13.0.0 (https://github.com/llvm/llvm-project 14696baaf4c43fe53f738bc292bbe169eed93d5d)
>> reproduce (this is a W=1 build):
>>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>>         chmod +x ~/bin/make.cross
>>         # install powerpc64 cross compiling tool for clang build
>>         # apt-get install binutils-powerpc64-linux-gnu
>>         # https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=e5d1bc0a91f16959aa279aa3ee9fdc246d4bb382
>>         git remote add linus https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
>>         git fetch --no-tags linus master
>>         git checkout e5d1bc0a91f16959aa279aa3ee9fdc246d4bb382
>>         # save the attached .config to linux build tree
>>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc64 
>>
>> If you fix the issue, kindly add following tag as appropriate
>> Reported-by: kernel test robot <lkp@intel.com>
>>
>> All warnings (new ones prefixed by >>):
>>
>>>> fs/io_uring.c:6920:12: warning: stack frame size of 1040 bytes in function 'io_submit_sqes' [-Wframe-larger-than=]
>>    static int io_submit_sqes(struct io_ring_ctx *ctx, unsigned int nr)
>>               ^
>>    1 warning generated. b
> 
> I don't know, for up-to-date code all submission functions are under
> 128 bytes for me, including io_submit_sqes with everything heavily
> inlined into it. I believe it's just a strange config keeping
> everything on stack for some reason (too under optimised?).

Must be the powerpc compiler doing something weird, it's probably
inlining io_submit_sqe() and all opcode handlers. And then you get
there pretty quick, eg io_recvmsg() uses 768 bytes of stack here.

-- 
Jens Axboe

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/741263a9-2c59-c503-8fe3-0f80351890c5%40kernel.dk.
