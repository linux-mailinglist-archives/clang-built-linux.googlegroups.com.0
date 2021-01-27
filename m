Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBRMZYSAAMGQEW25RLUI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33f.google.com (mail-ot1-x33f.google.com [IPv6:2607:f8b0:4864:20::33f])
	by mail.lfdr.de (Postfix) with ESMTPS id 0FC1F30536E
	for <lists+clang-built-linux@lfdr.de>; Wed, 27 Jan 2021 07:48:39 +0100 (CET)
Received: by mail-ot1-x33f.google.com with SMTP id z2sf593313otk.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 26 Jan 2021 22:48:39 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611730118; cv=pass;
        d=google.com; s=arc-20160816;
        b=ChNzlylhc1n0+6DCDd2o+yO8O9Km/8Km1qsQVoTefLMwqNE1+VHdXzTh0i5rSaQn6p
         bhZvUkWVJiS8eKkzt+2edNTzsSX89EC+Mv6vDSh87n230hzlC+lj3lItbZbkgYouk4EH
         fcJjQmquOm5TOL3zni65qTAILWwC7TnERwCBFmwmPB4qUC9WuaGhNG7dQFC95BExZ/4r
         0WAT4UxYg74Q7YbwAnRUtcOMs0YkzhiW7yMGsgpPEYMcw8M2Le5KczKhGV9ImdiFTQXU
         ++STdNI1pY1D1SmWhJwkUYl96jLZRpeU7f6EGJAqEXNQw70moEkvqqIOGu/49hNs6C1h
         71aw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=9A7cnHwf3/tcHVLXebo9fbtGft+VzKavsahEb+VqFsc=;
        b=kx6xaHtzus4gF6QHWX26kqfREFpr5UnfOKY0+hV8hroPk0SXS+wiHfSsD7hWiNCb9e
         FXyUEJlN12fl0i7u3UY5jBhUF67SRAJXQSneCw9IjeO7DXGMjSETjH8fO7SYoqj7Jvfw
         +urrgy79G1yw+oyHt/VmQNy4NinuJAKEutV/xuSwMyJgT2i7O4B0bO/UrrZ/AiS6zkSe
         qRhr1H2SoeVnChg7Dpx40s8NyCqcXTVYDaiKB9o19BTql3Ng7KghVUN2H96UYwIXVpbl
         6n1dsRLzeirHbHPjDza4/wnMoVCeuRyc8eEO5M2HvcxrqaMap6mYfKWKXD6mbyTUuoZ0
         Nsug==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=a7QyW50s;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::12f as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=9A7cnHwf3/tcHVLXebo9fbtGft+VzKavsahEb+VqFsc=;
        b=WKA5biATZab0Vkl4DYSeSLQlSKYumX4TPHi2uygn9kHZemiA0pCPp5f2WaZR87GHbi
         ZLZ8JVilEJRk9T6DI8i2lwkBkLH9UrLTot2EmKLOBhplkTC8gwadxCeTIPuv64g3bm8G
         64MlXlR7FcilJC2+290+dyIAvp3tJ4PeOo/9MnxLQmPLfC0temkgeAtBN1LI1IVdT5BX
         A0UGup6liSDrZaQhdIIuzBba5UAbmVVU6lvougiUSMwU90BtJuJ3jf5v+bIUnvyxdVDo
         RnyuuPV+6P6/uMmw/+rBdnIlYNbug/Z3D/nz2zWTrEvJnCYpLrbBXEYRjZ7EyGbRM039
         j0+A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9A7cnHwf3/tcHVLXebo9fbtGft+VzKavsahEb+VqFsc=;
        b=AwR0ZmTgr+tpqbXdg2Hfjw1sv1vP0X1tYfJ3ETdUDA7UzfxzLhs0od0elaJaqI6EdO
         h8kE8wSu4uw+JfjqtcEDf8Whq6mHy4TTT5SHUz/8lVis2CmkGaE1qSZ8+MpQ9BssS46I
         BmXOa7Iq+MVyjI28Y371T/ag+UUzFyXvebvZ/xPwlJBsqVVIDQgu3efMI9O+HpZ7qaQ+
         355nmbvQHEfcozdForCkUkx232tgyesPPD5lyB7nR4TylFOIdHrMz8CQvWL5ldOc9YP9
         Es+Ag8wnke87sj5gu5ce1yDPHbqkUk/U96RiVwvgWd8xaTTjFlGUdHryzPqyDtdyjBjb
         4ljg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9A7cnHwf3/tcHVLXebo9fbtGft+VzKavsahEb+VqFsc=;
        b=Pu5YUGT4RRjOgdKlotLq2DJ7Ix2QLju2ZtAWQBtACQ3SHgiK2aMENVeuchAVqZLBlW
         6960+utqUPODzvw9Ofl3rrGEedv4c+nTaRdW8WkBzi//TZQ9D/vfvzk7Fxejh0ZPaLco
         NO7Jo2FnoBcEQT8QZ4SUaAn4cxLhC8miA+NRuIU90h57p5BYekN1s7k7lNOcwnrhl/yg
         ok2Vbuke/C+uOrDzyVjBFTf0nS5lVQEFa8QycdbI2jZK0p90I3o/UWOUxQpqy2l6JM77
         EquvZXxWlYTHD3L3dHtoJsGCSxFvZ8jVuwKeZncLCvxUW2st3GSAIo/0bUX9n3i55AEI
         gS4A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5312zaaoFVkjlivzbj26YofZZjA2eJwdJbqkZ/EMIbDRc1woVAzL
	qhjY8SUHV3KySyQaQSH8Q7c=
