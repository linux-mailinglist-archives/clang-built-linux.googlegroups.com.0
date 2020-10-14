Return-Path: <clang-built-linux+bncBDA5BKNJ6MIBBVE7TP6AKGQEQ2HJASQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf37.google.com (mail-qv1-xf37.google.com [IPv6:2607:f8b0:4864:20::f37])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D29D28DEA8
	for <lists+clang-built-linux@lfdr.de>; Wed, 14 Oct 2020 12:15:49 +0200 (CEST)
Received: by mail-qv1-xf37.google.com with SMTP id dd7sf1729881qvb.6
        for <lists+clang-built-linux@lfdr.de>; Wed, 14 Oct 2020 03:15:49 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602670548; cv=pass;
        d=google.com; s=arc-20160816;
        b=E+IyhbmSGwy0CsktYPZLtGBIRufyZ5iGPGi1uiOLmiIO7DPQPT9z4cm/0mtYSnIGyy
         WyXQfwTI/gqGT50P78EP5XHoyR/4hVx606UNbERykqYHyBvCxeAlK15njGDhRCtJxxjM
         JnyehYOtja5NyCDCzZj/ZymwwtrWG8+tQwQO7Rnd3UK9wuvj7trVzz/44TZAdIoNGpa5
         3jJa2vUoj/UESrTf0nyc4EgAaDgm6Dao1nMQ5lSYYk4zIambY3Q23d4W9H7wQvEAVLUx
         sxPRNrFuCGFaUEdCIcKgvhVK4oMTPHnVhhOqy5Fr/Rqq00foJvt9xCnLaS9JhOcoW8W4
         OtEQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:organization:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=D+/UGcIF2GzdCmdok07fn5jdTxtsW8Mv6/Rc9WCCx2s=;
        b=q8LGW3hPTZSx0Cr4m7zmGeHsh/jGkMMQCh4ErnK50nFhdwiVRwIooy37wWs32N032c
         oHkcl9UJYg+JdgtADu8ckbGAuFMWUYAA5fh0ahgpLiSLoEYdma2DglgL8JMdLFFajJCo
         AC+ZnQc6DYcs8kOsE1RoE2zO3vfyeZfcJkTxD3cAqFGDz/hfs21raFRtsgrGoSAZHEcQ
         M7uiwUA6EMjWxG3ddWcHQZfjVkFDsvz/l6FzNLyfyfLp025xCylbC2Od3fuuophE2dMK
         xj3lW3gyarlbVqyc3Guq5yu/m3kLzwv48MYUweJOka1WZCxT28nfFb5LGvVq8+e6N/Nq
         0lWg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of andriy.shevchenko@linux.intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=andriy.shevchenko@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :organization:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=D+/UGcIF2GzdCmdok07fn5jdTxtsW8Mv6/Rc9WCCx2s=;
        b=Ibl98XFGggyje4gL+CC7uQtiEM2ei4nE9Wfo5MfSuEPeMq94/ltPyvFniB7xYT72v1
         Vc6Ehw3kzui1eemWFHYZsDiL9vy8t73MlIP0lcxXBuUToDU/wOzpaiMRyWDuw83usUl5
         m6SqhSDywxKZhQyT5WJyyLxfNdBkx1lzODahtRfHUwnZQvgKAbGGu/h3GL6mLIbjqxGQ
         4v2FSxffNZ8hgNu0Ef5mmIh9pGXG7bQOSLlAtWpSh45EfMZFRsC+ldtvdY24x+Urinft
         6mUfjoEC6s/CEZRPP9+Vuk2qRpck+BP24rPj9GVIxPoOlZbRWsX6o/LL/jD2KfkwiPLp
         Jh4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:organization:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=D+/UGcIF2GzdCmdok07fn5jdTxtsW8Mv6/Rc9WCCx2s=;
        b=eBT9Id1FznnGKE5xjRpEQBmWv8qSeO8Of2FTEO8MsxZ+tWdE75uZrQ8UH8Wv9EY1OI
         a/HYHX6Xu4Pc4RR/zW2zA57iiD3o5vGJmZbML4E1G+arD/XxTqTCg6D+YL2em75X+s8h
         tAt34y8sCZFDeCkaR4d58aIxH6dswLPKk0h0mIUhZiAN8PfgHuJcJvfv8XeNjc7955fD
         quQpkTmeJgtZg/qh84tELd7P0n3f8h+fJsxl6aN/KnXMxTjqKqwnojD+CHgR5+TvPtG3
         zFA+a5aLuyvbwzIRiU9asqbIo7sjS+mTLqfE4ok3YcY80Uqo2ca1aOBt5YfmdEblOzTi
         rIPg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5333q4Dc4ju2XoXp62qcdkH8dNPNki0s+L+Lnh2oQVcjSzECrhDU
	PA2hgWvSvo19P9zjFvxrEug=
X-Google-Smtp-Source: ABdhPJwiXeJ1XrDYw79UsZKDbnUaI5NqQo566Sbxf8EGPWKRRh9rV+4TaRSLGi9UpPiBqh9uJJ44rA==
X-Received: by 2002:ac8:832:: with SMTP id u47mr4072963qth.376.1602670548313;
        Wed, 14 Oct 2020 03:15:48 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:620a:1132:: with SMTP id p18ls1339623qkk.9.gmail; Wed,
 14 Oct 2020 03:15:47 -0700 (PDT)
