Return-Path: <clang-built-linux+bncBCYYJNMLYYMRBME5YCCAMGQEQP6IACI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103f.google.com (mail-pj1-x103f.google.com [IPv6:2607:f8b0:4864:20::103f])
	by mail.lfdr.de (Postfix) with ESMTPS id 211BF371729
	for <lists+clang-built-linux@lfdr.de>; Mon,  3 May 2021 16:54:42 +0200 (CEST)
Received: by mail-pj1-x103f.google.com with SMTP id g11-20020a17090a578bb029015564873bf4sf5006834pji.7
        for <lists+clang-built-linux@lfdr.de>; Mon, 03 May 2021 07:54:42 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1620053680; cv=pass;
        d=google.com; s=arc-20160816;
        b=PF+94nXUBxnp+X7LdzwQp1WYqzRXy1tSLihhyQ3ulSV0WFIfG3W4uCkTdXahqa5RF8
         BHH+p5xxENMhfI/h04AHwJuDVZ82wYDMdKlNq/+tfcuR9myy7pr19NzAp74mTqYeZ5mM
         ZeIBDIl3iApGHuPD3T+uQhyGYjJ4T4TyouSS9uRHO0Wz5Ltja1zb9MklaP9gzNzfJk0C
         rDBY0tIt6+WZS9qiNVy4FQAgnIqefD38dmptR62qghFoNkAzL/heRl6Q31s1Ge06bTnB
         lv0ghp2LtFH0AcfmXAkHjV4mCYlHRuJZH9/vjsh3rM5ctIypSUKYxm9H5P4xuLrdxkdl
         5LQQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=7VbGTYOQCkMTSutR325xEQouCVZ1jcl/4S0mRvP5N5s=;
        b=CvGGotTwR41TrI/Vd65nd9aMSTjCCpNFvwgIk+qtOLqCUuIHVVpNESukhz+a8ErcFh
         3acifirayrCtwCaWSrYexUvxJcu+fkdyY5tIUUUDtiU3wi9rJ/Pq2PFbLjMOf7orDX3o
         AsAKE/nCAOeIdr8F/79I9kZ/oUYgpwc7Cl2erxmgq+enR7yLidDzGhSEMgL7jJW0EdMn
         3qdbBfX4JHnG14fiWG1deOvvKMxrMoqT0yPcIp+33UVDk5dPWVg4MdPbH8yJIRWussKm
         oM6dS5G16riOzBhYDEB6eeF4Sjqj5UM/aIpOSafn/D0qfSWtpDalPkp4FgTzJ1e7Dlyl
         aIhA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of tytso@mit.edu designates 18.9.28.11 as permitted sender) smtp.mailfrom=tytso@mit.edu
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=7VbGTYOQCkMTSutR325xEQouCVZ1jcl/4S0mRvP5N5s=;
        b=PGz4g5QkBJn++vhES0Ohv5J1smxhll5ALb/ldlWd8+roNm8Tiu8t/qt6FVmq33txMJ
         B7W0Z0Vk2A1EsuF7kgFVHDOz7o8T3a1YG2jEdgBLAKpzKjZvtaJsgTubNe4PDAP5g4cd
         shfFiUn+0Hv1RwvX1Js8lNXIu456NvGulfPJkTVa/+Z2CgdSb1Da1ua+wgBquH8OBQwX
         DoR6Tg/rIQi8ea4SP2VUY8Nov8szJN0AnQHbdyYBQd2IvH4QK+pRQoMYmg43BgvV1rBX
         P09ajdDF+0VGfR8TDig9KZUOh+OJZFFyExQJoghq1oxfSwJnFPnYsVcuUcynrK1Eq3mU
         Hywg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=7VbGTYOQCkMTSutR325xEQouCVZ1jcl/4S0mRvP5N5s=;
        b=fiUttSDhZp1spQO8ZFRUFa4xTqcnT4FGTEVf+Is6XYAOPt5cRu3l+l9b90un+uHTlS
         F8YI3UnqMc5iCylDyWDqyYNGw1BO2/TnMdBDyUgzlYBApK5sY4PJx4RblRT+/f9CYVSs
         Qzd35Q13C/WpuyluGqZXVxoWpfH3ycrrpncIwUtE3AwSznVn1LB2T0OCb+uvRElv2Ew+
         ksrzmbQJRp4pmdKSj4iJKPYyyNC5QM+AnpNCw8GC7UI4O7Ehkp7lmtjD7/5WIPGUQ7Tn
         DFKhENHt2UA8PdhFnYFQZQ+ub7noa8PW9eRmjjq81o5rFVV+ARBKiYd5nYjmOXDp+Nkf
         8U9g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530GFjSnqm4zpnFmntbhcAJuqDflCdToSPizbWyCMTyvQynTysrT
	ffn+foK+tG1X/CEux7zn7V8=
