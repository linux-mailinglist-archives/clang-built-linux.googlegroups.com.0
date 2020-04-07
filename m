Return-Path: <clang-built-linux+bncBAABBW5VWP2AKGQEN77GDGA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83e.google.com (mail-qt1-x83e.google.com [IPv6:2607:f8b0:4864:20::83e])
	by mail.lfdr.de (Postfix) with ESMTPS id 504841A164B
	for <lists+clang-built-linux@lfdr.de>; Tue,  7 Apr 2020 21:56:13 +0200 (CEST)
Received: by mail-qt1-x83e.google.com with SMTP id k46sf4190497qta.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 07 Apr 2020 12:56:13 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1586289372; cv=pass;
        d=google.com; s=arc-20160816;
        b=bod4FZrL7sxYTN+m9iP4X2wQ+Qo9eMu3sl4YMfg/ipkDMuPms3/jt4eDB8JW0u4Yen
         00UeN52AWfswctr7HGJfvQaLzl43dRawcn9Qk1Y+rfVSKWIhwoEOlidUoe5Z9s8cZEpj
         NDvIeDm8fbPliKIcCwfCQsCDaJitAh45giA+iwe0nI7ahJqRdHMU3TgGvGvhabc5XPBU
         KdE/nDbWvdPK9kDaw+0V0CO7FzDtRT7B3OoQdRXI5WH2F1BoGg6OtZsiem31kMdkmMVF
         hsbOh26XQccnSI/rGxta6zg3N86gTYjiBQvZUfwgqV+SUx2G3OabHVaBHO1yQOOpGD7F
         Qzmg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=T8sE2uRwTVle2zxFIpCwTcEQyWHt8CQ3siaD5nuLLls=;
        b=BiSyd/Cwzm31SywYVFlMGAK3mJ6VwdpeYOkAOzOldddsIyL0SSisgSOZrSCuxMRCSM
         jkOkb6407zypSl1CUSa3l3Rz1mT3MRZ+POcDbwmUGcG2A5GuG3tGOPC+n/5KXcqcdFzM
         qbzAxPkGlhhaQIC5otkMZOX5WDOQONs0ayE2sdNG5N4o6K8v4yPilexzd5ShAT6K654M
         ilM+pt34D1/hJxkFMbBejWf1XmaJchun96nk1eZ7m0gtqoqiPsyLL3xBI8vSkusnxixM
         9FBzIMUevx8d0u2wrVNnsLHsZxrS8SsdizhM89bRrCxd172y/Lb2JCUR+9Cgua9vYV9S
         n9KQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@rere.qmqm.pl header.s=1 header.b=FcFLZuaX;
       spf=pass (google.com: domain of mirq-linux@rere.qmqm.pl designates 91.227.64.183 as permitted sender) smtp.mailfrom=mirq-linux@rere.qmqm.pl
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=T8sE2uRwTVle2zxFIpCwTcEQyWHt8CQ3siaD5nuLLls=;
        b=dBLOk7fcMJRT1bqyS/kDypzqBlYerb6YczNIW6+GCBZTKU9P5wvEJGjefleHP1OXhR
         bDv53jdKRp5oDsXrBkXpHrfACE4JW3AAB6+NR8uwdm0ZZLNWKpj9n9jRD01DYhmXPK1v
         gz6x+HqWEwsCMEVjV46NBaWzk5m7qRPZWXdfj9Wuwdfzs4PqM1S9dV3KIj8/h3dWiUM7
         d57kDYzV++usVhsI5Rr24+CMjZMw7V89u/OjkRWsbeaJQDmp5iV+/oRp9P21WkbHUOZV
         xdmYhzfoR/X6l2oArfpwGtJ8nF3bw2jFiNy8keLeKq4+zyax5LjM1QiXsyXUbJImvfNO
         pcFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=T8sE2uRwTVle2zxFIpCwTcEQyWHt8CQ3siaD5nuLLls=;
        b=DhyJyUgXIbK1Ai+Apz6ev/BAo8MC/AF4WQEtAn/pkRXlGJunQwMBB73HGeWJwt5MhP
         56TYM8Pa2CLXONSS4wHRqvCtttTn8+jmn7WpV13we2hK1yQHbcMjG4aed2bk+sDGK/Lg
         EkAdTwZ3mMJdnnFB+LpJzbbaqDWygOOhKd6JU6037KyUFozUg13/kHL4JZ7NZsQ5YHPc
         YFpJDwkT10V77A5AoZD2ZNOGe/ol6CO8YwFpjtJN5kbGKlHMdla15mHphxHntZF+asfZ
         EJKll13qyVgzoZwkK5v29VcEwAbcE/43X9nruyIo+OgLiHqcxhY/NmkgTr/aYNjfk/y8
         fPRQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuYWGQjF2TUQm65r7+6KYlC5Vcwhae1vWxypzIVUrqYGLF1aUOGe
	4OnQ+EvJ3Mi+LwfOwp3Rq3o=
