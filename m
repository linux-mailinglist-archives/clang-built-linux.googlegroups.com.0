Return-Path: <clang-built-linux+bncBAABBQP4W72QKGQEIBZ4UWI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x140.google.com (mail-lf1-x140.google.com [IPv6:2a00:1450:4864:20::140])
	by mail.lfdr.de (Postfix) with ESMTPS id B5F011C28CA
	for <lists+clang-built-linux@lfdr.de>; Sun,  3 May 2020 01:12:01 +0200 (CEST)
Received: by mail-lf1-x140.google.com with SMTP id y23sf3943354lfg.23
        for <lists+clang-built-linux@lfdr.de>; Sat, 02 May 2020 16:12:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588461121; cv=pass;
        d=google.com; s=arc-20160816;
        b=QDAHKi4Mx87wMMu4jUt+uAxsjALA2FgZomwdFg+RiGZV/h5gvm8ZcaAjdNsJbfx3P5
         1PM16VRnfCDlIGcYJLUxrr4qceTGKA5D6gjCoOW3UmSLjFGlUwslanNrbJDC72qOLOFu
         xxt7cPt9+m/F6yL4unuG+Pq9FZ5dZNPpxuqHxeeuH8EGw9ROOXoFYNqnBAM3gGZ8MbTP
         x57A2kmablwbWIPYe8ARlRMkDUHeV9ix894/Q8IDDFsaal1bxbssWLGglpv7KKLatSEx
         P9G4a1teXrc/jvsXTtBD8kxX5r8zjsqyAumI/UkyHb/foLnV617lp7nbNwyQMwx7Jf76
         BQMA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=jAE5yb7n5RpGBesP8M/eInYu5AdPcgaD1vn2X31scvU=;
        b=tRQkxtagEwX9tO2rCipwj+beT7+elHwadDl7sHLnaZtrB3GRja1TxzdYJUqj+O7Dq4
         GVYFh9Q7tRko0Mt6vfW3aT4walbAkG68vvFzhPivGafTaZHJEdav0KAnJhZbEYOaJB6w
         AKIbvNG/p0n3sIexF2aEQUZRmjJ969aPDGnF8mcve2IJNMn2D4YZtZQdbWitom1OjkW5
         JGOpmiu6BuNbsNudAs3PYTTn9ra4G2Khkm+S1zQC2vyIP/qYzTQCDhbSxngYvSgyCWWK
         o0YJAil6hYIWdltKcqz0K8LDH2UB1Bn+fYRyvNpEO3KRzwlthRoqxW1vfQkZDfXf/1k8
         OVZw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@rere.qmqm.pl header.s=1 header.b=KWl5EY3t;
       spf=pass (google.com: domain of mirq-linux@rere.qmqm.pl designates 91.227.64.183 as permitted sender) smtp.mailfrom=mirq-linux@rere.qmqm.pl
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jAE5yb7n5RpGBesP8M/eInYu5AdPcgaD1vn2X31scvU=;
        b=oakJt2YzdhcZAeLaxuce4F2VD+WMOy3JoGUV+1nTSd0a/1/ngCyzIHVUa+c/jVeqqo
         Y5D41TJqEEX6YDt9TuT2zKHvnwcOro7HnOEcQPKIwKmfNKYTXnV64o5ktOjwwzSNt+FY
         oPL5fcnIVKQ6OLOAKg//24QHTpqM2hQfyo3XPQpOaxpb20s38rOdmDrW7iCpPlWdchRv
         9Ybf1gCaFCTslDM5YLA44c3LaXCROD1UPhFbExmgzK3tRKOeIDkXyjv9jVtr/O/uRsOE
         8XUOfrEDCv5qLJHlEUCmn6k1JfJuLGg8CgQDzAACxVzV1wMmF4ea6vkneaeCoDAJQzsa
         gWiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=jAE5yb7n5RpGBesP8M/eInYu5AdPcgaD1vn2X31scvU=;
        b=RtDIzGbGtyGTKiyaK5NzAH9Am5cGDZ/P+L2ZxpqEp4FOvYoiBmK+AEnPARDX32b0kZ
         2ioYP2Tu0HMXiyBlahHgEw+fP0JBv3jQWmoMWf38ZbJbUMIrrFwZXV7w9qtwP1tY5CG4
         NMGMqbpRQZeAHgeLW6iSg3+tKWtq2Q8UCCKs2q3tYnUFV8NUOYPyhc+dxbWyui2Q4JkY
         Acw8RazsinFdQ/mvQj8Y0CMbCj6Ref1bctQ1kYIpkk1usJ8CV4446knGduPlfAPs+Rgg
         rZ7rmRXfDCXNrDrkmHtYFbqYhbhGi5km3xI6rGfOS/bp2/6to2JkxkvycD1+A8OWpk9H
         ShRw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuYpTfD/VAKiYZ9rENkTRCVQNTfjYSLm/wCV5+VpA9gqsVTc4Zno
	Pc+eZKKR/780mR0xLY/WyvM=
