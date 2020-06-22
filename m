Return-Path: <clang-built-linux+bncBDD5ZFHSSQARBBFDYT3QKGQEF77PO2Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x440.google.com (mail-wr1-x440.google.com [IPv6:2a00:1450:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id CC3872041C1
	for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jun 2020 22:16:04 +0200 (CEST)
Received: by mail-wr1-x440.google.com with SMTP id a18sf13277wrm.14
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Jun 2020 13:16:04 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1592856964; cv=pass;
        d=google.com; s=arc-20160816;
        b=SwH2BeyUwjsbZ29yii1Wqqa3mCxNuAIoTRJO31R3g8xwRzp/ITIf8d3vWWBEFXpesU
         cizjhIf4FXxyDowoakYnIGBaZubENq13yPO/aN3wN0oMv2uc1bD/mcEQBAZUhqNFm6qz
         lnD8i1ldMwFITIyU1wN9KrTYqY1IG+1YTe+5tLjgaEC5ljKtpLrv5HWBBk5a/5WOHQiP
         ZLPKfnBV780zDIv13HVzsxDFnHiKZeRzf3FnNIrpBiyOphDE8vtVCVdFvof2spOOlSAE
         M3gKd3zHoHRc3iI/+zOOpYjMYneZPGuCa5E4FjuWxbsqSMoGVvDptp0qey5Cx52NaxlT
         jMmQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:date:message-id:from
         :references:cc:to:subject:sender:dkim-signature;
        bh=7YfeQGxpeJCI+qo1ZXk7o7oZNuzJ9V6dWal2MMwUlSk=;
        b=x+vhQwNXMTlpotrTccHa9AcUoFBProEhHe81gQYVmQBo1k8MQ/XUCJtN3o1MRp9a+V
         x7AgJN2m/vYn0lP/b2UVoONrq5bLpv2GICkdU+INb9p7YOVme7SmoTdfnFBAg3mEOcLu
         EF2Nf18NcM1nNah5CfxiLc4r2YJ+5skTYkcsofgCiFAYocgwyiadSAaIUrVxuOxWHsyQ
         rYFvfzf4ZeYBbs+mlcwrI0dX8ajdfXK9YpYNYbklp7VJUesLq3E3/pUypjsUFgcBUe+7
         tZ7833SK2nyGBeLJDQeGaTEDfZRPj+DNEAvW7X7l6sDikbtdL5NedCbhkQeo01TaficV
         BrKg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of grandmaster@al2klimov.de designates 78.46.175.9 as permitted sender) smtp.mailfrom=grandmaster@al2klimov.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:mime-version
         :in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7YfeQGxpeJCI+qo1ZXk7o7oZNuzJ9V6dWal2MMwUlSk=;
        b=fnpVjIL1UhJqLULf3py66aQolj8V4gKAsWpqtq5eFMcaU/MzuoUY0hZTZLFczqnnIi
         C9OdvUJvUWoBofU8Tf/Sx2xD6jz6wwaYd7QG8CF9LMkgZL1MYR6/NE6tOJrOaIARIVAA
         07zvPNLgieAdYU1mizUYWUsjIbseCiRLfUyItjWpfLU12uSmWRY+ujdnLq7y+tsIM+RJ
         5tcyPVWygjj/0sISBHAv+4FZ8IUQKs91ADQnJeTyZsoFBtN4GTwSwT3Ne5XP1qx96zSV
         Z67efmcRE99gqBtedTVZJcLBTpX9wZGIO4p71dS+17AbjYCcYHza6SvG/haUYGZwhm9B
         Z5Tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7YfeQGxpeJCI+qo1ZXk7o7oZNuzJ9V6dWal2MMwUlSk=;
        b=qEB/EWvIO0qQytWfQfAOfE56a1Z7A2wek0JuHX19aAhD355UWl2nS5J8sVSpWk9/m4
         duhCKgM5DVFhYyE8bxwwm8Frs+VoRnomj/agOHVq5GBU5KKStWnfU+Y29uiVVQQCxp2p
         exIKYOrmz9vacu0IQ+ZSmsGkWFI5SO9pqw9xOeaOXlr1IYD72VgyHjEqwAWyeMUG5+f8
         rNK7fcYUGA3xvsGMe1dHcd7BdsFcz6hYgz18RpRGg307mk7MN5gc+15Q0fklq87p+ZYa
         uC+ivuXKKvrr9lOuXVdmdECNd1HeR9HN+W9Wa6q1lp6b2P4nK4FPCex9KaFZO0eGtdGZ
         VFCw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532Sdag8kt57rfjFHtzxP8ZQt6XYldJYmu7yYpMFNDKcrMJ6T5gp
	3NNe49hBgTmReouFPww/WBg=
X-Google-Smtp-Source: ABdhPJyscH3/d/9mCJ+GHyrRT5KHC6P4XjcIxw6diu25ojsi6x+TBXL7LbHorwOmW3+d0O5KzEJVlA==
X-Received: by 2002:a1c:2049:: with SMTP id g70mr15996629wmg.90.1592856964558;
        Mon, 22 Jun 2020 13:16:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:1d84:: with SMTP id d126ls298370wmd.1.gmail; Mon, 22 Jun
 2020 13:16:04 -0700 (PDT)
X-Received: by 2002:a7b:c041:: with SMTP id u1mr21150378wmc.56.1592856964043;
        Mon, 22 Jun 2020 13:16:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1592856964; cv=none;
        d=google.com; s=arc-20160816;
        b=WK9r6+k1mpq4s7eyyrg3qkTighkFCa6qapAMpx5fLQxESRgsLIx7SBzYdU31+WGFOa
         AGoJ8hmLXTbDPd5UoeJCAw51EYJiSexhXXmyXkLfWOqRo9nplQn6z/IFnFILzZs8J3t6
         z9fn1gxDathDsODLD+uTU4dZMiyhAWfN4PB3ZpvdzpP6u99taBCZtMG/0cTizy7MfbqU
         RbmABKp4UD3Nm8fq+n6kJ7hC4hBhwAFQ8J5GvEJuF32pSlCv5RSTxZsJfZOIYtavqnOX
         +8Ds0+q/HaU+sSS6mRG4sJIcVV7ttQrVe4VbhC05cqiwY3K5kDV2XU22qFhPgcAaF9E1
         fqeg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :date:message-id:from:references:cc:to:subject;
        bh=9A3/+gmy+wGsmfgPtdggKHNc8AGzTIpts+oxMqXIItE=;
        b=ejv4NGNXgtGj3vWDwWuhrGX7lzo0pk0AMI8dElSEsGFlpROQLDZd2ivaCQsvFMd0PC
         /LE4DywZQnY6YjR36wtOh4wiItkjBOgcbJDnu/sQdU4+GY4FIQUVBhPsQqNcKpe+h1eg
         bhcX5djfL4hjx9ogonPTa4yc9p/v3L94B99QQGh7pxC4FmcYLjgSuth7qHIdzSVLNuAT
         ImRXmN0quA3OWLh5qfJ4+71JUh2Axhfcp0rdsQHRmeFznWmPuXbyLXSH6i2WR/LUzKRT
         K7sp54RKE8VE1WzXc5+GIvsV6KrMny018LKY5sugGlqyYIGpkXfoLO08bW8mfuv+31nG
         lIUg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of grandmaster@al2klimov.de designates 78.46.175.9 as permitted sender) smtp.mailfrom=grandmaster@al2klimov.de
