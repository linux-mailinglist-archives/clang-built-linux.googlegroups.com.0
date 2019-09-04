Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBV7BYDVQKGQEO7QI4XA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43d.google.com (mail-pf1-x43d.google.com [IPv6:2607:f8b0:4864:20::43d])
	by mail.lfdr.de (Postfix) with ESMTPS id 968C9A9573
	for <lists+clang-built-linux@lfdr.de>; Wed,  4 Sep 2019 23:47:04 +0200 (CEST)
Received: by mail-pf1-x43d.google.com with SMTP id x10sf152431pfr.20
        for <lists+clang-built-linux@lfdr.de>; Wed, 04 Sep 2019 14:47:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1567633623; cv=pass;
        d=google.com; s=arc-20160816;
        b=kXpsLbrKg4VCR0yllvih2lFnAnYW1QMqK2wNosrE1TCfvnwcYF1hx0HZ6LkQUmIRY4
         dsURP02jXRtT0wBj7vqnljlVPPHvzWG9e7kUxLtdMv1xPFcyAbIijmWZANtKvZ0nBH2D
         /6/+bC9q5Y15sy5ssGpVVuhAWepixBTAbfw8dcFDSacPW5+tArw305tqpJZ+10N0UIrW
         J7ShzE9Spa9BrDBklSmBDi594Y1xXmSn+daWMTCn4obwcBbOJRP4FFoZDb2dqHEhLzOH
         Eogjhxx/U7nrQnfKCQ+p1QMx82QXqOle6BDXsnbs66N5/q2FnOyi5YA2rxqh8SJPr1ow
         /76A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=OAmh/DS0AAO9ogM3XPhfqNvRxaf6F8ng0+NwwDMNuvg=;
        b=pDcDmR9NoyCzpsFMd2D5IAF2Ve4CiPMLDrwQKKap+1wsoJY0NRO/NAmkoiz+WZviJI
         pnK8CBYBTJ96oqwUKBoeyw1sUwyVQAmV3trhUfG99JKcxb+4RjB5noVinRVk/ZTvp9rN
         fHr7GU6YnD3py373vpPxt+W9FSrEihPT4WqVqYKF87I4s8JquFWD79GpSYbSuF3EM4Pe
         XdwJdZlE01m53FBw00+10j0E0LDcNeDMpvikmPnesaJ/mJ4Ph1avw3XIjpgWmVlRwh7Q
         IQMlbBPgbVuXPyEvTEIWJlUNftJbHFEADB/M2J6lY4SJcbwBehZu8JCxDfnaNorMmrKM
         diqw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of arndbergmann@gmail.com designates 209.85.160.196 as permitted sender) smtp.mailfrom=arndbergmann@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OAmh/DS0AAO9ogM3XPhfqNvRxaf6F8ng0+NwwDMNuvg=;
        b=OS2bD00QWOuftUd391zWpNADVDbFNuJxJB2Zsn+bj2DpYjo3MPRUSrJlEQ0CvMoND7
         q6GCnRlKUeP5kG9nbXQfMYQWM4N0i5gopW9gd6xvx1Ka8BEODzbMUH7yjvDmHaokRKyp
         ftIABY0JLXqTxrLw8AjJMfQ29zDBzyxT6/9vSk8LWke1KMlatN4GRiBbIq83jIrbqkzv
         OWqDlAat8tGa8C9fTktmEsyyA8ZjBkHDTuyXIeDCzxkf7xua0zFTT/2QnI7wIwmJehIM
         tvmZ5jilWve85ti8ico5Ig3yaM6ceKsGeuXT2BD8D+3wTJqx/zKfCpQB6bWC+an6G2TP
         3C+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OAmh/DS0AAO9ogM3XPhfqNvRxaf6F8ng0+NwwDMNuvg=;
        b=scl45dUeN0vOWAkMeWDyO9LsAkz8K6zBF/YgVWaNxCG8lDgzbEE8wifwvkHtfTq4hp
         XTqp7+80/CjTtGRNULsDBjMvgvsi4+JYAyB/YNJW6l8ZneS53O6+wA+Fo35wUsOy+qVE
         2tKZ6C2h5qbKAyxQFpQFOw1xmQXDdUk5FiUI6s4F5J1RHKOsn74mXn2bEfoXuF20w3g8
         w3tpN8v3hW83NN5R6aZLKcc62k5uRYri+tnV4bH+JsSHBM+DpL3a6tHe3CpKx28WSnAa
         LWdtlD6ARVQjgA8KSIaO1+Jd0cT1cEiplrTaR7ukE2osTB4vtBGpqnUvrZ+u7VF4xmlO
         dpEQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWhc8G5d8deTo7608TwZ1ZQewxLc5AxWrESMnXXlcBCDgceXo9Y
	XPj/IzuR73OqjC5WOou2VPs=
X-Google-Smtp-Source: APXvYqyKlSSzugdj4N039Hnudcy3RdkZl8O7FpGwOi3R2kJu1iGEq9f7Vag0TN5agW7eVLhZflcyiA==
X-Received: by 2002:a17:90a:fa03:: with SMTP id cm3mr367804pjb.136.1567633623301;
        Wed, 04 Sep 2019 14:47:03 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:68c8:: with SMTP id k8ls38772pgt.8.gmail; Wed, 04 Sep
 2019 14:47:02 -0700 (PDT)
