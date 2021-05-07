Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBZ5P2OCAMGQEEJVA4PI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb37.google.com (mail-yb1-xb37.google.com [IPv6:2607:f8b0:4864:20::b37])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E121376000
	for <lists+clang-built-linux@lfdr.de>; Fri,  7 May 2021 08:02:17 +0200 (CEST)
Received: by mail-yb1-xb37.google.com with SMTP id u3-20020a2509430000b02904e7f1a30cffsf8828434ybm.8
        for <lists+clang-built-linux@lfdr.de>; Thu, 06 May 2021 23:02:17 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620367336; cv=pass;
        d=google.com; s=arc-20160816;
        b=eUmPFgpFSj6kRAKB7QgtykWpja1Il9QAccD9EBHRX76xFk26nAezDV31isOcJiDkQz
         6iGigWHcOxaHYBXeVGPyKiVEE0lwc3DY986HbZcQymCysQKu3036wOB2V9QSAicwnJyM
         Svr9dHEzR+6Ti0KcFc/4KPfdrIz95oFwJMh7u0bk7L+ShZ67FKtb/gH9vJrkjZKmx0Dn
         JQDTGRWNlpmg3iY1EtU+HAgkWOY9AU/bLBExJZEAhg5+sLp6g9xYEcvmyyXrj7BRO5dY
         r0TGOONBfe3/mQJuoUXtDGw4ikT37jWgOxYbbAkIeZc8MCF2nBNteMK5KPwT4A1Q7TE5
         ZSww==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=hyh8F7i2E7E356xRD+GiIr7302wEIsC2gLt6I2NcRqM=;
        b=OVrTlNOsoBDfuTX2Rkhs0rxLVnxCzVKXK0L52pck712HIYt2PCX8kWgXPh4MKLQ98F
         CvyDDc0daWB/ixoHyQvl4KW8imKhvzROxnprGnl3WgvhlxWJoIRrqsO76/eTsbzv1TKh
         +ftqOH/b8NbqseP/0M0Zlsay2uOAmaGoiUx2yX5pKi/Kg1VkScBpM8p2S8JdNhIQeU/b
         lIraws1H2keBSMXhULvSEIHXNdgz1x1WEKf/3HEWTV7fnjk9kms6QqSc2v/fu2Dg5ZVo
         JgJ4ouBXfblGeyimx/G8uDtJBpRCVxSjykFWKXtnHs+h5gPkqCZ/1EuQN40bRAX/1e00
         xluQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=i1POt83G;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=hyh8F7i2E7E356xRD+GiIr7302wEIsC2gLt6I2NcRqM=;
        b=kWXnJXL0H84hXhOOib50RvxJOE016mD05cMRwzuMsjO1MdPjGySq6+AYK3kZrXArGi
         /f5EEYhvlPoJOR7zxeiXew/C1GHdSGyv1roLNamXWImZARWH5fc3xukoURWNhbfBx1OX
         63F19sWRR4OVSg8xMk49ZY3Bhxjy97vFq6YXR9sBxbfsIZUkDxUadmRDYmo6eba3wcIk
         putNSP9nJyjxkt3gaGCs+LY9NcTTdq+ClRzgHYaLroQKSGk+UfNsIQYqMULBn8Vl4OB1
         UmvlS4FABQfFmS8RphrbstG2aaX2ybYO63jkQrb3vBPFtWngmH+vG5Z7EqCLDEDG5u57
         n8nQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=hyh8F7i2E7E356xRD+GiIr7302wEIsC2gLt6I2NcRqM=;
        b=Er7egSXzO/iL1C7izingyNlALUvAVjeWvvm87Kp7IXHjJPq2gmEso7hSj04AuVyw9j
         t6JOXY0xzSqp4l0vU8NHaCBPcgG6KkCiQGIqQLSNdRctSg2/iKT0HDD2H8IglU2KuxP9
         Iz2i38lGPJv7tA4KDnrLJzMlrvtPJanL6bLhZlWTWr7biXe5/AbuqE2+lQFKdokSjXbv
         32Njtx/yiffpzn8kSvADZZ5Mf7BtWuLjroq5fexYJEHBwiumoLjcEwGmJLkS/RxjrlcY
         LodjT+kOW7ge4rVWX7COBPKRGRt3RVYCHv6Yc6evnpr5NU+V0sU+jyxgE655a4FZent8
         fzwg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5339WlRXZ4aqtw8jEoEg9YyUmjwTufzLVC9R4kNzooUmWyb3Tt67
	Mg715Ilks7CSC4h4Sku5As0=
