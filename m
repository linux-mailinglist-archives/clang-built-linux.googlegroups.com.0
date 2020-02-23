Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBA7MZPZAKGQEX4W2CWQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13f.google.com (mail-il1-x13f.google.com [IPv6:2607:f8b0:4864:20::13f])
	by mail.lfdr.de (Postfix) with ESMTPS id 864D9169A5C
	for <lists+clang-built-linux@lfdr.de>; Sun, 23 Feb 2020 23:00:36 +0100 (CET)
Received: by mail-il1-x13f.google.com with SMTP id o13sf14004379ilf.10
        for <lists+clang-built-linux@lfdr.de>; Sun, 23 Feb 2020 14:00:36 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582495235; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZPkFt3YrQ0ObETQSwx0HTtNeQmy1R+12bsygS12jR9KG/M2upN9WlOPCqVg5pVtncK
         81+Yq/TKVuPnGbyOA+Shs+JOC4uElwoZDx0z3xbqS+zLeEuqTHqX4nM+mCmLEThtTeiN
         LC1bQGzO+2hdZ3YvoEczzofpf2loROYUHBCIMCyIK2RZewVuW8UO92QOmA8RgIsnFbEZ
         /HOGQ+56bx0GzvttXi5VvEmx5RpiOvbXRJrlfR1O4GGDDiklVFAE/Bsc0P19Pb8YTWO+
         orzC1PaQQE4TKuCaGUtyrvz53dhDmMCt9ijOgR/zTcR/MtvAUh+MEckJzy19y/d7bRKE
         arJw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=HchTd28OG/+uNPBcjIwFqW1fDLhmYZ+MjQEK7wd9/Ko=;
        b=wMzz+x9xhfY21Vlo1bSG1tGipOL0XcK+lcN49/h7VQtvIyHVUhio5AS3qW/YHJ1kAK
         SIZ5Az93V35su+bM7n/zO6V8PpG/nLxwlK84r1gt5WUXCNa4k1hXL2LZ8X8rGT8zv/wp
         0UXWvycORmZYP7We7IYGVqwBXRVUKgmnuWrMpTgl3a5fHNlmaw71wZ7cmOL2F57VQoZd
         lIn2wlIDJfWVsgsml0QGKTYOZfBpehKi6buDbvLdcu9KQk+rzwoAsk4kalOF7hr+aUrV
         cqJ/8fFSe7gVqlxusbiRDPPw7HNapGS4CU18Vd+ZHBMh5uVFNQ/fpJsC4YR3iUqcZsLR
         ATGA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=jAF7dl79;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::c44 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HchTd28OG/+uNPBcjIwFqW1fDLhmYZ+MjQEK7wd9/Ko=;
        b=S2UsTORZpmyiBYPOSXUqzsbhIWteQ6FtAa7tHNoPrSLGPJV5hNSkSvQjKbBGG1iT+S
         BT4jEryGRuBNOHC9t5o173plyuy0611Ye7g14WnHD2AKypv9Zl2053a6drIniHFBiMks
         BU1xXPMA0tZ+l+c03KIMdWh51ePEwPL2Eu9QG9+1is2rRdYQjJvHgNso3vixm/D2x1Ij
         pJc7fJYbZ9CiH/0axcfRcu8ttDXLuUA95SnVfmnYCH7vBh6RYfiWSKc1Ai6BkqALsn+X
         +AUPCi65U2aQ5RRSVvQTyjoOQKKeleKqvNv3p7/Ed/sFK9QBRz4UwH251zCU2WUibl8d
         G87A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HchTd28OG/+uNPBcjIwFqW1fDLhmYZ+MjQEK7wd9/Ko=;
        b=N3M7e+xHjlES9rmuP8vwL5DghsvokWkjMpH8BG1/ByPAfrhA6QhXXQ5ozLc5fBxcs5
         FQgOl0X0Ai+r6ehsale6i1MzVEzeekWihTCwkv1nFJQOrGwoODNki1tx3i1G4YVFWKJB
         L6IXkFQ9i3oMiCuZu2RxPBIbDhmP2ep12agUXiMPWyTyTpIZcs6NHnVHXkZWnYSreY5O
         jsymdYhK2Tzn9ByS8DHGnNHfMyMUAeQDm0s7TXhucNmS4pQ3/ESUhdr2Dp+6sC/veXdU
         02p2j/bIS2eobppKloM04v5Zy8bRPyeD5PN+njEUl+2oaVZWtbxgMmdMyiCmufsrbEm1
         LT8Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXiwT8dNSGYuLSfn7/DJIKLYiChDYbAXUWgvZjBnAuOrXiNk4uH
	mBdM/tPtt1jtBQCMK3b1nWs=
X-Google-Smtp-Source: APXvYqwtMfqseGCrQ2jpVlFhgTiONr0i7bJuWzxOstEmaoav+mN5sI7XZ4aya4kWYsg4BDaY08Lobg==
X-Received: by 2002:a92:d7c1:: with SMTP id g1mr56567051ilq.192.1582495235455;
        Sun, 23 Feb 2020 14:00:35 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:5dc1:: with SMTP id w184ls680310jaa.11.gmail; Sun, 23
 Feb 2020 14:00:35 -0800 (PST)
