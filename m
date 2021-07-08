Return-Path: <clang-built-linux+bncBC7457HKSMPRBIELTWDQMGQEORHWVFA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-f186.google.com (mail-oi1-f186.google.com [209.85.167.186])
	by mail.lfdr.de (Postfix) with ESMTPS id CC7123C1940
	for <lists+clang-built-linux@lfdr.de>; Thu,  8 Jul 2021 20:36:17 +0200 (CEST)
Received: by mail-oi1-f186.google.com with SMTP id m62-20020acad5410000b02902411a37ddbdsf1080510oig.16
        for <lists+clang-built-linux@lfdr.de>; Thu, 08 Jul 2021 11:36:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1625769376; cv=pass;
        d=google.com; s=arc-20160816;
        b=HGNROCdA3NoN7hwuZrg1xZLVZaI/5aAwB3vrZn3bOomeE10Xne8dHP+SiZdR5+sR/q
         KaRm2hotaY4T2n9T3TfKU4aDOxmIZbvHJUtBF82zswCDyA5hhzLwG5t4QMhAu8XgwtBc
         nzSmf5HJjnO7yBuhskawVRp1xBstgyCylNmN3fmuWKNK2zD5BpJ3+Lg97VF9dCbomnGu
         9k91Qt0WXnvvOnWiMuHof/ejPbbWvMQghXwGr4TQkTpDsmX77H0OvKuk2Y9m7CPQVwRJ
         pLXC0GYsJRme/DMNwTV0kksHz7JqmLDZXOSl82jo4MMLAHjoHxRPs55VQTID/SWBUSSK
         /eAg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-language:thread-index
         :content-transfer-encoding:mime-version:message-id:date:subject
         :in-reply-to:references:cc:to:from:reply-to:dmarc-filter:sender;
        bh=9Wnyrb/vqHl0CjhZ/rygiVd7PJUaPPOxLmuc+7T4Ufc=;
        b=tPIMew4YcKnS3Q1sYX0NGPNrDegLdWskhc39Z5VQOsSk6ZEVVlopsz5eFwZPqEQo0V
         KajblycfBHjG76ncivQEAPmz8PHPMUF196Y8MvjeT6kFpesfM2+6zTbIALZzsKQGaz1K
         lIAYjqgB1d4iP0dbn04s5p1h0NKhDcki42ZyjSeL702PmM22VC0E9zmDh5a5R9crkyAy
         q09gqJcbL3q/He1hintbiQFhGqXPulG+Zi38zbFuCuqi+FJPa4Zy6Se2qnz2wt6mxK6r
         ehUHwD9mjFe2KbjCZBKp9w1dpH6v0OthcmWWx+pHsC7ZoCdXGPo3vdk/78KMM1HcPG0M
         paEQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mg.codeaurora.org header.s=smtp header.b=rTXg2E1G;
       spf=pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 198.61.254.9 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:dmarc-filter:reply-to:from:to:cc
         :references:in-reply-to:subject:date:message-id:mime-version
         :content-transfer-encoding:thread-index:content-language
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=9Wnyrb/vqHl0CjhZ/rygiVd7PJUaPPOxLmuc+7T4Ufc=;
        b=O9plTT5KCsUJp5im3l4y6KtqyrPmuq59mcpDgTjwnzHU887Dozf8B7f/SuEG/xWrAv
         fKyuOwKAj4a/dCErzJktxgfA8EzNTglUx+KWX91nHs0s0+uuKNlrgIIQRyjxNCT8i9K5
         LU+mjbIBXlR1wZG48vCVlYtdPgjZEqT2D7pofqne1kLgDu2YvdHLLO8K90X14Kpg4mSQ
         RRcFS6JfmUxDAnrK+atQeq5rx3YjGuR3GrSTTfxpR7fxVv2tYdqKGIvbJaaIvtbPcXaZ
         0PFbVcSZShD39yt1fKNzZHfSspxHjZ8mvr6FFYNWi6/GYZcDO5HPxZLP3ZnBeo6tL2Cg
         GkYw==
X-Gm-Message-State: AOAM532/jDrC/WI77xBLGRn4hg2VSg1LCUB+Bhn2TzrZY/SyupMqE1At
	847V8SMNuq5pw4t1PSYUQbI=
X-Google-Smtp-Source: ABdhPJzpsOzpjTaxFZ/kibyV/WOEURaFfw72mbDcSqI86DlTsD8YFLX2t01GStmDhZ5pXGc2qvUrNA==
X-Received: by 2002:a05:6830:19c2:: with SMTP id p2mr5284693otp.96.1625769376392;
        Thu, 08 Jul 2021 11:36:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:6e08:: with SMTP id e8ls1040528otr.7.gmail; Thu, 08 Jul
 2021 11:36:16 -0700 (PDT)