X-Google-Smtp-Source: ABdhPJwKgpgV+OR3/fsBqnp/NHm0Qsg/P7lfTWvLanffuR485lp+zVY68NGsLXGZUXsxkv8OWtC5dA==
X-Received: by 2002:a9d:7c9a:: with SMTP id q26mr6572786otn.80.1611730117915;
        Tue, 26 Jan 2021 22:48:37 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:1e4a:: with SMTP id e10ls277743otj.7.gmail; Tue, 26
 Jan 2021 22:48:37 -0800 (PST)
X-Received: by 2002:a9d:6a07:: with SMTP id g7mr6550685otn.285.1611730117519;
        Tue, 26 Jan 2021 22:48:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611730117; cv=none;
        d=google.com; s=arc-20160816;
        b=gyDZ9Pv1Bwi+drrm4W8oteCvt17ObMo3mjh3lGXdrCDvA77f0049cp25cca2tZVZc5
         mHP1pcng9PXfNHLTXSJQ5TSMRQYf4CEWGFmHkRYihkIE1QCgohEjaecnlrN0Gagfq4vO
         Td8h8lurkV6Rjpmy3fy8vkCPIpnE+D1SNDtHhR+XUz3G/XxUmzknhA+fx6r7GD++trF2
         7wW5Ia0conKqc+QsxCruK/gUueEekZ8gT4rEysvywsK0OvdqXFlm4qykq2fmWeRmmQ7s
         4hMfB5o3frRC4LdKuMdBF1vc5IWh5Nv01Y7TkmxqSNg898XOs1ClCx49OmvbZBWyWyH9
         EfYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=J2/ysAQ1CA7Y4zWr9mMw+fT9bYLcUQtcZt+Uu48Rw9Q=;
        b=b1e9vcC/TlrlOPGqtwcIlJgRX9gDdne9iQM3bZFv7tHBVoYhgQwsqK5hhmdo8/786e
         ObtAu+b2AUhYmfh/u1ggxliM4eDMMWfUHQ6Kty/muvqaQNaofw5F6lYyJtAzOoR2cwAV
         7iygj4kWfA54EMBuOZTt8u80SsKMCirVaU9exK5KxCHgMwJ4UPt7FT12x4jFeBknS+Bj
         4KXNv31YXueUqiVvbcJZvUWY+PBgpSvk1oUeuFfEhppMkSiLwCLs10VFKbPgMiMWrkqA
         W4IJRawlobWcHF0EIO3cOMzPE8BV3dSrdycqp0C98MpSCo1GRYoJX4sFOsa0ZdCPLGvh
         gMSg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=a7QyW50s;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::12f as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-il1-x12f.google.com (mail-il1-x12f.google.com. [2607:f8b0:4864:20::12f])
        by gmr-mx.google.com with ESMTPS id k4si55252oib.1.2021.01.26.22.48.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 Jan 2021 22:48:37 -0800 (PST)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::12f as permitted sender) client-ip=2607:f8b0:4864:20::12f;
Received: by mail-il1-x12f.google.com with SMTP id y5so785645ilg.4
        for <clang-built-linux@googlegroups.com>; Tue, 26 Jan 2021 22:48:37 -0800 (PST)
X-Received: by 2002:a05:6e02:d0:: with SMTP id r16mr7521211ilq.112.1611730117258;
 Tue, 26 Jan 2021 22:48:37 -0800 (PST)
MIME-Version: 1.0
References: <20210126212730.2097108-1-nathan@kernel.org> <CAKXUXMwErhv-vt1LC6a79yJ2oukDkPa1BnijDXpdwYu1RK3z=A@mail.gmail.com>
In-Reply-To: <CAKXUXMwErhv-vt1LC6a79yJ2oukDkPa1BnijDXpdwYu1RK3z=A@mail.gmail.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Wed, 27 Jan 2021 07:48:26 +0100
Message-ID: <CA+icZUXeVYFJx_McagTz433GjgnvuLKOdtx1Nkit9huWevP-Rw@mail.gmail.com>
Subject: Re: [PATCH] MAINTAINERS/.mailmap: Use my @kernel.org address
To: Lukas Bulwahn <lukas.bulwahn@gmail.com>
Cc: Nathan Chancellor <nathan@kernel.org>, Andrew Morton <akpm@linux-foundation.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=a7QyW50s;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::12f
 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;       dmarc=pass
 (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Wed, Jan 27, 2021 at 6:07 AM Lukas Bulwahn <lukas.bulwahn@gmail.com> wrote:
>
> On Tue, Jan 26, 2021 at 10:27 PM Nathan Chancellor <nathan@kernel.org> wrote:
> >
> > Use my @kernel.org for all points of contact so that I am always
> > accessible.
> >
> > Signed-off-by: Nathan Chancellor <nathan@kernel.org>
>
> Congrats, Nathan. You deserve it for all the warning fixes, reports,
> maintenance, CI, reviews and much more stuff you are doing.
>

+1

Congrats Nathan.

- Sedat -

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUXeVYFJx_McagTz433GjgnvuLKOdtx1Nkit9huWevP-Rw%40mail.gmail.com.
