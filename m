Return-Path: <clang-built-linux+bncBDYJPJO25UGBB3PSV35QKGQEE6WJKXA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x937.google.com (mail-ua1-x937.google.com [IPv6:2607:f8b0:4864:20::937])
	by mail.lfdr.de (Postfix) with ESMTPS id DCDB02762DE
	for <lists+clang-built-linux@lfdr.de>; Wed, 23 Sep 2020 23:09:02 +0200 (CEST)
Received: by mail-ua1-x937.google.com with SMTP id p65sf186211uap.22
        for <lists+clang-built-linux@lfdr.de>; Wed, 23 Sep 2020 14:09:02 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600895341; cv=pass;
        d=google.com; s=arc-20160816;
        b=pUuwy1Q7A8Sna+5Jp7jbMb5sJMKVUtZICzgBARdgtwcuRbdzn/X8A5U71IzGagOqqu
         BwJt5sNM2URjBYI873wMKOv9yHb72W1mpesHPp0kuSILY7JWSR1S0bHmc1o5JsxaxhlN
         q4yJpyltYNbEzsjdwkrEyfE9ilQQbJnfjF6QU+dWI0NeaPQDNNQO3q0f1u+3RlTzNmhj
         daOzvH2fggS55LDy3LDh/Z5SAKMf2W53hBbXN7wCnmnk790ikLIZpdD7AQQ/GN7OeGJh
         CQwb16kYwXwE+pTgqTQvJPyuQDdLadLnXxmalt4tQe30E4xchXNbNjT+ZqdoO2LIMk5d
         hvNA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:content-transfer-encoding
         :cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=oX3nw4HeOYqJBZv7uVgw7fniujp9kFCHH2uA1rSfuQw=;
        b=aqLUswPHwwBX7aMuEBZUrxY1OSj5kqQckyUJfiDucxmJqG8RYln87WQ5Vh6DdZjx82
         nLqwQxEBPHmKLI7EdbfB0Ib6g2KqNwG5DhniswPvLgenA0HCWuWlcY5tKT+psnYuqGf1
         H6wKUg4WNa9/BEb3C6h9I4NUO9/kgg9Qt56mej0MA9ddiw1AcLmIpljpp30glT/wK8C5
         JENxS9npCRYSp1MgTyzRLL+0LsVjBoYSs57AxVDqhYK0ALjPk2lZV8ISr/hteHVXhkev
         +HXkpxvFjJ78IJ0DjkYX6DhXKuFWSDf3qQEyRl4KUeBqjuUdyoH/nfcxBhltEspsZZRX
         iFTw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Yplsh7Y7;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52e as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:list-post:list-help:list-archive:list-subscribe
         :list-unsubscribe;
        bh=oX3nw4HeOYqJBZv7uVgw7fniujp9kFCHH2uA1rSfuQw=;
        b=OGX/7qPpQh8KOouniL9WqWZLyIPjrsQfgf2c5DPOKJ+4+0huvAQc6cGtVMU9zXGfxp
         fi9N8Qe0evesc4TqppYEMqnQaYhLnM4vu2dIOQCBfFRwsFw3cvMW/ViXzhm+rdVFD6K7
         n7FvBT0THu4O8hPXAw+RbMbjYTmak3+dHRH66+QQuUE4/o7y4tp5EdjU00pJcSixySDU
         AOxZSSpT2o8vZXA15hNNkUd6cmmWGirbTZegOZ4HFHVC/QTC3ewCxPC8rMNqG5/5IW8l
         R3LFYBZWu8aSUng1KganoI1IE7vbqCoTmg10APDXSdeOJXP/aUdK929qoMjZE8TXUDje
         zvSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=oX3nw4HeOYqJBZv7uVgw7fniujp9kFCHH2uA1rSfuQw=;
        b=K9e6pPtsjfqFGMgTuK6BIlWQ+RVSdmBzYkTYtrD0DdoYO7zoij5GYLLR6l/mRYRTYL
         hJH9O5aKRRUw23xpe6w5H3VhmH6EPpdQvsHwkUemdgNghySDWrJTDUL+fewgSmaywAhM
         yDhoAmxt1dmtWZRjffwOHe0cI0WtSoTrlhAw3I/1/3jSApXc8Kt3vcR+GSTbAaLZO5Hz
         hXMWB44MPCSEitQsVimdzeP9Az6uSAXju4vy4NvPG96d93RyCvBDZi68sJbQNlsCG8N7
         S3tB/Bby5RoryQvey5geJWEFOeEAkBBYG06uJ+N0wo1ZMJ+zWotZY6No8A4Sdympx/pm
         0f0g==
