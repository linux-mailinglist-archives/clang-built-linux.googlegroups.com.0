Return-Path: <clang-built-linux+bncBAABBTGT6X2AKGQEZME5FWQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x138.google.com (mail-lf1-x138.google.com [IPv6:2a00:1450:4864:20::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 3636E1B057D
	for <lists+clang-built-linux@lfdr.de>; Mon, 20 Apr 2020 11:22:21 +0200 (CEST)
Received: by mail-lf1-x138.google.com with SMTP id 66sf4012106lfa.7
        for <lists+clang-built-linux@lfdr.de>; Mon, 20 Apr 2020 02:22:21 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587374540; cv=pass;
        d=google.com; s=arc-20160816;
        b=qw7PpO6n9E7J9S6pdrQJL2Bmpyw952qrF/0IzjK3W9ibujX/VdpvWsuDFrIp+YfChs
         qpCJC8GEiE5cZkzO5LW8LBtuwsKWXSxk9gRsz16bQFRlfHl4RqDYGnXPYxd4GNiC0g3u
         B0RkCAWQ893RzC1kWTaDqgGU+6nYJcJ8jcgnJg/3C/Z/nWqoYfG/5W5KEcBkJto53mos
         IN0HrahMprJleL8QgFGA+tennS22EUTzfu6nuL4nzxQNV930gt9++v1vDqJhXgk23eC1
         Rg10XsXn+xB5v3jvFm0nMBuXNxyDxaxQNALDQiOGyEweiIX/wOx8QY2IdRHIGGe4oDDY
         QWJw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=6YOC8LOIBqVl2Pe1OJuPQnmAgfyRmjFlkZn3FzuRlFg=;
        b=zHWM5AdXYJdB9VROY8X/b+you1UkWuhvbVmUmGQqW9iy6ZS2zLRCtQB0RVhW1P/Ie9
         srH4muO2OF+pTUbUCakQsQcTJiDGIFkN3rVbVpaeakM760MMZBK+dkpAFhjtfUxl8d0s
         0EBZAb1JvU8VtVmBFALaUdA40U3sljU6gxq+4qkv0Th5unvqmb9lFpldcEvc9CENbK82
         jfBcLrmyEBZ8Ebyeo8HiB6aYsA0rI0lmaq6LWDJ5qr0nFLry3Wn5PU5KhKpR/VE2QT7Q
         GMlThYwNtcSHLTx3+MkilKN50bY7fJMgYcbr9sPMRsl3aa3ThsYzJbDGepfp8n1nCMyp
         vAtA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@rere.qmqm.pl header.s=1 header.b=cwsjvCbu;
       spf=pass (google.com: domain of mirq-linux@rere.qmqm.pl designates 91.227.64.183 as permitted sender) smtp.mailfrom=mirq-linux@rere.qmqm.pl
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6YOC8LOIBqVl2Pe1OJuPQnmAgfyRmjFlkZn3FzuRlFg=;
        b=iK5+skd0Jkwxz0ZJ1SXcx2Pv4JYy3E4UZSP0nzIW/0zuwWo9P+wiKSazEQyVU/cVKz
         iOyJeopDmQBP3W0u/Jd0upcHf+0yk5KkxHf3e8JiZSLckwwvuLkZh0n1+gOK7vJzu8qU
         DEGiWerPLl8wMTHj1lYT3aIsLFDXWUDxOs4yo2hU4r11Hw4NYFBjEazKL/miu5w8XYgr
         4r70gI6xe9qcHVsAz9ooAaBC3HZkjFStO4pGB/88IAJd7khxHMAqA6SZ/gLRlNzIPsWb
         QWZo+DF2/nNMNZpEvOdHRmFXuDEZueMYHB+JWeX7KDl6FOLsxWawkEVwK6JFLEMpKQ3/
         cSTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6YOC8LOIBqVl2Pe1OJuPQnmAgfyRmjFlkZn3FzuRlFg=;
        b=m+dcX9aZzk0HoNV9TwlGcYRGdxYinBv243YKyi3VOWj1LdVuhhJh0DJO1pqCb0HuOJ
         VSEPNI4ZmwwG6b5cPOvtk0VNF4ph93JqEStJ5E20VAgPKmp8S5P4l6zg8iEQFIqqeaFQ
         5A3rQYU1gup35YPjH9NQ4A2zOzpFCSmh2UCspzJhQ/bU/GUIkIjmXgBXCHU8TPbY4b5W
         YKh3e9JTTOVAXNy1GReauqcFxsk66dHCqEHRYsWORHYY52BFaj5XXRGmGkp+xi9IjqJM
         Fm24QYcv3UisAgVLFMxCXpVk0KB6tDmuxRupUOirak2siFB4YQRHpcMqvZqsR/kgQsCR
         TTsA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0Pubo3x5SBtbT0KzIEb43DQs5yzUoVK5fnTnKk/Wr8i5Ux1FdH36k
	6dVNmg9ksXHsoqvZpLWsGXE=
X-Google-Smtp-Source: APiQypI7eDlEfyyhn9/CqtQ6fj/OvHG3snvNKzgeHozVSjslXGRa/miDSZvltDqkOu+VC80FxDnfqA==
X-Received: by 2002:a2e:9e97:: with SMTP id f23mr7994752ljk.228.1587374540710;
        Mon, 20 Apr 2020 02:22:20 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:89c8:: with SMTP id c8ls1876854ljk.7.gmail; Mon, 20 Apr
 2020 02:22:20 -0700 (PDT)
X-Received: by 2002:a2e:b0ca:: with SMTP id g10mr9779257ljl.169.1587374540314;
        Mon, 20 Apr 2020 02:22:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587374540; cv=none;
        d=google.com; s=arc-20160816;
        b=eMno0uwCCqk0PIvTY9ft5bh/NobJm7MUOZljO7fZ7+cqIPy3AuKF3CJnN57/0Kk0A9
         jQXU5GspelmX+oU98iqWQ++spD8ybBIzUHSQ3pIPQjDibARly2rTHFO6D8oJ5450jita
         odEmtxtaS2XTh8KV3DR75Mw4c6qNpheHJZX6FuTtT2G379XNAlNIAqz1ifYEzF2ZNc7L
         c9FfD18BEfaynUb0xaEq5jwfMdSqoW+AVFkVAyx6t18cnnrSNsA9j+UGpsp6wzVha6yR
         TgnUh61fpUqsm5EfLEqSHvtD4AHdBLynxln4bMQnvZGOm9sq/MgT7baM7aNnztdI3KDy
         941w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=fj6FNUuGv6xe9mP/G7M2fiyamFv5FV99xo0ZgtmBumI=;
        b=yYOJ9mRXmIQKcdT7yg8dpbZXPF1RvWoYRQ+zNa8FG6bG6eFjk10qoskTS28ukLl8+q
         Jr8pfp4411bxZZVPuM1HhgO+lphC9XYR3GJUDtyQgQc0WfRZtMBiPDmXgUi6p8UwOg7B
         hsJD9mT0JBhE7AhP0czhHxaeeKrdvFoZCKKFswRLpoHK/i2/uRuEpvS29MWZmkjkYP+q
         G9j0cjkDcqpBOtusyKfPRxurkSGpERiBppRG7pwBfY0jR9c+0S9OQYzaRhgxAjUq6ZJL
         Rl+yKQ5P5MwlFCA4ichBrGl/oW6PRHXcJOpL8GDGz+mylpe066hprkXX2NoJLwjSNcqE
         06Rg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@rere.qmqm.pl header.s=1 header.b=cwsjvCbu;
       spf=pass (google.com: domain of mirq-linux@rere.qmqm.pl designates 91.227.64.183 as permitted sender) smtp.mailfrom=mirq-linux@rere.qmqm.pl
Received: from rere.qmqm.pl (rere.qmqm.pl. [91.227.64.183])
        by gmr-mx.google.com with ESMTPS id q24si51502ljg.4.2020.04.20.02.22.20
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Apr 2020 02:22:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of mirq-linux@rere.qmqm.pl designates 91.227.64.183 as permitted sender) client-ip=91.227.64.183;
Received: from remote.user (localhost [127.0.0.1])
	by rere.qmqm.pl (Postfix) with ESMTPSA id 495LnK5hkRz8L;
	Mon, 20 Apr 2020 11:22:13 +0200 (CEST)
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.102.2 at mail
Date: Mon, 20 Apr 2020 11:22:09 +0200
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
Message-ID: <20200420092209.GA25831@qmqm.qmqm.pl>
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
 header.i=@rere.qmqm.pl header.s=1 header.b=cwsjvCbu;       spf=pass
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

Hi,

For gcc this is bug 51513 [1]. This does not affect correctness of the
code, so I wonder if we should/need be trying to work around it.

[1] https://gcc.gnu.org/bugzilla/show_bug.cgi?id=3D51513

Best Regards,
Micha=C5=82 Miros=C5=82aw

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20200420092209.GA25831%40qmqm.qmqm.pl.
