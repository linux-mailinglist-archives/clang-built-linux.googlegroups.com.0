Return-Path: <clang-built-linux+bncBDC2RCVE24NRBUNS6KEQMGQEKPTIKZQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73e.google.com (mail-qk1-x73e.google.com [IPv6:2607:f8b0:4864:20::73e])
	by mail.lfdr.de (Postfix) with ESMTPS id 604B8407655
	for <lists+clang-built-linux@lfdr.de>; Sat, 11 Sep 2021 13:56:02 +0200 (CEST)
Received: by mail-qk1-x73e.google.com with SMTP id 23-20020a05620a071700b00426392c0e6esf34708337qkc.4
        for <lists+clang-built-linux@lfdr.de>; Sat, 11 Sep 2021 04:56:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631361361; cv=pass;
        d=google.com; s=arc-20160816;
        b=mlgP4qw1+Xv/iYbWNmpPkqVp+nJOZbyUfIqpZAmhvlqGxfyx/1iW1SBqSO0o5Lleqy
         Zk6m4HkZDYiaehvf2EDPonGAvi0bemYIfC9RPsLSbMGlBwjQ2sVoo8p7X2OqyR8Zzb6x
         ZwJNpdt1ZKOd6/KT+w5nMj+ApdScM9bv+qABKp97VkYDOYHKVkWobmHXnc6+OOMhCmLC
         hMxKus3vZFYmgEOhe+DVZvrxW8liLD3EyoVG8pYEwgQbZf49UavVitBviyBmGnEpEhlt
         gh8Vj0VfjpWfzOh9rgE/zvpD/8I3YqRcW/lmGCCbjEowujccGzs54f8wEUq4Iaaa49lU
         xX4Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=DOLFgGcn3PT7wpYD26aLS4cmxXQiFFWJnFpUQb+PEZw=;
        b=w4/hqpxiV84+L4chljI/u4OE0LTBuPu/uk5qmCzD9uAkSNZEDpTH5knIgjshdXH5hY
         98g2wUWvyB7ByTPFjmkIO0Jk1DfKaxHaZqXrnNn4l76lgoazCk41sWjDugFCRP4YE6H9
         gz+n2L36z+FR7p8AEqImpIBdbJNt4+9/NoOPMfWCUfQS/n0fJykZ3tlAJcpdSSERS/8k
         c9wBfbZa1k3ww04KgdfxFuTXcz/oIcATti01C+IW6llwBMMT4pVnCRv5BPE0N9sMtRIf
         PLbZPj97isZUwyMAnHFAx+rxdKq5M9hkMtSAVxmPq4lHZdfCN/4+oFJV1w6d0h5/cK7a
         rU5g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of ashimida@linux.alibaba.com designates 47.88.44.36 as permitted sender) smtp.mailfrom=ashimida@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=DOLFgGcn3PT7wpYD26aLS4cmxXQiFFWJnFpUQb+PEZw=;
        b=Yh8jiXt+2SWH4W9N3IwYjzU/Nr8EF4C2YOfF2YQcBTQKbnNayKp3SBeezZ2ujMbE4A
         e4lwUcL5R0huAqWRs7IUPtkBGCL3LFMxbhq6A4Z3Pb2Xy4cPK448mG5NKKmR6NsfXnME
         984XQIPCHMjc3Vj5cYbdr6veymBmHR9ck7b6+p1H0iOFWvIfs0wdhcI1iFH54MN5Cq2R
         v0SDsLIymG4DvDPnhj4Pjc7TStdBAmBc+EgGg26n5XmU8R6QJ6gLpXkHRjVvFJz+Kz1Y
         zWO5CaP62RAXv8agvDhbQCl3e53AgIaOjBfB/y/OGUVcrHSJjTCNHtLQKRII8TkatTe+
         jJjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=DOLFgGcn3PT7wpYD26aLS4cmxXQiFFWJnFpUQb+PEZw=;
        b=sgBjHfwYWmU2HogsK0w5h9EFIJ/VnK1TnCCUgjaeHowEIRJKy3BeZ3gyB12f/DfBMG
         RX27Od8rg05S/1kJf3HqOHXKdzPLODm/MMP3SOwvU35gbIRW9Oi0ZxjcP251wyF6Hhjp
         F7VxWs/zZ1zZEYfqYfDxT3qze8y2yquWpIiUF72/55SBdIoti5q05hG57PMsw39N2T0C
         A33U9/WVDFKlJzH+/5ugnqJlnDC6B0gcEx1AwiHLpW2mTwaJK3iQTttXJ8W6yocdk9Ha
         Ch2yQTgndoo4nvcLiXSpDr1Ye0FVefzI7PxDF7beUtj2lAc3To5OkklIQORpXcH+NZ2H
         jiwA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530a84DKqVgWDYNvosvpZHolsTR5Xjvh+5lQmTKl61TUXlrovdpY
	ryZVDUXpQtI8JKf/GUOj2X0=
