Return-Path: <clang-built-linux+bncBD4NDKWHQYDRB5XCVHWAKGQE4A2KM6Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x43c.google.com (mail-wr1-x43c.google.com [IPv6:2a00:1450:4864:20::43c])
	by mail.lfdr.de (Postfix) with ESMTPS id 926B4BD2E6
	for <lists+clang-built-linux@lfdr.de>; Tue, 24 Sep 2019 21:41:42 +0200 (CEST)
Received: by mail-wr1-x43c.google.com with SMTP id j3sf1046767wrn.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 24 Sep 2019 12:41:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569354102; cv=pass;
        d=google.com; s=arc-20160816;
        b=XuEXVM/H0ZPWCd2LWIhxBReTw5kQzOI8YW9HswRrViBDyT30exFXfM/5NEejPVh6Gg
         sfArd+lnu8Q97GeJY2CT0Am74O/d09SZqG4pUcAYO82e1zodzFApp0bkfrD3dCxR/q+v
         4bsWVo9o1gx7mRxCEz5pfSzoQ+jPtKP8524K+/YTN8FEZ1CrK2CFZq6J4gc7WiTfMDt0
         XbuDQdnIidp5BpkpdRlqheXgm37eCQfz3PoKDD/CW7breB4ddD7hx+/Md9UgnJvht3fU
         gjKX6+jR2309ZmRk4JPDXPkYhAkE+Le+HtrzSTGoi5DcMXFTeikepRo0jGcUzLZ3jzN1
         L9oA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature
         :dkim-signature;
        bh=H8rBJuGFRALSprhcAiD7GhSb+sTF8Tmfx1h4PNUqe+k=;
        b=MYF9PGyzt2GX2+H5qnQVl5KoN9UAfc8/GV0jUahGJhQcBKgizYVK1EjLNZYbTjV7fP
         O/Sep0a6MtVEU0ZBvRBOI4WS8Wm1U/5Gtd9LGAhPnLcRhC2SayR0t8g4h0ZL08Pkaj+B
         jlWJO5kbKQ+ptYQhRrN2N3z0azhLUs4/Kyu/zLF8F87ZXJ3Hkny3n5PGhMwbVz3PXY58
         AYDP1oqyJVouq3kRiAoYfoo/Uf96nANbuDVww7lNR2Pw+wxhuBBwgyvBz2SH1Oqz6eCU
         1w/fPp0fAq1s6xcUadbNJR91J1XD6rOJ33Ify6fTg9tTS+5d+BqKyk4oBk3O56LkFZgU
         ojvA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CY37DBXd;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=H8rBJuGFRALSprhcAiD7GhSb+sTF8Tmfx1h4PNUqe+k=;
        b=UghPIXhG36YVcU5nhl3ALLhOK6bpopqQBavOhVYa/b1Cxmx7i5jpiKIDjw4hKmNNXb
         dArSiKUNhaMVhIWHTEHkJ42uCGlUjBxEsLH2iZGX2RbRjP/BEvFK3OTGTrSleWk2/RqO
         escgZUnPgU8tvJGmZJHA68AtbGkqandcbjwVhQpMRZ29TAhDHe3bI8Qq4eBhbddSdJyL
         l/b6M+dKReYW410nbGFRYNliXwTJl03SeTFsk2zfY+e/4nauOkKQQI7gKvGiTq3s8UzP
         gHy51P4Dkd0ah4HYo/nnJZjVdUbR/awAup3B1kXW2wy+1fDg8F8oW8MSpnjgaL5niq1T
         WW5Q==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=H8rBJuGFRALSprhcAiD7GhSb+sTF8Tmfx1h4PNUqe+k=;
        b=MQZ0M7z4eboikWkr1uMwNZdVYa7J6Mz7pLdVcVLpFWdwuDQmiYIRnQBTqxSjIrrdLX
         /xoYtUF2m5aZ8fYLi0BM2+jxBZyty2BaY6nkP/JqQmEiybX5b9DUQT3iTiDf1L4E+/K4
         9TzLlWWHKCKq4/msfsOcQ8b4pg+QjFSn6WLS4/OQfUW7w1wwe5nBJAECHUTQ3Ez4caT0
         ntYw0orid0zHMPBSQ0945S9nfeUW32EECo5a9pKkj9Os1yAVeE7AFdmexLH8HM4ghmhb
         s8yuhhcBFJ6loiP8ezVxq+JG8YO4LfUHRB4eSVD+rgfHFjee4WPUbJY5W3Ahl1r6s7lP
         6E+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=H8rBJuGFRALSprhcAiD7GhSb+sTF8Tmfx1h4PNUqe+k=;
        b=KUfhCkurHahqCmY95y7kzlwnMfIYSxdRW/lesOZNTth1hI7y3mC0XZAEfa134NjG2A
         Q4ybPKWxoN3OFwcW/g8Hsmv12syUtpgl58MFiYixIhgsboG5CrpekQ7b/K7TjldIJFif
         5FCcncLwIzYpzhRwTbePmPegyb2MPutfBMrbe51gzg3TdOUhCQfxQcl4Pw4SB6zAqZxA
         Kz6hZjkdLCZ7ZXmvnXW/V1XD1RU+3D+6535jr78m8n2UAPgwb3O8w1pMaVUeL5fHM86B
         gHSppfLLRlh/5NweKzsz2gLQqlICNefcv7Sw47w55yDOUf22h2BD/8Xqncx//7y3I1h5
         KChQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUv0GCeDMtJVU758JMklvh0AchWEHCV1WmOzzyGz8XyhST92x6V
	rORx3t0FwjeqVYdAklF9HZE=
