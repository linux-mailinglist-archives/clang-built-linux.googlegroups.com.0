Return-Path: <clang-built-linux+bncBDRZHGH43YJRB5UK2KAAMGQEELBOTSQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x837.google.com (mail-qt1-x837.google.com [IPv6:2607:f8b0:4864:20::837])
	by mail.lfdr.de (Postfix) with ESMTPS id C4056308FB7
	for <lists+clang-built-linux@lfdr.de>; Fri, 29 Jan 2021 23:00:23 +0100 (CET)
Received: by mail-qt1-x837.google.com with SMTP id g14sf7045641qtu.13
        for <lists+clang-built-linux@lfdr.de>; Fri, 29 Jan 2021 14:00:23 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611957622; cv=pass;
        d=google.com; s=arc-20160816;
        b=esXz+Lv+/+fsWrAB2lRVPYleZvGSytoabqatQEkC6jlph6MKQb0etx4Wr+f/ovXKx2
         8nPBJFPjzcpKWmuSC31sqNsPNkJTy6nUofi/Fd4BLXH8E4LOjsZKvankevaHWiG7cx+e
         oMwAYYskbH94ccOuCHDHV9H+KxYBoqSDBXJy2b7gpXeFduAS95UVcYxhowM8nAHWWzal
         HmR3oWcakZKY7m2E1kRgJFB1+q49e1z3JInwzD6KD4KtUoO7lXQaeh1wslbgNnaBZxZK
         FGH6OrzfcVVBS27jqh/ejt9O+YBxPrNkllaGYH2RdlrlgdwPUeaFmErBa54DNoXWN8sh
         PMKw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=lgSyNywS5woB5lC7K3SCP+0nb94q/z1OxY/5lbzKUxc=;
        b=dHBtgPoLPkg+TGwbLeY/6OLqD0YQQO5pZCCb+9K+Mp43bxnWNIMpds80IoulCQFZG4
         8Cc7qr50a1TtimmoznZKuSpYqOrbNswWF+fV2vGzfKf/ACPnbCwdzU/eJWHA5N4l+xDy
         vvc/wUWTWoFbxXT5vpvoAIaqnNBMvxZzfPRJeypeyKglm3noiNCBMWLFGp2U4fQzLaun
         Kcrfmpv+u5AxNudXCzIU0qG/SanwFpTecCn+gMqsUVF1s4l5SgEiYWvJY3wCG2Av9Rw6
         BX8YazqzaujoTXsVLdghNT0OPuUeDk5OgJtvlYLL7iIGLYPJaizJ4gcUXBUZc6dGylsM
         qcPg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Y/sPciJI";
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b2f as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lgSyNywS5woB5lC7K3SCP+0nb94q/z1OxY/5lbzKUxc=;
        b=Sm/K3dWWS64GgbLO/4CLCInCQTtbufuKxL6Oc70Fmi4y2mLK2/OLH4RNsyzK6RO61M
         Giy9XhiIJ2TeLHDlgFBr/7bWwM90HqHIyMIZvjFlhij9cEwlYOE6tg4AfK6cpl+36ec1
         zdFIUNGHJOcw8shKOG/imIQvagS5BK9g8rhdGa+ZKIKrMlqqWf3VESH53MNdyAYm5V0w
         u2xs6m6gbqaL/NtKiN3iUBoWXKAtsURmQ3QdmHeFp65fTYJOHG9g6ZGRvye6wqA7wU8j
         vLFUjDO79a9nhs9cexMoLDs9pbz2aoQsF1lClnpqTznqzKna//r0L7eOI/11HoAUy22B
         jPBg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lgSyNywS5woB5lC7K3SCP+0nb94q/z1OxY/5lbzKUxc=;
        b=OU7oS9TRdZWtkCMqOxuKHZ3+h5eJOcbF1U2HNWSHqejRLqt/eM8GUBtYdUiXyHU8li
         GMqrOE6gqqRtNINTmH94k30cjcjQeGJBd66wQxiU0tEX1cDqMYjjsi+ArFikMbYStYNX
         eD08HTJMi+esXAb4EUJ9PYsTgepto2yrIskWjvoR0OHkpDuaKLMn/ry4ibUTciYpORti
         /recCsxl6Bkh75yxwB6h4Nz/KJhd2I6ycDALbYpYn0qSWDfgg2sAgCfLE8aPOFaIiw5f
         zI2Mg6CXX/Y7xT/+7lRgRqukCVSwzYX3Ukqc/Hc8os/Nv4zJq9oSNoNOWG+HTDqQIKLh
         /QRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lgSyNywS5woB5lC7K3SCP+0nb94q/z1OxY/5lbzKUxc=;
        b=lR9CJXJVGZXjhO3NOUcCvUqWvc2StSI3I1kFpnI6tlhgVdIHc62mNSRrKMzdXJs8M8
         Oh/pchd35rGVg1ngjr/Vr25HVU9KxxeOBWfFNQe0PWZ1HuDgmFGjjmcQZtpy5ALl+nhU
         Sw19zSKVzGiudXxsclIdosiLuefhCtS0U7jW0bky7nn01BNXVhwxjWSrniLwFYnk2FTb
         BEjy5gOC943NbCWZeFyh+nXtuR/r/i6IJiPd82vY9GDsEtaFw4ZG4lUgzmGW+ca+PHUW
         CGULNQCO7JzMHfiBuReH5ApDAHlu5UQunq5FBFJKICvajUeNRqo2yrG91jcgSXZTLVQY
         pOGg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533NEmW3018pUKXm0cAdDMGblnrdRHtXLjyT4NpqjZ46Me+GURBJ
	nIMcVCeYtAUM9ZiOnomZXxU=
