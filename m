Return-Path: <clang-built-linux+bncBDYJPJO25UGBBHNA4CAQMGQETSZINSQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33d.google.com (mail-wm1-x33d.google.com [IPv6:2a00:1450:4864:20::33d])
	by mail.lfdr.de (Postfix) with ESMTPS id 99FA632583C
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 22:01:17 +0100 (CET)
Received: by mail-wm1-x33d.google.com with SMTP id p8sf2740550wmq.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Feb 2021 13:01:17 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614286877; cv=pass;
        d=google.com; s=arc-20160816;
        b=SDAHiRx4UX2atJ0Do19d+ZA4coRVgMFrItTwAX3+erxBhvrhkTi0/GEajWmxy13wdv
         tyAlmSH7UU2gVRcvdu4SsaRkEJPZEdb8B8r++yI5X7fANVE5Krp2hHWsZJ4EKhhk2yge
         vBxYPlZzQSYMC/YrX//CjT8sFUPhT7UWcGIk0/Dmzj6bT9ppavP5Huc9cfvQcmQesLjk
         6IEY22m0G5wWN/dvO7Bh7UAJE9FYbuxurSZbZXx6AH2zo1Bk6rlcMwmZJEyCtlboXh/f
         m0khxKUygJ6p3xQVn+80/xFYwYTUH2NHWIrV5whF0OOjuHYOnABLLRygdqC7vNw00G2h
         8cxQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=4VDbKBnYGgaMaqL67nQTH2B5sIPfOAjozXtP2srT1dI=;
        b=Xo1e7cJ7MQdO2aa8/fXIzrU1ZgjHk3s9LytL0bkIhFjBGamgY71Zg86m4KUiTv4y2w
         2vtsobZs46+LMBkGia3izyTIOP1uev4ZPttVkrvK43vc2a3vzKCOLSYHNYY53601oWq4
         wB0ZvfMFN5uIFAdJl2/B08W3LGO8N3BUTezt5YdVbOAHyqCi2YH0kkG0asqqO5qosd8S
         pCTmGZW39AhBBZ0Prbi7A6152xc0xlU4tON+X7FAa2EpwpIgQvWVMVNdgykk2Eay3ggm
         dhIzmOyP1/3UInRzgBt+vebrjDd40MCsnTDrgeaz4XLLW/A8jMKzyq7kc6ghHWFCYXJQ
         sYHQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=EruuQTwq;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4VDbKBnYGgaMaqL67nQTH2B5sIPfOAjozXtP2srT1dI=;
        b=cJggJFi3aj1H86InMMdrBS//5UErcDyKOSwkpHhGKrwOGR7uLn4v2J8oydLAa6VcHS
         n/EnliUzL/NovchTV5YW0fs2aXHG/xwRDKPtYdvmJbnuCsl38puz4iaFr1XI5SG9uZ7x
         VasmpwYEDcuYSVTwkN5pp6Tw1/sVA2xEpUDazqcC2Mcv0x9mNzrO0Fq7EjZqtsSQLvSo
         bFVvdKxyL5PTWxV46InV4+yRVHGeq4JWNVtN9BlTf9YIUX+F7siR6fMuYUvpyGL+ljql
         oD4qctlLD/2kHzyMP42Kixgy1JoRIbvx729PpE/3u2nEwAu+R4TFRKOrHB7NZ3XMAFPt
         7neQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4VDbKBnYGgaMaqL67nQTH2B5sIPfOAjozXtP2srT1dI=;
        b=XIrfXtUXPIKFRySuhWe5IKB0swtSv+nX8YJ9TpTKCPkV4sH8ZsOA0QRJDglBM8PKlr
         Mv4SlzEeTStrS9ImINLlhrMB5xfXHhQUrP/b0Ec7XptivaLYSGS/H9kjy6q8Ad9ca96C
         kmptlEM0HaOIvTc52/AKPXawJpGdb9yc9wTdlN8T+dH3XTaBhjmYK9MecigfwEutSDJE
         X/4cSmRbcKN4wQRBtZrlqIxqu2Xeo/TY4QiBn0r8epKaXsimeBySgDAsBfccYRuAOXJ4
         zM+p3IxX0IbXaV7AYzRQIKPXAu0WnRiOFiOEZ1YkpEVvAOEgS5uNpSgrEtJ+IcVPDvZN
         PoHw==
X-Gm-Message-State: AOAM530y7q+1CQNrLsVTBwoQ5zc57OjWct6e6M5osMD4i2kTaT9/w7YH
	EM/0ESXOY8XnqtUFyyTu4Js=
X-Google-Smtp-Source: ABdhPJxOJ6uiG8maW/aD53wEfbo8Zr0NX71fGqppMkqUc6bCgJb7MmSYeiA9yfXOoUoIpSe0LaYwYA==
X-Received: by 2002:a05:600c:2314:: with SMTP id 20mr206044wmo.97.1614286877323;
        Thu, 25 Feb 2021 13:01:17 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6000:1371:: with SMTP id q17ls7024487wrz.1.gmail; Thu,
 25 Feb 2021 13:01:16 -0800 (PST)
