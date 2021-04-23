Return-Path: <clang-built-linux+bncBC7457HKSMPRBBNHRSCAMGQEPTXKPSI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-f55.google.com (mail-qv1-f55.google.com [209.85.219.55])
	by mail.lfdr.de (Postfix) with ESMTPS id C5BEA3699CE
	for <lists+clang-built-linux@lfdr.de>; Fri, 23 Apr 2021 20:35:50 +0200 (CEST)
Received: by mail-qv1-f55.google.com with SMTP id el4-20020ad459c40000b029019a47ec7a9dsf15233311qvb.21
        for <lists+clang-built-linux@lfdr.de>; Fri, 23 Apr 2021 11:35:50 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1619202949; cv=pass;
        d=google.com; s=arc-20160816;
        b=H4NUF/ysSFrQw60XhCL6InoTBskEwnkv3G18G9l64OKgUbldWx5stMEHRoc9rhOoYC
         aC0FwQhdHGGaLf7Ca+LI67AVQ74343d2fMEaLIpkWZxajoNpWZgDOeDENumgFJzIa6Yt
         uiDxofNmBkRVDRkjGvOssEzG0O/X7t5TZu1BCZks/G1Zu63DqMgCB6H5uR57q6173/WY
         im+f4tjyYUV/Id8ZoErmTpMrX0e7ia/hNKkjE+rBfD3AdcoAyYbPA6UhbX/lqvvaP5hs
         srpPThHKqTSafkTfVWzF++2wWjH97Gd53T8fNgMyQCO/JxWwV5CfNHQ+NShtXyXcuP72
         AhYQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:thread-index:content-language
         :content-transfer-encoding:mime-version:message-id:date:subject
         :in-reply-to:references:cc:to:from:reply-to:dmarc-filter:sender;
        bh=mRJeqs2hPCPBJhi8qbntjsjWXhUavWt12E63DqSoKPM=;
        b=D8oXEeXjLg+r7PVYWtRs8r0MaX4GB4wrvMrvcQpmyIwaqgD3ITLn9kRoIBR7WqEVAE
         YkNi9zMBRW9bA6Gz2CFVe+szJIn18J3o1yyqoYhFF3GV/2rovQnM/p1HUXywoaleFOtW
         DcxcWTDSlZROTC6X7pfsv1AkzcuPMR5o3TIFr/F6OzxKOLIdLAMlz6QAgsDsFwVwjJSK
         8HY/x9Azz3JYpsvBgZ5vSimFXwNn2k7P5fQjHVY5u13ex8HjVd2WJN5T3rK8LD9EOxDB
         hMwX6JhyYScJiBWMpoQyRcSBfMFAigcKQZgHy09AumI4gBpoKlRMdiip8qT5j4Jq8h48
         Q9bw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@mg.codeaurora.org header.s=smtp header.b=bYUb48ar;
       spf=pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 198.61.254.9 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:dmarc-filter:reply-to:from:to:cc
         :references:in-reply-to:subject:date:message-id:mime-version
         :content-transfer-encoding:content-language:thread-index
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=mRJeqs2hPCPBJhi8qbntjsjWXhUavWt12E63DqSoKPM=;
        b=thiALs0HghOM/csvwEobacBj3FsHXO9G+xYQqdLZgw5snS4RrqAzca6UVGj1qxoG39
         +7AbXSIVCqJtIhlHobFtCsBT++X5jLGqnrGMjJB6GWrtuiPpxRRu4F+NWKOBqkHg0RO7
         YW/KTpbK5bEFd5drFfvTgJg6GOskW7Bc6wKBFLY/8eE29VLsi8Nwctfc2b6KJjv4Rr70
         fnkSULFrJgzKqfyNOz/lHBhJNdtAdhOGG4U9yc559NwGdggWBb0UjyZO/qnrEWxcQ19a
         Z0e7ab8/lyCxETFK05UduDg9Al5jHpFHW0NNKEd/YD65ZPCfEvd+DxCmP5HyBAA71yen
         DdEw==
X-Gm-Message-State: AOAM533Br+719huT69MpC7PkZfsHogPf1TEyKqt6fzRXHNCluoYnrSg5
	XvpqlcYE21nHgTpmfvjPSH0=
