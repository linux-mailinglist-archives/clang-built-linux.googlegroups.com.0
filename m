Return-Path: <clang-built-linux+bncBDYJPJO25UGBBIER6GAAMGQEXLTCFPY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73d.google.com (mail-qk1-x73d.google.com [IPv6:2607:f8b0:4864:20::73d])
	by mail.lfdr.de (Postfix) with ESMTPS id ECAEF30FC6F
	for <lists+clang-built-linux@lfdr.de>; Thu,  4 Feb 2021 20:18:57 +0100 (CET)
Received: by mail-qk1-x73d.google.com with SMTP id v130sf3555048qkb.14
        for <lists+clang-built-linux@lfdr.de>; Thu, 04 Feb 2021 11:18:57 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612466337; cv=pass;
        d=google.com; s=arc-20160816;
        b=0I+KqdSeF+TbLqY+mpGPvX/elDjLh7Zg8mSP4echPqDTlOrQdaxGOS2aq0Mg3MvBCk
         300wd6xz12Nwqbpjsd11NQfK9TixgihNbYWTPbQp0KB0oUGOaQIqZHjLc928uoFjU2dj
         Kj12A5qklm9C/LBdyv/WoSWxl7ooEjnjx28+MrZvsHybKHAoyWRYvvM2GahFYlFH3n6W
         oxW2z3jWsqTUHLq6hiedz2Ap+alEDzocDGz6Vx0xI4xcbHcjZjRAWpfFklGR+0ramx+o
         ktkWPchF3G38pYP0hCe767Unq+ghyVW3TrfKdBXixBB3rO0jYDcMhx0yg/bADNNqGPDE
         9qGA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=rqjmLZe+1PQZ/FFB+Sl3IqZAKGBK1te/23FQRCLnXWs=;
        b=XPkYaoPRms4IywZTU0Bb5clbfQHX8+Eu76w4eKuVgYM/UaSX1tDkSjREWQ38z0fB2l
         mb6Fz7J2ha6A3hJ/EBzMk+e/LZdPBXNvi2c8c3Lw4nPz5hBsN2xb7zoJRl6BnPCgn8lu
         fjn/v4U1CRRz4mQjAwblcKAfua7IRjUikLKnl6YJ5JsQDH+c340yxF/PFRtdV8SC+FEJ
         Legz5QPWIpd/og6TLbphxMvTMy6rbU/tZBxVhHxL+PZ/+bCdMrIqPyZf9TKw7RZ5FiA3
         ZMnEcKiHHEGNXQ+8a8GVbXTnnCvF0BizmFjaPQbGHZu8+yPRjwndlYcKd4DWVj35jvhk
         GzDQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="IeotN/9b";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102a as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rqjmLZe+1PQZ/FFB+Sl3IqZAKGBK1te/23FQRCLnXWs=;
        b=QNw1P7ELmAYoerDw2OA+wUQOqK/EQNJvn0Ko2VZpoozk/8Ppi+fw418DQfWc+OILVr
         oPnRJfjw6veY7rGljdzrwLTKFFV46tESK4C012WdAM2uCMzd5roGuYNjgTOMPnLzD01D
         yVJeKzTZ49R5EPLqEYo5Skpt5iQJbLDPkO8+ZOU+ANiO26Bns8qRn1GmvuUog482J7hL
         oBFSaCltJ3IDRgLzoGedAUe2sNI0gP/GrGNH0eELhA/VfBlgLSzVZ0J+3wPUNHC4F2AS
         URBsXkliNiw3E6TvmMkMANqIpE0FbIiKUjdt8ljwhRy5araXW0Utdz5ToL3h6nZtKmtK
         iLTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=rqjmLZe+1PQZ/FFB+Sl3IqZAKGBK1te/23FQRCLnXWs=;
        b=Mf/5Y8RPFt0YEdJ4Ix3CJZNeUVJkjiL+D/uuBO0muK/3TnpvjU1bNEBros3OiT1Dj4
         Jfzh7OWEOrYWua/uaH1Wmp/x9+814URe+1v0qBLnezabT/wwpVz3UWrTrdhjrfhfs73l
         iKBDIOqi29vE/B72XT2GnWx2O6Ia2R49GBd4LBBWBorj9Hzdo024F/VrMnQ5ktVrt/Ab
         hjhJghvGXOFhxyM99RsQZaWei2IHeClrssONoDwQ9l1aTcKXwOMyoLq2EUal93AI1T4Q
         tckUDExDfMfZSBzNgZbZcS5GHc3k3kgJkNwbe/ItPPl6bIBvB3Ip4sFgYJvut2hrItQR
         XtcA==
X-Gm-Message-State: AOAM532jB6C2sySdvJlAnEs1+8ddEsBQVClG0adAjEO72Ksl/sCiRue0
	Ql++dr0Ov1S5AcYHAPkmgN0=
X-Google-Smtp-Source: ABdhPJxJjI0cYNwaObXS1rZKut/oq5v8jUvPrTFThqghhGxfiUucHag4CJDyBOZ4Ve83VKE+OGkt5A==
X-Received: by 2002:a37:884:: with SMTP id 126mr706093qki.404.1612466337031;
        Thu, 04 Feb 2021 11:18:57 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ac8:1c91:: with SMTP id f17ls2534142qtl.9.gmail; Thu, 04 Feb
 2021 11:18:56 -0800 (PST)