X-Received: by 2002:adf:fb91:: with SMTP id a17mr5243471wrr.93.1614286876449;
        Thu, 25 Feb 2021 13:01:16 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614286876; cv=none;
        d=google.com; s=arc-20160816;
        b=nP8gnDUUgLBiPSpgnZpkXvO6S21e95FczobGGqdUk4N9tA9nTUGH+TZVYjiCRLFbc/
         u5EA49J6eZw05qlxRklinKxT4zttlqbcRN2z6ixwfj0DMn0rYIclVm3g19w6MFswZB1J
         d1Xs2gEUGsdK9pMPWxG0W9epd3H27JKCKOMDcEikgO4clIk5R0tKnAznnTH4KJveCgb2
         8wI5wElfiGgNTwaLljOeJo8YPCpB7Yc3g+L3WZ+4MDihhPaca6P/y3Eth7uLRWRw3bWP
         t3CxKDOP8EX8y+re4+7Gw5xvw2D9teLGlBrPeP34XRy6Y+VsLl+1Vjs2JdwpZwVb4JQa
         4L/g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=7bPn1CTU2aFElE/GlnQTS2oN7n5wO4Fs2imlJntYkTw=;
        b=oqD13x3gIrFoL/+PMDQdzz27hmUitq6ac/dqUCID5waJVnHDiWcFq/maw3XBjr/2Xj
         rDOf58k/29rBcL3sfxzwFF5alZEgQ3qjc5JshhlPvmWTiJ220ESp3fvNH1StksIuOp3m
         Pp31K2d0K+zYjNjWeU4vw4jYxLYf0WtTjarMYA+lgf1y2OTTRdMV0vkcRiQJCrhwGF2U
         RbZb6/ETMWbR9ytMwh2m+ATPX14cNWHK0kG/JwQW36W/xnUqVksBJs3/jb1KDwDmwzSP
         cQsuwctRqCJr5bK98JFmCCwCC9LvdhfP1+Uf+VeG2r/9FUqBKXN9AF+VKTqar0RA4hkx
         uoYQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=EruuQTwq;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com. [2a00:1450:4864:20::22b])
        by gmr-mx.google.com with ESMTPS id 201si357899wmb.2.2021.02.25.13.01.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Feb 2021 13:01:16 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22b as permitted sender) client-ip=2a00:1450:4864:20::22b;
Received: by mail-lj1-x22b.google.com with SMTP id h4so7925543ljl.0
        for <clang-built-linux@googlegroups.com>; Thu, 25 Feb 2021 13:01:16 -0800 (PST)
X-Received: by 2002:a05:651c:2112:: with SMTP id a18mr2618568ljq.341.1614286875687;
 Thu, 25 Feb 2021 13:01:15 -0800 (PST)
MIME-Version: 1.0
References: <20210225164513.3667778-1-arnd@kernel.org> <202102251203.03762F77@keescook>
 <20210225120637.8e2a234f192952829fc5f471@linux-foundation.org>
In-Reply-To: <20210225120637.8e2a234f192952829fc5f471@linux-foundation.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 25 Feb 2021 13:01:04 -0800
Message-ID: <CAKwvOdmHSgDMMgwowTWyvy4voyD_TtTY811jtKsZR+kUciittg@mail.gmail.com>
Subject: Re: [PATCH] linux/compiler-clang.h: define HAVE_BUILTIN_BSWAP*
To: Andrew Morton <akpm@linux-foundation.org>
Cc: Kees Cook <keescook@chromium.org>, Arnd Bergmann <arnd@kernel.org>, 
	Masahiro Yamada <masahiroy@kernel.org>, Nathan Chancellor <nathan@kernel.org>, Arnd Bergmann <arnd@arndb.de>, 
	Miguel Ojeda <ojeda@kernel.org>, Marco Elver <elver@google.com>, 
	Sami Tolvanen <samitolvanen@google.com>, Arvind Sankar <nivedita@alum.mit.edu>, 
	Randy Dunlap <rdunlap@infradead.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=EruuQTwq;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22b
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

On Thu, Feb 25, 2021 at 12:06 PM Andrew Morton
<akpm@linux-foundation.org> wrote:
>
> On Thu, 25 Feb 2021 12:03:48 -0800 Kees Cook <keescook@chromium.org> wrote:
>
> > On Thu, Feb 25, 2021 at 05:45:09PM +0100, Arnd Bergmann wrote:
> > > From: Arnd Bergmann <arnd@arndb.de>
> > >
> > > Separating compiler-clang.h from compiler-gcc.h inadventently dropped the
> > > definitions of the three HAVE_BUILTIN_BSWAP macros, which requires falling
> > > back to the open-coded version and hoping that the compiler detects it.
> > >
> > > Since all versions of clang support the __builtin_bswap interfaces,
> > > add back the flags and have the headers pick these up automatically.
> > >
> > > This results in a 4% improvement of compilation speed for arm defconfig.
> > >
> > > Fixes: 815f0ddb346c ("include/linux/compiler*.h: make compiler-*.h mutually exclusive")
> > > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> >
> > Cc: stable@vger.kernel.org
>
> I figured 4% better compile time isn't significant enough to justify a
> backport.  Thoughts?

If I made a mistake in 815f0ddb346c, then it would be important to
correct it since 815f0ddb346c has existed for a few stable branches
(first landed in v4.19-rc1).
Acked-by: Nick Desaulniers <ndesaulniers@google.com>

>
> > Reviewed-by: Kees Cook <keescook@chromium.org>
>


-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmHSgDMMgwowTWyvy4voyD_TtTY811jtKsZR%2BkUciittg%40mail.gmail.com.
