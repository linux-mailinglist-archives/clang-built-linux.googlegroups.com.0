Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBM4UR35QKGQELXQYISQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa39.google.com (mail-vk1-xa39.google.com [IPv6:2607:f8b0:4864:20::a39])
	by mail.lfdr.de (Postfix) with ESMTPS id 6373926E04B
	for <lists+clang-built-linux@lfdr.de>; Thu, 17 Sep 2020 18:09:24 +0200 (CEST)
Received: by mail-vk1-xa39.google.com with SMTP id o68sf633586vkd.17
        for <lists+clang-built-linux@lfdr.de>; Thu, 17 Sep 2020 09:09:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600358963; cv=pass;
        d=google.com; s=arc-20160816;
        b=wOqw6N+rQr8+ykYlGvykAFvwV957NIdI8xAT49K5B6WHbuNRyIrC9QOoU3qUrFOnrw
         9j7sLks+WPY5UAslZb4O5r84v8ZOkraivj3lo9/Ofppj1Jzud/vhzt2/3LfoPIqK30V1
         VETNoNEABFacYmeimPzeufKibHkM0r/AF5IgjAI4H9mksmjxPTU8xPu2pn2A3l6FnRnf
         gtAY/c2MRZiSh8ImgSTAKy0SKvpz7EiEKqtLvclTXxeJQ/xoG7GBDbetcvctDKNCCbom
         e1ybkpnQcNVVWrYfuET0gxIb6wtaHZKH9fohxalp4PJNwzQ61qsZifq9f9/PYrRMqdbe
         ULXw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-filter:sender
         :dkim-signature;
        bh=5+ugwy4P1K8fAvL1Ybgpnz1K0MmQ1phafOvbiL6Fx0w=;
        b=d2EhEwoonPW/ak9MjV8fluA0stz40WHWKbqArCRnDe2uLnqxiXrLroeKRUJF+wXyww
         5Re0grABedKPJS6ATYINsozBWnIZ/5W/wya0N0yA5y6WM+Z3LloKTyqZIcZA1oVM0Did
         PGpFA8jfXKd8Dvvxl7pdf7hVhzDjBpIyw2twueygo5+UNgB/zjlGVgKyjwda0iv42CGR
         AXnR4GJME498Tbs4sEq08jr5U0Wwm4rjuTNnZ1hEfZk1iudvzsX439+Ne9DebxC/dYMd
         bv4ErqP51cZayTV4MAymthSQgGYDX9v+JI5kQVK1ckq2S9WMN3Sv+b3L5ikmjjO0m+PZ
         BOnQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=LElvIdS9;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=5+ugwy4P1K8fAvL1Ybgpnz1K0MmQ1phafOvbiL6Fx0w=;
        b=gH/31wJEqCOEPmAzwDt9uuiqV8kdcQan7VXjQOhzeIbaXMC8CdElW0b33066LswcUG
         bsbj8fEv1Szr+6/jJl2M6rmbSZKel9iU5+caJazmeHA2jKXIEOELkow+9TmrZtCXChJ+
         tJ2SqH9Ed323BrrbR830aQA+2T6LhOvTqbCF6SpOGJCAGPLsMFE7OF+RyzqzmVIA2Oth
         WcePKE4cO0XJsAymXXbSWvd1o4bN9/hg2X2pnCfeCRF5EA4w2APRHjRURlGYEcW3qC3f
         zLkCdwLneMb6ZPl9Kj6VXxltssg0NawO2uArRClV/Fcala6LxX/se1A/RZ/yh1kgD0LM
         bAqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5+ugwy4P1K8fAvL1Ybgpnz1K0MmQ1phafOvbiL6Fx0w=;
        b=VlxVcDHvrDErbEF7PEWxMlUl1Kma7JhEPMUqhMHQ8IbPtCfwxx656y9pFG0Lkfu3mk
         R0lQZ+HONW/xNVLtunJYsK3f2SYqievIwnmiO3Rrv4sm9I54sgDYTwMQ/DCWSQvhSigI
         G1OV5g2AT40+ScgLIwQK1DIkaQ1sBo/GAS/uLUyEHwSlUfko+kdYuPwjd8WBd8XB8+RD
         5fxgYRGzsw9Z8N98ZWuiKMgCCS7CUCqW1w0kQ2nOqMUiQX1uNfW4ojx02jQgpCn/50Ha
         V6vOB1YIQ5yKHWo+EoqptH8PEzrFgRyUm0WyO0nxSBYjwp4WnWckP4XeMKlHn+NwQs5o
         RfQg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533Md9dnHZxASPrtNJi2Wu3fNwQxNRv913ZifqbVphXUKSspMSRv
	MFMqCYXBskJAcxbUU32nvwk=
