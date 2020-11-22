Return-Path: <clang-built-linux+bncBDXO746SYYBRBLVN5L6QKGQE36KJ2GI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3a.google.com (mail-yb1-xb3a.google.com [IPv6:2607:f8b0:4864:20::b3a])
	by mail.lfdr.de (Postfix) with ESMTPS id 387252BC739
	for <lists+clang-built-linux@lfdr.de>; Sun, 22 Nov 2020 17:49:52 +0100 (CET)
Received: by mail-yb1-xb3a.google.com with SMTP id a13sf19462353ybj.3
        for <lists+clang-built-linux@lfdr.de>; Sun, 22 Nov 2020 08:49:52 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606063791; cv=pass;
        d=google.com; s=arc-20160816;
        b=dkArDRGhvyHvE1uTptq7LNSY4S1FgkKLcxsDeLby0NAEPPEr188ucRwueQyTWmTIOI
         qt90R0CfuOgn81jahkleTPOH2MTxXKSeoFubDTx62sEs5DujFLw8pQ7+si+Ak/g4SHPH
         NKg6zF521ZotvGOvcObVjBgeyT8DeMjTDkNO618JY25x+z97Ewl88qeaqXxsv7P/k5bP
         fMCXiUlBcrsmVZxmVxgNFWqOQt9G7I9S2W9bjtBSlAZyrILctQo9IVQy8bBfVxHAS9ip
         kJWVBy1USdtXQIl9eTW4/Idg4K4ovDfUZq43vv/7rs8Es0vfy4neNC5y6QZNTIJ/mDkS
         US+g==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=+4Q0xOAlB/RHcw+FLJ7pyX7PcdwW6qOQAaIVDtwxugw=;
        b=x7jecNWXpPF56SoC4fb6YGtzr+3d+AW0nyRSuQX5stJEb3iRmTAlqckLDwDtbgSwxf
         TQhcXwXrVSI6z8Dh+rIO0DBiFwlmBfO3MHTUlgjeuhBMVDwrTY9muCnzfDyDNd720aGo
         zzwVmpu9GBuavH9rcvh85me8I6uv/+UXefjJOaZEBUZzG4Twe/5rJGlShLpsAOXr+oKi
         nVsUV5i/RDR0opsNNIvuyBkcOZjXaRxeOPTNQbQWmj5iLo3s62cU/LPivi2Ra50Jxikr
         xGmMBO1RsDg9qJNYDfYoejqgpIWfjAgTWK463QfJiYG9n63LdKcw+sbKerLKJ6fnTjds
         c9iQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@hansenpartnership.com header.s=20151216 header.b=DJQ3WuSC;
       dkim=pass header.i=@hansenpartnership.com header.s=20151216 header.b=DJQ3WuSC;
       spf=pass (google.com: domain of james.bottomley@hansenpartnership.com designates 2607:fcd0:100:8a00::2 as permitted sender) smtp.mailfrom=James.Bottomley@hansenpartnership.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=hansenpartnership.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=+4Q0xOAlB/RHcw+FLJ7pyX7PcdwW6qOQAaIVDtwxugw=;
        b=enwF5PIlZZTKagvm9okmxWBmOfy4LqLSQUmhKVq1ZIgXcrPQCxLyclCJLLVQSiCSwu
         1qZiHeu5Z8gvN3R2r0eVDx7LVBaULMZz3mb7xDomplyG3R3lAvfVkf2TdMUofDfC0p9+
         dyr+AAl/g9RmBSLrGIfPBo4GzAFgAI1VOX8CzkuYGrkCmstzEEJ07gOXU38g0u77jfHl
         bpYHOiV/Yb/IAPmsos2GU555BPlOI9GSsthn3o47Sq7LEAZXYFtQYWnpPcuJPJwQyL00
         to21X/9vr7G2ybQ4k6pUGmvrjr8hCMTSz8742OCzXCZTdkX3PLRJmAz9BmbjC6ujM0zD
         Lj7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=+4Q0xOAlB/RHcw+FLJ7pyX7PcdwW6qOQAaIVDtwxugw=;
        b=NAHQJmcc6E2mF1RUTjUXb2yqV8tsQf5pnb3IvfFRCL9tKWdQ8zaU56vuTioiWS3AyE
         Oqu8djWLdHMMLBcmGnK7zaYjcChFsmVcrxVsOjpAkN/h7nQ5xAlWFW7sjnzTJOdaD0w1
         cQepl4zLyeU0ae+Pt1q1D/ktpJvlxj7DyFiqLe1zPlXxapNXdViWtt7e4o+RAwy2Ujpo
         bZ3XTf6Me8e7wQXeV2sMG08st4R7Rcu2l4c82GHTAKFfaDCa5nHofO1TuLrZegRxXwCR
         Erl2kpj5nJ9SZyY/sOv6MGNj+GlYbBntshc5fP9+Ru0ATtBm7rx04kRERMHYQFRTXcmh
         9zmQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530ws65qQiikfq6vwa2Xk6YqqSx3AOLOrNxEaO/n6gzafetw189e
	VxfM9+ueXQWDxgju/d8Z9qY=
