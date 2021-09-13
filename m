Return-Path: <clang-built-linux+bncBC3ZPIWN3EFBBQPP72EQMGQEKX7HMGA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43e.google.com (mail-wr1-x43e.google.com [IPv6:2a00:1450:4864:20::43e])
	by mail.lfdr.de (Postfix) with ESMTPS id 875F2409E4A
	for <lists+clang-built-linux@lfdr.de>; Mon, 13 Sep 2021 22:42:41 +0200 (CEST)
Received: by mail-wr1-x43e.google.com with SMTP id n1-20020a5d4c41000000b00159305d19basf3111079wrt.11
        for <lists+clang-built-linux@lfdr.de>; Mon, 13 Sep 2021 13:42:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1631565761; cv=pass;
        d=google.com; s=arc-20160816;
        b=bDP3ghirXYob0AMjWzxvUxVRh9EqOfO1zYfxZhl4W02PDh1/l8gKRW6Fi9IiDnS58i
         QuoZXiTdnKTUqrldX+OxyWm5DzwsT+4Sy+UQWrIV65VZ6iLdlfIJq/GQnL1ijPlBTdqo
         KajThvr+PRlTuKK5GLNmt++7z7IAvAEexWFjWsQWLykKQM2Erb94DK518Sa+vcebFHVv
         CTnl9PCrKyQy2rlV/XCmPII9cskgPfWfbeTaWSaFKZ9k3jBjCRC+H+9Uv5hM7sV/ANuB
         VG8dzeZgimJVDrcok1TYs9996jkcFMLCgBtdNubD72splvBiv7PbXkHeClqFXrNJfbEV
         AhRQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=TgwyKzX9ba1UkYmY3fPwjsGvT8BQF+4C+k2ujhDTTpI=;
        b=fY3guDRp7j+DrGhX+mepm6Ag3lKyDCu7YBQC8MB+UrwSMwDutbBBKvYwxQxDQ87jnu
         7fIs+eKzPgj66RyT/rWTQLBfqH+0i42luxb6lLIRMhYpx397seEVYH1iqN30MHpZUIGC
         S3lwp3+cQ2e7/RY+uE8PtwTMdbVRJgKCtlCsB6cflx5BVhVBR5ns6m+MbenTy7Llgp2y
         EFs++HLEoAoXF0nKKewKKIqXog4MSHAjchNaCYHqx1G/0bPr97RO9n+SHqqhZ2MR8BKq
         R/oxqoSh44tEfIayrR5LlBFpiBzpQXHrDGu4EVicBVAfwL2QoVZR8MQovGJByJJ81A1+
         2KhA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b=WUDcnWLS;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::136 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TgwyKzX9ba1UkYmY3fPwjsGvT8BQF+4C+k2ujhDTTpI=;
        b=Err0m9d0YsmZhrRlPh6ohrkM8kQj1c5SebgcMv9VwVmzABwfF3kCkzWqJ/nC8jhi6x
         VbluY+C8HIOjPdwKkIm2c5gJogbSMvNp5ChBfzDW25Q2aQzP6DOe7IVDqWBP7Xr81IWP
         HzjfJTeBrah/tkeyOGzMK8UJ7y8lPAIFa4EokPuRIxoXc9GQgNRhT/920FOHcu8N0vSw
         RQSudSiHxfCkpy1+2jRQFueTJySUVRiAPfVx+LIpcC3T8Gq/X+LFvTs/ca2LltAyaYk1
         v3pZUq62eegfrRJAvZbzhaACYgmbIzvpe6h2xRQ0lDrt7ScnwuceD5dTuHgJLON5XaOD
         pPWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TgwyKzX9ba1UkYmY3fPwjsGvT8BQF+4C+k2ujhDTTpI=;
        b=dIMfUvv3NnXhGzecloTrwQ9hlJJkclHwLRsbO681CH2ak+vwEe4mN1+ZIpV7D63pAY
         a42wREF9BZzI7zLJWiWv036mdvRogLVjG+5vm/RoR8bNmYPiPkSN7CxGXvsuq2IQQayz
         Xj2E1AfQkgQBqlwd97iQ1oDaN9+4uPj+ppjQHnFNUSaJUQZHbifB05tlvXl6jWy5Ris0
         3VxqzswFAE2GMvqIyctg383YlpP3q8nB6TK9ZPPudnwL/8rA/nAO6mFNwaCO6XBIEJmt
         ZyAk77teGdyXV+50HJNXqNvxz98CBV0F+VLNYXX+tteUGzsz+6dxbf5YCk7pzI/hN6OJ
         TUGw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531OAOFKBy5BQt86rj24Ty7frI/svq4UN9SqIHe6WZuhGP1/XBV8
	CBBZuy2ajZ0oOzqqIbYZ6GY=
