Return-Path: <clang-built-linux+bncBDY3NC743AGBBMNM4X6QKGQEOTFRSDY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63e.google.com (mail-pl1-x63e.google.com [IPv6:2607:f8b0:4864:20::63e])
	by mail.lfdr.de (Postfix) with ESMTPS id BD1302BC136
	for <lists+clang-built-linux@lfdr.de>; Sat, 21 Nov 2020 19:02:26 +0100 (CET)
Received: by mail-pl1-x63e.google.com with SMTP id x3sf8645101plr.23
        for <lists+clang-built-linux@lfdr.de>; Sat, 21 Nov 2020 10:02:26 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605981745; cv=pass;
        d=google.com; s=arc-20160816;
        b=qOLII6NZ8m6hDnSVesC0sEUBfWNrqQAuPX+17Qgz/HxkW2I2zMs2JhKIz6bjeLWJ26
         kbhqLMOGjzZNE/I1nuX3/OjerXxOtel3kjIWIOHTODuH7DqcrvoCXRkC5Z99BdrpV+ab
         zhZpime7TK/IIRBkIDrhweMVHOgAKZhWSQjJdSbJZm2RknyJp0MfFrtLZ5KwhmJZirrh
         U19MwHfr/arVjryRW5o/eswBL1iCwFy5Qbkx8H1GkIZ2qhRqLoDvFetVlnIAd7tOLhuu
         syx2vGEx8mkqVcpFvEEXZtQK2twMQIhVNBXhST7P0uh26nA52pWiWW6BlBxIHD4RF7Yn
         Gucw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=CuE2gHEuHnDCpCbzBT3dYbuC8la+4du3q/EPsb6gBJk=;
        b=CPkMYRuhjwvaorPecsGjsoRA+UMOhgt8EfqLv/zZqT24sp3sq//U8IzWJp6IN9OivF
         U3O2ms+f4MjWjXR8fmUuIyR1eIHyFXhIHqw0ZOmGKi0+w4hdPJmRteNQgRc1k8VhM2I5
         g/9ZoErxTbZRXuoCYRaQYmYP8OlqilE//syuPlOrhmBfBrWYDPFPI7nKn2UVobT0Mnpv
         m4ldaUwptx4ylQjVccs9EypDJAlyEUxM98mnxdt91TvNLm0FR/nS00aO9e5wRBSJyE/T
         SYu+BlfV+HSSdYqnnniSwQTtsFHpAM4heQDfmGbY6hwydNWs7/wpc6RQp8PZxSXjM69J
         NKMg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.249 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=CuE2gHEuHnDCpCbzBT3dYbuC8la+4du3q/EPsb6gBJk=;
        b=ia7dZO1xrOhVKTChf/Zm+Za+ncX9YARlT+MEu1ryqk2vzmtcE13iiKCd2fdRtDILZE
         ZRtzCaO8C+5mScl1x2pLwpV/7MqXA0MzmqMiBzvlEZGlGEmP3Wqf/QJryYaNykmT0mRN
         IGmYCoaN4afwdCq2aHFPRZoSHkRKdXecGHl/eXeLjyT6N2S0XzFhqDttnUsJQBC2jYSH
         DSPfbgTuIOY7xL98dRsn0cLFBOXrEfEvBFEEJgFWcj2l+rl6/rAuBRvlDlsVxGunLJQw
         jlXpc/H2bk1edhDVtXRB3BciMw8NkEuse/2mUBdvulUsB+HjoNfvRncvwehyDdV0tT2M
         VlQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=CuE2gHEuHnDCpCbzBT3dYbuC8la+4du3q/EPsb6gBJk=;
        b=Kx5jR9DKcJiCyxHLpFlPq/aSpdBu+kgmVgSqa6H6AxRvTOB7u2pTnVoVVpSOPCiWHV
         FycYlwbzNDY8NyPiG4QbwVSwMsFrUvIe9ErMrnURapPjK5g5SYbmj/cISr957wOolg0f
         1QQddX1AFRvdsqQgfSSNOOLyR1T7kO6qlusd8g1TbuKIVn/YSeGl6CapdBFwJM5L2pPu
         2fAdYcJ1PSIBT68SQfewbYXivCz0J3fxrYjYwa6Mp33a69TayBWYz7yRWotlvOg9az21
         IYO76mNAt0DxrCbeZXU6uSw3Q0ZktUurAJ5X+wnURzSk3XAau5tgb+7csU/Lit8qUIvG
         tTfw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531tp3GCUk46/123f6QMj+S31j7Pmzp00gxxeGEoPin+DFvAU8I7
	VNYQch122WvzrZ4DoZ8eY4E=
