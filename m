Return-Path: <clang-built-linux+bncBCS7XUWOUULBBR4WUWBAMGQE2AE5EIA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x740.google.com (mail-qk1-x740.google.com [IPv6:2607:f8b0:4864:20::740])
	by mail.lfdr.de (Postfix) with ESMTPS id 4280E334BB5
	for <lists+clang-built-linux@lfdr.de>; Wed, 10 Mar 2021 23:42:16 +0100 (CET)
Received: by mail-qk1-x740.google.com with SMTP id h20sf14006802qkj.18
        for <lists+clang-built-linux@lfdr.de>; Wed, 10 Mar 2021 14:42:16 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1615416135; cv=pass;
        d=google.com; s=arc-20160816;
        b=A26Vzk7MW+Q379+Lk4ol3UJqDFfCd71S7JwNzBtaIw5nESHkJicA09U0W61h5cDPxp
         U4UE1+V2i17pSI4ydnYwM+CUeKL6+yAiJlpPzgh/NazCgZelUCOplzLI/6mMZ7qBThGB
         v66WW3LZsYVbEmZvPfGjEyhjrsyXZJxJrOMr88Ne8nHaqTIErbn67eJOkJEGUKDk8Dtd
         P5JjCKDTbKpgwdJYTI+S/q+VS4cfFWKBNCxhWd6sYS5K/6Oq7r6086Jqq7CLCcyyM0Wt
         dp8hf2nqKksq7SK/zEfyaIbZmx/FnGlK2eodNc/fcAyY425DNMtePYCEOI2i//0hxCk9
         J+lw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=SNZNM9EW2mqn/XI2hpMMYXwaQJYDo5V8tLnqlioy9OY=;
        b=VwzTjakl1LahD0VJZFGkRJ6/wH8i1byQsFaWBhUWKqMTL4weALsKRoohyshT3/+5Yv
         coavEIa2T4oL5VuY1jHEt5A8xATv1OQj0eX5if3xrkjmWD1Jxd6LCS1yYgzDRoVRpUKA
         BboFwtcqIh3JxM12nBeemxMIPsVEPp4MQ66Mfbn8zEJ2oazy9x2//wHVRDCkpMBIOy0x
         rko7dlz3gTV0GOAyfwQPgRrAeBZl/SCqu4Ridh5AhZcX//AMAIT/L4aukIMs1t/sSGFO
         wEd7+qGnD9F/v/fKcF/UeS2tBgqXnt8zaUkIgwqOyclluuBxxQMp8iCI1rZ8Ek5/Z06b
         w4lg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=GAUFbW76;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::102d as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=SNZNM9EW2mqn/XI2hpMMYXwaQJYDo5V8tLnqlioy9OY=;
        b=LAj+bYua8IfAF2J3Z1dvBk0LjV4ycASftn973eSwRWs/uLjFPS+U6e9BjGhvr5MSNR
         9C3f4KIpqDetDVMPUcsgBHWv1Ref5b90Np3DRied8w3RWxYEo1rR8bX6qQ4JwXLVyqRp
         rzwXbW+QTlsPEorMvQfRsHuwT4GoFKJOZQ/m5VBMKtgqA7lrlueJS2orDEqMgPQLztoA
         scrBAcYgfEWVLSTiagzwKwJlckP/IoWbRLSMH4dXh3yfFJ3q/XmPT9FOb0ufyCFL7g7r
         RCGoU7/F7RsPiknvUrtgvuWoAWd+ErtZty6ukCBm8w5FKoU/SOXSjm8fcmu30xctZKU2
         yYVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=SNZNM9EW2mqn/XI2hpMMYXwaQJYDo5V8tLnqlioy9OY=;
        b=MxR8qZQuS6kGVxruRRSMWhezw0uVSQN1Z3mk55wXvtSTae+8MW85geyRjfsZNqylbu
         1TF5AgKM38TzGcUzjRgR1/3WgVDEeyhlOncvxwivXAsMSy9tp5/mYWfLm1V2gmuA65CV
         TYLGJ+/cWVr81N4vOjUp+Zhlf9PsVAci6XxwpCd0ud61GdryPDp0OXcG2p6sTuTMCl27
         uspvooubh6YUpQ88vKQJDaUI/u/0M3X8SjjvwQzUtEXOw2J7paet62xsVWNRsqv/e1O0
         vIDIzpFVn2nSKez8aK9ZW86shrGgnO4XX8HzpLRrhATQSgmiVtHwnUmSkz2ll9Wcog9c
         5gUA==
