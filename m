Return-Path: <clang-built-linux+bncBCR5PSMFZYORBG4K3HUQKGQEUR7DK7Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd37.google.com (mail-io1-xd37.google.com [IPv6:2607:f8b0:4864:20::d37])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F78570D45
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Jul 2019 01:22:05 +0200 (CEST)
Received: by mail-io1-xd37.google.com with SMTP id z19sf45195143ioi.15
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jul 2019 16:22:05 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563837724; cv=pass;
        d=google.com; s=arc-20160816;
        b=rVf9722891Y28CX2RN9R4Wf+aFj82dams84kzwZOFtJcYOSGsHAjw8c8DY02D6Hj8r
         GV5qco14+5rAaGYoNNfLd6MT2qQ3hrZfrgVgXaxYUmJDeAEY7N7eR9O3qwfh9lWEIsVz
         g6AnxetFGi5dOMH7T4XTRvOHLEgGpk73M++PMpQ340qIYW1eMiui97OTb3zccp1Yo5yV
         vOz2ejrNjcaGYF1Q7ReCAMmWWZsQukemEF0i41TztGGFG39zHn8LwI8oPzPbq4INZQaH
         ubKykKLG6k7mGWYeDWLAUyLghNFP0nxqCQfiQG8O2Wt9z0TkeoPXvslsCQZJJ5NIyXnH
         LLJQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=Jgdzdw4ZjHQIoCO3gsTP0Fe/ZYHcoTsd3X7TbvCdQZg=;
        b=0CKSRjhzZtLX6Z9xpdbZzF+GMix1ixRtjDqOOaVnA9EEx+IRQQ75YI3u3W/JyVFQsk
         XUTXHqX8BNWZZD2+8uhNXhly9kemzpZe7XT0s/XgKdSC6HHI9Al0bExgApE6FY1M9G2g
         OFDRpTlrUCm49PXQ7Hygfpl0MFitEG27Txb+qnwFBjuwkypuajANcUto6ywDaRdeWsjd
         HRP/x/PRMkio3ZxQJBV/xqRy2MTri2mJoB2Szax3mzoUe77YvewbfvfxcNJcFD7OPkTE
         oohBgr+3vLF4aXEXwa0kq3ZDIQPc+obDxPPS6N31Hm+M6BWrODnx0oxDdulXc+2GK0LH
         PKIQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 203.11.71.1 is neither permitted nor denied by best guess record for domain of mpe@ellerman.id.au) smtp.mailfrom=mpe@ellerman.id.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Jgdzdw4ZjHQIoCO3gsTP0Fe/ZYHcoTsd3X7TbvCdQZg=;
        b=tCMkK8BOpWzUz//z1WDMvtcwAIjMOtNsyasYS5mA7L0jWmB3hnc0N6g5k5MFmgwMV5
         NcLZ+wcxFdNLwIaj+LaKlEsDruQJUUc1LES7YlLl0kay5pgqokOSoJijc0VFb6UmiOch
         I4r7wbxVWImAVMEKaoKjXp6Iaj6GmlJfuAdZcLZwD9LZOPHcfk4WoD3Sdu3oY8bCUwix
         tIRg9Pp52MXAqewhmwYnZX5AHjvd/o1Vjjp/mCBlFSqxa1/QofrHE14XuOQ3Cbo+p/0z
         Vwabvn0Iwab6vWxPRkW9zwSwEp2SuAYZ6f4lALgiQ40pqQ/w9Y/+0WSjJgX7Kuw/tkIp
         G++w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Jgdzdw4ZjHQIoCO3gsTP0Fe/ZYHcoTsd3X7TbvCdQZg=;
        b=e7Juvi+ovyHXb8XDKnh1f3KaRuSSjsOfmBQu/uph+oE6mSfKxdo7A6UKacXvWvG4T8
         PY851qlyxO6LIC2zn6NtZsUZUp9SQWSxu9FpRSkU/PKly34i3MuTmkO8dPKMco+YNyF7
         sfQDqe8zaNI9VcPPnjVnzgn8w1AdkL9BwqGJtVmhHSm2SV2v4b9kWZlgikFoPm2J1FQU
         f3z719WyI9Pp5gKBf/lGssG2sz3WuzsFD1K6s1OSZuGCGwUoBcuhMd7EwX6WSoGl/Y6y
         tnDdXX+g9Ykhix1Kqnd9woq2zt4sEqIrRYT3bCZoSa/UwjkctafETWRfnWiBrdX43ZRd
         DnVg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWA6471q8uA72DC5R8MQ9GlGxFQpBBKQbZaE/1OF/JTGRSfB215
	dGiZCsJyoXg2XL3E1piR9UY=
