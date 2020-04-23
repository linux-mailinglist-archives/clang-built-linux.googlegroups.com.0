Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBNW6Q72QKGQEC3WFCKA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x939.google.com (mail-ua1-x939.google.com [IPv6:2607:f8b0:4864:20::939])
	by mail.lfdr.de (Postfix) with ESMTPS id DD1FB1B649B
	for <lists+clang-built-linux@lfdr.de>; Thu, 23 Apr 2020 21:40:44 +0200 (CEST)
Received: by mail-ua1-x939.google.com with SMTP id c24sf3701535uao.10
        for <lists+clang-built-linux@lfdr.de>; Thu, 23 Apr 2020 12:40:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587670839; cv=pass;
        d=google.com; s=arc-20160816;
        b=efHYmkvuOaiDX1QDJTWyoVPP45vwGvZrtpaRRowvIPXM/38WqANDKg+s11J6zFMgv1
         qMtoq3ncvYfsKNRA650i6EGntM7wy30mq2ZHlmju30OSPII0mL4u+68hOzJ6ZJhoxrWk
         Osii1NZFfzvnqKPDe9SJ8RTwtQjOqGSJfrvX+PBXtS49wTkmV0DO/mImGGfrufMrWBj7
         RAyatNJIgbIvGaGM9j5u8eXXvdXo4H+wmyQAuhFkV9eINNEVcmnKdK/YKSR/XQttU3Kw
         ld78q6xBJqgwjmboZ0EtkiTt/QkJAmXu/39/JFauu2bxJB2aavCLMkOF+BeXsc8cllkp
         ht7w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=MG3H1Xdj5Lq3UiFteNjUXhOWQ4sp/l/o8PxEAvZS+o8=;
        b=kZXcdrPaOBKrrW1XRtfjznwnEtEJoodt5k5S7L8a8nERHoSzF/VPbocLTX9mv9iG1G
         5HcK1pmj+j4IXkDmz8f75Ktfs02CyAXmH72/YtOOMDbmj25IwsjAT0Isp6R9xYdnGwpw
         2BljLC6AunjulcCxRZNg3OvBB0bWaSRzbISachyHlkSJS3ken9Qzf9lP8PTS2rOll5q6
         PRgDDyWNNpqN/ADSJjIDFEgSgcnvalHWyt6bSZpthzTYahPKwrixiWtkyS9N4YxfWvcO
         5JTUl1SSozF7cnnkTDtIL0x3xgntsOUiALPoKzINziH+lnn5VcA5k3v1P+1bh6T5OTKo
         GBqQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=QtYUniZ4;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MG3H1Xdj5Lq3UiFteNjUXhOWQ4sp/l/o8PxEAvZS+o8=;
        b=JQ1GfKd/q+21lvUAgXkNH29EpZ+fEQXLcDUOqpjO1nOIUdmo99ncuzJYLQTxKRl0QB
         MAWFuMjLPcHC9Px0EC5U8kK8TFYKELzEolLZhghkdLkTLi2r8WTJySruqcImRCrm/DNP
         o0DCI4rz/tbIsfnwPxhluePOXMMYXGsJD4GqgFvX7O/nQFrBaTICERC7zxvE2DPm4zTs
         aLHCw4o/MLmw95Y0MDx0EflHw+AFeq49p/vzVZcrNU8ekNkgPIKF8Y5ZlGKVDLFt0a5r
         T0qfb/L2nA6DpBKg5n2542NT8UgiPZvo5LNwSK+jYe9N9+3Csb061wlW9kqa5OhJUl76
         SQqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MG3H1Xdj5Lq3UiFteNjUXhOWQ4sp/l/o8PxEAvZS+o8=;
        b=TToM8Sze8In8a4IePHZvG97uoXqLXncy4lKBdBeuHVUFjolF5tjpLK/aT4dff2fY5K
         z3eMI4S/MiAotp1mOwkP4VOlA+EdxF5ebE2feZuuzfvcLsmuPn+aAMKxSA/dfiehSxZJ
         ys4D2vGzcGvyGHwwBOB4osMS4lLa6XWpcUFo0itwEsNG47OnBZoMK0b6kbQxMdZ04p5E
         dDiHU/L5r30/Z1m1XI4FEtMqS+3vjDtv74xxRLG/cUiWYdVjpYIVaWKczZsoGDQ95Q3o
         FlQVgvIq8SjjCSo+vSJYKtvMEc1Qjt/TfN5JDsuQ9brx9F259JH/Py4zQ7q0ax4e5WNh
         0IyQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuaQSZbsowqKxl8U2+D1n13251cPIHj1MUx/B7Fb5So9uqArD89j
	FEQEc9RtBhZ2YqS0QVie0h4=
