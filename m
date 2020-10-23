Return-Path: <clang-built-linux+bncBDY3NC743AGBBS44ZL6AKGQEWEJPLVQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pg1-x53b.google.com (mail-pg1-x53b.google.com [IPv6:2607:f8b0:4864:20::53b])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A589296ADF
	for <lists+clang-built-linux@lfdr.de>; Fri, 23 Oct 2020 10:03:24 +0200 (CEST)
Received: by mail-pg1-x53b.google.com with SMTP id z4sf577035pgv.13
        for <lists+clang-built-linux@lfdr.de>; Fri, 23 Oct 2020 01:03:24 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603440203; cv=pass;
        d=google.com; s=arc-20160816;
        b=nsf8K9u3Weh/CGDnN0SPVXnV8X4kC27/QL2uNCWpWnD/zVBXAXmuQLSyznDSvGEil0
         mn+h53pB/HTpXt3CMfEGD+yaA+K5+xa19rCb07xW3qme9x2eIXgmQQoFOa0XcYXG7Cz0
         6leivFA4jQ5NmMS6YsoiImfvL0iTNz59QUkSj4A8ioAVkP1+aVE5iXiw9z9BpFx+y3MX
         S/PsIRRV86dKOPAGg93vGKPAz6nkb3+/CG5rXHvIQ/VPVTTPNDDmeEPyJY6Mwf+6KWkU
         MKieP3zI64NV4kzsvDq5ApfM5WYmfbfmDj5PVMfuudBrOnclYR1RpgBtmSrCqzmbhNKf
         Mi0A==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=DWmSHnhTJ24RsoOmaXw2HXOcwtm1fucWXdipIkfjdAs=;
        b=zbKLC/BYdFc6iFq4b287u9XRdwG2ZUUq6RGkW7/eUpy4yiZsVxWQEfjUE75+GopBUg
         mNe03PEQenIh174fknN1vxzBd+Ip0QTU1vZeNWjBUCgttUX53SncdR5lur8WxsI+qzse
         tNpAOUK3liuZPIWEFmrm3nhitwyFyXiyYwYGAXFJqnE+phT7heGYY8QJpLGSedHDktJx
         PgDyVFpimlCWju8GeAuVxTLafXD1U5un0mqFqpEigAj0JZ2iaE5eDDNUe5kEkCdVTYOk
         50B9u8Vh5DzcozvVJNDgPkcwZ1Dr90Mi/3IDamZ2uVJGNZH5gxKos30kf6xG+VU2MAnT
         jQ0w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.9 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=DWmSHnhTJ24RsoOmaXw2HXOcwtm1fucWXdipIkfjdAs=;
        b=QkNnM7QSYqhKMXoxqX/ppD9Cls6/7BffvS+0m7/3f8ZI1+wbRTWrTbVVvv9d0NoFvS
         kqNSAUfco3muCZsPl80OmJHBL2rH5La8FKIiol9orPmo395mQm0Pq8iFpM3iY4xYOKrF
         5zRxuzSyvRxvmAXeb0A5Tzh2OLP2PBen/12ZkKqFpR9NYB/oibvjAI1Uh/WI18mcgk4Y
         5i/KPs9c0/GbpS0zBeyHEIS0YIUjnFiL5iMTvXHvgThB9SUOEp9x4OVeSN5JZ5PFSRm3
         TlLXVbsaovucF2jVeVxV5E2+GZCtfiJoP4cy6qAbN0lyYDpgFqi/F3AmaKXMd2wzEe7/
         Nb1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=DWmSHnhTJ24RsoOmaXw2HXOcwtm1fucWXdipIkfjdAs=;
        b=eSjxxP8keVZ5nSX0ApJI4sFKVGSDwoKW58S4dgjm3Oeoo57a0FW0hPGUEM69V0S6y4
         IrXCsyNmbeAswamg5QyuclBIlzCwU1UZ0s2DFfszpt/MIjThXrwdcZF3JLjl++s0Qi/9
         ASk9lS3wp/FlwThlSUe/raPO6/PDMLi90tZb9b3o4plZEIwl3oRJLR7MWxwXGAdlXb4C
         vovZithI/iWMCgDrDGzaCnmiMAS0JP3M42cmDjcAHgdj9aagi/YxzT6RPsQhWfytEGra
         7Qp3Lhj3T2/4FiP7EqOC3noFxSNkuDfk2Tz+mTOjELsrSYNwsk94WnJG3pFrKlLj437G
         HoSA==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533kz6pUc28H8XClZH7xAbWn8feydN4CZ09FPVzKDnZNzsvGq8bo
	SPtDYWppvbw6PSds/3Rg7G4=
X-Google-Smtp-Source: ABdhPJyDKW1X9Z1EfWqXDk0JsqU55qWFoGhUckKPN6sYy+Y4Wrlp/sTIRPxqI5wwZqUgoVpLIX3hsA==
X-Received: by 2002:a63:2246:: with SMTP id t6mr1155630pgm.103.1603440203332;
        Fri, 23 Oct 2020 01:03:23 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:8046:: with SMTP id e6ls546933pjw.3.canary-gmail;
 Fri, 23 Oct 2020 01:03:22 -0700 (PDT)
