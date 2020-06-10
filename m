Return-Path: <clang-built-linux+bncBAABBZ5BRT3QKGQEQY3WX6A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf37.google.com (mail-qv1-xf37.google.com [IPv6:2607:f8b0:4864:20::f37])
	by mail.lfdr.de (Postfix) with ESMTPS id 153561F736B
	for <lists+clang-built-linux@lfdr.de>; Fri, 12 Jun 2020 07:21:45 +0200 (CEST)
Received: by mail-qv1-xf37.google.com with SMTP id 59sf6161298qvb.4
        for <lists+clang-built-linux@lfdr.de>; Thu, 11 Jun 2020 22:21:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1591939304; cv=pass;
        d=google.com; s=arc-20160816;
        b=o43XoTp8c81dVJpWHvraSiuNY+4xHXxl+hmkqugoan2AucLTUa4YxYYKtS97iXjIRa
         UP2sKNetd+5If3EOpq2BFZLALt/7cBJQVUdJfx/8eymaTBTCEa28ZXJMF09kya2M2LSS
         zDVUmFl+mDV07zxeEMlinlqb+JDUOCHrC9kxDorEX3CHHvyGoYDknVRwsPfcXF6yVWPF
         RgyI+bbwHhDd0HkoQ9NdOQInvESIxFGPG6XaWviOALd/aEvW5gVPLcq9/BcXxHlfVWut
         CW14emLCnLQHsD3RSUwA9tr/n5VOfE/V1/JZbEHTsT5JIrhSzeL8ciefTbFJfjydufBX
         GNCg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:date:message-id:from
         :references:to:subject:sender:dkim-signature;
        bh=7zXYPd5I/A/b5HjrySdea1uh7UlcBNyH/hR7bnlH7rw=;
        b=q6BcYUD6LkwmfLJp1n0HqA6ho5AeohXg+ONVlsc9r+wtZsCyhjkrnlVM82tmQOV2F1
         vflDyhTT7zVEVxx8RgweVQX0WiAErJhirFFPpmZvfQ68ZEz6tGMR5nVpgTKGYVGkts+h
         xCpDAS0rHHwH6/2ltGP3wJIg6LWsNP1/oc9TCfNF82FsxQGSyWliT8AfOjLQr/DKeQfv
         1rCUD1UXHXCuRTFTJ9Q3J70UKCFzoLhX1m8uA7OSpqudjcAZgxsoubW20wyJQR4iL8Z/
         NRFRbr5JclRXPPUHvUXwkDb66D1GdH3fWQoMRbdGi2MV6EgOxcvepZfgtwJy2Z0EqR9z
         O7Gg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of grandmaster@al2klimov.de designates 2a01:4f8:c0c:1465::1 as permitted sender) smtp.mailfrom=grandmaster@al2klimov.de
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:references:from:message-id:date:mime-version
         :in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=7zXYPd5I/A/b5HjrySdea1uh7UlcBNyH/hR7bnlH7rw=;
        b=oDL1o5gLgsocnsmfHPuTsEXIs2WuGCn4/w1TzlHIg3m7047At8Z07JBYnbn/AoVxBT
         QO/QBas8RfxX5BzG6EA7+yq1UPf4yp9G/dn4dUZNXYLShioRL/PCudbteixrsLuGaQh0
         wxLk0x7GIcmKATbkqMS/BSBoDRylsExRu5z3ouvuDagWZllYf3B+CmOD2+Q1+CKqWgoz
         RHLqFpMLSAEQYUGPEN6aX5XXWOuRUtpfe5/NaJYXHlIB9tLBRQwBwZmn7sQKTvmF8SF5
         ysDlNZ5HaxqIAUINNrCpbVF7uQ6VEf4edITwu1TVyry7GCdDbYVVchJc+0wrgBGMR2HZ
         RHOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:references:from:message-id
         :date:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=7zXYPd5I/A/b5HjrySdea1uh7UlcBNyH/hR7bnlH7rw=;
        b=pDdsq24Lblg5pOvbrZPlwgh5m+EDVEa9wJufinXlJAlJhVfwgTat7ak6CRofRIYifh
         2n3jGnExl/ZUxgI5QqEejp+OlLX+NIsB2XhfMiqPo2FecDm9GZrhKFkuXGMrWDvgxyeX
         amT+96dBAItWLoD3AB0J7C3zdww+W2TkzswsdaWy/3ADmQtqFzuW6Vr7Xh/UoDrUpJoO
         QMcZe0F/UZ3G0wITwu9sP8OvJ6cxbiz50RDE4yaTYhs+CId1r5oATe/30zECOTr8mCc/
         GQFQ2sQ4Wzf1xjdy6zi9kRaME8xigNwNMaAJs5SnOnCsQRws4MYg4RD7UlsbBxfE8X6i
         PXLQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533mGzD6XBEmuC5DpjEn34eJme+PD7mSgd3vT/IIVC9XqONSs6TG
	998fDMWpBSB3ZurddfpWIzQ=
