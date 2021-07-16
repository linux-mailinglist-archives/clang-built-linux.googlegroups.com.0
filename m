Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBFFXY6DQMGQETB6V3QY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93a.google.com (mail-ua1-x93a.google.com [IPv6:2607:f8b0:4864:20::93a])
	by mail.lfdr.de (Postfix) with ESMTPS id 16EEE3CBC48
	for <lists+clang-built-linux@lfdr.de>; Fri, 16 Jul 2021 21:18:45 +0200 (CEST)
Received: by mail-ua1-x93a.google.com with SMTP id z45-20020a9f37300000b02902a163c1db68sf4145409uad.19
        for <lists+clang-built-linux@lfdr.de>; Fri, 16 Jul 2021 12:18:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626463124; cv=pass;
        d=google.com; s=arc-20160816;
        b=E2LAQHASwFQz/XZxpiHxxmPvsKtOwv49Quoy+vE1cEgtqR4idghrylR6xD98oDykXG
         RWrPB/Ddxv3I51W+kdUe6FSqvNFv4gKHM1VJIyq8K9b9nb5weiH7XTggjQmrVyRS5s1A
         3/O+Xt6BfMIQ5Lw10GY9hI8KSHlgEEnDRQa5lJZ27nd03lxufhB0DDkc816+WB1rMRSH
         Kn054ksMrRV7u7qEo21hDzn377Km/zQlJMecwoKh85gkhYbopPCVSyDQzG5Fp2nLWUr7
         K8otDVXdnZgxqDd8BRlyP8XrRW/ZSF0Q7Dq+TunbgRUog1TIHgZR3nYzLzz7MFpNCRiC
         wb3w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=Hrzx2fT6jfhCc8M9sgCZSy8N9upzVTNo6LBB5vL6zJg=;
        b=P53B7XCx/JUW0Ns19j3dfxbAyW2A3r2z1+L3Ufjb1hOZnjhh/zQErR8AaPyyrw8SDQ
         1hnPjRSdrxcfAAXRzPyrkluz47YVu+NISkKvjMvqmchuRY1ZH22ocYVUv3DxnkeSzU3Y
         pMzICyL8wK9RDKk2+T6tVh6he+UWNVCiCuDPto2/gIS56OKrC01Z48POYBmp30LentA8
         MBvjnWcVakDYZf98GG9ihHOOw6CwgJPFdcYs4LxR571npQc4GECN04cPJ6U422lm6RbV
         f2x3sqDJ5xdJpw4Z3a7v3OYfbE+7rQ6Ieeq6HzHm5CjjUDQ+JhPdHaB5oUHHoZc9ogSN
         Wi8g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=CcjCEjz2;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Hrzx2fT6jfhCc8M9sgCZSy8N9upzVTNo6LBB5vL6zJg=;
        b=tPCak1/fy5T7ni1m+pG/9cfAfV4N2DlPF2DWWLGJN8/oYwhAb6OwJLOxOZZLY/RVPT
         olM9KYGyZfeYr72iZtDpksRYuq1IWfT3/H9bMWoJfVunSsktjpI3RneRe/ki4e6y3B+R
         9UO2MaXRvOo/2V2Lp89qkFWCs7S1SHxdJTldXBlLjn5Nh0Wynax12lKTkeKG0XkvVMHG
         xAq9FqTlUWeCkSDhgtl/p/eKyI/R/nrutrT8uIDQADKwmLr77HAR1rHJ0ksSLLMw4+I/
         3y2X0B5jfDYCnVC6mVVoaPU1/O60OAEbmhl/vq119sapCS/Nn64WLCKIfJN9grukSqHZ
         HBCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Hrzx2fT6jfhCc8M9sgCZSy8N9upzVTNo6LBB5vL6zJg=;
        b=rXPXKTBQHPUhKpn0ZtvATg1YnREg64Pqnvl9gQoMbbHbw9ihkemgj4hm9fgjBiNdfs
         6EMQ556ry93TubA+3lgZP3GwuIm2M1qzORLWqhlzwo4xlBN9dsdGm82H6URpuxs8lOmA
         KU1AyYf7mikxyImADM6EtJA22AWd4Q5fZO5rsSxu/6rnS5Lp84atVY3OUDsekEXzLEdt
         t/y+gFjodRQ8RdFBf8QibCnEo7D3eqCsTkwXFQ2wCr/Jnm+i++NMV/F7GpsQePnxPDPK
         7B7DFMogKuRL7c1WBPGiTK+J8SEXoo26ACU19bK43qerOUBr591IsCivHLQReVftHix8
         FARw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532RxD9DJxkRxmysEXCvk/rrZbyE0EeQqf3TO0Xuyj7tmULkL6u4
	BopkIhShw3Jba0eMA5VLrHg=
