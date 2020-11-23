Return-Path: <clang-built-linux+bncBDT2NE7U5UFRB7WI536QKGQENTSHLZA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa3d.google.com (mail-vk1-xa3d.google.com [IPv6:2607:f8b0:4864:20::a3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E5682C0517
	for <lists+clang-built-linux@lfdr.de>; Mon, 23 Nov 2020 13:01:03 +0100 (CET)
Received: by mail-vk1-xa3d.google.com with SMTP id b4sf7931060vkg.10
        for <lists+clang-built-linux@lfdr.de>; Mon, 23 Nov 2020 04:01:03 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606132862; cv=pass;
        d=google.com; s=arc-20160816;
        b=drMh9pkOHDTTM2XEbODy1Jg6QFdr6SbpHXxUiyu/vP/KOi3XfAyCXe3wi6sGD7Vf/o
         fFeO0Q1X5Bjqfa92nnQavmpwm8spLBdv6XHQDJ+Cn112OIlih/qV3f7D+88ytv64iIOe
         MN/tZdw8R7hw5rjOPaGiMSEM5TxmMaUJ+qbOcIrSEd1idJFQsjgdbDG7Qs/Ba3xfn6sV
         Apm+koSEiox+ObpNhz9OoxxiF6EsBQqP5sVQEEkdCCiKUy8nebw+2kbWp/g6/lEhb2NL
         18xvbjeqIy/tAA8jmTUXWjP11pliAaYgQT3Zw8jEynaxw/2NS1ughD9YaBgj9B3n+q1L
         l2DA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=teJQgdhHuQqo7dl83LQy4zn1SL4zyHUYH73HnDW66gQ=;
        b=lC5HIffwiQeQvhpgfunO0Qrsz1SZzz4GM7g6X+iZkh6Q0J23G5dY2z2ov1V9CtkSKG
         w3Osq+53yA2TJsNuCwu5iG15/a4D90hs7VjrcQz8unSCXJs2pZpEj+AzBcWJPirxGDda
         YNtfAdvJ9xMAti4yUylXGLXR9wofMprugs4+StOCqZUrNik1DB4rXeCaW7QkhihiSy8v
         oOUk8ctXG5D3T+xbT4YdzRgxzRupzKzias03e3dD8gCZCxpdIGEk7a55WeOfrDxpEwjM
         SjEpllY0SpMlJ6RCzcA+aXyNEIT6ES2Q/1FYt2prBgHLwLJ79WsnxITC2J3pb+Qj+bfr
         aqOg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=BFluJpJx;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=teJQgdhHuQqo7dl83LQy4zn1SL4zyHUYH73HnDW66gQ=;
        b=WIXifwnka+79yxLIguHGmuH68JThmWgoN+UtQgR2oRI9Ux8fM8NjKjnQH+5+R4lain
         kGu0fKnwC/wiMtQ8Bwfx+NsE2u3xx6k0m0xwvCan0OxL6NneipUspIqKueuDzf4AsDXA
         UE2QZSr4d0Dkio1OLSm/gX7XB+ERKDf3Dpwslx3cr/XlTG0pppTnQq1NwAm4zczEdU/m
         euZV/7arKwGuepj+wdToXS1JvmOrivsEV6Dy5z+NvWmzybwbSCQ3AyZO20L6CTEpRcH0
         5/qm9cMjskGbkIga0bke1fwvbqIXDr12Iqr0DU9C1jZRnoySyCpSFRDX2gWBQHURpqq+
         AF+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=teJQgdhHuQqo7dl83LQy4zn1SL4zyHUYH73HnDW66gQ=;
        b=gPRC02JCtpHN9sxwaK1e7PRKoF4rnKdLeuzZ2dFx4LurXiIwaHNHmZIOp8W6NAnUDC
         5yERgcCQzpBKz8XomWuzBjVEGMFtZxxXhAdHIKrVN1MzO1NgoMzNkYJT9W4xLes+c1Ic
         an4csQszS98wzsyPNNqP45OCFRO16GwToHYSMXyMm7EGYv1YUJFZubrb2WErhFKvA80d
         ZQZYB8cgrI0J0zlMPQNGdvHaplkTHNDkDlPLSch+kur4LIzu5Y4tfyZJdgIsTJARpRY2
         ohyJOWxWDxdem2G11Wnyqhz1N2D7C58k86paUr8KDYqxyC8oE3YAWam3AMyXJPchjeEO
         vi5A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532KHrsUD5QaJc4lFQyjWBOGZnPcqTGyB1XcHMPK3cNKwEsn/w7Y
	56VrIrSDPrcaQl3XTwM7FX8=
X-Google-Smtp-Source: ABdhPJyB4sgNUQ5LuOvDWo6+icexORrrYyUVQkbjJxyJWwlM8eJVhiP22BdIrJAXO5G49N59DQ5Z9A==
X-Received: by 2002:a1f:cd07:: with SMTP id d7mr20315720vkg.10.1606132862297;
        Mon, 23 Nov 2020 04:01:02 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:2046:: with SMTP id q6ls1775970vsr.3.gmail; Mon, 23
 Nov 2020 04:01:01 -0800 (PST)
X-Received: by 2002:a67:e9cc:: with SMTP id q12mr11880701vso.15.1606132861922;
        Mon, 23 Nov 2020 04:01:01 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606132861; cv=none;
        d=google.com; s=arc-20160816;
        b=X3CTRI6hMl5woG7mGMKaiIrdC9fI6ZXQVb7928f/SmjQ5OmHPGYPMK6UV5tn8aHKu5
         8xdCCjGToJycUdUleKZgwZX7EeCTt99RN6F31yqATieV0TjI2DBN1o5zhZlw/24mieF0
         HP4vCw2ZxuFJMclB61QRf9uXY55ZeOvKpHVTdXtEuC/3mInnBioyH67FCDujAUVHQuz2
         nEyNnAqhitCw2yWfZ30rts/hj57VmwLWlfC8nqAIxWjT4zHA0TBMi0h+BwKUvfiRDdNG
         yeAMFWWCWpob+3I7gEOot4NO0g1Bwn7wY7XBmaNEgq1PLTa/rLe468mROkidX5ZTsHqS
         4qKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=gXJU1j0tk/l4SrquKaTpMFBdizTn1Q3SlxK72caN7Qk=;
        b=nZAZAEkFxaXs/vAy4x82QFhZ5NDG11JzEAeiEc8NH1znlschGUkyR0i05Uf4aJ9ORl
         t0UeaM5niJVgpCsQe8eyRJaLgPt08wgdK0cHuPixyFthnF6rrl+Xu9oZRNi/qmXS3h2e
         ZlBDmfSch1Ou1eZRpa3u/JE4zLr1ZDyibghko55leifDpD1ugFPEc9ZbKnUByTgXwAeZ
         Bx3MW28uhcP9qzEnETe6imCE+R/Uu9fXy9Y8eQvqvJywUtLxSV+7Sdmg5F2cnOyUlEAj
         A5a/ii/b9BsbznK2IxpwqQpjRSVPXxJipKSC/hBfJfL5aHiHWcIK3D8TKKFaQJz3Np15
         JWTA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=BFluJpJx;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-03.nifty.com (conssluserg-03.nifty.com. [210.131.2.82])
        by gmr-mx.google.com with ESMTPS id y17si811212vko.2.2020.11.23.04.01.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Nov 2020 04:01:01 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.82 as permitted sender) client-ip=210.131.2.82;
Received: from mail-pl1-f172.google.com (mail-pl1-f172.google.com [209.85.214.172]) (authenticated)
	by conssluserg-03.nifty.com with ESMTP id 0ANC0hPp028034
	for <clang-built-linux@googlegroups.com>; Mon, 23 Nov 2020 21:00:44 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-03.nifty.com 0ANC0hPp028034
X-Nifty-SrcIP: [209.85.214.172]
Received: by mail-pl1-f172.google.com with SMTP id t18so8758440plo.0
        for <clang-built-linux@googlegroups.com>; Mon, 23 Nov 2020 04:00:44 -0800 (PST)
X-Received: by 2002:a17:902:aa94:b029:d8:5c6f:df56 with SMTP id
 d20-20020a170902aa94b02900d85c6fdf56mr23150032plr.71.1606132843231; Mon, 23
 Nov 2020 04:00:43 -0800 (PST)
MIME-Version: 1.0
References: <20201026220331.3896226-1-arnd@kernel.org> <20201026220331.3896226-2-arnd@kernel.org>
 <20201027014846.GA368335@ubuntu-m3-large-x86> <20201027043213.GA2342477@ubuntu-m3-large-x86>
In-Reply-To: <20201027043213.GA2342477@ubuntu-m3-large-x86>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Mon, 23 Nov 2020 21:00:06 +0900
X-Gmail-Original-Message-ID: <CAK7LNASFzy9dVk6_VB3Zu0Zqfsi8B50Dw7QQB1PwC-29RrMRgQ@mail.gmail.com>
Message-ID: <CAK7LNASFzy9dVk6_VB3Zu0Zqfsi8B50Dw7QQB1PwC-29RrMRgQ@mail.gmail.com>
Subject: Re: [PATCH 2/2] Makefile.extrawarn: limit -Wnested-externs to clang
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Arnd Bergmann <arnd@kernel.org>, Michal Marek <michal.lkml@markovi.net>,
        Arnd Bergmann <arnd@arndb.de>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=BFluJpJx;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.82 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Tue, Oct 27, 2020 at 1:32 PM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> On Mon, Oct 26, 2020 at 06:48:46PM -0700, Nathan Chancellor wrote:
> > On Mon, Oct 26, 2020 at 11:03:14PM +0100, Arnd Bergmann wrote:
> > > From: Arnd Bergmann <arnd@arndb.de>
> > >
> > > The -Wnested-externs warning has become useless with gcc, since
> > > this warns every time that BUILD_BUG_ON() or similar macros
> > > are used.
> > >
> > > Signed-off-by: Arnd Bergmann <arnd@arndb.de>
> >
> > Also see:
> >
> > 2486baae2cf6 ("objtool: Allow nested externs to enable BUILD_BUG()")
> > 6cf4ecf5c51d ("perf build: Allow nested externs to enable BUILD_BUG() usage")
> >
> > Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
>
> Actually, just delete this line altogether. -Wnested-externs is a GCC
> only warning, the flag is only present in clang for compatibility with
> GCC:
>
> https://clang.llvm.org/docs/DiagnosticsReference.html#wnested-externs
>
> With that, my reviewed by still stands.
>

I agree.



Arnd, will you send v2?

Please include
https://clang.llvm.org/docs/DiagnosticsReference.html#wnested-externs
as a reference.

Thanks.

-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNASFzy9dVk6_VB3Zu0Zqfsi8B50Dw7QQB1PwC-29RrMRgQ%40mail.gmail.com.
