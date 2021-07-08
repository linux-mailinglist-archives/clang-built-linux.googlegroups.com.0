Return-Path: <clang-built-linux+bncBCFYN6ELYIORB2GZTSDQMGQEGYUK3PY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103d.google.com (mail-pj1-x103d.google.com [IPv6:2607:f8b0:4864:20::103d])
	by mail.lfdr.de (Postfix) with ESMTPS id B657D3C176B
	for <lists+clang-built-linux@lfdr.de>; Thu,  8 Jul 2021 18:50:49 +0200 (CEST)
Received: by mail-pj1-x103d.google.com with SMTP id v4-20020a17090a4ec4b02901731757d1a2sf3944332pjl.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 08 Jul 2021 09:50:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625763048; cv=pass;
        d=google.com; s=arc-20160816;
        b=xCi6pdyyG90oiipJUF8HAQ01uSBDee90/Eah5P+uM1ptYA8IOEWFxtuoHfjrkFEpiI
         b8T5bSMc/2piuN28doe35eumTsw44Ts4apinMWvb0ZT8ffvWrbYOL3VIa+wpIUDa5jrP
         znLXYwGrKeUcVY1D09oBMdC5sY1BNX4vGOwWONJxfIduvM/Q9UKr24D40MGOdB085vht
         0jlHgr9tx3OFrPKG9DsTw6Fokuwzv4AXMGty4HG3KeZZ1PJcbXTz7MtmRKr5EjAi7s9C
         mw67lVjCuEBw+4XINUV6FRkUy+fe1E4rDQYHlHhvwQ4S7GSWMOdxMnMoSeo1JwMXOyY/
         U1Kw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=vZ/FbO5bmm8VFltuNP63puscxj5aeoTLJEG0R2f71W8=;
        b=d1eB6apoNwJfZd05wBp9gg0vvV1YkQpCXBVDRhOpLHrPa1ldqmLYXZQDDn/eINJZWr
         njDrJ+M2YswIPrwv9hM/XEWbb61lcbJ2/iW3/ZN62OChE8J6nEVG3C9ftQlNC2P2LdUn
         9WopeX9KFblXU7DPi8i3xGhBqxager68lLjpN8NceAGLzxTPerfz7fZIJ50ZRonL8f0U
         zdZuSBekAO4Ws/3bEKR3TwVZpmIZuHC6+eliMHBNPFFxLiDTwPvrd81hj0+rRv/+35VV
         bwRimDwlWDQK21ocDLfrF2J7yfS7LsnTFFcqaL3WR4pJZA6aJD0a+3MNWhrZic8uW4Q6
         3aig==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=YEQI2B85;
       spf=pass (google.com: domain of pbonzini@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=pbonzini@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=vZ/FbO5bmm8VFltuNP63puscxj5aeoTLJEG0R2f71W8=;
        b=AXD6aMJ6Cvw6yXHkqYRD8QsBRNfiQvBFhYnmrjgO4UGs/2TgENrv/Hp3nCBg3bvIVV
         /QXk5Ir5TyaDQijQEms6IeEsmyjE+PNekox1s8oxRJezQ1kAg99AiOu+fGSSm944+d0d
         l7/pQJH2c0gKiadb2rwCMpYC8AJrXibGP9jFm0KLJY7zSP9Ijx4dOunaAF3ffDOoskuf
         u5UR4dk2TN82MFh6vKZ/2LgRy3Qd543X6NdnAvxvWOrqcvfHBaiBtjOAT+s/GSAVgKhM
         PpomSB2WKTLpiaLlm4vr5An9SIr1+i9doaMZ9r9gLzyzMAdPS0BroNKWnX5NA6NcV9X9
         LIMA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=vZ/FbO5bmm8VFltuNP63puscxj5aeoTLJEG0R2f71W8=;
        b=G23eyGAZGaNVt9Y50Mx4lmbeAsMCtJSFfGwL5FR3v6K/0O3IVqcjn6+nXm2KYxFQGT
         SvPKtzTar8XXi0yl27NcseOu6P55eN8VC+AtWEPy1sS4NQK+yB0JGGkKlFkiTxDaY1NX
         WwGXJDfqgCC6FmqLMROysbSWJyneH/fCQ+ncgCIdXBFe6bAZymRU5BeRq8DLt58oE3J1
         eG6YUstKK+sqC5igxgQt9x2eF1Mmu1rxQ65j5+JA/Hw31LqlZDwpeyVeuwwQuRJsUYv6
         doB8GbzuG6Dez7AlDyoiIp42daDhKgCZO1OpELZixwSCwV/bq22a+gWQwCb9sLeHqiJM
         Ko1g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532SsozhoZCmOGbfKsN0L+Area1Jninaw3y1EpyiF1actKldgNOS
	SbO5NfVtD7pJ80ZIymPqX1M=
X-Google-Smtp-Source: ABdhPJzWZFRv1JkZszGcjg7hoNenZHSlZ4k/WjK+Y9gJui4/7jUUTY6vnTz8Rp1tlkanmgJX5iRkNg==
X-Received: by 2002:a17:90a:a6a:: with SMTP id o97mr4909963pjo.179.1625763048482;
        Thu, 08 Jul 2021 09:50:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:c10c:: with SMTP id 12ls1529611pli.11.gmail; Thu, 08
 Jul 2021 09:50:47 -0700 (PDT)
X-Received: by 2002:a17:902:6902:b029:106:50e3:b2db with SMTP id j2-20020a1709026902b029010650e3b2dbmr26562365plk.35.1625763047892;
        Thu, 08 Jul 2021 09:50:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625763047; cv=none;
        d=google.com; s=arc-20160816;
        b=VeUIsQcmhrASJuDw44WfZQN+LvDL2i5Ab7O5iSxIb+ox9IYpTmTEeIpC8wA0nEFHq4
         Zxp9nMVmEQfBWKLtJQNRXAAxzVa+y2YqqX52UfhZ5L0priNJR1WDye9tDmfV7o7J9DJM
         JJFu0oa1YPVbnpGnqOH/j/tFCtgFkure15eT0RqODyZym2GorMCQtXJ7pqO0Z6VdzzlY
         HPIWUR9zqTKaM67i9/xVIHB/uXguVhq7CBcxn4ShSs710ZYi0DqZP6mQTAC67jhK49yQ
         caiIPO8VmQH35vDHF5V2xdcaLzxMLGgYg9y9VZnGybSEBtBWfXgQowO8pKx9Tj38XWez
         TuiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=2OB0zSrc/L137vieSn1bV5IcC6z0P+Q1vkoqM8xpfTo=;
        b=AS5hrC1y+bhlMjGXzIlo4l1zo487lFc+XFGLZMUCCzTRa7Jp5O+UuRBv1ElL6UG3ZL
         ykMnsnYkfqDl4VznwGM7br7LscjavolKxXtIUSDYy4BxsFXxX3yKLTqL9O/ib96tDuj8
         CFTz8RZwzrG1RHR5CWukC3ukvIqPGZz1BXmvaFWd3TmJebTkcQZqSzlW3FmxIhbJcutj
         lVSDb9MRBLmIegUO1v6e7wrVN9c0G9wpgNDcMpHdVaSfztuuD2YP8FfFVe69V+mjFXat
         xPpBYDiGLmNMPVhEwx2m6jX9d/tQ+sluDUH21K3K3Q03DLrNd4Ok8cWL7wzdaLEpoZfX
         tieA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=YEQI2B85;
       spf=pass (google.com: domain of pbonzini@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=pbonzini@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.133.124])
        by gmr-mx.google.com with ESMTPS id bt9si515018pjb.3.2021.07.08.09.50.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Jul 2021 09:50:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of pbonzini@redhat.com designates 170.10.133.124 as permitted sender) client-ip=170.10.133.124;
