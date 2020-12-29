Return-Path: <clang-built-linux+bncBCQZJVV3RQNBB5E6VX7QKGQESTCRJ5Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x137.google.com (mail-il1-x137.google.com [IPv6:2607:f8b0:4864:20::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B6A22E71EE
	for <lists+clang-built-linux@lfdr.de>; Tue, 29 Dec 2020 16:47:02 +0100 (CET)
Received: by mail-il1-x137.google.com with SMTP id x13sf6348667ilv.16
        for <lists+clang-built-linux@lfdr.de>; Tue, 29 Dec 2020 07:47:02 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609256821; cv=pass;
        d=google.com; s=arc-20160816;
        b=vJflGw56gqmvw3dNLgDD3pkEX58nQ+2Uz0uNNReDcOL3wkZ3ZgYl4QWtMTCpT1YhCp
         jXLzN8UVGpLv7C2uqnZI6XvIQ/4VqXWY7muH2Uoqs6BDscl1bI4BdQ6qMheIwgLi/1XC
         tmbDaQ8DVzOHuREq9u81gN2nDFafnPc1tvjr9PAIUQTPVKlWRlESDQ97dC3dv2qO1oqC
         RE9FU183LY8PASXsWFUbLNEMDVeQXV9+aN0ZpO+cKbzP7v+VjWPMzB3F9KDgm7i/PHXt
         1yR+jrsUYt3sDtdnVAuCTQaXk0NPSf5pnqbbhxFi3r0MOhxoIRv+E8j7Z7qB0IhtvMwh
         17xg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=AOR5sSztdl/uQvKo1bewHJMTlnOEDrndGQfosFKqdXs=;
        b=aaP/T44drcrXUJ7CNvPBCV3x4xx01aSPM/YOM+Xs86NeyZuya+miWaaAn5ZCvlAlOY
         0awioxSjB72WfGM3E6GBihtcX62Q1CYM3vmcdmrZiAt1Ir0PEur8RPTpL5MyAy4A7hs6
         CCBPiwVmU/PtMQ5ppjfKcJmtmVCZFF9JW8RmaIK0y9juxiwu0pqe/k+KDMWv3ooRPImc
         0VKrE+KJa1oZkCKJHhZ24UfuZ97QZNiAAwnyNeyOsT7mE+0Ie+5rNnhqIOclNLTT/Q9T
         tozKQWUIGBDBYLcq5cXpGKqpND5Bn6HiICeEPahxoYmcVkIowy6EzniwU6ZpZqNoZIR/
         JGiA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of rjwysocki@gmail.com designates 209.85.167.180 as permitted sender) smtp.mailfrom=rjwysocki@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AOR5sSztdl/uQvKo1bewHJMTlnOEDrndGQfosFKqdXs=;
        b=NOrHM3kUZCjSYGbbQ3Pw5EcBgglULR8f+hM/B+j8GLZSxhFArjvaVf+o4Wa9h/DMcT
         c8upMEg8FQwJWFxKcbAXlFM92zbR/CdPBs3Yky+X03ZqUmqZqv5VAMZ5mRN+VUYleCYQ
         fa5++6c1imxzYd0hp3oMlqNCquN40JgxxO9E3cRAyFbwXSEpOx1eiwQmmso756RFNzji
         b752KjtTArqE0Npe6b3HKdGmWu4FuFWz6FnBfRfzOj3kPVWeBoSn36iIiUOJ2JIIBn54
         Qe1RX4boa8isWqKyLwVP8626dTMrW1Ck/mtC+kPmMyA2+OD4Qq213kXjN4vmUPAp3OZx
         6NJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=AOR5sSztdl/uQvKo1bewHJMTlnOEDrndGQfosFKqdXs=;
        b=HjrXzjgWEdd52stHYuGZ4MEkTEs3IkBYmcBRy14g8n2HhDbfOR3GfqNmgeRPRuTMWL
         HEHWenEEKvyi5DdaFoQmJAkKcLvOJINagwr5hiQW3No3Ir8SvcaL5xsmE+iSzY+mGYWa
         oxDX0K7TfUZWlsUfItmDbpqbOjal2ysJ64FAOiDBbvI1HUdVIPnpWtFq1aJxWGkJgK2P
         1Nqy30LVSb/NHDe6m2NRJK6m6LeA8SR5MFhLmTWGLAdi6m1gLHRuSLBMhRN/OJVMpXXs
         ZkebE9iIrSWwYBy2jVRf/Z96FAk7D0ugk8rh47nWJMnkyIZnk22HnjH1mhivXJEviVS9
         cIJg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5311M8NaSWRmakPFAfyKlerAzZQjXwqh8pyQi32LaNMBUclS9TgX
	ytAioB3ew3wGHr3LuPZhgik=
X-Google-Smtp-Source: ABdhPJwMXasOKLEjSGXV50MTEJ6AKWyUxZM1kIMxsbHg/Pv0rN8C2bDnTjNfPW84uMLvgZnBVXdwdg==
X-Received: by 2002:a92:ca47:: with SMTP id q7mr47126011ilo.239.1609256820968;
        Tue, 29 Dec 2020 07:47:00 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6e02:1a0c:: with SMTP id s12ls2385465ild.8.gmail; Tue,
 29 Dec 2020 07:47:00 -0800 (PST)
X-Received: by 2002:a92:845c:: with SMTP id l89mr47893419ild.114.1609256820510;
        Tue, 29 Dec 2020 07:47:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609256820; cv=none;
        d=google.com; s=arc-20160816;
        b=EL2AXpSJ2VFm8st1JEu/ZGf7OICOJybrQxKOZpsPAe5Nz0ZBz3i2aSz0ZhsVV8p1JX
         ulUgzbR2+YfqN0hWA13JXMV4ZEq+b1xeo3QIrquMgzSx3ncz6/KcHwwNWsLM8JM53wNW
         28ksgjN2Uvy7u8z1UZES5Bn/jg/l3swscMmsQd0er0ArPZnvgCJqMdW7pdYgHlCbRSh6
         CZ6Ej2zMMrOobkOwkiJ3nwa6/4eIXUb8e4dcvhnDn/aBgVOslbnugLWgMrJW0qnE22se
         dKC/boVeu06ps4f3ntnj7EKfPw8PkCcMTKP84/nXuZz7DxrcJHklSrfgz6NOMg35rDHQ
         /oLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=MEK4Mw7UBxOJIa/S7PzM0wAgV0d+78LiF/JzTK6IpGY=;
        b=V0DxXfti2CdEvQdo/BblsHEPYKs+ywlFDUd6WByPCWaJ+IJvC3xFWWTsQp8tyLSxjs
         FKl76Mj9VHcL+uH/5Smp3JP/WCLGGIa7xxSgNx2z5o7aQEeJaGSUP2l4icCGzLNxyMI2
         nAe+DUA7NJf5rlIa51iNVfefOCZm2fPL6fovI9Ti3pTVqPmT9tFiprcVS/voCXwMxuPW
         c3W3gjDoYK1ntVxi8WkctVvH2iZw7diZLbu/Uq/HPwF2yvBmNnthpbu+bPzamiAFTVkq
         8eKXIifpUZ6gcbZAdi7MXbRclt1DHhw98BMdztYeTXqwzgkA0SNyAXX3RQiGLTlVaPgB
         Nnmw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of rjwysocki@gmail.com designates 209.85.167.180 as permitted sender) smtp.mailfrom=rjwysocki@gmail.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail-oi1-f180.google.com (mail-oi1-f180.google.com. [209.85.167.180])
        by gmr-mx.google.com with ESMTPS id b8si3973752ile.1.2020.12.29.07.47.00
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 29 Dec 2020 07:47:00 -0800 (PST)
Received-SPF: pass (google.com: domain of rjwysocki@gmail.com designates 209.85.167.180 as permitted sender) client-ip=209.85.167.180;
Received: by mail-oi1-f180.google.com with SMTP id q205so14929009oig.13
        for <clang-built-linux@googlegroups.com>; Tue, 29 Dec 2020 07:47:00 -0800 (PST)
