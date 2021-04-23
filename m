Return-Path: <clang-built-linux+bncBC7457HKSMPRBA6BRSCAMGQEV4EHFKY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-f192.google.com (mail-qk1-f192.google.com [209.85.222.192])
	by mail.lfdr.de (Postfix) with ESMTPS id B0421369AF2
	for <lists+clang-built-linux@lfdr.de>; Fri, 23 Apr 2021 21:31:16 +0200 (CEST)
Received: by mail-qk1-f192.google.com with SMTP id n18-20020a05620a1532b02902e4141f2fd8sf8620986qkk.0
        for <lists+clang-built-linux@lfdr.de>; Fri, 23 Apr 2021 12:31:16 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619206275; cv=pass;
        d=google.com; s=arc-20160816;
        b=cmLmZuTK9gqZiFXXWX2Dv3HTyi+1gFGb/YQfJnB8wHpJx60LEY+5EEoIqUTnUlpQvQ
         OiSzo4J0/A/PauQZOOkpSCMN55nDZjtKB6gXbc/+bDiEiffYAlDCd9pYZnkjPGEu8Edx
         bhA7MHlm1UhqMHjXmCcugUh7E7s8zRZQtMVUKXl63FE/ZjInhmsNzPRzKasT7ybIVVAT
         YTd0djsh2YYqdy0DXL1Q7QaaC8TOnv3PEs/HhpYO42WP3HEDSkaMc7WOFrUBbcZy2x1t
         YRWhsBCPhwf4bz396pzM98cl+aXgG3h54PkbC/4JL9V6AKg7R0yoCt1ud0aVCi450fSV
         aCrg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:thread-index:content-language
         :content-transfer-encoding:mime-version:message-id:date:subject
         :in-reply-to:references:cc:to:from:reply-to:dmarc-filter:sender;
        bh=t2n+PtRA7l4UZWUsVclI+3JoXlX55a1lBHO62Ca7sbk=;
        b=uQYb6JyeEHhKuxYpmKyTeO2h+AsZbSRsyQLbflzsM04AD3Z0/91AlbTDnl7Utq8AbZ
         5dop+ua45XTRRgZwcrOoSGMnBd6NRiqw2oV290OAfuvVwWC+yNO1ALGOTxRuZQ+H+oXA
         BtX51VHTMktUYnb3guWKtUoqwkf2JdIg0wpci5L2v40Cijv7wgqhWO1k9lXqi2j2a4Uj
         UpUI6yawsXA7JzS1Jppc4Kxgn2ZyK+Hh5areIGw2tsNOK5byveSTgrkubimBKGeLMAy3
         v1Ii7UuuJ4dP0+Q1A696Fxb4p2eLCk00M30nAF07HUGVzf1CuABRyTxHjTlPJ5Jn2Qix
         wylQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mg.codeaurora.org header.s=smtp header.b=xICGoYUq;
       spf=pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 198.61.254.9 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:dmarc-filter:reply-to:from:to:cc
         :references:in-reply-to:subject:date:message-id:mime-version
         :content-transfer-encoding:content-language:thread-index
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=t2n+PtRA7l4UZWUsVclI+3JoXlX55a1lBHO62Ca7sbk=;
        b=GOs6AQiYsLlPVkpdyuTzyGCDYoNdo9YqhFRRviu4hvlIES0Wot+QPvXl0dRRvUQ9zL
         TdnpFvZKz8HpjUNilYa6AxY5P35/iPqeFqxw/MBV3jO+kBXHSSeRvscnr27dmZBFqwjG
         S3rkIGx2ktYGlG9qSrE9JNkF8VN2qqHql4n+aWiW0R9p/KLrxp6JaJmDSq6s700G4yog
         CyEC5NlpoTUCtDFZaMWzQXXOpCudPMdH02P3O8OsiMkZsy9NcDIu04k+LExSyrLPP7uz
         hwgWTsXwgKENnSL/3f+NBTLklCbqEad6QF9XviI8GtXDg0Ikh9zKpeuEZYz0iSiQlC7I
         +xWw==
