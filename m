Return-Path: <clang-built-linux+bncBDRZHGH43YJRBJ4HT34AKGQEHQICGDQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x339.google.com (mail-wm1-x339.google.com [IPv6:2a00:1450:4864:20::339])
	by mail.lfdr.de (Postfix) with ESMTPS id 979A721A95F
	for <lists+clang-built-linux@lfdr.de>; Thu,  9 Jul 2020 22:52:55 +0200 (CEST)
Received: by mail-wm1-x339.google.com with SMTP id y204sf3478879wmd.2
        for <lists+clang-built-linux@lfdr.de>; Thu, 09 Jul 2020 13:52:55 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594327975; cv=pass;
        d=google.com; s=arc-20160816;
        b=ULE/mpZ0k7wHw/zMSEAjLdDkwq8PqeKSPuDScUigxmqwQfRZO7KL08OgynVcTM1trZ
         4kOOJabhQaFwMSzoEbD9Sb9IaM8Y7rEJFoklkQ1bUNyJp+UAF8wokrSJcT5ppXbGIC4b
         Ggpru8Fiy1GSIp89djqRNOcSxYyCYsXCjSHlauDfBCWVVdXmV7IPOvwIoED858xdmQti
         Cki8ScuITvwE8putIcRGhnPnbGUtmhLyOC1DZX7Lwj/iSblwdGSwPVelk/4HarNBUG8Z
         PT96xT3yxsjJhG6mwIx6/HbxQ60+t2U8UoIL1sRJ1ZVkYWIU6v4p4GXY2AnVYsDHRToe
         86yw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=GzWAg9Ucv33aI6uIRZ+0QSdOKTlgZVvYOcwZ7fO3fGo=;
        b=nJAr1pi8VZYrEcGU/abzM86A2cYkzjVof309lpQ2iTRsH+KEM7BzMU9ErkxCyK/oCS
         UDYjoGS9TgriKQ5k0mlK7VEa68h8mENs9wiguHLvscnYqgjgwk0mBcwupq8HlaqUE8lC
         2G6Gnvviil0R0XdANLhr4fqTbe2EO9QruEmLTuwm2rc3oRz6BSsDyfvJ2x6OKdl2uQLf
         7JCR9XTGDXAENEl4+NPxIN2NKsYh/S6jhodk/zO0IlJV/i7wmnMqFHrSz5gANZJJPyBN
         CO321FWqINUOr+WLL9cRrdD2t0Gg8zgO+RRRHeY2opd0SgPx3Gg+GcJijPrh7wgKeIEj
         aa8A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sHVkVLq8;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::243 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GzWAg9Ucv33aI6uIRZ+0QSdOKTlgZVvYOcwZ7fO3fGo=;
        b=B6lmsm0dav44ktOoKttUp6ycvwK3OL4cgWfdNCuHWR//E6kvnQJChBqxGicCGNHaoZ
         pOhC86VKvt75xU+/uPIXMwbwO7/IF3PNaL/ZqYecRMzOkMlj0wbn3hwgDs9GEgw5yuDp
         swv25PHCy24t0ON5j8W4U8WNkYtetbolFMZ8ALG4BnANJaxU1y7vnO/gw+lJEwTogDIl
         o9oxKzhUE5ItDTiTBVYt7T8QfdkONxiSRFPQ+IawS2LuovSYpjJLqJwZgNHrFMIv+2yd
         wU3ZZN1pbohSymghWX+g5h415TbVnG3vcYgK1s7tWw3xVyR4TioE3ororHOVuICzHoQt
         GuAQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GzWAg9Ucv33aI6uIRZ+0QSdOKTlgZVvYOcwZ7fO3fGo=;
        b=jAp+atCS7YMXRd57sl0qTWzPyljUUDYxyqfBb6H+fJZuWqg8h4cXoTiW9JYU8pH1qu
         at02pIiX8xlrKVZqtNWUrDi1KWx3dUtabLrXGpM1LKHcVV5mGYJ/PLHSZ4zwB+vzt5yC
         CQop39GTdV0ms42gxYboEJehXBAkrwwBYzPXOkcOwqwb5N0ZV+w0DywygQDK1NXG2ZWw
         qCIkau2am/nOL9vQyQJB4yEW+ywZ8PnUPEHKUZsHSzFmH1SnXQFxwHr5O2eMRBYf7NZw
         EgNJKBYikLTBOwh5OnnE8z2nIV2xTdkqOfeWjxWnCkl/uDw8+xJhAD3ZBHEQx1iGa5I3
         JeXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GzWAg9Ucv33aI6uIRZ+0QSdOKTlgZVvYOcwZ7fO3fGo=;
        b=RyfrcYE2QZ4LjgX/N6KiiT4R+3bUEJ1d0SkTGQP1PlHnpnHiYtR81il6rem9W2MuOl
         NJ3095bvySdB8Sea7EuRIu2gXMSqEwJr6nyyDuMg2JaA7mrVsvcuActbyiMgum9dCq/E
         wfwYsRbgjklsBKuhSJkBGk/ex3pr9KcJljT2EYhUPRF8M1+UVKzZb/WD2HB7SsD1DMYJ
         WxMuO/Bv67zvM6iYT4WxdPReHExuEjugWjrJCEteEOPLqeWmzYZnFxuZNWdKHTN2IoQf
         dQcGzWLEvXTPgutgbgHZ49+dUVaStYakpOn8IDRHXQxBrfP4do/CqCnla1RU5zTvCu2V
         zAjg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533KWdPaPtSKOg8HujbXgR637HZ4neRDDdkB1dTBdT97xBGUmVpy
	ZmMihDy1BQZXu7QzhZ/5N1w=
