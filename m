Return-Path: <clang-built-linux+bncBDD4ZNHM3QHRB2P2SWBQMGQE7FSS3XA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83f.google.com (mail-qt1-x83f.google.com [IPv6:2607:f8b0:4864:20::83f])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FD29351073
	for <lists+clang-built-linux@lfdr.de>; Thu,  1 Apr 2021 09:59:38 +0200 (CEST)
Received: by mail-qt1-x83f.google.com with SMTP id j2sf2608890qtv.10
        for <lists+clang-built-linux@lfdr.de>; Thu, 01 Apr 2021 00:59:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1617263977; cv=pass;
        d=google.com; s=arc-20160816;
        b=qMyA7c7P5fUxZnisiLajtL9fcGE9wg+RdgfqU8kXaXqn2m/8pDx7AaIA3SzeMygAWj
         9+nn75XIWvcPk/DtaIHT5wZzzVHqRF/+vjMJ14BiwX0Ivzp5JprJFPeL5ULqZMSigX3D
         L2nw/wNjU/zGERRpoPfUacBPazaByP3kOr+Gi82lmuwG8FPgtem5cqcAbU648GzRq2WB
         wsC4SbMbQF6PMR+EIjpFTBGZ9oQ+S0JBxakxlSdDZ01BuqrNZFq5ZtMASzKyDUcJ8XUA
         Qu8w5CuEcFgOUQRpxJnMHE5F+fKRzELN/CnF53WvlWpVyeNriwMTBAUMKI0cXBtZ0W4Q
         UqzA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:message-id
         :in-reply-to:date:references:subject:cc:to:from:sender
         :dkim-signature;
        bh=05z4Fyu9PVWfMUdKCWt9ZCgcmCS6eYeRyeBIybGERcw=;
        b=kuhoRBnj92EcshZLqlNqMBFtKfP3KqsxXap56VmXG5Ci/Z19PoXyDda7+DBy/AfGq3
         9vAYJAxLv0K+zMKdvTUzuUWgk1ZATFAM9u9XI6kAlu8at7lfQfCes4EtiQsJNsnua595
         SYaURP438jDuLR1HN/3w9O43KTZQ/nlqhdCjmgwWxDFf14KIFBB8vvKVhlRhKJy0hlj3
         mdFDy5sdIlwCxTdkh5TER3EapEn/4+yW04W7CFc07Hjtot/MzCpUrs986s45gcrO5GC0
         Hw9GmOptot9+4iHUzAQ8o9GZq1jW0e9t2wF2krqIDRsmV0ew8KooFKJ892FW9Xmo1r2g
         KavA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of jemarch@gnu.org designates 2001:470:142:3::10 as permitted sender) smtp.mailfrom=jemarch@gnu.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gnu.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:references:date:in-reply-to:message-id
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=05z4Fyu9PVWfMUdKCWt9ZCgcmCS6eYeRyeBIybGERcw=;
        b=ITUKSs9YJAg8rgn1WIvT3pqG18UjjWy78SbnER0qZiUa9WA6KazBqPt82Z5V+giP3h
         utbWv8EILH9q5bfVTNsi1kYGOrg42tAEdo9hgVKFxeE4Fv5oLcc77N2Qe3sppQdC0Wqi
         W9xyXRDvMm5ubqNgd0GtwZFULZsHoTiOzXUvP2vacbqPhRxaQV65QPyjkqMiyt+Kbokq
         AeKwmAsX93VP3xkioIyU559TIgv5dothwAKppw8vVzE9cW4WfEcWo7ojeVAQ1dfjVflp
         6vJ7XTDA849O69c2e4AAj7cVzdiGL7k1qfVXrhapEvXDK11o7XoYF6XbdJJsrATG1vXX
         b77Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:references:date
         :in-reply-to:message-id:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=05z4Fyu9PVWfMUdKCWt9ZCgcmCS6eYeRyeBIybGERcw=;
        b=KWdRBmKIcTUtSXcAQpVj8Fw2Y3ptTrJUCwO3XYCRpGEF0TXQ12ShrAjArP55O8YtIK
         fVlLTzn2YAiWTm/zwrx5OoosioLwul665+hoTJKif9TnHgV9PdOZfQuiUyLeC/pPIKX2
         8PfrH/gNYvidoRVvfMykq4DStcvWjR7+AK2uhkSgd8wZocoW2F2c8GsRbxKrNjfBrMxl
         dDmXJ4AVxJ2ULksyKBqyjeuhQA46ziC5oGYQrEKipCRI1u2ZKPlwVW9W8LvNIH1Zn7hk
         Z/dTBmSagF1F9a196/hKeIOX1fY4mgLzuqt+CE5V9MgxK+bJbrw9JNWaeDACIMbfESAS
         xPkA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533VkyOFvlOPuvg/OhJJWWcuCEiFZdUmlePHZ9gGrrV/Gg5B5Uue
	XwTkMrne8BOpAiYhDcWdIwM=
