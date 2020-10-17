Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBIE2VH6AKGQEXIJAYDA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x738.google.com (mail-qk1-x738.google.com [IPv6:2607:f8b0:4864:20::738])
	by mail.lfdr.de (Postfix) with ESMTPS id D8E0F290E83
	for <lists+clang-built-linux@lfdr.de>; Sat, 17 Oct 2020 03:47:13 +0200 (CEST)
Received: by mail-qk1-x738.google.com with SMTP id v186sf2740208qkb.11
        for <lists+clang-built-linux@lfdr.de>; Fri, 16 Oct 2020 18:47:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602899232; cv=pass;
        d=google.com; s=arc-20160816;
        b=uzpSASxQWBf0Opqf9uYlCvzCN0mSHlU7nFgkKMGVXy8TB8Gtq1LWVYKjSpr84Kl42a
         eP1GcPDsa1Ex3k1omXN16hb2q1/icV8GgP9Z6ZnEmg8yIh6UkAQvPFOYZKZYzWAdz7xK
         448gZeYdgw5Y/qzJPtdw8lpa+Ltr71ezgZ2+IIzJ6bFWdMrfKOshARQmAKwIkSCL6a2P
         O8PRi/jiQT4bqe1RhotWBcXw/wFj2ntwwio70+EaXBx9LiKR3h1ytLG9DfdizPlShWeh
         o7MNwgpCJPHPLamd8QA8Yfgn+v4aCWveCVP25MOLOXlJbuvbZYgR5THWZN0yyg7kn5sh
         xHnQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=6nh83X+DArxr4LhpBVcu7pFKJwSy0IYaEY4VaDZkne4=;
        b=hE8LEdT8PLNORMxU/r+u0AQHgxg05j+2vRQ8tZP80Dw6nmZJPHm6MskqjZl/89qk3r
         VDdCzJkuEDR2L5sALbEXOglNnfp2nW7S7dIMnCFUDTge3Bv45Dlp+OKUVNZ8bu9B4i9x
         NnSWfrcxayzC0JNjt1iKPdeRbz2hSFgWVFdL7r8JQ7Ci9/Wk5NC7rBlWy/WZaGtff1j/
         cDq3FCDW2lagQDBcDcztXLW6C9bgQIb/fKmngHWFnDdzvA6GVrQpCNn7S/6i4hWzUKUv
         Vx4ZDF0vxDiKM/NXeXatjJI7DW4WDmCO1p5ORntI+rWdbSbsOeA41IsTk1DnHiGwj0Mb
         kN6w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=chx05RkX;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=6nh83X+DArxr4LhpBVcu7pFKJwSy0IYaEY4VaDZkne4=;
        b=fHCzhjK1s8ObnQuCJAiDWkVJbg7ka81cywb2HYPxebuYtS/cXHs9itE/paqUPcgi24
         e1yx7058LwyIy8XlQVN3B3vsLlJ0LL4HPM5v/hjHeSt5ZxRfEWZaQXki03QUMCRlFP+H
         wJYIQ0FRfaikyiaTdxXnatXQiAvUf6CcRKjavonL6WVFdHPsfWzSCRD4eWmvTsCAYz3O
         4HkP31VCr05GSwYCk2YD0k5MvgGxT2mjLz4cA6J2Eg9fPRzv1TMdt3FJQWywJ773O1t7
         DxuZVcM/CXMmlymiPRjfSeu7PZ61plug3SygNXW47nNiAITt1Yf2CY/swnVlARQRpErq
         wDFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6nh83X+DArxr4LhpBVcu7pFKJwSy0IYaEY4VaDZkne4=;
        b=eGiTzSF0fND4lJTzhGN456SxhUiziPEaTjL9DIpClTKUqAdtvmUvoFV7QwwVYD4XLp
         opQyXO5DxnezB3CX+6JpyMIt9n98Xxn3ImDST1zWicE/q2PoxwuounAOMGHtryeLBrXZ
         xwlgnHaSl4zaKoHjTZ8jVkLYz7JM8kUh3ZEshOSFgZ3ltnxOFkhblWHhHHkkfCW/SPO3
         hSwU3dAYmqrdUZ/m5U/5TrVYNkO2cuBMZGWktXzrnev2w+ueMDZ/DkoK9KFeg0DxMqTl
         oyF+8P+N0nUAlaR5DQW7X8Iw9Mees9+Mw5PWEWOKsZpuvpfNN5PEgE03/Bg6gWl61x1u
         uBPw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533LOYn5e8jHSqFR8P1EGV9TGxHb6Ax807XPrlSk6LJLrE9oLaMi
	kOwikX6lIkuycQBdOobrUQc=
X-Google-Smtp-Source: ABdhPJxJyTdQV2P6AZe0YF9DcbmsnPdyoeYTWFjCkNQ9vj3M1+b4GWTf8/4jdX//o6094IJN1ECX+g==
X-Received: by 2002:ac8:3aa6:: with SMTP id x35mr6319945qte.0.1602899232500;
        Fri, 16 Oct 2020 18:47:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:2f51:: with SMTP id k17ls1567033qta.1.gmail; Fri, 16 Oct
 2020 18:47:12 -0700 (PDT)
