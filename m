Return-Path: <clang-built-linux+bncBDY3NC743AGBB5F2QX5QKGQEC6MKBJI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x539.google.com (mail-pg1-x539.google.com [IPv6:2607:f8b0:4864:20::539])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E6D126B7FE
	for <lists+clang-built-linux@lfdr.de>; Wed, 16 Sep 2020 02:33:58 +0200 (CEST)
Received: by mail-pg1-x539.google.com with SMTP id l8sf2800251pgt.23
        for <lists+clang-built-linux@lfdr.de>; Tue, 15 Sep 2020 17:33:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1600216437; cv=pass;
        d=google.com; s=arc-20160816;
        b=jJ0UM5OQL/XtmJyvVCKwkoSgbEWmXbjIO7WT78zDKPJXipP2pYWOzmJK7sjNPaqGUW
         F8sasj3OhWYV0rM2dgV3a+502JkBi1xzB/k5tbYqarrVmWYRd0rQRWOOOhuSh7oAqGd6
         4hoezY90Yj6NjKJwmRUxMAzgTv8bVfgWA7ZdRM1wGTYoW4Nyi9eeUp20ruCro2wdR1If
         ghvkkr5cw00E887jCkkaqTBCK9alUf1byFRN3ilRPmy99YrZYqs2sBqeBcncbc8PDZ7Q
         4KlMhOEaZPSwcGItcgpHvD4gZpOZv6LXm9bqa9N0jipu+aDgq7qREJw8uK6T47s/yFhe
         8HLA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=qPB52402rhwk0jOn2e3m+y6tI+SC3b/MYXWqJEbMTGU=;
        b=jDBhq4rKlFr52CLHGgdMx9MldTuhLIS+Ognk0PWyElG95V+tWFdkaPGiEs0iuW35Wa
         dwF6DlnGPYargu4iRwhACHSRyzZP+1CkZQERxHmXO3ldHwJ147T6zoju0SitQCXX48R9
         ib7Js6Vr3GUT5Nqvm68NB/77M19rMofAkUEov7f4erlk7/tNOQN0hubFVU64XySYkHBF
         n9hBjGUMUOgtq7iQCdc59supJAsYHeSWBLLKSzs0IsTuesu1+jPb5wq1VqagpscJl99J
         2PcyIHOD26gGk/j9DgJ5KhUWVnuAiWqy2UN7a4S9/l0CrpJPIrQTdpw/Og03o2n4PPfC
         2aaQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.47 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=qPB52402rhwk0jOn2e3m+y6tI+SC3b/MYXWqJEbMTGU=;
        b=sdIGYbjnM+513Qhzf6CNZGIWDHGIdYHu2tShyCSGi5KcXKXJ3UWfQ4qL+QWJ6v00lf
         vuo3IYkDaiJCdvld99ug5TqI9ruR+1CS7y8ETVzl34hZA6rvtKeNIU40q50XPH+4hN3n
         xkm3pDHR/kepXpcJQIKJIaciKXRJLoTCmg6ArlbcuFByRGdp8mDS4nsjLeBbcWDvcOsX
         3UiCoiXgrab9WMi2JrMker8Jl07NRFkFbo/uAZvGwXNbSkxI4j4RFs3in1dSFPVLmvNB
         e6G5T2bMg5WE46N2TzSjoVO6WRp7VUlT4eFp7yyIVkpiJyfo8HblJL2v3Jd991TDLn+v
         Uz4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=qPB52402rhwk0jOn2e3m+y6tI+SC3b/MYXWqJEbMTGU=;
        b=Fq5gGLtoBDElrrcnLhYzglxZzbOAqCAguWxrpjGeVzHztLOQRb5q1qMNciwrOyKSiU
         vEErzgWotvj7tGhG0Ag/sVLYX0ZjsN4kNpa+z51KPldeofjjKHL/ocWAzA0TqQswe4cK
         KjepxDMyA/w0DBG2RyeuSAiCyy3ECcomX2/B98OLpdwyZb5a4V0jftxW1T69glE8iJls
         zlXMK0iPkmNbnHn167lxUlk5jU1D1RkTXJZnQVC6dJg/ZTJXPbnhRHrmVo5Z/SmqQ5HW
         jZFAS8CES6ww431SNt10ZczIR3sJ97zV+jD+t9vK4Y/QHGCn9FttpI1wUHTu8ohONpuc
         +3Kg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531B6NclY92vJlVLJIcP9HY5uPChX/l2xeqNtBgNiPgcnkRIQ4j9
	mXuwcBiHg+moOJ/edR/vxqA=
