Return-Path: <clang-built-linux+bncBDT2NE7U5UFRBNPYSSAQMGQEHUXU6VY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43a.google.com (mail-pf1-x43a.google.com [IPv6:2607:f8b0:4864:20::43a])
	by mail.lfdr.de (Postfix) with ESMTPS id F227C318D0E
	for <lists+clang-built-linux@lfdr.de>; Thu, 11 Feb 2021 15:16:22 +0100 (CET)
Received: by mail-pf1-x43a.google.com with SMTP id o6sf4254783pfd.15
        for <lists+clang-built-linux@lfdr.de>; Thu, 11 Feb 2021 06:16:22 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1613052981; cv=pass;
        d=google.com; s=arc-20160816;
        b=mdPMg4dJeeq0WkFmgpvmSMQRUlip2D4zaooClbJFoA7vHg6CSgh3dpIsIIrs2AzBUR
         rHIdk+g7VLDd8IRTSU/YlSqK2iRkuz/J0YRQy9hbliW5qHpEZ54YIqGXxD64S2IX5uUM
         RS1BTKuL74oe8MBke6HGEJPTEA6nM47fuUuUbx7lyYSKsE5ErfYvdHTzaB4eYPVjHq5N
         Cftu+jdnmNT+w4ffyJVZ1deMdW5Uwzi8KuXQlrJoTfGIl5LidyLXRtMb6RGAuNa9FwSY
         FP6R8hR5DUTMhD2E98MFbt5qFvtX9SOuKINemnzLV4N/YfdwmRc3GHDQ/lJTTyy4TahO
         uCmQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :dkim-filter:sender:dkim-signature;
        bh=2GAmh0jfWnwFpf47uiNvepd6X9uSnxGVtwxKAqyTdY8=;
        b=ye7qsHvrxg61Rrk1qA/k+/M0UxQLw3gwNm2aucBleRhUsR3lsin5Lpp0iN5AFzYxPW
         W21KrlNkZlz79ZXRKMAsYkMYaxIra3B7ShZI4uSHIxZE/kEAbwe6wWvoy98x+I8B8uIs
         BOlQaf436OEVtajZMg3vxcflhGkPBFvxXf57mdrJXNAEM4e4ps22Dw/4eqgzaY9FbE9u
         LwwIlUmRdm5fAsAf5MoKYstkeOhC/koWRuUjUN1W8okCjitn6yUmyfUF1p1nzKpC9dw4
         rp2v0Mw0/Kzvw1blXHpwQJZN6u0ShHEROcIfkFY8rtM+QLVLgmcAw4XZIVau6N0ADOHU
         +Ufg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=SAhz02vX;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.80 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:dkim-filter:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2GAmh0jfWnwFpf47uiNvepd6X9uSnxGVtwxKAqyTdY8=;
        b=X1zyIWFel0l1ohhkwYetIZHZtM+biQ6CXR17jH5JhsaWBp3GnaQHKHWRxtBP9nTyFN
         nl3j62W06H9z7xgagAo6rPg+DWFetzMQq3ZyxfnjGfI/cuwnhiDchOgJOVi3rjxjdCw3
         VbedQajFCqawp9ryxWRORExgcFtIzP2uR3YvM23yq2AZVZWjX36wJRh+7oZR7sBUQqAg
         83MCtJUp83R4pmyXDo7hUf4IsrJd2LOxbyDJdROCDJF3dfK9B4xguH+aGrIG2g3h3upF
         dT9v7kGkApq9npBvrdNSliscPkMU1i7tS/oPFhEMJIJa+jN+oDeNg+R7EHG9/Nho0dZ5
         nkaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:dkim-filter:mime-version:references
         :in-reply-to:from:date:message-id:subject:to:cc
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2GAmh0jfWnwFpf47uiNvepd6X9uSnxGVtwxKAqyTdY8=;
        b=PUaJtCryka8sHDLHLibt4M7+8ReuaYQpBXSSilw1okiB1HQwXYVyWMqlfulZ2RIFg/
         rJeMnN1XzKgSpbwDqeK4Ubpm7ZABmTRWRtRq8W5rqVc/bo+oXF0UyjsRHBZB2XqQ22zf
         TFPX2FJY17uoHOQU6XmqbV7kQS05cI3I+PfMrGWK7vEt5nBJukriPAbqeNqV6g7wuRnM
         Es1QPumzyX4DB5I2Yy47I/q+tNAvOXt607fiaDVsa/NJMrtDc1N5eWkaoGSGRDkdALPO
         kQM0x1BXWzYoM162I7KuwJtKflJj6aS5iGYhznfcJkJOYuj3+6oLdh5NKaaJYZ6vwYc3
         DGuw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533cCfkvI73liP87kX6j4dnfAgVvRiCDaUNI64PLFnw32AWI4W1Q
	YbNdaLKXhJvrBqCdgYkXag8=