X-Gm-Message-State: AOAM531q8CY5BcqF0LOLg2WQKCAQ4sWRss/heMQhqsJc/WQRax4c4C26
	odItZzRL+lD8SVHAZnzAKPk=
X-Google-Smtp-Source: ABdhPJyLa11eyw6FdnjkXjj6shPyYEynXF8BntAxoeWeAh1JS4LCxwkw14csca9H8ttyaozxzWDaag==
X-Received: by 2002:aed:20a8:: with SMTP id 37mr4800500qtb.170.1615416135113;
        Wed, 10 Mar 2021 14:42:15 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:12c4:: with SMTP id e4ls2036712qkl.4.gmail; Wed, 10
 Mar 2021 14:42:14 -0800 (PST)
X-Received: by 2002:a37:496:: with SMTP id 144mr5074572qke.324.1615416134680;
        Wed, 10 Mar 2021 14:42:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1615416134; cv=none;
        d=google.com; s=arc-20160816;
        b=I9AOY4c0Qg+J/EQCPVpiHoToRi7S8fAvQN2N+JoEiGTmlyBK0HlvtdQb4G5zO1fbcg
         UWjNZ9ckffv27czKYBKI+eGs0rknVfPEouQjgRcHUweClbzTL+3Va7SqM1HtYaTifijv
         Pt9cHv3emPRCpPwFp2duYpESJBCl2l2W4WLPxUlwQ4xMNotYQ/Rux5KpOGRGGLI8yld+
         zUfM/J9GcVFcF1CABPkzaXo0Nbl1a7Vp4dfaWAusvEfXVVbdqsxKJujD6UrHnEt2Vb36
         8LENYb1A5jUB5jpq3O9l0cA8svlRTzE6SkVBTmg9wSfASEDx7X97X7Ozr5XsqgslkCOv
         LKEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=jiNIsn8dDvvgor6dAKRTzz8LRo1SUw/7m6o11+C+WCA=;
        b=n4qUNP9yGWdfh08Yjitd5N4yKuZbutw1EcN27fi37W1BTuzsv1t25UNdafuia5lZjg
         NJu6ASirXxLbEe2kolrWtzfIM5tNEt+gE7pbwr6j85WttNUl2wNDv6+28nvJlJ9/9wyC
         V7AOWyQ0bMlgya1m4EOs6jWyc7/qsGtutI4cMfcPBwCnh5xFnB70PtsCson3SpCgVGke
         u2/C1oJwR/ZEWwdY0teVEpUfPOUCWKq0B3DYaFsArCOZ4y4Tx+JiuYK9RGSoZ5L7JteI
         cJ006WoQtFWuFnVlOlnNxzI4aPrwcfqlYzP2/vcAAszkl5+tYY7+22I7F3iSYAdBamr1
         EJvg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=GAUFbW76;
       spf=pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::102d as permitted sender) smtp.mailfrom=maskray@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x102d.google.com (mail-pj1-x102d.google.com. [2607:f8b0:4864:20::102d])
        by gmr-mx.google.com with ESMTPS id d12si37237qkn.0.2021.03.10.14.42.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Mar 2021 14:42:14 -0800 (PST)
Received-SPF: pass (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::102d as permitted sender) client-ip=2607:f8b0:4864:20::102d;
Received: by mail-pj1-x102d.google.com with SMTP id cl21-20020a17090af695b02900c61ac0f0e9so2280975pjb.1
        for <clang-built-linux@googlegroups.com>; Wed, 10 Mar 2021 14:42:14 -0800 (PST)
X-Received: by 2002:a17:902:dac2:b029:e6:30a6:4c06 with SMTP id q2-20020a170902dac2b02900e630a64c06mr5317671plx.65.1615416133733;
        Wed, 10 Mar 2021 14:42:13 -0800 (PST)
Received: from google.com ([2620:15c:2ce:0:6ded:c9f:3996:6bc8])
        by smtp.gmail.com with ESMTPSA id m6sm464741pff.197.2021.03.10.14.42.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Mar 2021 14:42:13 -0800 (PST)
