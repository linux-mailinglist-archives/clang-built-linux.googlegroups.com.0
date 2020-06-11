Return-Path: <clang-built-linux+bncBAABBZ5BRT3QKGQEQY3WX6A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83e.google.com (mail-qt1-x83e.google.com [IPv6:2607:f8b0:4864:20::83e])
	by mail.lfdr.de (Postfix) with ESMTPS id 267E31F736D
	for <lists+clang-built-linux@lfdr.de>; Fri, 12 Jun 2020 07:21:45 +0200 (CEST)
Received: by mail-qt1-x83e.google.com with SMTP id y7sf6695111qti.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 11 Jun 2020 22:21:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591939304; cv=pass;
        d=google.com; s=arc-20160816;
        b=sIfLsPfAbKcOgZ//d/AUqH73uuTi4kFYRPU5L/HIJ0yPChZbGn3k23hpjBeBcRmDkr
         2om4hEYZOr+SpEDxEh862p/Jg7TWKb7k3arDxm4cR3EAOLUA5xTgV1eVrWb5p4AAyHtk
         SqJECVX3a/le+lxxpnRNLZ8eFvoNprabS52OZ4In1X17IttCy8zQUlWBmHBrAXvYzPnN
         R2qXfYtbV9wS0ntp2sr7hBqZx0zyF4ONHw+AqqGhxl7JC9OINT/u64lEMPHx2Rx2nC+T
         V+Olk6QBZ/ux7OtAH7LG6c/Lo3eWEt4HOrBAXRSCNshZUSnrPBIxjYptAYNsSd/25VUy
         DPGQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:date:message-id:from
         :references:cc:to:subject:sender:dkim-signature;
        bh=2CmODmRCSFf7aMZesvnE5pp6TLRjuIVqltb91+Ad5Zw=;
        b=qoTzG6vZS5aYi+ProcT7bPPwwr1sOIB1MUsPizgp5hMSke6iih5AKQF0kpVmm+A0bQ
         qWw3grZHT/3fv8ELe+XxgsvnI+0ZWA6cXjR2vtUtDufo4P22COdq8vwXdhMQkqQRfOLh
         ll7m8b6GJ+G6RQoex3dKzWL4gnIlIfMDUXJIZzbrrcUUUeH9RVnClmo0WeBl2e4n6rCt
         CwqetG7jVT5IU8OSHOM7RpkkLwyvh3mVIdq7Vy/2TjCrzrrxivYBukfhT8UYAv28yj7l
         w7SeNs2AJ1WwScBoluT52RCd4Wws5PtwchKc9Mr4c6uzXfJS4W2ClZHfTXIdPJxkxvOf
         38jQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of grandmaster@al2klimov.de designates 2a01:4f8:c0c:1465::1 as permitted sender) smtp.mailfrom=grandmaster@al2klimov.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:mime-version
         :in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=2CmODmRCSFf7aMZesvnE5pp6TLRjuIVqltb91+Ad5Zw=;
        b=FD0yQOtu778TpAFJr/qT3XEWjRFsefjXizCWh1g2VJzB07low5sz9tMEcVcxHEydon
         ynLW8Q/6mHEUdpIv5lS/tkYi3CgWod1K3MnkJTyS9hRiIy6SAgqFg7UzSC/UBFp9cUzX
         ZW5HrjqExgteBn9ZxD7AUibPaS6L21gKgTHpfm2PmRhpgQJNstx6OegAT+3ylmW7m+gJ
         XxR5cMfbaUoEe3xca1EagkfNYRNP0BKvdcmEBW0DkTDHGRFd0ZObJsy4ZHc8HMbMDQT1
         2GTL0qY3ZuPCt3XWvMToQWq8QuAyJ8ThKycVDdn9ULejV6rIJ3vFaW/1UlEY0eO2w85K
         d/BA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=2CmODmRCSFf7aMZesvnE5pp6TLRjuIVqltb91+Ad5Zw=;
        b=lzuYndW5Dmkt4qOBPBQBUjkHtT/UURchPbsFYPMr93mgtEULAwZiwiuwAohUF5ZJiV
         Jnv3rX9t3SEMY/SoDfS30ojePC/DQWYbKUaa2Gnrtg0o1Zlq8Pr/tim2PoMCvTP6aaX1
         0QbZxh1EOUgto7MH7oHwf/WwE+TVMW6c2LAZVhN8FB5UuxecqEXtuaAx/hMEPbP4Vw+Z
         M57RrAypSqSLX9kxuZwuY4XLShdsJgnu60MXL0Sd5pcieqoU9TukprRIuy/sFE+aNQ3I
         QBBfX95URBs+jpgeqwKaY8O49rFa/IXRLua+v5KYZ6Z/hJXdmjeEHM7bN6l04PkCghBu
         09vA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530opnuuUi56KcwDN6d2Jd8d5ohuoG0nSek7/BL3/M/Gfa3sQ+Sw
	NPRXEYyKHJD92opuFdDjPfs=
