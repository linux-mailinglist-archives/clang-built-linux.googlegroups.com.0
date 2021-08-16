Return-Path: <clang-built-linux+bncBCQ6FHMJVICRBQ7K5OEAMGQESKOHFXA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103a.google.com (mail-pj1-x103a.google.com [IPv6:2607:f8b0:4864:20::103a])
	by mail.lfdr.de (Postfix) with ESMTPS id 38B083EE076
	for <lists+clang-built-linux@lfdr.de>; Tue, 17 Aug 2021 01:31:17 +0200 (CEST)
Received: by mail-pj1-x103a.google.com with SMTP id h21-20020a17090adb95b029017797967ffbsf1194267pjv.5
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Aug 2021 16:31:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1629156676; cv=pass;
        d=google.com; s=arc-20160816;
        b=Y+G2HY1f9KlhgdX+WO8EWqMKdKyZ3HSV8FPYSzlVn855wOAIoJAkUYDdMTYUgMtQWc
         HHgPx7n3gO+yiDp6isFU/3TRy6L+tYRfr5VlMjgMwPlqhhh6QX3SyiJYExE2PbFqFJNH
         L3cyI41FuuOKq0Ps43LyHhoiz9fQ/kotBgCpRvWW+6tYUp8Upki7N2oKAac0VGRqm+sk
         nOuSyJIVXSuKxYeOVWmOC+v9BCm4Ft6nFe++OwNE+gtUCS4UfUlhu+Bnx5TiLG2sCyve
         j1+rjAnws45a7cXnmrhJyFfx2iVoj5iNLJqzzh41+JkMQ0ZckqrTJI948h4V0NzL5a7a
         eYew==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:in-reply-to
         :message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=HIxdvD8atsrJtG+RuDTeXXzVaAzs6Rg5XRrvy7+5lTw=;
        b=V0iLYROlLkFsG8swT4gpHF0Gnrmc3AURtm853Op6hjYKu8WPZCFgzibJrI0/PXy93w
         FXCnyEKtrZDlukpWzITdROSM8DTk8eYLmMPTe5M6nQ+JJZTtWcovN2yXdWwNXCE712FM
         L332Z/Ax02RycqFaFu4ms1xo3+juPV25lcOTQbJH3NwxlHbvmY3P0v+Q73f4HPl4jRnI
         AZNxeV/1ymHmVDdJPzp1z6NBMlZP/W1lRYa3ki55upoCcEvWZaEF9Ctg5MRsxkAbfpY2
         mzj61bOKloac6YG84hjhu0awaKM7jt9uPBZa0Nrck0M8G0Ajc94GgS/rjKaYO7Mb5j5+
         0maQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@canb.auug.org.au header.s=201702 header.b=qwaFCj6L;
       spf=pass (google.com: domain of sfr@canb.auug.org.au designates 203.11.71.1 as permitted sender) smtp.mailfrom=sfr@canb.auug.org.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:in-reply-to:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HIxdvD8atsrJtG+RuDTeXXzVaAzs6Rg5XRrvy7+5lTw=;
        b=FMZIAytZrh/0DusriFdVBaWik9Cob2PjH2jP1l37l98FIaFOaH9vCElTPsHqsWhHgQ
         Ksu5a9ma73WoYn4IlYT8xcCJic001xdGvtOh2kQOGEfvdtB2rbHd1MDOQ3YqLC54hnkA
         h8kSjlRkygZz1PQTsEI/kQ6PRaPNeW9YUHF9mf9UntF4fuko95VDrvoRIZ0sgCnN4UfG
         ChpB1LyLnDcazxuat9DVT8KQNZUNQ3S+91BnqvQ0lAyNzZWHYDBeKgaXHjdYl+t9KmYu
         OChQGVTmVr6VehRxNvJBWM6o5mjf/5Ha13kZsrDfaIA83ktQY+5E4BzAi+NmasFm97Fk
         ny5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :in-reply-to:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=HIxdvD8atsrJtG+RuDTeXXzVaAzs6Rg5XRrvy7+5lTw=;
        b=HGUKbtS6kA4afTuP3XoAA0hNXbP7fSZf47d4G3WQjn4lQRUpfKfEZIoI2S3I3km6yp
         vApU2grlr7zozL9DY+jjBymqcaDp2xnRfJUZaUY1hOOvk66ElDxTFC4KD/r87+4m5k0r
         4mGeyxIwnDXfWjY5W31fPM0tcO1yGYgfno4vDtF4NlsCrjRX0pJTiTaK1YRis8mopwqe
         ExJ8B0ZWjpK/dD2tfLXTuDEe++6UQ65OGGGkiH+VeHNYNUlQ/jJVkL0k/B6faNjo1hh4
         kwyLrNhs37w7MkD6HLPSSCs1zrZzoLYeTFo/ry23IdQAw+5vJRagQLMvo+h5wkV0NMbd
         KTCA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533OhCsKYeKoCv1gn0XDFT4nks0mB7GP1Y0vsoHV/u7YvtHT9uPd
	TNjE5oxD2IrF7jtMNMhcB2g=