X-Google-Smtp-Source: ABdhPJxTnaAOHxhgGgwr6xttkuHE3crBEi7d5NjbT6Y119s8VfKVagB4PzM0Eh2ceG27xSf0t7Ji4g==
X-Received: by 2002:ac8:53ce:: with SMTP id c14mr5185441qtq.325.1619202949623;
        Fri, 23 Apr 2021 11:35:49 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6214:dcd:: with SMTP id 13ls2858207qvt.0.gmail; Fri, 23
 Apr 2021 11:35:49 -0700 (PDT)
X-Received: by 2002:a0c:a0c6:: with SMTP id c64mr5985217qva.57.1619202949168;
        Fri, 23 Apr 2021 11:35:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619202949; cv=none;
        d=google.com; s=arc-20160816;
        b=Y1FNu29cvLK4dBH8+BzRegKin2WadbJmM5s+0Dq2z6QTYN644yVpvISvndvFArZzBI
         w7wpyLpcILZFbqysAQ9wdNHGnMoiqxR8Qiwa3eKBuao00LGvcdrSAEgXzpCwqJDU0zDx
         nKUjZO4MrIZ9w1rTJp6CVc0Q45hCDeK2xGZopMNt8Ne2sjEw9CsyTZNWtEYI6Sr/mIM4
         rFB1zceI+2tztfX7ljr6KVyKJxPsCmHFAYR0LaYvkXHBXptQbojhyd5igdv2c9pb53+R
         Tih2dq4Tim3v/RCQmwFO/F92F4+Yre1lxAT1Wlu+3uhnS6WY1pFBYHiGhNPJPm6EFm12
         zYfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=thread-index:content-language:content-transfer-encoding
         :mime-version:message-id:date:subject:in-reply-to:references:cc:to
         :from:reply-to:dmarc-filter:sender:dkim-signature;
        bh=RhAT7aH0Aqqk6QCKlg4vyZ7VqDWoW4t/2SQv52LFvD8=;
        b=GT5DRrCqVzT2Kk7K16xWOh5UVG9eqUvFTcn0t7ZuA/Tid9ostSVgauP0Wf1ahyBFPe
         Gx4ii9G5d9abPaZB6ueM3cgXYDC72ua0lkZyAdrzVnsrj00qw9jj57w5HLerMS4qTfcm
         SLH2tOgWn2XGvDMKSdHdDvGX4Dir6V2yUc/tgkS/DCvWkD6Val5GGcZDJjr+o0uGSC/B
         gZkZO/4LSCN2TBgGraUcYEtieHhN3ZBoNbh7IcO8PnQy+W1OjurT+Y0bo/p73kvFUQCN
         db1ohhtLHmuKjMsYW0fc8O+0QwLujQpBiVgGxqJ4/psfFwckBRqNXnkAYz4udZhYJutQ
         tTpg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mg.codeaurora.org header.s=smtp header.b=bYUb48ar;
       spf=pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 198.61.254.9 as permitted sender) smtp.mailfrom="bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org"
Received: from so254-9.mailgun.net (so254-9.mailgun.net. [198.61.254.9])
        by gmr-mx.google.com with UTF8SMTPS id y8si644725qti.5.2021.04.23.11.35.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Apr 2021 11:35:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of bounce+a1e0a8.be9e4a-clang-built-linux=googlegroups.com@mg.codeaurora.org designates 198.61.254.9 as permitted sender) client-ip=198.61.254.9;
X-Mailgun-Sending-Ip: 198.61.254.9
X-Mailgun-Sid: WyIyMWUwOCIsICJjbGFuZy1idWlsdC1saW51eEBnb29nbGVncm91cHMuY29tIiwgImJlOWU0YSJd
Received: from smtp.codeaurora.org
 (ec2-35-166-182-171.us-west-2.compute.amazonaws.com [35.166.182.171]) by
 smtp-out-n03.prod.us-west-2.postgun.com with SMTP id
 60831382e0e9c9a6b61312ee (version=TLS1.2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256); Fri, 23 Apr 2021 18:35:46
 GMT
Sender: bcain=codeaurora.org@mg.codeaurora.org
Received: by smtp.codeaurora.org (Postfix, from userid 1001)
	id 34AB7C4323A; Fri, 23 Apr 2021 18:35:46 +0000 (UTC)
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
	by smtp.codeaurora.org (Postfix) with ESMTPSA id A09CFC433D3;
	Fri, 23 Apr 2021 18:35:44 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.3.2 smtp.codeaurora.org A09CFC433D3
