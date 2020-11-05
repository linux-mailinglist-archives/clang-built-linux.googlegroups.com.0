Return-Path: <clang-built-linux+bncBDRZHGH43YJRBAOERX6QKGQEX6ECESQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3e.google.com (mail-qv1-xf3e.google.com [IPv6:2607:f8b0:4864:20::f3e])
	by mail.lfdr.de (Postfix) with ESMTPS id A1D4E2A7559
	for <lists+clang-built-linux@lfdr.de>; Thu,  5 Nov 2020 03:22:58 +0100 (CET)
Received: by mail-qv1-xf3e.google.com with SMTP id a1sf53375qvj.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 04 Nov 2020 18:22:58 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1604542977; cv=pass;
        d=google.com; s=arc-20160816;
        b=vpYj3yZIAWMQptbM0gotxYUw0QpDdAMz4XedOS/2nbqVlI0bS68FwR3BeONkxMeq0J
         y1NJRtU+zgUXnYVBqZtNLrfIN+Z5bhyrZEcEfJSDHU+TmhFMZqzfhlhNQn7fbW34yORQ
         i27dc5qZlwypr5ykvqUH4OEtO7uSYCoAcIMRaiVEyDqZ6BkzId0avcew7l3YMbWy4853
         Y1oeZCmVg1YHgc6xSKq8YX+Cx3Vun0U94wvcdFVZyPOoLHQbIZ4PqeuLA14HFkTjvRjm
         NKKyFDxSJsGxY1uia6suEtuZ6C79EE1FEQ3zd7qjJi0YynOmem4o9L6YikW3MaiuQTji
         qqDA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=XQSfxknm/3IxTAK8gWwNID8Yauldaxr6gkdtqed3wN4=;
        b=YScyJHLiRShUoBpcP2//DrXdMASewvEaLUphqZUZKm7O32qyMZvz4loGyLOzj4VlFd
         GaQKhoqmQZmF1zkhqWJwxLtj+lWIUQ4zQ+fJScJIfNw1SIzZNTENOL9GZJRqhSfGU8b6
         cr4y2JfIbkmz/giC/736BaNAJeFJDLxGCr1qS/d6qmGnjJ5gFMZQUUsOUNR6cXCT3OCw
         6rAbxseggXgaMUsHEIEH0cccqNCO+OLvI/QVMvkSKFzAliV55mOl0jMb4i4tmI8yzfbU
         yTDUQKG4e+ZTKuIAXIypJOYj+R6JiBmLnKavsEKC7jcjMnyYtof+xterjKFhtDInCAY7
         BYUw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lJQGK9Gn;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b41 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XQSfxknm/3IxTAK8gWwNID8Yauldaxr6gkdtqed3wN4=;
        b=YX1hyUz4dRo0DEPnafRj2o57iJXNW9VhoDu/CI7h/8OYXU0YDs4v8rrsZW1TsjHi0X
         /EMV60xj5+2nI0qNHJIGpMg9buXMqxJgUvRkkvkPEWfZE/PSlOxo/6uku4D8yI7H6YTR
         Z93hm51/wSaT6+syRGiaHQ0Jkp6GuXRI5PoSE9UnjEwFSvagwIt4PMbh+oJSdfwcQY2N
         AntSVylRUCrsSCG8szJHWqU9eYUQ9D0EXUUzy+KvFDTLRf7Xo9HsAlkZszntWFc0ICA+
         G00iueQXVDlmZvPoQ5cAn+E5VYhnM+QGPGX6CKj18WeAzfjFyj5VyV5S3aUZj+uSh1JT
         xABg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XQSfxknm/3IxTAK8gWwNID8Yauldaxr6gkdtqed3wN4=;
        b=eOwQdXkWcGylsXdLhtcMRPZCRvfOEpVJvDluz+FFMh+6Og5VS1GHLZJ5Gi63IJGfpE
         iqiajo1erxoTDDRuRpGNpjbVLp885jsbhOhAmsryn+xBhx7Pt6oK+YqhFoftBPi8+wVe
         G2qnASeDNkPsi/ffLuiBeW5oLzZnT3gNFexgRtPC3NliNWQsJEC3Kt+ye//C8T2L+4cB
         cEUxU0sHI6oQ2A9kjpQRYwfn+1usw8abs13egJr3XALhHmAqS/r2/dmbPOQEjYgI+43I
         Co6AenRQvFH02x/2BYDprtJ8HQzBN+bchY1wipiuPyvRL4qJi6gCX7p8LZBztOBuuTAk
         IlKQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XQSfxknm/3IxTAK8gWwNID8Yauldaxr6gkdtqed3wN4=;
        b=jFugTgEqfuECk8C/EAT7856vfrl/5AfTj53SMsnmeji9dK3G4f6LWeOIuXkISrZ+Yt
         3pJAxES0T4z0L3dFHb+8pM3evIFZUtWF0aEx60754Tkmx6EUfJqXY+unfbyAA6adix7y
         Bd8XLp/n8Qm8XwHH/ip+i9O5DtN58XqVof+OmEdvsq6ySZa/qsEz6WPuSJv1B7MOm+Dw
         V11ewT2a8DPLlsYZFtAzltldAJjNb8YEXxuScOqTfwrvWRZ6T8SpWU0GLl3cILkcMkAo
         1/efmGAsJG3cqFOyzBw8JewbQzCSfJ3APR60YscLcmJ7pmGYN9TB10JYZKhpyZftMUkS
         Qx4Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533esr4lsZO90RPDRwxm4vODGicMZ6OGkNR4+mWh8G8O3tWE6SN6
	sdw6+B3+aUnbrpaXh1xkDGg=
