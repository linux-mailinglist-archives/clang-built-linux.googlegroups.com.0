Return-Path: <clang-built-linux+bncBC7457HKSMPRBIF4VSCAMGQEXI4IASA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-f186.google.com (mail-qt1-f186.google.com [209.85.160.186])
	by mail.lfdr.de (Postfix) with ESMTPS id 20C7736F17A
	for <lists+clang-built-linux@lfdr.de>; Thu, 29 Apr 2021 22:59:13 +0200 (CEST)
Received: by mail-qt1-f186.google.com with SMTP id 1-20020aed31010000b029019d1c685840sf28019820qtg.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 29 Apr 2021 13:59:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619729952; cv=pass;
        d=google.com; s=arc-20160816;
        b=Fp5bFyDzR9paQ60ws9f/k+pw9eTn8tDZXmWk9YoT+MqlvoN1leXvaleuKTdChRSl/4
         esSA3+2V6CrdHRmagxHSZynQPbUy8kG+Em8DbGyhCz1XRWadCJIp8Sm9KCNlKoqYgZr6
         WMS0586sTw6fGRSSil2aUoxJ5XB9Q5wNf7oKk0rbIOuzr7XTDeJj/KlY9GcJM2hSdSUV
         IxwxGLPzRaKNypURdKmXg6ilBr+tWjWN6oSprPzFuwyO0rlJK6128prfxfEGqrLIeKnp
         TrSB8mkA6hrne3dWOfDB7tIF7RLZqErCGHv6VU/FaECDV82P+Hl4O+NTT3HbP2iN//Rn
         hj+Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:thread-index
         :content-transfer-encoding:mime-version:message-id:date:subject
         :in-reply-to:references:cc:to:from:reply-to:dmarc-filter:sender;
        bh=k3j5a9eWsJSm8AjfqvoKu3cNOg5oUdc1GU7CdDUEtmE=;
        b=hCNjjuIOOmuh8fFs714Zu8b4CTtOn0ql/TGvcEElJZjJDfXjeyhPiJuOxdfajdjqOk
         WAiKGmZUg6EeOx8OuaODS9NittF1E8ZUahFnqSdSTWWkdghX9TWIvrGw9GPQDip2Xt67
         n2/8+/9NbuyO4YXFwL5tpQCLsPlAlnMDhXGerQb1FPs3F5N82vRz6ezD6O1JHh3zXxO/
         NqIa+704yTb8B7KL1pjgetG9gvaBzzTwmzqOxOA6UqI2WULSL23jNyHqP0Jyju2EayUT
         pVmS3Pcqjy4IrrpS/pUFgdoq04jXpaou5aFAVBmqT6GpU9D8MQ2mqTBHOIJpz8/nqqK1
         56CQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mg.codeaurora.org header.s=smtp header.b=hwGKj3JT;
       spf=pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 69.72.43.7 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:dmarc-filter:reply-to:from:to:cc
         :references:in-reply-to:subject:date:message-id:mime-version
         :content-transfer-encoding:thread-index:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=k3j5a9eWsJSm8AjfqvoKu3cNOg5oUdc1GU7CdDUEtmE=;
        b=LkkPtDEJLrA25DuIgkG5JK4afjEb4/bGxkiOJcPSu3KVT0aL8hpM+/kjyqLRP7N/O6
         HFTltFct8EbzuZO1oWucQXXc2z15PPNsqFalMFBLfRY/CvG43ktzC+y+TwmjdEd294cE
         l8Av7M9JvmWJL5N1zcm374lfsh61iUZudd7GkjpZG6qVu4ZS/blM3Y0Eedv3brqFeumQ
         0408v0W7Fr3wVTQEklr5E8HtHfL1mFWMNnVffrmodFkbS0i20/73eq/eBGeRxL7kQWWC
         gqzIjHUwCMJgAmwCAIleWFjtEPPWbm0p47xLdOcEkgcsHZ9NnCHVTzRddMwEXRflqXbC
         Oc6Q==
X-Gm-Message-State: AOAM53084KBKbc2Ony+ZG01E2qQez0UWcgInPT6hleqAiOoI85CtQ3bA
	qECJQjNCtGm1pipq13J9Bgw=
X-Google-Smtp-Source: ABdhPJzvHF9ZfmFCOa6VcuaznLi0skCbuKHuESwOwBeExxvrDwLiMzh10yqpQddsNkFqj93OTWLwnw==
X-Received: by 2002:a37:7f84:: with SMTP id a126mr1745284qkd.24.1619729952123;
        Thu, 29 Apr 2021 13:59:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:d91:: with SMTP id 139ls2494654qkn.11.gmail; Thu, 29 Apr
 2021 13:59:11 -0700 (PDT)
