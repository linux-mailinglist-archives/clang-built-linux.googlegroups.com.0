Return-Path: <clang-built-linux+bncBDA5BKNJ6MIBBOUC3T4AKGQE5KMU43Y@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc39.google.com (mail-oo1-xc39.google.com [IPv6:2607:f8b0:4864:20::c39])
	by mail.lfdr.de (Postfix) with ESMTPS id C9A452282CB
	for <lists+clang-built-linux@lfdr.de>; Tue, 21 Jul 2020 16:52:43 +0200 (CEST)
Received: by mail-oo1-xc39.google.com with SMTP id m6sf9778210oop.2
        for <lists+clang-built-linux@lfdr.de>; Tue, 21 Jul 2020 07:52:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1595343162; cv=pass;
        d=google.com; s=arc-20160816;
        b=XOSls0v/8lK6HYm7Istg7r8/jOr2lUI6ecy6znoaSB6OJY+TfpxI8jM108jd6VH+6B
         ip0yTK/ft92LyNvpZOx+N8AY/75sCqOQQ006j9nOlBOzSNhWFnD842KSwDpsZYjgtk5i
         mW4oLiEs4H7wZGP2Gbn43sHi/jfHXEI0X61G4h/qiZYKIsAN+RqYH6946IOL7oR1zK5L
         iErolroEcz2ecZRBX+ErYupE8Tia/c92DXlANYD0w3lEI5q2E6OzQK7D3jiyFG90J0rr
         cUrviDa6NMuE21n05nD4bYoYRjgXlq9Pb88YjZ2RA41/nMM5i6xXOCCw4cCscnj+CAH6
         H/Ag==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:organization:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=6tNMk/zPh0Rz1MtH5FRwMn569yvQjORpSxhEhRu7nfc=;
        b=QjDCzlmOnBv/vUEtXUGbVqfHRoiRxiudDrKj3rdSmt7EtNmJO7m9hxig18YJb+P1dR
         7ppvVvoFR/jb4r2QCM79TkrbENp0TY2sOt54v93OlFsyPwpdhrTRv9kBT7qCVB1wYINf
         rs0UlPNh2YOi28LntZTvfUxD5uTcAlu6dXThUhdpQ/RBpGNZ6Wrb9I+bt2wA/cUwhB1R
         LfNzpAzYvrKG62I/ERSNPSiXX7wB3+yppPiqOCo7vnOxCWGC1/f6aWiRUkRVxhscUpnb
         rPk1l12rb60iLBREsb+551BAAXtWBXbktk8C1MKeP5hTO+5G8euGIzky0M+BW8HFVFz3
         KBiA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of andriy.shevchenko@linux.intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=andriy.shevchenko@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :organization:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6tNMk/zPh0Rz1MtH5FRwMn569yvQjORpSxhEhRu7nfc=;
        b=X3hWDopzX4z7GGPBHN9lT1rkttmDa4sLSXgW/d4VIASkrzzPOC9KCsQop4rTB5zAND
         f2wt+Kaulcpxf/u+g+v3TW8FgS5l88vgk004b9CBegiaZ4gdQyWxAJUVqymAUOwkR/Vx
         QcsKPWHzECKJJqQeA/H9kNKargsXbURsvqe26zMfPrh483QKjCuj8BQjI/gD+zc7f9SW
         eK0sUqa4eUmxbsZ/2D2SPqD6Mjy3sVzUn5bxPPK1176eONiNEv0AXzRIDKXejDBP7+dJ
         8FXYHSFWmQ2E1SurekeAgnXOygJ7uZYm5VstJx3QorI/ofdXHq/4kNT9THAydefgN4z7
         Um6w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:organization:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6tNMk/zPh0Rz1MtH5FRwMn569yvQjORpSxhEhRu7nfc=;
        b=FXof7RPcFqR4ePSrLY3QwG17Bbgbr6fd9px1YSDZNEd93HIhzlbZmTyXm621SQFsFt
         NeGHLrv/TaRJDyqrnYROByYNa0COr/RtxmUwvtYlVNVwYkFbVacjN6DREzSCqZzfS2nu
         /si+Hptbcknygr8x/PwL1OIGxugyEavFeqNtyHSPiCdI7QVGf9i3lQwUp1VMO3LWt4eF
         hlTZLBUUCsyCs8PH4y5unCvTpSGp7qqi1eK9+2Ts2xdYeLMHOB2+Rq5qKNFDgdMTo5dO
         xBsiz+DKqdIFiQYVxYF6vqA0j4SdyWBveT4SgSj74DEc+z4QDx1pIi37T4UxM+MSpIF3
         MR7Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530+5twFXKrW5up4lVffbJjhc1H/uoO4PPMwWV9KuI9ndWJEle0M
	CTuuRnrVHAXEtUDhyTeK8O4=
X-Google-Smtp-Source: ABdhPJwIERXjZPC1HwPIYXQpWBtOIpxFd4iqh3UibyvA7Cze2m6i905Waeq7fzviHE7vg+UAC76eCg==
X-Received: by 2002:aca:ab90:: with SMTP id u138mr3202758oie.132.1595343162704;
        Tue, 21 Jul 2020 07:52:42 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:644a:: with SMTP id m10ls3978988otl.7.gmail; Tue, 21 Jul
 2020 07:52:42 -0700 (PDT)