X-Google-Smtp-Source: APXvYqwu+iSnNmq/Hq/Dn2WJPbrxrmy5SmZBUPNEjAilTpaBy4/d/DVOGp93Gy+j819zoqY2Zi2+Fg==
X-Received: by 2002:adf:e7c4:: with SMTP id e4mr4489402wrn.62.1569354102215;
        Tue, 24 Sep 2019 12:41:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:a318:: with SMTP id c24ls1027065wrb.2.gmail; Tue, 24 Sep
 2019 12:41:41 -0700 (PDT)
X-Received: by 2002:a5d:6411:: with SMTP id z17mr4422258wru.274.1569354101771;
        Tue, 24 Sep 2019 12:41:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569354101; cv=none;
        d=google.com; s=arc-20160816;
        b=JdwEIqM8ByEuV4GkftdlqVoTHfxnZbxsEeX82sAjLQYGmx3mEXptawkXQSvS6YSvK5
         wUkQyiy9m1zSYigvpEVmWaEySlfOw/F+gG8fz5966a3hLMbWWjOWE8pzIHJFb+GuB7jI
         2Laos00x3F5UKtdG0MZCAGpdIXcDRbpx7F7t+vMmmTUR3taU8oyQOj98EWVjQKw2dwvc
         Nz89lsQgDprXWukETNIjTjhvj2lIZ5m73+UtA8RJDtHRn+aaxiwu6oWtf5iP4IcTP6yL
         /Ai0JaBwcSD6yC9v2CWiO2qhHF8qoJLSEJUnn2yUdBy1cBf7pWBZeP8T4lV8RjruWPaH
         p5yw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=XhC3wq4vnz9dCrPPtANW7Gd6kr94sSY1a0mgkc8r4EQ=;
        b=CKGwPqLfZAsKov39WfpNSagl7F8UEvLyPz2FL8oXe6jaeFUgIOdpbx1q6bFaOASkvY
         tPb38PbHqfFUKsLtFzDaV0ybKhzGn5JQiwyTFtooQBmWM4MgVEzFkUhKYtAXGWJyTz1D
         PVmdpiF0QGBqTi7Kl8tPfvUBik5LSG6Lp3a7YDDNYiTwox2jyOPQCddXDPGVOsWukAAI
         uFZh7eJ4mEfkN8zIBsFK1dsL6+8oM6+ts51eFRy3j3ZIF0h6taj03eM8bPelPz5X2tNH
         BdqqTW366YLywS8cgeIB8R4484SY0sU/j9SAGLH8xv/7DYFKbX+TjUHv6BN9exsNxJ4l
         1HjA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=CY37DBXd;
       spf=pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com. [2a00:1450:4864:20::343])
        by gmr-mx.google.com with ESMTPS id t15si168310wrs.3.2019.09.24.12.41.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Sep 2019 12:41:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of natechancellor@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) client-ip=2a00:1450:4864:20::343;
Received: by mail-wm1-x343.google.com with SMTP id r19so40615wmh.2
        for <clang-built-linux@googlegroups.com>; Tue, 24 Sep 2019 12:41:41 -0700 (PDT)
