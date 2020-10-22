Return-Path: <clang-built-linux+bncBDYJPJO25UGBBQ6RY76AKGQE744G5MY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3d.google.com (mail-vs1-xe3d.google.com [IPv6:2607:f8b0:4864:20::e3d])
	by mail.lfdr.de (Postfix) with ESMTPS id CD6792965E3
	for <lists+clang-built-linux@lfdr.de>; Thu, 22 Oct 2020 22:17:08 +0200 (CEST)
Received: by mail-vs1-xe3d.google.com with SMTP id z190sf727240vsz.22
        for <lists+clang-built-linux@lfdr.de>; Thu, 22 Oct 2020 13:17:08 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603397827; cv=pass;
        d=google.com; s=arc-20160816;
        b=jY+UppMlkK/uexogS/k+egRU+dE1gl6dHsNzRcEk9YhqXME/DqWqwEluG7ASbmhNAb
         A3KjAUxyCxj1zFCIkzaNyxxdJXjY0MDtNgX3obIPssaAhHZWdMAToTcDhiO67bbZI8Qf
         pZLffmZIYalWd99xgl8AbFWrgf+I38IJKbFFfyE2psiUEE1umBz1nk5sa+Z9WX7S4S/x
         T7CslLWAEmAyYEy2Rg5b6mBaIzyqblqPvh7Fv/mdNde6UDcu/VlT0kZRtZRO1hBwW/PE
         HdHr03QGVQM58yOrtOv/wNJUHTklKSJQw5XE2a3XQ6g2GyOyaUUjwV5U2gLwedHA5tlZ
         4wjQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=9JEjD189E7gwkQYfCH95r03KRYL0qNEhHNKk+aL2248=;
        b=LdPB1InWu1TDFQHYtKGbw3iEMYmIm9JOe7K3S9fhq+BvBtCJMQTzDd2Xb1twMVpHX5
         c/JcLYMZ81pVfIYFaj1WShPF/D3AKQRbhBJc9fDdWUtSX+tUcDZjZbmDQwTvy/9ac6uR
         r0+HubjNx9NrsUACDIWk0PZaDVY6bI1eMEeX+vNJQD7LP2eQffq6YPL2EQrUybYbfkCW
         qu0OD9ulLQvxVGWnDtnU3urY9zw4dV5NaE6LTypvbJcWYMCkrKUSHePVisnIzFZkpLCj
         qGKAgdO1hpkpnm52oqT0VA4tZIhuJK8yjPzmQkwal0j8c/it3hHp5rCSzQpdjh53fcSt
         gjJA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=EuaOhCtj;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42d as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9JEjD189E7gwkQYfCH95r03KRYL0qNEhHNKk+aL2248=;
        b=bQBQyasIpDF68pV7uAAdRfVMUojbGFzfF3BW2VV/aCKm2a5R7Tn94sC/qCWCJhUeoZ
         o1+5joubPK3yo69MIjubX+va58/9iGC8VAAXSBYE/Osv8Z7uHakuH0IZfTAsJpU8N1Jd
         H9g3RH5gFYdJyrcH+dMZ0ItzCb0xCKkeYI6LIGEGeinjW5ZU/k6KTqYol+I5zGl+N32n
         rMdZTKR3vpKT7hHSiTk9gyh3OGVynk0OCB/W0z+F/N3zj7lKfFTHHiJMhfhpvR8/pjja
         Z/Wt+ulKr7MiQXsgB6BlvAfNGy6m2GR6QbCmW4jtImD6goPiuYju+l+V/SikvjWpPuPr
         FC2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=9JEjD189E7gwkQYfCH95r03KRYL0qNEhHNKk+aL2248=;
        b=n0JE7Bu9AjV4HfpUaGO/eMzG0cRr91p6NcEWGPR6ahP3OCgP7Scuz+wIeyHU9QMKKk
         SUmpOL69l4/9q4xVwzusSgsbtJ+Ba2jo+zC49KuKPrkjTPuYU7TxRzgsAocdvneQO4Lo
         bbJrYk18mJyVATmaw0bcnCr9Ko5FknjCfEGn+5PYksJdSUNJ+CIQaxay422G5xU/wMzw
         9+P2Fr6Gh24FO3HON5X10UxqrDLgkwK8jtxGmB+5d66npwwtklxq4tFmCTM/5BP6UQKJ
         BU4rJYdKfAdYX4mcZ72ZSCogAT/KISG47IUT1kzIhyimLmzh0qYwjzjyQJSImkOAVEpg
         h99Q==
X-Gm-Message-State: AOAM531EbaAkTRl0/PtbIZwKRHtDeNwk80bKLA4/PuAf5ben0JTU1+qD
	3wnMJsyJu/WaP6E3opnm4ZA=
