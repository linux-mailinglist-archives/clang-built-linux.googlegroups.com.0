Return-Path: <clang-built-linux+bncBDY3NC743AGBBZ7EXT6AKGQEDGD3JEI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-vs1-xe38.google.com (mail-vs1-xe38.google.com [IPv6:2607:f8b0:4864:20::e38])
	by mail.lfdr.de (Postfix) with ESMTPS id A3A23294288
	for <lists+clang-built-linux@lfdr.de>; Tue, 20 Oct 2020 20:54:32 +0200 (CEST)
Received: by mail-vs1-xe38.google.com with SMTP id a143sf1006362vsd.1
        for <lists+clang-built-linux@lfdr.de>; Tue, 20 Oct 2020 11:54:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603220071; cv=pass;
        d=google.com; s=arc-20160816;
        b=uq3S5zmwkzgEX66/a5x9pLsPllkOjegdFMT79pLT9e0zBm0eckRZFySSbOzD8ZS643
         n0bHpEF/ryf5ZuFMZQBymbAXWNmdaPzo6+1aBztKdVKRUz5FrtjfZjjfTWOoaTSQSTer
         ni5FOoMYAuAA70uwl5QlQpaNrzvR9pTJmor/Ef3VY1mkZ7Iw3mQgG5iuL96LAJje3Nrg
         VHXVA5+VG/d9zWgpeZ7Yh+jrtP86kSftEekI0uDnjmHTET58pf4+LrZkXPMm5boaZ+pS
         EShiGIoLqZCFJkWhhEpdSmUsM5ADizIt0868rZUYzbVIEPiyIgffMxyqfZJsO3LwzRE6
         0wHQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=exhaK0jyBuR6IdRplBx0QLJzCFdtk16dhsdpYt+a1KE=;
        b=HnNbAHyJvAm5ozO6YrAH0E4cWoQ+3q0uxON/j6SRzMHHoq0LyAmjhPf14pwY8Xg52M
         dKQk4NeqEQtboAEj5g1IxHhbReWl52D6kjoX/ydDJljeyp8v9ze20z3Eq5ySrCa7rDtm
         JatSeSrVwuzT1TRxodOGPR0eMaFEVHAFIL2mcKbLmxq5c/a2pVjvJHYLl+cyI4jtIMd1
         j0kmmt+kauwQ4uzYnMMhG21OuPlzj3anxNS65ZZA5FrC2fE+2mhx10YYiTA2sVvuD4mx
         gssMfLo07usVEAxI0MB2NUBlQ4cCGDLfyQDMIZSiILU1O4DVc47aqygpOS8XxOwt0GKq
         6Nyw==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.50 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=exhaK0jyBuR6IdRplBx0QLJzCFdtk16dhsdpYt+a1KE=;
        b=FXq5/1fVGMCKflkNUnoka7LHD1+HM9QSynsX+XVu4key2uakAYQnZtMULGXGkQVwCX
         MxwVdRfjBg5putEdzsnFyx57Pk+fbqi6opQCycW7XV3jNke0HS8A+7vyc4zD1oepP/lk
         JGzIigxx9FKGV0XZtdvNkHYvd853kUhi4WzCj9s64N+iv8D9MIwwnnb7/RGQ5wz3onOO
         ath0pQ/Bun5M9z6SvuoaW7nJ0h++H9nYyhWHpKXFuZc0RB5cicaR/tfPJGEFm8H9R/05
         zGQycAxoYRXLqzcN/5zYJKVxNtPlIQsoAF0NzasE5Hla4nAckg/5vujC7Se2K0okmnDO
         u+WA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=exhaK0jyBuR6IdRplBx0QLJzCFdtk16dhsdpYt+a1KE=;
        b=P2xmzcYHW+eRArEXh++yU9POB/+i76+UwX0evpZWX0+ABmhd9eEmZujO7JXihgC2A8
         lqc/HAcy4+gwbe2xirTpXEwW39MBhyOgC6qKpd5KL1f/mj9n102hKDMpG/ozsGTNlE/u
         mvMerAiL33dXYb6UmOlGyAmnPFUlOtn+4K4TwQqpCxlPVc5ibwFgVaU1i26Vq5EKS1qF
         ehIiMmw0xTfY6qERgOHBboRCAGfppp7/A69c1qjLee4URsQFveNtmm6AUyTfDzO3m9t5
         yzGx5PFRWxxJXl00j0AmOXO1/a6uHQ4f+I/A7jBaUcYEenyPYqvBRgK/rPtmwjbeAoHH
         wUzA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5309Uaacyw9Eae8AecRulL8sUXEZ/YTEx5H97bj5ztrciaC4Alyg
	0tUxJ4GnHe+R4bAgCcJbjcw=
X-Google-Smtp-Source: ABdhPJy/wTxIe6Bvo4P6nk7h2NqgH6LPSJ5RFu9Ed3D++amEE5DE3TrB3l+0HB+CDA5zzkXagy1bew==
X-Received: by 2002:a67:d79b:: with SMTP id q27mr3272598vsj.31.1603220071389;
        Tue, 20 Oct 2020 11:54:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6102:3037:: with SMTP id v23ls411600vsa.11.gmail; Tue,
 20 Oct 2020 11:54:30 -0700 (PDT)