X-Received: by 2002:a9d:6b19:: with SMTP id g25mr25593871otp.160.1595343162387;
        Tue, 21 Jul 2020 07:52:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1595343162; cv=none;
        d=google.com; s=arc-20160816;
        b=GDtcrQAr9B3S/mrULnTzEXS+v/owLa0uWK3w+mJL8UVNi/6zTBwQvbouqDZymgOqTJ
         0jCqCQ2dqD+MlN/N2OACZHscg5PEZ3ueupf+Os8SXuDsm9+15f3R3XioaAdXxALOyIK/
         upRmwbyJIz2iIC+uTQ+T0J0x8WHfW1GCt5zMxsKgl4jCz/6XV19IEEOE3RxahC0cOf5R
         wJZzZR4RJ2fJg1JEuqmOhIN9EIvM25Rn785QpOmbRZa/S94tQa0mbzU8jvPYVywpjqpw
         yYcvvRDuHtvkSn88ef/7KRxAhHoUWjVFX17ROfzdyVhAVCXtV/fwl5NWJ1ZWLAC8Xsj3
         aWYQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=organization:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr;
        bh=a9EzkxeA0H/FKmUZBeB5kdvAnmguD+KnVOSjFAZtT44=;
        b=agUftf/U0y4ZH45c9yBY0AtSbj2oSgjGWFxrsXwHatPOUWsgGIbkn/FHGDNsKosn/M
         AGh67OFTGhDkFRuKYyuNCJVSpqly2UnQSCA/PbrtjdWSPDGVjKbG9/x65PWY530ANADq
         V3qzpTsmeHAkN/vq1LS2XHG7w9h4l0SjBSQuPoRaWGxuomP1L8P689E2BJ+fKddmxAK8
         9Vvpt+6yk1A4B0ymoqLx37UX4zLzRldZtVCzCc2a+lizaCMsECZttYY0JU/2CfaYc3G9
         wqDEpI+9W0YglotWBlp4k5tbEbmSyj7tAZ1NGPDicYlcGRyLtyeUGIjdFML4d+fenPz6
         YBkw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of andriy.shevchenko@linux.intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=andriy.shevchenko@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga12.intel.com (mga12.intel.com. [192.55.52.136])
        by gmr-mx.google.com with ESMTPS id n25si144689otf.2.2020.07.21.07.52.41
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Jul 2020 07:52:42 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of andriy.shevchenko@linux.intel.com designates 192.55.52.136 as permitted sender) client-ip=192.55.52.136;
IronPort-SDR: +4GUUEDuY95s8FB83VLeNtQqb71N3Mt4zwVLJ9bRjZYog3qhY94NY7OtF+YGpECvQn7xkyFnXQ
 0extCG4t7AtA==
X-IronPort-AV: E=McAfee;i="6000,8403,9689"; a="129708367"
X-IronPort-AV: E=Sophos;i="5.75,379,1589266800"; 
   d="scan'208";a="129708367"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 21 Jul 2020 07:52:41 -0700
IronPort-SDR: hm9XW6v7BidTmKy04/JHqMtqMD662PKkPF5MCajaouJccbWYIiKdr/O5GSGeYGMMvkFLIRGfyb
 h/XeAAXZEVnQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.75,379,1589266800"; 
   d="scan'208";a="488107398"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
  by fmsmga005.fm.intel.com with ESMTP; 21 Jul 2020 07:52:40 -0700
Received: from andy by smile with local (Exim 4.94)
	(envelope-from <andriy.shevchenko@linux.intel.com>)
	id 1jxtdI-0035Np-EW; Tue, 21 Jul 2020 17:52:40 +0300
Date: Tue, 21 Jul 2020 17:52:40 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Linus Walleij <linus.walleij@linaro.org>
Cc: kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com
Subject: Re: [linux-gpio-intel:review-andy 3/4]
 drivers/gpio/gpio-crystalcove.c:357:10: error: use of undeclared identifier
 'ch'
Message-ID: <20200721145240.GJ3703480@smile.fi.intel.com>
References: <202007211817.Pm9UWF3h%lkp@intel.com>
 <CACRpkdZyC_mX9tw2cqRPLrWdBRqsT_vME5w50vb2tQ9kuHD=ng@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CACRpkdZyC_mX9tw2cqRPLrWdBRqsT_vME5w50vb2tQ9kuHD=ng@mail.gmail.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-Original-Sender: andriy.shevchenko@linux.intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of andriy.shevchenko@linux.intel.com
 designates 192.55.52.136 as permitted sender) smtp.mailfrom=andriy.shevchenko@linux.intel.com;
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

On Tue, Jul 21, 2020 at 04:00:35PM +0200, Linus Walleij wrote:
> On Tue, Jul 21, 2020 at 12:50 PM kernel test robot <lkp@intel.com> wrote:
> 
> > >> drivers/gpio/gpio-crystalcove.c:357:10: error: use of undeclared identifier 'ch'
> >            girq = &ch->chip.irq;
> >                    ^
> >    1 error generated.
> 
> Oh I thought you fixed this up locally. Sorry, I'll send the revised v2
> patch.

Hans fixed :-)

I will do it.

-- 
With Best Regards,
Andy Shevchenko


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200721145240.GJ3703480%40smile.fi.intel.com.
