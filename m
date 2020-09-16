Return-Path: <clang-built-linux+bncBDM2X4EI2MPBBIGSQ75QKGQE6FZCZ7Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x239.google.com (mail-oi1-x239.google.com [IPv6:2607:f8b0:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id 2025C26C1A7
	for <lists+clang-built-linux@lfdr.de>; Wed, 16 Sep 2020 12:29:54 +0200 (CEST)
Received: by mail-oi1-x239.google.com with SMTP id x124sf2725920oif.19
        for <lists+clang-built-linux@lfdr.de>; Wed, 16 Sep 2020 03:29:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600252193; cv=pass;
        d=google.com; s=arc-20160816;
        b=AEBv77lupaeysl6mmmHc6rChFHY0bR4hXdpdtrZG4fwdqcbW1Fc9zq+gkUeHN40Cbj
         eD9Rv+VxiIMWLPHoPreYKHpzRIPdWZBlalnY8lIu18twmYwsjHKiMJkyALCUzXUskSIh
         u7TO9Y4TzvWUYGYkVs2gFEQxA956Zu0z7PolCv/Na+uk52KNXrHoP76EGGoS7Mhn1p1A
         OIhO1N7REm7Ge5yWPgqrvTw9xHB3nXnXsy1ufJE7xgs5iQVpWXZVyULE4jwYiC7aR3eC
         xMFS70AwVDbh1PgImVktIOP69DIeBxld3ZrS3iWUHSimqCpGiFCbhrwF9ia7/pwn5qr9
         08UA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature
         :dkim-signature;
        bh=pmpXDJVElFba0O9SXzKoDNFmVeBUPSLROrxoDnRLMlg=;
        b=fYi0eyf9cwOAHUEZVWCoeqr84CG7Y6ovMmUTVWogEa1TYyf+sz0lZ0kwYFY1Amx7YK
         eamqvfHOrHjm/QFPYuI729njZ0plK32Yx0NjlSKrhbKFcVTHHGMya6Tv+BNhSZfKdOSZ
         l7uAybBFJBgPW/yTOVdigfsM4UZwTn2SCFtrkKMU+FRqk8YzadlvS792tFobLrrOPxgz
         9VmprHdZ6s2lHFWAEUDqeGvSIZB0u7WtOOhRdqx47hcZLQbxykPW8J37HQRjTaUOhGk3
         vZLEZLv89NuRYBJInQV77gAb1w6w2iSEmGN+9Y+q7alp9qZiy5GZwYJ/POCdJuPlsjN2
         Egyg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kk8G97Ye;
       spf=pass (google.com: domain of vaibhavgupta40@gmail.com designates 2607:f8b0:4864:20::a34 as permitted sender) smtp.mailfrom=vaibhavgupta40@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pmpXDJVElFba0O9SXzKoDNFmVeBUPSLROrxoDnRLMlg=;
        b=HZGCxweFIHRddG+BDTwdBWOqaPa8ErRu1yyLs45gqWPb8ji0lf3puM2tN9ETAAjpd8
         3UMcz+BfQ2CayjKBKE2BLaLq9rXhcGsEZvQjDqLH47ZlzoUwvc9EepceAvG3E+5RCzQE
         f1N0ZpF3PHXxnDyWZ/lCcbR4uliHVtKpU2C4oP1uLLQLjuVR+d4s/Z1Vv1oqqfnLHBid
         MmY5YjDf87z+VBdpg/bjO13I7gisOpkBmkeJgWt82MNg2yFqEjG54EwssZE7HGjQ0HR6
         sNUtNZSwGX5FMcdP6n0kC76PyFufFhBxUYGZn5i5E8TUm9Jm5IYSpwy65Xwb56C1MxaW
         dAOw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pmpXDJVElFba0O9SXzKoDNFmVeBUPSLROrxoDnRLMlg=;
        b=mIBiYGlKf1TyXkLf/Gvh5DgveOq5Dbo4KCRZ7VSOmRkjfuo7vTcBfohpqMeqjBIM2l
         tnzqKiJpbjLeF8r3HhXzHmxWL+8oQTiggvPPhWG0nKWQHbk1JRfbmxtKan8g443mxZvS
         XJX00Xz0PotatXQH8XQc53fewwCWgG37kFW1VszqkXvBzOZ3JMt4q0UT8DspbzXehJMn
         grZH+nA6+imPocoNiD+QSIMd7aRucw8EbjPVbsSHvPUxcQ5LzGUa+7lD5g11aMQWMTIO
         lJQqix4fsgQr62oxqeENOsRDobWEuEMRngxMTchYBwDA7khpKgqODQvjDk3WhywpQmZT
         3WqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=pmpXDJVElFba0O9SXzKoDNFmVeBUPSLROrxoDnRLMlg=;
        b=PeYys1QdI53l5oTickUxhkMWs8/VDIpNkmSBhCBzFBZoi/U6wIVzSko5e/0ItJzAWg
         tDKH+OXxY77kc0iu2YUKbteifwqXaYbTWbK6dxcB/OfhTDQPa9AChU/2bs+24dlZSCpW
         nMczSNJgCRmm5mRUGmcbkk5k1Psw6Ms9HA7jOgdZxYGBz6gLk4e6V9QIBhRS7g5CRawP
         FvPiuGvwYGkm8iIpCI1b2oo8NCAQEdOoEXPEZEykhvFjwKQzT3/AQnrgROzWyWjMUltY
         qw7IZOAQQiukS5CAtuZBvIh/t+ho0G64AqDcCM3BoQM3tG4HMDpYTsI6zIHKV2Zo8tIM
         6wWw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5304/NKweQ47nqf8DSirEIyn0nWP72YqVE+BiKRqQK8AkVyVsBSU
	3/PWezhaLxXeXI+B60Gwniw=
X-Google-Smtp-Source: ABdhPJxZN6A8mUTKHn0VUk/yQNwnpZ1tDfGpcarWzVxp8Dpmd78qZOxFP6ZYXWCM7gJM+3yqvV+8Qw==
X-Received: by 2002:a9d:6213:: with SMTP id g19mr16874008otj.34.1600252192902;
        Wed, 16 Sep 2020 03:29:52 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:72ca:: with SMTP id p193ls381329oic.3.gmail; Wed, 16 Sep
 2020 03:29:52 -0700 (PDT)
X-Received: by 2002:aca:f412:: with SMTP id s18mr2719697oih.100.1600252192551;
        Wed, 16 Sep 2020 03:29:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600252192; cv=none;
        d=google.com; s=arc-20160816;
        b=D95h5zzNAqpvakPXJd9fftNOO6MpabShL3q+Ccj9NGT5XqdhUuLBPxVrpUDqjiN5Ef
         TTFP7w9UJdnsFBnWNNPtKYzPpoXVyoGu9U/AGecxcpK8HgwuoxEkww4lapex/9xuswZJ
         NWF+t5HBbZGiyamaHOc1Et+AiogtLnIyGJ6CPAo2shgOdrQ+I4UUKB58beFqOXl2uh8F
         OEJnvvv5syS9W7kCA2zQzwTbZ8bSpuXS0iixWL5MDNrrFaa5ygfIRFui6Hg5Af6zUF5V
         DxtpeTXdcJV2PwMnQ8LDju2geEW83WioaqLf3K+bqXLz9f+T9R+iO4MjZg10CpmhbLIF
         ul1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=0xLJzciO9LHxTqDQ/S9mpKAHARCEIEmOOkAcnCNJBCU=;
        b=D1Q33SEwfJlBOkZUhQR9ulntA8jIx9hcJQxHfJuy5rl0esPuak8AHCHJSO0IUJVRsK
         8n36UfqpwdGav8QI+fe7Ub2PpwA4kHhCo9ywkahpfWVQ8rQPpuBjKiutItfjslLaAQe1
         z3KrxFbYrv8rfaORuH3WSlqu/FcqM9LvKLilXtN983mvKbH9xgAvP/5VAycJc76EKWz/
         ybU73wcgqpyHPvnbUrV5LA1stt185Q/yF5YTrwGJ3w0pnaPGqkOpCG5g3IRgFeUCqSRS
         pcI6ZIRPqxWvJd3y7wOpiLQ8UG4eIPziBnajr5i31zNFm/2bXW3xW5gWfiRmyebiAAzY
         y3Uw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=kk8G97Ye;
       spf=pass (google.com: domain of vaibhavgupta40@gmail.com designates 2607:f8b0:4864:20::a34 as permitted sender) smtp.mailfrom=vaibhavgupta40@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: from mail-vk1-xa34.google.com (mail-vk1-xa34.google.com. [2607:f8b0:4864:20::a34])
        by gmr-mx.google.com with ESMTPS id 66si1286873oii.4.2020.09.16.03.29.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Sep 2020 03:29:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of vaibhavgupta40@gmail.com designates 2607:f8b0:4864:20::a34 as permitted sender) client-ip=2607:f8b0:4864:20::a34;
Received: by mail-vk1-xa34.google.com with SMTP id c25so1612261vkm.1
        for <clang-built-linux@googlegroups.com>; Wed, 16 Sep 2020 03:29:52 -0700 (PDT)
X-Received: by 2002:a1f:1f0d:: with SMTP id f13mr12924481vkf.1.1600252192020;
 Wed, 16 Sep 2020 03:29:52 -0700 (PDT)
MIME-Version: 1.0
References: <202009161533.K75fi7fK%lkp@intel.com>
In-Reply-To: <202009161533.K75fi7fK%lkp@intel.com>
From: Vaibhav Gupta <vaibhavgupta40@gmail.com>
Date: Wed, 16 Sep 2020 15:57:27 +0530
Message-ID: <CAP+cEOMs-vjxr4Oir6ZA6k3Ai6zdr4bBySaCLoPgB2Yctk5fGw@mail.gmail.com>
Subject: Re: [linux-next:master 5574/7920] drivers/video/fbdev/aty/atyfb_base.c:2002:7:
 error: implicit declaration of function 'aty_ld_lcd'
To: kernel test robot <lkp@intel.com>
Cc: kbuild-all@lists.01.org, clang-built-linux@googlegroups.com, 
	Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: vaibhavgupta40@gmail.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@gmail.com header.s=20161025 header.b=kk8G97Ye;       spf=pass
 (google.com: domain of vaibhavgupta40@gmail.com designates
 2607:f8b0:4864:20::a34 as permitted sender) smtp.mailfrom=vaibhavgupta40@gmail.com;
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

On Wed, Sep 16, 2020 at 1:11 PM kernel test robot <lkp@intel.com> wrote:
>
> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> head:   6b02addb1d1748d21dd1261e46029b264be4e5a0
> commit: 348b2956d5e6d9876b567226184de598d00c9bd1 [5574/7920] fbdev: aty: use generic power management
> config: powerpc-randconfig-r011-20200916 (attached as .config)
> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project 9e3842d60351f986d77dfe0a94f76e4fd895f188)
> reproduce (this is a W=1 build):
>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
>         chmod +x ~/bin/make.cross
>         # install powerpc cross compiling tool for clang build
>         # apt-get install binutils-powerpc-linux-gnu
>         git checkout 348b2956d5e6d9876b567226184de598d00c9bd1
>         # save the attached .config to linux build tree
>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=powerpc
>
> If you fix the issue, kindly add following tag as appropriate
> Reported-by: kernel test robot <lkp@intel.com>
>
> All errors (new ones prefixed by >>):
>
> >> drivers/video/fbdev/aty/atyfb_base.c:2002:7: error: implicit declaration of function 'aty_ld_lcd' [-Werror,-Wimplicit-function-declaration]
>            pm = aty_ld_lcd(POWER_MANAGEMENT, par);
>                 ^
> >> drivers/video/fbdev/aty/atyfb_base.c:2004:2: error: implicit declaration of function 'aty_st_lcd' [-Werror,-Wimplicit-function-declaration]
>            aty_st_lcd(POWER_MANAGEMENT, pm, par);
>            ^
>    drivers/video/fbdev/aty/atyfb_base.c:2004:2: note: did you mean 'aty_ld_lcd'?
>    drivers/video/fbdev/aty/atyfb_base.c:2002:7: note: 'aty_ld_lcd' declared here
>            pm = aty_ld_lcd(POWER_MANAGEMENT, par);
>                 ^
>    2 errors generated.
>
> # https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git/commit/?id=348b2956d5e6d9876b567226184de598d00c9bd1
> git remote add linux-next https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git
> git fetch --no-tags linux-next master
> git checkout 348b2956d5e6d9876b567226184de598d00c9bd1
> vim +/aty_ld_lcd +2002 drivers/video/fbdev/aty/atyfb_base.c
>
> ^1da177e4c3f41 drivers/video/aty/atyfb_base.c Linus Torvalds         2005-04-16  1993
> efc08a75d3a2d4 drivers/video/aty/atyfb_base.c Ville Syrjala          2006-12-08  1994  #ifdef CONFIG_PPC_PMAC
> ^1da177e4c3f41 drivers/video/aty/atyfb_base.c Linus Torvalds         2005-04-16  1995  /* Power management routines. Those are used for PowerBook sleep.
> ^1da177e4c3f41 drivers/video/aty/atyfb_base.c Linus Torvalds         2005-04-16  1996   */
> ^1da177e4c3f41 drivers/video/aty/atyfb_base.c Linus Torvalds         2005-04-16  1997  static int aty_power_mgmt(int sleep, struct atyfb_par *par)
> ^1da177e4c3f41 drivers/video/aty/atyfb_base.c Linus Torvalds         2005-04-16  1998  {
> ^1da177e4c3f41 drivers/video/aty/atyfb_base.c Linus Torvalds         2005-04-16  1999   u32 pm;
> ^1da177e4c3f41 drivers/video/aty/atyfb_base.c Linus Torvalds         2005-04-16  2000   int timeout;
> ^1da177e4c3f41 drivers/video/aty/atyfb_base.c Linus Torvalds         2005-04-16  2001
> ^1da177e4c3f41 drivers/video/aty/atyfb_base.c Linus Torvalds         2005-04-16 @2002   pm = aty_ld_lcd(POWER_MANAGEMENT, par);
> ^1da177e4c3f41 drivers/video/aty/atyfb_base.c Linus Torvalds         2005-04-16  2003   pm = (pm & ~PWR_MGT_MODE_MASK) | PWR_MGT_MODE_REG;
> ^1da177e4c3f41 drivers/video/aty/atyfb_base.c Linus Torvalds         2005-04-16 @2004   aty_st_lcd(POWER_MANAGEMENT, pm, par);
> ^1da177e4c3f41 drivers/video/aty/atyfb_base.c Linus Torvalds         2005-04-16  2005   pm = aty_ld_lcd(POWER_MANAGEMENT, par);
> ^1da177e4c3f41 drivers/video/aty/atyfb_base.c Linus Torvalds         2005-04-16  2006
> ^1da177e4c3f41 drivers/video/aty/atyfb_base.c Linus Torvalds         2005-04-16  2007   timeout = 2000;
> ^1da177e4c3f41 drivers/video/aty/atyfb_base.c Linus Torvalds         2005-04-16  2008   if (sleep) {
> ^1da177e4c3f41 drivers/video/aty/atyfb_base.c Linus Torvalds         2005-04-16  2009           /* Sleep */
> ^1da177e4c3f41 drivers/video/aty/atyfb_base.c Linus Torvalds         2005-04-16  2010           pm &= ~PWR_MGT_ON;
> ^1da177e4c3f41 drivers/video/aty/atyfb_base.c Linus Torvalds         2005-04-16  2011           aty_st_lcd(POWER_MANAGEMENT, pm, par);
> ^1da177e4c3f41 drivers/video/aty/atyfb_base.c Linus Torvalds         2005-04-16  2012           pm = aty_ld_lcd(POWER_MANAGEMENT, par);
> ^1da177e4c3f41 drivers/video/aty/atyfb_base.c Linus Torvalds         2005-04-16  2013           udelay(10);
> ^1da177e4c3f41 drivers/video/aty/atyfb_base.c Linus Torvalds         2005-04-16  2014           pm &= ~(PWR_BLON | AUTO_PWR_UP);
> ^1da177e4c3f41 drivers/video/aty/atyfb_base.c Linus Torvalds         2005-04-16  2015           pm |= SUSPEND_NOW;
> ^1da177e4c3f41 drivers/video/aty/atyfb_base.c Linus Torvalds         2005-04-16  2016           aty_st_lcd(POWER_MANAGEMENT, pm, par);
> ^1da177e4c3f41 drivers/video/aty/atyfb_base.c Linus Torvalds         2005-04-16  2017           pm = aty_ld_lcd(POWER_MANAGEMENT, par);
> ^1da177e4c3f41 drivers/video/aty/atyfb_base.c Linus Torvalds         2005-04-16  2018           udelay(10);
> ^1da177e4c3f41 drivers/video/aty/atyfb_base.c Linus Torvalds         2005-04-16  2019           pm |= PWR_MGT_ON;
> ^1da177e4c3f41 drivers/video/aty/atyfb_base.c Linus Torvalds         2005-04-16  2020           aty_st_lcd(POWER_MANAGEMENT, pm, par);
> ^1da177e4c3f41 drivers/video/aty/atyfb_base.c Linus Torvalds         2005-04-16  2021           do {
> ^1da177e4c3f41 drivers/video/aty/atyfb_base.c Linus Torvalds         2005-04-16  2022                   pm = aty_ld_lcd(POWER_MANAGEMENT, par);
> ^1da177e4c3f41 drivers/video/aty/atyfb_base.c Linus Torvalds         2005-04-16  2023                   mdelay(1);
> ^1da177e4c3f41 drivers/video/aty/atyfb_base.c Linus Torvalds         2005-04-16  2024                   if ((--timeout) == 0)
> ^1da177e4c3f41 drivers/video/aty/atyfb_base.c Linus Torvalds         2005-04-16  2025                           break;
> ^1da177e4c3f41 drivers/video/aty/atyfb_base.c Linus Torvalds         2005-04-16  2026           } while ((pm & PWR_MGT_STATUS_MASK) != PWR_MGT_STATUS_SUSPEND);
> ^1da177e4c3f41 drivers/video/aty/atyfb_base.c Linus Torvalds         2005-04-16  2027   } else {
> ^1da177e4c3f41 drivers/video/aty/atyfb_base.c Linus Torvalds         2005-04-16  2028           /* Wakeup */
> ^1da177e4c3f41 drivers/video/aty/atyfb_base.c Linus Torvalds         2005-04-16  2029           pm &= ~PWR_MGT_ON;
> ^1da177e4c3f41 drivers/video/aty/atyfb_base.c Linus Torvalds         2005-04-16  2030           aty_st_lcd(POWER_MANAGEMENT, pm, par);
> ^1da177e4c3f41 drivers/video/aty/atyfb_base.c Linus Torvalds         2005-04-16  2031           pm = aty_ld_lcd(POWER_MANAGEMENT, par);
> ^1da177e4c3f41 drivers/video/aty/atyfb_base.c Linus Torvalds         2005-04-16  2032           udelay(10);
> ^1da177e4c3f41 drivers/video/aty/atyfb_base.c Linus Torvalds         2005-04-16  2033           pm &= ~SUSPEND_NOW;
> ^1da177e4c3f41 drivers/video/aty/atyfb_base.c Linus Torvalds         2005-04-16  2034           pm |= (PWR_BLON | AUTO_PWR_UP);
> ^1da177e4c3f41 drivers/video/aty/atyfb_base.c Linus Torvalds         2005-04-16  2035           aty_st_lcd(POWER_MANAGEMENT, pm, par);
> ^1da177e4c3f41 drivers/video/aty/atyfb_base.c Linus Torvalds         2005-04-16  2036           pm = aty_ld_lcd(POWER_MANAGEMENT, par);
> ^1da177e4c3f41 drivers/video/aty/atyfb_base.c Linus Torvalds         2005-04-16  2037           udelay(10);
> ^1da177e4c3f41 drivers/video/aty/atyfb_base.c Linus Torvalds         2005-04-16  2038           pm |= PWR_MGT_ON;
> ^1da177e4c3f41 drivers/video/aty/atyfb_base.c Linus Torvalds         2005-04-16  2039           aty_st_lcd(POWER_MANAGEMENT, pm, par);
> ^1da177e4c3f41 drivers/video/aty/atyfb_base.c Linus Torvalds         2005-04-16  2040           do {
> ^1da177e4c3f41 drivers/video/aty/atyfb_base.c Linus Torvalds         2005-04-16  2041                   pm = aty_ld_lcd(POWER_MANAGEMENT, par);
> ^1da177e4c3f41 drivers/video/aty/atyfb_base.c Linus Torvalds         2005-04-16  2042                   mdelay(1);
> ^1da177e4c3f41 drivers/video/aty/atyfb_base.c Linus Torvalds         2005-04-16  2043                   if ((--timeout) == 0)
> ^1da177e4c3f41 drivers/video/aty/atyfb_base.c Linus Torvalds         2005-04-16  2044                           break;
> ^1da177e4c3f41 drivers/video/aty/atyfb_base.c Linus Torvalds         2005-04-16  2045           } while ((pm & PWR_MGT_STATUS_MASK) != 0);
> ^1da177e4c3f41 drivers/video/aty/atyfb_base.c Linus Torvalds         2005-04-16  2046   }
> ^1da177e4c3f41 drivers/video/aty/atyfb_base.c Linus Torvalds         2005-04-16  2047   mdelay(500);
> ^1da177e4c3f41 drivers/video/aty/atyfb_base.c Linus Torvalds         2005-04-16  2048
> ^1da177e4c3f41 drivers/video/aty/atyfb_base.c Linus Torvalds         2005-04-16  2049   return timeout ? 0 : -EIO;
> ^1da177e4c3f41 drivers/video/aty/atyfb_base.c Linus Torvalds         2005-04-16  2050  }
> b7468168631e03 drivers/video/aty/atyfb_base.c Benjamin Herrenschmidt 2009-02-05  2051  #endif /* CONFIG_PPC_PMAC */
> ^1da177e4c3f41 drivers/video/aty/atyfb_base.c Linus Torvalds         2005-04-16  2052
>
> :::::: The code at line 2002 was first introduced by commit
> :::::: 1da177e4c3f41524e886b7f1b8a0c1fc7321cac2 Linux-2.6.12-rc2
>
> :::::: TO: Linus Torvalds <torvalds@ppc970.osdl.org>
> :::::: CC: Linus Torvalds <torvalds@ppc970.osdl.org>
>
> ---
> 0-DAY CI Kernel Test Service, Intel Corporation
> https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org

Sending the fix.

Thanks
Vaibhav Gupta

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAP%2BcEOMs-vjxr4Oir6ZA6k3Ai6zdr4bBySaCLoPgB2Yctk5fGw%40mail.gmail.com.
