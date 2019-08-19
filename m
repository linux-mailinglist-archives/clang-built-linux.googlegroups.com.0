Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBHGJ5PVAKGQEKEWLGBI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53b.google.com (mail-ed1-x53b.google.com [IPv6:2a00:1450:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id 979CE94C48
	for <lists+clang-built-linux@lfdr.de>; Mon, 19 Aug 2019 20:04:13 +0200 (CEST)
Received: by mail-ed1-x53b.google.com with SMTP id n7sf1821883edr.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 19 Aug 2019 11:04:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1566237853; cv=pass;
        d=google.com; s=arc-20160816;
        b=E0i023aneqDCEWsCwX2xsl384cVWoWU23LAhph72esMmuP98bjDXf4Wm6ysixRosn7
         uleq8h05peeJXe69g9mhRa85Do0bXE0zEM1nwJmrCPvPt9wGv7m9fiG7+/hzt68F5zQt
         26xc8aJ/TevCfFwl5E0c7i+1DA0PyQouUaS72WdL/cQtpAhyKHSbSRMMMrP4awPWObcY
         6hwlKDsUlSzmOjPTDrblAvDJuqAiQzB3IWRZ+bhOkHsbDN7Ijlj/FCPrndUd72XJuRm1
         URBQovHCdv9aB4ELKo8Oy53vd2s+QG+L+VwQ5Gfx3D+wrR3Vqx/FDWp5lPeuMznz296b
         fJ+g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=3iYTVKJnPVyYePe29oh6CebJAR38kFJkratQoogSwVs=;
        b=aHu8HNpeygPQR2D5TetLm/x8hc5+1qKG/JCLEmBjvlPBh6W8ooD6nmtyIwOFh568nT
         6khHpXdqN49n2qJUZ5R471yS6BNCzXjHCcGXAhYQttz2mx/5up3n96R+/dvs6lcw2nw0
         hBzCEwhjWTzbRKrTGCepMFULGuaQr/NCjhS834HVETSr9YQzqAP34C/wr35DiTPyT2/j
         3ZWXIXIJ/7bsFQyUYkeBIfl+V+xyWXzp3kxaQc+kP0Pq/PY36sB5tWnEWICd/MV2R6hE
         8y2QIGJ8XcdBF2aOC0EylrECyerVYkR1mo5eG3YRQTRlD+15zKjsQCPxqapjWtzKAViy
         Ehug==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Rnh0DQu+;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=3iYTVKJnPVyYePe29oh6CebJAR38kFJkratQoogSwVs=;
        b=GdllHqph3MD5JD9mevo656i/aIVFWGet7j9J7eBf7GtyXFt7LooreS+GvNzTNRL+TT
         rBm9OZY98hStfrqwn7r9YTKHcown1zuCArvCpL8dcLpfuwUQAjtnkcY3LnSsDuGhN4Xy
         0zXrF25UPzddUKHbEVsiDAoaNDRqn4JTGTCMz2Qp7tmphqvYh0s4dkOV09IElvnqVzQy
         oBTEAc1rj5Z7lQNweqfZN9eTQHTvKZIOc+UCI6TuhdlxGm0yZBzOm/YrUhcq89extJsb
         ShO/A15KKTm/5Ddmtrd0kmgREVF//fBDUfrfj8e1DDqt/hBwd6INzFMwWI9uvrTFiIak
         bUIQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3iYTVKJnPVyYePe29oh6CebJAR38kFJkratQoogSwVs=;
        b=pKxa/veBi2othwyQz5DQ1E25bzIJdn2kceKoH+Ihki99nmN3FCpUMFiv+dTN9ts5sx
         T/SN//A3P2K+cQ//LL9WbF5XV+0pMSQ4s16zzufOHgxzrfaW+SIptsjb/FrEmJkmJ3sc
         j+2u0TJV0Y++gNOgJvUZFiL+n+wxss4iha2YMfM9qPDEOZHPsBWxIIbBqgdsGHvPxuQx
         XFm51D5YWf1ruyAgkGneMNdTDkI1k3b0r7RgATTo8RPegvnZI0r+eDPb/lZjs/lt2bg6
         PxYSaE6dxwokcHbLP3md3i6ydxcv+SEsLSQ5QEBmmZ/1xwwgFcs2ngpaZU1jeXInXKaX
         OvvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3iYTVKJnPVyYePe29oh6CebJAR38kFJkratQoogSwVs=;
        b=l0KLPlqRoThzuBuTdK956+Clsj0M/iUWaBgFmd78QxwBSqWuUzrHQoTs8HIVsD3YRK
         am23nUVqZtEBhXVhBMU9T1MbEVxIoN1fWT6b3FLl5u07sVs+hqGecRF68xqb/eQQ9t/l
         niwwDHZ+8zqOstdaqECxBpJjUEioimGFhMBvdV/0UvHI6KcE9odDCF5Swb+PRgIGqzSC
         IatmhORvb7MhbQbwzJas9TLw+PAvNZXncyN9J7ByPsSFQjLDikrpR1IPhXW8JUc2UFZI
         6+bms17amc1RArMMznq9TmJhnlmHwE4QfS395SXuntne1lRnMvDM+ss95WTO9Np4VuMt
         /6eg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVIALfmf8sqRwV9yn0rjGZ5prdz04jjxKzC9KwHW/dSQhpoMgZM
	mrLfv4mmts6+jga4rRgaGjk=
X-Google-Smtp-Source: APXvYqxH6dx4QJAJTYcJy/SZ9yHURy/El0UkwC7qbMy7Xd7agfp49XPMNQHGm1onV0fvcaloi+yrbg==
X-Received: by 2002:a17:906:32c2:: with SMTP id k2mr5622550ejk.308.1566237852423;
        Mon, 19 Aug 2019 11:04:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:8a93:: with SMTP id j19ls4446074edj.2.gmail; Mon, 19 Aug
 2019 11:04:11 -0700 (PDT)
X-Received: by 2002:a50:c3c3:: with SMTP id i3mr26381001edf.49.1566237851613;
        Mon, 19 Aug 2019 11:04:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1566237851; cv=none;
        d=google.com; s=arc-20160816;
        b=c8N/YrGqMdn6WgatKCEpByx+M0J4Bho9ZbqIqb5HDDYIdrqK8/fggt0SL9PTPTv7UN
         ZHN7SgHTajese8YHczrw0/sHBbY05R8QuFEOX0mCfpXvW54b/O6+5cgh1Uw7JVhQF7QU
         ri5rGyjNEGLIuHzP1CONRsYCTUHYcvgbaji/r/GeMGT+JrQmTjggHCGVFYfIecORM72l
         tymASSwm+XFxFlgUfMdJwfB9zD/TGpR4m29o0F+O4qrxImTM4xMrw3Z1nXCqbKeTUZ9x
         Oytoe+7gSwe205MRLiPnmeNaG5TSFqYXGkOQKvGynkNMBYKjlhJMTCmw3Y5J3CfTiUwc
         vKdg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=tUcOXNX2zC70q2t+0okvMXMrXAEyzz9rz6/LOSIeTAk=;
        b=Duw01CAwxRg0npmphwwDsnjz+8kMRLOyCZN4yzhgle5JwyWMcyLsB698Wdv4MVVXNu
         cOFR0Z/47VqGVWom0aAzqoqOLou/9wUsaYXFy/6quR5xTw0uBw/d8Ozyt6BM51HrH1pa
         /qrS8wdNO2LhbF+3535dHOkc65ldiGzpPG7KrMbTqAJLnNkZD2+0VPKvLd1I973m1r4V
         g7dCIT+R5HxiPIs44k5AxcHrFHiev9AzyJmITePe31MYm3y8fODOqWgrYDwGkpv6D6E2
         ITo59rkHA5AmxFcZ5L4H/0n5k3mKqXQcT3yJbMCbpU5JDpaicrh1sAs+OJ3UF2ManN4P
         g6lw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Rnh0DQu+;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com. [2a00:1450:4864:20::342])
        by gmr-mx.google.com with ESMTPS id m3si615674edq.0.2019.08.19.11.04.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Aug 2019 11:04:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::342 as permitted sender) client-ip=2a00:1450:4864:20::342;
