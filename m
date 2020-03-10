Return-Path: <clang-built-linux+bncBCX2JBVY5MBBBEXTT3ZQKGQEWENUJUY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc40.google.com (mail-yw1-xc40.google.com [IPv6:2607:f8b0:4864:20::c40])
	by mail.lfdr.de (Postfix) with ESMTPS id EB7721802A5
	for <lists+clang-built-linux@lfdr.de>; Tue, 10 Mar 2020 17:00:19 +0100 (CET)
Received: by mail-yw1-xc40.google.com with SMTP id o64sf21537424ywb.15
        for <lists+clang-built-linux@lfdr.de>; Tue, 10 Mar 2020 09:00:19 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1583856019; cv=pass;
        d=google.com; s=arc-20160816;
        b=oRrotAb1nDueigz/K2CSsLQZryF0SZ7WGhilVNXy2f1nmhvUXcSgGhcTdpdBCNBMcR
         bTx9NOvF2Q0fqKiUAx4WZbVLy8QHVqvMa01N1cMsfjMysXa9d1dDQTYLlSW047W3p4DK
         tYzSpFGBkSup6dRxkXEZ3AuL/AWuvegmTQl0C7rpDZ5AVbAMHb7wwv6qtcGXBCYb5jM3
         22Zsr9wTzdyI4ZkHWHgY0jlo5sP7UocSwiU5BStVGjslSAgfRk9J8cTmW7fdSZvCrHAW
         amMlGdij+Dw5ERcEnZiGSdwd9L0pP7GE9c1nEgCTDtUxTeds2NgYqQUmqJv4xn22NzA/
         Qhkg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=JxrkKsxbBRtrXeVCt9+CoapYZYf1D+wcea7quApiNqM=;
        b=pD5rtDL7IQZz5WMCQyHfIryVJ808Ob7AG7bvMYEUDMwMtCzwzszOSMBU/l3UMvlpcH
         CtmlLOC5oUFw9uJ4pf4xky24p+wqGBW7YOSCGoR4GJms6RwGWqMksG9g6osGBem7fNEj
         ouB2uJHMKzhXCuuev8vtX98oh3erZvnZEdcE11Xm9gxox4CMAXZYzYcTUytglx8DFz3H
         wqIXrPcaP7V4GmuoK3IJjn0XaN2vnJkCHJo9d1armYFDrIvcWjCtQqjE/dPVgGqiPhBQ
         AamxHNzWRQ2lWRnvUO/DQ2Uovl5FAHKO6y8Qs4ItGjgn2UJ1mbMpO5AaSmzq4fH8nsNm
         6axg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=JxrkKsxbBRtrXeVCt9+CoapYZYf1D+wcea7quApiNqM=;
        b=RbGurHo0U1UfJ+2zX8kLvuHNphkUkNvova31+g0KpwINhZMebi8Y76eRQbzYmdF6t7
         GnZh0sa4bqyw63Gce1dsn1/7BtgE/pKNAvneUAWJgeOSaH6f7tSHiH0Qa17qIX0zPD7z
         fR8c9KwwcVJ/+R8lYhwOawhaXFXB3e6Uyf6tYV5Cw2RTSTtPdpNInD3eionL1LOZAX2s
         SYFRiijLPqca/S5S3fGDQFG/7M9BBPODGwFEoUNrbu6lDTmnUKxDxanFMXVd07sbIUBx
         Ltc+FKJ3gdoI3I76/UTJsQMMVB5rWw+c+c/MUUCuRoQc4pQ9+k211mw2cAcWjIM3ZKFN
         NKyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=JxrkKsxbBRtrXeVCt9+CoapYZYf1D+wcea7quApiNqM=;
        b=M4kIlE6yU8qPkdTntNNTR9Dp6yqGQdwbrijsT/7N7C5w9zVY+SCx8Al7UMS/nKpukp
         18I3gpYS/Rqt2eMfy8WbBzmPchJj+3w+6tewdC5NqRbb/72VeN00KvT/JMf3LK7b41ws
         HZdiDxhII8MK20ZWWp5ofokyIQYPp7VZN1Pz7C11ALJxu8NENfWJDwg0cUWF83IGFiuu
         Dgap17ChVTrB1+QmXzRJ7mdWtUPut4qwCBGWtqnIgFYxaqJXWyF9gmnrrtLeohCS9Ivs
         UbOWVH6TUg0fD1NX6Z4L3HqzBbOYbb/xLk5kseqv7BHWt6JheHNuCndCS+YZf6waEn4V
         2T8A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ3sdfduW+st8aW9+ZRIuv3gBAITShAicCurQbRHi2IO7/X4388v
	tqXX6eb6Ilt7HNvYL6aaJPw=
X-Google-Smtp-Source: ADFU+vuVQsIQfkf6IB26jODN60gka+dAb5ZSEVeardRqD+YmSSitwhHb01SUNfh+UVrxbSP2WUlieA==
X-Received: by 2002:a25:cc8a:: with SMTP id l132mr23804921ybf.178.1583856018908;
        Tue, 10 Mar 2020 09:00:18 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0d:cb88:: with SMTP id n130ls579773ywd.2.gmail; Tue, 10 Mar
 2020 09:00:17 -0700 (PDT)
