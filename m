Return-Path: <clang-built-linux+bncBC5KPPH4YUKRB3GQUSDAMGQE7XIWD2I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1040.google.com (mail-pj1-x1040.google.com [IPv6:2607:f8b0:4864:20::1040])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EF053A8BBF
	for <lists+clang-built-linux@lfdr.de>; Wed, 16 Jun 2021 00:23:42 +0200 (CEST)
Received: by mail-pj1-x1040.google.com with SMTP id z3-20020a17090a4683b029015f6c19f126sf480149pjf.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 15 Jun 2021 15:23:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623795821; cv=pass;
        d=google.com; s=arc-20160816;
        b=GkiHp7NZISf2ZzRKPeZ0gsMlLFAlu03qCT8jov0S5KPVmMU8jbG40fetjUoTFJSs6m
         VXo2FPiKM+Y8dQWdwzhShSfyXDS9ba226ntoLesWguxMIMTd3A0qn2jX4rsIz8GzB3UR
         WmPVaD/EvcENIpTwbiXagWOk1xGCCZkNhd8tG5vf8W6hFN1z/jvZjwFdh2//8AwLgOia
         MXoXpZNW7N2r7zF5o9h0ivFjL9O4p87TFyr1ksLIUFd8zFI8XqFtZT0OvNsxMXwXTmiJ
         tV1rgGGxJzelnPzhvIvyICtqEE+Bh5Xe8YjUYcrvBAmGOCET0YgMUwVXCXu4f1RRNlhu
         r1Fw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:from:references:cc:to
         :subject:sender:dkim-signature;
        bh=XdSxLOFoqdoo++bmUgKDRlZIm2rnWBHmmokFRnvOjvA=;
        b=kdl47eHN3SrEI5pifcwhHChtXP+/EIVFLsKemw2wFT1fcFRH8BT+y/GJRbZ+VzCsZx
         cEIj52/V7Gs9/s+03CuN5CiYV0MUj/eDURKtY7HlPEYhPqiRNW6yF5gcn4SrFM1OmyRB
         WTVIgSRESAxfo5n7P0E33PPsrkQlSHKx1lAcH+5zjPy79L56nHmWj8KabMlyf5JnV1c2
         mgdbDdy4VsNcljJoFKOPyWf0nz5J1U7uaPspef98IO0FEGjIqGyZwm51IscBtjzf4szr
         JBD8IeG/52tOr3gJNJnv9KclGiul0x/yoicUP7+sPMCmW77ScyO3v2HoLoU0bOq0NWYt
         9GEQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of guillaume.tucker@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) smtp.mailfrom=guillaume.tucker@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=XdSxLOFoqdoo++bmUgKDRlZIm2rnWBHmmokFRnvOjvA=;
        b=EgnhBFhW62Kk+Kl4pHMlL5XHxWQGwb8bglxtjFJX5hbYj14QDNHCpeteBZ/aCgXIGg
         1YrtHadAy5TvPBuGjRybXHmt5ZJCG74ZxqLNuX7yR2RpAFYmOmrNpr4OfgkR4ydAbVkw
         WPbXR/Sn31/b1ab8vPp5xiaG2jvMZhOSs61P/Hsg2ZVRKFZFIF9RXffk6ruPpM5XLBKg
         pezKWzdnacIV3vBQXyHpjb0WUPA3zL10MAbEzfOxUlbxJ4j81DZM9ujsjGCsveed8s8t
         GCiEI5zWaeDNCfoUpQ+ZvZoHRk6M+UpInxiZX2tZPIgBbjGR4uNgJ5XwfsD6c600wM7k
         hZTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=XdSxLOFoqdoo++bmUgKDRlZIm2rnWBHmmokFRnvOjvA=;
        b=l1rwWP2WCUAvXbmapgmHBnj+FKIIS6KIzedpwFCKg/kq4YjyA1Jl86bmcC/vsDa32F
         tbkhc9BEjZ32AhoFBFRA57d6iXzO7fbGUf1cZnWHbkWHTcK+FfHVLXhlGWoKU4lLDj+e
         Xy+/247s7ya0V6V8CKChIfsQWQuIGyg8wHljqhVlD6cF/Dqd4u5uA6wKqVwd+6o9wx8a
         pq5/heP4cJHw325zCVFjE+6ne1wwkz4wzR58QRvaGKVQcB7T/StYTWbJJqu3KmGHdlPb
         naBHuog34jte5appUIZbx9NvORMKSpJj0UIHJxMk8AJtCgmoSXp70t93zpbybfUEOb8I
         PmHg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533EzD7z24tLANfSL5g/v85dGY4XRXNfnZilMTJzda8y7P6sTL2S
	hfT/L38154/nytxQoUDYZ3o=
