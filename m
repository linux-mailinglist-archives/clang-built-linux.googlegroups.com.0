Return-Path: <clang-built-linux+bncBCCI5LFKZYOBBN6DVGAQMGQERQY4RUI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc37.google.com (mail-oo1-xc37.google.com [IPv6:2607:f8b0:4864:20::c37])
	by mail.lfdr.de (Postfix) with ESMTPS id B974531B878
	for <lists+clang-built-linux@lfdr.de>; Mon, 15 Feb 2021 12:57:44 +0100 (CET)
Received: by mail-oo1-xc37.google.com with SMTP id x25sf2544451ooq.16
        for <lists+clang-built-linux@lfdr.de>; Mon, 15 Feb 2021 03:57:44 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1613390263; cv=pass;
        d=google.com; s=arc-20160816;
        b=fgi/tZLv+44jW21PqYLy4XdvusJMGYyn41qDgzw7fEwsPZ0T6RtWu8kRNEvS2ONu0S
         4bbG0YHYC5Qj83x16UM2AVmBWQHAc0bINUm6zjW3qAtRPDXdWhhcuTHQ0PNtfPLRxqF4
         HNgCKgwZMXbgRjIT71wNYy3p5O+LK4a3wiNa7XRYJEt2lVFElhFUyRkJHxNXCSBHoHvz
         D/c2aSJpHSgwhA6fa2jocFeFFLlQGr8MoAcZKybpagNdEGxrL5gfqeYMMPG6FRInh7qD
         0XGLI8wmXsWdkvpfTjifxnGYzYchmuB6Mph3jd+acv3v7yXhQg9F/zzsgE4dWhQ+nWER
         cD8w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature:dkim-signature;
        bh=zZvIX9BUgMGGf4f+l9W1VcHa7D8SrN2e5+o2BPmU0o8=;
        b=DydsdOaU66AZbQS4kqiqCnhTMeiHnEM2ZzaOdTyebIwl0I5mwnFdmSWMKL6ZsyWDlC
         uuOTV/JT5CaQfIGXyKNGYjMn6DuiLBb4mzD08zzi7TN4RZ40JjCLzOMu1jJY7LCkKu+l
         O82O6CDwpnh082pBo40FJelLWk6ODMr/qpXaVz1OGtiVX6xs0a+bw8fHKaImyOfP+v1A
         XQ9XCQME0+I19RdwDQYQ6UR832u4036KKrFrpjfCW3n74DFH5q8+G1+acjKnyF/Q0IUA
         WqJEUM0MiV4+nqvPNkgNfOJcDtrQavzg/dwFCH848cHHYW5R42/RTEhK5bF7q/eCFmuE
         1HDw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dQLZtwIS;
       spf=pass (google.com: domain of stephenzhangzsd@gmail.com designates 2607:f8b0:4864:20::b34 as permitted sender) smtp.mailfrom=stephenzhangzsd@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zZvIX9BUgMGGf4f+l9W1VcHa7D8SrN2e5+o2BPmU0o8=;
        b=WtAzEO3v0705MKukyqfyFma/70MQ9CND0sxrX4MxHOqlFGWuyCi8lcl4YzK4/NKHyE
         VLex5qdxNpX+Tp5aoRQ5tzhGcB2k2X8Fv638ocQf+8TsHZjBv1Ri/3Q/TuXNc37a8u7a
         QUuKJ5nx7pnCoaOD1MIeWQOd72M3SN2VIn0oE1XsKSVaS8e4wGMjdKvWbzYkxjSOyYJi
         0xTWdl0GakknQCLhaIsEYMDz6P2P01bVfmyFkYFt7G6MiAvL/c2fz5bsQM3u+iF4tUSM
         jdQuJKEYs9RZdm69wfp//bGs/h9B0jSDXFHrLQJ60VgdIT4EB8BulqUcepAmyITDAMf4
         6D9A==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zZvIX9BUgMGGf4f+l9W1VcHa7D8SrN2e5+o2BPmU0o8=;
        b=mrv2n6MDZ4qfebvw6kZtl1Z+NarX2G9NqYnh92YDQQbUqb0fb1bIRKWgJu6lSSd6Xd
         GhrXKawn3gX6l1V1LTU0hUEF04BKG+RaRN5QeDLK7KL5dXbzuI5ahhApDsM7d9J+YJzL
         n5KleVj/mS1Z3KFAWYoq+ppSaXD4qPPrdN/65vjWoLOohfEuUEhFPXRfGfYdKdLjO4i2
         A/w4EkuqL9kKOLO9tGlVdYEjZSEs/8eGtmRNjcP1rgC4Zhjx7T3CreC6nhLVs1tpzyLH
         kUufgwg8LTYaueCzZcvqb5KE6Z6eJOvZThp+7a1KpaTJI8EAYGOs5iLNV2lk5JKa38j5
         NCew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=zZvIX9BUgMGGf4f+l9W1VcHa7D8SrN2e5+o2BPmU0o8=;
        b=VcdrwjYqZB52/Eq/iG9+nBfvHhJzt99c79/nKcCppuNHGsle+WLvg4qz8GRIVBIqFg
         Wm73FDyJmXZkmEX7wLShqoCFpzmVHSkM+5PahJc8klc0wIn6DvRTGu6R+4VVTnVq6Lyi
         H+Um83dMTFt3cfhQQ/zgjiV734AB7cE+xO6I3vo8oxxCpHcaem6sFS493A2qCm1Bxjbj
         q7Vc+DvN3S1JuOel5tpfHTZlX6E7cG21Ew9c2OahQlxIIMEH2zy+BqnghVITIwEPW01j
         XhAotF8zFhIECbv5xXE36jnj0ubN/HOlw4gMbQePc5UAnEZWk46v/IZyDNo9eZDgEBld
         AgLw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533YPZzoRUxIBhcS+6Q3eJRF4IpjvA7KmpnxhAl0ARL2gzFunEvx
	kOb7NJTUO9p98Pg2/v5MNmU=
