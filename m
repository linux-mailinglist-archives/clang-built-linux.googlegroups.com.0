Return-Path: <clang-built-linux+bncBDV2D5O34IDRBKFKZ73QKGQEHY5C5LQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x837.google.com (mail-qt1-x837.google.com [IPv6:2607:f8b0:4864:20::837])
	by mail.lfdr.de (Postfix) with ESMTPS id 7077420966B
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Jun 2020 00:35:21 +0200 (CEST)
Received: by mail-qt1-x837.google.com with SMTP id o11sf2631413qti.23
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Jun 2020 15:35:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593038120; cv=pass;
        d=google.com; s=arc-20160816;
        b=nExb5TlHbj+AyKGpkJ9FWnq9tzgxsfs1DUumTE6yHC3/nSGcU5b2Jv6WI3pdK2BLxW
         5P4flK4pmAW2ofCIWjo+Hq2Ov1K4QQ4RQmsHKCXeQOXT1aCaj3UIVEHRVuwIIgJ5jZ7k
         kr1FKXqZmnvZ01zAAkaPiKlEC8F57BSvIpQiOGRCmrD/6Cs0p08o6bYwcld7P5gDv7JN
         eSYLO2DBsxw16UFlIFTiWAAQ85Km2LCYKnFSJJZ5N6ymnARiyhvsvkIDbzXyEAyaXxwT
         P76azXsIhvnT9woaVFvKAeDxZVd6kGPIvylkSyKtO6kRax/BAc7kPWg+kxLvk7yrxJIu
         84VQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:references:cc:to:from:subject:sender:dkim-signature;
        bh=7cJtSIuznBCzpxyQGEZSs8OJtmjFmwIPR9pw02mGQ+M=;
        b=eqVcNUD8dds6++Yetq5hq1xmJoJosLWsTkIWtLEbTvltP65jg7DbtItrTqgy/KVbV/
         UdK/vDSdmGilKqPUrvIR7zU9ABag/wuxQTycaVcv9zJZd3MmCCMsUhDB77ax4woAYMg7
         szrv2ABoKhX/zORTgXYwsUkgu7gMlhyqUYgvm1L+nyzAyy+cSO8tC94OcvIsPcZgvh3C
         82JS42snXLh1U0jCgmlZIIs1CEkZvIB2wv5Q9Jg5l/RbYqfvaHQ3bOwOYXG2pE/r1TFb
         PDEzdeYCOvs+ow/dPz5/heGCgCDE15ffI4ogcmAr8P5OHrIH4rRR89zenfBRpDTODsgv
         gyqw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=if31kHFg;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:from:to:cc:references:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7cJtSIuznBCzpxyQGEZSs8OJtmjFmwIPR9pw02mGQ+M=;
        b=GJdxSv9ZaDQc9ivBOuVEjvwA3xgOWwKjvkjcFqsUjsbRitr7lQP3EsmkqEgcWvytzq
         K/qg/BXcWek7PfpX+dpDT3bNBgsoF1R5TUYQfNZBc7y/fsNDtRKC/Nx7D20E/L+m55VB
         TK0KEWOFzYIwoCXSSG5IcW6T4QlJEvCTH7BJNa6pRTZRver023Y3aF30xtOT3OI3Y8Nn
         fd7o+nDFePPRrdO7Mg11RJKI0bw7FpcZzKFt5VfK0ucZ0cGU6q5rvQTDoxbKindI1sjk
         2iN8zBWdr7FKfQWtsveW1Crh0ee03o3hpfw8GSleHktgdUHuVEID0QLXHYdoZXC8hVs9
         KEvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:from:to:cc:references:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7cJtSIuznBCzpxyQGEZSs8OJtmjFmwIPR9pw02mGQ+M=;
        b=j01GGwbm2rIeJbMFzgHHlj6IYx+CItHTa4oRWkKPvzYOt0xlTKYfJHTZo02GOCJzwJ
         RvfGfi+MkjDgca/lOMk+jjpQRzH6mmk/zpjBnoZQQK4ikYys3rcmEfKXBa5rqruxwI1K
         V/k/XZGHBQvCWvzAGG5X31qtaQM8BNGqfZy0s9xIZKifswOkbPm02T6TFtb44W7zpNnA
         e54uzuCp5dzQ7xJBWWOmO/srFWCK2dZOWzh3RYxNhKQrMG0hYXYOXyZ4kn7QKnrjYA4q
         KL3/9t5t97liQnMypLRvdvO1soDyn068XdQrJkk9jblUTlA0FL34KXsmKVhzk9GokWQd
         HNqQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533Gv+dWuprtYK6FTYklH3TBsXR8vK9+njv5ROxzc9zRgQvxCBIe
	zHGvk33RJRTffQ159FbLKCA=
