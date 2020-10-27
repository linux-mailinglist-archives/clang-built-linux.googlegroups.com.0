Return-Path: <clang-built-linux+bncBC3ZPIWN3EFBB6XO4H6AKGQE7JFOVHA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23d.google.com (mail-lj1-x23d.google.com [IPv6:2a00:1450:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id 04B8F29C91A
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Oct 2020 20:39:39 +0100 (CET)
Received: by mail-lj1-x23d.google.com with SMTP id g15sf1229263ljj.12
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Oct 2020 12:39:39 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603827578; cv=pass;
        d=google.com; s=arc-20160816;
        b=vY0ReBcsjGRkGGFcqoynQa2j5YfqR9CH60upYXzdP7W7wbYKNMNqrWjTwVkgPec7Bz
         XtfJJjNgcdi+xgSI3CDiBNY4DjsDNlpnsw0fg58rzqKn+uS2e4negqNGc+/7NKgZ+HAP
         ZQhSCCtt2hCXq2YGb4sGHFXHOh5kvS1/78lkDqbcIfNvQvrTen4cL1G61JG/xH3x1ojk
         yR/T4ItZy+zGk7gbBR1wzGphiDb3WiJnOADDpWQ3FWz81Y64OnHUQBayFPbOjAjfydit
         1strmxVSlAGGmtabSTZJZSNJEquQ++vuyVlNmtAgqOOAtNogrCYPoPWiY7iy4J/7bw2z
         Vxtw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=4/ZKcXK+c91LeTi7aU1cCZkI+k4Z0pvTnVG9n67j/Vw=;
        b=OgxmUWJDdkLHqoiaCJweGH0hbaerv4RIspnBpZGnI/UuLcbIyvZwA9tubzV1ELQWyO
         zVfMIriqyZYll2Q+GGyYbqi2VYTEVWoqiOkhIylHwP95C+w65FNtwgMfXEvGTi/fmCYc
         txX5MfWkP4AfZ0FlCP7DCYFfpHiz2I50cxkMVvZfhutnJ/Foc1XTY/GCOXIXFXSZ/DSe
         NkoTJmiRBTzmSsDPCWCk5RtPQauTOazg+pX9+oRo1pRzBaghrDRfTz0PNev4WMJX+oMo
         I/e9HImRiBFicVufOZrK71dCzZ4QtXfXuz26CLM8JoKnJOXOvIw1vb4K0/4MpOhOH4u+
         QzNA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b=KeATWeNi;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::143 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4/ZKcXK+c91LeTi7aU1cCZkI+k4Z0pvTnVG9n67j/Vw=;
        b=h47HMXB9Eeky+R8iH7hoUvC2c5RcOShB+yVoEbR++GlJmYgr4TAqLInTnPCm5mK5dp
         ojeKqLSiZ54+K4Qa803lma/B7qH0uXdJ4fZ4OIKYGYRpV/ky5/HrlYiWDfe2XLUl2cET
         QuZG98DVZ/SUFIr3pKooCsc6+t1llGFSc3YPILnvneYS1jyxLx/+UZB8gXQNuIl0VBEK
         C0aaaQMMowriTbDtU/MNRYt3M88sUwXmubqKOAUteUMErPSLN4OnSWRblRxh2jlz/I6V
         e3cy+qxGxSXcTxR5VbCc1H70WEi8xc9ymTwZUIfiPoR4JNkw4YW6Kx/zQ97It2yeoeEM
         1UZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4/ZKcXK+c91LeTi7aU1cCZkI+k4Z0pvTnVG9n67j/Vw=;
        b=d/O6vA8nl97J/fwPmVPxzWM5Bmem7PdfsmRY6OtKIskaE8K01sk4BFyILXKL6T1pgh
         D2HZa/6iCmC8zR39obGiYQmRpzkk0w7ZDMQ3DJvb5/8kVMEaunzxwztOlCfzYfkt6pQy
         VLTXO/rHnM7uZAuqSxaGGInSrSWeZlTPJm1giXeC/T6frcG+qk6/9jo7CDYdDvq3Fnmu
         LoiXslgMMHkiu8O55MKhg37vxMil6XTTrt/5vBqM0oSoScJyhjGMXX1d8ISTj50T5ax9
         b4WHvmicsl6VIudC7b1AkxJOUJyYD5se2pvTxK1Bk/p+ADmfWjHPWFnCtGR2e1tyBOW7
         Y8fg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533w7OT8PydAN80vV+P0EhF7N1s1CEEimZSiNwNO5+rrBF1hN51y
	LMC75hqU9A2hyMNsvo2nmhY=
X-Google-Smtp-Source: ABdhPJxufcTSr8448/gAmYirjXjR9Lq772mCgjQDpPsgKNGKL0owjZMyDT3XMjBU7bCxIGtleXhO4Q==
X-Received: by 2002:ac2:48ac:: with SMTP id u12mr1348902lfg.375.1603827578557;
        Tue, 27 Oct 2020 12:39:38 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:888a:: with SMTP id k10ls540350lji.10.gmail; Tue, 27 Oct
 2020 12:39:37 -0700 (PDT)
X-Received: by 2002:a2e:b557:: with SMTP id a23mr1864377ljn.5.1603827577373;
        Tue, 27 Oct 2020 12:39:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603827577; cv=none;
        d=google.com; s=arc-20160816;
        b=okayUJWUplqMpXw0Gltw3v+P5dV3HJVucieSl0iJ474nMubmkTv6iLiDyLG5BFlHTc
         q68puhJ/dg9Yui+p9fdMPR8UE5VUihdgOhpGAOuTplbBu82lUOPwCEvtJwGqLjYG12nh
         warY7POn07ng8Jn3VOvj6aAkKdbiExdSqgE5nARecs3iLTJHu3+gdW6eljze091AGF6e
         Ne/1FsnJ/fIcDnJTpiF1EgfXmWxmZZC5XjruI3npiz0+sOIveNORFhv6I6RMhWH/wkAr
         j7fk1WXDDU+7Ila2nKYuSjswz09GoqGxEOm6wlIHGcXtSI7eXt1lxWsxBP346UCQCxhd
         bpyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=x/ZjpB7n4FkhzFJT9cWI1qyNowromE99mrhGgv/JAmU=;
        b=G1PpIbAXNFIGXhKR8kpzFBOQnlYRhTIbWFlUlcAHHYhiinfSW+HmOUo+/jSQYUTgWZ
         xmXuAKl9GY0QUFUFqda5OTFI21kelrFdcomL1u45jNCHxsmhCVCxngsSVumcORH639/2
         cZvRyeGm2d+U4YdRgOKk59cHCBVPppEflPST9/xSxmevoD3ZY7z1yxoMK+XGl8gqBjoc
         MEDLu/69ufZX4rnU9NOh18ge18fOunGi3JyCPgUt3tCKaJgIYtR8dDOkZcxXLZ/hNYru
         +icbWd4beBunlJbLTLlZbteO1OHPkoUSuc32JsTTdkr/uLWg1sIKLRkWWEp7YQAp+4kC
         aurA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linux-foundation.org header.s=google header.b=KeATWeNi;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::143 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
Received: from mail-lf1-x143.google.com (mail-lf1-x143.google.com. [2a00:1450:4864:20::143])
        by gmr-mx.google.com with ESMTPS id i16si76358ljj.3.2020.10.27.12.39.37
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Oct 2020 12:39:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of torvalds@linuxfoundation.org designates 2a00:1450:4864:20::143 as permitted sender) client-ip=2a00:1450:4864:20::143;
Received: by mail-lf1-x143.google.com with SMTP id r127so3812332lff.12
        for <clang-built-linux@googlegroups.com>; Tue, 27 Oct 2020 12:39:37 -0700 (PDT)
X-Received: by 2002:a05:6512:74:: with SMTP id i20mr1535881lfo.524.1603827576444;
        Tue, 27 Oct 2020 12:39:36 -0700 (PDT)
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com. [209.85.208.173])
        by smtp.gmail.com with ESMTPSA id p1sm292708ljn.61.2020.10.27.12.39.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Oct 2020 12:39:35 -0700 (PDT)
