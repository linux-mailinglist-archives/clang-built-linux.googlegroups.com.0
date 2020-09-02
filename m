Return-Path: <clang-built-linux+bncBC27HSOJ44LBBM4CX75AKGQE4FMMQSA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x239.google.com (mail-lj1-x239.google.com [IPv6:2a00:1450:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id 26DE025B06D
	for <lists+clang-built-linux@lfdr.de>; Wed,  2 Sep 2020 17:58:44 +0200 (CEST)
Received: by mail-lj1-x239.google.com with SMTP id t9sf28594ljt.13
        for <lists+clang-built-linux@lfdr.de>; Wed, 02 Sep 2020 08:58:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599062323; cv=pass;
        d=google.com; s=arc-20160816;
        b=dp4pfgpjkftbUqIGLihfUXVj+2g+pLjN9nHy0vhnWHBfY8itzA8LDgTDjc5ORBOT5t
         VTfiXZugESbcmBG1mduQgJocyPMcaZ/98u/LvveJs1WOByVkYFrRzM9JfzaemVm6PQXy
         W1cxhkSlx424DaS0n4xZQTd9t0lyElZn8KtYtg1oHx883ZEGszruJhFQ0QbMcA2Q4PRG
         Mm7D0qh+BH0F3C13nE6TV7L9JidUqXyXsCW8JLRjh+/BL1PeKsR9e19J3d9JnDAPog06
         /1mJeb3Z+xjhotQ5DCtN6Fdi2Rp+B+huYf+zEIs3BmDWPXVxc1R/HoEk1EYt1LySCBzY
         jaYQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:mime-version
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:sender:dkim-signature;
        bh=Io4KjDde3awisXPXRFIKR1HvfiRLtNIc8QKsNK1eq+4=;
        b=l51WHSuOkMWuKKHmUtUELiOjB5uNuqxrbgLRxBt9Xuz8pinEFsvmwxzAwjx4cKIgNF
         IGLWbIiw6b/us7XySNN9t5Ngg2WFjK8T2lucyWdSLydClFtEuOedda2MtFqVgr1Mb6wE
         6g5+dnimjGGNWx3oRUsK7VtzHarpBUUIx4qmWE2HvrubHBAezzFR2QYHnJUfKkVdAMs/
         80SDzu2w0Vu3mYoDIyHzlrq5qwBMkkc+9bPPTMCy7AEVrdBGda+vI9ZBW1z9onbmglWV
         FpXepwftb5weJe5TrBkMV8pEhQfWNyK/Qr0nVTSBd+Ak0wPpXZWZexXnFh+xEqm635oP
         I9jw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 207.82.80.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=aculab.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:thread-topic:thread-index:date:message-id
         :references:in-reply-to:accept-language:mime-version
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Io4KjDde3awisXPXRFIKR1HvfiRLtNIc8QKsNK1eq+4=;
        b=lkGMxH1lw+tSE1hH7FJvTJSKbnR1FIzisj458h4Ixnsm6jIqs4fdBdeDpNQxnqfmvQ
         EZITiPjjNz+H6p10Sg232X1UUa5xF2xEGhz8HSs/5eihYA99xAzlqJYPUuyIyyYpHyHB
         i9l/WfBfq8KeQL9OtTWkRCW17X15Jb6kBt8f0M3dlUIqGe8OvvRJ9eceUt6XpbWM0FfD
         Z3qiaz75vi68SWCHE9pSgVlPKbKT1Xf9SSc2vX0u8ZMPXKgoiCDbadZExi5vPsXXtJ2E
         W6n30hO0dHyoI7vODc5pXbRyxZSxrKNR2cY688JyUL0zjdnbiUo3jbMbuAG0wfpMd5Fk
         JiFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:thread-topic
         :thread-index:date:message-id:references:in-reply-to:accept-language
         :mime-version:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Io4KjDde3awisXPXRFIKR1HvfiRLtNIc8QKsNK1eq+4=;
        b=sBprrE8coKSoXM68ZTqJ3a84pC6z56JDP74XTQ69XHB5B01AoHoBXlf2cPxSe8FNee
         h/8gY3SC2CV4vJK/Y9ourkUkmrRfTSw6+JYUfOaPh4TNGAT/OPfl7dGe42GMK3bgZa5F
         GlaaiGDMyFXwnecXI+dK1EQ9E5zHDsB7r7QzrqTxtRyF1WUUkzPVmU98dbJT7ncNB+nZ
         EVBvE2LEUiADBOeK5WvUB0+gKVTMp8nfTD0bFaSmZh9DRrrJZ52gCe+YtkboCCeyK9Ba
         7Lw8WEMP6ioGogGrdJsE9zJBxKZqMceUmFC53SsiZFoBEVyFKcnBrJCHk/dMyt4uOoa1
         YfoA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532KYNjTTsDBAeQ47aeM+naSyTqj9F7T8fJqt44ycGKlpdoEI9e8
	VKoDD+kF7Uu72RZpEabVQP8=
X-Google-Smtp-Source: ABdhPJw7jOBZupRFWZK2dekUTBuon/ThTMYLChVRS+dFurkUuRkmtCvmCPOYg60rEOH0AFHWvZv6Hw==
X-Received: by 2002:a2e:9e43:: with SMTP id g3mr3452361ljk.122.1599062323592;
        Wed, 02 Sep 2020 08:58:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:2c01:: with SMTP id s1ls144536ljs.10.gmail; Wed, 02 Sep
 2020 08:58:42 -0700 (PDT)
X-Received: by 2002:a2e:83c7:: with SMTP id s7mr2040582ljh.72.1599062322688;
        Wed, 02 Sep 2020 08:58:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599062322; cv=none;
        d=google.com; s=arc-20160816;
        b=gLamP8bqdpOOsRTx+mG3xxaLt6s73Hpzscxdd8E7FGTXUnajxWdzXJZsfFbuY4SU8y
         3xOeXl4/aAeSscNxrENWREXS23yCphiGj69sM1EXowgp0dyH91xotyX8XRhwIk5ZasTN
         gV0RN68S6GL7wO7/TH/FiLWUN2+3MLAV0nu1wMgMWt8msaQlnAGq/0nh2NBTrH9DNrkg
         zNqEBurfELnqUolizbalZz2Jlhq/riNZL6CZENPZ0DHc51tvoeVfyqFNJT9Ro3uiXpDk
         c5jJkBUUBzVMoOHOcyYQb+X8lvzD8/l8PAkhNO0yL4dO0nQiWYSLysZfKH+k6YSMUMYK
         b0iw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:content-transfer-encoding:mime-version
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from;
        bh=AY8tRhC6fM0k/yvgnpae16+95M6hKvkWhEAcF8yNkeA=;
        b=yPxzNmsRgP23Qj+CaCuYu1x/ssu8pAxhSCXfoOPKwK0OZxA5vPbnuXnzh467secvBY
         D7eLTwlK6PnhVRGy73dQS8tErUauoqXsG3NF6WocnouX3xf0yvJCwbWOCgX2dOVABVkM
         6gj+JrhzSV/d2He4MTzV9YOgwjcq3wW7/gR+49UqrAGBI+/a0qH8SFw8RyNzRVP/xqs3
         /6OlX/kk1LAtqtvS4vNVNVtpD7HxVprwO/wrDekk1G/4UnRAY63aY0KCv+9f5WyRPPtm
         7Bpnkc0rS9z215sf5RtR1GhUccjeZzVdUVOwIGot5nJR73DRtgicp//oYNNKiK46u6gP
         GZtw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of david.laight@aculab.com designates 207.82.80.151 as permitted sender) smtp.mailfrom=david.laight@aculab.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=aculab.com
Received: from eu-smtp-delivery-151.mimecast.com (eu-smtp-delivery-151.mimecast.com. [207.82.80.151])
        by gmr-mx.google.com with ESMTPS id k10si144026ljj.0.2020.09.02.08.58.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 02 Sep 2020 08:58:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of david.laight@aculab.com designates 207.82.80.151 as permitted sender) client-ip=207.82.80.151;
