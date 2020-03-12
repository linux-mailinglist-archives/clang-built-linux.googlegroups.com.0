Return-Path: <clang-built-linux+bncBCE2VDMNSMCBBA7EU3ZQKGQELWIH4JI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x23d.google.com (mail-oi1-x23d.google.com [IPv6:2607:f8b0:4864:20::23d])
	by mail.lfdr.de (Postfix) with ESMTPS id E036B182789
	for <lists+clang-built-linux@lfdr.de>; Thu, 12 Mar 2020 04:52:36 +0100 (CET)
Received: by mail-oi1-x23d.google.com with SMTP id b17sf2334522oib.9
        for <lists+clang-built-linux@lfdr.de>; Wed, 11 Mar 2020 20:52:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1583985156; cv=pass;
        d=google.com; s=arc-20160816;
        b=SUtIQwc/1mzyADke/5ffnbeGaeq4yn8IXezQ+mHQKjcY+koC866+Ayu2DRPvUie8Bb
         TC6Ve4g0/kQHl7LPCVIJAKantU7itHtc/7g3ljSoSDl6D9WhDIWdv+dEcaAOhbqO+lOi
         vPkFGgj4qSnNVY+cRMWrqQCGsZP9byXvJI0I7Z/0ZcaVPPHdfmfL+IGPg8duohgeOkyt
         J40bpSVdUk3MjI7B9FATPiCfKhBtu+Cj5pz05QFAzlm6xFGd3XwVnkIykDStAr9kCsrA
         X2kEwBfYUAHaSyQPyntZ3MzJ3p5y+p6ht33Mh81ZRHQQ1eCHXmpfZy3d3xOyLWuRZtWP
         pReA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=U43IineZn+Kqza/EkzhnrJ2wZ21f22zz8KArMWGolY0=;
        b=aQTZq9ZH8tanqnD1l0/Q1Qt/UKXRE06ShRjDaCiOXnj81ZZzdA2AeWpgMAUnbs0+nv
         YJYjPMnSPrLPfUJbi5h2tDutXO1U7X1XOUg7YJ237LEXOjdmbUJt0ODs33jUw1alvw8e
         8Bg1q4Yzwz5rdwP8TZiSi6cLNhcSGyObaWipb4nUNcVosvQO2JcSFQe84HWFQZOoXBJ6
         Czx7CTTTgFqOD11v3IyKz3IZ1tmADEaLrPZwRJil1hfCOB1+K5+32D7p1PNSiln0/r90
         G5J2RA3Sp7R/3Kx+bcHaRJItHOiknLijrIUHCP/7ojvva66+kR/Tielt0No3H6Dw9xh1
         HdvA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of matthew.d.roper@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=matthew.d.roper@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=U43IineZn+Kqza/EkzhnrJ2wZ21f22zz8KArMWGolY0=;
        b=FH9vGmnDzcp1I8H415aot7mMuvCuxx/Uurq2KlH38QyuSHTsodHq9A+Rfgq9CQaumM
         MQubEngenitEakjRDk5GlBv8wz30D6wAbRMmU8YUSIUielUQR+Lqu7bqopNDjvcp6AGY
         hALiB3u937wxa1QbqwRtTpSHVqj+qysKYVf7Feo0npFrVF5u4xVGw1zmIKFGL5hCuVF6
         3c5zY/ml4JbEcjLhLDOVIst93Ab4OQnSVnW+F7gdGgSmkyJYSUKi2ktloy5T6BqQ6R7l
         WdQpjL5gvD5ervdOhBZU7tReJ1xA5IZECUBrOqE6OI6Qz2QINmCcNI0bjZxro/5SS65q
         Pivg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=U43IineZn+Kqza/EkzhnrJ2wZ21f22zz8KArMWGolY0=;
        b=KgW6dCmnk4FPWRUPFouaAXRKNbKpx9eYWHwkMgFUEjagkihmBMzW2MlrMKtehgnKcx
         rbT2v16xpfcE32e02OqeubyKjGqi3VM2vQLLqcH/suskIQh3g4xFpHOARhRqdbyLt0UG
         gCdQ2FSswKCt6pV1f8b6bRcgtw9YuaZTjad5oASbLPvz6v9j0ReR52BwyhhgtSaTAK7E
         GKe4PzreP5hcN2RHtzmBstwDvuxuXW1QaFfaierQ+rj881WImmM6OzaujJPoMB8L+rbq
         WvMElpnp0s2v2N6JjP0gAe46SDfHD+ie5aeYEfFVhENxfm3KOIEZpGJJ1XLogO69FArN
         F77g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0Boi5kkPOD6/DG7IiFpoU2CzNpA33RBuvLwWvjEz23XT+oV5V6
	/7+y9ByXTQqVPUwKrvvEUGA=
