Return-Path: <clang-built-linux+bncBC3ZPIWN3EFBBRXD72EQMGQEXT7D6MA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x240.google.com (mail-lj1-x240.google.com [IPv6:2a00:1450:4864:20::240])
	by mail.lfdr.de (Postfix) with ESMTPS id D4B56409E0B
	for <lists+clang-built-linux@lfdr.de>; Mon, 13 Sep 2021 22:17:10 +0200 (CEST)
Received: by mail-lj1-x240.google.com with SMTP id e10-20020a05651c04ca00b001c99c74e564sf4705783lji.11
        for <lists+clang-built-linux@lfdr.de>; Mon, 13 Sep 2021 13:17:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631564230; cv=pass;
        d=google.com; s=arc-20160816;
        b=DNK+Gla/9Sh8EMMGncxmC6axdnRUS3RJCcy40YnOh5lXj9NlSDNHK+/0/hLarWRleJ
         tL3RSzfk+mC9N9C+MMb3pT7n2QWY9eLUvFCbbnCQR3ZmkYALKelH+lHmO0fTD2MYRTzt
         p+fWBqNVwmxGf63p6ORIaJa0LbHXymJTXFBFc3O6fe/6/Pd0Yj1XOqfbGa38B3L/rG6W
         CAz6cbG0nb8Id6Biz/kUJ7qF3gM81EYKT422VVyDvnxFTPJRVv18pWn7prwEedlKYEvE
         Ln/RpWUrUyLtTZz3XdvjTEeYe1XFa+D30apIS3gK1gnpMYwe7so2ED9l/3rlH9zrbAfj
         xL9w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=1rcGWkMN7hUEVk0irjB2IpRkHhCtpy194QSFNLHAu08=;
        b=AUSMdZgmDI3EEold72SZKGpoUrLjM3zcQw3K1PmUkF7ddeQdb1mNUHO+O3/N36hvKn
         Mfls5d9b76jeF8puxDCyRFOs8GOIX8EpteyNBGChLPVvKCPQOEMD5GnjJtW1qkn1qKTq
         NlsiYJ59e9N87ju+7TLSm7lKEHSsbjrIrgfcuLAGm0oDRslpUSOwhfe9+E5Y+qnOX2oZ
         10EHm+Tzfsb3rFn+o/lIX8Zf8rAoa/gF8kU5zByB8rX/0TKf06ZxWJsF2axOjf5wedTu
         Rf7h06RCUw2l8CeMXvC9n7qr8vHi7nW+SfIXG8jkXOBeXmeyJJv5VauaH2WypQh4PCj9
         tBJA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b=gyRS8gjh;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::629 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1rcGWkMN7hUEVk0irjB2IpRkHhCtpy194QSFNLHAu08=;
        b=UUziUiPN13/3cxBASLKSDG/Rz4s+Qf1C4YPZI6fCHdOt6GNYS9aI8r14RXGF+SXO01
         N14HPyAt7yjmkkM6OG+7kE9UNrAvEbNG9H2EaNp0n/6A5mHahyOSZwC8WO3yfgkR0px3
         HB24rH2Z4Tyi6RzGljKxXkA8Oa1YgE+Gzu6+1MRahu31Nr1ZmllH8vFVLaRNntRrRpPQ
         PaxyAdk3fsLPFoaxVFI/0HoFHBlZjPhEUWyx75C0f7t40duChIbUMNSltO9MpbJ6iAHD
         dhxnZC8fxp9Zt/7RXW9qaX9+Ka4VAa8aCcwo6L28gHk7sPtv6ndtJ5QVgoWqmwgonDdB
         H1Rg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1rcGWkMN7hUEVk0irjB2IpRkHhCtpy194QSFNLHAu08=;
        b=E5icjFyLOP/MBXCEbOBKk4h+s3mgiOcK7rl8GZM/UYd5iho2Cm4ymjo5iHSjSoWxxY
         v7okjisyy9qHLGys3tAdr7WA7RcX8TGRiqABNqfByvgdWFnIamLX71bnkRTcxJ7KdnUq
         I7JBuXmpjCwcWIvnMXSrqTs6cFMTDWQcQtQXHD7+smPu2qUvX7asTrcvmIPmGJFvJ5Il
         vyzOCrFfb/zLXmwLQ2iBJdkMJgj0iOBujI3VLO2+zW8gucXPntjirQJU5bWDWfkshM1e
         bFDIdD3MFYUeBr32tYG/lzVG8olY0iSXhhpr49Vaax6xJ9oac6TqrPypcXtSkZgpwlpw
         3DVA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532tZGxk+n8opRRZpX5O4LRwXQAwLTtCLbc8zM6NSXPqNFCylejj
	CUDEu8NZsXrvGOiTL/L9Pr0=
