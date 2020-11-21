Return-Path: <clang-built-linux+bncBDY3NC743AGBB54T4X6QKGQEEROC3KI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qv1-xf3d.google.com (mail-qv1-xf3d.google.com [IPv6:2607:f8b0:4864:20::f3d])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B7342BC0CA
	for <lists+clang-built-linux@lfdr.de>; Sat, 21 Nov 2020 18:10:17 +0100 (CET)
Received: by mail-qv1-xf3d.google.com with SMTP id r5sf6418614qvr.15
        for <lists+clang-built-linux@lfdr.de>; Sat, 21 Nov 2020 09:10:17 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1605978616; cv=pass;
        d=google.com; s=arc-20160816;
        b=D+6gPD4rVgrtcOxdIJx64X/Xfwpyu7iASOmWGSjRbBQ9LHsM/MgUm6zhFfCOi/iRNS
         Xwt0FU5lhkQ+gFlivwjC7XhdKZyXwT8CaLzsePFchxlUgTtqGi2Xumf5eda59igkOBuC
         K9CtVBO6btkwy0Cz2bkRbOXsbcbCIcZ0hWtTl8Ap043+MTXPi5vmfTdajdzTHfvOahDq
         YJ9yeypxDHI4psvSjUXxZ+G/ODiy0NWMGbTFxrdat95857dQM34ySWn+1QpWnd/RK1CS
         DVV9LSDITQf454tMU2ryCFEtmBlgcmF4HX+f4pBuvIk06FW1/4iapzRmU9vYrIwbZcqu
         gPnQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:content-transfer-encoding
         :mime-version:user-agent:references:in-reply-to:date:cc:to:from
         :subject:message-id:sender:dkim-signature;
        bh=K+0Z775qydDsTDPSmNKu+VOUZHDUOcj1NgF0nW1MOeY=;
        b=EYj29i5W7EbaoEg2P6dSn3QRVkKE8Yc/J6GUsRJs/q9N05GsffZIiiJAdTqRsQbxTJ
         G0LRlPxKBSKcTv2NcxtuTaG3+DkmWNRfgAjGF/AXJRlOuYgF4I9ELwW1U6ggz+UBFonu
         4u//KRGHvAylChtpYHx7x5I/qih1xiUJmlOOjrWQt/CYbnx0r5Y0RKkm47bfgil2yupt
         73WZQbZI8BAzIaYLXSCiMkgJ/8TCJ18eu6g6tXmzArQMCAWJavwsp2ou8cBbZahI0k+4
         OzkXHjw3PotnisJkTnGlW+H13eCO5TuMTvoLjUi5Lj4eBb9H5T4JYW/fU1Ucngdcu09i
         GREA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.100 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=K+0Z775qydDsTDPSmNKu+VOUZHDUOcj1NgF0nW1MOeY=;
        b=QLieIaRV5ykh0nezSwXu7c/trNHX2jVMe8j8VYVvPvH618iAlgjOtp5wx4KpgsSYCN
         ncya5EqpxB/ip3bTh8gVnxqiB+R++oFIvQ/xGdYCTgL47En5DY3ONPTFBzbYZb1E4ixu
         MpFloA//+jAmD2GVyxHiC4pif0oavqQVW2TdBuzvvMM7oU5KWRFdvD/7FJ+oVWTcTqaQ
         xy/eowQgh3k94mgKtF7LlCAeUUxzexGV/PfOqzuJ/xkRYWkGjtY3J1k+dNWIdzGT9Oqh
         jK+DKeGVzNa2wicKYQ98u6TIxssV/VVAtLSt/45uvj0+NOlmnzpzhS6NeGabbMY+uDB+
         /meg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version
         :content-transfer-encoding:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=K+0Z775qydDsTDPSmNKu+VOUZHDUOcj1NgF0nW1MOeY=;
        b=QHdIqHdGMCkY1In0TkdzMKt5RZ/ioN8ljVQUxoiLssZgcxDPQWl8SWae9AX7IlnK1C
         aoEiqkWlVt5ie+7eeEwe3Lc7ifDjJg7maiLzfWHfzmwUyYMyIZseZNjVn46T8+YEFhL8
         qwWVKh/T8V09g6jo7RNmgV3YjTTrk+Oat6qo0c1jgm2yH21vqgim7JdVSKReqAwSsiJi
         4SZjAj2ZcJmR5o6foolPXb7dPR+q9J8omMzcMF5EbHCiPirluHKsiWMjQgm0CggCEpQ1
         ugNmmG4oNjFg0X+IQlrBB2Sb6FH0Hlp6rSVkFTh42kVF/+KKynxVQwFz92FGU5rEHTR1
         tLuQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531HFt9HjZ6dYN/pbJfr1tkIFN7e8vir3BpZ50A8Vb3NSKrZ2mIL
	wbVIg6xp9vqMC+23s8gABBw=
