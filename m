Return-Path: <clang-built-linux+bncBCX2JBVY5MBBBS4C6LXAKGQEMJQMAYQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pj1-x1038.google.com (mail-pj1-x1038.google.com [IPv6:2607:f8b0:4864:20::1038])
	by mail.lfdr.de (Postfix) with ESMTPS id 7A685109797
	for <lists+clang-built-linux@lfdr.de>; Tue, 26 Nov 2019 02:35:09 +0100 (CET)
Received: by mail-pj1-x1038.google.com with SMTP id t7sf8340845pjg.12
        for <lists+clang-built-linux@lfdr.de>; Mon, 25 Nov 2019 17:35:09 -0800 (PST)
ARC-Seal: i=2; a=rsa-sha256; t=1574732108; cv=pass;
        d=google.com; s=arc-20160816;
        b=qDr43jxG7zCR8r0JHHyWx5Hnt1K5JB4LJ4q8W5yeg+5pFneXuzhhFbQ6qMntG14V1W
         ACQ0IgIK9vCxQXWz03v0q2+vRRJgareLnsvNJTYvr6UcCbqziB/mjWvfFYxdKH4WtkD2
         TmEPIkNtfN23aYr3c821vHk9/e6gPM4AFG0INyo3k/9BaiEx4OT9WusIPgYqcqvxSFjd
         Zf4zFufWpudqf0OOu92zLu1R/XJQswVK+Y6RlVE6cIqZcZKMcEv7cOusnDC/ui1m4jGL
         Of0GilzXXR6r9UIVRTl/7Cngf9HAQ2XkzQfjl+zl4SbRZU7ttbcBMYrtIXyJ1bvDah2b
         j6vw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=LsqES+UACMnU8OY08YogePFU3tBf5r5i1Le0cixJv94=;
        b=RJb/AoBpO6oj7306QrBd+VXMmekJUDe2jgInJofqb3IRugcgWpnumXpGaMAp/CRxMR
         EENCaaBz8ivhTAAD6/hpZ/3vuae+iz6tXNp/qDbmBszZGBIS//vRR/3kIF/ovv1i674o
         QoSerCWwvqr+20gPlyEoSh8/LDNyAkyN/ALDRi9LR/gHeLVEbSxZ0Xguu5RLS/rIj/zF
         WQl8daXc1HRkWwowzXRM5p/5kDLryL7GaK2egUtrMu7oMXf5/wrkKdM72FhEz8KC5qVq
         6Aj4iJQGDj5p2pkpy9jYIeW4n1l7y79pv1bd6J/+P4h2ZLGGVpyJUGhFHkJF3puxP/AJ
         AKVQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=LsqES+UACMnU8OY08YogePFU3tBf5r5i1Le0cixJv94=;
        b=rsr4nJOqrdGk0Hku6XGyXQfIEtsIxAvZdjyBYA0Pwiu6Lgse2Xg6DRcP8+2aNFCQlB
         Woss73sKwpgqh2+sZ7aJR/MYB5XvBiC1rZKXrLqROWqNiD+gsml9aCL/8eAkzRPIlzZ8
         97E2qNlUSG5dzVuVvMYj/UL2J0VYsQjDd8JwWzqw4OXkyLBGF/XnJjUzWkksdXaBixlV
         RPCEcGwLytrqCsAEuFfef9UJgIEdaE1UsdLfZBpBMWLiyqOOo98+zo+RynqdAdVWohLR
         Ww7HgPYfUckExm5wS2RtnepRtaCMDpTD4OFAX5TmdwbssUG0iCVJIchC9VfaD28pqPW8
         A+6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=LsqES+UACMnU8OY08YogePFU3tBf5r5i1Le0cixJv94=;
        b=gzGwaeFMTYRcYaXFuKGoXLXzw4SuQDlFM5soE8XBdBYBGXW/diNuUVCMmBP1kQ+5Sy
         tTgHiGx9Nl3KUXPWF73htnTCeBAYctytywZxQHTUYI5/VxDkvi9Fymcqez2wez7UwEqK
         wed9H5Zzw+sqdUHfVHUgIbCc5LpvKUbkIyoe8/7cXa2wroAHAjQtKJ4BLvnIZk+LwIly
         5q6nUTnrDkGMWithnPd/K3CxFFJ+lyDsWkStyJG7JzABy8/AI8+hmZ7MMvONyO9g5lUc
         LXNSwghua99Z+YfLusjoIgpqJkeATf8qpX5Ek9GKU63VPg6Zh/R3+y6Whk8yeCmGz6C7
         aTKg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAV2hhHBftwCS8/faOM0DoT53a8o/1uKgKZs7mquQCyT3aqJaID+
	tTCfzWqw1UegjLk3PW2YwCA=
X-Google-Smtp-Source: APXvYqxObmdWaTN8EKsGpKLV90MWmlInO1s/xv0j6JOTRAVBwnei6Pfb/T6x+gvQK2uy7bcgA3qWvQ==
X-Received: by 2002:a17:90a:9741:: with SMTP id i1mr2904682pjw.41.1574732107861;
        Mon, 25 Nov 2019 17:35:07 -0800 (PST)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:aa7:9248:: with SMTP id 8ls4577307pfp.7.gmail; Mon, 25 Nov
 2019 17:35:07 -0800 (PST)
