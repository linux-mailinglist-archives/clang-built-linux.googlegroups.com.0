Return-Path: <clang-built-linux+bncBC5KPPH4YUKRBEH3V35QKGQE2FJFXOY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33c.google.com (mail-wm1-x33c.google.com [IPv6:2a00:1450:4864:20::33c])
	by mail.lfdr.de (Postfix) with ESMTPS id 78B01276308
	for <lists+clang-built-linux@lfdr.de>; Wed, 23 Sep 2020 23:26:40 +0200 (CEST)
Received: by mail-wm1-x33c.google.com with SMTP id m125sf402389wmm.7
        for <lists+clang-built-linux@lfdr.de>; Wed, 23 Sep 2020 14:26:40 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600896400; cv=pass;
        d=google.com; s=arc-20160816;
        b=HsfCJuKBh7mVKl4b3Z2/YhtjJXpILPZsyifsih3TnMiwiCCNsrB7HaqZ0jyRpsf8bb
         vDg0ZAK929vknw86b7P4QmshgFl7RCjtFEyLjWpgFOtcsJaqjCJI0bSoQXlxSgRTPFDN
         A360tlraqV8q4izD92BdvtCDWwBd9sCq8Jnq+MoLufKJm7qh+tMMqsOjzB4qYJCybuua
         PZoDSxTyODol8H6IRwc3+C2QF1MZxt98dtIqUbiTJAw9LE7rtFJAd8U57f+Ewp27jcU/
         e0rnCgdZP1A3KEteB8cEN36EIOEqy3NcDQE8zh7heuIz3XjMcuQa3/lFmEJon26LcWAh
         qWLQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=xUW5gtbz/+wIn483uNiQHB+7md1kKhmikxytaWGU2PQ=;
        b=QxYUB4PmT0V5rXhKW5Bwop/l2o8vCpv9NtlVQcCBtkMqb80xb0yiI2cLmlBlf9w11G
         Tm5YnWGv/yEhnX6O5NFK3g+O8Mfvb2BRNmXW6GXiIbVmszuEwtpAY7LVoiblYYyQmWNC
         Ij9YNMPUqT6keM+bBaP48fPTSzpjLV/YQLxybyZSAtMTt+7e9iKPMqBrJ9Ep4vUHaU0s
         VjaV0moAqlednnZJ3OKrrnXDUC1LKmd6fAtj99u/oohv0DrprQFN5GFGXZL0F0a5rUFp
         9dk2AiuJBqTb/klqOSXTPaw8+OxTGOXHtrxxlKomm/DJow0h7vw4p7hPbubNDtDHCzaP
         cRvg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of guillaume.tucker@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) smtp.mailfrom=guillaume.tucker@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xUW5gtbz/+wIn483uNiQHB+7md1kKhmikxytaWGU2PQ=;
        b=YI1EPKO+no76TUQIg5i38dAkTs9YhoIpcS6CFRf2u+lcQ5CwBSYLcc4eXPvIfaZ6i9
         xqOmkchE2ALjvUbQ9DJtV/yWksi83TP0/Q41F/ifJPpbC0M52GxKXRNQp/s4YImdwpEg
         F+ibADmmNrPJ+3xkI4sxwFqpIyssADNaKJ2PQY0x/6g99jzx9P8Xqbf4KGoeYxjvmPI3
         62SAgWGghujyCfYxJ4a2EvIbuNUQ+C9O1+MEbjZKAh/zy6zFMzus1dpQ1sP8qsi6Z7xo
         a9+yzWzxl2ttN9RwwT2PZqguwCUZ8dulhKMWUV86W0PSxaJN3q0h+n/yTT/HWn+tex+O
         chOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=xUW5gtbz/+wIn483uNiQHB+7md1kKhmikxytaWGU2PQ=;
        b=Wea7nmFdqBb//tEJyARprVi2mEYP1p2KL71zXKJXTnwdKc8HR5aKKLJQBxW4re/4N8
         bsUb58IFqwOovxgmNvVYZidIfrPFW0XqUisp7odiPCzakDo7hKejblTPYObpLEou3KMc
         gdkuCRQmolHEUbJwHZmPnJv8eC49IyNxo5KNA7/pdbjJT7+vVT7MW446NoBGk9NPk5NO
         tL6aa1YGQkvMZW7WFR6xpQu3xKhfl62c69EXehIG/vmbxul8v5cHlT5MnlX+YEDHvCiP
         4kbnzJFrwqVQsNSfW/AJAVvwojsqVv+GE7bsr4/NTxuh5kdYB+3Df1I2KkCi7pPrtDHJ
         ZwYw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530VRv5rYIEIMRbvXMatDlsUiVbRs2L5kcOC/GAdfDlM+YYpVhKm
	2UmnOcWqAZUDDliWmw88mUo=
