Return-Path: <clang-built-linux+bncBCR5PSMFZYORBOMZ23UQKGQE2SQE6HY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63e.google.com (mail-pl1-x63e.google.com [IPv6:2607:f8b0:4864:20::63e])
	by mail.lfdr.de (Postfix) with ESMTPS id 773156FD81
	for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jul 2019 12:15:23 +0200 (CEST)
Received: by mail-pl1-x63e.google.com with SMTP id s22sf19608957plp.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jul 2019 03:15:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1563790521; cv=pass;
        d=google.com; s=arc-20160816;
        b=R0xV9DmJ+GdftJqrbX8UXkOoSELlt8sNZTbeIHb55Bw6h5AF+aBfB/6ma7K6OVv4B2
         wfqC7W0Cbo8/Vvkx0mGAx27lbwI2qzyCNooPiET0OOdHu/V0lW9MSg35NuCunM7XhJ0V
         Oti4eHwaLtYv5U5ara5Va1QeLnm1KYZWk4/LbqSeOc+10unnKJ3yf1JRWB7/uPKkYsi7
         bYPc1ECiIydUMR3MclY+zv8trBnjmhYXa7xpWonB8oQ4xe/BbarRPgGCYs4yNajdDxl0
         vzxV9C/oCs8efrUwwQYzETfZx/sBESB+e3TZBtNrm39jMHdXxUY6aoOvwuy5zJvNQYXh
         2mBg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:message-id:date
         :references:in-reply-to:subject:cc:to:from:sender:dkim-signature;
        bh=4RjU85tEroTc08shWRWHfqiDruI+wydCqMT6ij1jpN0=;
        b=JD/FtwaS2Wd2CwDzfQCcbQ40sZWikuVsnCZV2SLjNci79zLSqhTkcH/PY198G0vzLz
         W/7KncnbGnRnGxsoX9zmVYIvbvQjeZ+ieCEvu/ErvUtKcrhQ8q3r1+nBzP7BwiIC7iUI
         hl5C7oQyZW1Gei1WpudrEFDRVbiVAhGiArN9VMtGp2HkflgPkomUJ+17iqxkh4u0hmf4
         ZJJnSJF1+JisPvootwAmGZwlSj/fj5kzcFL1cvTa877k2/VbIEftVpbS5VDQujeXx8FW
         ToCQXMeGYYCyj3fqXa54HeiVrg56VP5QXJKTzh+0/bIY96BaGBkSLzVxdZK28EDBELEe
         joLg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 2401:3900:2:1::2 is neither permitted nor denied by best guess record for domain of mpe@ellerman.id.au) smtp.mailfrom=mpe@ellerman.id.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:in-reply-to:references:date:message-id
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4RjU85tEroTc08shWRWHfqiDruI+wydCqMT6ij1jpN0=;
        b=BKQvaKwAmoQAd1yZaPFuUrbzQmGPv6wGMmaq/pqp/kW1Z1qzmfeko46H7kHCrGzPnD
         HDzVqM7v/IdWnt/NQXWxO6trpYhOZxm1it1MhI1ohvt3OPk3gMZun7CnB6hkZGZ8h/Az
         tLJhzIdIaPfM1JzRT3lng1LTCf2fxWuOWAuczjOG0OhqNTPVjCTH5oJ82i2f2DC+HQU/
         UR4xEwsd7uvie6AzNUqO1446czhaRWRY4g7kNqq4wYTFbTKeA333Vz6gL8wh3qWgvCLY
         ca88BBXm+7Yv2wHlEMkCkIX8CGB+p3h3gT8z83y4I6XPatsJt3aph/Gry5bFa7rb1B5l
         Ja8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:in-reply-to:references
         :date:message-id:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4RjU85tEroTc08shWRWHfqiDruI+wydCqMT6ij1jpN0=;
        b=nmE1SrXd+pWpuTCt6ivFDtSqicwcohmXgG+P0awKjONhLsliE3cpoJfykxbbl4F6zK
         fAjUa0PrzdRo3u+XNMvxFnKuaV95NSbuOVE/9l5f/3sic53EdoyZ2gqhlYkwy44Fxq5G
         asV1br8i1wuJQfNZPQ2T4sOfe/Dstu2HNTcJjKwgMnrNbp8H4PB9xxMpWpLYXPZS/kFO
         d0R/gD9zhuXvr2lxhdykadcmaKZs1FDGCHiw1R+OxAln5oMLuPzcPL97LQUlE5Pz+iC/
         gAr1CVPLM8f2LsFde4qxZNbLqnXae248tqoTxYaPYGWyyAR2BcJmkSPOpXJa+MkKJIsk
         VF1Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWfxpWfSJBxO/7mbQjgLu7tVnJbiQSvAc7lMbMJBqAlDzugshxb
	efGnv3QBUMpmz8yYLyRHGNc=
