Return-Path: <clang-built-linux+bncBCEJHTXX7MFBBSOS3X2AKGQE7OZA2FA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x439.google.com (mail-wr1-x439.google.com [IPv6:2a00:1450:4864:20::439])
	by mail.lfdr.de (Postfix) with ESMTPS id A36A61AB243
	for <lists+clang-built-linux@lfdr.de>; Wed, 15 Apr 2020 22:06:33 +0200 (CEST)
Received: by mail-wr1-x439.google.com with SMTP id h14sf507615wrr.12
        for <lists+clang-built-linux@lfdr.de>; Wed, 15 Apr 2020 13:06:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586981193; cv=pass;
        d=google.com; s=arc-20160816;
        b=Ce4SxjypNWPAX2kshHJCBijt9u0IGIOJasSI+dxudzZfji4OpDTnOOMGLsdKDPPT2I
         /SAcrxbUcZOgKdvMLRPIJ624VZvGRWxK7oBUloNC1elLvYXQLpen8dyGRqFul7MKHExn
         g/tZ/QXn11RBda/QJwdT/EC+n/XUtITRAWounyx3H2qYXqq1p7YBqHDheT0cL+qxs/mQ
         putcowSw8OdTI6rul1DK7fKMtgaGJymHRqgVvkjnjlyikdOI0eTUz+twpVFrtFBHjh/6
         ZgldgoQ60c3+Wu9N0jSCrx7DZKzHQLh/f0R+k6NTmgBd0tMz8uuB8IcTqrDAsNIYV21t
         qVQA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:message-id:user-agent:references
         :in-reply-to:subject:cc:to:from:date:mime-version:sender
         :dkim-signature;
        bh=agKKUdS82HmhkRgKlOg/2TQG2DgCAd8FxLUEjokfcaw=;
        b=c+yN81+iz8wRArrkEg3TO//9ismy8adoQWol7lZeFOgrWQgX6iiQf/nN//um/Tm64m
         OBL0O96f/vKQUrK3g9PKlpTrCQsATlsGZgSjVFMkMP0l5nvMjYFOjzPAtmKW6kkbwn5e
         bDyTWncX+R+Crg00BpheD6t21ogTU0qiJldQ6ls8SgGXEWn4ypEQONdaeox0a/g+5Uxs
         THFv6hxabFok2S2BzxWjE1/o/YGH1d0MUPbhmIA7iB6MvUvUXUiasb6N/upaIs+kvTPM
         WyjWmsz+WFYQAycG97AHrVAnYbwC56Wf1SjSov2ssB+y4bGbrpiKSQJQ4Nb2MrMvbeUv
         u5Kw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@agner.ch header.s=dkim header.b=kzCXjBTX;
       spf=pass (google.com: domain of stefan@agner.ch designates 2a02:418:6a02::a2 as permitted sender) smtp.mailfrom=stefan@agner.ch
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:date:from:to:cc:subject:in-reply-to:references
         :user-agent:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=agKKUdS82HmhkRgKlOg/2TQG2DgCAd8FxLUEjokfcaw=;
        b=Pm4BZaYCQkldxAbfHY2gMRmhxk3pTmrJZUpb1qfs8Nl5Hum5wLDH84i5AHtdkI6SaY
         FE6dRxhlhn9wk4p1i1FPqBtNZQuPZm93ICt6T3jpjX4RHkM8XDxHdmN8D04C94AR1O7o
         MwbMwW++A2eReMrgO5jz5U1HT5QgMyhmSGpsd+9EEkaOes6jE4yY7Uia0CveEcuff1Xh
         SjUwJHaYxdL0H+udMgsRvvdIlF+bqqhFko27AZNePvLsszqSVnkFB9CVpw1Eys0K8P0+
         fviKWVz4K2qmjxevlgUWPzK1OIz/EP/ZnCIUdsARhxlu5rQKP+HKWelaUGbbs+tKm6cX
         mZ9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:date:from:to:cc:subject
         :in-reply-to:references:user-agent:message-id:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=agKKUdS82HmhkRgKlOg/2TQG2DgCAd8FxLUEjokfcaw=;
        b=OKL/VHSuIWlsbAeOn/KB9yHJ/ZZIVbWEfUOlIX6fEiesdkhusF/dQy0FWLuFQW8Dki
         ffJIuATgPyzi2bxy3iyzh/AujV8Ai/xAqYjXkRLTumY3gP8hhQzh9uE9Fk4g6NOVSZt/
         Hn97mMMqi7o7if7lKsjUviofX509znhYznKqMUZ4p0xqIIum8qf7QYMYtnGwYj2adN/5
         tY0EGDwu2pToV9i4OG17qX+20aiPDRNq0LHEfUnT3uKR0Te4BLEGuAyxTStpNU506bRS
         a2ZtJJharx97ryScdhlqZcECwcj7p6Wd3Q1X90nTJ+j3844EwyZ9qqFvWznXP3++ju0d
         TmgQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PubDAqmrjKGAkywFxbUvQ6IBV+HBHFQW0UoW6RPWsF1yk3YpM772
	KbGw3KS6KRMnkb+fd58Kads=