X-Google-Smtp-Source: ABdhPJyxPZCOafqwFXmaz/XlXFZoWbBcOKLSEiDbAnSOQHD32XVJmJxdhDcoylVmWRkrtwSaQ4iaIQ==
X-Received: by 2002:a63:be02:: with SMTP id l2mr16735790pgf.128.1600216436914;
        Tue, 15 Sep 2020 17:33:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6a00:2a2:: with SMTP id q2ls58037pfs.5.gmail; Tue, 15
 Sep 2020 17:33:56 -0700 (PDT)
X-Received: by 2002:aa7:9986:0:b029:142:2501:35d0 with SMTP id k6-20020aa799860000b0290142250135d0mr4176281pfh.48.1600216436248;
        Tue, 15 Sep 2020 17:33:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1600216436; cv=none;
        d=google.com; s=arc-20160816;
        b=ZflqlmEa6XLXD8jgXxR/Q0+LMb6K8d9AuJQJVaz62e6Bh4wak2svk2OT6Q8XXW2VJu
         Pizx/lwyjpMO7BSyizIu5MC3AB6U4wBWWmNqzbaTf1YfSeaR92eV2qsuFJazPP6y3Axn
         r21CnK/vTNscWV1h19USCjz3dpOCERnh2Ghe0b8B1l/t39whLwQ8XKoMVMTAwYLCHGm3
         4kChk9lW8N+eEPjeMSx8N0IgecmEP3OBrdfGnJs05NvEadvszqdhcaHorzBYF7bWkUnr
         x1XAXQPuOv22SFRxJrhIXitfbFfUOYUQiSZhOGj2FUzN7HuPlmsL2iFwdaTUHB+2wIv3
         yO7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=jzCehSbztm5vITO851HLoiitS0Z2oJK0Bl41D6XFdd8=;
        b=s+jip9YOg5yoea37DKaEbxqO9qOB1o16E6xpOYXI+cATpiZGelXKkHKmb3Vl7rFPXZ
         ufnlsFnEMJUmI8XtVfROUOE68qNL7YReD+oequkAGddxduBpH82XEkFTbHkZRDCf8Apc
         Ht9DLFIWua9+oztbjVPyQvLW7pNj6ayHDpdu2MOwg1zdUJjks4xxGz4OUtmreI32lJ3Z
         keP26YQ7tHlvnY61NLY+o7FtSVG/ksms7vuHN6TD4wQuSZnip7UBfA/TML6sw9zrqjGX
         zjwNCgYwZqIbsfLFXjVLV621c/s/eXrlG6oQVHt1GYjlm50Zp/Zsu3xwMNXIis6ekZTv
         O+Ig==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.47 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0047.hostedemail.com. [216.40.44.47])
        by gmr-mx.google.com with ESMTPS id bk9si76128pjb.1.2020.09.15.17.33.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Sep 2020 17:33:56 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.47 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.47;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay03.hostedemail.com (Postfix) with ESMTP id 3DD4D837F24C;
	Wed, 16 Sep 2020 00:33:55 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 30,2,0,,d41d8cd98f00b204,joe@perches.com,,RULES_HIT:41:355:379:599:960:967:968:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2198:2199:2393:2525:2560:2563:2682:2685:2693:2828:2859:2898:2902:2933:2937:2939:2942:2945:2947:2951:2954:3022:3138:3139:3140:3141:3142:3354:3622:3865:3866:3867:3868:3870:3871:3872:3873:3874:3934:3936:3938:3941:3944:3947:3950:3953:3956:3959:4250:4321:5007:6119:6691:9025:10010:10400:10848:11026:11232:11658:11914:12043:12048:12050:12295:12296:12297:12438:12555:12663:12679:12698:12737:12740:12760:12895:13069:13311:13357:13439:14181:14659:14721:14777:21080:21324:21433:21627:21740:21939:30012:30054:30070:30075:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:1:0,LFtime:1,LUA_SUMMARY:none