X-Google-Smtp-Source: APiQypIntR0o66KqwpwTogV8r61qyr+n/2TQwu1h3Ya9EsyGMYcdYGAk4BBa3xf7U2Z20HtIM4wcZQ==
X-Received: by 2002:ac8:24a7:: with SMTP id s36mr4101759qts.357.1586289371982;
        Tue, 07 Apr 2020 12:56:11 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aed:32c5:: with SMTP id z63ls1283024qtd.3.gmail; Tue, 07 Apr
 2020 12:56:11 -0700 (PDT)
X-Received: by 2002:a7b:cd89:: with SMTP id y9mr1002446wmj.102.1586289370966;
        Tue, 07 Apr 2020 12:56:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1586289370; cv=none;
        d=google.com; s=arc-20160816;
        b=dXzlOCGOcQQZNqCbJsFrDmhut7OIxxsF7vginnX+mr6EbdGrpFG16ft4B71fo/gFNP
         hJCmEMHmfP+2MMj5dx6UHSAJCPALRnt3IM00F+pPR/Pj3ss7iD1l3XUTVetMufIs8UIe
         xXr35LP5jWV31PsAVzs5Kj3AB4CiayASFjiYliuXkYDbHzdH5VLiB4kilpQ9Z6Q1XCpX
         eiz6jQdR4dQQ2oEys1Ls0C//IzWkUssU5vBmCp2px4JwM/hY44rntszZt6kbeYEBhy8K
         I+mzFrKPAmuh5KCu9VIL8huFM14acgd7xvzcFsv8I4IfPav6q4yJ3XHX0sBoGSsK9/u5
         RAIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=s+h7tDi46npWHrF0dLf6i5drcuED+ZIsGjlKoGWlkLM=;
        b=R5Zl/nFStIHeH1BJ0V1vbEASXQ8lv5i8Qcqzv7Hd//H8V3JJ6fBWV+AV0ghbz4mKe4
         mhN7An6oIKHjVpVtnN31oyAiY/lolLHMOhIIs7FU0klTrTB8pG5DjBx143vAAopgyb7W
         wqKcykWSps4K8qHpB+KqHBlduAHipSTnRpBP9595NwK8Y3G0vsvOPmFbaIYL/8e5u0ZN
         sTUTvFqjFMq52ZA2KectRsZoc3DngjHV2ST8MTxwpXptV4Qy3208AKB/XcYlN7utMp3r
         XHPT+R0dHzlaCM1TMHeXVNCTFEh+nIXaaNYPdlgQg97Raalg7cPWWsMH12zu97xshE6a
         o6FA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@rere.qmqm.pl header.s=1 header.b=FcFLZuaX;
       spf=pass (google.com: domain of mirq-linux@rere.qmqm.pl designates 91.227.64.183 as permitted sender) smtp.mailfrom=mirq-linux@rere.qmqm.pl