X-Google-Smtp-Source: ABdhPJxgziELmRm9nTKiJLAgjJsRi7rEFjbfAxetAFD7EPW2nwvOu1sYQ2GoZZ2pE7v7QyFBpBrC4Q==
X-Received: by 2002:a05:622a:2d0:: with SMTP id a16mr1873007qtx.402.1631361361325;
        Sat, 11 Sep 2021 04:56:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:a4c7:: with SMTP id n190ls1361415qke.4.gmail; Sat, 11
 Sep 2021 04:56:00 -0700 (PDT)
X-Received: by 2002:a37:e14:: with SMTP id 20mr1785358qko.229.1631361360855;
        Sat, 11 Sep 2021 04:56:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631361360; cv=none;
        d=google.com; s=arc-20160816;
        b=q/kP7KkNDrBQ87J6shMgz5O7Elp2QCZjpqeNxKG+UOg0tO4runjfMwdZDU+hYV+8e8
         D3TInDkl3+YlnJq7ChMttWiC0WyZfBMs10XtB2bANvzh13gNBBaZc81RypIaF7ZnxXYU
         J/Ti4HcLV58RyzEWGyorW5MEyVM8ckhKwHOWfPLkpp0Mm/I6vgyBwAI6VlVfVe+/6f/J
         N2cA03HR0h7opytcKLqoGYEKqnGqUvQdSMDde9suSHGExcjOpN1AJHLfPL2+QYDQ9fa1
         ZP0jWsnF1pvE/yt1jhq0kbc3OGDVe4rAnFfPu674MJPgybSdnWp0TVWJLAGDZKnRZU8N
         h7qg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=tACngPECUDvxLZR5Q8TdSwlr/XRxb80ydxRDmiZisbA=;
        b=nVQG/MQYfIm4I6/6Cs48iUzyg7QJSCsy/xHONlY0kgDMjs4l+2at6aaiiHGAob/9gq
         nkC9ZS0SiWEfqXTuvOGWB/7P9yCA1k1wCC6Fgn0TQkpUPBDcKKhZojY9Jgq/6B2zQ2Af
         MUD1ppGR9Di4utSGohUPElnVwfPTkg/sCjuAuZeGL6U7+qCsCsJs0SlKr0KMTaGn/D26
         EgJj1Hh+p82qKwlIKshiBg3MV3O5k95oID+5b3uyxq0v8Q7PF+aAcB1heBmPWRq+iBhS
         8052wfquwr6vYyVApae9f5v8OrRu//+qJNILSoSAyuWyrsHgMOTuh4SM3P/HVdeFsV79
         YqfQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of ashimida@linux.alibaba.com designates 47.88.44.36 as permitted sender) smtp.mailfrom=ashimida@linux.alibaba.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
Received: from out4436.biz.mail.alibaba.com (out4436.biz.mail.alibaba.com. [47.88.44.36])
        by gmr-mx.google.com with ESMTPS id b125si141133qkf.0.2021.09.11.04.55.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 11 Sep 2021 04:56:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of ashimida@linux.alibaba.com designates 47.88.44.36 as permitted sender) client-ip=47.88.44.36;
X-Alimail-AntiSpam: AC=PASS;BC=-1|-1;BR=01201311R111e4;CH=green;DM=||false|;DS=||;FP=0|-1|-1|-1|0|-1|-1|-1;HT=e01e04423;MF=ashimida@linux.alibaba.com;NM=1;PH=DS;RN=8;SR=0;TI=SMTPD_---0Unzk85B_1631361353;
Received: from ashimida.local(mailfrom:ashimida@linux.alibaba.com fp:SMTPD_---0Unzk85B_1631361353)
          by smtp.aliyun-inc.com(127.0.0.1);
          Sat, 11 Sep 2021 19:55:54 +0800
Subject: Re: [PATCH] [RFC] kbuild: add CLANG_TRIPLE to prevent clang from
 compiling with wrong --target
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: masahiroy@kernel.org, michal.lkml@markovi.net, nathan@kernel.org,
 linux-kbuild@vger.kernel.org, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com, Alistair Delva <adelva@google.com>
References: <1631173363-40160-1-git-send-email-ashimida@linux.alibaba.com>
 <CAKwvOdnuiV3mHxxCpWbMaZn9vggL4B+PPrMtuX=QOO-yUQj2mA@mail.gmail.com>
From: ashimida <ashimida@linux.alibaba.com>
Message-ID: <2e10c444-50e2-0f86-f86e-ffb982059c88@linux.alibaba.com>
Date: Sat, 11 Sep 2021 19:55:53 +0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:68.0)
 Gecko/20100101 Thunderbird/68.12.1
