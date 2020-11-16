Return-Path: <clang-built-linux+bncBD6MT7EH5AARBLXWZL6QKGQE7ZUBNLI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x139.google.com (mail-lf1-x139.google.com [IPv6:2a00:1450:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id AB8F02B4DE2
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Nov 2020 18:47:27 +0100 (CET)
Received: by mail-lf1-x139.google.com with SMTP id o28sf2507323lfi.19
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Nov 2020 09:47:27 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605548847; cv=pass;
        d=google.com; s=arc-20160816;
        b=SjaqLwCmfGKNzxFhXIvN6bb1HlgtaXUeV6KPRj+tLFgmdPCv669mJs9fMRWORAE7AD
         Mm0Y8MBe8IL8m7tkmf14XGp3T0XLb29gMzfaJZV0Aiq9vKOWt5XSVVr0QH0vkfdEOaBf
         54vr5EpPKNnAIRwinKjJIkv0WDAeEry8tzLDhWiFL7PgcDYKQkVoelzfMz6VHsJ3cIZZ
         EJJbCM24cSZvfRZmabp9bLEjBFgo2OFtf00KP9tAs4prD+b4rHq9JZ2oo1/iVt1+KKZw
         yuDvF+Gzog2rZ2IwqzNNjTFxHYwfEYig0VeTWmKc91TwykH4wuj+MOdIPd0JLX6/Pwp8
         ubjA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:message-id
         :in-reply-to:date:references:subject:cc:to:from:sender
         :dkim-signature;
        bh=s8FQGr0T1uJbDGVzLGfgRuLCJZMSNyYsCBerBB8f4rI=;
        b=Kpz97/b2srwMzdNMuap2Oio4nUfULybAhKWAq34ZJKhz/Lw69dBAzUYHdD2yzYZJFq
         oKiT2b+U1eIftOX2s9ADHHehx+kjtqsEKqYieP7+LjHxjDGZodKMtLJxo1LznzhxSV8F
         P1D/trp7PO7dWSq0pbreREmMTk9LGLuk1ZQ0qSntfwqy4nT2KPfFKnoljlpDwlyeGmI+
         +4n7pozTFuaDa974ngrE3DDnf5TH8ifJnPmee4cWHUqPcFpZ/KSlaVKhMIqwOe+QBmgh
         eP54+JDpyGABt8wDAdh9zn8zzmFK7A4ZnhjZzkwIW6AnOPo7/Et5O6j9tMh7rIIUHiyo
         nBpg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of whitebox@nefkom.net designates 2001:a60:0:28:0:1:25:1 as permitted sender) smtp.mailfrom=whitebox@nefkom.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:references:date:in-reply-to:message-id
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=s8FQGr0T1uJbDGVzLGfgRuLCJZMSNyYsCBerBB8f4rI=;
        b=Ovg7Xy2Y0Rknh6hgLV7In4MrVlKqCUpQhRFAEVBZdMjPjDMOauxSARxUxTS/Hdy3rN
         d94yCrLaAVfqYZyY91j+ARtEhIjx+JaAJsWtFHJzS+X3OmNXf4bTOqYbMT5BK6clDgBD
         GZbU1Y6S4fciHEwgySLeaiyQFPvQq6HjricAaZUxcUPj1BYYORBJYH8VvZy36cAODnnL
         Y5eaKLV7QgiBCnmw5PBfQywiQKtIaaNdobFOKmiVwBTkmIoGxtB7PB24TCSt6CoKrDe2
         7cRpRpmSbBjjPEv0AIFRWfx3jSZ0VTWOBO9+iIoPxcyaZ7Uk/EFbC7Wgl5p2q1pQKH+e
         j+Yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:references:date
         :in-reply-to:message-id:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=s8FQGr0T1uJbDGVzLGfgRuLCJZMSNyYsCBerBB8f4rI=;
        b=iTwouD/eDCydMKyGHo37c9ZJwq9yWaBDZoJhGPCz4fKBPTcEg0DQtdXFHs7plkUrNh
         TFSWf1Te8s9gRy1ARRBIPDhSrh52PUF6F7X3HpGBP5qFlqHDNxvmF6KZWxGoQ/KY9qk4
         is748gsOuGgD1ZxB7MBHrwrAG8CXnYhB5HCl7i6tIgqJe6tmX8M4Yg0Bq2HqlxZCbLCe
         XSIDeHCoSRbBLRI6TLi7exxjtJ1y5nVe07DhY3R45dL5xYLnCim5XCeJsW4NjHIKuhtp
         3M9xVRqDPNky+jte5uuMf0sC/2Ap5rSAW6TFaNN+Ms89ajzYGE3aaFLngiGgSRj5GM52
         7xNg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532G+T2PuNyeEiabX8fDgD8BV5ICB4woy0NN9ERSJD8h51o/99RG
	voyGw3A9sOjn7dWAzz/hROM=
X-Google-Smtp-Source: ABdhPJy43josvwjM237Kl7K7sg2yxklN5AR1fdSnBT0dnKF2MC+sBa43tgt8BZZ1dm42KEKkBwl4DA==
X-Received: by 2002:a05:651c:1391:: with SMTP id k17mr192244ljb.277.1605548847248;
        Mon, 16 Nov 2020 09:47:27 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:d0e:: with SMTP id 14ls9157050lfn.0.gmail; Mon, 16 Nov
 2020 09:47:26 -0800 (PST)
X-Received: by 2002:ac2:5607:: with SMTP id v7mr206198lfd.71.1605548846154;
        Mon, 16 Nov 2020 09:47:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605548846; cv=none;
        d=google.com; s=arc-20160816;
        b=AUSbAkxOEzz2phkBpLHnzOrTx2QcWUOTTyAzSHWU3A+bRo/h0aT2HUszk0Inll3JPy
         +BxXqzsyPVZQ8AatL5iPHlJ9ajD9E53/+n1fKtP74Ci4NPVb+ivFFSjPQgJl4H3UQosc
         Oxa0M2ApmlQZ0DvarkJw+psxfprKcbSp8RSK3caFNKffnKgG83QRSroOIa9PLduKwkaZ
         1+alh5jqNbbRdprHZwYwxOVGZEgfXZG02KExmMw4BCc4WvG1235A9roKAP9AOaI17g/6
         +WgEwSgKIBu0UihbM/fL934D616FPUH368Kec7F7NFvFoSqiWfDAEbHKseGAguOVoNIG
         yWxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:message-id:in-reply-to:date:references
         :subject:cc:to:from;
        bh=OiiUQaM2bYfHqobx2mMOU17o8AjbbiVsNUB/GdzyHa0=;
        b=YWkpMbVpqhGvy6lw/K7Iw4ddF8/qJrJA4vtmlqfDQ/Vel2RwEiQmru3NSkNdIPmtTu
         3UgeuQK+jK+VMw0C0O1rL1U3XRxqSUElBgJIi0/+WLzHt8mubeIctgESMjdPSq/9uX7D
         B0gMoQpVdjFO71qYfDbynKXZa3Jaw/62gw3CUFMWAeFOf5lsSAYWe2V2m8CfLVNss1sf
         FsRV5/lACieYIJW2xan6kFhwfX3dRSg6jhQqjr6H08k5HtXVkBpTLhSPmoRsUkArgq46
         rCDJcU9jGMGsn8cGMfuCFsZxlgXupW0XAP3JbWn8h2j3pACLSjlf9hi73e7mpSbPKVld
         8UyQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of whitebox@nefkom.net designates 2001:a60:0:28:0:1:25:1 as permitted sender) smtp.mailfrom=whitebox@nefkom.net
