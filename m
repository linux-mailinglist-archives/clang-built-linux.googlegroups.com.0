Return-Path: <clang-built-linux+bncBDY3NC743AGBBCF7TLZQKGQE5YWI2YQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-qk1-x73c.google.com (mail-qk1-x73c.google.com [IPv6:2607:f8b0:4864:20::73c])
	by mail.lfdr.de (Postfix) with ESMTPS id 63CC617E96C
	for <lists+clang-built-linux@lfdr.de>; Mon,  9 Mar 2020 20:56:58 +0100 (CET)
Received: by mail-qk1-x73c.google.com with SMTP id w2sf8073203qka.4
        for <lists+clang-built-linux@lfdr.de>; Mon, 09 Mar 2020 12:56:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1583783817; cv=pass;
        d=google.com; s=arc-20160816;
        b=k3htQJydm9PAPrbC07vDCqzdFu1l2CmggRwjcnp6TARn32gzUwB9F2pMljHxvaHq1V
         B77v/ufqT1zDo+AQbp5AiR/oQImaVwtpnfpf0YJ3c2lviuTJkFrl5fH/12Cn2zQc3PgJ
         1qbx5kf2g1N6srKeaKjD4ZEyP5/yaclHIbNjAeJK7lQyYmjsnbYYNZWtGlEbgPVzT7Zm
         otF2Par4NYPpSTHk0aKPmVbNH0jkJy6D78HLPNH/T63phO+913KFOz9781PcckfG41We
         d5WXWkVSVPEcwAL+7IzWM58xl6uK1RIfv1vZP+WFckSWEVx2kv1gUik12PqSxYsqbOWn
         0HlQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=UiuIIlZPQYcQyuZ5JasJhBcp4lPrshiGhRY7RePN5N8=;
        b=nFAwd4u1aNGP8QU6oaU7Sn1RIAlrDjFojQUfq0mZetTFiB5qfL9B5EpTUYrn/7YEw+
         700I2Yd77z9OiY0R6YKMM9YfK8kRKQUq+vePrfUklDq+pmyoBd/frmBVIGKd6mSmpYPP
         iWN+tDYCT4PBlySVMC4zeCH0nK6bwJwOfeVNkybwmgI3WGy8WRsT3aweYvPAR9Ec/RNz
         wZaSq3VfVylXvEaqlY1jeUoiH+GqIiGWcbRr8pcDszui/Vs5ysL5jxbzse1cs40E/m+a
         bKYnmNqwcofzZ6sQlkbUPrqwOBMg3Pt4uOFS5sZttXlEX7lYrs3Y+V/vlH95s6+kE/15
         OiPg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.239 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=UiuIIlZPQYcQyuZ5JasJhBcp4lPrshiGhRY7RePN5N8=;
        b=FvdDABTm68ZV1DLxkbC5QvllciExCnTscBLOhZpyKRLA/EsltM1gS40QAeOrFfV4f8
         4giil/V60Iuq3WUTk+m+5DS/AQC+BXzSwIKmpe1z1nDbmCCaQaq9ExM8YH9nPRBnWHt4
         Jl3gooDO953GwQ6EOGTOgKjN7PX+r7j3c6/MY3A7dvdT4m1fnV8CIfl4B8dv8XaDrO7t
         DsuVXQiM2xvfa0XbKs4R1E1cIyUHB2Rsq5NIXYTUj59RPmecg1j27IjcG5loy/eIfqhH
         TRtf9iOwG97nxrEkvMzyqPjX4pu1ioPJaPunz2MHKu3Nn4Ve6yDtHfIY7bxXI2UsUOEH
         Msug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=UiuIIlZPQYcQyuZ5JasJhBcp4lPrshiGhRY7RePN5N8=;
        b=Xfa2p+YuQQlAgwLxpMc09qyjZxjOt4o1ujrm//mQoKBpAFZHBZe8ZkjVA/xW079k1d
         p5JlRttRXpVamAjgBT2J+qDoLttLMH/pBKLGhs/WhH0YP25dwZqgYb8Co/X7nw4AUDN9
         nCGarDZUlUsj6spoBNwMxbKS+duCf+ULJD1MROiDRFqCLGe4FtaJ2IE92jVeWUUY80ID
         FzsHjqsJZv0rHqBmnSg04ybc5RMRw4H0JJu5/UOJD+LG8GyJ5KH+d6LrDHZvmdVOLDCB
         LeRh+iHRqz5Y9yAHrjrP1RSUj8DgaQkV0nVOes7TF3IZ3pQtplkE3ztlni1laXG84ttD
         qy2g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: ANhLgQ0IbRq8iduq4Bo6D4VK5vD36PzyBkGYwXlL8g449qyoCh09Ns1F
	sfuHTc8rD+vrYy8tjCHbV7g=
