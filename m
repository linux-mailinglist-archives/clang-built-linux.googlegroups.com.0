Return-Path: <clang-built-linux+bncBDY3NC743AGBBYXU4H6AKGQEV65Z2TI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103d.google.com (mail-pj1-x103d.google.com [IPv6:2607:f8b0:4864:20::103d])
	by mail.lfdr.de (Postfix) with ESMTPS id A1C2D29C942
	for <lists+clang-built-linux@lfdr.de>; Tue, 27 Oct 2020 20:52:03 +0100 (CET)
Received: by mail-pj1-x103d.google.com with SMTP id v10sf1352913pjk.7
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Oct 2020 12:52:03 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603828322; cv=pass;
        d=google.com; s=arc-20160816;
        b=V4SxV9SrUiMpmY8s1kln6026nJwc2JLO/LvyhjKb0ZKwtElkz/SASTkDg0DMHUS91y
         DPTe0IB4/iMQFzO+a+/HVGOWiowILgK2Cz+zbp1Mvhgna5aJRBLu0OhtYBLF1haWAinX
         SstA+xgPyiyARET9lJ8Atjo6Sak6r0PAvnSrDoodVlD8+cZ7GG1HVYxoEhUhc9EVskV5
         dctAh2t9BO7Ex3lvGt0fqufl8p8ozjn81oX19CMLT8pYUSSkq2vB3JTH82IRsUCmaPj8
         i71MgaHOT0r1GMIEowOZIY0wccNIcFlRC/q8ZUg79ZcqP6fjsRPDwKZdDi1SVxyuUfUw
         5+Gw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=6ISmVHsu0DvsexEc5LBayPcEzgpvS63z7OplzWS2t08=;
        b=L7J/U/I4O+Mkp9vx+d+Jhc4CXtY80m/4oAmrSwDZq0EqIQb7OFd/nAKUWO6Q+oF7t7
         WZHFqpkoppL3sE8lWhQ5HuqBmXdmbX19a3HqExYaKQ+Av9eeLoaNUyaL3jtdExRkN4u7
         00slF4sNdJKv9ZTtij7BgCMMSAYt/hKgzN31Fdt0BmNFnZ07H4aelb8PCqRoEv6xFRQi
         Q6tvJBFGjLxGnSj/zRm4ccQJeMuUlj4pRpSFtoucwSnAhiNz/chRVTcQsaubx9b57KTo
         tbeD86+brz2N6NsVDoaqwNAc5FBabySTKc35kOSXc1rrfMLIXL4pIuXm1g14YG/ugRLX
         cGDg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.198 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=6ISmVHsu0DvsexEc5LBayPcEzgpvS63z7OplzWS2t08=;
        b=oW6ZWskiRpr7EgzAQU02hHq1SNzfy70Ro51KC8HH7i/NzXuEJj0RJOtI+fOJbLpQZ1
         t/DLXHi8XdMpfmgQ1Lag2TJTJDBR2Yn0PW0qpOWcbckbtxropodRO6BTApXWMFabv253
         ptyPcRM9MzQSdgf3IAX77YDVt8Fu1dcv9uIFT1T7OLjclmwgB9Q/C0stYZsVBvszQpNx
         1pqKf7lw5XhleW6ZZqO15DDQB7CWX02uwH78D3TqYYqIT9i1Tw9/x0R8WMnpfL0n0udu
         yPxcZ5dtUCfKpGRRwLt30Qf46T0GXuwP5Bv9v77q3zOI/7BtBPLNClqzA16PrWaAdg/8
         uVsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=6ISmVHsu0DvsexEc5LBayPcEzgpvS63z7OplzWS2t08=;
        b=eq8aIy39hyyFxq+yN6T6la16cTWgQdPpydftzx+JCCmerQCeF3tNLpdSyWKqWNKCgy
         7qs0xZjHvNCd/JJ7xK5A9uy6y4xeafSPDNqFkmLqwUX2mfwGGkjRUIJz+/SEw1iWFlZX
         CViEJKsAd3om5VzKwtBYIK1ZTpbIFr8hGGZDHLICqaMI2AedMeDC622UXpqTnH6l2dNd
         npCjulYo2CtTd68j12ijqbVm4oxXTczWxKGXr8iOr4WD9BZnLFPqUfaKKtc9j5DsdhRB
         cNVqFHndQphW2wbI9u9NqLzbHycj/TtM9dgr48Tzj6cHYnop7JdnVl/fY+baDW47bF6a
         S/ng==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532bq/vx9ObUKlstrfYtDlJiM58XSpjq+jfmxXwrIwVe0kq6wbqd
	aJNKTG7YPFuAdD1dFicZ5Hg=