X-Google-Smtp-Source: APXvYqwcKQy+NvsUZbaJUPzfa5s1vu8gjrvi/YKOkh9HbGGRW2ZKbTt7hybfeE7vNEdz9LPwwiNqvQ==
X-Received: by 2002:a5e:cb06:: with SMTP id p6mr67183460iom.79.1563837723914;
        Mon, 22 Jul 2019 16:22:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:84e3:: with SMTP id f90ls5597117jai.2.gmail; Mon, 22 Jul
 2019 16:22:03 -0700 (PDT)
X-Received: by 2002:a02:6016:: with SMTP id i22mr51018117jac.56.1563837723145;
        Mon, 22 Jul 2019 16:22:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563837723; cv=none;
        d=google.com; s=arc-20160816;
        b=N0sHIRn6VAsD5YikbvMDkBMoHL3l4shMWgsai7JVIXX8o/yOnFxWAD81sOxrsneRPJ
         ZIyjDVnaKxCixAgIFstsgoFVzfPyTvuMaM08f8ZImbBf8k5j9gM8dMa1PuDyF3Mp1OGe
         2YdP/sfbv540AHSIqg8LXINtHdHgZgntWri9o6cI0lcV6ne1EfU754KAtFdv8BPCUKqf
         vexQXjm7XDWh5E/NWlIKSqi1nGQfE+wRbTDxetGarbYvt9j0mw/DHxIUNjYsFnbU83gd
         mNtGA8JLbRxnySdFCV40IvNPMM7Uv5MmsU+wmQZyOXGpKCBK9k/MFVtSPEXzNULigCxV
         IxGQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from;
        bh=ZGFRLb5OvSV0AsjfOpo5o2PmyGegqEL3yAY7QR/byCs=;
        b=OfIDTyGMfvUQr0zW91cvELrOywV1D4ZEdX9IJNOzoT9TmjtYTLClj0IJE4ZPLEEUaz
         /gozAwmI3mdba6Itsb+iKkM2wUabIZBcLeppzLMi5VOX+MH2MSuVtHb9fI3YNNK+dmHy
         DSD5BqnzzLhNaWi9Bb21TeydyAe55Lt54X64C4k6uLDkSq5wOq5hWbgcnjMpGoKs8na8
         AkKtQv2jc2G+piuAzGWhu8XFybvFSu8uq2d5d5MoxO28NcXEDvedNzcHTlp0SoAOpTRc
         o8CJdCXv9eAULfTxLqNYa6P0kI+nGbUMxXCHJmXd4ESPrUEFbC8c6UJxq5leO3BJT0OV
         lzQg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 203.11.71.1 is neither permitted nor denied by best guess record for domain of mpe@ellerman.id.au) smtp.mailfrom=mpe@ellerman.id.au
Received: from ozlabs.org (bilbo.ozlabs.org. [203.11.71.1])
        by gmr-mx.google.com with ESMTPS id m190si1578196iof.3.2019.07.22.16.22.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Mon, 22 Jul 2019 16:22:03 -0700 (PDT)
