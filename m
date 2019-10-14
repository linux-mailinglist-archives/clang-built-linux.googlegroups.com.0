Return-Path: <clang-built-linux+bncBDYJPJO25UGBBXVYSLWQKGQEM6LCBQY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3a.google.com (mail-vs1-xe3a.google.com [IPv6:2607:f8b0:4864:20::e3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 858C4D66CC
	for <lists+clang-built-linux@lfdr.de>; Mon, 14 Oct 2019 18:03:43 +0200 (CEST)
Received: by mail-vs1-xe3a.google.com with SMTP id p6sf1845118vsq.9
        for <lists+clang-built-linux@lfdr.de>; Mon, 14 Oct 2019 09:03:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1571069022; cv=pass;
        d=google.com; s=arc-20160816;
        b=G0qbEJldoO3EALxAtDa+81Fq8oLuSDWJZ1SyfDfsyaqpk+A8/iUjPQRTOFOb+1qbs7
         mpwlGh9KUKaMkxQx+2QdHq6XPrQFYkQ2dMhwJ3W4PBb7hbGQCAVNHTxMz3a4yAiCaKvV
         8kHjO/BbN8Qx327mEK+yD6MgbzA783yy5m+o9euHxMB8nhhELOqac0JUyA/EeC34GyQJ
         u1F88XCkOOQJ1I99xfs0UdBlUJQ0yLuAOI1skktUGCGzrJC6i2q5WknMkqbYzA1f2ngP
         e7b9KxMMdvinzbrCIeBvhKYVlcVHvlxOs4zx7UskfLmuXN3ycyA+D0Pk9y0fTIc54vNL
         2SuA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=yvDDWb+jv3+nU/9lolma2W8JVlNI8EUmyd56UvrhKrc=;
        b=Ri8/y+Re03V3ibTIwDzOgTALL7w0PF6lqnRlFjkBdJwhC3kkjvK7ACqW+qKaD3AE5N
         YH0tjjgSFWCr/II5whtsarkIT9q0W43lPQxnEviSxUXI0HHNzcMF8d6gF976msMBwbOy
         OkBrqCPInWfj6xX9Exp7NL7B/vZp0QVqUK/51iGaHYzLjs37cdidBf//zcRZXgmz5mbO
         QMeq089YKIEoeN3eRXw4nGaLjtqD0hQF1sCquKRbH43flKuRfhU1wfv0X+bT3zv8V1CL
         eX5SB0J7eo+sQ4qAQgYqgRauNfzFxYD8Q9ubd3nHKyvM0KymfFXSNJxCDjEvBUKcDu/a
         z8lQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="FJRy+r/z";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yvDDWb+jv3+nU/9lolma2W8JVlNI8EUmyd56UvrhKrc=;
        b=U25QpesIsrvkEq0zSQiowNKxv9ogGyJKZGvYn0tmo5nC4TqSRtaC+sZ2T7p3MuA7J2
         mAY/t1bN4LZ0q9lHE1cuGlUc/TX4cupDNG8xwCRiKJutECoadK2MUbQvVQW01vdvzTq/
         1F3gspDHd+t04wC45dirUfGI6qoGlqzZGKkmFwV7HHxevr9Q8bFCtfNQFv0Mbj7m50hS
         s0iNpCu1GHIHbuvgX3Bq1mqYkrd3WLCqFBxZwqkEcav0BklTHVccP6OuIcSwkp0JrTek
         gUNi92SZ5RUZWtUNhDRucSL9DfozkndiK9DjBBuV3OJFck4558upJrGXpoT8KIyquWof
         cczA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=yvDDWb+jv3+nU/9lolma2W8JVlNI8EUmyd56UvrhKrc=;
        b=DWCFzf3D3uuQ0vtZJ8a/wiO9FqqItun6HMmU3YjYonwy69kQ4hm7vhWZYoEdSYlipM
         qhqZceqcnAI3uEL6y0jXQo1dOnCmeLiZiDRAdnb7JyGI4IzsuV8NEXjxYjuokOXGkqPN
         u/yGaNMGaCdpQ5jfIbDFzjhSzC9/V1kdUUPebY8vu+4BxPko+QFtpFQQfrf9x4wa6naX
         9vSK3YOfRwyOO/jqgQ6zYqod+xqvtS4oKeZ8mPo2xIZfMqsePqtTeXVQ06qbDcGA2hJ1
         czb7Tns1g2MHBamKITU1vPlngWQy8dIDgVjEbdgqjaFtCAlknLeT08huxvreWX5/kwBD
         5EIQ==
X-Gm-Message-State: APjAAAWg43Pdyyq5k3qc1/4MqzIMwanWiqMbhHgnqAljBW/sVeEp6iSF
	WAW/Fk1pC7bMInIVWO6+DWs=
X-Google-Smtp-Source: APXvYqzXlQ5Ascp8ox+GPG/9bMGBOt+b/TVjlefXp5pEwsyStbTL9DYoGau7oXuCGNvNoOTSzLFB+A==
X-Received: by 2002:a1f:1881:: with SMTP id 123mr16432598vky.37.1571069022497;
        Mon, 14 Oct 2019 09:03:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:c28e:: with SMTP id k14ls1437438vsj.3.gmail; Mon, 14 Oct
 2019 09:03:42 -0700 (PDT)
X-Received: by 2002:a67:2d43:: with SMTP id t64mr17860590vst.174.1571069022123;
        Mon, 14 Oct 2019 09:03:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571069022; cv=none;
        d=google.com; s=arc-20160816;
        b=axSFlBXBmcKmu5OeX8BC9jj25Ddv+mz2McJaiUT9gmLqxYbc5ROqTfZ7BrgxQ5mlg6
         uj2QorLY3OCpYfqn/b84ThkowpFDEJIFUN5Vf7QYuh93UbpRamE9YXCqQIXobx/RNNyD
         WDU7SXyvtR9oQYOla72QBs2ylXg9RcGDSRaAxVQePbmBSxHS98q35XzMR0HlRsMRWzAl
         JPEMlrAUwGt8DZHvbNRI4a8PtfAyRHkFk7HwSDFc0OBcfn0xG9olOU29yFGHJrCn/K7a
         gJ27DCesd4mtvSqJyLXfgX9RcKR8sqnYQaPORI64yDL4DOzvkSgHikmE8cRzIXRhMfZP
         ICag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=PrIaBUAl4Zs70Rvgh9Rg9A2Po5PtzGSRs+KQTItvpaE=;
        b=oojbtac/QbB4aTXDxHZTQHJJV3Z7SK8pK5enoATEK08JQDOr1iRgEJn9w51r2z5fob
         BhPWjJF8JQGttwXpIUWriWRD2i1z4+cCPGQFDBd4cN3phC36+dOJIlmaLAgh7V27bWqM
         ayAoiZ/BBxrAtTp4nDc/AC52+az0lf7yfBKhh7GBGvO0+xjV5mNphA437MuvW/15BYb7
         eEUcTdTe92aNtREYBXvzf7Hb39nghD590TqDARozvTe5GOMWJrGe+6tImWT/RE2QDOhY
         a3ZsinxHFGLTYQkjVWoKoDz77wZReBDFBMWAWT7+5cloyE/f5+azHf5iddjGAve1BjB/
         YXcQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="FJRy+r/z";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id u206si671539vke.2.2019.10.14.09.03.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Oct 2019 09:03:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Received: by mail-pg1-x544.google.com with SMTP id e10so6374709pgd.11
        for <clang-built-linux@googlegroups.com>; Mon, 14 Oct 2019 09:03:42 -0700 (PDT)
X-Received: by 2002:a65:464b:: with SMTP id k11mr15727142pgr.263.1571069020713;
 Mon, 14 Oct 2019 09:03:40 -0700 (PDT)
MIME-Version: 1.0
References: <20190911182049.77853-1-natechancellor@gmail.com> <20191014025101.18567-1-natechancellor@gmail.com>
In-Reply-To: <20191014025101.18567-1-natechancellor@gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 14 Oct 2019 09:03:29 -0700
Message-ID: <CAKwvOdm+xxo=Qm7N8CznSExFNL=GxoJ0Da4Td2D0zUYH4mOLvg@mail.gmail.com>
Subject: Re: [PATCH v4 0/3] LLVM/Clang fixes for pseries_defconfig
To: Michael Ellerman <mpe@ellerman.id.au>
Cc: Benjamin Herrenschmidt <benh@kernel.crashing.org>, Paul Mackerras <paulus@samba.org>, 
	linuxppc-dev <linuxppc-dev@lists.ozlabs.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Nathan Chancellor <natechancellor@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="FJRy+r/z";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::544
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

On Sun, Oct 13, 2019 at 7:51 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> Hi all,
>
> This series includes a set of fixes for LLVM/Clang when building
> pseries_defconfig. These have been floating around as standalone
> patches so I decided to gather them up as a series so it was easier
> to review/apply them.
>
> This has been broken for a bit now, it would be nice to get these
> reviewed and applied. Please let me know if I need to do anything
> to move these along.

+1, we've been carrying these out of tree for some time now, with this
series merged, we can get back to 0 out of tree patches.

>
> Previous versions:
>
> https://lore.kernel.org/lkml/20190911182049.77853-1-natechancellor@gmail.com/
>
> Cheers,
> Nathan
>
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdm%2Bxxo%3DQm7N8CznSExFNL%3DGxoJ0Da4Td2D0zUYH4mOLvg%40mail.gmail.com.