X-Google-Smtp-Source: APXvYqzi8Bms5sL3rRbmXq3ZFLBXDzEuKMqHroUYFumR+TdF6GOKZNnUlv/9EP068Pwg3pnpe6mIBg==
X-Received: by 2002:a17:90a:ca0f:: with SMTP id x15mr31092061pjt.82.1563790521773;
        Mon, 22 Jul 2019 03:15:21 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:372f:: with SMTP id u44ls13336851pjb.5.canary-gmail;
 Mon, 22 Jul 2019 03:15:21 -0700 (PDT)
X-Received: by 2002:a17:90b:8d8:: with SMTP id ds24mr771129pjb.135.1563790521483;
        Mon, 22 Jul 2019 03:15:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1563790521; cv=none;
        d=google.com; s=arc-20160816;
        b=FE8C4vn+sfM8S+KxyW/qV42Xa9V8JGg0sZDsR5ub1W4aOduTy8N06Sm2Qa6HMDZbcc
         Lc5gDaZrAIJQml7NWacoC+H7fs+9aX0GM+v5cBU/Ap6PzQLUTjnbxnCwJfVqDMJ/VF2V
         bjzySL1y7jrzGt8NgtSwAVAcdTXyED21JZExmhB5+Ax2Ep6/LzOpDJmz5sEO4FFGfBbY
         Mo1uXDzUPcUUf9KSkjGiM+6GRfD1VMQT1GqJrZhQzgTX7uG0EkmQ4Gn5A5jC08DSbxLU
         hw15Bm79qGSs2VFB2jqJC5iJ5QyLW4gguybJrlaAH8kmyLyPHWWM10FC1NKKJoX+mORr
         tAsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from;
        bh=davf465RO0lYwHgRKp6e9B2cg4b846wPqxVCKq4i8Yk=;
        b=YWieQnORKz96Lb7E/0Grd/xq9LIUh9Qo9DCnascZjaWveGFSbyxX+b3h+JIV0ixJKe
         3xgFSk0ICGFaFBfneRg9ZHnyQQ9ufMh6HYBLEM4Won+zMeY8cR+1jZhwHkazY8xcnz1p
         AjSVEO1k8RRD2I4H66hz9XI5kPKDTRNyFInwZ7FetggxYjPRGCGxmEfysp+krlpPejJg
         SlkY+G6wC59M0+TKAXHvWZqF0cMB6iubG8V62kehrNRZ4QeWbl7wv97gnnLPTWqDPbcC
         67UW3MQzGUpxBuKjPmyoc/jqCD1xOW74cwrN86pxTblg5kM2sNDjtPQGo+0H7d2g2jD8
         P37w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 2401:3900:2:1::2 is neither permitted nor denied by best guess record for domain of mpe@ellerman.id.au) smtp.mailfrom=mpe@ellerman.id.au
Received: from ozlabs.org (ozlabs.org. [2401:3900:2:1::2])
        by gmr-mx.google.com with ESMTPS id f125si1767994pgc.4.2019.07.22.03.15.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Mon, 22 Jul 2019 03:15:21 -0700 (PDT)
Received-SPF: neutral (google.com: 2401:3900:2:1::2 is neither permitted nor denied by best guess record for domain of mpe@ellerman.id.au) client-ip=2401:3900:2:1::2;
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.ozlabs.org (Postfix) with ESMTPSA id 45sctX3vfqz9s3l;
	Mon, 22 Jul 2019 20:15:16 +1000 (AEST)
