Return-Path: <clang-built-linux+bncBCLI747UVAFRBKHKY72QKGQE2NKVZZQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3b.google.com (mail-qv1-xf3b.google.com [IPv6:2607:f8b0:4864:20::f3b])
	by mail.lfdr.de (Postfix) with ESMTPS id EA6C21C646B
	for <lists+clang-built-linux@lfdr.de>; Wed,  6 May 2020 01:22:17 +0200 (CEST)
Received: by mail-qv1-xf3b.google.com with SMTP id w9sf203286qvs.22
        for <lists+clang-built-linux@lfdr.de>; Tue, 05 May 2020 16:22:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588720937; cv=pass;
        d=google.com; s=arc-20160816;
        b=altNP7xByaotDJIvkSupUmLwKGtOKvDskVefXyOkZwOZR+EIK8gbeNhxCAbL/sj8pN
         xPE8HjiP/5FxHxla/lHKngblrnN0/DopsLnC2gaoLo4K7MuVc3O9KYK0LqrKaZ/yc5Pk
         AioKolY0D8v2+ArwgB8ZYggSF8vA8RoP3Bobn8DQTsnY+uRwSEhlPGTR/KxBpYgwCitY
         PwYt2edgy5509J014m31ef6yS8AV8RsVi+B8W5fI5bubMbLFMfI4cLverEo//da5eB+U
         LB9w0Fi8c2OVbjxpQjNx+XtotpjORluPSWApFa372JujqC2/wVrJ4sqfLOv4zmBZc8Sh
         559w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=8tux5f607/C7SBq+elLz4VKFzTHHNu0P/o+COo/fK+g=;
        b=do8SSVIM9zHf3esYTPyUx1qebcnfQp7d1Pxg6iq/jOcJDS3+rKutgCXfg+/diieJue
         JECK/Rwq/XZs/DiiyL16IbNBCrICpXnzOYtqfJ23uBCfC8iah4jhOmCRqr6hcgiz/x9m
         no3RNhu5rczD9yU9hv5kisUfIl4cCgVnhxQW0AGhJnU0UXLdRBvjxyln9lY0Ei/5dcOM
         ITjeQz2vpl7BAAi/UYdLBQtQ88kMVyKcyHw03+rAMONIb7g0D1UoCY+0CVc1cR05SsV9
         U2FmJtfO+HmmtXc3r2kteM+mgZGtps+7ewyRIBE+t2tAh7ecmiUWP7cXL1FZo+RITdEt
         Ogsg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@zx2c4.com header.s=mail header.b=DCEwEWgC;
       spf=pass (google.com: domain of jason@zx2c4.com designates 192.95.5.64 as permitted sender) smtp.mailfrom=Jason@zx2c4.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=zx2c4.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8tux5f607/C7SBq+elLz4VKFzTHHNu0P/o+COo/fK+g=;
        b=k1F/mcal7xwxWAHYC1mdejZQPkyO57GMcGnkualkAfkC/jmvQIs5AKfMQCicvhlQqB
         pKitgZoYniYhvQRbBc96rbGC40zGsDj9Ql4yalTagMgNUexRgUkeD40qwSNeo/wzGJsT
         PQJLz0BvBS18ZxxfBhzGTaJwXYdg9Hw2QjBu29kvPHqCFJ2r0FUFpRhdRz6uNjQrIZLa
         ZrfkRrfU4OIurgx67ELUAJeW3OlFsnrR/zUzK7YiNEpyqTSrplKozYHf7NXyqGeFI2tH
         ksyHKsn4Rt74YTZcAhRGGNPTm7zhPkwDMuRUl7Sk3YBONbyQIg2ulJ1tE++vt2jvnZoo
         NJdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8tux5f607/C7SBq+elLz4VKFzTHHNu0P/o+COo/fK+g=;
        b=OF/l6oJ+fHvDMiOt+dmuA+JdZ19Uwh5ql3eIQ6PwsEcmxD9zf/LEFbTI5w/2zh/OA+
         by0UT9byQ2sEhPfUGT28O45HIwGbQAY3cWW3dokoSLEn7whsU+ksDP+h7+BzYe6VQvfo
         WKiGugXKoX/z9lbJx2jB1o2Lnb3xwDwJu3wpdXgStF3+kTcnKDU7v/srxUgjfUd34/lO
         wPDwki+zC4WgQNlszkgcc2PioUt/coWm7iDcvLV/lu5BL9edpWkzJp7oKJ9jrkuRHRil
         dDEaQDO6JDm76CyfgXUpPsia7a4GFdjR6cu9QnjdnIfnM9EgXaN7YoashLOy02oQRLLc
         1qqw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuZR9nOFJUe2vRH5pQ2SkzY+3rqBLNCh1mddF/otucr8PbPHQdjZ
	KjFIwyNSjaM8aHuHDyoraYY=