X-Google-Smtp-Source: APiQypIjkE9aE7CvDzgqwBNAG37DvS3nekBE+yGwUCnzmP9gSxyq0axuZ4ne8Oczb7B8K/3c0K2bSg==
X-Received: by 2002:a19:d97:: with SMTP id 145mr5648064lfn.193.1588461121214;
        Sat, 02 May 2020 16:12:01 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:86cf:: with SMTP id n15ls1398882ljj.11.gmail; Sat, 02
 May 2020 16:12:00 -0700 (PDT)
X-Received: by 2002:a2e:7613:: with SMTP id r19mr6111290ljc.29.1588461120830;
        Sat, 02 May 2020 16:12:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588461120; cv=none;
        d=google.com; s=arc-20160816;
        b=XoR0itJk1Tscs9vbxF1rggHitHZtxREdKmb0ZH0m6eVh4QDoOUfz3jNc7KgdeH0aXP
         tZl/40Nd7DN0Cjj/OdLr7kx8//y88yDP+typ7WGBEr2CMbkkn4XTd5XvaW1HTBlX4KwK
         OzHBKQwGs4+w0Co4uT7elV/j63x+bosx62CwfUviy3rXdgrBNOgUPBFwP0k3o/fNCJUl
         7Ul/BDeX7rfhKW4231K9BGaBPh0vIek4TH++xZa/wqd6k4vpjiuHHiEgXKnAmELURfMs
         2dvXxFQzaz8B39oFoglpeW/OKUFxc3gEATkTAmE0p+Xdtp8QLlbJViyUBkwd2kYDtkO5
         Ljtg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=hd+rmstAUS8LlhJXdgjLFwor3ag+leg7vcqasbwmW68=;
        b=sAHuNZRSZkD7pdfWppl39g6BfOkdEwICeA6Rr6SP66k9jueMHy1nmOaNBNipJFAy9Y
         04tWiuWO9w3/M659hMOoS9SEKJ54Bdle8pznrbzlK3Wb8taqrOE/mW+b6jBJwlCWxip7
         aq2yuQyAZmdiBtYHNvqO8c+6pe+svtXliZhX/49f44awnC1EeDt0fRtiAeYE5gyakvwX
         08WEhOK1BttFhn4G8Go1tMNxcCfZL4v4ovLtsPJyjQRUN1Sfx1uYngBrL1uh0HBJehIz
         Mf2F+joaOtUT+fa9BaINQrjxRPTrok5qDFcoA/KKAJeRAWUA/e3eUkE8sMwte7tUOv+V
         gSDg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@rere.qmqm.pl header.s=1 header.b=KWl5EY3t;
       spf=pass (google.com: domain of mirq-linux@rere.qmqm.pl designates 91.227.64.183 as permitted sender) smtp.mailfrom=mirq-linux@rere.qmqm.pl
