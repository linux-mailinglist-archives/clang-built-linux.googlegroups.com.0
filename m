Return-Path: <clang-built-linux+bncBDYJPJO25UGBBIPD72EQMGQEDBL2BBA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43b.google.com (mail-wr1-x43b.google.com [IPv6:2a00:1450:4864:20::43b])
	by mail.lfdr.de (Postfix) with ESMTPS id AB6DD409E07
	for <lists+clang-built-linux@lfdr.de>; Mon, 13 Sep 2021 22:16:33 +0200 (CEST)
Received: by mail-wr1-x43b.google.com with SMTP id z2-20020a5d4c82000000b0015b140e0562sf3098168wrs.7
        for <lists+clang-built-linux@lfdr.de>; Mon, 13 Sep 2021 13:16:33 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631564193; cv=pass;
        d=google.com; s=arc-20160816;
        b=fBnHb5llgUVv2JUEy8qeTRhDguWOG0HwvOUexDU8MqfYmWTphrTuaczbR6ijDCvx/h
         p3R7POBt6G6a8MUIz7/yAd5jCiL6xvfkr/N0T5ZdwCVMhWunXTxmbjOD7oTfJTBDPxHO
         d3uT19QoACtLMiKgSgNpI19gIuXXWI/d5t/1hNeuxJOS8z7B6vZ7f0OM+0QydOpU77fl
         xMq69i6GFQv+C4c+wWsnkEfqEW1JWBikNRjU58kgibu6Kp4vHgQUOzsbuOspOMvSKgGZ
         /ijOXzdtAy2qOZZouARG+8ASsOSfT5QofN1rkvyD4bjzTFVJoyGpY0xRu9qXGASJXqNy
         SfOw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=0+1IKN/2c6H67Zqzk/z1S65gUL68RVefuhA4Q69bHcc=;
        b=a8RxS4UTaKjXw5okafBZKSnt/foQ0AMV64tL+y3Mq7W2H7Vk3/LLTJ7NDoT4jhqBdl
         BXno78L95JPB/gvSybP5+vqPwaa7WNArg5iek0e+IeqqmUKbyjbHqsE2/SM/wzJ552dH
         69tISnTx1HRqfALn128vg/jMPn9Y7MWdR2hU1mRrbYciEKmPAZ9yLILXWh7ws1V1sHhX
         SV0g/Sv/RLAkSjSz08fpRrbqX8C50QhhiSEh6ooJYwjWYv43Qnuva4ojXWvKz4odZtx4
         j/PtfN1ZHRrYO4s0LyPD7Ck8xIkX8xsGduHzf70GwiPoGCMNOWKSVk0PeQl+JqibCO37
         EURQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=pGWIil2q;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::233 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0+1IKN/2c6H67Zqzk/z1S65gUL68RVefuhA4Q69bHcc=;
        b=btsggKW9+ruE6JVx2mg/BELdZSxuBENHW9rB6YfQCHaCFpDD9BOVvHvTGfny0sIBsh
         W0QduDP7d/rPLZRLNiCTgPV3QyRs5I9iJ1uvOuHlcaL8zwUzuiG30QoOlo5y55BQ39MU
         kR1wu8JxAo3cJKsExPKm35J8n9g1iYPLhp1vtcfqUU5L/qokXO+herbFd31iZjfLaH7k
         ahnHFNGYCVENpl6dURy+9/0b3QJctU1rej/rfjKdvZbAY9Gar0qGvHTHpQ3KLFIbxo7N
         s0mi1uxMkwcGm6JD2t4ae81PpExYOgyPGkl8+NdktzKOlGgO8pFEjlwonmlIOWcPcUH7
         ONJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0+1IKN/2c6H67Zqzk/z1S65gUL68RVefuhA4Q69bHcc=;
        b=bTQsjJ9tpPzXFqvIVcsrDWnSWnF+Ki4rMw0KjPhgEoSTRvSOA+0VUpgCSsfw2HDwan
         4n3DUfy7qD7LSTu+OGX3BWckbIRZxPi2vyLhve714mH5eqAiQd3+YAtF6qdUyv5a4UqZ
         6kAGIgR0nen+ei3uYCbPB9FRa3jkzpEfeFrPdfx3DoAp1cW77j6U1DaosiX5QxiZToIu
         3j9RjZPbCXu+wX6Nriet59AAN2qnipfehYSZ9RnQpQkUbMOJ82fDiNalxpLP7L9UmnYm
         BaA6tLGjd9Sriu8hhSTTCC/u6KWxN1ihoNI2Qibwtmw6/BdoacUewkMlAXuOTYxF/cZU
         QhIQ==
