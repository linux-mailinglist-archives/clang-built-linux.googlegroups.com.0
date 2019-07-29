Return-Path: <clang-built-linux+bncBCD3NZ4T2IKRBX6K7PUQKGQET5QP3PY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc3f.google.com (mail-yw1-xc3f.google.com [IPv6:2607:f8b0:4864:20::c3f])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FC0678BB1
	for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jul 2019 14:24:00 +0200 (CEST)
Received: by mail-yw1-xc3f.google.com with SMTP id p18sf44825451ywe.17
        for <lists+clang-built-linux@lfdr.de>; Mon, 29 Jul 2019 05:24:00 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1564403039; cv=pass;
        d=google.com; s=arc-20160816;
        b=AySn21L85OmHBcoVybSTqBS1ZIOCxRGSsirV1kodOT/cIR/hsNClDZSu4lXCXfHm0g
         TSTGF3xfSkHgMRwuhtntfQaGgqlt5L83IxH2Eclz+v8h+85l2lsEwMOTYe43ryQl9Oqz
         2D92cbEtesvKr0SFXKM4DXd9GvdsoEgM6bz6hPWrBev3EiafDy96wORWRdsCym+uIu12
         ZSs+QY+oeGl/Z7dKVknlV2CeVU7rdVGUrz1sucLwY7HD2QiA2JCEBer5l+k87T6qYxRT
         OOIvpPsfNqxhO/ZvSyPYbBmybZMtELexyXvWklqB1vuCfV5Q+pcgQCf98a2wUBowYCQt
         4naw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:to:references:message-id
         :content-transfer-encoding:cc:date:in-reply-to:from:subject
         :mime-version:sender:dkim-signature;
        bh=6Zr818jhkteMDX82ZJgCnkxy7D2kO7ETVHI5wFzFP6I=;
        b=Rswy5UkfBJWO8XA8c7QfMzGxYqIIddClzrCro78+RKKxZdBiev4bcxtilUzHF0jDNb
         WScDseCgk8QOX8balBqia00vA9aQpbpEw8aUNkyvRjQjc32sJamYyXP1Pu8YGFfdHXXK
         OtB2VnkbVVlSzSIXeaNO5YAsZAb+E5Nt3x7TK9HIm6Ymhtbv9xfesVCTfujF7SXZx4me
         0z8bqKan0O8YkLyWE/Aup1uHzBB4CGnsgcIKt5C40BOFkKe0m3nGXI45UJkvjfqh6cgD
         chRREy2dc5NwajibTs6qe7kDP0yANf7kzW6pIA2KfejMrROyOuPIGckShVmcm2JWd3tO
         JkHg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@lca.pw header.s=google header.b=Hc9DVUB9;
       spf=pass (google.com: domain of cai@lca.pw designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=cai@lca.pw
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:subject:from:in-reply-to:date:cc
         :content-transfer-encoding:message-id:references:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6Zr818jhkteMDX82ZJgCnkxy7D2kO7ETVHI5wFzFP6I=;
        b=XUYO6YL4gdBF85iiQcLHSBbdjO0i2DjAW4AcyoYv6t496L2vfXrvo5coVS1TMSBW4R
         6MxSrsuIURvP1yl3Q3g497Wx+mlUsE0VoHLizUx/Y8wJDwmTw65DEKfKMdg3EK/aoD/W
         lw4NNyOuK+dRMObRldhE8PgEmNXJCFwYAJ3wNPaH8C7lA0nZQOTCZT98LUwi6+vmDJ2d
         Gag5m1g9uR6H+ydBKF14GJ6UUcRVvkjxHNjHCX5KXY9EjyuWe+iF8y0MGmQR4D5THGF4
         h0ExmvJ4F03DDBUWTuHDaebpGipqGKCHRbRxSXo7juRiMbASaxHimayoQptfHnIlCfis
         Uy5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:subject:from:in-reply-to
         :date:cc:content-transfer-encoding:message-id:references:to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=6Zr818jhkteMDX82ZJgCnkxy7D2kO7ETVHI5wFzFP6I=;
        b=KaM2ANUW9HMtlGkq91sB1iW7x+Rj3US9rjvWxqbVAN938aOhyHWuq7PePeLSPGNfYl
         IwNtr1VYYK+yHHgndUNuXUl3zxdTz/GXIkz4ducXSP/+dNs4+k2U+jQAVeQSvK0tH+6H
         T/DAJpfB1sBrHvKlRAR8PxqjSIsfz56re35I1cdusDlFtv1vNxWw3pnPMfwOtEcTUMiz
         n8jHFeQ/90m7CiS/1sNGTGAUSiT5ZbI4RQzvy8we5aTeHZToV89Bpr/F2y5d2Dq44C8v
         FYkYUcMlzhd+ZWIuWq7hgiy6YX2BSRwI9d3DWAHqp/KTqT8xWG7S9h1y9hc1MniV+en4
         deZg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAViqQDjJU5/YHgUxPMmA3tARygctCkTte9SiM48E9jR2A0xXLNd
	hjc9+QX2GKFEm/OTp7wX6/g=
X-Google-Smtp-Source: APXvYqyN4q6D8mAPlWmY6L+699BL20vRhjqEVHOudBYDpc7OxV2u9Qzmmju6+fYifS3ODPK0AAWbYQ==
X-Received: by 2002:a25:5cc6:: with SMTP id q189mr64377354ybb.350.1564403039463;
        Mon, 29 Jul 2019 05:23:59 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0d:e684:: with SMTP id p126ls9566379ywe.12.gmail; Mon, 29
 Jul 2019 05:23:59 -0700 (PDT)
X-Received: by 2002:a81:3b4a:: with SMTP id i71mr70626240ywa.395.1564403039271;
        Mon, 29 Jul 2019 05:23:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1564403039; cv=none;
        d=google.com; s=arc-20160816;
        b=kNS3MCVmLP0IWfidc0GcwfL7nB/Drk0GLlVScf6QwIhMCyJy+oNMxVANYmbe9X+I15
         lVDevEKv2t7wk3feClwGSI00b6FQEy9UTBKUKGJx0GD2TU0yqF9BAVeBdnfZx3N0Xyi4
         dEJcHLJ/5AMZiPs3SKc8gQGn4a9an1EEX2z81+gEopa7jKgsPUoM0iN1qoq5x+3wbZOo
         stjQ6Au3NIqt9DwLHowonaOwcE48Z1mvy/pEqXJdgz2FeS5tq3wa2LyzCLFGomf2sUjr
         SR9XXdZPR1UNcF9HR0cxIZ9V97t6ItpEtCJQbFuJA7Qbxt9s096SSdj882bweCy7RwrF
         JLpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=to:references:message-id:content-transfer-encoding:cc:date
         :in-reply-to:from:subject:mime-version:dkim-signature;
        bh=h93KMWTgMZDnkWWP8nidzTcTTS/K0DE/79C+3LGxZF0=;
        b=kgeAyc65zsDpBiDxk28L1pE9meR9bBbp51AvHjmNpTbHJquG4n+kudbVz40VlIxzED
         DP8EGaystGsXKPcIRYh5KIHYc+nsNl11qo3/2tHk8uBonI5uH1GKXLMuk8dB2GeyR4Rj
         fAQd2SE8L+g0o4jo6M9aO8tyij0ujKYhVaXEjzp/7wRaaFnEdSteHihNuFB9t/UuGKD4
         aLK/G8Uxc8vcB2YEk2UIafKacltipT/k5WwtEYuDL4FbZpYBZoGVfrwA23aun4ZFaANJ
         UU1Gj5RV1WXazyCWURGcMPLnlV+Qf1YQdnf/tpie0FKRGtuJwNIMHQjK++MvOVQAhD5a
         vsfQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@lca.pw header.s=google header.b=Hc9DVUB9;
       spf=pass (google.com: domain of cai@lca.pw designates 2607:f8b0:4864:20::744 as permitted sender) smtp.mailfrom=cai@lca.pw
Received: from mail-qk1-x744.google.com (mail-qk1-x744.google.com. [2607:f8b0:4864:20::744])
        by gmr-mx.google.com with ESMTPS id p125si2393600yba.1.2019.07.29.05.23.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Mon, 29 Jul 2019 05:23:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of cai@lca.pw designates 2607:f8b0:4864:20::744 as permitted sender) client-ip=2607:f8b0:4864:20::744;