X-Google-Smtp-Source: ABdhPJyf3H76nEjYRs2ves7tou8OKo4IgfX+NocE4+8whyfwAzpNaPXAbYFRhv942JfgrXSkoBEqRw==
X-Received: by 2002:ab0:7849:: with SMTP id y9mr15457544uaq.66.1600358963231;
        Thu, 17 Sep 2020 09:09:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1f:2481:: with SMTP id k123ls142178vkk.4.gmail; Thu, 17 Sep
 2020 09:09:22 -0700 (PDT)
X-Received: by 2002:a1f:3dcf:: with SMTP id k198mr17934813vka.12.1600358962331;
        Thu, 17 Sep 2020 09:09:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600358962; cv=none;
        d=google.com; s=arc-20160816;
        b=hAcD4OjuB3IunlNORidRJxZyF+n31CSIy0+enWjEs4nreL6Hko5SKCABWbkbZMREaC
         8Fb98NdbOqD6x/v7xVZPcDw6v94An0vYW6kZcWBFBkAO53nAl+GUjkBd/OJAEZ/fyWdJ
         L7PGn3O8w4pBgljxQ+pUTLcsnrTNuHbQOJmteswvkH5e8c7/RM6FtKyCh2EaozKYYERd
         afhrwLzHi2/GlUbXBwX3pN6tuOQWekynVhFGU7RZxg1ZCU/EVqoirl+D7qvHBFjpX+b0
         9zdIPUUQ9TLxco1TSB0tpd6YEeZAt8lyLRoE53Plyh7AzUYftW8eZ0KIp8FTB5D6uPb/
         MoKA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature:dkim-filter;
        bh=yULUqiWt2SWgw5mTiS7zYO2hzW0Ie61k0FqxlWmWeH4=;
        b=bBv1HflFzLzZv9EnPzo7e/2q85tIEtuWzVr0spygAmOJ7AlnIzE0FfShT1cFZdM4JA
         Bs625n2/Gf/6Ll6Bwp2KsPt1FQmQNMvLdvOR/XmeYbJBXRxu5S7D5r22251vgYt1XkUj
         uZTDesgct0xIcVvfdogswE3bMRe2KX1Z8CrAG6QQc0t7uNcLXE80TZjICYEyfEZGArEH
         U4p09wJ0/OiFtgYnYCZ7pF8qevfUYWep2fVv+Wf548Yikhx/5jZtOpor/7HqTFJMPCq5
         4BDJqAEOzh83/CnEekXwLXnnf3goYc795pcJqfPz7VMF37YCJh9ZU9nVWmaRxMyOPjHL
         A/fg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=LElvIdS9;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-04.nifty.com (conssluserg-04.nifty.com. [210.131.2.83])
        by gmr-mx.google.com with ESMTPS id 134si13113vkx.0.2020.09.17.09.09.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 17 Sep 2020 09:09:22 -0700 (PDT)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.83 as permitted sender) client-ip=210.131.2.83;
Received: from mail-pj1-f53.google.com (mail-pj1-f53.google.com [209.85.216.53]) (authenticated)
	by conssluserg-04.nifty.com with ESMTP id 08HG96tG005520
	for <clang-built-linux@googlegroups.com>; Fri, 18 Sep 2020 01:09:07 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-04.nifty.com 08HG96tG005520
