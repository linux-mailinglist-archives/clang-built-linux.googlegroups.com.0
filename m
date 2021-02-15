Return-Path: <clang-built-linux+bncBDQ4LNH2YMHRB6X4VCAQMGQEQB3O3NY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf39.google.com (mail-qv1-xf39.google.com [IPv6:2607:f8b0:4864:20::f39])
	by mail.lfdr.de (Postfix) with ESMTPS id C2ACF31B663
	for <lists+clang-built-linux@lfdr.de>; Mon, 15 Feb 2021 10:27:23 +0100 (CET)
Received: by mail-qv1-xf39.google.com with SMTP id d26sf4926494qve.7
        for <lists+clang-built-linux@lfdr.de>; Mon, 15 Feb 2021 01:27:23 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1613381242; cv=pass;
        d=google.com; s=arc-20160816;
        b=H3YwgKTqfHrGuAP/ynugkJEg+N5nQZTmCG+ivsgj1tUVqnZ4cZifHlUgeVoBjw7f50
         BYwglWKnf06cSV6HHa2rOZq69ZwODCklh8ZtXtmafARpTJihei+H6+k+o3x1ZsI2eu8j
         d0+qy0EgzUo9PrJe49aWgA1jh/4srxBUfRO/8dTHRMUQGz2kkQAHEZ01Ez83s4+1NLod
         372M9SXYoTND3TswlWaUB72YfF5DrSIQ4UcieeC7txHcThb+DduUCtEy1NWdsMZJ7xDN
         nfugDn5uHmbVmrL7wqHeM99ZadiMYdMHG5EeGGgHyNi8zPj38jZ5c1hClP20K7wik+Ug
         d3fg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :thread-index:thread-topic:mime-version:subject:references
         :in-reply-to:message-id:cc:to:from:date:sender:dkim-signature;
        bh=XgFgKms9LTiDbidCFld7tXyU5g9mQtIdXKTnMO6cLMw=;
        b=C0TShpikxdo6urBWMXldMRI6XJXBkXjRTl1Ze/xxQ54CJSe+yIz6FYy+gFQWe2EScn
         vYVxBFgQsBjmvpJgOaz/vjYltNkjdXC9wAogpHAG1CSB9xic5pJa/CByeOMyHKySPRIk
         Kt8Fvs53bHNMu3dqkWHMw4hByNdiOlflxXbWne21kkr6/oea6sCRE1IKu4K+T+4kdFS9
         0damV5xR7lsPuPRNZfQMfmpGJ+N/5Jy7Dp9yIEjt8KrIaM/RXOyhGO206L+c+ISr+zVo
         Ga/D9U3fhPwB5RhiVa5845MiTNgli19TtPQOV6d8zgf9b2svmnUdqYAfEqTy2n+cAaqN
         OwxQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=iE4QJ4Lm;
       spf=pass (google.com: domain of jstancek@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jstancek@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:message-id:in-reply-to:references:subject
         :mime-version:thread-topic:thread-index:content-transfer-encoding
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XgFgKms9LTiDbidCFld7tXyU5g9mQtIdXKTnMO6cLMw=;
        b=gqQG4c57e3awWZniw2/PxSeWCasQ2nz/aY7ck1oNJphizqF6/RSxNaKMLvjdQk7+br
         6zVUUvIVxvMJkh2F97s34LNb6Xnw+E6u6tkvAQtNzCyYPKmRyTDyP8DAAZRXGeyaogzG
         hH7P66NwHRHtF6BXhjiPzbtqndgKl3GRFNCxKMqts72/lJXr6tD5uYOlqQuBSUEgcvaX
         o1kPQGkcjx06IfovHuxqy0NsQHuhircG7BjDiwj02GmTuS6QSpSZDeDLdPd9G2Q1Bxr3
         hql8BivvD/kzYr07rRGoRcCocNpOf8yH9tRoaOUJ0HOS1Aq0xQgnoBvtWZFt0mlE5+Db
         DbLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:message-id:in-reply-to
         :references:subject:mime-version:thread-topic:thread-index
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=XgFgKms9LTiDbidCFld7tXyU5g9mQtIdXKTnMO6cLMw=;
        b=Q6bGMYfWqYk+K6+NcvWORttaMTrBRYX8mYeZizOnLSV+nnJTcl30K+k2F5QlFND98Y
         liOjn/j1mW3XeFTLYFwInSycXSmLpYQemPtg2zoJLt2ZO6vdlc+SudrscfKTtBhp2yyA
         EF6Wvcj5cnDezM8xBbZDvg39DBVvbsqgesJAuE9V/lpR6pKWBF41iIERJP4PVDMupTQ1
         BSc9DFedh0VrdrBzVzbSscfYyEYGu04HFYcFb0myJ10SVT5AywNNzqw1eei9OKvY77a9
         RKrasKM2XgDrkTQa/Zr9qowUir87D6FThJyAyoXAAkEFEMAe3LvT28n3fwkfCsCecw0s
         m4Rg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5328URzRoscT1mBRcSAMUIaeooHvwS2/Xya6SYnVa738zpBYrwix
	iCsszyaHnp6cOSN3WU13PtA=
X-Google-Smtp-Source: ABdhPJwen9+l9KrUQlri7BfcITgQt7uGrcgKqDnCnYJoPFJyK/Plh7VsSo96CCxp1c9IhvKR9zq+ug==
X-Received: by 2002:ac8:5a48:: with SMTP id o8mr13440037qta.196.1613381242653;
        Mon, 15 Feb 2021 01:27:22 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:622a:d2:: with SMTP id p18ls2691374qtw.3.gmail; Mon, 15
 Feb 2021 01:27:22 -0800 (PST)
X-Received: by 2002:ac8:44d2:: with SMTP id b18mr13735743qto.8.1613381242281;
        Mon, 15 Feb 2021 01:27:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1613381242; cv=none;
        d=google.com; s=arc-20160816;
        b=nc+W5txvNoZm9VJbJOuNH3I4iqQlW88YbuWrYRDebYueY9IW1/9ssk8TbvhdGcM+jP
         jUQCaSfbYn4x74CoIkN7C1rkptFXtme/QyLRVreCHFh1aeTxIVjZKZuwGX1cNcMfEcwa
         IAfLMcPvQOf2oHICxEVDbbXb+c6dJ/NMFIQsDcpDP25sFh9tEVacsqXbBckqxAj7X9DC
         DaBSoiNPuHF5L+lIYYWPTEIU4WBZhsJwSbDZYaAa0uyEq32tRbKCPo7TtEdhiy4ea+5X
         ITawyX6I2KMYzFZdK52OgXMy2CdaK7czE98oDTZspx415NGE9mo06b3wi4tXPf31FI1A
         F/EA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:thread-index:thread-topic:mime-version
         :subject:references:in-reply-to:message-id:cc:to:from:date
         :dkim-signature;
        bh=j8sVeX3zv5mEjec9c2aS+rfgGOgppAZBK6Yk5fKcgro=;
        b=wCw26RxvxhuaMPR7SO4ZZnoiSeJUUSrympibkdaQvMHyDb9PkI0/bosbvlgbKVOzeo
         IYqMw7kyj5eLxdp6Ly1jH9zPCx17mROpxJdJSeo1glBMHSFJc9q4cvmOkKrTM6O4NKcw
         MYRj2TI0xflzpMeYcheSCpX1Es5YefD6s6nvuFezIL0CH1l/y2IPydvq+nAwjZoSfFvA
         4qAzslwU218bXv4pI/FX11HdgUyFx8GuNLxWacxS5xwjZljUwkGnHV+hf+bd1lw8OA4E
         Kerp8mFzgDM0wfTh5MY4XyIeKNC/MyaUVHkNeazIVnlz/1PcfwGhYoOw/wbh923yZF8q
         dY+w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=iE4QJ4Lm;
       spf=pass (google.com: domain of jstancek@redhat.com designates 216.205.24.124 as permitted sender) smtp.mailfrom=jstancek@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com. [216.205.24.124])
        by gmr-mx.google.com with ESMTPS id b16si1156175qtr.2.2021.02.15.01.27.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 15 Feb 2021 01:27:22 -0800 (PST)
