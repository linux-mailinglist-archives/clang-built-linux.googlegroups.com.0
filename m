Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBBHI66CQMGQEP32BTYY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x139.google.com (mail-il1-x139.google.com [IPv6:2607:f8b0:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id 538B039D994
	for <lists+clang-built-linux@lfdr.de>; Mon,  7 Jun 2021 12:25:09 +0200 (CEST)
Received: by mail-il1-x139.google.com with SMTP id b4-20020a920b040000b02901dc81bf7e72sf12261966ilf.7
        for <lists+clang-built-linux@lfdr.de>; Mon, 07 Jun 2021 03:25:09 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623061508; cv=pass;
        d=google.com; s=arc-20160816;
        b=bGNxrUJRXueC8eiNsZu3Z08ekjyHwe75Bw59ych0xqXjdgOoyToSP0asrc88uP9z+u
         1zvTb41r8VWAOooH6pTdiRUt2f1yL70Jux6U5s3vyh1U4HwSOmuNzQNT5i+sUExw3k9H
         6+nWM/r+9/H3kvJyCodXW2UZ+55/syd0zcR+pik+q+cqhwj/El0EF0Bp2R/FrVkpQqyK
         +n98BVuyqJ/2cetfJG0Uhi0eGmHe/STleisfV85V5JhUMU07dP+E5lKWZjMtPrwZeXZf
         cHV5z6s386J8ryD3GL/apggh2t0X1eOO85NLKNbFhouHk/jGvBLM4czt+mtZFYuZ3ScV
         oXsw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=HF5HXY+kjQUqPh5Ds7ahiMWVp7fESXG+HGIjSxnY1+c=;
        b=mK1BLMT9A1zlSj8GghRI+IRGhtvnxFM1OqSe5pZJnxxrqoMHjwQt6G4u3DPNmi8dya
         vz3jP0l6z3n8SCdDz43HkmOIzsut5GcDChQl1XUKum2ltJ81hhcF1FFzTTSmQyknenma
         eCli//TsLkSotoE8iMIfbqMhZ1b6w1HL2iPbWR6gj0lqUI8kAU7clDUqy6h1D6ANfodv
         9Tl1BO6JZqF5evAXcMW0f62Pt/A/NvZZAJGAw4FIM7k8nvJqTuCrqiol2kxzRuyrupa5
         /2Bfsuvlko0YCun5lOLtFET5zwyeFuf/7ugoYRpTSvA5ZCUfdjvj3cBHMgIXpapPh1t6
         ixRA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=Q1KbwVFv;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=HF5HXY+kjQUqPh5Ds7ahiMWVp7fESXG+HGIjSxnY1+c=;
        b=KgRyyCDAmkz5u+a27EZwrWSgsfk9WI2M21r7spmnMrXfzcPvL24HRaTmwOwOEIkVCJ
         GdVeahZjLAimsUu6xk45rVon/tfQV4yrZnPY3HgpiwRkTOyEvpOmoVv4ksdFJM78bfL/
         hv/FnhFeXC2ju8NwH0n+7m6gvh6qF/OBlFxu6L98TSyb/oSNysAQdYezeHcLhBrx4Xue
         sb6JAxvfEf/N/9/fQ3toE/mszKW3XUAJAdmgzyBCtjxZmxJjFzwngnivt1oQ6SsYroiK
         7iUloo+rHUKux5BW7IEVmlCgFS+lNtUBs5ABjI99TQ8z2qtPdXQu4sLA4NPVcdSiMv9I
         LHgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=HF5HXY+kjQUqPh5Ds7ahiMWVp7fESXG+HGIjSxnY1+c=;
        b=qhdkkgn87NO37pgpt8kzzXjcALW1nKiaWueqxJIX4kgvDisb2qSghuUVfc9pdFYDeF
         lbyFmLjEhcj7y1PDeD/GPaLR+9Ai5NjJ8io3L74E0d0a+/nSejyHfMlhlQstQuFYf1eE
         yQ8HipCgCE2Sybn2HaY4R7mDgHbJUmoucYWjohbZC806OU8ETsE3d+Y4VbkSzpLo1E8z
         AtTZC28MzAVssYZo/LTRv7hdKdldvX7Ji2kQ6qCVqjzQA009FbJ1xIZn3QaTvQW323Zb
         Ks3LsVYaeXTvldasAucnXdb4dt0EadF55ALC2ATiioBlY6qJvBFjO4Rvz7goa7BX1v05
         8dEw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533DpKUNXsiNWvacUZRF1tXi65RnsYtxzgajIFMcOKggJLU4dyvB
	Ct9vcJwnXQluFVOhRxYThQY=
X-Google-Smtp-Source: ABdhPJziYQmBakQahd1cWaAC3YP308Sxhk3G8oALKJa4SoDgz4Q9MoVY/PdzXcsIRbzAM2mOOVhGew==
X-Received: by 2002:a05:6e02:1289:: with SMTP id y9mr15382868ilq.88.1623061508425;
        Mon, 07 Jun 2021 03:25:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:191b:: with SMTP id p27ls1518622jal.5.gmail; Mon,
 07 Jun 2021 03:25:06 -0700 (PDT)
X-Received: by 2002:a05:6638:27a:: with SMTP id x26mr15516906jaq.144.1623061506712;
        Mon, 07 Jun 2021 03:25:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623061506; cv=none;
        d=google.com; s=arc-20160816;
        b=oNm6RTuiRjM6XCsSzR9pQoSwFD5fc25K5aGzWriLJwRxmukm2Rw0uLILaGpVwqEFtX
         D+gFgz1JkSXedPr9XyrXj9qRz/Kjq5cewodySlLZyrIMEvZjq0z+Q8lEkl8og3LcEmdS
         ASYmgyWfP1iNZ5aQv0YygflI64+sK7u/AklMm1w8LUqlDMXRHXxtQwgGGsYjNsvEvhPN
         r1Z0dO/RBPtxIgMzx/vaRIf6OzO286iTGGIClimdR4nOUOqLRcxd8OBDrtvIoJl+IRLB
         PLbdSDK5oWyqWEi2WlznxOUchVLLYERvh99F0DQhoLgpxur7Uxyd9Cu5OxqF2AhLuitZ
         +X0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=PiVTluT/tZkNIfOzGMGW8lZfwk32qI8Qa+zy3R7VfME=;
        b=khmzJu0M37FGg1jL4lxuhFVxHTwjzBCa0ZZATYR/Ed17xiOrq6WHn1gA/Q+uOfKBGL
         4sZKz8ytf03PJZ8xzI2XAESp55eBLVGMs+xlcJcd32JA0dQ1fEyhnMmNpyo0my86XLo9
         +5b8V88aNKwCGeicLJxEEyWbXeLh49qCBNZscWnrVdbAUdsUvAddMMoUog4IlaqHwVMz
         JWivxK9GB0dkQz7mesE932LncYiiYIgQT27vbsLMGFoRdIuuk3NBUJKEFltLifndL1eA
         OfRuxmJyYWdLAmXxTcRHaVI65oF/SUFhEQ4ZC5fgTLkqF/LKoOXMmaMiqAoNDgi5ZbRD
         HBhw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=Q1KbwVFv;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id m11si624210iov.0.2021.06.07.03.25.06
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 07 Jun 2021 03:25:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 2D200611AD;
	Mon,  7 Jun 2021 10:25:05 +0000 (UTC)
Date: Mon, 7 Jun 2021 12:25:03 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Leon Romanovsky <leon@kernel.org>
Cc: Doug Ledford <dledford@redhat.com>, Jason Gunthorpe <jgg@nvidia.com>,
	Kees Cook <keescook@chromium.org>,
	Nathan Chancellor <nathan@kernel.org>,
	Adit Ranadive <aditr@vmware.com>, Ariel Elior <aelior@marvell.com>,
	Christian Benvenuti <benve@cisco.com>,
	clang-built-linux@googlegroups.com,
	Dennis Dalessandro <dennis.dalessandro@cornelisnetworks.com>,
	Devesh Sharma <devesh.sharma@broadcom.com>,
	Gal Pressman <galpress@amazon.com>, linux-kernel@vger.kernel.org,
	linux-rdma@vger.kernel.org, Michal Kalderon <mkalderon@marvell.com>,
	Mike Marciniszyn <mike.marciniszyn@cornelisnetworks.com>,
	Mustafa Ismail <mustafa.ismail@intel.com>,
	Naresh Kumar PBS <nareshkumar.pbs@broadcom.com>,
	Nelson Escobar <neescoba@cisco.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Potnuri Bharat Teja <bharat@chelsio.com>,
	Selvin Xavier <selvin.xavier@broadcom.com>,
	Shiraz Saleem <shiraz.saleem@intel.com>,
	VMware PV-Drivers <pv-drivers@vmware.com>,
	Yishai Hadas <yishaih@nvidia.com>,
	Zhu Yanjun <zyjzyj2000@gmail.com>
Subject: Re: [PATCH rdma-next v1 10/15] RDMA/cm: Use an attribute_group on
 the ib_port_attribute intead of kobj's
Message-ID: <YL3z/xpm5EYHFuZs@kroah.com>
References: <cover.1623053078.git.leonro@nvidia.com>
 <00e578937f557954d240bc0856f45b3f752d6cba.1623053078.git.leonro@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <00e578937f557954d240bc0856f45b3f752d6cba.1623053078.git.leonro@nvidia.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=Q1KbwVFv;       spf=pass
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

On Mon, Jun 07, 2021 at 11:17:35AM +0300, Leon Romanovsky wrote:
> From: Jason Gunthorpe <jgg@nvidia.com>
> 
> This code is trying to attach a list of counters grouped into 4 groups to
> the ib_port sysfs. Instead of creating a bunch of kobjects simply express
> everything naturally as an ib_port_attribute and add a single
> attribute_groups list.
> 
> Remove all the naked kobject manipulations.

Much nicer.

But why do you need your counters to be atomic in the first place?  What
are they counting that requires this?  Given that they are just a
statistic for userspace, making them be a u64 should work just the same,
right?

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YL3z/xpm5EYHFuZs%40kroah.com.