X-Google-Smtp-Source: ABdhPJyOMiTzBiD1FVNeA22WfZw+1pjefSGSbfYCFuNXyf6GehnJSqYIngP/VRAKAwyHU9c06DHpAQ==
X-Received: by 2002:ac8:1b3b:: with SMTP id y56mr24911317qtj.94.1593038120491;
        Wed, 24 Jun 2020 15:35:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:e293:: with SMTP id r19ls815143qvl.1.gmail; Wed, 24 Jun
 2020 15:35:20 -0700 (PDT)
X-Received: by 2002:a0c:b256:: with SMTP id k22mr32631601qve.115.1593038120205;
        Wed, 24 Jun 2020 15:35:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593038120; cv=none;
        d=google.com; s=arc-20160816;
        b=CMuAz04LNCTTiVJQUijMG3sICQKH9yBuQY8w5D9mxnH9WusRHKHFqFaeGFOf4zNDmi
         UBJ7GpdUv4P2n6VuOoBX8t56IISRaQ5XAhYl5g1Q4Itx17mlIFz+txpsFZ4buQORIJji
         4+x3m+Vz/BbQj1Uh+QKh0qaGsaoO4EHktP6VSO4jl8huLxdNaLQ39lL5olhW8flMl7pA
         4qXD4/56IUZzscyWo0xoRLfK12txxQqq+LWUsFD2uMxinUVa6LVaIlQYhBYXFkrTluSx
         A6YQm+apMs7wWWnhULi9O7BUTOOFXel/EumQkTmi8281PG/KfXjkg22t4yiSrVrrB2ch
         /wBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:references:cc:to:from:subject
         :dkim-signature;
        bh=bhS1Vuyypm9th+5GJw/HKQdOHuU/MTx6akXfmJuKHvw=;
        b=K6gI7FFs9r2SlNQtRpuu8pn5L3SSgUYsBc9zMWs5ZmiBZiPgvwnJAlGEjF3YxTKJxC
         ZTgJFe9k9JWzY0AbIjY20SLzvcyoyb7pW3qFutsCJhkuM5qrrPoUpm5nDFmhlldSmvpa
         DaOLekAKl/mKLP4rILgN43ExAayOn9p/DyEBzbUcFEggrQQhySgRwWcT1zUNjfj/H2Vf
         3lb/KWE7SePOQR9dx8dxIDW2AyjevGkYIs89li1NOXUPJgaQPAbH5qH2KCYYJ19pOzi4
         z+VG03vk3quCADe1+HE+r/eC1OU3ZRbNdU3HEeXfILvkE0oAcs6WNEsapvYtgWWjoj6B
         smAg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@infradead.org header.s=merlin.20170209 header.b=if31kHFg;
       spf=pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
Received: from merlin.infradead.org (merlin.infradead.org. [2001:8b0:10b:1231::1])
        by gmr-mx.google.com with ESMTPS id m1si1618252qki.3.2020.06.24.15.35.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Jun 2020 15:35:20 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of rdunlap@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) client-ip=2001:8b0:10b:1231::1;
