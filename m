Return-Path: <clang-built-linux+bncBC3ZPIWN3EFBBZXL6H4QKGQEXDRSAUQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13a.google.com (mail-lf1-x13a.google.com [IPv6:2a00:1450:4864:20::13a])
	by mail.lfdr.de (Postfix) with ESMTPS id 23CAA2491E1
	for <lists+clang-built-linux@lfdr.de>; Wed, 19 Aug 2020 02:44:23 +0200 (CEST)
Received: by mail-lf1-x13a.google.com with SMTP id m13sf4918881lfr.18
        for <lists+clang-built-linux@lfdr.de>; Tue, 18 Aug 2020 17:44:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1597797862; cv=pass;
        d=google.com; s=arc-20160816;
        b=blkeuy0KIBkf2dr1SO+8VLDmUzS86ASCq+b5T8fgMdlyJ/6w8PROXFxf2e6e5m67aL
         vhxaCpzSx6H1xyHF6QJpJwuXwR63MhpA7TvwnycVum5tOCzw5qnvOPgJmjBmakx/7dbH
         yl9PCc7S6pzQ4lqW1AYOSy/YXx6Q67I/+gZt69hz24uWRoYFxFzcJpdLd1g5e0lYZpTO
         xWi7zvQhNtH6j67Ji2g+4cw6NDzC0xoeFc4YDcw0INOxr97DdXOM8YP+JWdLODiaeusk
         2GjhoxaLGUd1KQ/vK02wcy4CQcLX0fZUZwXhUDBDZ9A2DN8kcRYc7WnHUlmToOHuKXMG
         pwCw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=thn5PPvjO1vSi9IlQVL5V0vjdfCWY0Ot6XW9e/YJo/Y=;
        b=XbkfLGh/TOURk44rrYywCjHGfc610zusTKLMRt1F/LRuSeDt+cnEezr4Tl1Fd7wEiw
         RXmm3mPx7YfFmaZAem+E03t5nixTYN9JR+Mnh3hgrPjsFZ2Xr6o3WoINVBw7qeCghq3j
         5zCegbBZvZXSzQKHXhiSimgeti5oRO6JSNieZODWVRP/M1oJnrwPuaoIU6tCvmk1ilDW
         m0BEBPEqoDMHqdMbvJwI7+NKzyMNlnP6y3YUAQUC0hkhRmPkxm+Yctic2tbkGa0uM2Fn
         Dg3nvrRRe3lJ+5wkppH1QFDbbHwX87LzZjQhC9kc17n4jfa2TqTrhmSgwrIoa8TTozss
         ORww==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b=ZWjTUpPq;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=thn5PPvjO1vSi9IlQVL5V0vjdfCWY0Ot6XW9e/YJo/Y=;
        b=cj4wCmFZXI6GPhfGzu/us57QI7JBB6bLzHyJjUttNxzyMYnx5q9CHJr1t5iDompIWi
         lpkwqfH/nh+SzP7iBP/znwcsvLcYHSuidEoulqNds185NMokEbiPkyLiS0XmDZ2iQuAz
         BHydZhOZ/aJ213zFKRrBqjM1wv1QzfYeYOyhS35PuTuVDMpJ/vvMCnBEEZlQh20zqIXN
         +2XikAMkpQ9lxHJ8FvcEkJUC/k2IHm9AHhrX5p8TMVhg1/VQwBZ6I2cjIU6rYNs3KApg
         TsnGFO1aqs+Z5V7gpVg55ur/tg3TAcmU441cRURwJc6/xoANHTKlqTUXURKRXAci/M8w
         XKpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=thn5PPvjO1vSi9IlQVL5V0vjdfCWY0Ot6XW9e/YJo/Y=;
        b=EjSc699F81HlTvtJ4uuH5mvyhUkmGhEUSy+2bcElgAOHEc9130YjhghSlvo9XqSIyV
         2V7I616zSt7sCzXjBG4ookQ64eB78MM5Ogrv0MqZRFK/Lnj7S+D5fDXFkBrlrlENkt6D
         ogPD5tzh91eVrCPtXlRbSl51fRSz5kRcFzeskewN4oz4n6mc2rKa15rx8DuQMGZYdJ7M
         fvXiV/Z1s+WdgYpljyvGzcErV7LNhy4cURseMs4ZEe2Nsd0OTeZP/zo7OuG+UCXiVcNb
         g6qCXiqv8gkcducSnfi6HViTaPV9/EjnLXWLogA6/7Nc0P4uFmQrbPgMYfskHqbGBYDu
         OQRw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532Pi5Q6lld+ntxyIgvwhv5QbwHwWBVgF1AbGd0p/7RgtalggELH
	kqsCmjxkDoGDh4e8pVGQ6Uk=
X-Google-Smtp-Source: ABdhPJzPIM7QXDkjXy3CmRFGKjRzdbKXgC7PXv2QbBUgUEhV1MM0a8QoIsYpJ7/5L5/SKy0VQG+ikA==
X-Received: by 2002:a05:6512:3610:: with SMTP id f16mr10853992lfs.8.1597797862566;
        Tue, 18 Aug 2020 17:44:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:60e:: with SMTP id 14ls608014lfg.0.gmail; Tue, 18 Aug
 2020 17:44:21 -0700 (PDT)
