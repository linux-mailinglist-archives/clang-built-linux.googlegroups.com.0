Return-Path: <clang-built-linux+bncBC2ORX645YPRBYHFUT7AKGQE63SWUYA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83f.google.com (mail-qt1-x83f.google.com [IPv6:2607:f8b0:4864:20::83f])
	by mail.lfdr.de (Postfix) with ESMTPS id EDCDC2CDDFC
	for <lists+clang-built-linux@lfdr.de>; Thu,  3 Dec 2020 19:48:01 +0100 (CET)
Received: by mail-qt1-x83f.google.com with SMTP id v9sf2289341qtw.12
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Dec 2020 10:48:01 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607021280; cv=pass;
        d=google.com; s=arc-20160816;
        b=feloushV8DCSwNjO78/TYh14S9iFh5vkthG+9z8NH8xYDp4tAleBFgO8vNuS4Cjbnf
         KT/YdvPsTX+B553TGln9T7IqB8SsGjt8Zq4bhGNjg7INnhNpaOjJLMojMT6XIfMcAmR5
         MUvnC2cUWuKSajls0pTiBtr5HScxOxkxv9IdmuHy7e63s+PvwmytLAZQXKPU1kFqqvQM
         1RnxJ3HEoBxLx2mb1842CFYTXS6NPIGuSsvN4b/AsOV8KQRChpAkNJI3mOfTdKRZkKhl
         VqZD/cgNeJo/A5p3qpIvxo8O06/1UoW4vmCG1UXD+iwBbtbGJlZCwkeZY0DqRXiMiIMa
         22tg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=W6Py7wfFf8BoBOLgwtiOGVNg/FtgkOqkeghMyA1I4WI=;
        b=kQOCQK0ZrBZksmKKHJiq3G6XfwqHDc4mbc1xFPLEy78oUdZoyxDAmSCtVG6fd6xDk3
         4iItrvy//e0DD1eILVqy7EtP5STTg2BVZ+akDcNPp2t9YtcHhyXOO8qVi6mfK+XCeAxt
         nlPEkmT9H72GdRRRvPiVmyvI2fip57om8R8wXvPNZO37FfV5MN0gnxG9NJf69jLigldw
         QbopBQBoANdNqfcW0rWelZ6BevEuO0nxf9zpM3KYrJVFDpttCQvj8Tpq3D6fE0IPEDEg
         k8fjW14Cm+7sPNSHOUgQmgZ+SoWcWA/ZJH5Xt22P0mS3XS3lBd02x5kbVGdN+UDRX+gI
         xI+A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=SKhZH7li;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e42 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=W6Py7wfFf8BoBOLgwtiOGVNg/FtgkOqkeghMyA1I4WI=;
        b=pk30wn59bfwkqfdHiV7/NnnZXoK1xp4mXmVCGxB13DYrZHNggonHblcITqYkBJgjt7
         AZ13T2CgWCW9i26amNZEaMReRPKMq3EBv48FrMG4BAJ4hxjBmS87Bh7HG4Q86PL6JyC/
         /9f8KK7DV2qx5VBlk3CFDGabtUcx1QDxcMeXzdDJytZ0/N4j1TscfkUko8Z9Xp+vHBeK
         OVAzON1nJeOgLpn0OQ2aQl0D4Wdh9jX28CsIE25bE+4GwUe9LoGvf8/iWVJEcwMz7O5h
         xZXBpxavGnfgfGjlnXZZECL2By0hinhCiTmijXyOy3I4iUQQW7n2kfmGR3xAboUJ/kCd
         t7Gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=W6Py7wfFf8BoBOLgwtiOGVNg/FtgkOqkeghMyA1I4WI=;
        b=oxamXPTaH0Sl3G6Ph3/Oo8na7twZIwXVSB29xMAPxJQeUxx+Sauhq5BNyqSc5INvhT
         16PL9W1GhNUw2Wx/2DzoQKR+34IN1xAsFsTm9MqzTQ6l6SwBlqml1TXFKiIv214trHOm
         dBSVk3Zvd0LSuh+HDfdLA/xG8fIw8D32YU5DiTa0TB2yCUdlRDI144OxCCnKAHapgIv0
         x2oKjfCGKWViCSYxVA2YWVn76qv9FPOLiYI3tWG1oJpzPu9n8xz3julyTCN1VeunRH4V
         nm3kAPAqPc9tmfl0mLemX10glxJmlYadDYjjRrgaWJYaTyot3ZBtQBBYmmvO874MMcWJ
         i5GA==
X-Gm-Message-State: AOAM533c7jEz4CD2kVRkI+6uTNtos40KV5FDZ+pDf0sz8G1woyapeVHM
	tTrWZ4W7FwRGBnmcZTpvq7k=
X-Google-Smtp-Source: ABdhPJw/1NldGgfoRwANvqPldlgjDJUejo0OntzK/m11nFjOYkajM02XVnpkOnXOHbVHUvqnZg2fCQ==
X-Received: by 2002:a37:b4e:: with SMTP id 75mr4415443qkl.78.1607021280459;
        Thu, 03 Dec 2020 10:48:00 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:750f:: with SMTP id u15ls2321946qtq.0.gmail; Thu, 03 Dec
 2020 10:48:00 -0800 (PST)