Received: from [2601:1c0:6280:3f0:897c:6038:c71d:ecac]
	by merlin.infradead.org with esmtpsa (Exim 4.92.3 #3 (Red Hat Linux))
	id 1joDzB-0001oJ-1l; Wed, 24 Jun 2020 22:35:17 +0000
Subject: Re: [PATCH drivers/misc 0/4] lkdtm: Various clean ups
From: Randy Dunlap <rdunlap@infradead.org>
To: Richard Weinberger <richard.weinberger@gmail.com>
Cc: Kees Cook <keescook@chromium.org>, Richard Weinberger <richard@nod.at>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Prasad Sodagudi <psodagud@codeaurora.org>,
 Sami Tolvanen <samitolvanen@google.com>,
 Amit Daniel Kachhap <amit.kachhap@arm.com>,
 "open list:KERNEL SELFTEST FRAMEWORK" <linux-kselftest@vger.kernel.org>,
 clang-built-linux@googlegroups.com,
 linux-kernel <linux-kernel@vger.kernel.org>
References: <20200529200347.2464284-1-keescook@chromium.org>
 <202006231610.4993DC5@keescook>
 <2356a78c-750b-538f-3d64-b9c78aff89cb@infradead.org>
 <903628180.54697.1592983405305.JavaMail.zimbra@nod.at>
 <202006241335.2C0FB5DF90@keescook>
 <b97853f0-c4be-7039-1d4c-96b3ab802472@infradead.org>
 <CAFLxGvxiyyX9s=y4phGxvWh-vonS1WPOUbRZr9mgq-B+wY+2nQ@mail.gmail.com>
 <10f7c20a-0a32-f5cf-7fdf-761db22afcd9@infradead.org>
Message-ID: <03486f13-b138-2fc6-4d90-2737d86add2f@infradead.org>
Date: Wed, 24 Jun 2020 15:35:11 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <10f7c20a-0a32-f5cf-7fdf-761db22afcd9@infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: rdunlap@infradead.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@infradead.org header.s=merlin.20170209 header.b=if31kHFg;
       spf=pass (google.com: best guess record for domain of
 rdunlap@infradead.org designates 2001:8b0:10b:1231::1 as permitted sender) smtp.mailfrom=rdunlap@infradead.org
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

On 6/24/20 3:23 PM, Randy Dunlap wrote:
> On 6/24/20 3:01 PM, Richard Weinberger wrote:
>> On Wed, Jun 24, 2020 at 11:29 PM Randy Dunlap <rdunlap@infradead.org> wr=
ote:
>>>
>>> On 6/24/20 1:36 PM, Kees Cook wrote:
>>>> On Wed, Jun 24, 2020 at 09:23:25AM +0200, Richard Weinberger wrote:
>>>>> ----- Urspr=C3=BCngliche Mail -----
>>>>>>>> Regardless, it seems arch/x86/um/asm/desc.h is not needed any more=
?
>>>>>>
>>>>>>> True that, we can rip the file.
>>>>>>
>>>>>> Has anyone fixed the uml build errors?
>>>>>
>>>>> I didn't realize that this is a super urgent issue. ;-)
>>>>>
>>>>> Kees, if you want you can carry a patch in your series, I'll ack it.
>>>>> Otherwise I can also do a patch and bring it via the uml tree upstrea=
m
>>>>> as soon more fixes queued up.
>>>>
>>>> I think the lkdtm change will tweak this bug, so I'm happy to carry th=
e
>>>> patch (I just haven't had time to create and test one). Is it really
>>>> just as simple as removing arch/x86/um/asm/desc.h?
>>>>
>>>
>>> I just tried that and the build is still failing, so No, it's not that =
simple.
>>>
>>> But thanks for offering.
>>>
>>> I'll just ignore the UML build errors for now.
>>
>> This is a allyesconfig?
>> I just gave CONFIG_LKDTM=3Dy a try, builds fine here.
>>
>=20
> I'm building linux-next and it fails.

More specifically, uml for i386 fails. x86_64 is OK.
The problem is with the <asm/desc.h> file.
I'm tampering with it...

>> But the desc.h in uml is still in vain and can be deleted AFAICT.


--=20
~Randy

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/03486f13-b138-2fc6-4d90-2737d86add2f%40infradead.org.