Received-SPF: neutral (google.com: 203.11.71.1 is neither permitted nor denied by best guess record for domain of mpe@ellerman.id.au) client-ip=203.11.71.1;
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.ozlabs.org (Postfix) with ESMTPSA id 45syLF0b78z9s4Y;
	Tue, 23 Jul 2019 09:21:57 +1000 (AEST)
From: Michael Ellerman <mpe@ellerman.id.au>
To: Segher Boessenkool <segher@kernel.crashing.org>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Christophe Leroy <christophe.leroy@c-s.fr>, Benjamin Herrenschmidt <benh@kernel.crashing.org>, Paul Mackerras <paulus@samba.org>, linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH v2] powerpc: slightly improve cache helpers
In-Reply-To: <20190722151801.GC20882@gate.crashing.org>
References: <45hnfp6SlLz9sP0@ozlabs.org> <20190708191416.GA21442@archlinux-threadripper> <a5864549-40c3-badd-8c41-d5b7bf3c4f3c@c-s.fr> <20190709064952.GA40851@archlinux-threadripper> <20190719032456.GA14108@archlinux-threadripper> <20190719152303.GA20882@gate.crashing.org> <20190719160455.GA12420@archlinux-threadripper> <20190721075846.GA97701@archlinux-threadripper> <20190721180150.GN20882@gate.crashing.org> <87imru74ul.fsf@concordia.ellerman.id.au> <20190722151801.GC20882@gate.crashing.org>
Date: Tue, 23 Jul 2019 09:21:53 +1000
Message-ID: <875znt7izy.fsf@concordia.ellerman.id.au>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: mpe@ellerman.id.au
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 203.11.71.1 is neither permitted nor denied by best guess record
 for domain of mpe@ellerman.id.au) smtp.mailfrom=mpe@ellerman.id.au
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

Segher Boessenkool <segher@kernel.crashing.org> writes:
> On Mon, Jul 22, 2019 at 08:15:14PM +1000, Michael Ellerman wrote:
>> Segher Boessenkool <segher@kernel.crashing.org> writes:
>> > On Sun, Jul 21, 2019 at 12:58:46AM -0700, Nathan Chancellor wrote:
>> >> 0000017c clear_user_page:
>> >>      17c: 94 21 ff f0                  	stwu 1, -16(1)
>> >>      180: 38 80 00 80                  	li 4, 128
>> >>      184: 38 63 ff e0                  	addi 3, 3, -32
>> >>      188: 7c 89 03 a6                  	mtctr 4
>> >>      18c: 38 81 00 0f                  	addi 4, 1, 15
>> >>      190: 8c c3 00 20                  	lbzu 6, 32(3)
>> >>      194: 98 c1 00 0f                  	stb 6, 15(1)
>> >>      198: 7c 00 27 ec                  	dcbz 0, 4
>> >>      19c: 42 00 ff f4                  	bdnz .+65524
>> >
>> > Uh, yeah, well, I have no idea what clang tried here, but that won't
>> > work.  It's copying a byte from each target cache line to the stack,
>> > and then does clears the cache line containing that byte on the stack.
>> 
>> So it seems like this is a clang bug.
>> 
>> None of the distros we support use clang, but we would still like to
>> keep it working if we can.
>
> Which version?  Which versions *are* broken?

AFAIK clang 8 is the first version that we could build with, without
hacks.

>> Looking at the original patch, the only upside is that the compiler
>> can use both RA and RB to compute the address, rather than us forcing RA
>> to 0.
>> 
>> But at least with my compiler here (GCC 8 vintage) I don't actually see
>> GCC ever using both GPRs even with the patch. Or at least, there's no
>> difference before/after the patch as far as I can see.
>
> The benefit is small, certainly.

Zero is small, but I guess some things are smaller? :P

>> So my inclination is to revert the original patch. We can try again in a
>> few years :D
>> 
>> Thoughts?
>
> I think you should give the clang people time to figure out what is
> going on.

Yeah fair enough, will wait and see what their diagnosis is.

cheers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/875znt7izy.fsf%40concordia.ellerman.id.au.