X-Google-Smtp-Source: ADFU+vuM6DEyz6CyNX/od1APIfJ41NhLjRwC85EOmK0jnm/ZzsaD1KdMQQpyt7u/mD+/UaP3mNhGpg==
X-Received: by 2002:aed:30ce:: with SMTP id 72mr15333180qtf.89.1583783816514;
        Mon, 09 Mar 2020 12:56:56 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6214:126:: with SMTP id w6ls1949718qvs.10.gmail; Mon, 09
 Mar 2020 12:56:56 -0700 (PDT)
X-Received: by 2002:a0c:9164:: with SMTP id q91mr15570270qvq.115.1583783816115;
        Mon, 09 Mar 2020 12:56:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583783816; cv=none;
        d=google.com; s=arc-20160816;
        b=Z2iQjQqvMlqC7wlDQtY2hnBoc2xiKfu27rV2pSr/ezdw0JSLSeQIlIeve/lTceIajY
         49RELF+3jTdx6YxovIBrvJt1Re9xpBjSMYefauwmMAEc50RuEefuwT/lEdd8d0caT7P+
         ix41MpTdlohM9a8RSsyPWZ8y6rUWqUWNFBwlghNrfbQzpKxUr5LNpb7+ZCqcVilvg36A
         6ZNurYTAVhggr24TySCmEniFTRRVME6qVDqjiwhnMfnyVEEC2WxR294J/HHJ/gxc+QuP
         fO21eNaX8xRHO4Pu2qeSxY9EzvfqZPbavZnBay2bs29p0QqYaYlfzFG74IUhf5mbqQta
         A3AA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=qBogwVdFMXKoaVgl0h8uBfoEf99BbdxCJE2DG/IthGQ=;
        b=Du+K9ryMlXEATv89MWhZCCiU96DyoZdD6l1I9BfW13FuJoyoFXhYVQldxV7XiB0xyY
         N3Dq0GkZ+BpyWtwzuls1hY0wclP2qgf7TPCTsmRFhEqpV6IbUlyMXWtJOOp/+xT4oxGq
         rgVlp5m69TeWutFixD8Dl7qQzSnsgzdrymY8RYoRyfo5Ywo7PCVtoY2aE/tiFTZltsnV
         o+crtQoX5BAt75bq0x+LUF9cirkzA2RGDpoHtYcjySR7NcNcBFmOeSHeMYfDKWos27mE
         aCil334ypwk0YIbKNPFxH21Mm0L7vPhkUnt+1Y1aGgzygfslZSRk6xXIC89szf4JeGAq
         Pr+w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.239 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0239.hostedemail.com. [216.40.44.239])
        by gmr-mx.google.com with ESMTPS id g42si715943qtk.3.2020.03.09.12.56.56
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 09 Mar 2020 12:56:56 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.239 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.239;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay08.hostedemail.com (Postfix) with ESMTP id BB3C3182CED2A;
	Mon,  9 Mar 2020 19:56:55 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 10,1,0,,d41d8cd98f00b204,joe@perches.com,,RULES_HIT:41:355:379:599:800:960:967:973:982:988:989:1260:1277:1311:1313:1314:1345:1359:1431:1437:1515:1516:1518:1534:1543:1593:1594:1605:1711:1730:1747:1777:1792:2393:2525:2553:2565:2682:2685:2828:2859:2933:2937:2939:2942:2945:2947:2951:2954:3022:3138:3139:3140:3141:3142:3622:3865:3866:3867:3868:3870:3871:3872:3873:3874:3934:3936:3938:3941:3944:3947:3950:3953:3956:3959:4321:4384:4605:5007:7875:7903:7974:8526:8531:9025:10004:10400:10848:10967:11232:11658:11914:12043:12291:12296:12297:12555:12663:12683:12698:12737:12740:12760:12895:13149:13230:13255:13439:14096:14097:14157:14180:14181:14659:14721:21080:21324:21433:21451:21627:21740:30012:30041:30045:30054:30090:30091,0,RBL:none,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,SPF:,MSBL:0,DNSBL:none,Custom_rules:0:0:0,LFtime:1,LUA_SUMMARY:none
X-HE-Tag: fork76_769655216b051
X-Filterd-Recvd-Size: 4485
Received: from XPS-9350.home (unknown [47.151.143.254])
	(Authenticated sender: joe@perches.com)
	by omf10.hostedemail.com (Postfix) with ESMTPA;
	Mon,  9 Mar 2020 19:56:54 +0000 (UTC)
