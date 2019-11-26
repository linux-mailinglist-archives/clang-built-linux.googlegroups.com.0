Return-Path: <clang-built-linux+bncBCX2JBVY5MBBBWGG6LXAKGQEAYSBJYY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb38.google.com (mail-yb1-xb38.google.com [IPv6:2607:f8b0:4864:20::b38])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BFDE10982F
	for <lists+clang-built-linux@lfdr.de>; Tue, 26 Nov 2019 05:00:25 +0100 (CET)
Received: by mail-yb1-xb38.google.com with SMTP id f4sf11961838yba.22
        for <lists+clang-built-linux@lfdr.de>; Mon, 25 Nov 2019 20:00:25 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1574740824; cv=pass;
        d=google.com; s=arc-20160816;
        b=MBw54X0ZdyOELnq7FiHt4zmSkMCgjM40UIAOIU/4EXpKN2qnehwyiZZ0Hp8r7XIMC9
         UWeIp9+iHGuqnsJd5PQilCgw4zpZLZ7RWhdl2TJivNcPRfeA+8Qf0cAiMABXR7QUcGfo
         ZGy4xwIgKtZr6n7TLtZkAMiDWy6uJLTnzD9Uycnmfjzek70RYUueMuA7wvgkongn1jgO
         QOpz7TWpzjnJUQWw1LH2tthv4AzSNNVfGZrS9asaC6gvX8iBFngPb7CTd/wwHqcgxd6Q
         cbQTz2zZG3cHLUH5uGLIgcmXSMr4Xza0P4kBfwcudbf0N2PnNG/Yq8KxbHfzYMboObuT
         PesQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=YIUUwZFDu0ESx9WpAx4lmWVT5oWNfsBFsC/WRI/l6f0=;
        b=yfYPN4JS0bb80QpUUjc992pPvIlqDfwaCl+pYe5xzizkNvIechX8EpPXsfgsj83N6r
         7cIr5+iZqeOsVLyaDpHmTZqPWPH8FPDcxchi+IPW2ToDlhAbrla5yl0OXTCgtTOcXi97
         5Xv/xZCn1Xd7qK3CkXD/Vr3sGbnubW9BZ7ut913g0BHmulTziQfgM8s9oiZYy091G5r2
         RLuUJuZJCIa+sFZF5l0x6nLP/Pcx3n0BY76gPB4PBw0txbsNsSPHGah2hNO0hJKUkAA7
         mFV9FUxKI8IFl+GFzF1NCOrZpS4efQCLo0dXqVltxMpWDnLW+ECTBSBni8ZHodc1POaB
         ih3w==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=YIUUwZFDu0ESx9WpAx4lmWVT5oWNfsBFsC/WRI/l6f0=;
        b=Z4Yp9KweyAlioBYgHbCMGDv34bUqdpA1ImUwALn3ZWm2+6VvNKDd2NbtO01WOkmVpJ
         og+kqIP7/QZx4YFrG2nnRou0Ge6udN286XGssya+ffuePFk0C0uxymk7Ows3k3H9PZzr
         oQDCYXwwFwlt01c41y5DubX5kkFK+OBMt/P31u2FA2j1KPFSHiP2rVnt9HMQe3LOTaNk
         JSi+z7mM7hA+rx0zZH4+7dOU9MhPgEjG34MBK/EUXNa9x7lXhr3Ywu+GumFl/1IbNQOJ
         1HH97O912UXiSIk9exxrexAJT6jX5+/s/0dtQ3onSnXKj1hSRAVnID2/OigRv8pBRrir
         T5+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=YIUUwZFDu0ESx9WpAx4lmWVT5oWNfsBFsC/WRI/l6f0=;
        b=KPNlG35/NzX86ebKmIp+8htAa4TzYpAp0CHJ6A+yARPVbqBKr3AClvSmVZDif+LETD
         Fbfa2iawq+SsOM7ZvThDWuKiDf9Id+AlaebIR7SeXXLJneDa0pOqXm8wGZYklsSmYdiu
         f95jBASkI7aKl5sZHpsHqEnoILwm5BDU1xk60eruGy139Xlnb9SVg+SFR+hDKfUd8yL1
         PJEMxHhiAmCAUCD1uMf6rLkxtZ6jn6YMOpMB7uXc+iCtAu8+mA0TjjiKq0dKCmatuP6y
         Rs4UVauGJROWgubfvohXW5ypj5CK61GUuZQ/tJ1f3qrZdbwWp4ZBE3Upnk5ZnbGyVAS1
         +new==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAWvx7PSS0u+mKVQUzis2o2iRRvsJU+0hePCh9Ew0/UvBKP3sayR
	XpHWfjhlEqYOSJJZMEWXQbg=