Received-SPF: pass (google.com: domain of jstancek@redhat.com designates 216.205.24.124 as permitted sender) client-ip=216.205.24.124;
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-157-yDu2JMTQPD2ZMkPDYxj3GA-1; Mon, 15 Feb 2021 04:27:19 -0500
X-MC-Unique: yDu2JMTQPD2ZMkPDYxj3GA-1
Received: from smtp.corp.redhat.com (int-mx01.intmail.prod.int.phx2.redhat.com [10.5.11.11])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 3ABC5801962;
	Mon, 15 Feb 2021 09:27:18 +0000 (UTC)
Received: from colo-mx.corp.redhat.com (colo-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.21])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 33B8C72164;
	Mon, 15 Feb 2021 09:27:18 +0000 (UTC)
Received: from zmail17.collab.prod.int.phx2.redhat.com (zmail17.collab.prod.int.phx2.redhat.com [10.5.83.19])
	by colo-mx.corp.redhat.com (Postfix) with ESMTP id 12D944E58D;
	Mon, 15 Feb 2021 09:27:18 +0000 (UTC)
Date: Mon, 15 Feb 2021 04:27:17 -0500 (EST)
From: Jan Stancek <jstancek@redhat.com>
To: Rachel Sibley <rasibley@redhat.com>
Cc: Nathan Chancellor <nathan@kernel.org>, Milos Malik <mmalik@redhat.com>, 
	Baoquan He <bhe@redhat.com>, David Arcari <darcari@redhat.com>, 
	Memory Management <mm-qe@redhat.com>, 
	Ondrej Mosnacek <omosnace@redhat.com>, skt-results-master@redhat.com, 
	clang-built-linux@googlegroups.com, Yi Zhang <yizhan@redhat.com>, 
	Xiaowu Wu <xiawu@redhat.com>, CKI Project <cki-project@redhat.com>