X-Google-Smtp-Source: ABdhPJxBzhWGxIOmkJeByrQ+f3DJL+vUwvvQQoNU5YFbLMaDSrtfEWl+8PXU1lNpJjhcJmDFcRqv6w==
X-Received: by 2002:a17:902:7c05:b029:11c:1e7d:c633 with SMTP id x5-20020a1709027c05b029011c1e7dc633mr4851859pll.48.1623795821050;
        Tue, 15 Jun 2021 15:23:41 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:501b:: with SMTP id e27ls141494pgb.2.gmail; Tue, 15 Jun
 2021 15:23:40 -0700 (PDT)
X-Received: by 2002:a05:6a00:bc1:b029:2f4:3461:c2ae with SMTP id x1-20020a056a000bc1b02902f43461c2aemr6492193pfu.9.1623795820339;
        Tue, 15 Jun 2021 15:23:40 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623795820; cv=none;
        d=google.com; s=arc-20160816;
        b=nYZ4+H8dFSoBZ5D8BSQxaFxqdLpNTvvymduliKXBjDeNI3Yjsn2QaebDMbjaWb70gA
         59l9VGcwsyXiZabgxUH0XQt+tJuchbm56b4TTPQqAci9TscaUVqO0kMaPl3uC27xvbvd
         O3e6HlRn8xhz30kuLtfwP9qkcyfG6giUmzcXsezrmK4hOKAAUa3PcLGt8Ynt5+tKK+J4
         QDqZr/s4EXQ3yEbUkDqAhknLphkZPpi/Fj6WllSiWBObhxG5u2AwshVrcg6IWUM0Q/Na
         kymKtLq1M7yvuKIrtDoiWbHMnuf5P/v/fZ9Ea8E7EAzxbQ/iNVKgDpAAcIgwQsBtYsTP
         gZSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=vqyOQ6kV2crZhAzsoGDPVOIQ80olqbnRouMZB3EYTZU=;
        b=z2KtmmRPspIOtphSwifISxGepfi/cjq8yXL5Q+3rPOKbRLMuwbOg0m1hwO6fYOlc+U
         5iaQdxGUAk63xWALgCdiQZACAI6XnxidZIAGSafnn0m6S1yQArRWvuH/YdyEspjEp+la
         WWmxItJViZLhpeBNKe9TDh+C2obYRvtupZJhFldF8ppI9ZwggQgHLAZeRg/I6IyIB/7w
         aDPlSBCVvX5e9ugNL6edBD1Yuw7ar4XSxHqivFKy8k0AtfFhdB/yd1s5UfO2SQ9SAT9Y
         4tOLiC/UCbLhfxQ/TqUeSkriMxEgwQbHhAfVfRz0v1xreggp+VqeivFyC6FVHuGXzpvk
         vxVw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of guillaume.tucker@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) smtp.mailfrom=guillaume.tucker@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk. [2a00:1098:0:82:1000:25:2eeb:e3e3])
        by gmr-mx.google.com with ESMTPS id r7si16352pjp.0.2021.06.15.15.23.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 15 Jun 2021 15:23:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of guillaume.tucker@collabora.com designates 2a00:1098:0:82:1000:25:2eeb:e3e3 as permitted sender) client-ip=2a00:1098:0:82:1000:25:2eeb:e3e3;
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: gtucker)
	with ESMTPSA id 418191F432F8
