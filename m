Return-Path: <clang-built-linux+bncBDYJPJO25UGBBRFESX7AKGQE2G5M64I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x338.google.com (mail-ot1-x338.google.com [IPv6:2607:f8b0:4864:20::338])
	by mail.lfdr.de (Postfix) with ESMTPS id 147C22C8EC0
	for <lists+clang-built-linux@lfdr.de>; Mon, 30 Nov 2020 21:12:55 +0100 (CET)
Received: by mail-ot1-x338.google.com with SMTP id n18sf7585016otf.22
        for <lists+clang-built-linux@lfdr.de>; Mon, 30 Nov 2020 12:12:55 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606767174; cv=pass;
        d=google.com; s=arc-20160816;
        b=Nr8r+xfX0Wax5nmC8qwZoN/5+DgdcoJLRZ1yD0/RbjgLGhc0qvkuRelHsOLXUS4Q8Q
         wiwW+hpLTBfpVNACMO5bVYWrxBdV9cEqA5tZKE9r1lR1yhNyLu3UqbpQnEoSGIDcH+Z3
         O9aOk7M5bDCox+60hC3R7gCSzvdfAlWNWZnYNfNYIpRyQHPED496LX9N5KVSCdX2hcdG
         1SaExh8aTsyPfTUKh18Mbf/rHj02uaqgY8bkHrr5jThSazWiFUPbcl8vWo0l2cjfwvxF
         pKlM7HpUY2YPZM5ErlzJg3ZySz2KjHyWYM6D5jOoajodLhJIMPQQkX5EGbvNkdYrWe/O
         4mkA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=nkpJFWXdeuknNmq+J81fG1hEkDEHUFG5zq2Naqyl2cE=;
        b=BEXkoicmqJPmsoEHSV+laPgCc3mEh3EvFoIq2D9o9xLoW3vjhXBXZJ8wePya6FdBJt
         5cjyBp/MZXccaQbPmwQsgYOCW2QxSTJDumgQEhAYrDDdNCxxUKJjoe8cLGizYd24Tsb5
         10i7QWc/NrkZLPTBUFK5S1lfKHV5YNIcX8tQYQxQkoofa+ECVFN2sTs/iZHg0wXleq+u
         pGl4yWTWupsOIpa6yw+Lw1yhE1ROiwJbGHQuV7bHSpNf9RJPyHPNBtAWFAZfleORRhL6
         WLTPQJjvwz7W81/7JwX5cFh57S7UN/12+UAkTOBhuMd1TO9loGkh+lN3yBJm5hm3Kx9s
         oAZQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=wK3ShHoB;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::633 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nkpJFWXdeuknNmq+J81fG1hEkDEHUFG5zq2Naqyl2cE=;
        b=Vt0I/QbMAwtmIyqjxwtF57awKEX34An/yoconjKRO5hPOWB14fRXExOVMGPHPNQIxv
         sHY0220ZPBR66aJo+TXLwk92TN+r+HZVL+aLnl7b4i0ekt54bD9gjFCHoa5eIxzwixMw
         kT3wczainOyVAn7qJd4WamTP+UpaDL4UqSnvD7sA8sUp4nmiQrUoVNE+SrfHlUWmQBBD
         lSq0X6NkeVuyQOT1mPtpxUKEGX/aqfiJPdItxcTzRPG3FZZ983qH9sdZYVLesCC3LpKk
         ZvLeNelr0s5mZ7yNeYoYftnkgGrSNoaIso0cJxEV49HZ5NFw4CdW9foCjE4mnPkYOYkf
         M+lQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=nkpJFWXdeuknNmq+J81fG1hEkDEHUFG5zq2Naqyl2cE=;
        b=GIJ6eF/JhwbxKBdyN9MtnndmKL+9PSxhEhYqedZ/RiozEHpYZwa9UY69nbfw/61Ddz
         OKxlbRXkuaG1RvRXqguvQOxkwxMLb2O71h58HDsx75NHTA/cCmxuCcxm2pGt2DyVl63p
         LWfJS/lW+ZNqS1z9Pzv/VTxpaFvQ/Z3GZl2kyzFmUzKLvgRGU8BW4FCiCj76DgFuMxib
         h/ZL1nwzknbnjyxOkoSNWFg4VDeiWtH3tdPYzdSvlSid1d+co1KdiJFRiK+W5nIdHK+g
         lP8vPfK8VQI1aN12VgHZPIRNjGJqqHM1mKZcXKsG+Xo9Lw16O72UgzYDRpJnhAMFFV1u
         ZZ0A==
X-Gm-Message-State: AOAM530DUAxgHHdpWsRhe9SGQcwE8K7TncgtXxwSRQp4pwdmTscd+1pg
	Z3sCehI77prugVWvPdsqUa0=
X-Google-Smtp-Source: ABdhPJxY3XKMcnf9boD5xbEZdjZqI1CFudgOo+/BB8P1yhYzGFI46USPVGfkZj2G47zGgbDqwYRkXg==
X-Received: by 2002:a05:6830:204f:: with SMTP id f15mr18088222otp.80.1606767172573;
        Mon, 30 Nov 2020 12:12:52 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:39c9:: with SMTP id y67ls3345108otb.7.gmail; Mon, 30 Nov
 2020 12:12:51 -0800 (PST)
