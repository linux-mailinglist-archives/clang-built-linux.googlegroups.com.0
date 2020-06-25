Return-Path: <clang-built-linux+bncBCAJTS5ZVEJRBLOL2L3QKGQEWA7WFWA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x438.google.com (mail-wr1-x438.google.com [IPv6:2a00:1450:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id AD6B7209FC3
	for <lists+clang-built-linux@lfdr.de>; Thu, 25 Jun 2020 15:25:01 +0200 (CEST)
Received: by mail-wr1-x438.google.com with SMTP id y13sf6795134wrp.13
        for <lists+clang-built-linux@lfdr.de>; Thu, 25 Jun 2020 06:25:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1593091501; cv=pass;
        d=google.com; s=arc-20160816;
        b=HpnPNlQaNAmZ4+PTvAm5wKPUK/uyS5xEN6YNLULLtOHA/GDkqyGOxr6K2mQ8/Vpwfp
         OYsdlVNzfoPihemiNLqnUO6Fvb2899UjYaCkaP+K7ENSMExNXJEFI/OAx3oIf6/Q9V++
         Ssm+fyKarXXaDaOV0Jt8DzKb2/+Kdu/nweGmbVcKNPPXA5ct7uPXxZHv4G6+MnLnoIfR
         sVPTxaysH50EMhM9oAhsoRIKETc7EypR/S6paSdum9M3eCSwuN+Tfwxh/jJBHP9SzpU+
         zZElmgWe7vaKRD4f3c0U93VHyLj3n045EUtjXFJJ2US8m3t1unur3JQW5KWk7JnjxweA
         9CpQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:thread-index:thread-topic
         :content-transfer-encoding:mime-version:subject:references
         :in-reply-to:message-id:cc:to:from:date:sender:dkim-signature;
        bh=3K49z1VxHa+6Et++oQh4Qk3UjridjvkxoVrjjFlP2Zg=;
        b=jc3cW7alHxJIErkr5q2vV8J7F5u4tkQUWpRIaNaVAj3QRSrDuofM7bvUtQDRPZp32H
         lewty7rdJvy2P3CIqzilQ+GidqUlSuHoOCxcSLgfMrLvT2RgqlsgwcuiBruQ2d6WYohH
         cJb7NMmTit2kItlJPLTUpM8Glx3pCEWY/1njHfBs8s3f2V1kZn95un0sh9e+kSOafdDJ
         HP3hw6l2wh/tKSKw+UVbDkrE/32Gw3kevvapC7dBoMXkvD+02LX4qWeqQQbNPon6Nv2A
         1OPCjjtWbkaGURhDXN3xYmLZt9AJG/Vwatoufz4J3UZrpwogtQY/ozmGnufvaw9LIk2J
         GCkQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of mathieu.acher@irisa.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=mathieu.acher@irisa.fr
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:message-id:in-reply-to:references:subject
         :mime-version:content-transfer-encoding:thread-topic:thread-index
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3K49z1VxHa+6Et++oQh4Qk3UjridjvkxoVrjjFlP2Zg=;
        b=Q+twzL+XYJYsqVf0s9/p9UIRlqO4HH8/Tex/nctOJvNqGavSALI8WWyNU8BUYpJZkN
         DFir5tzBYFyQ4pNSENQQa+tNrdUqhfWcyCpafPxMeMcXIukptjiNfZXhDxJ/puSuyExy
         ahv+fZqZrWOPp4iYkG0cy+5hbRfkqdyMjlx9W8JntZiNrlFM2yJCLBuUspM4mmye+EWU
         CLC1S3G65f3BIv6WgxORF3l8ZyntOMmh7l8eWel858gfGt1KshfnZrjrDZcCDwq6MAUx
         OnlERmgw9ITYYfvIrttDD35DbxXQ2dWHU4qr5b+CRchB1IU0uRde4VgO9nuY9nMX3liV
         5NGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:message-id:in-reply-to
         :references:subject:mime-version:content-transfer-encoding
         :thread-topic:thread-index:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=3K49z1VxHa+6Et++oQh4Qk3UjridjvkxoVrjjFlP2Zg=;
        b=g7Iso/Kr7s1v6Ez3NNpkys84rW9scKl/KisoZAoHeinGrcW1CQ/w8HOmHiyU5diKEW
         qMy/rl6UOblv3SztANLMPIZuRPWvFFHdAGMICQUT4nraUgJ0Ad7LiYJ7HQaI2HfwfmzX
         6oBMS2oH+68rSEjFdtbmXEWy4sGFU6eAPWOVB84FqqwILl6mxYZArHdEXBWZslqcXwTQ
         1AtsMsfl/D/zvETYTEFKgR9MDaIi1x6Xc9P2kbFc93JPib9OfOPcEcOeBvOGXkhc/cj/
         r6YEe22cfv23/rx27a6KFwQ3bxOyuTCAdKRfQqcs9eQtsORMO3WZQeR1ALO+CwaMXyn6
         Mw8w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533J/BWGjYXqPa+wwpOKeN03IyZoN4wO294eEK7fB9F770PNO87z
	FjQjDAL/3ym8KpVVIxzooj0=
X-Google-Smtp-Source: ABdhPJzSNium+e+BjSx28ZpheSbUc0szkiJvQULNEOjGje7v2a/gi+4be8qP12K6MWS2oJKNzt6RLQ==
X-Received: by 2002:adf:f751:: with SMTP id z17mr27468220wrp.114.1593091501347;
        Thu, 25 Jun 2020 06:25:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:aace:: with SMTP id i14ls360102wrc.3.gmail; Thu, 25 Jun
 2020 06:25:00 -0700 (PDT)
X-Received: by 2002:a5d:54c9:: with SMTP id x9mr38674543wrv.247.1593091500702;
        Thu, 25 Jun 2020 06:25:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1593091500; cv=none;
        d=google.com; s=arc-20160816;
        b=mO9HFmcGOz5lJ8neyv02qrs4hWO6un+g7W0JHXWzrluF9HhcNhU4t4jUgdRo3eQSbe
         Stl8LMm6meufv5kHrV+GGsUR/hQALm4Wk3f0RvtsFjWMIHc71CAje4eTbxyWR/v3YjbV
         pxlBQ+XaXhRmyASexIKkJf2oI2ABk0Yt0aBEoeCnPlamE3ioVlbAQWah9p8twvH0Tffr
         rU0cgmtU9GZkGhBH4Qt3Qc0caAFBPHxPzcoeSCZo7kl4i00atX9yCNyURzEDeUnC1y/u
         nGtSxkOnWw4E/P2qWKrAMRGTyxHkmKBVrPNgATlInU5ZBua9x6NUDnVw/4nbknw6Z3Lj
         277g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=thread-index:thread-topic:content-transfer-encoding:mime-version
         :subject:references:in-reply-to:message-id:cc:to:from:date;
        bh=BJjCsd5fo+7bT7J4sbhtpBBg59MHMDPJ0/ceSR8Pa3c=;
        b=Ut4rutZD1/ilFXe2fOdNsE0LMvbt+OfxYRNqMe+YnGjV4G+aw1EbI8uoDk9kCb17ET
         IAIlQYTzzGRnblkSnU4Gru+yRxnc1OpZcgNg9jozEYTj5GmzbFzZAt/u7gPJ3zItVVgA
         OpLuZuJ5EFAL5bPrTqcKZM/0CKeRa/8Fm71K4cRZsz37r7yq0ar0idSWKIgXr2RbAjPq
         aNUv5hHxWbnR/zlN/LLn6mlyjMUHbu9KofGwYLOJx9rkjN8ArbG1sfcgezeyU7PONap8
         z8sgo3nyUVrAmu5urSSsTCUiY135ismAiVDbw1h4PuaYb1qYLl1xr4N1fzcll6EA9VnC
         QH0w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of mathieu.acher@irisa.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=mathieu.acher@irisa.fr
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id m16si680497wmg.2.2020.06.25.06.25.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Jun 2020 06:25:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of mathieu.acher@irisa.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
X-IronPort-AV: E=Sophos;i="5.75,279,1589234400"; 
   d="scan'208";a="456679271"
X-MGA-submission: =?us-ascii?q?MDHrRDxiZemLWFGkRdLbSv0xDgyoG8u0Dvx4IU?=
 =?us-ascii?q?gRRGFYneNZ3rmW6lsMUH6TOUZcbV05ix9sKgVflpOF2jhHPanvXCdP/E?=
 =?us-ascii?q?a0uEkv0/+9+IAcXVVe+IPE9xCwlzR9KfAL/9WlAzk1k2rDVHh9ovAz1i?=
 =?us-ascii?q?V1s+MDD1ziTkhk3G14WCiD8Q=3D=3D?=
Received: from zcs-store7.inria.fr ([128.93.142.34])
  by mail2-relais-roc.national.inria.fr with ESMTP; 25 Jun 2020 15:25:00 +0200
Date: Thu, 25 Jun 2020 15:25:00 +0200 (CEST)
From: Mathieu Acher <mathieu.acher@irisa.fr>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: clang-built-linux <clang-built-linux@googlegroups.com>
Message-ID: <546249396.1205166.1593091500255.JavaMail.zimbra@irisa.fr>
In-Reply-To: <CAKwvOd=3qs9TLkzNE+uPH-fY=+u=P2Abz0sZxroauEDdr=jLJw@mail.gmail.com>
References: <CAKwvOdnaoaZPLqcn6yiFEpEVx=HmpRe1ExhLZfzLhHs7e7Atww@mail.gmail.com> <31688.1592897284383266895@groups.io> <CAKwvOd=3qs9TLkzNE+uPH-fY=+u=P2Abz0sZxroauEDdr=jLJw@mail.gmail.com>
Subject: Re: kci_build proposal
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Originating-IP: [128.93.181.138]
X-Mailer: Zimbra 8.7.11_GA_3800 (ZimbraWebClient - GC79 (Linux)/8.7.11_GA_3800)
Thread-Topic: kci_build proposal
Thread-Index: UYnNDzT4QkMxe1l+dlvUEWx2oCqaAA==
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

Hi Nick,=20

Sure I can attend the meeting and present our work. 10 minutes is OK!=20
And then discussions ;)=20

1st july is the next meeting but when exactly? it seems 12PM in France (I g=
uess 6PM somewhere in USA), why not I just wanted to be sure.=20

Thanks,=20

Mathieu

--
Dr. Mathieu ACHER, Associate Professor
Univ Rennes, Inria, CNRS, IRISA, France (DiverSE team)
http://www.mathieuacher.com/

----- Mail original -----
> De: "Nick Desaulniers" <ndesaulniers@google.com>
> =C3=80: "Mathieu Acher" <mathieu.acher@irisa.fr>
> Cc: "clang-built-linux" <clang-built-linux@googlegroups.com>
> Envoy=C3=A9: Mercredi 24 Juin 2020 01:48:04
> Objet: Re: kci_build proposal

> bcc: kernelci
> cc: clangbuiltlinux
>=20
> On Tue, Jun 23, 2020 at 12:28 AM Mathieu Acher <mathieu.acher@irisa.fr> w=
rote:
>>
>> Hi Nick,
>>
>> Thanks for your interest.
>> We didn't target and gather data about Clang, but it was only a technica=
l
>> limitation at that time.
>> Right now, it seems possible to build kernel configurations with Clang (=
thanks
>> to kernelci tool chain) and we are very interested to invest some
>> resources/time here.
>>
>> Indeed, we could differentiate GCC and Clang build and see what's going =
on.
>> We can also pinpoint combinations of options that lead to failures: it c=
an be
>> useful to indicate the root cause of the issues and investigate whether =
it's
>> specific to Clang.
>>
>> I'm available to have a chat
>>
>=20
> Cool, we have a bi-weekly (every other week) public meeting:
> https://calendar.google.com/calendar/embed?src=3Dgoogle.com_bbf8m6m4n8nq5=
p2bfjpele0n5s%40group.calendar.google.com
> IDK if that works for you, but I think if you gave a 10 minute demo
> that would be neat, then we could discuss more?  Otherwise happy to
> stick to email, too?
> --
> Thanks,
> ~Nick Desaulniers

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/546249396.1205166.1593091500255.JavaMail.zimbra%40irisa.f=
r.
