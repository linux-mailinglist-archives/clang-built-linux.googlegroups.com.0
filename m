Return-Path: <clang-built-linux+bncBDRZHGH43YJRBDNR76CAMGQEZVNUNDQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33a.google.com (mail-ot1-x33a.google.com [IPv6:2607:f8b0:4864:20::33a])
	by mail.lfdr.de (Postfix) with ESMTPS id 71BDE381950
	for <lists+clang-built-linux@lfdr.de>; Sat, 15 May 2021 16:19:58 +0200 (CEST)
Received: by mail-ot1-x33a.google.com with SMTP id 88-20020a9d06e10000b029030513a66c79sf1551953otx.0
        for <lists+clang-built-linux@lfdr.de>; Sat, 15 May 2021 07:19:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621088397; cv=pass;
        d=google.com; s=arc-20160816;
        b=hMy1ZRQ0+DaM9JjQ3/tY4PK/ZheHMa5KudSu2C5K4Hsa4GPuQmKtZis8czoXDBKSzx
         UkBXr7tZyAu714dnA7MiNdZqssj9nhg4LokNKS9OAkH37PlDxcsq8HahAsH/P/g47S7w
         RO7pLNZehLU2A65Iwpqi0asXIOCtGBPs4u4n6YyzwKLnAci+jv+8l4cuNjHXaRy887Y/
         mTamg24FczQGfQZDA2Me9ej/mUEHVf3RuZ5M0hxvNnQVawSUkVEW0gs9WmdmTuJOv7Lg
         zCGDFCZ60a/ZXAiQH5MCi0H4hYL/5ESzRope+KXN1mofL5GPm4PmTh4JgHNY06TAq41S
         ks7A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=mfO5n9bOqJB9pyi3cofY5SRIfpQLlYWjq5f7Ra8IQ68=;
        b=FXdNzG3Dm9BYeAoWoL4iNoopKcgzz+m4CC+UsdberQxk2774DB4uHKxI6JSunuxYJq
         BkKYvg8ydD71GK/d7ZbyyXhiKJZ5TUIzZ5gLbcaVO1UqL3L4ilfXTjX26mRIfQgGAWKb
         7CnOdPtwiAuVUxcfWwvRVQpx786k/noO3GyTyBa7dwmC3e52D+jzn2CjhdA2L+IYW3Iu
         1KP08C5r2xoeTcCqwUYv7c9cF5aXmevWwL8hA8HKD/0i2ypVRVOLUdtqXxH8SIbA2PDz
         Mnfsrr4Vl+j0dwJhmxS62w7uEtgoMmIwThiuDDoKFcmyaBl4Aob1N5dzNXUMe2+Em472
         M4pA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BlIAn7yB;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b31 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mfO5n9bOqJB9pyi3cofY5SRIfpQLlYWjq5f7Ra8IQ68=;
        b=UQ+k1ZapHpW3QE08cZPoUCZM7S+I/L+A/7608Nis4/bcaXcd3EXRfqw2fqxXFl9VOf
         eFS4BDQggS02GX7TmTNgrBW2GOTJw/z/MjikKJ0fj5S84RouCjss5PDdM4d0oh6BGrrk
         MJmu2nnWr5fQOSSPDy79GEkCKttJ/o+eM8d3ghqpd+L9dtrplV3lAos5TEy7pdmmVVUC
         WgQ3X9RuzCv+R9/+ZPFknkIMXH5XyyCz60JizDk+ibNnsrTmWZWuNZWsxVs47msiWuhG
         ocWKXeadMw3w0xtgH0QFELPduWetRPLi5a0bE4HDjjUAZpqfVZx+iG4kFNpHf7NeKT6y
         L75g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mfO5n9bOqJB9pyi3cofY5SRIfpQLlYWjq5f7Ra8IQ68=;
        b=RCDHrMyfQRQWRvks4fF6HDL+hFRm/Pn4aVlQ3ORdZrqnbB7M7BpYBqeXDoMc/BYHgh
         azUukcKBo/bCD/dbJG+q2xW5TwdEs31IMGbJGKL0NKtf+6nmPt6zDyxpamrJpI+fttt1
         JVPBJcV2EhzavM/DjQrLwGqX5mRfCGQFpaHakY0JuvofGnbGgX8S13QoiZbM79OCVD3v
         txZqVipwCh9WiwdZiijNlm53OwxOXsV0GxqaCCBabAuhHtHxQ8rohDq6ZDafFP0/5iKB
         E7nmsNwoyjJvnC8plVeaUfqGQrlvtccfG2LW6LtNl6iDtINsUwpzm5w3kBoByoU2/xje
         xb5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=mfO5n9bOqJB9pyi3cofY5SRIfpQLlYWjq5f7Ra8IQ68=;
        b=rpxKrkpFtgYtmEBuXP4lbSIlqFbur/ViCv91zQbu/4XJCxkggrzCc5h+JfzXkqpfos
         KLn522oN/gkBzohtYnKu1n29QXXcbaPHDaU+gvQQiMZ/I8PjbpnZNzWF8PPOoeDliQw1
         ZZXYaOVHylINp4vAHlLvSi06uIigvwILFGub2dS9XRh/hV/J4xzCkNQMJ7BH9ZVrm8z0
         OypgsjP2I3gJNEHUkAFsSdCeyC4MLk9mLmzYylFDm+rFACIW2ZUU7GFMOa2v7fDzu4je
         /N5luVVGMMAaY42w9CHKQPaqoRnjqYs4Ao1NbLPjFnC8gCNBBb8JgGZtAiMztfOw+urV
         9VeA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530HCSgq3aGAfS+7t0BpBvx+9KZTV+WIx10GL0/H1JpUkHCl/sVn
	ZSVImANknAQTxP9Orkm+V5c=
