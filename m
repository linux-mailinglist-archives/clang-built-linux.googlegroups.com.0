Return-Path: <clang-built-linux+bncBAABB6MU3H7QKGQEWMQIYCQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73c.google.com (mail-qk1-x73c.google.com [IPv6:2607:f8b0:4864:20::73c])
	by mail.lfdr.de (Postfix) with ESMTPS id 995372EC6F7
	for <lists+clang-built-linux@lfdr.de>; Thu,  7 Jan 2021 00:40:42 +0100 (CET)
Received: by mail-qk1-x73c.google.com with SMTP id a17sf4120607qko.11
        for <lists+clang-built-linux@lfdr.de>; Wed, 06 Jan 2021 15:40:42 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609976441; cv=pass;
        d=google.com; s=arc-20160816;
        b=0JXv1210zUITQcGjRe/DzmWCNSjo8sheks1WpXNPLwHWsQ4I0xx8JXlwLfayQYyL8E
         NEGuLpzVjsZ8fhVmtM9Zge9HGm2OBCccGS/28WhPzojxuywAR+Di6/wpRQ5iIPJDgOWU
         mAup2vZgjC6k1K0Y/qFoFm44vY0vQKJEki1clBZyA68hG5v0BYTiQ6UGhvZs2eWWXTSt
         nxgDPwyTGjwsYBkjAW2J+z2ZP80lSbiIIKMx6b9+5KZDUzK92XGT8eJFfbPEZGOpLrd1
         k1UoTvxCLxD7zWfcUgcLYMwCtpVbnKijrZCGnea3xtCn2IVsOVMjVsOCJQluW9bxPv1f
         qUpA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=rhw4yu8F3t9qDHSa8EXHMZPyIMzLHIH4VmtQmELxugE=;
        b=MrbCQYbpKcpMnvo8AFiHtbiZM26jU84SyVMv19PEEnEuACK82KI0kWlhPpZMZUV1z6
         6R2LioEL+v1hdCMivSQTc/zeBaN5oNsHS0/shgXzTeKjXhNBUDV69/WNrFEdhqzr7D91
         m2mrzZFh9g4q0jJ0ByBX8qxUfWNX9DYqIAVQscw8baLEBtqigSGK5mkMGKx2vCOfbvJD
         ackC434/QrLPsw9KayNmibaFL3TY/lTZOcyqkHXuCKSK/wQwEdqZjmSyji0V3jK/RQpu
         LPgeF7Oa1iDdHTruuE1S+sRhHmiWJ2AKo9AOX2ndJme/Ruw6/80koIIjX2sUh0tOLznk
         x1tg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=UAMnwaB6;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rhw4yu8F3t9qDHSa8EXHMZPyIMzLHIH4VmtQmELxugE=;
        b=Q8f0I3ZcJZe70OrkN/XXNboW3o8nom/GT9vS9mZP4erqWJ+h+jA+a87k/l75KwyXiu
         X3KAaIEWD6abOfRiNpSF5wk59gk9iDPvajqIac2XHth9svHFf8F+7bp09Ju5QCiAgd6M
         +W4Kz/FdbdDxnst0Ac/GkJoL23cX+i0Z9nIhpvRTbC9+36UW2DAaHdR4uX9pl5kPcdJw
         E8bXkGpm7mP4yLNJGYl9k8Om10cHMgirmJdciag+59PWAIiiRCqx8sh2SzqLYmKzbMYe
         Y7FzZPIdHOdLca432P9mTspbBAEbMCwfYPTar6fRT/0MNy1zryBlWCHC/76u12DiZhBH
         dBMw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rhw4yu8F3t9qDHSa8EXHMZPyIMzLHIH4VmtQmELxugE=;
        b=eClpN/6NLD3pZ4HFSHy01p4W7f6J0eKrsyOyNu+NvFkIiBqJ9d7974W5sZZBJc3yaA
         vCSPYsqzs4c2cH8f3DvHfV+5Jqbch1z0V/r3QNVtOGGwMwHRceW+S1CJW1Ke1eDQ6P60
         GtN/iwrzdUDmsQmyO9s0YsgssrdywkxF2YpL5Bm5pjU4zzoviCgK0uM/dgcE+v06iAQ9
         Y9nPGfeaJXfKcmG6LVxq5OxoX9kRq56PJC07wrt2CC+lFyBqiW3AHFhXSP8BruY13Spl
         l5qIqr7Kj1Nk9iSJ90589hQNPf/P4isP6Lvkx94H/c9hntvs0ZmU+1Q1IvwNxvKzbFr7
         7sHQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531HuTGpJQAYApBMHlZueOnUYHbQQJk5w0AYtG3T5SB6CAorOtmm
	VLu1wHD7Ow5gv43/OmeRLPI=
X-Google-Smtp-Source: ABdhPJyVZzj58Vv1EMG4bxWrfJSXJQtlHfvtEdTgVQerQ6/Qfk/exwiFzgIwTnfWjzfOuZ9j7k8gog==
X-Received: by 2002:a37:b442:: with SMTP id d63mr6843392qkf.430.1609976441618;
        Wed, 06 Jan 2021 15:40:41 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6214:20ea:: with SMTP id 10ls1180367qvk.2.gmail; Wed, 06
 Jan 2021 15:40:41 -0800 (PST)