X-Google-Smtp-Source: ABdhPJwe29AgM51AcmiP4kZFJCQV1xcqAPQJO2cJ3b5iWiVW71hpxthdK8Z1dR1E2/W2FkeVPe+m/A==
X-Received: by 2002:a25:6ec2:: with SMTP id j185mr30155371ybc.80.1606063791088;
        Sun, 22 Nov 2020 08:49:51 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:b581:: with SMTP id q1ls1104874ybj.6.gmail; Sun, 22 Nov
 2020 08:49:50 -0800 (PST)
X-Received: by 2002:a25:d7d8:: with SMTP id o207mr35552239ybg.274.1606063790659;
        Sun, 22 Nov 2020 08:49:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606063785; cv=none;
        d=google.com; s=arc-20160816;
        b=x2gyhq0nvy4lxybMBKQXwCOLG6tKMCfbiOHExia5IUkpoqPcNl15RPnBdy2Tm7fglL
         p8MfZa0t8aHDjxEvQHRp8U8W1I20TiTjrei0OyGO/J5VmiwrcG6lqCAj8V3KM+rJSU6T
         xMa3FZi93fy1q+taMcV3cb+cg+pbgBbDuuC5aUKP0/ZqTr4LSM6IhX+3EXBdT/LOLVAF
         zEP5MUZ/lYfL5YP6nneAXe35sTcTqTGP4eu2DxrwCxpZ1T5egO2LJiQzhZgDEQjiHpIN
         YhwJNTgMQnVmSxI6pQh3JlR+ZRE4esqjvLJNYtG52fQmRswdjbBG02JyOMwK2fXWorQp
         XEjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature
         :dkim-signature;
        bh=R/wn9/BrMbhAZzxsAIbnAbxRNy8av/goU11P1aFt7Js=;
        b=l6gF9DLYnMmkK+EaLqSuGnhD10cwCKF67POSQtm+7ksjSaLnNimjWrNJlM1Jp2NmfM
         tY3uwiNQeQs+/Fg1WQDUcJMkh9alfGO880XMzUSeytjJN4uRaA1x37PQyhHm6EvhhYJZ
         KtAuo9tO6kreKLHehlmXy9RRxnwED9iVEqLi2OGBp8EbnAfezKDBM9rJqd7hUujvxalm
         pdWFM6bz0sUDkNn1oX+4BENIaMf1jn1K504x5zZzR3b9BOR4WA+cGxdh9mmWau2xBtk4
         R3vzpc9d4iKW9eSKDphAACo5l9Gpm4mO0GmBXgN/IG7ZmbKQdLreOoRxtSP6L+UY8Qe6
         DRwQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@hansenpartnership.com header.s=20151216 header.b=DJQ3WuSC;
       dkim=pass header.i=@hansenpartnership.com header.s=20151216 header.b=DJQ3WuSC;
       spf=pass (google.com: domain of james.bottomley@hansenpartnership.com designates 2607:fcd0:100:8a00::2 as permitted sender) smtp.mailfrom=James.Bottomley@hansenpartnership.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=hansenpartnership.com
Received: from bedivere.hansenpartnership.com (bedivere.hansenpartnership.com. [2607:fcd0:100:8a00::2])
        by gmr-mx.google.com with ESMTPS id m3si883635ybf.1.2020.11.22.08.49.45
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 22 Nov 2020 08:49:45 -0800 (PST)
Received-SPF: pass (google.com: domain of james.bottomley@hansenpartnership.com designates 2607:fcd0:100:8a00::2 as permitted sender) client-ip=2607:fcd0:100:8a00::2;
Received: from localhost (localhost [127.0.0.1])
	by bedivere.hansenpartnership.com (Postfix) with ESMTP id AB0CF1280302;
	Sun, 22 Nov 2020 08:49:44 -0800 (PST)