Received: from smtp.al2klimov.de (smtp.al2klimov.de. [78.46.175.9])
        by gmr-mx.google.com with ESMTPS id s18si26436wme.2.2020.06.22.13.16.04
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Jun 2020 13:16:04 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of grandmaster@al2klimov.de designates 78.46.175.9 as permitted sender) client-ip=78.46.175.9;
Received: from authenticated-user (PRIMARY_HOSTNAME [PUBLIC_IP])
	by smtp.al2klimov.de (Postfix) with ESMTPA id 2060F3F0CE;
	Mon, 22 Jun 2020 20:15:57 +0000 (UTC)
Subject: Re: [PATCH] Replace HTTP links with HTTPS ones: Documentation/process
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>,
 Joe Perches <joe@perches.com>
Cc: Jonathan Corbet <corbet@lwn.net>, Randy Dunlap <rdunlap@infradead.org>,
 Tony Fischetti <tony.fischetti@gmail.com>,
 Chris Packham <chris.packham@alliedtelesis.co.nz>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Nick Desaulniers <ndesaulniers@google.com>,
 "Jason A. Donenfeld" <Jason@zx2c4.com>, Arnd Bergmann <arnd@arndb.de>,
 Andrew Morton <akpm@linux-foundation.org>, Borislav Petkov <bp@suse.de>,
 Will Deacon <will@kernel.org>, "Chang S. Bae" <chang.seok.bae@intel.com>,
 Pankaj Bharadiya <pankaj.laxminarayan.bharadiya@intel.com>,
 Kees Cook <keescook@chromium.org>, Geert Uytterhoeven
 <geert@linux-m68k.org>, Jacob Huisman <jacobhuisman@kernelthusiast.com>,
 Federico Vaga <federico.vaga@vaga.pv.it>,
 =?UTF-8?Q?Jonathan_Neusch=c3=a4fer?= <j.neuschaefer@gmx.net>,
 Konstantin Ryabitsev <konstantin@linuxfoundation.org>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>
