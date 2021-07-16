Return-Path: <clang-built-linux+bncBDNYNPOAQ4GBBEVMY6DQMGQEKRWCS4A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x340.google.com (mail-wm1-x340.google.com [IPv6:2a00:1450:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F4053CBC21
	for <lists+clang-built-linux@lfdr.de>; Fri, 16 Jul 2021 20:55:15 +0200 (CEST)
Received: by mail-wm1-x340.google.com with SMTP id k16-20020a7bc3100000b02901d849b41038sf2587166wmj.7
        for <lists+clang-built-linux@lfdr.de>; Fri, 16 Jul 2021 11:55:15 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626461715; cv=pass;
        d=google.com; s=arc-20160816;
        b=SqUdp9QSpeQqBTku8fo/l2YS5+VOBNokMF6Yx540kjOk1tep+t4MzfaHBroxYVtXuv
         eqptxmP3lFjA9+QkKBVZXYpgwH2xtm9oJWUOzu55+KRiJtSrdGCkHx227bTTNI7qiZH0
         dOX8h0sTL52sMbHzy/IXtcYrSwmc60o3O2GFFYz8aSrgWLMNuz44o4OSbEXvyiXOtDFi
         XisPn42ZONYtIpBoMdughIn1v8bIy+DzbwjuAzzfci6fSYjToyK2+D8HPUcgkovL4cfc
         tf0LkMGuxEMJiu2pqMc08ZBIYJ9nlQqfyHGdELUlIAsxO56FRPkOW5qUHuUWD7DLQ56C
         sU+A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=EkgIuKlgOLl+J63quPwGulAFFgjhavUO9FvGTa22GTM=;
        b=rshY7Tz4xdCIQz8mlf8tf/IFiHJOi9kTIclUWgaEm4nDDqWap3IL0fdA1I2eot5ywP
         hKrTCEP933eKRDGMK7TG2pglUqFkUmgEWGK71UGUOyyYP5CO2BSnDTO+UG/aiJhAamtd
         SLn6yKmaG8QCIXBhYavqTVbTkgnga7PTHi0SaQdxnyLpiQcIMSveeJ4AmjxeO29YCykk
         JGSIxWN1/aF6d6cDBYjX9NKFuXiXQgufJ0XbJpxyvXxtepPeo2Kc1FLN1zERqGDcEgwj
         jxtHKB9G/bOWehmAJ4y8H+raTMJ1aJjoNDhejmaBogcQ+a32o1qg8PLKC431H7W24DRD
         wfqQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@embeddedor.com header.s=default header.b=IGm1FgdA;
       spf=pass (google.com: domain of gustavo@embeddedor.com designates 192.185.147.85 as permitted sender) smtp.mailfrom=gustavo@embeddedor.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=EkgIuKlgOLl+J63quPwGulAFFgjhavUO9FvGTa22GTM=;
        b=a/Fq5NAHXgKugvgzEt3MmB562GFyKw7kQsyhxumL1IiHhLiExZ+ixN+vNdK1MR+V6q
         oJk2XjCHedZPpDPcBtZkzkkStB3VydXJ+YmtC0DmgpBSYyER8L0J9xE5iP+DOMUE4tRb
         Sb8Htm09vbwWRVloG4d7herr2R3cVOjqvVELDWG8IBW+FOnX071J1hyEIJ9iE8NCsLrG
         CNjmm0Fg9p184OAcEixH3AnMs4FqWF2i7GySicQ+wg94j4dxxlReBDf5GpI6miyI7erO
         seEpY3NCr820BynVxN7U9fvlUIVhPqkSH2zZxHr3usuo2JPyKKF06F0u7CFN5KN3fkzx
         6Yjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=EkgIuKlgOLl+J63quPwGulAFFgjhavUO9FvGTa22GTM=;
        b=ny4qT3N9nWxHqHHf4wh5qFjp414xqy7BpY7oW8taXGslayf3uKCdZvlO/kRL56DMoO
         O7FPgenQ0bMj2LFTt0yeOtLAsEuSOfz6evhY5sov3Ug/q8JspxX/OsGiC/pzT60odPkR
         8jVTpwXoj81A+CRVNoLJFQAhlg7IVbvxWSnRU2xX2RnDc8+Zu+FjfBCxp5Ar8c2UhXP7
         G1J8vdlKAiaMBxcDkZk29hD9rP39tv/h0Y8qdX2NBWTTsRcjHmtdYZ2EpVoStsEptBF3
         o4zxfYNXDUYsdUFUueVIZokeBSEeUwXT+7WEoGf3hIq7G4xqguRRlHgOFWhO2ryubvCQ
         dyAA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533cqGB9kZM9s+thW5yoZdaIDvAcrz/FBStIrlZB/8POCW+7eOMx
	7WCdV2eMWTZBXeDHXTqINq4=
X-Google-Smtp-Source: ABdhPJwJBAbOD6HRac2SY3TmFTzOwRb+tB6G99fpAJdHOu5yBl1BxZ8b3nrzNJRT2fqYh/YcN1DW4A==
X-Received: by 2002:a05:600c:5127:: with SMTP id o39mr11941450wms.124.1626461714978;
        Fri, 16 Jul 2021 11:55:14 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:7e90:: with SMTP id z138ls3260763wmc.1.canary-gmail;
 Fri, 16 Jul 2021 11:55:14 -0700 (PDT)
X-Received: by 2002:a05:600c:4ecc:: with SMTP id g12mr18648561wmq.118.1626461714074;
        Fri, 16 Jul 2021 11:55:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626461714; cv=none;
        d=google.com; s=arc-20160816;
        b=R7jNm4JtBeT/6+d+t3Ij4GPK6rv9uZ5J08hBK69FjjR56Qp1i/1zZQKrnUVhe2HG3o
         aJMW0oKEej4JaSEySQrP4UnNcZfWXku2kx9riFzXwFtDLjmp3hmLBXKSYEvXoTIQLSrL
         ToUY7XeWZKdZdC+aqHft48WPmV+YzDPjS4/XWAuv7CaWOvCymhYoL+Ejeoss/r84yem/
         Mwore705R9Lkxqk9ZQebLxR1XkOvw7Nj+xlIEe53w6qasGeXPRUekS5BxquW9rHgkzFx
         +pTDqFtpy3toDY2l2V5y22YRnFxfCdY+huQoQeh1Fj4/8Ix0Gy6eXdvDeEyG0dwOVO/I
         w7MA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=kSBeS0wNZCGOSvffjr4Uefrex/vK2JFe2DnuWwhdA3M=;
        b=vY/+QYfIxYSso9LNxP/I5N8vd+45X0OucCJeAeeodQF0wS9bHCel9PylnvbL7CMgMd
         rQyW6hSon+aOz9Wvo5Ca6YrBSADgoWazm/xNMLCzUAZDSH/UI9C/Aih/g76i84qxJAGm
         nl1xdqduE512cy9EmzNfYZdWYXpLE+xe5rm2JradedKUte4LbxENCd+WwhNMopFtkiDx
         3krvn2P4MVLCRYAqvt+uMEmhZpbbmxb5UURl+uNQWailIHXnPpZ3TR3iSZw6Ae8RVBsy
         OGnAt14Jc9s+wIIfLDx47fK8NZQBkiyvysb0rciLKI9i9eKaqMFDKtZlo30SmZowA6hh
         9Gag==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@embeddedor.com header.s=default header.b=IGm1FgdA;
       spf=pass (google.com: domain of gustavo@embeddedor.com designates 192.185.147.85 as permitted sender) smtp.mailfrom=gustavo@embeddedor.com
Received: from gateway30.websitewelcome.com (gateway30.websitewelcome.com. [192.185.147.85])
        by gmr-mx.google.com with ESMTPS id 189si89993wmb.2.2021.07.16.11.55.13
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Jul 2021 11:55:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of gustavo@embeddedor.com designates 192.185.147.85 as permitted sender) client-ip=192.185.147.85;
Received: from cm10.websitewelcome.com (cm10.websitewelcome.com [100.42.49.4])
	by gateway30.websitewelcome.com (Postfix) with ESMTP id 07077302F
	for <clang-built-linux@googlegroups.com>; Fri, 16 Jul 2021 13:55:11 -0500 (CDT)
Received: from gator4166.hostgator.com ([108.167.133.22])
	by cmsmtp with SMTP
	id 4SzNmpifwoIHn4SzNm4HCt; Fri, 16 Jul 2021 13:55:09 -0500
X-Authority-Reason: nr=8
Received: from 187-162-31-110.static.axtel.net ([187.162.31.110]:42730 helo=[192.168.15.8])
	by gator4166.hostgator.com with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
	(Exim 4.94.2)
	(envelope-from <gustavo@embeddedor.com>)
	id 1m4SzL-002ZwS-Fu; Fri, 16 Jul 2021 13:55:07 -0500
Subject: Re: [GIT PULL] fallthrough fixes for Clang for 5.14-rc2
To: Nathan Chancellor <nathan@kernel.org>,
 Linus Torvalds <torvalds@linux-foundation.org>
Cc: "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>, Kees Cook
 <keescook@chromium.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>
References: <20210714200523.GA10606@embeddedor>
 <CAHk-=wjQeeUiv+P_4cZfCy-hY13yGqCGS-scKGhuJ-SAzz2doA@mail.gmail.com>
 <YPHUJsiaOuqzW0Od@archlinux-ax161>
From: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Message-ID: <54a99f59-0211-d9c2-4ab5-e74bbc72086b@embeddedor.com>
Date: Fri, 16 Jul 2021 13:57:21 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <YPHUJsiaOuqzW0Od@archlinux-ax161>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-AntiAbuse: This header was added to track abuse, please include it with any abuse report
X-AntiAbuse: Primary Hostname - gator4166.hostgator.com
X-AntiAbuse: Original Domain - googlegroups.com
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - embeddedor.com
X-BWhitelist: no
X-Source-IP: 187.162.31.110
X-Source-L: No
X-Exim-ID: 1m4SzL-002ZwS-Fu
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 187-162-31-110.static.axtel.net ([192.168.15.8]) [187.162.31.110]:42730
X-Source-Auth: gustavo@embeddedor.com
X-Email-Count: 7
X-Source-Cap: Z3V6aWRpbmU7Z3V6aWRpbmU7Z2F0b3I0MTY2Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
X-Original-Sender: gustavo@embeddedor.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@embeddedor.com header.s=default header.b=IGm1FgdA;       spf=pass
 (google.com: domain of gustavo@embeddedor.com designates 192.185.147.85 as
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



On 7/16/21 13:47, Nathan Chancellor wrote:
> On Thu, Jul 15, 2021 at 06:04:15PM -0700, Linus Torvalds wrote:
>> On Wed, Jul 14, 2021 at 1:03 PM Gustavo A. R. Silva
>> <gustavoars@kernel.org> wrote:
>>>
>>>   git://git.kernel.org/pub/scm/linux/kernel/git/gustavoars/linux.git tags/Wimplicit-fallthrough-clang-5.14-rc2
>>
>> Grr.
>>
>> I merged this, but when I actually tested it on my clang build, it
>> turns out that the clang "-Wimplicit-fallthrough" flag is unbelievable
>> garbage.
>>
>> I get
>>
>>    warning: fallthrough annotation in unreachable code [-Wimplicit-fallthrough]
>>
>> and the stupid warning doesn't even say WHERE THE PROBLEM HAPPENS.
>>
>> No file name, no line numbers. Just this pointless garbage warning.
>>
>> Honestly, how does a compiler even do something that broken? Am I
>> supposed to use my sixth sense to guide me in finding the warning?
>>
>> I like the concept of the fallthrough warning, but it looks like the
>> clang implementation of it is so unbelievably broken that it's getting
>> disabled again.
>>
>> Yeah, I can
>>
>>  (a) build the kernel without any parallelism
>>
>>  (b) use ">&" to get both output and errors into the same file
>>
>>  (c) see that it says
>>
>>     CC      kernel/sched/core.o
>>   warning: fallthrough annotation in unreachable code [-Wimplicit-fallthrough]
>>   1 warning generated.
>>
>> and now I see at least which _file_ it is that causes that warning.
>>
>> I can then use my incredible powers of deduction (it's almost like a
>> sixth sense, but helped by the fact that there's only one single
>> "fallthrough" statement in that file) to figure out that it's
>> triggered by this code:
>>
>>                 case cpuset:
>>                         if (IS_ENABLED(CONFIG_CPUSETS)) {
>>                                 cpuset_cpus_allowed_fallback(p);
>>                                 state = possible;
>>                                 break;
>>                         }
>>                         fallthrough;
>>                 case possible:
>>
>> and it all makes it clear that the clang warning is just incredibly
>> broken garbage not only in that lack of filename and line number, but
>> just in general.
> 
> I commented this on the LLVM bug tracker but I will copy and paste it
> here for posterity:
> 
> "It is actually the fact that
> 
> case 1:
>     if (something || !IS_ENABLED(CONFIG_SOMETHING))
>         return blah;
>     fallthrough;
> case 2:
> 
> looks like
> 
> case 1:
>     return blah;
>     fallthrough;
> case 2:
> 
> For example: https://godbolt.org/z/GdPeMbdo8
> 
> int foo(int a) {
>     switch (a) {
>     case 0:
>         if (0)
>             return 0;
>         __attribute__((__fallthrough__)); // no warning
>     case 1:
>         if (1)
>             return 1;
>         __attribute__((__fallthrough__)); // warning

I think that if the "1" in this case, depends on the initial
configuration, as it is the case with CONFIG_CPUSETS, then
Clang should not cause a warning either. That's how GCC seems
to be treating these scenarios.

--
Gustavo

>     case 2:
>         return 3;
>     default:
>         return 4;
>     }
> }
> 
> I am not really sure how to resolve that within checkFallThroughIntoBlock() or
> fillReachableBlocks() but given that this is something specific to the kernel,
> we could introduce -Wimplicit-fallthrough-unreachable then disable it within
> the kernel.
> 
> The file location not showing up was fixed by commit 1b4800c26259
> ("[clang][parser] Set source ranges for GNU-style attributes"). The
> differential revision mentions this issue specifically."
> 
> Hopefully that would be an adequate solution, otherwise someone with more clang
> internal will have to take a look.
> 
> Cheers,
> Nathan
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/54a99f59-0211-d9c2-4ab5-e74bbc72086b%40embeddedor.com.
