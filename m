Return-Path: <clang-built-linux+bncBCILJWNIZYHBBWGO5P6QKGQEQ32ETSQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53d.google.com (mail-pg1-x53d.google.com [IPv6:2607:f8b0:4864:20::53d])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BAD62BFC31
	for <lists+clang-built-linux@lfdr.de>; Sun, 22 Nov 2020 23:34:02 +0100 (CET)
Received: by mail-pg1-x53d.google.com with SMTP id i7sf6025137pgn.22
        for <lists+clang-built-linux@lfdr.de>; Sun, 22 Nov 2020 14:34:02 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606084441; cv=pass;
        d=google.com; s=arc-20160816;
        b=UdWd5MkIyeZv56B4gW2gFcCcgqZ0OByTPTl1ftj2TiCYK5NgiKch+fzryr4X9mAMHQ
         UsPIRYWOvwIGfEHv4FqV1c8OiCkTlYsouxfvv5S+VtIcYEokeWqOBOQ3qPWPZ48RvQl3
         ta/sTiY8zdgUQ8dBpvyMrOvsnR0ZhcDN1J+ENB3BburZOzZvfRLJv+ncvrKMHlupdmaA
         sO4vezuiZ1iRiNE/rtJ5f8NIOgVYEnm2ZlXrcrBHjEM81VifSH4elu5bGG75dA9ASAbG
         UrEQXW+rDEJMNVTjCd1GZL91WcveYnL009+uEVXH5T2Bq9FXjSQ8KG9eMxCYpVBhI/3o
         Khfw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:sender:dkim-signature;
        bh=5zEGum8o7dTEkbdx3kc5XRBvph4CLxWvS3D2rlFqpM4=;
        b=kLhDehE3ImTQz8pGPpHFjlTOogfUrPjqijwC1u38jJzhtKDLUwFVLnsU2DUrekEwfZ
         VecXef7o0ZCMTGXUMLvftXEP96dnWVGtv9cHc3CQ0TYKSCwbMUAjPY58BXK3CdouXawD
         robp/hDxLIKBc1hd0XijeLzvaqtlu0BseVSLw8xE9OQHQBZa432bBue8ObUlT206S2xZ
         YpfeSYJyzOVTqlECMAqcz9Sq+bDUPMrLCPLaVz+eWNsGQUCBpNfuosW7zbIEPf/ls9hu
         waKJX0lcsfdvGOvdrnaV0xuFaLVAicdegWknF7co22v3bgjNO5/CONweHCq0VznhZiKx
         +kig==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of fthain@telegraphics.com.au designates 98.124.60.144 as permitted sender) smtp.mailfrom=fthain@telegraphics.com.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:in-reply-to:message-id:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5zEGum8o7dTEkbdx3kc5XRBvph4CLxWvS3D2rlFqpM4=;
        b=O6g0GeH3lgzG3P+QfbCc5TETpWyg1fitB58GCEHAeGRh4mMHQiJzB6fW+eZ6BaAS8s
         n+GUphwgIiYX8gruyrYxIFI4oGNAUPAxZMBRkm+Lx0OM49NMxv+VaKrd3neVHvNFoU/y
         SLqcrlAD5OZKOHfFIPIiF0AKYAo6+2tkuTV6wq2OpuD7Zp2bh1XwMjYVBoxKt9QVX1lC
         umsEBBYTbP2nTbE9B5nMeOtlWYg/X5G341MGSWD/dsP2vb1uPKllfZZHEhW7XYqFX2ht
         wMB7kyPvv3YTz10e4NSpxdSaaWNFs0HZwVeo179YCkjgtGyHKaJJreGIS1oCwudurstm
         39lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:in-reply-to
         :message-id:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=5zEGum8o7dTEkbdx3kc5XRBvph4CLxWvS3D2rlFqpM4=;
        b=KEDtL20xylwzc4q4X1xN4ry6qO3o7sFCS3Ef/RHSTxFzI5L91ylhSSZQePv3b07rWd
         vKqlxgQMPFtNzc2n20LXoUUSZt+vva+G/ueqMN95Vck7vqXuLJAvztaA/mQT2u2lpi4/
         sX5WzdtEswKsB5nY+byu3axSj5dHWFdDrLnTSE+27Jo9kLMCmAD7WGbx8p7sMVRn8hhR
         vJ8eLUvUtU4gwv2UhAMpWN+z68t7KdVtQbrU9FNZyr0w23aGtQRL4L4GluDvVomb4kf3
         PzFV/Qk8yfHk7l+MOzBFeRy9KMEw/Qy4z1BAGkAlw1VpMKGGAGaUBCx0UGPMDpoRhZT4
         kVEA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5311erzgt5GzdJrLX7/luEgQrBRdCuXMA2REn01bCTbfGcHrIHAu
	okJDDD9TIKqe51yA4tlea5Y=
