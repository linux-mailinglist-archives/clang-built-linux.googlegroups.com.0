Return-Path: <clang-built-linux+bncBC5L5P75YUERBPW7R7XAKGQEJ3JWDWA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x240.google.com (mail-lj1-x240.google.com [IPv6:2a00:1450:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CE33F2C04
	for <lists+clang-built-linux@lfdr.de>; Thu,  7 Nov 2019 11:19:43 +0100 (CET)
Received: by mail-lj1-x240.google.com with SMTP id l12sf289373lji.10
        for <lists+clang-built-linux@lfdr.de>; Thu, 07 Nov 2019 02:19:43 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1573121982; cv=pass;
        d=google.com; s=arc-20160816;
        b=PiMpfkUBP318MpybOO0IIwYHjuzZ3TB+gbIp7aoijFjlCZeNzg5+0TlE03hDTy74Iz
         XPP91zWdQpP2mnTHqf1ZhQOfzraPQt5y3mbyQ+GOZsFhqnM3gzwGMby8Cm/G1C18iwls
         xEDnfqAXkCLVf4ChIS5PDMVEwhSS7/ol613HiwHtuRBF7HSJF1QcNSHuc2pivW3Foiw4
         wDBhUvRyxRNOhkGoLW2muTr+u1a1kcKSn9JO2bOkMlGkpaEcCGlDmFTeOP9RVKWcRTvF
         e7+anM9PVr9OgP9A/lVslK4EU+eQs4d5RTgDZ1fXYBWbfxAUHgWW2b7f9t8kssf/02Mr
         p/jA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=kYKjK7IjGAf/L/W2YTxsZsFKoO70cmAtGa0tnyr/aWA=;
        b=j6lR+42am/j0NlosvRt1ylqqosgRDItLmgrAHTee2E5SRRZjOXSZokBTsfhMJ8o2mv
         RJo+q8DbjiY3TiGRZMLyCbsZ9ztOjvhX59dQG2fjrHJZV+FLHgX4uyBUnW4zWt8UPjzB
         DHLn8y32vwoVAxj26FUO12GJPvKuSjvuhd9wBPs316j1jU2AvVmS6xHlyg+mcuWlQsWh
         ueAmQmpw0Em65ih14S6MGndPiUvS+SSnOPns7TRGCZd4GHI8nYcRJuCi4tB0dTqIYW+p
         yI1BgE5ydusvPKPqyQMAfT8PnDJiNawkqcIyEOiIupCbmhdfD3Md+Z1Z58B5P/DC/RGO
         RNUg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of aryabinin@virtuozzo.com designates 185.231.240.75 as permitted sender) smtp.mailfrom=aryabinin@virtuozzo.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=virtuozzo.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=kYKjK7IjGAf/L/W2YTxsZsFKoO70cmAtGa0tnyr/aWA=;
        b=KlLGJUPJMgO5OZqzq5WeVMJ6RJhLfOoxjNpfg3jWx8QW56Nv4cn2qlyGJQaaq9/CSg
         Biol07bHvegsMIw87aD9NTcIsoWqh4DhBZVcVJR3yRHlLCJlYTacxxXFnZp7o6CODz8p
         GSrc0Y/x4NMzNuDOwO2+BOXVpN/94bg6uHvY3OKIcmOB38mr4ZoR8GARqVXT2sCcBpby
         MtvuZWbJX7x30jiFIkzBLVEkPObO8Hiy9ityMQMrXEX3TM3A9zQttaKoPFoAzxi+o9CV
         oXRl5kr23hrMwBxLCcKiFicI3Teu16Qui/3JVKCEHoo9VzNDA7SogLWJk/vN/DwJXA/a
         wuNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=kYKjK7IjGAf/L/W2YTxsZsFKoO70cmAtGa0tnyr/aWA=;
        b=iA8mhkRHs7Bl3RSANcZT9BO1rq9FhRgXOj7Ia7CoY1IKXsr9AR2bg9gNetofTbvSpc
         xfHYRvgltpKmrYiD7kQVRyaXH1OlJ5Cwrb2rnn6mRdEQpHk3w0/fqD+J45CR5uTa9lCt
         /TMDoVH34sxFRL7ISseYjiUnF7trLU9dqUoP7qTRbFBbOeXcMibeGG50EOuA+eM3k56j
         65ZRRLa5fO27SfpQO7kARjWpyYep7hJNjnyy8yWmWla+XCvW+eCXh3Zg4DEG8vWpjgM5
         15HfmGFKVl77k6MPra/gB244+bB0ivOlUtBqbW5AzBPyvIVP9NTxyuFftjygtrs3YwwA
         QOiA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAU6jl6H+pJyCf9iIB6+UU3Az2EUfyTqEDKqq7pIK4BCnVVBzhiO
	fiDUioJElImZ5yuPBzfdlEk=
X-Google-Smtp-Source: APXvYqweHA2mSrasFNzPX953i37hosQV4YHYyQAlZdiET1UXnWCAHCLPuCWO1YGemc3LMYIK4IEQBQ==
X-Received: by 2002:ac2:46e5:: with SMTP id q5mr1890327lfo.148.1573121982685;
        Thu, 07 Nov 2019 02:19:42 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:98c:: with SMTP id 134ls1069413lfj.6.gmail; Thu, 07 Nov
 2019 02:19:42 -0800 (PST)
X-Received: by 2002:a19:5e0e:: with SMTP id s14mr1798529lfb.30.1573121982154;
        Thu, 07 Nov 2019 02:19:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573121982; cv=none;
        d=google.com; s=arc-20160816;
        b=MVinFNmBuAnuOlc3z6eAmx/BbErodsY0By6VxLy+mf1GaZ1VoEjlT+xAbkVK5Ld4sk
         PbVjJt0csSPZF2xe8s+wSoPPpbePo+vDBeeNbE3+mEGTAGzEe3cXPFf3AA3TL4RLA/Bx
         xliF39x01zBBNn/XcTxZoVqMI3UJ21xfU4ha0oXSOzGUDmHaQVXlOvIt+mFDJLQ4LHn8
         FR1A2px+6E5edSL8yn0fYbPJydoNRJO/gxbW18xVry682tLSP0eEgLQ2kK1U2Rdvn+zE
         9jZkks6VE0z19Y9N7tC99frxY1bAahxolLYfzOom5a8rTMOfoY0qSrWK1uXjC6Rr7rYV
         7WBQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=HwK0A733qAI+SQi2OO3K9Pv1Ybco3Id1ciT1dzVZq1M=;
        b=0pRrI4ukz6cjxC+SmMH+uUIksipX7ZLFYjwZ/F8Fa6SwqOrqDXMV7yMPntfVrEuy6/
         JOgU3T6ApPZXLuAPhneSdcV7PKMv6+/8eDzOOvaocMAjjvpMERB53g6Q9Szd7sBV7vhG
         11YMN+lyesqHAaFF92qEPvxfui7nAsZZ3CvVuT8mtacE4JeeTPM6np01GrEp7bsFHB2G
         giaAXDsoWTWnmx+6z5pc+l/bq+fwyyS9m6haZE7cwtVRcS/B5IJzXMBxBMj9ZazuPUg7
         egIF/pbRp/Fx0pXIqTPAbD89PZtICgmCzDkQWEuq406/DUOMAlKA62AsPKL20A7NneYj
         j5wQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of aryabinin@virtuozzo.com designates 185.231.240.75 as permitted sender) smtp.mailfrom=aryabinin@virtuozzo.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=virtuozzo.com
