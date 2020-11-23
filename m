Return-Path: <clang-built-linux+bncBDY3NC743AGBBLUQ5T6QKGQEAAZ5ALI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qt1-x83f.google.com (mail-qt1-x83f.google.com [IPv6:2607:f8b0:4864:20::83f])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F2542BFDC5
	for <lists+clang-built-linux@lfdr.de>; Mon, 23 Nov 2020 01:54:07 +0100 (CET)
Received: by mail-qt1-x83f.google.com with SMTP id z8sf12287945qti.17
        for <lists+clang-built-linux@lfdr.de>; Sun, 22 Nov 2020 16:54:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606092846; cv=pass;
        d=google.com; s=arc-20160816;
        b=pnJ8Ivkzc3SoH3iCU7Dbjj+6ZhzY6toq5BOeolcH4nt6qfeQD4o3fDFGO1cE7vKndk
         17Bu5Xnzgdn5TGYWAaipB29lwj2NT5ZJNZi03g6WGwCEKf2/sEKKncfYGuIylBZoyKvX
         Co9Tz6E/vdzTnTS2ktEb4LrnCJGvgDmJGBVteSfairCeQRacdLrsafJ5G+igRI7kbFmd
         caqtBBmSFPzAYj0zMXqi+7zWDtD8H99g527b6O4GaBHtDwpM6xk2gcqFjoJov8GNyqaV
         NUGnmeJd41y+2wKas0JS93irUZOk1gW0/wBi2UusPzCC/fhtfFUO72GUbi31H/DNe990
         32XQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=NycZOlJBVQx1n6MA+5+EbISiAqMKDwC6NdBQCmi7kRo=;
        b=NHjJgwITo+IiAVclFaZfUj+fSjvHYy6OpxGIEgtpWsbWBT7n0XUYmuDbm0ww4uMEGJ
         dnPp/jelf9C0imGZikVtnCF3wEbO0QX8nvnaF9FdJt8LQAXp0kN7mbV5xeLPR8ZEnkcc
         kogg9Hyd8lK9E+gok1ZX87GDqlGbZC7ni705IXc1icCmIzj6MIf2mSJeAYvJCJCvWwIp
         ccLDcdWsfXXhKWUiKq6ngdVCnHSqlB9ixmAv1dkhh9s7t1MfV+Seh1qsD9tOOsLRZhyR
         hWNs4czj7s7qiCcqaDi9AVzZjeZG63jLaPFuwpWg5uKyYzaohnRiU+kteWaE3S+iB+bs
         myBg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.250 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=NycZOlJBVQx1n6MA+5+EbISiAqMKDwC6NdBQCmi7kRo=;
        b=lnrYiAiUTSwgwyZnIxHbS62yGTDun99FubxrEo7BaI+gqAYqURa3fxdxD02Ewn8Kux
         tYKaoHOS170B3YfLT2qnvlEKWVDrjTwltJw6kqMySeCaDEl4BWiYUJup79p2FhL1YAsE
         FJpdaqVRw3LIY5I01dw1KQQx1BaC9L2UjxdEnVOgCvE4dd96tNijCWKn8I+CI96utp2X
         2sfSrgHjXUQ+fiv4vcEjE+lne2svBW/R5SGie8zp233G78JRqHbePwam5jlBsLpLqonn
         1vj26ZpSKOptjdioh189JZpNKcbJhshas1j3JvoHdlg9e29FKNJ++ezn4BotjLzM3OdZ
         wRWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NycZOlJBVQx1n6MA+5+EbISiAqMKDwC6NdBQCmi7kRo=;
        b=A8+wnT0jjWM1ngRuotLFbTSLxkS7ugVVQs+vYIAMAaX02B7nWnzxIfc75xFORrTwqb
         AVUb5EaoXuiH7kPLcbVYghD6/sXYThmnldNeWtKEjBAZNblHGye3K9VKcCHN6EulwAPB
         JuslKl85AsEy4kh3H/rmS92t5ZuPJhhdNtmCmw2P+3TV22+z31YqkZj82Q304CR9ZYe7
         JsbBv7YvKKY8p+zGZqEQOR+Gar1sdCTmF0lPIfwFUVRuAOdqjLdcCYJS+pyFBrn65OxM
         hhheY4AcS0HzijsZb5WqCMwqQoX/xo4GPDISBs/3/bxuT/foVCKlTrzsVR8F+yma0of7
         tqlw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530GQFBQ5LDw6FwTfOPlvcmPLmp8RXAu1VX9cRWVQMLF00ROXwA+
	TzhK59sONYdOAqH9yu5ti8M=
X-Google-Smtp-Source: ABdhPJzFXRSKB2sfWetbW/fIWTQPV/IolGXb6p7vepMmx9xzOCc/EilzRICH5bckfVUNmBv+WC9Shw==
X-Received: by 2002:ac8:4785:: with SMTP id k5mr17615218qtq.71.1606092846477;
        Sun, 22 Nov 2020 16:54:06 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a37:2795:: with SMTP id n143ls1242738qkn.9.gmail; Sun, 22
 Nov 2020 16:54:06 -0800 (PST)
