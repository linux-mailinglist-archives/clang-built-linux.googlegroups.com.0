Return-Path: <clang-built-linux+bncBDY3NC743AGBBJ6Z5L6QKGQE37ORQDY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x537.google.com (mail-pg1-x537.google.com [IPv6:2607:f8b0:4864:20::537])
	by mail.lfdr.de (Postfix) with ESMTPS id 769D82BC7E4
	for <lists+clang-built-linux@lfdr.de>; Sun, 22 Nov 2020 19:23:38 +0100 (CET)
Received: by mail-pg1-x537.google.com with SMTP id c19sf10890154pgj.14
        for <lists+clang-built-linux@lfdr.de>; Sun, 22 Nov 2020 10:23:38 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606069417; cv=pass;
        d=google.com; s=arc-20160816;
        b=MNDpPYplPp1CfiL/unQk1SOi3pn82nZlct83TUM0+Xl3llmUWMdpEKGAXcw3IMenzq
         0R4vUb5odoLjExT8tUuIblQKsyJPehXqEkk7eGkwG4vYPEIvX5xmhGivnrt389Dh7GSw
         8TyX/g/zDklEDvXEu5yUV/K6ND/XyUDQc86iOEc9EYlIukquhFYl3oiP8+23B6sFVJpC
         uxl05Ey1JvKIYAoH1eliwtpCfqc++h2C3Vx84zD4ki85lSn964bdBeIQBS2t2vIExKcc
         mRJeoJXgW/y42w5Z21cUDhCujlcXnqwDMbNin4ZSojiKBjyaBptzmb2ZsaI/g80U3vhh
         tY8A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=r6LH1+MJHANLQB9wAB0pX8NXYiHzsCJhB3S9ncp/qQk=;
        b=ufiH7BwowCR6/4N3wju7XBJv5mb2fctxJBJv3R6/q9a0LPm3VJpcYXwuSwVZ6ebsEC
         H00OxWNoDzLdDIpNaWpPmIt9H1viBEvdIREfX+s+/FDiaPzlaAMjbnIHnFPEk6yYovC0
         ZnvWQNug8XulajqtxqAM5SpUzMXFc+hVuJeb2lzCkEQ+TPRVX7pG6IWV5ENP5T6NoSFz
         /CABS2QCdlcfX4xEx5y6qBRMgeDP4AB87KSsFZDABdBZcobFKY3uEKoWPyWBpWD+pnG7
         L3nw9YYdU+Ro8mJSnhWByj5dMDDo2LM4t8Zym4dp0f7uf5FnnUsAbzQGjFbuM2o5VM8F
         naog==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.43 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=r6LH1+MJHANLQB9wAB0pX8NXYiHzsCJhB3S9ncp/qQk=;
        b=F1fQHvy1yAgV453ANn9QWEcdmpXJLb/WZHK7G8umAnkne61E781lCQbk1IIvefUw3v
         xvIudkaWmugSx/D5/b6b91uzjrcsDiTgPMBg6bUWf+IgJZKWAShxxgVBWfszCBrNPMKl
         +IId/qu1KKVP6lPFRwaIp7YDC7gjgQi4iZoBP3r9YW6Zf4vvUZx0mJz/xMuj9SObvnNP
         Nv7xIZCnVcxlJBZoaqpLiTapTX6fPOzwoSxVYEFzbkEsqY4ys/KmPQHtKL7Mb9C/Ap6Q
         U/RPWYASqsTMzaLnAU9g+yLTUlkQgNMltUhGCG73mq1dXgA7JYZWSyxZtMHjOhqVNbx4
         yq5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=r6LH1+MJHANLQB9wAB0pX8NXYiHzsCJhB3S9ncp/qQk=;
        b=Dh2FoCxtKCJ1re0zORu54QOl0FXyQTLSSQNnMGNPPOZYaMAv/VTkHh/NC8xnS3xY5N
         EflPeXNUQXR7cpftXDwJH1afKCsQYxrfcpWkec8aWSnRhvEp4DJZ10Rn14kU45VihK1/
         vZpi1vItuChiRzAjzMXO23tgDbJDP3VFLnRt6s28tyLhl7rHVTgyib1w4Aw86WIFj1Lf
         ZgRXMAPOtuBrFgIBgwnVc7Ib1fnWaYp1+9f8ek9+5AstY4BVTBYe+Opj820w9S3aMKR0
         BNAoVPTyX/r4p0b+HdIwIaj0ON41QK3mp9XySySwxA7IDanaQl7BX0aRP/KxlUCR1x7v
         +1hg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532pcWy9WVFVMBxxFLyXUV1Z492DrKQ5xt2KQ1Jtt7rR9jUV+QZo
	MM7oUtvOAiCraEDhWjsM96I=
X-Google-Smtp-Source: ABdhPJzod65uY2LqeYEP1TnYh4mn6m8PbihHhKZFjsTwbA4HOWpGFhl+P3cFLLgUpSkvPdl+BjU/Yw==
X-Received: by 2002:a17:90b:88b:: with SMTP id bj11mr21720169pjb.229.1606069416108;
        Sun, 22 Nov 2020 10:23:36 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:be18:: with SMTP id a24ls6706313pjs.3.canary-gmail;
 Sun, 22 Nov 2020 10:23:35 -0800 (PST)
