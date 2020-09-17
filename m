Return-Path: <clang-built-linux+bncBAABBKH4RX5QKGQEEM52UDA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x93c.google.com (mail-ua1-x93c.google.com [IPv6:2607:f8b0:4864:20::93c])
	by mail.lfdr.de (Postfix) with ESMTPS id D363E26DF6F
	for <lists+clang-built-linux@lfdr.de>; Thu, 17 Sep 2020 17:18:01 +0200 (CEST)
Received: by mail-ua1-x93c.google.com with SMTP id q1sf286685uao.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 17 Sep 2020 08:18:01 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600355881; cv=pass;
        d=google.com; s=arc-20160816;
        b=BdaBEc9GszvBAm8yMdRbnIQeKNtHAymMYm6p5cxvTe5PoFX6Kz7eGKzBIrf3t6P5aD
         1+nyLjUUybBZuc2P0IQECUsdP7oUUHNewXIy1rxZ4NQcGlEtEK352yz4BI2MFLFNoY1f
         E9rzWiMMRYaxpE54vuaB1RdGeCox/GZmGZ6Ur1bdv634KwelSTplZuaRqTTyPt+AhvGn
         4Y8CBN72r9VodfbA+pO6qM3Kf+QsWdMyUfRSqaGGBtrSGHBSv5WRRtVF8jgssbR3L1aT
         GCO8Cf4dKACoFM3GuF7uDrE4o+HDPbivFaFPkcguDqP5DJbRSIiAau0mR2b8wNlAy7x1
         MLnw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:organization:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=+ylj5RVzIiN/RGnvY8G21J0yh4s4ny5TC01oQoihPnM=;
        b=rm0DQceObDTlT3RDKqS4+WVI7R3NojhMQ81S2EQmzFRc+k612kpTlQaRh40Tn0uNyH
         OA3RaqH6LH7YGs3+1P1rqaOBBDOrBPoEEujmRCr9D5UWafDiEp2zT8BgDp8T6hwmyWEM
         mKI9qjax9dOoClsJJsVTMV98B+1DGGtWDIfMtyASc5VLxezFlT/prz1bfg/KIN7nLiFL
         83JqmSQEMc0xAxT1CsOYgdS3FCKgfNfjff2gHyBND3JFFPn963fhqrH/SRFgBraKweUs
         Yme6htrfHPBkqS8mmB5oc88MN0YCVtC3kAaWM461FKfHvJWIrFbB4z9zB8WL9SXywDrg
         CmdQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of jarkko.sakkinen@linux.intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=jarkko.sakkinen@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :organization:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+ylj5RVzIiN/RGnvY8G21J0yh4s4ny5TC01oQoihPnM=;
        b=et1Q8W30PY9t/vKfBRSmrUq3M9D7iiCYvDsZKWke3KL4IDgnhVHNjH8DxHhN81jSj2
         0ZlnpqMAjZQ/8E4DzHbXIs1V56rpYQvFVNrHkHMPW24QBh5HLYlTERUJD4wZCAmQswGk
         tTfJoWqVUoNLCfBcWcafwg9B6ZgZiDaIp1qquXcVQRXI56CoNyzft3SL7y9Ds34ic7ad
         oSYsYESk1I9gz8Uv2+mOxZxLcabaG7OiktcSXLoc+gNLNZcMpl8R28OwWu+xyEFUbUMI
         P1sYKNyMrV6Rd/ceWu3o1+0nVnmRSY/X6sq089xdBoxFsxNPsroXGWBaws7o6iqFJNWu
         msQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:organization:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+ylj5RVzIiN/RGnvY8G21J0yh4s4ny5TC01oQoihPnM=;
        b=mIj0P/Y2KpihTSYEGyc4T2x+vIcRtSCj/Z3iA/fOeggSw7iGR4uScN/l4EIVGjiCL5
         Mo0/bLmbxCSrkBRh4+GSFFObInSNcDtUFl0V7slECijndoBN8I51q0WTzARMvvul0CBr
         rgOV33fqwcOnASrVxvcFsdDF4qAPRjkeGIAYqAzupPGDGnYf0uDGc2+bkXr+vHkqOrCM
         3FCk1k10ws2D+S1wyTdsevLQw1oU9P50jnD4qt65qP7hNTUvGGbrBb2YI2BhuyWWLqUu
         ZUNORr4ikS2HCizVEfL4fme3/lWbR7MpbRd+2eMEk2EQ32QGUGWnXV/wKmSuDZeaDQVC
         TN6Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5334Ep9scieEz5NMdZrMCSmlqugMCpKi2mnwFDnElIgqQKb1PYab
	XuW0Z6m0f5mxy66CMfZ5zlE=
X-Google-Smtp-Source: ABdhPJxZ2sr63fI2mCXMVYP8bhWsZn/uoqDt/sZ0u8u8z/d9e6ql0IFPLPw/ZbZ5FpetecPrzubs2Q==
X-Received: by 2002:a67:d219:: with SMTP id y25mr17330954vsi.29.1600355880786;
        Thu, 17 Sep 2020 08:18:00 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:20c5:: with SMTP id i5ls287403vsr.6.gmail; Thu, 17
 Sep 2020 08:18:00 -0700 (PDT)