X-Nifty-SrcIP: [209.85.216.53]
Received: by mail-pj1-f53.google.com with SMTP id md22so3027645pjb.0
        for <clang-built-linux@googlegroups.com>; Thu, 17 Sep 2020 09:09:06 -0700 (PDT)
X-Received: by 2002:a17:902:34f:b029:d1:e5e7:bdcf with SMTP id
 73-20020a170902034fb02900d1e5e7bdcfmr11915446pld.47.1600358946099; Thu, 17
 Sep 2020 09:09:06 -0700 (PDT)
MIME-Version: 1.0
References: <20200908221638.2782778-1-masahiroy@kernel.org> <CAKwvOdnP7UmpRPL8XjzoMPjgQb9Di8OXk9UEX8NWaa35A01Q3Q@mail.gmail.com>
In-Reply-To: <CAKwvOdnP7UmpRPL8XjzoMPjgQb9Di8OXk9UEX8NWaa35A01Q3Q@mail.gmail.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Fri, 18 Sep 2020 01:08:27 +0900
X-Gmail-Original-Message-ID: <CAK7LNAT75mW-1npr-2Rfe2OaJH7yKS1TeizPsKxbbunKW-c_sA@mail.gmail.com>
Message-ID: <CAK7LNAT75mW-1npr-2Rfe2OaJH7yKS1TeizPsKxbbunKW-c_sA@mail.gmail.com>
Subject: Re: [PATCH 1/2] kconfig: qconf: use delete[] instead of delete to
 free array (again)
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>,
        Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
        Nathan Chancellor <natechancellor@gmail.com>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=LElvIdS9;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.83 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

On Fri, Sep 11, 2020 at 2:24 AM 'Nick Desaulniers' via Clang Built
Linux <clang-built-linux@googlegroups.com> wrote:
>
> On Tue, Sep 8, 2020 at 3:17 PM Masahiro Yamada <masahiroy@kernel.org> wrote:
> >
> > Commit c9b09a9249e6 ("kconfig: qconf: use delete[] instead of delete
> > to free array") fixed two lines, but there is one more.
> > (cppcheck does not report it for some reason...)
> >
> > This was detected by Clang.
> >
> > "make HOSTCXX=clang++ xconfig" reports the following:
> >
> > scripts/kconfig/qconf.cc:1279:2: warning: 'delete' applied to a pointer that was allocated with 'new[]'; did you mean 'delete[]'? [-Wmismatched-new-delete]
> >         delete data;
> >         ^
> >               []
> > scripts/kconfig/qconf.cc:1239:15: note: allocated with 'new[]' here
> >         char *data = new char[count + 1];
> >                      ^
> >
> > Fixes: c4f7398bee9c ("kconfig: qconf: make debug links work again")
> > Fixes: c9b09a9249e6 ("kconfig: qconf: use delete[] instead of delete to free array")
> > Signed-off-by: Masahiro Yamada <masahiroy@kernel.org>
>
> Reviewed-by: Nick Desaulniers <ndesaulniers@google.com>
>
> > ---
> >
> >  scripts/kconfig/qconf.cc | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/scripts/kconfig/qconf.cc b/scripts/kconfig/qconf.cc
> > index 8638785328a7..c7216b9110fc 100644
> > --- a/scripts/kconfig/qconf.cc
> > +++ b/scripts/kconfig/qconf.cc
> > @@ -1276,7 +1276,7 @@ void ConfigInfoView::clicked(const QUrl &url)
> >         }
> >
> >         free(result);
> > -       delete data;
> > +       delete[] data;
> >  }
> >
> >  void ConfigInfoView::contextMenuEvent(QContextMenuEvent *event)
> > --
> > 2.25.1
> >
>
>
> --
> Thanks,
> ~Nick Desaulniers
>
> --
> You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAKwvOdnP7UmpRPL8XjzoMPjgQb9Di8OXk9UEX8NWaa35A01Q3Q%40mail.gmail.com.



Applied to linux-kbuild/fixes.


-- 
Best Regards
Masahiro Yamada

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK7LNAT75mW-1npr-2Rfe2OaJH7yKS1TeizPsKxbbunKW-c_sA%40mail.gmail.com.
