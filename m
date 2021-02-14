Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBENTUWAQMGQECCUMXOA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13d.google.com (mail-il1-x13d.google.com [IPv6:2607:f8b0:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C25D31B171
	for <lists+clang-built-linux@lfdr.de>; Sun, 14 Feb 2021 18:10:42 +0100 (CET)
Received: by mail-il1-x13d.google.com with SMTP id q3sf4007673ilv.16
        for <lists+clang-built-linux@lfdr.de>; Sun, 14 Feb 2021 09:10:42 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1613322641; cv=pass;
        d=google.com; s=arc-20160816;
        b=HDVGvQUeBog/ipvsLoaOrVowhOds0NpqEleP5cneC7eaZcs6gUPsPRBpfKBbDfT+oz
         GwiWwqFOw2FSriTTSdUe1gXQVF2sBX3w8FH5/CVCOXwm6z9572Fcgg3xmHcG+cGlNHFW
         F1ZAd5K7ZBoQe+UCw8Os4R7epAtLqnsp+iEhOImQ+hwOHfpRfBs4pc0A4Pv0nKOKPrV/
         geB4yhVhFRFw1paGlxjLYCz5PPqgOa11RHTccLkkWOWBotWyNX6GlKD+3cJmcIdzojr1
         1jMkbCZrpyt7NzaA0JZftmDd9t/rxPXTtb46366d/m1SQy6Rt2peva709DMUzSIWrdH2
         F3+g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-filter:sender:dkim-signature;
        bh=+xRwIhbrc5+zuviQRLf05nZ4NE/WD7CVpJK2C+kdJ54=;
        b=cf259yfO+E3A8J9vzXKJrFb8HzWEMI6z0yzwBCKwuOjdRlXGxm0UHJDHoC2xM4cFS1
         zRoawPlIg0qjD/o6q8VIN/H/vngt0sOIan28Ou3EY9WdKQNmEpwmQyhwVyZzrvQc3JyC
         bz9E85FaKb96c/+A4mIpAnvG6nkQ3iAE1GUyacVhkjkLG1R5vsNirpvd+0VyYN3Cmwlu
         W8HQe0YmuyltToonb82bmlbFljzpa81+CWWyNvrGVAtIKfu5E5OPwudvHeGNR4UjDneV
         rInRLze9x3MHSM+CJGFUq9DuPXFdt1ZhZRDIgvj5poQ6+hFpCgFOskE7znAcQGiGGzwQ
         PGfw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=abGRwKM6;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.80 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+xRwIhbrc5+zuviQRLf05nZ4NE/WD7CVpJK2C+kdJ54=;
        b=S5ct/5Zch7Nuzk2lsJmWemnI3DDTq/Ug4tXacHmUIoOER6FWZsG9Vw1bPOUMKJvfUI
         tDD8/r7X6ZipF0d3YlPns3d+XN3/QnKHkrYazYME5UTIgZin9MVpxHZLhjoaX1gZk1L8
         L4qJeBK7a+p1bLOcE0Ju18v1/RQrBEJrh+sXOVtlnq4HOQZ2xRO5ieLSYLUqcFU9kNgR
         jPleZastmRRJA0UeADWPn+CKQzDmYOQyK1FTys1J1QzaR15ejeZziIrgrkp1BgDDB1F3
         4GHQPWYhJP/HWDAMBtcv3HiV7R2RcKE+T3KCOOrDg7Exobd0rH/TacbiQlT1C1WzcQj8
         dgAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+xRwIhbrc5+zuviQRLf05nZ4NE/WD7CVpJK2C+kdJ54=;
        b=Jae6sQcUIlyDuvly+llnoTbL79cLoXI1bz6kRltoxsv82icNozRt3v8GGfX2iQ1cZz
         d5boLTKIn3KS9h3qF491cll/WHUZI6tKXgdJIHRL2r+UCV4xzLA9AwV3jvzcx14t3OQk
         uKLAPle49SWOlynNhkgA7xu52kwCrM+pCB1jJH6NOKrI3GeiHp873TT7VHgdTyNhSjOA
         87aquPPg3stdd75dGSM1UvqVH15BjlUPDXGKaDKLwE4BoERWL5cQzftw6EsTyyU8oeAr
         x0UCkbUgt1fkiaWzkZ+2rbrFuH+XfL91yEK0X0Vgc7/lKmf68F6YLnoW896pX+o2wLL0
         gMMQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531xMTrDzZ1uD0dKDQUimWVOtbNFEPFrHGxv7mRF3ml3/N8n63QG
	YHJhZLWyHoXSU6D0jpztSTY=
X-Google-Smtp-Source: ABdhPJwF1oz+qt+KBCVUDCVMmPAOQmsrk1R2oPYjjqTVF8O2UApvTpj1cMZjjtbCgbtHvCmFpna3Sg==
X-Received: by 2002:a6b:d80f:: with SMTP id y15mr10248322iob.175.1613322641481;
        Sun, 14 Feb 2021 09:10:41 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:2195:: with SMTP id j21ls3546201ila.4.gmail; Sun,
 14 Feb 2021 09:10:40 -0800 (PST)
X-Received: by 2002:a92:4105:: with SMTP id o5mr9753811ila.47.1613322640471;
        Sun, 14 Feb 2021 09:10:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1613322640; cv=none;
        d=google.com; s=arc-20160816;
        b=wFhAmnlcSGMmCBtrA0MAPDX+lNkOe61R8s6jFholTEWQREMBM+p3y69Mq0650KoKJx
         XtMRxn2g4IxaBMvxPuwMLBTjEgAG554BvDirbaHuttkJgjQugVsOC1DmQbSgP1oh7XoQ
         JdtJd4oU0WyuCvdD6Usvfu28AyI2A/qZ8S35CEo7PuAzgpTa1tV+MNRtn6XQHRCm2yDd
         sgk6VQ5q+6pFBN3LTIshfb9bP07FP0yqtd1dsUU6gDgRqcU2kKkDD/Y6hpmdHv4vPhRJ
         WENKS7R1xMec+K36PZn/BJ8ijebU6ZGwvb2gAWySNBS9eeVzCcy1bFRncXLgyhDgcEHh
         1+Cg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature:dkim-filter;
        bh=AKibQdTfYpXAHbNU65EfzxWhQaz2P4iDR0bB+qbheXc=;
        b=Uy+aJa3ZZ4/INlx1ph2IMSko4xg98RHD2rnZ/MGgAZfxcZd8UjbazuEVaDPFX8nauc
         bYDxqzR/D5GgYq3Zf52vdxsVExSgNlUtgYRR3kbZiabo9daZy2Ca3IRyEwFtwYx45ruO
         XSydscn8awV9l9AUu9q9u0s3h4XTMfKY9cdn7680G3kT76TE+8gmDh3fWNZcI/ghPHNP
         C6zotFjqSdXP1HvUinX575u7vXRagNaf39eAoRzmoEwDDJq3Lb5QnzXGqzouTJnrjikV
         zpF2TNzhKOvniBChl034nXq2d3kVmat2Bu7+Kk5iqgbot4vXqdvfa1FmFHyYLybw3pN+
         4r3Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=abGRwKM6;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.80 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-01.nifty.com (conssluserg-01.nifty.com. [210.131.2.80])
        by gmr-mx.google.com with ESMTPS id v81si781794iod.4.2021.02.14.09.10.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 14 Feb 2021 09:10:40 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.80 as permitted sender) client-ip=210.131.2.80;
Received: from mail-pj1-f50.google.com (mail-pj1-f50.google.com [209.85.216.50]) (authenticated)
	by conssluserg-01.nifty.com with ESMTP id 11EHAJLa023599
	for <clang-built-linux@googlegroups.com>; Mon, 15 Feb 2021 02:10:19 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-01.nifty.com 11EHAJLa023599
X-Nifty-SrcIP: [209.85.216.50]
Received: by mail-pj1-f50.google.com with SMTP id q72so2367603pjq.2
        for <clang-built-linux@googlegroups.com>; Sun, 14 Feb 2021 09:10:19 -0800 (PST)
X-Received: by 2002:a17:902:8687:b029:e1:601e:bd29 with SMTP id
 g7-20020a1709028687b02900e1601ebd29mr11729469plo.47.1613322618753; Sun, 14
 Feb 2021 09:10:18 -0800 (PST)
MIME-Version: 1.0
References: <1612783737-3512-1-git-send-email-stephenzhangzsd@gmail.com>
 <20210208195439.GA1097868@ubuntu-m3-large-x86> <CALuz2=d-ENRbWgGYaO_ESEaw5eOVSwkQmkeYBJ-w0Vb3zZ+REg@mail.gmail.com>
 <20210209192729.GA820978@ubuntu-m3-large-x86> <CALuz2=dyA_ki98t8VNe2L1UcBXrSoJT1r6j1puEmLn7WrX87XQ@mail.gmail.com>
 <20210210182400.GA3502674@ubuntu-m3-large-x86> <CALuz2=eSv2N2Qp7GimLgdWjvWDwDh1Dj0Q7Czm4Br5a50rs4ew@mail.gmail.com>
 <CAK7LNAT+CG9zqPpYLoy9_1eA4caZWzxyQACcOrhbg9zfArEwPQ@mail.gmail.com>
 <CALuz2=ck_=M6Dd8oFgWxnRGdipWOsdL2KODZQSmodh2N7Z8T-w@mail.gmail.com>
 <CAK7LNAR06H3Ue5SG3=6u1veyjg+kXXb2isEBsHVQEtMMJ3d2Tw@mail.gmail.com> <CALuz2=fHXZ=NrVdRNzyromD88wp9pAzYC9nffPt6y5YM=sJniw@mail.gmail.com>
In-Reply-To: <CALuz2=fHXZ=NrVdRNzyromD88wp9pAzYC9nffPt6y5YM=sJniw@mail.gmail.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Mon, 15 Feb 2021 02:09:41 +0900
X-Gmail-Original-Message-ID: <CAK7LNARoL19wQo84AZAizZBzXJKkg3KciryQU+Sm5Uc4BDd9DA@mail.gmail.com>
Message-ID: <CAK7LNARoL19wQo84AZAizZBzXJKkg3KciryQU+Sm5Uc4BDd9DA@mail.gmail.com>
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
 header.i=@nifty.com header.s=dec2015msa header.b=abGRwKM6;       spf=softfail
 (google.com: domain of transitioning masahiroy@kernel.org does not designate
 210.131.2.80 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
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

On Sun, Feb 14, 2021 at 8:49 PM Stephen Zhang <stephenzhangzsd@gmail.com> w=
rote:
>
> Masahiro Yamada <masahiroy@kernel.org> =E4=BA=8E2021=E5=B9=B42=E6=9C=8813=
=E6=97=A5=E5=91=A8=E5=85=AD =E4=B8=8B=E5=8D=888:46=E5=86=99=E9=81=93=EF=BC=
=9A
> > This is the steps I tested.
> >
> >
> > masahiro@oscar:~/ref/linux$ make O=3Dbuild  defconfig all -j24
> >   [ snip ]
> > masahiro@oscar:~/ref/linux$
> > ./scripts/clang-tools/gen_compile_commands.py  -d build
> > masahiro@oscar:~/ref/linux$ grep '"file":' compile_commands.json |
> > grep scripts/ | head -n5
> >     "file": "/home/masahiro/ref/linux/scripts/mod/empty.c"
> >     "file": "/home/masahiro/ref/linux/scripts/mod/sumversion.c"
> >     "file": "/home/masahiro/ref/linux/scripts/mod/file2alias.c"
> >     "file": "/home/masahiro/ref/linux/scripts/mod/modpost.c"
> >     "file": "/home/masahiro/ref/linux/build/scripts/kconfig/parser.tab.=
c"
> >
> > --
> > Best Regards
> > Masahiro Yamada
>
> Thanks. Nathan had a detailed description about  this:
>
> > $ make O=3Dbuild
> >
> > will work with '-d .' because the .cmd files are in '.' and the source
> > files will be placed relative to '.', which is correct. Your command
> > does not work for two reasons:
> >
> > 1. You are using a build directory that is not a subpath of the source
> > directory. In other words, this script would not work for
> >
> > $ make O=3D/tmp/build
> >
> > because '-d /tmp/build' needs to be used to find the .cmd files but the=
n
> > the relative path of the source files is messed up, as you point out.
>
> This may help you reproduce the problem. So you shoud try:
>
> >masahiro@oscar:~/ref/linux$ make O=3D/tmp/build  defconfig all -j24
>
> where the build directory  is not a subpath of the source directory.



So, what is the problem?




--=20
Best Regards
Masahiro Yamada

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAK7LNARoL19wQo84AZAizZBzXJKkg3KciryQU%2BSm5Uc4BDd9DA%40m=
ail.gmail.com.