X-Google-Smtp-Source: ABdhPJwnIiv6Hrpc7U0pc1M5KYm7aw4UvNNgrEA6MDfHsfiwNxhskuZAtt4Nf+DlI4pfMyuPT5vVJQ==
X-Received: by 2002:a63:4c0e:: with SMTP id z14mr18597808pga.30.1620053680448;
        Mon, 03 May 2021 07:54:40 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:5249:: with SMTP id q9ls1333615pgp.5.gmail; Mon, 03 May
 2021 07:54:40 -0700 (PDT)
X-Received: by 2002:a65:60d8:: with SMTP id r24mr18810692pgv.226.1620053679938;
        Mon, 03 May 2021 07:54:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1620053679; cv=none;
        d=google.com; s=arc-20160816;
        b=fi7uyU0JcL11drYkWzFszAOZGsW5x3nxZMM6dCqwJCjQcw76BrHuHR3LXKwwhg+iqe
         CY2uBgSnpEXx4EtcVi+9mUGsWpxv62c+EZJMnBQeGc4td2/ILU27QyuZ7oMx2JVk0UJO
         lbchCIG4LAtVRA4pQyWawTojMWi0EYIL0nWHb5Tyk1OyBpfixE/92/OAnUBIciQL6Qhm
         JPBBEvtfnPvm52ThYTL6liEIWnM8zeMGv7ELnIdcOrdXPCbbTK4mWKBZwEiL57bCHDEj
         /K0b6D+BsER2KjsW9aiNgOYilK5Lvfu8tmLFp0M5bLb7wdvJm7AswCXLJYbhsBpOmu4P
         dJVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date;
        bh=UFM7qJwXs0TUSsk1/0ivnzcFsGc4JFJYgeo9SDT/gqk=;
        b=PHTIUd58sWB7+1ukBm00SMUnJcOkFTYkmkUXa7xxbQ1BzAJwQxxJbwElGhj9pVydJN
         u7qPt3T0OaEOuDmhHjg69fxG86eZnVma2nqXYeQkyMRYu0nDpxVYJZkIfq3KFjy/vxSe
         t7AKMsGjPAJ6+mSd6qaeNDySJl3HamfMjqOk83Wzjr8itE5ltkeDGtvUFwAWHhmU/lTA
         DXoEAc6x/jrpcO1Byi7Ld0B0CQn7fsLsPKerOtnAXvA5IOYPX59+qj4wLWV+punHXHho
         9plcHCd20/JJUZWXkIl9yQYR+SuP9bdMeFin385ch42SVIdVuBo8grdURz9RuIOTobJW
         x4xQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of tytso@mit.edu designates 18.9.28.11 as permitted sender) smtp.mailfrom=tytso@mit.edu
Received: from outgoing.mit.edu (outgoing-auth-1.mit.edu. [18.9.28.11])
        by gmr-mx.google.com with ESMTPS id o13si251658plg.5.2021.05.03.07.54.39
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 03 May 2021 07:54:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of tytso@mit.edu designates 18.9.28.11 as permitted sender) client-ip=18.9.28.11;
Received: from cwcc.thunk.org (pool-72-74-133-215.bstnma.fios.verizon.net [72.74.133.215])
	(authenticated bits=0)
        (User authenticated as tytso@ATHENA.MIT.EDU)
	by outgoing.mit.edu (8.14.7/8.12.4) with ESMTP id 143EsaBc017067
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 3 May 2021 10:54:36 -0400
Received: by cwcc.thunk.org (Postfix, from userid 15806)
	id D763515C39C4; Mon,  3 May 2021 10:54:35 -0400 (EDT)
