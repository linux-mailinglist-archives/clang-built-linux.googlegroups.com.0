Return-Path: <clang-built-linux+bncBDYJPJO25UGBBDES23ZAKGQEKTXKEEA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x437.google.com (mail-pf1-x437.google.com [IPv6:2607:f8b0:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id CC3CC16F098
	for <lists+clang-built-linux@lfdr.de>; Tue, 25 Feb 2020 21:52:29 +0100 (CET)
Received: by mail-pf1-x437.google.com with SMTP id r13sf271648pfr.17
        for <lists+clang-built-linux@lfdr.de>; Tue, 25 Feb 2020 12:52:29 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582663948; cv=pass;
        d=google.com; s=arc-20160816;
        b=WVHPcP+UZwCax5j4BdmokxKSUL8geIHqkqX/2Bt/Csf2s40JLVOcSBIQFbaiSd6FCW
         fI8Kl+dI57T+PAOIp9QqXNLreHraH+CywwpAmkgT9y2zaiEQMdXqu05v5ND2u6uJpSgB
         K/aPYXsp39hrtMr0EeWyOoco8IEOTlHlva2mP1XNK95vLWuzlbZKsihKF5kTQfeKV/OQ
         bhlMRXRXrpdmG6TBcU1HjZHSfuxbHmt3sV+tcBxR9fEGoaps9aTLmJMqXs4IV6/6gdBU
         SGogyg0mkPhTsF9UEXORw14El9V2yLJ2FfyzPfV4Hstsg90MZd9TFOJuYXqRWbYGYCVd
         Wotw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=F5ccFMM/gozz1KKAPxFpPbIQN/9HdPuoFspY/tNcwCU=;
        b=qBaLHJ8lwvcZK7EqKAqTi3VzUxYzw1qxowCz5/Q5FtQRp0jocDAbYgEioOhypySe2T
         3a94jCCxPvbXUYxJHr+QZqzZZnnrlYfMh0KT9dwQgo5L7NzLYSLRlvpedlnwfWcZoTHw
         pafPIgoVZQU992dPOP7Y4NdwYysxx8sMEqpbXJm3vBbpMMbUONW6v5PvwhpuX8YVEJeV
         ZJ55ZdVqmPj0jRliFlscrTpJnew3FDHnsAUbhGiV5i1B5JxvqYhgw2R0Z95T776pmvKn
         qQC6MYJRddzm8pawJ9xyzMKgScdzunD9gldOerWLS6HmdJWjC692JfYGAVhACxbOBOlh
         PNqA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=kJBKheyS;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=F5ccFMM/gozz1KKAPxFpPbIQN/9HdPuoFspY/tNcwCU=;
        b=AC9riT5MtQWPN9T0+q8ykJjLBEvzMwbldPEsK6xvMB6yzoDfMhg6qH+QjXt0nPnSya
         4qUo09zIZ3dloP8iq4xH2z7bQf1EGiTlu/5wvLlHeJRT69urUXYM6gbGD4oVEnn+oSAi
         4gzdnZf4+PYEywtYDI6izeEuzQzG5ZrUMqAePVODFRRmNQ+c++0S6YyOL4lupcbOnZM3
         DAejN1zRMvF+P8YuskKQe91GDh1Pevr98lfxGoLx4oL0AdBUZ38a/yoMgMr5fLvSN2em
         OsFDAtTqXV/Prjzrdnj9y90A7mqsMk3/tPYLPsotwmcR5zvnJK3SEF8rqufCb6B2T4qJ
         oN9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=F5ccFMM/gozz1KKAPxFpPbIQN/9HdPuoFspY/tNcwCU=;
        b=qgFFdvDHs2btpHlrv/e7LJF/iiRzCLgWSxekmlIlkd9mK4NJZH5Il4+JadW9Q72AHf
         Zfj0u07ZJmJM/9LQclvZXohxURhFdCPpdvUA4VB1WouHj0prq/hC1VifaqUUit8sSi+B
         2K4zCPqTF930TpO3m0Vgf6VXX4rf0h6E7tmQ0KfNVyDTTnYn8KHDK5Y36A4CVI/hysxU
         L4jRhTgzDLZTVOMEJHpQ1v3z3IGRj05gR+Rx9dWP0BN0gC/pU0DjZJgZCAg+Dz0d7Wd8
         M6FLQzmAF11jweHQcA/iPNGr7gTtllAT6aqNNOTAKBLRDCLWacs+RlRL22hXyuNKMkWA
         snEw==
X-Gm-Message-State: APjAAAUdND4mgGKv/XjVOFKJ0REJy4kcUQ8IswzZ9zvswBy2/P3upqCT
	f7ijqEnK2AZtppJqTeYyG50=
X-Google-Smtp-Source: APXvYqxVk03OZcmI6znL+VG3mzwpbIOWvDM1CElAlVFx34m4Xk5+CxDZH0x17px+iDuQfHiLnC0Tzw==
X-Received: by 2002:a63:4385:: with SMTP id q127mr348769pga.404.1582663948488;
        Tue, 25 Feb 2020 12:52:28 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:c583:: with SMTP id l3ls123724pjt.2.canary-gmail;
 Tue, 25 Feb 2020 12:52:28 -0800 (PST)
X-Received: by 2002:a17:902:9a4c:: with SMTP id x12mr333446plv.297.1582663948076;
        Tue, 25 Feb 2020 12:52:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582663948; cv=none;
        d=google.com; s=arc-20160816;
        b=l1/BDmUDWQ9RZk5rtxKZOYaC0ySUqeu3RKItwW4BjlKDvvDQfoOu+pYrWVEcFKMhpo
         VQoH1PWfDJiftZDRoBhIiYdAiv7IkWklWjCngX4y7GXMFfnRfIFQa5jUYgJvVVql2tXX
         NvkEhnIzRl9SkPdCuV0WZb/QnlwIGD1DR5iKJetMprUwFnI9DX0GPtDHLFkd/xE4tOXi
         Ibtp2eV93XM7GzUH4s8Wy1sGVbTYMZuBEvDE28mKsQgXhPt4mEPnw/rbxR62vs2fZqdM
         pB/aASo8fTXP7Lu5/XPSfw10DrUODJW5OVXdI8HVSjx/RbHRFApNeeSo1P8NnW5L0M+/
         lc1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=GAoYW3jtAWCjdGaJXCm1P0l2hukH5ekAbYDVhrn3FCI=;
        b=SjLBl7yoybQU75ubbSz8r3NdcNYXXFjkQAtdMjzL1i+x2byc1raiiKXMhoRviefuhw
         gWsehGazi0IpVKihJHVtHuLw/1/XjPwqMWrigH7EZyJme/URwUGvnNIu3yYK1ovIusn7
         4PmLfrZffDN1m12SiRzeiKiFvCVlVuoUtzxo2Stzi4RZq82SDlG8vqPi1V+/Z1dKHGv6
         RnmikXUfzARQ8uwFlfe3XtXLtzfVGhS5qEXHeitCawyqKGSrhcnOe/oqbbuJHXTa0bmA
         M7gm4OVgD6JR60lN6nyugRB4hBAfar82qhTMSR9Nsp254ooUJUOTmZ5vu2wcwXfYDmxs
         eKuA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=kJBKheyS;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com. [2607:f8b0:4864:20::1043])
        by gmr-mx.google.com with ESMTPS id j123si41170pfd.5.2020.02.25.12.52.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Feb 2020 12:52:28 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043 as permitted sender) client-ip=2607:f8b0:4864:20::1043;