X-Gm-Message-State: AOAM5321PQ6DlHNA4nFkcLgOy6GZAvt9zlmVWn38tcv0HwvFrWlasYRD
	+KTCXmjZWtR3SMP0Bbsbzfk=
X-Google-Smtp-Source: ABdhPJxdp/M+DsOgezlx4c7YC/i5HEA0Ai93TZII4Ge90ZKPhQ0/oFRXUgns4Xdd8a9we8YmumyfvQ==
X-Received: by 2002:a5d:6307:: with SMTP id i7mr14870496wru.395.1631564193497;
        Mon, 13 Sep 2021 13:16:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:600c:1:: with SMTP id g1ls3618997wmc.3.canary-gmail;
 Mon, 13 Sep 2021 13:16:32 -0700 (PDT)
X-Received: by 2002:a1c:ed03:: with SMTP id l3mr13352875wmh.56.1631564192612;
        Mon, 13 Sep 2021 13:16:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631564192; cv=none;
        d=google.com; s=arc-20160816;
        b=da+UtnR7BspNtVv7VjTTfHCYMCUpa4BVNOolpDIMJf5iYn8+++F9iUFv+J9j8weTzU
         U3ie2RrHewyvTbSagndh/ugcYolalE8xWk7M1JW99Q+Sz8R/SUzMGmLeU7pwQ68c7w2+
         I2715FlZgxw06GGv1JDX1t75f866TiLNlWriXLufGumsMSHVZo0c6qn+L9uPx9S4u6Rm
         VNzLr7lCxvcOtLJ44B7drPuwg8VrDRzHL//HU4r7ZMAV8oayEdWLteW3nzFXqGC77C1Y
         MR7bVRcKEq00/8UWm4A5VkS8fkkMp81jcz8/4jnIIMnbcIS3XWk/y6dZNQvjd5B8xY5c
         5fgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=E9BTZz7P4136Vx17+j4gvrYMgr1v/N8zIGjbUFEwypk=;
        b=oTxEJJXI/6gnTBl4ZLNcGYH0kjcpS1+xImVEOetUQeQE0Khfb3p6wkvpQ6r9jW7J42
         TUWAkcdCvgpfMJyuO7YzZvvmbJIN/5nIPrMeoV20jsuM2ONWnhhH4nwf/p3wtBsnyAh6
         kD2hBkPMmkVemNuaqq7yZBtOWO22GgAOwDqySGO85EibuJMXX7QoWZ4KjRl6ZT01C7M3
         zIb/UZQapjN+k14QD9hSD9JonPVfPNs31QZRjN4uFK+nqLEN7CdmdlAf1vjNhcNWiJj1
         iLs9GGvXAhK929yaEO3ZT0iXN1Z7UqPo7NLvxaRCr8bRhQWM9/8qjPIaCvX8LqGipsDV
         ePSg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20210112 header.b=pGWIil2q;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::233 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com. [2a00:1450:4864:20::233])
        by gmr-mx.google.com with ESMTPS id f20si131660wmj.3.2021.09.13.13.16.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Sep 2021 13:16:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::233 as permitted sender) client-ip=2a00:1450:4864:20::233;
Received: by mail-lj1-x233.google.com with SMTP id o11so11950974ljp.8
        for <clang-built-linux@googlegroups.com>; Mon, 13 Sep 2021 13:16:32 -0700 (PDT)
