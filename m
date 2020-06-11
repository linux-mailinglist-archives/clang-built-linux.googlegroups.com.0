Return-Path: <clang-built-linux+bncBAABBZ5BRT3QKGQEQY3WX6A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x740.google.com (mail-qk1-x740.google.com [IPv6:2607:f8b0:4864:20::740])
	by mail.lfdr.de (Postfix) with ESMTPS id CBFDC1F736A
	for <lists+clang-built-linux@lfdr.de>; Fri, 12 Jun 2020 07:21:44 +0200 (CEST)
Received: by mail-qk1-x740.google.com with SMTP id 16sf7120149qka.15
        for <lists+clang-built-linux@lfdr.de>; Thu, 11 Jun 2020 22:21:44 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591939304; cv=pass;
        d=google.com; s=arc-20160816;
        b=QvGL4zEa22koeMHYX1q2ast+Y91r+F/PFxufKUhJ9SthgtHInuWk6NkWLczNQ/QAxy
         BmPyeV1kt2oxaZQnQfo0f4lyDHuVK8XliZH7V12oL+M64cZOxo52Fy412gWsG2gPz/qe
         W4fkbB4dWeEb5bFJbAbNjX2vOKSP02NDaospSpfZx6mT4ylRt3jEk5FXUBlK9bYZOOOj
         9vN4ENu9ub1jtmGly5aE8yL3pCzjOiqn1JDTwcn7x+EzmsnZGOu/LGyAYKnYbU3GeSJm
         JDJN3UV2IxjxoD5CDVd5EsMnOL0on+Ad3k8wxF34tBAfrUqGyWVEuHiPgsO1aNU896Lm
         /kew==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:date:message-id
         :references:cc:to:from:subject:sender:dkim-signature;
        bh=GvsEuAAiac3MsRs0uGz10b8iDSXvEn5yauMuLpl2sLc=;
        b=IwqtPxzPdYU1RXYPUNuI7GyN8G5yzjKoK/qyXD2AvsxTBl64i/ol/XGQW3ufwGaofI
         XJthJS62GPH5XqSfNoKzVwzR2RgWUi+NUXcpSdoBuASQabJ969SDs2BgBFnX+TaQfHzF
         hxjsUUllG110pRVaOx/UGxLO5Vcznr+SMOPv9s6/joVPkEV7/AIlLHfRUNLe2I/4HiYf
         io/jLZC6WUxm9xEW6vdKUP0/kq1qc4ZVBP8iDOOrH5dswcfabTCMngRFMoI8hVu7cEG3
         /x/Yv7KA4iiM32b+Pm0MrpOFzQrkV6IOCizyZNtJpKPDmDgvrb9iX7V+AdKgwqFF89hV
         2FuQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of grandmaster@al2klimov.de designates 2a01:4f8:c0c:1465::1 as permitted sender) smtp.mailfrom=grandmaster@al2klimov.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:from:to:cc:references:message-id:date:mime-version
         :in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GvsEuAAiac3MsRs0uGz10b8iDSXvEn5yauMuLpl2sLc=;
        b=ogdKEGPFGZODdGS3FUMYpvjQimZ9wF8Gr96KDnDSE/BxMKf0ObqXqKzbkmqPunr9pe
         k0grxjlnyHNjSMcT6hgnPHlZDMjGWQuX5bv4xPFsXTFRVrdjnaeK8kMh89wPI3LFXte6
         8mXFqzs+Wnt8xMzWzbdi9b6bm2S74yqk7VBLy0KWu4Q/sHQLatdqHKSh4c2SEZ40/b9l
         K5WAJlHlrFgJyrHhuuBGbAK3Z/pbsh/zXSDdCGfZ/D55kRR2Jb+dvM3LH+uoOPEcrxcE
         3gPJc3PxmvhJ+2onOVxGl1TyVQ8lJLhw+p6DM3YwiQufhHDK/5xTm3oSrXQQh1Yk0KKC
         sDnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:from:to:cc:references:message-id
         :date:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=GvsEuAAiac3MsRs0uGz10b8iDSXvEn5yauMuLpl2sLc=;
        b=PH1yCUwLtOEvK/jxycimRg122JsNUVpuarop7RVyU/h1kSOitjcw4JHnyI+nEeTRbr
         QCltOOjk1lRyTOhYAso2g8qQPKaRoCtBcsrc/qp6PnUbd0XQJsE6bJWYi/xPM67Ik1UL
         IgBEk+pcze2x1YXFrDyqQ7LkGrea+YXMhuCwiqRdlRdCWzTB6a+jtqotOa+2nbgDcnbj
         sNZQqv1efvymSOljNuQUUykJcrIRcukzlSq12XdoGS30YloBK8t+zmpWu/lNpisRVyrk
         intHhDxIvvSJW/Uukm9a0yJRo3UusBMM9vEnz5ULZBXTxm5cAzfSZxHKvHbRCYrMyXxJ
         7V2Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532LbXf4OFD/lZyHgy+Dxm1QOQEABAAExha5G4SBCyCY3ckiWLJg
	lRydeNTd1cXVMhPeLTF60Cw=