Received: by mail-lj1-f173.google.com with SMTP id t13so2980790ljk.12
        for <clang-built-linux@googlegroups.com>; Tue, 27 Oct 2020 12:39:34 -0700 (PDT)
X-Received: by 2002:a2e:2202:: with SMTP id i2mr1623327lji.70.1603827574410;
 Tue, 27 Oct 2020 12:39:34 -0700 (PDT)
MIME-Version: 1.0
References: <20201027164255.1573301-1-trix@redhat.com> <CAKwvOd=83v0Sv-NhQ5xgqdNSRm2b=pOJDziX8axZ9t2YyYwz-A@mail.gmail.com>
In-Reply-To: <CAKwvOd=83v0Sv-NhQ5xgqdNSRm2b=pOJDziX8axZ9t2YyYwz-A@mail.gmail.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Tue, 27 Oct 2020 12:39:18 -0700
X-Gmail-Original-Message-ID: <CAHk-=wi0urcZx_TU=U5_hWEFbuwd67QV=7k7H5q7uWtvnV72kg@mail.gmail.com>
Message-ID: <CAHk-=wi0urcZx_TU=U5_hWEFbuwd67QV=7k7H5q7uWtvnV72kg@mail.gmail.com>
Subject: Re: Subject: [RFC] clang tooling cleanups
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Tom Rix <trix@redhat.com>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, linux-toolchains@vger.kernel.org, 
	Joe Perches <joe@perches.com>, Julia Lawall <Julia.Lawall@lip6.fr>, 
	Masahiro Yamada <masahiroy@kernel.org>, Nathan Huckleberry <nhuck15@gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: torvalds@linux-foundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linux-foundation.org header.s=google header.b=KeATWeNi;
       spf=pass (google.com: domain of torvalds@linuxfoundation.org designates
 2a00:1450:4864:20::143 as permitted sender) smtp.mailfrom=torvalds@linuxfoundation.org
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

On Tue, Oct 27, 2020 at 11:42 AM Nick Desaulniers
<ndesaulniers@google.com> wrote:
>
> Most recently Joe sent a treewide fix for section attributes that
> Linux pulled just after the merge window closed, IIUC.  Maybe that
> would be the best time, since automation makes it trivial for anyone
> to run the treewide fixit whenever.

Well, it worked fine timing-wise, but the fact that it wasn't in
linux-next did mean that it then hit a few small snags once merged.

It's not a big deal - I never got the feeling that that patch was
rushed or that Joe hadn't vetted it enough, and it was well worth it,
but I'm pointing that out simply as an example of the model having a
few gotchas.

So avoiding linux-next (in order to avoid merge pain) does have
downsides. And even obvious and 100% automated fixes can cause issues
if there are #ifdef's or other architecture-specific things that then
mean that the extra semicolon might matter after all. Usually for
horribly bad reasons, but still..

So it would be best if this got a lot of multi-architecture (and
multi-config) coverage if it avoids linux-next.

                Linus

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAHk-%3Dwi0urcZx_TU%3DU5_hWEFbuwd67QV%3D7k7H5q7uWtvnV72kg%40mail.gmail.com.