X-Google-Smtp-Source: ABdhPJxbhexWwVyEu35jCPIf3oNYkZpHZT3khJF4h+leiR9IYmqa0jmFvWWX050w5oYo/aaiZ4uWVw==
X-Received: by 2002:a37:a008:: with SMTP id j8mr6963382qke.343.1617263977391;
        Thu, 01 Apr 2021 00:59:37 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:7a82:: with SMTP id v124ls2844402qkc.3.gmail; Thu, 01
 Apr 2021 00:59:37 -0700 (PDT)
X-Received: by 2002:a37:a74e:: with SMTP id q75mr7027761qke.165.1617263976984;
        Thu, 01 Apr 2021 00:59:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617263976; cv=none;
        d=google.com; s=arc-20160816;
        b=JTZHlfrt/gjI0jOrro6tj96fYy8GbQs6SO7ve80tyw+6PSi8C6NUDAMQcd3taIuhTP
         RzbL8gbT7g8RzRCQTbtiehIAEI5R/832OXmChWkmw+XEVIX9MQHla4KiNfPRDbfgqAdA
         bL+HSVCZG+JyJbchhni80wrM4mSwX83AMTH6r2xB8y9CcGSssYMLJZ7U0CoTKAwmbWbP
         q746r6VCyi098z2pNpdEiQ9TRwdBCtZmkVcx2aVrjsO0NtLZFYrKhROUhyuT7Amp4vc5
         yQvzR6NT/0dBDfy/z4iwop61KvpE07JOxlrTO6V9SQS/5IFsu0mA1gOA5Y4MdA888Kzt
         YHdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:message-id:in-reply-to:date:references
         :subject:cc:to:from;
        bh=PbZ3IJLVFS90n7JrzD6FdEX9EfjWCvFSgPw6YCWwIFg=;
        b=dzeu60+4m5/xuMzycSeHN7xDTqd//qQCCG4RHsxIa6jEoXpjq5h9nfAUFxLmNTQl5T
         UEONn+TGvwFboIcOBSHZYpt7QXW7S/q+HrFXbUR//M/9OkLvr7XNLautLTy/8V3QbjUC
         0OHLHNbKcGjkmqjFZ9Lt0/yjKtpEauEbmsJdeTMO42VM7ADdOwx06ukxGJqM0c/PxIrX
         KlCUjT/YCKvfzbHx5rKkj/JNhxSvryrruOlE5GTABiITBqY/4F4LYWzQZCH6bvZR93vy
         gOIvlv7+TRlxKPezQIE79Pwc26XeZXMjTYj9C83R1UQjeZvqaIED+Sx7PTOgAnX/4ey+
         uEjA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of jemarch@gnu.org designates 2001:470:142:3::10 as permitted sender) smtp.mailfrom=jemarch@gnu.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gnu.org
Received: from eggs.gnu.org (eggs.gnu.org. [2001:470:142:3::10])
        by gmr-mx.google.com with ESMTPS id r26si462106qtf.3.2021.04.01.00.59.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 01 Apr 2021 00:59:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of jemarch@gnu.org designates 2001:470:142:3::10 as permitted sender) client-ip=2001:470:142:3::10;
Received: from fencepost.gnu.org ([2001:470:142:3::e]:49713)
	by eggs.gnu.org with esmtp (Exim 4.90_1)
	(envelope-from <jemarch@gnu.org>)
	id 1lRsEl-0006xL-UK; Thu, 01 Apr 2021 03:59:32 -0400
