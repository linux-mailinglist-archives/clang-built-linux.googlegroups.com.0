Return-Path: <clang-built-linux+bncBCCI5LFKZYOBBTM4USAQMGQEMEERWMA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3d.google.com (mail-yb1-xb3d.google.com [IPv6:2607:f8b0:4864:20::b3d])
	by mail.lfdr.de (Postfix) with ESMTPS id DE50931B044
	for <lists+clang-built-linux@lfdr.de>; Sun, 14 Feb 2021 12:49:34 +0100 (CET)
Received: by mail-yb1-xb3d.google.com with SMTP id c12sf5998043ybf.1
        for <lists+clang-built-linux@lfdr.de>; Sun, 14 Feb 2021 03:49:34 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1613303373; cv=pass;
        d=google.com; s=arc-20160816;
        b=ZmvfYC9Pyr9mrPU7tVPQEe7HfKV/s9wfGU/2KDuLRzCR3+CoHTG9XT1/vukCE7lwcE
         RffedAnY3sBthCK6K4fkI7+FJqhQTSvNUVQV0Q+JVJ0M0YA49Qjv+BzNP644ORzqboiq
         4brkwdTuD1Zcmm8NmEA9XbHnnl27ZkyYoBwflZ2aEWCyI7au4aoJ1I6T5PaHHMW5sn1P
         rube0IEHFTtmFe7B+66M+aIp1cBgHju5lyLnYQIiS64UsgEbSkHkglRwVhRxD+TFFMIt
         uzitapTRt6IWU6xo3f7tMswvnuClDwJKWmbXc1QUNU0Uf6J4lEOZFvrVtllm+cihIkH/
         9fGg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature:dkim-signature;
        bh=rkObG1BWMWvm7HT+J02GJ0HbM8gNhGdz/jlcWVAy6t4=;
        b=L+IMdYHt49DMkHaVuVZBsbaywrMCEcWQwQ2oxBtlOBr0/tIVjfZ1UsYJUsJcpZZ9G0
         H8FF0bRrM3HaR3aQTJBxX7EsYYUep4ICynnvvEd4ODVvC3WeN0h2FP386c6UpDufuPaw
         kcp1EZIAjTYdRtLPYucMEvhamldKHLdgx8WAaBlYKggLc7wat2BRCVWBCODz+XBjQQCe
         vNqRdmLdOKwvfdIP5xX+7pBdP3mrFIJsY+IzJZ7ln8yuPsNiEX2cnegmG2qE3rohk3wp
         kYcb6DnSFGrh9ZSTPn+OkJ1dSeVdY/fDPOF/QG1IxXwLxI9hBqJZwvr4Wc35Nx/nOVJh
         E9sA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tIfW9jhP;
       spf=pass (google.com: domain of stephenzhangzsd@gmail.com designates 2607:f8b0:4864:20::b33 as permitted sender) smtp.mailfrom=stephenzhangzsd@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=rkObG1BWMWvm7HT+J02GJ0HbM8gNhGdz/jlcWVAy6t4=;
        b=BjVwOP6zuBmBt6oS5jBUGizX7Zw5Pcwkbsu+iQ/t/S0Y1lEZtSY5dQLm5ufY7fUJ6D
         0BPJFg+7sxHs3o39u/seA5OdnnloCuSbHEO+nbUamw9ixERe2naDZ2GT9caGftGEMX5A
         rqrJY3y2yEquRUpw8v/p00XI/EL4kvCGkd/h4yO51iVUzqVvvc92pcEFbJEWE668euOU
         NUzMlZpEUy37ifdK8VC2Uq/qzpon2EmY9UKksGBSYjaO+b6muFq3THTTVJuHrQGXvVe0
         0v6m0QxpLhw5uHKOOIXmmA4onC6glECgxunXO5ek8Af93YNNn7PMrN7Gc+ER7ViH6726
         yI2g==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=rkObG1BWMWvm7HT+J02GJ0HbM8gNhGdz/jlcWVAy6t4=;
        b=CZYppgGS3ohisQRTpyEDFnsfqGHSErZNq4ggevEFWCwGNt+aqbZ1CBaKbTzkXd/Q8y
         UEFYf7oL+2XPExEtqLDrnqILjCTAAWJwibZwnd5CqSVkPH57McRejNUch7trXppTCpi1
         PIA1oFbjvyVl5qQwKsiah3slEomSK1UTF0f2nN0QXrM4BzhAlyRoJp9PwztqvoBy28Ki
         sq3JEejwK3Fw2Arehd8uxX8sQAjNmb8dIBvYnl6yN1hVI6t2MRtdz9sRuFQTnJuyESKG
         TVMlvpJ8XvgAHN3E/jYMcroC5RZYSuVKNMy6Shi0POfyuU5/kX4Qb/riplHY/JUqxAz4
         UpaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=rkObG1BWMWvm7HT+J02GJ0HbM8gNhGdz/jlcWVAy6t4=;
        b=ZltoCEv34rVzgWQAj6Sk6G/teZb/jQrRU5WmUgsaNCRm6jpJSiaPDVTCxPsUS+xlme
         FcbUUinSkfBsjxaeBG2PrJNrsCIyfIfN5yZDNBOhthg7a6tCBxrMeOqGQ+/XyUemCI+V
         i0C2xGg9UJuza1G+9E+LkNomEB4lKv5Vvi1t5EPW71zpc7NooPVrSKjrYsbaUl/aX7Bs
         PP1pBXVZqZVCvY2x2WHLf29s3GT6d6MPI7ideqdds+wCRv9Zt/3UAUOlkZeTXkU7XYbK
         216M/ZNIxh0d/nOuzZ618i/VZHJBh1gUcbNX7qq/Eu9CAjd65CU192Gz3MFFA2mfbyGE
         w8Sg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530bhHXIpovdJPkHYnegoyntfOTSditcyEFLvOp5B6n7Yclu2fHN
	ERwVlrj4hrYtLV0Gvj6fqm0=
