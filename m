Return-Path: <clang-built-linux+bncBDYJPJO25UGBB3OP3SBQMGQEQI6ZFDY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23b.google.com (mail-oi1-x23b.google.com [IPv6:2607:f8b0:4864:20::23b])
	by mail.lfdr.de (Postfix) with ESMTPS id 9ADCD35F9E8
	for <lists+clang-built-linux@lfdr.de>; Wed, 14 Apr 2021 19:35:42 +0200 (CEST)
Received: by mail-oi1-x23b.google.com with SMTP id n63-20020acaef420000b02901027a455040sf6740019oih.23
        for <lists+clang-built-linux@lfdr.de>; Wed, 14 Apr 2021 10:35:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1618421741; cv=pass;
        d=google.com; s=arc-20160816;
        b=jpK8HqcAkBQFG2WFEJW2tpUT9eEK+LPEU+ubhxFO+J7OBnV5CT65ccVsPUbYfyeVjg
         1sSuStPIQ8xwUps2BpvptJ9E6pfZlrQ91byOI8wbjKw67Cz3Qf2JPaB2TBbMzMGBJKdv
         Gu9SzTVKRiVpqEfGb7FX8bH4r1Dxaew6q5FqTj/k64O9+2rYIY20TObTDM77me4THfra
         Ve1n8Hi40hMOK4nP53ifC98ZAIRDwhsX7/0E5kB3xgy0/PlI/T/SXN3fvCrLoS6ElPZe
         xXC1+xcBxTulBpK26wo5snidqkLnYYGAYGu+ZcXXsKkaFmIvaZYQH4swIChA2tgLtdb7
         hVLg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:to:subject:message-id:date
         :from:mime-version:dkim-signature;
        bh=bbpABdbAwtVuHj2r47HzTNVbM22a8lCHQmyGrOr2nMg=;
        b=xtxPBFIRPAPBL64CETWmGaeZI4cTVNYIj9Q9QtwwyGqrWQimEyXrcOxV2T6n84HtnN
         0r7njMxvQhIuuZPNRhyQYEQsgYiDFVRb7c7s2fIHoSiNumwAfHIv5/Kr54aRHtaep2KH
         tomQVn0HTBznF1fx/7AZsO9m6UmMX5/19QklOrPldObd3obnMOWESPh4f34VxIiYEIg3
         Lpj01JLyJGLgBFC8/4aX/qiYfSY6m8E9Ge4ip9EFWcfVegOsoUXrCswjdkcWJjcn5dmb
         RF6rUs1+xe3BFi2mAvJ5f8nu2wZZAuUPWVC6Z21F4wrkn8EvuN0cohHbUUPvsWXLCQyD
         XNGA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=SiBLeUrA;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::335 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=bbpABdbAwtVuHj2r47HzTNVbM22a8lCHQmyGrOr2nMg=;
        b=EokW6IXkFOhJ8gaDYyEp/JcdStjCPdxTe3Xvsp9lncsHHNL+mKxZiN83JL7FGWdAH+
         KKeckbYn8r2ahOaPXNcfjIyaKimR8GPmOGx+D4vquTrYqZA7A2TzQSpc+gQxdVP1vMrT
         d8lgNwPJrMhc2q0fJGyV/Mif9Q023vQhOr3NGZuYNNZ4dRioKvL+U3wxWWzqjKHpUP7C
         fQBGrEi7BNwJj539wCL3BzezcKmkXXsa7NDcQyu1o8lPP3NDPTeEB92qyGTobEP0zk5h
         xCrjSzBwnVDpSRPXxtLidsx3J9g1lkwQTXmBMx8wDiJN+DiWrHOaeYWxlao6nPipUgNQ
         rTJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=bbpABdbAwtVuHj2r47HzTNVbM22a8lCHQmyGrOr2nMg=;
        b=uOwddw/jQ5ZiV6MZ86mHNuxwSKPHQtcfEuFusxdlSvvYYiIHDgFHpixBufD2dJcuIm
         bXuHV7qtUGuh0f/JspyLkSHD78SIqlvvM7BDs9CKn1e7hE0TiaOxEwwpytSKXeu3ls0o
         uQWrnlR83ls0CaZfv95GuepawszpsySlipJXuHwOQkA0/PufeEt2+K1LON4hPG65ix31
         kNMAyNl1VPvOsy2L9PAbnzn4cIoOW/DkMkPzBtwVUcV8EAaLOVlkcwAPnijG6ng80zuq
         SMtTTkqBRJa9kxRDNP9dkEbVNfMcnya7Aje+qCAOimVYwN2qvvxHuZ1cNcZf3JQt3Qr+
         2yeg==
