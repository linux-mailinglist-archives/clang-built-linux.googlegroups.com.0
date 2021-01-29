Return-Path: <clang-built-linux+bncBD4NDKWHQYDRBQ4T2GAAMGQEYHNAORI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3b.google.com (mail-oo1-xc3b.google.com [IPv6:2607:f8b0:4864:20::c3b])
	by mail.lfdr.de (Postfix) with ESMTPS id 74811308BD1
	for <lists+clang-built-linux@lfdr.de>; Fri, 29 Jan 2021 18:45:40 +0100 (CET)
Received: by mail-oo1-xc3b.google.com with SMTP id h10sf4605180ooj.11
        for <lists+clang-built-linux@lfdr.de>; Fri, 29 Jan 2021 09:45:40 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1611942339; cv=pass;
        d=google.com; s=arc-20160816;
        b=vMWKigqZH6UEA486I4Ore6GWWM79RgIwY/IpjTNg5T+rz1GmXGezcfOw+YK5gG4fRz
         nxPWmdldfdr0XZXUB7xBusdq2qXTwudssIb0AdhGTANGaGEqZLNzImOhxz+DOPv8v9/G
         4XhkMhKCF0hUt9mvB16Y0ev8gnSmXu7liKcyzVvq7QL+4snfgI7VW0ztqH3sguBCEGIs
         LlXT8cYjzObEHDQgd/80UjcK5JEuY+nq2j5QmaLZFpSBN9SlOusJRC8ZrZecO548GBsm
         SpBfiwojgU6EOhK3vDnC5IFMJUWZdp+OL6APQq5I+bYdXIOH9rTuwrTuXvVW0NbHhyzT
         5QRQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=hdFaRgv/cc6RsCLZeWfP4NRQuKPBcmL8exCpNBSw0BA=;
        b=FJ3kS2kmvOoqwdfHGEjRG1otdiPeeWHp8gplAOc5Lud7OdWzYPwlPHlj5V2So2VFaF
         OQMvOb1HCdz7EtGQc0siwcRmRnjOLgqCoRfqaq78huhQxQryjGR5zkZVM1RqKvBcYEP9
         LY1wFHsDqGtMxsgB+QRnOWDvGX0Hhf47lM0JmZSdKOUCX0OlZoDCR59Di2zr1A25AiEj
         dAQVBSJiyZA4XtrbdR+/Ux15H+UMObyT6wWjJU9LZlgaQClsLU2bcFvVrazWVR9TL9Mh
         e7EwEnc/ZJjqnapXi1stbjYFX45A2n6hIREWNdSIp9kS0Dg277Flj+ul3TmdW9iBQWXW
         UjDA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="KCjC/auX";
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hdFaRgv/cc6RsCLZeWfP4NRQuKPBcmL8exCpNBSw0BA=;
        b=gpBaREE6lH3X1qkYAnp1H04ZRTAqU0Tw8XcItPQ4RoVW9K79LuIyZEh5HijM13T2e9
         unliOTB5ySK0KHO38xStu4CMliS0JDlky8yhn6eQFqFEgJb8+R38LD6ml0nZvSm4CpeC
         6pKaY8cjj4xrMY2Js+rgmx5IMLgYjRo7n6y5w3o7mTV66i1epdeIJ+v91wrq3AG2sPy0
         95K4Gh0RjceyZK/hNO3YHodaJO96UQEJKrgkGivPu9xjStnypeNyBBX1SOUAH6pxBxTK
         1qnSCHunj06g0twV5C40HoTX9HQXc6aZSooUOi65/2C9Ujh7gRK/KlpOgqJxW43HFY9v
         XdUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=hdFaRgv/cc6RsCLZeWfP4NRQuKPBcmL8exCpNBSw0BA=;
        b=HIPmdhAQFQKdknaVGt7CbKm4mpZwGQCI0ZaD+GU6prNXvvEWCe3l8yceFs9CoXPoIp
         Z/1SG8/3Pmgr/fqzGtq0M67vTqLXYR3qPEWN3kPW9hmwg3Jt4FqiL2h5E+Z6nA/T6B4A
         aZV1qLPYzVlKCdtbwH/Tvj72MSemfG1frwZIrdM2wEzcl0L3PdvxL7WC4GotCv7N6z5w
         zaXNWGn+2XFfaPAoEVIIRR1sk/pLUWTUNI0nt6WchWULe4wmEIV9l7/++Jlvic3HPqE7
         2Hyc7MHbeMKR07gcQFp0rRcNEk1Er7bNBuxgSDYE7Zoad+hBP/SZjAm7K1t0H0f0Xjd0
         PURQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533N/+BpNGC+vUX8+yJqWFedi6RO3wOkKcFJMhEi2fUCMss3vcaC
	YIAkiuyrwGdIoiGZM6IR0S0=
