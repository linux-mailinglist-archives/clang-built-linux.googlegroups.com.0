Return-Path: <clang-built-linux+bncBD6MT7EH5AARBLGUZP6QKGQEIJW57YY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13c.google.com (mail-lf1-x13c.google.com [IPv6:2a00:1450:4864:20::13c])
	by mail.lfdr.de (Postfix) with ESMTPS id 91B8C2B536F
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Nov 2020 22:07:57 +0100 (CET)
Received: by mail-lf1-x13c.google.com with SMTP id m12sf4503990lfa.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Nov 2020 13:07:57 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605560877; cv=pass;
        d=google.com; s=arc-20160816;
        b=RRPwLHbQcRRbr8stjLJJjc6qSc/J/+IUKMsu/D1Q527sf31n0OmlIUG295fJ18jg8H
         4okX0Rr3h62hGyXdzy6eEolRLe4krcOlM6fR0KreWgd7ZrEPvrJIBsl1fgSgtd+fqDav
         pQ/+d9ittr6+6y0FGmZDo5XSjiWGJBornz5gPrEg+L2quk414ClIPqsX8/a7LdDczpn/
         Uz0o9OAz0zRt09icrjbpCkLMhbO5d2rUDyglOF4EypCm+bQL7uIbzTSAogfN77ohtODa
         qOZMkqIvYVAkuNW18hYuZNgcf4R6061nGYZpjHGPy23ss2S350UorsiEs4YMYpjkUk+1
         D2ZA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:message-id
         :in-reply-to:date:references:subject:cc:to:from:sender
         :dkim-signature;
        bh=7Ai1OSFvNSnuIseqIufZVXjhk+I81b8gbCuGnlgmvMg=;
        b=ZjPMU72IaAz/0Q6xz3qZX6uyiFuPRuL2uZGgDKu005UBmY8Pf2aBwAxhloOxv2hqnP
         JFMM/YWNeU8DOLW5EUrQUOPNljKG/KRkghfVbLZUlp3nW1lIDff0Xw83yw9xx9Yfk/Zk
         iERW02MXJvABW8WaB7D4Q4RGn9HOmCbYVGTOE0+lnli+zskNqpIFJfTkszuDvpbO0jY9
         4dn3cD5bBOARovBNq++yAjuzUwLPnxCBWTsuA2BECBGcqxXrDEkT/i3dp6g8IgwRmLEw
         c3G3IBZOLY4Z38V/hks45oBHMmHgQNICNtFPjwolU5B2xu3ymFkf+5XNnyJhWKyXUOPX
         /bKg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of whitebox@nefkom.net designates 212.18.0.10 as permitted sender) smtp.mailfrom=whitebox@nefkom.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:cc:subject:references:date:in-reply-to:message-id
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=7Ai1OSFvNSnuIseqIufZVXjhk+I81b8gbCuGnlgmvMg=;
        b=gQeKYD8dydNb0wibiIBOhErz0uUW6n5iqPKuvGVMfonDyb3G7KTQP1P0kAEQuWagSY
         Dsp52y7cInOOlY43tCq53QJTTGyJpcZ5Xd93Okl89bc+lmGRJKqqzVzMvqybKmMiyFby
         DU+L8SSEyzJ/EJgA6za7RUgqSoEjXo8k1Y7TZmxPAeo9usEMo0/xuvWD0xMesGvvemAO
         z42GjZe2onXQ2zDK79xWhInB2Ut5l7ABk6narY/gK+OEKsDkRVLgJWfGfJrdzffcjBx0
         bopkAfwWDQsiIKx8ghki8mxpCDyxffXfxEvs9vAYA8WNYIVoXCooHxnSMNrPSV501p3P
         DWzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:cc:subject:references:date
         :in-reply-to:message-id:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7Ai1OSFvNSnuIseqIufZVXjhk+I81b8gbCuGnlgmvMg=;
        b=fnl04UBMcPcPxaFvgf6fzHpuKacXmdefXV0xa3UtsyEZF55PljIenCYIKhf5RE5F3d
         SNkZz/Kk0qx0YTprlMJvxI1IoHNpvMBpLJLf0sbJuLk2TROCv/z2fZN1VTcNP68HDqEV
         wtZa6qfYgo3IQYPmJE6oi3YW1657suIvTMR9g7s4rGoaSNeE9KSDdVc8XgE0+Rk0AB06
         s0vFvlqDwbqDq+cQj/X0ljHUSYUFJRFLXh5lmm2/JYWm4cqmV0VLJ7+iUEh3QrvbOTrr
         /Vy7ZvXy4Euuv6H1i0VWRK+4Uin1tje8lPjskM72mg7cUx/JIbanBVzuJB+aQRthyvUC
         SQyw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530QCTczvIxe71mqJM8+90FTJCfdFal3sSaM8qSw6GQqEVL4+5pJ
	aNG1WUvJ3vwGlnYfBUl03wQ=
X-Google-Smtp-Source: ABdhPJyFEU4QUdGRChaTW8vUV+eSgRdIsO3TIyCOsWmjSPN3B213yCnnQalvyt4xUQClhfic99HKIg==
X-Received: by 2002:a2e:b614:: with SMTP id r20mr442733ljn.89.1605560877144;
        Mon, 16 Nov 2020 13:07:57 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:8705:: with SMTP id m5ls1674284lji.10.gmail; Mon, 16 Nov
 2020 13:07:56 -0800 (PST)
