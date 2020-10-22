Return-Path: <clang-built-linux+bncBCKPFB7SXUERBYUJYT6AKGQEDOZ7SSQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf39.google.com (mail-qv1-xf39.google.com [IPv6:2607:f8b0:4864:20::f39])
	by mail.lfdr.de (Postfix) with ESMTPS id 98B3E295707
	for <lists+clang-built-linux@lfdr.de>; Thu, 22 Oct 2020 06:04:51 +0200 (CEST)
Received: by mail-qv1-xf39.google.com with SMTP id w1sf306192qvv.0
        for <lists+clang-built-linux@lfdr.de>; Wed, 21 Oct 2020 21:04:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603339490; cv=pass;
        d=google.com; s=arc-20160816;
        b=0AptKVK6xExn7o/J6TWYs/nL1dgI4hfz2a9aP/idCNgM1w4NlVITbRMoVlJI6pJIyv
         sdVvsoe5Og0XxT8Mja4/gCgurvanFtu5H+ZeLERGd5nO8jrjHElNxjyftV1n8UgahHr/
         5uvc+FGYlMOzQw2EzvECiMV/iniz1I1gSG8mLEl6ksR1/fqW4I56BrI5mVwELMymuY6J
         a+a8SoMm+3HsWeXc4iPUa1huhzDAnv8tESQVSg5Myf7PzLy92BFSIZe2dXJHw0pBHnBQ
         v5ZpfIxMrGN3v7uOtY4w/jXTOWPeHT4WipudeoDvjPEU1kVfON+Mss+jqFSTtvj/BiMZ
         I0eQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=MmquvQfH3Em4XmJ3HJX6afuo/0yM6PMNvQp4aVydg7c=;
        b=If0bdl0ftaPEzIvqOXxUdYFVttRIudrHygBz5hPI+g7H5M0Xen2I/kzh5Cpdyjocvd
         wt0No2TVT5uVPptwO33arrpaYkF5t6F5gy+YE6hQ3EN1TCbwoWk+0B5Nagvz2QcYwxMo
         zFs1LCt3zAbtG4lKkdHePi0CiTXJEUxtTmxrY4XruFVMT9JOUoJVdAhkdPucR1jB1wXr
         u7JPG1cHYTepIZMa5cjlvuJQjZcK2gfIaxqGCXT46gEh9VrqpTVSmd4Dn1ELDE19nLmQ
         zhpUHM8Xc/9JBMMtnXkH/UwnLrztRlaw5D6EHCMuoDPnY4gNHzgCD1eywYstD7o09zvM
         gtcA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=PdX+ADNB;
       spf=pass (google.com: domain of bhe@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=bhe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MmquvQfH3Em4XmJ3HJX6afuo/0yM6PMNvQp4aVydg7c=;
        b=inefeM13HPvw6AXE2jw1qP53TzYtS2bzLp0FJqcELDUnlvlYNsMUceBPY2MY8dNS+u
         lF9vS5G2hrgFdEnftPJ5YO2qh3Iy7QfpRNbb8kkdVLtI7AmBXJcNgWeRbLKib29ugsAc
         Ye4/NpSTQEdI4Ez86WUG/Rh0urKPC1DAnie0pLlYWJGrpK0yWN9IaBebgF/2M58FyiLg
         grhWZ/dBnTGB+oQOfWmrhNZDbrBA95kXkQY2EmoFJErMsGiQ50a414JbdUliLNzIlR7e
         3CByskbIvgeqzU1XgeUliONel2bUpDfSsnFeARPhUqyYYXngHn1fEK9q1VAIJsncxymS
         ASKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=MmquvQfH3Em4XmJ3HJX6afuo/0yM6PMNvQp4aVydg7c=;
        b=G9a1mYxmnkMYeLaK4XBpT21q5DksfEgF6u3lbeHbSd2gfNaU5ymCPKvV51onyj6tka
         EFotPGqpLnisoC8qA8jsBBOLsYmCE/kPQS388Z9QcmsGi9hYS7dP40YldIm+LjDRiNM/
         SQwvy51fa0tzDyosA7fKZ4huegt0gM06V1ufOosSYiyyULKOZSSmrCWhxpwGqK5aMEYH
         LzTAYZQ1ImVTItbISbGLGQyuyFu+7XO9lOKghycNTihmnEhxbUZ9dJM23WJQpKPlmrHY
         ODCW/+VSOQHUMINWPKvTJNrUI8pNx7IraaBPawqC3HFxOvdvP29wgdza/cg1qHXf6g3s
         8G2w==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533BXRwEBsxCvFh7CCRF0RXIUgH2HIr50zsDoSRcG567blzKbFAQ
	zHNdHvA3kE012eG629Tke3E=
X-Google-Smtp-Source: ABdhPJxvHCaNkeHAxaWSKB/z3r5g8g79l2XrO1DofHdWpfzwGf7aEpi7y14FP6+dd38iR9hgyHXAnA==
X-Received: by 2002:ae9:f44a:: with SMTP id z10mr641861qkl.247.1603339490565;
        Wed, 21 Oct 2020 21:04:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:10b2:: with SMTP id h18ls204421qkk.0.gmail; Wed, 21
 Oct 2020 21:04:50 -0700 (PDT)
X-Received: by 2002:a37:e213:: with SMTP id g19mr631133qki.147.1603339489986;
        Wed, 21 Oct 2020 21:04:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603339489; cv=none;
        d=google.com; s=arc-20160816;
        b=JgDVMuSTG5qMw3r0SKujydwQ9BpvNC1viVs7cWBhlNQ9rWnepLVgi29el5Z5Ow4hao
         C5IeO+AWAM+E+KHyVMlDqFgyb3xAmVZw2ahGGRVf2DQjyXruWJ0l+aZF9bP4TYVaqUOc
         3Mf33ilpbHomvKTC4ERjSFkvZJryTxaz+gLovK3KMcpC0OhjN+RZnDuupUvJDMAMPBiy
         9fUOmPWqtovkWF8GAtMW+YciCHRf6beVJ+U396Z9nEZge35YkhVZPiPKgqhcK6Nxn07G
         tzkdOcAZoi066P75VZcKCPVVZdXmg2FPVoAqSwgpkPeGZ1khQKgC42FSxWkUJ7zK9kt+
         2Pmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=Ae2OaQqqHV4++U7pFL5husft7G1mWnlpANfXuyKi6ic=;
        b=aSMstmruZPL9kJkCEtJZcMX2PwRV+m44lxOlukdLhQcGK9hTFfpE9PHrXUf5BGaWI/
         2szgTXWCJMeunZF054cCQtGFumltRV/BZAL4pZ/A/x9RiLoTmE/ekDQw0vFDMaj536TU
         XmtBrgq8XXqjSAu8QOz+C4AVzbMD0QqXM+ctDix4Mj/CzbseWBUaVFKqoqTOirl3Kwy5
         IDm+0JsMpT7N+gKGAiDhFRm6CHcCFZn4Cmd+g4elUoddVS7cdNdmVrV1jn5zaBfPWxgx
         3RKE2CQftMcohdn4YmV9UMUDG24JJKmobj0nnjGA/0zcHBrUKKgxByMDF98M0SKC76QP
         PHQQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=PdX+ADNB;
       spf=pass (google.com: domain of bhe@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=bhe@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [63.128.21.124])
        by gmr-mx.google.com with ESMTPS id z205si25009qkb.1.2020.10.21.21.04.49
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Oct 2020 21:04:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhe@redhat.com designates 63.128.21.124 as permitted sender) client-ip=63.128.21.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-218-OMoJQYF3OS2l9Fx0Kh6lrw-1; Thu, 22 Oct 2020 00:04:45 -0400
X-MC-Unique: OMoJQYF3OS2l9Fx0Kh6lrw-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id EC30686ABCE;
	Thu, 22 Oct 2020 04:04:43 +0000 (UTC)