Reply-To: <bcain@codeaurora.org>
From: "Brian Cain" <bcain@codeaurora.org>
To: "'Arnd Bergmann'" <arnd@kernel.org>,
	"'Nick Desaulniers'" <ndesaulniers@google.com>
Cc: "'open list:QUALCOMM HEXAGON...'" <linux-hexagon@vger.kernel.org>,
	"'clang-built-linux'" <clang-built-linux@googlegroups.com>,
	"'linux-arch'" <linux-arch@vger.kernel.org>,
	"'Guenter Roeck'" <linux@roeck-us.net>
References: <CAKwvOdngSxXGYAykAbC=GLE_uWGap220=k1zOSxe1ntuC=0wjA@mail.gmail.com> <CAK8P3a2DCCjOq+sB+9sRM7XrtnkromCs_+znv3dehqLiYFDQag@mail.gmail.com>
In-Reply-To: <CAK8P3a2DCCjOq+sB+9sRM7XrtnkromCs_+znv3dehqLiYFDQag@mail.gmail.com>
Subject: RE: ARCH=hexagon unsupported?
Date: Fri, 23 Apr 2021 13:35:43 -0500
Message-ID: <025b01d7386f$78deed80$6a9cc880$@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Mailer: Microsoft Outlook 16.0
Content-Language: en-us
Thread-Index: AQHA6GaHPKlqiI34kZpdCyOyqmKBQAItWAQVqt13LMA=
X-Original-Sender: bcain@codeaurora.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@mg.codeaurora.org header.s=smtp header.b=bYUb48ar;       spf=pass
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
> Sent: Friday, April 23, 2021 4:37 AM
> To: Nick Desaulniers <ndesaulniers@google.com>
> Cc: open list:QUALCOMM HEXAGON... <linux-hexagon@vger.kernel.org>;
> clang-built-linux <clang-built-linux@googlegroups.com>; Brian Cain
> <bcain@codeaurora.org>; linux-arch <linux-arch@vger.kernel.org>; Guenter
> Roeck <linux@roeck-us.net>
> Subject: Re: ARCH=3Dhexagon unsupported?
>=20
> On Fri, Apr 23, 2021 at 12:12 AM 'Nick Desaulniers' via Clang Built Linux
> <clang-built-linux@googlegroups.com> wrote:
> >
> > Arnd,
> > No one can build ARCH=3Dhexagon and
> > https://github.com/ClangBuiltLinux/linux/issues/759 has been open for
> > 2 years.
> >
> > Trying to build
> > $ ARCH=3Dhexagon CROSS_COMPILE=3Dhexagon-linux-gnu make LLVM=3D1
> LLVM_IAS=3D1
> > -j71
> >
> > shows numerous issues, the latest of which commit 8320514c91bea
> > ("hexagon: switch to ->regset_get()") has a very obvious typo which
> > misspells the `struct` keyword and has been in the tree for almost 1
> > year.
>=20
> Thank you for looking into it.
>=20
> > Why is arch/hexagon/ in the tree if no one can build it?
>=20
> Removing it sounds reasonable to me, it's been broken for too long, and w=
e
> did the same thing for unicore32 that was in the same situation where the
> gcc port was too old to build the kernel and the clang port never quite w=
ork
> in mainline.
>=20
> Guenter also brought up the issue a year ago, and nothing happened.
> I see Brian still occasionally sends an Ack to a patch that gets merged t=
hrough
> another tree, but he has not send any patches or pull requests himself af=
ter
> taking over maintainership from Richard Kuo in 2019, and the four hexagon
> pull requests after 2014 only contained build fixes from developers that =
don't
> have access to the hardware (Randy Dunlap, Viresh Kumar, Mike Frysinger
> and me).

Nick, Arnd,

I can appreciate your frustration, I can see that I have let the community =
down here.  I would like to keep hexagon in-tree and I am committed to maki=
ng the changes necessary to do so.  I have a patch under internal review to=
 address the cited build issues and libgcc/compiler-rt content.  In additio=
n, my team has been focusing on developing QEMU system mode support that wo=
uld mitigate some of the need for having hardware access.  We have landed s=
upport for userspace hexagon-linux in upstream QEMU.  My team and I want to=
 make hexagon's open source footprint larger, not smaller.  I realize that =
not being a good steward of the hexagon kernel has not helped, and we will =
do what we can to fix it.

-Brian

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/025b01d7386f%2478deed80%246a9cc880%24%40codeaurora.org.
