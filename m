Return-Path: <clang-built-linux+bncBDZKLXNI4ACBBKM26X7AKGQEV2MPNWI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc38.google.com (mail-oo1-xc38.google.com [IPv6:2607:f8b0:4864:20::c38])
	by mail.lfdr.de (Postfix) with ESMTPS id 400BE2DEC77
	for <lists+clang-built-linux@lfdr.de>; Sat, 19 Dec 2020 01:45:31 +0100 (CET)
Received: by mail-oo1-xc38.google.com with SMTP id t7sf1936959oog.7
        for <lists+clang-built-linux@lfdr.de>; Fri, 18 Dec 2020 16:45:31 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1608338730; cv=pass;
        d=google.com; s=arc-20160816;
        b=Zsoe0qGzWu3TWcW4jBf9gIThN4WxsStGCfRDJalP0h2VkyHMuPgtU1MEUXz3e2likz
         vexlX+JSK5egiEqtAHAj9IObHSA8yT8t8f/q3ZG01Ogyunrx6OYSKkf3C+z/hZg0L7bO
         /Zcguz22n1zY4l0ET6Ikg3WT/uLJelRY27Q/lmObTJEaxcy/5jtgb4SxTEM+W6K4o+6A
         X19svUKKJO/UVR1tvqD3JS8zJo9iRuP4yuMDC8zlWe0D5Ud1//mWimYZ0gtbnivaz0Re
         idBy87wASVCZv2bPx6aGiAtFEumldmhqSGseKDsQq4ixU3MfzorAQTQHBuulCUJkpN4L
         AaTQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=txlg70dFNJwo86JOdj+uDrgWOiS1TXpubCYmzTJwV7Q=;
        b=IyggNNMBFjJS4cZTLD8WEQJ9SmlGdZCaV/m2gtJxy20e/6xk8aJCkLPx+pzWH6V9d6
         pqh6gCqHGBp3ljb4CYlKTLCnzVFiLZPLzWJaMeW43LI6MY5Lj5MwKEvSq7MwomaiUiey
         eeGT/IYc2AS2y91PUDtEjUImUwZAv4cg+hp893Ae6xI5NfoUbuhwRfPEAL8CGEiIYmaD
         JolITiVIe2OVB0fPudA81b4HIJG09QT8A835/OLU5Jh1QtuhUmgFKINomKOrtwxQPYjG
         +J3fcEHJBYvDmMhgeBjyeQXARYLNEnUOdxRRZnmvrH6z1o1X1IqChhJ3YRlqRd/J2ICQ
         BU9A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of pavel@ucw.cz designates 46.255.230.98 as permitted sender) smtp.mailfrom=pavel@ucw.cz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=txlg70dFNJwo86JOdj+uDrgWOiS1TXpubCYmzTJwV7Q=;
        b=mMm3iS+XIEvns3ZkCZN3877Y4+8GZMMZXBnY2e+3+TgkNj0Vb1gkS/ve55JopT3IZN
         oQJkkLNxjJvF9KRagCN078DiOlXAKxCtta45Z8ey9AQdzfOy+ZWHyEH+SOnmKossLgYa
         9ekpZInkoh0VoxPg/3qIxsWkRIBmAwr9NS+kX3AF7+ShURnTddyCsslbGw1bfCBzGRPp
         9nu1GxaevILvdaI575Z3SGJZejZS5RiIQ4nJuW0HW7vMhCtAVMKOMrYb0CrPSoVc/l/i
         snKVVUMLJEPbpquSxT/pTG8/VG8xjc5s1MHvHct8K8xSDx9ozWPnlUkhl0P+Xn0G8IVJ
         V08w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=txlg70dFNJwo86JOdj+uDrgWOiS1TXpubCYmzTJwV7Q=;
        b=bzcirPYJKvqMq5xYnamy6qtMX2VMekUk4Hod6DVCqL/3b4fD6yU/nR8NslJVdt6LGe
         JoDEENRWEO9xuUP7WWK4iaBSbD7pV4WTGROq8BiiSk+CTgotLsMy5CnkgXc0G+1GxygN
         Nk2N/GQdwRN66k0ATBFzloK9mS3yKKuwWEhrO4UypViXGspH8kpitFCUSqvXF90yAmq5
         THnYeLbISqmnMBk90QtjxUcSifZjb+fL4uVaM16TilccBB84yiBf7xAsvgo6KSZuqXKd
         Zv7k8FmzjUdG3or5D9fIyIemDV+7JjTRifkJ3bfgtsoQr/n1SzVxoCeU75YFdAvfzVVz
         pZ3Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531qPmU2mHAQVlAk/KJAnzIOT7pMfTslx3Ow4Qlzw9qQruRTMDiT
	TfBWnUbFDhXouBXwJ1OXGww=