X-Google-Smtp-Source: ABdhPJyytDM6eg09PGyLDmvhZ7XiKRPqNR6gyNFfAMTIHVcZs6NzuX2hKCLOGvcgg6gBnBPZDn/T3A==
X-Received: by 2002:ac8:7552:: with SMTP id b18mr1458382qtr.150.1591939303781;
        Thu, 11 Jun 2020 22:21:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:f8a:: with SMTP id b10ls2161302qkn.9.gmail; Thu, 11
 Jun 2020 22:21:43 -0700 (PDT)
X-Received: by 2002:a05:620a:1e:: with SMTP id j30mr1217571qki.78.1591939303407;
        Thu, 11 Jun 2020 22:21:43 -0700 (PDT)
Received: by 2002:a05:620a:1007:b029:e6:9584:d5fd with SMTP id z7-20020a05620a1007b02900e69584d5fdmsqkj;
        Thu, 11 Jun 2020 09:05:44 -0700 (PDT)
X-Received: by 2002:a17:907:270d:: with SMTP id w13mr9553436ejk.134.1591891544109;
        Thu, 11 Jun 2020 09:05:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591891544; cv=none;
        d=google.com; s=arc-20160816;
        b=gWvNfHfJyFi9B3oSSPqLniQbr0jyVgVgVQxB/NbXztvPkfwj+r2YQPvKHefOTZ+QTe
         XM4gBNdD2cNQBbM0RVWVmBGH3bRZsMcLoMM1ng0+jZmBSqkG24ZQuFwNH603Md2fhr0i
         IA/lBo4C+c+d0WN0bdh5TtPjLnhR+xcMWEwEAoNkyaJofoBiNsXi6sQdAzkVSQTlyKCS
         W4nS8flZQiQHPg438aTXqk0gmcXz3DPgHQ/r3TpLndM/vAL8chN8p6X1xVQ8WYztl2AL
         m1v88b1KW8fC6bjPti1mgGzV4tuEPFdRKfHcfk3YPkCt0j8eumlV3v8XcxUnplbwMoY5
         Px0g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :date:message-id:references:cc:to:from:subject;
        bh=bfUwgsEDUiWeiAiP8C7smbXi3jeVWFie70PU+w9+MwE=;
        b=e79cJ6Go1pys73a2rbmozhfE8nGMR9JaitwBs44BQ/D8Z36YP0q38BCVI6pyCfd4FU
         mW1se6t1/uuy68gMknmA7cnWYoiEYm7skZL/wqgo7zjUG/HQ8GNttD88LVQvqgykOOI7
         PUPXZ4i5L0OUFz7vyYkhmFYejR4BnorILhl/qX8/qUvPJPgKszBV362VNFzspK755MMs
         rVJVyba7IFZ5sZ/qdIrcEQrMkGxC/KU9t8wUrXKQU2+bh/IQU6CisO/RBfCh+yks5ELi
         WBSYNXd4T/K6EjfxO+s3tnBxaMgD1jmoMr4DESS53Mu/VQZWfbwNt5TNur51Ixkmx4e4
         LvkA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of grandmaster@al2klimov.de designates 2a01:4f8:c0c:1465::1 as permitted sender) smtp.mailfrom=grandmaster@al2klimov.de
Received: from smtp.al2klimov.de (smtp.al2klimov.de. [2a01:4f8:c0c:1465::1])
        by gmr-mx.google.com with ESMTPS id b6si147732edr.3.2020.06.11.09.05.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Jun 2020 09:05:44 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of grandmaster@al2klimov.de designates 2a01:4f8:c0c:1465::1 as permitted sender) client-ip=2a01:4f8:c0c:1465::1;
Received: from authenticated-user (PRIMARY_HOSTNAME [PUBLIC_IP])
	by smtp.al2klimov.de (Postfix) with ESMTPA id 8F9F7FD7DD;
	Thu, 11 Jun 2020 16:05:39 +0000 (UTC)
Subject: Re: [PATCH] Replace HTTP links with HTTPS ones:
 Documentation/translations/it_IT
