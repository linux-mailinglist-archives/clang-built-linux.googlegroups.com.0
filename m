Return-Path: <clang-built-linux+bncBDRZHGH43YJRBN6UW2CQMGQE3KDX5KY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x238.google.com (mail-oi1-x238.google.com [IPv6:2607:f8b0:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id 47412390E0F
	for <lists+clang-built-linux@lfdr.de>; Wed, 26 May 2021 03:54:01 +0200 (CEST)
Received: by mail-oi1-x238.google.com with SMTP id n5-20020a05680803a5b02901f0c9814049sf3445oie.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 25 May 2021 18:54:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1621994040; cv=pass;
        d=google.com; s=arc-20160816;
        b=Wnc2CXznfxi29D+9nXNXhkcP0cLdjXl03sC80tWF3XNh14I8d3yQUSWICnK/IptxpG
         0G11RtX8OdVoPATpblsuoiAniOir9TVjCl8e8npN7PnXLOXQqbOlWXLU1mgki/XSXzEY
         whFFNyEgHptCTguj+ocv2Dv7iXCNs2PXp7oFJ1LKyylKPLhLO5+fiWvLfWLYJeVlROFQ
         yXsTdJTRGZ8BmQlY3LhzG6b3GoVBdBmcI13FZlInXLxNlyu94UT/FVbGBkPPsd+bT+qy
         ob8UgwTjoEw47BHaatL1+Fc6nUdSH4IKnr0bZwi7c6IteYk40l719rdZVaYt9bYgPWE2
         oF/A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=iiPM4rSkDKSCEKttknkKy5KNSWO0coJq1FyPxJ9gufs=;
        b=n5JNdQW+P5y7kGX4n0Rx2u487EiBjP+i67BoHLfpyxYTl1a72qzjJnQC0SLavMjqyL
         6eyl+0hTxy5ZUrX4Qv1z4ZPPb0EBMGCpyUT2JZg1oT9aLb8ja5NgFDJFOw1iZi/L/gxN
         DOyyNBLg/OQzJFHWZe34r+Vgcf8F8Fwf6iFGpL3SCgG60rShpxpcIAPIAvZ0pRt/7cIq
         ul+ahs10Ug8uXKxpejRCj2E94UQY6MGGeEszCfpebUMaBMnK7Sofid1FPwlG7UWg0gKf
         5yylZzKQvRGZURPbShdHCoZTwsjjw1n4foNzsPrVWp2k4I60uybjCdVFTumM+PuH9nGE
         zRFA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TDHeF7nt;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b32 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iiPM4rSkDKSCEKttknkKy5KNSWO0coJq1FyPxJ9gufs=;
        b=HdpyY4CwxzOR81VHOvYDyiTCBYyxztbKUjcB79Z/N/PDUDtEttQlPwO8BnMmHZ2+iT
         3orNX7BIO+M/7j+DfPu9QK2Eny9OQjqTH4EXagd20TWGpk6UYULy8FIBWGKmxJJdu2tY
         yfnlKrwry3xOCDqz5c2DQdsJ31m8hA+Bu0oIxGaxroUJQSwKkULJ1VwCxxb9DLana7/O
         U8NYTLTo7zudelxnDGabA9ZVD1nCmYJF3jtmunjGcg37ynC3mIDXnhgF/Dpl04YTm05H
         zKNhDMkefti2pM1RwqBDbvxkDePvtwNrVcgybidMQKfTXamDjxICY07T9Sr1wxOW4zAd
         3W+A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iiPM4rSkDKSCEKttknkKy5KNSWO0coJq1FyPxJ9gufs=;
        b=cN7ik1sD4eY/ucF4DQY/OsOXoY8HHgZESZrkXftaDGa5uEsNKcCebjU52oe/5WZtOX
         PuTuxcymguYINBR3Slyb1bzRlNYVEtbe1dn4hhI/udpvsO2p3SUCso9zptq5WJIqWTrA
         A7Vc6vq2T6RuoSR6R5XJ5VjSY1fHpUOXS/g19I4kwpvo4BLDt2tyfTUMARShMg9NggwC
         HXhgdIxJL4FHZSP45aKA5k+P5CVKb9x6kb04IytMwbSlUnBoOpcNQV5I9ku4aTJZHc0P
         LcuZjouTfuMU+6gC0cApD3h6SofIdCODGn6qLXG8yxrqD2Ww+G4weKHSIi1jyfxoJEFW
         1ulg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iiPM4rSkDKSCEKttknkKy5KNSWO0coJq1FyPxJ9gufs=;
        b=qc9IqfEExPXdeAZ5Sbg6yKbJUA1QOBGc5C7VQFOnyNXgl3nUijNY9XUQE2L8xMqAia
         nqTom7lKdUYXTLdDHlSqNb/xMFHQ8dKfxhmw32+0MVwt8muP3RcBNCoxB8OQgWooG2YL
         dZoIMYYsNP7hMKBTvuyEFSDtMjW54cJAuySEwkFGHBQ8iwM5LeXEWsRapCWtpkVPA6P6
         yn9Kq4TxfWYUUr8QbIzpZw+NOxToRf1ktlC8cyNVv6CS0vafhsYVbRkhY4dAD9p74wi3
         iFJ7A5ywjpmabcoJfwfG3zLOddmuV2zP4vciXX6we3+6le3TvnlJg3gP6R+ywoau5uL1
         GgkA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533V0XQ4A/SYwz2lQO86qlcmNOKKpRDp+eR/fRzB7IezlmNeEkIy
	cx1QbsiZNx6PyYqSORtGbDQ=
X-Google-Smtp-Source: ABdhPJwtbMN5RGopLlbq6zzKMJLBn8ElgPP942EiGALCfJp2gBcvcYFpiXJxc1lRhqb27MCXr2gxSQ==
X-Received: by 2002:aca:b885:: with SMTP id i127mr338886oif.2.1621994039821;
        Tue, 25 May 2021 18:53:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:168c:: with SMTP id k12ls2798485otr.8.gmail; Tue,
 25 May 2021 18:53:59 -0700 (PDT)
X-Received: by 2002:a9d:67c5:: with SMTP id c5mr459236otn.50.1621994039382;
        Tue, 25 May 2021 18:53:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1621994039; cv=none;
        d=google.com; s=arc-20160816;
        b=H4g1fqoMCXeUzBSwLyqgFv2BY4r+GiWqf8ZH2/mbK+Ci8EUJTs1V3w6qD9E42D3eyZ
         JBKqMiiL8UWd8SQYItJ3L+cbNwcA83JtcJO2DKK5WJJXFS9HwsN+NUDNUt1VXFXYJ5I7
         +wtOmHXRUu9EpLm+9qPAI4DV3hA7TPNa6IrUaCpC4VsRaiM3qkggx9L1WtwisGcN1IDj
         rvROnVc2mQeg8pQovRhhm/Q36GF7ThfN1bzT47YjB+110xVnZ0aLVblsTOO72GWCAbFG
         VZSa+hQPHCdpisHXGEZpafaitr6YEoai97FXC8BJI4sVZ8bG5kVM7YOuUUrkExx81sMx
         XeAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=EvrXRyjoBBrQMHRw50pC/sl/5hocosZ/le3L6XN/5G0=;
        b=zEn9hRF1JYu5mSwmfR+Ri6e6vRC6eqJwR7/J+YXISsXqtj/+RHuAd+s9OkPVqpitRc
         B3zv52ENYtoty76yH3jqf1F7YLHtaIKT0XMNR+0+aBKnFDG/qcIPLOJZvMcogi76R0hC
         r/zNOjc+hXuPEzaQ3K5BkWgY+AQYHwXUbKn5iruITObezzXnIXCHfW9tE4MRUIFafQY1
         Fvzs135UqtaKxo3nOt8VT1t3CjzSfVo7acohDShIKmDyg/XPv2W840xETqInzv2L2atm
         owov/asfPbvfpWGwJRA4ln0KwintjWTQxnE+pnG1gaZAdAZZh5k5FQJhXL3HPonly+c/
         R+Rg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TDHeF7nt;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b32 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb32.google.com (mail-yb1-xb32.google.com. [2607:f8b0:4864:20::b32])
        by gmr-mx.google.com with ESMTPS id b17si2971616ooq.2.2021.05.25.18.53.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 May 2021 18:53:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2607:f8b0:4864:20::b32 as permitted sender) client-ip=2607:f8b0:4864:20::b32;
Received: by mail-yb1-xb32.google.com with SMTP id r8so45758216ybb.9
        for <clang-built-linux@googlegroups.com>; Tue, 25 May 2021 18:53:59 -0700 (PDT)
X-Received: by 2002:a25:a448:: with SMTP id f66mr44585807ybi.135.1621994039003;
 Tue, 25 May 2021 18:53:59 -0700 (PDT)
MIME-Version: 1.0
References: <20210525175819.699786-1-elver@google.com> <CANiq72krX9PU14wFsQyW_CJEjTS-TT8wyhBVZZbC132Gz5XO-Q@mail.gmail.com>
 <CANpmjNPGUAv-d3yEusyF11ip0zEdht7eMGi4pSoQsRYns-MvJA@mail.gmail.com>
In-Reply-To: <CANpmjNPGUAv-d3yEusyF11ip0zEdht7eMGi4pSoQsRYns-MvJA@mail.gmail.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Wed, 26 May 2021 03:53:48 +0200
Message-ID: <CANiq72kCkej_ONwSWjRHWLVrr+g0BZygAUAQVx+FQf7DEdg3cQ@mail.gmail.com>
Subject: Re: [PATCH] kcov: add __no_sanitize_coverage to fix noinstr for all architectures
To: Marco Elver <elver@google.com>
Cc: linux-kernel <linux-kernel@vger.kernel.org>, Nathan Chancellor <nathan@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Miguel Ojeda <ojeda@kernel.org>, 
	Kees Cook <keescook@chromium.org>, Andrew Morton <akpm@linux-foundation.org>, 
	Will Deacon <will@kernel.org>, Ard Biesheuvel <ardb@kernel.org>, 
	Luc Van Oostenryck <luc.vanoostenryck@gmail.com>, Arvind Sankar <nivedita@alum.mit.edu>, 
	Masahiro Yamada <masahiroy@kernel.org>, Peter Zijlstra <peterz@infradead.org>, 
	Sami Tolvanen <samitolvanen@google.com>, Arnd Bergmann <arnd@arndb.de>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Dmitry Vyukov <dvyukov@google.com>, 
	Mark Rutland <mark.rutland@arm.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=TDHeF7nt;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2607:f8b0:4864:20::b32 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
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

On Tue, May 25, 2021 at 9:13 PM Marco Elver <elver@google.com> wrote:
>
> Long story short: this is not fixable without more Clang changes. The
> only way to do it without a version check would be to introduce
> no_sanitize_coverage attr to Clang, which we probably shouldn't do,
> and I didn't want to fight it. ;-)

I am not sure I followed why you would not want to support querying
for the attributes (if they are intended to be used separately).

But regardless of that, why not the feature flag at least then, to be
consistent with the others?

Going back to version checks seems bad -- they should be reserved for
e.g. known broken versions and things like that. New compiler features
should come with new feature flags...

In fact, for Clang, I do not see any version checks in code at the
moment, so this would be the first :(

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72kCkej_ONwSWjRHWLVrr%2Bg0BZygAUAQVx%2BFQf7DEdg3cQ%40mail.gmail.com.