Received: by mail-wm1-x342.google.com with SMTP id l2so369301wmg.0
        for <clang-built-linux@googlegroups.com>; Mon, 19 Aug 2019 11:04:11 -0700 (PDT)
X-Received: by 2002:a05:600c:10ce:: with SMTP id l14mr21400781wmd.118.1566237851230;
 Mon, 19 Aug 2019 11:04:11 -0700 (PDT)
MIME-Version: 1.0
References: <20190812215052.71840-1-ndesaulniers@google.com> <20190812215052.71840-15-ndesaulniers@google.com>
In-Reply-To: <20190812215052.71840-15-ndesaulniers@google.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Mon, 19 Aug 2019 20:03:58 +0200
Message-ID: <CA+icZUWjJ27CHwRExsvxrnWkaEx71j8pcf7HBeZc8GWnjLcLQw@mail.gmail.com>
Subject: Re: [PATCH 15/16] include/linux/compiler.h: remove unused KENTRY macro
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: akpm@linux-foundation.org, jpoimboe@redhat.com, yhs@fb.com, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, 
	Luc Van Oostenryck <luc.vanoostenryck@gmail.com>, Alexei Starovoitov <ast@kernel.org>, 
	Daniel Borkmann <daniel@iogearbox.net>, Martin KaFai Lau <kafai@fb.com>, Song Liu <songliubraving@fb.com>, 
	linux-sparse@vger.kernel.org, linux-kernel@vger.kernel.org, 
	netdev@vger.kernel.org, bpf@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=Rnh0DQu+;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2a00:1450:4864:20::342
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