X-Received: by 2002:a7b:c92d:: with SMTP id h13mr2042376wml.169.1569354101320;
        Tue, 24 Sep 2019 12:41:41 -0700 (PDT)
Received: from archlinux-threadripper ([2a01:4f8:222:2f1b::2])
        by smtp.gmail.com with ESMTPSA id h9sm1792281wrv.30.2019.09.24.12.41.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Sep 2019 12:41:40 -0700 (PDT)
Date: Tue, 24 Sep 2019 12:41:39 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Guenter Roeck <linux@roeck-us.net>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	jdelvare@suse.com,
	Tomasz =?utf-8?B?UGF3ZcWC?= Gajc <tpgxyz@gmail.com>,
	Henrik Rydberg <rydberg@bitmath.org>, linux-hwmon@vger.kernel.org,
	LKML <linux-kernel@vger.kernel.org>
Subject: Re: [PATCH v2] hwmon: (applesmc) fix UB and udelay overflow
Message-ID: <20190924194139.GA3597785@archlinux-threadripper>
References: <CAKwvOd=GVdHhsdHOMpuhEKkWMssW37keqX5c59+6fiEgLs+Q1g@mail.gmail.com>
 <20190924174728.201464-1-ndesaulniers@google.com>
 <20190924183827.GA2800937@archlinux-threadripper>
 <CAKwvOdmVfyhG85BHdaHgc23RuRkJJnvd2bLUEzNNpZDuqJ79mw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <CAKwvOdmVfyhG85BHdaHgc23RuRkJJnvd2bLUEzNNpZDuqJ79mw@mail.gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