X-Google-Smtp-Source: APXvYqztvsBd3bO7PDhn5Q/QNbLaV680BMMCQpWdHlS6r/MivL7ZvtONhld3v0mYB1IQYjeUUYnRIQ==
X-Received: by 2002:a0d:d1c1:: with SMTP id t184mr24107365ywd.482.1574740824334;
        Mon, 25 Nov 2019 20:00:24 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:dc6:: with SMTP id 189ls3254408ybn.3.gmail; Mon, 25 Nov
 2019 20:00:23 -0800 (PST)
X-Received: by 2002:a25:6f55:: with SMTP id k82mr13461944ybc.302.1574740823811;
        Mon, 25 Nov 2019 20:00:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1574740823; cv=none;
        d=google.com; s=arc-20160816;
        b=dMieUHR7YfkgGK1c3qrt9yKSxbF2A/kK3VysmYPxvubaxueOjWEnS0gIgVQ9NDS8h+
         jzObaIS6FBqUSkrUcb2/W+1ayvJOCB/3HwOiYZUel59/djMUIZ/ExYLAQaM1Bp3BAoLF
         O9YwQ+skd2dp8nmalC6sFKocOJHy7PHsuya6mlYvSOhbpzsFeIHUENz8cRef0cROUJwW
         8Dl/QTRrbEHfyvKCtojlWSup+fm4QxgsJYKVv51jeqzAg12nb9kTdB/sldcZbHLBSN0s
         AtIhw7Uqt42n1WAKt6JpPwBlPNK7j6hN+GNcvHcz4ncOZee/l8KbBzW9tue4T/YveIyU
         41Tw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=47ERqZbj17YyFOc0OX2EzHbNOWZkoSgrP4SkiiqN7hQ=;
        b=q7vW1qq8A6ogjQAKfIcqPcsCayioT6uijX3Ehi425BzQunwuBtVF20CBXtIzz7XOpI
         OAUmeLLM3teDuT2cNhFA26hwFmYPLjU3a+OHe3ZLIZfRZZZJSgK1X5SLKnXR1zqOEOrj
         kAaSbStrQwqEB9g4grvKzkQpB91MofHDO/t5B5zT+S7AbMd0Jjcj9kMVqKcuTLLS+ww2
         fMbZ0ibn0OTH7R8X0nujuWzPeIheXk90hMn6VoCg8TJpes7DCiqvXcDptHtsPTDG4DDf
         3XyM3hDUnMLN014DbP4rfaUYriQQ9HqTkxX3y74BF32UPCcc3OEIVK14lgl5rz62FvNC
         8jqw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga06.intel.com (mga06.intel.com. [134.134.136.31])
        by gmr-mx.google.com with ESMTPS id c79si424742ywb.3.2019.11.25.20.00.23
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Nov 2019 20:00:23 -0800 (PST)
Received-SPF: pass (google.com: domain of philip.li@intel.com designates 134.134.136.31 as permitted sender) client-ip=134.134.136.31;
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
  by orsmga104.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 25 Nov 2019 20:00:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,244,1571727600"; 
   d="scan'208";a="206339904"
Received: from pl-dbox.sh.intel.com (HELO intel.com) ([10.239.13.128])
  by fmsmga008.fm.intel.com with ESMTP; 25 Nov 2019 20:00:19 -0800
Date: Tue, 26 Nov 2019 12:07:25 +0800
From: Philip Li <philip.li@intel.com>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Dennis Zhou <dennis@kernel.org>, Chen Rong <rong.a.chen@intel.com>,
	kbuild@lists.01.org,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	kbuild test robot <lkp@intel.com>, kbuild-all@lists.01.org,
	David Sterba <dsterba@suse.com>, Chris Mason <clm@fb.com>,
	Josef Bacik <josef@toxicpanda.com>,
	Omar Sandoval <osandov@osandov.com>, kernel-team@fb.com,
	linux-btrfs@vger.kernel.org
Subject: Re: [PATCH 05/22] btrfs: add the beginning of async discard, discard
 workqueue