X-Google-Smtp-Source: ABdhPJxitLsBtE8s2bizUE73igPgzhaDT9mjERgcnaFsFkjkQje4kNxyNhCx4B1BXyA6fHejWmdOww==
X-Received: by 2002:a37:9581:: with SMTP id x123mr1286505qkd.163.1591939303830;
        Thu, 11 Jun 2020 22:21:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:21d0:: with SMTP id m16ls1826980qtc.11.gmail; Thu, 11
 Jun 2020 22:21:43 -0700 (PDT)
X-Received: by 2002:ac8:6d1b:: with SMTP id o27mr1446486qtt.102.1591939303481;
        Thu, 11 Jun 2020 22:21:43 -0700 (PDT)
Received: by 2002:a05:620a:22ca:b029:f2:356:9762 with SMTP id o10-20020a05620a22cab02900f203569762msqki;
        Thu, 11 Jun 2020 00:01:34 -0700 (PDT)
X-Received: by 2002:a05:651c:550:: with SMTP id q16mr1194811ljp.188.1591858894288;
        Thu, 11 Jun 2020 00:01:34 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591858894; cv=none;
        d=google.com; s=arc-20160816;
        b=mSHDnjWGpKKautTPUz6NXdFzOh+57X0N7D2nNILnGJO8RpY6cpKfFAJuVetTNOoPbi
         IERG4R43SxJI70EFXmIoplIIJ9rqh8pLmj0mH9868N/IqQKqwQ0loCEM9TNfrzE5v6gB
         tLWZUH3tEyKlSMyrTf6BsUiNnyocClPC7MJbncHH76E3mravQ4wy2V6cUvXFqVHbEIS5
         LzR3WMoK9TsRlj1gVMxLB8SL1dGUbEXRvmv+4adJpN5j7lZpSI53vJ4zxF/pUnmMi0vf
         DqM2jIaj60VWw4makrMS0Dy2CVJbtm0MZ4zAayLvEi/tu6obZwJyIsZ4qAxqAczKXt3W
         k8YQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :date:message-id:from:references:cc:to:subject;
        bh=gYuo6IEmd3jIgPKAPskpfITBNKdJoGRg73sXwGPKxOk=;
        b=LvaK/sV7cnR4wacriF3PWFwkCIW6u/0vsP4USQaqwm8upKhItrYvQ+optX1YwvGyNh
         meeX9jV2F/1JPl98V3m7etA2DUt4ZEWRD/09izVTIEOGQEIYlmecLhme5I5CiJ88rolA
         YwQTvpBPof+RkcmBUILWq0CeRQUFLF3IjSFdGNnSrosl4W9PMv48mYR/pmoaFH8nOOKY
         Dq3SlZi3wmuMHTr8R51Kv61V4W53iR+E+3QXVngdbKB3o2JAwPKrr30HUi0Cg5XkxpF5
         FRNry2vzmLolQ3ip8/T/TvrVCgkQoKwAvHtUOBtixaYq9mmsvCFL8P70D1yTRYH9nspE
         qvzg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of grandmaster@al2klimov.de designates 2a01:4f8:c0c:1465::1 as permitted sender) smtp.mailfrom=grandmaster@al2klimov.de
Received: from smtp.al2klimov.de (smtp.al2klimov.de. [2a01:4f8:c0c:1465::1])
        by gmr-mx.google.com with ESMTPS id j14si100736lji.8.2020.06.11.00.01.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Jun 2020 00:01:34 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of grandmaster@al2klimov.de designates 2a01:4f8:c0c:1465::1 as permitted sender) client-ip=2a01:4f8:c0c:1465::1;
Received: from authenticated-user (PRIMARY_HOSTNAME [PUBLIC_IP])
	by smtp.al2klimov.de (Postfix) with ESMTPA id 8EB87FD7E3;
	Thu, 11 Jun 2020 07:01:29 +0000 (UTC)
Subject: Re: [PATCH] Replace HTTP links with HTTPS ones:
 Documentation/translations/it_IT
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
From: "Alexander A. Klimov" <grandmaster@al2klimov.de>
Message-ID: <8ee16c38-e28b-b4e6-ed30-55a59e216b49@al2klimov.de>
Date: Thu, 11 Jun 2020 09:01:27 +0200
MIME-Version: 1.0
In-Reply-To: <202006102009.CB14D7F@keescook>
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



