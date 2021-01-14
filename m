Return-Path: <clang-built-linux+bncBDYJPJO25UGBBT5P737QKGQEFFFU4YQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf37.google.com (mail-qv1-xf37.google.com [IPv6:2607:f8b0:4864:20::f37])
	by mail.lfdr.de (Postfix) with ESMTPS id BD74A2F55B1
	for <lists+clang-built-linux@lfdr.de>; Thu, 14 Jan 2021 02:01:04 +0100 (CET)
Received: by mail-qv1-xf37.google.com with SMTP id f7sf2992525qvr.4
        for <lists+clang-built-linux@lfdr.de>; Wed, 13 Jan 2021 17:01:04 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610586063; cv=pass;
        d=google.com; s=arc-20160816;
        b=vgAqNY9U9er21BL0xYTO9r68KUrRAlBgX7rr94T5vn/DmzHmSQ6iwHIYK5hMVv3cxU
         3V/9b89FscEEdtCmu16JfBsLCHAxs9UYwXXvsQYPPEBQnCxzkX/JRgBnKS+rUo0S0hWj
         0HNvokECUpfNtnb+9zzscDzkHN0zAQCTHQn0EMzq5+EeQLhknnDugMCVnAC4UVJWcunY
         B5DvE4VObNEs26ColYgJez9JTmGUhidQJbHxMa3h0nmlcY30oGpsEs591EC50RluXyNz
         s0bdCdHE7xoxKznygR7dEl2NzUC2bBs+rFfGhhGx52RtHnZ1cN51Q3z+vT+xrdU2ZCP2
         +jwA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=saaoddGBNRaZYG0ZyhlOYDcMhxechIUVWGNDh44uI/g=;
        b=Pp5GnO6YQKs70HweE+B7GYUaDiuIpn2p5fCbKiOV94CQiSk7FQgtj2gQ2E0QF+mVLz
         b3RvMZGdQOtbzwKWV7s+4e1ooGtzbLz+edH7FT/Okp/rYxhIGFn+H7lQOf0043LBE6et
         B3mX8VJ8mLCW8W9PIiqQDwp7KKXkPyjctWcZ563RCeFtYIJMuivHrToMVMtb6VuyHTfx
         pyHDmkAyo7IYOxeUDRKtjpjLZKjFmC1H2Mu3g4tgcbiF8HMXigRllNrOPWa1n53dH4tW
         EqMYo2MF5kg8LibQAD6fwIrZzeI4RkDrHsTXIhCWWByfWey+Zun8ONi8o164P8LTPmrP
         7zIA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=pYYLVmtr;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::531 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=saaoddGBNRaZYG0ZyhlOYDcMhxechIUVWGNDh44uI/g=;
        b=eXqNNcc3bmba/bUCWJUrIm5IRJX086pj+96lUMDXoC1AIH/UWXiICpTUwiTmAyxK2K
         gb8IvlDsdT+eiHSktC50RcJ5VUFLwVNHzblUJLgK6iVDXSM6O5bD0FQruVtfO87MRfKa
         vCH3Rs+3oec0ONspjDYfs9S9xiSblVZ4JRwF8Y9uP4fnw4vOn15pTCW6nfnk/KidRXjP
         ADtA7IKaNZvqzbJtQbTdO6luennCEseRysnJmNZpo69zY7muTApRiKo8KMik+JWFjY4+
         bDqGJlStaUwfLNn17VnqxJjGP6j5HD9sf+A0m+nAVef/HsZ24XRx9s7BKuLR7nlMHAqQ
         aQlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=saaoddGBNRaZYG0ZyhlOYDcMhxechIUVWGNDh44uI/g=;
        b=qZW4RHDvbwkaEZ6IpLMHFUoWGk6DwH+N3sSiQbbOL2Isr3kSISsAUeUNhYBy9xHFRX
         cUfU5D5w+c4bXLG4Chi0SIh/jfotSTexAVglV0SM6kYTPg8eJeK38jd6Yv3P5LD83HHI
         xyzzw5XNZVBRMl6195BA8bKztkdMi/U6/Ko8oFbc7++A2W6E/hwiHDpJj8rqLtzX6SKE
         3b7XDWV5S67zIPucedIQBD1q9Roj9ft0TwlQL1eW8eoGCqaUzaSxNTJlhy1Shy6my2Ck
         kobYgOdchJZVvgdC6j8kZra4QDh6HJOV0lFcDqatJNdzPI/s8WY0aNHLA1UHHEIuKFL1
         XpOQ==
X-Gm-Message-State: AOAM531M0unrKVLi8mBcroBme0PsDqA8v0uW24YC32WEibdNegwc+n6d
	r1lVFR9GhFOl1kYY7JUtdQE=
