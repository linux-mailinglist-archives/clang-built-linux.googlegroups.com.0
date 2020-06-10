Return-Path: <clang-built-linux+bncBDZ2FUU27AHRBGOBQL3QKGQEUZAKO4Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x137.google.com (mail-lf1-x137.google.com [IPv6:2a00:1450:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 779641F50A1
	for <lists+clang-built-linux@lfdr.de>; Wed, 10 Jun 2020 10:58:02 +0200 (CEST)
Received: by mail-lf1-x137.google.com with SMTP id l1sf502849lfj.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 10 Jun 2020 01:58:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591779482; cv=pass;
        d=google.com; s=arc-20160816;
        b=NHpjWdeQS+zcgpQBLxAiDjbBGocVc8V/RKKssbOwBmSqFJ1jc929RpLwBz466GzQom
         Sut6gW53n34AcxNsIZyENiTKaapI2FXauUbbl5a0J1SWv9vSEYUK07M7DPK0ACsT5tGp
         53+dT0emR3LTMdAqYdfDsRmXoFLIIckGxN75yB/6g4vs6o4fHu10JPgDOBagsLCKBvuC
         df8L2f2H+88GqXMjdlt8Oi2DasZphJbiJqDy6+0qAtrr03qLmAjqXAjn3takNRnPr1cn
         PFGE28ij/8stqtJII8JlLHnwzpWBsJ4rTmdl8T0pp57D6cTXKKSNI8+tQ6LQ6Kk2Kq71
         5IdA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:references:in-reply-to:message-id:date:subject:to:from
         :sender:dkim-signature;
        bh=b0n/eHlYdIvMlISltf43DN5pl/32OQXf71tsTeDSEiI=;
        b=LG1WOrR9PzrYtlIpkHAqL/8IJEL5GY9bdY6m8WUTMx4ZlKIjC0fx4TCrfbn1jW4DQL
         7bA5BwaZA0c2qJxC6YIeo4svqxY/cBS1kwvo3O8erHrazdXI34NRyL+R8mjWzKaIMgNI
         anV0xA6Dc4bIhCZBv50/Jx0f8NxmxmeIa83sGBZMxmmOd8DxK8GdGOAHAuu4znH2wadD
         +4dncE9HVgq4LaM1E9OvVbyOphCwUIy1PHgvUJQqKfoj/iWCuSR1mSM5LdHlm4rQNhr7
         9kCJfLkXC+7ykWgzji+TVhimHvk2UNnBCJP03X+ts74+wyj6Enw9CXCP45OqNROrKopT
         eipw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kolabnow.com header.s=dkim20160331 header.b=t95kRWpI;
       spf=pass (google.com: domain of federico.vaga@vaga.pv.it designates 95.128.36.40 as permitted sender) smtp.mailfrom=federico.vaga@vaga.pv.it
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:from:to:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=b0n/eHlYdIvMlISltf43DN5pl/32OQXf71tsTeDSEiI=;
        b=PmgeyEbtezic1zGAZBFMLacWJU7zAfwBy4of4GKVuXtmAX+9GpQyi+VmeDevsQ1/qg
         W6C9b8mH+ZlTwfJTNmh7KCUbxr4fz1/T4K3Qt1WNHhChgBILs9OUFC0y1HhNiljBQcBl
         qjJfIKYzFoJ4WMxwPf2HZE4048xTvi6i/HBjCSV9FugMb3GLdwi+sjzhMy+6GEgoXJKd
         Aj9W6NkSHEqnst0lRqqaBNA4Wpj9k91O+5p/jB1tFSrVVwyMTZKWwDtyu3exkKdc30ZT
         ml0Rxv2ZEd4+mSEciBygc9tQZB10XiBg6g4fvmiqrWmotqOckfODBg2tvsvfp0Eyp8dM
         kx0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:from:to:subject:date:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=b0n/eHlYdIvMlISltf43DN5pl/32OQXf71tsTeDSEiI=;
        b=tk0lGDdBDt8bfUvVZDGl4w4C2P7tx22sp3MXd0aXIe29rcBAocCCalVuJVp4T1Uvry
         3P6+JfVB4BczAASzfJjuHSBSG78yHVTMHd75x05ltjxwrvXUtLD7oNITD+xJXBDYkadg
         ub97+qEZtjBq/4Spor+PxL6FVMb9mjoinR03ASs7UFERN1melktmq0NW+rC8pDYtR39J
         v9wS06is8sQZB95J5s7A7sjeMQV+0N3tIANnbG+UQVeDkLYMO2n/qZsYDJSQCghwqbkG
         mRh59GyZFBWnJkTmG+LSqHUGOkTMTJgElrA2YlQu1qz2JvUlLAnX7kjksxkJQ7ZZ5cIF
         gNDA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530TdqH1ZeowkVTuQ4ziiEVAG0Zgp0rT9JsNtObj1FuYwj2Sy3+d
	7Nwsu2GZPNJg6kQ54E8Qf/s=
X-Google-Smtp-Source: ABdhPJx5q3Wt77ovyDtvWOQOfedvDZFrmww1zGJp47khQ/QAmoZhfcM8UsYZeI7nXTZ5sdlXGbnGqw==
X-Received: by 2002:a2e:9eca:: with SMTP id h10mr1254728ljk.273.1591779481992;
        Wed, 10 Jun 2020 01:58:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a19:c7d6:: with SMTP id x205ls4138832lff.0.gmail; Wed, 10
 Jun 2020 01:58:01 -0700 (PDT)
X-Received: by 2002:ac2:4a75:: with SMTP id q21mr1133514lfp.190.1591779481338;
        Wed, 10 Jun 2020 01:58:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591779481; cv=none;
        d=google.com; s=arc-20160816;
        b=Ch3pZ7fMf+umEN6KaO7Ue/blBkdh6Nj85Ep6eC/Cc7oJr0vMxcr9p5KdHVCwgrx9s4
         OV1PopaOMgUPX+zhPFgDwtYPsLrx+Gg/SEJHHaUoM9LOdLAV/jk1q9kltx+e6puEdG0e
         znN0ZqR9A/pcziUhDqeojS/M45Edr1Yh0UW8amdNxQ3wJaBoGWTbuavH7ilSwrqGyS+k
         71INSUujlKz5T3e9wXwTEE+7gLzX8gGV+XiLzKNPFwM8BgFXqwcQ2Xpil7WhdI3EjXMq
         HHM53jbGL8sAa5Y08e98kUSm4RZ5EvJ0CpyZ0WdPw5a05yQaLiEmWYGr0wFXWfzEyn0o
         F68A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:dkim-signature;
        bh=ukQu5iHRn6B2xVjPeaJqvtM0JRMk3+0xuHbTRO+Q5Bo=;
        b=Lxd54FjhCCUgh7+bF9v8dTjTVGRwQPoExk8ldxg6QaCwb9/LWpZmYm9H0RpKeVJJ2N
         2XygpTeRnfGUeU3/w+yldtEIbLY14hYSzcSHAMR5wN+hqTh0QIWVTieCOMscX1KribGW
         D+ygCtdRL4aUBHYPcLd0/ImJnDdneN8guEehzJS/zcsGRnlShU2cBeZDYB5aeAFJOtFj
         6HXui0ULSskRvP0eTMr4z+DppoI74kfiigQIIqPyAdl+ATWbbD0w2aMQYtxOYEoMhmrD
         N7SNDYWjxs9OvOSxwnrcNEWSBAalSIXeVCoZ2k+wu/IFcEfPBvHZlMUPX8tXK3VZikKq
         oIsw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kolabnow.com header.s=dkim20160331 header.b=t95kRWpI;
       spf=pass (google.com: domain of federico.vaga@vaga.pv.it designates 95.128.36.40 as permitted sender) smtp.mailfrom=federico.vaga@vaga.pv.it
Received: from mx.kolabnow.com (mx.kolabnow.com. [95.128.36.40])
        by gmr-mx.google.com with ESMTPS id 130si755414lfi.3.2020.06.10.01.58.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 Jun 2020 01:58:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of federico.vaga@vaga.pv.it designates 95.128.36.40 as permitted sender) client-ip=95.128.36.40;
Received: from localhost (unknown [127.0.0.1])
	by ext-mx-out002.mykolab.com (Postfix) with ESMTP id 422B2A1D;
	Wed, 10 Jun 2020 10:58:00 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mykolab.com
X-Spam-Flag: NO
X-Spam-Score: -1.9
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 tagged_above=-10 required=5
	tests=[BAYES_00=-1.9] autolearn=ham autolearn_force=no
Received: from mx.kolabnow.com ([127.0.0.1])
	by localhost (ext-mx-out002.mykolab.com [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id N5sj-GWGxziN; Wed, 10 Jun 2020 10:57:59 +0200 (CEST)
Received: from int-mx003.mykolab.com (unknown [10.9.13.3])
	by ext-mx-out002.mykolab.com (Postfix) with ESMTPS id 7722445E;
	Wed, 10 Jun 2020 10:57:59 +0200 (CEST)
Received: from ext-subm002.mykolab.com (unknown [10.9.6.2])
	by int-mx003.mykolab.com (Postfix) with ESMTPS id ACAB0AF0;
	Wed, 10 Jun 2020 10:57:58 +0200 (CEST)
From: Federico Vaga <federico.vaga@vaga.pv.it>
To: Jonathan Corbet <corbet@lwn.net>, "Alexander A. Klimov" <grandmaster@al2klimov.de>, Mauro Carvalho Chehab <mchehab+huawei@kernel.org>, David Sterba <dsterba@suse.com>, Randy Dunlap <rdunlap@infradead.org>, Theodore Ts'o <tytso@mit.edu>, "Darrick J. Wong" <darrick.wong@oracle.com>, Pankaj Bharadiya <pankaj.laxminarayan.bharadiya@intel.com>, Kees Cook <keescook@chromium.org>, Jacob Huisman <jacobhuisman@kernelthusiast.com>, Jonathan =?ISO-8859-1?Q?Neusch=E4fer?= <j.neuschaefer@gmx.net>, Rob Herring <robh@kernel.org>, linux-doc@vger.kernel.org, linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com, "Alexander A. Klimov" <grandmaster@al2klimov.de>
Subject: Re: [PATCH] Replace HTTP links with HTTPS ones: Documentation/translations/it_IT
Date: Wed, 10 Jun 2020 10:57:57 +0200
Message-ID: <4235548.LvFx2qVVIh@harkonnen>
In-Reply-To: <20200609201241.81518-1-grandmaster@al2klimov.de>
References: <20200609201241.81518-1-grandmaster@al2klimov.de>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: federico.vaga@vaga.pv.it
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kolabnow.com header.s=dkim20160331 header.b=t95kRWpI;
       spf=pass (google.com: domain of federico.vaga@vaga.pv.it designates
 95.128.36.40 as permitted sender) smtp.mailfrom=federico.vaga@vaga.pv.it
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

On Tuesday, June 9, 2020 10:12:41 PM CEST Alexander A. Klimov wrote:
> Rationale:
> Reduces attack surface on kernel devs opening the links for MITM
> as HTTPS traffic is much harder to manipulate.
>=20
> Deterministic algorithm:
> For each file:
>   For each line:
>     If doesn't contain `\bxmlns\b`:
>       For each link, `\bhttp://[^# \t\r\n]*(?:\w|/)`:
>         If both the HTTP and HTTPS versions
>         return 200 OK and serve the same content:
>           Replace HTTP with HTTPS.
>=20
> Signed-off-by: Alexander A. Klimov <grandmaster@al2klimov.de>
> ---
>  .../translations/it_IT/admin-guide/README.rst      |  2 +-
>  .../translations/it_IT/doc-guide/parse-headers.rst |  2 +-
>  .../translations/it_IT/doc-guide/sphinx.rst        | 10 +++++-----
>  .../translations/it_IT/process/2.Process.rst       | 12 ++++++------
>  .../translations/it_IT/process/3.Early-stage.rst   |  2 +-
>  .../translations/it_IT/process/4.Coding.rst        |  4 ++--
>  .../it_IT/process/7.AdvancedTopics.rst             |  8 ++++----
>  .../translations/it_IT/process/8.Conclusion.rst    | 14 +++++++-------
>  .../translations/it_IT/process/adding-syscalls.rst |  4 ++--
>  .../translations/it_IT/process/changes.rst         |  6 +++---
>  .../translations/it_IT/process/clang-format.rst    |  2 +-
>  .../translations/it_IT/process/coding-style.rst    |  2 +-
>  Documentation/translations/it_IT/process/howto.rst |  2 +-
>  .../it_IT/process/maintainer-pgp-guide.rst         |  2 +-
>  .../it_IT/process/submitting-patches.rst           |  4 ++--
>  .../it_IT/process/volatile-considered-harmful.rst  |  4 ++--
>  16 files changed, 40 insertions(+), 40 deletions(-)
>=20


> diff --git a/Documentation/translations/it_IT/doc-guide/sphinx.rst
> b/Documentation/translations/it_IT/doc-guide/sphinx.rst index
> f1ad4504b734..0aaeb0297661 100644
> --- a/Documentation/translations/it_IT/doc-guide/sphinx.rst
> +++ b/Documentation/translations/it_IT/doc-guide/sphinx.rst
> @@ -14,7 +14,7 @@ Per generare la documentazione in HTML o PDF, usate
> comandi ``make htmldocs`` o ``make pdfdocs``. La documentazione cos=C3=AC
> generata sar=C3=A0 disponibile nella cartella ``Documentation/output``.
>=20
> -.. _Sphinx: http://www.sphinx-doc.org/
> +.. _Sphinx: https://www.sphinx-doc.org/
>  .. _reStructuredText: http://docutils.sourceforge.net/rst.html

It is not part of the deterministic algorithm but you may consider this as=
=20
well

-.. _reStructuredText: http://docutils.sourceforge.net/rst.html
+.. _reStructuredText: https://docutils.sourceforge.io/rst.html




--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/4235548.LvFx2qVVIh%40harkonnen.
