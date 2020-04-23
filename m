Return-Path: <clang-built-linux+bncBDY3NC743AGBBBUPRD2QKGQE6PK7AWY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x637.google.com (mail-pl1-x637.google.com [IPv6:2607:f8b0:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id A41A81B661F
	for <lists+clang-built-linux@lfdr.de>; Thu, 23 Apr 2020 23:24:23 +0200 (CEST)
Received: by mail-pl1-x637.google.com with SMTP id c4sf3091831pls.5
        for <lists+clang-built-linux@lfdr.de>; Thu, 23 Apr 2020 14:24:23 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1587677062; cv=pass;
        d=google.com; s=arc-20160816;
        b=hD4WRe9AH8HLxHCTPTgacx3njYF1Xy3BQfqIaWQ6zXPwE7lScSwEbxn9eMrGcpEdFF
         aXyneZvEfH0/3lDKLHyTcu+DFctErR4ZRT1PJM0hc59OEHz8d0gOXiFjQ/DtjwprVBpf
         PYirlJAasf5SO9b1GX6cxz7LxK+l4mPTF/jBQ4Gs2PCudc8pFvC2z3mzwD5KNZ9Forh1
         F384X7PYTN++GybU2HUt0SPEY8ZczvXT+gQal4QqEl6ufzUkBlTX6+1oQA8Wd59JgG4K
         wAxZM3Dcrt9i9RFsFxV3VY9RgFz7bssCoB1Da73vWkmZSijTx9yGzpV0RTIg25NqMhSe
         5OTg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=wEtl9xDBo6DwOMTVVRIKnqn/JUeW35YAzJE/+squZLI=;
        b=QBistnqapx3cTEzkS67ZE62zdK/wzub+Wmwty5F3W1AqNl08rfLehSFQpnuRbazROZ
         anxKQS37pfPiPwXa7KLKsKBLJiTtv8pa+JHe5iyMAVNuvdNA87OPtxGjvoRoS8nz0AGw
         iuQAFlRguw9BRz2LtAfoiR+V06pHuXpDU+7cLPmEjy39lvTvW9Z1IEiPH+Zk0onJcbz8
         J+xeoPcIg+mjSCFQGGKrPdlD7acwyDAVvG+DR4TBVA0H1IC9kI7Ac1NC1iZ5UPb+FUd3
         LEK6WWIhOuxFNcZjYHlArAOvNZjS87lgyVNLzbQDsiZNibVqSMcGXkIrRmOYhptfxTkO
         jOcQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.171 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=wEtl9xDBo6DwOMTVVRIKnqn/JUeW35YAzJE/+squZLI=;
        b=bbBtZHjVuzpKrcXmM4iht9+2OPg8nDSEGiNM4X2170A1y9+rRPEnQ4zCkADrWo2ArB
         LV2NSDRL3LQMIM2SA4zPefFO8CHiRU64pEPAe7gM/NTedAbYFuL55aZgnul6zn6SXI92
         nDcWQoX24LxqQ5a8FgyutDiM6EPOdwz0gJRAI1HAZQ1i3WB2BnV8JLpEHzwQMdYpxlcl
         N7rVRpZbaAH3QZm6N5Sm3BgV+N85beCNpcevpNoe/7hrqnh/J1ktGPcNpS2xyerwZxuq
         ERyi8uomzSgUnWXtMLag98DoNnYgw+zc5EfqfW4eL9T4nHaLvRlVcYID0vfPaRoNxtJF
         faZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=wEtl9xDBo6DwOMTVVRIKnqn/JUeW35YAzJE/+squZLI=;
        b=QfanBa9EcbmfeZrkJZ6vz0rmhOqDWAiHDmifGpd0XNqc2vc7euFgMqpM4Y1lJ7g6M4
         veJ4e9EB4a9exkxFeorFXjcEUwF+gSQTkN4uT68Ti/xqDPMwho8lPuA/YYHWvP2Ltl6U
         1qg0XeiTU66DH5p22jVECk7k3optSnKRzd/9hP6WEuCpCd9tOJ0oUSD7IHuq+Btn15xZ
         0cIc8GMmVjARg5j9BBEJZtwNFlZQvvqluf0TYhKVsv6d2sctSGZdD7IAjt3YYO14hm93
         8zDra82zvrRqrL+Fr+jsmXrgFMAl9Pw0m6bIyDuyQEc64ikOcP1MF1QN0uARoYCiI5Rl
         zUHQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AGi0PuYUAkO3uOg3JSv1pLtNfVYdkxzvbH69/B3dORSZgZMUl4GIPsRa
	wGNy4axfSf5BAljudQjNyww=
X-Google-Smtp-Source: APiQypJt3NkmTV6kpCqWvwQS/n+PPIKBH3A1o2FyDZMgsrIlqQ6jBYfSAcCG/t+Y9LFXn6BkWMODDA==
X-Received: by 2002:a17:902:8a91:: with SMTP id p17mr5767335plo.248.1587677062307;
        Thu, 23 Apr 2020 14:24:22 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:3657:: with SMTP id nh23ls5147715pjb.1.canary-gmail;
 Thu, 23 Apr 2020 14:24:21 -0700 (PDT)
X-Received: by 2002:a17:90a:8b05:: with SMTP id y5mr2764605pjn.119.1587677061753;
        Thu, 23 Apr 2020 14:24:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1587677061; cv=none;
        d=google.com; s=arc-20160816;
        b=oKsoDmSBHwqNlTe2UraTv0rhquVjXEL5+GIzT1xynC2gqDzEVpOZg9OSduWn0Y2YJV
         RNkkdDhsVbJgyVs8AOeiOXQlcE6087pXJBFAfnOmL4yMTTe4nqr1zh1HTEyN6O6iSwd2
         0rKUffaQamLIeGLnpjlqmDiEfpBOZqfoWcSRDx+WbbxICnFfx5dx4f7RnIKWHR/R//rv
         vYqLlBnwf2C7a3aOnxD8MppTN8dadr6Eh2V9PWZXPaouMJl5CHl+UQ1eaVL3suF/zg1l
         y4O+FWes8J3IWfcY4oayNfxy4mtJrsiAdLxoicdg/ch96/j4VRj5u2PoxpVVLugkXEjY
         TPxw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=LNpP+wPlElK3f4ab5xnLb6VEbwq47GBQ1PaX2NrQywA=;
        b=m2ZLxKCsFqrB4sPhl1EjmQGsGlyIHMqO9SXc8dVeueh58/YHhSrWk0Z2azlWqCyHNH
         v50+6/M9Vb/Br3hrRra6uOZBegDkZlQC15ImUCqoH3+HBdvqNdOTGnmAwMAuIuW/gpLM
         mo6xh2smhejWOa81WZB1C2GKPD4bJPxQ2b57Uo02/2ef8SOS9s7vW13sdej0voDXVIwH
         T9FEZ6fhedUBprOir4nO/NwFOYz/eAYbB0qgF2L6EgMEE4FxUjQhB7w3eVwon1jHc9fV
         w862sc8CBnh6d7vdZ+F3Wu//QtP0ScQGake54mJIWA2wAQDbXPn4z25Gd6Dl1IhYjyrH
         DKDg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.171 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0171.hostedemail.com. [216.40.44.171])
        by gmr-mx.google.com with ESMTPS id g20si232188pfb.2.2020.04.23.14.24.21
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Apr 2020 14:24:21 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.171 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.171;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay05.hostedemail.com (Postfix) with ESMTP id 99358180286C8;
	Thu, 23 Apr 2020 21:24:20 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,,RULES_HIT:41:355:379:599:960:968:981:982:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:1981:2194:2199:2393:2553:2559:2562:2828:3138:3139:3140:3141:3142:3353:3865:3866:3867:3868:3871:3872:3873:3874:4321:5007:6119:7903:9389:10004:10400:10848:11232:11658:11914:12296:12297:12679:12740:12760:12895:13069:13311:13357:13439:14659:14721:21080:21433:21451:21627:21740:21939:21990:30054:30090:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:2,LUA_SUMMARY:none
X-HE-Tag: boy57_8a90577b1303
X-Filterd-Recvd-Size: 2656
Received: from XPS-9350.home (unknown [47.151.136.130])
	(Authenticated sender: joe@perches.com)
	by omf16.hostedemail.com (Postfix) with ESMTPA;
	Thu, 23 Apr 2020 21:24:19 +0000 (UTC)
Message-ID: <572b03bdc3eed286c5ed20887d42f674bd93336e.camel@perches.com>
Subject: Re: linux-kernel: Unused static inline functions
From: Joe Perches <joe@perches.com>
To: Nick Desaulniers <ndesaulniers@google.com>, Julia Lawall
	 <julia.lawall@lip6.fr>, Dan Carpenter <error27@gmail.com>
Cc: LKML <linux-kernel@vger.kernel.org>, clang-built-linux
	 <clang-built-linux@googlegroups.com>, Greg KH <gregkh@linuxfoundation.org>
Date: Thu, 23 Apr 2020 14:22:01 -0700
In-Reply-To: <CAKwvOdnW-xvSnT3RS8MWufyp+3=NM-Mb+bv0r2u2soNnyVvXBg@mail.gmail.com>
References: <1583509304-28508-1-git-send-email-cai@lca.pw>
	 <CAKwvOd=V44ksbiffN5UYw-oVfTK_wdeP59ipWANkOUS_zavxew@mail.gmail.com>
	 <a7503afc9d561ae9c7116b97c7a960d7ad5cbff9.camel@perches.com>
	 <442b7ace85a414c6a01040368f05d6d219f86536.camel@perches.com>
	 <CAKwvOdmdaDL4bhJc+7Xms=f4YXDw-Rr+WQAknd0Jv6UWOBUcEA@mail.gmail.com>
	 <4603e761a5f39f4d97375e1e08d20d720c526341.camel@perches.com>
	 <CAKwvOdnW-xvSnT3RS8MWufyp+3=NM-Mb+bv0r2u2soNnyVvXBg@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.34.1-2
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.171 is neither permitted nor denied by best guess
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

(adding Julia Lawall and Dan Carpenter who may have ideas too)

On Thu, 2020-04-23 at 11:57 -0700, Nick Desaulniers wrote:
> I've been mulling over teaching a class internally at Google on
> getting started contributing to the Linux kernel.  I think this idea
> (removing dead static inline functions) is perfect for having lots of
> small little tasks that are clear wins.  Do you have any other ideas
> for work that there's a lot of?  Like lots of small little bite sized
> tasks?  Maybe more fallthrough conversion? Anything else?

Some generic ideas:

o look for always unused/unreferenced, or always static
  value function arguments and remove them

o int function returns constrained to 0 or 1 could be
  converted to bool.

And some logging ideas:

o printk to tracing conversions

o removal of printks used just for function tracing
  as ftrace works well

o pr_<level> macro conversions to functions to save
  object space

o singletons for pr_fmt

o default use of #define pr_fmt(fmt) KBUILD_MODNAME ": " fmt
  and removal of the ~1200 current defines treewide

> Happy to have folks use your script and add your suggested by tag.

Suggested-by doesn't have much value to me,
especially for scripted stuff.

I'd be happy enough that it gets done eventually.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/572b03bdc3eed286c5ed20887d42f674bd93336e.camel%40perches.com.