Received: from localhost (ovpn-12-84.pek2.redhat.com [10.72.12.84])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id C036D60C04;
	Thu, 22 Oct 2020 04:04:42 +0000 (UTC)
Date: Thu, 22 Oct 2020 12:04:40 +0800
From: "bhe@redhat.com" <bhe@redhat.com>
To: Rahul Gopakumar <gopakumarr@vmware.com>
Cc: "linux-mm@kvack.org" <linux-mm@kvack.org>,
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
	"akpm@linux-foundation.org" <akpm@linux-foundation.org>,
	"natechancellor@gmail.com" <natechancellor@gmail.com>,
	"ndesaulniers@google.com" <ndesaulniers@google.com>,
	"clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>,
	"rostedt@goodmis.org" <rostedt@goodmis.org>,
	Rajender M <manir@vmware.com>, Yiu Cho Lau <lauyiuch@vmware.com>,
	Peter Jonasson <pjonasson@vmware.com>,
	Venkatesh Rajaram <rajaramv@vmware.com>
Subject: Re: Performance regressions in "boot_time" tests in Linux 5.8 Kernel
Message-ID: <20201022040440.GX25604@MiWiFi-R3L-srv>
References: <DM6PR05MB52921FF90FA01CC337DD23A1A4080@DM6PR05MB5292.namprd05.prod.outlook.com>
 <20201010061124.GE25604@MiWiFi-R3L-srv>
 <DM6PR05MB529281F914953691E0F52D1CA4070@DM6PR05MB5292.namprd05.prod.outlook.com>
 <20201013131735.GL25604@MiWiFi-R3L-srv>
 <DM6PR05MB52926FDAB0E58F5CFA2E892DA41F0@DM6PR05MB5292.namprd05.prod.outlook.com>
 <20201020151814.GU25604@MiWiFi-R3L-srv>
 <DM6PR05MB529293AC2B077B5170FFE625A41F0@DM6PR05MB5292.namprd05.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <DM6PR05MB529293AC2B077B5170FFE625A41F0@DM6PR05MB5292.namprd05.prod.outlook.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Original-Sender: bhe@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=PdX+ADNB;
       spf=pass (google.com: domain of bhe@redhat.com designates 63.128.21.124
 as permitted sender) smtp.mailfrom=bhe@redhat.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=redhat.com
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

