Return-Path: <clang-built-linux+bncBAABB2FUWD2QKGQEXDF3XOA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lj1-x23f.google.com (mail-lj1-x23f.google.com [IPv6:2a00:1450:4864:20::23f])
	by mail.lfdr.de (Postfix) with ESMTPS id 091C61C1264
	for <lists+clang-built-linux@lfdr.de>; Fri,  1 May 2020 14:47:37 +0200 (CEST)
Received: by mail-lj1-x23f.google.com with SMTP id k14sf299755ljg.21
        for <lists+clang-built-linux@lfdr.de>; Fri, 01 May 2020 05:47:37 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588337256; cv=pass;
        d=google.com; s=arc-20160816;
        b=njDywcqRGGWHNfn3iXg3nvwO69TOABX9+/a+daNh7TRhV84P7ITYIqTuvnFQHng5pl
         HIaWW1p6t+S71/B6Vi0q+SKou6rKFFx36GtDrq3gL6gXV9eVtjvf04g9XaklJSmMkaKL
         PaPwQk97OwuC4/nOJaPTjg+qDt1VfLp8hfN2iTXy5HC+tsuyUx4XTVsmeT0rjKUgf5wp
         nLz/YRgTZ8Y41ciitvEPEXgw5kiE3HZYdiYHlw0TqnpRcqyFNQtOgo4Xn8TeBppgYy37
         1boAZUVb0aRFzNNNYv3kpj4qAliaSgXJnpVgb02V8evQOE/lskkjRCsQ08tOwUGnJG+6
         aecw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=y7t8pxMLSOkR/eX983wWwXXPCydWBpOZg17QU6d6ceo=;
        b=DOqfGKuQrFSYCj+fm+K3d1GDhj/PZ3ICVssprmDBjae3zpuvcckRo5cMdyi21dc+wJ
         BWmqcrauCvnC2iX3tl2di85HHYTPx28jRZh4ZVt8Qj8Ikn/HT7KTntKz+yuJDu8OSpi3
         NMP3StssD2plX4K/jRxRMswqz4J3A35poDQ3R/gg6Yl+fsZGERxFwzLUVtu2/ZFHLUDO
         SWTUcPnF+ZieWDGdv7qrUmzgZ6Rj5PBrBY4jyJ0WVFc9EoKhhnY69BJrU6p6nx+BPJ4O
         EYtvlAI9cpcWoaJ6Y5/SWyQRTjSr38DOD4IvmX1XFf7Z0TLBo0qNfaPsuHUgnfL0m1U8
         a3vg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of sebastian.reichel@collabora.com designates 46.235.227.227 as permitted sender) smtp.mailfrom=sebastian.reichel@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=y7t8pxMLSOkR/eX983wWwXXPCydWBpOZg17QU6d6ceo=;
        b=pT76fEBZE4eWRY/EDiiQKAi3Zh3OMwquWHrwvmPjuMxC/R10uXDMbHVE3kSmUK5RXs
         csYz3gmPI4vB4NlDi9/zuRF5z/MoOUDi84NtpzRbFH+W1rcWUWzao/6P2JpJnRY3SJnh
         r6THu3fCNaTxlzcTal+e80tidBWQ6qfA+iejVe5byN2Qr1sbW6DMkQY974d61pOcYfJs
         JEmfgwm1wVyHNMCtAtlTg355MmwuG+1OTZLr67JoHBHpxZRikW7FuSuG4wqSVboxxRy8
         5JbGD0nYtOmowprxf+lblX5Lbd7VbWAg6dluPVs3cYeETPi4IyYdYSB2z4j1o2ubrdjn
         Ggsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=y7t8pxMLSOkR/eX983wWwXXPCydWBpOZg17QU6d6ceo=;
        b=Vtr7PXkgEDgPwBfAVx9piPhR5xBUNHVndcOUPmSiETeSe1mhrrd+2oEygOTYS3qiTE
         EQXuKNEuxxreTTjhhx8Bsl+EPWRAsS44rDgLZFzwyaaWHF3N1oJasLPyjOtuW1e1qZ5U
         d23uZSFkTjLZbdl+Un2gAYxh3uGfdru3QeUsog4UCntNdJKAbupiwT29Diii3+1e6Ifw
         Q23ke+5STzk6piXtP2qI7/P71+5DPQEdj7dcpA7Cy7um+MBLHH7v70K5VF7/fruX7x5w
         R0eTRKvW2BPrwIA2udFS5x89NX0JZNXL4AjvgodCS/16IwgiaGq7PecieCqYOok69EQF
         GFBw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuYPOAKgx1nBkLYR9v+L/mY95Mxyxya8iWiWJaUdENIXt8OLx4Ki
	iXW1BhTN1/txCc/eYn/1E4I=
