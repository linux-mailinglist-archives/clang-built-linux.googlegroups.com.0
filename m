Return-Path: <clang-built-linux+bncBCCI5LFKZYOBB7WITGAQMGQEUQFSCXI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf40.google.com (mail-qv1-xf40.google.com [IPv6:2607:f8b0:4864:20::f40])
	by mail.lfdr.de (Postfix) with ESMTPS id 21111319D34
	for <lists+clang-built-linux@lfdr.de>; Fri, 12 Feb 2021 12:20:31 +0100 (CET)
Received: by mail-qv1-xf40.google.com with SMTP id a12sf6144541qvo.3
        for <lists+clang-built-linux@lfdr.de>; Fri, 12 Feb 2021 03:20:31 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1613128830; cv=pass;
        d=google.com; s=arc-20160816;
        b=rST6M9dEtcUNnAaoyDVvNNoGJOCPPjoYm3IRIxxMGB5Kmr37wWTTLi77ZZw7yrZq9g
         CR/Em10QLreMMIFujxz+UYuQb84VnQ+4CxhaTCQyKLGw+evFXOx8zibA5pu+6iyRQl0b
         jBtZd9K1vtHj2xGDUuTitVGTTcrP0UD0vkvbJKYfms4xr0PdDCKghd2kmDIxWO0XJr/k
         XM6AvMjE94f6Pmq1ew1PDla/ja/BeanfEpAzLSbj1ldmZSJ6D7oAtjJnW/43u6yYw1oy
         6KivPf2JUzasEpbDJe5LEVQepdTrpLB0IHgKIntam8I9iNd43engVMt/ie+J6q65M1W2
         irvg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding:cc:to
         :subject:message-id:date:from:in-reply-to:references:mime-version
         :sender:dkim-signature:dkim-signature;
        bh=1eKgBfk+FJ0evImfHaomyBnUpbmRl/kjTmYrLCmW068=;
        b=vU7DLlqFrBcnrK0PZNcesTThMvpUaCVaGjeoT0icOKxbZmTDPYCbHJpBJ0iQAagUnD
         BkYry2aA2QtvhsPXJggYDs+ReCKIITEiejEmJUmRb8xVaNNIzBLCXnwKBW86qvqz4oZI
         +KqK9oaEAynmt7TUuFKRt5XxcztK1Q4Cg36sQ4mUOuAG5W4CCn/+AfnA82y/Flqe+126
         o5SzQm3YEz287kc41Cv1UGsjgP9giWLRCVwFqK9rwCd/7b3Gs1PcDcWWbOf4pN12siuO
         4lvTR58XxsJXmieoqHpHs+PZZ0zpm0yWlKv4nQhv4G84zsppeaOPmrHZ+q5Dgi5iAAo0
         Cu8g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Y4JItaRY;
       spf=pass (google.com: domain of stephenzhangzsd@gmail.com designates 2607:f8b0:4864:20::b2e as permitted sender) smtp.mailfrom=stephenzhangzsd@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1eKgBfk+FJ0evImfHaomyBnUpbmRl/kjTmYrLCmW068=;
        b=SZhoUaA6eJlQkb8F/OqnadYXJWZrsQkp48jA9YcUln+75vfXr6GfhYOkFvEsvaqOQ2
         +v3TMwV4WT+cC8bS0jm/zK2t+PFK5AuTYaNy9U1oUOhlIdex16d7yPPWa2632u58SN7E
         nXHgplRJzZhMmKjUY6G8qFBkkN8IcGHPiq1a0BK7rc7xeCAweC7ZN7t+HWDgOK0ovpjd
         MUcTOQOaIZX/pAmbLG9K0GOSVBZ0is4UcaYF68vhQgrVpv1/BKHE6Wf5zoA9wgahaEpR
         jrK/xkcdL9+lgbG+okuFjMKA2Bh3brLnDD3Me+dglHHV8tiVgvLYmDWvxOaSbGGf21w/
         GOmw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1eKgBfk+FJ0evImfHaomyBnUpbmRl/kjTmYrLCmW068=;
        b=WjnTQhUdAg0e0eOHjVrNJb/Hvi79FxiyGsoRNrEAnsD41wB7K3Stcj7piE9Z1l7Dj2
         qFyPY3UAfZcxMkW1AH/VsPl9YcyopYnN/xVA1OuiIafqZxFCC6iOyIsJWds9OASWDByz
         a2ZKMF2MucGCSHGeWX09Gt8aeYmaRIMvpN7YMQSfUzgoSMLOl0RKGKpvsgf3lA5Vv4Yj
         KMqF/9MBls8mEM32JGN6Oo8kVwqltnqfFVZhMA6F9o3QT97EEs0wZE5f3+TEBhE3xh6w
         9JozUijp1T587TGE7hijaoSLlUK6f3DdkFO7SCvQNw4PiwlhkNthBPH5xPQ/zFe2/pzh
         i4ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=1eKgBfk+FJ0evImfHaomyBnUpbmRl/kjTmYrLCmW068=;
        b=ZB+OAEmFDuyZFIMgnL5Q2CjgpRVs8uULtsgQY8d1Lj3KWMFqixP/dmDv0s4oZ5KsFt
         l+56Y7q9h1IWNXgwBsGYW9E2U8N7fo5Y4FAvbaBRGG+O6ggd1A1h8PtUlYSDYOQVl0v8
         4FkuewV/94adJ4uNIYHNg5qZeNF8BoBHr66yrr8OGqoFAsdiV6s9DIDb+LyL6P/HIfgg
         l10pjao2qWYk2ZR9geOzZyMkieEL86O3EmpPTqzrkMli6+P0URr6aKselwhKem0DCS5P
         ZB79YgXXM5WmtR4TkDjj7f9NWwGL5781mlpJbnFwDY9pttVaUcb6n5pgjLqM7H8Afg1o
         5iog==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5301p/+2pEQNWCrxO+aVYoU0k9/Y8LrfD9wN3JzCyUYwhgmmVNok
	huABT693SknUcKbP06shrSU=