X-Received: by 2002:a81:ad27:: with SMTP id l39mr10011178ywh.194.1583856016957;
        Tue, 10 Mar 2020 09:00:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583856016; cv=none;
        d=google.com; s=arc-20160816;
        b=oI7SkKzYQUdpw9wFpRc9S9hzvao1uelGAH9ndliufhd+SaVlGG6x9PmiEZQQHWkfdb
         INChPrdnM/psOe+tQPgvJiwvTk4kDeHQzDURV5rhT0JWADAHFlBa8QQhHrCz5zikEAwp
         mmQY9VRqMGiceprrbLyNacmBImUb7LKPQrzWSQkziK4/VeKMUuTiFQH8qgK9SVMeb4vY
         nGnFquuZ5RpXT38iGGgOGbtr8/nr3BzR0NUGBjzN9uBSbS/6BZ4LW7AVijpYgvg3Q26C
         N3abb3prFI9JME+9F/8MwLHkBT+Y4dDbI9nLZK1w4YNjNG31cOQpj2iMDb1xmfviOgDp
         pHWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=zXCbFAvotqa1qO2b0vHggTty7okjRklUoSHXec4hsNs=;
        b=OwoIyoEn9sWzo8DqQFncLRk4+ypNuv7Zi6xrRM6dxxvNc79zhx32cAO0Sa5GhD2zTQ
         C+5/lauIRIUPG6EZT9Gb1UPLLlV+sfSusxWQw89SBrA6vnNZvVUA844tUYftlLwquyYC
         ipo+CVh97gjZWDjtvtywj7PQE9+Ce4PZ32TcyfeWW81HztXQtallTN3WeggqIM164y8/
         6Pd+i5W0f8Czgdu8hTbMlYekHotBNB5l3QCiHY7JyqrN4FXmE3ANuEGervxROReJykt+
         Q+mTvyjF23A7nyNA/KemlqRVNoTsN/MNihp4Gz8i1rAlVoP6zyJHstxxTQaludYHHy4V
         hqug==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga05.intel.com (mga05.intel.com. [192.55.52.43])
        by gmr-mx.google.com with ESMTPS id b130si857234ywe.2.2020.03.10.09.00.16
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Mar 2020 09:00:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of philip.li@intel.com designates 192.55.52.43 as permitted sender) client-ip=192.55.52.43;
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by fmsmga105.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 10 Mar 2020 09:00:14 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,537,1574150400"; 
   d="scan'208";a="236079828"
Received: from pl-dbox.sh.intel.com (HELO intel.com) ([10.239.159.39])
  by orsmga008.jf.intel.com with ESMTP; 10 Mar 2020 09:00:11 -0700
Date: Tue, 10 Mar 2020 23:58:53 +0800
From: Philip Li <philip.li@intel.com>
To: Jani Nikula <jani.nikula@linux.intel.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>, kbuild-all@lists.01.org,
	kbuild test robot <lkp@intel.com>,
	clang-built-linux <clang-built-linux@googlegroups.com>
Subject: Re: [kbuild-all] Re: [jani:device-info-inheritance-v3 3/19]
 drivers/gpu/drm/i915/i915_pci.c:212:2: error: initializer element is not a
 compile-time constant
Message-ID: <20200310155853.GE22995@intel.com>
References: <202003060916.RI5pROBS%lkp@intel.com>
 <CAKwvOdkNXFFzw4fBBzSMf2rUd3hV5Vt=11ONLf4nX4FrcmHFcQ@mail.gmail.com>
 <87k13ulyho.fsf@intel.com>
 <CAKwvOd=eHp8ZkS4B-GY9fbaUXS5wNxZQbU+eV6wbsXQ_69bieg@mail.gmail.com>
 <874kuwoani.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <874kuwoani.fsf@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: philip.li@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of philip.li@intel.com designates 192.55.52.43 as
 permitted sender) smtp.mailfrom=philip.li@intel.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=intel.com
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

On Tue, Mar 10, 2020 at 10:51:29AM +0200, Jani Nikula wrote:
> On Mon, 09 Mar 2020, Nick Desaulniers <ndesaulniers@google.com> wrote:
> > On Mon, Mar 9, 2020 at 1:32 AM Jani Nikula <jani.nikula@linux.intel.com> wrote:
> >>
> >> On Fri, 06 Mar 2020, Nick Desaulniers <ndesaulniers@google.com> wrote:
> >> > Based on the tree, I think this report was meant to go to Jani (cc'ed)?
> >>
> >> It baffles me that the build bot burns resources on building random
> >> branches in my personal repositories.
> >
> > It uses a branch naming convention to avoid testing branches:
> > https://github.com/intel/lkp-tests/wiki/LKP-FAQ#is-there-a-way-not-to-trigger-kbuild-tests-on-a-specific-branch
> >
> > But in this case, it seems it caught a build breakage even further
> > upstream, which is valuable, right?
> 
> I guess, though I usually only use it to share some half-baked
> stuff. Perhaps I'll also start using it for build testing some of the
> more obscure ideas. ;)
> 
> >> That said, this builds on GCC 8 just fine. Is clang not able to do this?
> >
> > Places that require integer constant expressions can be very subtle.
> > See this recent example in i915 for example:
> > https://github.com/ClangBuiltLinux/linux/issues/918
> > Sometimes reproducing also depends on some configs.  In this case,
> > it's not as I've fetched your branch and can repro on defconfig.
> 
> Yeah, reminds me of earlier issues with GCC and Clang having different
> order in certain checks and optimizations, leading to Clang warnings in
> code that GCC just optimized away.
> 
> > This is definitely our bug: https://bugs.llvm.org/show_bug.cgi?id=45157
> 
> Any idea if older GCC is also limited in this regard? What versions does
> the kbuild bot test?
Hi Jani, we have gcc-4.9/gcc-5/gcc-6/gcc-7 now, gcc-7 is default, and others
will be picked up randomly, thus it may not have chance to test this commit
yet, we can give a try to let you know later.

> 
> BR,
> Jani.
> 
> 
> 
> -- 
> Jani Nikula, Intel Open Source Graphics Center
> _______________________________________________
> kbuild-all mailing list -- kbuild-all@lists.01.org
> To unsubscribe send an email to kbuild-all-leave@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200310155853.GE22995%40intel.com.
