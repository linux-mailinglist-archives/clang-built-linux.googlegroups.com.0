Return-Path: <clang-built-linux+bncBDY3NC743AGBBPH7XTZAKGQEEXT5ALY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pf1-x438.google.com (mail-pf1-x438.google.com [IPv6:2607:f8b0:4864:20::438])
	by mail.lfdr.de (Postfix) with ESMTPS id 051DF166CE3
	for <lists+clang-built-linux@lfdr.de>; Fri, 21 Feb 2020 03:26:06 +0100 (CET)
Received: by mail-pf1-x438.google.com with SMTP id 6sf352150pfv.3
        for <lists+clang-built-linux@lfdr.de>; Thu, 20 Feb 2020 18:26:05 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1582251964; cv=pass;
        d=google.com; s=arc-20160816;
        b=MlPvgIM2PuTTrFjArslkIXRztjvyA3IrL8wFkoAovroUIGUbq6F8W86Y8Puviq4fkI
         nCJDrnlTNTGfsUNAeqzWnvvPcfmMvgQBO58pZPdqZGsjE/hDmL8dEr3cu8A5kLkju/R9
         Z8f9+ReXbQWlHfRba+NtqWLEARHBlxIDKxX6esVHBKiM74ZHh1g48JBJAx08BNj787XW
         toACTsk2VExtpetM9DNXgmJXB7N7GMxUj25TZZjA3APlRW7TT/nTv1jZCs+9suFRiEj1
         nYJhjLHYtM8BX/kYuzQfWc6q2NhVrXepxN836wfPabg/KoSHyr51oOum9EWcHUoydHC3
         PhNw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=1vFnzuMkT8QpRorTZDk+uLEOXQo+WD/aoPVntZW/elc=;
        b=yRkZz3fsjw6wLzgmyhe5ZGudm02oxFZg38wBKHv15gSKfWfCwZLLivRsw7WnSUHf8n
         R+PzD5PtshXeqShiUNOPyojTzTVx7DBPk65XTtqK3pMvRjVh8k263x4VDdnBiDG8LLpf
         g0CWDlV6F3yzLd3wk8logy/7A1VzemTi+1yY0gxbZlgeCxH74Wg/2IGtQ5KQgLltfL3m
         6rqsSU6MWACAMBzBnwLLVb286OPnY6aDGyNHgtcT2UnkbOadLh5qVa6UEifzoawZgq1r
         KwH/X3U8of8i1szmX80ZLh2RnF7sA8+zYTJn8wru9rD40xFSiUXneLdDVKvwntZp1G5d
         8K1w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.120 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=1vFnzuMkT8QpRorTZDk+uLEOXQo+WD/aoPVntZW/elc=;
        b=qUPnRXMcW3vJNRA6ipqu86RwlaGNQV00HMpn4gzCZ4tMQh6Eq9bZ5suOG2POovIC72
         eCSSs/HuskEZNIJIoNd1bognAR7MwwuPP4MJonXcNAIXB7UNvunSYkOmrz1UdbGBzWGQ
         qi3xEGyf8NrNQ7c7oQg4uev23DVfJoQc4K7Ey0dGl12l1bHyaSfDyOjwfRzMEY3QNEng
         f3WoZwodIJrBKxFkUUZ2fLz5dQPmTvR0h+BvlhXq3FeN5M94BTNbA0++csd/6b1bZOhd
         RwIilmWUagyWJBCh3Bj42/G695i7t7z+M2+MuFyoR+fs/Ub5evdNtqGuiXn0vC1vQRtc
         kNjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=1vFnzuMkT8QpRorTZDk+uLEOXQo+WD/aoPVntZW/elc=;
        b=rJqYvAxgpeBaIEnwtien1sqZhiB/LR3GZ3OLRVKGouJdIpbnMBkEdWTKZotS3JS8Sa
         EmAXOehaRAyedtvpnj7GuL86ylYfDJJjiyD8Wadj+MZ1o4PDBO7SrxtV0hjlTgElYVg/
         HQh8s9YfDFGRn3NdEP4XfI1UNuthGbwnK5brRCEtHPz3QbI1IqIWxl1pVB3tbILCxURy
         GtczB8Q1M+E56N6xLK1HdRE7EbHlvXdX1pJAzf9LXR97jYc9Pwj/kHpKwhRSuoDYlMZv
         mwR/UgUbIJ2wFPXen3L4kBAWCzndtIjh7SaZoT+PAf0haHJdl1ZQUqKP73sP7O8BkfE5
         O3Yg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWf1ndBcc2zpy8g3ZNfmXc6PJlJ+dXDBlUuwShb8iiixgNe1rvI
	s9XwxXvvRahxsgd8S+DbfQY=