Received: by mail-qk1-x744.google.com with SMTP id r21so43983368qke.2
        for <clang-built-linux@googlegroups.com>; Mon, 29 Jul 2019 05:23:59 -0700 (PDT)
X-Received: by 2002:a37:4a8a:: with SMTP id x132mr74044881qka.42.1564403038878;
        Mon, 29 Jul 2019 05:23:58 -0700 (PDT)
Received: from [192.168.1.153] (pool-71-184-117-43.bstnma.fios.verizon.net. [71.184.117.43])
        by smtp.gmail.com with ESMTPSA id 2sm32890868qtz.73.2019.07.29.05.23.57
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 29 Jul 2019 05:23:58 -0700 (PDT)
Content-Type: text/plain; charset="UTF-8"
Mime-Version: 1.0 (Mac OS X Mail 12.4 \(3445.104.11\))
Subject: Re: [PATCH v2] acpica: fix -Wnull-pointer-arithmetic warnings
From: Qian Cai <cai@lca.pw>
In-Reply-To: <c98fa373a004472b979255a93b414fe1@AcuMS.aculab.com>
Date: Mon, 29 Jul 2019 08:23:57 -0400
Cc: "Moore, Robert" <robert.moore@intel.com>,
 "Wysocki, Rafael J" <rafael.j.wysocki@intel.com>,
 "Schmauss, Erik" <erik.schmauss@intel.com>,
 "jkim@FreeBSD.org" <jkim@FreeBSD.org>,
 "lenb@kernel.org" <lenb@kernel.org>,
 "ndesaulniers@google.com" <ndesaulniers@google.com>,
 "linux-acpi@vger.kernel.org" <linux-acpi@vger.kernel.org>,
 "devel@acpica.org" <devel@acpica.org>,
 "clang-built-linux@googlegroups.com" <clang-built-linux@googlegroups.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Transfer-Encoding: quoted-printable
