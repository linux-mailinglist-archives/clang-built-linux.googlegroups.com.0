Return-Path: <clang-built-linux+bncBC5KPPH4YUKRBVEWR2DAMGQEXHPK73Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1040.google.com (mail-pj1-x1040.google.com [IPv6:2607:f8b0:4864:20::1040])
	by mail.lfdr.de (Postfix) with ESMTPS id 245773A4631
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Jun 2021 18:12:06 +0200 (CEST)
Received: by mail-pj1-x1040.google.com with SMTP id on11-20020a17090b1d0bb029016bba777f5fsf6274745pjb.7
        for <lists+clang-built-linux@lfdr.de>; Fri, 11 Jun 2021 09:12:06 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623427925; cv=pass;
        d=google.com; s=arc-20160816;
        b=UANF7X4/PsQKx8vceFb/OXohooNDV+cpb+hoLYV2ps29EEkJ1RWnjvkxQce9q7dDEG
         rKCXxj/4Vu2CyTO5duhzK4F8GOucEOUej6PAthqK/mh3+VDBqdbfa5uARZwDtSx6xd0f
         FlGOWK0OkUSYOLYgpDfLNrXXuExwPzwu6kGD0JkWRwsgHslkNc+AUX2f3o9vAGQ2zRWY
         jkUbvK4Pc2iTYWg2AePz4ikkNJVCb1vQu3Y/M9LAtuniybLsjb5tEz1UjKrwicaNM9/h
         dNv4rgEeePVfkWlKf9uNTpNnPvQLrhK53GowUPmN4nMhBMrGc8kzW4A8ApsGBL0jLoBY
         mqdw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=Zo6nvf2TsN4lSN+SNDzZ4HqFddTEHYKxnq1vymUkwU0=;
        b=NpAuETIo4klyesNkgjOeJlHO1yBbHuOBbR+zoBJrV7mz6hyt2O8CKTlUQpASjBZDsj
         aN5pEPk19nLEMiguQKgJWkOGyNfVNLiDIONj78gdK3JPbmM2gHyA4FNNvy5sZkMZnohC
         KXozT/cL2LTyZXRPZnX8wNAZoGdHvHrSzGP/dKpZYvNyrYd/09pjd6zrEGU2jpOH4w7y
         zVmCbPnpxD7G1g8ClXcwVpHPt3mpVMoZks91CT2rxWJVR1Qt96PjDIoc701/Yw6jy2W6
         +W87nZCVIkiKriG1mflXycLJvyMOGcSQvJw6zg8ATeXdGZbl6I0C+l+faxDD4o8KdGzA
         hPgw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of guillaume.tucker@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) smtp.mailfrom=guillaume.tucker@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=Zo6nvf2TsN4lSN+SNDzZ4HqFddTEHYKxnq1vymUkwU0=;
        b=S2FS/jcFUoWqtehHKt0/Cj1mNpOkFogvN/cO20axp/cwxgmGEZ3pUaXp9jMwxX5uW0
         VdFLkldOTrrwKBvQoBgacCFES9reE6np8ujL3kIDDDtqbJRcjzl/pycsHgIrGlOnq9Gp
         DpJEzbmi3ocTfX5nFKTr+8I6RZZWHvNJ7GAEDjEeJ5Kf07y7raS+IO44DwzDEsNAcfZO
         v2eHfJ0AMaC8AOB6S4JF9cvIoZXK1PW3iCc3DCJCUl3+lf2ZC+fo3Ox44jJjHa9W/vqG
         I8tQmHnf1UKXde/d1fhXojQiboiJJVSiyX1z1AYKrAyr4r8JAgEng4mWxtZNpmNmA20A
         e6Xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=Zo6nvf2TsN4lSN+SNDzZ4HqFddTEHYKxnq1vymUkwU0=;
        b=BUzWtzMuQlZhSZc+MFnrDvnoquNtbGsa2cuviNHdXmZq6+dhvNST304oXg4Z15nk88
         6UTW+HtzoDsXwHP6RADCuct2NXXcy4fzt7UztlDxfTr0YS18Re3P7gKRWSNg505hp55V
         0ii6Zg8RqbyfxS9gbW4yrEpTBOuos7lnyqFBXObx9qqf0030SuNMTmOH/bWaQ60WE/Uw
         XH5cp6pNIGPdMShujaiiRWyUO4LzViK5Z2if6CdnEcmOH5obcW6n4uLsLqqg4RziHN7e
         Evx5HFMQ7h9i6rdbMFB+/s/h8J3r0fBZKACgBzWcN03ZVGUmTCJb4hc8AS8sHZSvCTGs
         JWCg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533dVZQC71r+Xzj6OC5HPHilg3lujI8zhYhxKBXt7SKSme28qrbM
	fmMeucnV+XdlP8yq6AVJBng=