X-Google-Smtp-Source: ABdhPJyYqKZbEjh1j0Ua2Q9Q++DBHX0Jcz8/kYNRi6j6Xk5VBl0DJbHW69KSAnOTxx1Gync845Besw==
X-Received: by 2002:a05:6512:1095:: with SMTP id j21mr10648620lfg.16.1631564230342;
        Mon, 13 Sep 2021 13:17:10 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:3e17:: with SMTP id l23ls2091639lja.3.gmail; Mon, 13 Sep
 2021 13:17:09 -0700 (PDT)
X-Received: by 2002:a2e:8109:: with SMTP id d9mr12011997ljg.495.1631564229195;
        Mon, 13 Sep 2021 13:17:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631564229; cv=none;
        d=google.com; s=arc-20160816;
        b=BHPEXDDg5+P7W7ygYu18XBotXxgCp0B1rCoCkD3vO6/HlC2AHNNMNUOpgvjljDECYL
         kwyjY24a2U8W2HfhLMM1QAdwx3qQQqve8BwpSQzBfJTmueibjVZRe36i7+5gtQGRUTd4
         MQJOrnDRkfCXTORar5FztV+Gu02jkolNUtr635NTzEXmf2o2AfqkB0EHudqYtmVwM1Vz
         thIRixIfwaK5rO0GhcGXP/5Bl0udXeWMYIUGkTDpTzw36KeTNPzIV++L3Ise5AG69Ztw
         0lmllyolZh/fMTc40TBqtak4WMGRsUlW7vH+ZpJhciA4oq89I/G2W5XBYLOESchmfSww
         Dk1g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=146IDoLHsnlYB84TPDL7kqzW39fi+lkR3958WvJksNU=;
        b=VlQOv6k5Z3GtjZlHREGVe4ubhywglGvAiWDNe2Ygj7o6g921meFYVeeX69t9e5IxTh
         oNQBocTEIATq/SOSWZQZ68T8nle/ugqU2/eEpPqvgy15vzTiQ+D7FMtO9s4kKNoMNjDx
         gKobds/2fxafN4Cpz0nqspAhTHGE45uwSh75aNaXkI64idjySru6MW+cAN6nj3PW6N38
         nyvnOjLOXJLRXUtAK32P0qwTWafzMWYq0dwQ2AOnNeF2WEVkQFJWoYrSfvWEUypoV59b
         UgulkZnzesmtIOpQl8toULAXMUCOj7CZ+ygfbLFk3ydLyNvNxqrpCtPAPw8INnEfUR3L
         mwrA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b=gyRS8gjh;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::629 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com. [2a00:1450:4864:20::629])
        by gmr-mx.google.com with ESMTPS id v25si822384lfr.1.2021.09.13.13.17.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Sep 2021 13:17:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::629 as permitted sender) client-ip=2a00:1450:4864:20::629;
Received: by mail-ej1-x629.google.com with SMTP id ho42so23653967ejc.9
        for <clang-built-linux@googlegroups.com>; Mon, 13 Sep 2021 13:17:09 -0700 (PDT)
X-Received: by 2002:a17:906:37d4:: with SMTP id o20mr622822ejc.508.1631564228535;
        Mon, 13 Sep 2021 13:17:08 -0700 (PDT)
