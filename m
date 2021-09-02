Return-Path: <clang-built-linux+bncBC5KPPH4YUKRBNPFYSEQMGQEAJQ2ZSI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x53a.google.com (mail-ed1-x53a.google.com [IPv6:2a00:1450:4864:20::53a])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A1A33FF4D6
	for <lists+clang-built-linux@lfdr.de>; Thu,  2 Sep 2021 22:23:18 +0200 (CEST)
Received: by mail-ed1-x53a.google.com with SMTP id s15-20020a056402520f00b003cad788f1f6sf1589826edd.22
        for <lists+clang-built-linux@lfdr.de>; Thu, 02 Sep 2021 13:23:18 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1630614198; cv=pass;
        d=google.com; s=arc-20160816;
        b=Vsu3JwMll0tkWJvV1bw/I7XukBmUrW1PX6TJ1m6IYnJzEDMCb/WTa5G2EoxSnROrkE
         L9WLwmY0Rh0O83VFuavlvNEauUYWif6KFvQY99gWBLU8vi5TkQrkH0Ifs8+acP8nvDhB
         tCsBcN+op9U/DDNLH/rtbuYwl1sVnkjaiJRvMc+oWmDTvYPghNpjTPaS7TkreP0BS23n
         KLWE/+ZKXHC0RaeXjLs74hzzzWBeHGRK7gtZBJT0Rxd7YqN6Z2yMwYaM0/xrBydstZAy
         1JXZzU37XC24DtVqvbbvhwSoCg388d7EuGW6LzZeUSXHVSjvcqMAI/BMW+eobN7N9nfD
         s4IA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:in-reply-to
         :mime-version:user-agent:date:message-id:references:reply-to:cc:to
         :from:subject:sender:dkim-signature;
        bh=BgojI3yJo+DLTDvakrQ3KKXbxZdWbSyLxtXr4qQgtsU=;
        b=FG5/pORP3GjDoyDCviXJ0qCJ8m9zBRYUdoPfTvOcNVnp8RyfEDuReVv90r8romN+O4
         5S/RpABYt80VoQE7USetkM2vrt+jHphofCL+8Ubq7Fn9pmiPmK7w46n+c4G9/Gr6fHsR
         uoqwltmNzSqIyAEAu38ie/aUp6/6vlajnLQPyLNuEpA2h1Caj2ULHXGO1IpXBPhQhdU9
         bJf9eEpXgxhrgBZog/v3scP57dmlUwda2CJSnX392BfbgnscruM3535OI8vkVtdpwNeP
         H63JhW8+5jIldOJMDNOwwlirDKR2qh4UoD6bbiFEjneP/175wKiUslu3z9di2ZzY7NNF
         Z8dA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of guillaume.tucker@collabora.com designates 46.235.227.227 as permitted sender) smtp.mailfrom=guillaume.tucker@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20210112;
        h=sender:subject:from:to:cc:reply-to:references:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BgojI3yJo+DLTDvakrQ3KKXbxZdWbSyLxtXr4qQgtsU=;
        b=Ibprd2v4KG2Da52qZV1ENI4yIVAY30Ywv1xw+sXrBj1sTiX26B4bd7romb+JAX0jv2
         WLvPDCMr6OG+fLhkz0VhNiBQOzXti+cPTdjVDhRdZea/wQaLIcNLR10G3dOCK4ON5Ceu
         FQuxLN60VIhQhsy6r9IJG05kqcI9/U4F9VQ9YAOXUGXCDJJAXW0z4ONrhRn5rI8MIIjJ
         GnWn8bbXbyCGOhls5OEA5cgzpUFa/UwB5XG/8qomH2m/QixfhhyfngFXWOwJyH1tRos6
         bZ9tTr38utT+Oe2i84EOtyT3NohKPmbJPPROo3EwMVxPmsHCO2+z5XE8WSIN38p6ROdM
         Xhsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:from:to:cc:reply-to:references
         :message-id:date:user-agent:mime-version:in-reply-to
         :content-language:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BgojI3yJo+DLTDvakrQ3KKXbxZdWbSyLxtXr4qQgtsU=;
        b=OcdlI0/ol9MRLvnW1npxFHKL4FcvaLzYaUG8m0yA7W71bn6gfJbNbayhgJnHUodEBd
         HDN8RwfgiyigFIvFw0P63ciCqqSAMt6yj1Rg/iOboB0ZfLbor4vc7bkloTba/CuH27fM
         hlZoYSGd0Nd+g2xldI9lHAxmMVqgNN0N4c+9+e07nBzalARJdp+wrTtvJeTfwhl9S+LM
         oSXgox9nLqHIw1JQvJwRT48bPsXcPtQ0Y5JkifuyHJi72IDaPZNUi10GwiIZunPAYQj2
         PqWpoX6RqZEYxxOIm9V0mDK4RgYaL4BsCY3Ib8br2MbHcbE25bCzssJWdZhPkYAf00Rd
         wObg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532XNxT3DSX26T5ceVJimTvJfhcKYhhJdtPwWFz/QpY7QY0yG2i8
	QPaDGz4Ygboz29APdJ0nJuY=