X-Google-Smtp-Source: ABdhPJwgXGBfzFgaZIvYIhXmIpQPpYmNKjuNUAV6FyP3bd/1g0ohqa/L8bKEbjZ13wZZiiWg5vsPnw==
X-Received: by 2002:a17:902:7c88:b029:d5:cdbc:ce6d with SMTP id y8-20020a1709027c88b02900d5cdbcce6dmr4131430pll.22.1603828322341;
        Tue, 27 Oct 2020 12:52:02 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a62:1884:: with SMTP id 126ls952934pfy.8.gmail; Tue, 27 Oct
 2020 12:52:01 -0700 (PDT)
X-Received: by 2002:a62:6496:0:b029:155:b152:f0cf with SMTP id y144-20020a6264960000b0290155b152f0cfmr3745436pfb.75.1603828321776;
        Tue, 27 Oct 2020 12:52:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603828321; cv=none;
        d=google.com; s=arc-20160816;
        b=RWBUtCi+hUKUeBkgobrkyk4HSeZW3RwuvrdiKYtn/AVuTgFR9CKKtxI7dWpljG/hd/
         eD253CzOp8gvomhmtT9X+XY4kie68ZuBHIC+s1ckx3uJEYuz01kBpsi5tODlWOauHxUx
         NWrXjAaTkIfP+ST7Cnxpm7LPHndmexgvxAdsWSEwd4YxsqAQ+hbhmGf5da+4H2ztp+S8
         z7fJQOeFI+eIpyQNqWOetsis+bHa2AO+y/Iis84zI8nAG9Pp3k+4j80vLZG8yWW1QdDr
         m4oHSP0hnjUhmFO2fvpISGslqU7fkmNRNEaidZ8i1KyLvZQwEbiRRZQ8LYeT5wVHRI1g
         g4bw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=hf5w/DUDTHj1GSrFcwundMJXe/F9lVB7tjxA4uW8+o4=;
        b=YjL3N56PAsJifEMJIA2dFIyqtasQjE29+qwO9DqHkJynloCsEYmrNtceKAxbMAXNWT
         a5ORSc7UGGlgbMoOjkCjuF3tJET3EHugcpLGo9bcerjymA51TMQnYg6Bc4HCQuNJD0uR
         OeA/SVJRGl+Pm1ooxNlWkuL9koh3EXWa8wwMMkg4Sq/rCFWQQjPmMJcuORApKe1Mwm7B
         FfJjmeTPReqRUkXU9D/nwBuUlmB1UwkQOcZcHx/WJ2R6rhymiCC56PtKBb5rILNOlBoF
         upMtGOg538nPnk9YSNuUChUjoyjzWAM788OTYM5UbzRCDKmycAs0nY9IjRLk6voHGKNJ
         vAyg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.198 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0198.hostedemail.com. [216.40.44.198])
        by gmr-mx.google.com with ESMTPS id e22si175435pgv.5.2020.10.27.12.52.01
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Oct 2020 12:52:01 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.198 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.198;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay02.hostedemail.com (Postfix) with ESMTP id A213063D;
	Tue, 27 Oct 2020 19:52:00 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 2,0,0,,d41d8cd98f00b204,joe@perches.com,,RULES_HIT:41:355:379:599:960:982:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1541:1593:1594:1711:1730:1747:1777:1792:2393:2559:2562:2693:2828:2911:3138:3139:3140:3141:3142:3353:3742:3865:3866:3867:3868:3870:3871:3874:4250:4321:4425:5007:6117:7903:9010:10004:10400:10848:11232:11658:11914:12297:12663:12740:12760:12895:13069:13146:13161:13229:13230:13311:13357:13439:14096:14097:14659:14721:21080:21433:21627:30012:30054:30070:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:1,LUA_SUMMARY:none