X-Received: by 2002:a19:f808:: with SMTP id a8mr11000413lff.62.1597797861601;
        Tue, 18 Aug 2020 17:44:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1597797861; cv=none;
        d=google.com; s=arc-20160816;
        b=EZx2hl5Z9x8i/2KfPAJ2lX5l6LuL7gEn3FxpT3zitUxuc3gjPd/WFJ86MXsDu/MYwK
         qWVhtImxBp2XvWz5onX9eqvo+DsdagG74hVIzJluLYqT/oQSCLCKziE348AAF2v4PyCZ
         Rar9ymYUKr/vaaIqSLOEawZhfKqrlu9QBYfRQK+94O6O44eHwwXq3oOgoBQW/TKNwVFB
         BLuOvrz9v04ZU3Y8WLNfR44ARwZikKwTud4LW6Pj4vQp6OWJ+fSdOFgWH1KmuLLyVDCF
         QHjbp0Gn1hxtv28fAJWoIz0rvlo3/6CJreKzMqxobuvkL6F+v8Sl2FdEsjtQPU+ZcJAq
         DVog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=z2DynlYRISsaYGNYsitlwb4+khyZlyAf5FIqSKM75Sw=;
        b=J276J8RH2nytpZThN9HvyEDRkeQ92J2mZW6ofdRY+/1hM0hF3qFQiaTfIG5i0uoZyP
         hFk9YvJ/LFpT9fvEOZHyvkZZOvJ1rmwUgY4ygrp6hO26FXRtOnh/jR40M0KbYLSA1XHy
         0R8K6xLLvpFgJKzI7aVzx8R/r1IqzNhXP8MoFB0Rn7dveTHNp6MPdUfjPqgs6FcmWS0I
         TzvSoOXKaDnlNXcsmnGlmf6S6fGaILg6MoEsvn8bbIW5+de+sQaaU5LV9Ry809oy/c7O
         3wyDMj4FyQT2iAzcSfWVOEIxzcNDsL+Fi5uUOya4zheADcQq38mXQFID9CkSrN1eW7cB
         u8Yw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b=ZWjTUpPq;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
Received: from mail-lj1-x244.google.com (mail-lj1-x244.google.com. [2a00:1450:4864:20::244])
        by gmr-mx.google.com with ESMTPS id u9si1032616ljg.8.2020.08.18.17.44.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Aug 2020 17:44:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::244 as permitted sender) client-ip=2a00:1450:4864:20::244;
Received: by mail-lj1-x244.google.com with SMTP id w14so23473916ljj.4
        for <clang-built-linux@googlegroups.com>; Tue, 18 Aug 2020 17:44:21 -0700 (PDT)
X-Received: by 2002:a2e:7215:: with SMTP id n21mr11629794ljc.242.1597797860881;
        Tue, 18 Aug 2020 17:44:20 -0700 (PDT)
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com. [209.85.167.54])
        by smtp.gmail.com with ESMTPSA id a17sm4482671ljd.123.2020.08.18.17.44.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Aug 2020 17:44:20 -0700 (PDT)
Received: by mail-lf1-f54.google.com with SMTP id s9so11186538lfs.4
        for <clang-built-linux@googlegroups.com>; Tue, 18 Aug 2020 17:44:19 -0700 (PDT)
X-Received: by 2002:ac2:46d0:: with SMTP id p16mr11162480lfo.142.1597797859441;
 Tue, 18 Aug 2020 17:44:19 -0700 (PDT)
MIME-Version: 1.0
References: <20200818234307.3382306-1-nivedita@alum.mit.edu>
In-Reply-To: <20200818234307.3382306-1-nivedita@alum.mit.edu>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Tue, 18 Aug 2020 17:44:03 -0700
X-Gmail-Original-Message-ID: <CAHk-=wik-oXnUpfZ6Hw37uLykc-_P0Apyn2XuX-odh-3Nzop8w@mail.gmail.com>
Message-ID: <CAHk-=wik-oXnUpfZ6Hw37uLykc-_P0Apyn2XuX-odh-3Nzop8w@mail.gmail.com>
Subject: Re: [PATCH] lib/string.c: Disable tree-loop-distribute-patterns
To: Arvind Sankar <nivedita@alum.mit.edu>
Cc: Andrew Morton <akpm@linux-foundation.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: torvalds@linux-foundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linux-foundation.org header.s=google header.b=ZWjTUpPq;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates
 2a00:1450:4864:20::244 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
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

On Tue, Aug 18, 2020 at 4:43 PM Arvind Sankar <nivedita@alum.mit.edu> wrote:
>
> This by itself is insufficient for gcc if the optimization was
> explicitly enabled by CFLAGS, so also add a flag to explicitly disable
> it.

Using -fno-tree-loop-distribute-patterns seems to really be a bit too
incestuous with internal compiler knowledge.

That generic memcpy implementation is horrible anyway. It should never be used.

So I'd rather see this either removed entirely, ot possibly rewritten
to be a somewhat proper memcpy implementation, and in the process made
to not be recognizable by the compiler (possibly by adding a dummy
barrier() or something like that).

Looking at the implementation of "strscpy()" in the same file, and
then comparing that to the ludicrously simplisting "memcpy()", I
really get the feeling that that memcpy() is not worth having.

              Linus

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHk-%3Dwik-oXnUpfZ6Hw37uLykc-_P0Apyn2XuX-odh-3Nzop8w%40mail.gmail.com.
