Return-Path: <clang-built-linux+bncBCH6BRHDXYLRBAOTYCCAMGQENYRDSRA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53f.google.com (mail-pg1-x53f.google.com [IPv6:2607:f8b0:4864:20::53f])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FE83371BC9
	for <lists+clang-built-linux@lfdr.de>; Mon,  3 May 2021 18:49:07 +0200 (CEST)
Received: by mail-pg1-x53f.google.com with SMTP id a15-20020a634d0f0000b0290209ec44cf15sf3257632pgb.0
        for <lists+clang-built-linux@lfdr.de>; Mon, 03 May 2021 09:49:07 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620060546; cv=pass;
        d=google.com; s=arc-20160816;
        b=EIQN/rQ6AcDJiN52paNaTQC01rHO8p0wkxhNSg4/E4YfmxmHV3hXTdhoZavttnE0M1
         WpOxsoA+KZw1c+/T9HjzH8E+e4eHe/bBDTfn9V0n/tWa3qh9f9q9uESw8uc4ZdKDZygU
         9/tpyhZfvwlFwi1s/QBA9sx2ar2DQBkCXKpS7WbJ+rRm5Ym5oN4uAuDrYBieYfOkN8y3
         Ama50+has8MULD9WfaFCoTQWIfw42hag2SvpE63yVbEW7RkzxiZxMVm3FCozUK2hIklz
         1dd7iCIZGvnL7NReSmy94mJaSaao9Iv81oa/DwSc3dtS/gy+jGUQjMMipVkOJwYyI0Nq
         bBfw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=6AlLXYYSaAKiO4IgRenvn8cfuXkIy/yM5uiNw6qtz+g=;
        b=sMcVvb7E1l4B/VPvxfHl1h7z96ZT0f2eDPEEveoC4dExjWIDgu2EoDl+9cc9sb8E6f
         m76uHeR8v69U8Pv54Pj8nMD6OCjToBXBcPgArIoBIwsSeLaH6zQjsJgPQKPOn+aFdPkH
         iX7lUAzyeJaU2w9QMN/YSJrrr1v2H7h2n24yXKzRcxdsymZFawNcbYWBjBkm0Fts8FOh
         tuT5Fj6KnJZOXUHyvK7oz50TaEfPj8qCHZwSRdEzOyN2Ft7oleHrwfSWBfHrs0Kalycj
         OFyJVR28DBgE0MNwubob5HF8Rf7H0Z0ZpEl+rdEK7aPqhuopdpZ5NMjBc5fKjM0lIb7u
         c4hQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=BDA9+Iv7;
       spf=pass (google.com: domain of tstellar@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=tstellar@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=6AlLXYYSaAKiO4IgRenvn8cfuXkIy/yM5uiNw6qtz+g=;
        b=OU/aF3rqLL0dYJv4uFsEEBXBGrgxkATEq/oNgVggL3p9HL7Dt59Uhh5jz/1CGMf1bv
         fhTWXP3x32Ky38axyCtzHEttrNoBxFVgUhwk3RlzZWXhQb62O6RwBZ12DQF9yWDEKQdf
         MYdFLZ1sWvHWVczHTfLZnZXa29i5b9fW/LsreZevkHQYf/eNZbFeqX8jRSTmEWWZMCP5
         uIa3jHVxm+qgBO+ZQwNyq+DJmDDRbRnK7/A6QuGgllzY0p3ru5A8sE1MwsL38kzZmCF9
         SGsIu0Slo+zL/MhFRhn0TdXuEkEfY8Pkz0Hpk2EiCxAV/Z7Q8vYQKScqkHuRrAPjdcai
         iGOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=6AlLXYYSaAKiO4IgRenvn8cfuXkIy/yM5uiNw6qtz+g=;
        b=l7HEahEULGruI4xFy+EzaVQ1dv3UGY4drAgZVw5o9SGUoEw6eVe3xheKSsqVwz7mob
         BVUroEtSrd8xhCO2iEg9Cz26+zianwXbHTJCwLwar1DWi7PPICjy6W0Hoyz7ilUb0WCi
         EjL1WEaivsM3/B/veuwyMvjybEOyqP9Gz2SXRFhoC0ZbLZezfXy1MosU/91JkcYENfdf
         2WUyIx8eUwkzphSVNpy8f4BumnnBe7CDv5PCElmIfiEgMukFyvkM8wdAuixDF2KnnUw/
         Lr3DO+myfVRMlsljyPO+QEUlwQg4C0RTA5K7QaUt6tOz12C+PfmKGnsIUIrVWg5Lk6dd
         krxw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530RTHeWzWmtw9Ajj1s828opKu/i/t9vXPILULI6B7EAKemF2m3i
	uNZ3hCiuQbT0zTEO3NUc854=
X-Google-Smtp-Source: ABdhPJxKpnhuKQiBxLwhYyvwBcP2MzzA36VEKdLFuVxilGxRdREqWBuB3aGvpAJ0hqb7FxoEuxfqAQ==
X-Received: by 2002:a17:90a:d3c6:: with SMTP id d6mr21887558pjw.25.1620060546061;
        Mon, 03 May 2021 09:49:06 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:f87:: with SMTP id ft7ls6030pjb.2.canary-gmail; Mon,
 03 May 2021 09:49:05 -0700 (PDT)
X-Received: by 2002:a17:902:e8ca:b029:ec:bec2:ba6b with SMTP id v10-20020a170902e8cab02900ecbec2ba6bmr21467284plg.42.1620060545543;
        Mon, 03 May 2021 09:49:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620060545; cv=none;
        d=google.com; s=arc-20160816;
        b=Qj8x+BYOFDIUrO0D3iw92Bl8NEuYVNywovUVRx6GzLtBjfvrGEII6Cos/zjOnrtCwm
         1hXSQQ4xKeda18OohG/IKtD7177knPebI9OowbAPEf0QcZmnt7JZxYZUQ5bfPMLFAID6
         BFZzlVMsxM291o028nvA7PVorF4I8kM1ARbpLnaLUbIC9+X3JJqTas+KvHHX8+MMTH/3
         guIIsBJd8uLDTLRUIuHLtp4T3xcrHZT45WVDZGQ1bPIgmcBJtqQFTUpfwFoyggwlmp1u
         nEXDoy/8ek+IIulBqmhT/j7HMCEA3iSTIlW9CpeOJ+yp2N1+4PEKumKqrVSo3rMZPGW5
         8JsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=Yu8qvLbcCAvAnFk4XShMevVgYK+FRf9Q7zPytdY+pxs=;
        b=NvltJ/310QKLviDn3oMdqMiExpnwicgpROq5um56ZDDNr8CI7y6kuKf+dy8sIUGzPA
         ihlHD19+R6Vq3P4zzzsqZ12fNAHDvAx+j1ybZJxvglH/ucuwxAD2aUb+Ql9ejqa4Q+9i
         RMJDCK3Lkhx7CQpH/L9MT+yAWT9yArPUgLMqaPAJ9RsE7IhuEccnGGGOCZeFUTf3dbXY
         prJ1JMW+7bqz8Y1WQf0BTAiPjYPm3vZKfW/CKc6wTorfUfWalVIMxlB5/kTXaQkAbmSr
         Hrhde9JRtKsfChmwUTEulLnfICAXM/X4d/+OvmiWhJO9KfFoPvIMhRL4nAZe8JCEbxSn
         e3jw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=BDA9+Iv7;
       spf=pass (google.com: domain of tstellar@redhat.com designates 170.10.133.124 as permitted sender) smtp.mailfrom=tstellar@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [170.10.133.124])
        by gmr-mx.google.com with ESMTPS id a8si5061plp.2.2021.05.03.09.49.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 03 May 2021 09:49:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of tstellar@redhat.com designates 170.10.133.124 as permitted sender) client-ip=170.10.133.124;
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com
 [209.85.222.197]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-352-T9U0Q6DLNH6LMMGHs9ACUQ-1; Mon, 03 May 2021 12:49:00 -0400