References: <20200621133630.46435-1-grandmaster@al2klimov.de>
 <CANiq72kA==S-G481VHx2qrKkJmaVK7ZOuYmin4xVr3XKB8x8ug@mail.gmail.com>
 <b7ba0047-8993-d3bf-327c-1fb70bc0282c@al2klimov.de>
 <CANiq72=Y+beqZ8Dmieo_GKbyaLN8Nf1n3bVntj_o90Cn-nADRQ@mail.gmail.com>
 <20200622070623.086f1623@lwn.net>
 <CANiq72m6BNYe2ETNXJ2oLc6Jzad6kBBJK7_dz+BwZCeqYFXZqg@mail.gmail.com>
 <adf85348dcbfbf64157e6519115b3a0c9f35df55.camel@perches.com>
 <CANiq72mSz+LWLwOCa=9YtzKaD+NjhjZdRdwFiZ-gLMbjYd=QzA@mail.gmail.com>
From: "Alexander A. Klimov" <grandmaster@al2klimov.de>
Message-ID: <b2eeb299-d43b-54db-07a8-b50f5b66e7b7@al2klimov.de>
Date: Mon, 22 Jun 2020 22:15:57 +0200
MIME-Version: 1.0
In-Reply-To: <CANiq72mSz+LWLwOCa=9YtzKaD+NjhjZdRdwFiZ-gLMbjYd=QzA@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Spamd-Bar: /
X-Original-Sender: grandmaster@al2klimov.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of grandmaster@al2klimov.de
 designates 78.46.175.9 as permitted sender) smtp.mailfrom=grandmaster@al2klimov.de
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



Am 22.06.20 um 22:06 schrieb Miguel Ojeda:
> On Mon, Jun 22, 2020 at 7:29 PM Joe Perches <joe@perches.com> wrote:
>>
>> scripts/get_maintainer.pl --self-test=3Dlinks has a reachability test
>> using wget.
>>
>> Perhaps a script like that could be used for http:// vs https://
>=20
> +1
>=20
> Not sure about `--no-check-certificate` if the goal is to move to
> "proper HTTPS". Perhaps we can try first without it and if that fails,
> print a warning and try with `--no-check-certificate` etc.
To be honest my script even blocked HTTPS->HTTP redirections, so I opt=20
for maximum security.

>=20
> Cheers,
> Miguel
>=20
Also I opt for freezing the discussion about eventual future runs of the=20
script until everything from the first run[1] has been applied.


[1]
=E2=9E=9C  linux git:(master) git stash show --shortstat
  1857 files changed, 2664 insertions(+), 2664 deletions(-)
=E2=9E=9C  linux git:(master)

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/b2eeb299-d43b-54db-07a8-b50f5b66e7b7%40al2klimov.de.