Date: Wed, 10 Mar 2021 14:42:09 -0800
From: "'Fangrui Song' via Clang Built Linux" <clang-built-linux@googlegroups.com>
To: Nicolas Pitre <nico@fluxnic.net>
Cc: Nicholas Piggin <npiggin@gmail.com>, Arnd Bergmann <arnd@kernel.org>,
	Ard Biesheuvel <ardb@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
	Andrew Scull <ascull@google.com>, Mark Brown <broonie@kernel.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	David Brazdil <dbrazdil@google.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Ionela Voinescu <ionela.voinescu@arm.com>,
	Kees Cook <keescook@chromium.org>,
	Kristina Martsenko <kristina.martsenko@arm.com>,
	Linux ARM <linux-arm-kernel@lists.infradead.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	Mark Rutland <mark.rutland@arm.com>, Marc Zyngier <maz@kernel.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Vincenzo Frascino <vincenzo.frascino@arm.com>,
	Will Deacon <will@kernel.org>
Subject: Re: [PATCH] [RFC] arm64: enable HAVE_LD_DEAD_CODE_DATA_ELIMINATION
Message-ID: <20210310224209.otjkhwng4hlislnj@google.com>
References: <20210225112122.2198845-1-arnd@kernel.org>
 <20210226211323.arkvjnr4hifxapqu@google.com>
 <CAK8P3a2bLKe3js4SKeZoGp8B51+rpW6G3KvpbJ5=y83sxHSu6g@mail.gmail.com>
 <1614559739.p25z5x88wl.astroid@bobo.none>
 <3o63p7pp-50o9-2789-s3qo-99pp5nrnnoqp@syhkavp.arg>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Disposition: inline
In-Reply-To: <3o63p7pp-50o9-2789-s3qo-99pp5nrnnoqp@syhkavp.arg>
X-Original-Sender: maskray@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=GAUFbW76;       spf=pass
 (google.com: domain of maskray@google.com designates 2607:f8b0:4864:20::102d
 as permitted sender) smtp.mailfrom=maskray@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Fangrui Song <maskray@google.com>
Reply-To: Fangrui Song <maskray@google.com>
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

On 2021-03-10, Nicolas Pitre wrote:
>On Mon, 1 Mar 2021, Nicholas Piggin wrote:
>
>> Excerpts from Arnd Bergmann's message of February 27, 2021 7:49 pm:
>> > Unlike what Nick expected in his submission, I now think the annotations
>> > will be needed for LTO just like they are for --gc-sections.
>>
>> Yeah I wasn't sure exactly what LTO looks like or how it would work.
>> I thought perhaps LTO might be able to find dead code with circular /
>> back references, we could put references from the code back to these
>> tables or something so they would be kept without KEEP. I don't know, I
>> was handwaving!
>>
>> I managed to get powerpc (and IIRC x86?) working with gc sections with
>> those KEEP annotations, but effectiveness of course is far worse than
>> what Nicolas was able to achieve with all his techniques and tricks.
>>
>> But yes unless there is some other mechanism to handle these tables,
>> then KEEP probably has to stay. I suggest this wants a very explicit and
>> systematic way to handle it (maybe with some toolchain support) rather
>> than trying to just remove things case by case and see what breaks.
>>
>> I don't know if Nicolas is still been working on his shrinking patches
>> recenty but he probably knows more than anyone about this stuff.
>
>Looks like not much has changed since last time I played with this stuff.
>
>There is a way to omit the KEEP() on tables, but something must create a
>dependency from the code being pointed to by those tables to the table
>entries themselves. I did write my findings in the following article
>(just skip over the introductory blurb):
>
>https://lwn.net/Articles/741494/

Hey, this article taught me R_*_NONE which motivated me to add various R_*_NONE
support to LLVM 9!

In the weekend I noticed that with binutils>=2.26, one can use
.reloc ., BFD_RELOC_NONE, target
(https://sourceware.org/bugzilla/show_bug.cgi?id=27530 ).
I implemented it for many targets in LLVM, but that will require 13.0.0.

>Once that dependency is there, then the KEEP() may go and
>garbage-collecting a function will also garbage-collect the table entry
>automatically.
>
>OTOH this trickery is not needed with LTO as garbage collection happens
>at the source code optimization level. The KEEP() may remain in that
>case as unneeded table entries will simply not be created in the first
>place.

For Thin LTO, --gc-sections is still very useful.
I have more notes in https://maskray.me/blog/2021-02-28-linker-garbage-collection#link-time-optimization .

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210310224209.otjkhwng4hlislnj%40google.com.