X-Google-Smtp-Source: ABdhPJyPf6g8mgpIjDGUAwBquUu6xs3gkQtUAn6UbMNP7kGe5Z/Dh2AmO6bOdo/a3LPF6WtNzHsIHA==
X-Received: by 2002:a05:6830:1289:: with SMTP id z9mr3644655otp.130.1611942339405;
        Fri, 29 Jan 2021 09:45:39 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:504c:: with SMTP id e73ls2239387oib.9.gmail; Fri, 29 Jan
 2021 09:45:39 -0800 (PST)
X-Received: by 2002:aca:31c2:: with SMTP id x185mr3214887oix.35.1611942339022;
        Fri, 29 Jan 2021 09:45:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1611942339; cv=none;
        d=google.com; s=arc-20160816;
        b=VzKlROUNTXlnbx4YqMdVN0EAoCxBDbtKD4EueGuZwXbRVI+7pkiMjfuhG+CR7HoySr
         D6kl3eZTC33XNQeu8l5ny7tO56BAKFDN62fjEh2egI0BnuOflOXjBRvGWLZBiUqYn7iT
         mdaN2RUoqU6sWrLJk4cF1yL8WP8aoaQOmriPcKDQfph9e2b8JNV/vc1qXYOHnASg5+Do
         hDRYUUeWZBbmc6IkwBAlM8kmxLnZxvfDSX8fqhjlg5paK3QLo7h/YDEpGrlPsb8aYrGV
         4JW0hVFAv2PCz2eNGssvFbSRZogicU8p7y3xoN4KbKgMa64cSYZuHMeSVI3O1hyotn6T
         PPUA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=FHLyrZF869NHf4BN9CHUJwpGRm5hJE+Uk6jBy0VKG2Y=;
        b=K2ok72CMmvRmQTeRTgkFKSc6axcHMBBI6tanix2cHlgOB1DGA+vhcZDJtNUVIrG1dM
         WlYCJCgjbhE8Gh7SbVEurKRiSnjCNs3zad7FQF2PWBJRdsYmcOKVRkfee4TW8p38P96f
         yRJ5cUzTMNbctD/UMKU6FaocFRxxQ/VjwknI7uHclSJLnIhb8fAFWYlg2htNBzwwhDZK
         /j0DxO52Lh9s9MEVg8ZFEDoQYwAW+EOZkOcLMCyofWLiTwNfg94J2UBvlO1R/aeIMtz4
         QuWuR5j27wk5YlCVjQZ+fwcOuBMZKsG0Sw5IlkI5sbyThmRhVrL+eyCYkMbokeU0FX2M
         1YFg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b="KCjC/auX";
       spf=pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=nathan@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f197si533219oob.2.2021.01.29.09.45.38
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 29 Jan 2021 09:45:39 -0800 (PST)
Received-SPF: pass (google.com: domain of nathan@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 6815664E02;
	Fri, 29 Jan 2021 17:45:37 +0000 (UTC)
Date: Fri, 29 Jan 2021 10:45:35 -0700
From: Nathan Chancellor <nathan@kernel.org>
To: CKI Project <cki-project@redhat.com>
Cc: skt-results-master@redhat.com, clang-built-linux@googlegroups.com,
	Milos Malik <mmalik@redhat.com>,
	Ondrej Mosnacek <omosnace@redhat.com>,
	Yi Zhang <yi.zhang@redhat.com>, Rachel Sibley <rasibley@redhat.com>,
	David Arcari <darcari@redhat.com>, Xiong Zhou <xzhou@redhat.com>,
	Erico Nunes <ernunes@redhat.com>, Xiaowu Wu <xiawu@redhat.com>,
	Baoquan He <bhe@redhat.com>
Subject: Re: =?utf-8?B?4p2MIEZBSUw6IFRlcw==?= =?utf-8?Q?t?= report for kernel
 5.11.0-rc5 (mainline.kernel.org-clang)
Message-ID: <20210129174535.GA2433369@localhost>
References: <cki.EDE78CA59A.GH2K68TZ9U@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <cki.EDE78CA59A.GH2K68TZ9U@redhat.com>
X-Original-Sender: nathan@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b="KCjC/auX";       spf=pass
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

On Fri, Jan 29, 2021 at 02:27:11PM -0000, CKI Project wrote:
>=20
> Hello,
>=20
> We ran automated tests on a recent commit from this kernel tree:
>=20
>        Kernel repo: https://git.kernel.org/pub/scm/linux/kernel/git/torva=
lds/linux.git
>             Commit: c64396cc36c6 - Merge tag 'locking-urgent-2021-01-28' =
of git://git.kernel.org/pub/scm/linux/kernel/git/tip/tip
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
refix=3Ddatawarehouse-public/2021/01/28/622469
>=20
> One or more kernel tests failed:
>=20
>     ppc64le:
>      =E2=9D=8C selinux-policy: serge-testsuite
>=20
>     aarch64:
>      =E2=9D=8C selinux-policy: serge-testsuite
>      =E2=9D=8C Boot test

Is there something flaky going on here? It seems to show up in some
reports and not others.

Cheers,
Nathan

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20210129174535.GA2433369%40localhost.
