Return-Path: <clang-built-linux+bncBDA7X7F2WUEBBDW64T4AKGQEDUYUEHI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x340.google.com (mail-wm1-x340.google.com [IPv6:2a00:1450:4864:20::340])
	by mail.lfdr.de (Postfix) with ESMTPS id 1EF4322A904
	for <lists+clang-built-linux@lfdr.de>; Thu, 23 Jul 2020 08:32:47 +0200 (CEST)
Received: by mail-wm1-x340.google.com with SMTP id e15sf2140330wme.8
        for <lists+clang-built-linux@lfdr.de>; Wed, 22 Jul 2020 23:32:47 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595485966; cv=pass;
        d=google.com; s=arc-20160816;
        b=ChdG88LCWUQCxHGmzvNyYtq6LLuZlPBASYQf+Kc/bHnssBB7SC1IwDTSl1zEk2Khqb
         k662WHwG8EP0rR+wn1wE6MHjaEZuUCqTYqmakatNxQFLHKaAsdWGJgX6E+YvTZcxewGl
         UNol8tl+OqZc/aPljLf4kRSchtJllkIeK6m9joqrQcf8non8UcbmiX2ETSLZWY07UkWX
         86efTqCH8nzonCBHih2mL9vGYHlyxrSWWj12nALoXHvPl4x8fALisE/qOK+tRWA6tovp
         Wmue75DWkCFBOfHHOW+qp1nxhkK7VqTqiDr8O+Fl4KN02pPOVo35L8xfT5xmcalr8wpL
         MZ8g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=BzTA8/NfssWB+Sq9mLVDPeVA/2E2uByLwJm0m62ZyYs=;
        b=rygIEJ3y/Q280jSqpR/Jq/0gVnVntriki7zEoIaV8VnAOzKH455JFhgBbPDLql40fq
         isbsfXBmWWUls15iuD+Tz2J19EWgiNgO9LdVJFFvTTMnDP+GnhY6JaFTJoNr0fNnO9ao
         OTZon15rJ4Xs7uXzmaOCx/w7cmUklw+aeyBCtqT/yTDqUeiOYsGGiOkovRARDqQcApH9
         j74K54r1PnYpesvMxX0/1mE3fBVEXGszkueNgVEfLURjNJp0LIBA5AFPbiLigq8eahWm
         NnbM1Pj31t/A4r2jNB4xXfiYRRiJu63xdmr7YbamuraYa5L6BgZYO7nnNx/TLUWOqel1
         6IJQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=ibWDYyqc;
       spf=pass (google.com: domain of lee.jones@linaro.org designates 2a00:1450:4864:20::331 as permitted sender) smtp.mailfrom=lee.jones@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BzTA8/NfssWB+Sq9mLVDPeVA/2E2uByLwJm0m62ZyYs=;
        b=FqHqbd8nvFJEUJLiF+Imen6jYSFdD0tpAFBEVcpUhpcXEwr1gMuDaCrMFxLrS3pnj+
         M9eIku+gdTD5kiwNDHhnUuX4aznbQC8SYaqf2pcFfGCUFfOcw/myo57+vgWoLDm4PxB/
         oxcV2M/TSXFbP+pgucB+qRzqMh8L+lYS2NVSTRiiz9CxvBRc2+AU+gFqHo0qfl7vzJRV
         fADhFPwM++ADSVQru0nTum0KLOEQaBWXue2CoNpBFewbQWKIcvpGTENzXivo1xK/vpQE
         IQllq33Q5MBP9h2/WkwLy1kvBqCX557ANiY+wcwUjWt73vVfb3h1fHHu2KDrKg6IySap
         QKRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=BzTA8/NfssWB+Sq9mLVDPeVA/2E2uByLwJm0m62ZyYs=;
        b=Mrg/1KMHeQtdQ1/rT5iNbDOgD/bmN7HG8ThKx1D5oYUntNX4MVnj1YJ7l5LJhMJbUE
         LKtsaf0R9bCgTpiKbgW9fsOLTVIU3jklHdHxZIqt11NJXef2+7r497O6kN9D34fKHB0L
         5D27sTrnRvVutiWiF8B+EdgDh/gWzeIGMvaDDooy5TYv5tW5RNQ7g5tcfpxL3Y/b9urc
         4Cyn9tVOv8HgX1LztoGWSmI3PQWtMfjZ30wHSWIwe79or9RTwXr44hk/TvpBlwEuMCUV
         4NGcEIFdxetfBlKZ4EOtnXHhuKi+eLiIVkOaK+dJAqrzqoaCFk8J9AHXTHX00oEgnzTr
         +4Qg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5326rtgCUqkLmRuwtPiA/8JsCVikrxyOsf4qDzOeSKbffaen51ft
	lOacN/RWCktNIdjAmRA5hcY=
X-Google-Smtp-Source: ABdhPJwZWlc70L308yAvhce6a4cS89RHYhSDhBzPALUMWOK+ZyF8/+UJIwUmsqabvw7Vz5UW6hzjqg==
X-Received: by 2002:adf:bc07:: with SMTP id s7mr2787229wrg.254.1595485966811;
        Wed, 22 Jul 2020 23:32:46 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:9c95:: with SMTP id f143ls2245036wme.3.gmail; Wed, 22
 Jul 2020 23:32:46 -0700 (PDT)