X-Received: by 2002:a2e:4e09:: with SMTP id c9mr11984681ljb.62.1631564192079;
 Mon, 13 Sep 2021 13:16:32 -0700 (PDT)
MIME-Version: 1.0
References: <20210913131113.390368911@linuxfoundation.org> <20210913131114.028340332@linuxfoundation.org>
 <CA+G9fYtdPnwf+fi4Oyxng65pWjW9ujZ7dd2Z-EEEHyJimNHN6g@mail.gmail.com>
 <YT+RKemKfg6GFq0S@kroah.com> <CAKwvOdmOAKTkgFK4Oke1SFGR_NxNqXe-buj1uyDgwZ4JdnP2Vg@mail.gmail.com>
 <CAKwvOdmCS5Q7AzUL5nziYVU7RrtRjoE9JjOXfVBWagO1Bzbsew@mail.gmail.com>
 <CA+icZUVuRaMs=bx775gDF88_xzy8LFkBA5xaK21hFDeYvgo12A@mail.gmail.com>
 <CAKwvOdmN3nQe8aL=jUwi0nGXzYQGic=NA2o40Q=yeHeafSsS3g@mail.gmail.com> <CAHk-=whwREzjT7=OSi5=qqOkQsvMkCOYVhyKQ5t8Rdq4bBEzuw@mail.gmail.com>
In-Reply-To: <CAHk-=whwREzjT7=OSi5=qqOkQsvMkCOYVhyKQ5t8Rdq4bBEzuw@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 13 Sep 2021 13:16:21 -0700
Message-ID: <CAKwvOdkf3B41RRe8FDkw1H-0hBt1_PhZtZxBZ5pj0pyh7vDLmA@mail.gmail.com>
Subject: Re: [PATCH 5.14 018/334] nbd: add the check to prevent overflow in __nbd_ioctl()
To: Linus Torvalds <torvalds@linux-foundation.org>, Arnd Bergmann <arnd@kernel.org>
Cc: Sedat Dilek <sedat.dilek@gmail.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Naresh Kamboju <naresh.kamboju@linaro.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Baokun Li <libaokun1@huawei.com>, open list <linux-kernel@vger.kernel.org>, 
	linux-stable <stable@vger.kernel.org>, Hulk Robot <hulkci@huawei.com>, 
	Josef Bacik <josef@toxicpanda.com>, Jens Axboe <axboe@kernel.dk>, Sasha Levin <sashal@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, lkft-triage@lists.linaro.org, 
	llvm@lists.linux.dev, Kees Cook <keescook@chromium.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20210112 header.b=pGWIil2q;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::233
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

On Mon, Sep 13, 2021 at 1:10 PM Linus Torvalds
<torvalds@linux-foundation.org> wrote:
>
> On Mon, Sep 13, 2021 at 1:02 PM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> >
> > Ha! I pulled+rebased and this code disappeared...I thought I had
> > rebased on the wrong branch or committed work to master accidentally.
> > Patch to stable-only inbound.
>
> Side note: for stable, can you look into using _Generic() instead of
> __builtin_choose_expression() with typeof, or some
> __builtin_types_compatible_p() magic?
>
> Yes, yes, we use __builtin_choose_expression() elsewhere, but we've
> started using _Generic(), and it's really the more natural model - in
> addition to being the standard C one.
>
> Of course, there may be some reason why _Generic() doesn't work, but
> it _is_ the natural fit for any "for type X, do Y" kind of thing.
>
> No?

Man, c'mon, I just got the __builtin_choose_expression() working! It's
not...too bad...ish. (Besides, I'd actually have to learn how to use
_Generic...I've never quite gotten anything I've written trying to use
it to actually compile).

Do we have access to _Generic in GCC 4.9?
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkf3B41RRe8FDkw1H-0hBt1_PhZtZxBZ5pj0pyh7vDLmA%40mail.gmail.com.
