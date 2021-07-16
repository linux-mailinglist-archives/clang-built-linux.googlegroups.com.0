Return-Path: <clang-built-linux+bncBCSKPKGMYYBBBWPAYWDQMGQECBIQVFI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x43f.google.com (mail-pf1-x43f.google.com [IPv6:2607:f8b0:4864:20::43f])
	by mail.lfdr.de (Postfix) with ESMTPS id E06233CB6D0
	for <lists+clang-built-linux@lfdr.de>; Fri, 16 Jul 2021 13:41:14 +0200 (CEST)
Received: by mail-pf1-x43f.google.com with SMTP id 15-20020aa7924f0000b029033034a332ecsf6796158pfp.16
        for <lists+clang-built-linux@lfdr.de>; Fri, 16 Jul 2021 04:41:14 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1626435673; cv=pass;
        d=google.com; s=arc-20160816;
        b=spukZHnnck8DKWVKChX61L330753hIV3+0SqdKaOTbuU932iXAKz5hbccL4FeQb+sN
         EXB6JPzD3ngau0FTLw6VE9/CscAmkITvGUQcHJLkamJNVDvAeTlxVBUmxXYEguV4RjRq
         n47nVcI7yd/zQBXJWRXSZoiI9hRMcBDggbQAbYrfYc9VxUGhPy0UBiCu1nLjxtGBCDDA
         dl2HltWlBjgOjGDVXF/sCrNRUg8NEFsLTMhwC73n1FyXunyRLeJFOPJJE7ZdFmFsD354
         dXZDI+trmDebBPhXD7zDuLoTX2x/n6KjjGc5VPjzCsBp81akxtUK0k1jM9sESb7SCsaP
         WGeQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=nYCcLRGzCWqgr3z9NTnBkfKfllUODjINaUL7LAzhvuQ=;
        b=egKI0mUF5Wr0iGhdt5IH0F8q7TiXTydzTt+h8kRppZFcfW6L3u7KEUhaY0lMseiEdd
         JJ/QkNw9GbREroZXZSs38zEgStrQnf3IJAnln7PO/Qaq0wOR87oowirebpJUddvL+2rv
         vpbV0Gm4/dUEU0ORMjCOAyeHBxlIaXJJNr6HYCm/K3pu/HLB0TUiOloAxdEA4Qp7PrO3
         /r2pK/9Ufw6JVd/2mUviHgjgjHiRlxNnMMLfCT3xuZKuB7WA/Gpo5htz63oNz10nERnL
         1lfW7AsGBCqFbWug5FDdrcDWGPp6RNPToHUowtC5apYHKK21ZIp3JQrNHZRyx742rJWE
         7yUA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of sakari.ailus@linux.intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=sakari.ailus@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=nYCcLRGzCWqgr3z9NTnBkfKfllUODjINaUL7LAzhvuQ=;
        b=girpvS8kSv3vQPcy9sRw19JxsYUmp9w52Y2sVK6Wn1sMLh0jJJuUX2UYazNtL84Pjt
         qoHa46eNhgUnfFBKM2MjXsokAqHLIc+AmSF0iqsq1Ru0BOy27cCl4EL/tRvK/8QpvZ/5
         h3KdwEUMPwYa9WMbTTdbxZL5q2i8m5D5H3RvZuUzCfW8r3JEiddJNGKlpK3Aq2RLJVz6
         EBclNofaewxSJJ0gvZulSCMOiQEPSFQCLsBUCzzfrWPX3XMTYRQV9Rye5gA+Wvy1L8c+
         3aolobVAJW5PcbZWhT0hBRYSz5RRrynj6OWuXWpcieZPsnCg/XayTDRiBcFzP7Cbdi51
         aukQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=nYCcLRGzCWqgr3z9NTnBkfKfllUODjINaUL7LAzhvuQ=;
        b=NuoGGyP1ZGl25Kai7jzWvqmlVLceugWhWe709Btmz2/TLe1811Gx2MSLdjTcqSClYm
         +u/H9VYtFg488dQZHjne06qyjq+N/78vINhJjqUwrKEt+Qk4/+CkBIM/7gRT3oiJK9v8
         8aWBkpSKFkx9QFJ0d4QPEUf99SLZDr+pOs8Q5sMLogTMa2VZTI4X+sIbwn4FtJQdy7dE
         q6mNvxRVILtsRoFmFv64gAjfQWNisrMtd3UX4ITRpre0F8ITwtXC0NU/8cvjlwfzc9J/
         kcCi5PFCIzau9D+k+eaAvU1dWUdLKz2a5+IgESX8A0pFQnAz02Zikb761b6fu5/K+hIA
         6f3Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531m6mz9qGrcEYUS4WVY4DSAQCpDJx+xNsi2Z48jLA+pxP81fDxg
	BYzc2M5TArGce6IkTLYLLd4=
X-Google-Smtp-Source: ABdhPJwuVVgiMrRfTWTeZJ53/GPLDQV2MdsN82wMfc/uyqexejiEz6EHzN7F4Rv/LWzt++HewV1T/Q==
X-Received: by 2002:a17:90b:3756:: with SMTP id ne22mr9721065pjb.144.1626435673145;
        Fri, 16 Jul 2021 04:41:13 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6a00:d69:: with SMTP id n41ls4622596pfv.9.gmail; Fri, 16
 Jul 2021 04:41:12 -0700 (PDT)