From: "Alexander A. Klimov" <grandmaster@al2klimov.de>
To: Kees Cook <keescook@chromium.org>
Cc: Federico Vaga <federico.vaga@vaga.pv.it>, Jonathan Corbet
 <corbet@lwn.net>, Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 David Sterba <dsterba@suse.com>, Randy Dunlap <rdunlap@infradead.org>,
 Theodore Ts'o <tytso@mit.edu>, "Darrick J. Wong" <darrick.wong@oracle.com>,
 Pankaj Bharadiya <pankaj.laxminarayan.bharadiya@intel.com>,
 Jacob Huisman <jacobhuisman@kernelthusiast.com>,
 =?UTF-8?Q?Jonathan_Neusch=c3=a4fer?= <j.neuschaefer@gmx.net>,
 Rob Herring <robh@kernel.org>, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com,
 Linus Torvalds <torvalds@linux-foundation.org>
References: <20200609201241.81518-1-grandmaster@al2klimov.de>
 <4235548.LvFx2qVVIh@harkonnen>
 <cd260d03-27a4-7794-f58f-21e8e0be9755@al2klimov.de>
 <202006102009.CB14D7F@keescook>
 <8ee16c38-e28b-b4e6-ed30-55a59e216b49@al2klimov.de>
Message-ID: <4196faa9-64d3-481b-9c15-bb4abb237c18@al2klimov.de>
Date: Thu, 11 Jun 2020 18:05:37 +0200
MIME-Version: 1.0
In-Reply-To: <8ee16c38-e28b-b4e6-ed30-55a59e216b49@al2klimov.de>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Spamd-Bar: /
X-Original-Sender: grandmaster@al2klimov.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of grandmaster@al2klimov.de
 designates 2a01:4f8:c0c:1465::1 as permitted sender) smtp.mailfrom=grandmaster@al2klimov.de
Precedence: list
Mailing-list: list clang-built-linux@googlegroups.com; contact clang-built-linux+owners@googlegroups.com
List-ID: <clang-built-linux.googlegroups.com>
X-Google-Group-Id: 357212215037
List-Post: <https://groups.google.com/group/clang-built-linux/post>, <mailto:clang-built-linux@googlegroups.com>
List-Help: <https://groups.google.com/support/>, <mailto:clang-built-linux+help@googlegroups.com>
List-Archive: <https://groups.google.com/group/clang-built-linux
List-Subscribe: <https://groups.google.com/group/clang-built-linux/subscribe>, <mailto:clang-built-linux+subscribe@googlegroups.com>
List-Unsubscribe: <mailto:googlegroups-manage+357212215037+unsubscribe@googlegroups.com>,
 <https://groups.google.com/group/clang-built-linux/subscribe>



