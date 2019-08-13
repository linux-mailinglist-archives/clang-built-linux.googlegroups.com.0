Return-Path: <clang-built-linux+bncBDY3NC743AGBBA6CZHVAKGQEZWXZ7CA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yw1-xc37.google.com (mail-yw1-xc37.google.com [IPv6:2607:f8b0:4864:20::c37])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A4698B071
	for <lists+clang-built-linux@lfdr.de>; Tue, 13 Aug 2019 09:04:36 +0200 (CEST)
Received: by mail-yw1-xc37.google.com with SMTP id f15sf79463729ywb.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 13 Aug 2019 00:04:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1565679875; cv=pass;
        d=google.com; s=arc-20160816;
        b=Go/SRlXTuT56TIacV8l5DtrFJR/FAFrVnxq2AYvRZ7VHdbN9StLowLABmjcvHOgBln
         hDsLwOP/LpasYmzlzA1+9AHwXo6b04omVDwI2Up0F/nmHJvt8eHPhNC6GAwcWd6Xw7tv
         ril3uiRL2/lUzVU3zlX9VGf3Migt9/SqTo5/t0/X+53qkrStiHylU/v37p2plDYmqv0N
         bHxmKI9a/6Ef20L1yoJ75qJhlVuqtnALXGQBamkr+w+kl0zc6N/QriBfgf/tpdjC3J3N
         7dsFDCLK4kK9NSGHEYT1vB9uiqgqKvkJR/rCk2CLxoA5bEgJ8JnqRG62a18fr41HDGAu
         fyJw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:sender
         :dkim-signature;
        bh=E5VYBo9b/cqGHwTey0Q5Zg7oh1qnNAlhnkDiafmWByk=;
        b=x/QGDr+pGpsnSujsCWpdXX75AMSX+tN8wTA+dIBXKA4AvDhWcLiWw23MUpxXwKTip5
         4XRfOeUnHfBxuas0KPjeCK0Gg6lB+ER1BJnrUHlH+vRCm3tbbATWQi9aV+RLGllP+RCJ
         oLJ89k9Zsqs0CTmW37hYwSdYa2wFT4msrY85l2PE6btSRsKJi/JGo9Thf/JuAvdteAIm
         +kN2XvqHwAy6PT1GnODwd3GcwhD7z11hFE9EywQYwKwbTrJPb3qRnvEsMatfOn4o1DKP
         rz+DWEkxfQfxgkLpFDH546Ta1DtJjEO+lqdQ9ktSu4xqRj6K92I20RJAF/unEB2Z9neW
         HfaA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.73 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=E5VYBo9b/cqGHwTey0Q5Zg7oh1qnNAlhnkDiafmWByk=;
        b=afJVO1X6MoBVdoXL11eJHr3yX564ccfPUXvcFYV2JI6s0fxDZz8G2nI3KhKgcZkbVu
         TAN7ZLLv2b8XKmrT3i+h0Or4aHeLVNLUXRmW3cLX+NnsT6cJNADfYcOY7y65T7ulrXXD
         QRPrkn2/EISwaLSwRGt7+BlyDdhVmjn6MXwOKE7P5PLDuBCtFDze867RpMbPjJNbruqt
         9D4SsQBDDXd8K6Vexj9HsE3X2FSagSxp0bX+sol5kZotcdUE22dy6WywZ7iIuV/7x2Zg
         u5UDVWYiKyhK8jF8omHKpKo0DuXt85tbgKSDCHS9ku6RtWArisJ/UvGJjESAS0/wE6CH
         MBlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:message-id:subject:from:to:cc:date
         :in-reply-to:references:user-agent:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=E5VYBo9b/cqGHwTey0Q5Zg7oh1qnNAlhnkDiafmWByk=;
        b=lSDeVm/DgTmG1w0RHotTWwnJ9vM1RnjMfpnQkCq6RcQsODRWJS9FvhERyY/It32my8
         kCIBDz6tFYRhfYV7Y9bMDOoBCzcQjoKlxoCOEwuXHIItmlWCbXhD8zz9PxFLBxWgEz0N
         NM+ua9TubVq5VT98eAVzuZOZu9bQTEj77cjq59JleP5CqPGCuAAYVtGlPKBXhbAdzCJl
         elUujbLO9Ksbb0OiPy+BF5rO6pAb+EeLWnrVxZM4PAaSmXqlHSJ6Ko2FHDkIgiZzPAS9
         y+wtEP1IDylK8ZgLpTfjPpdm96stfLpXWN/ArLsu0pBKhIK8zkv/6Za8ZRjIU5EAf0bo
         KhHw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAXqxBbTSYteQE4Gy2cyfYy+3llS8pWveBKpcgnx4+MdNvY3qk+a
	VIU3HlAaO/i8UyXNycG4E6Y=