Subject: Re: #KCIDB engagement report
To: Kees Cook <keescook@chromium.org>
Cc: kernelci@groups.io, Nick Desaulniers <ndesaulniers@google.com>,
 Nikolai Kondrashov <Nikolai.Kondrashov@redhat.com>,
 "automated-testing@yoctoproject.org" <automated-testing@yoctoproject.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Vishal Bhoj <vishal.bhoj@linaro.org>,
 Antonio Terceiro <antonio.terceiro@linaro.org>,
 Remi Duraffort <remi.duraffort@linaro.org>,
 Alexandra da Silva Pereira <alexandra.pereira@collabora.com>
References: <5a9bf050-0671-3273-cc4f-1b131445c1fe@redhat.com>
 <CAKwvOdmwRV6R6dcpcSL06SNVQ1_JwvOJMZPYiHKvjSx4sf_95g@mail.gmail.com>
 <202106011315.432A65D6@keescook>
 <774899c5-c20a-3d7e-3289-ee257b86e06e@collabora.com>
 <202106151501.235746C5@keescook>
From: Guillaume Tucker <guillaume.tucker@collabora.com>
Message-ID: <f68058fe-a047-2c02-ce35-8349a95f69b8@collabora.com>
Date: Tue, 15 Jun 2021 23:23:35 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.11.0
MIME-Version: 1.0
In-Reply-To: <202106151501.235746C5@keescook>
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

+alex 

On 15/06/2021 23:03, Kees Cook wrote:
> On Fri, Jun 11, 2021 at 05:11:59PM +0100, Guillaume Tucker wrote:
>> Hi Kees,
>>
>> On 01/06/2021 21:26, Kees Cook wrote:
>>> On Mon, May 24, 2021 at 10:38:22AM -0700, 'Nick Desaulniers' via Clang Built Linux wrote:
>>>> On Mon, May 24, 2021 at 12:50 AM Nikolai Kondrashov
>>>> <Nikolai.Kondrashov@redhat.com> wrote:
>>>>> [...]
>>>>>      KernelCI native
>>>>>          Sending (a lot of) production build and test results.
>>>>>          https://staging.kernelci.org:3000/?var-origin=kernelci
>>>>> [...]
>>>
>>> Apologies for the thread hijack, but does anyone know what's happening
>>> with kselftest? It seems missing from the listed[1] build artifacts, but
>>> it is actually present[2] (and I see the logs for generating the tarball
>>> there too), but I can't find any builds that actually run the tests?
>>>
>>> (Or how do I see a top-level list of all tests and search it?)
>>
>> The kselftest results are all there on the KernelCI native
>> dashboard, for example the futex tests:
>>
>>   https://linux.kernelci.org/test/job/mainline/branch/master/kernel/v5.13-rc5-74-g06af8679449d/plan/kselftest-futex/
> 
> Thanks for looking at this for me! :)
> 
> How do I find the other kselftest stuff? I just see "kselftest-futex"
> and "kselftest-filesystem". I was expecting _all_ of the kselftests, but
> I can't find them.
> 
> (Specifically, I can't find a top-level "list of all test plans")

That's because kselftest is rather large, and we're only enabling
subsets of it one at a time.  As more test labs and more devices
become available, we'll gradually expand coverage.  We might also
choose to have full coverage only on say, linux-next, mainline
and LTS branches but not everywhere to not overload the labs.

To answer your question about "all the tests", well you can look
at any kernel revision to see the tests that were run for it
since it won't be the same for all of them.  Typically,
linux-next has the highest number of tests so here's an example:

  https://linux.kernelci.org/test/job/next/branch/master/kernel/next-20210615/

As you've already found, there are only 3 kselftest subsets
or "collections" being run there at the moment.  That's by design
in the KernelCI configuration, but at least we have good enough
support for running kselftest now which wasn't completely
trivial to put in place...

There are still a few issues to fix, but I would expect kselftest
coverage to keep growing over the coming weeks.

If there are kselftest collections you really want to have
enabled, you can always make a PR to add them to this file:

  https://github.com/kernelci/kernelci-core/blob/main/config/core/test-configs.yaml#L187

As long as there's capacity for it at least on some types of
devices and it runs as expected, we should be able to get this
deployed in production pretty easily.


Thanks,
Guillaume

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/f68058fe-a047-2c02-ce35-8349a95f69b8%40collabora.com.
