Return-Path: <clang-built-linux+bncBCH6BRHDXYLRBWU3S2CQMGQETN4EPBY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3d.google.com (mail-oo1-xc3d.google.com [IPv6:2607:f8b0:4864:20::c3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 562FF389921
	for <lists+clang-built-linux@lfdr.de>; Thu, 20 May 2021 00:14:51 +0200 (CEST)
Received: by mail-oo1-xc3d.google.com with SMTP id p4-20020a4a48040000b029020eb67f7264sf3714303ooa.23
        for <lists+clang-built-linux@lfdr.de>; Wed, 19 May 2021 15:14:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621462490; cv=pass;
        d=google.com; s=arc-20160816;
        b=K+EEuZIdkoLvZf6QK3JNIkZYlOS3b1UwLS7a9IpCWqe0Q76RuVQeLcxToT85E3a5Xa
         7cw8/HYrXejNBEzYhH7fijEhrUmEvrbLYZrWiIMd15UZ7cL1QxvHhLX5vL+8597mu3tA
         Ovdx7nKYuci6wr4wjbthVkCC+0QcALEJzr/W1/aEkzdyDgrUTreWgjsN+7OFsvkBsdGm
         jSaIHgdc0006XA4mJBWcgiFAMX67kMNAcx23QJT29MJDo5S4FltbbMGsjthKTAG7erAG
         PgKEf//HLvsl5NI++lXyDZRQljXmv01DgiU9QwOxpSvgpidv7BROmppiP+Hgpm8/p1Aa
         9hig==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:to:subject
         :sender:dkim-signature;
        bh=MU9AhoaT0uiUziT21KR6Qh84JgeRmva2L32AMxDD6ow=;
        b=Lw0aNOt4S9kyTHgxZTpdt1zd/WzuQkac6HiY3jKFlvGSgww+UtXCZpchO0ck3R/AQM
         UoPonZkQezbHbJAAo6aATlEseb0yPG7O84b09u6XAT/MDP8X9jIBAKZiLrKl74PfZ/su
         2ZUpYvQwVtr1VSKTQBsvovsdQB29geZnVzJ6Lyio/t7MDzz8KlaZZ8qPp2V06QRSlIjh
         zjFnlukAV1pNp0ImNKjvM/Keng7HQ1UoUDYuAA+7MUSyv/p4RJOsbh/r9a/Qxk2wYRjD
         sZA+w+zhi0c5jQtbGK2b0FLwEL1ZZ/CaEnmI6EdEXML34AAzqrf6YPQU9Tj759DqS77p
         KaYw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="Ua+fk/B0";
       spf=pass (google.com: domain of tstellar@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=tstellar@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=MU9AhoaT0uiUziT21KR6Qh84JgeRmva2L32AMxDD6ow=;
        b=HkvThOfy9wGrjLqBPkjgSGG6ZcdicUTADrkkGxFljbzqIZ/JkaUUDketTMThhWPTJ7
         1dckUNBMFGDJVpp+NvoZZU7e4UB/DPYsBW8vKoqMtoxQPP5qXhwtYpT1105JyuYQjaF3
         hN4JYsrgsEmYpq36mDYjatIFeC+rDFZfcJAKy3CoLUW8zK69OODtUI2aK3Ds7itPRiJz
         V91TkYGKGaRN+cyLDUmHc5XQ4AOe8m2GkD9o5Hzfz4wR5fZqWOxgW5fDSOLhTbf//r8e
         N3CpFez0nieGzG9pIABTWfTH3SjkBU6MT1rjkzW84rjeucz9kjwBhNRluB8R+SnRie9q
         N8lA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=MU9AhoaT0uiUziT21KR6Qh84JgeRmva2L32AMxDD6ow=;
        b=cr182pIDtBrEH0z4oPmfG61ySc3lxcP7B7SvtE5SpJTrHJwPB0ClJdXbNXe+7scE5m
         hvrA+gL9xou15G1kHCpFK/+I9NlAFSgMv+PfsXirKFbZ0yXj39MVCsDFsPDpSNZIMCbQ
         ZX6WFA85VkVayrF67sKuV34Kn3TePqeJwULS42Yb2hLU0zUsyNQB2eCSzp9cUCASqCC5
         siY+WpIr+sAD+9aOL1dbOVf2YS95sFGRxHlPJNroXGEwOXq6J9xsXMQv0Kvp8+rDNUfP
         Xc4aa9/jn8eLetGpCs2Y9SlYqpYvcAHhBykmzoXIalsGPxYNxDKfWIWxNu3cveQWQ5iO
         NVnQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530Y5gxZ40Re2H5KC5XleWUkt09xSgz6qg27UiEL9CpzdkH+Ngjo
	4wkQ8nUMlwkQiFcDc5lVSm8=
X-Google-Smtp-Source: ABdhPJxdr7YTSaAc326OZC+GapoqPGgRKb3Br29muWOC+sEKsJDwVPn99JL+ab8JrqS9Hp3vxOjJ1Q==
X-Received: by 2002:a9d:644f:: with SMTP id m15mr1413181otl.99.1621462490281;
        Wed, 19 May 2021 15:14:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:f40a:: with SMTP id s10ls322235oih.4.gmail; Wed, 19 May
 2021 15:14:49 -0700 (PDT)
X-Received: by 2002:aca:47d2:: with SMTP id u201mr1218119oia.19.1621462489852;
        Wed, 19 May 2021 15:14:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621462489; cv=none;
        d=google.com; s=arc-20160816;
        b=fS86Y89YouyyX9tE9qb4PqxcDpieZsiTgDdz6mBsTFn6jbD/S4Em3m9RXFb2EYgreX
         LCA/4vQCReVOj8+VcA+DTJL5nKIxoC9T834z8sHRfTyEj/aQ5cBqcc6EFNQd26Zje08l
         7wkm21yZDUehMqSRAcAc9BX2VMaWXtcfDSRClEyZBH1sMqEKbyEGY0jDHO9+bZLIFz1J
         CZM1jUewjmx0PQ3tK3pLGMu5u+LHbU5Ub1OB8DasnYH9GQIloEl3Nm7l8MK76nugi6oS
         lR/5YdXVkyiwNUp/NTnTJykpmI20+jw5/NlwAFvzsL6LDv6AZbahiB0BuQqNDMNwFwdU
         W7eA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:to:subject
         :dkim-signature;
        bh=WseFKG+zKG3kEUMytyN+ox61mmCt15DZG2nu1mJLETg=;
        b=LunFu5CMKl/PcYqR0SHckV2WyIZ3dmumTYWguBmJDVIS1TrAV685oJT5Lf7G3u1U/t
         n/0bIqvDlaZaaFzUKzPAgDnJn9cZ77mk4yHulzqZL32JDVAQQ4U7yVZeiHPb/Snedxpy
         JdIja1H2kQNwXqZETCC24UZPXZPGg91Bm57JnBvU/C6fIK7lU9VWOIVTf21ErynZl+f+
         EJ58lNjFaAt/E8qjn/qZADqLGnFypwd8IlPI+agXpijWYjZ7/O0YWUS9p7nEWnnvOBvY
         oxzjYUwO4+OHZqHWaWuWmit6N922FvWREbVTaAaYO4T8uH2CmAkd2nA49h1QJNBdKTaj
         3/bw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b="Ua+fk/B0";
       spf=pass (google.com: domain of tstellar@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=tstellar@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.133.124])
        by gmr-mx.google.com with ESMTPS id w16si115955oov.0.2021.05.19.15.14.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 19 May 2021 15:14:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of tstellar@redhat.com designates 170.10.133.124 as permitted sender) client-ip=170.10.133.124;
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com
 [209.85.160.198]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-410-ggcWAeKoNxCrXQr4MH7iBw-1; Wed, 19 May 2021 18:14:45 -0400
X-MC-Unique: ggcWAeKoNxCrXQr4MH7iBw-1
Received: by mail-qt1-f198.google.com with SMTP id h2-20020a05622a1702b02901b9123889b0so10859295qtk.10
        for <clang-built-linux@googlegroups.com>; Wed, 19 May 2021 15:14:45 -0700 (PDT)
X-Received: by 2002:ae9:ed86:: with SMTP id c128mr1787895qkg.224.1621462485211;
        Wed, 19 May 2021 15:14:45 -0700 (PDT)
X-Received: by 2002:ae9:ed86:: with SMTP id c128mr1787867qkg.224.1621462484970;
        Wed, 19 May 2021 15:14:44 -0700 (PDT)
Received: from tstellar.remote.csb (97-120-197-204.ptld.qwest.net. [97.120.197.204])
        by smtp.gmail.com with ESMTPSA id w9sm586148qtt.59.2021.05.19.15.14.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 May 2021 15:14:44 -0700 (PDT)
Subject: =?UTF-8?Q?Re=3a_=e2=9d=8c_FAIL=3a_Test_report_for_kernel_5=2e13=2e0?=
 =?UTF-8?Q?-rc2_=28mainline=2ekernel=2eorg-clang=2c_c3d0e3fd=29?=
To: CKI Project <cki-project@redhat.com>, clang-built-linux@googlegroups.com
References: <cki.0926F8B88A.HVGY60O4FW@redhat.com>
From: Tom Stellard <tstellar@redhat.com>
Message-ID: <d42c51d6-4385-1a08-45b2-bb76e04fafae@redhat.com>
Date: Wed, 19 May 2021 15:14:42 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.1
MIME-Version: 1.0
In-Reply-To: <cki.0926F8B88A.HVGY60O4FW@redhat.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: tstellar@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b="Ua+fk/B0";
       spf=pass (google.com: domain of tstellar@redhat.com designates
 170.10.133.124 as permitted sender) smtp.mailfrom=tstellar@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

On 5/19/21 10:18 AM, CKI Project wrote:
> 
> Hello,
> 
> We ran automated tests on a recent commit from this kernel tree:
> 
>         Kernel repo: https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
>              Commit: c3d0e3fd41b7 - Merge tag 'fs.idmapped.mount_setattr.v5.13-rc3' of gitolite.kernel.org:pub/scm/linux/kernel/git/brauner/linux
> 
> The results of these automated tests are provided below.
> 
>      Overall result: FAILED (see details below)
>               Merge: OK
>             Compile: FAILED
>   Selftests compile: FAILED
> 
> All kernel binaries, config files, and logs are available for download here:
> 
>    https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/index.html?prefix=datawarehouse-public/2021/05/19/306014231
> 
> We attempted to compile the kernel for multiple architectures, but the compile
> failed on one or more architectures:
> 
>               s390x: FAILED (see build-s390x.log.xz attachment)
> 

I suspect this failure might be fixed by this commit:

https://github.com/llvm/llvm-project/commit/067c06dc8395a2d79792c0ac4e48c2a79836b46f

Which will be available in the 12.0.1-rc1 release.

-Tom

> We hope that these logs can help you find the problem quickly. For the full
> detail on our testing procedures, please scroll to the bottom of this message.
> 
> Please reply to this email if you have any questions about the tests that we
> ran or if you have any suggestions on how to make future tests more effective.
> 
>          ,-.   ,-.
>         ( C ) ( K )  Continuous
>          `-',-.`-'   Kernel
>            ( I )     Integration
>             `-'
> ______________________________________________________________________________
> 
> Compile testing
> ---------------
> 
> We compiled the kernel for 4 architectures:
> 
>      aarch64:
>        make options: make LLVM=1 -j24 INSTALL_MOD_STRIP=1 targz-pkg
> 
>      ppc64le:
>        make options: make CC=clang -j24 INSTALL_MOD_STRIP=1 targz-pkg
> 
>      s390x:
>        make options: make CC=clang -j24 INSTALL_MOD_STRIP=1 targz-pkg
> 
>      x86_64:
>        make options: make LLVM=1 -j24 INSTALL_MOD_STRIP=1 targz-pkg
> 
> 
> We built the following selftests:
> 
>    x86_64:
>        net: OK
>        bpf: fail
>        install and packaging: OK
> 
> You can find the full log (build-selftests.log) in the artifact storage above.
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/d42c51d6-4385-1a08-45b2-bb76e04fafae%40redhat.com.
