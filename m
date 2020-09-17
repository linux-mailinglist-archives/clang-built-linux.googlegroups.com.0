Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBYUTR35QKGQEZGMKQXI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43a.google.com (mail-pf1-x43a.google.com [IPv6:2607:f8b0:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D4FD26E045
	for <lists+clang-built-linux@lfdr.de>; Thu, 17 Sep 2020 18:08:04 +0200 (CEST)
Received: by mail-pf1-x43a.google.com with SMTP id q16sf1704117pfj.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 17 Sep 2020 09:08:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600358883; cv=pass;
        d=google.com; s=arc-20160816;
        b=F35g29/J8EFY1jJvDpGIunoTDYtJTjzOqpnhpHNX7WGa82oWr7zK7XJ78QWPplK1QU
         OVbyO7XPwB9LFXP7pNF/X3pxqPjAYq9D2Xk07Cr1GvZib5Xls9zIsm9tq+BeUGv5QqSH
         VrlWUC9jFqUzP2tYLUsQwP2ToShwn3eHPCATsAijOJpXSEj+hjT0y+tb+voOr2HGlaXe
         UOejQloUBD7YAdxqLClSsbiK6RO3LWIoZWoqm9QbZc2pJd7bQ5jUCkv6jt0xDTQAK2OK
         VVrPQ5MeYlFcN95ycP74fAKeAgZYU0/GDHfbJPWTZt/vkcBWQmSaou3BQmooazmxFsxS
         pLYw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=u7F+SrkVdqdqzJfD5qqu3dW99m5ugdY3+Einoec1zko=;
        b=ViGuqGjmq+JFHP1+Rk8kswqgn2Jr2DEf+fMLobu3exfGbhc0xnP2BVsvqeMykWQW4y
         O65OwvtkxknXX3AUaFi6bYp1ifOwITsmOnnNvYo0xSzpPWVR0yjhtZ9V9PyAc6CcoRgo
         BkfHtuc4revf9/HcHrDFiqvciK8INcHZshbVMFkL2kAMlcZcvMJU7VvElAM92+ZFXBeu
         zlRQ+88my8p8th/iyOh50K2kPx4S6l5yM9wQnxRjTbCtPne86l10iNyD497PKy0tc1ak
         PLuU1B/UoxWfS+dJXORQobJEFsQC0Xhf1G5qG8WUOtKjee5PAMi2mw2eck/qxepK8tmI
         hU3Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=Fa78KBoi;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.81 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=u7F+SrkVdqdqzJfD5qqu3dW99m5ugdY3+Einoec1zko=;
        b=qB+LH+qFsm5GkKJRiKDm77nxyus2lW+YNg9dtxHITi2oOrTcdeyl1P3Tat32P/wyHG
         QHQn/BgadGFEYz1kpdwKMhR6zi/uBH7dT3nAfrZcSYTnd9t07ARhx6W8Cpj4eEJBvMNw
         xr3hoFicoeXn9gt8Wzo3J4pynbBZp01Jfk+LR7ZlP3l+T/atZCaD9QY5BjyOI/q1yq2L
         pwAoW3CyvjdHhVpm3QntowOKaEqi0462dUb4sBiOpSlh6o7nnCL03L8o9k/ag4s/V8cF
         K+GpEIN+whkTXUjXEpP6Z+uI8mbDVDMCw9TJSov5ka8N2lEkvG6iPQLUwWE/wjbrtMTY
         PRbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=u7F+SrkVdqdqzJfD5qqu3dW99m5ugdY3+Einoec1zko=;
        b=TwdWgwlk8Lgl7O8wY+tqJERDiI73RPas3y36+P8l1+GXO1QdZj6DahmfkjRZKj2xO1
         6S5/bPjjE6niOAHhFcH2d5DuT5Bn3mI8nJEnnDGk+FcY4Tlxyz1KprwNddJfMeYo9XUe
         05k+zTDDKMFMRqgzKfT49lV7OBziEJOwO38j9D5dvtlxAf5yvwZlrmYqT8ThgVR8dApX
         f3k2SpcZ6pClSrBTdTqo9D/dIclYfLikEyPknLpCFWz3c6lYwXprfiadHKVWdWv6E93t
         XWX/xZRMDsRL9wYGREz+V2drH6LBkIBpdAhEUVIL1W23mLTV9yEpJsu7r+QsKA+j7v10
         ZEpA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532LbhdJJnhAAw/N4YQVfeFqd95PbQFt1u9rJLqhXvfmzYd7Tv15
	Z7R2V8I0cU6ZsVc0+pjXtlc=
X-Google-Smtp-Source: ABdhPJy632RpMMdhcsUgdM/sEql3iDpzaC7vkCtpmPSUY5ejkYE26hhTkwp5XASkOrKZL2ws0vCKXg==
X-Received: by 2002:a17:902:59ce:b029:d2:4ca:2869 with SMTP id d14-20020a17090259ceb02900d204ca2869mr1112923plj.80.1600358883000;
        Thu, 17 Sep 2020 09:08:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:4812:: with SMTP id kn18ls1207548pjb.0.gmail; Thu,
 17 Sep 2020 09:08:02 -0700 (PDT)
X-Received: by 2002:a17:90a:1f07:: with SMTP id u7mr8995540pja.219.1600358882366;
        Thu, 17 Sep 2020 09:08:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600358882; cv=none;
        d=google.com; s=arc-20160816;
        b=PthexeEagetoKz0Sa1CUaLJ+adv2xVykklLDEEuVZUTglUVvJxHnpjl3KJL3r9HeCt
         gMdS3X/H7gpgBmoXuOUO9dLXmFXF8oCEwoKQyI9yBUcD5PQiOfBXm3bkDHe6AMasmxCI
         mS5bxtD3hZmVwaqKPAGfQX4VBKe153n3VX2KEA4x1IdLXtit8x9B0fgn6Dggk5GnrI80
         vIvOvTtc2fqErhXe1pBGLu2wTlueNq8hsFEUyPTz1uczUyB9+KySMnoX7Kz1cugLRZDh
         aJIyr7B+C/Shi0KHmEwJPAF2I+vMqyJeylomtrH9N7kdmJzoNiSeqWEXHGrGaoUsdq1c
         0uDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=mTFyjjqzXwQDDrMyMujceAFrT3D5DZ9GB1b6zo1PGhc=;
        b=yJH0yQlICmUGSWrL9Qh8jGJgwuoz71VSXEhcc41kV7zor035E0eR8plYuEnNOHDvO1
         tW5c9Ystn5ziug24I/83ZXPG1Cu6Tcvh+tXDmYUIyVwvUs+nen8pMdWESPbltogyzlQW
         qZnjDA25jTWGmRscfP0DtVPm8l7cezYh2luVYYrl0S8ZWj7zSsVf/NCax5ruAuMvVXpT
         F7UddQ5RQVeemebsUyCHxcGrtvqagYUdq8Y8Fo1/tYrwdAErXiNUkLOxbMde/OBcG3M0
         DOu3jy/VNaKzlrCTq0JVdKIOfF17FSNtiVS7/6azfCTvYT/C3T+jR0Wv21FYbJ9+xFJI
         +PTw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=Fa78KBoi;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.81 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-02.nifty.com (conssluserg-02.nifty.com. [210.131.2.81])
        by gmr-mx.google.com with ESMTPS id p15si8968plr.5.2020.09.17.09.08.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 17 Sep 2020 09:08:02 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.81 as permitted sender) client-ip=210.131.2.81;
Received: from mail-pl1-f178.google.com (mail-pl1-f178.google.com [209.85.214.178]) (authenticated)
	by conssluserg-02.nifty.com with ESMTP id 08HG7g4c008778
	for <clang-built-linux@googlegroups.com>; Fri, 18 Sep 2020 01:07:42 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-02.nifty.com 08HG7g4c008778
X-Nifty-SrcIP: [209.85.214.178]
Received: by mail-pl1-f178.google.com with SMTP id d19so1389743pld.0
        for <clang-built-linux@googlegroups.com>; Thu, 17 Sep 2020 09:07:42 -0700 (PDT)
X-Received: by 2002:a17:90b:1211:: with SMTP id gl17mr9333071pjb.87.1600358861790;
 Thu, 17 Sep 2020 09:07:41 -0700 (PDT)
MIME-Version: 1.0
References: <20200908221638.2782778-1-masahiroy@kernel.org>
 <20200908221638.2782778-2-masahiroy@kernel.org> <boris.20200909155725@codesynthesis.com>
In-Reply-To: <boris.20200909155725@codesynthesis.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Fri, 18 Sep 2020 01:07:04 +0900
X-Gmail-Original-Message-ID: <CAK7LNASGojQgQ4oAvW6XkOwo0BiLiZdzOruvYqOQAVdhdtyTpA@mail.gmail.com>
Message-ID: <CAK7LNASGojQgQ4oAvW6XkOwo0BiLiZdzOruvYqOQAVdhdtyTpA@mail.gmail.com>
Subject: Re: [PATCH 2/2] kconfig: fix incomplete type 'struct gstr' warning
To: Boris Kolpackov <boris@codesynthesis.com>
Cc: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Nathan Chancellor <natechancellor@gmail.com>,
        Nick Desaulniers <ndesaulniers@google.com>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=Fa78KBoi;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.81 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

On Wed, Sep 9, 2020 at 11:09 PM Boris Kolpackov <boris@codesynthesis.com> wrote:
>
> Masahiro Yamada <masahiroy@kernel.org> writes:
>
> > Currently, get_relations_str() is declared before the struct gstr
> > definition.
>
> Yes, I also ran into this while building the kconfig code with MSVC.
> I just moved the struct gstr definition before lkc_proto.h #include
> but your fix works just as well.
>
> Acked-by: Boris Kolpackov <boris@codesynthesis.com>
>
>
> > BTW, some are declared in lkc.h and some in lkc_proto.h, but the
> > difference is unclear. I guess some refactoring is needed.
>
> Yes, please. My (potentially incorrect) understanding is that lkc_proto.h
> was for functions that are not (or should not be) used by clients but
> should nevertheless have prototypes due to -Wmissing-prototypes. I,
> however, believe this no longer holds and so would vote to merge
> lkc_proto.h into lkc.h.
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/boris.20200909155725%40codesynthesis.com.



Applied to linux-kbuild/fixes.



-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNASGojQgQ4oAvW6XkOwo0BiLiZdzOruvYqOQAVdhdtyTpA%40mail.gmail.com.
