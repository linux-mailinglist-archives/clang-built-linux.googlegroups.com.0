Return-Path: <clang-built-linux+bncBDY3NC743AGBB46Y5L6QKGQEUR6LZGI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x239.google.com (mail-oi1-x239.google.com [IPv6:2607:f8b0:4864:20::239])
	by mail.lfdr.de (Postfix) with ESMTPS id 4BE742BC7DD
	for <lists+clang-built-linux@lfdr.de>; Sun, 22 Nov 2020 19:22:45 +0100 (CET)
Received: by mail-oi1-x239.google.com with SMTP id t185sf4710484oif.20
        for <lists+clang-built-linux@lfdr.de>; Sun, 22 Nov 2020 10:22:45 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1606069364; cv=pass;
        d=google.com; s=arc-20160816;
        b=XQ/tHZ78e7C5duw4hSREdz4XZq/jfi8iGznzdgSeKnI4WZ8PV2NSGH8dVRSSLy2CCS
         k7l8kzD/HVc/p7tlu4xzPiH38mIVS7/V8n1hNkRvCGzZMdQXdHlZUmDkqr9qyaLccEpQ
         W0oyWygLkeue3LsoscZWGV2iicb2mljR5bAYORm0uG1v9shTQ9PDB8uYVh1gVZRr2XHN
         +vQx1Ts7fu2yxNfwrS1Ik91mFuB9k4COcipykNw5rOvfQDel3E/EsT6E00DubeD4/9wC
         RZ7HGnxO460wPd7pv9r3KHf5R0Mj0DHqRX2mduwj2DPnQn4N6PAvFPjH0ZF3i5+bJpFc
         NfwQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=/kNHSd20J51aAl09kaPL/COhE0Xh+4+bG0fgNgeHslc=;
        b=e95IelSL55TAbkQVCVGIms/FSqcxXYF+DWGtwsAxs2zj1DZTE6v+ZWglMRV3rptiJf
         DTeL5341OwU6zj6b5usLgbZYFwjxHCx9NT8vGc94i1mSQ+sdOcpK0F4jzBxjW4K1tAP4
         m5zodf09vcQSrsyLYfPGpMV06qX7Eboh7M5IOTTmFsd5LQE/F3cNI1XHicGt+m0K66aw
         253sFpRkLlJmMJJQqnoonSFB7J3mziMarR2l4J8LpMEw2Qds+UTcy/Xm6vQ2iMxIPrgT
         PcnhIzJhkYYZ6iQv4Xc3Ir2OjhDTe62JGVCUhrj7FXvaKxFb/kuMvcLWC+nvTB78ZcXS
         qBbQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.35 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=/kNHSd20J51aAl09kaPL/COhE0Xh+4+bG0fgNgeHslc=;
        b=rIfe+skIuc1Ov71kcgRdDb3i40+/OSsDVw7A7ulvuEnCZ7wbLOyP0Udc6frO/1CKNQ
         +GbS7lUkGLLaXudyMALROjQvp6dgNqhrPqGNm83gPmbAxIKk0WH391UuSHkjBe3aRj80
         C8g/AiHNCdh++Xgqf/voI7lxw+L/JjsNquJslQXb9edwWEiJRyDVjet50QwseZSJ6jPG
         cqWbrMeWpIFa4IJst9/AotlmiHB+lbSRi/JsweOi6knXkwjYo3U8wQqFtQ03m48SGB5O
         WrxEF/M+j8cDy/3Jp62pQIT8txNc64Uq9tEMfU99MVRTDgNJQwEjkKTdmr9TAUjuseUz
         BWbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=/kNHSd20J51aAl09kaPL/COhE0Xh+4+bG0fgNgeHslc=;
        b=YI+CQr/q0Jq7H8lfB6yFUeO0pbHo0tWViEmdrUnwLXnpkk3L9OZgfbOuZOrx30+GZE
         SJU0PjceYd73LVEz7CmBuMaRQPj9wWBTItnScn5G6Vi0T28hr7BDKm5Uvk9012HwkyaW
         +AAxDoR0iNybbtRAVAnWhzB96GOkHj+KP15k494gUNldRwPRtsZfilRyRAIU3Y1UWgJk
         g5nzO4b5Cg7mk7Cqjl4bfGVemv2mjz6Qk045Zi1iKp6T45MPAk0ALr3UMxNeIpdcD+3n
         XehHHlFUEvxQV0DERID8tWaIS7I/4xto59a+v1KEq72TCIULW8VKEKyQJs19i/ApFHB6
         QZUA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532QW/cNl4+d22IlmT27snVLvbhgAlAb43GBmJLQvrjrrHPgzQ0T
	ng2B+ubes3tRPkQCcwLf0E8=