From: Michael Ellerman <mpe@ellerman.id.au>
To: Segher Boessenkool <segher@kernel.crashing.org>, Nathan Chancellor <natechancellor@gmail.com>
Cc: Christophe Leroy <christophe.leroy@c-s.fr>, Benjamin Herrenschmidt <benh@kernel.crashing.org>, Paul Mackerras <paulus@samba.org>, linuxppc-dev@lists.ozlabs.org, linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH v2] powerpc: slightly improve cache helpers
In-Reply-To: <20190721180150.GN20882@gate.crashing.org>
References: <c6ff2faba7fbb56a7f5b5f08cd3453f89fc0aaf4.1557480165.git.christophe.leroy@c-s.fr> <45hnfp6SlLz9sP0@ozlabs.org> <20190708191416.GA21442@archlinux-threadripper> <a5864549-40c3-badd-8c41-d5b7bf3c4f3c@c-s.fr> <20190709064952.GA40851@archlinux-threadripper> <20190719032456.GA14108@archlinux-threadripper> <20190719152303.GA20882@gate.crashing.org> <20190719160455.GA12420@archlinux-threadripper> <20190721075846.GA97701@archlinux-threadripper> <20190721180150.GN20882@gate.crashing.org>
Date: Mon, 22 Jul 2019 20:15:14 +1000
Message-ID: <87imru74ul.fsf@concordia.ellerman.id.au>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: mpe@ellerman.id.au
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 2401:3900:2:1::2 is neither permitted nor denied by best guess
 record for domain of mpe@ellerman.id.au) smtp.mailfrom=mpe@ellerman.id.au
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
> On Sun, Jul 21, 2019 at 12:58:46AM -0700, Nathan Chancellor wrote:
>> I have attached the disassembly of arch/powerpc/kernel/mem.o with
>> clear_page (working) and broken_clear_page (broken), along with the side
>> by side diff. My assembly knowledge is fairly limited as it stands and
>> it is certainly not up to snuff on PowerPC so I have no idea what I am
>> looking for. Please let me know if anything immediately looks off or if
>> there is anything else I can do to help out.
>
> You might want to use a disassembler that shows most simplified mnemonics,
> and you crucially should show the relocations.  "objdump -dr" works nicely.
>
>> 0000017c clear_user_page:
>>      17c: 38 80 00 80                  	li 4, 128
>>      180: 7c 89 03 a6                  	mtctr 4
>>      184: 7c 00 1f ec                  	dcbz 0, 3
>>      188: 38 63 00 20                  	addi 3, 3, 32
>>      18c: 42 00 ff f8                  	bdnz .+65528
>
> That offset is incorrectly disassembled, btw (it's a signed field, not
> unsigned).
>
>> 0000017c clear_user_page:
>>      17c: 94 21 ff f0                  	stwu 1, -16(1)
>>      180: 38 80 00 80                  	li 4, 128
>>      184: 38 63 ff e0                  	addi 3, 3, -32
>>      188: 7c 89 03 a6                  	mtctr 4
>>      18c: 38 81 00 0f                  	addi 4, 1, 15
>>      190: 8c c3 00 20                  	lbzu 6, 32(3)
>>      194: 98 c1 00 0f                  	stb 6, 15(1)
>>      198: 7c 00 27 ec                  	dcbz 0, 4
>>      19c: 42 00 ff f4                  	bdnz .+65524
>
> Uh, yeah, well, I have no idea what clang tried here, but that won't
> work.  It's copying a byte from each target cache line to the stack,
> and then does clears the cache line containing that byte on the stack.

So it seems like this is a clang bug.

None of the distros we support use clang, but we would still like to
keep it working if we can.

Looking at the original patch, the only upside is that the compiler
can use both RA and RB to compute the address, rather than us forcing RA
to 0.

But at least with my compiler here (GCC 8 vintage) I don't actually see
GCC ever using both GPRs even with the patch. Or at least, there's no
difference before/after the patch as far as I can see.

So my inclination is to revert the original patch. We can try again in a
few years :D

Thoughts?

cheers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87imru74ul.fsf%40concordia.ellerman.id.au.
