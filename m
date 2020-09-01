Return-Path: <clang-built-linux+bncBDHYDDNWVUNRBMNEXH5AKGQEVF7XDYQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83b.google.com (mail-qt1-x83b.google.com [IPv6:2607:f8b0:4864:20::83b])
	by mail.lfdr.de (Postfix) with ESMTPS id F212A258F81
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Sep 2020 15:52:50 +0200 (CEST)
Received: by mail-qt1-x83b.google.com with SMTP id q19sf1066869qtp.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 01 Sep 2020 06:52:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1598968370; cv=pass;
        d=google.com; s=arc-20160816;
        b=RYm7DmS+qPdNESOPW7+u1Jr7iZY6X6RshIIkrtP2VObSfsk9bUhVhxLavKb9ty4ter
         CaBQW07IJIVt0DEeS8b2mR6yDc328O/Vnxoaobf5/EyGMCk8CIQsOAA48cw6cxKsi6DV
         Lav82GpR5KOt0MoD+NOawN0R9qxu8H7YshthE78lwKoFyn4FT/VPNZdMfh6Dmivwry/J
         lsbZ0pdV7eY2HgqtZbLasVVpvhHeYR5JQmYrAxAkRx5ZZrbSEDhk/fy0A2dFseEPLK8r
         jUdT+SKZx83N0ZpyiGH9uFC6ZlU3QarU3H6WMH4Tyy9Znv7eiOMAgwt8sncG9KCBsPFC
         Nsaw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=IDDGh3IaXRzs57kwlKywp4AqQvQmBkfxoxyxrapNt1M=;
        b=hwKJJ1XNP/yGRd4xSqS5zqAVbopa5hLbarcRUSEwfjR6IA/qo3XP6Q8UpAM32l4YtK
         /qGHYun3ELqWqosHHuNza67Vq8f+uli7mUx5GCNaqPhouq/eECYLCP4aqP8v4VdJkXAm
         +gP6lsuFntwlWXtzZG/pOo88rVoWv4qVOf8LVAGr++K+bSP1LFBGsmVBbqmhBvIgFwr/
         ZM3U8E55MKcneAuxPaT/XH9H4g+lBrM1iupg30z8IB5GYQ2fh+NY+5H3gPXo4P6OfMQw
         In2xvTlNT44oRYJGuOYcbdqo1lFcJYOnh3MDgE8EW85TjXz9KrID+tFhSEVVHfTSrzgQ
         MFmQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MraCdizk;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=IDDGh3IaXRzs57kwlKywp4AqQvQmBkfxoxyxrapNt1M=;
        b=RHDeI8zN0SF3sSoTl+6U7WOG7aDURY+oYkGZ8nWESyxlrY8wOQdQqNSZT8G1QdEDe9
         B5CA2KyQ6nJ2qbiwtdzpGN0VBwkGDeaQ2fBqjqXR41gAqTSvEjMlKJCgmAIugvnHSpI4
         qremjx88NqLPB/sppfi5c28X2SiixEwFKk5S0IL43++jhkqXfKoEmyRvf8OIbYahGr76
         +WHzdfn0SwKeDmkiKCq+B7SugNApKKvZJITUPRb5u57arTJ28ndZ5FmkwayyfoXhM0aU
         P7iJ4CXLvy8+UK30Oyd0PER7pCVoyfz1QKIS1SEQw7BRXa70vBNXuZwuoYJq7owGUfBS
         3TCA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IDDGh3IaXRzs57kwlKywp4AqQvQmBkfxoxyxrapNt1M=;
        b=doV9ckoTExOrnPC53C1K1dRPEVNh0P7QWW9qeX1l0AGEmk6EYCrUJ0Yet853lo3AE2
         HRqyM+pqXu+ekPBgUsq85a2KnzmKcK3LCdLhIXsu+JM0RSUgxs8ckAyJEAJLjbGVIszT
         IwMGcOzs6+nkdhp+/WyPzEjt0uor/NQrnpEohuT0HkuQS38G469bfsy4m7PitfaryI8C
         TgOXAKvjvVYl6eDM6wA/AcKd68Lk8R3O8oA4Tci03rZxs5kv8Bcme7Mbos3yRLyAZQpc
         E8ka06RJowNhQk/EXB1+/ijfujgq0z1Vs+wi3K+yznTicUdva9Ym28LlcWeNvwuQ0Yqu
         egaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to
         :reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IDDGh3IaXRzs57kwlKywp4AqQvQmBkfxoxyxrapNt1M=;
        b=ckCag0FJWx82Ic4Y3SlkXRtyA2ySajIes33rOo4h0bSU1gpYNTuPZhBsrY2UsTz5Ck
         4DwDzzHhEBBH4Z7bcBYgRbQU1cZ4+L9NPQC4Ordy4WvDr5GVXYIXY1afpJ/cXZUdwtUs
         1cYxJbb6DdVLPthEorcPL4VlKmiezHcCH7HMIWcUoSH7EP0JIeVjDcCLD0uU3u5zSEWC
         /oNsnsKQEUtoUU3Mv5CYCUF0YTpqvTNI2vqqUMOltUd4lB/M3P8uXp7QWnZ0ysF6HesJ
         P/jBbEqRRlvN1fccXquI/N4mMRvW7voDWxmKU4fBw5F5/YHQ9ltWALLdOKFelxPx4sb/
         kXXQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533V3NivyDQfiXhXtizPs1ii4GTDErYmcXV745L+kQe5yAAtv80j
	hT5sGzi/41ZHoPA2n9ugFoI=