X-HE-Tag: soap06_23053322727e
X-Filterd-Recvd-Size: 2922
Received: from XPS-9350.home (unknown [47.151.133.149])
	(Authenticated sender: joe@perches.com)
	by omf04.hostedemail.com (Postfix) with ESMTPA;
	Tue, 27 Oct 2020 19:51:58 +0000 (UTC)
Message-ID: <a4c58c21f0361f844588f5479f6fee33dc1a1dae.camel@perches.com>
Subject: Re: Subject: [RFC] clang tooling cleanups
From: Joe Perches <joe@perches.com>
To: Tom Rix <trix@redhat.com>, Nick Desaulniers <ndesaulniers@google.com>, 
	Stephen Rothwell <sfr@canb.auug.org.au>
Cc: LKML <linux-kernel@vger.kernel.org>, clang-built-linux
 <clang-built-linux@googlegroups.com>, linux-toolchains@vger.kernel.org, 
 Julia.Lawall@lip6.fr, Linus Torvalds <torvalds@linux-foundation.org>, 
 Masahiro Yamada <masahiroy@kernel.org>, Nathan Huckleberry
 <nhuck15@gmail.com>
Date: Tue, 27 Oct 2020 12:51:57 -0700
In-Reply-To: <8abd1e5a-511a-e4f6-6f2c-a045d33fa2aa@redhat.com>
References: <20201027164255.1573301-1-trix@redhat.com>
	 <CAKwvOd=83v0Sv-NhQ5xgqdNSRm2b=pOJDziX8axZ9t2YyYwz-A@mail.gmail.com>
	 <8abd1e5a-511a-e4f6-6f2c-a045d33fa2aa@redhat.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.38.1-1
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.198 is neither permitted nor denied by best guess
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

(Adding Stephen Rothwell)

On Tue, 2020-10-27 at 12:33 -0700, Tom Rix wrote:
> On 10/27/20 11:42 AM, Nick Desaulniers wrote:
> > (cutting down the CC list to something more intimate)

[]

> I am interested in treewide fixes.

As am I, but here the definition of fixes is undefined though.
Whitespace / style changes and other bits that don't change generated
object code aren't considered fixes by many maintainers.

> Cleaning them up (maybe me not doing all the patches) and keeping them clean.
> 
> The clang -Wextra-semi-stmt -fixit will fix all 10,000 problems

I rather doubt there are 10K extra semicolons in the kernel source tree.
Is there a proposed diff/patch posted somewhere?

> This clang tidy fixer will fix only the 100 problems that are 'switch() {};'
> 
> When doing a treewide cleanup, batching a bunch of fixes that are the same problem and fix 
> is much easier on everyone to review and more likely to be accepted.

That depends on the definition of batching.

If individual patches are sent to multiple maintainers, the
acceptance / apply rate seems always < 50% and some are rejected
outright by various maintainers as "unnecessary churn".

Single treewide patches are generally not applied unless by Linus.
The trivial tree isn't widely used for this.

Perhaps a 'scripted' git tree could be established that is integrated
into -next that would allow these automated patches to be better
vetted and increase the acceptance rate of these automated patches.

> Long term, a c/i system would keep the tree clean by running the switch-semi checker/fixer. 
> And we can all move onto the next problem.

Good idea...
I hope a scripted patches mechanism will be established.


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/a4c58c21f0361f844588f5479f6fee33dc1a1dae.camel%40perches.com.
