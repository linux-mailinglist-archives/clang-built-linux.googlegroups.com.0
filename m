Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBB5PX5CBAMGQEQ7GSDHI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x103b.google.com (mail-pj1-x103b.google.com [IPv6:2607:f8b0:4864:20::103b])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A1B034686D
	for <lists+clang-built-linux@lfdr.de>; Tue, 23 Mar 2021 20:05:27 +0100 (CET)
Received: by mail-pj1-x103b.google.com with SMTP id y5sf2820237pju.5
        for <lists+clang-built-linux@lfdr.de>; Tue, 23 Mar 2021 12:05:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616526325; cv=pass;
        d=google.com; s=arc-20160816;
        b=UmUCsgq614m7JFcBLyDaQ9Bv7sXDdaIOHHCQPXf5rJ7cyuXWwTN8X4/nQg3pDxmVJO
         aJKkAe7byM9SGoCmXL2w4jvrfZk0KrjRarEgfKDepeS9/dHAd+it+9Tn04GO7+J9xEzZ
         FTE/TARhbiFT2izUywXe0vSJIu/8V3ujVMQ1JxJDqjfmClubylIhytK/18lb47QbGYOh
         u4YokJnXIX8IXg526y/DjiQxwxzoUt5YUPrktWAB4WEmo2kEknuqeu8DUgd/mbaJvi90
         3BQ3htyzJhYIewjFqzLiZAmSDLstEpyu947cJEAH65UA3HKI8cbUa1ek4Y2La4OQ3qzp
         5WyQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=AKFJzug6fZvZ6g5SUD1VPpaM5Cb2gar46B2hJoieanY=;
        b=bTxzSkRgFPundOSiM6GdPeaWGhbTiemTZ+YaW7oKdIM8AV8CUjgB9O2pr4ggf2b8Zl
         1aMhJASxYbre+42kZJryRS+AGQW14PKga9HtOCD9xOlLVqyY3WDVpjFcEP2Zi1gy7/qY
         EDc4BDhP5te9/4QFb9PAPde/ZgsdjYrOu0u6Qq1kMFNjmH0u90adw1TmhePHFuPpUP6W
         D3BZdUIjr2dX0XISRP5HtZULCMpE58pKsGyBF77Zsu86z6vc9wuhu0snLcxpbQJ5rTCc
         iT8Ahgyeu/u1KQpbC8zxSBMQwA4Kn3SxpdvhJleZ7471SEC0lWmxT5tKWafbs+GUA5JF
         PtdQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=mTr0sTAz;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=AKFJzug6fZvZ6g5SUD1VPpaM5Cb2gar46B2hJoieanY=;
        b=NsehzBEBCqS3OQB+GH1OAl15Z/QDJ+JM4KRRc8FnGO+OtM23DSvoR3rsibVWcH6G8P
         oDmKNTDId9bjsi1MW2jwCTbtZVF8VjLXbV5uGaApNe/o+/N+DqcmixE+IauiCoEDukxo
         D8wA4wPcK6sjAmrq9v05zfK7loc7q5SdA35d59NQGHGUUc4qJuD5zSEPiWNAXqb4goaK
         GVkm248NnihrCy4uHL7Ss133qZRew7Wxz8zU9AGeTmJT1OeA7EEEMuzqsL4S9iEFOzYP
         T0VJabPpfddfl7fCQbuTWGC2DdOBL9mLoR4ocoTUN1koLDhKhW6rNJCPrgEwYZD9nAFp
         Cjag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=AKFJzug6fZvZ6g5SUD1VPpaM5Cb2gar46B2hJoieanY=;
        b=S68wOChvYKM2ZvRCnZpQXk9es50iFeZe8/WzDcBFUurMBgTg+JqtQRfW9Kwvx8Apci
         cBI4jMXPwF7P5APUHyirieSK1Rom/p247x7vtlSpFF1g7edQnYNC4ojQHJiP2STPG6nd
         8hd0hgwe8CNOvEFPWwjfssxoP+BPdobUovrSn20sikKnt/BDhKrP7daxtFiKgO2GbI8u
         fXzjvLRzQBYwKo51i+4F81lnpTIchT4jgkOULeERsUdjdJmT2UhmlyT2uFS/Ua5DT0EW
         IbrGK0RuPLsoBa6fzWvznkwIiImt+DZon89ZM6sFH5UU73jtnWD3cnwrtyFWVn/JoFo7
         5q5g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM5337RaXA0WEmDhSBDk9Nu6llsIhgfqfpZpKE08FIIht+6CS35VBV
	90tD4FeSjvqBRnUXEO0khnc=
X-Google-Smtp-Source: ABdhPJylUr0y9MfnbiA7QdMeOXwGkjU7bUEFoCLd9uGOXYBxb/gt9bDkjmJpawwHk1qBQPt8eFOKqQ==
X-Received: by 2002:a63:f14e:: with SMTP id o14mr5566940pgk.260.1616526325326;
        Tue, 23 Mar 2021 12:05:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a65:4d43:: with SMTP id j3ls5878065pgt.1.gmail; Tue, 23 Mar
 2021 12:05:24 -0700 (PDT)