X-Google-Smtp-Source: ABdhPJxFB/Om008FxYQnTb2ykguiqfQrmOQyzN5hYvfToPW35ILxsAnZzLNyntqDBPo0aVcVbH5eRA==
X-Received: by 2002:a5d:470c:: with SMTP id y12mr24955117wrq.340.1594327975309;
        Thu, 09 Jul 2020 13:52:55 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:9ece:: with SMTP id h197ls3488384wme.1.canary-gmail;
 Thu, 09 Jul 2020 13:52:54 -0700 (PDT)
X-Received: by 2002:a1c:de07:: with SMTP id v7mr1803782wmg.56.1594327974655;
        Thu, 09 Jul 2020 13:52:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594327974; cv=none;
        d=google.com; s=arc-20160816;
        b=b37uJ0sJcQ/+f4Dp0FaUETOMQmS/juiVz1hrC0jw/sql67JiDvD6dkLZz7v/u1onUb
         //QnpUPKgE9mqgeDEwoWM149drVpG/+Dnzq3fhJtOy9EdBxSDR/6oEfsG32PxuNaMlh5
         lIBZ0WXD+vH9gD6wuHTpLiooOLfVGHBxMX4IqCsPBgNSGct1Z0tUWMlSZm6Vv8FwOXLu
         8v4VkoFGmjcDHrXeVH3oHmf/wbuAmJWH6CvnC6gh68xz5WZX4q0+HYj1rlQx2t8a5cyI
         MZnz8WGq51YH7FcY4IMBuxzjk40Ez6uDoyWpLSeclyI2BhdDlFRG86mSp34rZroE06/l
         chCg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=Fh2AsvdiqBtPIs80v+1OuPIjNrn7s9RuQyFPfypzlb4=;
        b=Uyu7dygLPQO6tX26FepDAJBwtFiboyrha5ibUlAZ/PnDbXHqul+Mo0vZxeHsexEA9B
         E+heGqQk6hZQ5pNH9qpnc5Kw5cVXD6Xy1MhhWXrWMAOmYZHso4ig6E8ApkELjZU6CmFb
         kduOLXokWZOC2TBQ60mWfqLnT/Y5VdG/aZ/RfV4ymTngunxIMUWAdrp2bweSWgEjIRG0
         VHXBf5aAtE8Y3XFruSsu6z2BWL/GjdyZCLc3I52M+j7qa3cHkM8v3//PEFbeA+5zEVPu
         qc4SO8WC3CcfiQ18Y+Ku7gBSe2E5MKilDfre1mca40UlmEeUFslAU8PfnUoBYFu5yGV+
         ZT8A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sHVkVLq8;
       spf=pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::243 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-lj1-x243.google.com (mail-lj1-x243.google.com. [2a00:1450:4864:20::243])
        by gmr-mx.google.com with ESMTPS id q12si151552wrw.4.2020.07.09.13.52.54
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Jul 2020 13:52:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of miguel.ojeda.sandonis@gmail.com designates 2a00:1450:4864:20::243 as permitted sender) client-ip=2a00:1450:4864:20::243;
Received: by mail-lj1-x243.google.com with SMTP id r19so3938402ljn.12
        for <clang-built-linux@googlegroups.com>; Thu, 09 Jul 2020 13:52:54 -0700 (PDT)