X-HE-Tag: corn68_1c0caec27115
X-Filterd-Recvd-Size: 3131
Received: from XPS-9350.home (unknown [47.151.133.149])
	(Authenticated sender: joe@perches.com)
	by omf09.hostedemail.com (Postfix) with ESMTPA;
	Wed, 16 Sep 2020 00:33:53 +0000 (UTC)
Message-ID: <2786f88508b99c8e1ebee62ea955c4026368c878.camel@perches.com>
Subject: Re: [PATCH] nfs: remove incorrect fallthrough label
From: Joe Perches <joe@perches.com>
To: "Gustavo A. R. Silva" <gustavo@embeddedor.com>, Nick Desaulniers
 <ndesaulniers@google.com>, Trond Myklebust
 <trond.myklebust@hammerspace.com>,  Anna Schumaker
 <anna.schumaker@netapp.com>
Cc: Nathan Chancellor <natechancellor@gmail.com>, Miaohe Lin
	 <linmiaohe@huawei.com>, Hongxiang Lou <louhongxiang@huawei.com>, 
	linux-nfs@vger.kernel.org, linux-kernel@vger.kernel.org, 
	clang-built-linux@googlegroups.com
Date: Tue, 15 Sep 2020 17:33:52 -0700
In-Reply-To: <de27c65b-ae7d-a2ba-3ab8-717c10f297c3@embeddedor.com>
References: <20200915225751.274531-1-ndesaulniers@google.com>
	 <9441ed0f247d0cac6e85f3847e1b4c32a199dd8f.camel@perches.com>
	 <55f1ff08-fc3c-62ed-429d-c9ae285a3a49@embeddedor.com>
	 <de27c65b-ae7d-a2ba-3ab8-717c10f297c3@embeddedor.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.36.4-0ubuntu1
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.47 is neither permitted nor denied by best guess
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

On Tue, 2020-09-15 at 19:01 -0500, Gustavo A. R. Silva wrote:
> 
> On 9/15/20 18:51, Gustavo A. R. Silva wrote:
> > 
> > On 9/15/20 18:29, Joe Perches wrote:
> > > On Tue, 2020-09-15 at 15:57 -0700, Nick Desaulniers wrote:
> > > > There is no case after the default from which to fallthrough to. Clang
> > > > will error in this case (unhelpfully without context, see link below)
> > > > and GCC will with -Wswitch-unreachable.
> > > > 
> > > > The previous commit should have just removed the comment.
> > > []
> > > > diff --git a/fs/nfs/super.c b/fs/nfs/super.c
> > > []
> > > > @@ -889,7 +889,6 @@ static struct nfs_server *nfs_try_mount_request(struct fs_context *fc)
> > > >  		default:
> > > >  			if (rpcauth_get_gssinfo(flavor, &info) != 0)
> > > >  				continue;
> > > > -			fallthrough;
> > > 
> > > My preference would be to convert the fallthrough
> > > to a break here so if someone ever adds another
> > > label after default: for any reason, the code would
> > > still work as expected.
> > 
> > I agree with Joe.
> 
> Actually, this is part of the work I plan to do to enable -Wimplicit-fallthrough
> for Clang: audit every place where we could use a break instead of a fallthrough.
> 
> I'm on vacation this week. So, I'll get back to this next week.

Nice, thanks Gustavo.

As part of that work, perhaps you could also find all the

	switch (<foo>) {
	[cases...]
		[code...];
		break;

	default:
		[code...]
		(no break)
	}

uawa where the last label/default block does _not_ have a break
statement and add one too.

Also see:  https://gcc.gnu.org/bugzilla/show_bug.cgi?id=91432

gcc does _not_ warn on

	switch (<foo>) {
	case BAR:
		[code];
		(no fallthrough)

	case BAZ:
		break;
	}

It might be good to add the appropriate fallthrough
for those case blocks too.


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/2786f88508b99c8e1ebee62ea955c4026368c878.camel%40perches.com.