Am 11.06.20 um 09:01 schrieb Alexander A. Klimov:
>=20
>=20
> Am 11.06.20 um 05:12 schrieb Kees Cook:
>> On Wed, Jun 10, 2020 at 08:11:39PM +0200, Alexander A. Klimov wrote:
>>> Am 10.06.20 um 10:57 schrieb Federico Vaga:
>>>> On Tuesday, June 9, 2020 10:12:41 PM CEST Alexander A. Klimov wrote:
>>>>> Rationale:
>>>>> Reduces attack surface on kernel devs opening the links for MITM
>>>>> as HTTPS traffic is much harder to manipulate.
>>>>>
>>>>> Deterministic algorithm:
>>>>> For each file:
>>>>> =C2=A0=C2=A0=C2=A0 For each line:
>>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 If doesn't contain `\bxmlns\b`:
>>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 For each link, `\bhttp://[=
^# \t\r\n]*(?:\w|/)`:
>>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 If both the HT=
TP and HTTPS versions
>>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return 200 OK =
and serve the same content:
>>>>> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Re=
place HTTP with HTTPS.
>>
>> Is this script somewhere we can read it? (It's easier usually to review
>> the code for bulk changes than the bulk changes themselves.)
> Is any of you familiar with Golang?
>=20
> @Maintainers Would any of you actually review like this? If yes, is the=
=20
> pseudo-code not enough?
>=20
>>
>>>>>
>>>>> Signed-off-by: Alexander A. Klimov <grandmaster@al2klimov.de>
>>>>> ---
>>>>> =C2=A0=C2=A0 .../translations/it_IT/admin-guide/README.rst=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 |=C2=A0 2 +-
>>>>> =C2=A0=C2=A0 .../translations/it_IT/doc-guide/parse-headers.rst |=C2=
=A0 2 +-
>>>>> =C2=A0=C2=A0 .../translations/it_IT/doc-guide/sphinx.rst=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | 10 +++++-----
>>>>> =C2=A0=C2=A0 .../translations/it_IT/process/2.Process.rst=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 | 12=20
>>>>> ++++++------
>>>>> =C2=A0=C2=A0 .../translations/it_IT/process/3.Early-stage.rst=C2=A0=
=C2=A0 |=C2=A0 2 +-
>>>>> =C2=A0=C2=A0 .../translations/it_IT/process/4.Coding.rst=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0 4 ++--
>>>>> =C2=A0=C2=A0 .../it_IT/process/7.AdvancedTopics.rst=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0 8 ++++----
>>>>> =C2=A0=C2=A0 .../translations/it_IT/process/8.Conclusion.rst=C2=A0=C2=
=A0=C2=A0 | 14=20
>>>>> +++++++-------
>>>>> =C2=A0=C2=A0 .../translations/it_IT/process/adding-syscalls.rst |=C2=
=A0 4 ++--
>>>>> =C2=A0=C2=A0 .../translations/it_IT/process/changes.rst=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0 6 +++---
>>>>> =C2=A0=C2=A0 .../translations/it_IT/process/clang-format.rst=C2=A0=C2=
=A0=C2=A0 |=C2=A0 2 +-
>>>>> =C2=A0=C2=A0 .../translations/it_IT/process/coding-style.rst=C2=A0=C2=
=A0=C2=A0 |=C2=A0 2 +-
>>>>> =C2=A0=C2=A0 Documentation/translations/it_IT/process/howto.rst |=C2=
=A0 2 +-
>>>>> =C2=A0=C2=A0 .../it_IT/process/maintainer-pgp-guide.rst=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0 2 +-
>>>>> =C2=A0=C2=A0 .../it_IT/process/submitting-patches.rst=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=C2=A0 4 ++--
>>>>> =C2=A0=C2=A0 .../it_IT/process/volatile-considered-harmful.rst=C2=A0 =
|=C2=A0 4 ++--
>>>>> =C2=A0=C2=A0 16 files changed, 40 insertions(+), 40 deletions(-)
>>>>>
>>>>
>>>>
>>>>> diff --git a/Documentation/translations/it_IT/doc-guide/sphinx.rst
>>>>> b/Documentation/translations/it_IT/doc-guide/sphinx.rst index
>>>>> f1ad4504b734..0aaeb0297661 100644
>>>>> --- a/Documentation/translations/it_IT/doc-guide/sphinx.rst
>>>>> +++ b/Documentation/translations/it_IT/doc-guide/sphinx.rst
>>>>> @@ -14,7 +14,7 @@ Per generare la documentazione in HTML o PDF, usate
>>>>> comandi ``make htmldocs`` o ``make pdfdocs``. La documentazione cos=
=C3=AC
>>>>> generata sar=C3=A0 disponibile nella cartella ``Documentation/output`=
`.
>>>>>
>>>>> -.. _Sphinx: http://www.sphinx-doc.org/
>>>>> +.. _Sphinx: https://www.sphinx-doc.org/
>>>>> =C2=A0=C2=A0 .. _reStructuredText: http://docutils.sourceforge.net/rs=
t.html
>>>>
>>>> It is not part of the deterministic algorithm but you may consider=20
>>>> this as
>>>> well
>>
>> Why did it not match?
> I didn't log that link-by-link. Maybe because I also didn't follow plain=
=20
> HTTP redirects while opening HTTPS links. Maybe it even matched, but was=
=20
> added after I made the changes.
>=20
> Anyway, I'll maybe cover it in round II.
>=20
>>
>>>>
>>>> -.. _reStructuredText: http://docutils.sourceforge.net/rst.html
>>>> +.. _reStructuredText: https://docutils.sourceforge.io/rst.html
>>>>
>>> I'll think about analyzing such almost-matches, extending the algo and
>>> supplying a second round of patches once all [1] of this round arrive i=
n
>>> torvalds/master.
>>>
>>> [1]:
>>>
>>> =E2=9E=9C=C2=A0 linux git:(feature/https-links-3) =E2=9C=97 git diff --=
shortstat
>>> =C2=A0 1963 files changed, 2882 insertions(+), 2882 deletions(-)
>>> =E2=9E=9C=C2=A0 linux git:(feature/https-links-3) =E2=9C=97
>>
>> Is there a reason to do this one language at a time instead of just
>> doing everything in one go?
And yes, *at the moment* I'm patching one subsystem at a time. And the=20
discussion around 93431e0607e5 and all of its prototypes shown that it=20
was smarter than supplying thousands of patches at once.

Now I've (hopefully) made and corrected all possible mistakes in two=20
patches and clearly know how to continue with the next thousands so the=20
maintainers won't have anything to comply about.

Once the doc subsystems patches get applied (or even reach=20
torvalds/master) I'll submit maybe ten patches at once. And the more=20
maintainers apply them...

> There are two reasons:
>=20
> * Jonathan said like theoretically you could give it all at once to=20
> Linus, but practically I'd not do that, please split by subsystem
> * Linus *didn't even respond* (at least I didn't receive anything) to my=
=20
> catch-them-all patch at all, not even like please not as .gz attachment=
=20
> or please split by subsystem >
>>

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/4196faa9-64d3-481b-9c15-bb4abb237c18%40al2klimov.de.