X-Google-Smtp-Source: APXvYqwuAT++FhlSTZsHsTsE1J3Qa3q1mwy9C/dXvGS6dORzEulrmpefJjRLZApflGf2vbhj5o3Uhg==
X-Received: by 2002:a81:2948:: with SMTP id p69mr26964858ywp.264.1565679875367;
        Tue, 13 Aug 2019 00:04:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:700a:: with SMTP id l10ls22300590ybc.3.gmail; Tue, 13
 Aug 2019 00:04:35 -0700 (PDT)
X-Received: by 2002:a25:8808:: with SMTP id c8mr19959952ybl.318.1565679875100;
        Tue, 13 Aug 2019 00:04:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1565679875; cv=none;
        d=google.com; s=arc-20160816;
        b=Slpj+ZUyD0ot63rmP522CJHGZINQV5wdIiWEfX+BjR3lBtrwn2OALgaXrmuZPL8avE
         ICUA8Zsyc6E3JHDU7Dl+j1EerDFth5M6j3e2fvdKJYKWMGfaUkjIR2lG0Av1eVCFPscC
         s0WLuVbOPKf+Pw9ghFIsui8NLszhvwU8p4IWfSxuiWo/2raCNSnd5lW3DQvV/CRIXWEE
         N3/5tlY5YW0CFPDVT2EiaJ8XTeTA5Vgm6hOjGdIWg+UfpZIjWvynHGIql7fhkpAgcOTT
         THiWHdt6PKppg+xTU7eYsfC5/RTdFPp/ZSK2TqZ8qrPgu8SaUgMgZZiCU3jVjWIMGz9f
         Nm1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id;
        bh=/Yqo0bJuX6eSveP3a+AQDr1MBqQ3x5KP57NNV8B3XsU=;
        b=I+420M+sSweJFLG6ojPWmyYrAJUu3JfXmT/UNVXlHZqW9uZtA1HlWZXyNkocpTduvW
         p4YBWL8VFU9V0WOILty3buX1zTT5fZmIs3zaHMwLHorKwa/q+mDg5mAXdnOUtAxp6d2C
         YAuT5qIEBTGFGj1ZoOIKfpQ+ISQFwStjPunuBYZEjBEZGeQ5HTLg/Q5vPl8mj7wBzay1
         CAEqDldjm2+OLUhTTHmcO0OLp/p2puKVnpWN8GyckFFuy6UwOcIy2zJQrY8p+H/pzgjD
         o/sqgZHhqUoveehTDqEhqGuC1I1QGAOVLEXVPR0ks7FOVdizYYIgXw/hCF31/IFxvOCz
         9opQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 216.40.44.73 is neither permitted nor denied by best guess record for domain of joe@perches.com) smtp.mailfrom=joe@perches.com
Received: from smtprelay.hostedemail.com (smtprelay0073.hostedemail.com. [216.40.44.73])
        by gmr-mx.google.com with ESMTPS id v127si4620318ywv.2.2019.08.13.00.04.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Aug 2019 00:04:35 -0700 (PDT)
Received-SPF: neutral (google.com: 216.40.44.73 is neither permitted nor denied by best guess record for domain of joe@perches.com) client-ip=216.40.44.73;
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net [216.40.38.60])
	by smtprelay02.hostedemail.com (Postfix) with ESMTP id 86BA53811;
	Tue, 13 Aug 2019 07:04:34 +0000 (UTC)