X-Google-Smtp-Source: ABdhPJwSI5I4Y/p5H4PEqxUThw0LV2F1DwiZpA2P7ZJ4k/mIddMJrSOc1KDHAlAI7PoNYrKDYBdK5A==
X-Received: by 2002:a7b:c341:: with SMTP id l1mr431603wmj.111.1631565761221;
        Mon, 13 Sep 2021 13:42:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:aacd:: with SMTP id i13ls3722635wrc.3.gmail; Mon, 13 Sep
 2021 13:42:40 -0700 (PDT)
X-Received: by 2002:adf:906a:: with SMTP id h97mr14272502wrh.220.1631565760251;
        Mon, 13 Sep 2021 13:42:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1631565760; cv=none;
        d=google.com; s=arc-20160816;
        b=Lj5HHp0QF9Q9x/yMym30ylAU0ITx1a9x25o7fT9kftz4j6Mng3i+SFmU12aDRW8OdW
         R3B0ZL/C9neXfFgVPSYEOWczMSMMFsnbBRl58ZDQQmAEvzeZbO+npnnWQNoKA42xp28h
         /fp/1CL3T/pZcir6yZ2NhMl6LNaYwcSxoyok19K1jWBbiAAqKy9gPsBcbvG0lVDYDRS1
         dka7BsdIfpobf/jIZ1lP104ZjVf0kn4hRX5BXZJkLuCaW7cUQdX9EHru809cX3YjsX5R
         7z0OQhShe0lVXYcYJ5v0XPvPT3tnC7HH/8pZb1bDXKuiqLfFPgRNKU/6jh0orZ0qNKOa
         awRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=HWY/EewUPKp73TzxAziJqvXmaqyygdW/b+QHkWc/nhk=;
        b=aC4t4ozFCmcrev/lXBKWTqHtmsvBbelk2B+OrvJcyfTbgVuphnDVoUcu1trz/guOFn
         WCqRCrQJLkxjE8ngi5zSqE17hHxtwQgskgidKTVlsGNXgKgOF55UrnhCRXDXx/P9TdyQ
         +z1RIfFPgG9jkOlRGctcnZdXBqX3t80mcbDPvthNW7VcugF9wYbE5/UhPbzRHMWJvw3C
         skkGO7X0cyAFylLLa7ThWbrrIdxtUpbWHcdO1mpMWQ1ngdSj0SZqmpKHKsxQ/NZtBizY
         hdA5XhtXql60l2T/5ZRVBSNh9R5xpT33B13mnJg20OglHoZy6TLxBgMK9rAPxtjEtUuS
         S3Sg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b=WUDcnWLS;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::136 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com. [2a00:1450:4864:20::136])
        by gmr-mx.google.com with ESMTPS id f20si139662wmj.3.2021.09.13.13.42.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Sep 2021 13:42:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::136 as permitted sender) client-ip=2a00:1450:4864:20::136;
Received: by mail-lf1-x136.google.com with SMTP id c8so23782186lfi.3
        for <clang-built-linux@googlegroups.com>; Mon, 13 Sep 2021 13:42:40 -0700 (PDT)
X-Received: by 2002:ac2:5f0a:: with SMTP id 10mr10394565lfq.14.1631565759566;
        Mon, 13 Sep 2021 13:42:39 -0700 (PDT)
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com. [209.85.167.48])
        by smtp.gmail.com with ESMTPSA id t67sm927163lff.292.2021.09.13.13.42.36
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Sep 2021 13:42:36 -0700 (PDT)
Received: by mail-lf1-f48.google.com with SMTP id k4so23746045lfj.7
        for <clang-built-linux@googlegroups.com>; Mon, 13 Sep 2021 13:42:36 -0700 (PDT)