X-Google-Smtp-Source: ABdhPJz3AApCTlDz695pIx+i4B3mVc0SCweD1Us+yB/GSosIUrtdvR8KO3vXboDemorNSbmWsYIjpQ==
X-Received: by 2002:a9d:4f0c:: with SMTP id d12mr20583204otl.32.1606069363762;
        Sun, 22 Nov 2020 10:22:43 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:5f11:: with SMTP id f17ls2865337oti.6.gmail; Sun, 22 Nov
 2020 10:22:43 -0800 (PST)
X-Received: by 2002:a9d:4c92:: with SMTP id m18mr21447564otf.248.1606069363192;
        Sun, 22 Nov 2020 10:22:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1606069363; cv=none;
        d=google.com; s=arc-20160816;
        b=oUUjNEcd46J40XOrN8OfzUOd+qRCiIBt4BywnTIz111rv7IEidiyC+e34H4BG/nZy9
         HRHKwaw+K6zjYJI+9CNHNekgES9ysX3NghekiCni8PHN10uz1xUrpznW1Sbd42b9tMiV
         JMkKgt9njXQQva0Kgkxh/pp0wWd+/J4Zzu72FSX22VCvxxtNGBs5W/LdTGcyl2zYpkfj
         t1+yDMXNrRrzpolIwPQPaNUK6fKvBUQ8XFDtxrOplSNmoaM8+i6dSncNkNZJYs/pRH7O
         iTxHAl6jfHFjYQ3nmNx2SH4aq8M8yMqmzPnjhX7sTqQmZ8ncOeWGOUFZRjNWztcg4Ycv
         y0Sw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=H8smtQ9rpWtRPIOlz0+unJye6815mA/cx5aap1aisxE=;
        b=Uv+969sWhMd5/QNdlpUd4eLlxv/pljL8NaawMC/KjsVxdIxn+6FkFyYYvCqYTOw7qD
         +dhokbzr7jYfPUPRfk1HKbz5K5W7e+vUkCi4QBRZqy0Yj15HPE1A6gP73UCsBSKorM7C
         qMhwy5Yh42SubPlaHXGvAPk29tYpKnTV5lMzTElpCUXo3O2v3jv7jERJHTOq2TaaIdL2
         7UHZ3lBY2ENtrWLhXoI9mE/tCFeEu3fLQDl7vNZ/RJEGEcCvrR9prhdsJ+Id+cFs7uXf
         qnvD0/S82zVilwaSgOHwA4fp+ilMeEfoZPae9rx7qq0VlZwF/01PFxSo8D6leQ/0LZ+0
         hs5w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.35 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0035.hostedemail.com. [216.40.44.35])
        by gmr-mx.google.com with ESMTPS id o26si993583otk.2.2020.11.22.10.22.43
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 22 Nov 2020 10:22:43 -0800 (PST)
Received-SPF: neutral (google.com: 216.40.44.35 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.35;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay05.hostedemail.com (Postfix) with ESMTP id 5998D18029124;
	Sun, 22 Nov 2020 18:22:42 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 50,0,0,,d41d8cd98f00b204,joe@perches.com,,RULES_HIT:41:355:379:599:800:960:967:973:982:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1535:1543:1593:1594:1605:1711:1730:1747:1777:1792:2393:2525:2560:2563:2682:2685:2828:2859:2933:2937:2939:2942:2945:2947:2951:2954:3022:3138:3139:3140:3141:3142:3622:3865:3866:3867:3868:3870:3871:3872:3874:3934:3936:3938:3941:3944:3947:3950:3953:3956:3959:4043:4321:5007:6119:6742:6743:7809:7903:8660:9025:10004:10400:10848:11026:11232:11473:11658:11914:12043:12295:12296:12297:12555:12663:12740:12760:12895:12986:13095:13148:13161:13229:13230:13439:14181:14659:14721:14822:21080:21324:21394:21433:21451:21627:21740:21811:21939:21987:30041:30054:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:2,LUA_SUMMARY:none
X-HE-Tag: base07_180d0122735e
X-Filterd-Recvd-Size: 5347
Received: from XPS-9350.home (unknown [47.151.128.180])
	(Authenticated sender: joe@perches.com)
	by omf13.hostedemail.com (Postfix) with ESMTPA;
	Sun, 22 Nov 2020 18:22:37 +0000 (UTC)
Message-ID: <859bae8ddae3238116824192f6ddf1c91a381913.camel@perches.com>
Subject: Re: [RFC] MAINTAINERS tag for cleanup robot
From: Joe Perches <joe@perches.com>
To: Tom Rix <trix@redhat.com>, clang-built-linux@googlegroups.com
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
Date: Sun, 22 Nov 2020 10:22:36 -0800
In-Reply-To: <6e8c1926-4209-8f10-d0f9-72c875a85a88@redhat.com>
References: <20201121165058.1644182-1-trix@redhat.com>
	 <2105f0c05e9eae8bee8e17dcc5314474b3c0bc73.camel@perches.com>
	 <6e8c1926-4209-8f10-d0f9-72c875a85a88@redhat.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.38.1-1
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.35 is neither permitted nor denied by best guess
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

On Sun, 2020-11-22 at 08:33 -0800, Tom Rix wrote:
> On 11/21/20 9:10 AM, Joe Perches wrote:
> > On Sat, 2020-11-21 at 08:50 -0800, trix@redhat.com wrote:
> > > A difficult part of automating commits is composing the subsystem
> > > preamble in the commit log.  For the ongoing effort of a fixer producing
> > > one or two fixes a release the use of 'treewide:' does not seem appropriate.
> > > 
> > > It would be better if the normal prefix was used.  Unfortunately normal is
> > > not consistent across the tree.
> > > 
> > > So I am looking for comments for adding a new tag to the MAINTAINERS file
> > > 
> > > 	D: Commit subsystem prefix
> > > 
> > > ex/ for FPGA DFL DRIVERS
> > > 
> > > 	D: fpga: dfl:
> > I'm all for it.  Good luck with the effort.  It's not completely trivial.
> > 
> > From a decade ago:
> > 
> > https://lore.kernel.org/lkml/1289919077.28741.50.camel@Joe-Laptop/
> > 
> > (and that thread started with extra semicolon patches too)
> 
> Reading the history, how about this.
> 
> get_maintainer.pl outputs a single prefix, if multiple files have the
> same prefix it works, if they don't its an error.
> 
> Another script 'commit_one_file.sh' does the call to get_mainainter.pl
> to get the prefix and be called by run-clang-tools.py to get the fixer
> specific message.

It's not whether the script used is get_maintainer or any other script,
the question is really if the MAINTAINERS file is the appropriate place
to store per-subsystem patch specific prefixes.

It is.

Then the question should be how are the forms described and what is the
inheritance priority.  My preference would be to have a default of
inherit the parent base and add basename(subsystem dirname).

Commit history seems to have standardized on using colons as the separator
between the commit prefix and the subject.

A good mechanism to explore how various subsystems have uses prefixes in
the past might be something like:

$ git log --no-merges --pretty='%s' -<commit_count> <subsystem_path> | \
  perl -n -e 'print substr($_, 0, rindex($_, ":") + 1) . "\n";' | \
  sort | uniq -c | sort -rn

Using 10000 for commit_count and drivers/scsi for subsystem_path, the
top 40 entries are below:

About 1% don't have a colon, and there is no real consistency even
within individual drivers below scsi.  For instance, qla2xxx:

     1	    814 scsi: qla2xxx:
     2	    691 scsi: lpfc:
     3	    389 scsi: hisi_sas:
     4	    354 scsi: ufs:
     5	    339 scsi:
     6	    291 qla2xxx:
     7	    256 scsi: megaraid_sas:
     8	    249 scsi: mpt3sas:
     9	    200 hpsa:
    10	    190 scsi: aacraid:
    11	    174 lpfc:
    12	    153 scsi: qedf:
    13	    144 scsi: smartpqi:
    14	    139 scsi: cxlflash:
    15	    122 scsi: core:
    16	    110 [SCSI] qla2xxx:
    17	    108 ncr5380:
    18	     98 scsi: hpsa:
    19	     97 
    20	     89 treewide:
    21	     88 mpt3sas:
    22	     86 scsi: libfc:
    23	     85 scsi: qedi:
    24	     84 scsi: be2iscsi:
    25	     81 [SCSI] qla4xxx:
    26	     81 hisi_sas:
    27	     81 block:
    28	     75 megaraid_sas:
    29	     71 scsi: sd:
    30	     69 [SCSI] hpsa:
    31	     68 cxlflash:
    32	     65 scsi: libsas:
    33	     65 scsi: fnic:
    34	     61 scsi: scsi_debug:
    35	     60 scsi: arcmsr:
    36	     57 be2iscsi:
    37	     53 atp870u:
    38	     51 scsi: bfa:
    39	     50 scsi: storvsc:
    40	     48 sd:


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/859bae8ddae3238116824192f6ddf1c91a381913.camel%40perches.com.