X-Google-Smtp-Source: ABdhPJxwcUbWRmQVImmNBaGp25rFTPd0e2SPinRWT6KogyzSBjRl/HaicrjJbXUXTvf9v9jzRQ+i4A==
X-Received: by 2002:a65:560b:: with SMTP id l11mr22531102pgs.63.1605981745341;
        Sat, 21 Nov 2020 10:02:25 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:cf08:: with SMTP id h8ls5418650pju.3.gmail; Sat, 21
 Nov 2020 10:02:24 -0800 (PST)
X-Received: by 2002:a17:90b:e86:: with SMTP id fv6mr17202564pjb.196.1605981744738;
        Sat, 21 Nov 2020 10:02:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605981744; cv=none;
        d=google.com; s=arc-20160816;
        b=LInDfpPupKks/rz4OuFSadWKAXzQEqpMnZeBgSjTEnnrZFSySUFLpIpQyXT3Mg9cKD
         Vn5ZUSaZei25oRwqZqdqf8CsVgwHmLb4rDZfwtqYa6zTIEt5zb+mre3bYnalx3VEFjzM
         x3sGwek1ctL5ZCWwcaC21NmwmflQFhPmt5Mj37CSl1eJ4UV126REX4cOsSJlzTCyB3Xn
         8DTCF3RWnHhMr6wSpM8kSlUEoxnImMVGzNvBrZP8GIEpd0YQ+0udet/QHsdAvJs1AROS
         dbDgBtFImRQl0q9NQMz84Ifubrh7twNrRE/v9l8XXjWnOz+BEn5IUZNrQoYb/7a7V5bh
         VP6A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=5O8JFyMK46NSPgfn3GxIXhJNNeZ/UyVGbwYB8FZeTTM=;
        b=zu+SPcGDIXs2srola2O/kmZuvE9JnZb5KoDJomdfIhZ2vL7UB704JGsMsvQqZVfeFv
         p/vyVRqbIh2SshrrRJ5sOziIrXRpFqSZb+kGYhv2IFocUR2krVrWoHUhWM9sPdj49hAg
         cjtOyO4GJFsDLNbtwMXfGW9RC5vo3sypKKFr3aj+w4ZJrhoJXkAhPn16w4jXGkIKs8qk
         Va9ayfl6TGsg8qN0PKyAIB2MoCinWqTRAN9IBbj7i5tTNMuR3garzCasSmhotDKQsPQ5
         TCizX5bBF24qngWBslPeaps5UVBkax+AJLLsmsE0bTJzqZyCC+HSi4RGjC7sE5mvf1D1
         yAvQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.249 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0249.hostedemail.com. [216.40.44.249])
        by gmr-mx.google.com with ESMTPS id j124si503661pfb.2.2020.11.21.10.02.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 21 Nov 2020 10:02:24 -0800 (PST)
