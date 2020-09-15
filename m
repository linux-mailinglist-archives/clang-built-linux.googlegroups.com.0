Return-Path: <clang-built-linux+bncBDYJPJO25UGBBMURQX5QKGQEZDTDVKI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3c.google.com (mail-vk1-xa3c.google.com [IPv6:2607:f8b0:4864:20::a3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 9427426B38F
	for <lists+clang-built-linux@lfdr.de>; Wed, 16 Sep 2020 01:05:23 +0200 (CEST)
Received: by mail-vk1-xa3c.google.com with SMTP id n18sf1011671vkq.10
        for <lists+clang-built-linux@lfdr.de>; Tue, 15 Sep 2020 16:05:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600211122; cv=pass;
        d=google.com; s=arc-20160816;
        b=jmOcZDBFiBq00wnpo7sADFyO8pdFsdwYhdLjBRUYQIEtFeKIE8cg8UxPtibJg6nWmx
         WKCIe+SP6LJ4hRTnBGjbhOZMbPHtnO2F7g8dJpmceZYEZEwhdjkkuZNV2dogolXUKERX
         yHfsaRkkQXmpdo7vuyl1wNfrTQDtVufI7qrYM0Kai70r1yWmCPVc1rAvm1fhM1AaEmVh
         2Rj3ps3ptDawcuib9o2ff2vSxmppM7EzsYFH15M1XKOPJgmrtMYuLyTDn/yMbVzIDa3K
         sVvuXq8W/lp3seiM+qB9ETdiYGaRrJ3vDMuzse1qf9bm4D3RbRtCPkPkQypxK6mOE0JE
         YFZQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=ZlqlaOKXXcIJ39ElW/EC5I6azo3WPjANBeFdBUagQDA=;
        b=Ny6JIDBfS/h/XYnmLNkuT+jh7XQCFw6+Mk67OBSNmXOiKhAkezFn1mc2OEeoXDuSpt
         8PDrXend4gaXMpm4tOdHvjQSEiUsAXYPUW1PhKWA0n9hZejopC2WHpx70OwbuSCLstRh
         kti2w7oZkBPJtiJxPj04Lc8tHS96S8HQjLu9saEj0ovZJiic+/YVRjOSp4zzcDxcte5P
         SXxun1NfkI6YnHadDOhdSFXbFyfZRGHAylX9oTMCdfa9yRzs/Sp0hvs+H+tTHfmTsCAQ
         J47FrMT9djdAzu7yOAt8SfniPPT+94xux8XOyt8mr3TJoWKT8cJizxkh7EVVoilfeIOp
         J02w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=QoUUESYk;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZlqlaOKXXcIJ39ElW/EC5I6azo3WPjANBeFdBUagQDA=;
        b=fX3CRXqZr8s91Hi+cXSv8ZXDodLrE2/rwq2D+JSN3aUGkgjyuJaUdaq78o0DBKJLZj
         EO4/hZIpdFPC7GQmnpT7PhIy2K7jecD3H2BG58ULAoUjy8VlUzfvwxeiOm20vP0mThF9
         2G0aFuLn6SJNI9Tm4zoW8pmoDNqCay6JuN8Ii5GXdgKZxEDTFdEsl4NbzERzYVc3jfaR
         +/SEc+/O5tQoq+t/pfg50v+iP0GP5+3Abxr5K31wwzoixqu0ibmQoBMfKb0GSjblGdZo
         3OegJASHXVipFCjf9Y75KjINjhfTrFyw1ZkzC5zjJEMbx3tTaZgf8XCAPM1p0G0ijkEK
         dIwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZlqlaOKXXcIJ39ElW/EC5I6azo3WPjANBeFdBUagQDA=;
        b=ij8mqcNSk84V/Ilh2GlOewAd7ouRHB+LnVYLO10/PGipOpm7E9axBgTzMFZ0AtBON4
         ztgmvE8DLThusWtvnTcXSvtUy/5wdD7Do/Q5By4zndvLls+zWEQeYh4jQ+E8kJRQdn80
         XiHa26gLwM6bMiOiX17sy/YLI+MP1IksUDj63GK52y1lEHFe/C8flnqeUCXnh1kyFLzR
         lEJdui5a9cgF7hmFjQK67Fq1m4STuotba+EjvMMHQ6zhI4kSOkzRGwfpq52PywX6cX93
         SQ+VXxDOQFYuhvc8IJkgaGtNxINjuCcIUYhMHSPIQSlIvcTRqhbkbY6wCm9EByNmHPMe
         CT5w==
X-Gm-Message-State: AOAM5311TsVaZG6NXLteyL+5bIexlVY66M+r6jFfIMvWvRfUdrUcrsk/
	5nWMpV6dHe5EBzmj4B0eEbY=
X-Google-Smtp-Source: ABdhPJzoiGmkzGZuQd8cCp4As6SW0LseCgukpOnTqhAEsvgubaV9WIwor9KHi7J7QEOApSdqtDPS9Q==
X-Received: by 2002:ab0:6346:: with SMTP id f6mr11374138uap.65.1600211122601;
        Tue, 15 Sep 2020 16:05:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:bfcb:: with SMTP id p194ls47365vkf.8.gmail; Tue, 15 Sep
 2020 16:05:22 -0700 (PDT)
X-Received: by 2002:a1f:9bc2:: with SMTP id d185mr3197436vke.23.1600211122083;
        Tue, 15 Sep 2020 16:05:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600211122; cv=none;
        d=google.com; s=arc-20160816;
        b=MqVf9mldlurSB6W/N/ks4Wq1ShnirfUcgxCd4Vf9n9uqc92qL5lmlKIs/NQyXTeAap
         eokYfNWitNl3+yVD27vKW8Ayc981m3LOfQnd7wQuBScn7C/YPlX4+Fanb1zXGSm8/ZnZ
         q2QuGFg1qrjhiu7VnUrgLrQUTCSUV0dRc3NEOkMgn0F8HqJ3OLMmAnXgRgnD+54eqsu7
         Fuol80BZ+ZDz1XhzeTjkqD4AYs55SLRgvITmJvnKSGlwVsNBQDODwNeG++Nn5UxYwrBx
         C4GMyYdXrVlv0rMKaIJbD01oScuSkQfeGsIuQnQyVF607N/xNDTGv2f6V5uqQihdKqrc
         LRcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=S5KmI53f3KHMFavKkBNkcps6Xx80r3fYm9P+l0f83X0=;
        b=vZbAvaYKnEVZ3zGSXw48RgO9yAWcfaZsX1xQIFSJuVQroiet58FsucO1WtZ+9PHN0U
         cCcOgccXrZDceshNxYT/gRd3XgeHpEyNMqY1zynd3FOFAwolrFMDaI/UiReYl0/xizLi
         YqldQwWpjqmX+VG1ylfnBr8eg+th5ogsm6Lt7VV9dZif6CTa4SBNv64+SAuHswpgucIL
         WUikInwcBbdskKY3TtcX2fJBYxASiZS4rVY6zSd82mYTbskATiraV+q0YWF7DKIYcRUw
         AsZzr8TZuLqzQPv5E/Y+VG+Mdpmh8Y0VXNHGJtAhx+0sjP8iahpv7N5SEeaApBcb0MMp
         aGpw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=QoUUESYk;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id u25si1191719vkl.5.2020.09.15.16.05.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Sep 2020 16:05:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Received: by mail-pf1-x442.google.com with SMTP id w7so2840675pfi.4
        for <clang-built-linux@googlegroups.com>; Tue, 15 Sep 2020 16:05:22 -0700 (PDT)
X-Received: by 2002:a62:d44e:0:b029:13c:1611:652f with SMTP id
 u14-20020a62d44e0000b029013c1611652fmr19903521pfl.15.1600211120970; Tue, 15
 Sep 2020 16:05:20 -0700 (PDT)
MIME-Version: 1.0
References: <20200914160958.889694-1-ndesaulniers@google.com>
 <20200914161643.938408-1-ndesaulniers@google.com> <20200915042233.GA816510@ubuntu-n2-xlarge-x86>
 <5a9007605dec96c81ec85bc3dcc78faaa9ed06a0.camel@perches.com>
In-Reply-To: <5a9007605dec96c81ec85bc3dcc78faaa9ed06a0.camel@perches.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 15 Sep 2020 16:05:08 -0700
Message-ID: <CAKwvOdn6ohOi-KSSOkC8BirHgXRRkbCk3Z_ySEyPPMg31cDB-A@mail.gmail.com>
Subject: Re: [PATCH v5] lib/string.c: implement stpcpy
To: Joe Perches <joe@perches.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Andrew Morton <akpm@linux-foundation.org>, 
	Kees Cook <keescook@chromium.org>, Arvind Sankar <nivedita@alum.mit.edu>, 
	Masahiro Yamada <masahiroy@kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Sami Tolvanen <samitolvanen@google.com>, Andy Lavr <andy.lavr@gmail.com>, 
	Rasmus Villemoes <linux@rasmusvillemoes.dk>, "# 3.4.x" <stable@vger.kernel.org>, 
	Greg KH <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=QoUUESYk;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::442
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

On Mon, Sep 14, 2020 at 9:28 PM Joe Perches <joe@perches.com> wrote:
>
> On Mon, 2020-09-14 at 21:22 -0700, Nathan Chancellor wrote:
> > It would be nice to get this into mainline sooner rather than later so
> > that it can start filtering into the stable trees. ToT LLVM builds have
> > been broken for a month now.
>
> People that build stable trees with new compilers
> unsupported at the time the of the base version
> release are just asking for trouble.

It is asymmetry that we have a minimum supported version of a
toolchain, but no maximum supported version of a toolchain for a given
branch.  I think that's a good thing; imagine if you were stuck on an
old compiler for a stable branch.  No thanks.  I guess we just like to
live dangerously? :P

Also, GKH has voiced support for newer toolchains for older kernel
releases before.  Related to this issue, in fact.
https://lore.kernel.org/lkml/20200818072531.GC9254@kroah.com/
--
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdn6ohOi-KSSOkC8BirHgXRRkbCk3Z_ySEyPPMg31cDB-A%40mail.gmail.com.
