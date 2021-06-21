Return-Path: <clang-built-linux+bncBDYJPJO25UGBBM5MYODAMGQEHYL5GIY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43a.google.com (mail-wr1-x43a.google.com [IPv6:2a00:1450:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 2965D3AF483
	for <lists+clang-built-linux@lfdr.de>; Mon, 21 Jun 2021 20:11:00 +0200 (CEST)
Received: by mail-wr1-x43a.google.com with SMTP id v9-20020a5d4a490000b029011a86baa40csf4235821wrs.7
        for <lists+clang-built-linux@lfdr.de>; Mon, 21 Jun 2021 11:11:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1624299059; cv=pass;
        d=google.com; s=arc-20160816;
        b=UTo1dplJG1/1Qz/+VU6tciTjBw6izG+RpVnamCC3n1+mtJp/qbOXDPFp2+k+uqtrJN
         DMdy6HlvZ0ozZyee3GVf6VxVO2ppWlbMCmxutrxJx6YX9lpqiKHL2V1TtTuFApI0YHPM
         7KG8w7bpZ4J/vuide/XRrjOoEaF3suLpJqKWMQ5oZJzoZTx5PyokqITxCt0Efp5Vi8oR
         j0cFuZlFzw9Kz/V9cNe+hgKR8a0D3ObrU2s8IfrsJjgqR51VO2kqD4pWaUUiXk/4RcBp
         oSru5m6gmDvfY1V2b9pcqujtw2L/6IsZFeYxWjma+Ng5ur6S1Req6Kgx0yJ8KenhHhZX
         aBwQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=JLeyOmkM68mAvUjqLVX8xeZGS/7Tb9W6vZLoCvb4xAY=;
        b=D1zCAecpuCxZf/bi6zDXpmbzW9OewnMnNzFSbwwFg1MU6eBSVEV0g+phfeuzmkqcCD
         b77laMq/z0qCPBR6wT52xDBd1wK6a5f1kRP0S5GStTNu2luaYA1CjzrYsuhX5i8SqH9k
         GipmnziWSTM/P+CO6n02zwzcGKF1ukchbbNSMoAHxfSBI7FIeWJtrh7HCNIAln/mn9+h
         Fg7S1mOeWg6RQcBvDm5T4OrGw8NIdSIibDyBuRdD2Sj7TFOXqy6VWRf7WBWM86lMUMeo
         CviFH9teJPKae3hGuzG6uXA6ONX/mYdpVz5/Q9TEBIkYYG6c0uZTr8Y3kfYXELAnJjwJ
         JXeA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=LVtCC8Uq;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12e as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JLeyOmkM68mAvUjqLVX8xeZGS/7Tb9W6vZLoCvb4xAY=;
        b=Q0Yc01gF438YBHWTl35MoeKYzp5cvbh/1V1cgPggwtc9vI//fdvkmZRTqjEpAJIaL/
         Kdzb3OGi2LAwBjnn2EZuJxH/G5W7WSE/rXZTIps0WR1CLKwU3piOZtjUDS0PyFZsAfKs
         cjlU53OOnzIuF+1gWV14nMkCBD2u9KcKgl4mre1XOcZOHKyQspRe7x6OPxz/Gef8rMx/
         +QlAxspvGUoU7T0Un7osk4bplYZzJKr5qTl3n1L3KklaR/pXohWDdiXPJoYn0eJX5FPa
         ylkNcJIiwPQzHulA5zdTsGD53rdMtSGPbQAC29EqOQ5EUdLyHnFbXH6VV8goqqo91sgc
         Xr5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JLeyOmkM68mAvUjqLVX8xeZGS/7Tb9W6vZLoCvb4xAY=;
        b=lkayZNLoHmdxWYMY15TD10/ZuDq02on+Kyq2XeDI0W1KOEFZmfI6tCQu9HDYbLKNbl
         rLka38ScoOFa4bWFHD9khr4DktWci3hWE23uXpMXYkoUePTyDPqxZOkrI8H+sU+SzTtq
         FPsPdA8pB0/bZ9N8N2MxRSYd7V2f00p/OHcOQz70OVHQ8SFCOZfMsSXYhpZ9JaxWzCkd
         Br42BnxDZIaEUHHXd/ccyTvlynoRUPsxkIdoKPBVo+/69YCxWCekbFxAZMBwig6qhRFr
         a5z5BgpeRC8o+wxk/e7Omr/n2/dpncsCaJDWWJ/XLrZvJiL4P1OeGW89sZVzvKmUtqLo
         nYCA==
X-Gm-Message-State: AOAM532K5+kdlC2rA3MFs//qaVdCwac5BNQl+U9V1q0/aUwEz6L+rTZn
	gDA4zeW7zAOOQyRCOi6On6c=
X-Google-Smtp-Source: ABdhPJxlew7TMXAymkw0DLrZA6KA06Wc0+DZh5LyMVDZ76c9y/9KneZNmTNfuTHU5tuQQmd+leu8dA==
X-Received: by 2002:a5d:5402:: with SMTP id g2mr29098001wrv.226.1624299059881;
        Mon, 21 Jun 2021 11:10:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:edc4:: with SMTP id v4ls1305426wro.0.gmail; Mon, 21 Jun
 2021 11:10:59 -0700 (PDT)
X-Received: by 2002:adf:f48c:: with SMTP id l12mr29946677wro.194.1624299059023;
        Mon, 21 Jun 2021 11:10:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1624299059; cv=none;
        d=google.com; s=arc-20160816;
        b=kf9uSgRLH9XQYsdsXo7PnHrsv00/ULY/wdmiNltn/xuD7VwLMsE7nXJsT6xUJXlaLp
         iJeRDb+0toyK/vN2bNJaP5fn+YH/agaV4UuIMbYstRkHCAwKrG3zBZjNw/xOHCt6X75O
         FW9itNEAcs1HbX0WD+gL0Aty+d/8va8ep5v2f9+kr2d8tthec/B8AZJn2z3cHz8VzV0K
         aAXjelSCqD8g2MVs59mLPN7TyE6SMHSycP68/xNWZ8ZXAybai+lNHjcGYpykPFbAuGsl
         Nj05v+FCNRW16ldyjMx2cQdZXtoZhYNZu2qy/IJjM9mlxDZLGsC8ip5R/e0e4HtkhJPN
         Na4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=3c/Dj9Fc5BgdLF0O+HyOscCTfHQWUTCXKiHfvqmH+Xs=;
        b=Ntmh5BNTbKNbUviUtL5c3MJOSpIMLqeivKuZKskAJtUf/T47uvR8c+JRnriHELZ1KQ
         eol2vxuDxviX3zXUCbrjQX6iAY9N/A8m88ZmENECWypQ9+t4LrKY5RzXnrxk2W5kCO/T
         VbY6a7TIF2uv6v/W4mKwRmtEHPZ3WLNXP+dgZIj8rb1f0i8WOf8jJdBaI2IkixSxwvjY
         tWHvegkfGUZiYSbi3SgZa6bMApKUj/AWnJLIJOPMQGxFwVg7yBlUawwj9fXGSKThXnEs
         bS5DnQbkprz9m8TgU/FhIsPDzdnfy9jo8vNu+OTT4cDcqVvs3rNOymchEdqS4EGy0SML
         PpQQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=LVtCC8Uq;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12e as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com. [2a00:1450:4864:20::12e])
        by gmr-mx.google.com with ESMTPS id g18si541140wmc.0.2021.06.21.11.10.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Jun 2021 11:10:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12e as permitted sender) client-ip=2a00:1450:4864:20::12e;