Received-SPF: neutral (google.com: 216.40.44.249 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.249;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay07.hostedemail.com (Postfix) with ESMTP id AF7D7181D3025;
	Sat, 21 Nov 2020 18:02:23 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 50,0,0,,d41d8cd98f00b204,joe@perches.com,,RULES_HIT:41:355:379:599:800:960:967:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1542:1593:1594:1711:1730:1747:1777:1792:2393:2525:2560:2563:2682:2685:2828:2859:2933:2937:2939:2942:2945:2947:2951:2954:3022:3138:3139:3140:3141:3142:3354:3622:3865:3866:3867:3868:3870:3871:3872:3873:3874:3934:3936:3938:3941:3944:3947:3950:3953:3956:3959:4321:5007:6117:6119:6742:6743:7809:7903:9025:10004:10400:10848:11027:11232:11658:11914:12043:12297:12663:12679:12740:12760:12895:13161:13229:13439:13845:14096:14097:14181:14659:14721:21080:21451:21627:21790:21987:30012:30054:30070:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:1,LUA_SUMMARY:none
X-HE-Tag: uncle36_3402e8c27356
X-Filterd-Recvd-Size: 3937
Received: from XPS-9350.home (unknown [47.151.128.180])
	(Authenticated sender: joe@perches.com)
	by omf04.hostedemail.com (Postfix) with ESMTPA;
	Sat, 21 Nov 2020 18:02:18 +0000 (UTC)
Message-ID: <f7643c9cb0a896f3ead65e86084b7c143e21ef43.camel@perches.com>
Subject: Re: [RFC] MAINTAINERS tag for cleanup robot
From: Joe Perches <joe@perches.com>
To: James Bottomley <James.Bottomley@HansenPartnership.com>,
 trix@redhat.com,  clang-built-linux@googlegroups.com
Cc: linux-hyperv@vger.kernel.org, linux-kernel@vger.kernel.org, 
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
Date: Sat, 21 Nov 2020 10:02:17 -0800
In-Reply-To: <5843ef910b0e86c00d9c0143dec20f93823b016b.camel@HansenPartnership.com>
References: <20201121165058.1644182-1-trix@redhat.com>
	 <5843ef910b0e86c00d9c0143dec20f93823b016b.camel@HansenPartnership.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.38.1-1
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.249 is neither permitted nor denied by best guess
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

On Sat, 2020-11-21 at 09:18 -0800, James Bottomley wrote:
> On Sat, 2020-11-21 at 08:50 -0800, trix@redhat.com wrote:
> > A difficult part of automating commits is composing the subsystem
> > preamble in the commit log.  For the ongoing effort of a fixer
> > producing one or two fixes a release the use of 'treewide:' does
> > not seem appropriate.
> > 
> > It would be better if the normal prefix was used.  Unfortunately
> > normal is not consistent across the tree.
> > 
> > 	D: Commit subsystem prefix
> > 
> > ex/ for FPGA DFL DRIVERS
> > 
> > 	D: fpga: dfl:
> 
> I've got to bet this is going to cause more issues than it solves. 
> SCSI uses scsi: <driver>: for drivers but not every driver has a
> MAINTAINERS entry.  We use either scsi: or scsi: core: for mid layer
> things, but we're not consistent.  Block uses blk-<something>: for all
> of it's stuff but almost no <somtehing>s have a MAINTAINERS entry.  So
> the next thing you're going to cause is an explosion of suggested
> MAINTAINERs entries.

As well as some changes require simultaneous changes across
multiple subsystems.

> Has anyone actually complained about treewide:?

It depends on what you mean by treewide:

If a treewide: patch is applied by some "higher level" maintainer,
then generally, no.

If the treewide patch is also cc'd to many individual maintainers,
then yes, many many times.

Mostly because patches cause what is in their view churn or that
changes are not specific to their subsystem grounds.

The treewide patch is sometimes dropped, sometimes broken up and
generally not completely applied.

What would be useful in many cases like this is for a pre and post
application of the treewide patch to be compiled and the object
code verified for lack of any logic change.

Unfortunately, gcc does not guarantee deterministic compilation so
this isn't feasible with at least gcc.  Does clang guarantee this?

I'm not sure it's possible:
https://blog.llvm.org/2019/11/deterministic-builds-with-clang-and-lld.html


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/f7643c9cb0a896f3ead65e86084b7c143e21ef43.camel%40perches.com.