X-Google-Smtp-Source: APiQypKk1no3UOi+FI+WMbA52bT2GHBPELYY/VTzXMB5jhpUXJqL1mo5euz65RA38mYgLwwtV0EYKQ==
X-Received: by 2002:ac8:8a:: with SMTP id c10mr5347363qtg.369.1588720936238;
        Tue, 05 May 2020 16:22:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:3fd5:: with SMTP id w21ls174495qth.7.gmail; Tue, 05 May
 2020 16:22:15 -0700 (PDT)
X-Received: by 2002:ac8:7ca2:: with SMTP id z2mr5471143qtv.122.1588720935906;
        Tue, 05 May 2020 16:22:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588720935; cv=none;
        d=google.com; s=arc-20160816;
        b=TDhAAJsJL8ZxVh1eQ3DY8I2dPnVCLdeZFmzujycJuddyueJd4hJAfr/OvBIrVdnYLP
         Z1Wg6QDXEO38181ZZcOYe+fCDecOiN4ijn6WIoNxtabhsOMGSd89FqnRrVo6pQSi7z21
         I+uvF9VDTWfl2GIEFfZSS849dHpaaklZrA8zEWSyJzlyE4/KEwiB4W8wvT8mLw7eG064
         hg7pTLb66fHYnExYDuLsiXz17IcZKLqWcduwNKScZVok+aY8qym2zj2i+w8QNmPeaF9I
         eGe8q9nOflIO9Ylplw4g463GWzk22gY0snuPwWwHAc+tYW5dlAH/x+mfdSUBfnr/PbfW
         i04g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=tYC2fGLe4OXL1WUNfwThK3dnzSN2aAzxRAexg6Yah6Q=;
        b=ILBQU03G6wKnfAfaF1hTo1mkoeziZf23OwkPr8cpfCpEC1T9UlFJKWYXMcEYhHBvw/
         oAPtao09v5cFsrklLidzHTXDYqwDgxsTA1FqyzjDBcddyMISa8fFZSyxt2h98BHqxYWm
         V+Hp3HqFTr9KEvL8IJJxOgdoKsZZ+Aba1MC2BSt1xYF4y0gCmJBZSZZJibzcRXHBeNIM
         LZlJuc8eF6sIIqg51tYYOezjrscSSOH07QoYNxzi7+uUCOpe7ngMK3eHR4LptKlIk39h
         zwmu9Anzbqn/ZJfoIgC/EtG5j+u2ncWE5AoUV/9AlWVh/8FXyw0hAeIAAy9xeeJn6RJJ
         RqYg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@zx2c4.com header.s=mail header.b=DCEwEWgC;
       spf=pass (google.com: domain of jason@zx2c4.com designates 192.95.5.64 as permitted sender) smtp.mailfrom=Jason@zx2c4.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=zx2c4.com
Received: from mail.zx2c4.com (mail.zx2c4.com. [192.95.5.64])
        by gmr-mx.google.com with ESMTPS id t5si19954qkb.4.2020.05.05.16.22.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 May 2020 16:22:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of jason@zx2c4.com designates 192.95.5.64 as permitted sender) client-ip=192.95.5.64;
Received: by mail.zx2c4.com (ZX2C4 Mail Server) with ESMTP id a6e801c5
	for <clang-built-linux@googlegroups.com>;
	Tue, 5 May 2020 23:09:38 +0000 (UTC)
Received: by mail.zx2c4.com (ZX2C4 Mail Server) with ESMTPSA id ba9eda02 (TLSv1.3:TLS_AES_256_GCM_SHA384:256:NO)
	for <clang-built-linux@googlegroups.com>;
	Tue, 5 May 2020 23:09:37 +0000 (UTC)
