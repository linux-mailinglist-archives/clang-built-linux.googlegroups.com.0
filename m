Return-Path: <clang-built-linux+bncBCAJTS5ZVEJRBLEAUL4AKGQE632LA4A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ed1-x537.google.com (mail-ed1-x537.google.com [IPv6:2a00:1450:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id 89A4E21B8F1
	for <lists+clang-built-linux@lfdr.de>; Fri, 10 Jul 2020 16:50:20 +0200 (CEST)
Received: by mail-ed1-x537.google.com with SMTP id i3sf7151004edq.21
        for <lists+clang-built-linux@lfdr.de>; Fri, 10 Jul 2020 07:50:20 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594392620; cv=pass;
        d=google.com; s=arc-20160816;
        b=B3Of41fhd0IWsLZUNx2MCAtnGOjDfj/72h10G1FhV6G+o+niXdJEK73pCAqTtDBNvz
         XGd5Gw7j9iNDfz1EE2TRC/zSKzr2lqAy/CXMVXhSyKM+VVTLXyd8uaTusiF5G26KDk4R
         FYlY6rwpdJDsuwS6zNWjBLEgb7rJFQr76XsWPVTyIdiOpamNIOPuYp4yrt2VOVAyQNwp
         9t2oTu0zBwAsj+4Tmd8SVRDvwYOepxv1kNJQOcXyrVMGamQvfnbUQduEiqCXbvmOxGzg
         gzbrt4VljOULbgGfNPZmH2I4V1d9i2WwqAkq5m90ayNN9qWfQaQdlHjVW7vtAwC9yLiB
         GEWw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:thread-index:thread-topic
         :content-transfer-encoding:mime-version:subject:references
         :in-reply-to:message-id:cc:to:from:date:sender:dkim-signature;
        bh=4aI1mjsFuFP19nkTdLB8/oCzSXG2nF2FKw902zVHzuQ=;
        b=nO7zQRv6u25OjJoIpN+zf0bpzCO16TLs/OoS+yJfuEVnLSvzaeCO7il723Zx5TfMEZ
         uCSOmnYY0D9W9QxQSKdS3Z+FrnrCK85Pek+MhSQv8VzMoJtLdWwqZ4qzV2CgR/ViiNZQ
         wMQXTlPa050/0SuhuQ4eQ++08lfxKP0i/rUb99RoK1fSn5QtojKd+T1s3izBcXDqNPt+
         mYFO6O/fuQfv8UKR3jqVP5NYNM+VjDeZsUXzDijNgCxccWUMSMeDtQMZHkZeShBAiCHi
         +JTf+4uZrHZbrDyLdSftXGjpHtO9NtSiCAkjp+bcRQ4rI/yszNR4mrlh0msmulnymizN
         QiSw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of mathieu.acher@irisa.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=mathieu.acher@irisa.fr
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:message-id:in-reply-to:references:subject
         :mime-version:content-transfer-encoding:thread-topic:thread-index
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4aI1mjsFuFP19nkTdLB8/oCzSXG2nF2FKw902zVHzuQ=;
        b=QFXL2zdEpKXUwGXZHwrIFtqAUCB0SVm252qzaXVy1hPsZGo7tvCj9BexqTq5E5digF
         QLHOKYLgjRz+/XUVCSk6VpsgVc9VMSGOZaBJTN3RbdJxzb77WiCMsi1wEDYAZifS2K6A
         5F84/TJ4OxKL9LWAd0rTqO/g04sGuNuUb2GZy2EeUE78I0Da0D57HGRbAehzh5xiDjMa
         U7vkS0c4O/WZzBL2pMuPsqSmE8KjT+rWtKpdHdBxP27CJ6mwr9+od4xkt0wWCroapIJ+
         gM82EQ8KVAKYeh5CPeoEEevj/dFvVQ+EJvniICXDRy/vasxXWhtrHg1sNTHS0V3b+Ze1
         ab8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:message-id:in-reply-to
         :references:subject:mime-version:content-transfer-encoding
         :thread-topic:thread-index:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=4aI1mjsFuFP19nkTdLB8/oCzSXG2nF2FKw902zVHzuQ=;
        b=GTcbzaL1tlmt038UKOoi/hJULsKE0yDrc86KP2uIVyQVVim/6vTUp+A2mZcYr0uz4B
         v6EsS6GPYcm2Nd12UXbntFR1Bo0vUUi/Mb9SzmMU2ZXr1WLTkjsnlRu8tGV6+ztvbIMx
         ahHeDGqlXvZSwfY2YKCGakoPNXql/pa0tFHXsgj0ogD4kjrGO+qSUauTXCoOBCEX2skU
         JKRRte/yLBD7gYSOCtD8OB0yB1LTYFNO33nBm53pqBdQyLrItND7MziRf85v7Z4Tuk9r
         cvimTlPW7M2a8h4bAEkJ7VhBKXebLbtyXBh+SxAXt/r80fxr8+DpdZ686X2CdOHiyVpQ
         /MHw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5319ZDmtYF13aJHtMYnYLAAvJ6ia4TNuy7FkyYVZTVDe029seiQ6
	VauioPjaQ0m/b7BQBOnEJtA=
X-Google-Smtp-Source: ABdhPJxl0ZPW6Npm4vbzH4MCwJFBCjjlLyVTt99GFeVlZd60FAn5lsj3xeoVzFVm39tIOjiMqMW7zA==
X-Received: by 2002:a17:906:c201:: with SMTP id d1mr54570404ejz.40.1594392620186;
        Fri, 10 Jul 2020 07:50:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:906:b2cd:: with SMTP id cf13ls4201039ejb.10.gmail; Fri,
 10 Jul 2020 07:50:19 -0700 (PDT)
X-Received: by 2002:a17:906:c056:: with SMTP id bm22mr53650086ejb.444.1594392619620;
        Fri, 10 Jul 2020 07:50:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594392619; cv=none;
        d=google.com; s=arc-20160816;
        b=y0q6JdWopWfvret5pj51psL46+Y5eOmvNphGwAcetcGl6tcnNu4jVthAE/MByj3s2D
         nDGOh3ISDdJimf8K+4HtGMZLMDzl+bc3b483SeZK6MeACmwIHi6A12IXhGOc7UDPv1fv
         c+Xg2B5qdoRjUJ0sv9wm3xtZMqSpUEDZBRsBqQu9nq2OBK18HwJab4ggzz9kGXnLkUxs
         VBuau04U1zqnm3/7c7q4gCNWdaNY2xaALsBYsTmqVGBw4MVuQFQ16JHHV99QyNalaaXD
         AuzSchLdQ82KMd6QZaMpF+SFJbVtizWsjk/ZFVuC/Gc0o68cYsVwLplk0sWbXkGcDuFK
         rDGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=thread-index:thread-topic:content-transfer-encoding:mime-version
         :subject:references:in-reply-to:message-id:cc:to:from:date;
        bh=d0zjThHNZK+Vtkas3Kh5Apbf3yMXbG8rV0IJobRuUMw=;
        b=DEYuiTI5soladdKwLLUiWqvnix+ZXaEkmwfDUo8TIsYaxphL2irGRFAfUQkKT/j4pD
         bc9SK/2sQTid/CJGHwgJLKlP5pDYkHskskazt0s50gHfvH8XlxKGF76i3GPwxj1pgCK9
         tmxveRN1/kA5e0ifWCdV8CcwRIjnEVIiyaoZbjYpwkRx3Zy9bU/aXoBLXweVjmPzt7BR
         nYUmw1L9Wft9rec7ysrWH2eoS74Mj0KZPt95BrM7J9GxdXfOpq3X2IaUNBY9yAfwYYXC
         muGY63RaPjHZss6QMqtT2TiELWqBZyjpu274rhNSO2BG5luwYDoP87slrX4grkIN/a43
         oGYQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of mathieu.acher@irisa.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=mathieu.acher@irisa.fr
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id x14si379123edq.2.2020.07.10.07.50.19
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Jul 2020 07:50:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of mathieu.acher@irisa.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
X-IronPort-AV: E=Sophos;i="5.75,336,1589234400"; 
   d="scan'208";a="459357742"
X-MGA-submission: =?us-ascii?q?MDH0S3emcNUJnlIg5WL8srhZsxU5D6VDcXF4lO?=
 =?us-ascii?q?Y0wtYL/naDfl/WdxgyOSDdjupn0iHbjkBkL1IeRJ6Q4TpRZS0ClNT43P?=
 =?us-ascii?q?HggCbhP13iYaVG+NP1h1Uf41//Vs2Im+1+nwy3l8hvJgfm8YDxCfhcZF?=
 =?us-ascii?q?ktE7xh4sPL718e7XJpw0w/aA=3D=3D?=
Received: from zcs-store7.inria.fr ([128.93.142.34])
  by mail2-relais-roc.national.inria.fr with ESMTP; 10 Jul 2020 16:49:47 +0200
Date: Fri, 10 Jul 2020 16:49:46 +0200 (CEST)
From: Mathieu Acher <mathieu.acher@irisa.fr>
To: khilman <khilman@baylibre.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>, kernelci@groups.io, 
	Chen Rong <rong.a.chen@intel.com>, Philip Li <philip.li@intel.com>, 
	Dan Rue <dan.rue@linaro.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Steven Rostedt <rostedt@goodmis.org>, 
	Sasha Levin <sashal@kernel.org>
Message-ID: <303346284.2414574.1594392586895.JavaMail.zimbra@irisa.fr>
In-Reply-To: <7h36603blc.fsf@baylibre.com>
References: <CAKwvOd=um1y=Ax2hK5YYQBxbxLK4kiQuDs9fZsr77YyNR5r=Ww@mail.gmail.com> <7h36603blc.fsf@baylibre.com>
Subject: Re: plumbers session on CI and LLVM
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Originating-IP: [128.93.176.242]
X-Mailer: Zimbra 8.8.15_GA_3955 (ZimbraWebClient - GC79 (Linux)/8.8.15_GA_3953)
Thread-Topic: plumbers session on CI and LLVM
Thread-Index: hJvxrYs/u3q6OzPSvh2dtAkh4pk16Q==
X-Original-Sender: mathieu.acher@irisa.fr
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of mathieu.acher@irisa.fr designates 192.134.164.83 as
 permitted sender) smtp.mailfrom=mathieu.acher@irisa.fr
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

Hi,=20

I will attend Plumbers and am interested by continuous integration and LLVM=
, great initiative.=20

Best,=20

--
Dr. Mathieu ACHER, Associate Professor
Univ Rennes, Inria, CNRS, IRISA, France (DiverSE team)
http://www.mathieuacher.com/

----- Mail original -----
> De: "khilman" <khilman@baylibre.com>
> =C3=80: "Nick Desaulniers" <ndesaulniers@google.com>
> Cc: kernelci@groups.io, "Chen Rong" <rong.a.chen@intel.com>, "Philip Li" =
<philip.li@intel.com>, "Dan Rue"
> <dan.rue@linaro.org>, "clang-built-linux" <clang-built-linux@googlegroups=
.com>, "Mathieu Acher"
> <mathieu.acher@irisa.fr>, "Steven Rostedt" <rostedt@goodmis.org>, "Sasha =
Levin" <sashal@kernel.org>
> Envoy=C3=A9: Jeudi 9 Juillet 2020 18:19:27
> Objet: Re: plumbers session on CI and LLVM

> Nick Desaulniers <ndesaulniers@google.com> writes:
>=20
>> Hi Kevin and folks,
>> I'm trying to put together a Micro Conference for plumbers focused on
>> LLVM.  In particular, I'd like to have a session that focuses on
>> Continuous Integration (KernelCI, 0day bot, tuxbuild, kernel
>> configuration space, and LLVM buildbots).
>>
>> I'm curious, are you all planning on attending the conference?
>=20
> Yes, I plan to attend and most KernelCI folks will be there as well as
> we'll have a few topics at the testing/fuzzing microconf.
>=20
>> If so, would such a session be of interest to attend or speak at?
>=20
> Yes.
>=20
>> I saw the testing MC has already been approved and that Kevin and
>> Sasha are the leads.  I'm still working on the approval for our MC so
>> it may not happen ultimately, but I still would like to have such a
>> session regardless of which MC it's in.
>>
>> Do folks who are planning to attend such a session have thoughts on
>> whether we can carve this out of the existing testing MC vs keep it in
>> the LLVM MC, or even if it is of value or not?
>=20
> If you don't get your approved, feel free to submit to testing/fuzzing,
> but it looks to me that doing so would limit the scope of topics you
> want to discuss.  It sounds to me like you have enough non-CI topics for
> your own MC.
>=20
>> One thing I'm curious is what happens for two concurrent MCs if leads
>> need to attend both?  Maybe the conference committee can help us avoid
>> such scheduling contention?
>=20
> When you submit your MC you can request to be scheduled separately from
> testing/fuzzing so we can attend both.
>=20
> Kevin

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/303346284.2414574.1594392586895.JavaMail.zimbra%40irisa.f=
r.
