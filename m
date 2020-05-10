Return-Path: <clang-built-linux+bncBCVLJ7OQWEPBBSHJ372QKGQEY2VEVCA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa40.google.com (mail-vk1-xa40.google.com [IPv6:2607:f8b0:4864:20::a40])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C7B61CCB1A
	for <lists+clang-built-linux@lfdr.de>; Sun, 10 May 2020 14:34:17 +0200 (CEST)
Received: by mail-vk1-xa40.google.com with SMTP id n1sf2851143vke.6
        for <lists+clang-built-linux@lfdr.de>; Sun, 10 May 2020 05:34:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589114056; cv=pass;
        d=google.com; s=arc-20160816;
        b=tgBk7ueXCHvBiNJ813DARtzN4cHr1uJoZ68xO0dkb7QNKoVSgDbecEaHcdfbrPbrDr
         l0dxVH4dmAAJUuTQ/GOLi9r1XhGQAKHNCA/awYZ/nmheL1LCRdeuehfnjvAOh6TZXbPx
         mChemUjWTmHVMnbYIGAibLfkvTPKFVyC6vy+j9nhZFsNhrUsWCCSzP8nxAfp8xIyfLr9
         qo5qz30JsQ/5i5e6waQVzmpiJJlXlAjX8eq1VUTFZk6Jsx09P35EJj+ZWMDT7eVuufig
         5MvjLi0jw2LC5uji9tpeD4pQ56dCxBd/SjceeMOs2Uw9kz8rbig+k6l72JUg6FT5VtS0
         kMPQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:from:cc:to:subject
         :mime-version:references:in-reply-to:user-agent:date:dkim-filter
         :sender:dkim-signature;
        bh=ySblJAOT4LRUC4xRw4nXKfBPbdB+u9Sbhb6Pr3bq7xs=;
        b=L6D63KZKUbA5cI49oOHtbqWH4CWmWe6mbAbqWK7V2fyu+chvL1RTsLMiwJEm/Pfl33
         Hs9I8FZ7C4j6joensmMeUsQbVf3jc4erd65cQ6M/MOYGO7X7Rt7UwZdbY4l0jiWadQbu
         tpxlItZyP4cjAiuTP+/KctfNmg2cyBvsoTm9tJfaWvKT45S6ozQldJgJvp+R7EloNTOy
         ec//WrWduIHjfxaXK20QLN1q/UJWXaQh6snDdOQYyDBpTIUAZiVNFKrduaF3CXR7B9iZ
         YAi9P0cjlq0kH2+XV20Ew0Swp2fq8fPwbHKrmmBl4yXVz9HLUyTuhHIePDm1tsWJOpTU
         +2mg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=fail header.i=@zytor.com header.s=2020042201 header.b=lFeaUOdq;
       spf=pass (google.com: domain of hpa@zytor.com designates 198.137.202.136 as permitted sender) smtp.mailfrom=hpa@zytor.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=zytor.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:date:user-agent:in-reply-to:references
         :mime-version:subject:to:cc:from:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=ySblJAOT4LRUC4xRw4nXKfBPbdB+u9Sbhb6Pr3bq7xs=;
        b=jTOhMjU1Ft/gr26UJCaCdLsbbp/LOXz1Y+uxZlcmqqC7YqxObYq1xvC8u/ZQxRKMzq
         qes3g74AJnEPch4YOYddmQpbiNu2KuoEN0ZAF84KjemikI9w7nt/mGT8N8Hk2eJBUz2H
         YkbVpan0iTkbHh9lrLTj7zINXYIxrxiHNrrt7rMR7fs8ij/p5ZHTGw3u1xSOPdwH7s0J
         MCDFfnvvpKknEzjMYf4Sl7S8KADabgXI51XzMzEq2t8iou00sks36O21HfIeDGy4sn5s
         A71wYt3TazAXy37UPJEUVxcixJJQM7zeNmXUfeCkEsNHDbUTVxSAkHIL2ly4EeXZG9Rg
         1/VA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:date:user-agent:in-reply-to
         :references:mime-version:subject:to:cc:from:message-id
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=ySblJAOT4LRUC4xRw4nXKfBPbdB+u9Sbhb6Pr3bq7xs=;
        b=UKo5UHwLvgMQVw2P/8SmIsi4NymRaYBF8LJaFrjjB/IlIwdKyY9/hefkmOM2wAV8q8
         xzM0P4e1V8tPETs3FG80YQ1+CbRc4CFYTU244K1ZyS+mdbeHxojLYNNMrb46oLD3gc/7
         O5TCc9s5VEw5hIQArmLcWoF58xqMPfvVLZZ97e3sT4PrDQ3Sh1uzeGbWfDXlyy5lM0Cb
         48HURf1IKWzGXtVEK9DGocTBnMtyQyhMqVrrfmG8X/dS1xmfa3h1gmzOWz5q/FsRMcyP
         0J947a2iHpSTamlUsUn2nl2G96Ekzyjhsz1F25Yx64OgXxRRXEMmdiY41ZL2PvZPq1ek
         dxAA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuaPeGj/QHYLTnsp4ZT5HB7njjPCRUx3QPBJ22QUtur38nqbV0Io
	ZBRCrsNDQXXFmFvhOoutMDk=
