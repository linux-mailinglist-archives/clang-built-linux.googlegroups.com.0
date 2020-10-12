Return-Path: <clang-built-linux+bncBCX2JBVY5MBBBV4USH6AKGQESVZJTAY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-io1-xd3a.google.com (mail-io1-xd3a.google.com [IPv6:2607:f8b0:4864:20::d3a])
	by mail.lfdr.de (Postfix) with ESMTPS id C562F28B487
	for <lists+clang-built-linux@lfdr.de>; Mon, 12 Oct 2020 14:21:45 +0200 (CEST)
Received: by mail-io1-xd3a.google.com with SMTP id 64sf6623070ioy.2
        for <lists+clang-built-linux@lfdr.de>; Mon, 12 Oct 2020 05:21:45 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602505304; cv=pass;
        d=google.com; s=arc-20160816;
        b=QnunRAZWtzyauhTQQeveGzlirRvOp4jbdRewbafEuYeXHNE7UCpBansupoKrc0ap6l
         c1Rlfj1O4uLpuJwS8s0OpuNtJGkZVy3KWrGYCYb5TDqvexRUTFUGjcS+UjXRlV04HA5x
         x/WbErJFwYcYWzIjEN5VvlSkOgrO7erSxTN3GhKJj64v/A6Hr7U1GNxp9vxwJLzlrBy8
         Vk68iHyawr6IA6cQ1TiGRPHUiuPrm32gd8TxY9hsmh4vM7GCM7r4baYJwIhiENZsRyqw
         DhqHCpYiiB3y4SlYdS/PAkpFVdkAKVh5VVvN8x8bUg3UVI3H42UMleee8J+G796Ipfyp
         nkXQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:ironport-sdr:ironport-sdr:sender:dkim-signature;
        bh=zgG9EfckiOfaputnDuRfN1Ccf8qeeHsPWFJT+yU2f0g=;
        b=YhdDNLJ/uexW+nuJiEt7OL6H3QoizNvVemIhUyJwOn7J6L5NHVCOGvgumHCAh9AjK+
         mmavmAnddiT94JafNSK4q3dOYKnCt10e4UBHmP/JWc31PZaCGr/Svwsppd9aTEYu1P+D
         1zTVsKLvS42A1OYPix+HnMuWxTysb/a571ZjFS8yy1F4TeDqAqDHFQsygD9O4E4PRoUd
         MaFfH28HkMowkz1pZ51X73L0Ku43ldxoIRQmYzUl85CCb/sFvHjmISfP+ynOzuq3XAtS
         x422nXPCnTgCtCw9Eg/pwmDX0ZQSYKX/OUir5pfieHOeTE5RrEzx6bwDw3BdumVBoNzj
         Aucw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:ironport-sdr:ironport-sdr:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zgG9EfckiOfaputnDuRfN1Ccf8qeeHsPWFJT+yU2f0g=;
        b=hOjUL0GG4QM/2gekzrwTUuAC0pHsKxArN2gsDRh2k5AconI2belmfyNJO/mnZEDZkA
         q95W0dcxWuwV2/DPhzTfCYk4KpYnwRFthf6yZiZIGgJ1i/yQzSc7rSJGuSrLlUNhHWg5
         0bgMLU5svIAUqYyqxAVaOIXzq9dBW4+EMYKksS3LtnTU2EB89l3eK9PCg3j5+ONUWZfF
         RS0OiZ0H1z9JchL95MdjDV0V6lfWI3lRicQPpeXh/uIhfNu7YfsjvTvpnurDdwL6sqMz
         rjD4dhaD4u9eG6M32hEvVhGKYDCFmv7OMdrHAc18DRNq5aUJr6e1bUGDW/cg0jrPAfAI
         3YWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:ironport-sdr:ironport-sdr:date:from:to:cc
         :subject:message-id:references:mime-version:content-disposition
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=zgG9EfckiOfaputnDuRfN1Ccf8qeeHsPWFJT+yU2f0g=;
        b=WIBeIeljxeRRh/XmAn25QvqVWfA6pvrrSICqc6DC1QMmjQ/Ltnansfme+L0gr2jfKr
         14OLmVmX0BNIjcKXogeFiS9RmHqyOVz9YWeK/4HIcCkX4erTIY2ER370Gd1ImL4QarNB
         J0IKGZG8S0GboGvqzjqeEKFgdw6OgYRGcadQUUE34i7KGaly5feGDJiyu9KHj6CJ1Mwm
         vGdXzV9dY2FN0zR3+IipacFaFTPgh+xnHuWJxOyPD9cpWlqvVgDgpSjvQI/aOeQWKAMW
         Q5lLf11s1NnmDuNxL3KzWlxi5jCCvIK1LPYF3369LCJAq5NChnxYV4MSMtK+lO/GEigr
         9ppQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531Yh2Wb2Xiwu/06v+W6phnb0kf+VCp3ioMkV3PdiyYt7IDhIM1X
	UPG892EgiyVEIwkzwBP1UyM=
X-Google-Smtp-Source: ABdhPJzFS6lwCnaewB7oau7wkRvydRkztu5LV61TMot0fktjg4R4VoK5JyKG6D6/eg9gFH7ZkCYR4w==
X-Received: by 2002:a92:cb4e:: with SMTP id f14mr18487426ilq.80.1602505303580;
        Mon, 12 Oct 2020 05:21:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5e:8d06:: with SMTP id m6ls2296821ioj.8.gmail; Mon, 12 Oct
 2020 05:21:43 -0700 (PDT)
