Return-Path: <clang-built-linux+bncBCIO53XE7YHBBFNNR32QKGQESXOPYNQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x140.google.com (mail-il1-x140.google.com [IPv6:2607:f8b0:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id 767E31B8316
	for <lists+clang-built-linux@lfdr.de>; Sat, 25 Apr 2020 03:47:02 +0200 (CEST)
Received: by mail-il1-x140.google.com with SMTP id l18sf12534316ilg.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 24 Apr 2020 18:47:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587779221; cv=pass;
        d=google.com; s=arc-20160816;
        b=nI/hjhKk254f3SYNN2ru9uyDtk/G/q4eJo58bZIy41kkX0hDvGLy4OmjbEP6vB5FPT
         QOvFqmtWKqY6LGLNiu9/CdA8Mlng00dHcioILFnujpYH0UMeAOxrkwsM4DQlsPYzGa8T
         lZSRNdhEkAlwPSIQmYRXvGMh1Up/9LdC9vj414Rlsm+Me+WMDFtIHJ+2M8ZSvjoFigYR
         5nRfxCQXatnpNIOtu03gcqpPkQ4R9zXAmwqzxnTy5ZHH0CpNPUVbYjS5YRgNX/e1K1og
         AxKcI8uL2sWDuGLkAwVmTBcOFyvIHkD7T00W2AgXyFW3fKQF7aUKqZ041OEwqkXdXGX6
         KEJg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:date:from:sender:dkim-signature;
        bh=OYmV00yn2kOF0Z6eSTfCEXfG4nWoC7i+xiqJVLO1keo=;
        b=MZ83kcQJWoZuYgSqdjqLj+HsPS5cVBuWpxtISl2rfEwFNxmnpTns3H6hi5B2aF+rrx
         p6B/mtmtyIIh+RsPPHoOznH+G1EA12c2T7MQcXPi7ER5IYdueXVcFnygZTWDtlRg/NkU
         z1uJ0/Lnvu9ZGBLR9dAENXtXm50QIfBDJFcCsmsHpq7Fp3oxo9M4fF/SXI/o/S4s7Epp
         UAihHzKMswbl75uATjTKUMB0itF01qhF8DHluNKpU/lzW+kKs/wb0nIFpYC6xum8gP5d
         ncxtZAXPJxgkKurTtUVlen1lT6GNxwk/TZli+eik3T1M9POlgrTcBoxYDNvg3kusYvY3
         ktoQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Ro/13rop";
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OYmV00yn2kOF0Z6eSTfCEXfG4nWoC7i+xiqJVLO1keo=;
        b=rCHsmb+8UYbN/FQ3wHN1YSz03xM0/BxWYJpyDmnE2RX2tEbarjWCNCfS27qi6OyhGg
         8UTCSF2ffdAxZLRSMaR6rFQKmOnsCdeExL22Rki4WKeuEKwohHb8lRPw9clKm9PZoVC2
         Gvj7Y2gasMkPbKtsVNfNQyIps54v1tqIhryCwlbxE2Xb66dl6S/N1iMtuOFIfpKc0SnI
         5V/4kTHK0EZWYlZ5SFj1PxrdcTEpgZXBADbOilZYhmwUfVBV9R4b7ukmSDwQYIh1L6/y
         q5NsdxxFG5EuLu+IJAfTRfq2ZOPK+MJ7DXpbeZHHZixzAh+4bJKDcuaCDRkR9knwX7PY
         Cv6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:date:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OYmV00yn2kOF0Z6eSTfCEXfG4nWoC7i+xiqJVLO1keo=;
        b=nRdDgZ1az6xmsbg6w/STWTzc58EpcLd9wgiZ8L0m6P2Ha1KxbwAf7YV+vUguSDtyQE
         PrwPwfK5ZV94sZiVkapsCRUk4rTGzm0BCw7Nl5uq5sUYm8Koub1MkJMmDZyjmHhlMMSV
         N2gRUTYzJz7s1EtW1VD2OveH+YOEEaWETFyx5QV1/eIRUCIkNGnSc716w/FUTkpbt6AT
         U8R6RUtQ7gHEsfJkFHa0mvKKwJjLypfgqkUse04ADRNUHg3cOLQhkxYrGGfiOtlm0NWF
         jtk+5582V751LfWdqzlJvVjYFbms5oGdY8X8WCMCmgD1rJ0K1C+CEyaJRdXhNSfjhM2R
         o/Sg==
X-Gm-Message-State: AGi0PuZe3/MUMb4yCLGxoKWJk7LmjGOA1sZwsZxvPfrjwe4GhKe/m13j
	pRRw34w2/UIzd7bc62q1t1k=
X-Google-Smtp-Source: APiQypInvBJkpIjawycQdVzaoIDrBG+terNPTltIBGCoamyP2ueFiu71+BgJASZqMjCnqIEKq8Ophg==
X-Received: by 2002:a02:cc19:: with SMTP id n25mr10667379jap.107.1587779221185;
        Fri, 24 Apr 2020 18:47:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:ce88:: with SMTP id y8ls2922020jaq.0.gmail; Fri, 24 Apr
 2020 18:47:00 -0700 (PDT)
X-Received: by 2002:a05:6638:c45:: with SMTP id g5mr11216083jal.33.1587779220778;
        Fri, 24 Apr 2020 18:47:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587779220; cv=none;
        d=google.com; s=arc-20160816;
        b=das8xVnyZ0qEElStK3ketzwiSUrcBzUxAp82kSF/IObFZH/EvtNyBCq4BN3n32UPAK
         2U8JFdY+ZMLZkd92EcSvis0TMbegT/veDCQkGi+nmIzE4DJkspPgTsmJUIEcsxNV+IMv
         flrueCEhf/YOnlAVh33xpkXbIXrqe5DBSYqo3R9rWjWh6FTUwGKt+OLtDSXenFaNa7LO
         uB/W/rUxef15yzT6d5YQsrSwW83NZMT16+/v2nzc0UvRLwSDMvZqraazOjz9TJY1RCBZ
         FZreUbObj8tnA0K/7vvmOJ6XyqxOmg2h4F2MoaF8fz2vuU4WYhTNj4xLUUtx/paEg1Nb
         wIwA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:date:from:sender
         :dkim-signature;
        bh=epmQdF3K+/5UFEAqHIAqosz9RuvSXw7j3oErS4DM4VQ=;
        b=vSwOYEidmA1wZwKGh7tqFqzv/i5AwQQYxs3uGxGHQseJ7uv58Mu24H6nK75X9V7Bpc
         cY2ORCOoWm6iGrZ8WQyjSM/VKgvjo0Sj8Ak5LquMuiPgNyGpueJ/eVBB9D6AvyJTGdoQ
         equnF10yUQT+lmYKpYCSgSRigHKN1YY/meybLbcj+UAmQ5+ERqRUukwZTCT9jqdqxs0P
         MxuHwhDmB6RGvODr/G4+egbvwFXMQkNg0vfAvTJqHcVlqNYl6ZdCdOSTWS6ff5cfgcXo
         W+EGTT1EcvS0iw4GwrmWBU9sn1ObTM0g9l5iKtgfjylH4pum+3bIi4w/uJiGzGOCpQBG
         yMyA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Ro/13rop";
       spf=pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
Received: from mail-qt1-x841.google.com (mail-qt1-x841.google.com. [2607:f8b0:4864:20::841])
        by gmr-mx.google.com with ESMTPS id o6si465538ilo.4.2020.04.24.18.47.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 24 Apr 2020 18:47:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::841 as permitted sender) client-ip=2607:f8b0:4864:20::841;
Received: by mail-qt1-x841.google.com with SMTP id s30so9641010qth.2
        for <clang-built-linux@googlegroups.com>; Fri, 24 Apr 2020 18:47:00 -0700 (PDT)
X-Received: by 2002:ac8:6799:: with SMTP id b25mr12574813qtp.54.1587779220263;
        Fri, 24 Apr 2020 18:47:00 -0700 (PDT)
Received: from rani.riverdale.lan ([2001:470:1f07:5f3::b55f])
        by smtp.gmail.com with ESMTPSA id z26sm5022351qkg.39.2020.04.24.18.46.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Apr 2020 18:46:59 -0700 (PDT)
Sender: Arvind Sankar <niveditas98@gmail.com>
From: Arvind Sankar <nivedita@alum.mit.edu>
Date: Fri, 24 Apr 2020 21:46:57 -0400
To: Borislav Petkov <bp@alien8.de>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Michael Matz <matz@suse.de>,
	Jakub Jelinek <jakub@redhat.com>,
	Sergei Trofimovich <slyfox@gentoo.org>,
	LKML <linux-kernel@vger.kernel.org>,
	Thomas Gleixner <tglx@linutronix.de>,
	Ingo Molnar <mingo@redhat.com>, "H. Peter Anvin" <hpa@zytor.com>,
	Andy Lutomirski <luto@kernel.org>,
	Peter Zijlstra <peterz@infradead.org>, x86@kernel.org,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Kees Cook <keescook@chromium.org>,
	Martin =?utf-8?B?TGnFoWth?= <mliska@suse.cz>
Subject: Re: [PATCH] x86: Fix early boot crash on gcc-10, next try
Message-ID: <20200425014657.GA2191784@rani.riverdale.lan>
References: <CAKwvOdkkbWgWmNthq5KijCdtatM9PEAaCknaq8US9w4qaDuwug@mail.gmail.com>
 <alpine.LSU.2.21.2004201401120.11688@wotan.suse.de>
 <20200422102309.GA26846@zn.tnic>
 <CAKwvOd=Dza3UBfeUzs2RW6ko5fDr3jYeGQAYpJXqyEVns6DJHg@mail.gmail.com>
 <20200422192113.GG26846@zn.tnic>
 <CAKwvOdkbcO8RzoafON2mGiSy5P96P5+aY8GySysF2my7q+nTqw@mail.gmail.com>
 <20200422212605.GI26846@zn.tnic>
 <CAKwvOd=exxhfb8N6=1Q=wBUaYcRDEq3L1+TiHDLz+pxWg8OuwQ@mail.gmail.com>
 <20200423125300.GC26021@zn.tnic>
 <20200423161126.GD26021@zn.tnic>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20200423161126.GD26021@zn.tnic>
X-Original-Sender: nivedita@alum.mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="Ro/13rop";       spf=pass
 (google.com: domain of niveditas98@gmail.com designates 2607:f8b0:4864:20::841
 as permitted sender) smtp.mailfrom=niveditas98@gmail.com
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

On Thu, Apr 23, 2020 at 06:12:24PM +0200, Borislav Petkov wrote:
> Ok,
>=20
> I have tried to summarize our odyssey so far and here's what I came up
> with. Just built latest gcc from the git repo and it seems to work.
>=20
> Next I need to come up with a slick way of testing the compiler...
>=20
> Thx.
>=20
> ---
> From: Borislav Petkov <bp@suse.de>
>=20
> ... or the odyssey of trying to disable the stack protector for the
> function which generates the stack canary value.
>=20
> The whole story started with Sergei reporting a boot crash with a kernel
> built with gcc-10:
>=20
>   Kernel panic =E2=80=94 not syncing: stack-protector: Kernel stack is co=
rrupted in: start_secondary
>   CPU: 1 PID: 0 Comm: swapper/1 Not tainted 5.6.0-rc5=E2=80=9400235=E2=80=
=94gfffb08b37df9 #139
>   Hardware name: Gigabyte Technology Co., Ltd. To be filled by O.E.M./H77=
M=E2=80=94D3H, BIOS F12 11/14/2013
>   Call Trace:
>     dump_stack
>     panic
>     ? start_secondary
>     __stack_chk_fail
>     start_secondary
>     secondary_startup_64
>   -=E2=80=94-[ end Kernel panic =E2=80=94 not syncing: stack=E2=80=94prot=
ector: Kernel stack is corrupted in: start_secondary
>=20
> This happens because gcc-10 tail-call optimizes the last function call
> in start_secondary() - cpu_startup_entry() - and thus emits a stack
> canary check which fails because the canary value changes after the
> boot_init_stack_canary() call.
>=20
> To fix that, the initial attempt was to mark the one function which
> generates the stack canary with:
>=20
>   __attribute__((optimize("-fno-stack-protector"))) ... start_secondary(v=
oid *unused)
>=20
> however, using the optimize attribute doesn't work cumulatively
> as the attribute does not add to but rather replaces previously
> supplied optimization options - roughly all -fxxx options.
>=20
> The key one among them being -fno-omit-frame-pointer and thus leading to
> not present frame pointer - frame pointer which the kernel needs.
>=20
> The next attempt to prevent compilers from tail-call optimizing
> the last function call cpu_startup_entry(), shy of carving out
> start_secondary() into a separate compilation unit and building it with
> -fno-stack-protector, is this one.
>=20
> The current solution is short and sweet, and reportedly, is supported by
> both compilers so let's see how far we'll get this time.
>=20
> Reported-by: Sergei Trofimovich <slyfox@gentoo.org>
> Signed-off-by: Borislav Petkov <bp@suse.de>
> Link: https://lkml.kernel.org/r/20200314164451.346497-1-slyfox@gentoo.org
> ---
>  arch/x86/kernel/smpboot.c | 8 ++++++++
>  1 file changed, 8 insertions(+)
>=20
> diff --git a/arch/x86/kernel/smpboot.c b/arch/x86/kernel/smpboot.c
> index 3b9bf8c7e29d..e9f44727fccd 100644
> --- a/arch/x86/kernel/smpboot.c
> +++ b/arch/x86/kernel/smpboot.c
> @@ -266,6 +266,14 @@ static void notrace start_secondary(void *unused)
> =20
>  	wmb();
>  	cpu_startup_entry(CPUHP_AP_ONLINE_IDLE);
> +
> +	/*
> +	 * Prevent tail call to cpu_startup_entry() because the stack protector
> +	 * guard has been changed a couple of functions up, in
> +	 * boot_init_stack_canary() and must not be checked before tail calling
> +	 * another function.
> +	 */
> +	asm ("");
>  }
> =20
>  /**
> --=20
> 2.21.0
>=20
>=20
> --=20
> Regards/Gruss,
>     Boris.
>=20
> https://people.kernel.org/tglx/notes-about-netiquette

The comment above boot_init_stack_canary's definition should be updated
to note that it needs to be called from a function that, in addition to
not returning, either has stackprotector disabled or avoids ending in a
tail call.

There are also other calls that likely need to be fixed as well -- in
init/main.c, arch/x86/xen/smp_pv.c, and there is a powerpc version of
start_secondary in arch/powerpc/kernel/smp.c which may also be affected.

Thanks.

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20200425014657.GA2191784%40rani.riverdale.lan.