X-Gm-Message-State: AOAM533PvMQYpcHt8FmgCCUbCCM8Kgear9Ja4yAQwXsqPSoeh015YBho
	Qvf2PhHpWIjk4iqIE0z6SEo=
X-Google-Smtp-Source: ABdhPJz0J7ZUDHotdOMneDcICc2ypBSTuxlfeQrUNTPN9cpxe2vsl9C4QlTIXZuOC/yV16uUMnGKjg==
X-Received: by 2002:a67:ea4e:: with SMTP id r14mr1987661vso.47.1600895341652;
        Wed, 23 Sep 2020 14:09:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:1f6:: with SMTP id 109ls110350ual.2.gmail; Wed, 23 Sep
 2020 14:09:01 -0700 (PDT)
X-Received: by 2002:ab0:6803:: with SMTP id z3mr1356249uar.46.1600895341021;
        Wed, 23 Sep 2020 14:09:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600895341; cv=none;
        d=google.com; s=arc-20160816;
        b=uKm+iCwHwj14FBi56SIhvefrOecttfaUlzwBwNM/RKNeWEIo1vHiawg1fcRvMq4Sqv
         VkLbvIRycDCXJiGWUhoMDP5Lf1UBr/lMii3wZu0WmZCyOtEodPnAxJh1SQXlbai0sf9b
         Ey12t+wVddu4zrzXxXIiS1hE/KZapuolEeY4Mu7pafvvQrBOxItyvTpw1kMCGP2NyVk3
         I/ViXwLhwraPU0k5+Q79tqmIHfAFt5Z3Eq/xevSo0o/XjsOMEUHFhJuO/JwnyDseMeAp
         rvRnTsKgx8GlD24mZW6O9zqifpAYGUDhrGvIbOmVvDqyQZHqDWvczC4AGgKHTysReZ4d
         T1AQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=6xOk+kKNJXKipTrBFLGgITPtrTfJLrD51EUiYPNUVms=;
        b=ZfWllIhqg+Jp0fN7+TBgP1aftgQBWu3zSJ0Y9G4+Q7lq3n0Pe3GZ19nDOq5yAwKhKk
         crn8iGKJU/Jlol5bFDu5gAcYV5ErZa2Gc7mSFcm1gAOKRzZN6u8rq7XYzPO0LDZFfvKH
         I3iscZ5WMKViC5zPNtFnRfQRs6YD+fyVxz0skMzhlHCkE/uGA1POzpn0XCJpxcgk9uYS
         UGfGYqwIhgguHqE6dqyvCO3jNNfMaKWLZqs/ArabMSrM1Mg/fZAXvAxSxn50qr5shTbT
         FSae9XPBtWpimzg+m2fOoQgfXn+YMzQrvkotvOgZmBgE+/lnk+o8l0rwKl81wBBDLvuc
         VDkQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=Yplsh7Y7;
       spf=pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52e as permitted sender) smtp.mailfrom=ndesaulniers@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-pg1-x52e.google.com (mail-pg1-x52e.google.com. [2607:f8b0:4864:20::52e])
        by gmr-mx.google.com with ESMTPS id q10si43861uas.1.2020.09.23.14.09.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 23 Sep 2020 14:09:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52e as permitted sender) client-ip=2607:f8b0:4864:20::52e;
Received: by mail-pg1-x52e.google.com with SMTP id u24so503938pgi.1
        for <clang-built-linux@googlegroups.com>; Wed, 23 Sep 2020 14:09:00 -0700 (PDT)
X-Received: by 2002:a62:5586:0:b029:13e:d13d:a108 with SMTP id
 j128-20020a6255860000b029013ed13da108mr1593341pfb.36.1600895339769; Wed, 23
 Sep 2020 14:08:59 -0700 (PDT)
MIME-Version: 1.0
References: <107c1572-ffc5-8797-6ae3-10fbe4e91eee@collabora.com>
In-Reply-To: <107c1572-ffc5-8797-6ae3-10fbe4e91eee@collabora.com>
From: "'Nick Desaulniers' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Wed, 23 Sep 2020 14:08:47 -0700
Message-ID: <CAKwvOdkHiRAxCrrqRTq=k09zW-X9cHogyq+7fTuM_aJyntXs4Q@mail.gmail.com>
Subject: Re: kernelci.org update - 2020-09-23
To: kernelci@groups.io, Guillaume Tucker <guillaume.tucker@collabora.com>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>, Todd Kjos <tkjos@google.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: ndesaulniers@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=Yplsh7Y7;       spf=pass
 (google.com: domain of ndesaulniers@google.com designates 2607:f8b0:4864:20::52e
 as permitted sender) smtp.mailfrom=ndesaulniers@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Nick Desaulniers <ndesaulniers@google.com>