X-Gm-Message-State: AOAM531hriLtaUHYHfZ/EuVcq2I/5Pxr/ePdZtQNXepwemh9lQ/v0FmU
	Y3byfsRm80PZTxqeCS9SoDU=
X-Google-Smtp-Source: ABdhPJxmqbf/edDp0LUlCHkZUEMc1iWQ22fN4YF8ehOgoyuyfDvUBzTL2a5v/W1jC/XK5e99URj47A==
X-Received: by 2002:a05:620a:14ba:: with SMTP id x26mr5464788qkj.457.1619206275622;
        Fri, 23 Apr 2021 12:31:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:e003:: with SMTP id j3ls2886860qvk.9.gmail; Fri, 23 Apr
 2021 12:31:15 -0700 (PDT)
X-Received: by 2002:a0c:a98d:: with SMTP id a13mr5864283qvb.39.1619206275168;
        Fri, 23 Apr 2021 12:31:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619206275; cv=none;
        d=google.com; s=arc-20160816;
        b=aSEY3ttaj4rcIZad2mYUM1oJ2hZk3JV/nAnC6r+iUg6RIOYGtcDbBHkb0cQpC+em2R
         7Z9le9HK1hZm4bHdPqimnDhpriwLpoPOUHC6UMbv9PpR++kCi0h8TExCdl4HxVw8fN5K
         W1NQYoqbKpT/6iNjagai96rYT4pBaNQHjsJ69q4zxGXpjMIjic9ifZ7ByX2JHMxTCvZA
         LizynWuPqQKQ+bBZ/2qmhFJsmJrh/Ux3cgtGGCIOrqWf6HHVRnVPYrrKN+Jf+MBDqnDr
         AYS+GBcvpE7hW1LHuBo59gKczLNip9Sjld9NirLI4hBDFub7id5LCoY65JI0zhWQBq6y
         dxrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=thread-index:content-language:content-transfer-encoding
         :mime-version:message-id:date:subject:in-reply-to:references:cc:to
         :from:reply-to:dmarc-filter:sender:dkim-signature;
        bh=+/oWbT+YhpS+wVDK/yW7x/UFoHGSzJ0/A7AJlxQ6qZw=;
        b=ThSBjbhoyf57cVL18Yh4440PIXUnX/oCwxlrK4y72+GCIXRho7jH7vWBxl9eS75z2f
         u63ByW42+vtmTpZK4Be6UIjyI7MfFcsm3FzsTP9plAT8axG4GZGwadvTOh3qFnIcQDKJ
         gvTnnNX+QMnixJFw92KWWEuPialaBv1F6ATANCHITvwjfFd/peH7mAi5kNICJHyg1EWp
         9TtiKZozb5QCIOjp40gyOz4ek2vg814kUMWRzbhncMX8cabThGcfeIe2ZZ9pjHG9wD0b
         z1lfSw0TgFIwjfqD0cppmoKjIvDrIkn3eMUJstA4FbtV81z3vaUem4jSEv6wuHmu96Y2
         FwsQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mg.codeaurora.org header.s=smtp header.b=xICGoYUq;
       spf=pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 198.61.254.9 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
Received: from so254-9.mailgun.net (so254-9.mailgun.net. [198.61.254.9])
        by gmr-mx.google.com with UTF8SMTPS id n9si1137950qkg.0.2021.04.23.12.31.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Apr 2021 12:31:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 198.61.254.9 as permitted sender) client-ip=198.61.254.9;
X-Mailgun-Sending-Ip: 198.61.254.9
X-Mailgun-Sid: WyIyMWUwOCIsICJjbGFuZy1idWlsdC1saW51eEBnb29nbGVncm91cHMuY29tIiwgImJlOWU0YSJd
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n06.prod.us-east-1.postgun.com with SMTP id
 608320822cbba889801c4775 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Fri, 23 Apr 2021 19:31:14
 GMT