Received: from mail-ed1-f43.google.com (mail-ed1-f43.google.com. [209.85.208.43])
        by smtp.gmail.com with ESMTPSA id k4sm4252277edq.92.2021.09.13.13.17.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Sep 2021 13:17:08 -0700 (PDT)
Received: by mail-ed1-f43.google.com with SMTP id q3so16195295edt.5
        for <clang-built-linux@googlegroups.com>; Mon, 13 Sep 2021 13:17:08 -0700 (PDT)
X-Received: by 2002:a2e:1542:: with SMTP id 2mr12239121ljv.249.1631563837811;
 Mon, 13 Sep 2021 13:10:37 -0700 (PDT)
MIME-Version: 1.0
References: <20210913131113.390368911@linuxfoundation.org> <20210913131114.028340332@linuxfoundation.org>
 <CA+G9fYtdPnwf+fi4Oyxng65pWjW9ujZ7dd2Z-EEEHyJimNHN6g@mail.gmail.com>
 <YT+RKemKfg6GFq0S@kroah.com> <CAKwvOdmOAKTkgFK4Oke1SFGR_NxNqXe-buj1uyDgwZ4JdnP2Vg@mail.gmail.com>
 <CAKwvOdmCS5Q7AzUL5nziYVU7RrtRjoE9JjOXfVBWagO1Bzbsew@mail.gmail.com>
 <CA+icZUVuRaMs=bx775gDF88_xzy8LFkBA5xaK21hFDeYvgo12A@mail.gmail.com> <CAKwvOdmN3nQe8aL=jUwi0nGXzYQGic=NA2o40Q=yeHeafSsS3g@mail.gmail.com>
In-Reply-To: <CAKwvOdmN3nQe8aL=jUwi0nGXzYQGic=NA2o40Q=yeHeafSsS3g@mail.gmail.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Mon, 13 Sep 2021 13:10:21 -0700
X-Gmail-Original-Message-ID: <CAHk-=whwREzjT7=OSi5=qqOkQsvMkCOYVhyKQ5t8Rdq4bBEzuw@mail.gmail.com>
Message-ID: <CAHk-=whwREzjT7=OSi5=qqOkQsvMkCOYVhyKQ5t8Rdq4bBEzuw@mail.gmail.com>
Subject: Re: [PATCH 5.14 018/334] nbd: add the check to prevent overflow in __nbd_ioctl()
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Sedat Dilek <sedat.dilek@gmail.com>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Naresh Kamboju <naresh.kamboju@linaro.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Baokun Li <libaokun1@huawei.com>, open list <linux-kernel@vger.kernel.org>, 
	linux-stable <stable@vger.kernel.org>, Hulk Robot <hulkci@huawei.com>, 
	Josef Bacik <josef@toxicpanda.com>, Jens Axboe <axboe@kernel.dk>, Sasha Levin <sashal@kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, lkft-triage@lists.linaro.org, 
	llvm@lists.linux.dev, Kees Cook <keescook@chromium.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: torvalds@linux-foundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linux-foundation.org header.s=google header.b=gyRS8gjh;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates
 2a00:1450:4864:20::629 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
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

On Mon, Sep 13, 2021 at 1:02 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> Ha! I pulled+rebased and this code disappeared...I thought I had
> rebased on the wrong branch or committed work to master accidentally.
> Patch to stable-only inbound.

Side note: for stable, can you look into using _Generic() instead of
__builtin_choose_expression() with typeof, or some
__builtin_types_compatible_p() magic?

Yes, yes, we use __builtin_choose_expression() elsewhere, but we've
started using _Generic(), and it's really the more natural model - in
addition to being the standard C one.

Of course, there may be some reason why _Generic() doesn't work, but
it _is_ the natural fit for any "for type X, do Y" kind of thing.

No?

          Linus

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHk-%3DwhwREzjT7%3DOSi5%3DqqOkQsvMkCOYVhyKQ5t8Rdq4bBEzuw%40mail.gmail.com.