X-Received: by 2002:a05:6214:1485:: with SMTP id bn5mr6483583qvb.17.1609976441252;
        Wed, 06 Jan 2021 15:40:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609976441; cv=none;
        d=google.com; s=arc-20160816;
        b=OoVrwpG1al0GQNg8rIsFZegvQ+j6uQiqXND4md2zjBqbCt5DhE1cCwvZrTEW/kopuO
         V69fEdFflU31bCuP4e4aM0ZgUJlmfk9/DAiXts3FPDeSLPrS3lsxZgNBVSY9OsQrnsv9
         VKBrhUKkaEMZUX+xqapVIUPBnJW2/17IPdcm4aQdoIt5FIBgfpIukvhDiEq/FMR9UGM5
         Znl15paE8eLYw6zmEXFKSp3sPmqGgOoCvTCp8HCf+L5vrv60aVnEWhNCDGPcSTrQkIoa
         +2J4guXJ5J9uOm5ORtMheqi6t2vpgoaWN3dIzy+nzQsxqT/z8mQbQJ9OvsgkVn/qNji6
         lMbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=nsOv/x1xN18a//dBn2Ouyy2QaSImAvu3oD/rp9xzaQU=;
        b=Jp2OkPRZp9rbPGMAScWq62tVfIIwm8UDAFkAriYnwRARGtq22V90A26lnYXpBBOYg3
         c5YIO4dU6o+ton1AFSfTHU5XhyowEgaNat8In80Gz9nTxg6BHyAa8Xhv1OornyW8iPiX
         boRtzRK1DuMrCUvxzyBoRmWvS5NFNMwkl9CZUQcQp0RbVN937cDexRzwOWdjGc0KyoZZ
         2laAYPDUuRPnd0PeJimg/0kNHDtVGKLbe7y53TI3YP4h8cW5ePunuE1oCwrGjXhzkxwX
         cEps74fKVduWGtKxC5Acu6mn5j2i72USk7PcsXOPcq5/TlBW6ktbOlEFsebDIn0KuDLb
         gZSA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=UAMnwaB6;
       spf=pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=arnd@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id l32si430722qta.3.2021.01.06.15.40.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 06 Jan 2021 15:40:41 -0800 (PST)
Received-SPF: pass (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 1800723332
	for <clang-built-linux@googlegroups.com>; Wed,  6 Jan 2021 23:40:40 +0000 (UTC)
Received: by mail-oo1-f49.google.com with SMTP id s19so1175851oos.2
        for <clang-built-linux@googlegroups.com>; Wed, 06 Jan 2021 15:40:40 -0800 (PST)
X-Received: by 2002:a4a:9c01:: with SMTP id y1mr4394668ooj.15.1609976439445;
 Wed, 06 Jan 2021 15:40:39 -0800 (PST)
MIME-Version: 1.0
References: <20201230154749.746641-1-arnd@kernel.org> <202101061350.913E1FDF6@keescook>
 <CAK8P3a1tSaUE2uzb2JbQ1f7LWmkiHQtSxzJHmfa=fqT3fNXOPA@mail.gmail.com> <202101061516.F0EA5F0@keescook>
In-Reply-To: <202101061516.F0EA5F0@keescook>
From: Arnd Bergmann <arnd@kernel.org>
Date: Thu, 7 Jan 2021 00:40:23 +0100
X-Gmail-Original-Message-ID: <CAK8P3a1KUr-zOvxc0hN0yDC7r+HTM_FGrr5GkuSTTNchgQ0PzA@mail.gmail.com>
Message-ID: <CAK8P3a1KUr-zOvxc0hN0yDC7r+HTM_FGrr5GkuSTTNchgQ0PzA@mail.gmail.com>
Subject: Re: [PATCH] ubsan: disable unsigned-integer-overflow sanitizer with clang
To: Kees Cook <keescook@chromium.org>
Cc: Arnd Bergmann <arnd@arndb.de>, Nathan Chancellor <natechancellor@gmail.com>, 
	Nick Desaulniers <ndesaulniers@google.com>, Andrew Morton <akpm@linux-foundation.org>, 
	Marco Elver <elver@google.com>, George Popescu <georgepope@android.com>, 
	Stephen Rothwell <sfr@canb.auug.org.au>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=UAMnwaB6;       spf=pass
 (google.com: domain of arnd@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=arnd@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Thu, Jan 7, 2021 at 12:17 AM Kees Cook <keescook@chromium.org> wrote:
>
> On Wed, Jan 06, 2021 at 11:12:18PM +0100, Arnd Bergmann wrote:
> > On Wed, Jan 6, 2021 at 10:57 PM Kees Cook <keescook@chromium.org> wrote:
> > > On Wed, Dec 30, 2020 at 04:47:35PM +0100, Arnd Bergmann wrote:
> > > > diff --git a/lib/Kconfig.ubsan b/lib/Kconfig.ubsan
> > > > index 8b635fd75fe4..e23873282ba7 100644
> > > > --- a/lib/Kconfig.ubsan
> > > > +++ b/lib/Kconfig.ubsan
> > > > @@ -122,6 +122,8 @@ config UBSAN_SIGNED_OVERFLOW
> > > >
> > > >  config UBSAN_UNSIGNED_OVERFLOW
> > > >       bool "Perform checking for unsigned arithmetic overflow"
> > > > +     # clang hugely expands stack usage with -fsanitize=object-size
> > > > +     depends on !CC_IS_CLANG
> > > >       depends on $(cc-option,-fsanitize=unsigned-integer-overflow)
> > >
> > > Because of Clang implementation issues (see commit c637693b20da), this is
> > > already "default n" (and not supported under GCC at all). IIUC, setting
> > > this to "depends on !COMPILE_TEST" won't work for randconfigs, yes?
> >
> > Ah, I had not realized this is clang specific. Adding the !COMPILE_TEST
> > dependency would hide it for me, which may be good enough for me.
>
> I thought COMPILE_TEST does not get set for randconfig?

It does on my kernel, though I never submitted that patch ;-)

        Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a1KUr-zOvxc0hN0yDC7r%2BHTM_FGrr5GkuSTTNchgQ0PzA%40mail.gmail.com.