X-Google-Smtp-Source: ABdhPJyZ6YnL9/rdg1Q+cxmQ99pjHB34jasipCITX4jPeupqq6ukayrWs5Gzn6p6FSxgz3b6W8wwng==
X-Received: by 2002:a5d:6283:: with SMTP id k3mr1622569wru.191.1600896400204;
        Wed, 23 Sep 2020 14:26:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6000:8:: with SMTP id h8ls1263658wrx.3.gmail; Wed, 23
 Sep 2020 14:26:39 -0700 (PDT)
X-Received: by 2002:adf:f6c8:: with SMTP id y8mr1678917wrp.217.1600896399254;
        Wed, 23 Sep 2020 14:26:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600896399; cv=none;
        d=google.com; s=arc-20160816;
        b=woBhu2yQ7YBDNDkiHIC2/5UlFCSdOYgNNqjzPDKlRBKB9bwnp9d8VhZnozh9vYD77F
         7TTBtXeJhsDMjBw6/mKqAlWukafxh/47JMkSUjrPo+lDXxu2Hcdx7FtYzvtb0nMHaNWg
         32rjLLsESckotxdXTYLzhGyFwBQY+IIAw7NnM2Ml1tregaVVJi6GcRJQa4AzfnDFA0vu
         cQxgstXiW0uYg+QtvrrixKx54J6eQLpmGyDnYAZfQqd9C/hcXh0M9DVgU/6B1ETDXOFT
         m0LaMFO7qKC/6KLi9GmF8tw4TaD8WwfAV8EDVgD15W7e36BHpBEoszeFjP+7HtlvVWeq
         vWBw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=z+giKBaJjOtrh4vRTHXWBJpz3yPxrxL6Q/162aKyIts=;
        b=kXGjHCNNOGcvePlWPl/v24IddHLCNfy58ND/61EBh+DtiByDt8epCP4W3tVXrXiTA9
         kP6cCP7KAg1hjsPtidSmf97orrcp9kaXnT/ap+kYtlBeKBazbeixChhEUlPAFdVy3tBi
         nqOLVOUevvYOXWlxvbDxmDiN2Y/snfYqFkriR84gv/MqFIGXP8xwlewgMNJSteEy2u+k
         4Dbllc5JPJarqOLvSjz8GMWcBd/JtKuar4q84iBSvsD6unAszRUEQEnTF7fX4ly3U3YG
         yUphFzIcyP/H2SEexX1Px7SrrOC3i3MB+Z9v5r0iEX55Rhpv4G6ffNy8GOuiglasOm68
         EuTQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of guillaume.tucker@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) smtp.mailfrom=guillaume.tucker@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk. [2a00:1098:0:82:1000:25:2eeb:e3e3])
        by gmr-mx.google.com with ESMTPS id c144si34915wme.2.2020.09.23.14.26.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 23 Sep 2020 14:26:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of guillaume.tucker@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) client-ip=2a00:1098:0:82:1000:25:2eeb:e3e3;
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: gtucker)
	with ESMTPSA id DD0CC2993DE
Subject: Re: kernelci.org update - 2020-09-23
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: kernelci@groups.io, clang-built-linux
 <clang-built-linux@googlegroups.com>, Todd Kjos <tkjos@google.com>
References: <107c1572-ffc5-8797-6ae3-10fbe4e91eee@collabora.com>
 <CAKwvOdkHiRAxCrrqRTq=k09zW-X9cHogyq+7fTuM_aJyntXs4Q@mail.gmail.com>
From: Guillaume Tucker <guillaume.tucker@collabora.com>
Message-ID: <200d3c91-9906-01d6-2642-718fbd356d76@collabora.com>
Date: Wed, 23 Sep 2020 22:26:36 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <CAKwvOdkHiRAxCrrqRTq=k09zW-X9cHogyq+7fTuM_aJyntXs4Q@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: guillaume.tucker@collabora.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of guillaume.tucker@collabora.com designates
 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) smtp.mailfrom=guillaume.tucker@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
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