Received: from rere.qmqm.pl (rere.qmqm.pl. [91.227.64.183])
        by gmr-mx.google.com with ESMTPS id u16si246689wmd.2.2020.04.07.12.56.10
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Apr 2020 12:56:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of mirq-linux@rere.qmqm.pl designates 91.227.64.183 as permitted sender) client-ip=91.227.64.183;
Received: from remote.user (localhost [127.0.0.1])
	by rere.qmqm.pl (Postfix) with ESMTPSA id 48xdSl2pFCzGL;
	Tue,  7 Apr 2020 21:56:07 +0200 (CEST)
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.102.2 at mail
Date: Tue, 7 Apr 2020 21:55:46 +0200
From: =?iso-8859-2?Q?Micha=B3_Miros=B3aw?= <mirq-linux@rere.qmqm.pl>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: kbuild test robot <lkp@intel.com>, kbuild-all@lists.01.org,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Andrey Smirnov <andrew.smirnov@gmail.com>,
	Guenter Roeck <linux@roeck-us.net>,
	Sebastian Reichel <sebastian.reichel@collabora.com>,
	LKML <linux-kernel@vger.kernel.org>, linux-pm@vger.kernel.org
Subject: Re: [PATCH v3 07/11] power: supply: core: tabularize HWMON
 temperature labels
Message-ID: <20200407195546.GA744@qmqm.qmqm.pl>
References: <29b5043db9a51ef7a0cb6e3a8c69c91e36045cd6.1585944770.git.mirq-linux@rere.qmqm.pl>
 <202004050928.d6QhVcsQ%lkp@intel.com>
 <CAKwvOdm5BhMdAmXR0gCLntkbvF7ajaNoWoHVCCio1CqbGzS6aQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <CAKwvOdm5BhMdAmXR0gCLntkbvF7ajaNoWoHVCCio1CqbGzS6aQ@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: mirq-linux@rere.qmqm.pl
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@rere.qmqm.pl header.s=1 header.b=FcFLZuaX;       spf=pass
 (google.com: domain of mirq-linux@rere.qmqm.pl designates 91.227.64.183 as
 permitted sender) smtp.mailfrom=mirq-linux@rere.qmqm.pl
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

On Tue, Apr 07, 2020 at 11:13:50AM -0700, Nick Desaulniers wrote:
> On Sat, Apr 4, 2020 at 6:53 PM kbuild test robot <lkp@intel.com> wrote:
> >
> > Hi "Micha=C5=82,
> >
> > I love your patch! Perhaps something to improve:
> >
> > [auto build test WARNING on power-supply/for-next]
> > [also build test WARNING on hwmon/hwmon-next linus/master v5.6 next-202=
00404]
> > [if your patch is applied to the wrong git tree, please drop us a note =
to help
> > improve the system. BTW, we also suggest to use '--base' option to spec=
ify the
> > base tree in git format-patch, please see https://stackoverflow.com/a/3=
7406982]
> >
> > url:    https://github.com/0day-ci/linux/commits/Micha-Miros-aw/extensi=
ons-and-fixes/20200405-044024
> > base:   https://git.kernel.org/pub/scm/linux/kernel/git/sre/linux-power=
-supply.git for-next
> > config: x86_64-randconfig-b002-20200405 (attached as .config)
> > compiler: clang version 11.0.0 (https://github.com/llvm/llvm-project 62=
f3a9650a9f289a07a5f480764fb655178c2334)
> > reproduce:
> >         wget https://raw.githubusercontent.com/intel/lkp-tests/master/s=
bin/make.cross -O ~/bin/make.cross
> >         chmod +x ~/bin/make.cross
> >         # save the attached .config to linux build tree
> >         COMPILER=3Dclang make.cross ARCH=3Dx86_64
> >
> > If you fix the issue, kindly add following tag as appropriate
> > Reported-by: kbuild test robot <lkp@intel.com>
> >
> > All warnings (new ones prefixed by >>):
> >
> > >> drivers/power/supply/power_supply_hwmon.o: warning: objtool: power_s=
upply_hwmon_read_string() falls through to next function power_supply_hwmon=
_write()
>=20
> I'm guessing this is from the unreachable:
> https://github.com/0day-ci/linux/commit/b8b2d14ca46ca54257f55c9af58ea2569=
5b9ee36
> I'll need to play with this some more as I couldn't reproduce with a
> simplified test case, but looks like a compiler bug.  Filed
> https://github.com/ClangBuiltLinux/linux/issues/978 for me to track.

Hi Nick,

Just guessing: have you tried adding another unrelated function to the
testcase? I would expect that 'fall through to next function' needs
some other function to match.

Best Regards,
Micha=C5=82 Miros=C5=82aw

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20200407195546.GA744%40qmqm.qmqm.pl.
