Return-Path: <clang-built-linux+bncBDYJPJO25UGBB6FCX76AKGQEBR6HT6I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1037.google.com (mail-pj1-x1037.google.com [IPv6:2607:f8b0:4864:20::1037])
	by mail.lfdr.de (Postfix) with ESMTPS id 7021629480D
	for <lists+clang-built-linux@lfdr.de>; Wed, 21 Oct 2020 08:13:14 +0200 (CEST)
Received: by mail-pj1-x1037.google.com with SMTP id j6sf716718pjy.8
        for <lists+clang-built-linux@lfdr.de>; Tue, 20 Oct 2020 23:13:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603260792; cv=pass;
        d=google.com; s=arc-20160816;
        b=WNo/VdmlvxmPybinu7o575/1hBoAmVibgxLyR65t3j9dWVPHNtW0LwvjPlIe0R9zTa
         6bUlqAX7MhyKfnxjq9+Y8FvZ9l2EmHHNor0mJ58yHu9meKqHbmX7gondJtdYCZnsEBXQ
         2Wd4paWJovdhupe67JvHRoHMJ0AC7+8XVDgb/H/lOaby8YjBEBEdpbJzAF2GAYjY22ts
         vjxJoEKVUI++tjdhk9Lxt/yrSBP6CCEyMcwZ7CapXXZtSEfEdLpKBkbx1YV4x571PtFt
         SEUYcXuktyKLs+ah+y914AvF4w68LvjKMSBRTQ4IT0+2DSaiiF+P8qA+VWyQryzpU+3U
         p92Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:mime-version:dkim-signature;
        bh=6RnFvUefltMwa2bxLWKrfVt2jqAOaghO9SDpT9+o8qg=;
        b=rbX+lDu4rtWXtw6dgKSlummkj9AO2P0MVdxHG4zBertkJ4JiDEjVWiHZObO9Sk6VEG
         2jchwo+v+MeL6mH7LUuK2CmTYHNAfKo+5PzMVrOlWWeSXJy+uMr6ktrup9LINoutWYGr
         ABzIBXM+Xl3mZqFWH4cGhPKo8TK3o10pMNXMHUwo6F4Emr7eyH0eHciLLej43aJRZrXG
         p1WVyu64Fb5vzmLLZYh+gu5gkAd0FlUZsiP5aiMHTg6Yqy6NSq0bLwNCb8xlJrUhEq58
         wISuvn5/0YcUPiVfkx/286InbRlTRAU91wE0Af/LoKmkUOW4NAojNmfKQOF1pvAi3UTl
         tUDQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=HY+Jiva3;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::533 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=6RnFvUefltMwa2bxLWKrfVt2jqAOaghO9SDpT9+o8qg=;
        b=KnN4v6g4DWOYheB3Os1fEug6AkBX2yNllstivTUC8dCUkU+rudBZF+vpud63SQNyym
         XCvaRwsXm8MZ17dO0UoLwJaV9TLAdzv6iPljLfBsWmSLXIxH6oh2qlF7nKG2ymkMo79j
         pZylnzTe8BQYp8c8toCUOykgWOTaG98nZVyHOx+7SB/hpwydfnOpyzXGEyh5Hlogfub4
         wCXrQXwyQgaPmHs2IsdFF/XY4rWoz6ENbsM8mwspRfvd2mYwJOmXBp0Iz8jYTFXYj12p
         lD+FYQdGH7ejwKcme2sQsMX1GUeequ/OUPSE6FsYlzJ4GFMu8jjKuWtg8vpzN5Z8yfew
         bNkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=6RnFvUefltMwa2bxLWKrfVt2jqAOaghO9SDpT9+o8qg=;
        b=nH/GuXcyuhhF+OOVuHauerMsT4Kan8SsQbl1ZfvvGIx4rPiVeYzs6O0r9RzTtKSILD
         QmLDOWZfHEz86xEEp1ejUbHcdmANzlilxvxQrjUZ+EmK3tS9c00vxdlzEt9Yr2kUX++e
         uK1ORpR3tpfeSjZ+dejpDlhfjW5T/2R2Ba01dYQsfyBGGbAC87EhgD0qgUUFvREd+JnM
         vwUlldzQv/M3OKwtBWiS9/+7mOEyAPDaZuSyVuL9EuPW+8Fr4vSixXO+mrXE2NqwHLz5
         YyG9qxMOKvg605eqHtODSa3/Ta0c0uXgjcmrC6/bWrbQxP/58EtGfguJ//NCnV4uhb8D
         eqtw==
X-Gm-Message-State: AOAM530aAjfeMhQ4JBnCoU3qVXB02jjdYZA4Zbc7EeziHDtfNxvuzRSf
	4khkurOHsX/+vD+N2Wxt8/w=
X-Google-Smtp-Source: ABdhPJxib/vi42s2DASl0GhgmeEkkA/tL6Q1DDcKtQoT1SbEo2k/VjdYry1ZAQmZbJ1GZyEMB2nIyQ==
X-Received: by 2002:a63:e65:: with SMTP id 37mr1860229pgo.445.1603260792699;
        Tue, 20 Oct 2020 23:13:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:e416:: with SMTP id r22ls1678875pfh.4.gmail; Tue, 20 Oct
 2020 23:13:12 -0700 (PDT)