Received: by mail-lf1-x12e.google.com with SMTP id h4so31687211lfu.8
        for <clang-built-linux@googlegroups.com>; Mon, 21 Jun 2021 11:10:58 -0700 (PDT)
X-Received: by 2002:ac2:4c83:: with SMTP id d3mr15097330lfl.543.1624299058430;
 Mon, 21 Jun 2021 11:10:58 -0700 (PDT)
MIME-Version: 1.0
References: <20210618233023.1360185-1-ndesaulniers@google.com>
 <20210618233023.1360185-2-ndesaulniers@google.com> <CANiq72kjyiAQn2+ijZKFo7SY3z+dCV6fGXYP1O_Mq7Ui3EqSzQ@mail.gmail.com>
 <CANiq72nbbqeD2dv3z0y3rN-_kdnh=9-pD7oSyWUfaG8oJ2y_8A@mail.gmail.com>
In-Reply-To: <CANiq72nbbqeD2dv3z0y3rN-_kdnh=9-pD7oSyWUfaG8oJ2y_8A@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Mon, 21 Jun 2021 11:10:48 -0700
Message-ID: <CAKwvOd=B6LV9rZmtPacfz_F10jj1wrovoGu8yvdOqKZ69-T6mQ@mail.gmail.com>
Subject: Re: [PATCH 1/2] compiler_attributes.h: define __no_profile, add to noinstr
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Cc: Kees Cook <keescook@chromium.org>, Peter Zijlstra <peterz@infradead.org>, 
	Bill Wendling <wcw@google.com>, Sami Tolvanen <samitolvanen@google.com>, 
	Peter Oberparleiter <oberpar@linux.ibm.com>, Masahiro Yamada <masahiroy@kernel.org>, 
	Nathan Chancellor <nathan@kernel.org>, Luc Van Oostenryck <luc.vanoostenryck@gmail.com>, 
	Ard Biesheuvel <ardb@kernel.org>, Will Deacon <will@kernel.org>, Arnd Bergmann <arnd@arndb.de>, 
	Andrew Morton <akpm@linux-foundation.org>, Rasmus Villemoes <linux@rasmusvillemoes.dk>, 
	linux-kernel <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	"maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>, Borislav Petkov <bp@alien8.de>, Martin Liska <mliska@suse.cz>, 
	Marco Elver <elver@google.com>, Jonathan Corbet <corbet@lwn.net>, Fangrui Song <maskray@google.com>, 
	Linux Doc Mailing List <linux-doc@vger.kernel.org>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, Dmitry Vyukov <dvyukov@google.com>, 
	Johannes Berg <johannes.berg@intel.com>, linux-toolchains@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=LVtCC8Uq;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::12e
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