X-Received: by 2002:a65:5c01:: with SMTP id u1mr9628858pgr.181.1626435672619;
        Fri, 16 Jul 2021 04:41:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1626435672; cv=none;
        d=google.com; s=arc-20160816;
        b=qSf9FqMJRQYmKoRAHP8q2hHax4uNFTLKCpi84yQiY0VYbodkxXH4KNos5CY108nVaO
         V1Aa3lWcIMtUOFrgCzTicCNsuP0C2VDppRQTZJ3mNgJIWMTWbe0c9k3PIdTN5iYPhCfx
         n/e0dXavz6Ub/37Qe30AYfOFg3tddf0CTvO9tNVQoL9xowddSmiGj5jJF4pJFOaXs3o9
         Zhi7kh6On2OeZqSmh7oggFXZybXc3JTawGA6fe/7Pt+Jgmk4e9FmxQ4kRRznQTHzZ3Wb
         8jIVKCWpFooB2oiZgXA3DiW8FvaJY+7XR3ZQxVDWfvcZLFAWhqDFpcEiV8VL8yzySs/h
         lz3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=STYhmNu8VFsTTqVgqjDCT+wiT/8bfs7viH84BT1mTnc=;
        b=N/OF0XtrPewxqED1oL/b18xpiqtra+INIa23hzOO730K7huBSEAv6wFTbdcY9EqMvf
         F6zEmWxK1uaA1LKlpZaAcpxHvrj9uyku3Gm/VoyGWncBPjG+O5GpJvrutmWSx+N6Phu4
         shwFbWHCJqE6LalcIOe+HswbYJHHdh9Cph4qb5rT/rAsw/LAWZlHpHz+5DOL/SebPJXP
         996AROtflnjlSidb7cYnr99OZLcdjhlX8rGBagQGMAmpe3rLCNB5ZmYCOzgv9kBouSMw
         fOe246aIxoq5EKd2Bd4oMCUgigxy3LtwphtpuK5c2LpwrfmrE5lEcNB0gY+lGyvd6Ery
         6tkg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of sakari.ailus@linux.intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=sakari.ailus@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga11.intel.com (mga11.intel.com. [192.55.52.93])
        by gmr-mx.google.com with ESMTPS id c9si1295683pfr.5.2021.07.16.04.41.12
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Jul 2021 04:41:12 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of sakari.ailus@linux.intel.com designates 192.55.52.93 as permitted sender) client-ip=192.55.52.93;
X-IronPort-AV: E=McAfee;i="6200,9189,10046"; a="207693657"
X-IronPort-AV: E=Sophos;i="5.84,244,1620716400"; 
   d="scan'208";a="207693657"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
  by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Jul 2021 04:41:09 -0700
X-IronPort-AV: E=Sophos;i="5.84,244,1620716400"; 
   d="scan'208";a="573640178"
Received: from paasikivi.fi.intel.com ([10.237.72.42])
  by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Jul 2021 04:41:07 -0700
Received: from paasikivi.fi.intel.com (localhost [127.0.0.1])
	by paasikivi.fi.intel.com (Postfix) with SMTP id 41509204C0;
	Fri, 16 Jul 2021 14:41:05 +0300 (EEST)
Date: Fri, 16 Jul 2021 14:41:05 +0300
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: Andy Shevchenko <andy.shevchenko@gmail.com>
Cc: kernel test robot <lkp@intel.com>,
	Nick Desaulniers <nick.desaulniers@gmail.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	kbuild-all@lists.01.org,
	Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	Petr Mladek <pmladek@suse.com>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Subject: Re: drivers/media/v4l2-core/v4l2-ioctl.c:303:28: warning: taking
 address of packed member 'pixelformat' of class or structure
 'v4l2_pix_format_mplane' may result in an unaligned pointer value
Message-ID: <20210716114105.GF3@paasikivi.fi.intel.com>
References: <202107150148.RpWnKapX-lkp@intel.com>
 <CAHp75Vfu1rhUV+SOq2ikFWd2G6x9j3BT6OLPhPcf8VZE5Umeqw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAHp75Vfu1rhUV+SOq2ikFWd2G6x9j3BT6OLPhPcf8VZE5Umeqw@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: sakari.ailus@linux.intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of sakari.ailus@linux.intel.com
 designates 192.55.52.93 as permitted sender) smtp.mailfrom=sakari.ailus@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
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

Hi Andy,

On Wed, Jul 14, 2021 at 10:45:26PM +0300, Andy Shevchenko wrote:
> > >> drivers/media/v4l2-core/v4l2-ioctl.c:347:37: warning: taking address of packed member 'pixelformat' of class or structure 'v4l2_sdr_format' may result in an unaligned pointer value [-Waddress-of-packed-member]
> 
> Why is it packed in the first place? Is it used on unaligned addresses
> in other structures? But even so, why should it matter?

It's packed since we wanted to avoid having holes in the structs. There are
other ways to do that but it's ABI dependent and is prone to human errors,
too.

-- 
Sakari Ailus

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210716114105.GF3%40paasikivi.fi.intel.com.
