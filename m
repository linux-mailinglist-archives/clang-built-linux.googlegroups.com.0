Return-Path: <clang-built-linux+bncBDYJPJO25UGBBVUB6CAQMGQEPGHYW5I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x138.google.com (mail-lf1-x138.google.com [IPv6:2a00:1450:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 591A4327476
	for <lists+clang-built-linux@lfdr.de>; Sun, 28 Feb 2021 21:45:11 +0100 (CET)
Received: by mail-lf1-x138.google.com with SMTP id j194sf4571488lfj.4
        for <lists+clang-built-linux@lfdr.de>; Sun, 28 Feb 2021 12:45:11 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614545110; cv=pass;
        d=google.com; s=arc-20160816;
        b=UVmdyY7mskPDx44lsaVaz0PartD1doBYbmrrsMiTamRscO7NpVhM4x7K57EorgiXAf
         fwpLrOb8imPNe1z8dItLmQo24oR19VOeiGlIJeoLnYZYnnDTiJ9h+FoNrxkdVs4Ll0rk
         6kw6ic0us1LRpIhJVSg3W65Tf0Y67r+7I7RZbhs+qyfg2LICdBMNzqeJYxnZO11Zjhlg
         T17D6ysmf5Rz3Rsxz6/f/aPf1ebfffV2SooHbMDX2e8Kkl15zf6GBgN8gzCl1OKWOTs2
         UyxNdsNJOn9SJAQDXUcmAB+hD+d2xlZMUzHt7fRL7sT4esJenFjuWwhYPu/LfrKzIIMT
         PAHA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=FlP3seZPU2OqQrihthgGG3bBR9tMuW2t2g/P7grIcis=;
        b=yFbHicAq/uy4iElpZPAcwnpFGokjs48GFUBev0+t3MXVHs540q/0P6ewugLxlcFVuy
         Nwttaizou5aaW6o/j+aaA+lu5N/Q45WDfyeKBXjmM6l/YvTwhumKrxADft8AaAdI/q7d
         CAwPS97f2b2826Wf/PmI9nZ1P/bJ6jATn96QPI7lWCSj1ZATUv2WWTXn5kCEOFXltQ4p
         4S3jwF8dQBsWvyWGWBrJe6izpTrOKPjfpHEdNdWNHqtIBXIlVX6E7ed9sm+QSvSwjQnp
         vgwC+Yex7H/o0P8ICF28qthxrK4b7weVENJ9zHlqaD+/1NnFdDUweT1H6s+UtZxH5GWO
         s4Fw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=WBWHspzh;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FlP3seZPU2OqQrihthgGG3bBR9tMuW2t2g/P7grIcis=;
        b=Ta8yufFxwgVXNpErz09ZVOw9nfC+1xfPpiRZQGZQibsD4+qplVaOAh8O1QCOiyn3Lh
         llu6d58QBextigTKqqV7CZ3QLDYANazn6VYK1l4RFH4LEYIsrZ/LpJrouoWMHrSpENTS
         iZ2Urxg3C/p16kxRNjX4TrJ1iOHAhxyMWb6W3oQQqnaeAJIxlcJbmdiz93D095hCWS44
         583jcc+ucw0ePFQEqcsW5Szr+VKrcWBIzWMJWB2kr1zIQk1iuQjDP6qX8Avfnjn0QSKM
         lGOwKRZwbkiQnnOV10U5K8s5C6wNxPKyeINuuFpcrYVdBu3R+9JjPHMWQjHFJV5//TaV
         GY4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=FlP3seZPU2OqQrihthgGG3bBR9tMuW2t2g/P7grIcis=;
        b=cA4IVh6XWyPCvDD81LMHBc+z3ol2Kv4xVg2eXoKBbO/IKf1LCJyQ5GEQAO0ukb/mja
         rIQzomfOdhL/se515olRn8jfWhwCbWoIC8gjbPc+pdhCzTsooMjkDOxbKB8IoXEtfnbG
         0IxB96lpqKXPoAGG9wxkN1NhnozW4S9TEBXZnovKkm6F7zpcDX1YTpiUwgKAiHdmN/9A
         EmP0IOUNwLf/NBnEVPloKNZfntA+yvSnJEJyroslEvcXAy8w3zHs+mhqjSt+4X0foCe5
         dw0ScT/tmIxMa2gtKJgGHeqLNvNdOx3lWiafgYS/EhSJcOD6S3xYMOVSL9VHkx8P0wBd
         ebMA==
X-Gm-Message-State: AOAM531vkz3+FVq4no4+gPkX+fTImoifx0d8in8GDkVf4PrYlZDdEH/l
	nsN9Wsp+hBYK3h3lCODYk6w=
X-Google-Smtp-Source: ABdhPJyCe9QFmjbIrzb/hLq+oOV0D5prv+yA24rvk8Aenl3F2VT5RpRyQl4VhD6g8yyfhtCWLKQi5g==
X-Received: by 2002:a2e:81cd:: with SMTP id s13mr7283295ljg.323.1614545110753;
        Sun, 28 Feb 2021 12:45:10 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:b603:: with SMTP id r3ls235794ljn.5.gmail; Sun, 28 Feb
 2021 12:45:09 -0800 (PST)
X-Received: by 2002:a05:651c:28b:: with SMTP id b11mr2209023ljo.219.1614545109709;
        Sun, 28 Feb 2021 12:45:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614545109; cv=none;
        d=google.com; s=arc-20160816;
        b=RZDLciFv+EaTVVAeNIIDWlB//D6e9DXO08rRRD1iPOypdxyvXBQKjxJ6vEdeYxhZBy
         AWhsS3xlDslIWBNrRWkPK/XHD7Yk57wkb4PTFYwokJ9C9bddLkdU1otURs7AjTe0dvmd
         I/N4hga2J1pDwp3idZ3p8EuuWPrUaYTHNvwmc1COpkdh3mA4mU+0sxBZUIhf9+JV8yz3
         XsJZLjxYqp8ORJXnkC4dka90n0/Aq6q4zT4nqULpYmhrv2e3LRU0AORjM1Fgxj/EyhJS
         fqpEmXiS9QsCNDsV3xmYukbVu8csyqZydG+rFA4Al7YW7EL8x1lsuiTiSSdEmu3bp4Ff
         yfJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=xosZH4kX9mRp/vnAi+t6ra1EXEzPGTzG1Pd/GGoDdHQ=;
        b=PGfIuGBuaxiEpbT2lgQfRai04dM9/DeCo4R39p1KB0EUl7L50wBguCKg3n/bGBpApY
         zXUDT5htJ+0mgiD1jr7IZZBF8owQfpTzL39tKHnzSpvl2Y+IXnRCu9JcRcIquFulPcmA
         brtfQbo2EdN5biyHzNWb0Z71yuCKx7DHEIAxxsqXrfjXoRD+DUDBkIfQiaF2yxOtVlo7
         +r4Xm2NICqXlo4cp0PT3v7eoawS5/i21OF9o5OtWwn756szjjLuh/YUZu8XTk2CuA3ja
         YzyFCEwvJmznsO5DWz8oXnbxrsPCENSaJlbqiSVGiTehPK1w+1/ly+BwRX8bTOKLO38u
         Yljg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=WBWHspzh;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22b as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-lj1-x22b.google.com (mail-lj1-x22b.google.com. [2a00:1450:4864:20::22b])
        by gmr-mx.google.com with ESMTPS id d19si168232ljo.1.2021.02.28.12.45.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 28 Feb 2021 12:45:09 -0800 (PST)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2a00:1450:4864:20::22b as permitted sender) client-ip=2a00:1450:4864:20::22b;
Received: by mail-lj1-x22b.google.com with SMTP id u4so17006413ljh.6
        for <clang-built-linux@googlegroups.com>; Sun, 28 Feb 2021 12:45:09 -0800 (PST)
X-Received: by 2002:a2e:b88b:: with SMTP id r11mr7206544ljp.495.1614545109049;
 Sun, 28 Feb 2021 12:45:09 -0800 (PST)
MIME-Version: 1.0
References: <CAKwvOdnN_tnGDieTsLKrv_=8Fz=1Zxf6uS4WjA3G6tgWx+4Vwg@mail.gmail.com>
In-Reply-To: <CAKwvOdnN_tnGDieTsLKrv_=8Fz=1Zxf6uS4WjA3G6tgWx+4Vwg@mail.gmail.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Sun, 28 Feb 2021 12:44:57 -0800
Message-ID: <CAKwvOdkAHKLGFnVLMZhmgWu2a1xmkW4XDEMRc7OcHG4CLSayyA@mail.gmail.com>
Subject: Re: food for thought
To: clang-built-linux <clang-built-linux@googlegroups.com>
Cc: Josh Triplett <josh@joshtriplett.org>
Content-Type: multipart/alternative; boundary="000000000000b34a6305bc6b93ef"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=WBWHspzh;       spf=pass
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

--000000000000b34a6305bc6b93ef
Content-Type: text/plain; charset="UTF-8"

https://blog.yossarian.net/2021/02/28/Weird-architectures-werent-supported-to-begin-with

On Fri, Feb 26, 2021, 6:01 PM Nick Desaulniers <ndesaulniers@google.com>
wrote:

> saw these via reddit, worth a read:
>
> https://people.gnome.org/~federico/blog/librsvg-rust-and-non-mainstream-architectures.html
>
> https://www.reddit.com/r/rust/comments/lfysy9/pythons_cryptography_package_introduced_build/gmq9vi8/
>
> --
> Thanks,
> ~Nick Desaulniers
>

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdkAHKLGFnVLMZhmgWu2a1xmkW4XDEMRc7OcHG4CLSayyA%40mail.gmail.com.

--000000000000b34a6305bc6b93ef
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><a href=3D"https://blog.yossarian.net/2021/02/28/Weird-ar=
chitectures-werent-supported-to-begin-with">https://blog.yossarian.net/2021=
/02/28/Weird-architectures-werent-supported-to-begin-with</a></div><br><div=
 class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Feb 26=
, 2021, 6:01 PM Nick Desaulniers &lt;<a href=3D"mailto:ndesaulniers@google.=
com">ndesaulniers@google.com</a>&gt; wrote:<br></div><blockquote class=3D"g=
mail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-l=
eft:1ex">saw these via reddit, worth a read:<br>
<a href=3D"https://people.gnome.org/~federico/blog/librsvg-rust-and-non-mai=
nstream-architectures.html" rel=3D"noreferrer noreferrer" target=3D"_blank"=
>https://people.gnome.org/~federico/blog/librsvg-rust-and-non-mainstream-ar=
chitectures.html</a><br>
<a href=3D"https://www.reddit.com/r/rust/comments/lfysy9/pythons_cryptograp=
hy_package_introduced_build/gmq9vi8/" rel=3D"noreferrer noreferrer" target=
=3D"_blank">https://www.reddit.com/r/rust/comments/lfysy9/pythons_cryptogra=
phy_package_introduced_build/gmq9vi8/</a><br>
<br>
-- <br>
Thanks,<br>
~Nick Desaulniers<br>
</blockquote></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CAKwvOdkAHKLGFnVLMZhmgWu2a1xmkW4XDEMRc7OcHG4CL=
SayyA%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://grou=
ps.google.com/d/msgid/clang-built-linux/CAKwvOdkAHKLGFnVLMZhmgWu2a1xmkW4XDE=
MRc7OcHG4CLSayyA%40mail.gmail.com</a>.<br />

--000000000000b34a6305bc6b93ef--
