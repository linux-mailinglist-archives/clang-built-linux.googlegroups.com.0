Return-Path: <clang-built-linux+bncBDA5BKNJ6MIBBOMJ337AKGQEJUX5NJY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3e.google.com (mail-yb1-xb3e.google.com [IPv6:2607:f8b0:4864:20::b3e])
	by mail.lfdr.de (Postfix) with ESMTPS id BD81A2D9AEE
	for <lists+clang-built-linux@lfdr.de>; Mon, 14 Dec 2020 16:28:58 +0100 (CET)
Received: by mail-yb1-xb3e.google.com with SMTP id z62sf21179001yba.23
        for <lists+clang-built-linux@lfdr.de>; Mon, 14 Dec 2020 07:28:58 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607959737; cv=pass;
        d=google.com; s=arc-20160816;
        b=eMUlUFm08tdA98MCJf99PpXaJqa1TDoPwWonAWKTsGCBCcfJTQlElbEfJ3TfLEO2VT
         idsZFtMtFKyWl8qi8lHHFSP/4+ZFFlGO7Xce7VZT+z4bWnRXE0TDYuD4GV1GV18p3zZr
         2U0kCRfeCkHz1J3ellomIIHlz0DCxAx/WlxMbkSd178IX9olkgFzaz8XlaNpAoOY3KoE
         pJGtiAxezrFjnUQuWqmcMCrAWgzn0DNNmFqJo4wFvMyeEWgmpvdX3o5tFykK2ng7HG+7
         sa+/g1ceExYL4CskhnC9Wp4CbPJkwUSLXa8RYq+nIMtkQZj4VxN0X/yp1ycgC2uIBxDn
         dvfQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:organization:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=KuGkSZ5zRDxIIk/MxfrwhrMGhFE0Be3zQCQ34DIHV1s=;
        b=hzmBTXXmODLwxZksYCxHEQ62CrkXVtHjCJ2aEYB7Fq27EnC7SPCZZh+E7UA0FWnyrg
         U+LeFGaiCUstE/Ptmhzmezt8u7BzesW8MNDRaF2g0Mf2LjM74hjBZEakHHXjeJZPWVnZ
         lVP2n3aGgXPbl6UaebkWtM7yst/EU7FZJa+CfQ/I1IAel9iEVbhDxm3JhAUncVR6E4lY
         lMBxVmBxc/VBgPeReCI18IzM4jYHdFdnRf5fDs/vVtD9bkbQUMhSDZIdR7u+DddAP5GU
         DkaFglVgq5e1fu15nR3ihmsFTcpXv/xqqnm5HmkfwoLDG+lmSAvA1JdKRB0YygRagxxX
         HrTA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of andriy.shevchenko@linux.intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=andriy.shevchenko@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :organization:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KuGkSZ5zRDxIIk/MxfrwhrMGhFE0Be3zQCQ34DIHV1s=;
        b=M9V9RlF+/ZWSEbk2Tnp+NComGymIehE1WoGpwh0bS/83EozNWWvQAb0SzB9kPG4iab
         izRbgOEBv1+ge3HR/pd8NdVjgSR1UmDfM8WNNqT9Cvp0hxPaG67gRCexzwrUuwSqNRH7
         WBcVJSv6K1nNzpFYiv/fL8ndeYYGNp4k3WFTsHf0wQdn09S3RF68IkGWuRTuvRM75leM
         iWP7pjrYLkOofZTSrsgMreP3k8PHUFby+137wNp89WAV1QNxGkQPrpbwzQsq9czfMQq/
         wPdg+NtQ4GNilGTdca+NG96oVPYCsX63T01odwUg+hAaUWpIEbfIeUtyCF9obaulsbds
         6VgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:organization:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=KuGkSZ5zRDxIIk/MxfrwhrMGhFE0Be3zQCQ34DIHV1s=;
        b=msRuVx7RWOuzfFSEW1MSdb609cLWsDYYDDR546F9BMFsgpIa3sRVuulZuuPjLSvDS6
         RcPWpT6w72ByxZq0t8Wi8GGY2qkhayWThl5WpxMFKRX5tQerxFQqLLwPiQ12cJ5Xhx+0
         U28YYElLc0B529AkbZDSkHwZXoMahZyGnk/+84OR7EsVt72wFvVtGWJL3R4w2YwRoCFJ
         5WNX/+/lvVTsYfKske2vGYfQnb8w/cQGNxVq+ocCoYEJVzj5oeMh5TspiBKne+nzzcay
         A3t1CVipO/zC2wI+x8ifeLgNSa1kPfIkyJITaebySqCeCOmnmvsjLDplM9TWH3t588EW
         yXIQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530jHHHrmP3KrZgIPk0O+pnK8+lHpGlvbnr9QSRzKUuQaeunrtKF
	8Szhb0g8p8p4uX2A98Ov5LQ=
