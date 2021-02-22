Return-Path: <clang-built-linux+bncBC4INQUBT4IRBVFIZ2AQMGQEGJRDA6Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3d.google.com (mail-io1-xd3d.google.com [IPv6:2607:f8b0:4864:20::d3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 7496F3214FA
	for <lists+clang-built-linux@lfdr.de>; Mon, 22 Feb 2021 12:24:05 +0100 (CET)
Received: by mail-io1-xd3d.google.com with SMTP id c3sf9139215ioa.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 22 Feb 2021 03:24:05 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1613993044; cv=pass;
        d=google.com; s=arc-20160816;
        b=DE1GFwSkY/y8Wg7APrKwzK1EmszcN2mra6ddD5NiV2BZL0PrnuwpxorYRW86hTHNB/
         jwiX989CLYu1PpGjqFpkP0aGRfeUeWutULbc8+Plyp8Hp5t2Z9soFoT7ShyOFWvOh6sX
         69ih0EiiiD5QEQ72ByIfjf5kwXyDPiptnz4My2YMRwHAe7S2C2ojxhF58RFXCLbG/VCK
         umdCTEDPsHjlFAd1iCvKL4E4VdIrpXzEIkgVVnXkV7EQq7lP3kyIBKNsortyp/GzNcoU
         a6CWLpfbGpLrRq3wIl7XnhahtAiAhlVc/QwHGQLxFycNZUpquiViA/ORzjUEBhF/dTkQ
         1gaA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :thread-index:thread-topic:mime-version:subject:references
         :in-reply-to:message-id:cc:to:from:date:sender:dkim-signature;
        bh=47LVWH7KdbYudAMQgLLP6V+1tmWQauv9jLnPo8zzsIQ=;
        b=zloN7IhVpFkJOTiiJY5m8y/utYlpxS5rSQlDxvq61B8TklrU7ajfQ85ZsUTmw3fsaT
         4iY3ciGC5LED/+oGVgboDgQY7EsflhO5oVs+iPSGQcdh/O4FXy2vpm1rxy7tKsMqFA1/
         rdjfxevDfYZjIPoJnEMOy9b7osfguy1aA7Cm3Nf6q/d6j24I9Ie5e2RUotWzHLW80Gnz
         6+tXt2Kh8CAaKceU9SoLDecNiNWrICEPZVZ45GnK439gkMivwR6OU9HLZcphf8uWHye5
         pRNIe1T/ABPSPHUFhvABoFNElv2dQWdMLeodQJqbbRFVZoSY68aZN7qoH8PCL06AkFcS
         3LCA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=bBFluIgg;
       spf=pass (google.com: domain of vkabatov@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=vkabatov@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:message-id:in-reply-to:references:subject
         :mime-version:thread-topic:thread-index:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=47LVWH7KdbYudAMQgLLP6V+1tmWQauv9jLnPo8zzsIQ=;
        b=nJJTf11TiarTU02Phnqje70QwU+4XZz10Kgx1KuXknysNP1PR/nYrPG9MdKMVKkPr0
         BQh7FMaAR4qA2yHZBdzusNUcc2UQ/XSjBVKGpA6azE38nbK6qQpU5P3Pv8GH+9+qeh3z
         qasdQZ+v5gXqAz5RqhewjFTT5gz0m6gZOzSOuWXHKwvDsDVsK6Y69CVFlMGxu1xW67XE
         HniNLmAn13iQl3mxout98xaxxmS4JByOpmF9n32zsZHtJz0g2tJu5XRfNA2neXjfSiEy
         09LjVEsUVmL0Fz8j9NdTGSzyagdK49IycZpp+AtPrrJYn9SIm0I/EN0B0V+Qu5zMAL/v
         F1EQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:message-id:in-reply-to
         :references:subject:mime-version:thread-topic:thread-index
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=47LVWH7KdbYudAMQgLLP6V+1tmWQauv9jLnPo8zzsIQ=;
        b=N18NIR4FSvU9UzdfiwxF4U80d3cmxH/XhchgM0VZpyaAN9QOE69HnSBepDl30cjr95
         /Ez4j3R+EpjKldWJhzVIvQqtXThBAZgo379kkBmmfTNx6mxQLJ7mes14vkEbpGNa0xhB
         K2mFIhv/KtGbJvW3zjcpXksridPHGMNjLNGIj6rbkhqwPQGAt5PxFhDd9SbBSbuvxWta
         9AEA2O5qXVjr04X7rZzRiM/m1BM9sKCF2FQ3UjO/K+zFtmPlES3EAZa62HfH6UMoP2r/
         0VBStec9eUaEFT/CDY4STZ0/B8O5AKd/Fxtl1vsn9W0y8l+aRo6ow6kM2QScBwBAfFIn
         FYiA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531ZvNSW3nBOoUsgJ+DX8rgVTR8QBufYJIJE5XQS9g2juIB+0fA6
	hjNh7O0cTsJyEIPjxlUBPGM=
X-Google-Smtp-Source: ABdhPJzXeygvFT9qVyDF8cMa3tityP138q5YXmZ0TDz6Eogd8JchOBXw3VA/VISkfXdacxSE82KNeg==
X-Received: by 2002:a92:9606:: with SMTP id g6mr13701976ilh.293.1613993044386;
        Mon, 22 Feb 2021 03:24:04 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:9d43:: with SMTP id k3ls2087656iok.11.gmail; Mon, 22 Feb
 2021 03:24:03 -0800 (PST)
X-Received: by 2002:a05:6602:24cb:: with SMTP id h11mr15060156ioe.79.1613993043887;
        Mon, 22 Feb 2021 03:24:03 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1613993043; cv=none;
        d=google.com; s=arc-20160816;
        b=sa/yN8Yd10hcy1MEvbTOQDWqIoqboECbMNE3HTIHEaJ96Sc4lrdJ0rZTgrVqS0G+ke
         2E0zO5wxVPV2+ps64l7X/rwSC9uepp3NhtOXe3Fv26NOXOKAQZQgPx8PuCCuzx8OkWFu
         t+7FMP1vfzivZLThoAPrPgSGnmhhCTZs+xONMqsWLawhJMy/jjomwRp8dH+qFP6ewvuV
         zB3GalzSvz+vQvxLyo8ieIIyhNdM0LD/ZMP8IBN8tqlD6pX1jsIih/UhlP5jvf0effco
         RIkkx1om/yy8mUszAk9K2/+zTdlIHoVrJxvsbiGrvqPqWq0OOMSF2pxtR7PkVuUlQW2U
         RtoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:thread-index:thread-topic:mime-version
         :subject:references:in-reply-to:message-id:cc:to:from:date
         :dkim-signature;
        bh=pHuBHv8jOu04olsaU8ykYTPaHtQNFfog737+5Yb/kdE=;
        b=Fk8IKgdGzra9QL7JOOi0e8vFeoRgNUEShEh6m+1zEOapb6dfYfSQvg+hnaFwNlPl9Y
         JJod00/jNUyBFXhrW7hFyEYeXYjQnbRZNeCJsaE6gFVo80F+Wz2h1EDLnCXcW1dXJHxU
         Jpip6Pla0B9U2xvj/jg2xX7+StjYYcTUzwl4bm4zok+OVn/+6IWC9W2JgxvJWqTpfeBb
         n5b5SDWfI8M9G4ixW+EnbLF6AMdzEXJRB434zXvXSfCk6DwP0/9CLbD/8rtG4rEhGOVW
         lbC0U5Lh3zi+rH/ZiAESIb5LZkn9z0vfzxOnB8jn6Xbq4q7i6raRK71/Bp5G2ooYDEYK
         kBtg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=bBFluIgg;
       spf=pass (google.com: domain of vkabatov@redhat.com designates 63.128.21.124 as permitted sender) smtp.mailfrom=vkabatov@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [63.128.21.124])
        by gmr-mx.google.com with ESMTPS id r19si884737iov.3.2021.02.22.03.24.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Feb 2021 03:24:03 -0800 (PST)
Received-SPF: pass (google.com: domain of vkabatov@redhat.com designates 63.128.21.124 as permitted sender) client-ip=63.128.21.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-518-hMswU07fP3WgZICHgNo2KA-1; Mon, 22 Feb 2021 06:23:59 -0500
X-MC-Unique: hMswU07fP3WgZICHgNo2KA-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 88BE280196C;
	Mon, 22 Feb 2021 11:23:58 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 804246362B;
	Mon, 22 Feb 2021 11:23:58 +0000 (UTC)
Received: from zmail19.collab.prod.int.phx2.redhat.com (zmail19.collab.prod.int.phx2.redhat.com [10.5.83.22])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 5406C58073;
	Mon, 22 Feb 2021 11:23:58 +0000 (UTC)
Date: Mon, 22 Feb 2021 06:23:54 -0500 (EST)
From: Veronika Kabatova <vkabatov@redhat.com>
To: Nathan Chancellor <nathan@kernel.org>
Cc: CKI Project <cki-project@redhat.com>, clang-built-linux@googlegroups.com
Message-ID: <1498195839.28332680.1613993034711.JavaMail.zimbra@redhat.com>
In-Reply-To: <20210221051028.GA21653@24bbad8f3778>
References: <cki.AE7E6672E1.KJACZMVHOY@redhat.com> <20210221051028.GA21653@24bbad8f3778>
Subject: =?utf-8?Q?Re:_=E2=9D=8C_FAIL:_Test_report_for_kernel?=
 =?utf-8?Q?=095.11.0_(mainline.kernel.org-clang)?=
MIME-Version: 1.0
X-Originating-IP: [10.36.115.184, 10.4.195.16]
Thread-Topic: =?utf-8?B?4p2MIEZBSUw6?= Test report for kernel 5.11.0 (mainline.kernel.org-clang)
Thread-Index: ZQyK9fv48l3vQUa5HP7ZbQf+zf1zow==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: vkabatov@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=bBFluIgg;
       spf=pass (google.com: domain of vkabatov@redhat.com designates
 63.128.21.124 as permitted sender) smtp.mailfrom=vkabatov@redhat.com;
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
> From: "Nathan Chancellor" <nathan@kernel.org>
> To: "CKI Project" <cki-project@redhat.com>
> Cc: clang-built-linux@googlegroups.com
> Sent: Sunday, February 21, 2021 6:10:28 AM
> Subject: Re: =E2=9D=8C FAIL: Test report for kernel	5.11.0 (mainline.kern=
el.org-clang)
>=20
> On Sun, Feb 21, 2021 at 04:20:12AM -0000, CKI Project wrote:
> >=20
> > Hello,
> >=20
> > We ran automated tests on a recent commit from this kernel tree:
> >=20
> >        Kernel repo:
> >        https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.g=
it
> >             Commit: e767b3530acb - Merge tag 'arm-drivers-v5.12' of
> >             git://git.kernel.org/pub/scm/linux/kernel/git/soc/soc
> >=20
> > The results of these automated tests are provided below.
> >=20
> >     Overall result: FAILED (see details below)
> >              Merge: OK
> >            Compile: FAILED
> >  Selftests compile: FAILED
> >=20
> > All kernel binaries, config files, and logs are available for download
> > here:
> >=20
> >   https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/index.html=
?prefix=3Ddatawarehouse-public/2021/02/21/624441
> >=20
> > We attempted to compile the kernel for multiple architectures, but the
> > compile
> > failed on one or more architectures:
> >=20
> >            aarch64: FAILED (see build-aarch64.log.xz attachment)
> >=20
> > We hope that these logs can help you find the problem quickly. For the =
full
> > detail on our testing procedures, please scroll to the bottom of this
> > message.
> >=20
> > Please reply to this email if you have any questions about the tests th=
at
> > we
> > ran or if you have any suggestions on how to make future tests more
> > effective.
> >=20
> >         ,-.   ,-.
> >        ( C ) ( K )  Continuous
> >         `-',-.`-'   Kernel
> >           ( I )     Integration
> >            `-'
> > _______________________________________________________________________=
_______
> >=20
> > Compile testing
> > ---------------
> >=20
> > We compiled the kernel for 3 architectures:
> >=20
> >     aarch64:
> >       make options: make LLVM=3D1 -j30 INSTALL_MOD_STRIP=3D1 targz-pkg
> >=20
> >     ppc64le:
> >       make options: make CC=3Dclang -j30 INSTALL_MOD_STRIP=3D1 targz-pk=
g
> >=20
> >     x86_64:
> >       make options: make LLVM=3D1 -j30 INSTALL_MOD_STRIP=3D1 targz-pkg
> >=20
> >=20
> > We built the following selftests:
> >=20
> >   x86_64:
> >       net: OK
> >       bpf: fail
> >       install and packaging: OK
> >=20
> > You can find the full log (build-selftests.log) in the artifact storage
> > above.
> >=20
>=20
> This seems like a machine based failure according to the backtrace?
>=20
> 00:41:52 make[4]: /bin/sh: Operation not permitted
> 00:41:52 make[4]: *** [scripts/Makefile.modfinal:58:
> drivers/regulator/max77650-regulator.ko] Error 127
> 00:41:52 make[4]: *** Waiting for unfinished jobs....
> 00:41:52 terminate called after throwing an instance of 'terminate called
> after throwing an instance of 'terminate called after throwing an instanc=
e
> of 'terminate called after throwing an instance of 'terminate called afte=
r
> throwing an instance of 'terminate called after throwing an instance of
> 'terminate called after throwing an instance of 'terminate called after
> throwing an instance of 'terminate called after throwing an instance of
> 'terminate called after throwing an instance of
> 'std::system_errorstd::system_errorterminate called after throwing an
> instance of ''
>=20

Hi,

yes, looks like it. First time getting this error, we'll add it to the
list of infra ones that should be automatically retried.

Thanks for reporting it!
Veronika

> Cheers,
> Nathan
>=20
>=20

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/1498195839.28332680.1613993034711.JavaMail.zimbra%40redha=
t.com.
