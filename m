Return-Path: <clang-built-linux+bncBDE6RCFOWIARBPNP6KBAMGQED56NFXY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23b.google.com (mail-lj1-x23b.google.com [IPv6:2a00:1450:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id 923AC349386
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Mar 2021 15:01:37 +0100 (CET)
Received: by mail-lj1-x23b.google.com with SMTP id f28sf3099755ljo.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Mar 2021 07:01:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616680897; cv=pass;
        d=google.com; s=arc-20160816;
        b=TraPeZVBDBC4WthYz3WdzH6wxSTGlE5b9V+p5oNFbb19R4Oxowml2HRnmtNY/E49Ve
         A4k4SQ0RuKcvcyecLGuG+ghx6Oq28bzFeCFqNHSmfIuesetnVzQhc2oj/6EYsAqhiOJN
         isjEZoy+kH4tBQ4+p4UkChbkFY5dlHE2WSsJlUCcawcbgk1KHL5WAr4cKQ/ocfPVjC18
         6PnzBlrFL0k95nme+L8oQYhSU+bimipP5Bs/vDUcPXUfMNDXmJ4e4zEvoI4q11psbmaR
         5eZrGgtQ8E53L+of2Mi4VXKA71EhlmDmrf9OET45YqKU7wK6b1gHs+D+v1rxAUSFaOIX
         qTGQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=B1zEtN5a9cM8/znXwkzuEb+qjpGwHkQtsmKIpVo0rGc=;
        b=d0gPZmzTBlMyYZPHQJoTJfWcd/vsN27XqGf0ixwtf6HACjvMmqc+XW21ujUUn0ChFG
         wcDuKfOSeym0nxlE4UcHwOkS4ITVChRXourpnt/bnaFgXjAHAzSFS3d0QK7G/ZNF2jiG
         lcPvsILlm42r2Q6MC2XGGSW6SZErdjtYjKOUSviA+a+pVuZJuNkcRUWTNwZhSKC9IRmI
         YjAsAUigXx0sHt3U5wvh42NXORauWSoF4mS/xyapr+EDefOGbGprnOAeIuHi7jJFjzL6
         KSPP789dZDKzH0x6v9/9h96K0TmyD2nPErpnqrgwzcaXO0HzRep9ed/WUtVdWVaOmSyo
         ejjg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=ySCJ54IC;
       spf=pass (google.com: domain of linus.walleij@linaro.org designates 2a00:1450:4864:20::12d as permitted sender) smtp.mailfrom=linus.walleij@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=B1zEtN5a9cM8/znXwkzuEb+qjpGwHkQtsmKIpVo0rGc=;
        b=SfimGa3/2Xu07k4EGGIxIKs/xsDbgzZmFyChlZi+wlWLXduCDBWrLzno1CeQXnH7qm
         W7/TyVjI6H3Nol6b+ucwL85EE1BHH7N9iIZegdTpdSr1NqOIYpK4p1e3OBn/nQzgm+dM
         fJNUx3B9tP07bHbO5tR4+XRpVKj6Z0pUlDALkNUD/eXWQ5CijNKQe1736sdufGqzPtGq
         kuw8a4mzNLohGrOGKZNzfpKfjPa/PeSthFlKaF3Q79CcTI5S3phal1g8CuyQSpJhRRlS
         vxM+rqXFslNcwMFUIympGharyj2QgfMhFdwWPJJYx+sEee4f+G0PVusGo3/K1dhUp4QE
         esEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=B1zEtN5a9cM8/znXwkzuEb+qjpGwHkQtsmKIpVo0rGc=;
        b=hqSUBcDtdQTUU5ZNzFwI7qaHuqob5nQlCiCgFKZwp1b0XgJvAn+r53qpFpQB6u8PXv
         9THeVd7FLWqYeujScofgrXBUqAOo8oD2I6mQBRH/8zZ96ZAloCh3kziue+cyKfPM6Bls
         z8qha9jMUgh6u+91OncZHkdojoIb3jt30EOdnAK9nauEY8gJvCWOv3huWtlZOQmoeyA2
         KrGfbCn9fGwDtEzEnGai+TXSiVxkisUEjFOPNa9SRHnIz+inPhmt5V6uK52PmAqvzmQJ
         L4GR7ZC0fefmg77cVUjZs2EHagkXLu48KCoNKEeIptiZZ7aoYJyq0K2hG72dO2M3h3YJ
         x4hw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533Dgs5qjCZHheMvTVMvk6mBsdKRTrr4pQ8eu/yFuzXQs5FvtQb2
	MPKWUmMHMP2JnkVuqIvExBI=
X-Google-Smtp-Source: ABdhPJwWBYn/l24yQnznHRByle68zOL5B94Qukq8xM6OKjv1aHw3f7vJB7wc1llmwpNgrteZMfJHWg==
X-Received: by 2002:a2e:1649:: with SMTP id 9mr6053999ljw.74.1616680893527;
        Thu, 25 Mar 2021 07:01:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:8503:: with SMTP id j3ls1285432lji.6.gmail; Thu, 25 Mar
 2021 07:01:29 -0700 (PDT)
X-Received: by 2002:a05:651c:119b:: with SMTP id w27mr5716521ljo.237.1616680888799;
        Thu, 25 Mar 2021 07:01:28 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616680888; cv=none;
        d=google.com; s=arc-20160816;
        b=Fmj34QNzNaN2YPLzpjAQvVOpEvqQxmAY0Gx8DrGKpeS+ZgfZeG8PvycWbousUl/uos
         W4FZgpSxEyNbrKH/F72Xg8nO35CX8oZ/e9MbPuRWRwxTlAYR9DIGefEkWvmhhOaJmp2Z
         OCgNFrayxL/3PXEa5LqOxEaNh7E2aas0uB/r5IK31AoyReEpfGSMExQsd3rnj4jyIcRF
         kkIFj8Hb7BFhCoJ6Rw8njvMJEm8GDkWEjSbkTGk1YGFqB4wlgflQtYNocSJCC2rM0C0w
         v4sMIrKS9SuT/Jt2KfpC8qZNxKbJAkL7MDo4cyhzKLNyZLvX8uwOdUhix1DitimgDS9W
         XlUw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=MmF8zMMhSJr2UbOoYiZqtv8YBPrRUBEDP7fTi81KAEk=;
        b=DemKmNCzJaCNvYkU4gzHBCkjmO2bx5eji0eeDFelEGhvNRC3uVAnXMKSJ3mm0GQc8d
         YTbzeJghNzkltSIuOXgly8z/2q8hclMwPSC2jkNzbvztT5IM2CYxl44DtSpm2PpzeuyG
         r6msra2lqbjsRQgB43U3FAHiQ7S+lrv1basSc8iEUtzWj098/iflZrCY7pNrcXTIIeLh
         R4rXRxlCUGVaSm/G5AUcG4SxcWntNxDg13sNQQfgVmCWWuXph0mXpl3VGVufTv42Sa+S
         c3cdgJCHdVk47WHX0wuv+yokiXjUOTniFfWjB8hsexEKSdUuy3tn70/t8zFCS7b3dobf
         gC7g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=ySCJ54IC;
       spf=pass (google.com: domain of linus.walleij@linaro.org designates 2a00:1450:4864:20::12d as permitted sender) smtp.mailfrom=linus.walleij@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com. [2a00:1450:4864:20::12d])
        by gmr-mx.google.com with ESMTPS id v3si250643lfd.4.2021.03.25.07.01.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Mar 2021 07:01:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of linus.walleij@linaro.org designates 2a00:1450:4864:20::12d as permitted sender) client-ip=2a00:1450:4864:20::12d;