On Mon, Aug 12, 2019 at 11:53 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> This macro is not used throughout the kernel. Delete it rather than
> update the __section to be a fully spelled out
> __attribute__((__section__())) to avoid
> https://bugs.llvm.org/show_bug.cgi?id=42950.
>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>

Tested-by: Sedat Dilek <sedat.dilek@gmail.com> [ Linux v5.3-rc5 ]

Patchset "for-5.3/x86-section-name-escaping" (5 patches):

compiler_attributes.h: add note about __section
include/linux/compiler.h: remove unused KENTRY macro
include/linux: prefer __section from compiler_attributes.h
include/asm-generic: prefer __section from compiler_attributes.h
x86: prefer __section from compiler_attributes.h

Thanks.

- Sedat -

> ---
>  include/linux/compiler.h | 23 -----------------------
>  1 file changed, 23 deletions(-)
>
> diff --git a/include/linux/compiler.h b/include/linux/compiler.h
> index 5e88e7e33abe..f01c1e527f85 100644
> --- a/include/linux/compiler.h
> +++ b/include/linux/compiler.h
> @@ -136,29 +136,6 @@ void ftrace_likely_update(struct ftrace_likely_data *f, int val,
>  } while (0)
>  #endif
>
> -/*
> - * KENTRY - kernel entry point
> - * This can be used to annotate symbols (functions or data) that are used
> - * without their linker symbol being referenced explicitly. For example,
> - * interrupt vector handlers, or functions in the kernel image that are found
> - * programatically.
> - *
> - * Not required for symbols exported with EXPORT_SYMBOL, or initcalls. Those
> - * are handled in their own way (with KEEP() in linker scripts).
> - *
> - * KENTRY can be avoided if the symbols in question are marked as KEEP() in the
> - * linker script. For example an architecture could KEEP() its entire
> - * boot/exception vector code rather than annotate each function and data.
> - */
> -#ifndef KENTRY
> -# define KENTRY(sym)                                           \
> -       extern typeof(sym) sym;                                 \
> -       static const unsigned long __kentry_##sym               \
> -       __used                                                  \
> -       __section("___kentry" "+" #sym )                        \
> -       = (unsigned long)&sym;
> -#endif
> -
>  #ifndef RELOC_HIDE
>  # define RELOC_HIDE(ptr, off)                                  \
>    ({ unsigned long __ptr;                                      \
> --
> 2.23.0.rc1.153.gdeed80330f-goog
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUWjJ27CHwRExsvxrnWkaEx71j8pcf7HBeZc8GWnjLcLQw%40mail.gmail.com.