X-Google-Smtp-Source: ABdhPJx55v15O2ZdL+5NkQAPYirvAgTzZFotCDjsFIgV5pXH+2aO0Tan71o/NQjepV8pEdIHQ8EddQ==
X-Received: by 2002:a0c:fece:: with SMTP id z14mr2128105qvs.66.1598968369877;
        Tue, 01 Sep 2020 06:52:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:c992:: with SMTP id b18ls343416qvk.0.gmail; Tue, 01 Sep
 2020 06:52:49 -0700 (PDT)
X-Received: by 2002:a0c:f84b:: with SMTP id g11mr2086874qvo.184.1598968369446;
        Tue, 01 Sep 2020 06:52:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1598968369; cv=none;
        d=google.com; s=arc-20160816;
        b=yjpU78G/pcgzMHavVxJR3w/kEpNWXEJveoJ00ZJ69vzfxLAX/qzPUvd7lTSBzRhJjz
         lTVjnULy0SmnTxULkmVZzs7zPZQeiAsp2hdCLMnUH6D9elmqRbUnlTO2z2XpT+r7wI3V
         nT0r4ZO1JNkDSuL/JkgSj6Sw31+eIzzcz8jpRnSJr1C8bv+x9XNf0wTQayl6QfmkbSOD
         nKwUxFCsLsDFZ1eSmQYlZAr3l3os0essQV1t0cLGHEWSk5QKpzrfx+Viq4xTlZ4IXy1I
         ojOpYboK86IeAy3EkGlyB5INXS2dxtFMhI9uV+gVgiREEVZkD1pJizKGuYk9hwCh5hLp
         Q7NQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:reply-to:in-reply-to:references
         :mime-version:dkim-signature;
        bh=pkRC6/s6w2oZV1qLgEcpoMSAmZ1wqZR3yDgSpCU5NVw=;
        b=sAltLqFz9tIUVZ31oj4jAkh+1baC0c8k+6Cq+WOY6guAMTnDi4aKpaaakqWo6Fj1bG
         vVQRRATeuGsMC3rkKQJvXwDYayflysRc5dkQIhNp9kXmMMPU261GPpfj303ae6V/Y1YB
         lCKVE5YaXa72TLFUFBCaKmVJZ2ac1JM8ITfRHfWr0EMwYUgJ+3VWPgdlvIvidAl5C027
         Kjy+d6Gr8pGF3gwtkuG7guaES3fRbpihDFN0xBg10ko4c7fjQKsw5bBnEhNWzob1wCop
         UEeh9jAK9rt/nIBNJvP6EmrSlMCkd8zew51rF9LV6BzIxqWAtvLDpE8R0Dig3DCjqYeD
         cTfw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MraCdizk;
       spf=pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) smtp.mailfrom=sedat.dilek@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-oi1-x242.google.com (mail-oi1-x242.google.com. [2607:f8b0:4864:20::242])
        by gmr-mx.google.com with ESMTPS id n26si84275qkg.5.2020.09.01.06.52.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Sep 2020 06:52:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::242 as permitted sender) client-ip=2607:f8b0:4864:20::242;