X-MC-Unique: T9U0Q6DLNH6LMMGHs9ACUQ-1
Received: by mail-qk1-f197.google.com with SMTP id h15-20020a37de0f0000b029029a8ada2e18so5557030qkj.11
        for <clang-built-linux@googlegroups.com>; Mon, 03 May 2021 09:49:00 -0700 (PDT)
X-Received: by 2002:a05:620a:389:: with SMTP id q9mr11102362qkm.16.1620060540314;
        Mon, 03 May 2021 09:49:00 -0700 (PDT)
X-Received: by 2002:a05:620a:389:: with SMTP id q9mr11102350qkm.16.1620060540143;
        Mon, 03 May 2021 09:49:00 -0700 (PDT)
Received: from tstellar.remote.csb (97-120-191-206.ptld.qwest.net. [97.120.191.206])
        by smtp.gmail.com with ESMTPSA id s25sm8447596qkj.34.2021.05.03.09.48.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 May 2021 09:48:59 -0700 (PDT)
Subject: Re: Very slow clang kernel config ..
To: Dan Aloni <dan@kernelim.com>, Nick Desaulniers <ndesaulniers@google.com>
Cc: Linus Torvalds <torvalds@linux-foundation.org>,
 Masahiro Yamada <masahiroy@kernel.org>, Nathan Chancellor
 <nathan@kernel.org>, Linux Kernel Mailing List
 <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Fangrui Song <maskray@google.com>, Serge Guelton <sguelton@redhat.com>,
 Sylvestre Ledru <sylvestre@mozilla.com>
