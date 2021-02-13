Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBGUUT6AQMGQEMP2FIPY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93f.google.com (mail-ua1-x93f.google.com [IPv6:2607:f8b0:4864:20::93f])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A4D831AB67
	for <lists+clang-built-linux@lfdr.de>; Sat, 13 Feb 2021 13:46:19 +0100 (CET)
Received: by mail-ua1-x93f.google.com with SMTP id k2sf982698uao.23
        for <lists+clang-built-linux@lfdr.de>; Sat, 13 Feb 2021 04:46:19 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1613220378; cv=pass;
        d=google.com; s=arc-20160816;
        b=Nx2zHby5AelswstHs6wLNasz3N7Frg6bE6/2CfuzQlnTQRjTUwpHWU5IhmNbXlTZcq
         qF3088LGvFqjg0y/HxQVNlF8t8n67O7RIJjJ5pKxUoMtXL1zNA/qi36AweMOePsmnAxZ
         UUEZsHM7Y3wqwRTFxkHSwWtRSNFRxbiax5SG9F7cSfFQMrZBotWtWoQpIWanlArJhdiY
         RVQtriWv/UJKTkCA5CBwTINMpKnJ8xhGK9+kZ0qZKh2AgZVyRdaD2GrbbrU+LgJGJfH5
         iYzzv78QqzcvC0JeGnrOquGi7FpcCRlH2vgKFco6ox8vSlXjkb6/+d++JgRNh8flAPVw
         nVZg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-filter:sender:dkim-signature;
        bh=JgDHUsnXpCcT0GOykhhSggcIE+dEnJBkMhgEpuYHgXs=;
        b=m+KSLAHCBAGYidvMJTsjSrJ4jCq6K5zYnHIFGq8j0Ns0Pmr9eWWTE7LtBLuigB7qvD
         8gzFU0Cye0l+2wcXg8OYeFftAN3itVhNvjcnZdv08cR+U5ZSFq1xalj65533sUJ7seyV
         k7Ok6Q287n+6W0eK8ckg/iiLip4pEAVFANbZTOPc4l5bx16As+d9AED79/nsaC9bmZ++
         SCnnB5IXIAAI6P+l11iuRABc7Et4nM13ytn9v3S8U6W8yJectm0SWV0k9rNNY93hVRZw
         i8PepF2IyFJeR03id1WNCvQKOVYVZd94VYFF1ubyy/hkdhdS0mxgVN4IJvXUuCeoOzF1
         sW5Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=O+cAFE31;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.81 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JgDHUsnXpCcT0GOykhhSggcIE+dEnJBkMhgEpuYHgXs=;
        b=YcIRi5UDzTeirvDK9UaeLs+6ijAHiTC3gYLW/2y2HuyTIs0nhkcPQzfSP7lUXu7Rfl
         qhvi3H6xWoHefWlILGaeryXyM4ZJZ29WKsdhQPRF3kuJC087U39GX0wIrReHWkOOfYDc
         lVvmLXY/h7Q4upB8TRRYU+H/5rkQC0yrqClvhMjqz8ynRuS1aFHrcFT/Va7ttp57ORTw
         qWM0u09d6BDRPP6eJEv5QTjfIVD/cLPNN0vUehMfZmwTXhvOnZXi/mtjMSBGskTr1cYb
         mfnTs2/Ii3AFaRkXbId/W7Tsam8z13a+4VbnkkK7QrA+2uhyEyzL/p+GseTQE/63x7bp
         Pg/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=JgDHUsnXpCcT0GOykhhSggcIE+dEnJBkMhgEpuYHgXs=;
        b=rj1B+sFP7tRbP1/Yhx/UcdxwU1ntA/j4tCqLbGNwmdLdqBCY30MQc4nlbhl1tlv1VO
         1FfS1lFU4a0XRshIS3XEthy/VHUXqztihjo8O0Mh17NrmWnwhRZruY5SH7eQehQtamIq
         Txn0Q8hYQmWlN5un5YCmM2f10Yu2Y94OS2y5P+oZTs4JmxnQmyQkyTWxAjyTiu95Sz7d
         r32t9IkPRXVf5PECWgxmohWoJ2ZJhDwDU32BvHieSPRg+6gOJ22bXXV6DbQRsdh9KZlv
         PzxYn5SskkXqYPEjdF3ArYPMIdX/O4lFcs/nCEHKwnfVKnhLcXXfal6mO/8B0Kxo4xrh
         SurQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530CZiLx3rBlW56inXILl9TRWoYra5T8Lg30Wai4KoDMFStrZQ2m
	GU3FNwFs4OmuiI+gNn/8Rxo=