X-Google-Smtp-Source: ABdhPJx8M8AF+FMB6I5oZihMhECQAURky11552Vm7vEhsJamn96vD9uuR6ivX200Fy74L5tIn3+aIw==
X-Received: by 2002:a62:aa06:0:b029:1d9:6738:26b3 with SMTP id e6-20020a62aa060000b02901d9673826b3mr8134278pff.75.1613052981641;
        Thu, 11 Feb 2021 06:16:21 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:4b8f:: with SMTP id lr15ls2741684pjb.3.gmail; Thu,
 11 Feb 2021 06:16:21 -0800 (PST)
X-Received: by 2002:a17:902:728a:b029:e3:530:cc73 with SMTP id d10-20020a170902728ab02900e30530cc73mr6964978pll.60.1613052980758;
        Thu, 11 Feb 2021 06:16:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1613052980; cv=none;
        d=google.com; s=arc-20160816;
        b=LxCgZrJ6ybzdCT354Gm1TRkZxYUwX8G1HVuaMS2mK/O9P2AIDcaHD2cVQ5fz6X/qaQ
         pgVrdFHTsyO74sYxUVh3DPvfDem3qgzXwDLm+n+mSbuawBmtR/3JlXht5l3uWDYHnBEK
         nPOj8UtmrkfC1NzHm3b0ijY2pH99cY7d+CVHcr7XUW08bGlgAc7j0QjHwGlDjxfcKrqu
         rsnCD4AbapqYCM0ft+eNFl9QFAnz98ThnmytEJiXhaOF8sXl2gAc4vDu5H4FyklDNgTY
         0XxPMfcc5yT51LchOLd6kyWfKgocp/YCl8roTevISkd4TQ7eHX5BdSvNBv5jVGwrbmsD
         LoXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature:dkim-filter;
        bh=5fMtClGpoOrpoSoRrTR5BZN+eGFqxHSGcW74p7s3slQ=;
        b=L8xTBuR4mw2O1Sww58bgfcR8jgcd3rJZGJSh/qu9IlM8tPoXav8Nqt3dG4xuODWVp2
         59UP3k/8Ap+jOH2kk+jRNKBjcQR9oZHoRXAmXmuYU2Ur4mqMjXRIA2RMnVCSF5mx22e0
         PoQu73lFHqLNxQSUVWjoriiLr8AkcPJ0f64W3LPOyRqIqL3ckrPmoLwPMoesPnn8F2Md
         guiOa6VG32Ra18F4W+AyGfH5+NozMqJduan8TR0R8iyAN3Q2pNF7/XGBvXsMdivt5bPl
         pZlSsyDopRCxUS13IaKk1pfUUsugUNgbF3wk5QTSc0w0bdiO5CawjpaC9g6Nk56Yv2nL
         l1jA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@nifty.com header.s=dec2015msa header.b=SAhz02vX;
       spf=softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.80 as permitted sender) smtp.mailfrom=masahiroy@kernel.org;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from conssluserg-01.nifty.com (conssluserg-01.nifty.com. [210.131.2.80])
        by gmr-mx.google.com with ESMTPS id w6si243312pgg.1.2021.02.11.06.16.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Feb 2021 06:16:20 -0800 (PST)
Received-SPF: softfail (google.com: domain of transitioning masahiroy@kernel.org does not designate 210.131.2.80 as permitted sender) client-ip=210.131.2.80;
Received: from mail-pf1-f182.google.com (mail-pf1-f182.google.com [209.85.210.182]) (authenticated)
	by conssluserg-01.nifty.com with ESMTP id 11BEFosN021139
	for <clang-built-linux@googlegroups.com>; Thu, 11 Feb 2021 23:15:51 +0900
DKIM-Filter: OpenDKIM Filter v2.10.3 conssluserg-01.nifty.com 11BEFosN021139
X-Nifty-SrcIP: [209.85.210.182]
Received: by mail-pf1-f182.google.com with SMTP id 18so3772876pfz.3
        for <clang-built-linux@googlegroups.com>; Thu, 11 Feb 2021 06:15:50 -0800 (PST)
X-Received: by 2002:a62:b416:0:b029:1e4:fb5a:55bb with SMTP id
 h22-20020a62b4160000b02901e4fb5a55bbmr8068091pfn.80.1613052950036; Thu, 11
 Feb 2021 06:15:50 -0800 (PST)
