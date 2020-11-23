Return-Path: <clang-built-linux+bncBDY3NC743AGBBKMN5X6QKGQEPWQYDTY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53c.google.com (mail-pg1-x53c.google.com [IPv6:2607:f8b0:4864:20::53c])
	by mail.lfdr.de (Postfix) with ESMTPS id F3E412BFF59
	for <lists+clang-built-linux@lfdr.de>; Mon, 23 Nov 2020 06:20:42 +0100 (CET)
Received: by mail-pg1-x53c.google.com with SMTP id c4sf11161153pgb.0
        for <lists+clang-built-linux@lfdr.de>; Sun, 22 Nov 2020 21:20:42 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606108841; cv=pass;
        d=google.com; s=arc-20160816;
        b=FP1dMSifcajhmQ8Cz/kVqfy23wdyP398kikb9y2IbqApFqc1puCekmFWFw83PYwcrA
         adrPGR+luO+jv3dmrTvYBV9KTXswH+z4W4Q9ipkzaiU7QTPea1kQiuoIQjiF90u2Nb1t
         jtJN9DvnIa7kGfMSmE+0SeILiD0iGT3zXKgO1nGRD3S3DqLVRojzPiLxfe/qF9MpqnI+
         leYWwdPTvyl7LtuZccn8h9QyNZI7PyXmlFr+g8VWT7zDdF234Q0QOa+GTHAR1GlSZJRE
         GsFaUIpTv4TDIDqk0MDqcDp4Rbgz4+e7/bGUowp9BT1+Q/oxfjtQybhmyief8XA+OiAF
         kOMQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=NE6Uw511zBnDhz2OITRNBFjPoWizB2LBsQqZOS6xzfc=;
        b=ngI5uY82dg0BLWvfSZP6uA3h/JeDshaDasY4GXO7QwbhFgWudf0IOC3pW51zRemEo7
         o/ZmBiLUyIWPjEmN6Sk1nCCsjJPLlVcgnMZB/deCKqfQSzLE35digLPnLuUSvSwMhgmk
         x2HM8Lgm03KqeACwIdK6ujzTfbb6E0jYb93XBkwtpxbkCy/XieOUlOyUIiqGuOTt7nDp
         FuNHReWcH4wIof55UVSIv7H2SGP1ALTwpAKrT/ycs5IGJJoWDoIlpOEx4xpede3/JIDI
         wnndYI/La4Rt7FNofX8fm7YgLGof+LWNh38Sb5vJNdp9ZSn2VXMCtxao7qzNrUSux3fg
         bUtw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.31 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=NE6Uw511zBnDhz2OITRNBFjPoWizB2LBsQqZOS6xzfc=;
        b=go0CWzkoPBDYNj1NGZlkUwF8Vc8j7urBYBtv9RQJ8TybPoR2ROWq1FSLtx76IXUJrU
         dg38rwaxOBxvF+0HILrlBMUYVM5N6E3W6ZTvMBVVfhMJtOgebD3N9dERtLxPGGgspd27
         2GNTqtNvhb+FCBXiA3fVPxrw0fpyeGBNtVaWYaUhVaFHakEA4q35TGA+tHHFeWhoaMzz
         hKmrQ7PJvCgoVRP5Cp+9L47nQpudFtMtVaHa10pvoUTJiMaCLZFreFPDoXqo+7WzHVT4
         6eUbNnCjSCLdcRJoXc6v6bJdXhdxVAwD0sdw2ZkfcYtjDrc+7bCoAyCrbi2j3BA80/sb
         nPaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=NE6Uw511zBnDhz2OITRNBFjPoWizB2LBsQqZOS6xzfc=;
        b=LEuiYnyLmP5OLSjl5/MOOHojGEbokAeTxUoSO9gAW+9hQGPMh7oXVb8WxFocfQaNfN
         af5cEFH3pV/xfoBnPs8Zy4CNShYiU5q7xBOZl+XnpICtN1k9QkIBjkuhvcYqagrKNqJn
         KjcCwnUYsWRWHItNBApLB6KRrMe0lTPTOmSrU8VUR/zYguydPNHviv9qCq5gmJPTFJ80
         itLCArDBJTJ6Hd6NAiP4zrsEW1FmJLaLBTImZ8w55gpYpzymBYV+boPhFeje+ElU+RC9
         PxQptmQ6gTws0bF8EoOXOTQEQNTfarMhT6SFjZ2jlVHyPSokUttJinLrjn/vTI7UurfR
         3UdQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532N4PrNuayXXXsvK3refshh5lgvzjF1aleUbEnzvyk5DtMm421W
	5C5D0REm/0Kh/MGe1NfJ1sc=