Received: by mail-oi1-x242.google.com with SMTP id j21so1185122oii.10
        for <clang-built-linux@googlegroups.com>; Tue, 01 Sep 2020 06:52:49 -0700 (PDT)
X-Received: by 2002:aca:ec50:: with SMTP id k77mr1151999oih.35.1598968369208;
 Tue, 01 Sep 2020 06:52:49 -0700 (PDT)
MIME-Version: 1.0
References: <20200901001821.1126189-1-ndesaulniers@google.com> <20200901001821.1126189-8-ndesaulniers@google.com>
In-Reply-To: <20200901001821.1126189-8-ndesaulniers@google.com>
Reply-To: sedat.dilek@gmail.com
From: Sedat Dilek <sedat.dilek@gmail.com>
Date: Tue, 1 Sep 2020 15:52:36 +0200
Message-ID: <CA+icZUXuygguvpk18TzXCWS4JW92+o_tsbXuBdhtmPjKj7wPWw@mail.gmail.com>
Subject: Re: [PATCH v2 7/7] compiler-gcc: improve version error
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Andrew Morton <akpm@linux-foundation.org>, Kees Cook <keescook@chromium.org>, 
	Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, Marco Elver <elver@google.com>, 
	Andrey Konovalov <andreyknvl@google.com>, Masahiro Yamada <masahiroy@kernel.org>, 
	Clang-Built-Linux ML <clang-built-linux@googlegroups.com>, Daniel Borkmann <daniel@iogearbox.net>, 
	Alexei Starovoitov <ast@kernel.org>, Will Deacon <will@kernel.org>, 
	Vincenzo Frascino <vincenzo.frascino@arm.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: sedat.dilek@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=MraCdizk;       spf=pass
 (google.com: domain of sedat.dilek@gmail.com designates 2607:f8b0:4864:20::242
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

On Tue, Sep 1, 2020 at 2:18 AM Nick Desaulniers <ndesaulniers@google.com> wrote:
>
> As Kees suggests, do so provides developers with two useful pieces of
> information:
> - The kernel build was attempting to use GCC.
>   (Maybe they accidentally poked the wrong configs in a CI.)
> - They need 4.9 or better.
>   ("Upgrade to what version?" doesn't need to be dug out of documentation,
>    headers, etc.)
>
> Suggested-by: Kees Cook <keescook@chromium.org>
> Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>

Reviewed-by: Sedat Dilek <sedat.dilek@gmail.com>
Tested-by: Sedat Dilek <sedat.dilek@gmail.com>

- Sedat -

> ---
>  include/linux/compiler-gcc.h | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/include/linux/compiler-gcc.h b/include/linux/compiler-gcc.h
> index 7a3769040d7d..d1e3c6896b71 100644
> --- a/include/linux/compiler-gcc.h
> +++ b/include/linux/compiler-gcc.h
> @@ -12,7 +12,7 @@
>
>  /* https://gcc.gnu.org/bugzilla/show_bug.cgi?id=58145 */
>  #if GCC_VERSION < 40900
> -# error Sorry, your compiler is too old - please upgrade it.
> +# error Sorry, your version of GCC is too old - please use 4.9 or newer.
>  #endif
>
>  /* Optimization barrier */
> --
> 2.28.0.402.g5ffc5be6b7-goog
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CA%2BicZUXuygguvpk18TzXCWS4JW92%2Bo_tsbXuBdhtmPjKj7wPWw%40mail.gmail.com.