Received: by mail-lf1-x12d.google.com with SMTP id o126so2741567lfa.0
        for <clang-built-linux@googlegroups.com>; Thu, 25 Mar 2021 07:01:28 -0700 (PDT)
X-Received: by 2002:a19:4c08:: with SMTP id z8mr4917148lfa.157.1616680886895;
 Thu, 25 Mar 2021 07:01:26 -0700 (PDT)
MIME-Version: 1.0
References: <3f61af0eee9b495e8e8c032902d033c5@AcuMS.aculab.com>
 <20210212195255.1321544-1-jiancai@google.com> <20210217094859.GA3706@willie-the-truck>
In-Reply-To: <20210217094859.GA3706@willie-the-truck>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 25 Mar 2021 15:01:15 +0100
Message-ID: <CACRpkdYHXrMPtkG09x9tscBzp2O=Ps-8m_03J6DcBnYcQuvWGg@mail.gmail.com>
Subject: Re: [PATCH v2] ARM: Implement Clang's SLS mitigation
To: Will Deacon <will@kernel.org>
Cc: Jian Cai <jiancai@google.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	Manoj Gupta <manojgupta@google.com>, Luis Lozano <llozano@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Nathan Chancellor <nathan@kernel.org>, 
	David Laight <David.Laight@aculab.com>, Russell King <linux@armlinux.org.uk>, 
	Catalin Marinas <catalin.marinas@arm.com>, James Morris <jmorris@namei.org>, 
	"Serge E. Hallyn" <serge@hallyn.com>, Arnd Bergmann <arnd@arndb.de>, Masahiro Yamada <masahiroy@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
	Ard Biesheuvel <ardb@kernel.org>, =?UTF-8?Q?Andreas_F=C3=A4rber?= <afaerber@suse.de>, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, linux-security-module@vger.kernel.org, 
	Kristof Beyls <kristof.beyls@arm.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: linus.walleij@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=ySCJ54IC;       spf=pass
 (google.com: domain of linus.walleij@linaro.org designates
 2a00:1450:4864:20::12d as permitted sender) smtp.mailfrom=linus.walleij@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