X-Received: by 2002:a17:90a:c90d:: with SMTP id v13mr1216347pjt.166.1603440202721;
        Fri, 23 Oct 2020 01:03:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603440202; cv=none;
        d=google.com; s=arc-20160816;
        b=WJ8HFD6W++7cysDe2wPqGzCFbU9qJFAhZ2adWn4qWDz+W7+BLLzKbVehMgAU975Pod
         gCVvcpXd4AP2MzfIbE97MOayxB7GHIAWXM5uqS+dIWIgmrYD8CaZlm8bUKLz32fpqtiA
         0gknEBAnPqQS3mKZSs9cIPcG7GmJcZm6MtcYeR5v4ggsvJMQScVCq0fvuYmzoYfhv4ZZ
         CnV8Tc3AY49JmI2nlb57X515t6rAYi31LKTSt4DgMLNQVCqUWw8QKQ9D3n3EoDfJYwwC
         V4TufjVAjzS6Gqq/BH67nEeCWtX0UgTujSlvCnfm6VST42rAfd8PfbrXMuJ0vMODjUvp
         9eag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=EifrdPfdPxuphSxZrVWi+l/gPfN0BbuRc8QC9NypTcU=;
        b=wwFM2qY0RvZ1iTwHgifq1NrH1yMwQ81b+daEM/GAd37YBVOGEDddGf/JIXtFPii+fQ
         xpWsBafTt5eVlQDVHmNZBNrIndX6bhePkwxSvN+dD/k9TKx9UU2Pr8IVZPUURvYJSE9p
         /RSToiXyF8IXplkn2Y3g3puvIeuyrczYWjxxvXGchZClmraAHd4KtQRVjoUB+lQjUEYb
         UUDkNs3lygRrLsGU6L6PhRN/rqBT+znwJWIXL576w4g36vBKYZnQ2lCu19PTppusb0zo
         dYR29F9l1gxJDxGIappB9uNO6LK88Aon8WQqjqgYtScYmQNfzfJyJA5uEMUzyPRyYmeW
         szWg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.9 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0009.hostedemail.com. [216.40.44.9])
        by gmr-mx.google.com with ESMTPS id k126si48083pgk.0.2020.10.23.01.03.22
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Oct 2020 01:03:22 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.9 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.9;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay08.hostedemail.com (Postfix) with ESMTP id 76F86182CED2A;
	Fri, 23 Oct 2020 08:03:21 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,,RULES_HIT:41:355:379:599:800:960:973:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:1981:2194:2198:2199:2200:2393:2553:2559:2562:2828:3138:3139:3140:3141:3142:3352:3622:3865:3866:3867:3868:3870:3871:3872:3874:4250:4321:4362:5007:6119:7903:7974:8700:10004:10400:10848:11026:11232:11658:11914:12043:12050:12297:12740:12760:12895:13069:13255:13311:13357:13439:14181:14659:14721:21080:21325:21627:21939:30054:30070:30090:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:4,LUA_SUMMARY:none
X-HE-Tag: sort57_5a0f0a927258
X-Filterd-Recvd-Size: 2339
Received: from XPS-9350.home (unknown [47.151.133.149])
	(Authenticated sender: joe@perches.com)
	by omf03.hostedemail.com (Postfix) with ESMTPA;
	Fri, 23 Oct 2020 08:03:20 +0000 (UTC)
Message-ID: <64b49cd3680f45808dad286b408e7b196c31ec79.camel@perches.com>
Subject: Re: [PATCH] treewide: Convert macro and uses of __section(foo) to
 __section("foo")
From: Joe Perches <joe@perches.com>
To: Miguel Ojeda <miguel.ojeda.sandonis@gmail.com>
Cc: Linus Torvalds <torvalds@linux-foundation.org>, linux-kernel
 <linux-kernel@vger.kernel.org>, clang-built-linux
 <clang-built-linux@googlegroups.com>, Nick Desaulniers
 <ndesaulniers@google.com>,  linuxppc-dev@lists.ozlabs.org
Date: Fri, 23 Oct 2020 01:03:18 -0700
In-Reply-To: <CANiq72nfHjXkN65jy+unz0k66qvAALNhhhDZsxqPRLdtLKOW_Q@mail.gmail.com>
References: <fe8abcc88cff676ead8ee48db1e993e63b0611c7.1603327264.git.joe@perches.com>
	 <CANiq72nfHjXkN65jy+unz0k66qvAALNhhhDZsxqPRLdtLKOW_Q@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.38.1-1
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.9 is neither permitted nor denied by best guess record
 for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
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

On Fri, 2020-10-23 at 08:08 +0200, Miguel Ojeda wrote:
> On Thu, Oct 22, 2020 at 4:36 AM Joe Perches <joe@perches.com> wrote:
> > 
> > Use a more generic form for __section that requires quotes to avoid
> > complications with clang and gcc differences.
> 
> I performed visual inspection (one by one...) and the only thing I saw
> is that sometimes the `__attribute__` has a whitespace afterwards and
> sometimes it doesn't, same for the commas inside, e.g.:
> 
> -  __used __attribute__((section(".modinfo"), unused, aligned(1)))  \
> +  __used __section(".modinfo") __attribute__((unused, aligned(1)))  \
> 
> and:
> 
> -    __attribute__ ((unused,__section__ ("__param"),aligned(sizeof(void *)))) \
> +    __section("__param") __attribute__ ((unused, aligned(sizeof(void *)))) \
> 
> I think the patch tries to follow the style of the replaced line, but
> for the commas in this last case it didn't. Anyway, it is not
> important.

Here the change follows the kernel style of space after comma.

> I can pick it up in my queue along with the __alias one and keep it
> for a few weeks in -next.

Thanks Miguel, but IMO it doesn't need time in next.

Applying it just before an rc1 minimizes conflicts.


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/64b49cd3680f45808dad286b408e7b196c31ec79.camel%40perches.com.