X-Google-Smtp-Source: ABdhPJxfU+h/aUIDrAXkZWf2LO7pq5QYNzO1xZNomao0HqW4sN8ITTLY0+2miwoxK68ZCzNq1/fq9g==
X-Received: by 2002:aed:2063:: with SMTP id 90mr1451200qta.48.1591939303774;
        Thu, 11 Jun 2020 22:21:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:9e92:: with SMTP id h140ls2165904qke.5.gmail; Thu, 11
 Jun 2020 22:21:43 -0700 (PDT)
X-Received: by 2002:a05:620a:2050:: with SMTP id d16mr1414826qka.215.1591939303410;
        Thu, 11 Jun 2020 22:21:43 -0700 (PDT)
Received: by 2002:a05:620a:9da:b029:f5:f5ee:2f3b with SMTP id y26-20020a05620a09dab02900f5f5ee2f3bmsqky;
        Wed, 10 Jun 2020 11:11:45 -0700 (PDT)
X-Received: by 2002:ac2:5324:: with SMTP id f4mr2384685lfh.209.1591812705026;
        Wed, 10 Jun 2020 11:11:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1591812705; cv=none;
        d=google.com; s=arc-20160816;
        b=czNKxPN6UUUC7gtzNArm+KBkA45neR09w1IEMxniM3OUIz7xh8Flh1p2g0SV9O49o9
         RkZs59yKcsxQL/Ek4DjiAI9IdYwDQ8gaocYsvKdyx5wtjDYEAmbBdEIUcwx3JL72uz6F
         SMXgcvIb6GMUT39noqzPoh9qmlTsAkFZWY9vGncWQIkqjy+L6QESB0kCpPNyGeWFdNuZ
         Xbmfd8IqKukRqarGzBmZY0lXJHFpNgS+Opc8jKvmcorOlS69wx/vWL9jVJqQ2+NASq4R
         fSLNM6reskesw2xjSf199cX/lHO2tGkKWRLM5SNqvNflJhrUqQwDWw5oexY7unygoH5I
         v9kg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :date:message-id:from:references:to:subject;
        bh=aac95ria8DH3pZYOma6yFJDKa68podvyLean+lIhQao=;
        b=DZLf9ovJtmYHvQO3aIXhfiYsfzDsGuLbiwHZp18xVntrY+p0J6Gf/+Fg5ZGGXykYH+
         rGwDGjHlbNb06AK4BIzJnl8qW1WSv4hqcEsnAoW04ocGouAMnTQO3E/G0oH1AwMTds4+
         SoUBZWyS3HwWdSVYUhEvLl5sOBalfPBBI17LrCgXtltBHrRS+L15UCvauTHLKoUqGV+g
         vgvaRqNTqmbwAwmLy5jeZeLl4L/1CELGYZCdC3FwIDGWBDRO/QBeocFSO2bEWSgGvJPN
         XiD0zx4soRXoGPbMcaBXzezoUHLecVnlMKjrWJZQh3bY2E17KSOok4SelG4xnwVCz5n8
         2AqA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of grandmaster@al2klimov.de designates 2a01:4f8:c0c:1465::1 as permitted sender) smtp.mailfrom=grandmaster@al2klimov.de
Received: from smtp.al2klimov.de (smtp.al2klimov.de. [2a01:4f8:c0c:1465::1])
        by gmr-mx.google.com with ESMTPS id u23si27612ljg.7.2020.06.10.11.11.44
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 10 Jun 2020 11:11:44 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of grandmaster@al2klimov.de designates 2a01:4f8:c0c:1465::1 as permitted sender) client-ip=2a01:4f8:c0c:1465::1;
Received: from authenticated-user (PRIMARY_HOSTNAME [PUBLIC_IP])
	by smtp.al2klimov.de (Postfix) with ESMTPA id 9520AFDA8D;
	Wed, 10 Jun 2020 18:11:40 +0000 (UTC)
Subject: Re: [PATCH] Replace HTTP links with HTTPS ones:
 Documentation/translations/it_IT
To: Federico Vaga <federico.vaga@vaga.pv.it>, Jonathan Corbet
 <corbet@lwn.net>, Mauro Carvalho Chehab <mchehab+huawei@kernel.org>,
 David Sterba <dsterba@suse.com>, Randy Dunlap <rdunlap@infradead.org>,
 Theodore Ts'o <tytso@mit.edu>, "Darrick J. Wong" <darrick.wong@oracle.com>,
 Pankaj Bharadiya <pankaj.laxminarayan.bharadiya@intel.com>,
 Kees Cook <keescook@chromium.org>,
 Jacob Huisman <jacobhuisman@kernelthusiast.com>,
 =?UTF-8?Q?Jonathan_Neusch=c3=a4fer?= <j.neuschaefer@gmx.net>,
 Rob Herring <robh@kernel.org>, linux-doc@vger.kernel.org,
 linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