X-Received: by 2002:ac8:74c9:: with SMTP id j9mr4708496qtr.208.1607021280092;
        Thu, 03 Dec 2020 10:48:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607021280; cv=none;
        d=google.com; s=arc-20160816;
        b=EwOjcbpYJeqqWjQdHoodCPSM9nnnK/BhhXYwZWHOqkLkGAKRtbW/f+npeuSn+I7g6S
         QJnEcH1/evbxcAAnF9SYHo0ZYrjlgOtjvjVqgAMFWXO8ye8HwPjjdJki9FUiXcGJiGBs
         ay+SYcT+LSUqcBH/0mX9g+loslXYdsdIFw07qdh1vsld/jkFlVnRSdgua+K2By5Do+K4
         Ib0XY1mIE0yNejXmOV6hhBvcvTfOKRFTZS5o57PCWvcA93OBx7YJTx4dV5T157Mo2dy6
         JS0Ya3kNtckCPMmWy+N+8vyUqi9uJw1/6EGhSibQHNd89RKskJl6WV71kUo31FqCItc4
         nqpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Ah+rD4wk+k3lncQwfhIaQxiXkvEJG1Frpy4Nqe+0q0U=;
        b=QklNNWNxmq+BH6SS6rB5cs3+N4Is78B3texgsp0tvq+j02/7tMvta3QfezwNg6J56N
         c3CJPplFVquDuv4dBiWW+cAtzNyeuyI3mvckpXKW0FYnNmU0W38gi+CssNWXwCvAWMG8
         Jf/6DwtjwSS7r0vdL50L0jr3C6o19XyIr5S5vwsG3lilC3KnBqoFJX/T2ulrRvno8/4w
         w9vxHZcA4WmO2B1x2rirkCx6EjinYK3iVywWPQ5QYJoeWN05sCTdG6KwEvzD09yomdGH
         IKPkTv9QgiGbYugaLsMv83qSVPpcvh7+Voh4/WCaKKMMemNpnL3E/3ccO50zi3/WrG+B
         MrIQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=SKhZH7li;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e42 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-vs1-xe42.google.com (mail-vs1-xe42.google.com. [2607:f8b0:4864:20::e42])
        by gmr-mx.google.com with ESMTPS id g2si164246qko.5.2020.12.03.10.48.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Dec 2020 10:48:00 -0800 (PST)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e42 as permitted sender) client-ip=2607:f8b0:4864:20::e42;
Received: by mail-vs1-xe42.google.com with SMTP id x4so1825080vsp.7
        for <clang-built-linux@googlegroups.com>; Thu, 03 Dec 2020 10:48:00 -0800 (PST)
X-Received: by 2002:a67:f74f:: with SMTP id w15mr696164vso.54.1607021279552;
 Thu, 03 Dec 2020 10:47:59 -0800 (PST)
MIME-Version: 1.0
References: <20201013003203.4168817-1-samitolvanen@google.com>
 <20201013003203.4168817-15-samitolvanen@google.com> <202010141549.412F2BF0@keescook>
 <CAK7LNAT350QjusoYCQEHDdoxAfTZjj82xp86O1qoNF=0u0PN-g@mail.gmail.com>
In-Reply-To: <CAK7LNAT350QjusoYCQEHDdoxAfTZjj82xp86O1qoNF=0u0PN-g@mail.gmail.com>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 3 Dec 2020 10:47:48 -0800
Message-ID: <CABCJKue4Gg7gGA3cgpP-uiThxR=5Qh2Pq+KctGJN_GtStpf9Fg@mail.gmail.com>
Subject: Re: [PATCH v6 14/25] kbuild: lto: remove duplicate dependencies from
 .mod files
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Kees Cook <keescook@chromium.org>, Steven Rostedt <rostedt@goodmis.org>, 
	Will Deacon <will@kernel.org>, Peter Zijlstra <peterz@infradead.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	linux-arch <linux-arch@vger.kernel.org>, 
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, PCI <linux-pci@vger.kernel.org>, 
	X86 ML <x86@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=SKhZH7li;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2607:f8b0:4864:20::e42
 as permitted sender) smtp.mailfrom=samitolvanen@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

On Thu, Dec 3, 2020 at 10:00 AM Masahiro Yamada <masahiroy@kernel.org> wrote:
>
> On Thu, Oct 15, 2020 at 7:50 AM Kees Cook <keescook@chromium.org> wrote:
> >
> > On Mon, Oct 12, 2020 at 05:31:52PM -0700, Sami Tolvanen wrote:
> > > With LTO, llvm-nm prints out symbols for each archive member
> > > separately, which results in a lot of duplicate dependencies in the
> > > .mod file when CONFIG_TRIM_UNUSED_SYMS is enabled. When a module
> > > consists of several compilation units, the output can exceed the
> > > default xargs command size limit and split the dependency list to
> > > multiple lines, which results in used symbols getting trimmed.
> > >
> > > This change removes duplicate dependencies, which will reduce the
> > > probability of this happening and makes .mod files smaller and
> > > easier to read.
> > >
> > > Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> > > Reviewed-by: Kees Cook <keescook@chromium.org>
> >
> > Hi Masahiro,
> >
> > This appears to be a general improvement as well. This looks like it can
> > land without depending on the rest of the series.
>
> It cannot.
> Adding "sort -u" is pointless without the rest of the series
> since the symbol duplication happens only with Clang LTO.
>
> This is not a solution.
> "reduce the probability of this happening" well describes it.
>
> I wrote a different patch.

Great, thanks for looking into this. I'll drop this patch from the next version.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKue4Gg7gGA3cgpP-uiThxR%3D5Qh2Pq%2BKctGJN_GtStpf9Fg%40mail.gmail.com.
