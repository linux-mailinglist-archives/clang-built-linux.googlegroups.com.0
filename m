Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBVWOWX3AKGQENJPMCFA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53b.google.com (mail-ed1-x53b.google.com [IPv6:2a00:1450:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id DFD3F1E2AE9
	for <lists+clang-built-linux@lfdr.de>; Tue, 26 May 2020 21:00:38 +0200 (CEST)
Received: by mail-ed1-x53b.google.com with SMTP id y5sf1450651edw.19
        for <lists+clang-built-linux@lfdr.de>; Tue, 26 May 2020 12:00:38 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1590519638; cv=pass;
        d=google.com; s=arc-20160816;
        b=LkLuCrT9YHT2IYTDwX+NiOImbMhngVQzG9B+To2waeMS63SwwkAqSUh07bFJI+i18q
         DOb5aC56mko0+ZVkrIuhNEQQQrfPRVrOlUteCXWcZLm80dyvwEQQK0lRsKSWcjTLmIFQ
         8z4AqIDKAFrY+33UZrqm9BrctGAh68dpnkn3cwqANC6qkpPjT9OHU575KNE6RNFmkcm0
         urdBZjP4FT1yDM+1hJuq4Nd4eXDKctieOO0MVbrnxMxlugdLQo+cuXIsWMIEFpO0Ft5M
         /ngUtm2FcHWvbCkFoA4Y+tvkTkpNr9IsPIaT3oRyE/tuIXytLMphB5ZPbJ+OkghN6uNK
         3jZg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=/f9bcPpHsFFAzpnDWmFmROsTrlV1R1ASRtfdJWyE5LQ=;
        b=InFAYep40DXwtoBXX98JeERAQdVgleZ+mZuDkyS3qF0tRdI/uMZ6YQ6iCNpUOfPxrk
         w0d9ZVWL/sYqMGdY0hoyO7NEk/ozDYe8Bm5lTCJTyiwokyenjLTlOarbENo2Z6FDO7a/
         5y3GZ4wFfqxpQVe5WZKvBG0CGW+qxfFtnmiQGeepf5DhAnG9rtB6NUJkpQ/ThfMty0fL
         XpInU4Dnndvv7vwK+vDE5GroHcrHc1IX9OnqnOJI9Z+DTsoSwboS/fmFmXj5NviVEjD/
         DJDatXRj5jr5GmhRY6SmYwVwMlK3RN6SxPDLOq80U06YJH88vE+zXIlxBKpgtgGR/MZz
         P5jg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 217.72.192.73 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/f9bcPpHsFFAzpnDWmFmROsTrlV1R1ASRtfdJWyE5LQ=;
        b=Y125+KrKldXGgI30sSEFPTO5q/7II6vKktafx5+xUs32DlMvMMjWy62vzu51ZirWVi
         0FKtExe4KnCWTgJnctJOy2ZtfxVt3WFp4peHm6nv3SukFe24iRb82tDMcXJRRVF1GUuK
         zfkEr/RJKSRD8rsHAhT0UvToVx7ZiBE3CIZurLvmZz4dVCDBufehjFYPb7bwynxpzRwu
         TM+fZNVOav2f9ktlOsdEu9wFEfSrdO+UKmDzjsGIgfV2Ckc/tQj+9pgEyQ5r6huK2I9s
         qN2ySL9kcz93V8Pc2jRyr7EAe0JOFqBMSWb48iIeUP/3Lg30aCAPfpl0GuNvy4rcD8XM
         Uebg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/f9bcPpHsFFAzpnDWmFmROsTrlV1R1ASRtfdJWyE5LQ=;
        b=LiccopCHQIVKqLpFHMt32yTTe8MQhQ/ACEKvPybl2dOTu/WgjX5Za31HYJ+4fbcg8p
         YENR/A8s8nEsy3YB6rVWOWLKtr085BkViSUt8upqxr2oll5kTXCh/xaQSzdSwAe3+n/J
         VQ7m3U2aGHhYV2ELN7s2Tj2QQ//LWaZ7YonUIGj9+eetv8W7IPj3bI/6ZLDwHqVMo/+x
         wYxbWOjlH4dxEjG8hXFASkZSMvKqLI0TcGRYYBZTkbtLoSuNqIkBJfYeOo6PVyRApBLO
         zHoMHXfr6Buv+xcCZ61SI2xnDJfNaImO3InpvATnxcPkvlWh9cGlia1NqdA9sbOO3Hn0
         tfmA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530iKRxCiSjz6w8+CRE7Dlm+gkLqTjDOAH2TdXSYn8LqOoYf/v8K
	Kl8915LduZaUJNFlMFSOS+o=
X-Google-Smtp-Source: ABdhPJxqODQiihg7jMj3bgcuiLfWUf+gJUZAZi9V83FX1ML3BGL/ukEN56dD6MvPrQC655nF1aNDVQ==
X-Received: by 2002:a17:906:f20c:: with SMTP id gt12mr2485331ejb.550.1590519638651;
        Tue, 26 May 2020 12:00:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a50:d4dd:: with SMTP id e29ls13042959edj.2.gmail; Tue, 26
 May 2020 12:00:38 -0700 (PDT)
X-Received: by 2002:a50:81e6:: with SMTP id 93mr21858395ede.45.1590519638200;
        Tue, 26 May 2020 12:00:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1590519638; cv=none;
        d=google.com; s=arc-20160816;
        b=APDpEmtcaMYxT2Mpf8TqzQY0IZUNZSzMPFTvgdIMIyXqX33v1+C66mMx8ANEDPO7qF
         /rHa7lEUg5JMfdJwSIFcI/Nv480GqGbgayhi7Yr/L9FnKoPe68EPgevTN9sbnPYL2oxu
         gDBdTQtsLyjutN9N8IJsnfXsf4XYB9Dca+38mpfxsMHpfnLN2qgEekZanEzfoTe5D3v/
         bHVfj1hUQ/OpmrztdjUA0WSQQMuLkc5ejBmolRrmQ1eIRyGxOVuYXyo1IncQrkQPumWN
         ZasmylbZpHxYu1bXDapTR+OecBbvIOOIxi/iuBbnTT3ypmRn++BGfvcvPoKjS4ziUKda
         k81A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=6a2oZxkItd9AGUyN44aak6tkm3BpLOq0hsKo8qlhGAc=;
        b=eiy6TNL33/vQgHvHjGZRiBYz9iiuFFzFZ9114Xrg0fZMngKCO8c/DX9pFwSmRpzLAh
         ojBPUzGQaJWC1QAH/pitsMpmFw1T3FdXYw89QTYKH9I+nYoDULgtPZJAGUr7Tg08r/qN
         66BMNjZc7RkPbpR8q134FYJKrNMITEhv+oRv+nnfMq8dG9sOh+qHBNpf1sKVoop7mSU4
         z7aMbhtjO8ACs69DGmub7Sh9yDcJfpIMaZNsT7DFfx+JRoY439eC0ngaBOAxbFgDiCTT
         r29rYPAcYGLYYyUbNEOXwg8CKwMVZxSudEF8R/NTmFnBb5lw9SP2i5H9IBIxgqPLFD2X
         fXPw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 217.72.192.73 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from mout.kundenserver.de (mout.kundenserver.de. [217.72.192.73])
        by gmr-mx.google.com with ESMTPS id r4si32251edl.0.2020.05.26.12.00.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 May 2020 12:00:38 -0700 (PDT)
Received-SPF: neutral (google.com: 217.72.192.73 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=217.72.192.73;
Received: from mail-qt1-f171.google.com ([209.85.160.171]) by
 mrelayeu.kundenserver.de (mreue109 [212.227.15.145]) with ESMTPSA (Nemesis)
 id 1M7auJ-1jeVDs2H7t-0084NB; Tue, 26 May 2020 21:00:37 +0200
Received: by mail-qt1-f171.google.com with SMTP id e16so11188961qtg.0;
        Tue, 26 May 2020 12:00:37 -0700 (PDT)
X-Received: by 2002:ac8:1844:: with SMTP id n4mr300518qtk.142.1590519636182;
 Tue, 26 May 2020 12:00:36 -0700 (PDT)
MIME-Version: 1.0
References: <20200521142047.169334-1-elver@google.com> <20200521142047.169334-10-elver@google.com>
 <CAKwvOdnR7BXw_jYS5PFTuUamcwprEnZ358qhOxSu6wSSSJhxOA@mail.gmail.com>
 <CAK8P3a0RJtbVi1JMsfik=jkHCNFv+DJn_FeDg-YLW+ueQW3tNg@mail.gmail.com>
 <20200526120245.GB27166@willie-the-truck> <CAK8P3a29BNwvdN1YNzoN966BF4z1QiSxdRXTP+BzhM9H07LoYQ@mail.gmail.com>
 <CANpmjNOUdr2UG3F45=JaDa0zLwJ5ukPc1MMKujQtmYSmQnjcXg@mail.gmail.com> <20200526173312.GA30240@google.com>
In-Reply-To: <20200526173312.GA30240@google.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 26 May 2020 21:00:20 +0200
X-Gmail-Original-Message-ID: <CAK8P3a3ZawPnzmzx4q58--M1h=v4X-1GtQLiwL1=G6rDK8=Wpg@mail.gmail.com>
Message-ID: <CAK8P3a3ZawPnzmzx4q58--M1h=v4X-1GtQLiwL1=G6rDK8=Wpg@mail.gmail.com>
Subject: Re: [PATCH -tip v3 09/11] data_race: Avoid nested statement expression
To: Marco Elver <elver@google.com>
Cc: Will Deacon <will@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	"Paul E. McKenney" <paulmck@kernel.org>, Dmitry Vyukov <dvyukov@google.com>, 
	Alexander Potapenko <glider@google.com>, Andrey Konovalov <andreyknvl@google.com>, 
	kasan-dev <kasan-dev@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>, 
	Thomas Gleixner <tglx@linutronix.de>, Ingo Molnar <mingo@kernel.org>, 
	Peter Zijlstra <peterz@infradead.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, Borislav Petkov <bp@alien8.de>
Content-Type: text/plain; charset="UTF-8"
X-Provags-ID: V03:K1:uUX3wJdlDpht7240998zajIyQErWwYsmNrzsU0pa3bG+vnjnp1k
 Adi4CXZieyJbdy24+KQh0CGxya/WKwlzfL2/rCYWssdIoR1aK1D26tAISSqP4uj4Ulf2nVe
 qCeYlY2ezPFMZTRr2AWsfzAuYN8ScaXnie9q+dyaY/th5VWH4jZ21MSrGnHjvYjDBuFLhp8
 B/HWxqlKrZFzdubwo/FJw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:RtrXlh2KBTI=:ZudzcE1xW06e/bJADIsXvI
 FM8w9T+xeCEwEMeHZg1ZwWrKjBiljSxuUfFtl4HHWKSlq9elBu+ASEy+7y8eAMQE9d91tweYr
 /Wobcj5Vkz60gHrhSROTy+v6Fmbccu2O/i7ldvPdPKyjQukTEzFOEmF2KcPZXbyaPz3KBz+3h
 tbQABrUaFXXFRBBF0YYMl29c4/7d9DhPdvWwqQEt8bk1BhvL4Eb/VohAATb+ulqZWDXrOgumh
 Y8gMjM9BtLsk/v3Nftag4tGnlT7VlgifbSgOb0jwXCipNXfLWySRtIc3+68huEBvcPK1aNLOl
 XOCCv6nm0ZKcSpDuhNOLNb/4SxjdhNArPwrwExDkWz2DZ5hPUNRouXzoHjgTNek6fouSUSZ6f
 rZzcQEah0Qa4ykt6qutWy1TD2w3mr/8azGZ2KsY5/Ve9lG9Ex/PevhDblOuop8oi0NkuFJV88
 2jeHi3cFhywktDCtVIQEyYSpIcIcCnkiUqQ6Bnp5B3egn8jkGosMsgkWiwBAh8GB3yfmOTfK9
 RGiN8fywrkH3SvxClaKsyTRJctPKgNlTP+1nS8RqkMkUwyf2rGtdsPlaDYuRJrPRwibpsrISH
 yofNOVe8K3SlWBiOtHrdn0ao2efHQTeithPOzhWZ++0dZhU4VS7od3klyVFbmmfY+bNRam3lC
 aEHjlUOsdhXQ/Opkg2gHPvg7XeqBzsO0h69GE0HbpjAZaPyJHieqIFMXIwxVF/tb1Cfn/BgBC
 7lboWYea8lODWFofhUuPK6m4fXpDiO99FdfGPAfBoUwZSyjKqG9ZfQJpWQm6zXnL5Eu6ZPhWU
 M7Iy3hglWgM5myFpKzRq6vhqZoCpLdmbyRIUUXvp0ium3u+8sI=
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 217.72.192.73 is neither permitted nor denied by best guess
 record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
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

On Tue, May 26, 2020 at 7:33 PM 'Marco Elver' via Clang Built Linux
<clang-built-linux@googlegroups.com> wrote:
> On Tue, 26 May 2020, Marco Elver wrote:
> > On Tue, 26 May 2020 at 14:19, Arnd Bergmann <arnd@arndb.de> wrote:
> > Note that an 'allyesconfig' selects KASAN and not KCSAN by default.
> > But I think that's not relevant, since KCSAN-specific code was removed
> > from ONCEs. In general though, it is entirely expected that we have a
> > bit longer compile times when we have the instrumentation passes
> > enabled.
> >
> > But as you pointed out, that's irrelevant, and the significant
> > overhead is from parsing and pre-processing. FWIW, we can probably
> > optimize Clang itself a bit:
> > https://github.com/ClangBuiltLinux/linux/issues/1032#issuecomment-633712667
>
> Found that optimizing __unqual_scalar_typeof makes a noticeable
> difference. We could use C11's _Generic if the compiler supports it (and
> all supported versions of Clang certainly do).
>
> Could you verify if the below patch improves compile-times for you? E.g.
> on fs/ocfs2/journal.c I was able to get ~40% compile-time speedup.

Yes, that brings both the preprocessed size and the time to preprocess it
with clang-11 back to where it is in mainline, and close to the speed with
gcc-10 for this particular file.

I also cross-checked with gcc-4.9 and gcc-10 and found that they do see
the same increase in the preprocessor output, but it makes little difference
for preprocessing performance on gcc.

       Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a3ZawPnzmzx4q58--M1h%3Dv4X-1GtQLiwL1%3DG6rDK8%3DWpg%40mail.gmail.com.