X-Received: by 2002:aca:4c1:: with SMTP id 184mr2791324oie.157.1609256820193;
 Tue, 29 Dec 2020 07:47:00 -0800 (PST)
MIME-Version: 1.0
References: <202012271352.JvNDF17O-lkp@intel.com> <34a43212-ff2b-cbc6-a670-975d39ac9f12@redhat.com>
 <16284400-7c71-ee40-b694-614d6daf21f5@lenovo.com> <CAJZ5v0je=BeU98tkXmE9Mu1aiqc4=o288S=uOuFwh=okWJC2eQ@mail.gmail.com>
 <22e7ec14-faab-bddd-fff2-303ab3bff01e@lenovo.com>
In-Reply-To: <22e7ec14-faab-bddd-fff2-303ab3bff01e@lenovo.com>
From: "Rafael J. Wysocki" <rafael@kernel.org>
Date: Tue, 29 Dec 2020 16:46:38 +0100
Message-ID: <CAJZ5v0gyAXmbbjbW=sh9UzZRaJMuc0_Btx4V+4DhrSQOPrt3Mg@mail.gmail.com>
Subject: Re: [External] Re: [pm:bleeding-edge 8612/8615] drivers/acpi/platform_profile.c:147:24:
 warning: address of array 'pprof->choices' will always evaluate to 'true'
