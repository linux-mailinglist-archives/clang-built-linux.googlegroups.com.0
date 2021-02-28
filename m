Return-Path: <clang-built-linux+bncBDZKLXNI4ACBBW5I5WAQMGQEZ6RFAFA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wr1-x437.google.com (mail-wr1-x437.google.com [IPv6:2a00:1450:4864:20::437])
	by mail.lfdr.de (Postfix) with ESMTPS id 160B632718F
	for <lists+clang-built-linux@lfdr.de>; Sun, 28 Feb 2021 09:29:16 +0100 (CET)
Received: by mail-wr1-x437.google.com with SMTP id v13sf6615170wrs.21
        for <lists+clang-built-linux@lfdr.de>; Sun, 28 Feb 2021 00:29:16 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1614500955; cv=pass;
        d=google.com; s=arc-20160816;
        b=azXewTahjbLK+LOIq6tdvFXZZFofyTxKAa8AsHWxFIOI9FrZUFpU25DiQ8up9FAJx8
         ii0zxuEUkkMcdxVX84JG1t7BXDjTq0TfH7Mku82TrDr9I97SsQIHu6BpPK73IYBaB8Vn
         ADA1X4bG3Ih+CaWXihSMBAY7hNVGz/UFqKd2yDz4X4LQMDVMeRluKbKyX4yz84zVDtgd
         jjJoUzWx87xfINCQXKds0fOPDlxdTHv+iizHhpwMW8ZOQC3GntE2E+kg/J3Mle6V7eM9
         z2M35eGVPeUkJNGi3wqR1u+Erm0z9lbGnIRDZ6dokgwORDYjAXwAcBaJ+y2yGNhCiM7q
         7flw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=I5RuPFIgI02+Lq7B4gOZ8vQ4m+xKTtTzzV8JjHlKTYk=;
        b=EpRAqxoOd81Bwq9Xd+vaFEVy0Q39j+tbhClTCw7C/XiYHmkqn8X3ilB24UJMrEIwEq
         SaHhXBWXX+Jt4/SwlG5cwOJbPqur9v/6xHITf0/5FbT93jWwdeazQI8I+DuG4jwF4ysh
         XfKvpKANEmMD3VEW5L8RjNWBrACVfeY36WY48QyMI32IRrpNwN7LoTHoMi5JFtq0UBtw
         e1NfZTa7R3PT3eaR3H1Z43AzG5PmtBZGGoLUf39NiqsphcK1II4ABSC5hNK9ueWWgCFc
         LHUee99ykVP461tHVIkeouHjmDVrKkZYcifngfzBGuNDhYiXXL2Irml7z67G7WYyrYJF
         kpJw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of pavel@ucw.cz designates 46.255.230.98 as permitted sender) smtp.mailfrom=pavel@ucw.cz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=I5RuPFIgI02+Lq7B4gOZ8vQ4m+xKTtTzzV8JjHlKTYk=;
        b=o27pZeajDQPUAAxNjUZB7nCzd2Gg7bAi61JANxr2bmE+RmFeAZKVTlooiI53So/px4
         9lrTjyEWEKN6q+1rw9DpiQYjwnlRWvsgGu5ha4Nk73shJLc6AOrYAakc9HLU/Hx5LC4z
         JpzhzE3cnLiM5LXiKg5Er4oqqkXiteHYtvY8+W4Pkr+pvOcz7XwHqXeMR2oeuU3vNnqx
         1X5ZzdNLhxoTJ2Enh53K/HDNyi/0fwdBYUN4o4aO+Xe2TWSJuKYqLPFGUjkkvUpWxdOU
         iyImZs3maWstvTGQ0bJOoYvmiK1eMxjXT90WDZA2dmNKitXMwa5xPTDQXvKmo2gYnuG4
         i89w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=I5RuPFIgI02+Lq7B4gOZ8vQ4m+xKTtTzzV8JjHlKTYk=;
        b=QbeW1GuBxf04mJnrZEciLDMRoKWVIErxW/KODhoktxq7SGWZsw4x5K8sr2GtR48run
         OZFkBogTSSx/0XS4tFHgjUCuQBWRtVj3hamvalFQTohgjF8QxRmpYdAjhn1QyhTBFmUt
         VL8GBgikv+YeuIq0i2TtheP+5lTh0JK4lFT95BVGtnymd0ycnEPv1L4z53wqmOjz+Cia
         3ie9NYhp2jQqkpAiFZs/VenazTXUSd7dKeVBxPpPHEzf9IgsZuGmpZBmtsqcN3r4a/s/
         yjNov6hANd93EKoJMSL0skDf6jFeb4OFx8Hv7iaDZi4jDEKVFL/4Ug3vs/74mzZfEQ0F
         U8hA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530mHeEyS2qSEO0ZKKkn8eHYV+O2TXObzZjq/n8IEtXE3cUu3Bot
	IoJBNmaVYU/kYloC/5twrYY=
