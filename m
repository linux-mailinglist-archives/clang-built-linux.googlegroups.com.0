Return-Path: <clang-built-linux+bncBCS5F7M6QIOBBFMJRWDAMGQEP6HJR6I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ot1-x33b.google.com (mail-ot1-x33b.google.com [IPv6:2607:f8b0:4864:20::33b])
	by mail.lfdr.de (Postfix) with ESMTPS id 357E23A40D3
	for <lists+clang-built-linux@lfdr.de>; Fri, 11 Jun 2021 13:10:14 +0200 (CEST)
Received: by mail-ot1-x33b.google.com with SMTP id 88-20020a9d06e10000b029030513a66c79sf1789189otx.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 11 Jun 2021 04:10:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623409813; cv=pass;
        d=google.com; s=arc-20160816;
        b=npqHIYRdUVDa7iRIWIkpHpd4LkctpQoX9OyJYMf/5NjrdMzyrFD+yncybv4GsVdkkL
         xtwbirxd9HOlqzWMLladhth8CBTLP9hNNK1ycPxnfgUmX7RFbIXJkWnXcsVnxO9B5SXd
         +UNua/V6/aeJ9RBRpi1exi10bqWKwI9pLoYvsXmVTCVBAzdKkTXQ/llUriqQCo5a1CNi
         qJVahkwue/poR/cRHechALEgJ6IIskzkZgDTuozQQiP1VfmAAG6C46i9ks8gP96ileIx
         hF0QmB7J5z1CaE2VP2YpHc7mQZz8RU5Ix+M0BunXYvYRYiVCbpXD5oGTU1n+ccdBU59r
         JGcw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :content-language:in-reply-to:mime-version:user-agent:date
         :message-id:from:references:cc:to:subject:sender:dkim-signature;
        bh=TCLM8z7R5CCWN7uY3xZBV8LL4p5yvz6tkiLuxnwNOpw=;
        b=LXTTOoCmEA3kbs99vRyQZYUAb0p3Qb50a48AgBRbL7lefiwecnqvbd03rIKEYTnEYG
         OrDluLeyJBcCxtWMmeVnHbjJBXlynEBvm2xFZ8tolL0n/3LT/wvOdbZjFSr+Ezci9Yl3
         uuCQGFP78mM7pxdFAP542GOry049c7wBLY6mLd/WQMZG0WOVE/0z9eaSTTOMGn5lARg6
         7wNXHHjuBlJLqt1jbbFWa/6HLTBmUFHX48bK+igImF7LCt0hTN6iR2zpu4nFGldMniPy
         mI2ufQimMiW0mj/0IK8M/W9LVaLia3S5roQLYNNo81bfZlApBRd29krt3NrRSf1QJtY3
         6PBQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=alpaK04a;
       spf=pass (google.com: domain of nikolai.kondrashov@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=nikolai.kondrashov@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TCLM8z7R5CCWN7uY3xZBV8LL4p5yvz6tkiLuxnwNOpw=;
        b=XY45SeLtgT13EXnHHEOCnUITTthVYxFjNVRd7DXYD7ikxoWJVc2hooTz5RC9agNdWZ
         7f72LV6Q/tlfQSzBSiG92VoSAjgapD50ChgipDJpOzhM+XViCOt9CCVSo7PNAXq/XXqK
         Dd59MsAI+2hx0prPAXTdyKYY2R15wUeSdANBz/uF7xpNcvk3r1d4W/NpbhmVJxEgCxdL
         5Nr9WMdO/4cYnfmhgMN0+knmKk4nt6XQn1uagBCwt0szX2UAtkG8LUu1B9ol6lM8SDBh
         yTC0BJ2O9YxmU5K3Ci8RMIoQcvPu+ul+Qlv4Oaq/CH8T/tsVUIX5BjdxP1SzjIrt9Nbx
         nmYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TCLM8z7R5CCWN7uY3xZBV8LL4p5yvz6tkiLuxnwNOpw=;
        b=W2FYnS/pZikGGs0vDuHkS0y6N8ZM0azq9Ckug6hyQaA67iv4Cvp9dmETbsHfGVk4j9
         7M+Xh9y/kZ/ewn35evUBxhamhE+ZGeA84Y0l+84oa5saB7wPAvm4xlt+VPsiHJ6dpqbg
         TUMo+NhDKYeH18C917wWyNSwpzB5o/k3ALKtnmD+ul41eNnOxP41nvXltOoy0BAMq4jT
         pfB8BXZ0HpO3RKlGOVmubQ4CjPuc2qDZZ6x8bMEsq12aszkiYY0dLxJZuzKZp9VQmEip
         /WxGXu0EcNyNxod/36fzUJ2Bdh5priYMvksCu3XrrUAVfZYqP5CA+zFzOLbE+0Zq9GnE
         89iQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531w0SpS+/WR5SbLvWqhsc6lBhdz0ULJd6O3OEc0Z0DLoTHMEeMQ
	nR89+zZKfxMT5ok2mW06iVA=
X-Google-Smtp-Source: ABdhPJz2I0XkDjY87GYLgMaqa95bNHhxKjxd8J6BDftDUoUmWW0dHxtBGgQ/RIIrAYlKd3b4kknQeA==
X-Received: by 2002:a9d:526:: with SMTP id 35mr2677350otw.176.1623409813100;
        Fri, 11 Jun 2021 04:10:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:51c6:: with SMTP id d6ls3150329oth.7.gmail; Fri, 11 Jun
 2021 04:10:12 -0700 (PDT)
X-Received: by 2002:a9d:4783:: with SMTP id b3mr2512477otf.361.1623409812778;
        Fri, 11 Jun 2021 04:10:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623409812; cv=none;
        d=google.com; s=arc-20160816;
        b=l1HeYHLLyIRr+qXYp5MwmBkSqu+bjQgFS0T1VfGuzKVM6CFP69KWE7V6+Zen/owsOX
         ItCToFEyGhmUqNrj6+kgt4sAPQ9XxnHVjcFm3SPmC6xHO/JBavyQJlS4DxNtL45wPwmc
         sWXD02QNCCbPW0QvZD16L2LtTFN16WdYltEI7YZm/OYdRCkdMBraSQGxZ7qzfDuCYJ4x
         SEEvEnyg9opDZpN+yY+KSUVYgXWBYOfokX+XTzk8dw5JKiKXsr93vrx/GqfEP+0LFAtF
         GIctIPWTWQ0lpKgNIMgVz+S5//9UbUxDlp//lX8bGj6l43YnClAQm3Syd55VFrllX5NI
         q/6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=Wwp3iWfio5C8Qljrj/iLuh6NMV9UDnMxrk9826sjGqE=;
        b=tzp26OU0HFmbw03T6VKcfJP1iw8hCHuiX82fa0blM8iiZXYZpsz19spEAgbGsi+FIH
         mjsSjA3zrssgMCK0oWg4geo/70OIBS0CVfEY0J8Gd2pMrEuq0j+hxOb7DkwVjiEK5ofL
         OoFNEeJX+sUoIgY5US+RpRIab7YD5PpeFPykICwsfbxBc5K8lrJ4MJNVLGZ16C06qNBi
         q/vZdmyUAws8bjEWZszQ17NNL4KHG5+jcpbNpaor/yOw5neeEH40LOsXCfj7ZpK+2SO3
         aH3uNmQU1LphVOrszA94aZTFl2K8bSEiajbyNdPiYMZ+xBuw6td+CVtV8M896jRYhY9U
         eM3A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=alpaK04a;
       spf=pass (google.com: domain of nikolai.kondrashov@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=nikolai.kondrashov@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id a10si652860oiw.5.2021.06.11.04.10.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Jun 2021 04:10:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of nikolai.kondrashov@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mail-wr1-f70.google.com (mail-wr1-f70.google.com
 [209.85.221.70]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-543-TZtuh9dJOieFQHS0XVfvuQ-1; Fri, 11 Jun 2021 07:10:11 -0400
X-MC-Unique: TZtuh9dJOieFQHS0XVfvuQ-1
Received: by mail-wr1-f70.google.com with SMTP id x9-20020a5d49090000b0290118d8746e06so2475336wrq.10
        for <clang-built-linux@googlegroups.com>; Fri, 11 Jun 2021 04:10:10 -0700 (PDT)
X-Received: by 2002:a05:600c:ada:: with SMTP id c26mr19030292wmr.189.1623409809719;
        Fri, 11 Jun 2021 04:10:09 -0700 (PDT)
X-Received: by 2002:a05:600c:ada:: with SMTP id c26mr19030277wmr.189.1623409809601;
        Fri, 11 Jun 2021 04:10:09 -0700 (PDT)
Received: from [192.168.0.118] (88-113-28-221.elisa-laajakaista.fi. [88.113.28.221])
        by smtp.gmail.com with ESMTPSA id o18sm6736411wrx.59.2021.06.11.04.10.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Jun 2021 04:10:09 -0700 (PDT)
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
Message-ID: <1ae55134-a534-aeff-2172-4368409fd806@redhat.com>
Date: Fri, 11 Jun 2021 14:10:07 +0300
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
 header.i=@redhat.com header.s=mimecast20190719 header.b=alpaK04a;
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

On 6/11/21 2:38 AM, Nick Desaulniers wrote:
> Oh, I clicked something and can't back the nice histograms.
> https://kcidb.kernelci.org/d/revision/revision?orgId=3D1&var-dataset=3Dke=
rnelci04&var-id=3Dc4681547bcce777daf576925a966ffa824edd09d
> vs
> https://kcidb.kernelci.org/d/branch/branch?orgId=3D1&var-dataset=3Dkernel=
ci04&var-git_repository_url=3Dhttps:%2F%2Fgit.kernel.org%2Fpub%2Fscm%2Flinu=
x%2Fkernel%2Fgit%2Ftorvalds%2Flinux.git&var-git_repository_branch=3Dmaster&=
var-origin=3DAll&var-build_architecture=3DAll&var-build_config_name=3DAll
>=20
> The first URL was in my history, so I just went directly there; but I
> can't figure out how to get back there from the existing UI elements.

You can get to the "Revision" dashboard by clicking any line in a "Revision=
s"=20
table, which appears on "Home", "Repository", and "Branch" dashboards.

Nick

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/1ae55134-a534-aeff-2172-4368409fd806%40redhat.com.