Am 11.06.20 um 05:12 schrieb Kees Cook:
> On Wed, Jun 10, 2020 at 08:11:39PM +0200, Alexander A. Klimov wrote:
>> Am 10.06.20 um 10:57 schrieb Federico Vaga:
>>> On Tuesday, June 9, 2020 10:12:41 PM CEST Alexander A. Klimov wrote:
>>>> Rationale:
>>>> Reduces attack surface on kernel devs opening the links for MITM
>>>> as HTTPS traffic is much harder to manipulate.
>>>>
>>>> Deterministic algorithm:
>>>> For each file:
>>>>     For each line:
>>>>       If doesn't contain `\bxmlns\b`:
>>>>         For each link, `\bhttp://[^# \t\r\n]*(?:\w|/)`:
>>>>           If both the HTTP and HTTPS versions
>>>>           return 200 OK and serve the same content:
>>>>             Replace HTTP with HTTPS.
>=20
> Is this script somewhere we can read it? (It's easier usually to review
> the code for bulk changes than the bulk changes themselves.)
Is any of you familiar with Golang?

@Maintainers Would any of you actually review like this? If yes, is the=20
pseudo-code not enough?

>=20
>>>>
>>>> Signed-off-by: Alexander A. Klimov <grandmaster@al2klimov.de>
>>>> ---
>>>>    .../translations/it_IT/admin-guide/README.rst      |  2 +-
>>>>    .../translations/it_IT/doc-guide/parse-headers.rst |  2 +-
>>>>    .../translations/it_IT/doc-guide/sphinx.rst        | 10 +++++-----
>>>>    .../translations/it_IT/process/2.Process.rst       | 12 ++++++-----=
-
>>>>    .../translations/it_IT/process/3.Early-stage.rst   |  2 +-
>>>>    .../translations/it_IT/process/4.Coding.rst        |  4 ++--
>>>>    .../it_IT/process/7.AdvancedTopics.rst             |  8 ++++----
>>>>    .../translations/it_IT/process/8.Conclusion.rst    | 14 +++++++----=
---
>>>>    .../translations/it_IT/process/adding-syscalls.rst |  4 ++--
>>>>    .../translations/it_IT/process/changes.rst         |  6 +++---
>>>>    .../translations/it_IT/process/clang-format.rst    |  2 +-
>>>>    .../translations/it_IT/process/coding-style.rst    |  2 +-
>>>>    Documentation/translations/it_IT/process/howto.rst |  2 +-
>>>>    .../it_IT/process/maintainer-pgp-guide.rst         |  2 +-
>>>>    .../it_IT/process/submitting-patches.rst           |  4 ++--
>>>>    .../it_IT/process/volatile-considered-harmful.rst  |  4 ++--
>>>>    16 files changed, 40 insertions(+), 40 deletions(-)
>>>>
>>>
>>>
>>>> diff --git a/Documentation/translations/it_IT/doc-guide/sphinx.rst
>>>> b/Documentation/translations/it_IT/doc-guide/sphinx.rst index
>>>> f1ad4504b734..0aaeb0297661 100644
>>>> --- a/Documentation/translations/it_IT/doc-guide/sphinx.rst
>>>> +++ b/Documentation/translations/it_IT/doc-guide/sphinx.rst
>>>> @@ -14,7 +14,7 @@ Per generare la documentazione in HTML o PDF, usate
>>>> comandi ``make htmldocs`` o ``make pdfdocs``. La documentazione cos=C3=
=AC
>>>> generata sar=C3=A0 disponibile nella cartella ``Documentation/output``=
.
>>>>
>>>> -.. _Sphinx: http://www.sphinx-doc.org/
>>>> +.. _Sphinx: https://www.sphinx-doc.org/
>>>>    .. _reStructuredText: http://docutils.sourceforge.net/rst.html
>>>
>>> It is not part of the deterministic algorithm but you may consider this=
 as
>>> well
>=20
> Why did it not match?
I didn't log that link-by-link. Maybe because I also didn't follow plain=20
HTTP redirects while opening HTTPS links. Maybe it even matched, but was=20
added after I made the changes.

Anyway, I'll maybe cover it in round II.

>=20
>>>
>>> -.. _reStructuredText: http://docutils.sourceforge.net/rst.html
>>> +.. _reStructuredText: https://docutils.sourceforge.io/rst.html
>>>
>> I'll think about analyzing such almost-matches, extending the algo and
>> supplying a second round of patches once all [1] of this round arrive in
>> torvalds/master.
>>
>> [1]:
>>
>> =E2=9E=9C  linux git:(feature/https-links-3) =E2=9C=97 git diff --shorts=
tat
>>   1963 files changed, 2882 insertions(+), 2882 deletions(-)
>> =E2=9E=9C  linux git:(feature/https-links-3) =E2=9C=97
>=20
> Is there a reason to do this one language at a time instead of just
> doing everything in one go?
There are two reasons:

* Jonathan said like theoretically you could give it all at once to=20
Linus, but practically I'd not do that, please split by subsystem
* Linus *didn't even respond* (at least I didn't receive anything) to my=20
catch-them-all patch at all, not even like please not as .gz attachment=20
or please split by subsystem

>=20

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/8ee16c38-e28b-b4e6-ed30-55a59e216b49%40al2klimov.de.