Received: from relay.sw.ru (relay.sw.ru. [185.231.240.75])
        by gmr-mx.google.com with ESMTPS id f3si183776ljg.3.2019.11.07.02.19.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 07 Nov 2019 02:19:42 -0800 (PST)
Received-SPF: pass (google.com: domain of aryabinin@virtuozzo.com designates 185.231.240.75 as permitted sender) client-ip=185.231.240.75;
Received: from [172.16.25.5]
	by relay.sw.ru with esmtp (Exim 4.92.3)
	(envelope-from <aryabinin@virtuozzo.com>)
	id 1iSet6-0004Y9-JK; Thu, 07 Nov 2019 13:19:37 +0300
Subject: Re: [PATCH RFC v2 02/25] stackdepot: prevent Clang from optimizing
 away stackdepot_memcmp()
To: Arnd Bergmann <arnd@arndb.de>
Cc: Alexander Potapenko <glider@google.com>,
 Sergey Senozhatsky <sergey.senozhatsky.work@gmail.com>,
 Vegard Nossum <vegard.nossum@oracle.com>, Dmitry Vyukov
 <dvyukov@google.com>, Linux Memory Management List <linux-mm@kvack.org>,
 Al Viro <viro@zeniv.linux.org.uk>, Andrew Morton
 <akpm@linux-foundation.org>, Andy Lutomirski <luto@kernel.org>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>, Christoph Hellwig <hch@lst.de>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>,
 Eric Dumazet <edumazet@google.com>, Eric Van Hensbergen <ericvh@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Harry Wentland <harry.wentland@amd.com>,
 Herbert Xu <herbert@gondor.apana.org.au>, Ingo Molnar <mingo@elte.hu>,
 Jens Axboe <axboe@kernel.dk>,
 "Martin K . Petersen" <martin.petersen@oracle.com>,
 Martin Schwidefsky <schwidefsky@de.ibm.com>,
 "Michael S. Tsirkin" <mst@redhat.com>, Michal Simek <monstr@monstr.eu>,
 Petr Mladek <pmladek@suse.com>,
 Sergey Senozhatsky <sergey.senozhatsky@gmail.com>,
 Steven Rostedt <rostedt@goodmis.org>, Takashi Iwai <tiwai@suse.com>,
 Theodore Ts'o <tytso@mit.edu>, Thomas Gleixner <tglx@linutronix.de>,
 Wolfram Sang <wsa@the-dreams.de>, Vasily Gorbik <gor@linux.ibm.com>,
 Ilya Leoshkevich <iii@linux.ibm.com>, Mark Rutland <mark.rutland@arm.com>,
 Matthew Wilcox <willy@infradead.org>, Randy Dunlap <rdunlap@infradead.org>,
 Andrey Konovalov <andreyknvl@google.com>, Marco Elver <elver@google.com>,
 Nick Desaulniers <ndesaulniers@google.com>,
 clang-built-linux <clang-built-linux@googlegroups.com>