X-Google-Smtp-Source: ABdhPJxN1+qt6al2Hnwc/KeG8MZQwUxrNH7dT8+aANpDdp1iE3pdfccKZR2Pb4hwgfWjJ8iYFWdYiA==
X-Received: by 2002:a62:1ad7:0:b029:2e9:ac27:6ac8 with SMTP id a206-20020a621ad70000b02902e9ac276ac8mr8953869pfa.21.1623427924790;
        Fri, 11 Jun 2021 09:12:04 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:b605:: with SMTP id b5ls2529045pls.4.gmail; Fri, 11
 Jun 2021 09:12:04 -0700 (PDT)
X-Received: by 2002:a17:90a:4298:: with SMTP id p24mr9796153pjg.144.1623427924154;
        Fri, 11 Jun 2021 09:12:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623427924; cv=none;
        d=google.com; s=arc-20160816;
        b=rrjoEbB8mVunolbMzFqIVdHYBXwHbIsK16YZ1nqANrp0FenYy56MJdFSwEvRKiicMU
         HKCxudS2DVhSQ90sRkzSjP0dpM7pR++fq+mj+OGMohJDBypy6XPTJoFabFHGcewd83Zu
         tFIuHADYid3g+jys4UolwUww82tKksXDIopqsmYqANEn6hPLM3SMGUlHoxFDtozhJmjZ
         4bkeGfKEtP+LeN579sO03MzcJp6eDpwGR8VmJuDXqZnbTJ0KJ4vC+GIHrlqdvQX0sNfd
         L0TR5b/yYfELj8H7VE7vCB0mQwQARmYNKnlcv1kXGeFOZDIN3U3FyQnIpWElP7TQ9f2O
         BF/Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=NtmDy6xCcoe3ZRF+DJB6AEKpwbZwrkm16H7nx/Yu8LA=;
        b=tUXcCT0S8AtNa/aIDutA9DfI3TfWz4crujjMzdYNCPaDairmgf0NF23SyUYlO0nMbZ
         ZxJg6snlWdq2qUjAlbkv9TrFx+zXP71ibNeFVTIyA1zhdvS0foUjlh5r0GEl2aLem8ru
         GwCNMMozZ4g+K6Jbr+8SN1tL42RXJ14LLt/QaPl8dzPy9prAsdOjSbIINuy3KJdZUFqd
         g7x9Q4sVbGSHBm2BIyyrznFBTps0mSJw3MwAH7qPo07FeasUwtboEY/IbixSBXgNKA/r
         7Y4j3AmOrjr12qBqS7DKn5AAOaB0VtBfu9UPJXyF2Au83o3Xi5oKDhoQzdD9ErXCHTfg
         Jsbg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of guillaume.tucker@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) smtp.mailfrom=guillaume.tucker@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk. [2a00:1098:0:82:1000:25:2eeb:e3e3])
        by gmr-mx.google.com with ESMTPS id o20si923358pgv.1.2021.06.11.09.12.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 11 Jun 2021 09:12:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of guillaume.tucker@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) client-ip=2a00:1098:0:82:1000:25:2eeb:e3e3;
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: gtucker)
	with ESMTPSA id 4D83B1F44812