X-Google-Smtp-Source: ABdhPJwkjum/TyFd5NcUAEEGneTbPfh26SCKsutZLtNLZiRbsSwlsaHSFyojNUhEosW3rq9S+IQp7w==
X-Received: by 2002:aa7:dd93:: with SMTP id g19mr163397edv.262.1630614197922;
        Thu, 02 Sep 2021 13:23:17 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:538d:: with SMTP id g13ls1840147ejo.2.gmail; Thu, 02
 Sep 2021 13:23:16 -0700 (PDT)
X-Received: by 2002:a17:907:168b:: with SMTP id hc11mr15435ejc.226.1630614196889;
        Thu, 02 Sep 2021 13:23:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1630614196; cv=none;
        d=google.com; s=arc-20160816;
        b=Py+OC4gaiXLz1cs4Hf20NREp1dUTodOsQc/hc4BVtBt+IrwC+lGaOxK0LnXc6mRCwY
         uKV8eiy9Nx0Z+qy2+QjixF4TFwFSc7buCAhE+ZNTCOzE1L6zm+RIPzr4RX43IcGn0K88
         BNt+qRaMcDwthvxxBpm+6r35aodAW4LF4dxdtFdWYJbbAA+8oJ+TonhtQLbfmPUHfsTg
         OevmB+UJAEg1pvms8UC3QtZKPNJXYCGRlY9TwZxBb3CCMPGGcyfpX5DAYNx/S6JpOCyQ
         1MPBikLxIKTI59/7X5/+V16KChiYy2kwordsFJD+dQ2kFBL9lbv0xcezmatstPBSvgHn
         C4QA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:references:reply-to:cc:to:from:subject;
        bh=GMkLLjIuHknIMJ63+Z2Ozgb2a58O/5X4uPdS5WxkCYo=;
        b=GiBjX001H+n+AHRaRrSdH+hmrVNw+T0E7PS56ilHiL3yH95N3drGVXFCyxXioAKAif
         qmP7kg8x+Qhd4BleUxFfvpf0TvBimY37dCX2dViC2f7uUZsjn3J97y8LBma3riemjwzA
         F5IOr6mKuRGb9DwF4B5eyuBomsuZAm0HefjOZMb1FM6lKvAYxLXBTXmSFKClg3cwnQ9i
         HaHAfn/LIvM5eRL6txhFe+LRzTctPHv6IrlGI8RCi9mJcMiZoLXoFvkaGv1oRSVjan1W
         f8dAbi0mw2U/pxigIN1LDja3qHuxzGQjcKeRqD7/uVPrkVzj9PwO9d41LdO3G+fhjIym
         9Ocg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of guillaume.tucker@collabora.com designates 46.235.227.227 as permitted sender) smtp.mailfrom=guillaume.tucker@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk. [46.235.227.227])
        by gmr-mx.google.com with ESMTPS id s18si137423ejo.1.2021.09.02.13.23.16
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 02 Sep 2021 13:23:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of guillaume.tucker@collabora.com designates 46.235.227.227 as permitted sender) client-ip=46.235.227.227;
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: gtucker)
	with ESMTPSA id F27671F44AE4
