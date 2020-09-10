Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBAFP5H5AKGQEEENK5CI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x638.google.com (mail-pl1-x638.google.com [IPv6:2607:f8b0:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id 25791264A0F
	for <lists+clang-built-linux@lfdr.de>; Thu, 10 Sep 2020 18:42:42 +0200 (CEST)
Received: by mail-pl1-x638.google.com with SMTP id 93sf1281824plc.13
        for <lists+clang-built-linux@lfdr.de>; Thu, 10 Sep 2020 09:42:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599756160; cv=pass;
        d=google.com; s=arc-20160816;
        b=MzZ5v28CVArbrYEuKIfgdoP98Vhjvwlv4jFq+94o6Kf0DsftXSIp/eID4pgaPUSfEs
         oJhfQfBEy/qNvyWDlepwQ6Q3KogxST1mK1//EWAfNRw/Gju2V1+bN63EJYbfNV1T9Jii
         Ht0eh/gFsimBA/l59iWLiBPq3N2GDfH5krKh2kPj6vm2r4DAvFKe1NegbqpU/60Dney2
         ulMCLTNLmAUnrUAQ+PF6JOQQ7KROKzSa3PVVFXsXA+ce4JcssS+2KetfvLPR74VUpiH7
         60PUOdt20xXEap7qKdZjMA6jWH/CKn+HFN/vPpKj01gDLwD1KzR4t7V/6yhWxZvvVII0
         iKSw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=pg6GmzjdyKP6P2eJ4+sMuXKobGAbgb7CkZgnvJ9chPU=;
        b=ZaJ5aqHcnCgz3OGCkEUS+hEJTvJmQwLRhLqmbHN7IcxDdrjM84VkLneCopsXSIOI+9
         1Pqvm0G7dQ4K8ZYilokoFSzu0OH5Q6KwV+iO3WY0sKmaDxOGQF/nDey13otwhIhI8jtl
         qtn3QLGMXbNMP/MVX/V2P8r1cF14TAAWscSBic9wG7WswNnBOciqc5sJmf1lCdw8aeAC
         2rhkxNPWDFCGWWMqj1qZnRGjlNI4HIIhYKTXKA5XIgJvEO+LHkjiq0g5guiBsIgAd5a1
         xBRlO+1jZ2Akxy2m8x+fXiFv+JFHbzTGuuFuPZc7Y9TYbXYWtfbiBjPwMom5GHVExXtO
         jp5g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=Db8+aEeR;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=pg6GmzjdyKP6P2eJ4+sMuXKobGAbgb7CkZgnvJ9chPU=;
        b=to/i0+cCr0ByeqJ4O+DjWkCJDK0CcwKVyza8kOCzIjVLcZRG8nXrfX7P8oH3YHHGhA
         Rw1i4/3b6jlFyP4ZSL74JHK/p9JuClC7lV2mA+kqxECsaxy9+I0EQ3OelOPCbBmXPYMi
         rO9FYRa94I1c9UblXQTWQ4KVTqtcbQ2hSGvwbyz+tBvbEw+KMmQwOu7mzDlf2mYHV+u3
         okbJX/mQ7pwZPC2JD9HkkkhVedD9G1FXOxbFdPCXGkJoqgwsbMNfeNJ4CwE7wP1akpKM
         aWPWYoHfSW0CD73SWx0ck0BvSWZFsu7UMw+FMOQIlhyrtqZDZO+YDFLETdol7BM6a9Es
         SdOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pg6GmzjdyKP6P2eJ4+sMuXKobGAbgb7CkZgnvJ9chPU=;
        b=hdAhLL6YtnUDQ2wMymdUa43haAYC8yhbpULWXxrpUiQXAF/QqhKNRxMofxIR7JKRaC
         A9qPMfbvHuC+jHLnm7Uyj6ce1yrvu/PQn4kXesBlfcBSgX4dzhYGURNHi93K42m/tFtw
         XjTKv6SHS4fo3T8GK0/UdqQfoaZLJ0dmU2Wcm4Gyh/aJnaxFepA95dtUsr0UFKFtNaRr
         gLxVLs6u7+UqTyoJp4Q3nMpYLH4c3uqzIodrbw0yUE3RezOKGjwoj0AhO3jF2Vb2umL4
         /DOpX0XiF6um2vJf7mnQIgwYxF6qtuCsgOT+3ZfkGMdmE7LwUUGpcweSeDEvCXhbNnIr
         9zDw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532dtWEdTgdJQ2u9Om+NH9bwpvR5jYPtpCdI3rQxOV0m4MxE6f1H
	WT9TthQgJkSioZk74uPQAtM=
X-Google-Smtp-Source: ABdhPJz3DNoftIvwuD8DWzI6SbE9YNMK1zPmEAsFpJOgyikgFda7VvkWcp81/bV/tTfhkQv0EUHdkg==
X-Received: by 2002:a62:3146:0:b029:13e:d13d:a08e with SMTP id x67-20020a6231460000b029013ed13da08emr6327591pfx.37.1599756160628;
        Thu, 10 Sep 2020 09:42:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:7b90:: with SMTP id w16ls3408265pll.5.gmail; Thu, 10
 Sep 2020 09:42:40 -0700 (PDT)
X-Received: by 2002:a17:90a:86c2:: with SMTP id y2mr787452pjv.3.1599756159998;
        Thu, 10 Sep 2020 09:42:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599756159; cv=none;
        d=google.com; s=arc-20160816;
        b=BlP3TiuyZApxw1Fw/GSQ9lH+pEs4ipzDI511yDaUqNlO6+DZXweB/29trgSpmKNSac
         m4N9Ujx0zVmqyKBhr7wGpL/+IEFquMzNQMFMYYnrXJJp1Cg1vMqhT6uKvdRkJkmJDD0O
         u6Cj1JwQgo/OL1BM7iL/p66qSq8BYh6hYJZR01kx8g33y3YU1vgMVVC6z4ixZu6wSOwZ
         OnC6UZoPSV25xpNdQMwbEXimGhscpH8wRxXC3gA5LyWeb9WRoCC9ho5LaemIEjSw2c3h
         8CJSUC7PohCM48kcrLWxko6iu+DmSLpXbpnnNHLDW5zdCq2wocEQVIrX/dorY5uCsQ2i
         1PfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=+6n9Ppki6VT5Ezj3CVThftdXoJBLCgvbs+E684WSLWQ=;
        b=m4DQbP7255uSiWC2OQJRkgQikR9zuE0cmxYWl3+mrc9TIuuZC8v/uLX7fQCZANl6UM
         1i9hHFH0HNdHh7r3BNUKbNDjZ24F2i0vYB8G9T+aE06f/42QVznIfMUy4HXGFmiJLTce
         BY+a+xXugIb6rxlR1mcNu6yf5/qadLe2fabJzyCGIIeO+Ui/QmPaYS2VZBHRhe0ZXwWw
         n2DTsqt+PkbMcE6H/JXte4WV4sBtLenBIGwXNT8czm9QBIdKW3+F+lzje+i1nTMTusQU
         qxLIqwPDBFx2z7hFPXjpZi8yAJe18l1z/ppshsUTBhlToDjHYxLD/aAsZVjE/dgrYeTM
         ERiw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=Db8+aEeR;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-05.nifty.com (conssluserg-05.nifty.com. [210.131.2.90])
        by gmr-mx.google.com with ESMTPS id d60si258112pjk.0.2020.09.10.09.42.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 10 Sep 2020 09:42:39 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.90 as permitted sender) client-ip=210.131.2.90;
Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com [209.85.216.50]) (authenticated)
	by conssluserg-05.nifty.com with ESMTP id 08AGg6rW017417
	for <clang-built-linux@googlegroups.com>; Fri, 11 Sep 2020 01:42:07 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-05.nifty.com 08AGg6rW017417