X-Received: by 2002:a37:906:: with SMTP id 6mr1755195qkj.234.1619729951697;
        Thu, 29 Apr 2021 13:59:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619729951; cv=none;
        d=google.com; s=arc-20160816;
        b=C8Ph2fk/GrNVnB6Vm6n+5Kmu3mdlEl3q2Dj/ihRVo8NckOh9qdsza4Tl1vqqDZmLU9
         XbInYC2+JbCzcxDWAunZHjREt9++gCBGFdjncAVUnmkLaL1o6GAOIWpYz61BmaYf0LEC
         KCK0dcNgg0mJ2tN6caeadlZt9NuG1YJQCoVRIWKc2G9MaST8zWIiPNqTtsXsPN2Mtv0D
         9QppJsTNdQ1nXRZSwAvUVqdbr/0krlljRsSCD5p2sXRVwaCfQNLBDXUfSF7ZMONq3FFH
         Sc1TT9lAuOAkPY1L0hugzGpvhGFbTyg1Jsu9giDSbh2Q6K4jYpDCpAIRuh3riHnY2a/B
         3uXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:thread-index:content-transfer-encoding
         :mime-version:message-id:date:subject:in-reply-to:references:cc:to
         :from:reply-to:dmarc-filter:sender:dkim-signature;
        bh=ihA3pOMa7onqIlBXc8rqEJfa666gBeOr0HSyCujs+FA=;
        b=d9NgLAcD3TasaG7kcdKZvNh9jjNQ44mSkRW4AmtXbryDCuOI8+P4uj8HxRLTInxYv2
         BjJs5e/InG5qH1lwN+hD52ksVxsFUPQyMqG+ZKPkFRFkAISUbr1DQeLdamVTtyQLh/B8
         FyUsUq62WRPirTUw65FUsQfNBi7lioILS1hU6PQQyI7hL9N57ePgFbyn0RR6f4Fn7KcY
         fLWbTaU95m56FO7u12lVJCM7BNXHk7S8bN9VIAcdCGVTUctmpI6MVLOO7PDXZodzf4js
         XE0X52nHoMrfC0n46nE9miFsjbhyYGGi2t8u+tqKZ9zK0ncfo+RYIGo8XKQdqi45N3yD
         4F9A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mg.codeaurora.org header.s=smtp header.b=hwGKj3JT;
       spf=pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 69.72.43.7 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
Received: from m43-7.mailgun.net (m43-7.mailgun.net. [69.72.43.7])
        by gmr-mx.google.com with UTF8SMTPS id s65si369208qkc.2.2021.04.29.13.59.09
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Apr 2021 13:59:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 69.72.43.7 as permitted sender) client-ip=69.72.43.7;
X-Mailgun-Sending-Ip: 69.72.43.7
X-Mailgun-Sid: WyIyMWUwOCIsICJjbGFuZy1idWlsdC1saW51eEBnb29nbGVncm91cHMuY29tIiwgImJlOWU0YSJd
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n03.prod.us-west-2.postgun.com with SMTP id
 608b1e02e0e9c9a6b61cb1dc (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Thu, 29 Apr 2021 20:58:42
 GMT
Sender: bcain=codeaurora.org@mg.codeaurora.org
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
	id 04FC4C43460; Thu, 29 Apr 2021 20:58:42 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=2.0 tests=ALL_TRUSTED,BAYES_00,
	PDS_BAD_THREAD_QP_64,SPF_FAIL,URIBL_BLOCKED autolearn=no autolearn_force=no
	version=3.4.0
Received: from BCAIN (104-54-226-75.lightspeed.austtx.sbcglobal.net [104.54.226.75])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: bcain)
	by smtp.codeaurora.org (Postfix) with ESMTPSA id 1BF36C433F1;
	Thu, 29 Apr 2021 20:58:39 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 1BF36C433F1
Reply-To: <bcain@codeaurora.org>
From: "Brian Cain" <bcain@codeaurora.org>
To: "'Nick Desaulniers'" <ndesaulniers@google.com>
Cc: "'clang-built-linux'" <clang-built-linux@googlegroups.com>,
	<sidneym@codeaurora.org>,
	"'Manning, Sid'" <sidneym@quicinc.com>