X-Google-Smtp-Source: ABdhPJzFitK3D27U2Y/UVgZTeUnDcAOuP57/8JLwVJu1UFzaM/c5yGhg16aEDQap4tXo1gG/PQX8zg==
X-Received: by 2002:a0c:a8cf:: with SMTP id h15mr2134070qvc.20.1613128830210;
        Fri, 12 Feb 2021 03:20:30 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:1674:: with SMTP id d20ls4424423qko.0.gmail; Fri,
 12 Feb 2021 03:20:29 -0800 (PST)
X-Received: by 2002:a37:2c06:: with SMTP id s6mr2158782qkh.100.1613128829922;
        Fri, 12 Feb 2021 03:20:29 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1613128829; cv=none;
        d=google.com; s=arc-20160816;
        b=1AeOItCAjcu+eZgcvJscVFFhVb5c+1o+yDg3KdcXziznFD1mYPClH7hs/TNipSEtsN
         v17y0vXCMvVJVxOi65RQb4PFfmxpdUHXSbrZifMq1lT1v7aO4JfRNuqkjsmgm8ex2KiQ
         yhe+kzQsDvsrQHUCLpO8wv/6HvHUqfT6KDFC6nR2BzzUtlZYZgptrgndpeURkSC9lOkZ
         EGo7GYlbiPALCCOfC0X2wXQa590O3O958bj1bZtCtpuNGuKD/J56H5xoErJBqyogEDAh
         uBpjoTF0hGg4jEyb8Eq96DvtvjuUKrWT1M+rfQMtk2oVxsvE7OnKIzfCmBL5s2dSr9T/
         dhfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=q1AsROKdOqecHVFM8xTf93PZvGwRiKKo+rKu3/qWAYU=;
        b=BAuthy5UUZe+/4tCVR44QdRIGYJY76t/oT04JT2PW3DlzsZ52lZJ7XebLUoHM95GHo
         TpoU7zTzYv5exoTJByt+QZHs419rrkhRNdezWxGD2ss58f9zJ0ekXSNr2FJDXjfyvSTe
         7IalbGTFiVQ/gKM33cayzNxD0D52vFv+YhLOMIwwc1ibLkc3CbpGsrDg3L/Hh50SJApZ
         K9tb8QnMP5Bna40aPfAKR8I/Jnj5AOvxXPHXa9Gl15Vd+0G/OjheWZM7kK0Wqcv1Wkc2
         pRqqeyhKh2JGVcXN9iRHN+D+V++fjFzDzUxsMWXI0Bp4p8gFo5wnxI+PeZ5hL8hC+w5+
         fd+Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Y4JItaRY;
       spf=pass (google.com: domain of stephenzhangzsd@gmail.com designates 2607:f8b0:4864:20::b2e as permitted sender) smtp.mailfrom=stephenzhangzsd@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-yb1-xb2e.google.com (mail-yb1-xb2e.google.com. [2607:f8b0:4864:20::b2e])
        by gmr-mx.google.com with ESMTPS id m10si411320qkn.7.2021.02.12.03.20.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Feb 2021 03:20:29 -0800 (PST)