Subject: Re: KernelCI Hackfest #2 - Sept 6-10 2021
From: Guillaume Tucker <guillaume.tucker@collabora.com>
To: "kernelci@groups.io" <kernelci@groups.io>
Cc: kernelci-members <kernelci-members@groups.io>,
 automated-testing@lists.yoctoproject.org,
 Collabora Kernel ML <kernel@collabora.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Jesse Barnes <jsbarnes@google.com>, Summer Wang <wangsummer@google.com>,
 linux-kselftest@vger.kernel.org, workflows@vger.kernel.org,
 kunit-dev@googlegroups.com,
 clang-built-linux <clang-built-linux@googlegroups.com>
Reply-To: kernelci@groups.io, guillaume.tucker@collabora.com
References: <169771B791E5E075.25031@groups.io>
Message-ID: <259a2ea9-63da-b5df-3496-676c2b76700b@collabora.com>
Date: Thu, 2 Sep 2021 21:22:56 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.13.0
MIME-Version: 1.0
In-Reply-To: <169771B791E5E075.25031@groups.io>
Content-Type: text/plain; charset="UTF-8"
Content-Language: en-US
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

On 02/08/2021 10:00, Guillaume Tucker wrote:
> The first KernelCI hackfest[1] early June was successful in getting
> a number of kernel developers to work alongside the core KernelCI
> team.  Test coverage was increased in particular with kselftest,
> LTP, KUnit and a new test suite for libcamera.  We're now improving
> documentation and tooling to make it easier for anyone to get
> started.  Find out more about KernelCI on https://kernelci.org.
> 
> The second hackfest is scheduled for the 6th-10th September.  It
> should be a good opportunity to start discussing and working on
> upstream kernel testing topics ahead of the Linux Plumbers
> Conference[2].

Please find below some extra information for the KernelCI
Hackfest which is taking place next week.  We're expecting at
least some contributors from the Civil Infrastructure Platform
project, the Google Chrome OS kernel team, Collabora kernel
developers and a few more from the wider Linux kernel community.

If you need any direct support, please reply to this email or ask
on kernelci.slack.com or IRC #kernelci (libera.chat).


> Here's the project board where anyone can already add some ideas:
> 
>   https://github.com/orgs/kernelci/projects/5

In order to add an issue to the workboard, please first create
one in a KernelCI GitHub repository such as kernelci-core:

  https://github.com/kernelci/kernelci-core/issues

Each contributor to the hackfest should be added to the
KernelCI "hackers" team, which has permission to edit the
workboard.  If you aren't part of this team yet, please ask and
you'll be invited.

Note: Having a GitHub account is not mandatory for taking part in
the hackfest.  It's mainly there to facilitate coordination, even
though it is required in order to contribute to the KernelCI
GitHub repositories.  Contributions as part of the hackfest may
also be in the kernel tree such as improvements to kselftest,
KUnit or bug fixes, or other test suites such as LTP etc.


> The hackfest features:
> 
> * Daily open hours online using Big Blue Button to discuss things
>   and get support from the KernelCI team
> 
> * KernelCI team members available across most time zones to provide
>   quick feedback
> 
> * A curated list of topics and a project board to help set
>   objectives and coordinate efforts between all contributors

Please see the table below with the proposed daily open hours to
accommodate most time zones:

Region        Zone    Time 1       Time 2
East Asia     GMT+10  17:00-19:00  03:00-05:00
Europe        GMT+2   09:00-11:00  19:00-21:00
              UTC     07:00-09:00  17:00-19:00
West America  GMT-7   00:00-02:00  10:00-12:00


They will be held as a Big Blue Button virtual conference with
the same URL as the last hackfest.  It's not being shared
publicly to avoid any potential abuse, so please ask if you don't
have it already.

On Monday, the focus should be put on getting started and
reviewing the backlog on the hackfest workboard to distribute
things among people or help new contributors find topics suitable
for them.  Open hours are otherwise opportunities to get more
direct support from the KernelCI team or discuss any topic.

See you there!

Best wishes,
Guillaume

> [1] https://foundation.kernelci.org/blog/2021/06/24/the-first-ever-kernelci-hackfest/
> [2] https://www.linuxplumbersconf.org/event/11/page/104-accepted-microconferences#cont-test

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/259a2ea9-63da-b5df-3496-676c2b76700b%40collabora.com.
