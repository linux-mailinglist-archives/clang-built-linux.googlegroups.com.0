Return-Path: <clang-built-linux+bncBD63HSEZTUIBB5MKSP7AKGQEF6T6CNI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf38.google.com (mail-qv1-xf38.google.com [IPv6:2607:f8b0:4864:20::f38])
	by mail.lfdr.de (Postfix) with ESMTPS id F3EF42C81D2
	for <lists+clang-built-linux@lfdr.de>; Mon, 30 Nov 2020 11:12:06 +0100 (CET)
Received: by mail-qv1-xf38.google.com with SMTP id v8sf7092540qvq.12
        for <lists+clang-built-linux@lfdr.de>; Mon, 30 Nov 2020 02:12:06 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606731126; cv=pass;
        d=google.com; s=arc-20160816;
        b=A0mdtok2u2QUMtk1k4ifERKWZzBk0vCXPrVYN85PMkcpC8Of9KBLvHOkwJ3o56UPE6
         dE3wY+6EjE0pJDuUHy7B8m3CI3C4gYzg87lwVtGXcd+axR+4wCmtQlwhvGUb9v+VXYhc
         JR8UZyclBfZOaAKp9eTiPw71zZcJPMkRgmYrBHY6n+wJ89kzDSaMAtQZFQwEAtJdIFv/
         5uhGdHEc76mMAEK3zCAu9rj0Ht4jq3fhfA62bQnY/ekAKKixn5r44GdtfXUYY8brMg6R
         ltVBWbOidPe3vd1LFfMYzXAv7MN5uWI9KQOZYQMFysV/KH1b7BJe39KBTFuNNZeur1Oq
         JE7g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=Y1e2kIfnDHzU6L5rWJeie1N7HaRYEEitiK6Ek3FU4M0=;
        b=Or8El9OGXyzwlOBOpqA9e5ev1/g2S58qx7qZt5/ZG0kBjpBpVD1Z92PvWQHJULxOsX
         UKdgZRHWreMFDNLGSm5zKcpsXdEEdWZAgeXCl8XTzY+1Ca7bJ4JHuhHzi7+KWR/twEFh
         4ewQVr148smlGpMCFPIWgHN5eKsFyS6r7xKALnqLQjAMuYgMmzaA3HFMV7EoKxHOmz3C
         HAIFtE92OaEPpOo2EF+VrfNnmjs0Oa91caezBmUkuNE06WO/wTOEYFsBK0ktpI5fptIC
         rVbqKSzy0G+qzQaXpqkFXxpL4E9SLqRkE9/W2Rh0ghq54LXMMcY3WQK8onhvgrtMYJZR
         r+5w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=yB06povj;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Y1e2kIfnDHzU6L5rWJeie1N7HaRYEEitiK6Ek3FU4M0=;
        b=KiOa9WZBXxsp1YCEJcQNtRnaW0jgzVf8czVasbps052c0SWoIf7B8CVOYfWnzDIdta
         wDbnRfhcbRdaMIhCZDR4gZzuIouwIo4dqJ4xZJXCe1WMIW+5u5gkGCvMKUw6OqX05flZ
         j7dc70qoS13Dqf0KGN2DYAhzEOztDrWrabYtqBLUD1u7atWm3YBZIGPujCB4Cl/tXvV9
         aZPcA+IHQvaMOO/JwJWsO8Qz6VvJvAgX6j+t3PvUntTH2rqrI7rRXkFwgk3S5k/sRDRz
         0RaU98gwH7oHtwd2XiqWiZwadLL4QimbCcOaUySm3Ay5d5mAiceMXk/J4EX6bdO9C2Tw
         wLTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=Y1e2kIfnDHzU6L5rWJeie1N7HaRYEEitiK6Ek3FU4M0=;
        b=CjCEnWrqXLFsK3hRCwYPyMMN6heIqZ7jE1+dPSKY0sjv+ZjblENyZOkMhlugCXvIi2
         6+pv2YPHP7qLGdXi+jlXpDQ/2zj7NQzcJ4gcVHYuX/WnYRlV9aHrO3Pa9QYdYhKQ+UUg
         3AxCTxK3K4TjjQFHyKl+Y8yM57JXjLLPJkk0vzPNdMk432GmdhsNu0WVwB18f6F3Z0dB
         drZ9lZRrSIhrmFGmRLdFdYB4G5AAujxtXqYuVYZxlSh5ejUK/O6e2b96LJ5WPq+owbpv
         RIZUxlZETAtB5Vm8YYFWBAMDEEDD2eT2lZGRabyKsbKEOKaqQOJlX840Enp2YcP4CKoN
         T2ZA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533Z5ruAG2ZWckf6n9kjM9noqPgOt4XHNVphyZ8cuP6MOkMIrXJN
	2RjR6zOi7hTKIsiM4rKZP6k=
X-Google-Smtp-Source: ABdhPJyzHsefF4XQRFvzv1jGQmGrNRMk06QdLh2EPmPmsndO5vcBp4KiiFD34P+2ZOv5IOPmfRAVNg==
X-Received: by 2002:a05:622a:a:: with SMTP id x10mr19067549qtw.29.1606731126053;
        Mon, 30 Nov 2020 02:12:06 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:52d:: with SMTP id h13ls5758129qkh.11.gmail; Mon,
 30 Nov 2020 02:12:05 -0800 (PST)