X-Google-Smtp-Source: ABdhPJyLSw6MBabMY+wjfDV4YzbPs9vCGRdILHnpm+V0taaQhdtestN9QnyFxfbe3U0z7fH22Slv9Q==
X-Received: by 2002:ac8:4c90:: with SMTP id j16mr3871005qtv.121.1611957622685;
        Fri, 29 Jan 2021 14:00:22 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:1001:: with SMTP id z1ls3955189qti.4.gmail; Fri, 29 Jan
 2021 14:00:22 -0800 (PST)
X-Received: by 2002:ac8:39e6:: with SMTP id v93mr6201534qte.139.1611957622325;
        Fri, 29 Jan 2021 14:00:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611957622; cv=none;
        d=google.com; s=arc-20160816;
        b=MP537+Nk+Gn/3FgWsSVzuHgBDE34Ot/y/MKdqmLZxjOniqVvhyD6h2I0gN8ZvVnwXp
         hJUPSs32Mk04Bel6v867HTkNKfKSsmTtIw/tdLnlv9n4iAyVfhVuscpULalVY1NPIuAN
         VkNpb31YySA7QBC4M4tNTNppM7nOYcPymuf/afptcFpvltnr1b3167LFUPKzr1Oxt3uA
         yHLrM0zbnuaBQ5+hCG9NtthD1IFKtOoCvCK0KVgwhCqyzhMlq6HgCodrPSOfx+zgVP9B
         SfAOqJR14acgJjeH7oXJWRmGh5qhH9YosGe6Vst3wc2NPJTUJkmH3mHy0nwcu8fIu2EW
         c1kw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=GL8tZ7TgV38tEYE0q1sSw8bheGOboWJLuZPv8CpL0Q8=;
        b=HV+63MobSXHiRUtyMRpr7MVfbghqjRzy5PC+agv8+2CqGNH601mmaMphXWa0gs6zA6
         fB9KD0nzw5pl/nMr1t3WUZMHy0YnbuklBO3EDW/lBsC2QxdVsqx/6G/HR9UWuwLDMtRP
         +uHDfa2Jcm4PwRmLKjeXqRLKXgCmtitYq1ASA4MIEaKxpM00iDLk9SAkoLIHFCjhDGKy
         A1NJu7zKKRNmjGqTFo2otNeqUyXk+1ArgD+Z6mzm2WKXQgZuH0ErAo4CgtcM0iY8D1bs
         J7zbJ50vKSw+u9gtDf90pqHkpWetit6/IoR5NNCOGXTXo6bUNmsngbHhfTA/dXgztKE+
         4+rg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Y/sPciJI";
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b2f as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb2f.google.com (mail-yb1-xb2f.google.com. [2607:f8b0:4864:20::b2f])
        by gmr-mx.google.com with ESMTPS id p6si466865qti.1.2021.01.29.14.00.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Jan 2021 14:00:22 -0800 (PST)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b2f as permitted sender) client-ip=2607:f8b0:4864:20::b2f;
