Return-Path: <clang-built-linux+bncBCLI747UVAFRBHUB5HZQKGQEFMINM3A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x237.google.com (mail-oi1-x237.google.com [IPv6:2607:f8b0:4864:20::237])
	by mail.lfdr.de (Postfix) with ESMTPS id 50E68191751
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Mar 2020 18:17:19 +0100 (CET)
Received: by mail-oi1-x237.google.com with SMTP id s126sf13671908oih.6
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Mar 2020 10:17:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585070238; cv=pass;
        d=google.com; s=arc-20160816;
        b=fSi7rsstLUDbFutEb+OKFyO9S2oubIMSYyxIgpXzslbBOxkNYLbRJyhx2+7F228DcW
         nCCeCzKz+jR16xr91LczTX/DKiL5J1rd/KfHZ2WcN1dOcacn1Ucsp3jWOCqq7ZMi8NB1
         LnvzqsKN+CHhq0lvR/Nqbz6p5mRmOwSLOcbFDtW/SX1DqmgW/MJaXmAL4tHGyDvSfdln
         CBCTuVk8Sb1zRhBKerWHmwFiubk82U2t/4u0tyehMpXOIrJ0dAex2Dw02I+xdS2TXqVs
         GSGTZbtbMD2qj54bljMrJA9SJGZ1P5Pem78xTW5uAu7QqRlS6Gt12MRIWMPI13HbfCkB
         HV7g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=3AwUDX0HoyOvcDjgfipZUSz7GMWjt/un347Y0xShT/0=;
        b=Zcuf/DMEgjgIRmoefkM+fiPkcb1yv5tZBYLUi7VVuwkGibX3VaEfRBD2LQa5MOK4yZ
         lCH+/gfZWRnzLDyi6j+JEiIkDSe/NJXjRpkT4a6xfBdXb6DaRC0hbulPIkcCAU6n0COV
         8r6LTKqt3QHuGoJ5u3JuMcih57w3ZQoGsztWZJ5f/wbOgkHPSaLQ1IX0cSoLIOGIwECg
         VBi57UfdjxO5a0KS0bFnjchqbCilLNJMYVddcXmh2ZAJntqk6JOBm1J2iu+fL471BLaM
         HGQBZ8hegB90Yx4EbEBNKsRKGzHk2vZUtfyJSo6LWJPuIJQaeq88dvolzzK2FzTt7Xws
         74jQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@zx2c4.com header.s=mail header.b=0sDFVo8R;
       spf=pass (google.com: domain of jason@zx2c4.com designates 192.95.5.64 as permitted sender) smtp.mailfrom=Jason@zx2c4.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=zx2c4.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3AwUDX0HoyOvcDjgfipZUSz7GMWjt/un347Y0xShT/0=;
        b=I91W7h/X7xwqsQtQC6jUGnpKupbsO98sZQ1kScvhPIIJMKmwdTE2sAlldAayjvOzpa
         fSHWJPYWrIw60+jXVJy6bQ2tcyRoZQuaXSueVkbSPjkoOKV6AuP/EcA5ui4CkLpX92LF
         kZc5GXfCDjPZFzcA0CAwX5E4BoyG+JoI8pTz7JP2S4y1SwemAen93jGUVMLCmCgMUdld
         vW+UbdlIy+D7JwcEPYFXgsjajhO9M4bxNJQPTsw7zXY0uVxlJM8HvCWnm2TP4YcAWkbW
         YEm0rPOqbXCWeWrrZ5lJ0z3XsnsnZXpn/1BRtxDMVQEFvj/Wc8GIkwQf6oYgwN5y17jy
         prtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3AwUDX0HoyOvcDjgfipZUSz7GMWjt/un347Y0xShT/0=;
        b=Yq5lnCQUk0lWBsYWvsK953jsY7xrh6l7olo1Z5NRoMymr7XtKHF+Tw96qae0BskzfG
         w96cuhGmFesGePQPzOn4Bpjtz/JtpJoTtHbHCWW8tY5aWHFgt05kfhNFAPa3UuU6q4UU
         3JcgBy3xWJLcPaccCWkKK66tTfReQcRpE9ZlTZAuEklNmWdQWbNvRkFRNEQvgEWEz3sA
         Qq+X8TLCMP3GpdSZ5q3I9anzqqIc1jC47PPBwQJsT0w17OqdW3ltu1nZi1KcD1NV/sjD
         1spTgKfpaVuWuFq8P2DLt5k1E3qpU4Vh6OvwcWSHA6EGOwPtUGe0nvwC6ikwWUN1v6MR
         s3rg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ3eW5DNBDRFsMUnYmlQVH3y/vuocRmolmB3YrN4Gka7FW824ChL
	aYMstPFbN0pXKdS4U3UpJ28=
X-Google-Smtp-Source: ADFU+vt8kqPU97najrMnV15C3KlDkijGbQX9Uf8YtMdBddGUiiGzzGUN+YoTzh5mKsAeDawqIPJALA==
X-Received: by 2002:a05:6808:43:: with SMTP id v3mr4297230oic.59.1585070238294;
        Tue, 24 Mar 2020 10:17:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:508d:: with SMTP id e135ls2078931oib.5.gmail; Tue, 24
 Mar 2020 10:17:18 -0700 (PDT)