Sender: bcain=codeaurora.org@mg.codeaurora.org
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
	id B2355C4338A; Fri, 23 Apr 2021 19:31:13 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=2.0 tests=ALL_TRUSTED,BAYES_00,
	PDS_BAD_THREAD_QP_64,SPF_FAIL autolearn=no autolearn_force=no version=3.4.0
Received: from BCAIN (104-54-226-75.lightspeed.austtx.sbcglobal.net [104.54.226.75])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: bcain)
	by smtp.codeaurora.org (Postfix) with ESMTPSA id 721CFC433D3;
	Fri, 23 Apr 2021 19:31:12 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 721CFC433D3
Reply-To: <bcain@codeaurora.org>
From: "Brian Cain" <bcain@codeaurora.org>
To: "'Arnd Bergmann'" <arnd@kernel.org>,
	"'Randy Dunlap'" <rdunlap@infradead.org>
Cc: "'Nick Desaulniers'" <ndesaulniers@google.com>,
	"'open list:QUALCOMM HEXAGON...'" <linux-hexagon@vger.kernel.org>,
	"'clang-built-linux'" <clang-built-linux@googlegroups.com>,
	"'linux-arch'" <linux-arch@vger.kernel.org>,
	"'Guenter Roeck'" <linux@roeck-us.net>
References: <CAKwvOdngSxXGYAykAbC=GLE_uWGap220=k1zOSxe1ntuC=0wjA@mail.gmail.com> <CAK8P3a2DCCjOq+sB+9sRM7XrtnkromCs_+znv3dehqLiYFDQag@mail.gmail.com> <fa0bed95-5ddf-ecad-0613-2f13837578c3@infradead.org> <CAK8P3a0ttLxzP0J-mocxB2TkfEYJYj37TdW=uM65fB4giC_qeg@mail.gmail.com>
In-Reply-To: <CAK8P3a0ttLxzP0J-mocxB2TkfEYJYj37TdW=uM65fB4giC_qeg@mail.gmail.com>
Subject: RE: ARCH=hexagon unsupported?
Date: Fri, 23 Apr 2021 14:31:11 -0500
Message-ID: <026d01d73877$386a1920$a93e4b60$@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailer: Microsoft Outlook 16.0
Content-Language: en-us
Thread-Index: AQHA6GaHPKlqiI34kZpdCyOyqmKBQAItWAQVAeg2vD8CQqkwGqq8WE2g
X-Original-Sender: bcain@codeaurora.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mg.codeaurora.org header.s=smtp header.b=xICGoYUq;       spf=pass
 (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org
 designates 198.61.254.9 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
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
> From: Arnd Bergmann <arnd@kernel.org>
...
> > There is no current gcc C compiler in the 3 locations that I know of to=
 look.
> > The one I tried is v4.6 and it is too old to work with current makefile=
s.
>=20
> Correct, as I understand it , work on gcc was stopped after the 4.6 relea=
se
> and any testing internally to Qualcomm was done using a patched clang. A
> few years ago this was said to be (almost?) entirely upstream, but as Nic=
k
> points out it has never been possible to build an upstream hexagon kernel
> with an upstream clang.

The critical missing component for a conventional build are implementations=
 for compiler-emitted calls to builtins like __hexagon_memcpy_likely_aligne=
d_min32bytes_mult8bytes, __hexagon_modsi3 -- these are available in the too=
lchain libraries (LIBGCC=3Dlibclang_rt.builtins-hexagon.a) but not in the k=
ernel.  This is easy to mitigate and yet disappointing that I did not do so=
 before.  I will do it.

There is a hexagon cross toolchain used for testing QEMU (userspace) guest =
code test cases.  This same toolchain can be used to build the kernel.  I w=
ill share a reference to that toolchain, standby.

-Brian

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/026d01d73877%24386a1920%24a93e4b60%24%40codeaurora.org.