X-Received: by 2002:a2e:3a08:: with SMTP id h8mr528476lja.263.1605560875934;
        Mon, 16 Nov 2020 13:07:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605560875; cv=none;
        d=google.com; s=arc-20160816;
        b=LhOd0o+rcpKYSDD48ZGnOXj5h06EUVhEVfe5S82P4rxg/rZSFFTdNHYkrnHEGRWYGO
         WGwUWNYK6sFuycmwfusK6N+ACpHIExOEC58b6y3mcKpltfLW3wycY2FSM+8ZsBFu1Y1d
         FtY1887DyMwc9LayRJq4ttIrumu4LBr9BWkWcnsdTc9bUel2YIG1LTBWEtGyOktM5R/U
         kmLasqCes+0xzFfbD3LPGlHkhAAlfID5nJJ316clKr1di2I8X5wYbjCPHSaDhjK1fYIx
         igwbo4u+gGlamODuR07fQsx7akVnWVCAgAEIR8OZic39Hd9DiPltGVgPKypVY1iCFgHD
         4Qjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:message-id:in-reply-to:date:references
         :subject:cc:to:from;
        bh=Y59sE7lwTQ8i7y+luT6MS6PxW2U4Zr8FGHG3emqDfIM=;
        b=NEHQPMalyakLzBAQAgx6odp2A5F+4I7cSmy0bD4votirAAb7/q4H8wrbPnnuyD5LIR
         wBfthpJRTrcBVf5fYy6upsN/mwtgvwwfGYmqHRgZ+ZAQFzK3TOUWhAUZVHoyoVcRgFe5
         y4LCuYHrW3Uy4hHBP0rydYeo4IpSsrqoLI0AGwwMM8Fp4fz3xaAebHeAOrPqUHvTEPDm
         jMjuoBV64vIiTTIJTC3sUhMwpAELynE8hyqKqiKdN/GoEgaSnCXZFNwc0JuVuvH7QXw8
         iliSZ9sEGUKkKOSMQdKeeYYqLXCxjRAkEzzUvUtx9O0SHiFZPYiBLu+hMXyN48zvYWQn
         dp2w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of whitebox@nefkom.net designates 212.18.0.10 as permitted sender) smtp.mailfrom=whitebox@nefkom.net
Received: from mail-out.m-online.net (mail-out.m-online.net. [212.18.0.10])
        by gmr-mx.google.com with ESMTPS id f5si462542ljc.0.2020.11.16.13.07.55
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Nov 2020 13:07:55 -0800 (PST)
Received-SPF: pass (google.com: domain of whitebox@nefkom.net designates 212.18.0.10 as permitted sender) client-ip=212.18.0.10;
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
	by mail-out.m-online.net (Postfix) with ESMTP id 4CZhVg2kqdz1rvxr;
	Mon, 16 Nov 2020 22:07:55 +0100 (CET)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
	by mail.m-online.net (Postfix) with ESMTP id 4CZhVg02dwz1rYF0;
	Mon, 16 Nov 2020 22:07:54 +0100 (CET)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
	by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new, port 10024)
	with ESMTP id fzVamNsoxLEg; Mon, 16 Nov 2020 22:07:54 +0100 (CET)
X-Auth-Info: bp8e+kdtVtL91h44qqgpo7kA0xjy59gIX7r7DJ3PFXaeWTdW1mGEu1e00FV8Ua+m
Received: from igel.home (ppp-46-244-169-244.dynamic.mnet-online.de [46.244.169.244])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.mnet-online.de (Postfix) with ESMTPSA;
	Mon, 16 Nov 2020 22:07:54 +0100 (CET)
Received: by igel.home (Postfix, from userid 1000)
	id 8F47B2C3398; Mon, 16 Nov 2020 22:07:53 +0100 (CET)
From: Andreas Schwab <schwab@linux-m68k.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Palmer Dabbelt <palmerdabbelt@google.com>,  Arvind Sankar
 <nivedita@alum.mit.edu>,  Nathan Chancellor <natechancellor@gmail.com>,
  clang-built-linux <clang-built-linux@googlegroups.com>,  LKML
 <linux-kernel@vger.kernel.org>,  linux-riscv@lists.infradead.org
Subject: Re: [PATCH] compiler.h: Fix barrier_data() on clang
References: <20201014212631.207844-1-nivedita@alum.mit.edu>
	<87sg999ot0.fsf@igel.home>
	<CAKwvOdn8aOr0=22idJ_KetgJ_rhk5-7i29VvxofoLrRo138f_g@mail.gmail.com>
X-Yow: I smell like a wet reducing clinic on Columbus Day!
Date: Mon, 16 Nov 2020 22:07:53 +0100
In-Reply-To: <CAKwvOdn8aOr0=22idJ_KetgJ_rhk5-7i29VvxofoLrRo138f_g@mail.gmail.com>
	(Nick Desaulniers's message of "Mon, 16 Nov 2020 11:31:13 -0800")
Message-ID: <87d00d9fiu.fsf@igel.home>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/27.1 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: schwab@linux-m68k.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of whitebox@nefkom.net designates 212.18.0.10 as
 permitted sender) smtp.mailfrom=whitebox@nefkom.net
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

On Nov 16 2020, Nick Desaulniers wrote:

> A lot of VDSO's reset KBUILD_CFLAGS or use a new variable for their
> compiler flags.  As such, they're missing `-include` command line flag
> that injects include/linux/compiler_types.h,

It's not missing here.

Andreas.

-- 
Andreas Schwab, schwab@linux-m68k.org
GPG Key fingerprint = 7578 EB47 D4E5 4D69 2510  2552 DF73 E780 A9DA AEC1
"And now for something completely different."

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/87d00d9fiu.fsf%40igel.home.
