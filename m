Return-Path: <clang-built-linux+bncBCP4ZTXNRIFBBE5P4CAQMGQESJCRSBI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43c.google.com (mail-wr1-x43c.google.com [IPv6:2a00:1450:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 698153258AE
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 22:33:07 +0100 (CET)
Received: by mail-wr1-x43c.google.com with SMTP id k5sf3666177wrw.14
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 13:33:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614288787; cv=pass;
        d=google.com; s=arc-20160816;
        b=FhMTqVvKZMa9rGBMMSSiKVvccSKYK9zQxnWsjktg6d5bAdBpGQEARWsRqMtyV+xFBA
         INcQc8VxwGYsmnCfuF0qud7xDwKjNuH4ap7mEOGP3+D2Y0cB+97JsvvMHPcm8R8ckgcW
         ZHRY0TAR3iKCpwXRMK0Y5//i2d5oKQUnqtXDS/5383HUBYmsUr9/FFr5Y7o5D2kVyjCe
         5NF7VMIQLVTO4yObUAdAmQpMCoy5INBxuiUqFp11E1S4IaGUi+aTLeBh0jkP4dzGEILu
         fgJRNLyBoV74H69doHxVs0o92xMc7yFsItbLCq36cvWfdPvECIw7s+l5P8S2sGShHYkS
         hxQw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=tjEuArJSJm6kO//JkvSoGbvgBy/fPwoFJ1hlUquIjUc=;
        b=GMLNonrSMx6XE0bQL5MEM1/le8RCWf6apfLyAhAawSX7DFyXkcXtzQhSfpXGcl1Dvi
         /q5/qQcFKuW0uKVHwMufTf4lX5wAz3+izeUBZ5iW5FJaTpEFDr6VcDi9q5ynYglGWUcN
         tJrQ3AbMKpVax34MsXq5RxUA/1x1NqVrm8tAUpK0J9UHqLPwAn7v2zEfrPoD9syg5/Ko
         EquR7uYnI3hetTzMhPEuOwGbp12SYGcmuPaW1yR5y+Wp3TwSq2u/8UBD0QZZrvAgg6pY
         EoxvJvyUxB7t58EcvzKgHoHgFsLh7mNcylUiCRRsdVmzKaOwwJreaGu6CFpZdeuEbG0h
         kFrQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=OIobfCmi;
       spf=pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=tjEuArJSJm6kO//JkvSoGbvgBy/fPwoFJ1hlUquIjUc=;
        b=lpx1dzFguWDw3BSNU1XtzVLl7zgxjJQ+bTh6BJ84c+ZL+pgRusDb7FcT17yF/pZKBN
         mRlFfWRDKZQfUtxValMfAdsXcT6RSw3qXiOdfisQqvXamhfaDZ5sSZozLW71C/WCef/0
         Ou0BNxLSeCRqlBLfmnD1+mfgRS9vHSdlxtYIJ/eWZBllHOaPFSF2WyTqJbRTleFdwoa8
         0StBya3tgQAXLBcE/nszuGzo0RBucnp1Pegt/2DECgY1P2foYlpr1xDJKbl8qFPStY7h
         RiJEiYTYlWmoX+Kqe7gKP6myf9CekjU58j0wh6yeoYRziXccDAavWcbMsqLEA11xpdaT
         psWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=tjEuArJSJm6kO//JkvSoGbvgBy/fPwoFJ1hlUquIjUc=;
        b=h30Q5Tm4pjYtLk24cgNoFt0S2gEdR8AST1+LBEGXaX2WAlL8SBDVKb+CrZakk2FCJF
         Mmazgs7ysH+FazWEfNm2qrloxyLGXBvQL98XEJUqFyyVpqy0ycloiPrDoDrZY45M455O
         FHZ9AEyGh2i23mAVmtX46sFBFvVoabufI+iWZ94Oxukn7wUtFrYHZgBcH7XdDSi/VJdI
         rvrE6lMeaRN6b0ujEpc8bAAWmY45+sKB667dE42Ira2kIT1njqZiN900v0jA0/AcrGFK
         eVeHlkWJuUTTiNMLodQ0br+fX2ZHEEwUgjg7YUfCRX8NoRpVgUAs/GjY7gu+sfnrFryb
         WPbg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531fFl854rZZ29xvuluX0LutcV1/QFjGJKLWk4ISHM1sxlWJyl0a
	p7hdUrbhB5j+Q3VcZ8OU4FA=
X-Google-Smtp-Source: ABdhPJx5gSI53P8ykCj92naAy4fW3kJs9GWY5ILnF2rawaZoSNYYOBa9+aB6kjNXNITWqLdTgEGRSQ==
X-Received: by 2002:a5d:58fb:: with SMTP id f27mr5316067wrd.119.1614288787199;
        Thu, 25 Feb 2021 13:33:07 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:60c2:: with SMTP id u185ls1949698wmb.2.gmail; Thu, 25
 Feb 2021 13:33:06 -0800 (PST)
X-Received: by 2002:a7b:cd9a:: with SMTP id y26mr301055wmj.57.1614288786297;
        Thu, 25 Feb 2021 13:33:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614288786; cv=none;
        d=google.com; s=arc-20160816;
        b=K/puo+pQ8FCgr0tCliw5j69MDiWvX69ksTDHscj2nbQwe4EhglpyZC2vg/P6Qj/ijk
         aM5nWjs7i7A/HeFH/Qrg0FyUq0rDYxrsl0ck7O0+EdLYjF/PNB8vQwQgec/4DXe0prf0
         tJiklM6mv6eNiq0N85YNShZgg7sxFeIAkLjvjGoqBze9DTMSB8V41bbPUgb2rhfai2Cq
         TO5285chdp79teJckA7170GIz1q0U1a/Ht3up7FUNKn1TPTqPeIGPUOTINuCqGd0PrkE
         d/zAlATIWtz7O+rD+wwXWxCQrZr3yZEUvjim2hFDmMOwuPkbZL7/PEIixI31SinucSQv
         K84g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=eDmRKFZ4fbRtPN7JebMoB9LbU72F1jrH4quqxZDE/y0=;
        b=xOqegjI1O5fG3WHS5/nqi5h6n4hphqE0FkDMBEXxF4qfcDQWSpw/SwcayDWomRHzf8
         cdOVLLtKcOdSBS3PuTbDvb7GRjlZQuUZwHl9r+96lpNy0CuJ+1CJGloFNz4IregPgTN4
         GicirkgchTVLmzkHbx/ERQjOTBBdjTXOOCYnu5hhIPSnmFstcTE/uYXOe5/r3YvqcdpQ
         XJSLeLJr4vHybYWbM0HNv6DE/mri+cvnQjXSPXRB7SQKyj9DoLQK5DhTeWQJ4AkWzh2F
         jyRuFBCc/pBxW/iL5nmXC5FzhZYteSfg74nJgmQN7gCF32g5kVMsyWhag2IGkvxy2r+D
         YSDQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@alien8.de header.s=dkim header.b=OIobfCmi;
       spf=pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) smtp.mailfrom=bp@alien8.de;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=alien8.de
Received: from mail.skyhub.de (mail.skyhub.de. [2a01:4f8:190:11c2::b:1457])
        by gmr-mx.google.com with ESMTPS id g24si599052wmk.3.2021.02.25.13.33.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2021 13:33:06 -0800 (PST)
Received-SPF: pass (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as permitted sender) client-ip=2a01:4f8:190:11c2::b:1457;
Received: from zn.tnic (p200300ec2f03dc0050646025c69cd84e.dip0.t-ipconnect.de [IPv6:2003:ec:2f03:dc00:5064:6025:c69c:d84e])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.skyhub.de (SuperMail on ZX Spectrum 128k) with ESMTPSA id AC5611EC05BB;
	Thu, 25 Feb 2021 22:33:05 +0100 (CET)
Date: Thu, 25 Feb 2021 22:33:00 +0100
From: Borislav Petkov <bp@alien8.de>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@redhat.com>,
	the arch/x86 maintainers <x86@kernel.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Arnd Bergmann <arnd@arndb.de>, "H. Peter Anvin" <hpa@zytor.com>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Arnd Bergmann <arnd@kernel.org>,
	Arthur Eubanks <aeubanks@google.com>,
	Chandler Carruth <chandlerc@google.com>
Subject: Re: [PATCH] x86: mark some mpspec inline functions as __init
Message-ID: <20210225213300.GF380@zn.tnic>
References: <20210225112247.2240389-1-arnd@kernel.org>
 <20210225114533.GA380@zn.tnic>
 <CAK8P3a0BN3p0F3UAxs9TKsHs--AiAPE0uf6126GVJNhmVTGCsw@mail.gmail.com>
 <20210225124218.GC380@zn.tnic>
 <CAK8P3a1ZiUHRxKr=SFgEFETLcSQeViPnR+XB2gBvbVk24vGvqQ@mail.gmail.com>
 <CAKwvOd=B=cHpp_XfPTtyVpQyrwQrFZX9SXKw=SJC1VC-VbEwFA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOd=B=cHpp_XfPTtyVpQyrwQrFZX9SXKw=SJC1VC-VbEwFA@mail.gmail.com>
X-Original-Sender: bp@alien8.de
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@alien8.de header.s=dkim header.b=OIobfCmi;       spf=pass
 (google.com: domain of bp@alien8.de designates 2a01:4f8:190:11c2::b:1457 as
 permitted sender) smtp.mailfrom=bp@alien8.de;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=alien8.de
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

Hi Nick,

On Thu, Feb 25, 2021 at 12:31:33PM -0800, Nick Desaulniers wrote:
> So LLVM is telling us bar() was inlined into foo(); (baz() can't be
> because it wasn't defined in this TU).  You can use this to "watch"
> the compiler make decisions about inlining.

thanks for taking the time to write all this - it is very interesting
and reminds me that I simply won't have time in this life of mine to
learn about compiler inlining - that's a whole another universe. :-)

I hope you can use that text in a blog post too - it is an interesting
read.

> (full thread: https://lore.kernel.org/lkml/20210225112247.2240389-1-arnd@kernel.org/)
> I suspect in this specific case, "Interprocedural Sparse Conditional
> Constant Propagation" sees the calls to the same fn with different
> constants, propagates those down creating two specialized versions of
> the callee (so they are distinct functions now), inlines those into
> get_smp_config()/early_get_smp_config(), then there's too many callers
> of those in a single TU where inlining would cause excessive code
> bloat.

Well, there's exactly one caller of get_smp_config - that's setup_arch().
early_get_smp_config() gets called also exactly once in amd_numa_init().

Now, with my simplistic approach, I can replace the lines at those call
sites by hand with the

	x86_init.mpparse.get_smp_config(<arg>);

call. So those become exactly one function call. I still don't see how
that can be done any differently, frankly.

But apparently the cost model has decided that this is not inlineable.
Maybe because that function ptr is assigned at boot time and that
somehow gets the cost model to give it a very high (or low) value. Or
maybe because the wrappers are calling through a variable - the x86_init
thing - which is in a different section and that confuses the inliner.
Or whatever - totally speculating here.

And this brings me to my point - you can't expect people to do all that
crazy dance of compiler introspection and understand cost models and
compiler optimization just to fix stuff like that.

Now, imagine we "fix" this to clang-13's inliner's satisfaction. Now
imagine too that gcc Version Next changes their inliner and that inliner
says that that "fix" is wrong, for whatever reason, bottom up, top down,
whatever. Do you feel the annoyance all around?

And since, as you say, there are no silver bullets here, I think for
cases like that we'll need a "I know what I'm doing Mr. Compiler, TYVM,
even if your cost model says otherwise" facility. And in this case I
still think __always_inline is correct.

Thx.

-- 
Regards/Gruss,
    Boris.

https://people.kernel.org/tglx/notes-about-netiquette

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210225213300.GF380%40zn.tnic.