Received-SPF: pass (google.com: domain of stephenzhangzsd@gmail.com designates 2607:f8b0:4864:20::b2e as permitted sender) client-ip=2607:f8b0:4864:20::b2e;
Received: by mail-yb1-xb2e.google.com with SMTP id y128so8686043ybf.10
        for <clang-built-linux@googlegroups.com>; Fri, 12 Feb 2021 03:20:29 -0800 (PST)
X-Received: by 2002:a25:7312:: with SMTP id o18mr3250196ybc.352.1613128829698;
 Fri, 12 Feb 2021 03:20:29 -0800 (PST)
MIME-Version: 1.0
References: <1612783737-3512-1-git-send-email-stephenzhangzsd@gmail.com>
 <20210208195439.GA1097868@ubuntu-m3-large-x86> <CALuz2=d-ENRbWgGYaO_ESEaw5eOVSwkQmkeYBJ-w0Vb3zZ+REg@mail.gmail.com>
 <20210209192729.GA820978@ubuntu-m3-large-x86> <CALuz2=dyA_ki98t8VNe2L1UcBXrSoJT1r6j1puEmLn7WrX87XQ@mail.gmail.com>
 <20210210182400.GA3502674@ubuntu-m3-large-x86> <CALuz2=eSv2N2Qp7GimLgdWjvWDwDh1Dj0Q7Czm4Br5a50rs4ew@mail.gmail.com>
 <CAK7LNAT+CG9zqPpYLoy9_1eA4caZWzxyQACcOrhbg9zfArEwPQ@mail.gmail.com>
In-Reply-To: <CAK7LNAT+CG9zqPpYLoy9_1eA4caZWzxyQACcOrhbg9zfArEwPQ@mail.gmail.com>
From: Stephen Zhang <stephenzhangzsd@gmail.com>
Date: Fri, 12 Feb 2021 19:20:18 +0800
Message-ID: <CALuz2=ck_=M6Dd8oFgWxnRGdipWOsdL2KODZQSmodh2N7Z8T-w@mail.gmail.com>
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
 header.i=@gmail.com header.s=20161025 header.b=Y4JItaRY;       spf=pass
 (google.com: domain of stephenzhangzsd@gmail.com designates
 2607:f8b0:4864:20::b2e as permitted sender) smtp.mailfrom=stephenzhangzsd@gmail.com;
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

Masahiro Yamada <masahiroy@kernel.org> =E4=BA=8E2021=E5=B9=B42=E6=9C=8811=
=E6=97=A5=E5=91=A8=E5=9B=9B =E4=B8=8B=E5=8D=8810:16=E5=86=99=E9=81=93=EF=BC=
=9A
> Please stop.
>
>
> Commit 6ca4c6d25949117dc5b4845612e290b6d89e70a8
> removed the tools/ support.
>
>
> There exist two build systems in the Linux source tree.
> Kbuild covers the entire tree except tools/.
> The tools/ directory adopts a different build system.
>
> It is a pity that the tools/ directory
> went in a wrong direction, and people
> try to fix problems in a wrong layer.
>
>
> You are not the first person to send to
> tweak obj/source trees of this script.
>
> You can not do this correctly
> without terribly messing up the code.
>
> Please do not try to support tools/.
>
>
>
> --
> Best Regards
> Masahiro Yamada

Thanks for the suggestion.But what we try to support is scripts/
instead of tools/. 'tools/' here is to help explaining the problem.
Or am I just misunderstanding your words?

--
Best Regards
Stephen Zhang

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CALuz2%3Dck_%3DM6Dd8oFgWxnRGdipWOsdL2KODZQSmodh2N7Z8T-w%4=
0mail.gmail.com.