X-Google-Smtp-Source: ABdhPJxu6sqpFul9nvNAvll+9Iu7wchhkqUBemTqY4IQABV7Hn10NEfb49tMLkD3StJh1PLVS+P7PQ==
X-Received: by 2002:a4a:d50d:: with SMTP id m13mr10568039oos.2.1613390263696;
        Mon, 15 Feb 2021 03:57:43 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6830:19f8:: with SMTP id t24ls3699844ott.11.gmail; Mon,
 15 Feb 2021 03:57:43 -0800 (PST)
X-Received: by 2002:a9d:71c7:: with SMTP id z7mr11453246otj.66.1613390263393;
        Mon, 15 Feb 2021 03:57:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1613390263; cv=none;
        d=google.com; s=arc-20160816;
        b=Fw+uCLr67bTjAz35TSV315+143/wkw9USJ5/lvN4EOZ2vHlMuQyUaJe8jjoTEAdgnY
         r4pl1E0KFPU4zBVy5CSjOMEAYatheJkpUpgSOfRJr/W8s8UkBh+TtF7B2pqR0LJ9nZLi
         UjA72ZMgx1CwmF+1LAHVa5GzTcxReUtcVbz+pExWw2D20AyPDjEGCllA2yJSzGCmC8R9
         R+cdDU9G97DiK8P9dNG16U23Fa+jG7AerBPcdKqTAZpir64ghWedIihSrpCUUS+cqFLs
         OXKuYKlt4BgLkc6zJjVGBsWN20eelqT7MWwTizxOmAYmVvDUgIR8nd/+6kxjefYRP9dV
         S7Bw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=tPsSRC32Tt/1UUo7+8DjmKZQ4k3SqdIUalMtUn5imSE=;
        b=Dl0fu9TWjxGUyYUHq4XJ2uHyx5oeaYD/IhCashAHs2zeOufAV2OefJ48JiGIBQKrmx
         gvsBNbAzT/+/pQ1j841YOJWr0/WIDe7Cdf5Lko1ZqLH2CIXEGRKg9nii/0AILrHuZvD6
         MZ3boJxay8lTAR9D1QelhQt09wzKgD1bMkI0OqP6RcX0JJNuMunYA6P12kM0UazmIt78
         s1XxEBWtEAVMOPeZmmxiTcAc2PE+T7J6rWBERUPhNlxjzmWbti2l74TWBF/EDpwdpjHR
         frEL53eJRMEZE+PtFmGp29YBFmdo7MA9QMv7/U6FoAN/6paTpC09XixKPf5ZRmE8msnJ
         f1Tg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dQLZtwIS;
       spf=pass (google.com: domain of stephenzhangzsd@gmail.com designates 2607:f8b0:4864:20::b34 as permitted sender) smtp.mailfrom=stephenzhangzsd@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb34.google.com (mail-yb1-xb34.google.com. [2607:f8b0:4864:20::b34])
        by gmr-mx.google.com with ESMTPS id f20si911797oiw.1.2021.02.15.03.57.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Feb 2021 03:57:43 -0800 (PST)