X-Received: by 2002:a62:834c:: with SMTP id h73mr6873711pfe.183.1567633622849;
        Wed, 04 Sep 2019 14:47:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1567633622; cv=none;
        d=google.com; s=arc-20160816;
        b=Tn6fkLHlhb0BXV+YSOwNmF/Tz5KsV73bBoj/9Cb4DRznZRJtKNoBEi9n/ztAAx5M9n
         O46EfdqTZksdWi29jgHTNP6hs+mSHcdBCqNqCVDByXMMWqDXgWt6w4u7uyx8n1Fa8IGs
         7n5YtSdDukvRrrunOEREt+7IP3SVfrJB8HfzyTB7E/tbfCym/G/8TgL04tZnI2xwkWzT
         QvPdiyWsF9WPGcunlGU++BI5SGD54+5o183UWgBVMrJ+2H2+pu6fhrHrfjE5nJ5fOuyu
         ENYisRmRUSD0mleV2VJP/feSjXF2TiALrsqM1kgVuBTD44qntRtrdQECdPmMVqTbOZdq
         u2NA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=QM9AadYfJ62wO0eCEQsbjms/00BVZw1wT6ODRgunvt0=;
        b=E1ekjXfXdOd8BpVrTAU9sedmCsfayUVy9yHe3sTDcQX7secpGnB/TXNyhLUsufuFAZ
         6knjv7EJkL19e1mFo9uHZdc4X68DX9oIPxy6QH/jG5P0St+5mq80ANoPHZRJVYGrUEHn
         4CRezySJcX7Vi0awF25CN59Xz7u4eGjka7v+FCMKV+5ilMcclLTqSXIxEyCyUxPBj4cM
         elRR1Qez97I6eDxJMFnJvH30NbWr+BZ53ZnPYGbODsVhXdhJ35v7NmsubSQAhEfTPywK
         SiCE1wjXF5JZuNOEBlblXGNjhuLrJKLaucasMyRH5GAcRvL2Fjaufcss2UE2Izm5+xLo
         D7GA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of arndbergmann@gmail.com designates 209.85.160.196 as permitted sender) smtp.mailfrom=arndbergmann@gmail.com
Received: from mail-qt1-f196.google.com (mail-qt1-f196.google.com. [209.85.160.196])
        by gmr-mx.google.com with ESMTPS id b64si22139pfg.0.2019.09.04.14.47.02
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 Sep 2019 14:47:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of arndbergmann@gmail.com designates 209.85.160.196 as permitted sender) client-ip=209.85.160.196;
Received: by mail-qt1-f196.google.com with SMTP id l22so245543qtp.10
        for <clang-built-linux@googlegroups.com>; Wed, 04 Sep 2019 14:47:02 -0700 (PDT)
X-Received: by 2002:aed:2842:: with SMTP id r60mr281706qtd.142.1567633621974;
 Wed, 04 Sep 2019 14:47:01 -0700 (PDT)
MIME-Version: 1.0
References: <20190831162555.31887-1-yamada.masahiro@socionext.com>
In-Reply-To: <20190831162555.31887-1-yamada.masahiro@socionext.com>
From: Arnd Bergmann <arnd@arndb.de>
Date: Wed, 4 Sep 2019 23:46:45 +0200
Message-ID: <CAK8P3a0kPFojqAWqXEAcitVMjBA5ABc=rRx=zHMxXat+gCz=gA@mail.gmail.com>
Subject: Re: [PATCH v3 1/2] kbuild: refactor scripts/Makefile.extrawarn
To: Masahiro Yamada <yamada.masahiro@socionext.com>
Cc: Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, Nathan Chancellor <natechancellor@gmail.com>, 
	Sedat Dilek <sedat.dilek@gmail.com>, Michal Marek <michal.lkml@markovi.net>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of arndbergmann@gmail.com designates 209.85.160.196 as
 permitted sender) smtp.mailfrom=arndbergmann@gmail.com
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

On Sat, Aug 31, 2019 at 6:26 PM Masahiro Yamada
<yamada.masahiro@socionext.com> wrote:

> +# Some diagnostics enabled by default are noisy.
> +# Suppress them by using -Wno... except for W=1.
> +
>  ifdef CONFIG_CC_IS_CLANG
>  KBUILD_CFLAGS += -Wno-initializer-overrides
>  KBUILD_CFLAGS += -Wno-format
>  KBUILD_CFLAGS += -Wno-sign-compare
>  KBUILD_CFLAGS += -Wno-format-zero-length
>  endif

FWIW, I just found out I missed a bug that clang failed to warn about
because of the  -Wno-format. Apparently gcc warns only about type
mismatches that result in incompatible calling conventions (e.g.
int vs int64_t) but not smaller types (int, short) that get converted to an
int anyway. Passing -Wno-format turns both off.

      Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a0kPFojqAWqXEAcitVMjBA5ABc%3DrRx%3DzHMxXat%2BgCz%3DgA%40mail.gmail.com.
