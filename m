Return-Path: <clang-built-linux+bncBCX2JBVY5MBBBPOH6LXAKGQEG6QNJ4Q@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x637.google.com (mail-pl1-x637.google.com [IPv6:2607:f8b0:4864:20::637])
	by mail.lfdr.de (Postfix) with ESMTPS id 621B8109831
	for <lists+clang-built-linux@lfdr.de>; Tue, 26 Nov 2019 05:02:07 +0100 (CET)
Received: by mail-pl1-x637.google.com with SMTP id p23sf7224688plo.14
        for <lists+clang-built-linux@lfdr.de>; Mon, 25 Nov 2019 20:02:07 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1574740926; cv=pass;
        d=google.com; s=arc-20160816;
        b=jKZsu0WAz4TTEY5jRoiT8uwJdGBk9xn4EitkpXbk3+UAdju0/1ahmosiramPxMW6jH
         DoO71SoPBitU0g+7Ft/pOqm1neHXod5hwzlj/9i1gZ9OmDYZs4d98by2S/F54dBV9jwm
         lJZGzwUdFOBKzr16+fjAIFV2Plev/1l06ZRckNGSPKS9TyzTO58iFmwrkjiu2q5eS20X
         RkGW7UtDGmASRo6oymiPJ9aLNQAtXm3gdDXbG0hdsznhjTDG6HAytRI00b+EpsykDkyS
         ZOfnV5auP1WGoDv6+0JVzhsZI4RNQkBCHUtDOiymePYw6t5HLsgNpuTqc0lgkmq/+lvE
         A9TA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=mdBhs19odNDuLBGL5ayJQXeIbl2b44aMsXK8VXBgFJo=;
        b=O8nSHCT/J1DR0ND79prCGxwqdjsVJQBnMxhpHj/RuQUQV+hJK6LFOIFzD2sEJlLc/d
         sXK044Z5EhLVlrvfXqzVmXFCRnJ+U1nYU/+o7492yrJyVSX0xOjZKs0LI0pqmIlY9nVU
         CzZjwOt2lddCfjxOK1gb3u/RqzBwRqbTz2PzNu2teBXfafqNPex8QVFAlIDHI76t/6Y+
         fRRCQIsjtsS2afs0Y9WgsjsZKFezD8fLBnmyY+HPmVRCN1IdLVaxZ9v986SZ3CI/ipsi
         FQUah/9GEyh3WU/s0FbII11K97B27E7PUpFAUjldtgEWSQ2Xxk11LLH7B0nwtJMEVW71
         hTOA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=mdBhs19odNDuLBGL5ayJQXeIbl2b44aMsXK8VXBgFJo=;
        b=Ig1OrdrbX/j/FAP3oLcSDKA3ssgk5Cd2TGSMrB8K90/dEGJQOUyTk3xSyI/uw2gqtY
         AiHkZkxeo12nvq4QnBmOqbZleW45gzDWgThL+cWuV4HcxpWti8AZjsY3maFCI2xJaMWp
         uV3L/bFnsE1d+oqaecIOn4N0WnaUy1SaqUjD53qxTF0FaIDIAorIel9cm8mhaSyDCtLk
         +vWmoY/VQxMv8OnHBTxoHiT/9jpRTuksDtCjTO1vKOSwvyqAJKQg8mWbLRAfV2zqEjLD
         VDI3OGW1KVel9nmtereCFd8vmHkVxt3aqfKlmHmDr//+xTKifzcKDN9qvm0fNRavKsdU
         NVxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=mdBhs19odNDuLBGL5ayJQXeIbl2b44aMsXK8VXBgFJo=;
        b=sDz//UqhYtMQ77md1GSqDGVjsE0oilwS6f7Fgnqw3bqLJeTNgKOJSse6YwEUo8pCVF
         Hd6ErM2IXdOmQZo5F4/qN7Ui5s0R7kkMVET6ZujK1AUJuCTacNWP0E1Nr/Kg4QGjdAO5
         j70/hNtChgk8xB9/qyVny0Nk4Wt3WB0GIhHkvfxFOv7fvMn16qrawxN9cpRMrkxd+8YV
         H19xdbltuRE8VkNg/bqpWzjGYA2YfFVYhhZUW65oatnBS4xad4h9nRjlODGxJY30Ss6f
         RGW2lkcvL20ptjX7uTLlquUxr7uGtuM3cD+3be3FCYJa9Ha/Hu9BUW73auQFeuC2a62t
         AKAw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAW1w5Fik+6t9ZNya0JnmuqzSRluMaxfSWc1X6ianS3Z5UU7uGdZ
	CQAVrgK3Zx0nk39CqPuocyU=