X-Received: by 2002:a1c:2183:: with SMTP id h125mr2906283wmh.83.1595485966294;
        Wed, 22 Jul 2020 23:32:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595485966; cv=none;
        d=google.com; s=arc-20160816;
        b=BPgX0nvzzoNcy72N/CouB1V63QbENxtYk3XbObudLz5zhDxnrJlO02XLzT0DAyEjsZ
         p3DT+EhNyZfWMCPg+xLeZsgcrkGq8ciLRqTJaoXdPyJ7nhmyCVxMsT6S496JrkzOxFRR
         9mTQNhMXu6vM3atMf9omPLmC1kbhGSTC0BRBG2jJLBLelfiZYy0y7ppPFmIt64XnxeGn
         Cj8PLjdmWlOevIhICKvsA4JZknX0Um0J3ia5LlbK+OVlR66TPGrEMC67uYzfUPnDaoAi
         8Uyl9zy+2OJFLNtQpRhlKWqLKq4+uHrc5soP83Ui4rqlBoi87d46+T9OHy+saAd47+8f
         Qs+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=0RV5gJvXuyT/VkGlyAo0rp9MFczzhZYGcaiSrti1Oks=;
        b=GZGpqVuj/Ii3vNuUCjaR3CwVj21ljNlvyPRJEVbTtOejMeIpEM8XBOYOtjDElki+cw
         2OUl5z3J8bpD5Qjo3RkahHwG+VqJKyzNHo1pXuNSkbetnXLmed24R2LkgnFNjoNGPIV8
         qfXnJCBU5VuvrtuhK0/GPLD16wtAVhZrXPdKQtAe40tYQ6gxp8S7OVj7YSNVtv1BkAPX
         wfmUnI26iLYB/hUBhHUJT2Gjtu72M1gK5mk6kYyKj/jcfAzd2rwK8Do5X9zICLEWE8ld
         1O0to1hN3Tx6IB9V7IGzQw6SrxzEuBSUafzPWj3zkXxyON9T/XRuHfpQTFufE8LoxYB7
         Xy9A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=ibWDYyqc;
       spf=pass (google.com: domain of lee.jones@linaro.org designates 2a00:1450:4864:20::331 as permitted sender) smtp.mailfrom=lee.jones@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com. [2a00:1450:4864:20::331])
        by gmr-mx.google.com with ESMTPS id y130si438177wmd.2.2020.07.22.23.32.46
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 22 Jul 2020 23:32:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of lee.jones@linaro.org designates 2a00:1450:4864:20::331 as permitted sender) client-ip=2a00:1450:4864:20::331;
Received: by mail-wm1-x331.google.com with SMTP id o2so4118723wmh.2
        for <clang-built-linux@googlegroups.com>; Wed, 22 Jul 2020 23:32:46 -0700 (PDT)
X-Received: by 2002:a7b:c1cc:: with SMTP id a12mr1560254wmj.132.1595485965765;
        Wed, 22 Jul 2020 23:32:45 -0700 (PDT)
Received: from dell ([2.27.167.73])
        by smtp.gmail.com with ESMTPSA id g16sm2395040wrs.88.2020.07.22.23.32.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Jul 2020 23:32:45 -0700 (PDT)
Date: Thu, 23 Jul 2020 07:32:43 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com
Subject: Re: Adding branches for testing
Message-ID: <20200723063243.GJ3533@dell>
References: <202007180528.vD5KVnHi%lkp@intel.com>
 <20200722180319.GH3533@dell>
 <20200723035548.GA363815@ubuntu-n2-xlarge-x86>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20200723035548.GA363815@ubuntu-n2-xlarge-x86>
X-Original-Sender: lee.jones@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=ibWDYyqc;       spf=pass
 (google.com: domain of lee.jones@linaro.org designates 2a00:1450:4864:20::331
 as permitted sender) smtp.mailfrom=lee.jones@linaro.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

On Wed, 22 Jul 2020, Nathan Chancellor wrote:

> Hi Lee,
>=20
> On Wed, Jul 22, 2020 at 07:03:19PM +0100, Lee Jones wrote:
> > Good evening,
> >=20
> > Is it possible to obtain build-test results for successful builds?
> >=20
> > If so, what is the process for adding branches to your system?
> >=20
> > Thanks in advance.
> >=20
> > Kind regards,
> > Lee
> >=20
>=20
> I filed a pull request against their repository and I get email
> notifications whenever I push to a new branch on my repository:
>=20
> https://github.com/intel/lkp-tests/pull/64

Of course it's on GitHub! :)

There was me thinking it was secret source.

> Looks like there are a lot of trees to look over in case you want to
> customize it in some way, I am not sure of any documentation over it
> though:

Docs:

  https://github.com/intel/lkp-tests
  https://github.com/intel/lkp-tests/wiki

> https://github.com/intel/lkp-tests/tree/master/repo/linux

You've been a great help Nathan.  Thank you!

--=20
Lee Jones [=E6=9D=8E=E7=90=BC=E6=96=AF]
Senior Technical Lead - Developer Services
Linaro.org =E2=94=82 Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20200723063243.GJ3533%40dell.