Message-Id: <7667BD59-E9FF-4374-AEF6-025FD13837B6@lca.pw>
References: <20190718194846.1880-1-cai@lca.pw>
 <94F2FBAB4432B54E8AACC7DFDE6C92E3B9661CBD@ORSMSX110.amr.corp.intel.com>
 <c98fa373a004472b979255a93b414fe1@AcuMS.aculab.com>
To: David Laight <David.Laight@ACULAB.COM>
X-Mailer: Apple Mail (2.3445.104.11)
X-Original-Sender: cai@lca.pw
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@lca.pw header.s=google header.b=Hc9DVUB9;       spf=pass
 (google.com: domain of cai@lca.pw designates 2607:f8b0:4864:20::744 as
 permitted sender) smtp.mailfrom=cai@lca.pw
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



> On Jul 29, 2019, at 6:24 AM, David Laight <David.Laight@ACULAB.COM> wrote=
:
>=20
> From: Moore, Robert
>> Sent: 26 July 2019 20:36
> ...
>> This is because pointer arithmetic
>> on a pointer not pointing to an array is an undefined behavior (C11 6.5.=
6, constraint 8).
> ...
>=20
> The standards committee as smoking dope again :-)
> If that is enforced as a compiler warning/error a lot of code 'breaks'.
> Anything that does:
> 	struct foo *foo =3D ...;
>      struct bar *bar =3D (void *)(foo + 1);
> suddenly becomes 'invalid=E2=80=99.

The clang will generate a warning only if =E2=80=9Cfoo" is NULL.

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/7667BD59-E9FF-4374-AEF6-025FD13837B6%40lca.pw.
