Return-Path: <clang-built-linux+bncBCS5F7M6QIOBBE4ARWDAMGQE4Y2CM6Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x139.google.com (mail-il1-x139.google.com [IPv6:2607:f8b0:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id 710873A406E
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Jun 2021 12:51:00 +0200 (CEST)
Received: by mail-il1-x139.google.com with SMTP id o12-20020a056e02188cb02901dbd219e088sf3184944ilu.16
        for <lists+clang-built-linux@lfdr.de>; Fri, 11 Jun 2021 03:51:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623408659; cv=pass;
        d=google.com; s=arc-20160816;
        b=Iwx/7EIKx5x0m71Ie9qXVaOBZr/516lhw4AlyUuYcx6CdOy/ugLcZNpmluTDCPTWcW
         TMCu/oDEWkF7eAY8NGT6derhg7Uztt0jljxtQ3WdOd4ZSUwVCQM5//dxnn+hGEZYM0zr
         JLsYlh9nExWmqsuTcrirLWC6EoWJWSG2VaKzyB8MlOHiTOmvg4TjpFTK4OS8DhY2/Ioz
         fkc3EgihVCZ1w0wSDDwRkCGhhcHKs78CAMEg4SZ66Cu5B6HWRWs9bOwRUdq4D1i8RRNZ
         HpHXmkZ+jtCYg9wHFUgrVLDkEzzfWZNnTwp+/8nuNmPAxDJVBjtQJbLUHtDfk4gbwlkV
         F1MQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=ok3MHfo3aBsDFcFPaFe14fGYdQvZm0BxOV0knREw5U0=;
        b=aeCFWknY6eT9+Pd/rsgBQCBq+u9nMrcRbZehPDkpIQXRQ/miV/0PwGYf/2fDkb3sKd
         /tC9L5g1W0rk1I5we9Q1t/D4/a/rbeSNlXzXYylqtx6156Bbs1LsOyBE8T+CrRIyFZmS
         smmofho+5Lwp5yLm2hTR2pE/p+fq2BgiS6YeGOGzdgKvNocTIuCYlquS0fnjVRDgvmJu
         f+8lrRWFyd/R3JPKJ8gzcJ8zc68XWyNHnLTuN6VcxzR/hSApDTE/dNUVCpKO4ThREqSO
         zSk++YNkWqz4QmgWD9uH80nDLL8EIj++WcfZm5EsTl8lpTecE4d/WtInm7yBVpEnPCIi
         fx4w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=IHR35l5u;
       spf=pass (google.com: domain of nikolai.kondrashov@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=nikolai.kondrashov@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ok3MHfo3aBsDFcFPaFe14fGYdQvZm0BxOV0knREw5U0=;
        b=jOqyiABt4MlSN7wSJluEtZoQzf/DddPLE5fNqIQltUvWdXTC+b7s95CgCa+2QA1NPn
         o4z3MVrbvG8YTxUbU1g4OUK5Gvq8+HgPNQKMhQfl2R2jFTpiiP67EsELdDWjAcuCpewJ
         XheGEAHb5Zd2O0nLD+P/QttZhLkZKXTTTBdYjBcnoEh6gDYJ52if/T3iQfDDZ+ZeKc/2
         SQeE4VBdcH47qgsBxgCOarkuBWlJB+tqTPLMqGDMBSUaTspes1A/BJCDsqcvyECfqLno
         ba5JCcveyxp6W9atBZynZZehMwyYkRb1I3mK+IuocZFpyjbklydYmll8mboaCnXpZSKQ
         rnbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ok3MHfo3aBsDFcFPaFe14fGYdQvZm0BxOV0knREw5U0=;
        b=bA2ehkc85JPANWLWsoGm9CNFjQgPRzKfSeOq1eoZVbui1c0daxwHqByJiF47MPFZCQ
         DEEoiAlHrMYrdMzP3QVra6XqgwKMsncIBNXjD6dFNhqIh9QYx2lRohIxq09jF6j7xI4t
         Lvc6FJsTPf41hsY3ub7l377jkDFhJebR73Mhdvk8PFiAEPGBuV/T/4c3IABssmg4x6LE
         i26Y12u/QnNnQAgVETcAL3Vo0mtonNQ2eEWpukxL803tslXRMpaZlNND/zKqnNGdN2CD
         K9Djx+Va5CJvq5+mlTBPnGSc5GwKeXRO8A+Qw/Etau+m7sUTVJD3hTkJKVj15sPLI0KE
         MLzA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532mJrRLBfU2WP/KeHEkYN9lamoG0Yp6PApA7u7/zMJwWig4BGoi
	kDH357c4h3s9K1s9kvRMoJk=
X-Google-Smtp-Source: ABdhPJxm6ci1E0QKGFtlPClq0jNcrbkydLmRAl8hY5bJam5krI2cOaNSqEwKSMq+/YeZr+yEvJ2K5w==
X-Received: by 2002:a6b:a10:: with SMTP id z16mr2737203ioi.70.1623408659339;
        Fri, 11 Jun 2021 03:50:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a92:d092:: with SMTP id h18ls2397555ilh.7.gmail; Fri, 11 Jun
 2021 03:50:59 -0700 (PDT)
X-Received: by 2002:a05:6e02:f48:: with SMTP id y8mr2824208ilj.85.1623408658956;
        Fri, 11 Jun 2021 03:50:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623408658; cv=none;
        d=google.com; s=arc-20160816;
        b=IjuRoeBf6jsphZakT0rBed/LCU5fy5Tvs1Em1n4zbhZxCfQiRAVZ2C+TQQhkLYdr/p
         rLXmwHRdjZNKFL+zH3y/mQObqC5ke3x9yUS1ycEkbF2lDOvWObX/DHWJkx0AM9enQ6oU
         ngWinPwA+au5cUjwbC/Eqi4wo1CDoI9Vlw2IsD92b0DqKGKwmQagjJgi/RYrJCIH7DLj
         4gc1R9ymKw1PUYgB5RxfHZq71JxWY9b+jXGiBpBh1z28oHxbv0WPqPDiQ6tu+ADXUig+
         T3G7nFCoJQLmTXQ1LTxEDVnOGXb2EC58F06Ry0Z/VYqubwiDabRQm6Q0JZfVvGrsJWdp
         iRDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=1YF2bCTWrl3mx1ghPGBKk5k5BvbUP4ymeL3KgcTm3fk=;
        b=HKxct237PgeXSJxhqrgecjJxR3hGVMdPUs+3B7XL+bh9sya8R2OzL+u13eRlbuwAvH
         q9JoYRqYdN+XlEFCh7Z/8wqUq0yCC1imepOJNUly5bYJP9SY5XwnJUpBH1n+C2RDOX0f
         W2oCl5LKyAXMZY1AakOsK/uQ8gazNQrWTNpzUY45Wy6G4wV62y2wD3qgOp+swt0///o/
         6ALFCwEepvf+XHdPsZ8yL26Fmg2Q6Z0kAqX5u5km8PCJXwu1o5ag13hgzzK1QEIRIA1K
         o/8iX4xnAGK6XHiNJLt8KFLgQOV2koiyTpnuUq8N4oy1HF8t2MQgR7wniy4h9hDPokyo
         lZCA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=IHR35l5u;
       spf=pass (google.com: domain of nikolai.kondrashov@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=nikolai.kondrashov@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id f9si613873iop.1.2021.06.11.03.50.58
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Jun 2021 03:50:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of nikolai.kondrashov@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mail-wm1-f69.google.com (mail-wm1-f69.google.com
 [209.85.128.69]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-145-kkDwQrqoMJK59UBVPcP0eQ-1; Fri, 11 Jun 2021 06:50:54 -0400
X-MC-Unique: kkDwQrqoMJK59UBVPcP0eQ-1
Received: by mail-wm1-f69.google.com with SMTP id o82-20020a1ca5550000b029019ae053d508so4290925wme.6
        for <clang-built-linux@googlegroups.com>; Fri, 11 Jun 2021 03:50:54 -0700 (PDT)
X-Received: by 2002:a5d:6daf:: with SMTP id u15mr3377364wrs.400.1623408653470;
        Fri, 11 Jun 2021 03:50:53 -0700 (PDT)
X-Received: by 2002:a5d:6daf:: with SMTP id u15mr3377345wrs.400.1623408653302;
        Fri, 11 Jun 2021 03:50:53 -0700 (PDT)
Received: from [192.168.0.118] (88-113-28-221.elisa-laajakaista.fi. [88.113.28.221])
        by smtp.gmail.com with ESMTPSA id w18sm6620133wrt.55.2021.06.11.03.50.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Jun 2021 03:50:52 -0700 (PDT)
Subject: Re: #KCIDB engagement report
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Nikolai Kondrashov <spbnick@gmail.com>, kernelci@groups.io,
 "automated-testing@yoctoproject.org" <automated-testing@yoctoproject.org>,
 clang-built-linux <clang-built-linux@googlegroups.com>,
 Vishal Bhoj <vishal.bhoj@linaro.org>,
 Antonio Terceiro <antonio.terceiro@linaro.org>,
 Remi Duraffort <remi.duraffort@linaro.org>
References: <5a9bf050-0671-3273-cc4f-1b131445c1fe@redhat.com>
 <CAKwvOdmwRV6R6dcpcSL06SNVQ1_JwvOJMZPYiHKvjSx4sf_95g@mail.gmail.com>
 <d4c587c2-7eca-043f-06b3-7e1cfa125b38@gmail.com>
 <CAKwvOdkFqFoNUczEiTKY6o2E78bHLkMjeHjtQWKm=Qdg7-v26Q@mail.gmail.com>
 <0e70beb7-49fe-efba-ef41-a35fa996bdcf@redhat.com>
 <CAKwvOdkoCzf2+-Z2K8e22OF9odo21RxXJu3gkGxweSePoBRaVg@mail.gmail.com>
 <c64167f2-23e7-4efa-4945-6398bf99683c@redhat.com>
 <CAKwvOdmAjWnVaNdgXm3SWTTCRcsxedtaC3KiF4agsBgiYZ1quQ@mail.gmail.com>
From: Nikolai Kondrashov <Nikolai.Kondrashov@redhat.com>
Message-ID: <de48e352-b2c3-71d1-cc05-2b62af725e70@redhat.com>
Date: Fri, 11 Jun 2021 13:50:51 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
MIME-Version: 1.0
In-Reply-To: <CAKwvOdmAjWnVaNdgXm3SWTTCRcsxedtaC3KiF4agsBgiYZ1quQ@mail.gmail.com>
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: nikolai.kondrashov@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=IHR35l5u;
       spf=pass (google.com: domain of nikolai.kondrashov@redhat.com
 designates 216.205.24.124 as permitted sender) smtp.mailfrom=nikolai.kondrashov@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
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

Hi Nick,

On 6/11/21 2:38 AM, Nick Desaulniers wrote:
 > On Thu, Jun 10, 2021 at 2:15 AM Nikolai Kondrashov
 > <Nikolai.Kondrashov@redhat.com> wrote:
 >> Thanks for the feedback and the requests.
 >> Give me some more, if you have them :)
 >
 > Awesome!!!! I really like clearly seeing the number of builds that
 > succeeded vs failed.  The numbers for the "Top 10 architecture build
 > failures" add up to the total number of build failures which is great.

Eh, the sum would stop matching as soon as there are more than 10 failed=20
architectures :D I can't really squeeze all of them in there, as it would=
=20
become unreadable on at least some displays, that's worse for configuration=
s,=20
and would be much worse for compilers.

 >
 > We can clearly see which toolchain was used in the table.
 >
 > Oh, I clicked something and can't back the nice histograms.
 >=20
https://kcidb.kernelci.org/d/revision/revision?orgId=3D1&var-dataset=3Dkern=
elci04&var-id=3Dc4681547bcce777daf576925a966ffa824edd09d
 > vs
 >=20
https://kcidb.kernelci.org/d/branch/branch?orgId=3D1&var-dataset=3Dkernelci=
04&var-git_repository_url=3Dhttps:%2F%2Fgit.kernel.org%2Fpub%2Fscm%2Flinux%=
2Fkernel%2Fgit%2Ftorvalds%2Flinux.git&var-git_repository_branch=3Dmaster&va=
r-origin=3DAll&var-build_architecture=3DAll&var-build_config_name=3DAll
 >
 > The first URL was in my history, so I just went directly there; but I
 > can't figure out how to get back there from the existing UI elements.
 > I click "Home" (top left) > Branch > Repository URL >
 > https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
 >
 > (the "name" field defaults to "kunit" rather than "master"???)  Oh, is
 > it "Revision" rather than "Branch" that I should be using? No, that
 > doesn't seem to be it...hmm...

Those "histograms" are only added to the "Revision" dashboard. Watch the na=
me=20
of the dashboard in the top left corner. I guess I can add them to the "Rep=
o"=20
and "Branch" dashboards as well. Would the graphs make sense when they are=
=20
across multiple revisions?

 > I really really like the histograms for build failures; I'm most
 > interested in seeing one by toolchain (we have bugs specific to just
 > newer vs older versions of clang all of the time); perhaps folks might
 > like to slice along any of the columns in the table?

Grafana doesn't seem to allow doing that dynamically, but maybe I can leave=
=20
only one graph, and add another drop-down list on top for selecting which=
=20
metric you want the graph for.

Meanwhile I'll just add another graph for "Top 5 compiler build failures".

 > The build status in the latter link with red vs green area was exactly
 > what I was imagining. Great work!

Cool :) Unfortunately, when the ratio is too big, the small bar can be real=
ly=20
hard to see and hit with the mouse. Grafana doesn't have pie charts by=20
default, that would've worked better, but I'd rather wait with adding an ex=
tra=20
pie chart plugin before we upgrade to a newer version.

Nick

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/de48e352-b2c3-71d1-cc05-2b62af725e70%40redhat.com.
