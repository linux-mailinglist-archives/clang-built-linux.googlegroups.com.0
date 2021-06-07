Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBB5MC7CCQMGQETPY33BQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3a.google.com (mail-yb1-xb3a.google.com [IPv6:2607:f8b0:4864:20::b3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 63DC439DB22
	for <lists+clang-built-linux@lfdr.de>; Mon,  7 Jun 2021 13:22:32 +0200 (CEST)
Received: by mail-yb1-xb3a.google.com with SMTP id d6-20020a2568060000b0290535b52251cfsf21771360ybc.18
        for <lists+clang-built-linux@lfdr.de>; Mon, 07 Jun 2021 04:22:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623064951; cv=pass;
        d=google.com; s=arc-20160816;
        b=Rvf3zu5quQyX9Pfiu65zOp0wHAr1tuCPRsuuJCpc12rXohULCKM/ZAmFxr9AOu08zp
         7OAHa/yX9oPqAjJoXlF4amb8Sok6qZEzOiBHY9u/hrFMiJaaQll21KhYNiS9arCmyq53
         /h+IdEM8s6TAjiO2ztXERBFqwUWRepclidiFsSo5o8lUV4Tvuu0TxFYA34jlUEumWi7l
         ZT0/j5b7c72sGTlfaZahxz5sCwRaJ+4TV75ifeuECPa7tEKsADHVejkwx1FeM2rmsFG1
         dAMLGZ0bmWlC1baQkIzrmFG7BUjc0PKVq/D/W515W/iCtlULbcsSyJKTXm41cixR2X4x
         GnfA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=s+HymUfm+aPe6HZU7VpKLms0b84ggZZKhIfwkg2o0vY=;
        b=1I4cD4zb7vFbVEKTMpMyyZ8+acnYozwFWoHxtDoTNFNXNluk3X0Wh3QGVWQRxZo/Pg
         U+Nwb82SUqnKRTnP6bk0+Kj4O9ZAzvqniXAU78GLgd3e/BH+e93X2B49NGqB/4dMnl79
         t+3Yw7Am1GibCO1B3WMKMPBKigjjByx+ubRiwNiweuhtWVa53a6Tn5a5zvZXlVfqs5Qg
         upMV67dHvbeq4Aa8ZT0/kcI9EVKjNhL/sbNcbmngmDDliK78J5CoSKSnedaeoxSI0ryZ
         trGQs51JtGbovnLfgMbhx9O6XfQgG6+AMkNZW16ZUbcPKcPUS1ijzS2lwWw8tXB2W5dH
         76uA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=FZ493wnR;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=s+HymUfm+aPe6HZU7VpKLms0b84ggZZKhIfwkg2o0vY=;
        b=OhrsvLt0cLeIezs4tB9P6EkF+rBHcAVvHFVRkThQHNseRw9bSOXbri7bvePadAC/TK
         ueTsJIBpGerjoCodn3hWrQJT2fM/fw62Q3p2Mkona0b+QiGuSlh97bAz0sFzksIJalGY
         t59u47fTXHbvf11TKjwp/OMfwdtSHngUgpx1I/5iWtqo4lPLzdt2cbTNZ31wa+5YjSnf
         wSL2nr0u+XYa/Kdj3Ea+9e3nkSdxErKiaL4D3os4h9fhIRwzc+uNdZbJW88u4jZzKwRQ
         BeuMUx0AkaKHgKm4yobEPk0c85ErdEPnrKFsiLc9IVMZDcv6yFx1s5VbdQvTBazAUoE4
         axsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=s+HymUfm+aPe6HZU7VpKLms0b84ggZZKhIfwkg2o0vY=;
        b=D0OE1lf8qhPQsAFNsjndMJ3SoJqVZ9sNkX38sFw/9QChAZRgm1hioQewV7PaYDinx/
         VBkT7HMxzmyBqrgMbrju7RTE8tMFWFqW4ZxBIphaSPpOzxhUvMDw6SjqG1mV5jAUw2DW
         Srwa7wuNVg+nQTyMeLuhW6xN95cM1exItamctqCWgWInw6QHkLGKadSc+GsLzmKrUg6l
         Zx4Phu51siqJsU7Z+ATRDpEMUkZM6qfOXLYLM+2LWYOiLNlGw/sxu4AISGidJxzJaYEN
         ai6YbLqpJqe5y5EvuB+B4Y+fH1pPOri25FDfmcs0K5ERFHVi/xF6olTS7ZL5UmQ9ouUZ
         Ue2g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5328SPpJVo9ijSNOfDnphKop8Do48O1ZDULrUeLwauupUeLYv6gs
	Cu1MIAtU1cFfPQR0qZQOrL4=
X-Google-Smtp-Source: ABdhPJz+HO+HJS4xzrJ/DKMby0I8WlsyjGH3Nojce9VZJyO079+9NgaH++h780JcQox7qdlJKtR5dg==
X-Received: by 2002:a25:a08d:: with SMTP id y13mr23333949ybh.522.1623064950118;
        Mon, 07 Jun 2021 04:22:30 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5b:3c3:: with SMTP id t3ls106462ybp.4.gmail; Mon, 07 Jun
 2021 04:22:29 -0700 (PDT)
X-Received: by 2002:a25:af0d:: with SMTP id a13mr24094517ybh.14.1623064949638;
        Mon, 07 Jun 2021 04:22:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623064949; cv=none;
        d=google.com; s=arc-20160816;
        b=TQqK1ct88bGF3rRBvSJDZLfbCQ4I1ID+rYcmisoOv8IWSL8MgWxMBI4dbcclxcQtLo
         ns9NV2IikhA+mckTDQEhMp5D1TaXxE+n8TPbHtRqVNiDxG2IPaHh2qw5N9IucxoZLn/s
         d/aJHHoEMizjFsSXYKpZKS6w58cAk2E2RFGTonvVDqfvC+slsv99nD5uqgqNDTMXWNe2
         1KC5UPGqQws1qpjrTT/z4T/0wbkuHCO0xDT0K2nG/69ZpjDTOo0LQBHbpQSx5ToGh19d
         AZ3WclQCg7MsXMJjMIJyYPPIJVEE+2NzU5QPLbsivRdcwzZq2cqV65libIkVkRPikcf7
         +3Kw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=8V5LgJfWrDorVHOc6xC0uMt+rmPvuxBZh6r2HnXb5+I=;
        b=rR5eB5eLxrNHEqTtCd2PGSI7JkuqfYJgZEX0bauD1fEDI+s0uUzEXmK6qXMwYw5t5+
         ZjslKj1CeByricpyB8VHbeIfqmT30rHPqCt/Vqx1+00/Ujd/gS1vzb7sHn+R+Ur11HfB
         Usp1ktJhOUq1Sb9IJmagWUZSBM8z16R/hwLhgmJMBWVD1Y4x/riXN0h1hMmUpYoLVIcg
         KlmdBGTEqndzQy567h161yyZBlxjZQOQ/1QGgmnt/RD9l/9qxRBpo6KZMKNLATgyvgef
         mt0i/rMP34ZctEawbYuNBg+LZ0NrI36UQy8P/0uR0ZG6Qh6knW/VYeh6mn5uWeO+cmYd
         8olQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=FZ493wnR;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id s65si357043ybi.5.2021.06.07.04.22.29
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 07 Jun 2021 04:22:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 0672E6101A;
	Mon,  7 Jun 2021 11:22:28 +0000 (UTC)
Date: Mon, 7 Jun 2021 13:22:26 +0200
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
Message-ID: <YL4Bcm2dOyWKLGJ7@kroah.com>
References: <cover.1623053078.git.leonro@nvidia.com>
 <00e578937f557954d240bc0856f45b3f752d6cba.1623053078.git.leonro@nvidia.com>
 <YL3z/xpm5EYHFuZs@kroah.com>
 <YL36OFkmlxJiqjvc@unreal>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <YL36OFkmlxJiqjvc@unreal>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=FZ493wnR;       spf=pass
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

On Mon, Jun 07, 2021 at 01:51:36PM +0300, Leon Romanovsky wrote:
> On Mon, Jun 07, 2021 at 12:25:03PM +0200, Greg KH wrote:
> > On Mon, Jun 07, 2021 at 11:17:35AM +0300, Leon Romanovsky wrote:
> > > From: Jason Gunthorpe <jgg@nvidia.com>
> > > 
> > > This code is trying to attach a list of counters grouped into 4 groups to
> > > the ib_port sysfs. Instead of creating a bunch of kobjects simply express
> > > everything naturally as an ib_port_attribute and add a single
> > > attribute_groups list.
> > > 
> > > Remove all the naked kobject manipulations.
> > 
> > Much nicer.
> > 
> > But why do you need your counters to be atomic in the first place?  What
> > are they counting that requires this?  Given that they are just a
> > statistic for userspace, making them be a u64 should work just the same,
> > right?
> 
> The statistic counters are per-port, while the cm.c flows run in
> asynchronically in parallel for every CM connection.
> 
> We need atomic variable to ensure that "write to u64" is not
> interrupted.

On what system is "write to u64" interruptable?  As these are per-port,
do multiple threads try to increment these at the same time?  And even
if they do, what happens if one is 'dropped' somehow because of this?
It's just a userspace statistic counter, what relies on this being
exact?

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YL4Bcm2dOyWKLGJ7%40kroah.com.
