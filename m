Return-Path: <clang-built-linux+bncBD42DY67RYARBC4UQX5QKGQE7GKSHUI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x537.google.com (mail-pg1-x537.google.com [IPv6:2607:f8b0:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id 19F5626B3D2
	for <lists+clang-built-linux@lfdr.de>; Wed, 16 Sep 2020 01:11:09 +0200 (CEST)
Received: by mail-pg1-x537.google.com with SMTP id i16sf812680pgm.0
        for <lists+clang-built-linux@lfdr.de>; Tue, 15 Sep 2020 16:11:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600211468; cv=pass;
        d=google.com; s=arc-20160816;
        b=tTESBsBuINaw53y16njC0GIOwMc274naxzNt5U1JLGuHPpAzDhJkHFkQTiKo2ImQSa
         Oc5qF6SjJdXrc1RXgja31sKPT59+2M0/eVn/nxIoi0QCxknY9Tr6zBfxDZsAB9WJOx8a
         u+8iqTeTFXHtv9iCbmjWJ6z0I73sxWH9CnQos3m6QdKzM4PFye4NQW1MCvuAenKakXhI
         OaiLEmk8m3uIB7BowgCnoFxo/bXCzNaGop5NzbyqD8GEEkQTfCLiSHh2MV4y8kdJYgGm
         6bTBDuE06scSe9tRcfF8focdGj/rkkjNJL7awMHOOBR/l+IFJbgc5YNmouGjlTJsiphv
         h1kA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:in-reply-to:cc:references
         :message-id:date:subject:mime-version:from:content-transfer-encoding
         :sender:dkim-signature;
        bh=5PzTZwQTa5I9bXC/QNgo+pDXPlRI759WK15E1HCBjeM=;
        b=maOMd5/wQkWh/EF/5MbijHT/kf3gtRdeMQGTbMME+wGW8dBWtS3CocEyjNlfT3xv2w
         sDGcmH8uM3Btc+G62gSh8Y1C1MyQ4+AUoKmyxyDkJH1Lqe1xTSprdHM3VAFmLuXiHP8P
         jxUARBqvVn00+vo974dTR61gq9ssCXm5++opUaWZLjPIL/TSqW+p/ou431Umgz2FNanh
         CeEJmpr/QVr/MTHPRH+2E1MXWv8vZ311C5iLrWXukFZXYwfJtTMY/XDnc1EB7nqgopOg
         4gd82/zkHJlzNXtRii0rGzA1LHEnuV950EXZJqYf+BfHNvjNsVz+aZDtwolj62SzzSrL
         qu9A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@amacapital-net.20150623.gappssmtp.com header.s=20150623 header.b=KHG2vbOW;
       spf=pass (google.com: domain of luto@amacapital.net designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=luto@amacapital.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:content-transfer-encoding:from:mime-version:subject:date
         :message-id:references:cc:in-reply-to:to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=5PzTZwQTa5I9bXC/QNgo+pDXPlRI759WK15E1HCBjeM=;
        b=HQMrR6sEgiNc+l0v0sXzo1lziI75jhRIU/0AVF+FUkf8qmec3bvHho7RAeBmS5KsNq
         2rftPD5rAEEr5onmR1FWGccv/8zwAAl72NnY4Asuf7G23TOLBK1xyw7p0bI9oQvX1dA6
         nljgHxzn9qMacCAHZX5YMt+VqLaMJFe+G4DnlqRTnuXxUEfbxsw0v2yUlXmhAbOn6vwl
         07gjKkhq91n2YDQNt6kbwaQmToqDn7iRbV2SIscG961U8D2WL39QyYVRxPStIv2rO+7j
         mjjNreFxrkbMQRE4Gdzr8ANG0pN5gamc+64vT7miIMTFGgZgVxJ8h0Jq9I9DeP3OHhKH
         07Ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:content-transfer-encoding:from
         :mime-version:subject:date:message-id:references:cc:in-reply-to:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=5PzTZwQTa5I9bXC/QNgo+pDXPlRI759WK15E1HCBjeM=;
        b=kpdWNUQmtK3s9lzMtiSZZKPun26d/GKAwGCoVHOIMYEHhzzii2eb/w4YxqFadmpD9p
         yeTOITCWJyetuBpbkHJmQzXvWW/svn/JiM1BVg8DsiUb7zmiwsnbyozLZDZIpzNFMSPY
         sgb34E9mtlbOPHhLNsp1X+LCBrjYJmOlO/Pyyncu+lHnX5p1UhsOo2PUIXzxYnwu5BZR
         ULCZYvj2YsJC3K6tlExo6PLAX0fDhEEhQiPZowMXTcpZprjNSzaUgWoDvQfcgz+Yywgf
         0Kv6iKC5r7ZgbXyiNW9cB58TjqxGTe+INbziQk0GtDp5pwFcIyZgCEF7spCBNldfs9GF
         3dQw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531sh9oAij3QvdYi/0Vp1CnRWAzN7JPggqobj5c2JdzYDh7XkYJx
	ocEQKulGH6+eAHCFajmO8NQ=
X-Google-Smtp-Source: ABdhPJxFlJpH9+JRpfS6W8iziskPf2j4/7gQwx9N5Pv7lCm9rsVZzSG21lSrGQn/UO/sh36mysQ9HA==
X-Received: by 2002:a63:5047:: with SMTP id q7mr16557644pgl.59.1600211467762;
        Tue, 15 Sep 2020 16:11:07 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:8c8b:: with SMTP id t11ls78627plo.3.gmail; Tue, 15
 Sep 2020 16:11:07 -0700 (PDT)
X-Received: by 2002:a17:902:fe13:b029:d0:89f4:6226 with SMTP id g19-20020a170902fe13b02900d089f46226mr21634857plj.14.1600211467155;
        Tue, 15 Sep 2020 16:11:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600211467; cv=none;
        d=google.com; s=arc-20160816;
        b=L2ZJAyCGq+4MCEdXAfF8WmPBgdifInHsMgZKoPNczvfgoq5du6/T1WgPdQ9e3ebAXJ
         sLTJmUXJmszqoR9UE17U/bYyE4ZQqV2Qp7xp0CJ7xq+K2gwv8VJCOx2VSVDx+qCwL7Av
         R6Cg2lwMNNDCgocilKr3mG44iSLiAE90cSqjmkr5dRF4BVtVrXaDaDPFXRtnGo+THqL2
         MzzMolTFo7WmMA+/n7Xm2ehcsN+WsmIZ8hfvMnYWVhTcN0PJNFsBpHREkHgZylZI5QV5
         SteTVrtNwSjpK5ROc/PJpA4LvJwtlY2TDROBuFtdDziEClM699+oEXLGhkEs9mFScfnw
         BE1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:in-reply-to:cc:references:message-id:date:subject:mime-version
         :from:content-transfer-encoding:dkim-signature;
        bh=ejKAlDLK9UWIbMwInXUY/PDlDWa5qsu2LYQ6i/9HXFM=;
        b=Cd3QFA29JopDj/U2/+48y/ItWuaCb3PhuHCUWxyRJ9/p5a8c96q6vIMYSjk02sT9pt
         jM90fQ+gnZLTrxmOV7gje1U22xJKjGNX9kNwjwbzZc4z3hbcK6TxAqcafvvEFLv43+J4
         svSZoHUQm91DHErHbedN5Dq+YRsGtoiy/v+ZtKvdsJIiHHvBj+6K6qr40RJkzGRVl93T
         NjwQmLHILIwBmsiKj3avUVXnWXUXXCcbSj7ibY5ugghTCv6sqWqIKvz+J5AM4ncUL73x
         BnGn8dkJSjrG2pDd1x/OJTdwuH5f1KbUKJr8fDqER1xMLzhROvACH8qGPy1OyynxYjiN
         yOxA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@amacapital-net.20150623.gappssmtp.com header.s=20150623 header.b=KHG2vbOW;
       spf=pass (google.com: domain of luto@amacapital.net designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=luto@amacapital.net
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id h5si122866pfc.0.2020.09.15.16.11.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Sep 2020 16:11:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of luto@amacapital.net designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Received: by mail-pg1-x542.google.com with SMTP id g29so2827093pgl.2
        for <clang-built-linux@googlegroups.com>; Tue, 15 Sep 2020 16:11:07 -0700 (PDT)
X-Received: by 2002:a63:4a0a:: with SMTP id x10mr11653517pga.21.1600211466725;
        Tue, 15 Sep 2020 16:11:06 -0700 (PDT)
Received: from ?IPv6:2600:1010:b025:1a05:79dc:fef9:f308:6141? ([2600:1010:b025:1a05:79dc:fef9:f308:6141])
        by smtp.gmail.com with ESMTPSA id bb6sm498350pjb.15.2020.09.15.16.11.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Sep 2020 16:11:05 -0700 (PDT)
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
From: Andy Lutomirski <luto@amacapital.net>
Mime-Version: 1.0 (1.0)
Subject: Re: [PATCH] x86/smap: Fix the smap_save() asm
Date: Tue, 15 Sep 2020 16:11:03 -0700
Message-Id: <441AA771-A859-4145-9425-E9D041580FE4@amacapital.net>
References: <CAKwvOdnjHbyamsW71FJ=Cd36YfVppp55ftcE_eSDO_z+KE9zeQ@mail.gmail.com>
Cc: Andy Lutomirski <luto@kernel.org>, Bill Wendling <morbo@google.com>,
 "maintainer:X86 ARCHITECTURE (32-BIT AND 64-BIT)" <x86@kernel.org>,
 LKML <linux-kernel@vger.kernel.org>, Greg Thelen <gthelen@google.com>,
 John Sperbeck <jsperbeck@google.com>, "# 3.4.x" <stable@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>
In-Reply-To: <CAKwvOdnjHbyamsW71FJ=Cd36YfVppp55ftcE_eSDO_z+KE9zeQ@mail.gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>
X-Mailer: iPhone Mail (17H35)
X-Original-Sender: luto@amacapital.net
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@amacapital-net.20150623.gappssmtp.com header.s=20150623
 header.b=KHG2vbOW;       spf=pass (google.com: domain of luto@amacapital.net
 designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=luto@amacapital.net
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



> On Sep 15, 2020, at 2:24 PM, Nick Desaulniers <ndesaulniers@google.com> w=
rote:
>=20
> =EF=BB=BFOn Tue, Sep 15, 2020 at 1:56 PM Andy Lutomirski <luto@kernel.org=
> wrote:
>>=20
>> The old smap_save() code was:
>>=20
>>  pushf
>>  pop %0
>>=20
>> with %0 defined by an "=3Drm" constraint.  This is fine if the
>> compiler picked the register option, but it was incorrect with an
>> %rsp-relative memory operand.
>=20
> It is incorrect because ... (I think mentioning the point about the
> red zone would be good, unless there were additional concerns?)

This isn=E2=80=99t a red zone issue =E2=80=94 it=E2=80=99s a just-plain-wro=
ng issue.  The popf is storing the result in the wrong place in memory =E2=
=80=94 it=E2=80=99s RSP-relative, but RSP is whatever the compiler thinks i=
t should be minus 8, because the compiler doesn=E2=80=99t know that pushfq =
changed RSP.

>=20
> This is something we should fix.  Bill, James, and I are discussing
> this internally.  Thank you for filing a bug; I owe you a beer just
> for that.

I=E2=80=99m looking forward to the day that beers can be exchanged in perso=
n again :)

>=20
>>=20
>> Fixes: e74deb11931f ("x86/uaccess: Introduce user_access_{save,restore}(=
)")
>> Cc: stable@vger.kernel.org
>> Reported-by: Bill Wendling <morbo@google.com> # I think
>=20
> LOL, yes, the comment can be dropped...though I guess someone else may
> have reported the problem to Bill?

The =E2=80=9CI think=E2=80=9D is because I=E2=80=99m not sure whether Bill =
reported this particular issue. But I=E2=80=99m fine with dropping it.

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/441AA771-A859-4145-9425-E9D041580FE4%40amacapital.net.
