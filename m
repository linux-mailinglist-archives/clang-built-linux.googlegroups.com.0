Return-Path: <clang-built-linux+bncBDY3NC743AGBB4FCX3VAKGQELQOI5WI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vk1-xa40.google.com (mail-vk1-xa40.google.com [IPv6:2607:f8b0:4864:20::a40])
	by mail.lfdr.de (Postfix) with ESMTPS id 86BAC88F47
	for <lists+clang-built-linux@lfdr.de>; Sun, 11 Aug 2019 05:54:25 +0200 (CEST)
Received: by mail-vk1-xa40.google.com with SMTP id o75sf41210749vke.3
        for <lists+clang-built-linux@lfdr.de>; Sat, 10 Aug 2019 20:54:25 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565495664; cv=pass;
        d=google.com; s=arc-20160816;
        b=YQCz9zMI6F0EAqSo42SYwfdrkaUSVDhdAg8J093UTpAgkoHke2JkzWmWeQF/fO7zeH
         q1SFNAUTydiCYPE8qelFSoxR2Vcukb8kyXgQCdjIm4cEGPKUfILaXC+iPWwfg3qw+mN5
         MKLb3pDu2eRBFNJzr5SMdBMudlD3j2cdhqLHSuiEcbtxOC2hphjX1g4t2GBESfm9NvUQ
         zI+uH1l+fyI87ItH/bG8Wl0yzyNAmeUflJKwptJV36UpHoFTAtZtgOOhe5xWovHaa6fS
         764L7QoGjw7YTKfbvm5oX9T/IPbc8bxjtTDqkcMok5fakhmz5+ojhzP4XTRF005gSE0t
         UqfA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=iyoGPgTK1Xes5iyuIrOatbUQdtMbU6h/zf7DZXcgtcY=;
        b=TiSJAICrMqry8MUBmqyzf4ab/OoGYZaDZeWamCdG+WvHSjBtjoS7/NT3jQbdF+1xhI
         sbWdiibrpS6NfRL7NhziI55tbjT1m4s9fkZnScFn9uPbOuB/YEBRD1DcF+lZ0UqSx39L
         freTFTAzB3PfmdOcOTRLDXozsrR7GdPSQU1zePYv88iwR4n78P/jisljoR4ElkFS2B75
         xSAAEEfD6+TeFXL2uvzRstcwahCu6XSgVmlyoo4Rr/WKd6eyQwYSwkpwMbZKV1kQQzif
         VzmdswAaxIFaTYdz5C62p53/TJ/LVE9uqnCYfBQVH0wM3Dlgy2mAoSgEJAYT6kgv2WGd
         UINA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.47 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=iyoGPgTK1Xes5iyuIrOatbUQdtMbU6h/zf7DZXcgtcY=;
        b=lrubzGP1BFKvpHqwDdroH10fUXsINCAk18EUBMy0NBwxQWh2oHaXR91RkWUgHpdKu2
         CryV3N/ZXNkdqu9UfAmVoNQHjcBrkKN353+5th/Pdk5G9q5eJ/ezgNk9U+unyffT2woz
         92wyfnVly3RqblmC/R5Ds2uT+5k1+LIUES7zJSTsoDJXmK+M+Uk/OG3s30wGAZNgw47B
         AjgvrQ42P4yil6r9mL5cOnUr9rHsP/L4g6lqQTvPc6mJVLlxQJH55M8FzPwxBRnSh+aQ
         jzLL1NkdiVaHB7jHnIA37B3vKFBHFAGsYtBSWw2sz1LdqFzj/vHb2V634fPQo193pOab
         fcIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=iyoGPgTK1Xes5iyuIrOatbUQdtMbU6h/zf7DZXcgtcY=;
        b=k85inEj4mwrWT6Fvt5iUzuSuMA/4cqG2qe1rcNlZ4Mr2+ojBr+bShcqTPxRFWtpKsJ
         CzCrJQkBlVzluxZ2QEwa4uQLTR0s5vnVSkd0B9idar5vBZhnT4dlmi/3EM3C3c0owHhd
         qHUn47p2RESN08++80Kj3XcM223EDuW8HpsBNoWnVTvzLm46qUIi2zr/1pioUDZvOzeb
         M76l+VP9t4m3o5/nVrc2g/NJRQqgANKz1ivih5ZPf9cjNHyN09RV2uL6Nyk620Dq+C8W
         PE5POk0+MPMEptAvDAjnQ6B8QhO7PhmwfL/hg4vDFo+dM9/UOEBccIoxS8ZTAJY9NMGQ
         EW3A==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVH+eTBWR79m9S9mKi6Wcgf94mjZxEpyhVUkAdtqb5hkW4PK4Xn
	L1uc1lud+XsdDzdrYn4559Q=
