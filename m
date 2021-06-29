Return-Path: <clang-built-linux+bncBC3ZPIWN3EFBBMUU5KDAMGQEY2L435A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13f.google.com (mail-lf1-x13f.google.com [IPv6:2a00:1450:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id 441CB3B6CA3
	for <lists+clang-built-linux@lfdr.de>; Tue, 29 Jun 2021 04:49:23 +0200 (CEST)
Received: by mail-lf1-x13f.google.com with SMTP id b7-20020a0565120b87b029031d313750c3sf4667776lfv.18
        for <lists+clang-built-linux@lfdr.de>; Mon, 28 Jun 2021 19:49:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624934962; cv=pass;
        d=google.com; s=arc-20160816;
        b=l/dQ5N578AbBQMcOWWNC5IgIDzrC4JAKPvZ0WDkwQ/gHKyLSZUecNL0aXC3Jh57Eb/
         yjTcNC/kTB8lCiTI5jBxOUztMYNkjAmxhLCHfe3RizLQSZfdtLVITOU0wK7WtWU8ynuR
         1eCH1NeMU4RD0YxhSKqs13zXHji2OeqR3TX3Llrhxrv9UfQbOYp1YKoTVC89b5KhKSDh
         K+kXuPbIVweEPjd3PvjJmM4xmxyve8CwTWQ6KUwBt3LYeXBlz1JIwe7XTAN9EDtzua+T
         4tjeR9nJAK4ChoTFAtONmOPsgepaVWCQC/eureB4kQ8vyn1j4N6UAQV7xhReoHcAJtVs
         WV7Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=qpxLZ7XMuQ3IeL2JW43WWdu4E7WblrNcLFbh40Ww03c=;
        b=foJ81EAPtnbbQmg6rzZI05b4im+8qfJDxovQsNN1o+97yy1QqHEWWX4UnnouQpZ9hm
         cN/a/kB8la0nCJH7+81i8r8z6n0RPHctvomgopJNYjZDVFb1Cs217hY9e8MKwwZ5pqtS
         nEoR99lSi/7CPw1hhP629m7gSP8jH0vg5oJvDNPmHR4rn7dZgy8cVlfNxUVWYK9KveSK
         ug3va7CfrrNK+sy01sPP2nt4cYdRmTw/HoRZNrP1t6ZMDFz7bpfTlEKTSx/jhmH+COoI
         DXxfNCDgcgSjWjuh/lRH4f2YiZyVNKN3sqAVq2XqeyzaibSH76byrlCSOh1b9xylrjIR
         LXKg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b=Lpyx5Bj2;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::134 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qpxLZ7XMuQ3IeL2JW43WWdu4E7WblrNcLFbh40Ww03c=;
        b=jULTUmkhpiGIJsobdbKFdfFAUh6ShFwlcjYyRX1dL7UUpdHgLHptJhGLvFOpY2/t8q
         nu7OFGyp6UP6/E8mfs9+/+J1Z1fks1sica+JIDI8vl+fVbcwK74SNomiY99imV/SrlCk
         yiGprn8j0KbmmHNnJ31ltaBCPjlaZgxuIXEPoGepvWSRJqPw+lYxEbBHtFeOaA7wd6eP
         tQIlBhfqYxp9eNb7XsYPi5DvU066u6rYhyP+T58THcdRrKZWvIHMLXGXprxx9iAxwiuz
         O0Qv8mdCUKQJVSAFPGuAFN8Efolga3LYfr62Cig48MgaN24Cnx5HUbVfAN7T0vrTJ8OI
         Z5Mg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qpxLZ7XMuQ3IeL2JW43WWdu4E7WblrNcLFbh40Ww03c=;
        b=I/+no2vWr9D0o6S8RV2NONAQFDQ6u5IVeuQANPaE+vtEY+rgGK8I+KDLMdMqv8VcE9
         u0ZXZ/Bj8v7+IWdqF363xSRrjgxidaJ43yTCSOAC5w26aVv90xINYSgO4IqpCozwhgI4
         mT4rXRl26CsemZlDRFznewtZ+VaV1NN1f5dnXOaOOo6VwGhaLAP86nQcOhdQFQhxpG/w
         /tvUGIIlW+gLqik3H+YdfvpRI7dNv2HY41Yuxq0NVgGaJAbdaEoCnUrzYwZjNPwEulSl
         0m4rTmNgezyCbf3soKmdhIGso2pZ+K6g4aMJwiN+eOujmpP4fsT3bt1S0dQyOn7S6+jZ
         /svg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530JxEnUNYYANQf5QGflCyES4BlAwJX0NscHM4M9alv/2XxVFGuO
	T1kDWmkYbuG/D2eA6A4qeSA=
X-Google-Smtp-Source: ABdhPJwzhD4CZXUGzXi1wGEGHlGmkwWftdhbdBw8HQhkBGyciE7uUgs5OxMM4IdzLjkr02HB3mjYNQ==
X-Received: by 2002:a2e:bc13:: with SMTP id b19mr2017413ljf.480.1624934962766;
        Mon, 28 Jun 2021 19:49:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:1025:: with SMTP id w5ls3325593ljm.0.gmail; Mon, 28
 Jun 2021 19:49:21 -0700 (PDT)
X-Received: by 2002:a2e:8598:: with SMTP id b24mr2001049lji.389.1624934961562;
        Mon, 28 Jun 2021 19:49:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624934961; cv=none;
        d=google.com; s=arc-20160816;
        b=W6rSay366KspVx0HaD5owkqbT0NCMV4c496svgiEwsI+sDdI/rjHjRQN3/y1Vf8cUv
         np79K3S9H0cBY6m+Lv1iBpja9Ge+GCwzBG12lD6H/32cjyC7863SKIZP/zifTH2ap6An
         c4tonS1TOvhDRKy1iNN4YMVGqocRAqMp+0hxPtox19Qdv/Y0+DVjIMyqhAyXlj2yeLy6
         VqvZzPZi/1jiCSXhiXVosC+OFZvbyz8WBJdtQxg3AibOxvyyOexKGRQvROIid6Akbxps
         711DLWfoTXgUEWv8qTWzK49c25Gbtf7ArJ9U0WV5uYIbiXP1IXcXb+1z5ICLTxvFIfg+
         Udkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=UEYEWsL6AYbcFkTNzTHp7v10JIwWkeD8uKj1umSmXwA=;
        b=I91zaecM1PlcCG7fgk6RLK6SxeItO+f4P2gvwahowxUZmGktJ94V20BdbuSzQYEMJy
         elgoRy3C+ANYDo9svF/PS9cpf6j5mp6GfCCpm6hOPmzPd4k1sTpa9S6OBZ9YIh8HEZxY
         jfqzzjIOOOU3ksvIrd0H0HE2HVrXp4CGiFX6JgYZD/QgfeFA75UcLARU4yo9oPNjhnbl
         u+nYOcMR4p2Cxfy7X816lARUlCh1khG04Vl7YvNYyIAQMyfr6PW+Sy3PcqbN2fPZYz4J
         H1jPzG3gakNGKApfBlYbf397uGxGDEiZPUujTji9tWGmSJ9KlFZmROUUvxGM3rQJluhp
         Rj6g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b=Lpyx5Bj2;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::134 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com. [2a00:1450:4864:20::134])
        by gmr-mx.google.com with ESMTPS id v138si695499lfa.6.2021.06.28.19.49.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Jun 2021 19:49:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::134 as permitted sender) client-ip=2a00:1450:4864:20::134;