X-Google-Smtp-Source: ABdhPJzozWO4QiZXZ6xpRs+Gg1Fh7n7vU8TflFPsfuIj2FUDYQffOXNppBHFjMGecLKI5fJb6IxSHw==
X-Received: by 2002:a17:90a:3d4d:: with SMTP id o13mr455500pjf.34.1629156675883;
        Mon, 16 Aug 2021 16:31:15 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:218:: with SMTP id fy24ls95201pjb.3.canary-gmail;
 Mon, 16 Aug 2021 16:31:15 -0700 (PDT)
X-Received: by 2002:a17:902:bcc6:b0:12d:bd30:bc4d with SMTP id o6-20020a170902bcc600b0012dbd30bc4dmr406030pls.18.1629156675224;
        Mon, 16 Aug 2021 16:31:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1629156675; cv=none;
        d=google.com; s=arc-20160816;
        b=AeCiC6bXxkELp0cwglMG3UQEnGIxjl+ahs4QGd4O20+86HHFcHVFx+HJQWwqvb1XJG
         xEPNBj7rcppNyhkONqhlZX2fjxPynl98P3337uNh+yayCZo+8OOyU3UYYPymQ9HbU7Lf
         bMACwLwzWybosVc89JaYtHn5+TDKBfwOiWv3pREEoL9EPAqL62IXKXGNUk2eCfwjQB6Y
         tNoVbeGKvZt4KTZ3+5gTvOODd+maT6O50LPuh9+VaPV2TnQqck8H9NtdwFo06lkGrWqE
         oNmtIq6mseFZLKzDNR9kExEWADWT3qAJ1ffNzE+ZDt4aP4t9nKKMZrKj4ClA77Kso2vN
         Y1rQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:in-reply-to:message-id:subject:cc:to:from
         :date:dkim-signature;
        bh=YNKagkj0w/Z++HsJavgR0XFe1f9k+nbxF7Wm/gC5leI=;
        b=qnNpPrEbgYMcoMAKWFPwrRL9ZK4cYAeIlF066Nxe5zOk/khR3qY76eU4nX6TN/wB3S
         Jm0UZgh+knddVRZyWIgfeKZVNlbwVAeT29gy4edx1bZs4leFm5aBD3kIqjYj+CQqW+NV
         Q/USRxYsbjk+DDhdqEUeglVIQCq7c9iWZr7DzbnZeC0t6GyithY60TyK9g4NeGUiYy5B
         gALpGSL0aIsFaBGT3/cusqk8f5Qn+0owLuGKrvS04jopjiAPz+l3G6omXghAd2e/mxwR
         sbyseoJruEZh4QR5CIRnTF0FM6Nf+lMYq6mr97DXNyzL/PAsWEqqVt1SG2hQHUNleQXI
         xE2g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@canb.auug.org.au header.s=201702 header.b=qwaFCj6L;
       spf=pass (google.com: domain of sfr@canb.auug.org.au designates 203.11.71.1 as permitted sender) smtp.mailfrom=sfr@canb.auug.org.au
Received: from ozlabs.org (bilbo.ozlabs.org. [203.11.71.1])
        by gmr-mx.google.com with ESMTPS id e11si30121pgm.0.2021.08.16.16.31.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Aug 2021 16:31:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of sfr@canb.auug.org.au designates 203.11.71.1 as permitted sender) client-ip=203.11.71.1;
Received: from authenticated.ozlabs.org (localhost [127.0.0.1])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange ECDHE (P-256) server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	by mail.ozlabs.org (Postfix) with ESMTPSA id 4GpVlv3BLjz9sSs;
	Tue, 17 Aug 2021 09:31:07 +1000 (AEST)