On Sat, Jun 19, 2021 at 4:32 AM Miguel Ojeda
<miguel.ojeda.sandonis@gmail.com> wrote:
>
> On Sat, Jun 19, 2021 at 1:26 PM Miguel Ojeda
> <miguel.ojeda.sandonis@gmail.com> wrote:
> >
> > I am not sure if it is best or not to have the GCC link in order to be
> > consistent with the rest of the links (they are for the docs only). Do
> > we know if GCC going to implement it soon?
>
> i.e. if GCC does not implement it yet we use elsewhere this kind of
> marker instead:
>
>      * Optional: not supported by gcc
>
> The first of its kind, normally it is clang/icc there ;-)

:^) GCC does have an attribute since GCC 7.1 for this.
https://gcc.gnu.org/bugzilla/show_bug.cgi?id=80223#c11
I'm moving Clang over to use that in
https://reviews.llvm.org/D104658
Once that lands, I'll send a v2 (without carrying any reviewed by tags).

>
> We could nevertheless have the link there, something like:
>
>     * Optional: not supported by GCC
>                 https://gcc.gnu.org/bugzilla/show_bug.cgi?id=80223

-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOd%3DB6LV9rZmtPacfz_F10jj1wrovoGu8yvdOqKZ69-T6mQ%40mail.gmail.com.