Received: by mail-pj1-x1043.google.com with SMTP id gv17so257115pjb.1
        for <clang-built-linux@googlegroups.com>; Tue, 25 Feb 2020 12:52:28 -0800 (PST)
X-Received: by 2002:a17:902:8a88:: with SMTP id p8mr353457plo.179.1582663947479;
 Tue, 25 Feb 2020 12:52:27 -0800 (PST)
MIME-Version: 1.0
References: <20200224174129.2664-1-ndesaulniers@google.com> <CAK7LNASNsOmyqFWYtJHB4UcHAed5C_isWvMJ4MKHu0O=yUy=8w@mail.gmail.com>
In-Reply-To: <CAK7LNASNsOmyqFWYtJHB4UcHAed5C_isWvMJ4MKHu0O=yUy=8w@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 25 Feb 2020 12:52:16 -0800
Message-ID: <CAKwvOd=mPg79CrYnDm8=z0iJpKL0FHm9J5qZF0_A6BFXBv8Dow@mail.gmail.com>
Subject: Re: [PATCH] Documentation/llvm: add documentation on building w/ Clang/LLVM
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Jonathan Corbet <corbet@lwn.net>, Kees Cook <keescook@chromium.org>, 
	Nathan Chancellor <natechancellor@gmail.com>, Michal Marek <michal.lkml@markovi.net>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	"open list:DOCUMENTATION" <linux-doc@vger.kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=kJBKheyS;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::1043
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

On Mon, Feb 24, 2020 at 4:34 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> On Tue, Feb 25, 2020 at 2:41 AM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> >
> > Added to kbuild documentation. Provides more official info on building
> > kernels with Clang and LLVM than our wiki.
> >
> > Suggested-by: Kees Cook <keescook@chromium.org>
> > Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
> > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> > ---
>
>
> Perhaps, is it better to explicitly add it to MAINTAINERS?
>
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -4118,6 +4118,7 @@ W:        https://clangbuiltlinux.github.io/
>  B:     https://github.com/ClangBuiltLinux/linux/issues
>  C:     irc://chat.freenode.net/clangbuiltlinux
>  S:     Supported
> +F:     Documentation/kbuild/llvm.rst
>  K:     \b(?i:clang|llvm)\b

I'm happy to leave it to the maintainers of Documentation/.  Otherwise
we have a file for which there is no MAINTAINER, which seems
ambiguous.

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DmPg79CrYnDm8%3Dz0iJpKL0FHm9J5qZF0_A6BFXBv8Dow%40mail.gmail.com.
