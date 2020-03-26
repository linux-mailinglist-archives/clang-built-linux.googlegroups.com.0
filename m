Return-Path: <clang-built-linux+bncBDYJPJO25UGBB4UT6TZQKGQEAXSCZBA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33c.google.com (mail-ot1-x33c.google.com [IPv6:2607:f8b0:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id DDA3E19481F
	for <lists+clang-built-linux@lfdr.de>; Thu, 26 Mar 2020 21:00:51 +0100 (CET)
Received: by mail-ot1-x33c.google.com with SMTP id a66sf5562013otb.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 26 Mar 2020 13:00:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585252851; cv=pass;
        d=google.com; s=arc-20160816;
        b=zzlQnMLzYCuQGhHhYRxPd1Ei2cPBkegIZZhhdX0Z8XpY8Je9GChzs59Org/iWSw8Ov
         dUadUqdKNy/SvBNF2qLnqmYImodwzbr9lI7Tp+E4TR+veedkkNjlu9o2udkMpWZ6r771
         EgZp6GEjVYIIFrIOwIjDHo1eAVVLvWfqL5fPeJu1EQWGg7UeejTki8QA7pnwLrKmGGj0
         4MmdOMW6UvTNHVDwFtM2sTkHIJMacFecuamwI3EvUnROzpLt3YqQ/kz+pLAFgr8n8uRr
         0mIKvuTDMSOfZmDCjnWDbN4BpqL5brABKWUw3aFzLd90t/xUrFBprbmW2RjVrxp9AeE1
         7sbA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=/zHIVJgq+H1DejWKxyQxzqFC2ZtbM393I8nEKSfmANA=;
        b=l+er0z0sMSSPWQDanRFlVjzWfJyGRkB2ESwRGUf7CzXG05LXSioAWXeowVREG0+iLM
         4ATq3B8jHofSf/dhHaNxx2xj9XFNbThhACBMtPQNrtdXPZeN2zeUcqk64IJV/dKgZRqO
         zX7bFTroq+e3qXqaZ6jyl2cOWWOYR4fQ4bZfkNKbZBGDXevQ+Gthqps1Kl41vhvROfkk
         9kgg94/NivwwJTzuZybEXKzebWd5MkMQ7T/7r9L8Q3uCvMiLY3qjHzmWz6tI7TUNIdO1
         oOS9gljDpStT3DPzw0PxWh5rkfnZl0n72tV8S9/lM738MWLuxUcmsNTr7/ZCwis1/tkj
         9upA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=KbididJg;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/zHIVJgq+H1DejWKxyQxzqFC2ZtbM393I8nEKSfmANA=;
        b=EQUMmhx+pgYzyoZ88WvY/I2Cw/3egZr/Oz4KkxhOCSxblklsYLHOecvcAGO2/NjrGz
         UefH+JqKTrsP8qpUB+NvQAOf2Qgb3adYen6K51JFDAJFH6jA9zFDHbzq/vIVwrMkfZVH
         ijwUZ6RC0GezG4rc2+GuOGdKRf5FNGD8lwL2UDnTqulao1gSRcE1Z7MSLtsKCnsrYSly
         b4PaR4vVnAv4nxvS89clsOUKkMmBZrfoiTXbBJFlMqj6nZz41BsXYcA5z7QnkuBgOoq7
         A2NBPa0Zg+YTBq41J0AU0m0hmoQU2dMyrPsEcFH3589onFkj2R0nWPRINxXb7sTE13SZ
         5GDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/zHIVJgq+H1DejWKxyQxzqFC2ZtbM393I8nEKSfmANA=;
        b=LGip9TssDoKetXOS8wEe5DvpjCco7rAhcSzGDFXgoKYRWHeZM6uZGi8L8Fy2zCq3Tk
         bkSIfUhAXaLnYNdi+YnxcPoAc/X0FIbFQdcL4TNXsLaGKM1ggeKaMQ2ggD5v4feaBiFR
         9bwQg4aMONIbMrbH/1S+xsKczs2Zj8H6QOlfMsoMbK2XwVfaA92gz0YGzJFfK9tLfxkh
         hIOLhKHt2/2mqulMeq0LhwtrAM+lfwYx5t3MSiBs+XDZbHfFcW0r+aW3p5Ekji8AQ92I
         fDDEBntWuc1sLnQkrqe1sQBAR7wRl8Iij8441UDCktdGJfDBgHSXcf46LUrs3fLNRlLO
         g+/A==
X-Gm-Message-State: ANhLgQ3Enzxu303XxbJfblqn2gerUthaMQ+tkmLG8Sju4VrI0JBoxtdA
	LxJ2uHOQliRgnmY6rv2n79A=
X-Google-Smtp-Source: ADFU+vvsEJz/aG3hUatdMsgH7jXTGbbIRTGn/RSsB++gxCVEF5VIgl6i92A1SYhdOKtQB+sf8qgnHA==
X-Received: by 2002:a4a:d88b:: with SMTP id b11mr2422042oov.42.1585252850533;
        Thu, 26 Mar 2020 13:00:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:52d2:: with SMTP id g201ls2342108oib.11.gmail; Thu, 26
 Mar 2020 13:00:50 -0700 (PDT)
X-Received: by 2002:a54:4482:: with SMTP id v2mr1369007oiv.114.1585252850080;
        Thu, 26 Mar 2020 13:00:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585252850; cv=none;
        d=google.com; s=arc-20160816;
        b=KfNM+509cPqrJpG8Z6tVC7MpIDe9EHPoa7L2YkDu420s9NCXAPl3BG5tkwIe+N0JcY
         3zoWTqcW7YmepWAq561BAe0b1tO6e1dd91AR0rfE7Aq2cbj41J6Z9YpAT0ug/WUahp/K
         dHS2rX+dUEPFbu8oLCrdULpyVxabIHu96KbQSOuvbUPPMLK8v0s1lRl67qYz4CA6MHih
         qWLkiMYEqIMsuyFsdYw+cSFYEqhzponIfZKkm4FZGUB0xWJgobavgl8Q+RXvfixTGWhu
         45IOkNv/0RceSkowLsaNv+lR7d++4okVdQwcWhsINtHM1mYZ1v5zuNAZbNg/nhCE1sV7
         7Gng==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=FlSVVlhlYYW7/x0OqEsezQf2BkVBpegKGjBAddfWNUk=;
        b=ebQMddtV+nVWof2kn23i35MAT2ChjPZss9DpUk+uzSt7Xb+qP/gn570ILR1d3mk7UX
         hUm4miK+TjMq4JHbPln1aiVYxdi387mpq5ztwp0wCBe+I98Jqu4RCybmHWHAHz5AzAu+
         2VZB43xYU1hf1fOUfehxqL/cUtKX9EmkarNQsnNeuO6iSFkflpPj70iDP7boNv7NFtOY
         +xVxOqkSVrNURvtg3z3MlDKpCmuwRt0tnCo0FOZVpiL3vpWEg7fY3oz1TsQ6w+bynoHE
         XyY86qV65LwfV+xAKI21VkGI7FfX/KEjcOizODSky0wQq7/cepeVJsBKch9xzYafUp08
         rZvQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=KbididJg;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id o10si206183oic.1.2020.03.26.13.00.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Mar 2020 13:00:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Received: by mail-pf1-x441.google.com with SMTP id f206so3323382pfa.10
        for <clang-built-linux@googlegroups.com>; Thu, 26 Mar 2020 13:00:50 -0700 (PDT)
X-Received: by 2002:aa7:918e:: with SMTP id x14mr2179958pfa.39.1585252849021;
 Thu, 26 Mar 2020 13:00:49 -0700 (PDT)
MIME-Version: 1.0
References: <20200326080104.27286-1-masahiroy@kernel.org> <20200326080104.27286-11-masahiroy@kernel.org>
 <CAKwvOdk=MCePWHD=Kj3K7fD0y8TBZfiFLB0X+gnhPUd=RnrH6A@mail.gmail.com> <CAHmME9oD7DVSGVkWv2jAyr5eZUy2Ac+MWzss5dhKEmG3hq6AFg@mail.gmail.com>
In-Reply-To: <CAHmME9oD7DVSGVkWv2jAyr5eZUy2Ac+MWzss5dhKEmG3hq6AFg@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 26 Mar 2020 13:00:35 -0700
Message-ID: <CAKwvOdmG4hRnG+R_ASLULdEVm31XkEo4vih7GxpNWK9f6xtCng@mail.gmail.com>
Subject: Re: [PATCH v2 10/16] x86: probe assembler capabilities via kconfig
 instead of makefile
To: "Jason A. Donenfeld" <Jason@zx2c4.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, Thomas Gleixner <tglx@linutronix.de>, 
	Borislav Petkov <bp@alien8.de>, Peter Zijlstra <peterz@infradead.org>, "H . Peter Anvin" <hpa@zytor.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	Ingo Molnar <mingo@redhat.com>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=KbididJg;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::441
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Thu, Mar 26, 2020 at 12:54 PM Jason A. Donenfeld <Jason@zx2c4.com> wrote:
>
> On Thu, Mar 26, 2020 at 11:49 AM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> >
> > On Thu, Mar 26, 2020 at 1:02 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
> > >
> > > From: "Jason A. Donenfeld" <Jason@zx2c4.com>
> > >
> > > Doing this probing inside of the Makefiles means we have a maze of
> > > ifdefs inside the source code and child Makefiles that need to make
> > > proper decisions on this too. Instead, we do it at Kconfig time, like
> > > many other compiler and assembler options, which allows us to set up the
> > > dependencies normally for full compilation units. In the process, the
> > > ADX test changes to use %eax instead of %r10 so that it's valid in both
> > > 32-bit and 64-bit mode.
> >
> > Does KConfig generate -D<foo> flags for KBUILD_CFLAGS and KBUILD_AFLAGS?
>
> kconfig sticks everything it's got into include/generated/autoconf.h.
> That's how you're able to use all those #ifdef CONFIG_* macros
> already. This change moves things from a command line -D to the
> autoconf.h file.

Cool, I wondered how that was wired up.  Though seeing the word
"autoconf" brings on PTSD for me.
Patch LGTM.
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

>
> > Looks like lib/raid6/test/Makefile also generates some of these?
>
> raid6 has its own crazy thing going on. The test directory compiles
> that code for use in userspace. You might argue that its whole
> situation is non-standard and weird and should be reworked
> differently, but that seems like fodder for a different patchset on
> the linux-raid list.



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmG4hRnG%2BR_ASLULdEVm31XkEo4vih7GxpNWK9f6xtCng%40mail.gmail.com.
