Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBF6S72CQMGQE5UKYDEY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd40.google.com (mail-io1-xd40.google.com [IPv6:2607:f8b0:4864:20::d40])
	by mail.lfdr.de (Postfix) with ESMTPS id BADC439FD9D
	for <lists+clang-built-linux@lfdr.de>; Tue,  8 Jun 2021 19:30:00 +0200 (CEST)
Received: by mail-io1-xd40.google.com with SMTP id l15-20020a5e820f0000b02904bd1794d00esf5472452iom.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 08 Jun 2021 10:30:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623173399; cv=pass;
        d=google.com; s=arc-20160816;
        b=OEnVunH2e+h+3JMQgOLwflQiDd1u2uOJvCdwmtZg3OXOhtRVaN7kLaXD5/S44wM/mr
         qsSRldQZb/e7YKTYfbYG702yjZq3E3KQm8/o+2ED15vqKRKsJalZXYnmIr5m60e61r4E
         6jSkwqzcHu2rDUNizGTGULXnti5GyZBRyheyRTcsBLT6k+vjkSCHDGSVyp15kemLLr0T
         uv27uGF1pbkO8C6ddogL13UBBlsh2j3kFKWbkr5QQiUsvAPir2jRAhn/mYENHb8lYFcT
         pRJEreqB9xzuy7M5Q8Z+XG+XQA1cSfPicH7b2xvDJv8FkLdM4mEGoC5lGSNf1tBwgCLb
         +Qyg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=o1XAOSTReoSZXdwTcBLH8dUsgpTQuWQzdZ8d+OVTUwk=;
        b=BtFO9uSYdA9XATugm1itfE+GI5pcG1xbV7FsaMHllQmI0g12fEXLckbURFTh1uD6wT
         C6vmtLErvE3mqsSDOlUr0lorSOOChySGZpTgdr/wmy+C+grkHrru2u755wkqkWRkzmQC
         MOOw5njizzGzMbHbpkfueWf+x+9irU/zMIWFBnPJEKhZq0C1oLLJHSVHUY4TfD9JQoSP
         q2FyW5smUZhPd3ZjirT1ti+emd84LrvB8tDiPQID7r1mBqz+Klh19mghdfJ96vIgcWXG
         xPAi3YSXKAXed4fkyTyI7rFJm6uGKyEoA1P8olkYtvry2oCrikIAzLERUQPyYSFOvHmo
         itiw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="VbARVNu/";
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=o1XAOSTReoSZXdwTcBLH8dUsgpTQuWQzdZ8d+OVTUwk=;
        b=Lw6mQMV1GdNQ6eMQr8mEVPoDGP5xmAqS7v5RNhtKh5VWKF9639eNNnHXRWKlmHWJ8p
         ekHOBuN9e6+wyOP2I/yNKPPzAxaWS1YTDnYv5JJXplaS8JkzhI63FhANmmDMwRz76kwu
         cXWOpyRLjyUK9pMZJwl9WCKm/d5Yk046h9KhG+P9EFYrztY+apTG1KuXydlt1tAwoJv4
         J0+t84ZGMwvAFAKJrp7cOjsrx/l+5cVseefzJAH1Ejdl5aZq3oydLrAt1RlkfktnhqlF
         M1DTgkj8CWefiL3lA97NQCyTEdWLFeCHNpqiQwCLrcDJhL21iM8VES55wHfZobyyRrLH
         Q6PQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=o1XAOSTReoSZXdwTcBLH8dUsgpTQuWQzdZ8d+OVTUwk=;
        b=BE1e3zB7eWmdCaOohVLRngKk8uNU2Y1K/qW6Kt4Vs1ABfEf/M6im2aeCnXy81djUaH
         DtsNbw/FJRsgyAkWq5z7Xu00E0bZ3A9U05zWbroh584NmOVhW8tN8XfMAHyB4Y8yzqL/
         8wKOeHSapiLZNv4DlJ6UiuRPZa/NHvCevsGIfGDmWzorm3FDi4z5BSgVmj7HN7AKAx0C
         qAniSnGi9fahvOo+IbpkIaLklUydbsdnfuzuSZYnQiOnQ7Eib9Ky9lJOqCLPqmfyo9eD
         RhyydS3O2/6QJ76dRLLVuw3JGtFMSzPxA+bgK9qquzrmY2APy4ZujcuvnHK8LSXh6DE4
         SpIw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531kVeXHt38nO6UIILDoj0CBymYidS3uXDGY5UB9678Y2qulst3K
	3lmy/LiAsNqKUedRtKEgw9w=