Hi Rahul,

On 10/20/20 at 03:26pm, Rahul Gopakumar wrote:
> >> Here, do you mean it even cost more time with the patch applied?
>=20
> Yes, we ran it multiple times and it looks like there is a=20
> very minor increase with the patch.
>=20
......=C2=A0
> On 10/20/20 at 01:45pm, Rahul Gopakumar wrote:
> > Hi Baoquan,
> >=20
> > We had some trouble applying the patch to problem commit and the latest=
 upstream commit. Steven (CC'ed) helped us by providing the updated draft p=
atch. We applied it on the latest commit (3e4fb4346c781068610d03c12b16c0cfb=
0fd24a3), and it doesn't look like improving the performance numbers.
>=20
> Thanks for your feedback. From the code, I am sure what the problem is,
> but I didn't test it on system with huge memory. Forget mentioning my
> draft patch is based on akpm/master branch since it's a mm issue, it
> might be a little different with linus's mainline kernel, sorry for the
> inconvenience.
>=20
> I will test and debug this on a server with 4T memory in our lab, and
> update if any progress.
>=20
> >=20
> > Patch on latest commit - 20.161 secs
> > Vanilla latest commit - 19.50 secs
>=20

Can you tell how you measure the boot time? I checked the boot logs you
attached, E.g in below two logs, I saw patch_dmesg.log even has less
time during memmap init. Now I have got a machine with 1T memory for
testing, but didn't see obvious time cost increase. At above, you said
"Patch on latest commit - 20.161 secs", could you tell where this 20.161
secs comes from, so that I can investigate and reproduce on my system?

patch_dmesg.log:
[    0.023126] Initmem setup node 1 [mem 0x0000005600000000-0x000000aafffff=
fff]
[    0.023128] On node 1 totalpages: 89128960
[    0.023129]   Normal zone: 1392640 pages used for memmap
[    0.023130]   Normal zone: 89128960 pages, LIFO batch:63
[    0.023893] Initmem setup node 2 [mem 0x000000ab00000000-0x000001033ffff=
fff]
[    0.023895] On node 2 totalpages: 89391104
[    0.023896]   Normal zone: 1445888 pages used for memmap
[    0.023897]   Normal zone: 89391104 pages, LIFO batch:63
[    0.026744] ACPI: PM-Timer IO Port: 0x448
[    0.026747] ACPI: Local APIC address 0xfee00000

vanilla_dmesg.log:
[    0.024295] Initmem setup node 1 [mem 0x0000005600000000-0x000000aafffff=
fff]
[    0.024298] On node 1 totalpages: 89128960
[    0.024299]   Normal zone: 1392640 pages used for memmap
[    0.024299]   Normal zone: 89128960 pages, LIFO batch:63
[    0.025289] Initmem setup node 2 [mem 0x000000ab00000000-0x000001033ffff=
fff]
[    0.025291] On node 2 totalpages: 89391104
[    0.025292]   Normal zone: 1445888 pages used for memmap
[    0.025293]   Normal zone: 89391104 pages, LIFO batch:63
[    2.096982] ACPI: PM-Timer IO Port: 0x448
[    2.096987] ACPI: Local APIC address 0xfee00000

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20201022040440.GX25604%40MiWiFi-R3L-srv.