X-Google-Smtp-Source: ABdhPJy+ZleJCid3l5uIfyHvx24bncNpQVUnZamiK3toqcmtmStkLRe7clJ7v7rVXyDFdnjG23uimg==
X-Received: by 2002:a05:6214:80d:: with SMTP id df13mr5012440qvb.10.1610586063585;
        Wed, 13 Jan 2021 17:01:03 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:6790:: with SMTP id b16ls1535417qtp.7.gmail; Wed, 13 Jan
 2021 17:01:03 -0800 (PST)
X-Received: by 2002:ac8:5942:: with SMTP id 2mr5056495qtz.117.1610586063143;
        Wed, 13 Jan 2021 17:01:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610586063; cv=none;
        d=google.com; s=arc-20160816;
        b=Ic7DrPQtYzOe4oxk/1KuhFA4La6/qj6ogQsPwvNB+HT1zOVxSc/XkUo2qBuls9KYMh
         WexoSM6FhQeZ5+a/kOzIqHylhAGLyjfSAX2eYNBc94bg9LLxy+kKaSusK0+sRJ1m5DQY
         /lrto/O39Hv10B1NoqxN0RHcVGYucbJoRHYlk+jpE7qiTs5tG5IvAJOqFb6T3VqEYWRT
         qg8G4/78I8bb8OUBfY/whx9d9t7PPIXiahchnOGUcynuen5TP2D6XPjwxmTmHJVRp2n5
         UULzEjqGaWDoaQzMJkxpNXKXmCU1IVLp+oFFM9LFRBkaxur8FzmdiYsMQoE5NR6rSzj3
         iOiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=rkU8cpUyETgfO5WMc4v+Gsp/I2v/7OeHSZUBCHGZTM4=;
        b=VAZRBckOMFGmWxjc+R+5uoAhojKMmMg8RO519ZS6fPNJOOp6j75AzOTduyJ/05nyeJ
         Z9a9Mqpeq/KQYCDf92UBvsSNSK5NNdzJWlKB341N8vPLS02XrJWUJatdTjW8N+kRmdmv
         y9rtMqRe8EXe8NIYaJhfhiX75z7d8Ys1q3WQcx6Esxlhxs2VBI6mpmgRAvmqMFkdD/s9
         UR1d0lLaDTcYRgQILfsxJDCmhrI5xIgSTvpAic6qzkzYVbGg4mEmOWYOI08SVH0fMy4I
         1hLIaFrDB5WT6+F+K9GaS0d/VflfO5y1oaw9kbkqNq4el+QN7mTMKYhvNI0iFjptDwtZ
         xhnA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=pYYLVmtr;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::531 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x531.google.com (mail-pg1-x531.google.com. [2607:f8b0:4864:20::531])
        by gmr-mx.google.com with ESMTPS id c198si175339qkg.2.2021.01.13.17.01.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Jan 2021 17:01:03 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::531 as permitted sender) client-ip=2607:f8b0:4864:20::531;
Received: by mail-pg1-x531.google.com with SMTP id 15so2632184pgx.7
        for <clang-built-linux@googlegroups.com>; Wed, 13 Jan 2021 17:01:03 -0800 (PST)
X-Received: by 2002:a63:1142:: with SMTP id 2mr4735755pgr.263.1610586062110;
 Wed, 13 Jan 2021 17:01:02 -0800 (PST)
MIME-Version: 1.0
References: <20210114004059.2129921-1-natechancellor@gmail.com>
In-Reply-To: <20210114004059.2129921-1-natechancellor@gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 13 Jan 2021 17:00:50 -0800
Message-ID: <CAKwvOdnda=eMds-krhHAwtvvOXhdezVWcfp_MQrtbfmO=UPzzg@mail.gmail.com>
Subject: Re: [PATCH] MAINTAINERS: Add a couple more files to the Clang/LLVM section
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Andrew Morton <akpm@linux-foundation.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=pYYLVmtr;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::531
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

On Wed, Jan 13, 2021 at 4:41 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> The K: entry should ensure that Nick and I always get CC'd on patches
> that touch these files but it is better to be explicit rather than
> implicit.
>
> Signed-off-by: Nathan Chancellor <natechancellor@gmail.com>

Thanks for the patch!
Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>

> ---
>  MAINTAINERS | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/MAINTAINERS b/MAINTAINERS
> index cc1e6a5ee6e6..9127456b7eb1 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -4313,7 +4313,9 @@ W:        https://clangbuiltlinux.github.io/
>  B:     https://github.com/ClangBuiltLinux/linux/issues
>  C:     irc://chat.freenode.net/clangbuiltlinux
>  F:     Documentation/kbuild/llvm.rst
> +F:     include/linux/compiler-clang.h
>  F:     scripts/clang-tools/
> +F:     scripts/clang-version.sh
>  F:     scripts/lld-version.sh
>  K:     \b(?i:clang|llvm)\b
>
>
> base-commit: 7c53f6b671f4aba70ff15e1b05148b10d58c2837
> --
> 2.30.0
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnda%3DeMds-krhHAwtvvOXhdezVWcfp_MQrtbfmO%3DUPzzg%40mail.gmail.com.
