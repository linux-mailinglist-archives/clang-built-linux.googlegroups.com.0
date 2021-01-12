Return-Path: <clang-built-linux+bncBCF5XGNWYQBRBLPO7D7QKGQEQ2HS5OA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3b.google.com (mail-io1-xd3b.google.com [IPv6:2607:f8b0:4864:20::d3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 89B262F3CAD
	for <lists+clang-built-linux@lfdr.de>; Wed, 13 Jan 2021 00:56:30 +0100 (CET)
Received: by mail-io1-xd3b.google.com with SMTP id l18sf111225iok.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 12 Jan 2021 15:56:30 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1610495789; cv=pass;
        d=google.com; s=arc-20160816;
        b=Xqp5BJzL2DpffwUoyTC+9CAjdyaoJ5saFzNA7LEPEtjVaANJJZVA159SGR2UP0Bx9F
         YYgiXigaXb01ZetakXZPJNJxom7ErWp2ArwSUKXIvbCmWHDEOYuChR5aKZw9+O6EuoI3
         l5kStB5Xks/nsfJ22jTlEar/TZiZ3Tx/+jVJv7CKdL0U+GyOT9SfUVM2bzx/z2mzL4IL
         kXdUPVraGUvwqE5HAqEnCuR8kxjQ6lg29oaIfCuFl5oDcJ1RbOnHdUU49AuKcRzz4iIs
         NW4F6dizwNusG9KYcWtiyx8Be82Yr6nWHH4qI83PvnSEJod9bH7lGajpw7UyZy12cRFv
         k2lg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=eJ+4NOS4myBbO4VPEs0RMvEJsAC9Cj8BFFu5H8UxXpI=;
        b=UgHUm1ZzCorXFcmHBg3LaHUUIbpfXO9pPyn9uYnZqQFZILPpxh03GPdFeruyzt5UEi
         xPb9QI191qfztV/SC2y07lQmgEOcA9eodNvielPRkGw4f9/rYdjwZdAw2iLlxea3R4MC
         YCHK+UdpXa12oNUsZ3pLNA3uD8mWe1W1gRCurU9Di40ZX7aAiymiISbQjT6SzFxlPB4N
         ES2WjldWEwsM9Hq9MLaMbhCvJieqD5hsK2nSadNv1EClk53tnD+kzmEHjuRLm4r5p48F
         Njeuza8/p7L40H5Ohx6BQz5fa4Hpce8CCcyTQhG+yDBjMJ+qWRiCjQAlewJDnwn/k92R
         6M9A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=CoB30TPk;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1029 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=eJ+4NOS4myBbO4VPEs0RMvEJsAC9Cj8BFFu5H8UxXpI=;
        b=jPFsISbZ2l/sbGAuZNXIonWJlyo6lBDQZq4x1lcjjBrkC+6tM2lM954TSkDSowp0N7
         G02j9a2UhWIY+wcNfz65L9WjoVU7so6GdlWYiwIEbR8/pzfqMzemILxWK9WuCkzR+XBt
         53vbNdIpxd4JZxAhsXNlXw29SKB6Bx1EUqk8dNG1fW0YgGD55+Zm57B5tfRreUHbeKuC
         ia14IylDWdAsd/bm7B9K+520gpN9ZYkBqoi2oJPnvNbCo+SkwgRpOGGm496VjxuILtH1
         RBMhrS1IjYWA7UZfxQinyja+0Mtr0j8JII2vXrs8ZJIY4d0qwvvPlZoTw2Lpj/bAZvRJ
         zpfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=eJ+4NOS4myBbO4VPEs0RMvEJsAC9Cj8BFFu5H8UxXpI=;
        b=meqrGjR1XHLT1Wt3hm53gRTqWQGdZSvhRMVZU+mf5FZ0qX3nUbR74pGWdF705buFmS
         uxavVuNHWgzpeNyqvSw3Z/Kj/Zf33/FQAGZ7IUvw9IBHFljI2f/zZz+rIY3I/TdQigSo
         2yxg8U7zOIcFWWZ+VsBJYZVhsav2BiYOEDAMh9OS4DfQtKsT6LRfG7trbOKf1YM5wJpt
         Z7kzIc9XYd6TC+jAwigVwNZd5Y5vozlX+t2O47V2UduXRPfVeW6nwcONWQfVw031X2Cf
         ggDbJO3xj4FDrXbiL2QUSmg4qytYuSPC6y+YDxNggxrSCEnhFVhHhhNvBPD2u8aEF5ts
         HRQA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532D8a5xAy6ZT2B19t8j1PZWfmcu6in8umgrcikCUaQ6W81uVYqM
	p0irIJxL9RQQtpe1KEWytnM=
X-Google-Smtp-Source: ABdhPJxyuI72V+Ah7HgNcSFmS+3546ROqhpdNuS+VAhR6Zs7Skw1AbDOEVmImKB3aK7kx+BdU2G3tg==
X-Received: by 2002:a92:650b:: with SMTP id z11mr1674790ilb.84.1610495789108;
        Tue, 12 Jan 2021 15:56:29 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:1446:: with SMTP id l6ls33933jad.5.gmail; Tue, 12
 Jan 2021 15:56:28 -0800 (PST)
X-Received: by 2002:a02:7314:: with SMTP id y20mr1876907jab.78.1610495788632;
        Tue, 12 Jan 2021 15:56:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1610495788; cv=none;
        d=google.com; s=arc-20160816;
        b=IJTCABYkQqoM0yuByXRB8f82SD0SxjG9MIM1n4KFWIUQUd3lmJcMWIxY2n1oQKdEGh
         1hL0gYesFCNaKAUH/fnQ5G4gl8ZpyuZyKdqBdt37R+TfHWx38Kuyf7giIRbkE5oCtlw6
         bpCmq7eTEo6EpqmJEcmanCktkgrzle+0kvGauaBHKE+ybX8dyCereZUmO9QkWkDJc22z
         WB/MnNcZr9lB9naXX1bHww0bY75K5GYOJUTkDOTnNVlb057+DDVQ3C86mmvgVzaBAQXv
         ohp3ZqCJ7js8iBtP3R96cn+OKwfmtO2H7KrjohJWyB6H7/fzyOKYVpqzsMF7BSwkd3P2
         knSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=egOxKkqbyBetrH7WixXhoHmmhlfHD6VlkXXUud3e8MY=;
        b=ZP2SCJRy/rAK1UR0T0cOep9Y1zilV5cS2GZE64L0QrfKBHnSXYzX2JKzUsPw2A3/fb
         G3gxf/htIziuUBoBp3PHIwC8SA3HA6W7i7taOC3sY9gi7JjWz9VxgN6Bet7RV/28WZV7
         BWACFRlsIwRoF8dYZ9d0m/TFn5B47uOM5C6waQocDWLK13gW7T6EL7F9KZYar95Q6OPn
         rGPPQDDYkPTg0wGeVh8ScuMJUNF+UbIuTlpjdUKkx39zhra1TpseD3ajATlCSVFCwNlD
         nitE9769KpgJA3ntmZNHHXfIwOCK9eaTkaLsM/oxqnePzRmn5UmLMHDiJby1BBwcz4UC
         X5Wg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=CoB30TPk;
       spf=pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1029 as permitted sender) smtp.mailfrom=keescook@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: from mail-pj1-x1029.google.com (mail-pj1-x1029.google.com. [2607:f8b0:4864:20::1029])
        by gmr-mx.google.com with ESMTPS id p16si32487iln.2.2021.01.12.15.56.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Jan 2021 15:56:28 -0800 (PST)
Received-SPF: pass (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1029 as permitted sender) client-ip=2607:f8b0:4864:20::1029;
Received: by mail-pj1-x1029.google.com with SMTP id my11so1487913pjb.1
        for <clang-built-linux@googlegroups.com>; Tue, 12 Jan 2021 15:56:28 -0800 (PST)
X-Received: by 2002:a17:90a:c789:: with SMTP id gn9mr141503pjb.101.1610495788184;
        Tue, 12 Jan 2021 15:56:28 -0800 (PST)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
        by smtp.gmail.com with ESMTPSA id z11sm224715pfj.191.2021.01.12.15.56.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Jan 2021 15:56:27 -0800 (PST)
Date: Tue, 12 Jan 2021 15:56:26 -0800
From: Kees Cook <keescook@chromium.org>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	LKML <linux-kernel@vger.kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [PATCH] ubsan: Implement __ubsan_handle_alignment_assumption
Message-ID: <202101121555.C929315@keescook>
References: <20210112205542.1375847-1-natechancellor@gmail.com>
 <CAKwvOd=yrVKBn9TN2cP8SiB7A8=c2g41PyodKGJu+xEQwAmnDA@mail.gmail.com>
 <20210112213703.GA1376568@ubuntu-m3-large-x86>
 <CAKwvOdkA5kmXhKFDFTApLyT5LcUX2-Xr6vJJ0b8wePunMpLu0g@mail.gmail.com>
 <20210112220634.GA1377517@ubuntu-m3-large-x86>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210112220634.GA1377517@ubuntu-m3-large-x86>
X-Original-Sender: keescook@chromium.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@chromium.org header.s=google header.b=CoB30TPk;       spf=pass
 (google.com: domain of keescook@chromium.org designates 2607:f8b0:4864:20::1029
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

On Tue, Jan 12, 2021 at 03:06:34PM -0700, Nathan Chancellor wrote:
> On Tue, Jan 12, 2021 at 01:53:30PM -0800, Nick Desaulniers wrote:
> > On Tue, Jan 12, 2021 at 1:37 PM Nathan Chancellor
> > <natechancellor@gmail.com> wrote:
> > >
> > > > if real_ptr is an unsigned long, do we want to use `__ffs(real_ptr) +
> > > > 1` here rather than ffs which takes an int?  It seems the kernel is
> > > > missing a definition of ffsl. :(
> > >
> > > Why the + 1? I think if we use __ffs (which it seems like we should), I
> > > think that needs to become
> > 
> > This came up recently in an internal code review; ffs and __ffs differ
> > in output by one.  See also the definition of ffs for alpha in
> > arch/alpha/include/asm/bitops.h.
> 
> Interesting, thanks for bringing it up! Looks like ffs returns 1-32 and
> __ffs returns 0-31. I think that we want __ffs here because we are
> shifting (1UL << 32 overflows on 32-bit architectures) and the code in
> LLVM appears to agree. LeastSignificantSetBitIndex evaluates to
> __builtin_ctzl, which is the asm-generic implementation of __ffs.

Sounds good. With __ffs, consider your v2:

Acked-by: Kees Cook <keescook@chromium.org>

-- 
Kees Cook

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202101121555.C929315%40keescook.