X-Received: by 2002:a19:ae15:: with SMTP id f21mr834776lfc.402.1631565756235;
 Mon, 13 Sep 2021 13:42:36 -0700 (PDT)
MIME-Version: 1.0
References: <20210913131113.390368911@linuxfoundation.org> <20210913131114.028340332@linuxfoundation.org>
 <CA+G9fYtdPnwf+fi4Oyxng65pWjW9ujZ7dd2Z-EEEHyJimNHN6g@mail.gmail.com>
 <YT+RKemKfg6GFq0S@kroah.com> <CAKwvOdmOAKTkgFK4Oke1SFGR_NxNqXe-buj1uyDgwZ4JdnP2Vg@mail.gmail.com>
 <CAKwvOdmCS5Q7AzUL5nziYVU7RrtRjoE9JjOXfVBWagO1Bzbsew@mail.gmail.com>
 <CA+icZUVuRaMs=bx775gDF88_xzy8LFkBA5xaK21hFDeYvgo12A@mail.gmail.com>
 <CAKwvOdmN3nQe8aL=jUwi0nGXzYQGic=NA2o40Q=yeHeafSsS3g@mail.gmail.com>
 <CAHk-=whwREzjT7=OSi5=qqOkQsvMkCOYVhyKQ5t8Rdq4bBEzuw@mail.gmail.com> <CAKwvOdkf3B41RRe8FDkw1H-0hBt1_PhZtZxBZ5pj0pyh7vDLmA@mail.gmail.com>
In-Reply-To: <CAKwvOdkf3B41RRe8FDkw1H-0hBt1_PhZtZxBZ5pj0pyh7vDLmA@mail.gmail.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Mon, 13 Sep 2021 13:42:20 -0700
X-Gmail-Original-Message-ID: <CAHk-=wjP2ijctPt2Hw3DagSZ-KgdRsO6zWTTKQNnSk0MajtJgA@mail.gmail.com>
Message-ID: <CAHk-=wjP2ijctPt2Hw3DagSZ-KgdRsO6zWTTKQNnSk0MajtJgA@mail.gmail.com>
Subject: Re: [PATCH 5.14 018/334] nbd: add the check to prevent overflow in __nbd_ioctl()
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Arnd Bergmann <arnd@kernel.org>, Sedat Dilek <sedat.dilek@gmail.com>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Naresh Kamboju <naresh.kamboju@linaro.org>, 
	Nathan Chancellor <natechancellor@gmail.com>, Baokun Li <libaokun1@huawei.com>, 
	open list <linux-kernel@vger.kernel.org>, linux-stable <stable@vger.kernel.org>, 
	Hulk Robot <hulkci@huawei.com>, Josef Bacik <josef@toxicpanda.com>, Jens Axboe <axboe@kernel.dk>, 
	Sasha Levin <sashal@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	lkft-triage@lists.linaro.org, llvm@lists.linux.dev, 
	Kees Cook <keescook@chromium.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: torvalds@linux-foundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linux-foundation.org header.s=google header.b=WUDcnWLS;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates
 2a00:1450:4864:20::136 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
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

On Mon, Sep 13, 2021 at 1:16 PM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> Do we have access to _Generic in GCC 4.9?

We've ended up using it unconditionally since last year, so yes.

In fact, the compiler version tests got removed when we raised the gcc
version requirement to 4.9 in commit 6ec4476ac825 ("Raise gcc version
requirement to 4.9"):

   "In particular, raising the minimum to 4.9 means that we can now just
    assume _Generic() exists, which is likely the much better replacement
    for a lot of very convoluted built-time magic with conditionals on
    sizeof and/or __builtin_choose_expr() with same_type() etc"

but we haven't used it much since.

The "seqprop" code for picking the right lock for seqlock is perhaps
the main example, and staring at that code will make you go blind, so
look away.

            Linus

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHk-%3DwjP2ijctPt2Hw3DagSZ-KgdRsO6zWTTKQNnSk0MajtJgA%40mail.gmail.com.