X-Google-Smtp-Source: APXvYqyro155G8rlv4j6CP79A4zqNAnVzzNoJeVtE2H6n5n148kvBtEZvTPrNoTv77XyujCHiWX8qQ==
X-Received: by 2002:a67:3141:: with SMTP id x62mr178715vsx.15.1565495664388;
        Sat, 10 Aug 2019 20:54:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:7282:: with SMTP id w2ls7269389uao.9.gmail; Sat, 10 Aug
 2019 20:54:24 -0700 (PDT)
X-Received: by 2002:ab0:7782:: with SMTP id x2mr14651990uar.140.1565495664053;
        Sat, 10 Aug 2019 20:54:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565495664; cv=none;
        d=google.com; s=arc-20160816;
        b=IcoFJxbVpf+pySSEA2VHVF46ikYYxzdVwqh05VGa21hss4dq9NV54oceRTiaphqRAJ
         dvRpmImtkMsv4gPAf4rxEPM4Pf+eyV59+dHJyfeQMy6t48Vp2fTCssUOw7bUuoPbpKPM
         gsGw5wAFsJf3qLij3iVUuNLkKoLJwIlvHxJetlX6E3/l6CuczzzzTCCaxUWcKY3gUWG+
         c/YMIEdlm2kr5WDswm0zKd3N87NcB4F9l9Y6k1g9frVa4VY3GiM9ihAkciHu29oAJQ2h
         +fcP9PJgnvATrdRigUF9+DFQdcpDtAKlKhn4yprZwG74Y+T/wW30wi+RorBo7KAiSQpY
         i5MA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=+UWl7zQzVFNmgOgLnkUavYrDjSPSiT/IideAb7E1PpQ=;
        b=VOQDABjG8DUWXW4kcRHmnQ+q+6uvEtb6ZB373N4lJpxyWkY5wIJFebxKMmI1HIIhrK
         R0nF+/CemcX2ZT3usmd7fiaAVPZPTm0zDgFGel3Srqq6+JwNMHsOMFngg7v/iwDDnHFb
         ZdITfvhWBdRR8sl7I8wyOZh2PmkNL34Bttiv1Yi20Vq5lEnMFdITEYvJV+ib5JVsgqUU
         gMOC3kwTuAlZqsVZXTQEN5rcSuX4V9b23Oogp+2R1B7dT8HXYfDETGIKbuUqSQY0yIDY
         7NkDQs6ZoT+qyUGo9Lx/sCtf8hMabFnVwHsoSUMdPa1q1x2OqRK4M38j9sX9Au57U2lQ
         tl1Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.47 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0047.hostedemail.com. [216.40.44.47])
        by gmr-mx.google.com with ESMTPS id i9si7006993vsj.0.2019.08.10.20.54.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 10 Aug 2019 20:54:24 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.47 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.47;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay08.hostedemail.com (Postfix) with ESMTP id 75143182CED2A;
	Sun, 11 Aug 2019 03:54:23 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,:::::::::,RULES_HIT:41:355:379:599:967:973:982:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2198:2199:2393:2525:2553:2559:2564:2682:2685:2693:2828:2859:2933:2937:2939:2942:2945:2947:2951:2954:3022:3138:3139:3140:3141:3142:3353:3622:3865:3866:3867:3868:3871:3872:3873:3874:3934:3936:3938:3941:3944:3947:3950:3953:3956:3959:4250:4321:5007:7903:9025:10004:10400:10848:11232:11658:11914:12043:12114:12297:12555:12663:12740:12760:12895:13019:13069:13255:13311:13357:13439:14181:14659:14721:21080:21222:21366:21433:21451:21627:21740:30054:30090:30091,0,RBL:23.242.196.136:@perches.com:.lbl8.mailshell.net-62.8.0.180 64.201.201.201,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:fn,MSBL:0,DNSBL:neutral,Custom_rules:0:0:0,LFtime:26,LUA_SUMMARY:none