X-Google-Smtp-Source: ABdhPJy9ERv3qBrdszicOV+uxeXF+FUf0ZQBwAAg+6PuruLgFzLFOjkmitQxOH3RRvnLpZZrDjvopg==
X-Received: by 2002:a0c:f7cb:: with SMTP id f11mr351168qvo.34.1604542977664;
        Wed, 04 Nov 2020 18:22:57 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:65d0:: with SMTP id t16ls114189qto.4.gmail; Wed, 04 Nov
 2020 18:22:57 -0800 (PST)
X-Received: by 2002:ac8:5141:: with SMTP id h1mr153888qtn.139.1604542977172;
        Wed, 04 Nov 2020 18:22:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1604542977; cv=none;
        d=google.com; s=arc-20160816;
        b=cjsVBEDsjTWJZS3p084LJ1Ly979az+0nsE6hIaeOMH9waCMaj96BTqO0c4ApbJtzZs
         iQDsgw4EfyCeAlrE+PzJYV91mp/ztLdhpfgo9ZTycUxqNUQI19v50+HuM14arz2ZQprS
         /ndI7UjAdLaTw9i9NTuR9aU9VbKVFh0YhEH64KD8QBLVd1y90AsoXFPZ1bdT/+3CFxIr
         l4fmIn8yMe55wihy2BqY7IAU/23L6UBKA1v5WSsXjDEyrUsVokzKh5Ecv5V51fwh0JAH
         pEVR60sF/FqkfKdMJGL1w0Yt355yUrnA1n/CKfyHGm541hDgdrKG/aEOJ5/KUwlHTNhY
         pRIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=g/cUsKBy9aLzWUWC4mZ7IACQUgXjiEVgWxOTM1gmtNM=;
        b=0U7uF6jIwKO/t0p/+XUffMG2F3e4sgXY5iX7LNhP+OyYZF+KKTEc1z7RahW1ojJ/cX
         4VqeNPjm+fjGJ9vXQJzujKV+ovrCC9lHHHCmK5I1YisxIz69U8abRcYaq1aZmNhyZZuW
         WCMZ1jQ0dTkwrkIAkroW8G9niZEaq+x790rB8LfMGj5pOOzOa3dYPq7OdAp6VoNs8sFW
         u2a3SGCzyiQ8i3Y5dIzwqSzIV/p0PxAEKKtGqjy3SqeIvNSjL1rAVR7UObfd4BvO/16n
         Op36A2cfCpx1R6yIyaMBMM0UKJqubtmgLrQ0jb5pb8sKwMp7uYTEKi8/gM13HlN3HgS5
         yWiw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=lJQGK9Gn;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b41 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb41.google.com (mail-yb1-xb41.google.com. [2607:f8b0:4864:20::b41])
        by gmr-mx.google.com with ESMTPS id h21si11120qka.7.2020.11.04.18.22.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Nov 2020 18:22:57 -0800 (PST)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b41 as permitted sender) client-ip=2607:f8b0:4864:20::b41;
Received: by mail-yb1-xb41.google.com with SMTP id s89so637477ybi.12
        for <clang-built-linux@googlegroups.com>; Wed, 04 Nov 2020 18:22:57 -0800 (PST)
X-Received: by 2002:a25:bf89:: with SMTP id l9mr709494ybk.22.1604542976980;
 Wed, 04 Nov 2020 18:22:56 -0800 (PST)
MIME-Version: 1.0
References: <20201104191052.390657-1-ndesaulniers@google.com>
In-Reply-To: <20201104191052.390657-1-ndesaulniers@google.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Thu, 5 Nov 2020 03:22:46 +0100
Message-ID: <CANiq72m9xX78==qAyu5dKPv-26tPh=ia4xORivvpvwbtoENSqQ@mail.gmail.com>
Subject: Re: [PATCH] compiler-clang: remove version check for BPF Tracing
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Andrew Morton <akpm@linux-foundation.org>, Chen Yu <yu.chen.surf@gmail.com>, 
	Jarkko Sakkinen <jarkko@kernel.org>, Alexei Starovoitov <ast@kernel.org>, 
	Daniel Borkmann <daniel@iogearbox.net>, Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>, 
	Yonghong Song <yhs@fb.com>, Andrii Nakryiko <andrii@kernel.org>, 
	John Fastabend <john.fastabend@gmail.com>, KP Singh <kpsingh@chromium.org>, 
	Nathan Chancellor <natechancellor@gmail.com>, Kees Cook <keescook@chromium.org>, 
	Marco Elver <elver@google.com>, Arvind Sankar <nivedita@alum.mit.edu>, 
	Randy Dunlap <rdunlap@infradead.org>, Sami Tolvanen <samitolvanen@google.com>, 
	Ingo Molnar <mingo@kernel.org>, linux-kernel <linux-kernel@vger.kernel.org>, 
	Network Development <netdev@vger.kernel.org>, bpf <bpf@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=lJQGK9Gn;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2607:f8b0:4864:20::b41 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
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

On Wed, Nov 4, 2020 at 8:11 PM Nick Desaulniers <ndesaulniers@google.com> wrote:
>
> bpftrace parses the kernel headers and uses Clang under the hood. Remove
> the version check when __BPF_TRACING__ is defined (as bpftrace does) so
> that this tool can continue to parse kernel headers, even with older
> clang sources.

Acked-by: Miguel Ojeda <ojeda@kernel.org>

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72m9xX78%3D%3DqAyu5dKPv-26tPh%3Dia4xORivvpvwbtoENSqQ%40mail.gmail.com.