Message-ID: <1646106856.36620418.1613381237840.JavaMail.zimbra@redhat.com>
In-Reply-To: <bc4c35cf-bd79-e4c0-2fed-41f7c0b1ae3b@redhat.com>
References: <cki.F92FFE8E6D.9IW1XQCYQ7@redhat.com> <20210211183744.GA4084774@ubuntu-m3-large-x86> <bc4c35cf-bd79-e4c0-2fed-41f7c0b1ae3b@redhat.com>
Subject: =?utf-8?Q?Re:_=E2=9D=8C_FAIL:_Test_report_for_kernel_5?=
 =?utf-8?Q?.11.0-rc7_(mainline.kernel.org-clang)?=
MIME-Version: 1.0
X-Originating-IP: [10.36.110.76, 10.4.195.10]
Thread-Topic: =?utf-8?B?4p2MIEZBSUw6?= Test report for kernel 5.11.0-rc7 (mainline.kernel.org-clang)
Thread-Index: Er4tiBRziDRzz2R3sHHfRUd7Brnq9Q==
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.11
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: jstancek@redhat.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@redhat.com header.s=mimecast20190719 header.b=iE4QJ4Lm;
       spf=pass (google.com: domain of jstancek@redhat.com designates
 216.205.24.124 as permitted sender) smtp.mailfrom=jstancek@redhat.com;
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
>=20
>=20
> On 2/11/21 1:37 PM, Nathan Chancellor wrote:
> > On Thu, Feb 11, 2021 at 05:11:07PM -0000, CKI Project wrote:
> >>
> >> Hello,
> >>
> >> We ran automated tests on a recent commit from this kernel tree:
> >>
> >>         Kernel repo:
> >>         https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux=
.git
> >>              Commit: 291009f656e8 - Merge tag 'pm-5.11-rc8' of
> >>              git://git.kernel.org/pub/scm/linux/kernel/git/rafael/linu=
x-pm
> >>
> >> The results of these automated tests are provided below.
> >>
> >>      Overall result: FAILED (see details below)
> >>               Merge: OK
> >>             Compile: OK
> >>   Selftests compile: FAILED
> >>               Tests: FAILED
> >>
> >> All kernel binaries, config files, and logs are available for download
> >> here:
> >>
> >>    https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/index.ht=
ml?prefix=3Ddatawarehouse-public/2021/02/10/623699
> >>
> >> One or more kernel tests failed:
> >>
> >>      aarch64:
> >>       =E2=9D=8C LTP
> >>
> >>      x86_64:
> >>       =E2=9D=8C LTP
> >>
> >=20
> > It seems like we are very close to getting a passing result... From wha=
t
> > I can tell, the failing tests are logged in these two files:
> >=20
> > 9548629_aarch64_1_commands.fail.log
> > 9548632_x86_64_1_commands.fail.log
> >=20
> > which shows only one test failing: ld01.sh
> >=20
> > which appears to be this one:
> >=20
> > https://github.com/linux-test-project/ltp/blob/c5004bf071bf8ca96a01f03b=
de873e9292f7f83b/testcases/commands/ld/ld01.sh
> >=20
> > I do not understand how cc.out could have ld in it, when CC is clearly
> > gcc from the log... it passes in my testing. Has the test been modified
> > on your end?
>=20
> We haven't updated recently, we just wrap around the upstream test suite =
and
> I don't see any recent change to the ld01 test ?
> I also see it fail the same way on the gcc mainline kernels:
>=20
> https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/datawarehouse-=
public/2021/02/10/623698/build_x86_64_redhat%3A1101938/tests/LTP/9548639_x8=
6_64_1_commands.fail.log
> https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/datawarehouse-=
public/2021/02/10/623698/build_aarch64_redhat%3A1101939/tests/LTP/9548637_a=
arch64_1_commands.fail.log
>=20
> Jan do you know anything about this failure ?

I haven't seen this before and don't see it localy. Is it specific to Fedor=
a Rawhide?

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/1646106856.36620418.1613381237840.JavaMail.zimbra%40redha=
t.com.