Hi Will,

I went back and found this feedback which is kind of the heart of the
issues regarding SLS.

On Wed, Feb 17, 2021 at 10:51 AM Will Deacon <will@kernel.org> wrote:

> The big problem I have with this is that it's a compile-time decision.
> For the other spectre crap we have a combination of the "mitigations=off"
> command-line and CPU detection to avoid the cost of the mitigation where
> it is not deemed necessary.

For newcomers, the way this works today can be found in e.g.:
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/arch/arm64/kernel/proton-pack.c
mitigations=off turns off Spectre v2 and v4 mitigations.

AFAICT this is achived with misc parameterization to firmware
and hypervisors and no runtime-patching of any code
at all?

(On ARM32 it has no effect whatsoever, we just turn on all
spectre v2 mitigations by default. No runtime choice.)

The way I understand it is that for SLS the compiler must at least
put in some kind of placeholders, but that it *might* be possible to do
runtime mitigations on top of that.

We need feedback from the compiler people as to what is
possible here.

If it is *not* possible to mitigate at run-time, then I don't know
what is the right thing to do. Certainly not to turn it on by default
as is done today?

> So I think that either we enable this unconditionally, or we don't enable it
> at all (and people can hack their CFLAGS themselves if they want to). It
> would be helpful for one of the Arm folks to chime in, as I'm yet to see any
> evidence that this is actually exploitable.
(...)
> Is it any worse that Spectre-v1,
> where we _don't_ have a compiler mitigation?

There is such a compiler mitigation for Spectre v1, under
the name "Speculative load hardening" the kernel
is not (yet) enabling it.

https://llvm.org/docs/SpeculativeLoadHardening.html
it comes with the intuitive command line switch
-mspeculative-load-hardening

Certainly a separate patch can add speculative load
hardening support on top of this, or before this patch,
if there is desire and/or feels like a more coherent
approach.

As the article says "The performance overhead of this style of
comprehensive mitigation is very high (...) most large applications
seeing a 30% overhead or less."

I suppose it can be enabled while compiling the kernel just
like this patch enables -mharden-sls=all

I don't know if your comment means that if we enable one
of them we should just as well enable both or none as
otherwise there is no real protection, as attackers can
just use the other similar attack vector?

> Finally, do we have to worry about our assembly code?

AFAICT yes, and you seem to have hardened
Aarch64's ERET:s which seemed especially vulnerable
in commit
679db70801da9fda91d26caf13bf5b5ccc74e8e8
"arm64: entry: Place an SB sequence following an ERET instruction"
Link for people without kernel source:
https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/commit/?id=679db70801da9fda91d26caf13bf5b5ccc74e8e8

So it seems the most vulnerable spot was already
fixed by you, thanks! But I bet there are some more
spots.

Yours,
Linus Walleij

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CACRpkdYHXrMPtkG09x9tscBzp2O%3DPs-8m_03J6DcBnYcQuvWGg%40mail.gmail.com.