X-Google-Smtp-Source: APiQypKZ24wIDp7JzDIMMZ2GOR6ojsqdYmnPhBSAClm6gAS7OR5+q/6/EkhKE6jnCSjnw8zTNTNAEw==
X-Received: by 2002:adf:fdc1:: with SMTP id i1mr23026434wrs.158.1586981193356;
        Wed, 15 Apr 2020 13:06:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:a915:: with SMTP id s21ls1776644wme.0.gmail; Wed, 15 Apr
 2020 13:06:32 -0700 (PDT)
X-Received: by 2002:a05:600c:22d3:: with SMTP id 19mr1032327wmg.110.1586981192517;
        Wed, 15 Apr 2020 13:06:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586981192; cv=none;
        d=google.com; s=arc-20160816;
        b=eF7OKAGkN6IzDuG8wBKc6b73g5X8JDtILm2dqDZP9breukBsWi0BGkEmCx42hSkCSe
         xSEg7HQl8IIPLBpo3dL0Hi2TGaGN+BixgVRFT4kX86+47KlChhCBMH/oX+kkonchGqwh
         7McHejP//1qMESBaCZhet4MkSw3SuWc3TqMpy24m5xqc/RBJJVLACigoeTsciKY7RA4t
         vUvKq0UU4AtMoL49QmZLWoUEy/kpxmicgMjkLCE0cgD8emyXdc4gLJsxgLa4tFSDVv05
         AXLrrDd2cophH6G09eRFQvPnNcwPeRj5oAMRFgCNFk23KINcqEz9OleBnMldiF7KKI8n
         0OyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:user-agent:references:in-reply-to:subject:cc:to:from
         :date:content-transfer-encoding:mime-version:dkim-signature;
        bh=18e6r5y/jgXADhhgiX3R6vif1YdVTFwaHH058p3heBc=;
        b=MZY2bauAdCli0ndb2eQdGTywSkH31oXVbGyKxUsW/n7ofVxjs8oUGsxmnmpdCvYg93
         WcDPnI6iV2tYJ7VMv9+rfa9nNEfcyQYqpUHsZ0wDTwY+v5TrIJI/L2K51UOTiFj6SDbd
         sMX5SXXsQ5iRtm8NQYsUX0V5Ai57DtCL1k7sr+mnFSSZuZCMnCBQTbHIB1/24WSGak5J
         4ttr8a2uBhtEgpTsvP0emNoqUn0Wq6hlAsSOgRAjRn8sZqGrdE8fZ5mvJTSkSqVcASJQ
         KpYjKOpcPtIgIzsb8mhw1JoPgCtAx8SbIfcWvYHc4Jg++h4LgGsl/a+2T9OXwdJCuFkT
         L4yQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@agner.ch header.s=dkim header.b=kzCXjBTX;
       spf=pass (google.com: domain of stefan@agner.ch designates 2a02:418:6a02::a2 as permitted sender) smtp.mailfrom=stefan@agner.ch
Received: from mail.kmu-office.ch (mail.kmu-office.ch. [2a02:418:6a02::a2])
        by gmr-mx.google.com with ESMTPS id f129si24381wmf.2.2020.04.15.13.06.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Apr 2020 13:06:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of stefan@agner.ch designates 2a02:418:6a02::a2 as permitted sender) client-ip=2a02:418:6a02::a2;
Received: from webmail.kmu-office.ch (unknown [IPv6:2a02:418:6a02::a3])
	by mail.kmu-office.ch (Postfix) with ESMTPSA id A3EE95C07A7;
	Wed, 15 Apr 2020 22:06:27 +0200 (CEST)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Date: Wed, 15 Apr 2020 22:06:27 +0200
