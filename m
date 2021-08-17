Return-Path: <clang-built-linux+bncBDNYNPOAQ4GBB4GV6CEAMGQEN2OSLWA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1039.google.com (mail-pj1-x1039.google.com [IPv6:2607:f8b0:4864:20::1039])
	by mail.lfdr.de (Postfix) with ESMTPS id B0AC23EF508
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 23:32:33 +0200 (CEST)
Received: by mail-pj1-x1039.google.com with SMTP id v3-20020a17090ac903b029017912733966sf3667980pjt.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 14:32:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629235952; cv=pass;
        d=google.com; s=arc-20160816;
        b=t2dJAx3KuF8Qs8EDzuCFXTHqoQt+uLYzAxZc635YXbcM2S0M5ON7q2E7mTJzEzqJHw
         qZYBpqnCk2/ttJZiBZwwMsBUpMAyTxn1EtXPpRpYSr5srvUeieNTbjY5qMRcvG1NcNEr
         LH1V9gpdtaV9Ghep66MVmbk+mv7AfEU6Rzs6Ih07PaS38Wy71KrigVjqOlX/kQV+F2Mb
         c7PM3M+EVMhZ22kII9Xu3ld07+CTLPp4FdcYgQw8gsqCDGNolcaF1PtSIAUvaDTIPFRG
         rxdPx9pBSf6QRDhJESLyHJj5xv5zvp7NxdcaWlSCXpn2fO5KEzUdAMSIx1xb/Kh9avv2
         TGOA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=TZqGDy110Ofs89Ug1G6shnXtMqG8ZZn3TNxgGIBs8OI=;
        b=weJGE5YRpFOmF2EgPFekGC0Q7K9fgrpecr6TvqLErWi0JKZ7+plhsBm7jbMF6mbOcU
         4LWxMjfchQPSRs3rEGLR1plHLPrh4q8GybfeMkEAVVs5DpwMlE4lBucSBpzaCc158hxY
         Gre/rPtnxRi3TY/F0QYRB0bzVGzmfgUuM0Ewdhitvb2lvXXDDYV6PsaeU/sABbFo5URI
         tZjE6CZhAxsSHP7j1zV0AqWQvm5J6+gt3uVNUkpObzm4DRrk86G/z0B3JhfkfQ9DuAMf
         VnWDK7l07e9AaZLcAB1Uq8h5FbzeOs+dv+BHT2g4a+InLyhReuI0P67/SG2IbBxngOo2
         90eA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@embeddedor.com header.s=default header.b=Vr2FF48p;
       spf=pass (google.com: domain of gustavo@embeddedor.com designates 192.185.46.109 as permitted sender) smtp.mailfrom=gustavo@embeddedor.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=TZqGDy110Ofs89Ug1G6shnXtMqG8ZZn3TNxgGIBs8OI=;
        b=TvY+bKyKLqedEYyXZW4hwG+TVMzY/xvXPg+Og2zDc2D7Zj2/GVdoSg70qGDkaLcaQT
         h0gJc74Flov0M8XtjkBGQcUPxyJUAX2wXdlgXhxL4E8Adytv7wniQ3RYRKPyXjbocd04
         gPSeNDV+ztG7CVdvW/SAjfAA2r6HArmtLhGJCgidfww8jjOxq7XNcaBwhs8kZcK4CFqc
         vFcR4oAwvwuzytLnHmHvlGmrY+DE0U8kJ2dmtje1zHpk5Q1IYLRckZYlLCuOqrooWabd
         mmicRwQpPo/BwKfzjW/zRAalCw9z/dMuFKOykjxjeb3KgZsTf7MtSVzOa+hP/pJZg2oI
         xMFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=TZqGDy110Ofs89Ug1G6shnXtMqG8ZZn3TNxgGIBs8OI=;
        b=FBBxIMNNRtuwf11Tw6QCCjTXr0B0u3vYJBwf5IsfKYqYPpV91HeRUjN5nJxpynuqjF
         c7JSWOKLt+st3zVkOdMeI9y2zyIYRT8rT7Cj/8h/1usrix/9KmTuAzp3Ei1RNBhVwnkm
         VqTddkdJIxcSybFQZJ74BM0YOJslVG5rc8RUsqDzawRKVub5kfnWAvIgWYjufVP95w9u
         ktj76eJdyMeub8GeLQSa/Mv6p2nFWKedMks0mfvPz0ChR4O1T3H/65Za/lF1jqghFOH+
         PKm9C3Z2LByRGL5Kiyl2CvB9o+voZdIrKNemdXkliihBdo/pHVGXdkAvUUJN5dpCazlI
         rhZQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532tQMdm4ppadUXLwm/YxM52XgAdkl9SiyqXuvqf1uFydJBEsF2v
	e9HBuET/ZHkKb/8c4RIgl5A=
