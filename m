Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBQ6JSCAQMGQEV7TYL5A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe3b.google.com (mail-vs1-xe3b.google.com [IPv6:2607:f8b0:4864:20::e3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 3AB2D316E73
	for <lists+clang-built-linux@lfdr.de>; Wed, 10 Feb 2021 19:24:05 +0100 (CET)
Received: by mail-vs1-xe3b.google.com with SMTP id b4sf475164vsb.22
        for <lists+clang-built-linux@lfdr.de>; Wed, 10 Feb 2021 10:24:05 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1612981444; cv=pass;
        d=google.com; s=arc-20160816;
        b=ed2UhlWsJQnbTkWM11RP3Nz29lorSIq5mOZSUejviD3ZqxmfAfAjZkH5yWEZwxrGny
         g+b5wXCDrdw2LmYazzM1Q1WX2UoL3poZFDLwXlQ1ldtAEC7Ld6AMeP4iKOiO0zWGZwIT
         mICtyiDWnavKoLjYS3lXvIJbxQibslrP0bnMIQw0AugFlfg4AXFIlVJNvTadBOMLMbKM
         RLn8YI6E3ECks+nxSh3tU1jlSd4weRC1EsSdQAPWZco0tLn3ObFf/w9vBWI1wtqacewP
         G4s6/1Bgtz7f9hOck+qJhkVmSn2EGXIIwGtYKNG/pXa8TWK5PZAAL5E6bTzGwF2HgnNX
         bydA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=PnxCVkIz/GbUFRFr/nEo77SkvKIhEVeGCDhvTQmaskM=;
        b=aFFS1U/P1WQ+3yLGShqFWbsfiZ78tWKPcLK9VDpJsVOv8tKiH+CeCk2rbdIfye+QHi
         5hC1fHvdXrVUBV4Viomrr99KxW+U9IZ4AbR5HlOYx56esc211j056j1tqWSa67tQJiGz
         mEwHMKFT52oUiY9LKXAfuWkjPIwwt0FnVxCaeLtiWMrJJaFcZPwMwaKtKs6dhPOYc95U
         coHIYDD4hOc5hD04f1pQ57wUR/mNLzk6DNXeJsOrXe82wrLW4GlQy6PGPVU4qfS2deXY
         j40wJLb7fZrV0IeKJZFjULPI0lGKdGPB1/k1l7qVd2dQHk+aBFzEjUi2Z0tlzx0fUqLw
         gJBA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Yve50P3V;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PnxCVkIz/GbUFRFr/nEo77SkvKIhEVeGCDhvTQmaskM=;
        b=pgLj5CxierjLr1LO4tnH6oETm9biEpbpv6O/tmI9feziEMRla2DHEDPXhUW8LPT91K
         SIPZiVekszZmh01FqfstfGx5zVcz38qhcklGQvb9CLf0nu65KGIKdkYtDpUhY+svhLRP
         4X73+Zh96L8ta+FQ/vpshXFA0F1XfN+Nuf+EylzUYjJK789HREe8gKLSlG1ufwyoGAkx
         a6xfn/BGt8J6Cq9+wbnFrH21ooNmCmJYImEQ092KmOi99xnEfwi4XlsYlE917JM70WhH
         m/QFLL8NaQmlF5FVAveTHTPnb6tPl2t7bbWAO6JBpYPKzNcIJztT0tfaQltogcOGnHsf
         05rQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=PnxCVkIz/GbUFRFr/nEo77SkvKIhEVeGCDhvTQmaskM=;
        b=QvBr4CbLxgv6nnmB/GlQoP+ZZdNoEBgF0KiqHdrctUVs0sDEyENmHDJxJznSROPpy3
         NYDO9Ndudc+FvEr4ZP460GYKkRlwzF9rTyYdKrtjW+Dbb8lTaITKWQ6saIYVUI1eFAZa
         mLk9Iy3oqKKpy6057nQBHJV2vAate447t5TGlJk3/be40QNGRPCw47M87DwKJlHqHFFh
         98pUtJYx0qryfZ6ZmvVr5qBIYzvGACWpDTGJtVo6pnkKxHi8JDjrJjocPP7YnWtrMf7k
         r465oYvI447pcKA39ExRRqupOWmGPufdxMTdPw+VwLi/rg0NgeyW13TKbeye7hOzEWb3
         VH9g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530/Ly8AtoguS9bktzZ1qd0CcT2y5GNPtOf0t9FcbptUL5si1dex
	Qmfi8Zq1y+5zuYXuoQK7DSY=
X-Google-Smtp-Source: ABdhPJyYVOCg4nYguL4ReM+IaXIrS0JUjZvAuY1Q0jkuIa0xlYoIzYGUXrdndI+Uyc6ZisFtpvWnlA==
X-Received: by 2002:a9f:2631:: with SMTP id 46mr2871125uag.97.1612981444100;
        Wed, 10 Feb 2021 10:24:04 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9f:3641:: with SMTP id s1ls211050uad.10.gmail; Wed, 10 Feb
 2021 10:24:03 -0800 (PST)
X-Received: by 2002:a9f:3608:: with SMTP id r8mr2722648uad.141.1612981443606;
        Wed, 10 Feb 2021 10:24:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1612981443; cv=none;
        d=google.com; s=arc-20160816;
        b=MqykAdz8xH4ufbaCbvTxAjc/zdp8bvQmG4NzUX7cioNgCXPIiZ6zx1fE9REDfT3osu
         A4+PCLBxNvbSu/+H2zmgVVERxgtHrBAQ1JpFSsUYgCzSG1lNTSZHgtMigDfefXiE4mzb
         hJILzzeIkiv7QEKI4X9rREN6GxpIxO4WpuYwz9sv2Q21Bc9nppIKLRfae7HC1rJqsyY0
         qANwPZBrzWAL55yNzBnhQtzDbM0A6VuVhJtnon2FulhABAJZzGxJeLVbhiqR1PLjnvJr
         WqOfUnIvRkeIrVZp/U4Ok4BKO6IQoBR7I6cS9od0HhTCx0BZkelqKXX1CUzWejij0JRp
         EKaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=NATF6IdkbFwgH2NNyyiyMMNVKaQn7hqSK7T4MFSZF4g=;
        b=iyPlGJOTlQtkXl34/BRyXf601+YTzB+ERtwnYoZpIcON/U8+fRTQfsmGEdPx46e9Ck
         8+NOdnh9nKHzeAN1RwS23mcik7WEDAL6ZukZCG4i+ILxRP0m9vtf682WzwyffmBxG7r9
         /uVdUSHULDGIWgzOkN0EdWOu9hh8XyfkXsMoCfu2F0oDiPsNFR4XWI0Gx5TKpn6MolzN
         KaYZNMI3pdPeE0M67rXnIIOu+ysJyFRCFBxq7arHZj/P3hZOaUI4vGKH9NbgHTupj9jZ
         yDEkYh0gHkSx0odUQnRnn8v5g3mTIzZ95FJGph7xJZRk8PQcNtI1SgHlbQq+GhROw7Z5
         MREQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=Yve50P3V;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id n3si207239uad.0.2021.02.10.10.24.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 Feb 2021 10:24:03 -0800 (PST)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 5CA1164EDC;
	Wed, 10 Feb 2021 18:24:02 +0000 (UTC)
Date: Wed, 10 Feb 2021 11:24:00 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: Stephen Zhang <stephenzhangzsd@gmail.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>, natechancellor@gmail.com,
	clang-built-linux@googlegroups.com,
	LKML <linux-kernel@vger.kernel.org>,
	Tom Roeder <tmroeder@google.com>
Subject: Re: [PATCH v1] clang_tools:gen_compile_commands: Change the default
 source directory
Message-ID: <20210210182400.GA3502674@ubuntu-m3-large-x86>
References: <1612783737-3512-1-git-send-email-stephenzhangzsd@gmail.com>
 <20210208195439.GA1097868@ubuntu-m3-large-x86>
 <CALuz2=d-ENRbWgGYaO_ESEaw5eOVSwkQmkeYBJ-w0Vb3zZ+REg@mail.gmail.com>
 <20210209192729.GA820978@ubuntu-m3-large-x86>
 <CALuz2=dyA_ki98t8VNe2L1UcBXrSoJT1r6j1puEmLn7WrX87XQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <CALuz2=dyA_ki98t8VNe2L1UcBXrSoJT1r6j1puEmLn7WrX87XQ@mail.gmail.com>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=Yve50P3V;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Wed, Feb 10, 2021 at 08:15:27PM +0800, Stephen Zhang wrote:
> Nathan Chancellor <nathan@kernel.org> =E4=BA=8E2021=E5=B9=B42=E6=9C=8810=
=E6=97=A5=E5=91=A8=E4=B8=89 =E4=B8=8A=E5=8D=883:27=E5=86=99=E9=81=93=EF=BC=
=9A
>=20
> > Just as an FYI, your email was HTML, which means it won't hit LKML.
>=20
>=20
> Thanks for pointing that out. The existence of a GFW makes it difficult f=
or
> me to connect
> to the mail server.  so I use git client to send patches only and reply t=
o
> emails with
> gmail  web client.

You can configure your Gmail web client to send text responses by
default by clicking on the three dot menu in the compose window then
chose the "plain text mode" option.

> $ mkdir -p /tmp/build/perf
> >
> > $ make -C tools/perf -skj"$(nproc)" O=3D/tmp/build/perf
> >
> > $ cd /tmp/build/perf
> >
> > $ ~/cbl/src/linux/scripts/clang-tools/gen_compile_commands.py --log_lev=
el
> > INFO -d .
> > ...
> >
>=20
> According to the code logic, the source directory is specified by
> parameters  =E2=80=9C-d=E2=80=9D.

Yes and no. '-d' is supposed to be the build directory but the logic of
the script clearly does not work when the build and source directories
are in completely separate tree paths. In other works:

$ make

and

$ make O=3Dbuild

will work with '-d .' because the .cmd files are in '.' and the source
files will be placed relative to '.', which is correct. Your command
does not work for two reasons:

1. You are using a build directory that is not a subpath of the source
directory. In other words, this script would not work for

$ make O=3D/tmp/build

because '-d /tmp/build' needs to be used to find the .cmd files but then
the relative path of the source files is messed up, as you point out.

2. The source files are in tools/perf, not .

> def process_line(root_directory, command_prefix, file_path):
>     ...
>     abs_path =3D os.path.abspath(os.path.join(root_directory, file_path))
>     ...
>=20
> The "root_directory" is passed by "-d", which finally become the prefix
> like  "/tmp/build/perf/"
> of  "File /tmp/build/perf/arch/x86/tests/bp-modify.c not found".so the
> command is:
>=20
>   $ ~/cbl/src/linux/scripts/clang-tools/gen_compile_commands.py --log_lev=
el
> INFO -d  ~/cbl/src/linux/tools/perf/
>=20
> Maybe we should make an updated version, in which the help message of "-d=
"
> can be changed
> to specify the source directory instead, or I am just misunderstanding th=
e
> code logic.
>=20

The build directory needs to be involved because that is where the .cmd
files will be but the source directory needs to be known because the
source files in the .cmd files are relative to the source directory, not
the build directory. This happens to work in most situations like I
point out above but not always.

I think that my patch is most likely the way to go unless others feel
differently. It would be nice if you could give it a go.

Cheers,
Nathan

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20210210182400.GA3502674%40ubuntu-m3-large-x86.