X-Google-Smtp-Source: APXvYqwXT+yjH3wVUkAW/GlzUflKa3yifCu7PJPc0T+uVbPg3vx1egyKrU9uHQ/TFNVcQX80QTGQ9w==
X-Received: by 2002:a65:67c1:: with SMTP id b1mr36737540pgs.149.1574740925904;
        Mon, 25 Nov 2019 20:02:05 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:902:7888:: with SMTP id q8ls4662243pll.6.gmail; Mon, 25
 Nov 2019 20:02:05 -0800 (PST)
X-Received: by 2002:a17:902:a60f:: with SMTP id u15mr32633184plq.64.1574740925324;
        Mon, 25 Nov 2019 20:02:05 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1574740925; cv=none;
        d=google.com; s=arc-20160816;
        b=pN4kYsDSSmZlHrJOgjxjXqleJ/3q2EuDzBaHksv/tCwgi6d/319ybqBtPN1927MBjh
         AOs7+lzfry5ldMY1p9ueXTZGF1Mfmx4JX4lYxrsUaRzTSR8l2Y947TvRFACgmTDXn87u
         by5KPZYnPJ7zgCoJnm3LO+CBUo1yJ7eMObsv4/eCoNE1+4J/Cw5KXTnT9Fg4qANv7dNe
         ASiPzoG1uce2M8XF1uOW54RjV75I+IF+5gvPTBTpZDtDU/x0CqlE77w0h4nWvxHseHbQ
         k/3fXHxg90XGhtfDSrt1JCbVN23MN7sRjdzOHIgAsOQe1g9XPjpoK+uurEGz8Ui0G5RY
         YE+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=AnT24iSbSqPH+ekLFghoMKmuru7jUg8VToAywT43W8A=;
        b=c3Swz5B+Mpt5trSI+if0CZ0c42qtt2tesi202hgrib12HQvHNSxb99wPkgrE5wR0ab
         dB4ea0h08JU0qrC8nulIfmttH+IEgf79aN445woH02UdL4hC5bwtnIbaxTjqqfPPSZ7o
         CcET7IqrJCWGSZH7U6hgCXHnu52FUhBol6dGe1e37flAasmwpbUqcqBOb15GdqCmoEVH
         NJ1ZHZoCXBh6yB3UDP7hmMCYwz6fydwrc8LHE5CT8D4a78FmV9v0y0EmXAo5XiMfn2dU
         dPWRr+5InmNYJNahvcSGB373Wq8k/08IT6YO6G4UJdRmgma+sY8veJlLcxBfsWnxGDpZ
         ydmQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga03.intel.com (mga03.intel.com. [134.134.136.65])
        by gmr-mx.google.com with ESMTPS id o9si632pfp.0.2019.11.25.20.02.05
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Nov 2019 20:02:05 -0800 (PST)
Received-SPF: pass (google.com: domain of philip.li@intel.com designates 134.134.136.65 as permitted sender) client-ip=134.134.136.65;
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
  by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 25 Nov 2019 20:02:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,244,1571727600"; 
   d="scan'208";a="409847404"
Received: from pl-dbox.sh.intel.com (HELO intel.com) ([10.239.13.128])
  by fmsmga006.fm.intel.com with ESMTP; 25 Nov 2019 20:02:02 -0800
Date: Tue, 26 Nov 2019 12:09:08 +0800
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
Message-ID: <20191126040908.GE26032@intel.com>
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
 (google.com: domain of philip.li@intel.com designates 134.134.136.65 as
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
Hi Nick, i forgot one question. Is it still expected to use latest clang
to build test? Any possibility the issue is related to clang compiler itself?

Thanks

> > Thanks Nick for continuous caring on this. One thing we initially worry
> > is how to avoid duplicated reports to developer, like the one that can
> > be same as gcc's finding. We haven't found a way to effectively handle
> > this.
> 
> Thanks for maintaining an invaluable tool.
> 
> How would the reports be duplicated? Does 0day bot build with GCC,
> then rebuild with Clang?
> 
> Regardless, does it matter? If I make a mistake, and get two build
> failure emails from 0day bot instead of one, does it matter? Sometimes
> developers may just get one, as some warnings are unique to each
> compiler.  Maybe it runs the risk of folks ignoring the email if the
> volume is too much, but do authors generally ignore 0day bot emails?
> (I'd hope not).
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
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191126040908.GE26032%40intel.com.