X-Received: by 2002:a63:1d52:: with SMTP id d18mr5370946pgm.403.1616526324690;
        Tue, 23 Mar 2021 12:05:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616526324; cv=none;
        d=google.com; s=arc-20160816;
        b=cwczcm85CWDogx1eMkkWBABu0ixvN/D1nc7Q1VbtPSgeOyFkCHoOXVNDysNp3UxIKc
         XFKQIMc/Vk/HVOsFRsCiaNNCMTdLJe9GhNs+9QbsQxmNMmbuXHGxpIN0hCSG1mmVBWtt
         xZ+Sy5H1UaVnT4zWTTQvfqb5TbkpxjgFwjDR7l66ht8f5/I114sy0NTWzwio0kLoObKO
         SPk19L33ZDTMgkKyqIDbq/VfBt7PHDR1ayjRemRb6bk2gRQCZrXHvyFmCRnTfy0oJHfV
         TCuWwXCRAlkz++jK24yrAw4+fR0UZPyjMNPeqRfiD8B76Q5qZNv5nCPggPgCx6eWRID6
         9MiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=+mUZlbk1SNQRFx7xp0cfnuUvAGRRzYVPPJtMCElqBig=;
        b=mnz84cH3Mqjv5X7GeIsA9Cn70rIqasCPclREOgaQug4M5ezY7YnOjGyCO3gJrtirpZ
         qhkcvEyDN3yS064kj5kvaCG2+ylZ9PdMWQcV6N0gWw2TW2O9kdoiTuWJc3GOf7bee00w
         lYz217BeP+ds45g/9LMTskXeS7b+NXxlKVEtvqWrQCNYKBZTlubbKICoJAEE9Y/4uZ6p
         00iB1Amw+nhdGcv1o4pZaUK4Pc36HsrQMdIVwR7a7anYDlSo0gtY+dCSZ/m86cWk+cS+
         sDX6LNEwl3tzvx/nMrwWwNsTDWdkbTxXSNTpxyo3eoWkyK6CqObiDT+bEQTYl9h5uxPB
         CstQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=mTr0sTAz;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 145si932073pfb.0.2021.03.23.12.05.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Mar 2021 12:05:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id AA89761574;
	Tue, 23 Mar 2021 19:05:23 +0000 (UTC)
Date: Tue, 23 Mar 2021 20:05:21 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Sasha Levin <sashal@kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	LKML <linux-kernel@vger.kernel.org>,
	"# 3.4.x" <stable@vger.kernel.org>
Subject: Re: [PATCH] scripts: stable: add script to validate backports
Message-ID: <YFo78StZ6Tq82hHJ@kroah.com>
References: <20210316213136.1866983-1-ndesaulniers@google.com>
 <YFnyHaVyvgYl/qWg@kroah.com>
 <CAKwvOd=9HwLcTD8GaMsbEWiTPfZ+fj=vgFOefqBxDYkFiv_6YQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOd=9HwLcTD8GaMsbEWiTPfZ+fj=vgFOefqBxDYkFiv_6YQ@mail.gmail.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=mTr0sTAz;       spf=pass
 (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as
 permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
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

On Tue, Mar 23, 2021 at 11:52:26AM -0700, Nick Desaulniers wrote:
> On Tue, Mar 23, 2021 at 6:56 AM Greg Kroah-Hartman
> <gregkh@linuxfoundation.org> wrote:
> >
> > On Tue, Mar 16, 2021 at 02:31:33PM -0700, Nick Desaulniers wrote:
> > > A common recurring mistake made when backporting patches to stable is
> > > forgetting to check for additional commits tagged with `Fixes:`. This
> > > script validates that local commits have a `commit <sha40> upstream.`
> > > line in their commit message, and whether any additional `Fixes:` shas
> > > exist in the `master` branch but were not included. It can not know
> > > about fixes yet to be discovered, or fixes sent to the mailing list but
> > > not yet in mainline.
> > >
> > > To save time, it avoids checking all of `master`, stopping early once
> > > we've reached the commit time of the earliest backport. It takes 0.5s to
> > > validate 2 patches to linux-5.4.y when master is v5.12-rc3 and 5s to
> > > validate 27 patches to linux-4.19.y. It does not recheck dependencies of
> > > found fixes; the user is expected to run this script to a fixed point.
> > > It depnds on pygit2 python library for working with git, which can be
> > > installed via:
> > > $ pip3 install pygit2
> > >
> > > It's expected to be run from a stable tree with commits applied.  For
> > > example, consider 3cce9d44321e which is a fix for f77ac2e378be. Let's
> > > say I cherry picked f77ac2e378be into linux-5.4.y but forgot
> > > 3cce9d44321e (true story). If I ran:
> > >
> > > $ ./scripts/stable/check_backports.py
> > > Checking 1 local commits for additional Fixes: in master
> > > Please consider backporting 3cce9d44321e as a fix for f77ac2e378be
> >
> > While interesting, I don't use a git tree for the stable queue, so this
> > doesn't really fit into my workflow, sorry.
> 
> Well, what is your workflow?

Look at the stable-queue.git tree.  It's a set of quilt-managed patches
on top of a solid base (i.e. the last released kernel version.).

The only time git gets involved is when we do a -rc release or when we
do a "real" release, and then we use 'git quiltimport' on the whole
stack.

Here's a script that I use (much too slow, I know), for checking this
type of thing and I try to remember to run it before every cycle of -rc
releases:
	https://github.com/gregkh/commit_tree/blob/master/find_fixes_in_queue

It's a hack, and picks up more things than is really needed, but I would
rather it error on that side than the other.

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YFo78StZ6Tq82hHJ%40kroah.com.