X-Google-Smtp-Source: ABdhPJzjoST3B/vw73jkaPBpcnnd/pdNg6+iPHnD6r/keVxe47lW8FDxhzwn59Y2UpG4wrnkjmEkkw==
X-Received: by 2002:ab0:7022:: with SMTP id u2mr4360217ual.63.1613220378123;
        Sat, 13 Feb 2021 04:46:18 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9f:3641:: with SMTP id s1ls874975uad.10.gmail; Sat, 13 Feb
 2021 04:46:17 -0800 (PST)
X-Received: by 2002:ab0:73c5:: with SMTP id m5mr4516421uaq.142.1613220377738;
        Sat, 13 Feb 2021 04:46:17 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1613220377; cv=none;
        d=google.com; s=arc-20160816;
        b=w+vNdcjVvhyUxgDemjGjt81qEDskKJxC2Ea5MtiBMH2v/n0PK3zimM+Cs6NlTxRy9R
         1g3CChWkee9yU3wqKS7NdWsnjXma3nU6O/nWznab9DQ90ajJTrkrKuUQOMT39Y+z7dJ/
         ffPGUDoaQAErd0mlS7AVSXWps3UiSpGLN5NnU/tVrAWPiQlq4MxMqDehReBZAUx6rlHc
         aizDdqZhF2nhhWFqlloaHt5Xn0yQqwUPiQz5PxlWk7eORtybYAjXmGP0ErO+kM2yTMCS
         TaZfcrxfE6S1C3OQDsjmgKsEK4ex3THabizB4z3+OUQv70I7qr3fAmUNp0GJx+xosTfE
         PAmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature:dkim-filter;
        bh=KdXBt186v51HmgRvEE2352D3Kz6v3BiRQbc1mVmCOVk=;
        b=LutRnuh4NEciTrtLkLd1rXTnIMcIwrVHN9LKTexOfLF8KY4ak0alvg/Ky6oCr5ZCZS
         ARilF11NDb3QdLAuf4qyDdJyCFeuDRoYN3yGwqjvRSCacKFYAS/wTjrW9f5PSQhiHftL
         t1U68fTerZT30BtZKJ8roM2pWV2Td/klOViDKdH31gQrdSM+Qfpedct8zsdpPQk+rHxs
         dzHUlw1m2Y52rcxbS3d4s6AmL6NH5+VR1k8ahwuCD3aqG8fEaqsM5vKBSEic1C0siTRg
         rNJvqyfOlv4DllMOSE753K9iF5f8LcHlcQoShWvs2ysnwF0kdZvQ/heN93DxqCtb1Wey
         rUCw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=O+cAFE31;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.81 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-02.nifty.com (conssluserg-02.nifty.com. [210.131.2.81])
        by gmr-mx.google.com with ESMTPS id l5si764493vkn.3.2021.02.13.04.46.17
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 13 Feb 2021 04:46:17 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.81 as permitted sender) client-ip=210.131.2.81;
Received: from mail-pf1-f170.google.com (mail-pf1-f170.google.com [209.85.210.170]) (authenticated)
	by conssluserg-02.nifty.com with ESMTP id 11DCk1v7013674
	for <clang-built-linux@googlegroups.com>; Sat, 13 Feb 2021 21:46:02 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-02.nifty.com 11DCk1v7013674
X-Nifty-SrcIP: [209.85.210.170]
Received: by mail-pf1-f170.google.com with SMTP id d26so1307191pfn.5
        for <clang-built-linux@googlegroups.com>; Sat, 13 Feb 2021 04:46:02 -0800 (PST)
X-Received: by 2002:a62:e804:0:b029:1dd:cf18:bdee with SMTP id
 c4-20020a62e8040000b02901ddcf18bdeemr7492308pfi.63.1613220361343; Sat, 13 Feb
 2021 04:46:01 -0800 (PST)