X-Google-Smtp-Source: ABdhPJwszWrzPqQe0Cm55AvzIHljfRxKOdYJJlbWliIzi8iqgjFxYafR1aPZPJwzSLpKemZYKslExw==
X-Received: by 2002:a63:5f17:: with SMTP id t23mr25699963pgb.190.1606084441109;
        Sun, 22 Nov 2020 14:34:01 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:f3c5:: with SMTP id ha5ls524040pjb.1.experimental-gmail;
 Sun, 22 Nov 2020 14:34:00 -0800 (PST)
X-Received: by 2002:a17:90b:4393:: with SMTP id in19mr19135585pjb.4.1606084440148;
        Sun, 22 Nov 2020 14:34:00 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606084440; cv=none;
        d=google.com; s=arc-20160816;
        b=LiHXYRwOmJZo+fJH+yGfKUYP3Z+HrMyrbjkgn2XvITWnWQnxq5Pf4AZUUDQN2Rn0tn
         TKMB06SjCzOVFo7XBuD2oPzBu3GIAvorlvTuMEdm3tKUO20jtEcnnL09xU3cBeyV6p65
         gis89OKM+1pe3fXcVf1IEZ360xfA04dJQwor8lPAqbwTI/+jGY6Ia6CcbKyPXoXBsIEa
         6AcODvyNctvN3qX40laegm6i1IkCObDBmmsxhpdcDV5q5TWYiiZlb4h4ZN02RE+2sdO7
         KfF6Seu1R6qlasPjVNs9C3S+lWa3DMkAwNsHGp7T+oLHyVn66yGaxcUG0x/7hJ6kZxKt
         oF+g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date;
        bh=P01P3cZP3Cji2Un6xTGDWEPeLh0L8R60A19VGeJTp68=;
        b=kcj8gPncLetRbrQ3PTXD/e1QLcehzzd+zx1ivhLVwswQrmOQlRu+yhzMs+zaMNWkoo
         Dztd3YORuppHXo6FtdzlDtdicwaiwTn7Ak0ggKtVNrmiOCD2j6F/wBtndJQQy9jbPqm3
         VpsCuSINV9Mu6kK7dFIgzJmW/cjWcXJBu9gdNMpL8/aUZDZfZOadDckPB72CMxD20jAJ
         iimTbIsSh5Kat3jaIlmY+gESfL5tB69CepWIlV90TPgU9uSAN50P5YZn6WG+eaHnwHXr
         XKDYJe5rA15Ajb+WzCyZ2hnPOkIOjVJC2DoKD7dRTLlOU69LilbggRQX9PPJgS2vu4hL
         7UyQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of fthain@telegraphics.com.au designates 98.124.60.144 as permitted sender) smtp.mailfrom=fthain@telegraphics.com.au
Received: from kvm5.telegraphics.com.au (kvm5.telegraphics.com.au. [98.124.60.144])
        by gmr-mx.google.com with ESMTP id bi5si514433plb.2.2020.11.22.14.33.59
        for <clang-built-linux@googlegroups.com>;
        Sun, 22 Nov 2020 14:34:00 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of fthain@telegraphics.com.au designates 98.124.60.144 as permitted sender) client-ip=98.124.60.144;
Received: from localhost (localhost.localdomain [127.0.0.1])
	by kvm5.telegraphics.com.au (Postfix) with ESMTP id A588721F21;
	Sun, 22 Nov 2020 17:33:55 -0500 (EST)