X-Received: by 2002:a02:cca9:: with SMTP id t9mr48758694jap.142.1582495235002;
        Sun, 23 Feb 2020 14:00:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582495234; cv=none;
        d=google.com; s=arc-20160816;
        b=hlU6DmU0BFjF6x3jPRNahW+bUH2L2Ur0oJfRZURXYLdtnYpdLwxHxznjk+fiwejAi3
         /s0GXdtiRBcIhPCDy9eCVbg8Pfs/RRL1QFd4Tdpf8+JNOUbaDd60fQbRcxNSMkuC3pkK
         /QQ3E8V8DcEWTU/I6hgs4KTZXDf8V3XzHM9AaBxO7CUdyF3tTdp35A26jW5jC5EOHPHL
         /y/juMNsfQZrdtjSwDvI/ebkiWmiwNWbwYA1jeXbGKFkFB1e+04v8ZaidS8U8cefCpJo
         D32duH/OPOFQa+POho/pL0tE+JtgFntD64AJKRtwBYTn0lpUrn2RNep8rHzRhyD6+Dj5
         JgrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=oEv7z6kfjOWhzFJ0U6oJmvXOArxz5ZVjmjpUgwRoIf8=;
        b=oZl3zx7TGepbroKJA0RCTGhqMxbVPNuM2L0jWMZEwmfD+fI5qQeTUzxKdZoc1NGxog
         Uv/0ohwY0y7Nafp/l5ig3hPMHuvynpzS6MZYRM3b6Iw51uSk+eW1sABPK9A6OZZc8Ohk
         AKXBU0yZzFy9Q1oeS8oVrpCqBwrpWJOYOMgayHKGkI+s9AbewmvKxXCXNEumU3JW9YRN
         lpw45sVc4GClc6pvozfCfaqacX5wYeDXOMX+0iGwJ9lVpdKBpAV0fzQpw1u+7b8ozs0h
         rqcFUjDFgK1VxxIto4QxOrma8pXWyHx3b+a710Li4d4eeUdhvKA4X9h5Z48DNk0+WM3T
         jggQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=jAF7dl79;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::c44 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-yw1-xc44.google.com (mail-yw1-xc44.google.com. [2607:f8b0:4864:20::c44])
        by gmr-mx.google.com with ESMTPS id h4si821665ilf.3.2020.02.23.14.00.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 23 Feb 2020 14:00:34 -0800 (PST)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::c44 as permitted sender) client-ip=2607:f8b0:4864:20::c44;
Received: by mail-yw1-xc44.google.com with SMTP id b81so4359709ywe.9
        for <clang-built-linux@googlegroups.com>; Sun, 23 Feb 2020 14:00:34 -0800 (PST)
X-Received: by 2002:a81:a00f:: with SMTP id x15mr41284697ywg.327.1582495232444;
        Sun, 23 Feb 2020 14:00:32 -0800 (PST)
Received: from mail-yw1-f45.google.com (mail-yw1-f45.google.com. [209.85.161.45])
        by smtp.gmail.com with ESMTPSA id l189sm4177999ywe.7.2020.02.23.14.00.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 23 Feb 2020 14:00:30 -0800 (PST)
Received: by mail-yw1-f45.google.com with SMTP id h126so4372646ywc.6
        for <clang-built-linux@googlegroups.com>; Sun, 23 Feb 2020 14:00:30 -0800 (PST)
X-Received: by 2002:a81:3888:: with SMTP id f130mr36072275ywa.138.1582495229594;
 Sun, 23 Feb 2020 14:00:29 -0800 (PST)
MIME-Version: 1.0
References: <20200222164419.GB3326744@rani.riverdale.lan> <20200222171859.3594058-1-nivedita@alum.mit.edu>
 <20200222181413.GA22627@ubuntu-m2-xlarge-x86> <20200222185806.ywnqhfqmy67akfsa@google.com>
 <20200222201715.GA3674682@rani.riverdale.lan> <20200222210101.diqw4zt6lz42ekgx@google.com>
In-Reply-To: <20200222210101.diqw4zt6lz42ekgx@google.com>
From: Kees Cook <keescook@chromium.org>
Date: Sun, 23 Feb 2020 14:00:15 -0800
X-Gmail-Original-Message-ID: <CAGXu5jJQRnPQDq6ZLrtCB-i0A_+AifY2me-BinuKz7LJU8=ePQ@mail.gmail.com>
Message-ID: <CAGXu5jJQRnPQDq6ZLrtCB-i0A_+AifY2me-BinuKz7LJU8=ePQ@mail.gmail.com>
Subject: Re: [PATCH] x86/boot/compressed: Fix compressed kernel linking with lld
To: Fangrui Song <maskray@google.com>
Cc: Arvind Sankar <nivedita@alum.mit.edu>, Borislav Petkov <bp@alien8.de>, 
	Nathan Chancellor <natechancellor@gmail.com>, Thomas Gleixner <tglx@linutronix.de>, 
	Ingo Molnar <mingo@redhat.com>, "H. Peter Anvin" <hpa@zytor.com>, X86 ML <x86@kernel.org>, 
	LKML <linux-kernel@vger.kernel.org>, clang-built-linux@googlegroups.com, 
	Michael Matz <matz@suse.de>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=jAF7dl79;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::c44
 as permitted sender) smtp.mailfrom=keescook@chromium.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=chromium.org
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

On Sat, Feb 22, 2020 at 1:01 PM 'Fangrui Song' via Clang Built Linux
<clang-built-linux@googlegroups.com> wrote:
> https://github.com/torvalds/linux/commit/83a092cf95f28696ddc36c8add0cf03ac034897f
> added -Wl,--orphan-handling=warn to arch/powerpc/Makefile .
> x86 can follow if that is appropriate.

I've been playing with a series to do this, here:

https://git.kernel.org/pub/scm/linux/kernel/git/kees/linux.git/log/?h=linker/orphans/x86-arm

There's some work to be done still...

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAGXu5jJQRnPQDq6ZLrtCB-i0A_%2BAifY2me-BinuKz7LJU8%3DePQ%40mail.gmail.com.