X-Google-Smtp-Source: ABdhPJw/dvr7JGxdSg93QYvW6QMgZ4VhPDJXraNBgIOQFby3F7QUFuDLowbgRuqoih4ljP1fj4Ah4g==
X-Received: by 2002:a25:aa30:: with SMTP id s45mr11658613ybi.420.1620367336143;
        Thu, 06 May 2021 23:02:16 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:7714:: with SMTP id s20ls2613136ybc.9.gmail; Thu, 06 May
 2021 23:02:15 -0700 (PDT)
X-Received: by 2002:a25:8088:: with SMTP id n8mr11496917ybk.140.1620367335673;
        Thu, 06 May 2021 23:02:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620367335; cv=none;
        d=google.com; s=arc-20160816;
        b=jTGty8HaRikDUOdScwKba+HYZs+q5YW2RERkD3kkI10E0jo4y81hBQzTNHr/Ty4qWj
         j7bjUTZrulpVENhnFBUapOgFiBeXUq8JLA4NFF9URE1v245pUJsWp2E4Fz1CdDZmbE5E
         R8+dOzsZuAjGYJsZ6qqeJn8IvifUJ04tohp8ALOZeID6HFPcqoIm5Yo60AAgzE9SRXkj
         ELhocgqWf8bIjpPdT2rNzeIOKaPh9q6Kl3y+OQBZ0dU5wH1fTCnfSpgBuMQaJGS4cjkL
         bjb8aZUcczd4NzTw4lWf6zlxyXrrX5xf4W+9Ozs1af9cKwcQxilDflPb0QfMW/F14cvF
         r5HA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=1j6SUzJkof6EaudfeLoF2wv/SWHd+LsZ7vyjr34I8Do=;
        b=ohktmlQWDcqbxJR99ytY4H1wFv9Gwa/2D0sBIada6lTSE9TTr2Gq2R1CgabSaWkpUo
         SirgwZhpTUZsNZFuahdHQEiPnzTfRmxpcASqT8/uIX9zp0n6JATkiInI7C5P3md6eRdD
         FHYp+Y4WsTg6lksn1ODCsZ9425mwmHCXKFMiUPlaDTrdIUz46AgGASZmCXvIuTWAwE8q
         5lIMjOMgOjWMZkDScl/ozFODSHh57G9Gy1dQkQl0z+iYrpalWAg/IwDwLVYiJ5Dl5zIY
         pNuepxVmhOdtSgr0EuhEK4ftJiEP73QgfwbSCtHmpJS8nSekHNiCg94qM+hRM60Dpjjf
         L/kA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=i1POt83G;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id i15si291642ybk.2.2021.05.06.23.02.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 06 May 2021 23:02:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 00DC6613EA;
	Fri,  7 May 2021 06:02:13 +0000 (UTC)
Date: Fri, 7 May 2021 08:02:11 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Rui Miguel Silva <rui.silva@linaro.org>
Cc: kernel test robot <lkp@intel.com>, kbuild-all@lists.01.org,
	clang-built-linux@googlegroups.com, linux-usb@vger.kernel.org
Subject: Re: [usb:usb-testing 7/9] drivers/usb/isp1760/isp1760-regs.h:286:21:
 warning: initializer overrides prior initialization of this subobject
Message-ID: <YJTX4/vPcsQaoeyI@kroah.com>
References: <202105062318.xxK3ju2U-lkp@intel.com>
 <CB6AA86KSN8C.2UEPEE2H5WFKY@arch-thunder>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CB6AA86KSN8C.2UEPEE2H5WFKY@arch-thunder>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=i1POt83G;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On Thu, May 06, 2021 at 04:56:01PM +0100, Rui Miguel Silva wrote:
> Hi Greg,
> I have this all fixed in my v2 branch. So, I think  it is better to
> drop the first 3 from your branch, sorry about that.

Ok, will do now, thanks.

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YJTX4/vPcsQaoeyI%40kroah.com.
