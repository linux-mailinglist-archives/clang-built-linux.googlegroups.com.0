Return-Path: <clang-built-linux+bncBC3ZPIWN3EFBBJXKSGEAMGQEUDZHHXA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43f.google.com (mail-wr1-x43f.google.com [IPv6:2a00:1450:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A00E3DC075
	for <lists+clang-built-linux@lfdr.de>; Fri, 30 Jul 2021 23:54:47 +0200 (CEST)
Received: by mail-wr1-x43f.google.com with SMTP id d13-20020adfc3cd0000b02901531b0b7c89sf3653764wrg.23
        for <lists+clang-built-linux@lfdr.de>; Fri, 30 Jul 2021 14:54:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1627682087; cv=pass;
        d=google.com; s=arc-20160816;
        b=jHN72SqVHfKVJDR27S/hxkjptBxzxkHVeogldRLIn3oVuDSkjkymTaiK2tO/G5SdXD
         eu4PEG4lOgTH0HGqbdkL9iT/kUGlQEGQJMihb4gARxbwoGqbqryZxZ0QECrfZHnOYVNt
         Ik1BipbhXrnN+4i7SsDZCK91HImx+ERfa6VB7YeMKAQgqlF9VYBgRNH+ppq8n7Vd8Fxh
         pArru6ygmyztTF2VZypjt8cz2Ri5kw6rzciRuMFzmfwhea3+h3FzgUVP/cb6SNtcVtiM
         7NV1PoGe6M1cUdYq/k40MX2u/+3z2XTCyHsoU1BUOw6B0V9oqAOV/tHqRY9NK2GxRoKe
         0WAg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=LFvRAl2mt0pKISpIf3ZxdLocYVDVnbSqSYwRYuWXyrQ=;
        b=rHrRkZXauWFE1h0UbEOwXwh5ItBTa1i7rY9WqejfTGktHDaEQUc+eMn18yVGR1iO7L
         Cqib1KwHA6+QAtERpO+zgCPYPaJYjk6upnC6xc3+Re8T8PeU4QiNB7ZH/EUnA5+JzHAG
         MYA3KH7XnSfF85b+W3/MV9WpaSUtkztnXSbMEgLmVS84PdZvPJAOWTCO6s3vKYbIhvYv
         mLzobmpnuu+fHJolZQjCH76+3e/w/FXWL8hqjIBAtd+7b0FDFyJtpQciHmC81JCLdYCJ
         1JsGeXzKI3IurYE9eZ/0iopl+UQQjVYbcBW2Zewew9mMzP1w83eFkI4oo4aIrzeykl81
         oB4A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b=e3gD2omh;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::630 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LFvRAl2mt0pKISpIf3ZxdLocYVDVnbSqSYwRYuWXyrQ=;
        b=PBDVcKeY8JCwSUeNX34NFMWcq2k1RK/bxh53WdouXCprJC4+MLSjYJjflRkG/jIJQa
         U7ePHsuiRlcyOoC6IRlyN4a34VNakXhyZtb0KnwwBBmUDtL+wOobvjuvai3R+RmRjT+C
         oPeqNrv6jnBTM7ugtbGzI6SLBuzSWLQBMw05vh18+SA+FT6bI4Q2ZsPcxSLz0CmamPJ7
         FhzCK32f7e2ZMSMZ5xkO0bTzngF69zh32I8KmtHyWjnALdiGJu+CwXF5OzaEMPfQUzGU
         /NRTzONd50AySaKOYde2keD4fCp4n8dE081eDGJvFd21BIpEIx8CVwfZpMhPUuNz2TAc
         DdMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=LFvRAl2mt0pKISpIf3ZxdLocYVDVnbSqSYwRYuWXyrQ=;
        b=uMyAHz7T6HCritcNd3EVj6aovSqTHiy3SDFEUG8p7amvoThij8TME5MlzvD7Y4t5wG
         VoSJXLS05LNgYgb+h6989wCjZ+MebcekdQyilq9o5tQ/uMok7r74T9K0msQaTTMDO2Pb
         +/nKVVnPY9aeJNHeDfaaggJkVTyljycQt9e07wrTzxy7viad/mODoBUR5RJzHveEUpMx
         qcLwnt3BNpHl8nB9t7ZoBkyNrI66/Xy02W+2BAQ0gKhpAwh7Bi378w/OX9iP1ZjuZINj
         zLHcWg1VawI2F04c4ANgzJQi1wS/rvnS7b6vwHh231nhkpAk+rWSyMYs6A9cZ/Yj1rqN
         vDOw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531QEjHO5u6SBqnuYEBervM9mLMJVImgBPG7ciP/sYLDtqORbfwe
	wKfO3K04qcyiAytn7Sp3kvc=
X-Google-Smtp-Source: ABdhPJzibXSWw42LMqqiiVAd7wpsCZfcW2MFuitGZMiW2XBcJrUry8ojMdamoXnpEcgrxgu8224jgg==
X-Received: by 2002:a05:600c:4f44:: with SMTP id m4mr5198704wmq.77.1627682087113;
        Fri, 30 Jul 2021 14:54:47 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:600c:198b:: with SMTP id t11ls1647451wmq.2.gmail; Fri,
 30 Jul 2021 14:54:46 -0700 (PDT)
X-Received: by 2002:a1c:116:: with SMTP id 22mr5125897wmb.118.1627682086129;
        Fri, 30 Jul 2021 14:54:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1627682086; cv=none;
        d=google.com; s=arc-20160816;
        b=XPAE457wkWRfzowR+vSBR6NcbA5l/B+91j5P36T3IJv4yvwq8Mpc9Cy2JiLmzgqCfR
         60zbdJqsFVAk047687QjrJq47mJx5ZpWfQgS6CkHyEyPXo+cpVkDn0R0gQSOEtO8FqFP
         XS9V1wboiGKXQBbsItZYQWXpwKCVSI9sAPM9VcfBouvHPDdlhi/0UXTz11xx2PyQsw47
         eblEeIpiBFNtD1HBocim5i1dXfXd43UUyL/FmKHIyXiJ4eJURnNVU6ZW6PFXqsRULR1p
         0Jkz286MG2uf/sUOud+dDxZ1avSRSWi6pcuqTZTDFHycp0jygGSmGQKp3+34Up1X/9n6
         eVwQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=7aKMKn982p52Fvo+RafbN4nbzmOZcaHi43o8L8qnY+4=;
        b=Jxu2o7TGKR1SWRd53m0QTXk6DGvM/4kVxclbyGvtgfQeh4Bh3KKgP9JeZsYVtFcHOx
         SzmC5Ek7V8TgZ3DmnIGdAHKyAo/zKAJsLNLWn502J7pKRnBfVhe4xKGPoHlyuRQEDi8U
         m160yBhgIDFU0NYxxGHva9QAH2LDwRyJP6yQLC7srsAHrq6LZ893N1bnPQ1aZHtSRzfx
         S7pdbF+eeRNRpg3WvUvt0jNT7Spz52959137eZtTKGXbaZNY5y7NrwotUi5GrckHcI2h
         LkKqESP5vxj5oPP+kA0M6ZJOX0/X5pFbrvrThYd9YNh72RXN7SZJO6Alr7NDWAkElRId
         QuWg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b=e3gD2omh;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::630 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com. [2a00:1450:4864:20::630])
        by gmr-mx.google.com with ESMTPS id x8si20146wru.4.2021.07.30.14.54.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Jul 2021 14:54:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::630 as permitted sender) client-ip=2a00:1450:4864:20::630;