X-Google-Smtp-Source: APiQypJpf3vvrQsEKA7PMqsIUTF+0aHzYsqdlePpUFAjFSMocW6SUQ7TzYoonpnfdR3B3ECMTHBVWA==
X-Received: by 2002:ab0:7303:: with SMTP id v3mr4514980uao.81.1587670838915;
        Thu, 23 Apr 2020 12:40:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:2c86:: with SMTP id s128ls1039617vss.3.gmail; Thu, 23
 Apr 2020 12:40:38 -0700 (PDT)
X-Received: by 2002:a67:ef4c:: with SMTP id k12mr4698275vsr.30.1587670838597;
        Thu, 23 Apr 2020 12:40:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587670838; cv=none;
        d=google.com; s=arc-20160816;
        b=zjSl5W6kLS+biojZlTDMKdcnqo0wlH60egqTdpZZORhtpz0KLbDQA1pEqpOFdaiOKS
         DI/D4Q4NYBMLlv/Bc4HBRDTRiC9ie7J/c48XiGQ1SYl3UafitIRNVLpeZCEhfqovfg8/
         rkMvXtpQs0l0kd3g9booS5xP9PUQOnZI6YeO8PcLFGOqU22g3Y/8Ad2IQP4X/xpbN+YD
         tpRb5OXOa2qxI6xSFAWsbXTO8Tl91GMPo/dEOX44aBcgmxDhla7j+rOSMww4w9tW8Dd4
         M41qafwzANNtPX7EtZlY1IqP8cnJlT0pKAhqAKyHGHAPbCnp7TGpDIZXSxKSVfjVrLPH
         wzJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=TE9RqET8gb6yd/mF6jLNfjNMqySu661hmaTZlbyjNjA=;
        b=PRAVibkfTut5sZj9wZVl/yXhyFlKUwz/FT+2hg6HtVzbeYTmkMbTbvm1j5mEUOsXhB
         q66o1YE+JR0vJ9Kjr5cY6KyBvyflP/7z+9dBJm3FN8l7h/NcClOi6C6BY2tc3U7elwEb
         9ZwpAAMxvOMNjq1ldiHRdTXAmsCi0/aFjmEt3M7L1paqrhZV5tGfi8O00EhUiKAyoE2O
         lPjKrseZr+FuxzBFgTTyZfjFPLaluC3zo8zFGnY7nF0Yf0EOwMj9ALsvv1saMvHvGZ0X
         KgEe+YM8yOMWTHmuSWhf0TgJv6AhtHoRsD2R4bew9QoTJiDGSSh/Y0BX3RNdprIyk5Fk
         chcQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=QtYUniZ4;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::543 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com. [2607:f8b0:4864:20::543])
        by gmr-mx.google.com with ESMTPS id e22si357944vkn.4.2020.04.23.12.40.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Apr 2020 12:40:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::543 as permitted sender) client-ip=2607:f8b0:4864:20::543;
Received: by mail-pg1-x543.google.com with SMTP id o10so3390572pgb.6
        for <clang-built-linux@googlegroups.com>; Thu, 23 Apr 2020 12:40:38 -0700 (PDT)
X-Received: by 2002:a62:7912:: with SMTP id u18mr5057190pfc.239.1587670837622;
        Thu, 23 Apr 2020 12:40:37 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id 7sm2885473pga.15.2020.04.23.12.40.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Apr 2020 12:40:36 -0700 (PDT)
Date: Thu, 23 Apr 2020 12:40:35 -0700
From: Kees Cook <keescook@chromium.org>
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
	Martin =?utf-8?B?TGnFoWth?= <mliska@suse.cz>
Subject: Re: [PATCH] x86: Fix early boot crash on gcc-10, next try
Message-ID: <202004231237.AB249F90@keescook>
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
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=QtYUniZ4;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::543
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

Reviewed-by: Kees Cook <keescook@chromium.org>

I'm glad to have the gcc bug opened for the function attribute; thanks
Nick! I needed that for the syscall entry code, but instead went with
a compilation-unit down-grade[1]. I'd much prefer the attribute. :)

-Kees

[1] https://lore.kernel.org/lkml/20200406231606.37619-5-keescook@chromium.o=
rg/

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

--=20
Kees Cook

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/202004231237.AB249F90%40keescook.