Received: by mail-il1-f179.google.com with SMTP id c18so9210ile.5
        for <clang-built-linux@googlegroups.com>; Tue, 05 May 2020 16:22:12 -0700 (PDT)
X-Received: by 2002:a92:5c82:: with SMTP id d2mr6382691ilg.231.1588720932156;
 Tue, 05 May 2020 16:22:12 -0700 (PDT)
MIME-Version: 1.0
References: <CAHmME9oMcfY4nwkknwN9c4rB-O7xD4GCAOFPoZCbdnq=034=Vw@mail.gmail.com>
 <20200505215503.691205-1-Jason@zx2c4.com> <CAKwvOdk32cDowvrqRPKDRpf2ZiXh=jVnBTmhM-NWD=Ownq9v3w@mail.gmail.com>
 <20200505222540.GA230458@ubuntu-s3-xlarge-x86> <CAHmME9qs0iavoBqd_z_7Xibyz7oxY+FRt+sHyy+sBa1wQc66ww@mail.gmail.com>
 <202005051617.F9B32B5526@keescook>
In-Reply-To: <202005051617.F9B32B5526@keescook>
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
Date: Tue, 5 May 2020 17:22:01 -0600
X-Gmail-Original-Message-ID: <CAHmME9q3zFe4e1xnpptJ27zywGqngZK2K7LCVzDSoG__ht=fNA@mail.gmail.com>
Message-ID: <CAHmME9q3zFe4e1xnpptJ27zywGqngZK2K7LCVzDSoG__ht=fNA@mail.gmail.com>
Subject: Re: [PATCH] Kbuild: disable FORTIFY_SOURCE on clang-10
To: Kees Cook <keescook@chromium.org>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	"open list:HARDWARE RANDOM NUMBER GENERATOR CORE" <linux-crypto@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Arnd Bergmann <arnd@arndb.de>, 
	George Burgess <gbiv@google.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jason@zx2c4.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@zx2c4.com header.s=mail header.b=DCEwEWgC;       spf=pass
 (google.com: domain of jason@zx2c4.com designates 192.95.5.64 as permitted
 sender) smtp.mailfrom=Jason@zx2c4.com;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=zx2c4.com
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

On Tue, May 5, 2020 at 5:19 PM Kees Cook <keescook@chromium.org> wrote:
>
> On Tue, May 05, 2020 at 04:37:38PM -0600, Jason A. Donenfeld wrote:
> > On Tue, May 5, 2020 at 4:25 PM Nathan Chancellor
> > <natechancellor@gmail.com> wrote:
> > > I believe these issues are one in the same. I did a reverse bisect with
> > > Arnd's test case and converged on George's first patch:
> > >
> > > https://github.com/llvm/llvm-project/commit/2dd17ff08165e6118e70f00e22b2c36d2d4e0a9a
> > >
> > > I think that in lieu of this patch, we should have that patch and its
> > > follow-up fix merged into 10.0.1.
> >
> > If this is fixed in 10.0.1, do we even need to patch the kernel at
> > all? Or can we just leave it be, considering most organizations using
> > clang know what they're getting into? I'd personally prefer the
> > latter, so that we don't clutter things.
>
> I agree: I'd rather this was fixed in 10.0.1 (but if we do want a
> kernel-side work-around for 10.0.0, I would suggest doing the version
> check in the Kconfig for FORTIFY_SOURCE instead of in the Makefile,
> as that's where these things are supposed to live these days).

Indeed this belongs in the Makefile. I can send a patch adjusting
that, if you want, but I think I'd rather do nothing and have a fix be
rolled out in 10.0.1. Clang users should know what to expect in that
regard.

> (Though as was mentioned, it's likely that FORTIFY_SOURCE isn't working
> _at all_ under Clang, so I may still send a patch to depend on !clang
> just to avoid surprises until it's fixed, but I haven't had time to
> chase down a solution yet.)

That might be the most coherent thing to do, at least so that people
don't get some false sense of mitigation.

Jason

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHmME9q3zFe4e1xnpptJ27zywGqngZK2K7LCVzDSoG__ht%3DfNA%40mail.gmail.com.