References: <CAKwvOdngSxXGYAykAbC=GLE_uWGap220=k1zOSxe1ntuC=0wjA@mail.gmail.com> <CAK8P3a2DCCjOq+sB+9sRM7XrtnkromCs_+znv3dehqLiYFDQag@mail.gmail.com> <025b01d7386f$78deed80$6a9cc880$@codeaurora.org> <CAKwvOdnyowwDnHXPyJc8-KZg9vKy8zFn7hErazVT30+sPO8TyA@mail.gmail.com> <034f01d73a9d$fc4ed420$f4ec7c60$@codeaurora.org> <028801d73c48$d6bd21b0$84376510$@codeaurora.org> <CAKwvOd=7oHJKyb89OJ0xU22krAipZOhase8EovdvgqMqzPp=3A@mail.gmail.com> <029a01d73c4f$fa5d9940$ef18cbc0$@codeaurora.org> <CAKwvOdku4aC6zfyGOvcKK0JaPbsxDry6wFYT7xoZcHU6b31KvA@mail.gmail.com> <02d601d73c64$eca213c0$c5e63b40$@codeaurora.org> <CAKwvOdnY4F2yxWB7GJA6xqHpbeNvY9p7-ODony4Qbag9mfFdOQ@mail.gmail.com> <032e01d73c9e$8c7e5d70$a57b1850$@codeaurora.org> <CAKwvOdnFsnofhaM_OZ55r-00ewwJaRY-1sDwCUJ99TRtZLKmJQ@mail.gmail.com> <03bf01d73d25$04637470$0d2a5d50$@codeaurora.org> <CAKwvOdmDkneThZ7L_BPx8K7+xR5kWfje4oNSAOAOQsbXd7ZsGw@mail.gmail.com>
In-Reply-To: <CAKwvOdmDkneThZ7L_BPx8K7+xR5kWfje4oNSAOAOQsbXd7ZsGw@mail.gmail.com>
Subject: RE: FW: ARCH=hexagon unsupported?
Date: Thu, 29 Apr 2021 15:58:38 -0500
Message-ID: <03ca01d73d3a$6e9401b0$4bbc0510$@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQHA6GaHPKlqiI34kZpdCyOyqmKBQAItWAQVAr2ClWoDAPOEXAJITqGjAjip4FACC4XbUgMWTiiOAZ1oP0ECmlKAewG99MoEAZBRopcB/fmjIwGI27AsAQNKX/2qC6nLQA==
Content-Language: en-us
X-Original-Sender: bcain@codeaurora.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mg.codeaurora.org header.s=smtp header.b=hwGKj3JT;       spf=pass
 (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org
 designates 69.72.43.7 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
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

> -----Original Message-----
> From: Nick Desaulniers <ndesaulniers@google.com>
> Sent: Thursday, April 29, 2021 2:46 PM
> To: Brian Cain <bcain@codeaurora.org>
> Cc: clang-built-linux <clang-built-linux@googlegroups.com>;
> sidneym@codeaurora.org; Manning, Sid <sidneym@quicinc.com>
> Subject: Re: FW: ARCH=3Dhexagon unsupported?
>=20
> On Thu, Apr 29, 2021 at 11:25 AM Brian Cain <bcain@codeaurora.org> wrote:
> >
> > > The next steps for us that would be of interest is boot testing
> > > under emulation in CI.  Our current setup for all arches relies on
> > > qemu and buildroot.  We're not doing any testing more extensive than
> > > power up the machine, then power down the machine at the moment; if
> > > it takes longer than 3m to do so, even under emulation, the machine
> > > is probably hung and is considered a test failure.
> > >
> > > You mentioned qemu work earlier, but only userspace?  Are there
> > > plans to develop a qemu-system-hexagon?  If so, what's the progress
> > > or any timeline look like for that?
> >
> > We have qemu-system-hexagon "working" downstream.  Still working out
> some kinks to make it robust, but we have done something like your
> shutdown-on-startup test.  Upstreaming has a few roadblocks:
> > - publish boot rom image
> > - compiler+assembler upstreaming work to support system opcodes and
> > registers
> > - review/publish the system architecture specification
> > - musl upstreaming (in progress -
> > https://www.openwall.com/lists/musl/2021/03/09/9 )
> >
> > I'll see if I can project an estimate for all of this to come together.
>=20
> Nice, lots of moving pieces; you all are very busy.  Even if it's not yet
> upstreamed, but available publicly, we've shipped our own builds of qemu =
in
> our CI when distro package maintainers lagged the cutting edge we
> occasionally needed. We could use that, with the caveat "please work on
> upstreaming this so we don't have to carry it forever."

Unprivileged scalar core in QEMU is half-landed upstream, the remaining pat=
ch series due within ~weeks.  Vector coproc is next, near term.

> Is the qemu work dependent on the musl work, I'd guess?

sysemu: no/kinda, hexagon-linux-user: yes.  Initial testing for sysemu has =
been with a couple of linux alternatives: "standalone" (a hexagon-baremetal=
 configuration w/angel calls) and the Qualcomm RTOS used on DSP targets and=
 in the Qualcomm Hexagon SDK.  Linux support is not as mature/robust yet, t=
hough we've seen it be able to come all the way up.  Issues with the boot r=
om that linux uses are under investigation now.

> Yeah, any way for us to follow along or get notified on progress of the a=
bove
> would be appreciated.

For now: enable notifications on the https://github.com/quic/qemu/ repo.  A=
ll of the activity so far is for userspace emulation.  I've discussed publi=
shing the sysemu work-in-progress as a branch of this quic/qemu repo, and I=
 think it may still be gated by the arch specification being published.  I'=
ll re-raise this to see if we really have to do it in that order.

Also: I'll notify clang-built-linux when we make significant changes in the=
 above.

-Brian

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/03ca01d73d3a%246e9401b0%244bbc0510%24%40codeaurora.org.
