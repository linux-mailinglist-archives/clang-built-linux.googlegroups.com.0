Return-Path: <clang-built-linux+bncBC4INQUBT4IRBX7GVKAAMGQE5CALWAI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x440.google.com (mail-pf1-x440.google.com [IPv6:2607:f8b0:4864:20::440])
	by mail.lfdr.de (Postfix) with ESMTPS id 663B430013F
	for <lists+clang-built-linux@lfdr.de>; Fri, 22 Jan 2021 12:13:36 +0100 (CET)
Received: by mail-pf1-x440.google.com with SMTP id 15sf3211132pfu.6
        for <lists+clang-built-linux@lfdr.de>; Fri, 22 Jan 2021 03:13:36 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611314015; cv=pass;
        d=google.com; s=arc-20160816;
        b=HRRy2xey63bpcAbvrXOvKn250R8UdcTTmudn1lJvixCLuDgAAcn0RaN+g1HTeDJQ52
         8Tf4VFrHQm6WXkyd16uVAC5SWe650Qx4t6z/fewTEfvP6WlLyviAIMT5lZ+z3CULAX30
         pShHOc9kyfQBCHhsQPm7ytsty2RRLF8tA66aXnqakpAyjGLzu0dItLuVDOPSIhOJJx31
         j/ZSVdqQ2KuFz7zxdILGMoM8cZAXljlgMfqfJDHefRdmnMyF2yS6zcjh9w4MAY4sWLEV
         wMqxdKZHrU/Ai5cOh9bI3eZuSilDeN0WyqNRHGobtgjZv7e85ZsjhO5wtQpbHRKrzIG2
         uxJA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :thread-index:thread-topic:mime-version:subject:references
         :in-reply-to:message-id:cc:to:from:date:sender:dkim-signature;
        bh=uS3XCBm0IPewuew6W9kcS94uGiJ7PYspipouuPh0pNM=;
        b=VuIxP5GtPhyV172Kvl+ESoMxAyTNQe+dreks3zzts9ui8P54lMq59fCuNhHxEUnpc6
         QDgHxkjlGQGBzMEYJEAekEOVYpWKwftBzhM5WUM+je3QWRaOW0wYE+r8PQqdXOC11z81
         iL4nZxV+UBEU+2/31WBc8jIOrBNP6ZvzBBoqbZmfVdbCqzuGDYsH8i/aIsUpLRRM5u9I
         qxXALfpfzCbCC++4ziQGql7FG7Hy6jiZv8hY3NP45llBOu4A6hfUJRchw0c5oJAYtUHg
         d2sNqY1zdHe5BN+1tOvUJ4+nvdQlRvdyJi2Z1xhNbTaJa9cY0iag+2LsrLVFAmrPGuZ5
         N15w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=JzYv5cvp;
       spf=pass (google.com: domain of vkabatov@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=vkabatov@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:message-id:in-reply-to:references:subject
         :mime-version:thread-topic:thread-index:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uS3XCBm0IPewuew6W9kcS94uGiJ7PYspipouuPh0pNM=;
        b=UxFjC1Y2HKzpu6YQuko2y1r/lm7jEokXhg+805UWPxxw2rqtGc/QD//gIP1p5N3Fzk
         AAqiL08nN++EBiEoVNxrJRBSNn+tIyKLsSnKLBr7ImlqybGmpdigBrkUoqghV5R8t+2h
         GoFian2KK1bA120WFP40NNuD1vukerKjRqaOGbJ9gtWQoE5ebvgZnZHSoCobEQS0HICM
         u1dDXsvennQalTQv1qSTky/mLI5NgW0fc85QvRfLTbj60z6QH4Xx1dPans64ozzD7EyI
         YK3L2ryCffkZBR+6WCpexWxFVENSn1ueotd20Vrs6faLL9qu5p/f6/mbeTN8dHp3U8fU
         Xi7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:message-id:in-reply-to
         :references:subject:mime-version:thread-topic:thread-index
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=uS3XCBm0IPewuew6W9kcS94uGiJ7PYspipouuPh0pNM=;
        b=lA3p3+zET45VAS1iBPnIJP+Ler1hsrqdhE8Xs/bW/fIuHxnnVRgeGdBMqBPA7deCVJ
         iTyARaBTcsBhK9P+azSUKz6BlF41JNcXpnGWfsCnS20TQxrbV7uN/J4IwFXYcvziMcIU
         vqjcDfz4smex2dOFfpDyZHCcF+aop51MQihpHew42xBTp5qIHjWy6g69ooOrjx2bGGNf
         NTz7TJNOylrDFu7anRPf2pgOE9NeczN4/U64oTFNJwiDYDkZbucfNQFbOgNR0R+5Y3H5
         hlPJSyMYycI6aATi4YK6aK4eqBcxs4c3xWp1ydy/evP+zlFvAO2DhtF3amcUkjzkG8IY
         q7YA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532qkgFg49BeSU6HwBuxMltRDed4pRvDHq08evUdEYfJ5B+Xb50Q
	EkZ8gBkMsGhmp1x8xtlJeRo=
X-Google-Smtp-Source: ABdhPJzgF3NiFHt9TzS/VRkvtgIuM/MtDMlYyUjEOK0sC02RXUoXMw/344257IVfbCarazqICrWlzg==
X-Received: by 2002:a17:90b:4c8c:: with SMTP id my12mr4685452pjb.29.1611314015119;
        Fri, 22 Jan 2021 03:13:35 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:378a:: with SMTP id mz10ls3024117pjb.2.gmail; Fri,
 22 Jan 2021 03:13:34 -0800 (PST)
X-Received: by 2002:a17:902:e808:b029:de:5a8d:c654 with SMTP id u8-20020a170902e808b02900de5a8dc654mr4397498plg.80.1611314014502;
        Fri, 22 Jan 2021 03:13:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611314014; cv=none;
        d=google.com; s=arc-20160816;
        b=InBHmUqzpzjWMMq485t3QCBovx24R4eQFUbFuhRuYneZA+LlVOtUjpXjBTXGXs+9J1
         HevmgxPH5+tnXpH+J7D6CDtifshU5VH2Vy4Tp7EaJqvz5r+B5ge9vLBK8GvKu8q0Sdq1
         uNVf0NQbkO5y/LGTAuX8yw05jT1qokIXhOinhrGL/2WV+FdPHMSs7II940T0PnHGWgfH
         5J9xjgAiBHzy7yry44u0XSqjt/IDqtDkOWIQFww6iU9wp8B/eLbRhy8OjWudwCngbE+d
         rKZ2z5yqkT3b50mr4RMtfUkvstDJHgroggz2GblsMUA2MIef8cvmQip81quiZX/xiCIf
         SAIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:thread-index:thread-topic:mime-version
         :subject:references:in-reply-to:message-id:cc:to:from:date
         :dkim-signature;
        bh=5vTb4fozakd7XZnyabfko9bBB9LnQcW5ihXklqtB5r4=;
        b=V9MVbVD5Oo43+xbcD3O3sWzKVV7rvVW6xwXk5cQ2WroXMjCEEAKAZ878Y9ip8/TNtU
         o31htu0OvxneIggZwBe6fjcQkwdfHO8f8hiB2tkYxS9ccDiaeijcthBn5lV2bhir4GMV
         unnteUXOxMUypAANRU1Uf4vQxSNrNAi4Smq/4oMqNX9MCS8tm1xrkeXIDHsBlHHYizC0
         TkOpHeHJkTBHu4rpbuAdjfl7Kd7gxxaPPqhJsk2el3zSFG+Kcw/JDtG3Vfftxql3a/l8
         omNLk2vKNqdIDHEElfC8JvUnWCxZ/9jlo9i4WUsvHoZxA14yzV0e+wU1JgFqAw3evfzE
         w2EA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=JzYv5cvp;
       spf=pass (google.com: domain of vkabatov@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=vkabatov@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id d1si491213pjo.1.2021.01.22.03.13.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Jan 2021 03:13:34 -0800 (PST)
Received-SPF: pass (google.com: domain of vkabatov@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-113-bAw3cyVAOaurj_KXvxzGHg-1; Fri, 22 Jan 2021 06:13:31 -0500
X-MC-Unique: bAw3cyVAOaurj_KXvxzGHg-1
Received: from smtp.corp.redhat.com (int-mx05.intmail.prod.int.phx2.redhat.com [10.5.11.15])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2D1DF1009456;
	Fri, 22 Jan 2021 11:13:30 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.20])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 25D3C6249C;
	Fri, 22 Jan 2021 11:13:30 +0000 (UTC)
Received: from zmail19.collab.prod.int.phx2.redhat.com (zmail19.collab.prod.int.phx2.redhat.com [10.5.83.22])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 1CD3118095FF;
	Fri, 22 Jan 2021 11:13:30 +0000 (UTC)
Date: Fri, 22 Jan 2021 06:13:27 -0500 (EST)
From: Veronika Kabatova <vkabatov@redhat.com>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: CKI Project <cki-project@redhat.com>, clang-built-linux@googlegroups.com
Message-ID: <2047690325.24945920.1611314007911.JavaMail.zimbra@redhat.com>
In-Reply-To: <20210121205551.GA428145@ubuntu-m3-large-x86>
References: <cki.ACB68E22A4.ZMBVHIO5KA@redhat.com> <20210121205551.GA428145@ubuntu-m3-large-x86>
Subject: =?utf-8?Q?Re:_=E2=9D=8C_FAIL:_Test_report_for_kernel=095?=
 =?utf-8?Q?.11.0-rc4_(mainline.kernel.org-clang)?=
MIME-Version: 1.0
X-Originating-IP: [10.36.112.137, 10.4.195.25]
Thread-Topic: =?utf-8?B?4p2MIEZBSUw6?= Test report for kernel 5.11.0-rc4 (mainline.kernel.org-clang)
Thread-Index: 2HkDkb1RlF4gqbH6AE1t9cP9xNDi2Q==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.15
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: vkabatov@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=JzYv5cvp;
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
> From: "Nathan Chancellor" <natechancellor@gmail.com>
> To: "CKI Project" <cki-project@redhat.com>
> Cc: clang-built-linux@googlegroups.com
> Sent: Thursday, January 21, 2021 9:55:51 PM
> Subject: Re: =E2=9D=8C FAIL: Test report for kernel	5.11.0-rc4 (mainline.=
kernel.org-clang)
>=20
> On Thu, Jan 21, 2021 at 08:49:40PM -0000, CKI Project wrote:
> >=20
> > Hello,
> >=20
> > We ran automated tests on a recent commit from this kernel tree:
> >=20
> >        Kernel repo:
> >        https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.g=
it
> >             Commit: 9f29bd8b2e71 - Merge tag 'fs_for_v5.11-rc5' of
> >             git://git.kernel.org/pub/scm/linux/kernel/git/jack/linux-fs
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
?prefix=3Ddatawarehouse-public/2021/01/21/621919
> >=20
> > We attempted to compile the kernel for multiple architectures, but the
> > compile
> > failed on one or more architectures:
> >=20
> >            aarch64: FAILED (see build-aarch64.log.xz attachment)
>=20
> 00:49:23 ERROR: modpost: "irq_check_status_bit" [drivers/perf/arm_spe_pmu=
.ko]
> undefined!
>=20
> Upstream failure:
>=20
> https://lore.kernel.org/lkml/20210105184653.GA88051@roeck-us.net/
> https://lore.kernel.org/lkml/161054962816.414.13151167154004705944.tip-bo=
t2@tip-bot2/
>=20

Yes, that's the same failure. Fedora is working around it by applying
https://lore.kernel.org/lkml/20201226123818.GA693525@ubuntu/

arm64/for-kernelci tree compiles so hopefully whatever they have
applied will be soon in mainline.


/me is secretly excited about result consistency with gcc run


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
clang-built-linux/2047690325.24945920.1611314007911.JavaMail.zimbra%40redha=
t.com.
