Return-Path: <clang-built-linux+bncBCX2JBVY5MBBBYEB2L7AKGQE6RMPF2Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc3e.google.com (mail-oo1-xc3e.google.com [IPv6:2607:f8b0:4864:20::c3e])
	by mail.lfdr.de (Postfix) with ESMTPS id DAB242D8546
	for <lists+clang-built-linux@lfdr.de>; Sat, 12 Dec 2020 09:35:45 +0100 (CET)
Received: by mail-oo1-xc3e.google.com with SMTP id o65sf5714731ooo.8
        for <lists+clang-built-linux@lfdr.de>; Sat, 12 Dec 2020 00:35:45 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1607762144; cv=pass;
        d=google.com; s=arc-20160816;
        b=iN896mjj9/IQdUHYAAgqVxQw6Hxr7uBOKWBmvqsN9SGx0XeZ+pNuB/V0vmJrBsiq4/
         yl7RpSGBCwPhdZ93PYDR/co+9UnWkkP8LdjqFhQSXzkacZtD8ZHLykw7qJzohB1EaOAd
         dchhzq06yz/b2Jn/yucCwFhEmfvsJfJOrTwV+cy28KrF3UOt7sWvAwWO/uTDPPVrfEIm
         rL8ulah8YuiG5F016lSYhc8Z0id9oTc+HGXOxBrBKZr0sR3IqKdBY8VVASsNIY4vdQSZ
         6677vNAXCRiXfnt7osojNGbKpSaHe93Yaeqe6yynIGf9RiC93D8frH2I6hgCkOK5mSNY
         2C9A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=x2yKsqF73B20jee7UBbALdaSs+o/DypPEd2a9D0lcwI=;
        b=H++rppO3Aorf9LztfZjCOsb/R7V7Bqr7BmkzJhwB/6nNOZCOWrNq87ALcYmLSY4R4U
         MmMVJB6DHiHSY/QpqlUoiOViJp4aop8S6LwdHhxeYLtLlsaYNlYEHWz/sEnXYMkD/gBW
         p+2l3DSZHCoVoYEp/BXwJvKdotQ7en+jOOiFH0O0RbKkwXHKZ5fDnagBxoD7e8iijDyr
         ibfcgL30I9ODLdc9+fqeflvMojWqy4DEAC5o8/aT5uxKQCeCgrc79+3Y+XY4bwm+FWDf
         70OdEshy2SS12UqPNmpFpHXlnO1OVOTO5clya8MZR2pFIP5URHAKcujz5/5ZQam37cPl
         dQJw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=x2yKsqF73B20jee7UBbALdaSs+o/DypPEd2a9D0lcwI=;
        b=hqDIBdvWHbCzZXlZfnkD1dQvZOY555K3CYi/VHe+WkNV3V7VxO+RUEm3+I4QP4ALHq
         t8D5A+8mRjokQKcM+tZ8DXfrdQ8rxuI9K/y/ad7bt2RzoVwfrOGZ0uPqgY6uB3DTP9mJ
         oCN66gq2h+hmf5bxLCCLZSeSP6NC1qJZLcZ77tn4/Pb1ZHdtTdqpud4HV+QZU+LB7t7Y
         wfc2zbBViXV8Gg+mU6eJJ42URP4juno7oUolz+axnGzdGc8gQADHWpVy0g3D6bQH1c8A
         DyqKgIhOLKY9uppS4KnTO5ttV1zXbXd4h6cDztWx8pOEVbgnomV8gLIIWpzBUc7BdZIU
         IRxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=x2yKsqF73B20jee7UBbALdaSs+o/DypPEd2a9D0lcwI=;
        b=OPVMSjJWdQZXvhi3hp3MBMlGGfdQRbW1ACfDYOppFjYL7Jg+yQZbabtsKtZQTC53i6
         fcHgp83OWYAFXwurceoehGfxqozFjtZOw3F0j6XX7Q+3PvcpxDQgSsS+zMotjndKSWtO
         7oRRWxUq/hcwE7mfkzx66CXt+cizplXQ36dJmpbtPYQx3SaVRp8HHsRpvxVy/p20LSa0
         uwuITVnJfRC2cEQ6WetkCx+L8ruIq36gEEPxqJhZM5RMwa9edKg3H54Xu36Fmkt9wKqt
         3PLprlLiibw3Efk1Gwmx4sxGe+n7vLFIPfzsBiRNWbTaDt80QDTcVpemGezl8c/z0Bt7
         NdTg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531SKplQdKiUWOkVWwS1l2JeEHxiQMg1m8s3KVAIAY+t0VDRzJfW
	93ITQRmER1zkJMTaSI/Q/JY=
X-Google-Smtp-Source: ABdhPJyzwqYcHNDMLqFtCdgXAaAtNXj8oTlGOEw7akWYTKF1mLrm4Gzt74f5LxnRybtFY9ySrf6Myg==
X-Received: by 2002:a9d:3be3:: with SMTP id k90mr12904444otc.50.1607762144427;
        Sat, 12 Dec 2020 00:35:44 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:8c3:: with SMTP id 61ls3060018otf.6.gmail; Sat, 12 Dec
 2020 00:35:44 -0800 (PST)