X-Google-Smtp-Source: ABdhPJwF6Tk6YPBwaKp3PW/WAgaEqN8XjLVXl1XiIc45bl9WDgnvimyRZCrsa8kUvc4WkmPS8X9SCg==
X-Received: by 2002:a02:cd9c:: with SMTP id l28mr21838326jap.61.1623173399328;
        Tue, 08 Jun 2021 10:29:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:d092:: with SMTP id h18ls5065272ilh.7.gmail; Tue, 08 Jun
 2021 10:29:58 -0700 (PDT)
X-Received: by 2002:a05:6e02:88f:: with SMTP id z15mr19586058ils.61.1623173398893;
        Tue, 08 Jun 2021 10:29:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623173398; cv=none;
        d=google.com; s=arc-20160816;
        b=MZV55StpGOkavOGn3XO8vLXxAKoe9xbDJS0f+BwwDzxjdjDNCTT2cDHezrDThJbdGu
         uHOLotkCTIlyhLiy4YiqEpKCSFH+y/3ly1+JGPnayHHcHAezUU/iNBDq0B/hdwfRNLlD
         MBUn2JOn3nSqLSILvW5S5H3LRIEXOa0RiQatWcxyhY7tX7x9hbPD84b7NpyEqoc8nC6/
         fjwm3vLIxdOqRPVN3FXaN1V/CkmEax4nsDzyYoXqpAbEQx4sahqtGBb6EqMQheXjsRVi
         8ekINStsfj79gv1XUGuXAioTXSzWKze0fDZsMiwCpdsjSv5kCGgRgD8JNTWsWw8QiFLz
         xPcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=PkQ238tUQsNsGWVnbmix3voON+Ibs7DcsUVl9FycFhg=;
        b=yLcb37Cuv89RL2lnXO9BEpZKLIGAbMBDl4LQheh5LQHi1kjbpEtHYxGKPxMktVL4ba
         pem2u+zcliZDyeQhLVE5m6gKtuezZ8TTqwC57EFBXqSuAT9L7VU/pzbsBfrQmF9jddX1
         HXsTIbrdOsX+9tRZWZgeYPauZLU+TLxudheOCas6aQq1zp+aZoVAn+R0E8ZPRLWTLfEK
         0GlrAoyFooL5eQo0dfQCtvB62aKU/v0J/HiuWsrHavtmbXGfavA7Vx/zb0c5a5e0BJRa
         /SrpJ+SlRHgqf3VU17jEgT1HJ58+7erbHmWFCjNQDHd+Df1Xd54VTKchQphCM6yIH5Y2
         NEog==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="VbARVNu/";
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id o9si37060ilq.0.2021.06.08.10.29.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 08 Jun 2021 10:29:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 8EA3B61378;
	Tue,  8 Jun 2021 17:29:57 +0000 (UTC)
