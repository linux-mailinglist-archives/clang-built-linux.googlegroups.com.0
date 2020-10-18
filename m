Return-Path: <clang-built-linux+bncBDY3NC743AGBBSVEWL6AKGQEA6TILTY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x13d.google.com (mail-il1-x13d.google.com [IPv6:2607:f8b0:4864:20::13d])
	by mail.lfdr.de (Postfix) with ESMTPS id EF1C0291918
	for <lists+clang-built-linux@lfdr.de>; Sun, 18 Oct 2020 21:06:51 +0200 (CEST)
Received: by mail-il1-x13d.google.com with SMTP id m1sf5056926iln.19
        for <lists+clang-built-linux@lfdr.de>; Sun, 18 Oct 2020 12:06:51 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603048010; cv=pass;
        d=google.com; s=arc-20160816;
        b=oXLt7+Guk4rQogw/2785XvrwaA3vD6aI+ZyEug6POwxTnukXfFU8Uv3fKYJXq+56Bq
         2lOQR6ksFl4XdAtdUecJucawhloF9YTV7IukrXjo5waRtjz3pmyqmFu3+yJ0I8qDr9eA
         XAm0qZHB2qNbQXsLL/0imvhT7XsrULJojFHmDaPUzi+IWdNtNzhTZciZgJWDqpg4xC72
         KvQjVpMQHnyX318fErTJM3bMYAQopFj4RmHr0QLZ+ccEJBVpbyfplSjvW+50fBhdIuJH
         0LgZmK/+b/Lelb0bG8OjcUv8QN6GaJv0gyDToUKp/Z/0px5lfJlFocY6YkpQ0jxW90gm
         iZpg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=owfFwSYb7hZqc/Tdloimcjxlbg5Xb4Yh93mEpfyZMJQ=;
        b=t33TSCU6ImK4CwHDCcR7adh934bUQ4HPz4tTnwTb6WS+QsGcLbQR/4OF6vqLXoOaj1
         fyT8Op/mFlofR/MMJvPXjb8n9Z4HzPd6H+Bwz7ppH7N06j8RCjmDNFoL5lWlo4klk5Lb
         oVMIyKH94lQqDy+7Xs4lIILDz78lIkswcmd+9W74opA0CFp7vyS1wEb31e/MewjH6Hr2
         X6o7ot1FdYvfIPr9VF9JOYJJaq2WnfIlVdVn7e/h5UIcOpsZafoat/tP930l0vWFM4il
         Ns00BA9gR9t5KpUWBuDye9UARk1aeVnvQeUDJzBF/c6I6VbbBQ6/h03GF1zltiZNb1yn
         OnPg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.143 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=owfFwSYb7hZqc/Tdloimcjxlbg5Xb4Yh93mEpfyZMJQ=;
        b=Vnlqervov/DfcBRt/mhlXGumofFBAqgp9LBsNWRJvg4O7GVLuGt/8kKJJGCw6oQRv1
         2TAsa1fHofTuoi68ieD+v/Wu/kvoiJjsnJJezKTeBSJA082kt90kZyAlKgbmBxlu4MQP
         cS3j0NtnMAwGXDChaEQowgSqcXGS+v86BgOp489b3RdukmnEMjU+uULpHOlxQgkQvI1/
         oSL+MERjE2vTuy5y4GtFhSrNpIMslVUVP9et/8N7Eyxp+FlNOTd0n1IsiYMk6UrXqCkE
         8D6YsAdURwCBZcXWP6woj5IevuI0iflfMWqoQRdYNpdC0r0JvQT/XRdi+Q1bHdWeLTV0
         vElA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=owfFwSYb7hZqc/Tdloimcjxlbg5Xb4Yh93mEpfyZMJQ=;
        b=aSWQJptOrxrupl63E0S0EhLx5dY5ZANoBeW40cxbE4Dr+iCnFDvUwy/zHkjSNRiVei
         ObZuaE00RUt8k9iLi7GRGt1dp+lp896XFmIs0gK7sl2agbvlaWTsMYBm9ltLD877DGdV
         aBxHGO1oa0IslgeyJIou/cXG2aan5rC3J3zxjtl51W3rvLsrvKiakDKc4MrejWm/jVDe
         vVJcW3wYrP2D4m5eq1NWt4vFDDuP0FIWw9K4ThQUfqbfJQRM0ap7CmtAJwEDAcsdctxC
         u0MC7Fy1NDD4cjKM3SaoxBi/ZMNTuWzQ8B+Ngyz8cCR1wVF9FrqJhYp6TmG8YBC+pj3Y
         orFw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530r5kokmkErXeD1EgN0r2AG109UWPwgHZn2I2HqBnqauefoZpC1
	TDTYXbaOaCJW5cIDXDu4Z1c=