From: Stefan Agner <stefan@agner.ch>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Jian Cai <caij2003@gmail.com>, Manoj Gupta <manojgupta@google.com>,
 Russell King <linux@armlinux.org.uk>, Enrico Weigelt <info@metux.net>, Kate
 Stewart <kstewart@linuxfoundation.org>, Greg Kroah-Hartman
 <gregkh@linuxfoundation.org>, Thomas Gleixner <tglx@linutronix.de>, Linux
 ARM <linux-arm-kernel@lists.infradead.org>, LKML
 <linux-kernel@vger.kernel.org>, clang-built-linux
 <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] ARM: replace the sole use of a symbol with its definition
In-Reply-To: <CAKwvOdk3YG5TFD71E-9vPqssFZW1U3umCR+AWLLp8RZK2zHGsw@mail.gmail.com>
References: <20200407190558.196865-1-caij2003@gmail.com>
 <CAKwvOdk3YG5TFD71E-9vPqssFZW1U3umCR+AWLLp8RZK2zHGsw@mail.gmail.com>
User-Agent: Roundcube Webmail/1.4.1
Message-ID: <a6964b6f784266838070f434110661f3@agner.ch>
X-Sender: stefan@agner.ch
X-Original-Sender: stefan@agner.ch
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@agner.ch header.s=dkim header.b=kzCXjBTX;       spf=pass
 (google.com: domain of stefan@agner.ch designates 2a02:418:6a02::a2 as
 permitted sender) smtp.mailfrom=stefan@agner.ch
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

On 2020-04-13 20:29, Nick Desaulniers wrote:
> On Tue, Apr 7, 2020 at 12:09 PM Jian Cai <caij2003@gmail.com> wrote:
>>
>> ALT_UP_B macro sets symbol up_b_offset via .equ to an expression
>> involving another symbol. The macro gets expanded twice when
>> arch/arm/kernel/sleep.S is assembled, creating a scenario where
>> up_b_offset is set to another expression involving symbols while its
>> current value is based on symbols. LLVM integrated assembler does not
>> allow such cases, and based on the documentation of binutils, "Values
>> that are based on expressions involving other symbols are allowed, but
>> some targets may restrict this to only being done once per assembly", so
>> it may be better to avoid such cases as it is not clearly stated which
>> targets should support or disallow them. The fix in this case is simple,
>> as up_b_offset has only one use, so we can replace the use with the
>> definition and get rid of up_b_offset.
>>
>> Signed-off-by: Jian Cai <caij2003@gmail.com>

Thanks for tackling this!

> 
> Probably didn't need the extra parens, but it's fine (unless another
> reviewer would like a v2).  Maybe Stefan has some thoughts?

Since this is a processor macro I actually prefer to have parentheses
here. All use sites of ALT_UP_B pass just a label, but still, just to be
on the safe side.

I was wondering why equ has been used in first place. I don't see an
advantage other than having a symbol which can be checked. But given
that this code is stable and don't really need debugging at this point,
I am fine replacing this to make it work for clang.


> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
> 
> Please add Link tags if these correspond to issues in our link
> tracker, they help us track when and where patches land.
> Link: https://github.com/ClangBuiltLinux/linux/issues/920

Agreed, please add the link. You can add this when submitting.

With that:
Reviewed-by: Stefan Agner <stefan@agner.ch>

--
Stefan

> 
>> ---
>>  arch/arm/include/asm/assembler.h | 3 +--
>>  1 file changed, 1 insertion(+), 2 deletions(-)
>>
>> diff --git a/arch/arm/include/asm/assembler.h b/arch/arm/include/asm/assembler.h
>> index 99929122dad7..adee13126c62 100644
>> --- a/arch/arm/include/asm/assembler.h
>> +++ b/arch/arm/include/asm/assembler.h
>> @@ -269,10 +269,9 @@
>>         .endif                                                  ;\
>>         .popsection
>>  #define ALT_UP_B(label)                                        \
>> -       .equ    up_b_offset, label - 9998b                      ;\
>>         .pushsection ".alt.smp.init", "a"                       ;\
>>         .long   9998b                                           ;\
>> -       W(b)    . + up_b_offset                                 ;\
>> +       W(b)    . + (label - 9998b)                                     ;\
>>         .popsection
>>  #else
>>  #define ALT_SMP(instr...)
>> --
>> 2.26.0.292.g33ef6b2f38-goog
>>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/a6964b6f784266838070f434110661f3%40agner.ch.