X-Google-Smtp-Source: ABdhPJxArIC3CZ6v4J4NfncHlIBViJOI2U1g9sJcTsdDhxoCjxrbLGFESNG/nDiiLxRswM/PV0zcuQ==
X-Received: by 2002:a1f:380c:: with SMTP id f12mr13324548vka.2.1626463124171;
        Fri, 16 Jul 2021 12:18:44 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:3ca2:: with SMTP id a34ls2273203uax.0.gmail; Fri, 16 Jul
 2021 12:18:43 -0700 (PDT)
X-Received: by 2002:ab0:1e8b:: with SMTP id o11mr15676309uak.49.1626463123659;
        Fri, 16 Jul 2021 12:18:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626463123; cv=none;
        d=google.com; s=arc-20160816;
        b=iNAyDFtSS3CedZKn9Xc/6M9Rltta1NIft9UHIn+NZRFLOEiLS5vtQ4LU7CkL9uwwZI
         /AJTR7o9jl4BfKP6JqQgiJxSaVQUVZm23QlVT++6QUXi3iOrjdRFvFBfZfc3EqLPWDW3
         wmpWMkF6CieK8fWbQ/zBB2b7Jeqq8+M7lT8TNnUKOOUIlArJ0PdlfoTplKE4PaRzdHaO
         BFQ9SomWyhkCQP1U3aNIxwTDW2tWc3k1R7tQvKnqrYjxM8iGWzHgiZTxyxEJCgc3dfpd
         4eesPcgnxyzSuCaW8zFG7twnqJZMFWtnMyd+WNyLpYvaUnYvnoNtZXuhuhfpfGepYurk
         07Sg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=5hvQPm8N7wVh21KE1aSkDrCx88yUUFGx2SFBNq8HqbI=;
        b=0pUSbPLYXib9IIPkGaIotFphPLbhywQ/Rybjjq4eImSYi8UoDrf8z0Tai6a1XGjJdy
         5dJKlVzyfk1zWRhdqDFrFQRwav3yaxYF0bHqkEr4OSth6lm72MQo7htWU3hqrIf6epgj
         vm254I/iHXOPcc/bpzwn8aSE5+wsSI37i4Rkyw+O3nBZcSWfvonMFhmqN9tlrH7Qn3+X
         Uvvc6vJ0QbPFUWLgN25DKPoAsKYVb1KGMYGfLyKkn0Q7MF4F8Jcx3aOXMDG1XsxXCgC+
         m++wAyWtuVPJLaeOBfEXgjtX5YGhB96Pq2s2Bz5juhxwCEuohm8nbhQCzxJ8u22SZfO8
         tEwQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=CcjCEjz2;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id s7si830482vsm.0.2021.07.16.12.18.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Jul 2021 12:18:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id ED072613DF;
	Fri, 16 Jul 2021 19:18:41 +0000 (UTC)
Subject: Re: [GIT PULL] fallthrough fixes for Clang for 5.14-rc2
To: "Gustavo A. R. Silva" <gustavo@embeddedor.com>,
 Linus Torvalds <torvalds@linux-foundation.org>
Cc: "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>, Kees Cook
 <keescook@chromium.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>
References: <20210714200523.GA10606@embeddedor>
 <CAHk-=wjQeeUiv+P_4cZfCy-hY13yGqCGS-scKGhuJ-SAzz2doA@mail.gmail.com>
 <YPHUJsiaOuqzW0Od@archlinux-ax161>
 <54a99f59-0211-d9c2-4ab5-e74bbc72086b@embeddedor.com>
From: Nathan Chancellor <nathan@kernel.org>
Message-ID: <7774f876-6a60-03e4-b273-34f508d06404@kernel.org>
Date: Fri, 16 Jul 2021 12:18:41 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <54a99f59-0211-d9c2-4ab5-e74bbc72086b@embeddedor.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=CcjCEjz2;       spf=pass
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

