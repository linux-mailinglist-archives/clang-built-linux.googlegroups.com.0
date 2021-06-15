Return-Path: <clang-built-linux+bncBC5KPPH4YUKRBOEFUKDAMGQEAJHY7EA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x437.google.com (mail-pf1-x437.google.com [IPv6:2607:f8b0:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id D72443A7C16
	for <lists+clang-built-linux@lfdr.de>; Tue, 15 Jun 2021 12:36:41 +0200 (CEST)
Received: by mail-pf1-x437.google.com with SMTP id e17-20020aa798110000b02902f12fffef4esf10027473pfl.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 15 Jun 2021 03:36:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623753400; cv=pass;
        d=google.com; s=arc-20160816;
        b=nLOiGesCUPiqF6168k43Rmb26qFVXuND+9jhafrOtl3To2Db5WP0PygYTRlHf/5vd1
         H4PoP8e1KPqkX85gvDy2xy37iH8BL/lsssrG87fBHL5fctzYmx5F14sO0oBnOcDwGKt/
         EvefygPD9O8hEIALd22vb/iusLx45eJZCIvJoPuTvr+9kxzUFJOC0qnTp88kSaDpYJib
         rRiLbMXOxr43SHMKM86WEdIYcWbWL92RfmKm67ylOXvc9QItE3uWGuHsRnkF71iA3f5m
         68J/gKwcwTTH+HP6lx3tAyrSjkYW7EOIB4g7PT6E4SW6YxXL+n5nbkGoHOHHa9TPmS3y
         tI3w==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=lJmup0bVSTTMwbAZXDWlkEqfFTbLjL59L0Si8NTr8/4=;
        b=WG5F+drYzKni/R9Rwh9Igd3FJwisnBmNq/6SBlDewl9i3s4DNnxzgUqOiY9PDPKOtB
         w62ntm244eNISV1DPHSW7UybDZ40mvCes+irfYH1jv5OLrpahg5XUBv8QjZST0JQ2BYE
         k2aFKbC4zBigRRYUjD0dfpjjNA7ebroiPvIncf40xHaiUoUCVyOvxCvmUjGOmjSMIqqe
         RZA7gnBz65ECsFUyBFsQ7J8O1zPEhBzwTLkh09FvlbWHVwVp8dip56uVAx8KP2U85lFx
         wNvWqRxonOkb4WIrfrkklEPFWqziJwjZgaWxsDKR9Ul58zg8amai9a2JCMFIRkDlg8PN
         mlNQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of guillaume.tucker@collabora.com designates 46.235.227.227 as permitted sender) smtp.mailfrom=guillaume.tucker@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lJmup0bVSTTMwbAZXDWlkEqfFTbLjL59L0Si8NTr8/4=;
        b=Pwfgk/ks9HAZXN6g/zUazNJvhe2bMolNaFhQuTNTzj8Tah/KBRUGGRbdaz8fiCsR6k
         0uU1A6R3PVFhVVRezGTlqpV0lbBpr4vN2FoPeH9hkD9E9i9NntSLLYkkM5xd/JRrTDPH
         Hy/bnvPvXcoU+9Sowi4NH5zQcxMt5g4B9gtKLnNzAhUapPug3NEVlDYAJo+Nwuh2m6A5
         jKpodueQ7b5i7W3ZjIX2ofgcW18WmnKG+LoLf4ktDGn7R63DJr7fjPQkL7eJvXu1W0yC
         WqiGXCnG2WQ73ICiA2/q3T3PhiOteB4AINfkgguHNGQBAeDi8Wu8dglGvAywIzDLQJs6
         sijg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=lJmup0bVSTTMwbAZXDWlkEqfFTbLjL59L0Si8NTr8/4=;
        b=t8xv3xvInoGBonECkidk3uqKTtEx4drzBYhlgEzZFiGcdC7I/xfe8KqKVDBk/9Z8mc
         DGp7ruP1+G8FMIOQ/3Z7loNhCCBJVdT4VGasSWnRpkKzhHHFXt4fHNYmA0anh2rHpq1P
         JcoN1yI464J1aFdfWNs3Kdoozm6z+NHRb38n+4ePUIrpugT7FS6ZPl5MqDL8lh9apLkJ
         UAVcM9DrfHg8Y53eCPL7JrDlodRGde8iU81BM3Ahnp/S+gFgCDWHRl5E0CCSdeREaxDM
         5M8F6WUqe6oSR33gPgUB67DLq2t0Zdd18wQghfAFa7wkwGdi7Q06vWF5AV8pG2cLutVf
         LrPw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530BAdSWEmV/yE2ODvA+Cmr/1/aeiGkVmm2eoD8A6k17KmAT72t9
	/gnYnQD/eGJGtwY2qU8p9HM=
X-Google-Smtp-Source: ABdhPJzc+Mj/L94n9PMGdS3PI9bk0QO7dC5M/mOpqaTlqlXZDQdqxkLpc0yh5TyxB15hssgo0/m+Nw==
X-Received: by 2002:a17:902:9b8a:b029:110:56f0:b275 with SMTP id y10-20020a1709029b8ab029011056f0b275mr3697194plp.30.1623753400547;
        Tue, 15 Jun 2021 03:36:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:4a42:: with SMTP id lb2ls2295962pjb.1.gmail; Tue, 15
 Jun 2021 03:36:40 -0700 (PDT)
X-Received: by 2002:a17:902:778d:b029:119:3443:9ebd with SMTP id o13-20020a170902778db029011934439ebdmr3623459pll.45.1623753399888;
        Tue, 15 Jun 2021 03:36:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623753399; cv=none;
        d=google.com; s=arc-20160816;
        b=fffn2wmRjpBY97p8X2lumDljjqCCPVuMFQOv0xfT1qlHfZsWxedbpUj9pbPvZA1XCv
         7Kgdp7Er3TUbBbmFJaJV1InsHY5cMKGccy1Q7PWl+CwC0nbAp64dvXqY4KEybpmndgEu
         oh/hTapH6gS2KPh7wblC7/3J+cz0bHzkRjPtuEgsbdqL2SkDTDqdWAOqKva9rjjW7b2/
         emaNiX+lLbWWyOJjCJTZqpSymc/LSfsy7xC4xKiKtD+FlVZtHz9+lIGBvXeUuGcIpgF1
         m0r51/Y8rTOWFv8Q+6sTu1yN6/QDsHLTEozl8nrVkwUZeao796M5UfPVOZNk249IccG3
         ekGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=djAlKe1K1IjS25Qd8x/dpp8LLKYOtegSzTJN1t5l+/4=;
        b=MglcSYdjiuEROXPmVJEligk15u3grkse4sRz+47bgjR1MC0qB3E2E70CFEs6Ahq+/N
         2A9sASfdLpj9gZltLG+BOx6lX8oU8MNz3l331ljiidyhZ0FSLu5dWNf8pbJCPOf3lNVy
         Nd5T7wEV9hrC1zDxhySrsM8v5OIR0YNI8PbGDklDkVukHzKvvziYDy3bvccGOsJ9jrpu
         sPzTNikne+smYZxYwgoUWAUpHMzADjrcjgDjFyPnT66ugWyyjyKaA2jP5V0J4qQp29kc
         Ovm461afTTsZ8xWpd+6YgNbdgDkeWUSZabv7728vE+k74MI5ZRg6TIYCS4ffVsTaIyyn
         N/uA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of guillaume.tucker@collabora.com designates 46.235.227.227 as permitted sender) smtp.mailfrom=guillaume.tucker@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk. [46.235.227.227])
        by gmr-mx.google.com with ESMTPS id y205si260280pfc.6.2021.06.15.03.36.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 15 Jun 2021 03:36:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of guillaume.tucker@collabora.com designates 46.235.227.227 as permitted sender) client-ip=46.235.227.227;
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: gtucker)
	with ESMTPSA id 307111F42E8A