Received: from [141.143.193.74] (port=22056 helo=termi.gnu.org)
	by fencepost.gnu.org with esmtpsa (TLS1.2:RSA_AES_256_CBC_SHA1:256)
	(Exim 4.82)
	(envelope-from <jemarch@gnu.org>)
	id 1lRsEk-0001o6-36; Thu, 01 Apr 2021 03:59:31 -0400
From: "Jose E. Marchesi" <jemarch@gnu.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Elena Zannoni <elena.zannoni@oracle.com>,  Steven Rostedt
 <rostedt@goodmis.org>,  linux-toolchains@vger.kernel.org,
  clang-built-linux <clang-built-linux@googlegroups.com>,  Kees Cook
 <keescook@chromium.org>,  Florian Weimer <fweimer@redhat.com>,  Christian
 Brauner <christian.brauner@canonical.com>,  nick.alcock@oracle.com,
  Segher Boessenkool <segher@kernel.crashing.org>
Subject: Re: Plumbers CF MCs
References: <CAKwvOdndc=ej=40WktFz0t083pZJcdX1tipuWoTvAw=JC8b3Aw@mail.gmail.com>
	<87o8fa3oua.fsf@gnu.org>
	<403153ed-7953-c42e-40a2-6ad313acd661@oracle.com>
	<CAKwvOd=aCn9WqcZe8KgvvZmW0C0nUVL9+sjE_xh0A-ru-995Hg@mail.gmail.com>
Date: Thu, 01 Apr 2021 09:59:25 +0200
In-Reply-To: <CAKwvOd=aCn9WqcZe8KgvvZmW0C0nUVL9+sjE_xh0A-ru-995Hg@mail.gmail.com>
	(Nick Desaulniers's message of "Wed, 31 Mar 2021 13:36:03 -0700")
Message-ID: <87r1ju1llu.fsf@gnu.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/28.0.50 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jemarch@gnu.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of jemarch@gnu.org designates 2001:470:142:3::10 as
 permitted sender) smtp.mailfrom=jemarch@gnu.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=gnu.org
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


Hi Nick.

> On Wed, Mar 31, 2021 at 12:35 PM Elena Zannoni <elena.zannoni@oracle.com> wrote:
>>
>> On 3/22/21 2:39 PM, Jose E. Marchesi wrote:
>> > Hi Nick.
>> >
>> >> I saw plumbers opened call for microconferences:
>> >> https://www.linuxplumbersconf.org/blog/2021/index.php/2021/03/18/cfp-open-microconferences/
>> >>
>> >> I was going to put together a submission; do we want to do a combined
>> >> toolchain MC, or have distinct ones this year?
>> >>
>> >> I know in 2020 the GNU cauldron was co-located with Plumbers, as well
>> >> as a GNU Tools Track MC and LLVM MC.
>> > We are actually discussing in another thread about abusing LPC's
>> > hospitality for another GNU Tools Track this year...
>> >
>> > Regarding the micro-conferences, I would be ok with either combined or
>> > separated.  I think both approaches have their advantages.
>> >
>> > In either case I'm up for organizing the GNU part.
>>
>> Hi,
>> yes, so, it looks like a GNU toolchain track will happen again this year
>> at LPC (in lieu of the Cauldron conference).
>
> Cool; I generally find these talks of more interest to me personally
> than many of the kernel topics. It's nice to be able to attend (as an
> LLVM developer).
>
>> For the toolchain related MC, we should pick a better name than last
>> year to avoid people getting confused between the MC and the track.
>> Something like "toolchains and kernel intersection" or similar.
>
> Oh, yeah, that's a great idea.

What about "Toolchains and Kernel MC".

>> I am neutral on whether it is with LLVM or separate. I guess it all
>> depends on how long we want the MC to be.
>> If there are enough topics for a double slot, you should request that
>> sooner rather than towards the end, when there might be no extra slots
>> left.
>
> Sure, that sounds good.  Maybe we can have a CFP for the proposed MC,
> and if we get enough interesting proposals that it doesn't look like
> we'll be able to accomodate what we'd like, we can split into two MCs
> (if we even need to cross that bridge; maybe we can fit everything
> into the 4hrs for an MC).

I think that is a good plan.

So, how should we proceed?  Should I send a MC proposal, or you do it?
:)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87r1ju1llu.fsf%40gnu.org.