X-Google-Smtp-Source: ADFU+vtUj/fMk4DmkX7m3NKTOYGZapdyOcL/2qT7xyzs7Z1iJGRWfXQRntdSXyYZ1UCyXk1Zn8sPBQ==
X-Received: by 2002:a9d:6946:: with SMTP id p6mr4781706oto.224.1583985155829;
        Wed, 11 Mar 2020 20:52:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aca:2415:: with SMTP id n21ls990338oic.1.gmail; Wed, 11 Mar
 2020 20:52:35 -0700 (PDT)
X-Received: by 2002:aca:5c57:: with SMTP id q84mr1271742oib.33.1583985155484;
        Wed, 11 Mar 2020 20:52:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583985155; cv=none;
        d=google.com; s=arc-20160816;
        b=IumhaCJzZxPGgknUIh3DSYuQe/wT4LMgicnXDCN83vC1AUfERxw/Ts5iYgnqNQHvZ1
         cji2ezAfS3EyHAR3xg+I630L+O1DCnRFODtI53m2PaHXanuQqUBXbYl+SokPUErE2BEn
         SyKJTGOMrhBNJLKITkCnIGSeCLTUz8aQqGTOG3dJuKs0efg9DY9mLT/+Yhy/ApANsIIU
         M3V+0ow22dzcbVrPaguOBQRFksFCtyAAzEGuuHT45R3jERrHEdQBXCspqXDlhFSllocY
         kcR51HPxpz7ee+4lPk5ymxSLukK0XKpC3vp5IkD7QXx57rDYb+e29ObO37qtmXTOOcZ7
         tXSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=hroJfoUfnUej91eD4L170ddtCm/PrF+CfNjSQZ1pWoY=;
        b=AXGjRCakxZx2a+uMtpUYjRd1svb+dmaoJJeDLyPKc2hzPOnP0aKGzVcYO4KIsVLuRr
         M9ggBRvzB0XZ9jgYU+ykHnm01FlWEEsAcxt6ltgn8lzPnuniz9IGLAmYPdODwlqn9Ob8
         W+RN0IcgcNGHXVqOPZ8XFbz0YUqib3nyIj5HWVMYsg8dq1BQkMRzgCkhtSEaTHxKXj7R
         rCi2rKnh1MUyR7I2c82EjK+16IX2R8NN5ZcGrS9asJ6/4psfBn/pTuiOfo9xTqapL//n
         p7NNAcJ0g7aVMHQzPl96xhjZFeAxvwrwruihbNYsq7S+vygRZJ6RMTMLh2FOgSXxvz6o
         Pt+g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of matthew.d.roper@intel.com designates 192.55.52.93 as permitted sender) smtp.mailfrom=matthew.d.roper@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga11.intel.com (mga11.intel.com. [192.55.52.93])
        by gmr-mx.google.com with ESMTPS id w2si290663otl.3.2020.03.11.20.52.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Mar 2020 20:52:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of matthew.d.roper@intel.com designates 192.55.52.93 as permitted sender) client-ip=192.55.52.93;
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by fmsmga102.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 11 Mar 2020 20:52:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,543,1574150400"; 
   d="scan'208";a="236679685"
Received: from mdroper-desk1.fm.intel.com (HELO mdroper-desk1.amr.corp.intel.com) ([10.1.27.64])
  by orsmga008.jf.intel.com with SMTP; 11 Mar 2020 20:52:32 -0700