On 23/09/2020 22:08, Nick Desaulniers wrote:
> On Wed, Sep 23, 2020 at 7:50 AM Guillaume Tucker
> <guillaume.tucker@collabora.com> wrote:
>>
>> Summary of changes going into production
>> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>>
>> * fix branch names with slash characters "/"
>> * enable stable-rc queue/* branches
>> * enable stable 5.8 branches
>> * enable soc arm/fixes branch
>> * build linux-next with clang-10, drop clang-9

^ more on this below :)

>> * use Linaro test-definitions for kselftest
>> * enable kselftest to run on a few initial devices
>> * add direct links to regressions on web dashboard
>> * improve log filtering to remove more LAVA messages
>>
>>
>> Technical Steering Committee minutes - 2020-09-08
>> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>>
>> * LAVA test-definitions repository and version control
>>
>>   * No new tags upstream since =E2=80=9C2019.11=E2=80=9D, should we ask =
Linaro about restarting
>>     that?
>>   * Should we make a fork in kernelci GitHub with kernelci.org branch an=
d
>>     kernelci tags?
>>   * Show we accept to use the head of upstream master branch, even if th=
is
>>     means hard-to-reproduce issues and unexpected change in results if n=
ew
>>     commits are pushed at any time?
>>
>>   -> create fork for staging initially, and try to use upstream in produ=
ction
>>
>> * Finally fixed support for slashes in branch names, useful for stable-r=
c queue
>>   branches in particular
>>
>> * LLVM/CLang: still waiting for v11 to be released
>>
>> * LAVA log filtering: tested on staging - seems to work fine
>>
>> * Login test case fix: implemented more thorough testing needed
>>
>> * preempt-rt: Linaro test-definitions repo getting updates from Daniel W=
agner
>>
>> * KCIDB
>>
>>   JSON stream parsing is implemented and tested in jq.py, upstreaming is=
 in
>>   progress. Still takes four times as long and uses twice the memory as =
the
>>   stock JSON parser, but does streams and should be good enough for now.
>>   Starting implementing report stream parsing in KCIDB.
>>
>> * Notes: rework test email reports to show number of regressions in tabl=
e
>>   -> https://github.com/kernelci/kernelci-backend/issues/257
>>
>>
>> Technical Steering Committee minutes - 2020-09-15
>> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>>
>> * LLVM/Clang
>>
>>   LLVM people not super interested in older clang versions or even clang=
-10.
>=20
> clang-10 is the minimally supported version of Clang for building
> Linux kernels; we do very much care about it:
> https://lore.kernel.org/lkml/20200902225911.209899-1-ndesaulniers@google.=
com/T/#m61957eaada46dc8c51fdf2010859eb1976227005

Quite, we're now building linux-next with Clang 10 on
kernelci.org (production) and unreleased versions on
staging.kernelci.org.

>>   Once clang-9 is out, when Mark updates to clang-11 he=E2=80=99ll send =
something also
>>   dropping the older clang versions once clang-11 is live. Can reevaluat=
e this
>>   policy once there are stable distros with clang.
>>
>>   Nick maintains a clang-latest docker image, we should into integrating=
 that
>>   for potential inclusion in linux-next coverage - will need some evalua=
tion to
>>   see for example how noisy it is and if we need to do something about
>>   segregating results for the bleeding edge compiler.
>=20
> Nathan maintains it more than I do:
> https://github.com/ClangBuiltLinux/dockerimage

Great, I think Mark wanted to take a look into it.

At the moment we're building with snapshots of the next Clang
version on staging.kernelci.org (clang-11, soon clang-12).  It
would be nice to be able to use this container and test the very
latest instead.

>>   LLVM 11 release:
>>   * Status tracked at https://bugs.llvm.org/show_bug.cgi?id=3D46725
>>   * Several pending bugs need fixing, some look relevant
>=20
> Fixed! (oh boy, we were on the "chase list")

Nice!  Erm, I believe there's one last blocker:

  https://bugs.llvm.org/show_bug.cgi?id=3D47619

>>   Android LLVM versions: Mark to ping Todd and ask him about using those=
 for
>>   Android branches.
>=20
> android-mainline
> android12-5.4
> android-4.19-stable
>=20
> are the 3 newest branches that I know of.

And which LLVM/Clang versions should be used to build those?


Thanks,
Guillaume

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/200d3c91-9906-01d6-2642-718fbd356d76%40collabora.com.
