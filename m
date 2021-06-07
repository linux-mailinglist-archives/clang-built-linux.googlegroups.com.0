Return-Path: <clang-built-linux+bncBDMMLW4BXYHBBPHU66CQMGQET2WDU6A@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103a.google.com (mail-pj1-x103a.google.com [IPv6:2607:f8b0:4864:20::103a])
	by mail.lfdr.de (Postfix) with ESMTPS id B44DD39DA1F
	for <lists+clang-built-linux@lfdr.de>; Mon,  7 Jun 2021 12:51:41 +0200 (CEST)
Received: by mail-pj1-x103a.google.com with SMTP id y3-20020a17090abd03b029016be80ed24esf7860184pjr.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 07 Jun 2021 03:51:41 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1623063100; cv=pass;
        d=google.com; s=arc-20160816;
        b=A2K5qmOEdVj97UVHBBFj05Awb46JW9QLhuXIgtgXbP8Ak2e7c/KrzDGhsUSNZhZn1n
         gx/SmcnEnoaqxo8yXvgq5kQnSfPe5AHjBTxKBwKf4g3/f6gCKQBm6aU/3+pS0723K8DK
         lElP8l1odTgAWNqxcML9b0/rtxzYhoARS5N3orKhsNsjJJAV6OIgwL1/D5Up6YBUt+4f
         PB6kekXnZ4KlUGBmjMVZIhyuSQYYOnDX1dmucXQ3FHML+pKv5tDDxm1OHLS42cAGapBZ
         vbYdc4D/PBE40KCWk+8DKe2yWajVeNQVkG6egc/EIs0tlqgwxTj7emXEW/RxDrCxrCM6
         b57Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=nh2B7KW4qQACQL+7Pj/1liXAkYEDVMPfLR+w8ZVrhAw=;
        b=W1nqogWjVKE8YUJxWFMpdlPiKSlgXgNtYGt2Ld2CGMgcj06b/6cDgzETCZyeGrdiG1
         ewLnt/PP03K6D/2uw62fLY66n6nL0KSmaBZcb/qM4rJFnFpGEWHcmL31zD5WS/cFV4Ha
         fvLbdbJ8yO2Tq9+6jz0pwbZ+43J4NhjPfUsv/UB0hbB6DpZ6odsLrDrql8IqDuSRUv9e
         kSBXN8zw//JUt5/ILlPjdII0S8FldmYSSALXTUyogzNeE4t1M30se9s5vetxlP61sTu8
         sFluMx2zqQKMm2UWhf4loXWIYjFxT0Ucuua/2eYWmxAKb5QR/mKViPwYe4lNFYW2B4Pf
         cP8A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=bHrnrbfd;
       spf=pass (google.com: domain of leon@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=leon@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=nh2B7KW4qQACQL+7Pj/1liXAkYEDVMPfLR+w8ZVrhAw=;
        b=PGHbf9AGxumBTlVlGjaIxfQD2rQC5/Xpmci3boPDRAUa+lNEz6DIZfAVy0AGin/HOE
         8PiW7qthOavXYxImlAVGuVwAn/0l/T59RZvd+dleP5C0xJYmbAstt3KvucKfpv16z+zG
         d9BtOOCztN/xY2WrJInpD3fyZjX9MoaNEter21istJkMGO2mgrA2flN4j9hdbZH7YeFu
         TCfv1I2NXY30AytnQ9ug/Zzfi6Fg9v3rnHSIujs3e6x4xQ9BQ8rvAhd2uTc3dVv+L4Au
         28eXXFqhbY8l2GzZ3qLdgYvv4xcVb/S+2kPTY5DsvjkB21qr+yBz87Q8osx7eLVsskPG
         rS7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=nh2B7KW4qQACQL+7Pj/1liXAkYEDVMPfLR+w8ZVrhAw=;
        b=CD3nyj2ULyt6MYv638ZON1DVwO5KDXJ9NdOF9LsKgLx6wH3NMAUL7LEn9wbXfOstMZ
         2PbdMkxyGPQnYAEVx4APpZCDVf94UD28RaUsucClTbeyQ0vxW97mHU3SpHeQefF1V5bS
         81Day6d8Kb7/I7d8Kqzn9zE/f8JU1KwTCy0Gbf+aL2CCHENVf8JOqP9LI//6NOGB6hqs
         KQBV34L5VVMItHvVTiVSY/FIPaWilJ3CVB6o12V/UrUbrzxo8rOOqi2XOZVhJo3IZY0g
         9OW2qGqXVSqt5c7E7B571VA29vmSEEOmIGTZ0Vhjj12CKb7rDmcWtxhBSMxIql95zhM2
         Hw3Q==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533aWk2CM9w9LF8cwhIu6cZ1s+60Nby3KXGd/cPFdDx02rIWpQAN
	mBka+puMYtqKIj5j/kooznw=
X-Google-Smtp-Source: ABdhPJzvRuLSB4InSvscVmvrVEbGThDlc7YmUuRNNYqzty/pMUp8UshM0qqUQSrgNLz5oOSFATg8/A==
X-Received: by 2002:a63:5252:: with SMTP id s18mr17265512pgl.229.1623063100458;
        Mon, 07 Jun 2021 03:51:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a63:d4b:: with SMTP id 11ls1341642pgn.5.gmail; Mon, 07 Jun
 2021 03:51:40 -0700 (PDT)
X-Received: by 2002:a63:f815:: with SMTP id n21mr17572718pgh.2.1623063099899;
        Mon, 07 Jun 2021 03:51:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1623063099; cv=none;
        d=google.com; s=arc-20160816;
        b=q9Gd4RF5mCnvNKlnqjFkR8k3ZbHX8hldnEoOZGjI2UJHz9kq+g6VyDVPYRK8+QUReZ
         vKP0fgxNRgLVz1B71PVLCz4C1dSSEbSrgU7/Of+GkvFs9rsrHySSpSRwbKkAyLhOJb7m
         fJeUj0jxqfxR+A4bH2npcLMmwFXxMV7ce3Tjl99M0GJeu8wnhWBSu458FcLMoir5K5JP
         AHw69SUdyUmA4yOoONItmlYRxuDJNAPIuJecWb9EnH5uS7ngAgAsUsHNa/4IR0Q4n86F
         PRBLR+Oqa7nIrVDualOLGaFv9ht/JeXerfa61fg8bE4Ste5P9cPoX0s/AFrRn7+cPp7t
         MsIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=eD0bk5f53n9uLo+gAYHtQzewYA+P20EM9sXTboHIMJ4=;
        b=hh+RQv74DuLirpiVsaf63yqcNtgx7xwe/pt3tAsKjpjMdwxf25anlScWmiZVWRKuew
         yr8Ea5LYZjAFYluKn2jXbcg+DXn+bJS5/DML6/3792bcwv9pDQ2TF/v9L3vC1t4YNjgC
         TkYVP+u2nJnZnYoAAdifLc/apnWvFS+PCCGHHlcyoA/CY9ImV+biqiDkbkhQcm55yhpH
         /bWJLvgEzQCs+01Yv3udfeFThTf9KvnhZi9+wkmHlNovFt4wVJJujD+mx6I0qtMZRevQ
         WhTih4Wqj/VXu65ngK8DUiePjbm89GsEt6b+OWUagCXTKMwnb966aYu0NItY7jz3222w
         rhgQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=k20201202 header.b=bHrnrbfd;
       spf=pass (google.com: domain of leon@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=leon@kernel.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id c23si1305974pjv.2.2021.06.07.03.51.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 07 Jun 2021 03:51:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of leon@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id B4C7C60FDA;
	Mon,  7 Jun 2021 10:51:38 +0000 (UTC)
Date: Mon, 7 Jun 2021 13:51:36 +0300
From: Leon Romanovsky <leon@kernel.org>
To: Greg KH <gregkh@linuxfoundation.org>
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
Message-ID: <YL36OFkmlxJiqjvc@unreal>
References: <cover.1623053078.git.leonro@nvidia.com>
 <00e578937f557954d240bc0856f45b3f752d6cba.1623053078.git.leonro@nvidia.com>
 <YL3z/xpm5EYHFuZs@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <YL3z/xpm5EYHFuZs@kroah.com>
X-Original-Sender: leon@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=k20201202 header.b=bHrnrbfd;       spf=pass
 (google.com: domain of leon@kernel.org designates 198.145.29.99 as permitted
 sender) smtp.mailfrom=leon@kernel.org;       dmarc=pass (p=NONE sp=NONE
 dis=NONE) header.from=kernel.org
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

On Mon, Jun 07, 2021 at 12:25:03PM +0200, Greg KH wrote:
> On Mon, Jun 07, 2021 at 11:17:35AM +0300, Leon Romanovsky wrote:
> > From: Jason Gunthorpe <jgg@nvidia.com>
> > 
> > This code is trying to attach a list of counters grouped into 4 groups to
> > the ib_port sysfs. Instead of creating a bunch of kobjects simply express
> > everything naturally as an ib_port_attribute and add a single
> > attribute_groups list.
> > 
> > Remove all the naked kobject manipulations.
> 
> Much nicer.
> 
> But why do you need your counters to be atomic in the first place?  What
> are they counting that requires this?  Given that they are just a
> statistic for userspace, making them be a u64 should work just the same,
> right?

The statistic counters are per-port, while the cm.c flows run in
asynchronically in parallel for every CM connection.

We need atomic variable to ensure that "write to u64" is not
interrupted.

Thanks

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YL36OFkmlxJiqjvc%40unreal.