X-Session-Marker: 6A6F6540706572636865732E636F6D
X-Spam-Summary: 40,2.5,0,,d41d8cd98f00b204,joe@perches.com,:::::::::::::::::::,RULES_HIT:41:355:379:599:800:960:967:973:981:982:988:989:1260:1277:1311:1313:1314:1345:1359:1437:1515:1516:1518:1535:1544:1593:1594:1605:1711:1730:1747:1777:1792:2198:2199:2393:2525:2553:2567:2682:2685:2693:2731:2828:2859:2892:2933:2937:2939:2942:2945:2947:2951:2954:3022:3138:3139:3140:3141:3142:3622:3865:3866:3867:3868:3870:3871:3872:3873:3874:3934:3936:3938:3941:3944:3947:3950:3953:3956:3959:4250:4321:4387:4605:5007:6119:6691:7903:8660:8957:9010:9025:10011:10394:10848:11026:11232:11658:11914:12043:12050:12297:12438:12555:12679:12740:12760:12895:12986:13095:13148:13161:13229:13230:13439:14181:14659:14721:21063:21080:21365:21366:21433:21451:21627:21740:21789:21796:21811:21819:30012:30022:30029:30034:30036:30054:30056:30060:30070:30075:30083:30090:30091,0,RBL:23.242.196.136:@perches.com:.lbl8.mailshell.net-62.8.0.180 64.201.201.201,CacheIP:none,Bayesian:0.5,0.5,0.5,Netcheck:none,DomainCache:0,MSF:not bulk,S
X-HE-Tag: spot34_7efd70b731944
X-Filterd-Recvd-Size: 5872
Received: from XPS-9350 (cpe-23-242-196-136.socal.res.rr.com [23.242.196.136])
	(Authenticated sender: joe@perches.com)
	by omf02.hostedemail.com (Postfix) with ESMTPA;
	Tue, 13 Aug 2019 07:04:32 +0000 (UTC)
Message-ID: <3078e553a777976655f72718d088791363544caa.camel@perches.com>
Subject: Re: [PATCH v2] kbuild: Change fallthrough comments to attributes
From: Joe Perches <joe@perches.com>
To: Nathan Chancellor <natechancellor@gmail.com>, Nick Desaulniers
	 <ndesaulniers@google.com>
Cc: Nathan Huckleberry <nhuck@google.com>, Masahiro Yamada
 <yamada.masahiro@socionext.com>, Michal Marek <michal.lkml@markovi.net>, 
 Linux Kbuild mailing list <linux-kbuild@vger.kernel.org>, LKML
 <linux-kernel@vger.kernel.org>, Linux Memory Management List
 <linux-mm@kvack.org>, clang-built-linux
 <clang-built-linux@googlegroups.com>,  "Gustavo A. R. Silva"
 <gustavo@embeddedor.com>
Date: Tue, 13 Aug 2019 00:04:30 -0700
In-Reply-To: <20190813063327.GA46858@archlinux-threadripper>
References: <20190812214711.83710-1-nhuck@google.com>
	 <20190812221416.139678-1-nhuck@google.com>
	 <814c1b19141022946d3e0f7e24d69658d7a512e4.camel@perches.com>
	 <CAKwvOdnpXqoQDmHVRCh0qX=Yh-8UpEWJ0C3S=syn1KN8rB3OGQ@mail.gmail.com>
	 <20190813063327.GA46858@archlinux-threadripper>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.30.5-0ubuntu0.18.10.1