Message-ID: <e8db6d1a92001b02bbe2c2a1fc3413e1d44aa0a4.camel@perches.com>
Subject: Re: [PATCH] cvt_fallthrough: A tool to convert /* fallthrough */
 comments to fallthrough;
From: Joe Perches <joe@perches.com>
To: Nick Desaulniers <ndesaulniers@google.com>, Andrew Morton
	 <akpm@linux-foundation.org>
Cc: LKML <linux-kernel@vger.kernel.org>, clang-built-linux
	 <clang-built-linux@googlegroups.com>
Date: Mon, 09 Mar 2020 12:55:14 -0700
In-Reply-To: <CAKwvOdkzc3AtpkRcZU06yvAEzp_bjw55HkpGui6RsAcy=FhnJw@mail.gmail.com>
References: <b56602fcf79f849e733e7b521bb0e17895d390fa.1582230379.git.joe@perches.com>
	 <20200220162114.138f976ae16a5e58e13a51ae@linux-foundation.org>
	 <CAKwvOdkzc3AtpkRcZU06yvAEzp_bjw55HkpGui6RsAcy=FhnJw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.34.1-2
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.239 is neither permitted nor denied by best guess
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

On Mon, 2020-03-09 at 12:36 -0700, Nick Desaulniers wrote:
> On Thu, Feb 20, 2020 at 4:21 PM Andrew Morton <akpm@linux-foundation.org> wrote:
> > On Thu, 20 Feb 2020 12:30:21 -0800 Joe Perches <joe@perches.com> wrote:
> > 
> > > Convert /* fallthrough */ style comments to the pseudo-keyword fallthrough
> > > to allow clang 10 and higher to work at finding missing fallthroughs too.
> > > 
> > > Requires a git repository and overwrites the input files.
> > > 
> > > Typical command use:
> > >     ./scripts/cvt_fallthrough.pl <path|file>
> > > 
> > > i.e.:
> > > 
> > >    $ ./scripts/cvt_fallthrough.pl block
> > >      converts all files in block and its subdirectories
> > >    $ ./scripts/cvt_fallthrough.pl drivers/net/wireless/zydas/zd1201.c
> > >      converts a single file
> > > 
> > > A fallthrough comment with additional comments is converted akin to:
> > > 
> > > -             /* fall through - maybe userspace knows this conn_id. */
> > > +             fallthrough;    /* maybe userspace knows this conn_id */
> > > 
> > > A fallthrough comment or fallthrough; between successive case statements
> > > is deleted.
> > > 
> > > e.g.:
> > > 
> > >     case FOO:
> > >       /* fallthrough */ (or fallthrough;)
> > >     case BAR:
> > > 
> > > is converted to:
> > > 
> > >     case FOO:
> > >     case BAR:
> > > 
> > > Signed-off-by: Joe Perches <joe@perches.com>
> > > ---
> > >  scripts/cvt_fallthrough.pl | 215 +++++++++++++++++++++++++++++++++++++
> > 
> > Do we need this in the tree long-term?  Or is it a matters of "hey
> > Linus, please run this" then something like add a checkpatch rule to
> > catch future slipups?
> 
> Just for some added context, please see
> https://reviews.llvm.org/D73852, where support for parsing some forms
> of fallthrough statements was added to Clang in a broken state by a
> contributor, but then ripped out by the code owner (of the clang front
> end to LLVM, and also happens to be the C++ ISO spec editor).  He
> provides further clarification
> https://bugs.llvm.org/show_bug.cgi?id=43465#c37.
> 
> I'm inclined to agree with him; to implement this, we need to keep
> around comments for semantic analyses, a later phase of compilation
> than preprocessing.  It feels like a layering violation to either not
> discard comments as soon as possible, or emit diagnostics from the
> preprocessor.  And as Joe's data shows, there's the classic issue
> faced when using regexes to solve a problem; suddenly you now have two
> problems.
> https://xkcd.com/1171/
> 
> I would like to see this patch landed, though I am curious as toward's
> Andrew's question ('Or is it a matters of "hey Linus, please run
> this"') of what's the imagined workflow here, since it seems like the
> script needs to be run per file. I suppose you could still do that
> treewide, but is that the intention, or is it to do so on a per
> subsystem level?

A single treewide run of a script like this really could make
it quite hard to later backport various fixes to stable trees.

A depth-first per-maintained subsystem run of the script with
commits could be useful and would much more easily allow backports.

Unfortunately there's no tool to apply such a script to the tree
per subsystem as far as I know.

Such a depth-first apply and commit tool could really be quite
useful though.


-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/e8db6d1a92001b02bbe2c2a1fc3413e1d44aa0a4.camel%40perches.com.