MIME-Version: 1.0
References: <1612783737-3512-1-git-send-email-stephenzhangzsd@gmail.com>
 <20210208195439.GA1097868@ubuntu-m3-large-x86> <CALuz2=d-ENRbWgGYaO_ESEaw5eOVSwkQmkeYBJ-w0Vb3zZ+REg@mail.gmail.com>
 <20210209192729.GA820978@ubuntu-m3-large-x86> <CALuz2=dyA_ki98t8VNe2L1UcBXrSoJT1r6j1puEmLn7WrX87XQ@mail.gmail.com>
 <20210210182400.GA3502674@ubuntu-m3-large-x86> <CALuz2=eSv2N2Qp7GimLgdWjvWDwDh1Dj0Q7Czm4Br5a50rs4ew@mail.gmail.com>
In-Reply-To: <CALuz2=eSv2N2Qp7GimLgdWjvWDwDh1Dj0Q7Czm4Br5a50rs4ew@mail.gmail.com>
From: Masahiro Yamada <masahiroy@kernel.org>
Date: Thu, 11 Feb 2021 23:15:12 +0900
X-Gmail-Original-Message-ID: <CAK7LNAT+CG9zqPpYLoy9_1eA4caZWzxyQACcOrhbg9zfArEwPQ@mail.gmail.com>
Message-ID: <CAK7LNAT+CG9zqPpYLoy9_1eA4caZWzxyQACcOrhbg9zfArEwPQ@mail.gmail.com>
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
 header.i=@nifty.com header.s=dec2015msa header.b=SAhz02vX;       spf=softfail
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

On Thu, Feb 11, 2021 at 10:48 PM Stephen Zhang
<stephenzhangzsd@gmail.com> wrote:
>
> Nathan Chancellor <nathan@kernel.org> =E4=BA=8E2021=E5=B9=B42=E6=9C=8811=
=E6=97=A5=E5=91=A8=E5=9B=9B =E4=B8=8A=E5=8D=882:24=E5=86=99=E9=81=93=EF=BC=
=9A
> >
> > On Wed, Feb 10, 2021 at 08:15:27PM +0800, Stephen Zhang wrote:
> > > Nathan Chancellor <nathan@kernel.org> =E4=BA=8E2021=E5=B9=B42=E6=9C=
=8810=E6=97=A5=E5=91=A8=E4=B8=89 =E4=B8=8A=E5=8D=883:27=E5=86=99=E9=81=93=
=EF=BC=9A
> > >
> > > > Just as an FYI, your email was HTML, which means it won't hit LKML.
> > >
> > >
> > > Thanks for pointing that out. The existence of a GFW makes it difficu=
lt for
> > > me to connect
> > > to the mail server.  so I use git client to send patches only and rep=
ly to
> > > emails with
> > > gmail  web client.
> >
> > You can configure your Gmail web client to send text responses by
> > default by clicking on the three dot menu in the compose window then
> > chose the "plain text mode" option.
> >
>
> Thanks, this has always been a problem for me.
>
> > The build directory needs to be involved because that is where the .cmd
> > files will be but the source directory needs to be known because the
> > source files in the .cmd files are relative to the source directory, no=
t
> > the build directory. This happens to work in most situations like I
> > point out above but not always.
> >
> > I think that my patch is most likely the way to go unless others feel
> > differently. It would be nice if you could give it a go.
> >
> > Cheers,
> > Nathan
>
> Do you mean  my patch's failure  in some cases  is because the build
> directoty isn't involved after using "-d" to specify the source directory=
?
>
> Actually, the build directory has already been involved by the "path"
> argument. See:
>
> def main():
>     for path in paths:
>          ....
>         if os.path.isdir(path):
>             cmdfiles =3D cmdfiles_in_dir(path)
>         .....
>
> where the value of paths  is passed by  the "path" argument. Do I miss
> something?
>
> Cheers,
> Stephen
>
> --
> You received this message because you are subscribed to the Google Groups=
 "Clang Built Linux" group.
> To unsubscribe from this group and stop receiving emails from it, send an=
 email to clang-built-linux+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgi=
d/clang-built-linux/CALuz2%3DeSv2N2Qp7GimLgdWjvWDwDh1Dj0Q7Czm4Br5a50rs4ew%4=
0mail.gmail.com.



Please stop.


Commit 6ca4c6d25949117dc5b4845612e290b6d89e70a8
removed the tools/ support.


There exist two build systems in the Linux source tree.
Kbuild covers the entire tree except tools/.
The tools/ directory adopts a different build system.

It is a pity that the tools/ directory
went in a wrong direction, and people
try to fix problems in a wrong layer.


You are not the first person to send to
tweak obj/source trees of this script.

You can not do this correctly
without terribly messing up the code.

Please do not try to support tools/.



--=20
Best Regards
Masahiro Yamada

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAK7LNAT%2BCG9zqPpYLoy9_1eA4caZWzxyQACcOrhbg9zfArEwPQ%40m=
ail.gmail.com.