X-Received: by 2002:a9d:3461:: with SMTP id v88mr17931518otb.40.1606767171297;
        Mon, 30 Nov 2020 12:12:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606767171; cv=none;
        d=google.com; s=arc-20160816;
        b=mM9QknDbUB7ebWN3f5lRWAv9DV+7No/0QcO1GeF6EsndK4gUVgSAiv5sF3FL7AIfIX
         kFA2R4KC4VbVpYJu7JI8/5t/wQcs4Uqrp/rtKNXCLCF7rgTFOsM/uiyxyYURyvaytQ77
         SBDXIVxFLLG9Z5AnQPDqI53sQJSzBvCE5fy6H/gHXnsOnx9nevyfTziSg+K50VXuxA8F
         FaHcVP0x7oDL/ksubwu/JTpy3ChpSEPFnyaCTLbGSjtQbi1JE/gip+S81EyyCQFOaVhr
         dpqEQ5xlnmGaVmfd1ydGlCaJuOoJ8Eq2X65W6f9cHzMxf4folf7b1D1Z2qV8CSP0kqyN
         CLnw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=xdK8+qkc2rtuVSy5z4KzKkg6o06W3+GbexGx9SBitVM=;
        b=v1iPZfy6QTSm8lMJWsdAMaBFA4c0ZmJyrKzQTYfOcDWNVMKhnTgcjUZJS5vZgPk9I7
         LVAr+G8kbxs9cxujvjfwtTIFg2Vv9XMmTyra8p/10xXD41AIjbdKnXJA5hYyWk8PxpMd
         S17QHplwO3LyD1fdmMGcUlbS5fJwpkyWzCDB7KzkwLSF3kW83Wc4Va+kgfINYxTMjzVG
         3oB6joM3ob7TCB+ZqgtqThDd3kRa9By7XfPJfjJKy2wKvCxciUxx6U614cZhmWtjimFc
         LNUzJP3F0Fuy0tuNRp6Eb6c5YR0CfM5dvAs3T1/0CH+b47VOmNBqnDGNumoyk/RnkTi0
         dzhw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=wK3ShHoB;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::633 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pl1-x633.google.com (mail-pl1-x633.google.com. [2607:f8b0:4864:20::633])
        by gmr-mx.google.com with ESMTPS id w25si433630otl.3.2020.11.30.12.12.51
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Nov 2020 12:12:51 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::633 as permitted sender) client-ip=2607:f8b0:4864:20::633;
Received: by mail-pl1-x633.google.com with SMTP id bj5so7115025plb.4
        for <clang-built-linux@googlegroups.com>; Mon, 30 Nov 2020 12:12:51 -0800 (PST)
X-Received: by 2002:a17:90a:dc16:: with SMTP id i22mr654696pjv.32.1606767170547;
 Mon, 30 Nov 2020 12:12:50 -0800 (PST)
MIME-Version: 1.0
References: <CA+G9fYt0qHxUty2qt7_9_YTOZamdtknhddbsi5gc3PDy0PvZ5A@mail.gmail.com>
 <X79NpRIqAHEp2Lym@kroah.com>
In-Reply-To: <X79NpRIqAHEp2Lym@kroah.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 30 Nov 2020 12:12:39 -0800
Message-ID: <CAKwvOdmfEY6fnNFUUzLvN9bKyeTt7OMc-Uvx=YqTuMR2BuD5XA@mail.gmail.com>
Subject: Re: [stable 4.9] PANIC: double fault, error_code: 0x0 - clang boot
 failed on x86_64
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Naresh Kamboju <naresh.kamboju@linaro.org>, linux-stable <stable@vger.kernel.org>, 
	open list <linux-kernel@vger.kernel.org>, lkft-triage@lists.linaro.org, 
	Sasha Levin <sashal@kernel.org>, clang-built-linux <clang-built-linux@googlegroups.com>, 
	x86@vger.kernel.org, Matthias Kaehlcke <mka@chromium.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=wK3ShHoB;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::633
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

On Wed, Nov 25, 2020 at 10:38 PM Greg Kroah-Hartman
<gregkh@linuxfoundation.org> wrote:
>
> Is the mainline 4.9 tree supposed to work with clang?  I didn't think
> that upstream effort started until 4.19 or so.

(For historical records, separate from the initial bug report that
started this thread)

I consider 785f11aa595b ("kbuild: Add better clang cross build
support") to be the starting point of a renewed effort to upstream
clang support. 785f11aa595b landed in v4.12-rc1.  I think most patches
landed between there and 4.15 (would have been my guess).  From there,
support was backported to 4.14, 4.9, and 4.4 for x86_64 and aarch64.
We still have CI coverage of those branches+arches with Clang today.
Pixel 2 shipped with 4.4+clang, Pixel 3 and 3a with 4.9+clang, Pixel 4
and 4a with 4.14+clang.  CrOS has also shipped clang built kernels
since 4.4+.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmfEY6fnNFUUzLvN9bKyeTt7OMc-Uvx%3DYqTuMR2BuD5XA%40mail.gmail.com.