X-Google-Smtp-Source: APiQypIlH8+YPl6rEeNGM1dH6H5SHfVpAchTVsYlbJOMoDDnpEm2h3XLLP7+8Tje80iCcSr5RWpMyQ==
X-Received: by 2002:a2e:9c13:: with SMTP id s19mr2229200lji.5.1588337256460;
        Fri, 01 May 2020 05:47:36 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:651c:288:: with SMTP id b8ls1321962ljo.8.gmail; Fri, 01
 May 2020 05:47:36 -0700 (PDT)
X-Received: by 2002:a2e:85c4:: with SMTP id h4mr2426222ljj.112.1588337256048;
        Fri, 01 May 2020 05:47:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588337256; cv=none;
        d=google.com; s=arc-20160816;
        b=WyNHrdDTikfjYA9FF3ne4mrViD8vZmVO8dvbT+IptV/NeekkYn+GQ6lMCl07badQOn
         GLKuWKeCPQo0UsuQMumjl750RsBc1JZcAWXOu22DnqTCYBWip0QC5AK09S3eGFJF4EaG
         thZ06tGsqeE6CuioZNdINnWw0IKBPCz4K9PaaUigsbzVYT7VvtZxjPvL4OBBjti9T3ab
         nnVi7Z4lg1wxJH4xBKp8uWf+t0YikmEZ/rKBQujUwLSfhwwUMJJDcgGCdvHw03YDOey1
         4oV7snEMmQhIXg0uATV29B94pAE6rz/d8BDGs4ZBlAoIb/YVFamKHbvfD0DRkYs8/zh7
         hcZA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=+BX7nSta25hJy/uXT3JpQjsiONGfRa49+DOqTIo/aT8=;
        b=ZJVNpCg0r0c51xcM7f1O2vWC1QeTvvMPfb3QqPr4LkFUn1u6L/7oQk/ZzH8mJw6DPQ
         e/DLrc+EFKNsNa4+/eSODMF1DSeDCZK1XWGJwzbq8iPzkjn4P30puXizVzRHQhKrmSAg
         ANRMcMmDx4+XeCMfpLr8ZckQ/NHgt2+IwUjYX4ND9GPK2uXrlwBz46g67ikx5S4RF2k3
         Dvw/nDQy1kZfpi01+wZyJhuOuv6uVwuKXr8ODWKblZf5Bsiz/6E/BbS3a8FYGyptM8e5
         ydpDvHgJ+4lxOg8yoh/tyv5MjABhdmgH+4w/9p3/oJ4MNnpjlVPYZ4vHax5b9C8NsAQk
         sdyw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of sebastian.reichel@collabora.com designates 46.235.227.227 as permitted sender) smtp.mailfrom=sebastian.reichel@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk. [46.235.227.227])
        by gmr-mx.google.com with ESMTPS id c16si140443ljk.5.2020.05.01.05.47.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 01 May 2020 05:47:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of sebastian.reichel@collabora.com designates 46.235.227.227 as permitted sender) client-ip=46.235.227.227;
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: sre)
	with ESMTPSA id 3F44C2A2F7E
Received: by earth.universe (Postfix, from userid 1000)
	id 7F9853C08C7; Fri,  1 May 2020 14:47:32 +0200 (CEST)
Date: Fri, 1 May 2020 14:47:32 +0200
From: Sebastian Reichel <sebastian.reichel@collabora.com>
To: =?utf-8?B?TWljaGHFgiBNaXJvc8WCYXc=?= <mirq-linux@rere.qmqm.pl>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	kbuild test robot <lkp@intel.com>, kbuild-all@lists.01.org,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Andrey Smirnov <andrew.smirnov@gmail.com>,
	Guenter Roeck <linux@roeck-us.net>,
	LKML <linux-kernel@vger.kernel.org>, linux-pm@vger.kernel.org
Subject: Re: [PATCH v3 07/11] power: supply: core: tabularize HWMON
 temperature labels
Message-ID: <20200501124732.vxnybog3k7smj7ms@earth.universe>
References: <29b5043db9a51ef7a0cb6e3a8c69c91e36045cd6.1585944770.git.mirq-linux@rere.qmqm.pl>
 <202004050928.d6QhVcsQ%lkp@intel.com>
 <CAKwvOdm5BhMdAmXR0gCLntkbvF7ajaNoWoHVCCio1CqbGzS6aQ@mail.gmail.com>
 <20200420092209.GA25831@qmqm.qmqm.pl>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha512;
	protocol="application/pgp-signature"; boundary="lfptqy4oqfimsjpk"
Content-Disposition: inline
In-Reply-To: <20200420092209.GA25831@qmqm.qmqm.pl>
X-Original-Sender: sebastian.reichel@collabora.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of sebastian.reichel@collabora.com designates
 46.235.227.227 as permitted sender) smtp.mailfrom=sebastian.reichel@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
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


--lfptqy4oqfimsjpk
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi,