X-HE-Tag: eye33_6065040b72711
X-Filterd-Recvd-Size: 2953
Received: from XPS-9350 (cpe-23-242-196-136.socal.res.rr.com [23.242.196.136])
	(Authenticated sender: joe@perches.com)
	by omf18.hostedemail.com (Postfix) with ESMTPA;
	Sun, 11 Aug 2019 03:54:22 +0000 (UTC)
Message-ID: <0c96ff086dc1b92034a8ca19d341f2db16cc802c.camel@perches.com>
Subject: Re: [PATCH] Makefile: Convert -Wimplicit-fallthrough=3 to just
 -Wimplicit-fallthrough for clang
From: Joe Perches <joe@perches.com>
To: Nathan Chancellor <natechancellor@gmail.com>
Cc: Linus Torvalds <torvalds@linux-foundation.org>, "Gustavo A. R. Silva"
	 <gustavo@embeddedor.com>, LKML <linux-kernel@vger.kernel.org>, 
	clang-built-linux@googlegroups.com
Date: Sat, 10 Aug 2019 20:54:21 -0700
In-Reply-To: <20190811031715.GA22334@archlinux-threadripper>
References: <c0005a09c89c20093ac699c97e7420331ec46b01.camel@perches.com>
	 <9c7a79b4d21aea52464d00c8fa4e4b92638560b6.camel@perches.com>
	 <CAHk-=wiL7jqYNfYrNikgBw3byY+Zn37-8D8yR=WUu0x=_2BpZA@mail.gmail.com>
	 <6a5f470c1375289908c37632572c4aa60d6486fa.camel@perches.com>
	 <20190811020442.GA22736@archlinux-threadripper>
	 <871efd6113ee2f6491410409511b871b7637f9e3.camel@perches.com>
	 <20190811031715.GA22334@archlinux-threadripper>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.30.5-0ubuntu0.18.10.1
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

On Sat, 2019-08-10 at 20:17 -0700, Nathan Chancellor wrote:
> On Sat, Aug 10, 2019 at 08:06:05PM -0700, Joe Perches wrote:
> > On Sat, 2019-08-10 at 19:04 -0700, Nathan Chancellor wrote:
> > > On a tangential note, how are you planning on doing the fallthrough
> > > comment to attribute conversion? The reason I ask is clang does not
> > > support the comment annotations, meaning that when Nathan Huckleberry's
> > > patch is applied to clang (which has been accepted [1]), we are going
> > > to get slammed by the warnings. I just ran an x86 defconfig build at
> > > 296d05cb0d3c with his patch applied and I see 27673 instances of this
> > > warning... (mostly coming from some header files so nothing crazy but it
> > > will be super noisy).
> > > 
> > > If you have something to share like a script or patch, I'd be happy to
> > > test it locally.
> > > 
> > > [1]: https://reviews.llvm.org/D64838
> > 
> > Something like this patch:
> > 
> > https://lore.kernel.org/patchwork/patch/1108577/
> > 
> > Maybe use:
> > 
> > #define fallthrough [[fallthrough]]
> > 
> > if the compiler supports that notation
> > 
> 
> That patch as it stands will work with D64838, as it is adding support
> for the GNU fallthrough attribute.
> 
> However, I assume that all of the /* fall through */ comments will need
> to be converted to the attribute macro, was that going to be done with
> Coccinelle or something else?

Coccinelle doesn't support transforming comments
so I am using a perl script for those transforms
that I will post when I'm happy enough with it.



-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/0c96ff086dc1b92034a8ca19d341f2db16cc802c.camel%40perches.com.