X-Gm-Message-State: AOAM530mPsgeeb6ssTmudXBZNLDPKAOcWOzFxRgtgRvhaGdMA5dIEWD+
	qDDKSwDObD/Xt534PzthNAw=
X-Google-Smtp-Source: ABdhPJwK67mjryfVDZYKs0cK4pSHdEoXGyxWcQk/gYqa4rAKT2+/TdEIvXoP+IBz1MaMV+0a+kvsOQ==
X-Received: by 2002:aca:bb0b:: with SMTP id l11mr3196668oif.146.1618421741272;
        Wed, 14 Apr 2021 10:35:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a4a:ab4a:: with SMTP id j10ls67768oon.3.gmail; Wed, 14 Apr
 2021 10:35:41 -0700 (PDT)
X-Received: by 2002:a4a:e797:: with SMTP id x23mr25861080oov.24.1618421740942;
        Wed, 14 Apr 2021 10:35:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618421740; cv=none;
        d=google.com; s=arc-20160816;
        b=n6xwmAQ1s1Y9Qwwk/+zlab/GNk3uyqgKhMXRkQBY6SoYRlK+0xKXgj/ECthR5myO0K
         yIgRqUzJhtwsvGB50J9bT63l3bpE4Sk0pfDk6Zc5zePwxdR3YI7gKZK8VInoHWVxXzdJ
         ABxGI3moAdbhQqIum0HQi525/V23pnVwA0rmgKPo2nzQccmTbNp4I67grrJC5fzNGxpq
         hrmQrx4qsQ//un1QpN/Z2rIREkR2CfNcFuF7oCOAHp0gUcqPSv8uHB4/hlMC0V2VpKjM
         rw5EzYb1bWKAVSZ1iLkrFoBGUkSoHk/g22KBJSU9e6FGwL9QH4WsnmRA2uKJ9VPsQhC/
         UEFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=Nx/dx7WZDEl1wQipwK89JnSjNUEXTDzIPfEmouUq/1Q=;
        b=plUWMz6OhF96bzGMMeIQ8xX+YDHcONmdBF+OjbDKtoz+bXZosp5mE3VvHByaL3nxPH
         cCTHthQmGQ+NCCakdiikRm+KRST4UMj5ME3fKD7x9p8uJwffzwJOik3kVImcYTWX8XJJ
         tcaSXDvsTkeFHp9AmEl8eLiKe1tkGnzzeLBLaQx8BBXCHin3bey7WEW2Q4oqRYhAOGJO
         JyN7ze3uLPdrI1COwtZXIWF4djRD6LYb7OKYD/8iF5SN7Z87clDsptxpcGGQJwsJmof+
         zmudbgP1vIVNr20jGXD6CheKq5tMjyrrMrzdyCaN0OreTpdtNW2JjLdaDHq9a2N1mq5b
         Ya2A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=SiBLeUrA;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::335 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ot1-x335.google.com (mail-ot1-x335.google.com. [2607:f8b0:4864:20::335])
        by gmr-mx.google.com with ESMTPS id x38si28681otr.3.2021.04.14.10.35.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Apr 2021 10:35:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::335 as permitted sender) client-ip=2607:f8b0:4864:20::335;
Received: by mail-ot1-x335.google.com with SMTP id t17-20020a9d77510000b0290287a5143b41so8836588otl.11
        for <clang-built-linux@googlegroups.com>; Wed, 14 Apr 2021 10:35:40 -0700 (PDT)
X-Received: by 2002:a9d:449:: with SMTP id 67mr24526169otc.333.1618421739934;
 Wed, 14 Apr 2021 10:35:39 -0700 (PDT)
MIME-Version: 1.0
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 14 Apr 2021 10:35:28 -0700
Message-ID: <CAKwvOd=Cv6z7idDeO_Equrh8jm_9zZua3mP_BN6xwKJuGTnnuQ@mail.gmail.com>
Subject: Reducing code size with LLVM Machine Outliner on 32-bit Arm targets
To: clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=SiBLeUrA;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::335
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

https://www.linaro.org/blog/reducing-code-size-with-llvm-machine-outliner-on-32-bit-arm-targets/

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DCv6z7idDeO_Equrh8jm_9zZua3mP_BN6xwKJuGTnnuQ%40mail.gmail.com.