MIME-Version: 1.0
X-Original-Sender: joe@perches.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=neutral
 (google.com: 216.40.44.73 is neither permitted nor denied by best guess
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

On Mon, 2019-08-12 at 23:33 -0700, Nathan Chancellor wrote:
> On Mon, Aug 12, 2019 at 04:11:26PM -0700, Nick Desaulniers wrote:
> > Correct, Nathan is currently implementing support for attribute
> > fallthrough in Clang in:
> > https://reviews.llvm.org/D64838
> > 
> > I asked him in person to evaluate how many warnings we'd see in an
> > arm64 defconfig with his patch applied.  There were on the order of
> > 50k warnings, mostly from these headers.  I asked him to send these
> > patches, then land support in the compiler, that way should our CI
> > catch fire overnight, we can carry out of tree fixes until they land.
> > With the changes here to Makefile.extrawarn, we should not need to
> > carry any out of tree patches.
> 
> I think that if we are modifying this callsite to be favorable to clang,
> we should consider a straight revert of commit bfd77145f35c ("Makefile:
> Convert -Wimplicit-fallthrough=3 to just -Wipmlicit-fallthrough for
> clang").

oh bother.

> It would save us a change in scripts/Makefile.extrawarn and
> tying testing of this warning to W=1 will make the build noisy from
> all of the other warnings that we don't care about plus we will need to
> revert that change once we have finished the conversion process anyways.
> I think it is cleaner to just pass KCFLAGS=-Wimplicit-fallthrough to
> make when testing so that just that additional warning appears but
> that is obviously subjective.
> 
> > > You might consider trying out the scripted conversion tool
> > > attached to this email:
> > > 
> > > https://lore.kernel.org/lkml/61ddbb86d5e68a15e24ccb06d9b399bbf5ce2da7.camel@perches.com/
> 
> I gave the script a go earlier today and it does a reasonable job at
> convering the comments to the fallthrough keyword. Here is a list of
> the warnings I still see in an x86 allyesconfig build with D64838 on
> next-20190812:
> 
> https://gist.github.com/ffbd71b48ba197837e1bdd9bb863b85f

> I have gone through about 20-30 of them and while there are a few missed
> conversion spots (which is obviously fine for a treewide conversion),

The _vast_ majority of case /* fallthrough */ style comments
in switch
blocks are immediately before another case or default

The afs ones seem to be because the last comment in the block
is not the fallthrough, but a description of the next case;

e.g.: from fs/afs/fsclient.c:

		/* extract the volume name */
	case 3:
		_debug("extract volname");
		ret = afs_extract_data(call, true);
		if (ret < 0)
			return ret;

		p = call->buffer;
		p[call->count] = 0;
		_debug("volname '%s'", p);
		afs_extract_to_tmp(call);
		call->unmarshall++;
		/* Fall through */

		/* extract the offline message length */
	case 4:

The script modifies a /* fallthrough */ style comment
only if the next non-blank line is 'case <foo>' or "default:'

There are many other /* fallthrough */ style comments
that are not actually fallthroughs or used in switch
blocks so this can't really be automated particularly
easily.

Likely these remainders would have to be converted manually.

> the majority of them come from a disagreement between GCC and Clang on
> emitting a warning when falling through to a case statement that is
> either the last one and empty or simply breaks..
> 
> Example: https://godbolt.org/z/xgkvIh
> 
> I have more information on our issue tracker if anyone else wants to
> take a look: https://github.com/ClangBuiltLinux/linux/issues/636
> 
> I personally think that GCC is right and Clang should adapt but I don't
> know enough about the Clang codebase to know how feasible this is.

I think gcc is wrong here and code like

	switch (foo) {
	case 1:
		bar = 1;
	default:
		break;
	}

should emit a fallthrough warning.

> I just know there will be even more churn than necessary if we have to
> annotate all of those places, taking the conversion process from maybe a
> release cycle to several.

Luckily, there's a list so it's not a hard problem
and it's easily scriptable.

There are < 350 entries, not many really.

btw: What does the 1st column mean?
      
              1 fs/xfs/scrub/agheader.c:89:2: warning: unannotated fall-through between switch labels [-Wimplicit-fallthrough]
           3507 include/linux/jhash.h:113:2: warning: unannotated fall-through between switch labels [-Wimplicit-fallthrough]

Number of times emitted?

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/3078e553a777976655f72718d088791363544caa.camel%40perches.com.
