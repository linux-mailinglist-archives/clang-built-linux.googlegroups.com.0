Return-Path: <clang-built-linux+bncBC27HSOJ44LBBGOZ372QKGQE6WNGPFQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43f.google.com (mail-wr1-x43f.google.com [IPv6:2a00:1450:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 726AA1CCAA0
	for <lists+clang-built-linux@lfdr.de>; Sun, 10 May 2020 13:59:21 +0200 (CEST)
Received: by mail-wr1-x43f.google.com with SMTP id 37sf436368wrc.4
        for <lists+clang-built-linux@lfdr.de>; Sun, 10 May 2020 04:59:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1589111961; cv=pass;
        d=google.com; s=arc-20160816;
        b=cuxzxPIfta5rfZF6yfrHiQ6Tw3JMQWEV5L+vktScNzjosfVHCceqAzzu8RbkDBpgAx
         pksfGT+yMGV9dn/Mrfiv3JyL7xVCrtoZDj6DePPGRcU0GUvTEOuMJLcSr/oV2oSlDtNB
         zkuBYDtAaN1XHotJDM27ZBlYxg0cXijsvnMxX6qRGL/w5FMzcMiH34DC1v0MCZeTY4qn
         jj8w26olRJec0wFTQK7E7fjyBfNmyll48RN+7QJlbL2eMHDGM6rt3LsnAcw8MaBzx7Ec
         iK+zCYHn9AGuYndrz1G8yrmEYnFaf40h/JDOLmZFkXtG9za+sZc5uEQKFHMqYGx85NFa
         JIBg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=JgWqZQc77BKhPOi7LeHHg0czV6dFFeTXg+UGPUrKtL0=;
        b=YCJNfWQ7Oge34EDlsRpPDLoL7W9cX8BzshwZz29fpwpalO/t22ZjtKWYUfa/c0kKJZ
         HcgROzVhgC7f/Kl08AusnOzYCkpX94BQ7DXQA3qHId7YOKHVdrJyrBpzApKCkQw6jKMA
         JUrjkPyUNVfSISeZOl1wL0MNxWLlGu3JsNFeQ6rApTt7WNVUD2jf1wfKCzmrUxB2cqF5
         NJnMAYJmwEbv4q4iXQXf5IHhBb1Qy4L3mu++hNqTOxvZBC3gjvauZFTvRzKwuRTPyKM+
         GomPZUUOkWnX3ZLli1+/0uc90zGGUtevcQesz1S4Ip2jOxLFcM3lFlZvxBFEJ+XhcnqP
         UqLg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 207.82.80.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=aculab.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:content-language
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JgWqZQc77BKhPOi7LeHHg0czV6dFFeTXg+UGPUrKtL0=;
        b=UwPSkGTpJ3ByzgxKAH6xOTlhxMb2DmwKZf1pRHEq9E4Ws8N9aYVltOGl+2t+e9jGus
         7KZnQn4D7bgWqBgY8jv2xhrkF4zg+s5xxv4X2JlGgqGkcDPhcQ0DrNWHWL6Jj9WnmTyH
         k75UsY2iSZEris/u9JT/ovglwf3LWV0+s8YgljfMvbQZmAfdaVmrqbhNX5Z8ou3R3nvF
         8Z9iJrrkio8bEzFARqVcs+X6XMnSOyO0gQ/1sK26RQXwbLTrGCxeCajB/g0LzmDKVvt4
         XRmxRvywcnV9MPUzoPEBmfBUFu9r2T6AAznza89HoGmpJW1ayAZ4dAooFIhKUI0lHjky
         eMQQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :content-language:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JgWqZQc77BKhPOi7LeHHg0czV6dFFeTXg+UGPUrKtL0=;
        b=nyPEeiEr9UnQupKjkyRYb4S01l3dtk5kN6h/oSH9rcx65EypVifCOfqxiJc4i2wgv2
         2HZy8CTCNjmyqxoLGCN9opTt3o/hcrXsMTmE+WW3Uh922YD6BKC/COGppZAcKYa0cZrl
         0tpB9MMquOKoTLI7Dy0AYhI6sPteHdPF787Xi/oL/6GOaKz9J9KZUMNwNputGnHWvj8Q
         zy2Lq3dGXajnwx2h1NcU4UET5qDEe+1hRD4/HcNcM2Ju0xe6XuuUAulKn14Z3xe79hLd
         QBUQQMFh+E4wLhj+gQbj7XhJamgfgd3esOqzemuSIhijwgPer4Ht2bX7escIIHXvceBF
         DAmA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuaSORzk/1JxhHTmMLH/cIPb54odukHoEcIN5W2kq+J0vRdtpeai
	2JjWoC6E2N+D7SYSLDUuZRw=
X-Google-Smtp-Source: APiQypInNXSnGOrd9k0pCuAtZBQlvIPs0BC6+ktBu5KGq+DKjAyM6axRPVGFhabKH2YJtCNqVKQoxQ==
X-Received: by 2002:a05:600c:4151:: with SMTP id h17mr1907955wmm.173.1589111961114;
        Sun, 10 May 2020 04:59:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:4103:: with SMTP id l3ls5253737wrp.7.gmail; Sun, 10 May
 2020 04:59:20 -0700 (PDT)
X-Received: by 2002:adf:edc6:: with SMTP id v6mr12984142wro.8.1589111960577;
        Sun, 10 May 2020 04:59:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1589111960; cv=none;
        d=google.com; s=arc-20160816;
        b=Fq4eVwk954rAyR+IIsea1gtO7dU3aFfMiM027+hnoya8KVpxPK+jKYuphgDKwe1A/A
         bZGtSssPO3ry49wLVysagF4ykIIXddmBt9RwyDLXUliaz5kvozfTTF+UfqYVmQaNAms6
         TdWtOk+5c94yIfDfq+NE54OKYhqyIKc0m4jaBicu2c8acUcQz+W064ZnJHpVRwNKLyGi
         M4vHzv3x1PmMEsZkBDKB5I7MC65d51HCaT9KH0NOVL+ILN0fXGNv+KKskci/L2qW0Hsi
         ty5Tzgt3cIOrfozVk+4MNJA5mgF5C/I7qe2StCIjSxEeYIgC8QcCYxx5WHvwB7+wW6Q6
         91Ew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from;
        bh=fzC2B0wTAn248OST9cSdDt0fcTNRJ6hQKjvc5lUCuXI=;
        b=MP7LQL0bRhMWDG/3IvtBJOgLHUwcCNrkpIh9K773osCFpAQ3qu700fhd+DEOoceafD
         strOValSzivKICJXzISqxNnAnLyHgrJyg48SvJfnypIAq15aWcARGtPtvDKSPSjX6qS+
         69dl687QetWPC3aQxuktfaWfYQofHfA8B6UJlAnPDd090TATtm8OjZMN5kHAJpgq/Rgz
         vqDKDoVBnEQyDjdwPu6Duuui5Pr8e96jySsAGcxQ4JrtmdOKHHd8G4fkSB50GG6I8yof
         i+p31PyhdGdFZ/k9I5/TruSCqjz2EecEmL5eHZZccBvVj3+yhU91BiAFRNvW/1ehlcLt
         JifQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 207.82.80.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=aculab.com
Received: from eu-smtp-delivery-151.mimecast.com (eu-smtp-delivery-151.mimecast.com. [207.82.80.151])
        by gmr-mx.google.com with ESMTPS id m4si426489wrn.5.2020.05.10.04.59.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 10 May 2020 04:59:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of david.laight@aculab.com designates 207.82.80.151 as permitted sender) client-ip=207.82.80.151;
Received: from AcuMS.aculab.com (156.67.243.126 [156.67.243.126]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-236-yr5hR8jROKGsvosUIzCW6w-1; Sun, 10 May 2020 12:59:18 +0100
X-MC-Unique: yr5hR8jROKGsvosUIzCW6w-1
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) with Microsoft SMTP
 Server (TLS) id 15.0.1347.2; Sun, 10 May 2020 12:59:18 +0100
Received: from AcuMS.Aculab.com ([fe80::43c:695e:880f:8750]) by
 AcuMS.aculab.com ([fe80::43c:695e:880f:8750%12]) with mapi id 15.00.1347.000;
 Sun, 10 May 2020 12:59:18 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: "'H. Peter Anvin'" <hpa@zytor.com>, Nick Desaulniers
	<ndesaulniers@google.com>, Brian Gerst <brgerst@gmail.com>
CC: Peter Zijlstra <peterz@infradead.org>, Thomas Gleixner
	<tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>, Borislav Petkov
	<bp@alien8.de>, Sedat Dilek <sedat.dilek@gmail.com>, stable
	<stable@vger.kernel.org>, Jesse Brandeburg <jesse.brandeburg@intel.com>,
	"kernelci . org bot" <bot@kernelci.org>, Andy Shevchenko
	<andriy.shevchenko@intel.com>, Ilie Halip <ilie.halip@gmail.com>, "the
 arch/x86 maintainers" <x86@kernel.org>, Marco Elver <elver@google.com>, "Paul
 E. McKenney" <paulmck@kernel.org>, Daniel Axtens <dja@axtens.net>, "Masahiro
 Yamada" <yamada.masahiro@socionext.com>, Luc Van Oostenryck
	<luc.vanoostenryck@gmail.com>, Linux Kernel Mailing List
	<linux-kernel@vger.kernel.org>, clang-built-linux
	<clang-built-linux@googlegroups.com>
Subject: RE: [PATCH] x86: bitops: fix build regression
Thread-Topic: [PATCH] x86: bitops: fix build regression
Thread-Index: AQHWJV6GnFcKS0TA9USbY8l3s67J1qihNCig
Date: Sun, 10 May 2020 11:59:17 +0000
Message-ID: <b1072e7116774e0c9e6e7e6f55bae4a3@AcuMS.aculab.com>
References: <20200505174423.199985-1-ndesaulniers@google.com>
 <8A776DBC-03AF-485B-9AA6-5920E3C4ACB2@zytor.com>
 <20200507113422.GA3762@hirez.programming.kicks-ass.net>
 <CAMzpN2hXUYvLuTA63N56ef4DEzyWXt_uVVq6PV0r8YQT-YN42g@mail.gmail.com>
 <CAKwvOd=a3MR7osKBpbq=d41ieo7G9FtOp5Kok5por1P5ZS9s4g@mail.gmail.com>
 <CAKwvOd=Ogbp0oVgmF2B9cePjyWnvLLFRSp2EnaonA-ZFN3K7Dg@mail.gmail.com>
 <CAMzpN2gu4stkRKTsMTVxyzckO3SMhfA+dmCnSu6-aMg5QAA_JQ@mail.gmail.com>
 <CAKwvOd=hVKrFU+imSGeX+MEKMpW97gE7bzn1C637qdns9KSnUA@mail.gmail.com>
 <8f53b69e-86cc-7ff9-671e-5e0a67ff75a2@zytor.com>
In-Reply-To: <8f53b69e-86cc-7ff9-671e-5e0a67ff75a2@zytor.com>
Accept-Language: en-GB, en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.202.205.107]
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: aculab.com
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: david.laight@aculab.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of david.laight@aculab.com designates 207.82.80.151 as
 permitted sender) smtp.mailfrom=david.laight@aculab.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=aculab.com
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