Received: from AcuMS.aculab.com (156.67.243.126 [156.67.243.126]) (Using
 TLS) by relay.mimecast.com with ESMTP id
 uk-mta-234-Po3PB6J_PqmkV15ZeYhDvA-1; Wed, 02 Sep 2020 16:58:39 +0100
X-MC-Unique: Po3PB6J_PqmkV15ZeYhDvA-1
Received: from AcuMS.Aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) by
 AcuMS.aculab.com (fd9f:af1c:a25b:0:43c:695e:880f:8750) with Microsoft SMTP
 Server (TLS) id 15.0.1347.2; Wed, 2 Sep 2020 16:58:38 +0100
Received: from AcuMS.Aculab.com ([fe80::43c:695e:880f:8750]) by
 AcuMS.aculab.com ([fe80::43c:695e:880f:8750%12]) with mapi id 15.00.1347.000;
 Wed, 2 Sep 2020 16:58:38 +0100
From: David Laight <David.Laight@ACULAB.COM>
To: 'Arvind Sankar' <nivedita@alum.mit.edu>, Linus Torvalds
	<torvalds@linux-foundation.org>
CC: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, Sedat Dilek
	<sedat.dilek@gmail.com>, Segher Boessenkool <segher@kernel.crashing.org>,
	Thomas Gleixner <tglx@linutronix.de>, Nick Desaulniers
	<ndesaulniers@google.com>, "Paul E. McKenney" <paulmck@kernel.org>, "Ingo
 Molnar" <mingo@redhat.com>, Arnd Bergmann <arnd@arndb.de>, Borislav Petkov
	<bp@alien8.de>, "maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)"
	<x86@kernel.org>, "H. Peter Anvin" <hpa@zytor.com>, "Kirill A. Shutemov"
	<kirill.shutemov@linux.intel.com>, Kees Cook <keescook@chromium.org>, "Peter
 Zijlstra" <peterz@infradead.org>, Juergen Gross <jgross@suse.com>, "Andy
 Lutomirski" <luto@kernel.org>, Andrew Cooper <andrew.cooper3@citrix.com>,
	LKML <linux-kernel@vger.kernel.org>, clang-built-linux
	<clang-built-linux@googlegroups.com>, Will Deacon <will@kernel.org>,
	"nadav.amit@gmail.com" <nadav.amit@gmail.com>, Nathan Chancellor
	<natechancellor@gmail.com>