MIME-Version: 1.0
In-Reply-To: <CAKwvOdnuiV3mHxxCpWbMaZn9vggL4B+PPrMtuX=QOO-yUQj2mA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: ashimida@linux.alibaba.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of ashimida@linux.alibaba.com designates 47.88.44.36 as
 permitted sender) smtp.mailfrom=ashimida@linux.alibaba.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=alibaba.com
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

Hi Desaulniers,

I now understand the meaning here, the command works fine for me.

Thank you very much for the reply!

On 9/10/21 1:19 AM, Nick Desaulniers wrote:
 > On Thu, Sep 9, 2021 at 12:42 AM ashimida <ashimida@linux.alibaba.com> 
wrote:
 >>
 >> Kernel compiled with tool chain CROSS_COMPILE=aarch64-linux-android-
 >> will panic during the startup phase.
 >>
 >> Clang's --target option comes from $(CROSS_COMPILE). At the time
 >> -fstack-protector-strong is enabled, and compiled with command:
 >> make CC=clang HOSTCC=clang ARCH=arm64 
CROSS_COMPILE=aarch64-linux-android-
 >>
 >> clang will insert code like:
 >>     mrs     x8, TPIDR_EL0        //default value is zero
 >>     str     x8, [sp]
 >>     ldr     x8, [x8, #40]        //access addr 0x40
 >>
 >> instead of the code that accesses __stack_chk_guard to get the
 >> canary, which will cause the kernel to crash due to 0x40
 >> address access.
 >>
 >> This patch (from android) is used to remind the user that current
 >> tool chain cannot be used as the "--target" of clang, the user
 >> should specify an additional "--target" through CLANG_TRIPLE.
 >
 > Hi Ashimida,
 > Thanks for sending this patch; I recognize it from Android, which we
 > had to carry for years due to:
 > 1. reliance on GNU `as` ie. "GAS"
 > 2. not distributing binary prefixes of GNU binutils with a target
 > triple that clang recognized. (ie. Android's binutils were prefixed
 > aarch64-linux-android- while Clang expected something more like
 > aarch64-linux-gnu for --target=)
 >
 > We solved this by working out the issues in clang's assembler.  With
 > LLVM=1 LLVM_IAS=1, we no longer rely on GNU binutils, and no longer
 > need such patch.  You'll find it's been dropped from Android Common
 > Kernels now.  With mainline, LLVM_IAS=1 is now the default when
 > building with LLVM=1, and CROSS_COMPILE is now inferred from ARCH for
 > LLVM=1 as well.
 >
 > So all you should need is:
 > $ ARCH=arm64 make LLVM=1 -j$(nproc)
 >
 > Is there a reason why the above doesn't work for you?  I do not wish
 > to see this patch upstream (or downstream; it should be unnecessary).
 >
 >>
 >> Signed-off-by: ashimida <ashimida@linux.alibaba.com>
 >> ---
 >>   Makefile                 | 6 +++++-
 >>   scripts/clang-android.sh | 4 ++++
 >>   2 files changed, 9 insertions(+), 1 deletion(-)
 >>   create mode 100755 scripts/clang-android.sh
 >>
 >> diff --git a/Makefile b/Makefile
 >> index 61741e9..09bb314 100644
 >> --- a/Makefile
 >> +++ b/Makefile
 >> @@ -586,7 +586,11 @@ CC_VERSION_TEXT = $(subst $(pound),,$(shell 
$(CC) --version 2>/dev/null | head -
 >>
 >>   ifneq ($(findstring clang,$(CC_VERSION_TEXT)),)
 >>   ifneq ($(CROSS_COMPILE),)
 >> -CLANG_FLAGS    += --target=$(notdir $(CROSS_COMPILE:%-=%))
 >> +CLANG_TRIPLE    ?= $(CROSS_COMPILE)
 >> +CLANG_FLAGS     += --target=$(notdir $(CLANG_TRIPLE:%-=%))
 >> +ifeq ($(shell $(srctree)/scripts/clang-android.sh $(CC) 
$(CLANG_FLAGS)), y)
 >> +$(error "Clang with Android --target detected. Did you specify 
CLANG_TRIPLE?")
 >> +endif
 >>   endif
 >>   ifeq ($(LLVM_IAS),1)
 >>   CLANG_FLAGS    += -integrated-as
 >> diff --git a/scripts/clang-android.sh b/scripts/clang-android.sh
 >> new file mode 100755
 >> index 0000000..9186c4f
 >> --- /dev/null
 >> +++ b/scripts/clang-android.sh
 >> @@ -0,0 +1,4 @@
 >> +#!/bin/sh
 >> +# SPDX-License-Identifier: GPL-2.0
 >> +
 >> +$* -dM -E - </dev/null 2>&1 | grep -q __ANDROID__ && echo "y"
 >> --
 >> 2.7.4
 >>
 >
 >

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/2e10c444-50e2-0f86-f86e-ffb982059c88%40linux.alibaba.com.