X-Google-Smtp-Source: ABdhPJzMDB8DDRLn6/1FQrdYo3e8+GRCwQpJnPmb3tJujOHisjyTAk0EiVWyNlwHtRCZ2W0WivogCQ==
X-Received: by 2002:a05:6102:2435:: with SMTP id l21mr3636108vsi.28.1603397827711;
        Thu, 22 Oct 2020 13:17:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a67:2dd0:: with SMTP id t199ls237335vst.10.gmail; Thu, 22
 Oct 2020 13:17:07 -0700 (PDT)
X-Received: by 2002:a67:6504:: with SMTP id z4mr3637812vsb.48.1603397827155;
        Thu, 22 Oct 2020 13:17:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603397827; cv=none;
        d=google.com; s=arc-20160816;
        b=QfRswe1zPXKHIxWKdlJuLqVkZiLWywskJQd0MKjpkYDda2proYW1CvXGSkL9YIpLma
         +1kEZHgICiKt9Q7F+P99tbQYdNkhq9tx0zu/NHeN1MVpIUH9mapC4HD/VlhnEGSlxdwU
         Vz+Kvh7wVye3T7h1I+o+ugp2Qs4/RV75NR1Zq/nmUMYza0Xaqpnextw6kgqWkyicbLo2
         csnsoknuz12hxrdUvMp4381OgUc+Yf41QISK3O5NiioQR/kCcDP3GuOkHnHk7hyqi/5q
         Slx8YZ7wiRPbehJM4w3QZOXefBK2kE01AZsYICLid7VENu0QwZ7zMi06dZTg+4tEDNT/
         Cx4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=GuoblhKiavmIYLL/22s0jxc7NTIb3S0eGf3FzhZMq6U=;
        b=n7rdao1OLgFnQ3gBlKoKoBoFwnGjljOUewqVBJP1SNhGiFoncoDFMiCXtiPVdS5Wpm
         OmQpKIv0HXVk3aBbM8frMr93clXFNAV9x9aJd6fwvGMCKtbB1Y5JC3F8ovDW5epZx9lm
         4aUITmZU5tqUupUTxsdLPjwXIbpz6I4naPRIFw6h7ZFf1B8IlorqLbF//1gUESZObB+9
         ExXGaL5bk/56w+LV4dzcE3FrwseeqcXXa2rmZiDeNtplpDnZt4Nwsy+H2RG4sjpxqqqT
         H9hEkgJ3JxmjuBLlPoXX+Js6lbCWJBndLtQosyxOHosPGYGmO/ZJ/eRjYHCPvvXzZgm2
         if7Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=EuaOhCtj;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42d as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pf1-x42d.google.com (mail-pf1-x42d.google.com. [2607:f8b0:4864:20::42d])
        by gmr-mx.google.com with ESMTPS id r131si188138vkd.0.2020.10.22.13.17.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 22 Oct 2020 13:17:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42d as permitted sender) client-ip=2607:f8b0:4864:20::42d;
Received: by mail-pf1-x42d.google.com with SMTP id b26so1919657pff.3
        for <clang-built-linux@googlegroups.com>; Thu, 22 Oct 2020 13:17:07 -0700 (PDT)
X-Received: by 2002:a62:2905:0:b029:15b:57ef:3356 with SMTP id
 p5-20020a6229050000b029015b57ef3356mr4116404pfp.36.1603397826534; Thu, 22 Oct
 2020 13:17:06 -0700 (PDT)
MIME-Version: 1.0
References: <CAKwvOdkztAcpu5UbtXB6CpByX34BX2jcSfKOvQXB-4WVOvrh_w@mail.gmail.com>
 <43ad8fad-6105-d9e3-5054-3a2b6e819feb@redking.me.uk>
In-Reply-To: <43ad8fad-6105-d9e3-5054-3a2b6e819feb@redking.me.uk>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 22 Oct 2020 13:16:55 -0700
Message-ID: <CAKwvOdmaMi5VULrVpiEeKjrcE46bg596ioYqYim1Kk1_hBkcMA@mail.gmail.com>
Subject: Re: failed assertion after e372a5f
To: Simon Pilgrim <llvm-dev@redking.me.uk>
Cc: llvm-dev <llvm-dev@lists.llvm.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=EuaOhCtj;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::42d
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

No worries, thanks! (I'll confirm the fix later)

On Wed, Oct 21, 2020 at 1:33 PM Simon Pilgrim <llvm-dev@redking.me.uk> wrote:
>
> This should have been fixed by the reversions by @mstorsjo finishing at
> rG4de215ff1877
>
> I'm sorry about this - I've been having a few problems both with email
> and the new buildbot webview isn't refreshing properly for me so it
> hasn't been easy to see when one of my commits has caused reds.
>
> On 21/10/2020 19:16, Nick Desaulniers wrote:
> > Simon,
> > idk if you have your email notifications from github turned off, but
> > there's at least two reports on e372a5f about failed assertions;
> > please address:
> > https://github.com/llvm/llvm-project/commit/e372a5f86f6488bb0c2593a665d51fdd3a97c6e4#commitcomment-43425310
> >



-- 
Thanks,
~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdmaMi5VULrVpiEeKjrcE46bg596ioYqYim1Kk1_hBkcMA%40mail.gmail.com.