X-Received: by 2002:aa7:8006:: with SMTP id j6mr39490769pfi.182.1574732107402;
        Mon, 25 Nov 2019 17:35:07 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1574732107; cv=none;
        d=google.com; s=arc-20160816;
        b=QjqswFEaf8twp2x8snRow4Gx01l1PUMMMYldIZeoLKp/bfu5D2Az/gZsWI27agjAPG
         iNWFu96TEOnsEebSWxY3U/h4fwWRXkOBRgNhCyPwNY/osIGVWjYBVBwHQaYLZlnTf0do
         jQ91b1T3OC1l+P0v6ZyUvBtiEIKKHSl8lGETO094PTXG+t96GDZP2PfGiMEUHGVR83VC
         nUhvfbuztYFUw0dJ6NS972QpR7hjsBGW4cFMPEvQ6jzxcy2LYj2gU3GSqBlcKHNjr1uh
         KGqiYo/YNMkOOn2btoSWyn9YESz46UdsBOnwRxbx/6tZEzvxva/YgvAVgcHdcl0DmU7f
         uQcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=7vzoGMHhM/53AquPld7X8ebSTtbMirlQT1432pi/GBw=;
        b=woUje66bTyxiEYxm/DjnRnfCRXUwen/BpUKeB3Jbggx5RRv+hdsT7U3tRPWGf29yaA
         KD+rLfa/XnvmFcS4um4XjEFI99Csbs1u9Syu5YGOpGW3lCIBj6ay1eJ8Gq77k+QY+p3Y
         3pYJMhOaYPDI4fwgmZtxTJFwkenOaRT2+SorS3vumajeE3ZjPoE5KQwSIscVgrLnKq2l
         VHEcDZzdqDeT8nFUBMbrBKKl0Lig0jercN0jMlWRs4wevkzJcEq1E6xDzf4IvEMH9mXb
         Ix5s/ZclerCJxXS5E8oRl2yGQpWt8LgA4RInNPzxpX/jzJKvvR2POuxkIdforXZ7UoR7
         tjpQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of philip.li@intel.com designates 134.134.136.20 as permitted sender) smtp.mailfrom=philip.li@intel.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=intel.com
Received: from mga02.intel.com (mga02.intel.com. [134.134.136.20])
        by gmr-mx.google.com with ESMTPS id v36si317049pgl.1.2019.11.25.17.35.07
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Nov 2019 17:35:07 -0800 (PST)
Received-SPF: pass (google.com: domain of philip.li@intel.com designates 134.134.136.20 as permitted sender) client-ip=134.134.136.20;
X-Amp-Result: UNKNOWN
X-Amp-Original-Verdict: FILE UNKNOWN
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
  by orsmga101.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 25 Nov 2019 17:35:06 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.69,243,1571727600"; 
   d="scan'208";a="202561180"
Received: from pl-dbox.sh.intel.com (HELO intel.com) ([10.239.13.128])
  by orsmga008.jf.intel.com with ESMTP; 25 Nov 2019 17:35:03 -0800
Date: Tue, 26 Nov 2019 09:42:10 +0800
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
Message-ID: <20191126014209.GB21240@intel.com>
References: <201911220351.HPI9gxNo%lkp@intel.com>
 <CAKwvOdn5j37AYzmoOsaSqyYdBkjqevbTrSyGQypB+G_NgxX0fQ@mail.gmail.com>
 <20191125185931.GA30548@dennisz-mbp.dhcp.thefacebook.com>
 <CAKwvOdnaiXo8qqK_tyiYvw5Fo4HvdFzrMxLU7k62qEWucC-58Q@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdnaiXo8qqK_tyiYvw5Fo4HvdFzrMxLU7k62qEWucC-58Q@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: philip.li@intel.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of philip.li@intel.com designates 134.134.136.20 as
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

On Mon, Nov 25, 2019 at 11:39:08AM -0800, Nick Desaulniers wrote:
> On Mon, Nov 25, 2019 at 10:59 AM Dennis Zhou <dennis@kernel.org> wrote:
> >
> > On Thu, Nov 21, 2019 at 08:27:43PM -0800, Nick Desaulniers wrote:
> > > Hi Dennis,
> > > Below is a 0day bot report from a build w/ Clang. Warning looks legit,
> > > can you please take a look?
> > >
> >
> > Ah thanks for this! Yeah that was a miss when I switched from flags ->
> > an enum and didn't update the declaration properly. I'll be sending out
> > a v4 as another fix for arm has some rebase conflicts.
> >
> > Is there a way to enable so I get these emails directly?
> 
> + Rong, Philip
> 
> The reports have only been sent to our mailing list where we've been
> manually triaging them.  The issue with enabling them globally was
> that the script to reproduce the warning still doesn't mention how to
> build w/ Clang.
Thanks Nick for continuous caring on this. One thing we initially worry
is how to avoid duplicated reports to developer, like the one that can
be same as gcc's finding. We haven't found a way to effectively handle
this.

> 
> In general the reports have been high value (I ignore most reports
> with -Wimplicit-function-declaration, which is the most frequent as it
> shows the patch was not compile tested at all).
Do we mean the report with -Wimplicit-function-declaration can be duplicated
to gcc, so we can ignore them to avoid duplication to developer?

> 
> Rong, Philip, it's been a while since we talked about this last. Is
> there a general timeline of when these reports will be turned on
> globally?  Even if the directions to reproduce aren't quite right,
For the timeline, it's not decided due to the duplication concern. We tend
to look into next year after other priorities are solved for this year.

> generally there's enough info in the existing bugs where authors can
> rewrite their patch without even needing to rebuild with Clang (though
> having correct directions to reproduce would be nice, we could wait
> until someone asked for them explicitly).
> 
> -- 
> Thanks,
> ~Nick Desaulniers

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20191126014209.GB21240%40intel.com.