X-Received: by 2002:aed:3b6f:: with SMTP id q44mr6113742qte.234.1602899232085;
        Fri, 16 Oct 2020 18:47:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602899232; cv=none;
        d=google.com; s=arc-20160816;
        b=SLvWFVph9WouqIV7oLfJF1l89YIJNr1KKHqBbOLYPglbVuYi5CsatUN9xqs24TLXyh
         Ylf3z/8jvPGFiFLMUfsYAyjDyMxTfFekAsYWo1+/oFI3UfdoLID8afw++Gz/LEAuL0q+
         ptADOXPHXSpVF+3Tlr/y6H3PqlYpLYh/UAm8TwXzGcvJc1QKJ0Zc/YfH/uxsUwdAqlcV
         PE+wTOESM9MMT1n1tDck67R0LtHPDnCnId89uZQkllfns4lsTgZ4H5xGZRLRAmqPwRgR
         7981dfQTd3sGVubEueZb+crfUYIEBHrq2jberddHSNLRQpAYRYX0NIphOBzkDfMBf/QR
         JAFg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=/0ovXshOhxLJmlzp2NpX2ArKIwhaV5c9daLvgg85jsg=;
        b=tiRUFD57g/cj+F4gS0Up0GrDUEQyAu9CHXPMf5f8iZ5Y4SfEwScuMCumAQQWXsim2L
         GHZq+so6E1PQSLw6vufoJwvYXQiOz4rfg0bzm36x0P3ikf25IRDPvyo4KUEIMZPQtV4c
         OTr1imI7j1KFjIb6sVDAZ8nO4ZdQlTfVR0gk6vDCgShFhEKWAExWnptSxFjQjJzyMqlI
         nLzC86iDdedLBlVf9d5oaqAJhGi6w0jsp1mF5d64kAN+c0UJUFP8jWOYEsD+SKZtkQCV
         saUXe4rAxObwUZig5EAQalFxq2z+kDKjA2LMsqyAkpn8biFSZqJs8xeegFFO0ME/8PZS
         AQWQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=chx05RkX;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-05.nifty.com (conssluserg-05.nifty.com. [210.131.2.90])
        by gmr-mx.google.com with ESMTPS id z205si261027qkb.1.2020.10.16.18.47.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Oct 2020 18:47:11 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) client-ip=210.131.2.90;
Received: from mail-pj1-f47.google.com (mail-pj1-f47.google.com [209.85.216.47]) (authenticated)
	by conssluserg-05.nifty.com with ESMTP id 09H1kmhL006250
	for <clang-built-linux@googlegroups.com>; Sat, 17 Oct 2020 10:46:48 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-05.nifty.com 09H1kmhL006250
X-Nifty-SrcIP: [209.85.216.47]
Received: by mail-pj1-f47.google.com with SMTP id p21so2303592pju.0
        for <clang-built-linux@googlegroups.com>; Fri, 16 Oct 2020 18:46:48 -0700 (PDT)
X-Received: by 2002:a17:90a:aa91:: with SMTP id l17mr6700984pjq.198.1602899207791;
 Fri, 16 Oct 2020 18:46:47 -0700 (PDT)
MIME-Version: 1.0
References: <20201013003203.4168817-1-samitolvanen@google.com>
 <20201013003203.4168817-8-samitolvanen@google.com> <202010141541.E689442E@keescook>
In-Reply-To: <202010141541.E689442E@keescook>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Sat, 17 Oct 2020 10:46:10 +0900
X-Gmail-Original-Message-ID: <CAK7LNASCaf2s94L1xYENYDYp07sTWxpnr4V_SKXfDFQKBB5drA@mail.gmail.com>
Message-ID: <CAK7LNASCaf2s94L1xYENYDYp07sTWxpnr4V_SKXfDFQKBB5drA@mail.gmail.com>
Subject: Re: [PATCH v6 07/25] treewide: remove DISABLE_LTO
To: Kees Cook <keescook@chromium.org>
Cc: Sami Tolvanen <samitolvanen@google.com>,
        Steven Rostedt <rostedt@goodmis.org>, Will Deacon <will@kernel.org>,
        Peter Zijlstra <peterz@infradead.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        "Paul E. McKenney" <paulmck@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Kernel Hardening <kernel-hardening@lists.openwall.com>,
        linux-arch <linux-arch@vger.kernel.org>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        linux-pci@vger.kernel.org, X86 ML <x86@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=chx05RkX;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Thu, Oct 15, 2020 at 7:43 AM Kees Cook <keescook@chromium.org> wrote:
>
> On Mon, Oct 12, 2020 at 05:31:45PM -0700, Sami Tolvanen wrote:
> > This change removes all instances of DISABLE_LTO from
> > Makefiles, as they are currently unused, and the preferred
> > method of disabling LTO is to filter out the flags instead.
> >
> > Suggested-by: Kees Cook <keescook@chromium.org>
> > Signed-off-by: Sami Tolvanen <samitolvanen@google.com>
> > Reviewed-by: Kees Cook <keescook@chromium.org>
>
> Hi Masahiro,
>
> Since this is independent of anything else and could be seen as a
> general cleanup, can this patch be taken into your tree, just to
> separate it from the list of dependencies for this series?
>
> -Kees
>
> --
> Kees Cook



Yes, this is stale code because GCC LTO was not pulled.

Applied to linux-kbuild.

I added the following historical background.



Note added by Masahiro Yamada:
DISABLE_LTO was added as preparation for GCC LTO, but GCC LTO was
not pulled into the mainline. (https://lkml.org/lkml/2014/4/8/272)




-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNASCaf2s94L1xYENYDYp07sTWxpnr4V_SKXfDFQKBB5drA%40mail.gmail.com.