Message-ID: <20191126040725.GD26032@intel.com>
References: <201911220351.HPI9gxNo%lkp@intel.com>
 <CAKwvOdn5j37AYzmoOsaSqyYdBkjqevbTrSyGQypB+G_NgxX0fQ@mail.gmail.com>
 <20191125185931.GA30548@dennisz-mbp.dhcp.thefacebook.com>
 <CAKwvOdnaiXo8qqK_tyiYvw5Fo4HvdFzrMxLU7k62qEWucC-58Q@mail.gmail.com>
 <20191126014209.GB21240@intel.com>
 <CAKwvOdnp6kjJkmnDj=bmnN-VaRrNunNCQ5ngUNbCEUXCqYvq5w@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdnp6kjJkmnDj=bmnN-VaRrNunNCQ5ngUNbCEUXCqYvq5w@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: philip.li@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of philip.li@intel.com designates 134.134.136.31 as
 permitted sender) smtp.mailfrom=philip.li@intel.com;       dmarc=pass (p=NONE
 sp=NONE dis=NONE) header.from=intel.com
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

On Mon, Nov 25, 2019 at 05:47:00PM -0800, Nick Desaulniers wrote:
> On Mon, Nov 25, 2019 at 5:35 PM Philip Li <philip.li@intel.com> wrote:
> >
> > On Mon, Nov 25, 2019 at 11:39:08AM -0800, Nick Desaulniers wrote:
> > > On Mon, Nov 25, 2019 at 10:59 AM Dennis Zhou <dennis@kernel.org> wrote:
> > > >
> > > > On Thu, Nov 21, 2019 at 08:27:43PM -0800, Nick Desaulniers wrote:
> > > > > Hi Dennis,
> > > > > Below is a 0day bot report from a build w/ Clang. Warning looks legit,
> > > > > can you please take a look?
> > > > >
> > > >
> > > > Ah thanks for this! Yeah that was a miss when I switched from flags ->
> > > > an enum and didn't update the declaration properly. I'll be sending out
> > > > a v4 as another fix for arm has some rebase conflicts.
> > > >
> > > > Is there a way to enable so I get these emails directly?
> > >
> > > + Rong, Philip
> > >
> > > The reports have only been sent to our mailing list where we've been
> > > manually triaging them.  The issue with enabling them globally was
> > > that the script to reproduce the warning still doesn't mention how to
> > > build w/ Clang.
> > Thanks Nick for continuous caring on this. One thing we initially worry
> > is how to avoid duplicated reports to developer, like the one that can
> > be same as gcc's finding. We haven't found a way to effectively handle
> > this.
> 
> Thanks for maintaining an invaluable tool.
> 
> How would the reports be duplicated? Does 0day bot build with GCC,
> then rebuild with Clang?
no, they are built separately. For duplication, i refer to the issue
can be detected by both tool, and gcc reports out already (or clang first).

> 
> Regardless, does it matter? If I make a mistake, and get two build
> failure emails from 0day bot instead of one, does it matter? Sometimes
> developers may just get one, as some warnings are unique to each
> compiler.  Maybe it runs the risk of folks ignoring the email if the
> volume is too much, but do authors generally ignore 0day bot emails?
> (I'd hope not).
:-) this is a good point, and recently we are working to make the
service more stable to generate reports in time.

> 
> >
> > >
> > > In general the reports have been high value (I ignore most reports
> > > with -Wimplicit-function-declaration, which is the most frequent as it
> > > shows the patch was not compile tested at all).
> > Do we mean the report with -Wimplicit-function-declaration can be duplicated
> > to gcc, so we can ignore them to avoid duplication to developer?
> 
> Many of the warnings GCC has Clang does as well.
> -Wimplicit-function-declaration is the most common warning I see in
> triage, which developers would see regardless of toolchain had they
> compiled first before pushing.  It might be interesting to see maybe
> the intersection or common flags between GCC and Clang, and only email
> Clang reports for warnings unique to clang?  I think CFLAGS can even
> be passed into make invocations so you could do:
> $ make CC=clang KBUILD_CFLAGS=<list of flags common to GCC and Clang;
> -Wno-implicit-function-declaration -Wno-...>
> such that any resulting warnings were unique to Clang.  I'd expect
> such a list to quickly get stale over time though.
thanks for the idea, we will look into this. 

> 
> >
> > >
> > > Rong, Philip, it's been a while since we talked about this last. Is
> > > there a general timeline of when these reports will be turned on
> > > globally?  Even if the directions to reproduce aren't quite right,
> > For the timeline, it's not decided due to the duplication concern. We tend
> > to look into next year after other priorities are solved for this year.
> >
> > > generally there's enough info in the existing bugs where authors can
> > > rewrite their patch without even needing to rebuild with Clang (though
> > > having correct directions to reproduce would be nice, we could wait
> > > until someone asked for them explicitly).
> > >
> > > --
> > > Thanks,
> > > ~Nick Desaulniers
> 
> 
> 
> -- 
> Thanks,
> ~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191126040725.GD26032%40intel.com.
