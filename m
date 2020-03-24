Return-Path: <clang-built-linux+bncBDYJPJO25UGBB6MI5HZQKGQED4NV6AY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83c.google.com (mail-qt1-x83c.google.com [IPv6:2607:f8b0:4864:20::83c])
	by mail.lfdr.de (Postfix) with ESMTPS id D90E51917B4
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Mar 2020 18:33:46 +0100 (CET)
Received: by mail-qt1-x83c.google.com with SMTP id g25sf1100459qts.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Mar 2020 10:33:46 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1585071226; cv=pass;
        d=google.com; s=arc-20160816;
        b=NEQ+yIDFw+jjxG55i+3P2uTLKipVmGPdnpRBwgthDT4/k6Kscq4kmU8uY1OjhRZmDB
         PKU3OUOWLXwriBAPbVwecG5mr7Tyu0Wef3Rf/6Pr4u40Y/pL2aNHjCinc+OSkdNcIpj9
         eMOl0ctdgi1vkc7uiCcsg3qZ2bACrjB522CXDKcnPQFL/lDW6UBeTJSARwO1cpQliu8v
         zZOQwm0yGZvAtahRzdIWsA6PA1FU4Ej1eahIzZx0pM7O/JJ1BYSGjyM4nWkm0bIRDzQI
         Y3uaTLrrMUXRqF+y/FuxVd3Yl4SR9sYyZfoyCxkXZdLsnU1XmikurAHK8/v/iLWcJ6XH
         Vj0A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=S39GBvkaqSC/cs+qxfpslxWeHLl97iYonjjxX3sIsYo=;
        b=kAWhRPHA5KMJHyLyDYoeSwezcUeuGAyKyuZf168nRHimYyqZnor0qDZHn/Kt9E6IIi
         CRG5WVdj7muRikhESLCuKWqPsqitJ4e4cLu662USFTH4u77JlCeW6pZq4A0u6la4pFzh
         glKmjdVQWjd9oM35Z5iTngIiGsvBGS+xp7GPVYhTiEQKXdOwjNJsp5rMxUCSySIaF5W3
         cFBceLZ0IUXKDKO/A8NgkkMRaNOWy6v3L7mY5ktdf9dPGXEQ7DD6W2x9xOvUHr1lFztp
         ccSsxmbtYirG2aaQEWhz6XJmwg8wDrUi4BioddDtVyVWfxx/Xfe9/qYp6O0QZ4cUC2OA
         9ufw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=l0XcA5O6;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=S39GBvkaqSC/cs+qxfpslxWeHLl97iYonjjxX3sIsYo=;
        b=bZC1mSqYjE4rlORpypntieWc4lCKBPZeJQxnfCkyJL1EFIh3+Prx51y3upqz82fKZu
         cLBqK3yFbO7BpEaBVmRrH7jJRYYr2P0yyXi/XlRS1tgSAPZzrssjWgr+pj9sOMht/it6
         WJAxb0A3wrQgajUho4JGplJraDbWkp7KtWdkp/Z3QjhBK0hRcVEXKT+Ea6AEpS5VaUZT
         ZK4E7nhjeCV/4lejeQYG/tQ5x25KQfHyLEN9iXbvCCZgoyQo4yalyHI/x+vR02nNX2Y4
         6VvJHDSg9MISnS42M+Qd0IbeD+Vrz+a/wJvQqRwJuysm/AzA18JKMXL9Dm6XqHgOd89c
         poxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=S39GBvkaqSC/cs+qxfpslxWeHLl97iYonjjxX3sIsYo=;
        b=UqL97L+VGwczr/0exWR/GpGbEGu7K/77cxz9qvj5HHYlFacX8xRAhgvoLbVHiBo435
         fbGgoQWJ/unO4Y/lb8gOkP/+chAa62jYrnRxwA6jEH/JweIVBiNdNelEXR5PkO+7ItTs
         82m+0UT0035laM5eY0RlBoAY5FD1DKgLwogPklEE73tN3HheuoGM84pG1L8faafIOKyA
         fPUaZ9BL0EELs+4kVV8VUfss4DaoW7ktUaWWW2ZHF7SDlZVOJ1EcNmfhJdr2nHyeP7Xu
         ujq4nyn4/mxVlGqlQ6yqZ/UdyMUgMmUNvbabqUaEQS33flIefotHeIgC9gVfo7r+uoVV
         +uMg==
X-Gm-Message-State: ANhLgQ0nIgsrgcJt5BxK7dSTgyfg38U3B+m1FW1dB7YMYOxPYLskV14V
	E+1Y32l6Sp29dQN1mKyX92w=
