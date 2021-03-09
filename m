Return-Path: <clang-built-linux+bncBDZMNZPOQUERBVELT2BAMGQE27CUXGA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x140.google.com (mail-il1-x140.google.com [IPv6:2607:f8b0:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BA7533288F
	for <lists+clang-built-linux@lfdr.de>; Tue,  9 Mar 2021 15:27:34 +0100 (CET)
Received: by mail-il1-x140.google.com with SMTP id c11sf10299935ilq.11
        for <lists+clang-built-linux@lfdr.de>; Tue, 09 Mar 2021 06:27:33 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615300053; cv=pass;
        d=google.com; s=arc-20160816;
        b=ma2hgsCflZK0oV0HnWeeKm3xVhJW2H4Mvh+jvICE/FO19dLMCSS/930Wda6mpGa7Q1
         n0S8t2BVjDyy9DVn5GmpmgRHiGBxzNOmaTULmaRL1P0FuxlN1zlhh9lSS0qlBUvUNDmx
         9EqR/ocOaI5JI1x6aDv9gSk9CDvsd2kFbltJvrT/z4+7vO23Ma1+MbZw28r+rJQkTBXW
         5LnUXZ3WfHP5JswOkYIYbqwhS+uajHSk2MMX/pLrovmPmf+Mp7uyz8H/CozlpvrkTGGY
         r5eFFu4kCHpKEsltV/UZwfr6SFdSH0OuV36dcdhd+bDFS0C43io5oUziljjRQcGYpJll
         gmZQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=9QbyKWrZ+VZBcps6rrVHW0ZlS/V6qX1kSGwHv4NIxHk=;
        b=R1mIJmECvr62PdTguVd3Gg4qLHs2Z/TU/Mwh0Dy2XHWsZEmCVm+Xa+htAk6BwA9DcF
         W5QsSSaXsC/fsiNBxdZte8W02SGpcmepwJCf9Orap0m9tE/3px32SonOUGTDkKU02TZs
         w1nQA3z4OBYSaWDo02i7yFd4OJ7+EAGfHGhBaEV4uaWv2rgRXCWMP2xuTZCx8oZ1896U
         zj7uZQh/PRJxrVm6PopTximu8GAXoT2/mbfLxicfw1VVfoal10sM8xMSwW9qMOk/BWEl
         O7U4zBEEflzgF/GWPUcaYjNN6+xZU3p/PoNGOLwH3DXuNRcPmn3MXV2Pf814pscVkeHL
         pvRw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=PuyDInNY;
       spf=pass (google.com: domain of jthierry@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jthierry@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9QbyKWrZ+VZBcps6rrVHW0ZlS/V6qX1kSGwHv4NIxHk=;
        b=dco6CP2pYtSrD8172R1Z3Iy8Q+eCXGBh57Xy4BW3Ucukz1QtR5lSvTczkt2yRQdBpR
         fm8bvElyezUgVsdHD/5clEO3wDiv3i4o7k/O4MGMyLMENZEUUMeDTEGz6/TD+x3P6PH1
         k5sdgGj2FNy9us5qGYnYg6zk+6yTlQL6VVFXTec5SPENHo6x8Dl3e6JLa1XFhXefNj95
         6I3qDP1nGiuiyga2Hy+xy57Soo6+FmCeACKTAoowDmKeHAaefSYSMfUbxzIrNjwWwTGI
         8IN41Tp9/9rCxuJeN4myjzqY3lMhbxdGDWVAqC0S9rOEJ3c154dk96vUVlaLRUSVo+Gh
         z1Cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=9QbyKWrZ+VZBcps6rrVHW0ZlS/V6qX1kSGwHv4NIxHk=;
        b=WWcr8uQDghpnEBxJo97B7TlNjVUVBjR1TFDhqBGKN7mqoxbDRheJTE5oF1W5wNbwrz
         6rA7evJ4pJc8CWTExzeZuWOGwFiHg0WoTOC08hima94oJXEEt4u54dUGsvSaV7nE64/5
         xkNHPIHMn/OYuqoJBWWYA9zDihkJxCUhezdjrANXkcQHOISyQpUCzuM54w2a9MXom0hn
         QdMIyJA3G1qRrj5BUkrUpA6fFhGvfRejzZjVELDBTRnl1cFeClX5wj+VlDfXX63iuHbO
         qs9A/T6BruUVf0Fxq1/RTok2KHsifT5jgb0rFwEGE2k6eX9A2XQV1XNxEKj0UVgq03xU
         v7eQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5302Afw8lDMTpFHNbK+AbPCMmdLVnfiZe37s7ejuLSfdV1uLktSF
	jJGbUxI9+1I9Xtj97kkiZ1g=
X-Google-Smtp-Source: ABdhPJztJqyo+CldV7SzVzqS697hAJg9iEz6Ci0ETAcgZ8V2izQhmVfc4+qJpwyUcsKPxhywqPwN5A==
X-Received: by 2002:a05:6e02:1a0c:: with SMTP id s12mr25105485ild.177.1615300053071;
        Tue, 09 Mar 2021 06:27:33 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:1455:: with SMTP id l21ls738897jad.11.gmail; Tue,
 09 Mar 2021 06:27:32 -0800 (PST)
X-Received: by 2002:a02:4087:: with SMTP id n129mr29245810jaa.143.1615300052647;
        Tue, 09 Mar 2021 06:27:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615300052; cv=none;
        d=google.com; s=arc-20160816;
        b=w1HwEQEfW+RruyIUKmdj66Mm8Yw8ThqG+pde6YIAqwqsPMVo18L1Ef2WY6oMaFyHOl
         I/9er+/NmsT8tmNSTlOrfSqXgNyX/YN6dKUd5qf4xSWa0HdniaEnylIGLXKaOpCOBWG2
         1T/3RtychG8qZTJ9LotvgShi3+vFZsFaXwNeL2S9iG8cTT9l5xD4Awe19jkQQFOk+75h
         zPiOB5WWeauk3abvsB7ZWI+rU1t7oc65MLZ+o93hAKwXcalLqFLDsD7De6TGwhLT2iX6
         RbPUrVNlHmMav4ky5Ep6tcQlzFfavR9SM6qAelJiODhznhprwwdhec9uNwcpa3hPcWOZ
         uLVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=uefc69ZAVo40Lyi9qS15enKlYyR1TmA5w4KWE/8N6f0=;
        b=g66uGiVGBrUlUyfYjPOD2g2WEk+C/5sdWsXg+l6Kbh/lxihZybuK5vSnMFgnycU72g
         nIVVRYJthKMs8IyvLld1PEeaaWW6n+6ZvCV2Vd46sBQZhh17cS8tzhyJtgJnJml/+CN1
         ZniQGJ068EmAj7NrzBAJWKDhzQWLDCYMjnAvXcAkV6zyk7fVPOIg8sxz/rQKwN7Sl7Q4
         VNRK6eZ5tX0G6wKppIHILrA1vBmcwYY/zX9jjiqRVDncOUNEoJEOKLTssXjt888QwC+g
         NCIFYhnlUO8+MFiNGi/z0OWscZ1anMFg9cyVFdZtZ/ge+3e/8thJXnpzLhKhHxgalunK
         cgpQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=PuyDInNY;
       spf=pass (google.com: domain of jthierry@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jthierry@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id i2si880441iov.2.2021.03.09.06.27.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Mar 2021 06:27:32 -0800 (PST)
Received-SPF: pass (google.com: domain of jthierry@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-177-YIajHpRsMEOPL7r-jNC39w-1; Tue, 09 Mar 2021 09:27:29 -0500
X-MC-Unique: YIajHpRsMEOPL7r-jNC39w-1
Received: by mail-wr1-f70.google.com with SMTP id n16so5428543wro.1
        for <clang-built-linux@googlegroups.com>; Tue, 09 Mar 2021 06:27:29 -0800 (PST)
X-Received: by 2002:a1c:a5c7:: with SMTP id o190mr4437948wme.172.1615300048174;
        Tue, 09 Mar 2021 06:27:28 -0800 (PST)
X-Received: by 2002:a1c:a5c7:: with SMTP id o190mr4437912wme.172.1615300047976;
        Tue, 09 Mar 2021 06:27:27 -0800 (PST)
Received: from ?IPv6:2a01:cb14:499:3d00:cd47:f651:9d80:157a? ([2a01:cb14:499:3d00:cd47:f651:9d80:157a])
        by smtp.gmail.com with ESMTPSA id o7sm23869752wrs.16.2021.03.09.06.27.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Mar 2021 06:27:27 -0800 (PST)
Subject: Re: [RFC PATCH v2 00/13] objtool: add base support for arm64
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Ard Biesheuvel <ardb@kernel.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Josh Poimboeuf <jpoimboe@redhat.com>,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 LKML <linux-kernel@vger.kernel.org>, Mark Rutland <mark.rutland@arm.com>,
 Masahiro Yamada <masahiroy@kernel.org>, Peter Zijlstra
 <peterz@infradead.org>, Will Deacon <will@kernel.org>, ycote@redhat.com,
 Fangrui Song <maskray@google.com>, Bill Wendling <morbo@google.com>,
 Pete Swain <swine@google.com>, Yonghyun Hwang <yonghyun@google.com>,
 clang-built-linux <clang-built-linux@googlegroups.com>
References: <20210303170932.1838634-1-jthierry@redhat.com>
 <20210305235102.384950-1-ndesaulniers@google.com>
 <CAKwvOdmgRAJXVdaHAnZoYm-Y4Dt01CYxvsnJC6zaSwr5amRWBg@mail.gmail.com>
From: Julien Thierry <jthierry@redhat.com>
Message-ID: <47cb7299-a361-6036-fc6e-860bbcfc2476@redhat.com>
Date: Tue, 9 Mar 2021 15:27:25 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <CAKwvOdmgRAJXVdaHAnZoYm-Y4Dt01CYxvsnJC6zaSwr5amRWBg@mail.gmail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: jthierry@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=PuyDInNY;
       spf=pass (google.com: domain of jthierry@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=jthierry@redhat.com;
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



On 3/6/21 1:04 AM, Nick Desaulniers wrote:
> On Fri, Mar 5, 2021 at 3:51 PM Nick Desaulniers <ndesaulniers@google.com> wrote:
>>
>> (in response to
>> https://lore.kernel.org/linux-arm-kernel/20210303170932.1838634-1-jthierry@redhat.com/
>> from the command line)
>>
>>> Changes since v1[2]:
>>> - Drop gcc plugin in favor of -fno-jump-tables
>>
>> Thank you for this!  I built+booted(under emulation) arm64 defconfig and built
>> arm64 allmodconfig with LLVM=1 with this series applied.
>>
>> Tested-by: Nick Desaulniers <ndesaulniers@google.com>
>>
>> One thing I noticed was a spew of warnings for allmodconfig, like:
>> init/main.o: warning: objtool: asan.module_ctor()+0xc: call without frame pointer save/setup
>> init/main.o: warning: objtool: asan.module_dtor()+0xc: call without frame pointer save/setup
>>
>> I assume those are from the KASAN constructors. See also:
>> https://github.com/ClangBuiltLinux/linux/issues/1238
>>
>> Can we disable HAVE_STACK_PROTECTOR if CC_IS_CLANG and CONFIG_KASAN is set,
>> until we can resolve the above issue?

So that concerns objtool for all arches, right?

> 
> Ah, filtering the logs more, it looks like GCOV is has the same issue
> KASAN does (known issue).  Here's a filtered log:
> https://gist.github.com/nickdesaulniers/01358015b33bd16ccd7d951c4a8c44e7
> 
> I'm curious about the failure to decode certain instructions?
> 

This is probably related to data constants present in code sections. To 
fix this, objtool needs to handle SYM_DATA_* annotations [1] and then 
the relevant bytes need to be annotated in the kernel sources (e.g. [2], 
but there are multiple parts in arm64 assembler needing this). I have 
not submitted those yet because I didn't want the amount of patches to 
become overwhelming and mixing objtool + kernel sources.

[1] 
https://github.com/julien-thierry/linux/commit/9005e9f3bb10aac663c42bb87d337b7a1aae5a67

[2] 
https://github.com/julien-thierry/linux/commit/ad132b032b4141c7ffce95d784b5254120e5bf65

> The stack state mismatches are what are valuable to me; we'll need
> some help digging into those at some point.  The logs from defconfig
> are clean.
> 

I think at the moment this is mostly a limitation of objtool to track 
code flow. aarch64 code tends to do a lot more register load/store 
inside a function than x86, and objtool doesn't track multiple register 
states (e.g. a registered stored at some offset on the stack at the 
beginning of the function, and later at some other stack offset). 
Although, when looking at the disassembled code, I'm not 100% I 
understand why there are so many intermediary store/load for these 
registers since it doesn't look like those values are actually used (I 
don't know whether this is caused by kasan/probes instrumentation).

But I'd need to investigate a bit more.

-- 
Julien Thierry

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/47cb7299-a361-6036-fc6e-860bbcfc2476%40redhat.com.