X-Google-Smtp-Source: ABdhPJxh2Ukm9h0hmqsFq8UCXuItnk381VmMY5NZi5J9dVu8UYLqFRU4wbTWQ3g95eDh0yR87w/jGg==
X-Received: by 2002:a17:90a:8d:: with SMTP id a13mr4370713pja.227.1606108841367;
        Sun, 22 Nov 2020 21:20:41 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:7556:: with SMTP id q83ls88968pfc.3.gmail; Sun, 22 Nov
 2020 21:20:40 -0800 (PST)
X-Received: by 2002:a63:ca4b:: with SMTP id o11mr27016171pgi.236.1606108840654;
        Sun, 22 Nov 2020 21:20:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606108840; cv=none;
        d=google.com; s=arc-20160816;
        b=BUxoInwnHwfxrK1MhJBSzGpb2AGoZEbeeigLJV1dhDyu4YyKQMCWWRfY8ZZ3Z5SMM1
         YehiQEsFJSuTm7GKRCt05QSJHB1c4/QtahElQxoAFotDas9sm78+/mQpisBpX3JOm4cu
         3inBe/TTdixzuFVoozxT+QrqnpRz5VkJTiU6PPGOCbVN/WY5oubGB7hKtqK1HPrmikmx
         0bErtc200Ognd0OiJzUHbiOPQr6fasEESRQPeefkMIz+Ecz1yLDWewsUYAK2haS9N275
         voQvQJrHM9Qu5I67lJujVK0LIW4FJzg9ZQTwDIS9GS6zTx3oD2r5AKKpGLnpAWf40lZr
         VhqA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=cc8zGoxQCM2Wcs2Kd9LoZu4dl2MxaYbZwjRRvHgyVbw=;
        b=EfdiOYtNIEX0zQuYiYiN+qhnG9QfdZs3uyq/d7FzevsxJ0JDmIlSZN9nfLZHlM7jla
         Mx9ke1dlKR8Yb/oCHIjVphRoIxTJeCMkH7dJbE7WVF4ohHUNaXjraoar+1hEzuzkCz1Y
         A/t2346lNHf9xITJCtVtBWFWMiI+P0ouUIKI9ic1DJ9cItE9RGNTI3MVsxp2Z2jwRRR4
         7kG8Qk6zsxKA8Na06p3uFfS4H0GDcVx1SzQ4f2ocP0tagi3UXOQ/boJUY5ROYLa3cnzp
         8UmWkGZ/vPFt8y8JQ/2eXNHYw5vOM5CfYSwpinGs6bd8cBSuvLb37sPaD6z4MA+zk7kw
         z6mA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.31 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0031.hostedemail.com. [216.40.44.31])
        by gmr-mx.google.com with ESMTPS id gg20si890425pjb.3.2020.11.22.21.20.40
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Nov 2020 21:20:40 -0800 (PST)
Received-SPF: neutral (google.com: 216.40.44.31 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.31;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay05.hostedemail.com (Postfix) with ESMTP id 49C051802912A;
	Mon, 23 Nov 2020 05:20:39 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 50,0,0,,d41d8cd98f00b204,joe@perches.com,,RULES_HIT:41:355:379:599:800:960:967:973:988:989:1260:1263:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1542:1593:1594:1711:1730:1747:1777:1792:1981:2194:2199:2393:2525:2540:2561:2564:2682:2685:2828:2859:2933:2937:2939:2942:2945:2947:2951:2954:3022:3138:3139:3140:3141:3142:3354:3865:3866:3867:3868:3870:3871:3872:3873:3874:3934:3936:3938:3941:3944:3947:3950:3953:3956:3959:4321:4659:5007:6119:7809:9010:9025:9388:10004:10400:10848:11232:11657:11658:11914:12043:12295:12297:12555:12679:12740:12760:12895:13161:13172:13229:13439:14093:14094:14096:14181:14659:14721:21080:21451:21611:21627:21691:21740:21987:30054:30064:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:2,LUA_SUMMARY:none
X-HE-Tag: rain84_0b0907d27362
X-Filterd-Recvd-Size: 3725
Received: from XPS-9350.home (unknown [47.151.128.180])
	(Authenticated sender: joe@perches.com)
	by omf19.hostedemail.com (Postfix) with ESMTPA;
	Mon, 23 Nov 2020 05:20:38 +0000 (UTC)
Message-ID: <394faaf71b72ba4310a5001b314c080fc47f1cae.camel@perches.com>
Subject: Re: [RFC] MAINTAINERS tag for cleanup robot
From: Joe Perches <joe@perches.com>
To: James Bottomley <James.Bottomley@HansenPartnership.com>,
 trix@redhat.com,  clang-built-linux@googlegroups.com
Cc: linux-kernel@vger.kernel.org, linux-scsi@vger.kernel.org
Date: Sun, 22 Nov 2020 21:20:37 -0800
In-Reply-To: <f7643c9cb0a896f3ead65e86084b7c143e21ef43.camel@perches.com>
References: <20201121165058.1644182-1-trix@redhat.com>
	 <5843ef910b0e86c00d9c0143dec20f93823b016b.camel@HansenPartnership.com>
	 <f7643c9cb0a896f3ead65e86084b7c143e21ef43.camel@perches.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.38.1-1
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.31 is neither permitted nor denied by best guess
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

(removing almost all the cc: lists and leaving scsi and lkml)

On Sat, 2020-11-21 at 10:02 -0800, Joe Perches wrote:
> On Sat, 2020-11-21 at 09:18 -0800, James Bottomley wrote:
> > On Sat, 2020-11-21 at 08:50 -0800, trix@redhat.com wrote:
> > > A difficult part of automating commits is composing the subsystem
> > > preamble in the commit log.  For the ongoing effort of a fixer
> > > producing one or two fixes a release the use of 'treewide:' does
> > > not seem appropriate.
> > > 
> > > It would be better if the normal prefix was used.  Unfortunately
> > > normal is not consistent across the tree.
> > > 
> > > 	D: Commit subsystem prefix
> > > 
> > > ex/ for FPGA DFL DRIVERS
> > > 
> > > 	D: fpga: dfl:
> > 
> > I've got to bet this is going to cause more issues than it solves. 
> > SCSI uses scsi: <driver>: for drivers but not every driver has a
> > MAINTAINERS entry.  We use either scsi: or scsi: core: for mid layer
> > things, but we're not consistent.  Block uses blk-<something>: for all
> > of it's stuff but almost no <somtehing>s have a MAINTAINERS entry.  So
> > the next thing you're going to cause is an explosion of suggested
> > MAINTAINERs entries.
> 
> As well as some changes require simultaneous changes across
> multiple subsystems.

Perhaps a start of this would be something like the below for a new
MAINTAINERS entry just for SCSI CORE.

This adds an "E:" patch prefix entry as well as a specific file
list for what seem to be "scsi core" files so that the generic
SCSI SUBSYSTEM F:drivers/scsi/ entry does not have to be used.

The SCSI SUBSYSTEM could have an E: entry of "scsi:" so that
driver specific content could be automatically prefixed with
"scsi: <basename(dirname)>:
---
 MAINTAINERS | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 5f10105cac6f..68521abd1bd8 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -15631,6 +15631,24 @@ S:	Maintained
 W:	http://www.kernel.dk
 F:	drivers/scsi/sr*
 
+SCSI CORE
+M:	"James E.J. Bottomley" <jejb@linux.ibm.com>
+M:	"Martin K. Petersen" <martin.petersen@oracle.com>
+L:	linux-scsi@vger.kernel.org
+S:	Maintained
+Q:	https://patchwork.kernel.org/project/linux-scsi/list/
+T:	git git://git.kernel.org/pub/scm/linux/kernel/git/jejb/scsi.git
+T:	git git://git.kernel.org/pub/scm/linux/kernel/git/mkp/scsi.git
+E:	"scsi: core:"
+F:	include/linux/scsi*
+F:	drivers/scsi/constants.c
+F:	drivers/scsi/hosts.c
+F:	drivers/scsi/scsi.*
+F:	drivers/scsi/scsi_*
+F:	drivers/scsi/sd.c
+F:	drivers/scsi/sense_codes.h
+F:	drivers/scsi/sr.c
+
 SCSI RDMA PROTOCOL (SRP) INITIATOR
 M:	Bart Van Assche <bvanassche@acm.org>
 L:	linux-rdma@vger.kernel.org


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/394faaf71b72ba4310a5001b314c080fc47f1cae.camel%40perches.com.