Received: by mail-ej1-x630.google.com with SMTP id qk33so19225286ejc.12
        for <clang-built-linux@googlegroups.com>; Fri, 30 Jul 2021 14:54:46 -0700 (PDT)
X-Received: by 2002:a17:906:11ca:: with SMTP id o10mr4729030eja.21.1627682085609;
        Fri, 30 Jul 2021 14:54:45 -0700 (PDT)
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com. [209.85.221.46])
        by smtp.gmail.com with ESMTPSA id i11sm1220027eds.72.2021.07.30.14.54.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 30 Jul 2021 14:54:44 -0700 (PDT)
Received: by mail-wr1-f46.google.com with SMTP id n12so13046938wrr.2
        for <clang-built-linux@googlegroups.com>; Fri, 30 Jul 2021 14:54:42 -0700 (PDT)
X-Received: by 2002:a19:c3c1:: with SMTP id t184mr3428280lff.41.1627682071251;
 Fri, 30 Jul 2021 14:54:31 -0700 (PDT)
MIME-Version: 1.0
References: <20210730201701.3146910-1-ndesaulniers@google.com> <20210730201701.3146910-2-ndesaulniers@google.com>
In-Reply-To: <20210730201701.3146910-2-ndesaulniers@google.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Fri, 30 Jul 2021 14:54:15 -0700
X-Gmail-Original-Message-ID: <CAHk-=wgh_gk17OoVjXSiuT+7=oYDUKjYGWibd+tCfQRpYJ7cGA@mail.gmail.com>
Message-ID: <CAHk-=wgh_gk17OoVjXSiuT+7=oYDUKjYGWibd+tCfQRpYJ7cGA@mail.gmail.com>
Subject: Re: [PATCH v4 1/2] Makefile: infer --target from ARCH for CC=clang
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Miguel Ojeda <ojeda@kernel.org>, 
	Fangrui Song <maskray@google.com>, Michal Marek <michal.lkml@markovi.net>, 
	Arnd Bergmann <arnd@kernel.org>, Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Geert Uytterhoeven <geert@linux-m68k.org>, Christoph Hellwig <hch@infradead.org>, 
	Nathan Chancellor <nathan@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: torvalds@linux-foundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linux-foundation.org header.s=google header.b=e3gD2omh;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates
 2a00:1450:4864:20::630 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
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

On Fri, Jul 30, 2021 at 1:17 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> +ifeq ($(SRCARCH),arm)
> +CLANG_FLAGS    += --target=arm-linux-gnueabi
..,.

Ugh.

A wise man once said: "All problems in computer science can be solved
with another level of indirection".

Just do it like this:

   CLANG_TARGET_FLAGS_arm = arm-linux-gnueabi
   CLANG_TARGET_FLAGS_hexagon = hexagon-linux-gnu
   ..
   CLANG_TARGET_FLAGS = $(CLANG_TARGET_FLAGS_$(ARCH))

Which is a lot denser and simpler.

And then the only if-statement can be something along the lines of

   ifeq ($(CLANG_TARGET_FLAGS),)
   $(error Specify clang target flags)
   else
   CLANG_FLAGS    += --target=$(CLANG_TARGET_FLAGS)
   endif

Plus add *random handwaving* about all the details for CROSS_COMPILE
and friends.

            Linus

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHk-%3Dwgh_gk17OoVjXSiuT%2B7%3DoYDUKjYGWibd%2BtCfQRpYJ7cGA%40mail.gmail.com.