X-Google-Smtp-Source: ABdhPJyGimgMT4RgVPiEm46f7/Fy69ramM+MKJbHb1vMVSJWPaM12Y3pyhyFcsiuGQA368aJ38UpeQ==
X-Received: by 2002:a9d:8d6:: with SMTP id 80mr10139403otf.33.1621088397178;
        Sat, 15 May 2021 07:19:57 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a54:4392:: with SMTP id u18ls3139217oiv.1.gmail; Sat, 15 May
 2021 07:19:56 -0700 (PDT)
X-Received: by 2002:aca:f2c1:: with SMTP id q184mr9780012oih.29.1621088396812;
        Sat, 15 May 2021 07:19:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621088396; cv=none;
        d=google.com; s=arc-20160816;
        b=mZm54xRTDeOvfJBhjYBuFk7JlP7GqFLzRngCOzB6WdtlI2E79+pJ8lrvux8/Xs0CG6
         zWg0L6jcq07LZGWQ0V4/J8OoXPcGT63oCsDzNky5IRVzxemYbIdHmJd5F3rGQK0kzhIR
         dU1tD6qiYY7h76mCjBRYOqDpa0T6BXfMA9VFlQeFliM1D/sCSGEIeQsAwqSHooKmhm6x
         7P8nM7HuTbDldUMKGWhRlYaLndrZzNAcAMwpCtSNhMnHUZfFlRyOZR6OvLo4OsrJp4il
         gAug4ka1eIuEOccEpxpPAcrTAL1QlblKnmKhEIg3bYCqtZNw+rlVY9AK9OeQTE+cmegQ
         avKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=M7FG3BGvp3UM5jwkyXQ9ZlVnWzk7AoLwEg4DG0jV0g8=;
        b=I6yannrft9W91qO4slRdmkVM6YiPqze7MOi+RtuuL9RtM4JmBteTihFvn8K5CczgyU
         1AJxrHo5glNVGufXsE3OZ4RiT1+lzZlMr72nhTtdE2PLz3YBfl8d6okc6bGZMXTrlfL8
         4KBbBO2bS/2tmtedz97uosOkbLb8sfmhTIMhILgNWdqbE3kBndzhn6aBv21SUP6JH/jA
         PwyV6KBUp2qNTAOs91fRcn0MElZTnWzKyShO0FbJY3LQjUs7o5otcwOIBNceKuVzjwlC
         5nS7wm2ZM/okT1GLrFx1WjgVFRbELiTj4d1KyzurhJKKbgjeHZEWWsEl0MYyP+V8B8dX
         13TA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BlIAn7yB;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b31 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb31.google.com (mail-yb1-xb31.google.com. [2607:f8b0:4864:20::b31])
        by gmr-mx.google.com with ESMTPS id x16si957417otr.5.2021.05.15.07.19.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 15 May 2021 07:19:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b31 as permitted sender) client-ip=2607:f8b0:4864:20::b31;
Received: by mail-yb1-xb31.google.com with SMTP id e190so2689750ybb.10;
        Sat, 15 May 2021 07:19:56 -0700 (PDT)
X-Received: by 2002:a25:8803:: with SMTP id c3mr36944040ybl.115.1621088396581;
 Sat, 15 May 2021 07:19:56 -0700 (PDT)
MIME-Version: 1.0
References: <20210514140015.2944744-1-arnd@kernel.org> <0ad11966-b286-395e-e9ca-e278de6ef872@kernel.org>
 <20210514193657.GM975577@paulmck-ThinkPad-P17-Gen-1> <534d9b03-6fb2-627a-399d-36e7127e19ff@kernel.org>
 <20210514201808.GO975577@paulmck-ThinkPad-P17-Gen-1> <CAK8P3a3O=DPgsXZpBxz+cPEHAzGaW+64GBDM4BMzAZQ+5w6Dow@mail.gmail.com>
 <YJ8BS9fs5qrtQIzg@elver.google.com>
In-Reply-To: <YJ8BS9fs5qrtQIzg@elver.google.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Sat, 15 May 2021 16:19:45 +0200
Message-ID: <CANiq72ms+RzVGE7WQ9YC+uWyhQVB9P64abxhOJ20cmcc84_w4A@mail.gmail.com>
Subject: Re: [PATCH] kcsan: fix debugfs initcall return type
To: Marco Elver <elver@google.com>
Cc: Arnd Bergmann <arnd@kernel.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Dmitry Vyukov <dvyukov@google.com>, 
	kasan-dev <kasan-dev@googlegroups.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=BlIAn7yB;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2607:f8b0:4864:20::b31 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
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

On Sat, May 15, 2021 at 1:01 AM 'Marco Elver' via Clang Built Linux
<clang-built-linux@googlegroups.com> wrote:
>
> FWIW, this prompted me to see if I can convince the compiler to complain
> in all configs. The below is what I came up with and will send once the
> fix here has landed. Need to check a few other config+arch combinations
> (allyesconfig with gcc on x86_64 is good).

+1 Works for LLVM=1 too (x86_64, small config).

Reviewed-by: Miguel Ojeda <ojeda@kernel.org>

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72ms%2BRzVGE7WQ9YC%2BuWyhQVB9P64abxhOJ20cmcc84_w4A%40mail.gmail.com.
