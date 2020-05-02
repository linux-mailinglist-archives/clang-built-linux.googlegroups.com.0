Return-Path: <clang-built-linux+bncBAABBCPQW72QKGQEPCHG46Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ej1-x638.google.com (mail-ej1-x638.google.com [IPv6:2a00:1450:4864:20::638])
	by mail.lfdr.de (Postfix) with ESMTPS id 127F51C289D
	for <lists+clang-built-linux@lfdr.de>; Sun,  3 May 2020 00:45:30 +0200 (CEST)
Received: by mail-ej1-x638.google.com with SMTP id c9sf6599806ejr.16
        for <lists+clang-built-linux@lfdr.de>; Sat, 02 May 2020 15:45:30 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1588459529; cv=pass;
        d=google.com; s=arc-20160816;
        b=nW7jRaTwqx2zJW/fKmKvPil0u8NWwqyWkMMMyumiuvhiXozfAIPZqjYx456WkeLF6w
         4LZYFAeNljg3tMUFxh0XP9cJBBqD3l2XOId8/zqKhVnteF4zPxZ7ruapn3WGYdho8160
         aa1bLu4VdmhKKOJxrZJS2vEmZEuBOl9SIkFxDDLWei1YekDQK2CDXGYTewroO+lHnJB+
         kaeyzcOWM7wN6H3R6kriHYXcEfyC/1XLrAl6P+jsK9U+XP8DWqvfhN3kWEgD5sV3MLQG
         T260NGi3XwUNnuO+Rh5kUo4vgh8Nup6734twzXWUqEflW9MvAx7YDNVr2tXaN8KZtG/R
         orqw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=0Wu/Tz0B0cOXYnKD6mnF25m824GyfoZ6iVrEJjrvDY4=;
        b=ri8S5Oua/KbXNRkDm7QvP5D002MfBT5Z8hIKOmSXqOLhczLIdPN/fDHNel7+qg3kNZ
         nxO1FikkPZYHJ1PH2ezwlUsf73f0IITY6M2zlJ/10WWzIUkbL7/q+jNfU3lvUfqk1MvD
         3m4dlKXWHtUbJKJZbHmEanP2H69g+utErsZ8ANjPHjzKrx0afRCoMtMfGTtRPKUdQDIr
         XIPv6HVtizSo1+SPloCyZDCvDcueCO4IQn3DVPHuh6fNeKqpimZ6w2xPyQ6TE1GnvGWc
         Ln3uTXypUAlkTDjJEmo5e5zUPR2G12ZPZD/v+cFr93gkMOArhYjUwKzYIZU/vWiQtIEI
         1rEw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@rere.qmqm.pl header.s=1 header.b=VHhx0GNX;
       spf=pass (google.com: domain of mirq-linux@rere.qmqm.pl designates 91.227.64.183 as permitted sender) smtp.mailfrom=mirq-linux@rere.qmqm.pl
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0Wu/Tz0B0cOXYnKD6mnF25m824GyfoZ6iVrEJjrvDY4=;
        b=XlTukog0CwY1+IrzLAD4XvVLF7HRbVgFoNMiLS9mfqSA88p/hlbpVEUKPRMbcayy8L
         F1fXrWC2hoGcY4Tbl8KWfMFlSo1DQxKUPw8cEBM0j6sqHAYfxkt+pthoh9QXknJW7bgj
         fluGNfGZUYpK0aHvBRCsD4ndUda5qZQ7gKk2Bpp+l2e1DEKx5Fx/ZyLzGIHaj6tWe/AI
         Yqmc1ujg9Af66Ay9ywX2wVtKHVIMv8VPxj4b1YEIqVOz2VAiJhtoLjk6oQCuLtl7u+q5
         2F46XFZOzs4K2VWEA5SGBgyqUckeIq/fM0yjrw2QBCKSbAgEl6U66nBRfTyNzc4rTwW2
         7qBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=0Wu/Tz0B0cOXYnKD6mnF25m824GyfoZ6iVrEJjrvDY4=;
        b=nLYaz3bWJF16tQouWyRZfhI9jUbCJpfQLX6tUPma4s0H7h45NtLiHzEBkkqv+HvvE5
         7g0Swn5ia5jubIhYylwhTZRi44/qSiPxO7OO/m2nqPFAqBF6a1UoZhhfcy+s3r7Uo6r2
         5oPnWf+jkMQK8QESWDC7ZSf8psR7Fq+d0HoibTDKsWDGxiDtYPGe15asE0O2/2Hj5cww
         s0JCBN/KcMwSKrFkGGrYcQWTs2sECSK721LE1ueFQTubVCcWMYu1ghO3fkIrEriGt6Zm
         Zqeu89MltFb5nPv433kkPnGbxVPrbDF6C/UabFkJqKbin+LVt5/AK0km9onwXk3yXePI
         4sPQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PubZEE8v2ibpDCa5+LqsVGmlbpN8kRfmwfhxZxMZ0sGdyOnQ4q8I
	VkKZpIEymgmuY+bVXr39Kj4=
