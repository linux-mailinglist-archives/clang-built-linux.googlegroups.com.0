Return-Path: <clang-built-linux+bncBC4INQUBT4IRBAE72CAQMGQEGBLF2CI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd40.google.com (mail-io1-xd40.google.com [IPv6:2607:f8b0:4864:20::d40])
	by mail.lfdr.de (Postfix) with ESMTPS id 48CED3220A2
	for <lists+clang-built-linux@lfdr.de>; Mon, 22 Feb 2021 21:09:37 +0100 (CET)
Received: by mail-io1-xd40.google.com with SMTP id o4sf10390370ioh.14
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Feb 2021 12:09:37 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614024576; cv=pass;
        d=google.com; s=arc-20160816;
        b=pY9VLaNaO9LjJgJkc2gr/syI/tNxplt7YPdNFQRi6gM3xZ04sMgB940JCvMdIasN4u
         ok12At1pFqDrfkkC8x+TnmP1DnV3yQ7It1lMDXrF5uMQuxH1telrfrz+F6Y3J6L1C6lA
         D/sf5mPfjpQtW2BGAS7qTOKBetEdydecw/L2MLegH++0KLl+pluXn+54e8oLRfeuwapw
         kpZVB8DAIlWQeXYgI3BsRZvS3XufDCMrr4gUOSXhfsZRGPyUAhVO72AvbxE7FDDvXB5W
         9CNZpH2DUJLR7LhCoDRLPAiyNlPdByWiGX2bh1j8b340zviE+uS36t+EZUVAsK/NXn9+
         +9aw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :thread-index:thread-topic:mime-version:subject:references
         :in-reply-to:message-id:cc:to:from:date:sender:dkim-signature;
        bh=++OfYotre/Nps+RmEwyVj/IW0p6VgrZcTlSC6pxuwks=;
        b=o6sFJp4zbaQu9iR9aLWGi17n+NvJRDBzJDXcWJb7Au1QRpkOUGCFroLYBG72DlZEQ+
         nhwGNy03HIVdfLuJZGGPshuXCQBG9nkmALoK7jtD7BtBI1Fg6aYhe5KjDWnNO5gmwNbp
         8WiW+lBy7IwLSFVPFJYYaNx0Zaeu2EheUt3Qt6u0gSsiiIgB9cuuLIi5clywSSAXH7C9
         nmiIaimyiHZs0xUtsKR42zQ7k754Toe6zKN2wEhsEI0ahdy4vD5VqNthOb1YpAJiV0+u
         lDgKqH+numM9MwWLXGkcAba4BPadH9QI0japegSlCXOqeRobtryWvN1cIS3qIGEBfgHe
         bBGg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Ow7GCyfi;
       spf=pass (google.com: domain of vkabatov@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=vkabatov@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:message-id:in-reply-to:references:subject
         :mime-version:thread-topic:thread-index:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=++OfYotre/Nps+RmEwyVj/IW0p6VgrZcTlSC6pxuwks=;
        b=s4W1PUALb/flY3wa5+dkfJoC0Qut/4Qd6ewc86/mCvrBL68TqEl2gjNybVd5P3lYPc
         na/ydHwsMbTEPO7TxBgpi3pzQep+8JnMIzkv7JvKlVSO532S+mO+oK5l8xlePYlHwuAO
         j65CWnkQaJf4rVXrup/aKMoB44LLNP5xFmiDubJSQjy2pOGebfv+/5tqLwUuwqNGiDQd
         z/OQsiXy950l5wgnkZOaLCVEY7ONOGIu2Xr5oDi77w19JvsahwNKaJ3Gpc6mOdUSR3e8
         x3OUyXUbjrtgYjxtLiR54AwPNupUDM4sKqPhx1AfpO6lcYuPPot8IgS4PayuQzisa0g/
         ZlLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:message-id:in-reply-to
         :references:subject:mime-version:thread-topic:thread-index
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=++OfYotre/Nps+RmEwyVj/IW0p6VgrZcTlSC6pxuwks=;
        b=VRRwUcbzw1m0/oo6AkQ2yJefU1mQJzVgy59zLA+/c9XsT6sglDa3R1/8dhuL//Tv83
         0cPfFy+n4ovRDduY247Ug8IgysYVzJwDJNegBMANGt87bB2/6qCF+5dgkeE5zCg1GCBX
         0L1W2A7CKM3f3vsQMLOCYNrn1Yw6Ca9oGdVWYNtZFyKRRj9NKXNZkjx4wVaLoqzL5Wcn
         91bSGPuZZiXVaYZSR3HnlKKmsfkXGh6AnupQa4SicHGRDXMarJRUz5dQj6LRlhnnPBGa
         wSaWTlcNKJ3zPec+Ug72uFtXL1eJjYw9E/kyQAiikR5uCTjqWuTtDJwNXRC9bQQcg06E
         7cAA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM53100wqE2lpPtuy6EfiJwqQiYLgVVerRTjqscjSKAj7BPuMvaE2z
	wutcEfekWCfmNE4wQohOOvI=
X-Google-Smtp-Source: ABdhPJzsr5E+58tfWSHEdCx+Vqy+hXGZujZme2MS9Zs/WjcH80Hhhfrb+qSxGsBWISHgNKY0U0nKjA==
X-Received: by 2002:a5d:81d1:: with SMTP id t17mr17125519iol.208.1614024576327;
        Mon, 22 Feb 2021 12:09:36 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:6d04:: with SMTP id m4ls2552318jac.9.gmail; Mon, 22 Feb
 2021 12:09:35 -0800 (PST)
X-Received: by 2002:a05:6638:1393:: with SMTP id w19mr15808655jad.86.1614024575652;
        Mon, 22 Feb 2021 12:09:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614024575; cv=none;
        d=google.com; s=arc-20160816;
        b=QuKTBIsnaFR73ZIcPDo3Zfj2UHZBsaW5U9hjx/OEybi5T07riHfSEhrACiGb0xs3+z
         KO7Jk5H+9sREo2PONfb8mfNlBcnTAW7QEAVkE90ESXYqV/h59BO5E7IO9mDkN478qsk1
         3BojMn4j+rB/ynhVpGKQEIp7JLvsanHM8V8eeAMHIPOSNvbjkGohnkOL6oINjrxyG890
         OUsr43tYdkM5FbrJEK0XmxfPHb8oB8saRhG5rwZ70V6Er7GfbW7JyHOE+XNxvtEF0q5a
         4Vd4WzyxlI/Ut5/GVZD/D6mAqnx5YP17DFUjIcibKJ2VYMKCWzRE5Tgl85/ruT/Q37qN
         gmbQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:thread-index:thread-topic:mime-version
         :subject:references:in-reply-to:message-id:cc:to:from:date
         :dkim-signature;
        bh=dwynfLy8Ryjey/dQ4lIK34kYyGiKNaRgYqGPMeRbA+0=;
        b=OeKVY1fYOcbFcQhWpqsnUK8B8olmLHlywlE5w8ELd646q7q5rL4/M/NQTAmtKpzxFv
         j22oEZ9V3s01VLx+9p0xkNGbg2+MQI+dLBQkknvJvi3ByyHaJITwKgY54y3UhwA/i3fh
         LTm+WEqJamesi15arhAnjVDUudql2nx4zjiGHwsMWTO8ltwl1ucjBr1YCJX4tg+9dizz
         TfVClySUAoyMn0yoZ4IGKElQMI72xAbnI1z1Mu92h6tiwpfq7IqmPPtYDfJO13VpSpRo
         q/u8dIX1v2aimzAv2FWxVzV1CLnxqqm5lE8a6HeJdKY3LdNjKT68/nDhWmMzM0mRhMQ/
         /91w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=Ow7GCyfi;
       spf=pass (google.com: domain of vkabatov@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=vkabatov@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id y6si953721ill.1.2021.02.22.12.09.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Feb 2021 12:09:35 -0800 (PST)
Received-SPF: pass (google.com: domain of vkabatov@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-297-fZziA35XNK6dh4M6-sSNJA-1; Mon, 22 Feb 2021 15:09:30 -0500
X-MC-Unique: fZziA35XNK6dh4M6-sSNJA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 13AFD801984;
	Mon, 22 Feb 2021 20:09:29 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 08F87102AE7E;
	Mon, 22 Feb 2021 20:09:29 +0000 (UTC)
Received: from zmail19.collab.prod.int.phx2.redhat.com (zmail19.collab.prod.int.phx2.redhat.com [10.5.83.22])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id E61404EE4D;
	Mon, 22 Feb 2021 20:09:28 +0000 (UTC)
Date: Mon, 22 Feb 2021 15:09:26 -0500 (EST)
From: Veronika Kabatova <vkabatov@redhat.com>
To: Nathan Chancellor <nathan@kernel.org>
Cc: clang-built-linux@googlegroups.com, CKI Project <cki-project@redhat.com>
Message-ID: <136422117.28401158.1614024566461.JavaMail.zimbra@redhat.com>
In-Reply-To: <1498195839.28332680.1613993034711.JavaMail.zimbra@redhat.com>
References: <cki.AE7E6672E1.KJACZMVHOY@redhat.com> <20210221051028.GA21653@24bbad8f3778> <1498195839.28332680.1613993034711.JavaMail.zimbra@redhat.com>
Subject: =?utf-8?Q?Re:_=E2=9D=8C_FAIL:_Test_report_for_kernel?=
 =?utf-8?Q?=095.11.0_(mainline.kernel.org-clang)?=
MIME-Version: 1.0
X-Originating-IP: [10.36.115.184, 10.4.195.6]
Thread-Topic: =?utf-8?B?4p2MIEZBSUw6?= Test report for kernel 5.11.0
	(mainline.kernel.org-clang)
Thread-Index: ZQyK9fv48l3vQUa5HP7ZbQf+zf1zo7zebYO4
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: vkabatov@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=Ow7GCyfi;
       spf=pass (google.com: domain of vkabatov@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=vkabatov@redhat.com;
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



----- Original Message -----
> From: "Veronika Kabatova" <vkabatov@redhat.com>
> To: "Nathan Chancellor" <nathan@kernel.org>
> Cc: clang-built-linux@googlegroups.com, "CKI Project" <cki-project@redhat=
.com>
> Sent: Monday, February 22, 2021 12:23:54 PM
> Subject: Re: =E2=9D=8C FAIL: Test report for kernel	5.11.0 (mainline.kern=
el.org-clang)
>=20
>=20
>=20
> ----- Original Message -----
> > From: "Nathan Chancellor" <nathan@kernel.org>
> > To: "CKI Project" <cki-project@redhat.com>
> > Cc: clang-built-linux@googlegroups.com
> > Sent: Sunday, February 21, 2021 6:10:28 AM
> > Subject: Re: =E2=9D=8C FAIL: Test report for kernel	5.11.0
> > (mainline.kernel.org-clang)
> >=20
> > On Sun, Feb 21, 2021 at 04:20:12AM -0000, CKI Project wrote:
> > >=20
> > > Hello,
> > >=20
> > > We ran automated tests on a recent commit from this kernel tree:
> > >=20
> > >        Kernel repo:
> > >        https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux=
.git
> > >             Commit: e767b3530acb - Merge tag 'arm-drivers-v5.12' of
> > >             git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc
> > >=20
> > > The results of these automated tests are provided below.
> > >=20
> > >     Overall result: FAILED (see details below)
> > >              Merge: OK
> > >            Compile: FAILED
> > >  Selftests compile: FAILED
> > >=20
> > > All kernel binaries, config files, and logs are available for downloa=
d
> > > here:
> > >=20
> > >   https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/index.ht=
ml?prefix=3Ddatawarehouse-public/2021/02/21/624441
> > >=20
> > > We attempted to compile the kernel for multiple architectures, but th=
e
> > > compile
> > > failed on one or more architectures:
> > >=20
> > >            aarch64: FAILED (see build-aarch64.log.xz attachment)
> > >=20
> > > We hope that these logs can help you find the problem quickly. For th=
e
> > > full
> > > detail on our testing procedures, please scroll to the bottom of this
> > > message.
> > >=20
> > > Please reply to this email if you have any questions about the tests =
that
> > > we
> > > ran or if you have any suggestions on how to make future tests more
> > > effective.
> > >=20
> > >         ,-.   ,-.
> > >        ( C ) ( K )  Continuous
> > >         `-',-.`-'   Kernel
> > >           ( I )     Integration
> > >            `-'
> > > _____________________________________________________________________=
_________
> > >=20
> > > Compile testing
> > > ---------------
> > >=20
> > > We compiled the kernel for 3 architectures:
> > >=20
> > >     aarch64:
> > >       make options: make LLVM=3D1 -j30 INSTALL_MOD_STRIP=3D1 targz-pk=
g
> > >=20
> > >     ppc64le:
> > >       make options: make CC=3Dclang -j30 INSTALL_MOD_STRIP=3D1 targz-=
pkg
> > >=20
> > >     x86_64:
> > >       make options: make LLVM=3D1 -j30 INSTALL_MOD_STRIP=3D1 targz-pk=
g
> > >=20
> > >=20
> > > We built the following selftests:
> > >=20
> > >   x86_64:
> > >       net: OK
> > >       bpf: fail
> > >       install and packaging: OK
> > >=20
> > > You can find the full log (build-selftests.log) in the artifact stora=
ge
> > > above.
> > >=20
> >=20
> > This seems like a machine based failure according to the backtrace?
> >=20
> > 00:41:52 make[4]: /bin/sh: Operation not permitted
> > 00:41:52 make[4]: *** [scripts/Makefile.modfinal:58:
> > drivers/regulator/max77650-regulator.ko] Error 127
> > 00:41:52 make[4]: *** Waiting for unfinished jobs....
> > 00:41:52 terminate called after throwing an instance of 'terminate call=
ed
> > after throwing an instance of 'terminate called after throwing an insta=
nce
> > of 'terminate called after throwing an instance of 'terminate called af=
ter
> > throwing an instance of 'terminate called after throwing an instance of
> > 'terminate called after throwing an instance of 'terminate called after
> > throwing an instance of 'terminate called after throwing an instance of
> > 'terminate called after throwing an instance of
> > 'std::system_errorstd::system_errorterminate called after throwing an
> > instance of ''
> >=20
>=20
> Hi,
>=20
> yes, looks like it. First time getting this error, we'll add it to the
> list of infra ones that should be automatically retried.
>=20
> Thanks for reporting it!
> Veronika
>=20

Hi,

took a hot minute (Mondays, eh) but the issue should be worked around now
and the runs hitting the problem should be automatically retried as well.

I also enabled the s390x runs so we'll see how those will go.

Veronika

> > Cheers,
> > Nathan
> >=20
> >=20
>=20
>=20

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/136422117.28401158.1614024566461.JavaMail.zimbra%40redhat=
.com.