X-Received: by 2002:a9d:6a42:: with SMTP id h2mr1815596otn.310.1625769376014;
        Thu, 08 Jul 2021 11:36:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1625769376; cv=none;
        d=google.com; s=arc-20160816;
        b=UJkPIqR6kw4APuYytBJedcnZh2rg+XBNOQ4WPbUW6g6Wj/yGsnApnsjqcNlg+1kHEF
         GZRPwuFsN5ntF+QpcaIh1ZPYk70KCcXHlD/esXVTLAomtr2fT/zYsYQi90RGGYduIl2G
         svUnZe/ttjLfOyZ8P4E6Taq2nGlxe9HFFo98tPD9MxEc3LqvJk2+c0dL3cCNCN/iP2CL
         pJkvOsflfjJAqtYafJxwYgsjqvZ3VgjP+axQqzC0u7mQp9ujtsGsyiLexwEkDFfxWVok
         VpEiPJI1i6FfiPULr1ja/X/atnRIhhyprGmlR4eAvVDIn5Lf62wR5MvQz0BXRp9H5PoM
         +g+w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-language:thread-index:content-transfer-encoding
         :mime-version:message-id:date:subject:in-reply-to:references:cc:to
         :from:reply-to:dmarc-filter:sender:dkim-signature;
        bh=CaCFZHGTqeI0frAdNEP44m6CAB9Mlr4tcLRQxgjQMC0=;
        b=u9q2NTlUMEJlYHmwx8pQkYuRzYw7gshverAx91R5pKIvcid0p7mVbKNO7C2x84cboO
         RekFGhA31qC5ng1tDPWnxC/PZzS+WyvGWvh+T0ys9vGYaBEmZH0Ywdi1udIJMh7AXBaP
         bmqbX9H6XC0zGdACTG+nsBR3PaJ+r5algJIU7+3Ect9PrBZCxix+O+8g8C0bhVORFlMJ
         5ew0MnwIbJmPhqaccft6r2uymlErJmzmKhNejSk+JW5ftKF1qQdxvedFxCRg2OUM8LRJ
         pRNBQiLLCUQqcN40/TQeOiglmKCP8pseb3xi0WVPdTZlUWkwdd9COU73x8CvIoPC78Y+
         DAQw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mg.codeaurora.org header.s=smtp header.b=rTXg2E1G;
       spf=pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 198.61.254.9 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
Received: from so254-9.mailgun.net (so254-9.mailgun.net. [198.61.254.9])
        by gmr-mx.google.com with UTF8SMTPS id k24si269737otn.3.2021.07.08.11.36.11
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Jul 2021 11:36:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 198.61.254.9 as permitted sender) client-ip=198.61.254.9;
X-Mailgun-Sending-Ip: 198.61.254.9
X-Mailgun-Sid: WyIyMWUwOCIsICJjbGFuZy1idWlsdC1saW51eEBnb29nbGVncm91cHMuY29tIiwgImJlOWU0YSJd
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n03.prod.us-west-2.postgun.com with SMTP id
 60e7458801dd9a9431a25f56 (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Thu, 08 Jul 2021 18:35:52
 GMT
Sender: bcain=codeaurora.org@mg.codeaurora.org
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
	id 6FDA0C43217; Thu,  8 Jul 2021 18:35:52 +0000 (UTC)
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-caf-mail-1.web.codeaurora.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=2.0 tests=ALL_TRUSTED,BAYES_00,SPF_FAIL,
	URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.0
Received: from BCAIN (i-global254.qualcomm.com [199.106.103.254])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: bcain)
	by smtp.codeaurora.org (Postfix) with ESMTPSA id 44C17C433F1;
	Thu,  8 Jul 2021 18:35:50 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org 44C17C433F1
Reply-To: <bcain@codeaurora.org>
From: "Brian Cain" <bcain@codeaurora.org>
To: "'Nick Desaulniers'" <ndesaulniers@google.com>,
	"'Christoph Hellwig'" <hch@lst.de>
Cc: "'Manning, Sid'" <sidneym@quicinc.com>,
	"'Nathan Chancellor'" <nathan@kernel.org>,
	"'Sid Manning'" <sidneym@codeaurora.org>,
	"'Arnd Bergmann'" <arnd@arndb.de>,
	<linux-hexagon@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>,
	<clang-built-linux@googlegroups.com>