To: Mark Pearson <markpearson@lenovo.com>
Cc: "Rafael J. Wysocki" <rafael@kernel.org>, Hans de Goede <hdegoede@redhat.com>, 
	kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org, clang-built-linux@googlegroups.com, 
	ACPI Devel Maling List <linux-acpi@vger.kernel.org>, 
	"open list:ACPI COMPONENT ARCHITECTURE (ACPICA)" <devel@acpica.org>, Linux PM <linux-pm@vger.kernel.org>, 
	"Rafael J. Wysocki" <rjw@rjwysocki.net>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: rafael@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of rjwysocki@gmail.com designates 209.85.167.180 as
 permitted sender) smtp.mailfrom=rjwysocki@gmail.com;       dmarc=fail (p=NONE
 sp=NONE dis=NONE) header.from=kernel.org
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

On Tue, Dec 29, 2020 at 4:36 PM Mark Pearson <markpearson@lenovo.com> wrote:
>
> Hi Rafael
>
> On 29/12/2020 10:23, Rafael J. Wysocki wrote:
> > On Tue, Dec 29, 2020 at 12:18 AM Mark Pearson <markpearson@lenovo.com> wrote:
> >>
> >> Hi Hans
> >>
> >> On 27/12/2020 06:56, Hans de Goede wrote:
> >>> Hi,
> >>>
> >>> On 12/27/20 6:11 AM, kernel test robot wrote:
> >>>> tree:   https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git bleeding-edge
> >>>> head:   a33520709645543f108361fe21fa9434a351c4e9
> >>>> commit: 8c9b909fb1282e43792433e6c1cba125ccfc6201 [8612/8615] ACPI: platform-profile: Add platform profile support
> >>>> config: x86_64-randconfig-a015-20201221 (attached as .config)
> >>>> compiler: clang version 12.0.0 (https://github.com/llvm/llvm-project cee1e7d14f4628d6174b33640d502bff3b54ae45)
> >>>> reproduce (this is a W=1 build):
> >>>>         wget https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make.cross -O ~/bin/make.cross
> >>>>         chmod +x ~/bin/make.cross
> >>>>         # install x86_64 cross compiling tool for clang build
> >>>>         # apt-get install binutils-x86-64-linux-gnu
> >>>>         # https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git/commit/?id=8c9b909fb1282e43792433e6c1cba125ccfc6201
> >>>>         git remote add pm https://git.kernel.org/pub/scm/linux/kernel/git/rafael/linux-pm.git
> >>>>         git fetch --no-tags pm bleeding-edge
> >>>>         git checkout 8c9b909fb1282e43792433e6c1cba125ccfc6201
> >>>>         # save the attached .config to linux build tree
> >>>>         COMPILER_INSTALL_PATH=$HOME/0day COMPILER=clang make.cross ARCH=x86_64
> >>>>
> >>>> If you fix the issue, kindly add following tag as appropriate
> >>>> Reported-by: kernel test robot <lkp@intel.com>
> >>>>
> >>>> All warnings (new ones prefixed by >>):
> >>>>
> >>>>>> drivers/acpi/platform_profile.c:147:24: warning: address of array 'pprof->choices' will always evaluate to 'true' [-Wpointer-bool-conversion]
> >>>>            if (!pprof || !pprof->choices || !pprof->profile_set ||
> >>>>                          ~~~~~~~~^~~~~~~
> >>>>    1 warning generated.
> >>>
> >>>
> >>> Ah, this is caused by changing choices from a single long to:
> >>>
> >>>       unsigned long choices[BITS_TO_LONGS(PLATFORM_PROFILE_LAST)];
> >>>
> >>> So that we can use for_each_set_bit and are future proof for more then
> >>> 32 profiles.
> >>>
> >>> To fix this the check should be changed into this (untested):
> >>>
> >>> #include <linux/bitmap.h>
> >>>
> >>>       if (!pprof || bitmap_empty(pprof->choices, PLATFORM_PROFILE_LAST) ||
> >>>           !pprof->profile_set || !pprof->profile_get) {
> >>>               mutex_unlock(&profile_lock);
> >>>               return -EINVAL;
> >>>       }
> >>>
> >>> Mark can you provide a (tested) patch for this?
> >>>
> >>> Regards,
> >>>
> >>> Hans
> >>>
> >> Will do!
> >
> > Please note that I'm not going to push the material to Linus with this
> > warning, so if you want it to go into 5.11, that needs to be addressed
> > timely.
> >
> > Thanks!
> >
> Understood :) I tested this last night and it looks good. Do I push this
> as a v8 patch on the current series or as a new standalone patch?

An incremental patch to fix the issue, please.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAJZ5v0gyAXmbbjbW%3Dsh9UzZRaJMuc0_Btx4V%2B4DhrSQOPrt3Mg%40mail.gmail.com.