From: Peter Anvin
> Sent: 08 May 2020 18:32
> On 2020-05-08 10:21, Nick Desaulniers wrote:
> >>
> >> One last suggestion.  Add the "b" modifier to the mask operand: "orb
> >> %b1, %0".  That forces the compiler to use the 8-bit register name
> >> instead of trying to deduce the width from the input.
> >
> > Ah right: https://gcc.gnu.org/onlinedocs/gcc/Extended-Asm.html#x86Operandmodifiers
> >
> > Looks like that works for both compilers.  In that case, we can likely
> > drop the `& 0xff`, too.  Let me play with that, then I'll hopefully
> > send a v3 today.
> >
> 
> Good idea. I requested a while ago that they document these modifiers; they
> chose not to document them all which in some ways is good; it shows what they
> are willing to commit to indefinitely.

I thought the intention here was to explicitly do a byte access.
If the constant bit number has had a div/mod by 8 done on it then
the address can be misaligned - so you mustn't do a non-byte sized
locked access.

OTOH the original base address must be aligned.

Looking at some instruction timing, BTS/BTR aren't too bad if the
bit number is a constant. But are 6 or 7 clocks slower if it is in %cl.
Given these are locked RMW bus cycles they'll always be slow!

How about an asm multi-part alternative that uses a byte offset
and byte constant if the compiler thinks the mask is constant
or a 4-byte offset and 32bit mask if it doesn't.

The other alternative is to just use BTS/BTS and (maybe) rely on the
assembler to add in the word offset to the base address.

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/b1072e7116774e0c9e6e7e6f55bae4a3%40AcuMS.aculab.com.