X-Received: by 2002:a2e:850f:: with SMTP id j15mr14987332lji.44.1594327974153;
 Thu, 09 Jul 2020 13:52:54 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOdmuYc8rW_H4aQG4DsJzho=F+djd68fp7mzmBp3-wY--Uw@mail.gmail.com>
In-Reply-To: <CAKwvOdmuYc8rW_H4aQG4DsJzho=F+djd68fp7mzmBp3-wY--Uw@mail.gmail.com>
From: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Date: Thu, 9 Jul 2020 22:52:42 +0200
Message-ID: <CANiq72n51z9QtFdj1cF72hhQikq7jxCA+TmKKSQcYo34WAPGsw@mail.gmail.com>
Subject: Re: Linux kernel in-tree Rust support
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: alex.gaynor@gmail.com, geofft@ldpreload.com, jbaublitz@redhat.com, 
	Masahiro Yamada <masahiroy@kernel.org>, Linus Torvalds <torvalds@linux-foundation.org>, 
	Greg KH <gregkh@linuxfoundation.org>, Josh Triplett <josh@joshtriplett.org>, 
	Steven Rostedt <rostedt@goodmis.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: miguel.ojeda.sandonis@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=sHVkVLq8;       spf=pass
 (google.com: domain of miguel.ojeda.sandonis@gmail.com designates
 2a00:1450:4864:20::243 as permitted sender) smtp.mailfrom=miguel.ojeda.sandonis@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Hi Nick,

On Thu, Jul 9, 2020 at 8:42 PM Nick Desaulniers <ndesaulniers@google.com> wrote:
>
> Hello folks,
> I'm working on putting together an LLVM "Micro Conference" for the
> upcoming Linux Plumbers Conf
> (https://www.linuxplumbersconf.org/event/7/page/47-attend).  It's not
> solidified yet, but I would really like to run a session on support
> for Rust "in tree."  I suspect we could cover technical aspects of
> what that might look like (I have a prototype of that, was trivial to

Agreed, I wrote one ~half a year ago that compiled TUs through rustc
mimicking what we do with cc to some degree (i.e. no cargo etc.), and
it was quite pleasant.

> wire up KBuild support), but also a larger question of "should we do
> this?" or "how might we place limits on where this can be used?"

Indeed, I would say that is going to be the major topic, not so much
the technical bits.

> Question to folks explicitly in To:, are you planning on attending plumbers?

I wasn't, but it definitely is an interesting topic that I wouldn't
want to miss!

Cheers,
Miguel

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CANiq72n51z9QtFdj1cF72hhQikq7jxCA%2BTmKKSQcYo34WAPGsw%40mail.gmail.com.