X-Google-Smtp-Source: APiQypJHqQDoGnMOO0UmWvF91qAY1lvPVDgfF3HTyU6nrf/AUYNqbbQWQ8066yWR0gElUZ5ysrhwyg==
X-Received: by 2002:a67:b706:: with SMTP id h6mr8318953vsf.238.1589114056318;
        Sun, 10 May 2020 05:34:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:2c86:: with SMTP id s128ls839126vss.3.gmail; Sun, 10 May
 2020 05:34:15 -0700 (PDT)
X-Received: by 2002:a67:8bc3:: with SMTP id n186mr8059488vsd.67.1589114055853;
        Sun, 10 May 2020 05:34:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589114055; cv=none;
        d=google.com; s=arc-20160816;
        b=dUwVgePThZ389BXL2KvjJ201S1iCtjN5NNOEb3tbPcd1ZXQLnDE8GbX4Xrsyn08+KP
         VDJkp/DiR28AArvQ0fONua/MWNP4XG5jNCysjqCLocE7uFyxN0jWlTtOrwjRyRvpfk6V
         RkFCAV/XAImJt9g/rQkBtiSjRk4BobLcwf/TwjjUG+nGvx7A2n3tkA/ZH+0w6JrsJ4wA
         WZ6naWMyOxS0HTlgoEDmJ9XI7BUd2LJ7m80EtTgM3nyk13nccuFpilDR+LvWk7AMCVwB
         xEjj1UgdSLBb14bJleL00gFXMNRP3wNR0DkYz3xSPjdw0GblnvarNliaWs+qM6wbdFKd
         0kRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:from:cc:to:subject:content-transfer-encoding
         :mime-version:references:in-reply-to:user-agent:date:dkim-signature
         :dkim-filter;
        bh=7P8+ApyU8rGNqq7/nbyLaPmrJ7F5ICigtbcLd7mTIRw=;
        b=BTOofPfu0mhw1UsHf/oyJGiXYIOWlZEeZvC6kZk1+Icd8EWbRnh4B8k5s2UryWKP5W
         C7/klFbl9N9zSQlV2euNkmVLh14D+s/hszj2W2bYYOSPcegNNUjz9TfBZF2wVLm8pJ9f
         jhV8RAUiQ3XA2o3AFB6njtocZFCYQoxu1btYA6Z4XIopDtZi1753vESblKiXFeC1NA8S
         ENvPrUYHxyvt3QNPTcTiDVX753NTggI8eOivAY9uTULaXVb5KDkz56eLpQtBvqjL7xOc
         m0znyfyK5u5fBhqVFNiqxhMD00VIvxQg1SVqZQ7jyJrlVw3MpgUbFcYiuL9PcNEaS7Nn
         Fa+A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=fail header.i=@zytor.com header.s=2020042201 header.b=lFeaUOdq;
       spf=pass (google.com: domain of hpa@zytor.com designates 198.137.202.136 as permitted sender) smtp.mailfrom=hpa@zytor.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=zytor.com
Received: from mail.zytor.com (terminus.zytor.com. [198.137.202.136])
        by gmr-mx.google.com with ESMTPS id c14si648080uam.0.2020.05.10.05.34.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 10 May 2020 05:34:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of hpa@zytor.com designates 198.137.202.136 as permitted sender) client-ip=198.137.202.136;
Received: from [IPv6:2601:646:8600:3281:5dc5:5678:c737:4336] ([IPv6:2601:646:8600:3281:5dc5:5678:c737:4336])
	(authenticated bits=0)
	by mail.zytor.com (8.15.2/8.15.2) with ESMTPSA id 04ACXuV4568776
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NO);
	Sun, 10 May 2020 05:33:59 -0700