Received: from bedivere.hansenpartnership.com ([127.0.0.1])
	by localhost (bedivere.hansenpartnership.com [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iwIwMm9lBMHQ; Sun, 22 Nov 2020 08:49:44 -0800 (PST)
Received: from jarvis.int.hansenpartnership.com (unknown [IPv6:2601:600:8280:66d1::527])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by bedivere.hansenpartnership.com (Postfix) with ESMTPSA id CCD1012802EA;
	Sun, 22 Nov 2020 08:49:42 -0800 (PST)
Message-ID: <751803306cd957d0e7ef6a4fc3dbf12ebceaba92.camel@HansenPartnership.com>
Subject: Re: [RFC] MAINTAINERS tag for cleanup robot
From: James Bottomley <James.Bottomley@HansenPartnership.com>
To: Tom Rix <trix@redhat.com>, Matthew Wilcox <willy@infradead.org>
Cc: joe@perches.com, clang-built-linux@googlegroups.com, 
 linux-hyperv@vger.kernel.org, linux-kernel@vger.kernel.org, 
 xen-devel@lists.xenproject.org, tboot-devel@lists.sourceforge.net, 
 kvm@vger.kernel.org, linux-crypto@vger.kernel.org,
 linux-acpi@vger.kernel.org,  devel@acpica.org,
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
Date: Sun, 22 Nov 2020 08:49:41 -0800
In-Reply-To: <0819ce06-c462-d4df-d3d9-14931dc5aefc@redhat.com>
References: <20201121165058.1644182-1-trix@redhat.com>
	 <20201122032304.GE4327@casper.infradead.org>
	 <ddb08a27-3ca1-fb2e-d51f-4b471f1a56a3@redhat.com>
	 <20201122145635.GG4327@casper.infradead.org>
	 <0819ce06-c462-d4df-d3d9-14931dc5aefc@redhat.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.34.4
MIME-Version: 1.0
X-Original-Sender: James.Bottomley@hansenpartnership.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@hansenpartnership.com header.s=20151216 header.b=DJQ3WuSC;
       dkim=pass header.i=@hansenpartnership.com header.s=20151216
 header.b=DJQ3WuSC;       spf=pass (google.com: domain of james.bottomley@hansenpartnership.com
 designates 2607:fcd0:100:8a00::2 as permitted sender) smtp.mailfrom=James.Bottomley@hansenpartnership.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=hansenpartnership.com
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

On Sun, 2020-11-22 at 08:10 -0800, Tom Rix wrote:
> On 11/22/20 6:56 AM, Matthew Wilcox wrote:
> > On Sun, Nov 22, 2020 at 06:46:46AM -0800, Tom Rix wrote:
> > > On 11/21/20 7:23 PM, Matthew Wilcox wrote:
> > > > On Sat, Nov 21, 2020 at 08:50:58AM -0800, trix@redhat.com
> > > > wrote:
> > > > > The fixer review is
> > > > > https://reviews.llvm.org/D91789
> > > > > 
> > > > > A run over allyesconfig for x86_64 finds 62 issues, 5 are
> > > > > false positives. The false positives are caused by macros
> > > > > passed to other macros and by some macro expansions that did
> > > > > not have an extra semicolon.
> > > > > 
> > > > > This cleans up about 1,000 of the current 10,000 -Wextra-
> > > > > semi-stmt warnings in linux-next.
> > > > Are any of them not false-positives?  It's all very well to
> > > > enable stricter warnings, but if they don't fix any bugs,
> > > > they're just churn.
> > > > 
> > > While enabling additional warnings may be a side effect of this
> > > effort
> > > 
> > > the primary goal is to set up a cleaning robot. After that a
> > > refactoring robot.
> > Why do we need such a thing?  Again, it sounds like more churn.
> > It's really annoying when I'm working on something important that
> > gets derailed by pointless churn.  Churn also makes it harder to
> > backport patches to earlier kernels.
> > 
> A refactoring example on moving to treewide, consistent use of a new
> api may help.
> 
> Consider
> 
> 2efc459d06f1630001e3984854848a5647086232
> 
> sysfs: Add sysfs_emit and sysfs_emit_at to format sysfs output
> 
> A new api for printing in the sysfs.  How do we use it treewide ?
> 
> Done manually, it would be a heroic effort requiring high level
> maintainers pushing and likely only get partially done.
> 
> If a refactoring programatic fixit is done and validated on a one
> subsystem, it can run on all the subsystems.
> 
> The effort is a couple of weeks to write and validate the fixer,
> hours to run over the tree.
> 
> It won't be perfect but will be better than doing it manually.

Here's a thought: perhaps we don't.  sysfs_emit isn't a "new api" its a
minor rewrap of existing best practice.  The damage caused by the churn
of forcing its use everywhere would far outweigh any actual benefit
because pretty much every bug in this area has already been caught and
killed by existing tools.  We can enforce sysfs_emit going forwards
using tools like checkpatch but there's no benefit and a lot of harm to
be done by trying to churn the entire tree retrofitting it (both in
terms of review time wasted as well as patch series derailed).

James


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/751803306cd957d0e7ef6a4fc3dbf12ebceaba92.camel%40HansenPartnership.com.