References: <20191030142237.249532-1-glider@google.com>
 <20191030142237.249532-3-glider@google.com>
 <20191101055033.GA226263@google.com>
 <CAG_fn=UQFwF3hre0bWDnhHEg+_bgUWNpr01hExi2_NmJi3XHwA@mail.gmail.com>
 <20191107060816.GA93084@google.com>
 <CAK8P3a1=V=tve1NaS5+O3dM_4pFLWz78+TNiqdtqns0WazMz_w@mail.gmail.com>
 <CAG_fn=Wwds32i3A1EpBAjFF7MHhLJaASjHq=Jwuyg3h6XhLU-Q@mail.gmail.com>
 <47fdac13-fa2c-2acd-2480-5e6d4db208f8@virtuozzo.com>
 <CAK8P3a0pSy_dwg8h8vTK-yoa1W1OxLiisnBe9E_tDBfJY9E1qQ@mail.gmail.com>
From: Andrey Ryabinin <aryabinin@virtuozzo.com>
Message-ID: <6875c6e6-2f1f-f8e6-e5d7-d451c48397ff@virtuozzo.com>
Date: Thu, 7 Nov 2019 13:19:16 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <CAK8P3a0pSy_dwg8h8vTK-yoa1W1OxLiisnBe9E_tDBfJY9E1qQ@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
X-Original-Sender: aryabinin@virtuozzo.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of aryabinin@virtuozzo.com designates 185.231.240.75 as
 permitted sender) smtp.mailfrom=aryabinin@virtuozzo.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=virtuozzo.com
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



On 11/7/19 1:00 PM, Arnd Bergmann wrote:
> On Thu, Nov 7, 2019 at 10:46 AM Andrey Ryabinin <aryabinin@virtuozzo.com> wrote:
>> On 11/7/19 12:22 PM, Alexander Potapenko wrote:
>>> On Thu, Nov 7, 2019 at 10:04 AM Arnd Bergmann <arnd@arndb.de> wrote:
>>>> On Thu, Nov 7, 2019 at 7:08 AM Sergey Senozhatsky
>>>> <sergey.senozhatsky.work@gmail.com> wrote:
>>>> The normal way to do a volatile access would be
>>>> READ_ONCE()/WRITE_ONCE(), but that seems stronger than
>>>> the barrier() here. I'd just stick to adding a barrier.
>>> I actually like the READ_ONCE idea more, as READ_ONCE is really a
>>> documented way to prevent the compiler from merging reads, which is
>>> what we want here.
>>
>> I would rather go with -fno-builtin-bcmp or maybe even -fno-builtin if that works.
> 
> The commit message for 5f074f3e192f ("lib/string.c: implement a basic bcmp")
> mentions that  -fno-builtin-bcmp did not work for LTO when the global bcmp()
> help was added. I don't know whether the same applies here, but my guess is
> that it's the same issue.

But we don't do LTO.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/6875c6e6-2f1f-f8e6-e5d7-d451c48397ff%40virtuozzo.com.