Received: from mail-out.m-online.net (mail-out.m-online.net. [2001:a60:0:28:0:1:25:1])
        by gmr-mx.google.com with ESMTPS id i12si465375lfl.0.2020.11.16.09.47.25
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Nov 2020 09:47:25 -0800 (PST)
Received-SPF: pass (google.com: domain of whitebox@nefkom.net designates 2001:a60:0:28:0:1:25:1 as permitted sender) client-ip=2001:a60:0:28:0:1:25:1;
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
	by mail-out.m-online.net (Postfix) with ESMTP id 4CZc3K30kTz1rx7x;
	Mon, 16 Nov 2020 18:47:25 +0100 (CET)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
	by mail.m-online.net (Postfix) with ESMTP id 4CZc3K26fdz1qtZ6;
	Mon, 16 Nov 2020 18:47:25 +0100 (CET)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
	by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new, port 10024)
	with ESMTP id Fcuw266vvLxM; Mon, 16 Nov 2020 18:47:24 +0100 (CET)
X-Auth-Info: wxbQwUFoWhqFj8s7Vg1V6Cvh2UMn555Uc46N/96aYxMCH5Z0HHAeNhVd/Wcn8Qne
Received: from igel.home (ppp-46-244-169-244.dynamic.mnet-online.de [46.244.169.244])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.mnet-online.de (Postfix) with ESMTPSA;
	Mon, 16 Nov 2020 18:47:24 +0100 (CET)