Subject: Re: #KCIDB engagement report
To: Nikolai Kondrashov <Nikolai.Kondrashov@redhat.com>, kernelci@groups.io,
 =?UTF-8?B?TWljaGHFgiBHYcWCa2E=?= <michal.galka@collabora.com>
Cc: keescook@chromium.org, Nick Desaulniers <ndesaulniers@google.com>,
 "automated-testing@yoctoproject.org" <automated-testing@yoctoproject.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Vishal Bhoj <vishal.bhoj@linaro.org>,
 Antonio Terceiro <antonio.terceiro@linaro.org>,
 Remi Duraffort <remi.duraffort@linaro.org>
References: <5a9bf050-0671-3273-cc4f-1b131445c1fe@redhat.com>
 <CAKwvOdmwRV6R6dcpcSL06SNVQ1_JwvOJMZPYiHKvjSx4sf_95g@mail.gmail.com>
 <202106011315.432A65D6@keescook>
 <774899c5-c20a-3d7e-3289-ee257b86e06e@collabora.com>
 <CAMbaCcc4-n022x97S-6ur8P9xKcp3cNMhK31y2GJLnd5PVOM-g@mail.gmail.com>
From: Guillaume Tucker <guillaume.tucker@collabora.com>
Message-ID: <b42c0a0d-8764-3e8d-f195-f2c231878c60@collabora.com>
Date: Tue, 15 Jun 2021 11:36:34 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <CAMbaCcc4-n022x97S-6ur8P9xKcp3cNMhK31y2GJLnd5PVOM-g@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: guillaume.tucker@collabora.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of guillaume.tucker@collabora.com designates
 46.235.227.227 as permitted sender) smtp.mailfrom=guillaume.tucker@collabora.com;
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