X-Received: by 2002:a67:18c5:: with SMTP id 188mr1115554vsy.30.1600355880144;
        Thu, 17 Sep 2020 08:18:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600355880; cv=none;
        d=google.com; s=arc-20160816;
        b=yL1A7ijWHD2gycX5o+CedUvkf8JP6Rr1n/zUtdZktUIes/Jr393t/14Tj387wunFdW
         2lsp06octPXuGS8f/xO3tC+E9wgDNWaHdTfS9rduJJJ36/AIuEyzW4Nm/fcT0GuP0gWj
         prU6cvqhmD0tlvh7bAaIo9XJ1PhvwDulJBV0vXynA3OJM5F/S6Zj74TP4DRExXfydGZt
         VzRoufBZ8Pude91IHut/plojD3r6V3ih5U5MkGx3Bh+N1EhNqF09289GDucZTfTJboaS
         5SHvFXCdFhxC3IRlySyhjBMxHFLuug1M5AM2QQwCNv6MGcIg9flMBnRueCUdp0IB7ot2
         v6Hw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=organization:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr;
        bh=I/HPbIZsQylJaQbao28q69aKq7Fn3itWvjEe/oVsf4U=;
        b=S3RKlCrsGQbFTxNuXfdv6Yjq/rCkKRG6krbgnhHEFqgOom2nyQq/qPWxxEkPD28a+8
         /icTz+kzfn7Rz8Cq8bE542lqqJChY4bQQxRY7uI0CW+L7qFCED8yicoQR/mDtiLIkA+R
         MYAgJeA2w6FSJdIeSkNoKNaH15aY/fI8iKxLQXP8kzNb35gk1SWssyLzbl7zGXudR5ga
         jeBz871c6up5u1InfI6CFO+or3xzHb9I7v3yeFuGceHdif9XumjY1JQAqZ8scdaBzFvH
         xs7sxRvyuXztkTv/xiTFcYuwZShoa0VBizfSUzBUmk9zYD19HYMWEhtF4E8zo5UJIFt7
         4gqg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of jarkko.sakkinen@linux.intel.com designates 192.55.52.43 as permitted sender) smtp.mailfrom=jarkko.sakkinen@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga05.intel.com (mga05.intel.com. [192.55.52.43])
        by gmr-mx.google.com with ESMTPS id s11si1157163vsn.1.2020.09.17.08.17.59
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 17 Sep 2020 08:17:59 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of jarkko.sakkinen@linux.intel.com designates 192.55.52.43 as permitted sender) client-ip=192.55.52.43;
IronPort-SDR: EiwgJGLhtmBpnRN9b0W58yiCn/MVHhcmO/ikDagH43tarHYPaTxVD1CrlBRBdQ4Tb/gKUcf/hb
 hA3Mh4tYitxw==
X-IronPort-AV: E=McAfee;i="6000,8403,9747"; a="244555663"
X-IronPort-AV: E=Sophos;i="5.77,271,1596524400"; 
   d="scan'208";a="244555663"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
  by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Sep 2020 08:17:57 -0700
IronPort-SDR: M1lrFAmeVaVSXBuRBfeaTNLOIoXhClx6IDPnptq7howuNaMFn35LK2aO2R+aSHFxInOkwzNc9+
 OFALRNBfQhXQ==
X-IronPort-AV: E=Sophos;i="5.77,271,1596524400"; 
   d="scan'208";a="483785650"
Received: from sdompke-mobl.ger.corp.intel.com (HELO localhost) ([10.249.45.123])
  by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 17 Sep 2020 08:17:54 -0700
Date: Thu, 17 Sep 2020 18:17:52 +0300
From: Jarkko Sakkinen <jarkko.sakkinen@linux.intel.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
	kernel test robot <lkp@intel.com>, linux-integrity@vger.kernel.org,
	kbuild-all@lists.01.org,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Mimi Zohar <zohar@linux.ibm.com>,
	David Woodhouse <dwmw2@infradead.org>, keyrings@vger.kernel.org,
	David Howells <dhowells@redhat.com>
Subject: Re: [PATCH v11 4/5] security: keys: trusted: use ASN.1 TPM2 key
 format for the blobs
Message-ID: <20200917151752.GA7389@linux.intel.com>
References: <20200912172643.9063-5-James.Bottomley@HansenPartnership.com>
 <202009131413.8dt8QEc8%lkp@intel.com>
 <1600016571.7833.9.camel@HansenPartnership.com>
 <20200915091140.GC3612@linux.intel.com>
 <CAKwvOdnDJKPJ__sVKX2HmLUWyNPo=b0ccLvyBLyWoFfC0EFkiA@mail.gmail.com>
 <20200916162707.GF21026@linux.intel.com>
 <CAKwvOdnM66H2CNwsscgvALsb=gdiV9UDLQuqrKzdbmCr5S1McA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdnM66H2CNwsscgvALsb=gdiV9UDLQuqrKzdbmCr5S1McA@mail.gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-Original-Sender: jarkko.sakkinen@linux.intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of jarkko.sakkinen@linux.intel.com
 designates 192.55.52.43 as permitted sender) smtp.mailfrom=jarkko.sakkinen@linux.intel.com;
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

On Wed, Sep 16, 2020 at 11:04:33AM -0700, Nick Desaulniers wrote:
> On Wed, Sep 16, 2020 at 9:27 AM Jarkko Sakkinen
> <jarkko.sakkinen@linux.intel.com> wrote:
> >
> > The compiler that you use in your example is unfortunately not
> > preincluded to my Ubuntu installation...
> 
> $ sudo apt install gcc-arm-linux-gnueabihf binutils-arm-linux-gnueabihf
> -- 
> Thanks,
> ~Nick Desaulniers

Thanks, installed for the future. A bit more convenient than compile
your own chain :-)

/Jarkko

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200917151752.GA7389%40linux.intel.com.