X-Google-Smtp-Source: ABdhPJzkmtpr2wwXSLY5Gel+dDLJOiwZuE6leNWIZ4YZIbDJtbJbe46uX2hSE7F6IRCiQdKFsZvB9A==
X-Received: by 2002:a05:600c:2145:: with SMTP id v5mr5758846wml.65.1614500955776;
        Sun, 28 Feb 2021 00:29:15 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:60c2:: with SMTP id u185ls5149191wmb.2.gmail; Sun, 28
 Feb 2021 00:29:14 -0800 (PST)
X-Received: by 2002:a1c:4182:: with SMTP id o124mr10551219wma.61.1614500954962;
        Sun, 28 Feb 2021 00:29:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1614500954; cv=none;
        d=google.com; s=arc-20160816;
        b=i5RmPDx+M1uPFM8rQXe1NZ76fgFAxW8WkNwaQHCnUJkQU8D85EMF+O53mNd234jBfn
         tjFH8sBOdQGQZe+KDajCRHS3kSV5FoezoErzqMx6KP0+gTmAkg9RCC2fCizxW6Jgzswo
         9W0sbWqFJEoEOV35tuRDDdJUvjvRy7WjJy0Ja75IpO8+dvk7OHaAPWaHsIQn6JTc/HAF
         hcTp4fpueR733ur4YB6zQZ3xwo+jI5MguIPnw6BcrHGCrVWwx1VNbUJqi3SMr/ajQ0dg
         b3RKMX+RbGu5sB7ILtpl55qRuFJHu3MvWRqDw+cGMq+CLAE4u4p29JVYE6+AUGsnutaO
         JnDQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=Id4WCYgB2UZQ59vTDvirtabsh25Ew96Si0R7QS2j/tM=;
        b=mslwJqJBRDglt3l57wK36k+QKMSYwT8ES9sZvl8RJsFPFUDr6r+ItRDG5VhPg1QO+l
         VByVcSoDAoJEPHNR8QKLnaH+c4CWe7iVes48Mb6fH5gOi1hvKEAjAXnQxwuAucZN8f1t
         jc79ClLXxvbdM48GXif1tzE5JgvMdQE61dmWNg53QaWEIzI+EdIkpHCvHwMujrVnfOKA
         D4yvUU6fcB0CwaAUWWfdtkvuKF/gWCFBxg/oBChqkhusBgbP1P5V4gWoZAvU9/TP/tPn
         +ycU2BGKr/p3caGtPWpc4xtJwYtCSWFP4ruhLqvaDG4ymzgH3oLi6g5/rzGUheRA8ofO
         o3FA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of pavel@ucw.cz designates 46.255.230.98 as permitted sender) smtp.mailfrom=pavel@ucw.cz
Received: from jabberwock.ucw.cz (jabberwock.ucw.cz. [46.255.230.98])
        by gmr-mx.google.com with ESMTPS id g132si14604wma.1.2021.02.28.00.29.14
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 28 Feb 2021 00:29:14 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of pavel@ucw.cz designates 46.255.230.98 as permitted sender) client-ip=46.255.230.98;
Received: by jabberwock.ucw.cz (Postfix, from userid 1017)
	id 749D61C0B77; Sun, 28 Feb 2021 09:29:14 +0100 (CET)
Date: Sun, 28 Feb 2021 09:29:13 +0100
From: Pavel Machek <pavel@ucw.cz>
To: kernel test robot <lkp@intel.com>, linux-leds@vger.kernel.org
Cc: Amireddy Mallikarjuna reddy <mallikarjunax.reddy@linux.intel.com>,
	kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org
Subject: Re: drivers/leds/blink/leds-lgm-sso.c:123:19: error: field has
 incomplete type 'struct gpio_chip'
Message-ID: <20210228082913.GA27151@amd>
References: <202102280329.hv7RoHLA-lkp@intel.com>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="C7zPtVaVf+AK4Oqc"
Content-Disposition: inline
In-Reply-To: <202102280329.hv7RoHLA-lkp@intel.com>
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


--C7zPtVaVf+AK4Oqc
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline

Hi!

> >> drivers/leds/blink/leds-lgm-sso.c:263:3: error: implicit declaration of function 'gpiod_set_value' [-Werror,-Wimplicit-function-declaration]
>                    gpiod_set_value(led->gpiod, val);
>                    ^
>    drivers/leds/blink/leds-lgm-sso.c:263:3: note: did you mean
>                    'gpio_set_value'?


It looks like missing #include?

While at it, can you do something with Kconfig help text? Move
existing one into comment in the driver, add something useful for end-users.

Thank you,
									Pavel
-- 
http://www.livejournal.com/~pavelmachek

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210228082913.GA27151%40amd.

--C7zPtVaVf+AK4Oqc
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1

iEYEARECAAYFAmA7VFkACgkQMOfwapXb+vJIuACaAvjcK75ZHLtHKWccdkr+sTui
BpgAn29Exf+50mxBYN/Et3japQPws1vE
=Bxif
-----END PGP SIGNATURE-----

--C7zPtVaVf+AK4Oqc--