Received-SPF: pass (google.com: domain of stephenzhangzsd@gmail.com designates 2607:f8b0:4864:20::b34 as permitted sender) client-ip=2607:f8b0:4864:20::b34;
Received: by mail-yb1-xb34.google.com with SMTP id f4so6863643ybk.11
        for <clang-built-linux@googlegroups.com>; Mon, 15 Feb 2021 03:57:43 -0800 (PST)
X-Received: by 2002:a25:e08b:: with SMTP id x133mr13092641ybg.138.1613390263076;
 Mon, 15 Feb 2021 03:57:43 -0800 (PST)
MIME-Version: 1.0
References: <1612783737-3512-1-git-send-email-stephenzhangzsd@gmail.com>
 <20210208195439.GA1097868@ubuntu-m3-large-x86> <CALuz2=d-ENRbWgGYaO_ESEaw5eOVSwkQmkeYBJ-w0Vb3zZ+REg@mail.gmail.com>
 <20210209192729.GA820978@ubuntu-m3-large-x86> <CALuz2=dyA_ki98t8VNe2L1UcBXrSoJT1r6j1puEmLn7WrX87XQ@mail.gmail.com>
 <20210210182400.GA3502674@ubuntu-m3-large-x86> <CALuz2=eSv2N2Qp7GimLgdWjvWDwDh1Dj0Q7Czm4Br5a50rs4ew@mail.gmail.com>
 <CAK7LNAT+CG9zqPpYLoy9_1eA4caZWzxyQACcOrhbg9zfArEwPQ@mail.gmail.com>
 <CALuz2=ck_=M6Dd8oFgWxnRGdipWOsdL2KODZQSmodh2N7Z8T-w@mail.gmail.com>
 <CAK7LNAR06H3Ue5SG3=6u1veyjg+kXXb2isEBsHVQEtMMJ3d2Tw@mail.gmail.com>
 <CALuz2=fHXZ=NrVdRNzyromD88wp9pAzYC9nffPt6y5YM=sJniw@mail.gmail.com> <CAK7LNARoL19wQo84AZAizZBzXJKkg3KciryQU+Sm5Uc4BDd9DA@mail.gmail.com>
In-Reply-To: <CAK7LNARoL19wQo84AZAizZBzXJKkg3KciryQU+Sm5Uc4BDd9DA@mail.gmail.com>
From: Stephen Zhang <stephenzhangzsd@gmail.com>
Date: Mon, 15 Feb 2021 19:57:32 +0800
Message-ID: <CALuz2=c62qb-gG7r892sw=QRxr7MZMxGv09eSdFd4=2ZHmhE7g@mail.gmail.com>
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
 header.i=@gmail.com header.s=20161025 header.b=dQLZtwIS;       spf=pass
 (google.com: domain of stephenzhangzsd@gmail.com designates
 2607:f8b0:4864:20::b34 as permitted sender) smtp.mailfrom=stephenzhangzsd@gmail.com;
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

Masahiro Yamada <masahiroy@kernel.org> =E4=BA=8E2021=E5=B9=B42=E6=9C=8815=
=E6=97=A5=E5=91=A8=E4=B8=80 =E4=B8=8A=E5=8D=881:10=E5=86=99=E9=81=93=EF=BC=
=9A
>
> So, what is the problem?
>
>
>
>
> --
> Best Regards
> Masahiro Yamada

Okay=EF=BC=8Cit seems that I misunderstood what you said before.

--
Best Regards
Stephen Zhang

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CALuz2%3Dc62qb-gG7r892sw%3DQRxr7MZMxGv09eSdFd4%3D2ZHmhE7g=
%40mail.gmail.com.