X-Google-Smtp-Source: ABdhPJwTLq6G9XEraw0UFfaEKa/9OuvYdbW5aNmbYQ3diQTQZk8KrGkhFjAWN4IP7o9/U49PEsTlAg==
X-Received: by 2002:a05:6638:c3:: with SMTP id w3mr8410188jao.108.1603048010533;
        Sun, 18 Oct 2020 12:06:50 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a5d:8897:: with SMTP id d23ls1027555ioo.10.gmail; Sun, 18
 Oct 2020 12:06:50 -0700 (PDT)
X-Received: by 2002:a6b:5c06:: with SMTP id z6mr8593335ioh.49.1603048010173;
        Sun, 18 Oct 2020 12:06:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603048010; cv=none;
        d=google.com; s=arc-20160816;
        b=fOgYFQcZ03Yrf+5Boe1gZnQSyTCIaQA+/VHG94KnE18HUG+oPvDofnPTPHV4UUokGA
         oP9RzpQkabXktjx0Bkz7Oqh0OHvtgB31WjvYyK1jBQGRmRWMbduq+Y745hraI6zatx+/
         4UG8u5asoCeoxQetW0un6Tj7Z4YC6zJbV6X9J23yvscMY8KaZX9feBuGB0EefhT1zsio
         yYBnvv2Elkw/4Y2Lx+aI5vcuCMFCyrEG3jXW22xzxY7eP0bKKvUt6hntj0dxrP7cAlwq
         odP/yoSWk+002y1MTjHK+TWkRzOz4pldSOxyFVfpBk5y3zNCAvvTwHkFfYNXzDo0NbsQ
         OjFw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=/QwTUSq7BgMaRqiior2i8kwbxtay/fFh+RYZWTOwdns=;
        b=OgrSaqqkbJnn9hWLdgPLmsGkIyq2c6pMDo2pxfmBg2KkEI4JITAuLBG9gsIpM1+SSx
         n1oJuR+oQmqdL5A6c9ZowQWsg6kMHsSM3JZVtTb/N+6B9z30MBU4WlEY3F2qFKcJmPr5
         9oeuJYEZKe8jJrmWCwek88rb+wsyeGzFCZizl42VxYY1vSI6YjBqDaf5p51J+usgObWF
         pqesxvuXQ9j3tpLR6EcGKSYdn9xwMsd1XW65HEERkfWw2se7DNctH2/Sc8wL6Ix6mMBF
         VmBYvsW+jortMU3x/0siu41gQIeJhE9HyoLXv76RD6ca+N5f92FbDbh5JnAzqs8iZGL2
         DWNA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.143 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0143.hostedemail.com. [216.40.44.143])
        by gmr-mx.google.com with ESMTPS id j68si451801ilg.3.2020.10.18.12.06.50
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Oct 2020 12:06:50 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.143 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.143;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay01.hostedemail.com (Postfix) with ESMTP id 70CB3100E7B40;
	Sun, 18 Oct 2020 19:06:49 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 50,0,0,,d41d8cd98f00b204,joe@perches.com,,RULES_HIT:41:355:379:599:800:967:968:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1540:1593:1594:1711:1730:1747:1777:1792:2194:2199:2393:2525:2553:2561:2564:2682:2685:2692:2828:2859:2905:2933:2937:2939:2942:2945:2947:2951:2954:3022:3138:3139:3140:3141:3142:3352:3622:3865:3866:3867:3868:3870:3871:3872:3873:3874:3934:3936:3938:3941:3944:3947:3950:3953:3956:3959:4250:4321:5007:6119:6742:6743:7903:8957:8985:9025:10004:10400:10848:11232:11658:11914:12043:12295:12297:12438:12555:12740:12760:12895:12986:13069:13072:13311:13357:13439:14096:14097:14181:14659:14721:14777:21080:21347:21433:21451:21627:21811:21819:30003:30012:30022:30034:30054:30083:30090:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:1,LUA_SUMMARY:none