On Mon, Apr 20, 2020 at 11:22:09AM +0200, Micha=C5=82 Miros=C5=82aw wrote:
> On Tue, Apr 07, 2020 at 11:13:50AM -0700, Nick Desaulniers wrote:
> > On Sat, Apr 4, 2020 at 6:53 PM kbuild test robot <lkp@intel.com> wrote:
> > >
> > > Hi "Micha=C5=82,
> > >
> > > I love your patch! Perhaps something to improve:
> > >
> > > [auto build test WARNING on power-supply/for-next]
> > > [also build test WARNING on hwmon/hwmon-next linus/master v5.6 next-2=
0200404]
> > > [if your patch is applied to the wrong git tree, please drop us a not=
e to help
> > > improve the system. BTW, we also suggest to use '--base' option to sp=
ecify the
> > > base tree in git format-patch, please see https://stackoverflow.com/a=
/37406982]
> > >
> > > url:    https://github.com/0day-ci/linux/commits/Micha-Miros-aw/exten=
sions-and-fixes/20200405-044024
> > > base:   https://git.kernel.org/pub/scm/linux/kernel/git/sre/linux-pow=
er-supply.git for-next
> > > config: x86_64-randconfig-b002-20200405 (attached as .config)
> > > compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project =
62f3a9650a9f289a07a5f480764fb655178c2334)
> > > reproduce:
> > >         wget https://raw.githubusercontent.com/intel/lkp-tests/master=
/sbin/make.cross -O ~/bin/make.cross
> > >         chmod +x ~/bin/make.cross
> > >         # save the attached .config to linux build tree
> > >         COMPILER=3Dclang make.cross ARCH=3Dx86_64
> > >
> > > If you fix the issue, kindly add following tag as appropriate
> > > Reported-by: kbuild test robot <lkp@intel.com>
> > >
> > > All warnings (new ones prefixed by >>):
> > >
> > > >> drivers/power/supply/power_supply_hwmon.o: warning: objtool: power=
_supply_hwmon_read_string() falls through to next function power_supply_hwm=
on_write()
> >=20
> > I'm guessing this is from the unreachable:
> > https://github.com/0day-ci/linux/commit/b8b2d14ca46ca54257f55c9af58ea25=
695b9ee36
> > I'll need to play with this some more as I couldn't reproduce with a
> > simplified test case, but looks like a compiler bug.  Filed
> > https://github.com/ClangBuiltLinux/linux/issues/978 for me to track.
>=20
> Hi,
>=20
> For gcc this is bug 51513 [1]. This does not affect correctness of the
> code, so I wonder if we should/need be trying to work around it.
>=20
> [1] https://gcc.gnu.org/bugzilla/show_bug.cgi?id=3D51513

Yes, we need to work around it for now. If I understand the situation
correctly, a simple workaround would be:

default:
    /*
     * unreachable, but not explicitly marked because this triggers
     * a compiler bug in gcc and llvm:
     *
     *  https://gcc.gnu.org/bugzilla/show_bug.cgi?id=3D51513
     *  https://github.com/ClangBuiltLinux/linux/issues/978
     */
    break;

-- Sebastian

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20200501124732.vxnybog3k7smj7ms%40earth.universe.

--lfptqy4oqfimsjpk
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCgAdFiEE72YNB0Y/i3JqeVQT2O7X88g7+poFAl6sGmQACgkQ2O7X88g7
+po+4A//S4DmGtEEQ79XvYCy8U8UbFFvtBOBFd15P+U9nqljpvvZ2boRi7If1ovJ
Hfh9H52NhsLxTj8NeEQoCQN2d8JBe5Wyw4ISSHICDo/oRLyUQ7jTwUaO7KRkOSDt
Bg3Y3ZryvK2/c+r2fhlQuVYbg3ADAO7oufYMXHPjbe8A2D2dU3s7Q87dPRI0f5Nn
N3eSWuX5SRTiyMBzoOGK98fRj6Sr/hWDznu9XMHfaopYOBulDnQKUGa2EIg4ntS+
0aYZ0ZvSyV9iplTtvSIR0ML8bl1YqU+iiicHeZCw6lfQW4AX9Fbe2Hw0Hfi/ihs/
AuU9CpxhlDuBsyC7dqFwxvm81WjhWz3pfwql5s+jai1ia2CBIrvJJve+A6O4ISPD
ysn6V5gFWVwHBGUNWVOJLg1uAqV3TcujrTFBgWlruIFlcEwQeeJQSN01MCmuKKRV
9dfmrpDm3BK6TVhckd1ezxM/SjdytWQ21AS3B0b2BQVZRmFYbUBK4L1s2M2meAjU
L64HIEiRYh+t5kCXrnrqaiLt7tVRtolF1Q+wTGVOxjGFwEKAzU4g5ppi0zxfizHY
9iKRLgdAN3agOPaKBHxDbusacLu/Vk4qc2b6Zso46W3Xp1N2B7fTI2JMK5o283uK
Tcitnf5waNk6YFW+/SNkZwNlL7UDM8Jhisc6li06p9pDtXR/1HQ=
=fdYN
-----END PGP SIGNATURE-----

--lfptqy4oqfimsjpk--