X-Google-Smtp-Source: ABdhPJwf+SFac3NvQ7bNiAAxbnlhiF/eaxRDDD5Gj3Ih8J9qoteSJCk2MA4OsqI1ZCe8wl01mlaWyw==
X-Received: by 2002:a63:f654:: with SMTP id u20mr5342125pgj.130.1629235952371;
        Tue, 17 Aug 2021 14:32:32 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:6802:: with SMTP id l2ls90219pgt.8.gmail; Tue, 17 Aug
 2021 14:32:31 -0700 (PDT)
X-Received: by 2002:aa7:8a04:0:b029:3e0:ec4a:6e65 with SMTP id m4-20020aa78a040000b02903e0ec4a6e65mr5628211pfa.47.1629235951817;
        Tue, 17 Aug 2021 14:32:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629235951; cv=none;
        d=google.com; s=arc-20160816;
        b=cGD2nL2PVglTKcqMSO/xL0YBEW/kAjpEpp7UkXFLuTBh2i+76/aVchJOzM9E0N8tQi
         LVxeyh21uqdi25flk6/8zJwgsU81AGNZv0Z3g91PngtSYq6+KDAVI53dWdTfhY6Zlbsl
         Hz2n3jPrjQE7rXzj/Sw85Db0iHaBJ3xGO5pA9R7j2kfa6WgcHj1hyb3Qv/7NmfGK1rv/
         ujiIeifvYj740UYw5o2OenjmLF84DYEPOGTi0KytuJ2YxWOnKPzOGy0IBaQYP0NySwcZ
         OhDMXTyssZb4TEFGOG3RHCYAVkxsJts99nmubw5HYTPnTSNV2zm1RWCeUdtamBcz2lrN
         kiuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=4qKKDtGYKHJHsep4rHStScPnllMJG3PYx0Oahzc9bHw=;
        b=poZiDwgryO2o+2gCBYGAylRVQThT20A082/6a0xN+Q0TP4srbFSzDvnFtAftkhJwLG
         ww3ik7kxLsq75/GUM9y211mVn1uqSoqPyxerRWpLg14YvFbMA8SAscBObkYEmJ2/45nx
         +txyZYMt0wvUXMaafyrbIt1+edsA+gTIl1pvkiz3tvq4rILqcTtF/rcrQW2TR7WyC3b2
         5mP/bsoRBgaoYlt+dJvQjNm+rs2Jo8RikvRz4bZM1WibQ5RS3tpL7QLiOm68kcwy7WCj
         fWfL9Ka4Uo87u5yDmtGaXdqOynhxpXbEfOfvB3RjOWr1BmRnzNPUeAPPyiQHNpWj0yho
         Wq/Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@embeddedor.com header.s=default header.b=Vr2FF48p;
       spf=pass (google.com: domain of gustavo@embeddedor.com designates 192.185.46.109 as permitted sender) smtp.mailfrom=gustavo@embeddedor.com
Received: from gateway21.websitewelcome.com (gateway21.websitewelcome.com. [192.185.46.109])
        by gmr-mx.google.com with ESMTPS id o2si255543pjj.1.2021.08.17.14.32.31
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Aug 2021 14:32:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of gustavo@embeddedor.com designates 192.185.46.109 as permitted sender) client-ip=192.185.46.109;
Received: from cm17.websitewelcome.com (cm17.websitewelcome.com [100.42.49.20])
	by gateway21.websitewelcome.com (Postfix) with ESMTP id E1F7A401C0163
	for <clang-built-linux@googlegroups.com>; Tue, 17 Aug 2021 16:30:29 -0500 (CDT)
Received: from gator4166.hostgator.com ([108.167.133.22])
	by cmsmtp with SMTP
	id G6fFmmgvXMGeEG6fFmmzM2; Tue, 17 Aug 2021 16:30:29 -0500
X-Authority-Reason: nr=8
Received: from 187-162-31-110.static.axtel.net ([187.162.31.110]:44370 helo=[192.168.15.8])
	by gator4166.hostgator.com with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
	(Exim 4.94.2)
	(envelope-from <gustavo@embeddedor.com>)
	id 1mG6fF-003v0R-7G; Tue, 17 Aug 2021 16:30:29 -0500
Subject: Re: [PATCH] kbuild: Enable -Wimplicit-fallthrough for clang 14.0.0+
To: Masahiro Yamada <masahiroy@kernel.org>,
 Nathan Chancellor <nathan@kernel.org>
Cc: Kees Cook <keescook@chromium.org>,
 Linus Torvalds <torvalds@linux-foundation.org>,
 "Gustavo A. R. Silva" <gustavoars@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>,
 Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 linux-hardening@vger.kernel.org