X-Received: by 2002:aca:b245:: with SMTP id b66mr4233693oif.170.1585070237958;
        Tue, 24 Mar 2020 10:17:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585070237; cv=none;
        d=google.com; s=arc-20160816;
        b=qPzhlbq+GRdhX+rihBWWk0SvHyL8jptzBjFMgsE4C8IA5QWQUp76DtEg2RbK9bNyza
         1DuACsbhl5DTtw819H+1GF1stl6pmFCC1KhlLBim680tup+V5BGdwvB5DDxDE+urgbe0
         rlq9GfRNF/QJVMz+l6YwW6s7Etqn3nxGidLUPRuPLt217tvcNAfDd5iR1tEtKlCmgMb9
         uUziM/pwvwxYufZ1DFku+KeKIE7mpQ8YXJFsGksUeD9t3dpmPENG9BCYfkTUEVpFTaDk
         2tDYWLQqMDvQTc2DGhz1DDclcGLLdY42Fuey7VuO94qNAEL2B7tDbBbDGaboH4EMe40L
         uOvQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=m0IJCKzGmGcIge73X6NrKDXlTu7AFlIEwQZcO0OFaMI=;
        b=Wz4T+A9Rtpe67wIgbQry0QbGif2VebN3OsASWiXoXAESl+bmjKVP6W+Ya7p7cr6KRz
         LDIaNQkZ6Df9Vja8W2Jh9VJ2VYoxu3taUtZx8huxKUgezIU4IKrRmeLTjA5J1aswXkrf
         2SjUNRb9qK6iL+FRgv22EUBC9KSsCuWGy2SCG6qFWceCYTOVHYhqLsjt03AAIeiK9OwL
         tYUvWX3p+Ub2xO7MWbvHgMnTxzjCE3j2DC6n7VpGdztDAOgP1lENoIW/4v+oFOLbon7i
         Fp6WdrDinFjhyvRWyokLFPAuwyo6uIecXq/P2fBiqkNRB45TyvXP6imHXmwbQMgrCkFj
         opiw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@zx2c4.com header.s=mail header.b=0sDFVo8R;
       spf=pass (google.com: domain of jason@zx2c4.com designates 192.95.5.64 as permitted sender) smtp.mailfrom=Jason@zx2c4.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=zx2c4.com
Received: from frisell.zx2c4.com (frisell.zx2c4.com. [192.95.5.64])
        by gmr-mx.google.com with ESMTPS id o10si1118032oic.1.2020.03.24.10.17.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 24 Mar 2020 10:17:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of jason@zx2c4.com designates 192.95.5.64 as permitted sender) client-ip=192.95.5.64;
Received: by frisell.zx2c4.com (ZX2C4 Mail Server) with ESMTP id 3b696741
	for <clang-built-linux@googlegroups.com>;
	Tue, 24 Mar 2020 17:10:07 +0000 (UTC)
Received: by frisell.zx2c4.com (ZX2C4 Mail Server) with ESMTPSA id 4877e633 (TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256:NO)
	for <clang-built-linux@googlegroups.com>;
	Tue, 24 Mar 2020 17:10:05 +0000 (UTC)
Received: by mail-il1-f173.google.com with SMTP id f16so8087057ilj.9
        for <clang-built-linux@googlegroups.com>; Tue, 24 Mar 2020 10:17:14 -0700 (PDT)
X-Received: by 2002:a92:cd4e:: with SMTP id v14mr28304232ilq.231.1585070233190;
 Tue, 24 Mar 2020 10:17:13 -0700 (PDT)
MIME-Version: 1.0
References: <20200324084821.29944-1-masahiroy@kernel.org> <20200324084821.29944-12-masahiroy@kernel.org>
 <CAKwvOdkj3dDNcbY4hwyManfviPdFoBooJJmFOAKL2YJCZNuhtA@mail.gmail.com>
In-Reply-To: <CAKwvOdkj3dDNcbY4hwyManfviPdFoBooJJmFOAKL2YJCZNuhtA@mail.gmail.com>
From: "Jason A. Donenfeld" <Jason@zx2c4.com>
Date: Tue, 24 Mar 2020 11:17:02 -0600
X-Gmail-Original-Message-ID: <CAHmME9pV93Zey2=XghxzThTHbZarFrnxwnGatXHyQjevPf7R=g@mail.gmail.com>
Message-ID: <CAHmME9pV93Zey2=XghxzThTHbZarFrnxwnGatXHyQjevPf7R=g@mail.gmail.com>
Subject: Re: [PATCH 11/16] x86: probe assembler capabilities via kconfig
 instead of makefile
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	"David S . Miller" <davem@davemloft.net>, Linus Torvalds <torvalds@linux-foundation.org>, 
	Kees Cook <keescook@chromium.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Herbert Xu <herbert@gondor.apana.org.au>, 
	"open list:HARDWARE RANDOM NUMBER GENERATOR CORE" <linux-crypto@vger.kernel.org>, Ingo Molnar <mingo@redhat.com>, 
	Thomas Gleixner <tglx@linutronix.de>, Borislav Petkov <bp@alien8.de>, Peter Zijlstra <peterz@infradead.org>, 
	"H . Peter Anvin" <hpa@zytor.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: jason@zx2c4.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@zx2c4.com header.s=mail header.b=0sDFVo8R;       spf=pass
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

On Tue, Mar 24, 2020 at 11:01 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> Can 11 just be rebased with 8 dropped?

8 adds comments to one place. 11 moves them to another place, while
doing other things.

Your desire is to skip the first step? I guess there's no problem with
this, but I'm curious to learn why.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHmME9pV93Zey2%3DXghxzThTHbZarFrnxwnGatXHyQjevPf7R%3Dg%40mail.gmail.com.