X-Google-Smtp-Source: APXvYqwm8vCH7DLZ0GGlDc3JzbIvZlBdS3OGSfY+xqUtasEczmkUpy3NHC87dj7vU6vx1VzP0Hg3Yg==
X-Received: by 2002:a63:487:: with SMTP id 129mr36070496pge.193.1582251964732;
        Thu, 20 Feb 2020 18:26:04 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:b26:: with SMTP id 35ls69525pjq.1.gmail; Thu, 20 Feb
 2020 18:26:04 -0800 (PST)
X-Received: by 2002:a17:90b:11d0:: with SMTP id gv16mr206416pjb.109.1582251964290;
        Thu, 20 Feb 2020 18:26:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1582251964; cv=none;
        d=google.com; s=arc-20160816;
        b=OFyRYrIs0qcU0GXnLLHEwSsecRg7bKudzoPQtK7fUBqfraMdEBwIC1l/sUy2GX3F8I
         H+DvaM7k6R9f1Ksps4aQ3lM3GXT1oy2IQp4ZEnX0Du2MZ6RGtT4allaPlxyAmQaQdInR
         ci2tRZ7k1MB8RWAXNMz+7OsfwqNzWr7pw74vhTIh7T79kMUA75ZzLf1YXUdjvx8CK0+Y
         AJr47QR+fE6IXy5TCzYAP1sPQ3KJXSO1MORrdS7qSUM4AmPqUQjR08YkJz6IcAJrPof7
         vdGA4nZ5WVtVnQsR5lm5QmrArs8ZP/YCmtT3Nnk8TCWH9S/3VMzkj+SKwiPC8i7X1JLe
         zVdA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=+hoquSRmSStNE+C7Jl2I5aJPSs49KLjhudqCJthQfn8=;
        b=nn6b0oNFSAiiUOn3L20fFei2DCbPy5v/p7j1M+2HNvYQNFfaIWd9RoBjstX3rFURvs
         5sEH0tHAoiytN44UCu6Z4uLMvfZ+Cvye96K5wXbqgy2MKfUV6Bfmon2EAyGKASRQg8y6
         tA/TSf6+8WD3GVyJL+6Dd8pjbh957zg3q5gt+Vpj2uF5OmQUl2zJ3FqxADf3m8XVpx/Z
         eynFXwKPddrzp30ifeQMHJQoa4HlnBzPUoC5j4pZdaoinC829J+FBxQGLDilqtxnlm9a
         CI5lqD3c4VsfJYjN8XehpNgKrXzd9oz6KP/4bVbqLqVFBRXC1wWcwHEf79xT8xN4GoST
         BA+A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.120 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0120.hostedemail.com. [216.40.44.120])
        by gmr-mx.google.com with ESMTPS id y13si55670plp.0.2020.02.20.18.26.03
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 20 Feb 2020 18:26:04 -0800 (PST)
Received-SPF: neutral (google.com: 216.40.44.120 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.120;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay01.hostedemail.com (Postfix) with ESMTP id D4E4E100E7B44;
	Fri, 21 Feb 2020 02:26:02 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 50,0,0,,d41d8cd98f00b204,joe@perches.com,,RULES_HIT:41:355:379:599:800:960:967:973:982:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1534:1543:1593:1594:1605:1711:1730:1747:1777:1792:2393:2525:2553:2560:2563:2682:2685:2828:2859:2933:2937:2939:2942:2945:2947:2951:2954:3022:3138:3139:3140:3141:3142:3622:3865:3866:3867:3868:3870:3871:3872:3874:3934:3936:3938:3941:3944:3947:3950:3953:3956:3959:4321:4605:5007:6119:7875:7903:7974:8531:8985:9025:10004:10400:10848:10967:11232:11657:11658:11854:11914:12043:12050:12291:12296:12297:12438:12555:12683:12740:12760:12895:13149:13161:13229:13230:13255:13439:14180:14181:14659:14721:14877:21080:21324:21433:21611:21627:21740:21811:30054:30090:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:1,LUA_SUMMARY:none
X-HE-Tag: kiss25_8bfb524244a5a
X-Filterd-Recvd-Size: 4638
Received: from XPS-9350.home (unknown [47.151.143.254])
	(Authenticated sender: joe@perches.com)
	by omf13.hostedemail.com (Postfix) with ESMTPA;
	Fri, 21 Feb 2020 02:26:01 +0000 (UTC)
Message-ID: <a588204afbfe4c8dd56d0cb00d8e6e14dc561a62.camel@perches.com>
Subject: Re: [PATCH] cvt_fallthrough: A tool to convert /* fallthrough */
 comments to fallthrough;
From: Joe Perches <joe@perches.com>
To: Andrew Morton <akpm@linux-foundation.org>
Cc: linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com, 
	"Gustavo A. R. Silva"
	 <gustavo@embeddedor.com>
Date: Thu, 20 Feb 2020 18:24:38 -0800
In-Reply-To: <20200220162114.138f976ae16a5e58e13a51ae@linux-foundation.org>
References: <b56602fcf79f849e733e7b521bb0e17895d390fa.1582230379.git.joe@perches.com>
	 <20200220162114.138f976ae16a5e58e13a51ae@linux-foundation.org>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.34.1-2
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.120 is neither permitted nor denied by best guess
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

On Thu, 2020-02-20 at 16:21 -0800, Andrew Morton wrote:
> On Thu, 20 Feb 2020 12:30:21 -0800 Joe Perches <joe@perches.com> wrote:
> 
> > Convert /* fallthrough */ style comments to the pseudo-keyword fallthrough
> > to allow clang 10 and higher to work at finding missing fallthroughs too.
> > 
> > Requires a git repository and overwrites the input files.
> > 
> > Typical command use:
> >     ./scripts/cvt_fallthrough.pl <path|file>
> > 
> > i.e.:
> > 
> >    $ ./scripts/cvt_fallthrough.pl block
> >      converts all files in block and its subdirectories
> >    $ ./scripts/cvt_fallthrough.pl drivers/net/wireless/zydas/zd1201.c
> >      converts a single file
> > 
> > A fallthrough comment with additional comments is converted akin to:
> > 
> > -		/* fall through - maybe userspace knows this conn_id. */
> > +		fallthrough;    /* maybe userspace knows this conn_id */
> > 
> > A fallthrough comment or fallthrough; between successive case statements
> > is deleted.
> > 
> > e.g.:
> > 
> >     case FOO:
> >     	/* fallthrough */ (or fallthrough;)
> >     case BAR:
> > 
> > is converted to:
> > 
> >     case FOO:
> >     case BAR:
> > 
> > Signed-off-by: Joe Perches <joe@perches.com>
> > ---
> >  scripts/cvt_fallthrough.pl | 215 +++++++++++++++++++++++++++++++++++++
> 
> Do we need this in the tree long-term?

Out-of-tree scripts aren't used by trivial patch submitters.

So no, not really.  I think it's a 'good to have, short term'
script useful until at least most all of the conversions occur.

And I think having multiple concurrent styles for fallthrough
isn't great.

And I don't have the patience of someone like Gustavo Silva to
painstakin
gly shepherd hundreds of little patches either.
(thanks Gustavo, good
work...)

And it would be nice though to have some mechanism to get
scripted patches applied, either by subsystem or treewide.

> Or is it a matters of "hey
> Linus, please run this" then something like add a checkpatch rule to
> catch future slipups?

The checkpatch rule was added a week ago.
https://lore.kernel.org/lkml/8b6c1b9031ab9f3cdebada06b8d46467f1492d68.camel@perches.com/

Adding a --fix option wouldn't work as well as this script
to do conversions as the script is moderately complicated.

It does seem a treewide conversion like this could have a
small impact on stable trees, so any conversion should
probably be done by subsystem.

Anyway, the script does a pretty reasonable job at
conversions of the various styles of fallthrough comments.

Though there are some conversion that are not done when a
/* fallthrough */ comment is followed by another comment
before another case like:

	case FOO:
		/* fall through */
		/* another comment */
	case BAR:

Anyway, using today's -next, a treewide diffstat is:

$ git diff --shortstat
 1861 files changed, 4113 insertions(+), 4762 deletions(-)

And these are the most common conversions:

   2278 /* fall through */
    441 /* Fall through */
    253 /* fallthrough */
    164 /* FALLTHROUGH */
    116 /* fall-through */
     84 /* Fallthrough */
     33 /* FALL THROUGH */
     31 /* Fall through */				\
     27 /* FALLTHRU */
     24 /*FALLTHRU*/
     24 /* fallthru */
     19 /* fall thru */
     19 /* Fall Through */
     19 /* Fall-through */
     16 /* Else, fall through */
     15 /* fall-thru */
     13 /* Intentional fallthrough */
     13 /*FALLTHROUGH*/
     12 /* Fall thru */
     12 /* else, fall through */
     10 /*lint -fallthrough */
      9 /* Fall through. */
      9 }	/* fallthrough */
      8 /*fall through*/


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/a588204afbfe4c8dd56d0cb00d8e6e14dc561a62.camel%40perches.com.