X-Google-Smtp-Source: ABdhPJwQVlRVVHMwzpWOoVRfD5oG7adxlOH37GIQY5oJr4SyhoqckOulqvJPoq9h+UEoOToZg2k3VQ==
X-Received: by 2002:a25:a062:: with SMTP id x89mr16843135ybh.88.1613303373794;
        Sun, 14 Feb 2021 03:49:33 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:4c06:: with SMTP id z6ls6385024yba.8.gmail; Sun, 14 Feb
 2021 03:49:33 -0800 (PST)
X-Received: by 2002:a25:5583:: with SMTP id j125mr14879130ybb.307.1613303373421;
        Sun, 14 Feb 2021 03:49:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1613303373; cv=none;
        d=google.com; s=arc-20160816;
        b=OIKSO3nZmnMwyuU96+/uklR0v3xJ8q+Xgm8EjTR1v3aO84Tchi3ZVwun3Os2Whoxl3
         CA9d0oyni70Yf1+PAD/jSDq5LJD5Pf7r+Io5WafeeZUTAAheJ3aeyl3jyf1pO1ogo/Bi
         IKjAWrxfbSpVnmAGA+ldCrekSAwzs25Kk6sAFbWeOUNUDIkeVVYg1jjLO7wx7g6CZECu
         UBl+5RQ3JBJKftSZSQHnxHT1WBaI41COlE94G/sArRj3o74NvFREzOydV1jL8ZytTWbD
         xoEtbNt9+Zxat4pAnmKfCML23NbEJLF6CWQ0cMVqo7CizI2+TggYhm5xWuvdDyWCKR+n
         JJRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=YbYZAdSVhVuJNoAtWccCf/rL4wPcvTLqCtelTv8zP+0=;
        b=kpSdXp/LsSCBi8B0B7119IIfffmyNS23phVkzbviwiSiksqdosBmTuf2IRoWCNMnSZ
         ee4yyvmCp4jsVyLnK21IsHlafbKEbfHDYinteG4P5eIf9macp29AX4iC9pM+t/c8JDK8
         UHbvgjxCbbjjV+FxeA5+wpmZ4Demrz8z0QQhS4T/pg3QzQQB+xxg22t4GgNfPaKVOflB
         J+9dxPuDmmSsv55JChaDQTjUNU6vvt/H4w/sISO2SRMs9j5OZlRJjvzJKrCe+dYRCaNH
         QNbXz9l107H7BnzKK/Y6Ajl0mP5lrHzpTW81gJW65ZWrf38kpvC/SH19+0gUqZ4A0DW9
         WLtg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tIfW9jhP;
       spf=pass (google.com: domain of stephenzhangzsd@gmail.com designates 2607:f8b0:4864:20::b33 as permitted sender) smtp.mailfrom=stephenzhangzsd@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb33.google.com (mail-yb1-xb33.google.com. [2607:f8b0:4864:20::b33])
        by gmr-mx.google.com with ESMTPS id x7si530ybm.0.2021.02.14.03.49.33
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 14 Feb 2021 03:49:33 -0800 (PST)
Received-SPF: pass (google.com: domain of stephenzhangzsd@gmail.com designates 2607:f8b0:4864:20::b33 as permitted sender) client-ip=2607:f8b0:4864:20::b33;
Received: by mail-yb1-xb33.google.com with SMTP id m188so4307997yba.13
        for <clang-built-linux@googlegroups.com>; Sun, 14 Feb 2021 03:49:33 -0800 (PST)