Received: by igel.home (Postfix, from userid 1000)
	id C6D3B2C3328; Mon, 16 Nov 2020 18:47:23 +0100 (CET)
From: Andreas Schwab <schwab@linux-m68k.org>
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Nathan Chancellor <natechancellor@gmail.com>,  Nick Desaulniers
 <ndesaulniers@google.com>,  clang-built-linux@googlegroups.com,
  linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org
Subject: Re: [PATCH] compiler.h: Fix barrier_data() on clang
References: <20201014212631.207844-1-nivedita@alum.mit.edu>
X-Yow: It's the land of DONNY AND MARIE as promised in TV GUIDE!
Date: Mon, 16 Nov 2020 18:47:23 +0100
In-Reply-To: <20201014212631.207844-1-nivedita@alum.mit.edu> (Arvind Sankar's
	message of "Wed, 14 Oct 2020 17:26:31 -0400")
Message-ID: <87sg999ot0.fsf@igel.home>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/27.1 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: schwab@linux-m68k.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of whitebox@nefkom.net designates 2001:a60:0:28:0:1:25:1
 as permitted sender) smtp.mailfrom=whitebox@nefkom.net
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

On Okt 14 2020, Arvind Sankar wrote:

> Commit
>   815f0ddb346c ("include/linux/compiler*.h: make compiler-*.h mutually exclusive")
>
> neglected to copy barrier_data() from compiler-gcc.h into
> compiler-clang.h. The definition in compiler-gcc.h was really to work
> around clang's more aggressive optimization, so this broke
> barrier_data() on clang, and consequently memzero_explicit() as well.
>
> For example, this results in at least the memzero_explicit() call in
> lib/crypto/sha256.c:sha256_transform() being optimized away by clang.
>
> Fix this by moving the definition of barrier_data() into compiler.h.
>
> Also move the gcc/clang definition of barrier() into compiler.h,
> __memory_barrier() is icc-specific (and barrier() is already defined
> using it in compiler-intel.h) and doesn't belong in compiler.h.
>
> Signed-off-by: Arvind Sankar <nivedita@alum.mit.edu>
> Fixes: 815f0ddb346c ("include/linux/compiler*.h: make compiler-*.h mutually exclusive")

This breaks build on riscv:

  CC [M]  drivers/net/ethernet/emulex/benet/be_main.o
In file included from ./include/vdso/processor.h:10,
                 from ./arch/riscv/include/asm/processor.h:11,
                 from ./include/linux/prefetch.h:15,
                 from drivers/net/ethernet/emulex/benet/be_main.c:14:
./arch/riscv/include/asm/vdso/processor.h: In function 'cpu_relax':
./arch/riscv/include/asm/vdso/processor.h:14:2: error: implicit declaration of function 'barrier' [-Werror=implicit-function-declaration]
   14 |  barrier();
      |  ^~~~~~~
cc1: some warnings being treated as errors
make[5]: *** [scripts/Makefile.build:283: drivers/net/ethernet/emulex/benet/be_main.o] Error 1
make[4]: *** [scripts/Makefile.build:500: drivers/net/ethernet/emulex/benet] Error 2
make[3]: *** [scripts/Makefile.build:500: drivers/net/ethernet/emulex] Error 2
make[2]: *** [scripts/Makefile.build:500: drivers/net/ethernet] Error 2
make[1]: *** [scripts/Makefile.build:500: drivers/net] Error 2
make: *** [Makefile:1799: drivers] Error 2

Andreas.

-- 
Andreas Schwab, schwab@linux-m68k.org
GPG Key fingerprint = 7578 EB47 D4E5 4D69 2510  2552 DF73 E780 A9DA AEC1
"And now for something completely different."

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87sg999ot0.fsf%40igel.home.
