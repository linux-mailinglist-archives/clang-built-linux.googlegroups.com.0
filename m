Return-Path: <clang-built-linux+bncBC5KPPH4YUKRBB7GYSEQMGQEVKY7MAI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33b.google.com (mail-wm1-x33b.google.com [IPv6:2a00:1450:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id AAF383FF4DB
	for <lists+clang-built-linux@lfdr.de>; Thu,  2 Sep 2021 22:24:39 +0200 (CEST)
Received: by mail-wm1-x33b.google.com with SMTP id n16-20020a1c7210000000b002ea2ed60dc6sf1072087wmc.0
        for <lists+clang-built-linux@lfdr.de>; Thu, 02 Sep 2021 13:24:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630614279; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ib0uBK3KIbTMLF1XJmb9SMj+6MoQmovTWVGlCe9tYgz9SQuvVvMYq0+A2ZIdvx4KHo
         XoyDe72OYBIoyZs4exYHcC7wYCRTqu1GEglNs5LSvIZWIodecwdOcCYSHNX9p402YrZI
         zKK9EGKP3C03ODXArOTJjmljIYmxrl/9OBiYbHNcr4rxhBlNm2HznxJA9SksLkEKdEHX
         lw5LaZOdJ2Xa6/WxZbWCYrEI5YGHDu/krmlRBcKBTxCEB/ck7PTAR4LmkLAZFZyVTStK
         Ifh1xdYBh/Wsu/nRHyutQR2JWFReDmPB8gj/A+19QvRkJF0p170ZpmdqxGBUFsS6AzyI
         U2YA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=uBLORSyhMdHWTcOSDO/NhkGyGxGZne8MZ4khNqdFY4o=;
        b=x4gvaf61ToKCBZM6SqeWAp8glTCR982Kcpn9n7SBnQbr9OioCsLVCPFTfKc44TXgxZ
         +HxdVzl1EYPPN9eRD29YIHmvXN8+spX6cgiR7GnEDss6+7CfASkZuhkzMFHiDOuaaszv
         3bs2AKKTRXpiAmOJXf8nvFbqHTwxL4ucYcpdOqVZCsTWsDoni2zro+uS4JhR999W1Blf
         kt1e1hmt6ZCavfsRAHHqJulTOD4ZRN9X5TGdUTTBgRb1oXA5lRMKKRhB0cY9jJd4Y/nT
         NZZ2ywHJMkEqZrAy6VGuegKDcoWbK+R8yUi4Dslo6iyIzspKZwB3w8ea8KSdkJiXafeC
         Pxww==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of guillaume.tucker@collabora.com designates 46.235.227.227 as permitted sender) smtp.mailfrom=guillaume.tucker@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=uBLORSyhMdHWTcOSDO/NhkGyGxGZne8MZ4khNqdFY4o=;
        b=Z4uTOpEmP8Fn448dKCj0R7aEIJVDpT/RS0Gjy8lhUBLweBSG9L7rQGLryebh448y1j
         NsvQSzSQfxmPBoQW78UFSACGD1FCxtq0Wm7DZTPo2ncrvgo1Yi/TmGv47ZBNremBW6mT
         X18Z9//mxEILJaO12PykSKyVMg9946drJOex7I6NrimToaGBwCDp6x8nKJlCSB3iqQ5R
         +FkTt8EE7Dqh+lJGc8a6wRluOS8k/dk6Sqd0YctCL7hhKNOfb4tFFIbpcxA+KUM2CGC3
         MSvYOzdxHdSjBMqYYlgzU2JIev8Ttn1bqkL0eeaydI4ndEdcbzU1JKFosEFXhaqSpGnF
         qkvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=uBLORSyhMdHWTcOSDO/NhkGyGxGZne8MZ4khNqdFY4o=;
        b=An/1Acj6QXWtlB3RpAIvwy8yIgA0rfXJ5f0iheqLgKbfYvYWgXMB2Cq/ZeEOoKvgb9
         IVrfns5240RTqDBwsUsMl1ngSN9Bt5ffzALWQ95fFoxeX+t5Wrf/OKkXLnVnu6yeyuR3
         fWdPPhGBRLScRFyAbiihPO5X5bDMzO2mqnhI17IrBeB0sbtj5WICo/0yBi/nuGI/7Gly
         VFluRBntCQKr3h4H/y4igxi5ws6SRucs0sfvOrOoxei9rB3D6fWpuCCx8uauXuBd7fJM
         2qNtyyF+akM2ImCo2hx6pH+1JIU6JYiHIWlc9EEFMnOZH9tBWqMWbYEnm0bkajC3y56V
         vzRw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530dzhdmfp5fWabgyPyNpGvduf40OjlA+aGx/9iweCo/lAVTZTx1
	M2JLpWxjqB6KN2T2VP3ZFN8=
X-Google-Smtp-Source: ABdhPJx5eCKUUzY9yLQA2PxMeAmVn+hmnpFXWBz6Zlmw+FoL/I4NqkCjPuJNbc8fc2Hm7yFnPI7FXA==
X-Received: by 2002:adf:ce8d:: with SMTP id r13mr128636wrn.18.1630614279471;
        Thu, 02 Sep 2021 13:24:39 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:ef0d:: with SMTP id e13ls715698wro.3.gmail; Thu, 02 Sep
 2021 13:24:38 -0700 (PDT)
X-Received: by 2002:adf:c550:: with SMTP id s16mr88468wrf.25.1630614278560;
        Thu, 02 Sep 2021 13:24:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630614278; cv=none;
        d=google.com; s=arc-20160816;
        b=nOMhbGMOYjEOWpos9JlFUyybwTtMWIcOlryx+Yjk+Us2dIS91F8E0nlGJUm7d7gNH7
         is66P+/T2ZZsEGLSIfmqmPqEMfNyXfzrKdBDLV/+XMWd4vzmfnfEepET3LkM9Ijiw8fy
         00ZxUBSwmhoFB4hzDPkRT93PtJ8HM2llFNL3m/f57/cyYa7Hn6Bnf9M6e5/+CsY9o1BJ
         jrcE+J7dvOkotSYtGRLEqzJ5Qo71BrxooEvfvbfN3nOMDnG/kWsEgpYsaYyaoZraECSJ
         xElnrioLS+lBKomgP+DHxylDlWDop+QOgFetcvcF5nwswTHaLAlEx8sDNHGFlIF7HtHd
         UM+Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=cbrkhPXXtU64sNSFhSvyYYQPKJzWtPBaUkGSh1aG6Zo=;
        b=MedtPOhbycCA914n4afIiXqy1GydMFbLHSqZT8H1esv6ap2ZH+t7wd5vDkiCWPY0Z3
         jHTr7AzMyTtCkzjN/kK/LBJrs6gAy9OVD8lg2Y5igOndCnMZnbdU/iIglqvjFvNuWWfk
         six0ZDHjkmwPqSpytqrbdtJdsheAae3CZkTXh1FunmcEUZzweX5ExyEYAczLVpjcWJWK
         HGsc9RtDU2eUErDVKtLhb5kIQpzStpEMNgi1Q3o9zcwYGBnI4XiUcusJVL/y/VVFeTwd
         JAUwSNk/HkE+Kok8237lhx0PcE9fQw8AhLdFcPaK09j1RmSOMpGebxpGXot9rFTIWA6N
         QfIg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of guillaume.tucker@collabora.com designates 46.235.227.227 as permitted sender) smtp.mailfrom=guillaume.tucker@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk. [46.235.227.227])
        by gmr-mx.google.com with ESMTPS id 3si170137wmz.2.2021.09.02.13.24.38
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 02 Sep 2021 13:24:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of guillaume.tucker@collabora.com designates 46.235.227.227 as permitted sender) client-ip=46.235.227.227;
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: gtucker)
	with ESMTPSA id AC7421F44AE4