X-Received: by 2002:a05:6102:9cd:: with SMTP id g13mr3374678vsi.44.1603220070742;
        Tue, 20 Oct 2020 11:54:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603220070; cv=none;
        d=google.com; s=arc-20160816;
        b=sxqD7wTHucW0spHh0BY5bLxX6ufRoyjcijPPCalJcYW3udrDxzx1zA47Y8bKV/KRlH
         qW42SDps2bLnX5PllBI/c6SvXmOUU8UB6kBmBK3CPHcUHuiKdPKGe0F1ahu4x3/LVs3J
         ig2pIL82b1p6kE4byW0MGOBtiEymUSEoA4B41mNPP6POPgJWx5TIgn0gfnG9Uc//w411
         L7IqGzjDBATBzt2xyCEZQuPGTH8/wiZ3V5aq2BWcQeF0hjo2MtJVjyDUQM5CHs5II8X8
         D59xVRcPzpP/2v8Y4fWKkJfOv+NLHFZUX8hQeScwJUdid7P5BEr0LzFCcZzl6nU/081W
         iMEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=YLfNDTTHDduSSvnQ6JQ0BWkYpeOX65Ps7WEqi5qf1jI=;
        b=FRejnPfDWh+98lP5ubvouIAGvxH9azDSHJgB8tBTyPCP/FdlUj50ncH7ArigJv2fKd
         DHotcjQaU6pHf1kyZAHoYRjSOK2e+/kiCsJEMsTu47NUu0HV2FVg2oex7A2cLReyLFEH
         q3tzv2RBXGXo8jDpzrdUQav0il0KzE5zQry6UJDal/NcMpBCA9OjSDh4dL4zFaZVtw3B
         Wm2O92LYyZZLIAYLVNZIUElZhqFkshqfe9g/3mcEqS0UD/n9FwhuOyXTr4zjiEPv3xx4
         0cWyZmiaKTpXagaoMaQj/tZGRmbsrV4o45PwDcyfKEoESeNC+cSnMImju3knV+iW23aL
         yENw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.50 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0050.hostedemail.com. [216.40.44.50])
        by gmr-mx.google.com with ESMTPS id e21si234863vsj.2.2020.10.20.11.54.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Oct 2020 11:54:30 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.50 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.50;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay07.hostedemail.com (Postfix) with ESMTP id 6D6A21802150E;
	Tue, 20 Oct 2020 18:54:28 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 50,0,0,,d41d8cd98f00b204,joe@perches.com,,RULES_HIT:41:355:379:599:800:960:967:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1540:1593:1594:1711:1730:1747:1777:1792:2393:2525:2553:2560:2563:2682:2685:2828:2859:2933:2937:2939:2942:2945:2947:2951:2954:3022:3138:3139:3140:3141:3142:3352:3622:3865:3866:3867:3868:3870:3871:3872:3874:3934:3936:3938:3941:3944:3947:3950:3953:3956:3959:4321:5007:7903:8957:9025:10004:10400:11232:11658:11914:12043:12050:12297:12740:12760:12895:13069:13311:13357:13439:14096:14097:14181:14659:14721:21080:21451:21627:21939:30012:30054:30090:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:1,LUA_SUMMARY:none
X-HE-Tag: shoe55_10129fa27242
X-Filterd-Recvd-Size: 2143
Received: from XPS-9350.home (unknown [47.151.133.149])
	(Authenticated sender: joe@perches.com)
	by omf07.hostedemail.com (Postfix) with ESMTPA;
	Tue, 20 Oct 2020 18:54:26 +0000 (UTC)
Message-ID: <0cdbe9c56d73402be9e3b36a662c68515abcfae9.camel@perches.com>
Subject: Re: [RFC] treewide: cleanup unreachable breaks
From: Joe Perches <joe@perches.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Tom Rix <trix@redhat.com>, LKML <linux-kernel@vger.kernel.org>, 
 clang-built-linux <clang-built-linux@googlegroups.com>, Greg KH
 <gregkh@linuxfoundation.org>, George Burgess <gbiv@google.com>, Arnd
 Bergmann <arnd@arndb.de>, Jason Gunthorpe <jgg@ziepe.ca>
Date: Tue, 20 Oct 2020 11:54:25 -0700
In-Reply-To: <CAKwvOdmhqq0DT5csX6W8xDF=nuXgJJ_Rtc2xf++=Q9uA4tZEvw@mail.gmail.com>
References: <20201017160928.12698-1-trix@redhat.com>
	 <20201018054332.GB593954@kroah.com>
	 <CAKwvOdkR_Ttfo7_JKUiZFVqr=Uh=4b05KCPCSuzwk=zaWtA2_Q@mail.gmail.com>
	 <3bc5c2e3b3edc22a4d167ec807ecdaaf8dcda76d.camel@perches.com>
	 <CAKwvOdmhqq0DT5csX6W8xDF=nuXgJJ_Rtc2xf++=Q9uA4tZEvw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.36.4-0ubuntu1
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.50 is neither permitted nor denied by best guess
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

On Tue, 2020-10-20 at 11:51 -0700, Nick Desaulniers wrote:
> On Tue, Oct 20, 2020 at 11:42 AM Joe Perches <joe@perches.com> wrote:
> > On Mon, 2020-10-19 at 12:42 -0700, Nick Desaulniers wrote:
> > > We probably should add all 3 to W=2 builds (wrapped in cc-option).
> > > I've filed https://github.com/ClangBuiltLinux/linux/issues/1180 to
> > > follow up on.
> > 
> > I suggest using W=1 as people that are doing cleanups
> > generally use that and not W=123 or any other style.
> > 
> > Every other use of W= is still quite noisy and these
> > code warnings are relatively trivially to fix up.
> 
> The 0day bot folks have enabled W=1 recently; hence the uptick in
> reports of -Wimplicit-function-declaration.
> 
> If it gets added to W=1, it's effectively "on by default" for new code
> tested by 0day bot.

And that would mean these get fixed faster no?
Isn't that a good thing?

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/0cdbe9c56d73402be9e3b36a662c68515abcfae9.camel%40perches.com.