DKIM-Filter: OpenDKIM Filter v2.11.0 mail.zytor.com 04ACXuV4568776
Date: Sun, 10 May 2020 05:33:48 -0700
User-Agent: K-9 Mail for Android
In-Reply-To: <b1072e7116774e0c9e6e7e6f55bae4a3@AcuMS.aculab.com>
References: <20200505174423.199985-1-ndesaulniers@google.com> <8A776DBC-03AF-485B-9AA6-5920E3C4ACB2@zytor.com> <20200507113422.GA3762@hirez.programming.kicks-ass.net> <CAMzpN2hXUYvLuTA63N56ef4DEzyWXt_uVVq6PV0r8YQT-YN42g@mail.gmail.com> <CAKwvOd=a3MR7osKBpbq=d41ieo7G9FtOp5Kok5por1P5ZS9s4g@mail.gmail.com> <CAKwvOd=Ogbp0oVgmF2B9cePjyWnvLLFRSp2EnaonA-ZFN3K7Dg@mail.gmail.com> <CAMzpN2gu4stkRKTsMTVxyzckO3SMhfA+dmCnSu6-aMg5QAA_JQ@mail.gmail.com> <CAKwvOd=hVKrFU+imSGeX+MEKMpW97gE7bzn1C637qdns9KSnUA@mail.gmail.com> <8f53b69e-86cc-7ff9-671e-5e0a67ff75a2@zytor.com> <b1072e7116774e0c9e6e7e6f55bae4a3@AcuMS.aculab.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Subject: RE: [PATCH] x86: bitops: fix build regression
To: David Laight <David.Laight@ACULAB.COM>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Brian Gerst <brgerst@gmail.com>
CC: Peter Zijlstra <peterz@infradead.org>,
        Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
        Borislav Petkov <bp@alien8.de>, Sedat Dilek <sedat.dilek@gmail.com>,
        stable <stable@vger.kernel.org>,
        Jesse Brandeburg <jesse.brandeburg@intel.com>,
        "kernelci . org bot" <bot@kernelci.org>,
        Andy Shevchenko <andriy.shevchenko@intel.com>,
        Ilie Halip <ilie.halip@gmail.com>,
        the arch/x86 maintainers <x86@kernel.org>,
        Marco Elver <elver@google.com>,
        "Paul E. McKenney" <paulmck@kernel.org>,
        Daniel Axtens <dja@axtens.net>,
        Masahiro Yamada <yamada.masahiro@socionext.com>,
        Luc Van Oostenryck <luc.vanoostenryck@gmail.com>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>
From: hpa@zytor.com
Message-ID: <216F48DF-7DB5-4F0F-8072-10DBF2F70612@zytor.com>
X-Original-Sender: hpa@zytor.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=fail
 header.i=@zytor.com header.s=2020042201 header.b=lFeaUOdq;       spf=pass
 (google.com: domain of hpa@zytor.com designates 198.137.202.136 as permitted
 sender) smtp.mailfrom=hpa@zytor.com;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=zytor.com
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

On May 10, 2020 4:59:17 AM PDT, David Laight <David.Laight@ACULAB.COM> wrote:
>From: Peter Anvin
>> Sent: 08 May 2020 18:32
>> On 2020-05-08 10:21, Nick Desaulniers wrote:
>> >>
>> >> One last suggestion.  Add the "b" modifier to the mask operand:
>"orb
>> >> %b1, %0".  That forces the compiler to use the 8-bit register name
>> >> instead of trying to deduce the width from the input.
>> >
>> > Ah right:
>https://gcc.gnu.org/onlinedocs/gcc/Extended-Asm.html#x86Operandmodifiers
>> >
>> > Looks like that works for both compilers.  In that case, we can
>likely
>> > drop the `& 0xff`, too.  Let me play with that, then I'll hopefully
>> > send a v3 today.
>> >
>> 
>> Good idea. I requested a while ago that they document these
>modifiers; they
>> chose not to document them all which in some ways is good; it shows
>what they
>> are willing to commit to indefinitely.
>
>I thought the intention here was to explicitly do a byte access.
>If the constant bit number has had a div/mod by 8 done on it then
>the address can be misaligned - so you mustn't do a non-byte sized
>locked access.
>
>OTOH the original base address must be aligned.
>
>Looking at some instruction timing, BTS/BTR aren't too bad if the
>bit number is a constant. But are 6 or 7 clocks slower if it is in %cl.
>Given these are locked RMW bus cycles they'll always be slow!
>
>How about an asm multi-part alternative that uses a byte offset
>and byte constant if the compiler thinks the mask is constant
>or a 4-byte offset and 32bit mask if it doesn't.
>
>The other alternative is to just use BTS/BTS and (maybe) rely on the
>assembler to add in the word offset to the base address.
>
>	David
>
>-
>Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes,
>MK1 1PT, UK
>Registration No: 1397386 (Wales)

I don't understand what you are getting at here.

The intent is to do a byte access. The "multi-part asm" you are talking about is also already there...
-- 
Sent from my Android device with K-9 Mail. Please excuse my brevity.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/216F48DF-7DB5-4F0F-8072-10DBF2F70612%40zytor.com.