References: <20200609201241.81518-1-grandmaster@al2klimov.de>
 <4235548.LvFx2qVVIh@harkonnen>
From: "Alexander A. Klimov" <grandmaster@al2klimov.de>
Message-ID: <cd260d03-27a4-7794-f58f-21e8e0be9755@al2klimov.de>
Date: Wed, 10 Jun 2020 20:11:39 +0200
MIME-Version: 1.0
In-Reply-To: <4235548.LvFx2qVVIh@harkonnen>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Spamd-Bar: +
X-Spam-Level: *
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



Am 10.06.20 um 10:57 schrieb Federico Vaga:
> On Tuesday, June 9, 2020 10:12:41 PM CEST Alexander A. Klimov wrote:
>> Rationale:
>> Reduces attack surface on kernel devs opening the links for MITM
>> as HTTPS traffic is much harder to manipulate.
>>
>> Deterministic algorithm:
>> For each file:
>>    For each line:
>>      If doesn't contain `\bxmlns\b`:
>>        For each link, `\bhttp://[^# \t\r\n]*(?:\w|/)`:
>>          If both the HTTP and HTTPS versions
>>          return 200 OK and serve the same content:
>>            Replace HTTP with HTTPS.
>>
>> Signed-off-by: Alexander A. Klimov <grandmaster@al2klimov.de>
>> ---
>>   .../translations/it_IT/admin-guide/README.rst      |  2 +-
>>   .../translations/it_IT/doc-guide/parse-headers.rst |  2 +-
>>   .../translations/it_IT/doc-guide/sphinx.rst        | 10 +++++-----
>>   .../translations/it_IT/process/2.Process.rst       | 12 ++++++------
>>   .../translations/it_IT/process/3.Early-stage.rst   |  2 +-
>>   .../translations/it_IT/process/4.Coding.rst        |  4 ++--
>>   .../it_IT/process/7.AdvancedTopics.rst             |  8 ++++----
>>   .../translations/it_IT/process/8.Conclusion.rst    | 14 +++++++-------
>>   .../translations/it_IT/process/adding-syscalls.rst |  4 ++--
>>   .../translations/it_IT/process/changes.rst         |  6 +++---
>>   .../translations/it_IT/process/clang-format.rst    |  2 +-
>>   .../translations/it_IT/process/coding-style.rst    |  2 +-
>>   Documentation/translations/it_IT/process/howto.rst |  2 +-
>>   .../it_IT/process/maintainer-pgp-guide.rst         |  2 +-
>>   .../it_IT/process/submitting-patches.rst           |  4 ++--
>>   .../it_IT/process/volatile-considered-harmful.rst  |  4 ++--
>>   16 files changed, 40 insertions(+), 40 deletions(-)
>>
>=20
>=20
>> diff --git a/Documentation/translations/it_IT/doc-guide/sphinx.rst
>> b/Documentation/translations/it_IT/doc-guide/sphinx.rst index
>> f1ad4504b734..0aaeb0297661 100644
>> --- a/Documentation/translations/it_IT/doc-guide/sphinx.rst
>> +++ b/Documentation/translations/it_IT/doc-guide/sphinx.rst
>> @@ -14,7 +14,7 @@ Per generare la documentazione in HTML o PDF, usate
>> comandi ``make htmldocs`` o ``make pdfdocs``. La documentazione cos=C3=
=AC
>> generata sar=C3=A0 disponibile nella cartella ``Documentation/output``.
>>
>> -.. _Sphinx: http://www.sphinx-doc.org/
>> +.. _Sphinx: https://www.sphinx-doc.org/
>>   .. _reStructuredText: http://docutils.sourceforge.net/rst.html
>=20
> It is not part of the deterministic algorithm but you may consider this a=
s
> well
>=20
> -.. _reStructuredText: http://docutils.sourceforge.net/rst.html
> +.. _reStructuredText: https://docutils.sourceforge.io/rst.html
>=20
>=20
>=20
>=20
I'll think about analyzing such almost-matches, extending the algo and=20
supplying a second round of patches once all [1] of this round arrive in=20
torvalds/master.

[1]:

=E2=9E=9C  linux git:(feature/https-links-3) =E2=9C=97 git diff --shortstat
  1963 files changed, 2882 insertions(+), 2882 deletions(-)
=E2=9E=9C  linux git:(feature/https-links-3) =E2=9C=97

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/cd260d03-27a4-7794-f58f-21e8e0be9755%40al2klimov.de.