Subject: Re: KernelCI Hackfest #2 - Sept 6-10 2021
To: Alice Ferrazzi <alice.ferrazzi@miraclelinux.com>, kernelci@groups.io
Cc: kernelci-members <kernelci-members@groups.io>,
 automated-testing@lists.yoctoproject.org,
 Collabora Kernel ML <kernel@collabora.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jesse Barnes <jsbarnes@google.com>, Summer Wang <wangsummer@google.com>,
 linux-kselftest@vger.kernel.org, workflows@vger.kernel.org,
 kunit-dev@googlegroups.com,
 clang-built-linux <clang-built-linux@googlegroups.com>
References: <74f7b4cf-926f-d8bd-19c2-375cfe7a12b2@collabora.com>
 <CANgtXuPjD0rW-A=gMNUd7mdF1Bynz+QQmDHLy7vh9UODd8NtbA@mail.gmail.com>
From: Guillaume Tucker <guillaume.tucker@collabora.com>
Message-ID: <01d483d0-6cee-f0dc-b65d-bd776c7d206f@collabora.com>
Date: Thu, 2 Sep 2021 21:24:34 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <CANgtXuPjD0rW-A=gMNUd7mdF1Bynz+QQmDHLy7vh9UODd8NtbA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: guillaume.tucker@collabora.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of guillaume.tucker@collabora.com designates
 46.235.227.227 as permitted sender) smtp.mailfrom=guillaume.tucker@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
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

On 03/08/2021 17:46, Alice Ferrazzi wrote:
> Hello,
> 
> On Mon, Aug 2, 2021 at 6:00 PM Guillaume Tucker
> <guillaume.tucker@collabora.com> wrote:
>>
>> The first KernelCI hackfest[1] early June was successful in getting
>> a number of kernel developers to work alongside the core KernelCI
>> team.  Test coverage was increased in particular with kselftest,
>> LTP, KUnit and a new test suite for libcamera.  We're now improving
>> documentation and tooling to make it easier for anyone to get
>> started.  Find out more about KernelCI on https://kernelci.org.
>>
>> The second hackfest is scheduled for the 6th-10th September.  It
>> should be a good opportunity to start discussing and working on
>> upstream kernel testing topics ahead of the Linux Plumbers
>> Conference[2].
>>
>> Here's the project board where anyone can already add some ideas:
>>
>>   https://github.com/orgs/kernelci/projects/5
> 
> I cannot add topics to the project board.

Please see the email I just sent in reply to my original one,
with extra information about how to add issues.  You've been
invited to the "hackers" team so you should be able to edit the
workboard once you've accepted it.

Thanks,
Guillaume

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/01d483d0-6cee-f0dc-b65d-bd776c7d206f%40collabora.com.