X-Received: by 2002:a63:f514:: with SMTP id w20mr1912397pgh.313.1603260792124;
        Tue, 20 Oct 2020 23:13:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603260792; cv=none;
        d=google.com; s=arc-20160816;
        b=hk7H06McPMox2ahka0/2jSDlkIvYK6CJsk3LSWT/CgH0vf26HdIjLVYPKee6mJSWlA
         168RAlTMLVi+iS19tQfwX2HShqBdND1QxhO4dsqD4u47dPuxQcIW3DGWDbn2DRVXkrhB
         lM+0BpNbEGbJnUxtUVtzMgdS+7uEOXrHZbdNqJb1hZnuE1psZe42JUrfPL6RQ0LYtb8G
         PClLFy74TDapczWDtWtwsgBUk1wcExKXtaBOYTjT31eYxwbAWFdsXWzI2uGigvkxCjxG
         +a2gQZDG0dLKob9Q7DqHqV5+7lQTfh5nJMxNCAnWVhYXbUXnArfNMKW19vEbkKAkt8Ey
         uj4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:mime-version:dkim-signature;
        bh=kbm0zsxG13iaTu/eCL2oW6hbbwFE/dzgSvLJWsSqVr0=;
        b=Owi0aEDguTjo65DSFdHm21tEFqusKe7S/YQNJhe3QwLV1tnh6BJZUEUQ90ZuGA1XZV
         HBB4cmy1ViG1L+kz/Y/I7E1F9dBNh88h6dV/cjJCOc+1vrAqLkMmCsv3sytzlgqzUjsA
         U9Ni9Hu9IOpalSU2gCzvTO6amPGLA0d7LLK9lVXIrlIsX4L5ql8WcMqgxPgoe8gP0bnd
         UYHL0WviD3Fzc4SmLpC73DlhnJg0QZYCzQSGSFZ4C/zgRpbDFUgaM+rU8k2MPFt7LDhW
         hpRP7qQXEQfIoym3a/YN0I8qt+qc5V/x+Zb73vSC8TNo3Jl0OraqyjnkXS5znnbdLREQ
         3D9g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=HY+Jiva3;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::533 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x533.google.com (mail-pg1-x533.google.com. [2607:f8b0:4864:20::533])
        by gmr-mx.google.com with ESMTPS id t13si73100ply.2.2020.10.20.23.13.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 20 Oct 2020 23:13:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::533 as permitted sender) client-ip=2607:f8b0:4864:20::533;
Received: by mail-pg1-x533.google.com with SMTP id h6so860463pgk.4
        for <clang-built-linux@googlegroups.com>; Tue, 20 Oct 2020 23:13:12 -0700 (PDT)
X-Received: by 2002:a62:2905:0:b029:15b:57ef:3356 with SMTP id
 p5-20020a6229050000b029015b57ef3356mr1820155pfp.36.1603260791382; Tue, 20 Oct
 2020 23:13:11 -0700 (PDT)
MIME-Version: 1.0
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Tue, 20 Oct 2020 23:12:59 -0700
Message-ID: <CAKwvOdksY9bakKwNLS3v1YqkS3wwqy3cUxzRVLCx5grqMB3fbQ@mail.gmail.com>
Subject: Sedat top tester, Kees top dev
To: Sedat Dilek <sedat.dilek@gmail.com>, Kees Cook <keescook@chromium.org>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: multipart/alternative; boundary="000000000000f432fd05b2283dee"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=HY+Jiva3;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::533
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

--000000000000f432fd05b2283dee
Content-Type: text/plain; charset="UTF-8"

https://lwn.net/Articles/834085/

Congrats Sedat and Kees!

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdksY9bakKwNLS3v1YqkS3wwqy3cUxzRVLCx5grqMB3fbQ%40mail.gmail.com.

--000000000000f432fd05b2283dee
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><a href=3D"https://lwn.net/Articles/834085/">https://lwn.=
net/Articles/834085/</a>=C2=A0<div dir=3D"auto"><br></div><div dir=3D"auto"=
>Congrats Sedat and Kees!</div></div>

<p></p>

-- <br />
You received this message because you are subscribed to the Google Groups &=
quot;Clang Built Linux&quot; group.<br />
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to <a href=3D"mailto:clang-built-linux+unsubscribe@googlegroups.com">c=
lang-built-linux+unsubscribe@googlegroups.com</a>.<br />
To view this discussion on the web visit <a href=3D"https://groups.google.c=
om/d/msgid/clang-built-linux/CAKwvOdksY9bakKwNLS3v1YqkS3wwqy3cUxzRVLCx5grqM=
B3fbQ%40mail.gmail.com?utm_medium=3Demail&utm_source=3Dfooter">https://grou=
ps.google.com/d/msgid/clang-built-linux/CAKwvOdksY9bakKwNLS3v1YqkS3wwqy3cUx=
zRVLCx5grqMB3fbQ%40mail.gmail.com</a>.<br />

--000000000000f432fd05b2283dee--