X-Google-Smtp-Source: APiQypIYBTWOi7tYQWX/p+UP9quk6Q5rhXzR2eX46n0J9ml/ht0C+cSQSe5qGWEh80eHRT9qPDxviQ==
X-Received: by 2002:a17:906:400a:: with SMTP id v10mr8789796ejj.300.1588459529714;
        Sat, 02 May 2020 15:45:29 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6402:1d83:: with SMTP id dk3ls3922669edb.9.gmail; Sat,
 02 May 2020 15:45:29 -0700 (PDT)
X-Received: by 2002:a50:e8c1:: with SMTP id l1mr9235380edn.81.1588459529317;
        Sat, 02 May 2020 15:45:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1588459529; cv=none;
        d=google.com; s=arc-20160816;
        b=EG4yRRDilTi8jfFYqXMOsUr6UbLg2S3rfR4oXDWqKex6VuyzIL7sWLkDElDTwAe/QK
         dM+F1lDWhZsgpH4IUBmaCcJ2UEi0qXfM0FIBIybA6DmnrAQ8iTs5yXXM34LUtX6nFjnz
         csIakPTU92/aUWRGIMfe3BZ6QflBQHoa6br9oXRgCOJ9T7BA3TS26LuppFNaMF102Tdu
         hSJ90C75nJwk7yFoH8PBZqFAh1hv/vVYSXjfb733PQq2ArygglBTVcMD05nQBKip+COu
         iDj3u93JEnjSeMNSTf5gxNBbl+R+pLf089Lj28+zEhF0HMKnksuHo3Ehw5ned4EQNW35
         dFkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=svCZaTbJmvgbB337Ug87D7gfwkJGMxS3Q4da42EDCFU=;
        b=Yx49hiq6Ff03LFc2TBbiQ4lWW44uWbfGZ+wNC8sNpTCbXLvmYuW7/W8pWV4iOeSypL
         4hiBAYhv1z72v1tjGwbhsWD3rEdZF3oKYfbOiE+t8eBTJIxYviOEyQ86cX9OFuN52CoR
         pmcWMa1lzkG5Nt8ZlXffzDUYwzTnVYQ2OBFb7+Hjn/Fwy2MwVl4WuKMicCG8z+CwerXO
         bw1BaK12o3gK2myCyFHgsWDt263D1M+kyxWoxndWReB6vtr/4yqRbZ90RwoXg7uq71oT
         YMLlOuLu3gq6tihnuCHOYUaGSLc3hoRPn/rSk4aO42YlBl6B+hq/GOx4s+osoMLyIIqT
         KQrQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@rere.qmqm.pl header.s=1 header.b=VHhx0GNX;
       spf=pass (google.com: domain of mirq-linux@rere.qmqm.pl designates 91.227.64.183 as permitted sender) smtp.mailfrom=mirq-linux@rere.qmqm.pl