Received: from mail-ej1-f71.google.com (mail-ej1-f71.google.com
 [209.85.218.71]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-46-hxzucVh3OC6DNeL0ANJ7DA-1; Thu, 08 Jul 2021 12:50:46 -0400
X-MC-Unique: hxzucVh3OC6DNeL0ANJ7DA-1
Received: by mail-ej1-f71.google.com with SMTP id r10-20020a170906350ab02904f12f4a8c69so2116966eja.12
        for <clang-built-linux@googlegroups.com>; Thu, 08 Jul 2021 09:50:45 -0700 (PDT)
X-Received: by 2002:a17:907:d8c:: with SMTP id go12mr19890650ejc.442.1625763044459;
        Thu, 08 Jul 2021 09:50:44 -0700 (PDT)
X-Received: by 2002:a17:907:d8c:: with SMTP id go12mr19890610ejc.442.1625763044210;
        Thu, 08 Jul 2021 09:50:44 -0700 (PDT)
Received: from ?IPv6:2001:b07:6468:f312:c8dd:75d4:99ab:290a? ([2001:b07:6468:f312:c8dd:75d4:99ab:290a])
        by smtp.gmail.com with ESMTPSA id j6sm1618320eds.58.2021.07.08.09.50.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Jul 2021 09:50:43 -0700 (PDT)
Subject: Re: [PATCH 0/5] KVM: x86: Use kernel x86 cpuid utilities in KVM
 selftests
To: Jim Mattson <jmattson@google.com>, Ricardo Koller <ricarkol@google.com>
Cc: kvm@vger.kernel.org, Peter Zijlstra <peterz@infradead.org>,
 Ingo Molnar <mingo@redhat.com>, Arnaldo Carvalho de Melo <acme@kernel.org>,
 Mark Rutland <mark.rutland@arm.com>,
 Alexander Shishkin <alexander.shishkin@linux.intel.com>,
 Jiri Olsa <jolsa@redhat.com>, Namhyung Kim <namhyung@kernel.org>,
 "H. Peter Anvin" <hpa@zytor.com>, Sean Christopherson <seanjc@google.com>,
 Vitaly Kuznetsov <vkuznets@redhat.com>, Wanpeng Li <wanpengli@tencent.com>,
 Joerg Roedel <joro@8bytes.org>, Nathan Chancellor <nathan@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>, linux-kernel@vger.kernel.org,
 clang-built-linux@googlegroups.com
References: <20210422005626.564163-1-ricarkol@google.com>
 <c4524e4a-55c7-66f9-25d6-d397f11d25a8@redhat.com>
 <YIm7iWxggvoN9riz@google.com>
 <CALMp9eSfpdWF0OROsOqxohxMoFrrY=Gt7FYfB1_31D7no4JYLw@mail.gmail.com>
From: Paolo Bonzini <pbonzini@redhat.com>
Message-ID: <16823e91-5caf-f52e-e0dc-28ebb9a87b47@redhat.com>
Date: Thu, 8 Jul 2021 18:50:41 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <CALMp9eSfpdWF0OROsOqxohxMoFrrY=Gt7FYfB1_31D7no4JYLw@mail.gmail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: pbonzini@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=YEQI2B85;
       spf=pass (google.com: domain of pbonzini@redhat.com designates
 170.10.133.124 as permitted sender) smtp.mailfrom=pbonzini@redhat.com;
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

On 29/06/21 19:28, Jim Mattson wrote:
>> Thanks. I was thinking about kvm-unit-tests, but the issue is that it
>> would also be a copy. And just like with kernel headers, it would be
>> ideal to keep them in-sync. The advantage of the kernel headers is that
>> it's much easier to check and fix diffs with them. On the other hand, as
>> you say, there would not be any #ifdef stuff with kvm=unit-tests. Please
>> let me know what you think.
>
> I think the kvm-unit-tests implementation is superior to the kernel
> implementation, but that's probably because I suggested it. Still, I
> think there's an argument to be made that selftests, unlike
> kvm-unit-tests, are part of the kernel distribution and should be
> consistent with the kernel where possible.
> 
> Paolo?

I also prefer the kvm-unit-tests implementation, for what it's worth... 
Let's see what the code looks like?

Paolo

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/16823e91-5caf-f52e-e0dc-28ebb9a87b47%40redhat.com.