MIME-Version: 1.0
References: <1612783737-3512-1-git-send-email-stephenzhangzsd@gmail.com>
 <20210208195439.GA1097868@ubuntu-m3-large-x86> <CALuz2=d-ENRbWgGYaO_ESEaw5eOVSwkQmkeYBJ-w0Vb3zZ+REg@mail.gmail.com>
 <20210209192729.GA820978@ubuntu-m3-large-x86> <CALuz2=dyA_ki98t8VNe2L1UcBXrSoJT1r6j1puEmLn7WrX87XQ@mail.gmail.com>
 <20210210182400.GA3502674@ubuntu-m3-large-x86> <CALuz2=eSv2N2Qp7GimLgdWjvWDwDh1Dj0Q7Czm4Br5a50rs4ew@mail.gmail.com>
 <CAK7LNAT+CG9zqPpYLoy9_1eA4caZWzxyQACcOrhbg9zfArEwPQ@mail.gmail.com> <CALuz2=ck_=M6Dd8oFgWxnRGdipWOsdL2KODZQSmodh2N7Z8T-w@mail.gmail.com>
In-Reply-To: <CALuz2=ck_=M6Dd8oFgWxnRGdipWOsdL2KODZQSmodh2N7Z8T-w@mail.gmail.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Sat, 13 Feb 2021 21:45:24 +0900
X-Gmail-Original-Message-ID: <CAK7LNAR06H3Ue5SG3=6u1veyjg+kXXb2isEBsHVQEtMMJ3d2Tw@mail.gmail.com>
Message-ID: <CAK7LNAR06H3Ue5SG3=6u1veyjg+kXXb2isEBsHVQEtMMJ3d2Tw@mail.gmail.com>
Subject: Re: [PATCH v1] clang_tools:gen_compile_commands: Change the default
 source directory
To: Stephen Zhang <stephenzhangzsd@gmail.com>
Cc: Nathan Chancellor <nathan@kernel.org>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Nathan Chancellor <natechancellor@gmail.com>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        LKML <linux-kernel@vger.kernel.org>, Tom Roeder <tmroeder@google.com>,
        Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: masahiroy@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@nifty.com header.s=dec2015msa header.b=O+cAFE31;       spf=softfail
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

On Fri, Feb 12, 2021 at 8:20 PM Stephen Zhang <stephenzhangzsd@gmail.com> w=
rote:
>
> Masahiro Yamada <masahiroy@kernel.org> =E4=BA=8E2021=E5=B9=B42=E6=9C=8811=
=E6=97=A5=E5=91=A8=E5=9B=9B =E4=B8=8B=E5=8D=8810:16=E5=86=99=E9=81=93=EF=BC=
=9A
> > Please stop.
> >
> >
> > Commit 6ca4c6d25949117dc5b4845612e290b6d89e70a8
> > removed the tools/ support.
> >
> >
> > There exist two build systems in the Linux source tree.
> > Kbuild covers the entire tree except tools/.
> > The tools/ directory adopts a different build system.
> >
> > It is a pity that the tools/ directory
> > went in a wrong direction, and people
> > try to fix problems in a wrong layer.
> >
> >
> > You are not the first person to send to
> > tweak obj/source trees of this script.
> >
> > You can not do this correctly
> > without terribly messing up the code.
> >
> > Please do not try to support tools/.
> >
> >
> >
> > --
> > Best Regards
> > Masahiro Yamada
>
> Thanks for the suggestion.But what we try to support is scripts/
> instead of tools/. 'tools/' here is to help explaining the problem.
> Or am I just misunderstanding your words?



You took 'tools/perf' as an example,
so I just thought you were trying to fix the tools/.



I can get scripts/ entries without any problem.

If you do O=3D build, you can pass that directory
to the -d option of gen_compile_commands.py

  -d DIRECTORY, --directory DIRECTORY
                        specify the output directory used for the
kernel build (defaults to the working
                        directory)


This is the steps I tested.


masahiro@oscar:~/ref/linux$ make O=3Dbuild  defconfig all -j24
  [ snip ]
masahiro@oscar:~/ref/linux$
./scripts/clang-tools/gen_compile_commands.py  -d build
masahiro@oscar:~/ref/linux$ grep '"file":' compile_commands.json |
grep scripts/ | head -n5
    "file": "/home/masahiro/ref/linux/scripts/mod/empty.c"
    "file": "/home/masahiro/ref/linux/scripts/mod/sumversion.c"
    "file": "/home/masahiro/ref/linux/scripts/mod/file2alias.c"
    "file": "/home/masahiro/ref/linux/scripts/mod/modpost.c"
    "file": "/home/masahiro/ref/linux/build/scripts/kconfig/parser.tab.c"








--=20
Best Regards
Masahiro Yamada

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAK7LNAR06H3Ue5SG3%3D6u1veyjg%2BkXXb2isEBsHVQEtMMJ3d2Tw%4=
0mail.gmail.com.