X-Google-Smtp-Source: ABdhPJwf/P7kXbwpreVBAbv90nVXYdnrdl+sKLyrKI0cxKFIXhNyHjjk66TJGGxlIoXvbIVBx8t8bQ==
X-Received: by 2002:a25:287:: with SMTP id 129mr26389820ybc.145.1607959737799;
        Mon, 14 Dec 2020 07:28:57 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:c802:: with SMTP id y2ls430174ybf.7.gmail; Mon, 14 Dec
 2020 07:28:57 -0800 (PST)
X-Received: by 2002:a25:bd83:: with SMTP id f3mr37501123ybh.373.1607959737415;
        Mon, 14 Dec 2020 07:28:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607959737; cv=none;
        d=google.com; s=arc-20160816;
        b=niUm3oSNmGlvrAr92JBWTMROeEyCIoBzpLdPAELj0L04WtUNYTU4pg6KG8pLlpFZ51
         RmsQHHFbkiTgkbZ+Ozoxlv7JAosuiNuYz4dHHwDBM1qugtey4qKNhFqFMcrv5KaJvUsP
         HJmL8Mmyc9/d+k3yAhhwFpEVxdcON1vSVqGrPMsY50ByBiTQckinLBGRki2KOY4zOD2F
         0OkgsRya+jVIbQSEZ9xJUcEZvveYZbln1GLZ8C2XClpR+Nhb7aYkeoiSc+1+3O3YvmVA
         ph7ti9zXtJMq+Mwulq16XTibuMqQAgOWLtn35j2iYXnJpTwBqa+mw5z/jiDoIb2PUh/c
         FqTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=organization:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr;
        bh=c/Yva7Ph33SbMEUQVfcZlp9xO4VOvzbjRexeZhk83GA=;
        b=HKeFxvbxLr2tPVpMEA3cGEHZvs8dinOaNRnwVx/48F8h8bYpO0OcSVjxleoNgpe4OH
         iaTD35L+zBWcJzvBwEZjQQZFsni0I7KTaofof66+STYJxYN5RXkPiHSnx5I9Kxznzw50
         UQ75R20Onm6OrsVpxvWghUCCOiOETYtqx8qmExsVrvwXqu9bhwLrddwpSzGbEiaDELxR
         /jIDc/0h+Vx0lmwTZRrrXGgWYCS9AyLJDe42torJlHfX/6AY6ZSOGkKrVxhowPkD3FZd
         9m5p7IBdOQVY2q0tciADU9TKC/bPGolm4X4Q8vxDiWIJMdYy2giZFor5JgcPtaxf4pFK
         bITg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of andriy.shevchenko@linux.intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=andriy.shevchenko@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga02.intel.com (mga02.intel.com. [134.134.136.20])
        by gmr-mx.google.com with ESMTPS id e10si1683480ybp.4.2020.12.14.07.28.57
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 14 Dec 2020 07:28:57 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of andriy.shevchenko@linux.intel.com designates 134.134.136.20 as permitted sender) client-ip=134.134.136.20;
IronPort-SDR: Y5i9G3F0eV6pViWiEdBiQfYn+oDaDrT3eRCKNW+0JDVbLbxhQuZdnbGeIsqgoSFaCLGqPG4z8w
 7w0qI/XRvvSQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9834"; a="161774545"