X-Google-Smtp-Source: ABdhPJzvTKstFqtOAVcXfEY4zNjrZ1NqOvpqaQgZmoM1sKnEdmFE2HViJc3XHjY1kKt/NUSGTp01Qg==
X-Received: by 2002:a37:951:: with SMTP id 78mr22060958qkj.47.1605978616018;
        Sat, 21 Nov 2020 09:10:16 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a0c:f74d:: with SMTP id e13ls2257067qvo.3.gmail; Sat, 21 Nov
 2020 09:10:15 -0800 (PST)
X-Received: by 2002:ad4:53c8:: with SMTP id k8mr21909047qvv.40.1605978615640;
        Sat, 21 Nov 2020 09:10:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1605978615; cv=none;
        d=google.com; s=arc-20160816;
        b=ga+AOPLRx1lcyaSpfSCYdRtsS7ZaYHkQtoj2M8UF4hTeTyl4RWvcOZCyiXanvQe7xw
         A/6Ae/qOqPylxTsu4NxsDqWNN3NJvYz8pdZby8pbO4yxV8+dU/R1lA+WLocJREz5yUVc
         LrmzBucHAnPsk3ungRxX3C0TrAYMA4DMlLeYdUt8YbK6M0Kle8LhqRKgU38UZir6CI/e
         UCUyb2LiI6IgZnzJdSL7fjd5KP3fALNBfooY9BwLpFZZPW09YAoDPgoecLJFob1wQymW
         /O7tTDg0VbPcLmqjwSvxYXgp4hYWfIYoKk9mzMx4c9Is3BPmAkNrTvKYMYnqkG5qbF23
         EExg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=j1pFkX66fFsn8IIQc2vdz+yDmIVMLcw8/Oh/TOVKpOw=;
        b=JgzMbNloa3yPkHaL7ux4fsugLeh147YiRYGHvQqDr3rkhzeVvXr82E0sAU/RimxZiC
         EGJ0gSD53qg3B7ShZNoky8PwW2tqmJXHTr0YacLoux820mOKELPvfQsUNZTWO40UDD1J
         7QkTdSkq/7MRxDueue2l4T/8T7ZfvwsJczPDa7Xcjozq220WzJRgYvEd0qY7/i0LVm32
         7hl3I9p73LRodn9SXXiZgaXyUIBmCRfoGao78SD51LW/Kc8kAJZzhMpruMQjapMk2v5A
         RxtViGA9BincbplCair27BJGIUOUrTpKpeH/81uoM55vh2OKII4dBpyXMDL2D4a3h4pw
         +3MA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.100 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0100.hostedemail.com. [216.40.44.100])
        by gmr-mx.google.com with ESMTPS id n21si425615qkh.0.2020.11.21.09.10.15
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 21 Nov 2020 09:10:15 -0800 (PST)
Received-SPF: neutral (google.com: 216.40.44.100 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.100;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay03.hostedemail.com (Postfix) with ESMTP id C09E2837F24A;
	Sat, 21 Nov 2020 17:10:14 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 50,0,0,,d41d8cd98f00b204,joe@perches.com,,RULES_HIT:41:355:379:599:800:967:973:982:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1542:1593:1594:1711:1730:1747:1777:1792:1801:2198:2199:2393:2525:2560:2563:2682:2685:2828:2859:2933:2937:2939:2942:2945:2947:2951:2954:3022:3138:3139:3140:3141:3142:3354:3622:3865:3866:3867:3868:3870:3871:3872:3874:3934:3936:3938:3941:3944:3947:3950:3953:3956:3959:4043:4321:4605:5007:6117:6119:6742:6743:7809:7875:8660:9010:9025:10004:10400:10848:11232:11473:11658:11783:11914:12043:12295:12297:12555:12663:12679:12740:12895:12986:13148:13230:13439:13845:13894:14181:14659:14721:21080:21324:21451:21627:21811:21939:21987:30012:30054:30070:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:2,LUA_SUMMARY:none
X-HE-Tag: crook72_110ffeb27355
X-Filterd-Recvd-Size: 4090
Received: from XPS-9350.home (unknown [47.151.128.180])
	(Authenticated sender: joe@perches.com)
	by omf05.hostedemail.com (Postfix) with ESMTPA;
	Sat, 21 Nov 2020 17:10:09 +0000 (UTC)
Message-ID: <2105f0c05e9eae8bee8e17dcc5314474b3c0bc73.camel@perches.com>
Subject: Re: [RFC] MAINTAINERS tag for cleanup robot
From: Joe Perches <joe@perches.com>
To: trix@redhat.com, clang-built-linux@googlegroups.com
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
Date: Sat, 21 Nov 2020 09:10:08 -0800
In-Reply-To: <20201121165058.1644182-1-trix@redhat.com>
References: <20201121165058.1644182-1-trix@redhat.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.38.1-1
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.100 is neither permitted nor denied by best guess
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

On Sat, 2020-11-21 at 08:50 -0800, trix@redhat.com wrote:
> A difficult part of automating commits is composing the subsystem
> preamble in the commit log.  For the ongoing effort of a fixer producing
> one or two fixes a release the use of 'treewide:' does not seem appropria=
te.
>=20
> It would be better if the normal prefix was used.  Unfortunately normal i=
s
> not consistent across the tree.
>=20
> So I am looking for comments for adding a new tag to the MAINTAINERS file
>=20
> 	D: Commit subsystem prefix
>=20
> ex/ for FPGA DFL DRIVERS
>=20
> 	D: fpga: dfl:

I'm all for it.  Good luck with the effort.  It's not completely trivial.

From a decade ago:

https://lore.kernel.org/lkml/1289919077.28741.50.camel@Joe-Laptop/

(and that thread started with extra semicolon patches too)

> Continuing with cleaning up clang's -Wextra-semi-stmt

> diff --git a/Makefile b/Makefile
[]
> @@ -1567,20 +1567,21 @@ help:
> =C2=A0	 echo  ''
> =C2=A0	@echo  'Static analysers:'
> =C2=A0	@echo  '  checkstack      - Generate a list of stack hogs'
> =C2=A0	@echo  '  versioncheck    - Sanity check on version.h usage'
> =C2=A0	@echo  '  includecheck    - Check for duplicate included header fi=
les'
> =C2=A0	@echo  '  export_report   - List the usages of all exported symbol=
s'
> =C2=A0	@echo  '  headerdep       - Detect inclusion cycles in headers'
> =C2=A0	@echo  '  coccicheck      - Check with Coccinelle'
> =C2=A0	@echo  '  clang-analyzer  - Check with clang static analyzer'
> =C2=A0	@echo  '  clang-tidy      - Check with clang-tidy'
> +	@echo  '  clang-tidy-fix  - Check and fix with clang-tidy'

A pity the ordering of the code below isn't the same as the above.

> -PHONY +=3D clang-tidy clang-analyzer
> +PHONY +=3D clang-tidy-fix clang-tidy clang-analyzer
[]
> -clang-tidy clang-analyzer: $(extmod-prefix)compile_commands.json
> +clang-tidy-fix clang-tidy clang-analyzer: $(extmod-prefix)compile_comman=
ds.json
> =C2=A0	$(call cmd,clang_tools)
> =C2=A0else
> -clang-tidy clang-analyzer:
> +clang-tidy-fix clang-tidy clang-analyzer:

[]

> diff --git a/scripts/clang-tools/run-clang-tools.py b/scripts/clang-tools=
/run-clang-tools.py
[]
> @@ -22,43 +22,57 @@ def parse_arguments():
[]
> =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0parser.add_argument("type",
> -                        choices=3D["clang-tidy", "clang-analyzer"],
> +                        choices=3D["clang-tidy-fix", "clang-tidy", "clan=
g-analyzer"],

etc...

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/2105f0c05e9eae8bee8e17dcc5314474b3c0bc73.camel%40perches.=
com.