References: <20210817005624.1455428-1-nathan@kernel.org>
 <80fa539a-b767-76ed-dafa-4d8d1a6b063e@kernel.org>
 <CAHk-=wgFXOf9OUh3+vmWjhp1PC47RVsUkL0NszBxSWhbGzx4tw@mail.gmail.com>
 <5c856f36-69a7-e274-f72a-c3aef195adeb@kernel.org>
 <202108171056.EDCE562@keescook>
 <3f28b45e-e725-8b75-042a-d34d90c56361@kernel.org>
 <CAK7LNAQFgYgavTP2ZG9Y16XBVdPuJ98J_Ty1OrQy1GXHq6JjQQ@mail.gmail.com>
From: "Gustavo A. R. Silva" <gustavo@embeddedor.com>
Message-ID: <71d76c41-7f9b-6d60-ba4f-0cd84596b457@embeddedor.com>
Date: Tue, 17 Aug 2021 16:33:25 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <CAK7LNAQFgYgavTP2ZG9Y16XBVdPuJ98J_Ty1OrQy1GXHq6JjQQ@mail.gmail.com>
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
X-Exim-ID: 1mG6fF-003v0R-7G
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-Source-Sender: 187-162-31-110.static.axtel.net ([192.168.15.8]) [187.162.31.110]:44370
X-Source-Auth: gustavo@embeddedor.com
X-Email-Count: 9
X-Source-Cap: Z3V6aWRpbmU7Z3V6aWRpbmU7Z2F0b3I0MTY2Lmhvc3RnYXRvci5jb20=
X-Local-Domain: yes
X-Original-Sender: gustavo@embeddedor.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@embeddedor.com header.s=default header.b=Vr2FF48p;       spf=pass
 (google.com: domain of gustavo@embeddedor.com designates 192.185.46.109 as
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



On 8/17/21 16:17, Masahiro Yamada wrote:
> On Wed, Aug 18, 2021 at 3:25 AM Nathan Chancellor <nathan@kernel.org> wrote:
>>
>> On 8/17/2021 11:03 AM, Kees Cook wrote:
>>> On Mon, Aug 16, 2021 at 09:55:28PM -0700, Nathan Chancellor wrote:
>>>> If you/Gustavo would prefer, I can upgrade that check to
>>>>
>>>> ifneq ($(call cc-option, -Wunreachable-code-fallthrough),)
>>>>
>>>> I was just trying to save a call to the compiler, as that is more expensive
>>>> than a shell test call.
>>>
>>> I prefer the option test -- this means no changes are needed on the
>>> kernel build side if it ever finds itself backported to earlier versions
>>> (and it handles the current case of "14" not meaning "absolute latest").
>>>
>>> More specifically, I think you want this (untested):
>>
>> That should work but since -Wunreachable-code-fallthrough is off by
>> default, I did not really see a reason to include it in KBUILD_CFLAGS. I
>> do not have a strong opinion though, your version is smaller than mine
>> is so we can just go with that. I'll defer to Gustavo on it since he has
>> put in all of the work cleaning up the warnings.
> 
> 
> 
> https://github.com/llvm/llvm-project/commit/9ed4a94d6451046a51ef393cd62f00710820a7e8
> 
>    did two things:
> 
>  (1) Change the -Wimplicit-fallthrough behavior so that it fits
>       to our use in the kernel
> 
>  (2) Add a new option -Wunreachable-code-fallthrough
>       that works like the previous -Wimplicit-fallthrough of
>       Clang <= 13.0.0
> 
> 
> They are separate things.
> 
> Checking the presence of -Wunreachable-code-fallthrough
> does not make sense since we are only interested in (1) here.
> 
> 
> 
> So, checking the Clang version is sensible and matches
> the explanation in the comment block.
> 
> 
> Moreover, using $(shell test ...) is less expensive than cc-option.
> 
> 
> If you want to make it even faster, you can use only
> built-in functions, like this:
> 
> 
> # Warn about unmarked fall-throughs in switch statement.
> # Clang prior to 14.0.0 warned on unreachable fallthroughs with
> # -Wimplicit-fallthrough, which is unacceptable due to IS_ENABLED().
> # https://bugs.llvm.org/show_bug.cgi?id=51094
> ifeq ($(firstword $(sort $(CONFIG_CLANG_VERSION) 140000)),140000)
> KBUILD_CFLAGS += -Wimplicit-fallthrough
> endif
> 
> 
> 
> The $(sort ...) is alphabetical sort, not numeric sort.
> It works for us because the minimum Clang version is 10.0.1
> (that is CONFIG_CLANG_VERSION is always 6-digit)
> 
> It will break when Clang version 100.0.0 is released.
> 
> But, before that, we will raise the minimum supported clang version,
> and this conditional will go away.

I like this. :)

I'm going to make the 0-day robot test it in my tree, first.

Thanks!
--
Gustavo


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/71d76c41-7f9b-6d60-ba4f-0cd84596b457%40embeddedor.com.