X-Original-Sender: natechancellor@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=CY37DBXd;       spf=pass
 (google.com: domain of natechancellor@gmail.com designates
 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=natechancellor@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
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

On Tue, Sep 24, 2019 at 12:36:44PM -0700, Nick Desaulniers wrote:
> On Tue, Sep 24, 2019 at 11:38 AM Nathan Chancellor
> <natechancellor@gmail.com> wrote:
> >
> > On Tue, Sep 24, 2019 at 10:47:28AM -0700, Nick Desaulniers wrote:
> > > Fixes the following 2 issues in the driver:
> > > 1. Left shifting a signed integer is undefined behavior. Unsigned
> > >    integral types should be used for bitwise operations.
> > > 2. The delay scales from 0x0010 to 0x20000 by powers of 2, but udelay
> > >    will result in a linkage failure when given a constant that's grea=
ter
> > >    than 20000 (0x4E20). Agressive loop unrolling can fully unroll the
> > >    loop, resulting in later iterations overflowing the call to udelay=
.
> > >
> > > 2 is fixed via splitting the loop in two, iterating the first up to t=
he
> > > point where udelay would overflow, then switching to mdelay, as
> > > suggested in Documentation/timers/timers-howto.rst.
> > >
> > > Reported-by: Tomasz Pawe=C5=82 Gajc <tpgxyz@gmail.com>
> > > Link: https://github.com/ClangBuiltLinux/linux/issues/678
> > > Debugged-by: Nathan Chancellor <natechancellor@gmail.com>
> > > Signed-off-by: Nick Desaulniers <ndesaulniers@google.com>
> > > ---
> > > Changes V1 -> V2:
> > > * The first loop in send_byte() needs to break out on the same condit=
ion
> > >   now. Technically, the loop condition could even be removed. The dif=
f
> > >   looks funny because of the duplicated logic between existing and ne=
wly
> > >   added for loops.
> > >
> > >  drivers/hwmon/applesmc.c | 35 +++++++++++++++++++++++++++++++----
> > >  1 file changed, 31 insertions(+), 4 deletions(-)
> > >
> > > diff --git a/drivers/hwmon/applesmc.c b/drivers/hwmon/applesmc.c
> > > index 183ff3d25129..c76adb504dff 100644
> > > --- a/drivers/hwmon/applesmc.c
> > > +++ b/drivers/hwmon/applesmc.c
> > > @@ -46,6 +46,7 @@
> > >  #define APPLESMC_MIN_WAIT    0x0010
> > >  #define APPLESMC_RETRY_WAIT  0x0100
> > >  #define APPLESMC_MAX_WAIT    0x20000
> > > +#define APPLESMC_UDELAY_MAX  20000
> > >
> > >  #define APPLESMC_READ_CMD    0x10
> > >  #define APPLESMC_WRITE_CMD   0x11
> > > @@ -157,14 +158,23 @@ static struct workqueue_struct *applesmc_led_wq=
;
> > >  static int wait_read(void)
> > >  {
> > >       u8 status;
> > > -     int us;
> > > -     for (us =3D APPLESMC_MIN_WAIT; us < APPLESMC_MAX_WAIT; us <<=3D=
 1) {
> > > +     unsigned int us;
> > > +
> > > +     for (us =3D APPLESMC_MIN_WAIT; us < APPLESMC_UDELAY_MAX; us <<=
=3D 1) {
> > >               udelay(us);
> > >               status =3D inb(APPLESMC_CMD_PORT);
> > >               /* read: wait for smc to settle */
> > >               if (status & 0x01)
> > >                       return 0;
> > >       }
> > > +     /* switch to mdelay for longer sleeps */
> > > +     for (; us < APPLESMC_MAX_WAIT; us <<=3D 1) {
> > > +             mdelay(us);
> > > +             status =3D inb(APPLESMC_CMD_PORT);
> > > +             /* read: wait for smc to settle */
> > > +             if (status & 0x01)
> > > +                     return 0;
> > > +     }
> > >
> > >       pr_warn("wait_read() fail: 0x%02x\n", status);
> > >       return -EIO;
> > > @@ -177,10 +187,10 @@ static int wait_read(void)
> > >  static int send_byte(u8 cmd, u16 port)
> > >  {
> > >       u8 status;
> > > -     int us;
> > > +     unsigned int us;
> > >
> > >       outb(cmd, port);
> > > -     for (us =3D APPLESMC_MIN_WAIT; us < APPLESMC_MAX_WAIT; us <<=3D=
 1) {
> > > +     for (us =3D APPLESMC_MIN_WAIT; us < APPLESMC_UDELAY_MAX; us <<=
=3D 1) {
> > >               udelay(us);
> > >               status =3D inb(APPLESMC_CMD_PORT);
> > >               /* write: wait for smc to settle */
> > > @@ -190,6 +200,23 @@ static int send_byte(u8 cmd, u16 port)
> > >               if (status & 0x04)
> > >                       return 0;
> > >               /* timeout: give up */
> > > +             if (us << 1 =3D=3D APPLESMC_UDELAY_MAX)
> > > +                     break;
> > > +             /* busy: long wait and resend */
> > > +             udelay(APPLESMC_RETRY_WAIT);
> > > +             outb(cmd, port);
> > > +     }
> > > +     /* switch to mdelay for longer sleeps */
> > > +     for (; us < APPLESMC_MAX_WAIT; us <<=3D 1) {
> > > +             mdelay(us);
> > > +             status =3D inb(APPLESMC_CMD_PORT);
> > > +             /* write: wait for smc to settle */
> > > +             if (status & 0x02)
> > > +                     continue;
> > > +             /* ready: cmd accepted, return */
> > > +             if (status & 0x04)
> > > +                     return 0;
> > > +             /* timeout: give up */
> > >               if (us << 1 =3D=3D APPLESMC_MAX_WAIT)
> > >                       break;
> > >               /* busy: long wait and resend */
> > > --
> > > 2.23.0.351.gc4317032e6-goog
> > >
> >
> > This resolves the __bad_udelay appearance at -O3 for me. I am not
> > familiar enough with this code to give a reviewed by though!
>=20
> Does that constitute a Tested-by tag?

Given that this could have real implications for the hardware, I would
think tested by would imply running this on said hardware. FWIW:

Build-tested-by: Nathan Chancellor <natechancellor@gmail.com>

> >
> > Also, for some odd reason, I couldn't apply your patch with 'git apply'=
:
> >
> > % curl -LSs https://lore.kernel.org/lkml/20190924174728.201464-1-ndesau=
lniers@google.com/raw | git apply
> > error: corrupt patch at line 117
> >
> > It looks like some of the '=3D' got changed into =3D3D and some spaces =
got
> > changed into =3D20. Weird encoding glitch?
>=20
> The text in my email client shows no encoding error; the link above
> shows the issue.  Attaching a copy here, in case git-send-email
> related.

Yes, appears git send-email related because your attached patch applies
just fine.

Cheers,
Nathan

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20190924194139.GA3597785%40archlinux-threadripper.