X-Received: by 2002:a37:664d:: with SMTP id a74mr27147124qkc.487.1606092846009;
        Sun, 22 Nov 2020 16:54:06 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606092846; cv=none;
        d=google.com; s=arc-20160816;
        b=E2wDhtE3dRXFb7xziHmOlpKvKnc5a/uTz/7VucRqsbkLi5aK1E5uMB6hM1fpuIOm3w
         ujw060bcEOmKtALBa3xGQ8DHZmUlpbKeYADnta+NcUWui47GuVBi8XVkeC+urkYmiS93
         BSqHCLzvWdcf7odMQWYcgItGtYtbEC67yB74aTV+HK011RPd5nwBA4axlO/MKYB3o3Su
         wAvs2qWHwGSoU156SxPS3PCJCJVCWZFysEqEkZqWDMoB7+VSVl4fAx39RdNMxnTpwtf1
         vrPlYitdQT58v89jVAj2Bp0vUWYcQB9fBE15EFgYvcmALqtz+RNj9PZIpphQ+/FRqEhJ
         jXQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=ZA/TJPr2zaarmKFMSV2fvnu1Efg5t3edFLdsAXpbfgk=;
        b=GCty1YlfSBQA/QNCsvp3il8Bi62NSZ13M5UZzltgwIegDb0kC/Kw3DQcUIWURZjG6g
         2Yr5SHddNOEVf2zNCwccpw3ATtwBK7UkzaPTowGVRuQ9y9M8fmDYrLpBNjMbHcL5Mp38
         fwT4vX3CZLJ0i5flO200wmzEaQ+OsFX8hUA4FvpMEg5ZM7at+T16OpPGWjwPX+4Re+Ic
         BTOQVsDxx4nJZu1kUCtEVmQmh8iO2u4j8Shgi7QI6rQbUTFUADGvsstGOqV9D9gLSkDL
         1gk//9xbV6Gwfmm4LqGvAMNDPbRtfao9ehG16QrPqZ1/dXE2bgFWNU8mT5KFyZwN329I
         jRGw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.250 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0250.hostedemail.com. [216.40.44.250])
        by gmr-mx.google.com with ESMTPS id c19si243378qkl.3.2020.11.22.16.54.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Nov 2020 16:54:05 -0800 (PST)
Received-SPF: neutral (google.com: 216.40.44.250 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.250;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay05.hostedemail.com (Postfix) with ESMTP id 2D37318029125;
	Mon, 23 Nov 2020 00:54:05 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,,RULES_HIT:41:355:379:599:973:982:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1540:1593:1594:1711:1730:1747:1777:1792:2393:2553:2559:2562:2828:2911:3138:3139:3140:3141:3142:3352:3622:3865:3866:3867:3868:3870:3871:3872:4250:4321:4425:5007:6119:6691:6742:6743:7903:10004:10400:10848:11026:11232:11658:11914:12296:12297:12555:12740:12760:12895:13069:13161:13229:13311:13357:13439:14659:14721:21080:21433:21627:21740:30041:30054:30090:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:1,LUA_SUMMARY:none
X-HE-Tag: steam95_4513bd127361
X-Filterd-Recvd-Size: 3177
Received: from XPS-9350.home (unknown [47.151.128.180])
	(Authenticated sender: joe@perches.com)
	by omf02.hostedemail.com (Postfix) with ESMTPA;
	Mon, 23 Nov 2020 00:53:59 +0000 (UTC)
Message-ID: <21826b6d513c4d9ccc795179c1edb0df2361d870.camel@perches.com>
Subject: Re: [RFC] MAINTAINERS tag for cleanup robot
From: Joe Perches <joe@perches.com>
To: Finn Thain <fthain@telegraphics.com.au>
Cc: James Bottomley <James.Bottomley@HansenPartnership.com>, Tom Rix
 <trix@redhat.com>, Matthew Wilcox <willy@infradead.org>, 
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
Date: Sun, 22 Nov 2020 16:53:58 -0800
In-Reply-To: <alpine.LNX.2.23.453.2011230810210.7@nippy.intranet>
References: <20201121165058.1644182-1-trix@redhat.com>
	         <20201122032304.GE4327@casper.infradead.org>
	         <ddb08a27-3ca1-fb2e-d51f-4b471f1a56a3@redhat.com>
	         <20201122145635.GG4327@casper.infradead.org>
	         <0819ce06-c462-d4df-d3d9-14931dc5aefc@redhat.com>
	 <751803306cd957d0e7ef6a4fc3dbf12ebceaba92.camel@HansenPartnership.com>
	 <dec07021e7fc11a02b14c98b713ae2c6e2a4ca00.camel@perches.com>
	 <alpine.LNX.2.23.453.2011230810210.7@nippy.intranet>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.38.1-1
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.250 is neither permitted nor denied by best guess
 record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
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

On Mon, 2020-11-23 at 09:33 +1100, Finn Thain wrote:
> On Sun, 22 Nov 2020, Joe Perches wrote:

> > But provably correct conversions IMO _should_ be done and IMO churn 
> > considerations should generally have less importance.
[]
> Moreover, the patch review workload for skilled humans is being generated 
> by the automation, which is completely backwards: the machine is supposed 
> to be helping.

Which is why the provably correct matters.

coccinelle transforms can be, but are not necessarily, provably correct.

The _show transforms done via the sysfs_emit_dev.cocci script are correct
as in commit aa838896d87a ("drivers core: Use sysfs_emit and sysfs_emit_at
for show(device *...) functions")

Worthwhile?  A different question, but I think yes as it reduces the
overall question space of the existing other sprintf overrun possibilities.


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/21826b6d513c4d9ccc795179c1edb0df2361d870.camel%40perches.com.