X-Google-Smtp-Source: ADFU+vvnaBDxR3uyLKtR4Jse/FNyIQkSlGVgv6TImTH8Fe3jlZ62IkvupR0F+XAlIJyWMvQGGhdtcQ==
X-Received: by 2002:a37:62d1:: with SMTP id w200mr17068772qkb.399.1585071225794;
        Tue, 24 Mar 2020 10:33:45 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:4b5c:: with SMTP id e28ls7190395qts.10.gmail; Tue, 24
 Mar 2020 10:33:45 -0700 (PDT)
X-Received: by 2002:ac8:2fbb:: with SMTP id l56mr16543037qta.101.1585071225224;
        Tue, 24 Mar 2020 10:33:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585071225; cv=none;
        d=google.com; s=arc-20160816;
        b=kDz+bfWBW0Yh8tmcsBCgcyqUKCvjfEgjzVuZEF34yukyc8V7W1QpwJuM5BxCDi9LYK
         Tz9hS0Y5oQ9jGIYGFyqUhUgbXc5BcN3FfDpBWUSVFIgVH2F5LjNwzUghrkKY3n914sk/
         DMM8yPTEBndG72iwnlxH2PYbx/9OexSBDVTgaXg8EnVqFkbGNx5YY7MzU+zqgDehd8U+
         A7SXJT3zEYk5YLTVHGMY0m5No/whqzTBnmJrv8c+CBFODjqLrz2PJ30tGcBJAPPJNtPB
         Z4/QINpi6tQuAWri/dhpeXrM6LhRhWUdgy69Yavu0ePl43Vw51D7VYIZjm8mOudg9ySU
         T1XA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=l8i/jKNKGTUjyZgUaJ4Q4T57WgO4guK2uBJsY6uqpzo=;
        b=or4v3OTlLZWwvhjrNVcF9WfDfb3yLvfbEdD+OLyzvRdHgXUPP6q/J1gjL3O2rBUVcL
         aJIZ/1dc/K2LOrONa+k/lKfs6Ocfzwk/QzUf/IYHHj/W3nJqQFrnNnueCWoR4DLMjluz
         LvH8Jp8MF3a48poMnA1fWyenOqGguyib4SfGGKo4pKDDldZVj/KL5/dB2cBUsR95P9ra
         njUF+BnX6J+eWpVRahRGllnqjJvzCwXUZT8pVRJzz7OH+C374LRQjVp/vP44QNMdke8O
         6AbSLQCGhspcack/5wJWDyZ2fsZU7lAE+acB+Wf1gvwd/IDKtSl2d5meH2ltc+lba7MC
         Dm7g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=l0XcA5O6;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id d193si841739qke.1.2020.03.24.10.33.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Mar 2020 10:33:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id x7so9378583pgh.5
        for <clang-built-linux@googlegroups.com>; Tue, 24 Mar 2020 10:33:45 -0700 (PDT)
X-Received: by 2002:aa7:87ca:: with SMTP id i10mr30843931pfo.169.1585071224082;
 Tue, 24 Mar 2020 10:33:44 -0700 (PDT)
MIME-Version: 1.0
References: <20200324084821.29944-1-masahiroy@kernel.org> <20200324084821.29944-12-masahiroy@kernel.org>
 <CAKwvOdkj3dDNcbY4hwyManfviPdFoBooJJmFOAKL2YJCZNuhtA@mail.gmail.com> <CAHmME9pV93Zey2=XghxzThTHbZarFrnxwnGatXHyQjevPf7R=g@mail.gmail.com>
In-Reply-To: <CAHmME9pV93Zey2=XghxzThTHbZarFrnxwnGatXHyQjevPf7R=g@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 24 Mar 2020 10:33:32 -0700
Message-ID: <CAKwvOdmw5G+4F9eiZYK3JDHvnraDjGBPT+1hu=62Kc28PDa0Rw@mail.gmail.com>
Subject: Re: [PATCH 11/16] x86: probe assembler capabilities via kconfig
 instead of makefile
To: "Jason A. Donenfeld" <Jason@zx2c4.com>
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
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=l0XcA5O6;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::542
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

On Tue, Mar 24, 2020 at 10:17 AM Jason A. Donenfeld <Jason@zx2c4.com> wrote:
>
> On Tue, Mar 24, 2020 at 11:01 AM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> >
> > Can 11 just be rebased with 8 dropped?
>
> 8 adds comments to one place. 11 moves them to another place, while
> doing other things.
>
> Your desire is to skip the first step? I guess there's no problem with
> this, but I'm curious to learn why.

Before this series, there's no comments. After, the comments are in
arch/x86/Kconfig.assembler. Don't waste reviewers time by having other
patches in the set that move them around for fun. Just add them to the
final destination.

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmw5G%2B4F9eiZYK3JDHvnraDjGBPT%2B1hu%3D62Kc28PDa0Rw%40mail.gmail.com.