Received: from rere.qmqm.pl (rere.qmqm.pl. [91.227.64.183])
        by gmr-mx.google.com with ESMTPS id a21si466243lfr.4.2020.05.02.16.12.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 02 May 2020 16:12:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of mirq-linux@rere.qmqm.pl designates 91.227.64.183 as permitted sender) client-ip=91.227.64.183;
Received: from remote.user (localhost [127.0.0.1])
	by rere.qmqm.pl (Postfix) with ESMTPSA id 49F4dC40wyz39;
	Sun,  3 May 2020 01:11:59 +0200 (CEST)
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.102.2 at mail
Date: Sun, 3 May 2020 01:11:58 +0200
From: =?iso-8859-2?Q?Micha=B3_Miros=B3aw?= <mirq-linux@rere.qmqm.pl>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org,
	linux-pm@vger.kernel.org
Subject: Re: [PATCH v4 2/4] power: supply: core: add input voltage/current
 measurements
Message-ID: <20200502231158.GB25127@qmqm.qmqm.pl>
References: <cover.1588345420.git.mirq-linux@rere.qmqm.pl>
 <249d7ad42b02bfeb8c31c49a64ee92b3e745086d.1588345420.git.mirq-linux@rere.qmqm.pl>
 <20200502222349.tfa72nr5zunybpla@earth.universe>
 <20200502224526.GA25127@qmqm.qmqm.pl>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20200502224526.GA25127@qmqm.qmqm.pl>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: mirq-linux@rere.qmqm.pl
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@rere.qmqm.pl header.s=1 header.b=KWl5EY3t;       spf=pass
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

On Sun, May 03, 2020 at 12:45:26AM +0200, Micha=C5=82 Miros=C5=82aw wrote:
> On Sun, May 03, 2020 at 12:23:49AM +0200, Sebastian Reichel wrote:
> > On Fri, May 01, 2020 at 05:11:18PM +0200, Micha=C5=82 Miros=C5=82aw wro=
te:
[...]
> > > --- a/include/linux/power_supply.h
> > > +++ b/include/linux/power_supply.h
> > > @@ -127,7 +127,9 @@ enum power_supply_property {
> > >  	POWER_SUPPLY_PROP_CHARGE_CONTROL_LIMIT_MAX,
> > >  	POWER_SUPPLY_PROP_CHARGE_CONTROL_START_THRESHOLD, /* in percents! *=
/
> > >  	POWER_SUPPLY_PROP_CHARGE_CONTROL_END_THRESHOLD, /* in percents! */
> > > +	POWER_SUPPLY_PROP_INPUT_CURRENT_NOW,
> >=20
> > What:           /sys/class/power_supply/<supply_name>/current_avg   =20
> > Date:           May 2007
> > Contact:        linux-pm@vger.kernel.org                         =20
> > Description:                 =20
> >                 Reports an average IBUS current reading over a fixed pe=
riod.  =20
> >                 Normally devices will provide a fixed interval in which=
 they  =20
> >                 average readings to smooth out the reported value.     =
       =20
> >                                                                        =
        =20
> >                 Access: Read   =20
> >                 Valid values: Represented in microamps
> >=20
>=20
> There are two entries for /sys/class/power_supply/<supply_name>/current_a=
vg
> in the file, the other one mentions IBAT instead. "voltage_now" has the
> same problem.
[...]

So the general idea of the sysfs API seems to require separate devices for =
the
input (charger) and battery elements. Since what I'm looking at is an
integrated battery controller (bq25896) which has three connections: an USB
power (VBUS), a battery and the system load, but it creates only a single
power-class device. This is complicated by the fact that this is an OTG dev=
ice
and so it can sink or source VBUS power.

Best Regards,
Micha=C5=82 Miros=C5=82aw

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20200502231158.GB25127%40qmqm.qmqm.pl.