Received: by mail-lf1-x134.google.com with SMTP id f30so36666350lfj.1
        for <clang-built-linux@googlegroups.com>; Mon, 28 Jun 2021 19:49:21 -0700 (PDT)
X-Received: by 2002:a05:6512:33c4:: with SMTP id d4mr21890601lfg.536.1624934961050;
        Mon, 28 Jun 2021 19:49:21 -0700 (PDT)
Received: from mail-lj1-f176.google.com (mail-lj1-f176.google.com. [209.85.208.176])
        by smtp.gmail.com with ESMTPSA id bn23sm1729842ljb.48.2021.06.28.19.49.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 28 Jun 2021 19:49:20 -0700 (PDT)
Received: by mail-lj1-f176.google.com with SMTP id x20so22106950ljc.5
        for <clang-built-linux@googlegroups.com>; Mon, 28 Jun 2021 19:49:20 -0700 (PDT)
X-Received: by 2002:a2e:a276:: with SMTP id k22mr1919160ljm.465.1624934959943;
 Mon, 28 Jun 2021 19:49:19 -0700 (PDT)
MIME-Version: 1.0
References: <202106281231.E99B92BB13@keescook>
In-Reply-To: <202106281231.E99B92BB13@keescook>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Mon, 28 Jun 2021 19:49:04 -0700
X-Gmail-Original-Message-ID: <CAHk-=whqCT0BeqBQhW8D-YoLLgp_eFY=8Y=9ieREM5xx0ef08w@mail.gmail.com>
Message-ID: <CAHk-=whqCT0BeqBQhW8D-YoLLgp_eFY=8Y=9ieREM5xx0ef08w@mail.gmail.com>
Subject: Re: [GIT PULL] Clang feature updates for v5.14-rc1
To: Kees Cook <keescook@chromium.org>
Cc: Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, Bill Wendling <morbo@google.com>, 
	Bill Wendling <wcw@google.com>, Catalin Marinas <catalin.marinas@arm.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Fangrui Song <maskray@google.com>, 
	Heiko Carstens <hca@linux.ibm.com>, Jarmo Tiitto <jarmo.tiitto@gmail.com>, 
	Lukas Bulwahn <lukas.bulwahn@gmail.com>, Mark Rutland <mark.rutland@arm.com>, 
	Masahiro Yamada <masahiroy@kernel.org>, Miguel Ojeda <ojeda@kernel.org>, 
	Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Peter Oberparleiter <oberpar@linux.ibm.com>, Peter Zijlstra <peterz@infradead.org>, 
	Sami Tolvanen <samitolvanen@google.com>, Will Deacon <will@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: torvalds@linux-foundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linux-foundation.org header.s=google header.b=Lpyx5Bj2;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates
 2a00:1450:4864:20::134 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
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

On Mon, Jun 28, 2021 at 12:32 PM Kees Cook <keescook@chromium.org> wrote:
>
> The big addition for this merge window is the core support for Clang's
> Profile Guided Optimization, which lets Clang build the kernel for
> improved performance when running specific kernel workloads. This
> currently covers only vmlinux, but module support is under active
> development. (Sami Tolvanen, Bill Wendling, Kees Cook, Jarmo Tiitto,
> Lukas Bulwahn)

Am I misreading this?

The PGO data seems to be done by using clang instrumentation, instead
of done sanely using sample data from a regular "perf" run?

That odd decision seems to not be documented anywhere, and it seems
odd and counter-productive, and causes all that odd special buffer
handling and that vmlinux.profraw file etc.

And it causes the kernel to be bigger and run slower.

The actual link to the clang pgo documentation even says that there is
already support for converting regular "perf" profile output to pgo
data, yet that model isn't actually used even though it appears vastly
superior.

Why use an inferior compiler instructmentation profile when we have
the much better tools?

                  Linus

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHk-%3DwhqCT0BeqBQhW8D-YoLLgp_eFY%3D8Y%3D9ieREM5xx0ef08w%40mail.gmail.com.