Subject: Re: [PATCH v3 16/16] objtool,x86: Rewrite retpoline thunk calls
To: Peter Zijlstra <peterz@infradead.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
 =?UTF-8?B?RsSBbmctcnXDrCBTw7JuZw==?= <maskray@google.com>,
 Josh Poimboeuf <jpoimboe@redhat.com>, lma@semihalf.com,
 Guenter Roeck <groeck@google.com>, Juergen Gross <jgross@suse.com>,
 lb@semihalf.com, LKML <linux-kernel@vger.kernel.org>, mbenes@suse.com,
 =?UTF-8?Q?Rados=c5=82aw_Biernacki?= <rad@semihalf.com>,
 upstream@semihalf.com,
 "maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Sami Tolvanen <samitolvanen@google.com>
References: <20210604205018.2238778-1-ndesaulniers@google.com>
 <CAKwvOdmhg2tj8cKe-XitoZXGKaoOhgTsCEdVXubt+LiY9+46rw@mail.gmail.com>
 <20210604235046.w3hazgcpsg4oefex@google.com>
 <YLtUO/thYUp2wU7k@hirez.programming.kicks-ass.net>
 <CAFP8O3+ggR8N-ffsaYSMPX7s2XgrzzTQQjOgCwUe9smyos-waA@mail.gmail.com>
 <YL3RQCJGIw9835Y1@hirez.programming.kicks-ass.net>
 <YL3lQ5QdNV2qwLR/@hirez.programming.kicks-ass.net>
 <YL3q1qFO9QIRL/BA@hirez.programming.kicks-ass.net>
 <CAKwvOdkuJBwZRigeqdZGevPF9WHyrC5pBAsz6_tWdXAc-wO+1A@mail.gmail.com>
 <e351ac97-4038-61b5-b373-63698a787fc1@kernel.org>
 <YL+nb235rIfEdye0@hirez.programming.kicks-ass.net>
From: Nathan Chancellor <nathan@kernel.org>
Message-ID: <de1a21c0-f20a-cde5-016e-4b8ca92eafa9@kernel.org>
Date: Tue, 8 Jun 2021 10:29:56 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <YL+nb235rIfEdye0@hirez.programming.kicks-ass.net>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b="VbARVNu/";       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On 6/8/2021 10:22 AM, Peter Zijlstra wrote:
> On Tue, Jun 08, 2021 at 09:58:03AM -0700, Nathan Chancellor wrote:
>> On 6/7/2021 1:54 PM, 'Nick Desaulniers' via Clang Built Linux wrote:
>>> On Mon, Jun 7, 2021 at 2:46 AM Peter Zijlstra <peterz@infradead.org> wrote:
>>>>
>>>
>>> Thanks, the below diff resolves the linker error reported in
>>> https://github.com/ClangBuiltLinux/linux/issues/1388
>>>
>>> Both readelf implementations seem happy with the results, too.
>>>
>>> Tested-by: Nick Desaulniers <ndesaulniers@google.com>
>>>
>>> Nathan,
>>> Can you please test the below diff and see if that resolves your boot
>>> issue reported in:
>>> https://github.com/ClangBuiltLinux/linux/issues/1384
>>
>> Unfortunately, it does not appear to resolve that issue.
>>
>> $ git log -2 --decorate=no --oneline
>> eea6a9d6d277 Peter's fix
>> 614124bea77e Linux 5.13-rc5
>>
>> $ strings /mnt/c/Users/natec/Linux/kernel-investigation | grep microsoft
>> 5.13.0-rc5-microsoft-standard-WSL2-00001-geea6a9d6d277
>> (nathan@archlinux-ax161) #3 SMP Tue Jun 8 09:46:19 MST 2021
>>
>> My VM still never makes it to userspace.
> 
> Since it's a VM, can you use the gdb-stub to ask it where it's stuck?
> 

Unfortunately, this is the VM provided by the Windows Subsystem for 
Linux so examining it is nigh-impossible :/ I am considering bisecting 
the transforms that objtool does to try and figure out the one that 
causes the machine to fail to boot or try to reproduce in a different 
hypervisor, unless you have any other ideas.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/de1a21c0-f20a-cde5-016e-4b8ca92eafa9%40kernel.org.