Subject: RE: [PATCH v2] x86/asm: Replace __force_order with memory clobber
Thread-Topic: [PATCH v2] x86/asm: Replace __force_order with memory clobber
Thread-Index: AQHWgT6ArcDzK8wpBE22M0o9dUjAEKlVf9pQ
Date: Wed, 2 Sep 2020 15:58:38 +0000
Message-ID: <55a35a3d8fba417aabe63ad13d519198@AcuMS.aculab.com>
References: <20200823212550.3377591-1-nivedita@alum.mit.edu>
 <20200902153346.3296117-1-nivedita@alum.mit.edu>
In-Reply-To: <20200902153346.3296117-1-nivedita@alum.mit.edu>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.202.205.107]
MIME-Version: 1.0
X-Mimecast-Spam-Score: 0.001
X-Mimecast-Originator: aculab.com
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
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

From: Arvind Sankar
> Sent: 02 September 2020 16:34
> 
> The CRn accessor functions use __force_order as a dummy operand to
> prevent the compiler from reordering the inline asm.
> 
> The fact that the asm is volatile should be enough to prevent this
> already, however older versions of GCC had a bug that could sometimes
> result in reordering. This was fixed in 8.1, 7.3 and 6.5. Versions prior
> to these, including 5.x and 4.9.x, may reorder volatile asm.
> 
> There are some issues with __force_order as implemented:
> - It is used only as an input operand for the write functions, and hence
>   doesn't do anything additional to prevent reordering writes.
> - It allows memory accesses to be cached/reordered across write
>   functions, but CRn writes affect the semantics of memory accesses, so
>   this could be dangerous.
> - __force_order is not actually defined in the kernel proper, but the
>   LLVM toolchain can in some cases require a definition: LLVM (as well
>   as GCC 4.9) requires it for PIE code, which is why the compressed
>   kernel has a definition, but also the clang integrated assembler may
>   consider the address of __force_order to be significant, resulting in
>   a reference that requires a definition.
> 
> Fix this by:
> - Using a memory clobber for the write functions to additionally prevent
>   caching/reordering memory accesses across CRn writes.
> - Using a dummy input operand with an arbitrary constant address for the
>   read functions, instead of a global variable. This will prevent reads
>   from being reordered across writes, while allowing memory loads to be
>   cached/reordered across CRn reads, which should be safe.

How much does using a full memory clobber for the reads cost?

It would remove any chance that the compiler decides it needs to
get the address of the 'dummy' location into a register so that
it can be used as a memory reference in a generated instruction
(which is probably what was happening for PIE compiles).

	David

-
Registered Address Lakeside, Bramley Road, Mount Farm, Milton Keynes, MK1 1PT, UK
Registration No: 1397386 (Wales)

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/55a35a3d8fba417aabe63ad13d519198%40AcuMS.aculab.com.