X-Received: by 2002:a05:6830:cf:: with SMTP id x15mr12729292oto.55.1607762143959;
        Sat, 12 Dec 2020 00:35:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1607762143; cv=none;
        d=google.com; s=arc-20160816;
        b=qdGIM3XdOH7RxUKvNCHmQMNL9v8D0tEP/EvscNMSJKJtU+3EdgNiLhRiqU6IM5udPr
         0Sd8wfH2jFjn303EExRhpqZgI0UxQsb4eIFRKnR9PuP5hoF3E8tBalzBJUSKZ3KDDV8w
         rhPHod6syTpjLw8DJyjUvTbk/ADDxZWsjwvanYM8F7F45WeKD3tsx6+OtVGMIlVMqkpa
         uj/0VpxNTHcJG3OnW2VwRSE8V//iux/RxdrFSa9tc+i2eJ+7e5jcoP8NREK0DIga2tGf
         rXXnZrpw7TuYADrtjkDbcJ2MRMfLbafMgGLWxzgAKskD+6xQMHiwVXaH0PpJJPV4wLPk
         96Xw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=MpMEdXtEsQl10Iiis8FY06h6/S7IAx7T+bQHO29QsIo=;
        b=Y/eiuX879u8ZIMrnBfReIHVvTzzQ2pACNkz7yJC6k5emHM8mRFEqklViV7b/2jp//3
         VlqfozR11lwSdy/eVykHCw4eUeZen1WBPHNonC1K9r6bfiBzaOc56CHP90vXnbN5boKS
         vJGjz5Q/V7ngzezECTShD5eRCYt7Zxmx9TIF9YdsKry9BoiNyKcWrN+CsKpTh1NJlmEo
         quAVFYiafozqFIJgGrysi0m/UMtPMy5tYMnXt7jkJGGbv4GoSPFHlWilYIYb++QO4e5i
         pbhAl0oO5PFsXGGa6436v+jaxGfBHeLciEPMzgppM1pEj7ta5TUbLJigdq72te/76+LH
         fgmQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 192.55.52.136 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga12.intel.com (mga12.intel.com. [192.55.52.136])
        by gmr-mx.google.com with ESMTPS id v23si847407otn.0.2020.12.12.00.35.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 12 Dec 2020 00:35:43 -0800 (PST)
Received-SPF: pass (google.com: domain of philip.li@intel.com designates 192.55.52.136 as permitted sender) client-ip=192.55.52.136;
IronPort-SDR: T93QOPTOaOAHdFQdI0h7dc8oDHandU9iaFAaRc8pZMqJdkJ5SzJ4gYA0gj0mRDcCyw3CquDV65
 BoZpncIym9LA==
X-IronPort-AV: E=McAfee;i="6000,8403,9832"; a="153772857"
X-IronPort-AV: E=Sophos;i="5.78,413,1599548400"; 
   d="scan'208";a="153772857"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Dec 2020 00:35:42 -0800
IronPort-SDR: lsMBU7pHhLjPYV6hXyRW6qGLBD2AEwC5d9TQNcpf1VC6N5ruQrZkccQTEOSe4fB9N4SJ2ZetDX
 mvXU/b9n3k1Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.78,413,1599548400"; 
   d="scan'208";a="365971211"
Received: from pl-dbox.sh.intel.com (HELO intel.com) ([10.239.159.39])
  by orsmga008.jf.intel.com with ESMTP; 12 Dec 2020 00:35:40 -0800
Date: Sat, 12 Dec 2020 16:31:44 +0800
From: Philip Li <philip.li@intel.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com, Dan Murphy <dmurphy@ti.com>
Subject: Re: [kbuild-all] Re: [ti:ti-linux-5.4.y 1/1]
 net/hsr/hsr_forward.c:521:13: warning: stack frame size of 1664 bytes in
 function 'hsr_forward_do'
Message-ID: <20201212083144.GB31146@intel.com>
References: <202012110950.vF6h5mLH-lkp@intel.com>
 <X9MKHK+KJkerDn64@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <X9MKHK+KJkerDn64@kroah.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: philip.li@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of philip.li@intel.com designates 192.55.52.136 as
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

On Fri, Dec 11, 2020 at 06:56:44AM +0100, Greg Kroah-Hartman wrote:
> On Fri, Dec 11, 2020 at 09:38:57AM +0800, kernel test robot wrote:
> > tree:   git://git.ti.com/ti-linux-kernel/ti-linux-kernel.git ti-linux-5.4.y
> 
> Why are you emailing me about a random vendor-specific tree?
Hi Greg, got it, we will check and resolve this as early as possible in
next week.

> 
> I can't do anything with it...
> 
> greg k-h
> _______________________________________________
> kbuild-all mailing list -- kbuild-all@lists.01.org
> To unsubscribe send an email to kbuild-all-leave@lists.01.org

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201212083144.GB31146%40intel.com.