References: <20210623141854.GA32155@lst.de> <08df01d7683d$8f5b7b70$ae127250$@codeaurora.org> <CAK8P3a28_0KJpcLRQrDhFk8-ndxmfk7-Q2_qcRRiYkyh-NNZUQ@mail.gmail.com> <08e101d76842$94f78a60$bee69f20$@codeaurora.org> <20210623151746.GA4247@lst.de> <CAK8P3a2bG64ARjpwQ0ZhQ9P0g8B-=AwcHHAbYBXBS4B6Fy9pQw@mail.gmail.com> <YNQE0YJzC2xmWg+2@Ryzen-9-3900X.localdomain> <20210707141054.GA24828@lst.de> <1ee8fc44-3e8c-91c0-7909-a636757dbda4@kernel.org> <20210708052751.GA18789@lst.de> <CAKwvOd=iRLQPum8-jaCG90TPyxDptNB31yRHMEWgSMxjv=KuHA@mail.gmail.com>
In-Reply-To: <CAKwvOd=iRLQPum8-jaCG90TPyxDptNB31yRHMEWgSMxjv=KuHA@mail.gmail.com>
Subject: RE: how can we test the hexagon port in mainline
Date: Thu, 8 Jul 2021 13:35:49 -0500
Message-ID: <0a6801d77428$13c88060$3b598120$@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailer: Microsoft Outlook 16.0
Thread-Index: AQJHxj6Ga6VuoE3mNrk9EKW2w3HC7gG6K8dnAg2GTicC7yoGzAOeQQE6AcpiXAwBQV0IVQJh9CDkAd1aUgECtDKCjQHeCRXAqactp4A=
Content-Language: en-us
X-Original-Sender: bcain@codeaurora.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mg.codeaurora.org header.s=smtp header.b=rTXg2E1G;       spf=pass
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
> From: Nick Desaulniers <ndesaulniers@google.com>
> Sent: Thursday, July 8, 2021 12:54 PM
> To: Christoph Hellwig <hch@lst.de>
> Cc: Nathan Chancellor <nathan@kernel.org>; Brian Cain
> <bcain@codeaurora.org>; Sid Manning <sidneym@codeaurora.org>; Arnd
> Bergmann <arnd@arndb.de>; linux-hexagon@vger.kernel.org; linux-
> kernel@vger.kernel.org; clang-built-linux@googlegroups.com
> Subject: Re: how can we test the hexagon port in mainline
>=20
> On Wed, Jul 7, 2021 at 10:27 PM Christoph Hellwig <hch@lst.de> wrote:
> >
> > On Wed, Jul 07, 2021 at 10:42:27AM -0700, Nathan Chancellor wrote:
> > >> hch@brick:~/work/linux$ make -j4 ARCH=3Dhexagon
> > >> CROSS_COMPILE=3Dhexagon-unknown-linux-musl LLVM=3D1 LLVM_IAS=3D1
> defconfig all
> > >> HOSTCC  scripts/basic/fixdep
> > >> clang: error while loading shared libraries: libtinfo.so.5: cannot o=
pen
> shared object file: No such file or directory
> > >
> > > Hmmm, is that with libtinfo5 installed (or whatever the ncurses-compa=
t
> > > equivalent is on your distribution installed)? I had that problem on =
Debian
> > > until I insta
> >
> > I did install libtinfo5, which just gets me to the next error:
> >
> > hch@brick:~/work/linux$ export PATH=3D/opt/clang+llvm-12.0.0-cross-
> hexagon-unknown-linux-musl/x86_64-linux-gnu/bin/:$PATH
> > hch@brick:~/work/linux$ make -j4 ARCH=3Dhexagon
> CROSS_COMPILE=3Dhexagon-unknown-linux-musl LLVM=3D1 LLVM_IAS=3D1 defconfi=
g
> all
> >   HOSTCC  scripts/basic/fixdep
> > clang: error while loading shared libraries: libc++.so.1: cannot open s=
hared
> object file: No such file or directory
>=20
> ^ Nathan did mention earlier in the thread that he "had to install
> libtinfo5 and libc++1-7 on Debian Buster." Emphasis on the _and
> libc++_ part.
>=20
> I'm not sure if that binary distribution came with a libc++.so.1; if
> so, that path needs to be specified via LD_LIBRARY_PATH so that the
> runtime loader can find it.  Perhaps rpath wasn't set when the clang
> binary was built.

The only libc++ builds in this distribution are the target hexagon ones.  I=
 did not include a host x86_64 libc++.so library, but it does seem like it =
would be more convenient if we did.

Nathan suggested disabling the terminfo dependency, I will include that cha=
nge for the next release that we produce.  Also, the upcoming clang-13 rele=
ase from releases.llvm.org should contain all the necessary fixes (discusse=
d recently) to build kernel code for hexagon.

> We're looking into statically linked images of clang to prevent these
> kinds of games.

Statically linking against libc++/libc++abi at least seems like a good idea=
.  Let me know if we can help.

-Brian

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/0a6801d77428%2413c88060%243b598120%24%40codeaurora.org.