References: <CAHk-=wjmNOoX8iPtYsM8PVa+7DE1=5bv-XVe_egP0ZOiuT=7CQ@mail.gmail.com>
 <CAKwvOdmMF_v9TzBtFn2S1qSS_yCDO8D-u3WhBehUM7gzjcdjUQ@mail.gmail.com>
 <CAKwvOdk+V2dc31guafFM=N2ez4SrwCmah+mimUG3MzPMx_2efQ@mail.gmail.com>
 <CAKwvOdn3uXniVedgtpD8QFAd-hdVuVjGPa4-n0h64PTxT4XhWg@mail.gmail.com>
 <CAKwvOdm3D=dqKw=kx46PLaiqfHOZJL3QFKGc8kxqJqpwdFFWqw@mail.gmail.com>
 <CAKwvOdkp_P8BCtFuKqDrtC_=A89ZfDf66Yr3FL2e=ojwv4KaMA@mail.gmail.com>
 <CAHk-=wi1yiBBr3b3RbCEte6-yzAApsZN5zRdr3xoW8Av9jOX=Q@mail.gmail.com>
 <CAKwvOdk0nxxUATg2jEKgx4HutXCMXcW92SX3DT+uCTgqBwQHBg@mail.gmail.com>
 <20210502051909.pac2pycninc7fl53@gmail.com>
From: Tom Stellard <tstellar@redhat.com>
Message-ID: <6c4febd7-f826-9935-4163-138b1fed8278@redhat.com>
Date: Mon, 3 May 2021 09:48:57 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.1
MIME-Version: 1.0
In-Reply-To: <20210502051909.pac2pycninc7fl53@gmail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: tstellar@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=BDA9+Iv7;
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

On 5/1/21 10:19 PM, Dan Aloni wrote:
> On Fri, Apr 30, 2021 at 06:48:11PM -0700, Nick Desaulniers wrote:
>> On Fri, Apr 30, 2021 at 6:22 PM Linus Torvalds
>> <torvalds@linux-foundation.org> wrote:
>>>     0.92%  libLLVM-12.so       llvm::StringMapImpl::LookupBucketFor
>>
>> ^ wait a minute; notice how in your profile the `Shared Object` is
>> attributed to `libLLVM-12.so` while mine is `clang-13`?  Clang can be
>> built as either having libllvm statically linked or dynamically; see
>> the cmake variables
>> LLVM_BUILD_LLVM_DYLIB:BOOL
>> LLVM_LINK_LLVM_DYLIB:BOOL
>> BUILD_SHARED_LIBS:BOOL
>> https://llvm.org/docs/CMake.html
>>
>> I think those are frowned upon; useful for cutting down on developers
>> iteration speed due to not having to relink llvm when developing
>> clang. But shipping that in production? I just checked and it doesn't
>> look like we do that for AOSP's build of LLVM.
> 
> There's also `-DLLVM_ENABLE_LTO=Thin` that enables LTO for building LLVM
> and Clang themselves, considered they can be bootstrapped like this
> using a previous version of Clang. Combining that with a non-shared
> library build mode for both Clang and LLVM, the result is possibly the
> fastest and most optimized build that is achievable.  Unfortunately I
> see distributions neglecting to enable this in packaging this as well.
> 
> On a side note, I'm also a Fedora user and agree with Linus about this.
> I'd like to see an opt-in bypass of the shared library policy via
> something like `dnf install clang-optimized` that would install the
> fastest and most optimized Clang build regardless of RPM install size.
> 

I have experimented with creating a static version of clang in the past,
but never really found a solution I liked enough to upstream into Fedora.
e.g. This solution[1] that we're using to bootstrap clang in our internal
clang-as-the-default-cc Fedora buildroots that we use for testing.

If someone could file a bug[2] against the clang package in Fedora (or RHEL even)
with some data or other information that shows the downsides of the shared
build of of clang, that would be really helpful.

-Tom

[1] https://src.fedoraproject.org/fork/tstellar/rpms/clang/c/dea2413c6822cc7aa7a08ebe73d10abf8216259f?branch=clang-minimal
[2] https://bugzilla.redhat.com/

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/6c4febd7-f826-9935-4163-138b1fed8278%40redhat.com.