X-Received: by 2002:a17:90a:db0a:: with SMTP id g10mr21646036pjv.225.1606069415457;
        Sun, 22 Nov 2020 10:23:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606069415; cv=none;
        d=google.com; s=arc-20160816;
        b=qwtNb9OrDf4Lr9D5U8aMkDJAGj4RDMHMRJv2okfvZEMco6bQRObm9w0/cUoia/2R6U
         Z1XIJaABy4kmpLbqd9OLq1wHrTHl8PQyCTCjknpAT4K3nMA/0wsSAuYzIWwd0VZNabpW
         Raej324K7qR4Ejxer/NSV6qKJyZe+ekOLpp3W4CkLz3hQK8ikxays9yYKRZ5YV2xNdB/
         Wf4pPe/VHQ4spxzMXaVTWkvP/yePd1eDZF5a86QePAUeePmdymxYJaQziHipUPO16u/R
         fT7yDcs+fQhlTfO0NIZcKZ8wJxLBdtZTwWZtzZDn7OVzxD1vYKTb3X37McTUJpmWuISj
         uWwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=jUpqDKFMC5Di8gzs4C2JF++qU4MmRtOEb5LN5bzNX/o=;
        b=qtYcyv0+R/eCPqur1vtQ0GyZTltrE4p4ZZ0HNnfYt6r6REJSxh0TZvV+RjAHN1b8ZD
         M7QApCF/p5gM9BAH1ayEJOcIc0/xaXvSE+nzvGWGdYyZ8Kd9D0YhW4DO1JoVBMfaN4qx
         RVMFgV6QH3UcDSfFq2405RAU6iH0zYOIW+vOMJpfO0tFY/zqsb3rs60UOHW1vFEExuqO
         dD6fWMbLGn6YsxXm85KzGuG6VivwJ0tuYBNvUT2gCMdcjzg68Cy5p5RLIiRuL6E1mECF
         2mrwXBN2bwySD3GXW62nMDKdUS8yWmbZLdaPnGIv0sPAqbsOyl5PhBfkv8aJfeOIwhDH
         NbQA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.43 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0043.hostedemail.com. [216.40.44.43])
        by gmr-mx.google.com with ESMTPS id 38si537931pgq.3.2020.11.22.10.23.35
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Nov 2020 10:23:35 -0800 (PST)
Received-SPF: neutral (google.com: 216.40.44.43 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.43;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay05.hostedemail.com (Postfix) with ESMTP id 524371802912B;
	Sun, 22 Nov 2020 18:23:34 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,,RULES_HIT:41:355:379:599:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1540:1593:1594:1711:1730:1747:1777:1792:2393:2559:2562:2828:3138:3139:3140:3141:3142:3352:3622:3865:3866:3867:3868:3870:3871:3872:4250:4321:5007:6691:6742:6743:7903:10004:10400:10848:11232:11658:11914:12296:12297:12740:12760:12895:13019:13069:13161:13229:13311:13357:13439:14040:14096:14097:14659:14721:21080:21324:21433:21451:21627:30012:30054:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:1,LUA_SUMMARY:none
X-HE-Tag: match16_380b6892735e
X-Filterd-Recvd-Size: 3051
Received: from XPS-9350.home (unknown [47.151.128.180])
	(Authenticated sender: joe@perches.com)
	by omf14.hostedemail.com (Postfix) with ESMTPA;
	Sun, 22 Nov 2020 18:23:29 +0000 (UTC)
Message-ID: <dec07021e7fc11a02b14c98b713ae2c6e2a4ca00.camel@perches.com>
Subject: Re: [RFC] MAINTAINERS tag for cleanup robot
From: Joe Perches <joe@perches.com>
To: James Bottomley <James.Bottomley@HansenPartnership.com>, Tom Rix
	 <trix@redhat.com>, Matthew Wilcox <willy@infradead.org>
Cc: clang-built-linux@googlegroups.com, linux-hyperv@vger.kernel.org, 
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
Date: Sun, 22 Nov 2020 10:23:28 -0800
In-Reply-To: <751803306cd957d0e7ef6a4fc3dbf12ebceaba92.camel@HansenPartnership.com>
References: <20201121165058.1644182-1-trix@redhat.com>
	 <20201122032304.GE4327@casper.infradead.org>
	 <ddb08a27-3ca1-fb2e-d51f-4b471f1a56a3@redhat.com>
	 <20201122145635.GG4327@casper.infradead.org>
	 <0819ce06-c462-d4df-d3d9-14931dc5aefc@redhat.com>
	 <751803306cd957d0e7ef6a4fc3dbf12ebceaba92.camel@HansenPartnership.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.38.1-1
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.43 is neither permitted nor denied by best guess
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

On Sun, 2020-11-22 at 08:49 -0800, James Bottomley wrote:
> We can enforce sysfs_emit going forwards
> using tools like checkpatch

It's not really possible for checkpatch to find or warn about
sysfs uses of sprintf. checkpatch is really just a trivial
line-by-line parser and it has no concept of code intent.

It just can't warn on every use of the sprintf family.
There are just too many perfectly valid uses.

> but there's no benefit and a lot of harm to
> be done by trying to churn the entire tree

Single uses of sprintf for sysfs is not really any problem.

But likely there are still several possible overrun sprintf/snprintf
paths in sysfs.  Some of them are very obscure and unlikely to be
found by a robot as the logic for sysfs buf uses can be fairly twisty.

But provably correct conversions IMO _should_ be done and IMO churn
considerations should generally have less importance.



-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/dec07021e7fc11a02b14c98b713ae2c6e2a4ca00.camel%40perches.com.