On 15/06/2021 10:58, Nikolai Kondrashov wrote:
> Guillaume,
>=20
> I checked the database, and the submission queue logs and could only find=
 the build itself, but no tests. They were probably lost somewhere before K=
CIDB.

Right, I think this is at least part of the issue:

  ValidationError: 'kselftest-futex.breakpoints:step_after_suspend_test' do=
es not match '^[.a-zA-Z0-9_-]*$'

Micha=C5=82, is this going to get resolved with the fix you're making
for invalid characters in test case names?

Cheers,
Guillaume

> On Fri, 11 Jun 2021 at 19:12, Guillaume Tucker <guillaume.tucker@collabor=
a.com <mailto:guillaume.tucker@collabora.com>> wrote:
>=20
>     Hi Kees,
>=20
>     On 01/06/2021 21:26, Kees Cook wrote:
>     > On Mon, May 24, 2021 at 10:38:22AM -0700, 'Nick Desaulniers' via Cl=
ang Built Linux wrote:
>     >> On Mon, May 24, 2021 at 12:50 AM Nikolai Kondrashov
>     >> <Nikolai.Kondrashov@redhat.com <mailto:Nikolai.Kondrashov@redhat.c=
om>> wrote:
>     >>> [...]
>     >>>=C2=A0 =C2=A0 =C2=A0 KernelCI native
>     >>>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 Sending (a lot of) production b=
uild and test results.
>     >>>=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 https://staging.kernelci.org:30=
00/?var-origin=3Dkernelci <https://staging.kernelci.org:3000/?var-origin=3D=
kernelci>
>     >>> [...]
>     >
>     > Apologies for the thread hijack, but does anyone know what's happen=
ing
>     > with kselftest? It seems missing from the listed[1] build artifacts=
, but
>     > it is actually present[2] (and I see the logs for generating the ta=
rball
>     > there too), but I can't find any builds that actually run the tests=
?
>     >
>     > (Or how do I see a top-level list of all tests and search it?)
>=20
>     The kselftest results are all there on the KernelCI native
>     dashboard, for example the futex tests:
>=20
>     =C2=A0 https://linux.kernelci.org/test/job/mainline/branch/master/ker=
nel/v5.13-rc5-74-g06af8679449d/plan/kselftest-futex/ <https://linux.kernelc=
i.org/test/job/mainline/branch/master/kernel/v5.13-rc5-74-g06af8679449d/pla=
n/kselftest-futex/>
>=20
>=20
>     Here's a set of passing results on a "coral" x86 Chromebook, with
>     a bunch of unknowns but that's because other kselftests are being
>     run when they shouldn't (net, mqueue, ptrace) so it's noise which
>     should get resolved with a fix soon:
>=20
>     =C2=A0 https://linux.kernelci.org/test/plan/id/60c2bf67ed48b86ffe0c0d=
f8/ <https://linux.kernelci.org/test/plan/id/60c2bf67ed48b86ffe0c0df8/>
>=20
>=20
>     And here are the full kernel build details:
>=20
>     =C2=A0 https://linux.kernelci.org/build/id/60c2bdeea60229633d0c0f0c/ =
<https://linux.kernelci.org/build/id/60c2bdeea60229633d0c0f0c/>
>=20
>     and artifacts (logs, binaries, meta-data in JSON):
>=20
>     =C2=A0 https://storage.kernelci.org/mainline/master/v5.13-rc5-74-g06a=
f8679449d/x86_64/x86_64_defconfig+x86-chromebook+kselftest/gcc-8/ <https://=
storage.kernelci.org/mainline/master/v5.13-rc5-74-g06af8679449d/x86_64/x86_=
64_defconfig+x86-chromebook+kselftest/gcc-8/>
>=20
>=20
>     So this is the original data, now let's look at what we have in
>     KCIDB.=C2=A0 Here's the matching build:
>=20
>     =C2=A0 https://kcidb.kernelci.org/d/build/build?orgId=3D1&var-dataset=
=3Dkernelci04&var-id=3Dkernelci:kernelci.org:60c2bdeea60229633d0c0f0c <http=
s://kcidb.kernelci.org/d/build/build?orgId=3D1&var-dataset=3Dkernelci04&var=
-id=3Dkernelci:kernelci.org:60c2bdeea60229633d0c0f0c>
>=20
>     However there's no results, probably because submitting the data
>     failed for some reason.=C2=A0 It could be due to some invalid
>     characters in the test names.=C2=A0 The Log link works though, it
>     takes you to the directory with all the log files - to be
>     improved as it's advertised as a single build log...
>=20
>     So we'll take a closer look, see if there were any errors in the
>     logs to find out why the results aren't in KCIDB.=C2=A0 But the
>     kselftests were definitely run.
>=20
>=20
>     Thanks,
>     Guillaume
>=20
>     > [1] https://kcidb.kernelci.org/d/build/build?orgId=3D1&var-dataset=
=3Dkernelci04&var-id=3Dkernelci:kernelci.org:60b654321456eb7654b3afa6&fulls=
creen&panelId=3D17 <https://kcidb.kernelci.org/d/build/build?orgId=3D1&var-=
dataset=3Dkernelci04&var-id=3Dkernelci:kernelci.org:60b654321456eb7654b3afa=
6&fullscreen&panelId=3D17>
>     > [2] https://storage.kernelci.org//mainline/master/v5.13-rc4-11-gc21=
31f7e73c9/x86_64/x86_64_defconfig+x86-chromebook+kselftest/gcc-8/ <https://=
storage.kernelci.org//mainline/master/v5.13-rc4-11-gc2131f7e73c9/x86_64/x86=
_64_defconfig+x86-chromebook+kselftest/gcc-8/>
>=20
>=20
>     -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>     Groups.io Links: You receive all messages sent to this group.
>     View/Reply Online (#1136): https://groups.io/g/kernelci/message/1136 =
<https://groups.io/g/kernelci/message/1136>
>     Mute This Topic: https://groups.io/mt/83045962/3616695 <https://group=
s.io/mt/83045962/3616695>
>     Mute #kcidb:https://groups.io/g/kernelci/mutehashtag/kcidb <https://g=
roups.io/g/kernelci/mutehashtag/kcidb>
>     Group Owner: kernelci+owner@groups.io <mailto:kernelci%2Bowner@groups=
.io>
>     Unsubscribe: https://groups.io/g/kernelci/unsub <https://groups.io/g/=
kernelci/unsub> [Nikolai.Kondrashov@redhat.com <mailto:Nikolai.Kondrashov@r=
edhat.com>]
>     -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>=20
>=20

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/b42c0a0d-8764-3e8d-f195-f2c231878c60%40collabora.com.