Date: Mon, 3 May 2021 10:54:35 -0400
From: "Theodore Ts'o" <tytso@mit.edu>
To: "Maciej W. Rozycki" <macro@orcam.me.uk>
Cc: Linus Torvalds <torvalds@linux-foundation.org>,
        Tom Stellard <tstellar@redhat.com>,
        Nick Desaulniers <ndesaulniers@google.com>,
        Masahiro Yamada <masahiroy@kernel.org>,
        Nathan Chancellor <nathan@kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        clang-built-linux <clang-built-linux@googlegroups.com>,
        Fangrui Song <maskray@google.com>, Serge Guelton <sguelton@redhat.com>,
        Sylvestre Ledru <sylvestre@mozilla.com>
Subject: Re: Very slow clang kernel config ..
Message-ID: <YJAOq9CD72EWaF8P@mit.edu>
References: <CAKwvOdk+V2dc31guafFM=N2ez4SrwCmah+mimUG3MzPMx_2efQ@mail.gmail.com>
 <CAKwvOdn3uXniVedgtpD8QFAd-hdVuVjGPa4-n0h64PTxT4XhWg@mail.gmail.com>
 <CAKwvOdm3D=dqKw=kx46PLaiqfHOZJL3QFKGc8kxqJqpwdFFWqw@mail.gmail.com>
 <CAKwvOdkp_P8BCtFuKqDrtC_=A89ZfDf66Yr3FL2e=ojwv4KaMA@mail.gmail.com>
 <CAHk-=wi1yiBBr3b3RbCEte6-yzAApsZN5zRdr3xoW8Av9jOX=Q@mail.gmail.com>
 <CAKwvOdk0nxxUATg2jEKgx4HutXCMXcW92SX3DT+uCTgqBwQHBg@mail.gmail.com>
 <1c5e05fa-a246-9456-ff4e-287960acb18c@redhat.com>
 <CAHk-=whs8QZf3YnifdLv57+FhBi5_WeNTG1B-suOES=RcUSmQg@mail.gmail.com>
 <alpine.DEB.2.21.2105020346520.2587@angie.orcam.me.uk>
 <YJAK1C1uLknYGYrH@mit.edu>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <YJAK1C1uLknYGYrH@mit.edu>
X-Original-Sender: tytso@mit.edu
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of tytso@mit.edu designates 18.9.28.11 as permitted
 sender) smtp.mailfrom=tytso@mit.edu
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

On Mon, May 03, 2021 at 10:38:12AM -0400, Theodore Ts'o wrote:
> On Mon, May 03, 2021 at 03:03:31AM +0200, Maciej W. Rozycki wrote:
> > 
> > People went through great efforts to support shared libraries, sacrificed
> > performance for it even back then when the computing power was much lower
> > than nowadays.
> 
> That was because memory was *incredibly* restrictive in those days.
> My first Linux server had one gig of memory, and so shared libraries
> provided a huge performance boost --- because otherwise systems would
> be swapping or paging their brains out.

Correction.  My bad, my first Linux machine had 16 megs of memory....

	     	      	    	    	   - Ted

> 
> However, these days, many if not most developers aren't capable of the
> discpline needed to maintained the ABI stability needed for shared
> libraries to work well.  I can think several packages where if you
> used shared libraries, the major version number would need to be
> bumped at every releases, because people don't know how to spell ABI,
> never mind be able to *preserve* ABI.  Heck, it's the same reason that
> we don't promise kernel ABI compatibility for kernel modules!
> 
> https://www.kernel.org/doc/Documentation/process/stable-api-nonsense.rst
> 
> And in the case of Debian, use of shared libraries means that every
> time you release a new version of, say, f2fs-tools, things can get
> stalled for months or in one case, over a year, due to the new package
> review process (a shared library version bump means a new binary
> package, and that in turn requires a full review of the entire source
> package for GPL compliance from scratch, and f2fs-tools has bumped
> their shared library major version *every* *single* *release*) ---
> during which time, security bug fixes were being held up due to the
> new package review tarpit.
> 
> If people could actually guarantee stable ABI's, then shared libraries
> might make sense.  E2fsprogs hasn't had a major version bump in shared
> libraries for over a decade (although some developers whine and
> complain about how I reject function signature changes in the
> libext2fs library to provide that ABI stability).  But how many
> userspace packages can make that claim?
> 
> 	  	       	    	 - Ted

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YJAOq9CD72EWaF8P%40mit.edu.
