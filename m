Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB67SSWAQMGQEKVLSPKI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3f.google.com (mail-io1-xd3f.google.com [IPv6:2607:f8b0:4864:20::d3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 479D4319268
	for <lists+clang-built-linux@lfdr.de>; Thu, 11 Feb 2021 19:37:48 +0100 (CET)
Received: by mail-io1-xd3f.google.com with SMTP id r140sf6306766iod.6
        for <lists+clang-built-linux@lfdr.de>; Thu, 11 Feb 2021 10:37:48 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1613068667; cv=pass;
        d=google.com; s=arc-20160816;
        b=Wb2MeO9tMl+sKG5e3fFDUpxJ7PP5UISB8mFOF8hcqlne0gXc21ZfsY6qQAsvAdC011
         rTlERnXaczre7/UvwBwLmZOPAPGeq+3i6GEbdHveE9HYa8NLFE6zHHRNViXH5zcKYwvU
         bye1NyavlE9GQMDVM1/gfYz1YYDhb13QfQAzbrrI9Swb4OPBWQm2Q2DmC3fwTg9j8eON
         nLUQOUbPz7jGFlw1a1FYfMrzvoArnHzo6zFCUikS1CNgHws3zeEy5xez8FzwdYgZPcsL
         AVpWPrKepWWyY+axllEFJ/uNogKt/kAgQ7e+EvFlSswBl/n4+A7T0aQkQKx/hh+LoIJN
         Tekw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=8svtEwsZcbbwMUh5fH6EoQbLAAihU8SnlQngtQ5T4ww=;
        b=eYchBFh/bO+yiyxp37NcnOPHlKq8PJ+CfNrXr+QPUmKmTHZdTwa9mDVz/sBQrt17IC
         Ssl24imvNcohKnGjABGZhwnmiMuSyWWsZ3CkWDrNZo8N6RGmMS6v25Z9mJK6jYvWb+SS
         LYsSslS8oXYMzX6KxqSYsl7Lyptq+1Bcu08bfId3Tw1HUBw/96YN2DdKbzGZyrInPulq
         8Lqyi+Des2BTcqhqxPaHCUJdXFymnlG6IOk6LfXgDE/UuOTxos0MzgdlBHpERpsSR7Zm
         4E9mbeswh2kpMU5hPT/E+VZ6WipwLGwyQMtPgmKlscS/r4T6sBzJhCaueSBpPOhEWtOW
         RVCw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=HiOuvOD9;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8svtEwsZcbbwMUh5fH6EoQbLAAihU8SnlQngtQ5T4ww=;
        b=dzrGXoc7i8s6C5V6/tFnScHleFNc63f73I94hnQVSU6i0lXV1bV3UVOYk2u6/Buae1
         rLZ7Qwjgxslf07sAP3F/n32MJ+wfYCPiXbsoSjN2N0/KJEwQHDwqjG2iAbGbgo1lptYg
         Jmz7BDkcXaEtvjsaL7cJgI0x0rhfA0CfGgbV9sDO2il50Btia61DwD9rvKybiuFwJoqG
         wghhBEdBHhl7aBVpMYyL9J8TY7fHy19tUcaEC0pIekx0MQnbZK5dHJ6yj6EpJuJW30y2
         +NydE8SSiSGgQazD1j7jmbZDVn2eLct7Wey22aOsGycx/fYTjzGn8+g9KBk7cDx16dJU
         TKxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=8svtEwsZcbbwMUh5fH6EoQbLAAihU8SnlQngtQ5T4ww=;
        b=VtwCsiutjJ8KO4NPgGcmHbtIo9L6UKRautUzf9I1G6S4avd8DeifEEuKribIHpvSTS
         f3+Xt9VYBC/BYj6MUcAVp0MsBUGsXg5w8ov3VR/+T3tQVjM3+Sj+d6VeBNp0UcWquWWY
         fQK5kixSRDYq6bYbth1+upDr+bEFzPg78gIdAkWcB1E7bXh5kejmnXrjIz24/zDfKrtd
         OftD8bjsLMlQVKnbmdSxpQhtMtM/pDlyz16kvBEFuuAfc/hdCSAZ7UK5tTMIdDBuIIn/
         ueb/Q2jo8e7IIiGqSYMbUEN3UvOEMaLqefCVsJHHcXFk9HS2lbJecr5JWz0qZW1xn1Ol
         6Ivg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531s08/8KSZDELV5ErmTDtXAwyGBfqGAJRKOLh33sd/s/jMu9jX7
	3bhOtbGdrrC1FS7pCkQTGrA=
X-Google-Smtp-Source: ABdhPJz1KwV1OuYozc5koVS3y3jL9cLhyYEP9sNeksFyNmQzq6tA2sJ4OXPdgWmn95Xy+LQ2MTtvzw==
X-Received: by 2002:a5d:9e56:: with SMTP id i22mr6426582ioi.43.1613068667327;
        Thu, 11 Feb 2021 10:37:47 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a02:7f4d:: with SMTP id r74ls936063jac.7.gmail; Thu, 11 Feb
 2021 10:37:46 -0800 (PST)
X-Received: by 2002:a05:6638:35ac:: with SMTP id v44mr10041414jal.103.1613068666895;
        Thu, 11 Feb 2021 10:37:46 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1613068666; cv=none;
        d=google.com; s=arc-20160816;
        b=qFQFQjLGJSoMr5TATCZzejyXGDclqdD0eJKp3kFlSIBb4BjpzJMFXCRqdo6M2pECkd
         uNTmjUa6G9uqoOC2DITsgnYcvoB5G6qYbIxxbQ7KRYWY/lNXNJtzkBNd9zA2MJsQCqJO
         iZmplOW2/Ur3tt4HYB/CidKNxxhE3ZwloLjmb8RlC/p/So8tt8AjoXKCWu54RdX0uN53
         zDQM4rBZ+lxXo+XGwGElaInLgI0WycJgAPMRYgkve4HdSsJNXWJy7GFB/j6qt1Zj1kWx
         BdLMYsHDAaW1QMAChyCk55/YQDcdv/LGpcx7kQMpnRor1HXE0lJ00yVHHJvfxPatUcrA
         cC1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=xXLQpCYbkY2oAcWwHHhpPppG0Y18Y5oryR3pdAW3InQ=;
        b=vBExpGwQ1CqIhUK1AFE6tWBl1UzyrDHpMoTbZmLlGtvvFEenoUKKPY0BeLEl0mZZv+
         QcQRvW+WsYYpaclmWL4bxVnEQvHQO4FTPp0NjiHL+tQxW26U6ZRUvZ47eWfpVmaYJFsl
         Boea8xEQRRXflAxzEJJuZ1kbbTATF3xXz4ou018MuXLI46y6Pxmb2Q37Hnzy/QIxrQPV
         hRl25lRY9WD9Dk9Oo5iXr7+71pOUWlHQ/SB13VOul3MwBprqt9ykc4kAOLC5sax/0aiL
         th6nARq0+ZnmipAWvRe7+fwTi7TCIAkKkXD+uJt9efcQM5o3ZU+MbmX5J01gZCDdjgbA
         wMog==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=HiOuvOD9;
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id y6si214007ill.1.2021.02.11.10.37.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Feb 2021 10:37:46 -0800 (PST)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id A6AC664DCD;
	Thu, 11 Feb 2021 18:37:45 +0000 (UTC)
Date: Thu, 11 Feb 2021 11:37:44 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: CKI Project <cki-project@redhat.com>
Cc: skt-results-master@redhat.com, clang-built-linux@googlegroups.com,
	Milos Malik <mmalik@redhat.com>,
	Ondrej Mosnacek <omosnace@redhat.com>,
	Memory Management <mm-qe@redhat.com>,
	Jan Stancek <jstancek@redhat.com>, Xiaowu Wu <xiawu@redhat.com>,
	Baoquan He <bhe@redhat.com>, David Arcari <darcari@redhat.com>,
	Yi Zhang <yizhan@redhat.com>
Subject: Re: =?utf-8?B?4p2MIEZBSUw6IFRlcw==?= =?utf-8?Q?t?= report for kernel
 5.11.0-rc7 (mainline.kernel.org-clang)
Message-ID: <20210211183744.GA4084774@ubuntu-m3-large-x86>
References: <cki.F92FFE8E6D.9IW1XQCYQ7@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <cki.F92FFE8E6D.9IW1XQCYQ7@redhat.com>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=HiOuvOD9;       spf=pass
 (google.com: domain of nathan@kernel.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=nathan@kernel.org;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Thu, Feb 11, 2021 at 05:11:07PM -0000, CKI Project wrote:
>=20
> Hello,
>=20
> We ran automated tests on a recent commit from this kernel tree:
>=20
>        Kernel repo: https://git.kernel.org/pub/scm/linux/kernel/git/torva=
lds/linux.git
>             Commit: 291009f656e8 - Merge tag 'pm-5.11-rc8' of git://git.k=
ernel.org/pub/scm/linux/kernel/git/rafael/linux-pm
>=20
> The results of these automated tests are provided below.
>=20
>     Overall result: FAILED (see details below)
>              Merge: OK
>            Compile: OK
>  Selftests compile: FAILED
>              Tests: FAILED
>=20
> All kernel binaries, config files, and logs are available for download he=
re:
>=20
>   https://arr-cki-prod-datawarehouse-public.s3.amazonaws.com/index.html?p=
refix=3Ddatawarehouse-public/2021/02/10/623699
>=20
> One or more kernel tests failed:
>=20
>     aarch64:
>      =E2=9D=8C LTP
>=20
>     x86_64:
>      =E2=9D=8C LTP
>=20

It seems like we are very close to getting a passing result... From what
I can tell, the failing tests are logged in these two files:

9548629_aarch64_1_commands.fail.log
9548632_x86_64_1_commands.fail.log

which shows only one test failing: ld01.sh

which appears to be this one:

https://github.com/linux-test-project/ltp/blob/c5004bf071bf8ca96a01f03bde87=
3e9292f7f83b/testcases/commands/ld/ld01.sh

I do not understand how cc.out could have ld in it, when CC is clearly
gcc from the log... it passes in my testing. Has the test been modified
on your end?

Cheers,
Nathan

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20210211183744.GA4084774%40ubuntu-m3-large-x86.