Reply-To: Nick Desaulniers <ndesaulniers@google.com>
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

On Wed, Sep 23, 2020 at 7:50 AM Guillaume Tucker
<guillaume.tucker@collabora.com> wrote:
>
> Summary of changes going into production
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>
> * fix branch names with slash characters "/"
> * enable stable-rc queue/* branches
> * enable stable 5.8 branches
> * enable soc arm/fixes branch
> * build linux-next with clang-10, drop clang-9
> * use Linaro test-definitions for kselftest
> * enable kselftest to run on a few initial devices
> * add direct links to regressions on web dashboard
> * improve log filtering to remove more LAVA messages
>
>
> Technical Steering Committee minutes - 2020-09-08
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>
> * LAVA test-definitions repository and version control
>
>   * No new tags upstream since =E2=80=9C2019.11=E2=80=9D, should we ask L=
inaro about restarting
>     that?
>   * Should we make a fork in kernelci GitHub with kernelci.org branch and
>     kernelci tags?
>   * Show we accept to use the head of upstream master branch, even if thi=
s
>     means hard-to-reproduce issues and unexpected change in results if ne=
w
>     commits are pushed at any time?
>
>   -> create fork for staging initially, and try to use upstream in produc=
tion
>
> * Finally fixed support for slashes in branch names, useful for stable-rc=
 queue
>   branches in particular
>
> * LLVM/CLang: still waiting for v11 to be released
>
> * LAVA log filtering: tested on staging - seems to work fine
>
> * Login test case fix: implemented more thorough testing needed
>
> * preempt-rt: Linaro test-definitions repo getting updates from Daniel Wa=
gner
>
> * KCIDB
>
>   JSON stream parsing is implemented and tested in jq.py, upstreaming is =
in
>   progress. Still takes four times as long and uses twice the memory as t=
he
>   stock JSON parser, but does streams and should be good enough for now.
>   Starting implementing report stream parsing in KCIDB.
>
> * Notes: rework test email reports to show number of regressions in table
>   -> https://github.com/kernelci/kernelci-backend/issues/257
>
>
> Technical Steering Committee minutes - 2020-09-15
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>
> * LLVM/Clang
>
>   LLVM people not super interested in older clang versions or even clang-=
10.

clang-10 is the minimally supported version of Clang for building
Linux kernels; we do very much care about it:
https://lore.kernel.org/lkml/20200902225911.209899-1-ndesaulniers@google.co=
m/T/#m61957eaada46dc8c51fdf2010859eb1976227005

>   Once clang-9 is out, when Mark updates to clang-11 he=E2=80=99ll send s=
omething also
>   dropping the older clang versions once clang-11 is live. Can reevaluate=
 this
>   policy once there are stable distros with clang.
>
>   Nick maintains a clang-latest docker image, we should into integrating =
that
>   for potential inclusion in linux-next coverage - will need some evaluat=
ion to
>   see for example how noisy it is and if we need to do something about
>   segregating results for the bleeding edge compiler.

Nathan maintains it more than I do:
https://github.com/ClangBuiltLinux/dockerimage

>
>   LLVM 11 release:
>   * Status tracked at https://bugs.llvm.org/show_bug.cgi?id=3D46725
>   * Several pending bugs need fixing, some look relevant

Fixed! (oh boy, we were on the "chase list")

>
>   Android LLVM versions: Mark to ping Todd and ask him about using those =
for
>   Android branches.

android-mainline
android12-5.4
android-4.19-stable

are the 3 newest branches that I know of.

>
>   Testing with clang-12: could take a short cut and deploy on staging rat=
her
>   than sorting out fancier reporting
>
> * KCIDB
>
>   Half of JSON stream parsing is merged into jq.py. Another half remains,
>   pending on the maintainer's attention.
>
>   KCIDB input stream parsing implemented locally, to be tested, and waiti=
ng on
>   the jq.py PR above.
>
>   KCIDB output splitting next.
>
> * Web dashboard
>
>   Improving web UI to differentiate skips and tests that have always fail=
ed
>   See on https://staging.kernelci.org
>   (pie charts and small things left to tweak)
>
> * Using Linaro test-definitions for LAVA jobs
>
>   Created test-definitions fork for kernelci.org and staging.kernelci.org
>   kernelci.org branch updated weekly with prod update
>   staging.kernelci.org branch updated with open PRs like other projects
>
> * kselftests: build errors mixed with main kernel build
>
>   Long-term solution would be to have separate stages (kernel build, ksel=
ftest
>   build, runtime) with dependencies and pass/fail status
>
>   Short-term solution and necessary step is to build kselftests as a sepa=
rate
>   =E2=80=9Cmake=E2=80=9D command and keep the output in a separate log fi=
le (like tuxmake does)
>
> * login test case false-positives:
>
>   On LAVA 2020.08 kernel panic is detected, test case status marked as fa=
iled
>   LAVA job Incomplete
>
>
> Technical Steering Committee minutes - 2020-09-22
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>
> * KCIDB
>
>   The jq.py maintainer is slow to respond and keeps making requests, offi=
cial
>   streaming support doesn't seem close anymore, so I made a release for
>   temporary use in my personal fork.
>
>   JSON streaming support is merged into KCIDB - integration work can be
>   started!  You can now write reports one after another into any tool acc=
epting
>   reports.  Submitting 1000 reports containing 8000 objects through
>   kcidb-submit takes about 35 seconds now.
>
>   Kcidb-query, kcidb-db-query, and kcidb-db-dump now accept the
>   '-o/--objects-per-report' option specifying how many objects should be =
put
>   into each output JSON report. When that option is used, they can output
>   multiple reports.
>
>   All tools outputting JSON can be asked to not pretty-print it (with
>   '--indent=3D0'), outputting single-line, or to prepend each report with=
 the RS
>   character (with '--seq'), complying with RFC 7464, either of which coul=
d be
>   easier to process with command-line tools.
>
>   Next KCIDB release soon. Theme: JSON streaming support.
>
>   Cristian Marussi from ARM is setting up sending their CI results, and m=
anaged
>   to push a bunch to the playground setup - looks great!
>
> * Plumbers 2020 KernelCI blog post: ready to get published this week
>
> * KernelCI TSC plan: Starting to make plan for 2020-Q4
>
> * E-mail regression reports: fixing formatting when more than one regress=
ion
>
> * User experience:
>
>   KernelCI LF board starting to brainstorm around next-gen dashboard /
>   visualization / analytics to potentially fund a 3rd party to develop we=
b
>   tooling
>
> * "unknown" failures on web UI
>
>   https://groups.io/g/kernelci/topic/user_interface_issues_with/76927781?=
p=3D,,,20,0,0,0::recentpostdate%2Fsticky,,,20,2,0,76927781
>
>   -> Yes this looks very much like the web frontend issue described befor=
e,
>      being fixed right now (separating regressions, always-fail and skips=
)
>      https://github.com/kernelci/kernelci-frontend/pull/125
>
> * EFI on QEMU
>
>   u-boot with EFI extensions on arm/arm64 to get coverage for the EFI boo=
t
>   paths in the kernel - Might just do this via the FVP.
>
> * clang-11
>
>   Can merge the docker update, will need to rebuild when the final LLVM 1=
1
>   release lands (hopefully RSN, the tracking bug looks to have mostly no
>   dependencies).
>
>
> Advisory Board minutes - 2020-09-16
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>
> * LPC recorded talks are now on YouTube, time to tweet about them
>
> * Discussing priorities for 2020-Q4 TSC plan:
>
>   Native tests: kselftest, LTP, KUnit, device tree validation
>   KCIDB with production data from kernelci.org
>   =E2=80=9CPolishing=E2=80=9D: Improving docs, fixing long-standing bugs,=
 LF project PDFs=E2=80=A6
>   Metrics: discussed many times, now we should start implementing it
>   CIP KernelCI instance: already discussed, also needs some action now
>
> * Discussing next important topics, for 2021
>
>   Define some work packages / RFQs
>   Testing patches from mailing lists
>   Improve regressions tracking for native KernelCI tests
>
>
> Best wishes,
> Guillaume
>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Groups.io Links: You receive all messages sent to this group.
> View/Reply Online (#894): https://groups.io/g/kernelci/message/894
> Mute This Topic: https://groups.io/mt/77036654/1813933
> Group Owner: kernelci+owner@groups.io
> Unsubscribe: https://groups.io/g/kernelci/unsub [ndesaulniers@google.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>
>


--=20
Thanks,
~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/CAKwvOdkHiRAxCrrqRTq%3Dk09zW-X9cHogyq%2B7fTuM_aJyntXs4Q%4=
0mail.gmail.com.