X-Nifty-SrcIP: [209.85.216.50]
Received: by mail-pj1-f50.google.com with SMTP id kk9so295132pjb.2
        for <clang-built-linux@googlegroups.com>; Thu, 10 Sep 2020 09:42:07 -0700 (PDT)
X-Received: by 2002:a17:902:ac8b:b029:d0:89f4:6220 with SMTP id
 h11-20020a170902ac8bb02900d089f46220mr6535483plr.8.1599756126225; Thu, 10 Sep
 2020 09:42:06 -0700 (PDT)
MIME-Version: 1.0
References: <20200910135120.3527468-1-masahiroy@kernel.org>
 <20200910135120.3527468-2-masahiroy@kernel.org> <20200910163311.GB3119896@ubuntu-n2-xlarge-x86>
In-Reply-To: <20200910163311.GB3119896@ubuntu-n2-xlarge-x86>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Fri, 11 Sep 2020 01:41:29 +0900
X-Gmail-Original-Message-ID: <CAK7LNAQbjsKpbSKRNEzFTXsD1+nj-gkKon3c1u9J=x8wL4H-DA@mail.gmail.com>
Message-ID: <CAK7LNAQbjsKpbSKRNEzFTXsD1+nj-gkKon3c1u9J=x8wL4H-DA@mail.gmail.com>
Subject: Re: [PATCH 2/4] kbuild: remove cc-option test of -fno-merge-all-constants
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Ingo Molnar <mingo@redhat.com>, Michal Marek <michal.lkml@markovi.net>,
        Nick Desaulniers <ndesaulniers@google.com>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=Db8+aEeR;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.90 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

On Fri, Sep 11, 2020 at 1:33 AM Nathan Chancellor
<natechancellor@gmail.com> wrote:
>
> On Thu, Sep 10, 2020 at 10:51:18PM +0900, Masahiro Yamada wrote:
> > The minimal compiler versions, GCC 4.9 and Clang 10 support this flag.
> >
> > Here is the godbolt:
> > https://godbolt.org/z/8T4177
> >
> > Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
>
> For what it's worth, the commit that introduced this block is going to
> be reverted:
>
> https://lore.kernel.org/mm-commits/20200903201518.JKrRS%25akpm@linux-foundation.org/


My bad - you are right.
This hunk has already gone by Nick's patch.

Thanks.



> Regardless, it was introduced in LLVM 2.7.0 in commit
> f9d41df0930986c52e198292cf875eb5d1761ece.
>
> Reviewed-by: Nathan Chancellor <natechancellor@gmail.com>
>
> > ---
> >
> >  Makefile | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/Makefile b/Makefile
> > index 059b36f2ea53..1b6abecc5cab 100644
> > --- a/Makefile
> > +++ b/Makefile
> > @@ -927,7 +927,7 @@ KBUILD_CFLAGS     += -fno-strict-overflow
> >  # clang sets -fmerge-all-constants by default as optimization, but this
> >  # is non-conforming behavior for C and in fact breaks the kernel, so we
> >  # need to disable it here generally.
> > -KBUILD_CFLAGS        += $(call cc-option,-fno-merge-all-constants)
> > +KBUILD_CFLAGS        += -fno-merge-all-constants
> >
> >  # for gcc -fno-merge-all-constants disables everything, but it is fine
> >  # to have actual conforming behavior enabled.
> > --
> > 2.25.1
> >
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200910163311.GB3119896%40ubuntu-n2-xlarge-x86.



-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAQbjsKpbSKRNEzFTXsD1%2Bnj-gkKon3c1u9J%3Dx8wL4H-DA%40mail.gmail.com.