X-Received: by 2002:ac8:4a8f:: with SMTP id l15mr1149383qtq.74.1612466336676;
        Thu, 04 Feb 2021 11:18:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612466336; cv=none;
        d=google.com; s=arc-20160816;
        b=uAmF8rwDP6ldfE9aSxe/8EiNBnFCVqzE2+TwKTFE4seP40Wk62FkVcLX49lJpwDCA3
         cS/vm+g8UuzDWDrkiS1ynjX0APuMNlENFiz05psqekgQFjvuCsZXXzptf8STj2Irxn5U
         LKda3YgcPHcca+TPTMhqAnC0ziOwXzqEWgJMkMn4MCv42sx+fCYYvb5PYS8uzK3GoUQ2
         EUGSxXUGHmupIs6VKii2/dB8kFB13Jru4igqY2Ro60WlbYU4eViFGXscUuVWsa6bDRVc
         qGJy02BgxTimmVqsAtRHzg83N7mofB2xsX4TiEBWIVAXjy7t0IAU4ofA75Y5qvxJWsLE
         PQ1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=gpuC+d2FUOI/ZHg93wQH+r85JDI4pp/FX9Ub2W2auJA=;
        b=HTpjnY3Yc0z2t5wib6BlffJ/CubrUeJnLDFthhTVJvbtzPOWqWZMef4/Wdq8sz7zvU
         55Vr23Zlm7ddHW3gLBdIIgigcAZ17h/UbWkJq1kPxH7Kd+3xbyCAoFgReshTBTM1moHp
         6lWv/tUYJI05SlsyKAYE5Ze13zjd4zQZXv5tcWYD9HQTKyrU+ZdSSfryoPYJ23P0owNg
         cJYopmqy4OPz3ZSN4rVULKMFi88S7vI0BKxxEr7WG1kkSoCzkMadp+GPnKStB30eMXRH
         jDLQV6Fv/wprFYivtd2WefwIUYTRUZkTqCr5sKLEpaEjJGiGtsqtfE1xqIxWS4k4o96n
         O27A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b="IeotN/9b";
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102a as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pj1-x102a.google.com (mail-pj1-x102a.google.com. [2607:f8b0:4864:20::102a])
        by gmr-mx.google.com with ESMTPS id q24si447016qtp.5.2021.02.04.11.18.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 04 Feb 2021 11:18:56 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102a as permitted sender) client-ip=2607:f8b0:4864:20::102a;
Received: by mail-pj1-x102a.google.com with SMTP id z9so2379988pjl.5
        for <clang-built-linux@googlegroups.com>; Thu, 04 Feb 2021 11:18:56 -0800 (PST)
X-Received: by 2002:a17:90a:bf10:: with SMTP id c16mr435444pjs.101.1612466335618;
 Thu, 04 Feb 2021 11:18:55 -0800 (PST)
MIME-Version: 1.0
References: <20210130004401.2528717-1-ndesaulniers@google.com>
 <20210130004401.2528717-2-ndesaulniers@google.com> <20210204103946.GA14802@wildebeest.org>
In-Reply-To: <20210204103946.GA14802@wildebeest.org>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 4 Feb 2021 11:18:44 -0800
Message-ID: <CAKwvOdm0O8m_+mxy7Z91Lu=Hzf6-DyCdAjMOsCRiMmNis4Pd2A@mail.gmail.com>
Subject: Re: [PATCH v7 1/2] Kbuild: make DWARF version a choice
To: Mark Wielaard <mark@klomp.org>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Nathan Chancellor <natechancellor@gmail.com>, 
	Andrew Morton <akpm@linux-foundation.org>, Sedat Dilek <sedat.dilek@gmail.com>, 
	LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, linux-arch <linux-arch@vger.kernel.org>, 
	Jakub Jelinek <jakub@redhat.com>, Fangrui Song <maskray@google.com>, Caroline Tice <cmtice@google.com>, 
	Nick Clifton <nickc@redhat.com>, Yonghong Song <yhs@fb.com>, Jiri Olsa <jolsa@kernel.org>, 
	Andrii Nakryiko <andrii@kernel.org>, Arnaldo Carvalho de Melo <acme@kernel.org>, 
	Arvind Sankar <nivedita@alum.mit.edu>, Nathan Chancellor <nathan@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b="IeotN/9b";       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::102a
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

On Thu, Feb 4, 2021 at 2:41 AM Mark Wielaard <mark@klomp.org> wrote:
>
> Hi Nick,
>
> On Fri, Jan 29, 2021 at 04:44:00PM -0800, Nick Desaulniers wrote:
> > Modifies CONFIG_DEBUG_INFO_DWARF4 to be a member of a choice which is
> > the default. Does so in a way that's forward compatible with existing
> > configs, and makes adding future versions more straightforward.
> >
> > GCC since ~4.8 has defaulted to this DWARF version implicitly.
>
> And since GCC 11 it defaults to DWARF version 5.
>
> It would be better to set the default to the DWARF version that the
> compiler generates. So if the user doesn't select any version then it
> should default to just -g (or -gdwarf).

I disagree.

https://lore.kernel.org/lkml/CAKwvOdk0zxewEOaFuqK0aSMz3vKNzDOgmez=-Dae4+bodsSg5w@mail.gmail.com/
"""
I agree that this patch takes away the compiler vendor's choice as to
what the implicit default choice is for dwarf version for the kernel.
(We, the Linux kernel, do so already for implicit default -std=gnuc*
as well). ...
But I'm
going to suggest we follow the Zen of Python: explicit is better than
implicit.
"""
We have a number of in tree and out of tree DWARF consumers that
aren't ready for DWARF v5.  Kernel developers need a way to disable
DWARF v5 until their dependencies are deployed or more widely
available.

I'm happy to consider eventually moving the default DWARF version for
the kernel to v5, and ideas for how to wean developers off of v4, but
I don't think forcing v5 on kernel developers right now is the most
delicate approach.
-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdm0O8m_%2Bmxy7Z91Lu%3DHzf6-DyCdAjMOsCRiMmNis4Pd2A%40mail.gmail.com.