X-Received: by 2002:a05:6602:2354:: with SMTP id r20mr11255501iot.165.1602505303072;
        Mon, 12 Oct 2020 05:21:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602505303; cv=none;
        d=google.com; s=arc-20160816;
        b=litkWTmg/Lr1kkjFRlU9w55nHOjP3Zl8oRZAj3l8RFhXZEqcao26iD62tMIRACilSo
         GN21DEw7pGE54PtExQR5i2j9SSzLxicI/0Zwp8g4SNcAgcnMwGiosqGHngr3TpjE7AnM
         u2pAxU/TWfdfCB3+vhDVhC8J3vCNcHuKHLfNIClTy9dC38S8xu4xN5xxvNSHaYVwKqQk
         xeL0llyBuPThude1n4FO6vMNv1PM5jy+UOkh0y9dEDx4oR5ahi6eFU2552B/0JVehbhD
         xVVe8niXiU6Qg4PXZaTJePELVuasQTczs/ePi2KCUUlee6Z9N9MhYg12kLj8Ds6541JF
         7wrA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:ironport-sdr:ironport-sdr;
        bh=Bt/8Ip/DF/y2qI43cjgjWZ2FFPtLtZ7br8EEQmhVxT8=;
        b=uNalJPhnZjvc48p091QA+MWjgAZGpRFJV8utlsw6cmSDeotxQrodd2cqakfiEkiJvM
         4LqsKFkyd4tmpqW/LvZXKl/bMS+ZzwqV+hXGdinqH+0hifZ0Rc0Dl08aVzDWSA8GJZkY
         u88hRRn0aqPa9pABhBAEJGd0GGp+lALOYpTWta3RPbp0HX5jQ7IiZMhsEK9W1AV4gcQ0
         gFOXDYEpa8/GHXy+m6Lclf572KNfeT1vA/BquxaOLW4Nvv5UdxhnTlIA3QCAD04iJjIR
         q21H9xT7Syi3HOMfS75bcDejwPWy9GPe+7d6Vcuo8K7aBXT+BYgTbPinIoihzl8+/pnw
         IWxg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga06.intel.com (mga06.intel.com. [134.134.136.31])
        by gmr-mx.google.com with ESMTPS id g20si375753ilk.4.2020.10.12.05.21.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Oct 2020 05:21:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of philip.li@intel.com designates 134.134.136.31 as permitted sender) client-ip=134.134.136.31;
IronPort-SDR: DJOVSszxHAlCMSW2Gcow236d/CM5FxLLi+pEv06gg8B9c0UMOE2si6omRWHh/dyXdX2thN03M0
 tLCBxYfERtsw==
X-IronPort-AV: E=McAfee;i="6000,8403,9771"; a="227375175"
X-IronPort-AV: E=Sophos;i="5.77,366,1596524400"; 
   d="scan'208";a="227375175"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
  by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 12 Oct 2020 05:21:42 -0700
IronPort-SDR: nzZ8Wp7h0GnXKWp2uJ/RpVFlmpvgGUYRUe2j11LEbtfT/ZER/qgWpujk6uIygdug5AqY2i+FYT
 mgUSLpjN65fA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.77,366,1596524400"; 
   d="scan'208";a="356601182"
Received: from pl-dbox.sh.intel.com (HELO intel.com) ([10.239.159.39])
  by orsmga007.jf.intel.com with ESMTP; 12 Oct 2020 05:21:40 -0700
Date: Mon, 12 Oct 2020 20:18:41 +0800
From: Philip Li <philip.li@intel.com>
To: Dan Murphy <dmurphy@ti.com>
Cc: kernel test robot <lkp@intel.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: Re: [kbuild-all] Re: [ti:ti-linux-5.4.y 1/1]
 net/hsr/hsr_forward.c:244:3: warning: ignoring return value of function
 declared with 'warn_unused_result' attribute
Message-ID: <20201012121841.GA24339@intel.com>
References: <202010101513.xK0Ju6WU-lkp@intel.com>
 <f7dac83f-511d-356b-4d00-c879cb85bf9f@ti.com>
 <20201012120818.GB23489@intel.com>
 <20201012121204.GC23489@intel.com>
 <6fa8a876-1ecf-3680-bb0f-654d6aea3157@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <6fa8a876-1ecf-3680-bb0f-654d6aea3157@ti.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-Original-Sender: philip.li@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of philip.li@intel.com designates 134.134.136.31 as
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

On Mon, Oct 12, 2020 at 07:17:52AM -0500, Dan Murphy wrote:
> Philip
> 
> On 10/12/20 7:12 AM, Philip Li wrote:
> > On Mon, Oct 12, 2020 at 08:08:18PM +0800, Philip Li wrote:
> > > On Mon, Oct 12, 2020 at 06:42:21AM -0500, Dan Murphy wrote:
> > > > Hello robot
> > > > 
> > > > On 10/10/20 2:07 AM, kernel test robot wrote:
> > > > > tree:   git://git.ti.com/ti-linux-kernel/ti-linux-kernel.git ti-linux-5.4.y
> > > > Why is this TI tree being reported to the open source community? They have
> > > hi Dan, thanks for the info, this is added automatically, we will
> > > disable the test of this repo. Sorry for any confusion.
> > oops, I understand the question wrongly. We will keep testing this repo.
> > The problem here is it is a clang build, and we currently cc clang mailing list
> > in case there's doublt that this may be a clang prolem instead of kernel. It
> > is not specially to whole opoen source community. Is this ok with you?
> 
> It is fine to keep testing the repo but the error reporting should go to TI
> not GKH. I am fairly certain he does not care about our tree.
yes, you are right, for this case, we should not send mail to GKH.

> 
> Not sure if there is intelligence in the bot to direct bug reports to
> specific companies or individuals when testing SoC product trees
Currently, we can do some static configuration per different needs.

Do you have any mailing list that you want to send report to/cc for this ti
repo? Or just send to you?

> 
> Dan
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201012121841.GA24339%40intel.com.