X-Received: by 2002:a37:9cd3:: with SMTP id f202mr4063465qke.479.1602670547835;
        Wed, 14 Oct 2020 03:15:47 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602670547; cv=none;
        d=google.com; s=arc-20160816;
        b=gegoWZze9wR6QeiYV2Xc+LYWw4a8YQo9aLicoI7nDAzg0mmEDobaTzNkY2bwJJ9V5X
         gCFCh54/oboLohWmKY7Fo4IDlXnjyL40O1L8ECaAcSZ30XABRsL6zBAdXSpN0M+Mc1BN
         fCyXg2kD2icfmFZhsSugV0mJ7cjOJ0qGs0HSgleRTL9RzCIymsZpp+ZkTLAO9H2/5XZ5
         ow+F76K94S6hcbl4nqLWV0Oa9p7MhoUHRTnZAWBzQ9diTZ937Vz8hrXyTj23OFEsGAk9
         aJ90sI0BOF87iJRrvqTHayOEsmwh4VLFB1wcWDk0Yl16mMV26rW8GtVnXR9ySh2IFpFT
         qYYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=organization:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date:ironport-sdr
         :ironport-sdr;
        bh=N1fhOcB+5mu1+V7ODklrKZ1VaXPIpzcqw9il/7KVEMs=;
        b=CuNlnJQGd4o/HFEtpzLlEYt/TY0AFMw/b2PVoiwq2gvU4/wuoXk08jrvxFLoTn08+f
         piB7nxRe2z3a71kFqen9b1xbIkekFq+0l4WMLl9a2/5Zm70QH75pwWhyw+MbCxNbCulc
         lL7PaZEwtuWDg0qvvP1zic+MPbHizsfWWSqkcER/ez6d15PgicRP7ct7PM3O3+o2nW0C
         tlxlNzaXsm6LXZ6RnoViEnRPTt1D1Uj7SIeUco5n8H2kQmjpjPr5cB2EifsopUKXSTOz
         aA67OMkJaUorBO6weMTDSUCfzDlwl60lzDYfyKGDdiMReHfawkAJUwJj2hvjWeyQ2Xzz
         +X0Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of andriy.shevchenko@linux.intel.com designates 134.134.136.100 as permitted sender) smtp.mailfrom=andriy.shevchenko@linux.intel.com;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga07.intel.com (mga07.intel.com. [134.134.136.100])
        by gmr-mx.google.com with ESMTPS id g19si265490qtm.2.2020.10.14.03.15.47
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2020 03:15:47 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of andriy.shevchenko@linux.intel.com designates 134.134.136.100 as permitted sender) client-ip=134.134.136.100;
IronPort-SDR: dSQ0c8JxaBFXNed/XHqPgMXqaSRBHV4EuTkOamIpxOzCXEux/nLTK2/KtdF/nAVvPmyuI3aKuz
 /u3YxOKj4eFA==
X-IronPort-AV: E=McAfee;i="6000,8403,9773"; a="230250295"
X-IronPort-AV: E=Sophos;i="5.77,374,1596524400"; 
   d="scan'208";a="230250295"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
  by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Oct 2020 03:15:46 -0700
IronPort-SDR: kgJ9HIADONTfTvAm4vhxgSRsw9L74d8cXhSlnfHbAeGI2HxEpyJrGqsZ2PiQ2GsT+E+339XPrd
 mLOMt0strWww==
X-IronPort-AV: E=Sophos;i="5.77,374,1596524400"; 
   d="scan'208";a="345607092"
Received: from smile.fi.intel.com (HELO smile) ([10.237.68.40])
  by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 14 Oct 2020 03:15:43 -0700
Received: from andy by smile with local (Exim 4.94)
	(envelope-from <andriy.shevchenko@linux.intel.com>)
	id 1kSdpu-006XXz-9N; Wed, 14 Oct 2020 13:16:46 +0300
Date: Wed, 14 Oct 2020 13:16:46 +0300
From: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
To: Michael.Wu@vatics.com
Cc: lkp@intel.com, jarkko.nikula@linux.intel.com,
	mika.westerberg@linux.intel.com, linux-i2c@vger.kernel.org,
	linux-kernel@vger.kernel.org, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com, morgan.chang@vatics.com,
	dean.hsiao@vatics.com, paul.chen@vatics.com
Subject: Re: [PATCH] i2c: designware: fix slave omitted IC_INTR_STOP_DET
Message-ID: <20201014101646.GV4077@smile.fi.intel.com>
References: <20201014052532.3298-1-michael.wu@vatics.com>
 <202010141551.Y4x2qiN1-lkp@intel.com>
 <20201014085251.GS4077@smile.fi.intel.com>
 <5DB475451BAA174CB158B5E897FC1525B1294238@MBS07.vivotek.tw>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <5DB475451BAA174CB158B5E897FC1525B1294238@MBS07.vivotek.tw>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
X-Original-Sender: andriy.shevchenko@linux.intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of andriy.shevchenko@linux.intel.com
 designates 134.134.136.100 as permitted sender) smtp.mailfrom=andriy.shevchenko@linux.intel.com;
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

On Wed, Oct 14, 2020 at 09:58:54AM +0000, Michael.Wu@vatics.com wrote:
> On 10/14/20 4:53 PM, andriy.shevchenko@linux.intel.com wrote:
> > 
> > Wondering if you compile this at all...
> 
> 
> I'm very sorry that I did not compile it because I only have ARM SoC with my
> linux 4.9.170, but I've verified the logic of this patch in my linux.
> 
> I'll correct these two syntax errors in next version. The reported
> warnings occurs from drivers/i2c/busses/i2c-designware-slave.c:13 seems
> not made by this modification. Please correct me if I'm wrong....

So, you have a chance to create a follow up patch to fix the warnings. :-)

-- 
With Best Regards,
Andy Shevchenko


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201014101646.GV4077%40smile.fi.intel.com.