Received: from rere.qmqm.pl (rere.qmqm.pl. [91.227.64.183])
        by gmr-mx.google.com with ESMTPS id o23si493278edz.4.2020.05.02.15.45.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 02 May 2020 15:45:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of mirq-linux@rere.qmqm.pl designates 91.227.64.183 as permitted sender) client-ip=91.227.64.183;
Received: from remote.user (localhost [127.0.0.1])
	by rere.qmqm.pl (Postfix) with ESMTPSA id 49F42b5VNMz39;
	Sun,  3 May 2020 00:45:27 +0200 (CEST)
X-Virus-Status: Clean
X-Virus-Scanned: clamav-milter 0.102.2 at mail
Date: Sun, 3 May 2020 00:45:26 +0200
From: =?iso-8859-2?Q?Micha=B3_Miros=B3aw?= <mirq-linux@rere.qmqm.pl>
To: Sebastian Reichel <sebastian.reichel@collabora.com>
Cc: clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org,
	linux-pm@vger.kernel.org
Subject: Re: [PATCH v4 2/4] power: supply: core: add input voltage/current
 measurements
Message-ID: <20200502224526.GA25127@qmqm.qmqm.pl>
References: <cover.1588345420.git.mirq-linux@rere.qmqm.pl>
 <249d7ad42b02bfeb8c31c49a64ee92b3e745086d.1588345420.git.mirq-linux@rere.qmqm.pl>
 <20200502222349.tfa72nr5zunybpla@earth.universe>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20200502222349.tfa72nr5zunybpla@earth.universe>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: mirq-linux@rere.qmqm.pl
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@rere.qmqm.pl header.s=1 header.b=VHhx0GNX;       spf=pass
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

On Sun, May 03, 2020 at 12:23:49AM +0200, Sebastian Reichel wrote:
> Hi,
>=20
> On Fri, May 01, 2020 at 05:11:18PM +0200, Micha=C5=82 Miros=C5=82aw wrote=
:
> > Introduce input voltage and current limits and measurements.
> > This makes room for e.g. VBUS measurements in USB chargers.
> We already have properties for charger input voltage/current.
> Unfortunately the naming is not as straight forward, as it
> could be. Basically the properties have been added over time
> and are ABI now. Things are documented in
>=20
> Documentation/ABI/testing/sysfs-class-power
>=20
> I provided the relevant properties below.

Hmm. Looks like there is no battery current/voltage properties then?
This is different from IBUS (input current), as IBUS =3D charging
current + system load. Documentation/power/power_supply_class.rst is
missing descriptions for the properties you mention.

[...]
> > --- a/include/linux/power_supply.h
> > +++ b/include/linux/power_supply.h
> > @@ -127,7 +127,9 @@ enum power_supply_property {
> >  	POWER_SUPPLY_PROP_CHARGE_CONTROL_LIMIT_MAX,
> >  	POWER_SUPPLY_PROP_CHARGE_CONTROL_START_THRESHOLD, /* in percents! */
> >  	POWER_SUPPLY_PROP_CHARGE_CONTROL_END_THRESHOLD, /* in percents! */
> > +	POWER_SUPPLY_PROP_INPUT_CURRENT_NOW,
>=20
> What:           /sys/class/power_supply/<supply_name>/current_avg   =20
> Date:           May 2007
> Contact:        linux-pm@vger.kernel.org                         =20
> Description:                 =20
>                 Reports an average IBUS current reading over a fixed peri=
od.  =20
>                 Normally devices will provide a fixed interval in which t=
hey  =20
>                 average readings to smooth out the reported value.       =
     =20
>                                                                          =
      =20
>                 Access: Read   =20
>                 Valid values: Represented in microamps
>=20

There are two entries for /sys/class/power_supply/<supply_name>/current_avg
in the file, the other one mentions IBAT instead. "voltage_now" has the
same problem. There seems to be a split-personality disorder present in
the kernel ABI. ;-)

Best Regards,
Micha=C5=82 Miros=C5=82aw

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20200502224526.GA25127%40qmqm.qmqm.pl.