Received: by mail-yb1-xb2f.google.com with SMTP id y128so10349810ybf.10
        for <clang-built-linux@googlegroups.com>; Fri, 29 Jan 2021 14:00:22 -0800 (PST)
X-Received: by 2002:a25:af8c:: with SMTP id g12mr9441450ybh.33.1611957622067;
 Fri, 29 Jan 2021 14:00:22 -0800 (PST)
MIME-Version: 1.0
References: <20210129212009.GA2659554@localhost>
In-Reply-To: <20210129212009.GA2659554@localhost>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Fri, 29 Jan 2021 23:00:11 +0100
Message-ID: <CANiq72kaAQ0KBx8mofyT-v0v6Tb+S5xX+_xEB4uPzzjnwafrPA@mail.gmail.com>
Subject: Re: Minimum supported version of LLVM
To: Nathan Chancellor <nathan@kernel.org>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Sedat Dilek <sedat.dilek@gmail.com>, 
	Miguel Ojeda <ojeda@kernel.org>, Lukas Bulwahn <lukas.bulwahn@gmail.com>, 
	Kees Cook <keescook@chromium.org>, Marco Elver <elver@google.com>, 
	Dmitry Vyukov <dvyukov@google.com>, Arvind Sankar <nivedita@alum.mit.edu>, 
	Ilie Halip <ilie.halip@gmail.com>, kernelci@groups.io, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b="Y/sPciJI";       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2607:f8b0:4864:20::b2f as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Fri, Jan 29, 2021 at 10:20 PM Nathan Chancellor <nathan@kernel.org> wrote:
>
> Questions to address:
>
> I believe the first place to start is answering the question is there a
> minimum supported version of LLVM? Is it LLVM as a whole or one
> particular utility (such as ld.lld)?

Would this be the minimum version for LLVM=1 (in supported
architectures)? If yes, then yes (eventually). In other words, I think
there should be one minimum version for LLVM=1 eventually, even if for
the moment we only have one for CC=clang.

> If there is a minimum supported version of LLVM or ld.lld, is it the
> same as clang?

I would try to aim for that, yes. I think having it undefined for the
moment is fine, but when LLVM=1 works for all architectures that we
care for, then the minimum should be the same for both CC=clang and
LLVM=1 to simplify things and avoid regressing.

> If there is not a minimum supported version of LLVM, do we insert
> workarounds for issues that we know are fixed with newer versions of
> LLVM or do we just tell people to upgrade the version of LLVM they are
> using?

Until the minimum is defined, I'd simply tell them to use the latest
one for LLVM=1.

> If we decide that it is worth defining a minimum supported version of
> LLVM, I would vote that it be LLVM 11.0.0. If we decide that that
> version should stay in sync with the supported clang version, then I
> would vote that we update that for Linux 5.12. Taking a look across
> various distributions:

Well, this depends on how we look at it. Ideally, we want to reach a
point where we don't bump LLVM/Clang minimum versions unless there is
a reason for it, i.e. the same policy like we do so for GCC. That is
why I think it wouldn't hurt to wait to define a minimum version for
LLVM=1 until we are reasonably sure we can keep it stable for a while.

Having said that, bumping versions for LLVM is not as big of a deal as
for GCC so far, since the support is recent and distributions are not
building the kernel with it just yet (AFAIK, at least).

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72kaAQ0KBx8mofyT-v0v6Tb%2BS5xX%2B_xEB4uPzzjnwafrPA%40mail.gmail.com.