Date: Tue, 17 Aug 2021 09:31:06 +1000
From: Stephen Rothwell <sfr@canb.auug.org.au>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Naresh Kamboju <naresh.kamboju@linaro.org>, Masahiro Yamada
 <masahiroy@kernel.org>, Michal Marek <michal.lkml@markovi.net>, Nathan
 Chancellor <nathan@kernel.org>, Andrew Morton <akpm@linux-foundation.org>,
 "Paul E. McKenney" <paulmck@kernel.org>, Peter Zijlstra
 <peterz@infradead.org>, Miguel Ojeda <ojeda@kernel.org>, Tetsuo Handa
 <penguin-kernel@i-love.sakura.ne.jp>, Vitor Massaru Iha
 <vitor@massaru.org>, Sedat Dilek <sedat.dilek@gmail.com>, Daniel Latypov
 <dlatypov@google.com>, linux-kbuild@vger.kernel.org, open list
 <linux-kernel@vger.kernel.org>, clang-built-linux
 <clang-built-linux@googlegroups.com>, Linux-Next Mailing List
 <linux-next@vger.kernel.org>, Mark Brown <broonie@kernel.org>,
 lkft-triage@lists.linaro.org
Subject: Re: [PATCH] Makefile: remove stale cc-option checks
Message-ID: <20210817093106.71315de3@canb.auug.org.au>
In-Reply-To: <CAKwvOdkckey1=VUHApTcJYufyhdRJ=jb4qYs52f59g6ha7qphw@mail.gmail.com>
References: <20210810204240.4008685-1-ndesaulniers@google.com>
	<CA+G9fYtPBp_-Ko_P7NuOX6vN9-66rjJuBt21h3arrLqEaQQn6w@mail.gmail.com>
	<CAKwvOdkckey1=VUHApTcJYufyhdRJ=jb4qYs52f59g6ha7qphw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: multipart/signed; boundary="Sig_/toHh=u=Y5SRXotU7RVYPv46";
 protocol="application/pgp-signature"; micalg=pgp-sha256
X-Original-Sender: sfr@canb.auug.org.au
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@canb.auug.org.au header.s=201702 header.b=qwaFCj6L;       spf=pass
 (google.com: domain of sfr@canb.auug.org.au designates 203.11.71.1 as
 permitted sender) smtp.mailfrom=sfr@canb.auug.org.au
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

--Sig_/toHh=u=Y5SRXotU7RVYPv46
Content-Type: text/plain; charset="UTF-8"

Hi all,

On Mon, 16 Aug 2021 11:37:23 -0700 Nick Desaulniers <ndesaulniers@google.com> wrote:
>
> Thanks for the report. Andrew has dropped the patch from mm-next.
> Looks like it's too soon to remove build configuration tests for
> -mfentry.

I have removed that patch from linux-next today as well.

-- 
Cheers,
Stephen Rothwell

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210817093106.71315de3%40canb.auug.org.au.

--Sig_/toHh=u=Y5SRXotU7RVYPv46
Content-Type: application/pgp-signature
Content-Description: OpenPGP digital signature

-----BEGIN PGP SIGNATURE-----

iQEzBAEBCAAdFiEENIC96giZ81tWdLgKAVBC80lX0GwFAmEa9ToACgkQAVBC80lX
0Gz05AgAjSG4Pl77aQUWuGOgD5vrAWBc0gyQxvGKP9TvCVvqg3/6IuAVsDLAdt2o
ONLNxA2MFYJofy7nCniBnh8g46GqKvFKYLhwg8U+/5IU2Vn8NX47d5TKzgyxFWVh
/LJkkh5+tUewDJUsNWVxpS6wPbGwkjaBSaKbZlO3ITvaW3yC8Aqm2xPOC1JBn1at
yQ4eEkhgVGH8g7RWZQXAY87XTYTDZV5LaTagpfpHyHKKmnrImKmeF7ywVJQsl+d/
U4+lLyhDkXHAicjzJKHf/GQAcnnNfjO7IR1PQ3aIpJLmuZHsW0JWp+wiJUFpC5D0
78VWXdohr5V59k49ztdUqKeT4S7jVw==
=d2l8
-----END PGP SIGNATURE-----

--Sig_/toHh=u=Y5SRXotU7RVYPv46--