X-IronPort-AV: E=Sophos;i="5.78,420,1599548400"; 
   d="scan'208";a="161774545"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
  by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Dec 2020 07:28:55 -0800
IronPort-SDR: OPwsMQMavvnOkLnZ56LPyn7D6nn+yVWXLjMMuRKhic8gvmnwEXWCNPBGokfcYN/1iDaM2LVPLt
 9bOuV6UByL8g==
X-IronPort-AV: E=Sophos;i="5.78,420,1599548400"; 
   d="scan'208";a="487149117"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
  by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Dec 2020 07:28:53 -0800
Received: from andy by smile with local (Exim 4.94)
	(envelope-from <andriy.shevchenko@linux.intel.com>)
	id 1kopnP-00EIcQ-3k; Mon, 14 Dec 2020 17:29:55 +0200
Date: Mon, 14 Dec 2020 17:29:55 +0200
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Sakari Ailus <sakari.ailus@linux.intel.com>
Cc: kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com, linux-kernel@vger.kernel.org,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	linux-media@vger.kernel.org
Subject: Re: drivers/media/pci/intel/ipu3/ipu3-cio2.c:163:56: warning:
 implicit conversion from 'unsigned long' to 'u16' (aka 'unsigned short')
 changes value from 131072 to 0
Message-ID: <20201214152955.GH4077@smile.fi.intel.com>
References: <202011211600.bZyprrVg-lkp@intel.com>
 <20201123104018.GX4077@smile.fi.intel.com>
 <20201211165614.GC26370@paasikivi.fi.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201211165614.GC26370@paasikivi.fi.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-Original-Sender: andriy.shevchenko@linux.intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of andriy.shevchenko@linux.intel.com
 designates 134.134.136.20 as permitted sender) smtp.mailfrom=andriy.shevchenko@linux.intel.com;
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

On Fri, Dec 11, 2020 at 06:56:14PM +0200, Sakari Ailus wrote:
> On Mon, Nov 23, 2020 at 12:40:18PM +0200, Andy Shevchenko wrote:
> > On Sat, Nov 21, 2020 at 04:23:05PM +0800, kernel test robot wrote:

...

> > > All warnings (new ones prefixed by >>):
> > > 
> > > >> drivers/media/pci/intel/ipu3/ipu3-cio2.c:163:56: warning: implicit conversion from 'unsigned long' to 'u16' (aka 'unsigned short') changes value from 131072 to 0 [-Wconstant-conversion]
> > >            entry[1].second_entry.num_of_pages = CIO2_LOP_ENTRIES * CIO2_MAX_LOPS;
> > >                                               ~ ~~~~~~~~~~~~~~~~~^~~~~~~~~~~~~~~
> > >    1 warning generated.
> > 
> > Okay, now we have an interesting case. The IP is quite unlikely be used on
> > ARM64, but my patches made the clear picture about use of PAGE_SIZE here.
> > 
> > So, I see at least the following options to mitigate the above, i.e.:
> >  1/ reduce driver scope to X86
> >  2/ fix the variables to be wider type to be able to hold PAGE_SIZE > 4k
> >  3/ switch to custom PAGE_SIZE / _SHIFT / _MASK and accompanying macros
> > 
> > And I still consider 3/ is silly move because as we see the driver was
> > never assumed to work with big page sizes (besides unsigned short type
> > here, PAGE_SHIFT and PAGE_MASK in the original code was as is and on ARM64
> > they compiled to 0 values w/o warnings, effectively make the driver
> > improperly functioning anyway).
> 
> Apologies for the late answer.
> 
> I think I'd favour the first option. It's not really useful to be able to
> compile this elsewhere; as such the driver doesn't do anything special that
> would make it prone to breakage through changes elsewhere.
> 
> Would you like to send a patch? :-)

Done.

-- 
With Best Regards,
Andy Shevchenko


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201214152955.GH4077%40smile.fi.intel.com.