X-Received: by 2002:a37:5c3:: with SMTP id 186mr21637173qkf.234.1606731125679;
        Mon, 30 Nov 2020 02:12:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606731125; cv=none;
        d=google.com; s=arc-20160816;
        b=HAh5BSiQd9Pm2kD3UswMJKuA1zz99cc89dvrB0iECVIK4/sSskMymgyEkwridYhwiN
         g+9GhIzLkTkPFdBl5OfydiapnQeI+6BidR/XndWapzNSGbc7oCNa1fvg/WQGG1eRh++w
         3+v+6F2JVIy7nJv0A68TQ/1Ymc3pZ9UTtc43fYdaK5p5fHBhDDs6jT1DiAU42Ee/uEN6
         CvP7Z1rLMBeRyCoCq19xk3d3aHxIY2TV6Ljbo0Hy7qUbdfF1R9EaUMGVF7gLmXZT7JG7
         Mpm2JXPyMIR2PEw+pV8q/Bg//2k8rXxbVPGVJAzVnNqUpLuTpb8SUeQDXpWTQT6B4+ph
         MOtA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=adS8WMgFgYTjzCLypSwY2ofdAnMzWNYMAqIGYTaUT3U=;
        b=PnVeFwMNEHig+9M/eH332T9U6Lu85vjxxU/ucmNlPhC5PZGtb9RHvTreTQMEjS7BcR
         j05Hage9qmDyWW/MfeKT6ShrfXl2kbC2IbjfA43EZ1Gs+g6W51DHhnILQ7E6/lfBkAfp
         +XQyPoL2ezfEl3drSAMiHLqSQedoLY1t66hkbM+3JnpqssS/lBHNYZhofRVMXcjyY5Em
         JG1KqqPvD6fv91aw0Yt/339o1w4PwckAcgH1gR8U7V526qkN0o2yN1BGK9KM43fdcq3q
         M1irW2eFdZA1t2u2yEH/hdSNgrcEhxE8Fl+npq8DdOXxf5nVMMs2tA8UpIZ+dbeY/syY
         VP9w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=yB06povj;
       spf=pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=ardb@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id g2si119464qko.5.2020.11.30.02.12.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 30 Nov 2020 02:12:05 -0800 (PST)
Received-SPF: pass (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from mail-oi1-f170.google.com (mail-oi1-f170.google.com [209.85.167.170])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 4180F2073C
	for <clang-built-linux@googlegroups.com>; Mon, 30 Nov 2020 10:12:04 +0000 (UTC)
Received: by mail-oi1-f170.google.com with SMTP id k26so13611214oiw.0
        for <clang-built-linux@googlegroups.com>; Mon, 30 Nov 2020 02:12:04 -0800 (PST)
X-Received: by 2002:aca:c657:: with SMTP id w84mr13797116oif.47.1606731123515;
 Mon, 30 Nov 2020 02:12:03 -0800 (PST)
MIME-Version: 1.0
References: <20201123073634.6854-1-swpenim@gmail.com>
In-Reply-To: <20201123073634.6854-1-swpenim@gmail.com>
From: Ard Biesheuvel <ardb@kernel.org>
Date: Mon, 30 Nov 2020 11:11:52 +0100
X-Gmail-Original-Message-ID: <CAMj1kXGsQ9K57SvZ74pmD+_=338sGXjc_t+hCXMh-9BPanXnhA@mail.gmail.com>
Message-ID: <CAMj1kXGsQ9K57SvZ74pmD+_=338sGXjc_t+hCXMh-9BPanXnhA@mail.gmail.com>
Subject: Re: [RESEND,PATCH] ARM: fix __div64_32() error when compiling with clang
To: Antony Yu <swpenim@gmail.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>, Russell King <linux@armlinux.org.uk>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ardb@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=yB06povj;       spf=pass
 (google.com: domain of ardb@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=ardb@kernel.org;       dmarc=pass (p=NONE sp=NONE
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

On Mon, 23 Nov 2020 at 08:39, Antony Yu <swpenim@gmail.com> wrote:
>
> __do_div64 clobbers the input register r0 in little endian system.
> According to the inline assembly document, if an input operand is
> modified, it should be tied to a output operand. This patch can
> prevent compilers from reusing r0 register after asm statements.
>
> Signed-off-by: Antony Yu <swpenim@gmail.com>
> ---
>  arch/arm/include/asm/div64.h | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
>
> diff --git a/arch/arm/include/asm/div64.h b/arch/arm/include/asm/div64.h
> index 898e9c78a7e7..809efc51e90f 100644
> --- a/arch/arm/include/asm/div64.h
> +++ b/arch/arm/include/asm/div64.h
> @@ -39,9 +39,10 @@ static inline uint32_t __div64_32(uint64_t *n, uint32_t base)
>         asm(    __asmeq("%0", __xh)
>                 __asmeq("%1", "r2")
>                 __asmeq("%2", "r0")
> -               __asmeq("%3", "r4")
> +               __asmeq("%3", "r0")
> +               __asmeq("%4", "r4")
>                 "bl     __do_div64"
> -               : "=r" (__rem), "=r" (__res)
> +               : "=r" (__rem), "=r" (__res), "=r" (__n)
>                 : "r" (__n), "r" (__base)
>                 : "ip", "lr", "cc");
>         *n = __res;
> --
> 2.23.0
>

Agree that using r0 as an input operand only is incorrect, and not
only on Clang. The compiler might assume that r0 will retain its value
across the asm() block, which is obviously not the case.

However, your patch will likely break big-endian, since in that case,
__xh == r0, and so it will appear twice.

Perhaps it would be better to change the type of __rem to unsigned
long long as well?

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAMj1kXGsQ9K57SvZ74pmD%2B_%3D338sGXjc_t%2BhCXMh-9BPanXnhA%40mail.gmail.com.