X-Received: by 2002:a25:7312:: with SMTP id o18mr16101845ybc.352.1613303373113;
 Sun, 14 Feb 2021 03:49:33 -0800 (PST)
MIME-Version: 1.0
References: <1612783737-3512-1-git-send-email-stephenzhangzsd@gmail.com>
 <20210208195439.GA1097868@ubuntu-m3-large-x86> <CALuz2=d-ENRbWgGYaO_ESEaw5eOVSwkQmkeYBJ-w0Vb3zZ+REg@mail.gmail.com>
 <20210209192729.GA820978@ubuntu-m3-large-x86> <CALuz2=dyA_ki98t8VNe2L1UcBXrSoJT1r6j1puEmLn7WrX87XQ@mail.gmail.com>
 <20210210182400.GA3502674@ubuntu-m3-large-x86> <CALuz2=eSv2N2Qp7GimLgdWjvWDwDh1Dj0Q7Czm4Br5a50rs4ew@mail.gmail.com>
 <CAK7LNAT+CG9zqPpYLoy9_1eA4caZWzxyQACcOrhbg9zfArEwPQ@mail.gmail.com>
 <CALuz2=ck_=M6Dd8oFgWxnRGdipWOsdL2KODZQSmodh2N7Z8T-w@mail.gmail.com> <CAK7LNAR06H3Ue5SG3=6u1veyjg+kXXb2isEBsHVQEtMMJ3d2Tw@mail.gmail.com>
In-Reply-To: <CAK7LNAR06H3Ue5SG3=6u1veyjg+kXXb2isEBsHVQEtMMJ3d2Tw@mail.gmail.com>
From: Stephen Zhang <stephenzhangzsd@gmail.com>
Date: Sun, 14 Feb 2021 19:49:22 +0800
Message-ID: <CALuz2=fHXZ=NrVdRNzyromD88wp9pAzYC9nffPt6y5YM=sJniw@mail.gmail.com>
Subject: Re: [PATCH v1] clang_tools:gen_compile_commands: Change the default
 source directory
To: Masahiro Yamada <masahiroy@kernel.org>
Cc: Nathan Chancellor <nathan@kernel.org>, Nick Desaulniers <ndesaulniers@google.com>, 
	Nathan Chancellor <natechancellor@gmail.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, LKML <linux-kernel@vger.kernel.org>, 
	Tom Roeder <tmroeder@google.com>, 
	Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: stephenzhangzsd@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=tIfW9jhP;       spf=pass
 (google.com: domain of stephenzhangzsd@gmail.com designates
 2607:f8b0:4864:20::b33 as permitted sender) smtp.mailfrom=stephenzhangzsd@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

Masahiro Yamada <masahiroy@kernel.org> =E4=BA=8E2021=E5=B9=B42=E6=9C=8813=
=E6=97=A5=E5=91=A8=E5=85=AD =E4=B8=8B=E5=8D=888:46=E5=86=99=E9=81=93=EF=BC=
=9A
> This is the steps I tested.
>
>
> masahiro@oscar:~/ref/linux$ make O=3Dbuild  defconfig all -j24
>   [ snip ]
> masahiro@oscar:~/ref/linux$
> ./scripts/clang-tools/gen_compile_commands.py  -d build
> masahiro@oscar:~/ref/linux$ grep '"file":' compile_commands.json |
> grep scripts/ | head -n5
>     "file": "/home/masahiro/ref/linux/scripts/mod/empty.c"
>     "file": "/home/masahiro/ref/linux/scripts/mod/sumversion.c"
>     "file": "/home/masahiro/ref/linux/scripts/mod/file2alias.c"
>     "file": "/home/masahiro/ref/linux/scripts/mod/modpost.c"
>     "file": "/home/masahiro/ref/linux/build/scripts/kconfig/parser.tab.c"
>
> --
> Best Regards
> Masahiro Yamada

Thanks. Nathan had a detailed description about  this:

> $ make O=3Dbuild
>
> will work with '-d .' because the .cmd files are in '.' and the source
> files will be placed relative to '.', which is correct. Your command
> does not work for two reasons:
>
> 1. You are using a build directory that is not a subpath of the source
> directory. In other words, this script would not work for
>
> $ make O=3D/tmp/build
>
> because '-d /tmp/build' needs to be used to find the .cmd files but then
> the relative path of the source files is messed up, as you point out.

This may help you reproduce the problem. So you shoud try:

>masahiro@oscar:~/ref/linux$ make O=3D/tmp/build  defconfig all -j24

where the build directory  is not a subpath of the source directory.

--
Best Regards
Stephen Zhang

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CALuz2%3DfHXZ%3DNrVdRNzyromD88wp9pAzYC9nffPt6y5YM%3DsJniw=
%40mail.gmail.com.