Subject: Re: #KCIDB engagement report
To: kernelci@groups.io, keescook@chromium.org,
 Nick Desaulniers <ndesaulniers@google.com>
Cc: Nikolai Kondrashov <Nikolai.Kondrashov@redhat.com>,
 "automated-testing@yoctoproject.org" <automated-testing@yoctoproject.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Vishal Bhoj <vishal.bhoj@linaro.org>,
 Antonio Terceiro <antonio.terceiro@linaro.org>,
 Remi Duraffort <remi.duraffort@linaro.org>
References: <5a9bf050-0671-3273-cc4f-1b131445c1fe@redhat.com>
 <CAKwvOdmwRV6R6dcpcSL06SNVQ1_JwvOJMZPYiHKvjSx4sf_95g@mail.gmail.com>
 <202106011315.432A65D6@keescook>
From: Guillaume Tucker <guillaume.tucker@collabora.com>
Message-ID: <774899c5-c20a-3d7e-3289-ee257b86e06e@collabora.com>
Date: Fri, 11 Jun 2021 17:11:59 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <202106011315.432A65D6@keescook>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
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

Hi Kees,

On 01/06/2021 21:26, Kees Cook wrote:
> On Mon, May 24, 2021 at 10:38:22AM -0700, 'Nick Desaulniers' via Clang Built Linux wrote:
>> On Mon, May 24, 2021 at 12:50 AM Nikolai Kondrashov
>> <Nikolai.Kondrashov@redhat.com> wrote:
>>> [...]
>>>      KernelCI native
>>>          Sending (a lot of) production build and test results.
>>>          https://staging.kernelci.org:3000/?var-origin=kernelci
>>> [...]
> 
> Apologies for the thread hijack, but does anyone know what's happening
> with kselftest? It seems missing from the listed[1] build artifacts, but
> it is actually present[2] (and I see the logs for generating the tarball
> there too), but I can't find any builds that actually run the tests?
> 
> (Or how do I see a top-level list of all tests and search it?)

The kselftest results are all there on the KernelCI native
dashboard, for example the futex tests:

  https://linux.kernelci.org/test/job/mainline/branch/master/kernel/v5.13-rc5-74-g06af8679449d/plan/kselftest-futex/


Here's a set of passing results on a "coral" x86 Chromebook, with
a bunch of unknowns but that's because other kselftests are being
run when they shouldn't (net, mqueue, ptrace) so it's noise which
should get resolved with a fix soon:

  https://linux.kernelci.org/test/plan/id/60c2bf67ed48b86ffe0c0df8/


And here are the full kernel build details:

  https://linux.kernelci.org/build/id/60c2bdeea60229633d0c0f0c/

and artifacts (logs, binaries, meta-data in JSON):

  https://storage.kernelci.org/mainline/master/v5.13-rc5-74-g06af8679449d/x86_64/x86_64_defconfig+x86-chromebook+kselftest/gcc-8/


So this is the original data, now let's look at what we have in
KCIDB.  Here's the matching build:

  https://kcidb.kernelci.org/d/build/build?orgId=1&var-dataset=kernelci04&var-id=kernelci:kernelci.org:60c2bdeea60229633d0c0f0c

However there's no results, probably because submitting the data
failed for some reason.  It could be due to some invalid
characters in the test names.  The Log link works though, it
takes you to the directory with all the log files - to be
improved as it's advertised as a single build log...

So we'll take a closer look, see if there were any errors in the
logs to find out why the results aren't in KCIDB.  But the
kselftests were definitely run.


Thanks,
Guillaume

> [1] https://kcidb.kernelci.org/d/build/build?orgId=1&var-dataset=kernelci04&var-id=kernelci:kernelci.org:60b654321456eb7654b3afa6&fullscreen&panelId=17
> [2] https://storage.kernelci.org//mainline/master/v5.13-rc4-11-gc2131f7e73c9/x86_64/x86_64_defconfig+x86-chromebook+kselftest/gcc-8/

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/774899c5-c20a-3d7e-3289-ee257b86e06e%40collabora.com.