On 7/16/2021 11:57 AM, Gustavo A. R. Silva wrote
> On 7/16/21 13:47, Nathan Chancellor wrote:
>> On Thu, Jul 15, 2021 at 06:04:15PM -0700, Linus Torvalds wrote:
>>> On Wed, Jul 14, 2021 at 1:03 PM Gustavo A. R. Silva
>>> <gustavoars@kernel.org> wrote:
>>>>
>>>>    git://git.kernel.org/pub/scm/linux/kernel/git/gustavoars/linux.git tags/Wimplicit-fallthrough-clang-5.14-rc2
>>>
>>> Grr.
>>>
>>> I merged this, but when I actually tested it on my clang build, it
>>> turns out that the clang "-Wimplicit-fallthrough" flag is unbelievable
>>> garbage.
>>>
>>> I get
>>>
>>>     warning: fallthrough annotation in unreachable code [-Wimplicit-fallthrough]
>>>
>>> and the stupid warning doesn't even say WHERE THE PROBLEM HAPPENS.
>>>
>>> No file name, no line numbers. Just this pointless garbage warning.
>>>
>>> Honestly, how does a compiler even do something that broken? Am I
>>> supposed to use my sixth sense to guide me in finding the warning?
>>>
>>> I like the concept of the fallthrough warning, but it looks like the
>>> clang implementation of it is so unbelievably broken that it's getting
>>> disabled again.
>>>
>>> Yeah, I can
>>>
>>>   (a) build the kernel without any parallelism
>>>
>>>   (b) use ">&" to get both output and errors into the same file
>>>
>>>   (c) see that it says
>>>
>>>      CC      kernel/sched/core.o
>>>    warning: fallthrough annotation in unreachable code [-Wimplicit-fallthrough]
>>>    1 warning generated.
>>>
>>> and now I see at least which _file_ it is that causes that warning.
>>>
>>> I can then use my incredible powers of deduction (it's almost like a
>>> sixth sense, but helped by the fact that there's only one single
>>> "fallthrough" statement in that file) to figure out that it's
>>> triggered by this code:
>>>
>>>                  case cpuset:
>>>                          if (IS_ENABLED(CONFIG_CPUSETS)) {
>>>                                  cpuset_cpus_allowed_fallback(p);
>>>                                  state = possible;
>>>                                  break;
>>>                          }
>>>                          fallthrough;
>>>                  case possible:
>>>
>>> and it all makes it clear that the clang warning is just incredibly
>>> broken garbage not only in that lack of filename and line number, but
>>> just in general.
>>
>> I commented this on the LLVM bug tracker but I will copy and paste it
>> here for posterity:
>>
>> "It is actually the fact that
>>
>> case 1:
>>      if (something || !IS_ENABLED(CONFIG_SOMETHING))
>>          return blah;
>>      fallthrough;
>> case 2:
>>
>> looks like
>>
>> case 1:
>>      return blah;
>>      fallthrough;
>> case 2:
>>
>> For example: https://godbolt.org/z/GdPeMbdo8
>>
>> int foo(int a) {
>>      switch (a) {
>>      case 0:
>>          if (0)
>>              return 0;
>>          __attribute__((__fallthrough__)); // no warning
>>      case 1:
>>          if (1)
>>              return 1;
>>          __attribute__((__fallthrough__)); // warning
> 
> I think that if the "1" in this case, depends on the initial
> configuration, as it is the case with CONFIG_CPUSETS, then
> Clang should not cause a warning either. That's how GCC seems
> to be treating these scenarios.

Correct. It does not seem like GCC warns at all about the use of 
fallthrough attributes at all, for example, against the same clang test 
cases: https://godbolt.org/z/4MvW1TnYa

This could be a conscious decision by the clang developers to deviate 
from GCC, the only way we will know is from the bug report above. I can 
recall this happening once before where it impacted the kernel and the 
clang developers allowed me to add another flag that was default enabled 
but could be disabled separately from the warning to get GCC 
compatibility without sacrificing the additional warning coverage they 
felt was worth deviating from GCC for:

https://github.com/ClangBuiltLinux/linux/issues/887
https://reviews.llvm.org/D72231
https://reviews.llvm.org/D75758

Hence why I suggested -Wimplicit-fallthrough-unreachable.

>>      case 2:
>>          return 3;
>>      default:
>>          return 4;
>>      }
>> }
>>
>> I am not really sure how to resolve that within checkFallThroughIntoBlock() or
>> fillReachableBlocks() but given that this is something specific to the kernel,
>> we could introduce -Wimplicit-fallthrough-unreachable then disable it within
>> the kernel.
>>
>> The file location not showing up was fixed by commit 1b4800c26259
>> ("[clang][parser] Set source ranges for GNU-style attributes"). The
>> differential revision mentions this issue specifically."
>>
>> Hopefully that would be an adequate solution, otherwise someone with more clang
>> internal will have to take a look.

Cheers,
Nathan

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/7774f876-6a60-03e4-b273-34f508d06404%40kernel.org.
