Return-Path: <clang-built-linux+bncBCSKPKGMYYBBBOGHZ37QKGQE5NUPDNA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3c.google.com (mail-yb1-xb3c.google.com [IPv6:2607:f8b0:4864:20::b3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 0564F2EA0B2
	for <lists+clang-built-linux@lfdr.de>; Tue,  5 Jan 2021 00:24:41 +0100 (CET)
Received: by mail-yb1-xb3c.google.com with SMTP id w8sf53937657ybj.14
        for <lists+clang-built-linux@lfdr.de>; Mon, 04 Jan 2021 15:24:40 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1609802680; cv=pass;
        d=google.com; s=arc-20160816;
        b=Eul5es34SaZD81Vtq4DM7B+nlRwJ+OB/TpAltWGFLQR4K8yCuFvDHLibrYwjFM8yOU
         xil5rLx3lMO3Zk2KFa73MxpqrRnLHuOkwxtlC/FW/YVYE0xf+AZF7DGC6+ynjnuS/Bal
         RjNRcUdBvVn8EWA/o0itS1T/ecM11OskoH1DRBApxpNtbbW1NlJ+729dkvS6BUfM9/10
         HA24a/3cB98CwsqhrK5O3F0dOXgXmT4ZRtDKcQCcX9Urbs3qwHUa17iE4YCbTP2f19m7
         Y+fhGsD2l34WIXQn8kUyXafIv96UqJDGIoxYttYKn7QeKgZHg1xHCHRx5UDfd/iRyj0K
         fniQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=ZcNY5GSrbCidhxOEnhPEA6yAdi02VEuaJmxf2JovgWM=;
        b=wOaKAtYq5Q0j6IYjt5UvsCrBf+tyETmcFApw227k1i9PyEtnPSy5/6V7dzze4VP7c5
         IUh4swGnVlb3frCCN5Gs4UpOcN9uKfDTWOhpkKQKdV40WgTwrX7DVUfqQbTFbLN2toTP
         cUSXwqnmVfrG5J7MmxqoWQ77diROWOI2bQ8hkmx5MAgYpsRm7CfMc3Jx4t9UT9pDIx8W
         v4tXTuwU+Ayl2UN5/zxi0AV1Nx7GLU4MpAroiTfKyLXwPgu8QqAYAsdrkcw6Mxhp5n/2
         RyyBtjPRJzcFFSg/c3wMiPAUkCRTfRFc31a+SriNFmBzHEhom432IuN6+Lxy7JlVgTVz
         CqhA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of sakari.ailus@linux.intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=sakari.ailus@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZcNY5GSrbCidhxOEnhPEA6yAdi02VEuaJmxf2JovgWM=;
        b=YmZkDX03QtPGZO8XlAAijAftlQ2WDdmuhhdSN3P5wS1xwMjmPlyEDQCq6Vb/ieP44t
         WLnbFY3o1LRz4Hn4Kak4kKKtw9wH2ABeQpsw5xJ0EolSb95PxCYWphFT6sFX5Qkvzm1J
         86X+bEuxA/vr/GXVsS6GfUxlrxYmMk2v5jHfmiptCeeP3ymwQZLFNlZ2n7y4jRzPvp8i
         51wm8ATOKwichmc1qtWXU2JqzByeR1LWxVCffrXPBEbJSz8CTkAvqu7r3DSHsHNGE2aa
         dhhn3Niwwo7f4r8SUc/WhE6nXJs+LTw+Abm9QEs9n20MDLW4kDqDv9IEdAzftq13XesN
         qd6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZcNY5GSrbCidhxOEnhPEA6yAdi02VEuaJmxf2JovgWM=;
        b=SRB3r9tHzZf0IjptuwQoKU0oel7cHTjvOU3/FK1xlijNZjLwZhZTtiPXZSVXxSJaIT
         hXFBQwpB5pplQJvPGR9JryMgRGYSHbw7tH5eTbfP9B0280bhWbETI8yba7AtS2uLQMOT
         MtI0fhMp42n/yVZwUq6Af0qCWKyfN+ZUyp8sFsfLMduMpEsH5Lfd7wTrhH0gt3w1bTW+
         qXSqTforOXBY/pIWJ9E9jyhnLqu7hU1dbCAdX/e8cMly9gmKDNMFR/cKbKNiJV1RfWsa
         hhUOaGQe8Lkv9y+6OW2RDP/q/fPo9mzj74RW7CcFhfkEs6HVfMYMScsPWDkpfeMCRDeu
         NN9g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530aaSrx+7u0vWTctZb7JMGX7JQ9YJo9C9eZR/4AO18ZeRB0l4s6
	1olATjE3UpCEcPOT60ou+rI=
X-Google-Smtp-Source: ABdhPJw3w0T1x9m4SbH6Tf/tad0qW46VDRQweajc20ass16/WhQi2LpEF+55QVkXGb42CuwUeEmUwg==
X-Received: by 2002:a25:2517:: with SMTP id l23mr115772646ybl.55.1609802680121;
        Mon, 04 Jan 2021 15:24:40 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:32c2:: with SMTP id y185ls35947769yby.8.gmail; Mon, 04
 Jan 2021 15:24:39 -0800 (PST)
X-Received: by 2002:a25:cc12:: with SMTP id l18mr106543261ybf.14.1609802679735;
        Mon, 04 Jan 2021 15:24:39 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1609802679; cv=none;
        d=google.com; s=arc-20160816;
        b=r2JeNHIzRBQGuP7b472vwbFpFQXKWYkONaJE52Tmo1ZDocwYZay/Plu9ya9UEwpw7R
         PfYtfm8gd+4moCRe+bKRdy59aNYdXmzfFtZaBXB6JdRarvogKYJEy81RyYAVncTOGVOp
         Y4gYGQuFSzXH/jE6V5cuNFGZEhpU7zHcZ2e4OEWIxgphPA0TmfSgyMzj4iNjELBCW2ah
         Cr+Y8SaAu9Sp/gJjgtsd35Y8sIhPmlL9VNPf77hWYZD+fyDQFu6sogKYmr3l4Su5TdtH
         fTmviGcUNh0k2IWGgocBQDhs4NfwPHkLHES8sxtup6BrE7lJpjBI9N8xVmieYM6riG1X
         HB9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=x3iwLZhi00y5rrzf5KTBLUAgCIt1QSne0fY0PjNI8MA=;
        b=Tb22b+pWvIBsJwYLL+tZeZu8W6VV3KHTibH5BJF8Max8AxQVGalwDD+p3YwrBiCVAr
         06DLAO4KRta1M+6vLf/AIu+tIysM6ZWQKyUhNWzdPr4Z8P0ge+rQiUEDYy71YOgqtcLh
         hIMziGZsFMRl6XJytYW0T9VUWCHxAAZJ2VH7kBMbfl4y993xV/KA9UC5HdFOPTtaz9GG
         ZNhdNKPa66y4LA+l7IF8OMxonV4Zhuqby3Wt2oOEOnjWbSagmS5/xECYOYTQog0nlGad
         2X2Xo03dEQOGEsscaNeDRHG43vJ+iy51j95/MDdwK1Mc1TrbitR+LA8MfRykT176JN9u
         Og2A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of sakari.ailus@linux.intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=sakari.ailus@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga06.intel.com (mga06.intel.com. [134.134.136.31])
        by gmr-mx.google.com with ESMTPS id k6si3972597ybd.5.2021.01.04.15.24.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 Jan 2021 15:24:39 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of sakari.ailus@linux.intel.com designates 134.134.136.31 as permitted sender) client-ip=134.134.136.31;
IronPort-SDR: gUMq1hoOBjav6Be/iIgRQZO1MrmYoD0y4A5lICjkTww8aDaQt/KBiu3Z7HYYpPiV4A/hwu9ztB
 P8Yg7sVvwyCA==
X-IronPort-AV: E=McAfee;i="6000,8403,9854"; a="238574148"
X-IronPort-AV: E=Sophos;i="5.78,475,1599548400"; 
   d="scan'208";a="238574148"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 Jan 2021 15:24:37 -0800
IronPort-SDR: yI2r0COXZcHlByG6Y1F4UGb2DUBpce+BvwiwcPVn41aWUAtM9xDumKy+jz5MrkTzTqb//Kl7/i
 s5vbAvBJRMtw==
X-IronPort-AV: E=Sophos;i="5.78,475,1599548400"; 
   d="scan'208";a="395063174"
Received: from paasikivi.fi.intel.com ([10.237.72.42])
  by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 04 Jan 2021 15:24:36 -0800
Received: by paasikivi.fi.intel.com (Postfix, from userid 1000)
	id CC52B206D0; Tue,  5 Jan 2021 01:24:31 +0200 (EET)
Date: Tue, 5 Jan 2021 01:24:31 +0200
From: Sakari Ailus <sakari.ailus@linux.intel.com>
To: kernel test robot <lkp@intel.com>
Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	kbuild-all@lists.01.org, clang-built-linux@googlegroups.com,
	linux-kernel@vger.kernel.org,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	linux-media@vger.kernel.org
Subject: Re: drivers/media/pci/intel/ipu3/ipu3-cio2.c:163:56: warning:
 implicit conversion from 'unsigned long' to 'u16' (aka 'unsigned short')
 changes value from 131072 to 0
Message-ID: <20210104232431.GN11878@paasikivi.fi.intel.com>
References: <202101050732.JTRq3iK6-lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202101050732.JTRq3iK6-lkp@intel.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: sakari.ailus@linux.intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of sakari.ailus@linux.intel.com
 designates 134.134.136.31 as permitted sender) smtp.mailfrom=sakari.ailus@linux.intel.com;
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

On Tue, Jan 05, 2021 at 07:16:37AM +0800, kernel test robot wrote:
> Hi Andy,
> 
> FYI, the error/warning still remains.

The patch is in a pull request to Mauro now:

<URL:https://lore.kernel.org/linux-media/20210104120612.GB850@valkosipuli.retiisi.org.uk/T/#t>

-- 
Sakari Ailus

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210104232431.GN11878%40paasikivi.fi.intel.com.