Date: Mon, 23 Nov 2020 09:33:55 +1100 (AEDT)
From: Finn Thain <fthain@telegraphics.com.au>
To: Joe Perches <joe@perches.com>
cc: James Bottomley <James.Bottomley@HansenPartnership.com>, 
    Tom Rix <trix@redhat.com>, Matthew Wilcox <willy@infradead.org>, 
    clang-built-linux@googlegroups.com, linux-hyperv@vger.kernel.org, 
    linux-kernel@vger.kernel.org, xen-devel@lists.xenproject.org, 
    tboot-devel@lists.sourceforge.net, kvm@vger.kernel.org, 
    linux-crypto@vger.kernel.org, linux-acpi@vger.kernel.org, devel@acpica.org, 
    amd-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org, 
    intel-gfx@lists.freedesktop.org, netdev@vger.kernel.org, 
    linux-media@vger.kernel.org, MPT-FusionLinux.pdl@broadcom.com, 
    linux-scsi@vger.kernel.org, linux-wireless@vger.kernel.org, 
    ibm-acpi-devel@lists.sourceforge.net, platform-driver-x86@vger.kernel.org, 
    linux-usb@vger.kernel.org, linux-omap@vger.kernel.org, 
    linux-fbdev@vger.kernel.org, ecryptfs@vger.kernel.org, 
    linux-fsdevel@vger.kernel.org, cluster-devel@redhat.com, 
    linux-mtd@lists.infradead.org, keyrings@vger.kernel.org, 
    netfilter-devel@vger.kernel.org, coreteam@netfilter.org, 
    alsa-devel@alsa-project.org, bpf@vger.kernel.org, 
    linux-bluetooth@vger.kernel.org, linux-nfs@vger.kernel.org, 
    patches@opensource.cirrus.com
Subject: Re: [RFC] MAINTAINERS tag for cleanup robot
In-Reply-To: <dec07021e7fc11a02b14c98b713ae2c6e2a4ca00.camel@perches.com>
Message-ID: <alpine.LNX.2.23.453.2011230810210.7@nippy.intranet>
References: <20201121165058.1644182-1-trix@redhat.com>         <20201122032304.GE4327@casper.infradead.org>         <ddb08a27-3ca1-fb2e-d51f-4b471f1a56a3@redhat.com>         <20201122145635.GG4327@casper.infradead.org>         <0819ce06-c462-d4df-d3d9-14931dc5aefc@redhat.com>
         <751803306cd957d0e7ef6a4fc3dbf12ebceaba92.camel@HansenPartnership.com> <dec07021e7fc11a02b14c98b713ae2c6e2a4ca00.camel@perches.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: fthain@telegraphics.com.au
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of fthain@telegraphics.com.au
 designates 98.124.60.144 as permitted sender) smtp.mailfrom=fthain@telegraphics.com.au
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


On Sun, 22 Nov 2020, Joe Perches wrote:

> On Sun, 2020-11-22 at 08:49 -0800, James Bottomley wrote:
> > We can enforce sysfs_emit going forwards
> > using tools like checkpatch
> 
> It's not really possible for checkpatch to find or warn about
> sysfs uses of sprintf. checkpatch is really just a trivial
> line-by-line parser and it has no concept of code intent.
> 

Checkpatch does suffer from the limitations of regular expressions. But 
that doesn't stop people from using it. Besides, Coccinelle can do 
analyses that can't be done with regular expressions, so it's moot.

> It just can't warn on every use of the sprintf family.
> There are just too many perfectly valid uses.
> 
> > but there's no benefit and a lot of harm to
> > be done by trying to churn the entire tree
> 
> Single uses of sprintf for sysfs is not really any problem.
> 
> But likely there are still several possible overrun sprintf/snprintf
> paths in sysfs.  Some of them are very obscure and unlikely to be
> found by a robot as the logic for sysfs buf uses can be fairly twisty.
> 

Logic errors of this kind are susceptible to fuzzing, formal methods, 
symbolic execution etc. No doubt there are other techniques that I don't 
know about.

> But provably correct conversions IMO _should_ be done and IMO churn 
> considerations should generally have less importance.
> 

Provably equivalent conversions are provably churn. So apparently you're 
advocating changes that are not provably equivalent.

These are patches for code not that's not been shown to be buggy. Code 
which, after patching, can be shown to be free of a specific kind of 
theoretical bug. Hardly "provably correct".

The problem is, the class of theoretical bugs that can be avoided in this 
way is probably limitless, as is the review cost and the risk of 
accidental regressions. And the payoff is entirely theoretical.

Moreover, the patch review workload for skilled humans is being generated 
by the automation, which is completely backwards: the machine is supposed 
to be helping.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/alpine.LNX.2.23.453.2011230810210.7%40nippy.intranet.