Date: Wed, 11 Mar 2020 20:52:32 -0700
From: Matt Roper <matthew.d.roper@intel.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: =?iso-8859-1?Q?Jos=E9?= Roberto de Souza <jose.souza@intel.com>,
	kbuild-all@lists.01.org,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	kbuild test robot <lkp@intel.com>
Subject: Re: [linux-next:master 5552/7467] intel_workarounds.c:undefined
 reference to `__compiletime_assert_184'
Message-ID: <20200312035232.GA1915840@mdroper-desk1.amr.corp.intel.com>
References: <202003120026.Dan8Lnio%lkp@intel.com>
 <CAKwvOd=MB54aDeF3yQ18Zu=Vd0BH2Be08VjBvRpTD88swes7KA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOd=MB54aDeF3yQ18Zu=Vd0BH2Be08VjBvRpTD88swes7KA@mail.gmail.com>
X-Original-Sender: matthew.d.roper@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of matthew.d.roper@intel.com designates 192.55.52.93 as
 permitted sender) smtp.mailfrom=matthew.d.roper@intel.com;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=intel.com
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

On Wed, Mar 11, 2020 at 06:28:46PM -0700, Nick Desaulniers wrote:
> Matt, did your patch ever get merged?  Can you please "chase it in?"

Hi Nick, the patch was merged a couple days ago to drm-intel-next-queued
and drm-tip branches:

commit dbe748cd3af4a7c264a94e3e7c56a084dbd0164d
Author:     Matt Roper <matthew.d.roper@intel.com>
AuthorDate: Fri Mar 6 09:11:39 2020 -0800
Commit:     Matt Roper <matthew.d.roper@intel.com>
CommitDate: Mon Mar 9 09:17:12 2020 -0700

    drm/i915/tgl: Don't treat unslice registers as masked

From there it will work its way up the maintainer chain as the various
maintainers send pull requests.


Matt
> 
> On Wed, Mar 11, 2020 at 6:05 PM kbuild test robot <lkp@intel.com> wrote:
> >
> > tree:   https://git.kernel.org/pub/scm/linux/kernel/git/next/linux-next.git master
> > head:   134546626849cd6852d6d4bf8f207b5fbc54261b
> > commit: 50148a25f841dc1e2cffe1669d4782dfa75d85d6 [5552/7467] drm/i915/tgl: Move and restrict Wa_1408615072
> > config: x86_64-defconfig (attached as .config)
> > compiler: clang version 11.0.0 (git://gitmirror/llvm_project 6309334b9574017523f73648da879fa5e6ef017a)
> > reproduce:
> >         # FIXME the reproduce steps for clang is not ready yet
> >
> > If you fix the issue, kindly add following tag
> > Reported-by: kbuild test robot <lkp@intel.com>
> >
> > Note: the linux-next/master HEAD 134546626849cd6852d6d4bf8f207b5fbc54261b builds fine.
> >       It may have been fixed somewhere.
> >
> > All errors (new ones prefixed by >>):
> >
> >    ld: drivers/gpu/drm/i915/gt/intel_workarounds.o: in function `intel_engine_init_workarounds':
> > >> intel_workarounds.c:(.text+0x1a1f): undefined reference to `__compiletime_assert_184'
> > >> ld: intel_workarounds.c:(.text+0x1a24): undefined reference to `__compiletime_assert_184'
> >
> > ---
> > 0-DAY CI Kernel Test Service, Intel Corporation
> > https://lists.01.org/hyperkitty/list/kbuild-all@lists.01.org
> >
> > --
> > You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/202003120026.Dan8Lnio%25lkp%40intel.com.
> 
> 
> 
> -- 
> Thanks,
> ~Nick Desaulniers

-- 
Matt Roper
Graphics Software Engineer
VTT-OSGC Platform Enablement
Intel Corporation
(916) 356-2795

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200312035232.GA1915840%40mdroper-desk1.amr.corp.intel.com.