X-Google-Smtp-Source: ABdhPJyMQUVxeYOK3sX8BKBzmIytTJTL5azvL/+vakHMl9fg8THhgZnUT1CAn2B/jDa0iWKNT48/IA==
X-Received: by 2002:aca:2b0c:: with SMTP id i12mr4537890oik.76.1608338730063;
        Fri, 18 Dec 2020 16:45:30 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6808:7ce:: with SMTP id f14ls4848439oij.5.gmail; Fri, 18
 Dec 2020 16:45:29 -0800 (PST)
X-Received: by 2002:aca:c30b:: with SMTP id t11mr4690039oif.61.1608338729468;
        Fri, 18 Dec 2020 16:45:29 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1608338729; cv=none;
        d=google.com; s=arc-20160816;
        b=nybPGmwMrtk8rIa9CY0h20YVb9krgLDc/kj9hBibcbXeQ7r++u7v2gfPNIQ28Ws6DG
         wmk+71F1da9462AypDrz9QC3n//JCQRhLLnOkqO1R8rykIackSKvOvHg9CxNvAGFOHOU
         n2AoPbA4ndA3LTOYm15zuyTyQpRpc68H5TxjLvb2VVzGz0YzEYGQNpILOJTfx0NmXraP
         AsozpBWK1hHSohlto0Tcz5TgmB+sfMSNWveuRgjHhwFDtpYZmUTP1OoWbjScjc9sbSGp
         pbWRDIuNyPGcXKGfPYm4yzRmxrIbg2ZGvohfKCLMha3XYM+w/XVCZ4zN+eC6mSRDgugg
         2yWQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=YFECfwMCs4FPU67ntnnWj1Vq/JA3pPTP0FIess8Kt8Q=;
        b=DO5h2YIXL07az1M1s6pBBa7b89slDGr4mpsdyZj3/jyyrs3ah/OmCrPtwIKUEiIy2Q
         xuxSSAooZcSWRKxQPQatTXfjrEZ0TMxmTZcS7TIhzmFsRpLyvseJCTUzuk8CG1sJcmIa
         xIMKymQ9g3th3LlcfxxgEyjnBHfQ8P5BBiQWGd/QtMloBGGa8yT6N8gtzkXUDr/yAPS5
         jX/h1OCQPMlc9EdZSguVSJX5StkxOd85eCn4Q2srcuotzD544wcQOJbDG+/S4MbyddC+
         HxypfBGJMN7CsK/hGuNLSM9zUZYTgA2gOYIOBIj/cEVzaCIhY85ur8A89/a2r5OLxS7v
         Z/Hg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of pavel@ucw.cz designates 46.255.230.98 as permitted sender) smtp.mailfrom=pavel@ucw.cz
Received: from jabberwock.ucw.cz (jabberwock.ucw.cz. [46.255.230.98])
        by gmr-mx.google.com with ESMTPS id c18si724726oib.5.2020.12.18.16.45.28
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Dec 2020 16:45:29 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of pavel@ucw.cz designates 46.255.230.98 as permitted sender) client-ip=46.255.230.98;
Received: by jabberwock.ucw.cz (Postfix, from userid 1017)
	id 2365A1C0B87; Sat, 19 Dec 2020 01:45:22 +0100 (CET)
Date: Sat, 19 Dec 2020 01:45:21 +0100
From: Pavel Machek <pavel@ucw.cz>
To: kernel test robot <lkp@intel.com>
Cc: Zheng Yongjun <zhengyongjun3@huawei.com>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com,
	Linux Memory Management List <linux-mm@kvack.org>,
	Alexander Dahl <ada@thorsis.com>
Subject: Re: [linux-next:master 13540/13785] /tmp/do_mounts-997907.s:184:
 Error: unrecognized opcode `zext.b a1,a0'
Message-ID: <20201219004521.GA18304@amd>
References: <202012190800.zhlTY0rf-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="fdj2RfSjLxBAspz7"
Content-Disposition: inline
In-Reply-To: <202012190800.zhlTY0rf-lkp@intel.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
X-Original-Sender: pavel@ucw.cz
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of pavel@ucw.cz designates
 46.255.230.98 as permitted sender) smtp.mailfrom=pavel@ucw.cz
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


--fdj2RfSjLxBAspz7
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Robot went crazy.

Nothing to be seen here AFAICT.
								
> commit: 232aa16455db7fc1edb61878853d620067a30fe5 [13540/13785] leds:
  leds-ariel: convert comma to semicolon

This commit is not relevant for risc-v (and does not really change
anything), and does not even touch init/do_mounts.c...

>    In file included from init/do_mounts.c:7:
>    In file included from include/linux/suspend.h:5:
>    In file included from include/linux/swap.h:9:

Best regards,

								Pavel
-- 
http://www.livejournal.com/~pavelmachek

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201219004521.GA18304%40amd.

--fdj2RfSjLxBAspz7
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAl/dTSEACgkQMOfwapXb+vKd4wCgn+K5d61l6fSL0E0/+1Sukk3I
NswAn1S1whFhi7ZCxJUWV8ISB9QVJqE6
=oAcl
-----END PGP SIGNATURE-----

--fdj2RfSjLxBAspz7--