X-HE-Tag: year67_630d5f827230
X-Filterd-Recvd-Size: 3209
Received: from XPS-9350.home (unknown [47.151.133.149])
	(Authenticated sender: joe@perches.com)
	by omf09.hostedemail.com (Postfix) with ESMTPA;
	Sun, 18 Oct 2020 19:06:42 +0000 (UTC)
Message-ID: <18981cad4ac27b4a22b2e38d40bd112432d4a4e7.camel@perches.com>
Subject: Re: [Ocfs2-devel] [RFC] treewide: cleanup unreachable breaks
From: Joe Perches <joe@perches.com>
To: Matthew Wilcox <willy@infradead.org>, trix@redhat.com
Cc: linux-kernel@vger.kernel.org, alsa-devel@alsa-project.org, 
 clang-built-linux@googlegroups.com, linux-iio@vger.kernel.org, 
 nouveau@lists.freedesktop.org, storagedev@microchip.com, 
 dri-devel@lists.freedesktop.org, virtualization@lists.linux-foundation.org,
  keyrings@vger.kernel.org, linux-mtd@lists.infradead.org, 
 ath10k@lists.infradead.org, MPT-FusionLinux.pdl@broadcom.com, 
 linux-stm32@st-md-mailman.stormreply.com,
 usb-storage@lists.one-eyed-alien.net,  linux-watchdog@vger.kernel.org,
 devel@driverdev.osuosl.org,  linux-samsung-soc@vger.kernel.org,
 linux-scsi@vger.kernel.org,  linux-nvdimm@lists.01.org,
 amd-gfx@lists.freedesktop.org,  linux-acpi@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, 
 industrypack-devel@lists.sourceforge.net, linux-pci@vger.kernel.org, 
 spice-devel@lists.freedesktop.org, linux-media@vger.kernel.org, 
 linux-serial@vger.kernel.org, linux-nfc@lists.01.org,
 linux-pm@vger.kernel.org,  linux-can@vger.kernel.org,
 linux-block@vger.kernel.org,  linux-gpio@vger.kernel.org,
 xen-devel@lists.xenproject.org,  linux-amlogic@lists.infradead.org,
 openipmi-developer@lists.sourceforge.net, 
 platform-driver-x86@vger.kernel.org, linux-integrity@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-edac@vger.kernel.org, 
 netdev@vger.kernel.org, linux-usb@vger.kernel.org, 
 linux-wireless@vger.kernel.org, linux-security-module@vger.kernel.org, 
 linux-crypto@vger.kernel.org, patches@opensource.cirrus.com,
 bpf@vger.kernel.org,  ocfs2-devel@oss.oracle.com,
 linux-power@fi.rohmeurope.com
Date: Sun, 18 Oct 2020 12:06:40 -0700
In-Reply-To: <20201018185943.GM20115@casper.infradead.org>
References: <20201017160928.12698-1-trix@redhat.com>
	 <20201018185943.GM20115@casper.infradead.org>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.36.4-0ubuntu1
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.143 is neither permitted nor denied by best guess
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

On Sun, 2020-10-18 at 19:59 +0100, Matthew Wilcox wrote:
> On Sat, Oct 17, 2020 at 09:09:28AM -0700, trix@redhat.com wrote:
> > clang has a number of useful, new warnings see
> > https://urldefense.com/v3/__https://clang.llvm.org/docs/DiagnosticsReference.html__;!!GqivPVa7Brio!Krxz78O3RKcB9JBMVo_F98FupVhj_jxX60ddN6tKGEbv_cnooXc1nnBmchm-e_O9ieGnyQ$ 
> 
> Please get your IT department to remove that stupidity.  If you can't,
> please send email from a non-Red Hat email address.

I didn't get it this way, neither did lore.
It's on your end.

https://lore.kernel.org/lkml/20201017160928.12698-1-trix@redhat.com/

> I don't understand why this is a useful warning to fix.

Precision in coding style intent and code minimization
would be the biggest factors IMO.

> What actual problem is caused by the code below?

Obviously none.


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/18981cad4ac27b4a22b2e38d40bd112432d4a4e7.camel%40perches.com.
