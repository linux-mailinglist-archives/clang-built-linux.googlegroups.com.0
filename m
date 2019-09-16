Return-Path: <clang-built-linux+bncBCANZFV6TQKBBJGJ77VQKGQEEMTSJEA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x337.google.com (mail-wm1-x337.google.com [IPv6:2a00:1450:4864:20::337])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E6F7B4136
	for <lists+clang-built-linux@lfdr.de>; Mon, 16 Sep 2019 21:38:12 +0200 (CEST)
Received: by mail-wm1-x337.google.com with SMTP id 124sf223087wmz.1
        for <lists+clang-built-linux@lfdr.de>; Mon, 16 Sep 2019 12:38:12 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1568662692; cv=pass;
        d=google.com; s=arc-20160816;
        b=GYEiNHXfmy7mXYB+rOcOnLBkhjZuXnW2iSuJpBn1sssKYh6Xt+HSpNKPGg047yqegU
         J+DGaehv6K7RrKnqo+nI+e9+WAMxQen4JgE7dVflaP51B+VTvmhXwJKNDNhFgGsGtWVc
         3kbVGpJqPCI/6MsFcPgpLMrgvM5RDH380Y8890V0ddvd461QIOoPaVvhGGNAOjcpyLoO
         ybpGAVoLBibDSziBvIT5z+DOkg06r2KNkC/WMNVtitOG7hhE/S8qOaZq9QohJiwLXjx2
         BTMq6LGn1bFmyYqOvI0o4CAgEHLDr3ssUsdMgHcEFafWWnKuyx2zYWFRBMoy4czul7ad
         vljA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=A2pJzoIZKRkURIpynwoz0GkiAuK8IfiLxAE3zhMmWec=;
        b=p5jNYm/OioVIlT6k7xHomYC0NP8Tmv3VK2vB3HS1VdNjmqig5KRLFHcqZF1ELGJsNU
         PsfZHd1t1En0cAWdEa8pLi2aUhMweuKsU11HggFrgYYOOXlgXVIWy80Mc8M+WH6F/I2y
         RNnFEA52XdPBanSTTsLn4cAfUgqz64AZeiJtiMinj/dXvg1ieZqhDbe+GGv5B9p8ovwW
         6AW4JhyW8f9/pfGMbG2nc8vQN7MpY9EKfDY+JYagG+duNqca2hYN1V1v1WP657YPRfQq
         prqjPHLB1FK1RD0q8/ge0uTOjBIQqJDVSZrR673MaPFo2ryKBXVH26+QhwC0U7JSlJzx
         Vj4Q==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of quentin.perret@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=quentin.perret@arm.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=A2pJzoIZKRkURIpynwoz0GkiAuK8IfiLxAE3zhMmWec=;
        b=Qd8dkJhjiVfnMvWLWvUuCgOOP32xj0H/+g9VkIk0mCJC9NWmYG2eRvSEVZhBvVb7b6
         XYsXeB7xkrNQBtuhLWOs6UqWOhcS/PFWw47IX4nM24p4eOTh8OOpnwFuxC9nbZRTjZkZ
         UxCdJZwxdAZlxlJDnElXoR8SJS2kG/LFbrhsf5d4Wh7xa/8DSQbq77mJKlOuNRyKV5Fb
         Zi1Mr2pZ8M4NZlJcvBvAy1GL6ZjhBHm9XpSnQzuT6SoawEc+nxD7b6DnRHvAbiGIhEhn
         9bprO7nmBqhBsEw6RNvAHvRsaGR5T4xLUFZrW2uGUEoKjOw4US0UspERE3d+NIWLtAa5
         MRow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=A2pJzoIZKRkURIpynwoz0GkiAuK8IfiLxAE3zhMmWec=;
        b=RarLR/W/sOe5ycVXPH8jRPkv528dR2HUh3a8Bp9wPh2d+8YlSCh1z6GYDhWi+kXJx2
         aUiH1pXpy1TCbTXfEaftLwJY8OZtqBzc+kHGRdhraRD7DWVq8gM/pi0T0RTEm80yxNsa
         OVU3hopxyHnWfvl+jYYfKh/xt6qY+mZ+mwFk/JhSumTCnljFaQ+YYicAKrn8cMg6e+j1
         53mKpmZB7bGYUE0bskKTBfk/d0A65OlhL8p8uyTh+3v1gBJn6okw6oA61LjJUMExWrMk
         fKRH9em4iiDxfs8xCn6sr8J+6gIi5CeoDOda8/r0OrzbC45C9dlNKwGDZrUQ/zaRudbx
         e8hg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAUMELPoCOWL7Q/v83mAb/BF57glOF1Vb8gogB8DQQboS+VOfrBQ
	MV6FG5Isv9QLzA7AYEz+p6g=
X-Google-Smtp-Source: APXvYqwbwtkn3WjB7JdNJf8VJCSGBs8W+IrX0eaDh+u/xvXLs/2X1IujVBgafS/4txMsSpiHYfTr3w==
X-Received: by 2002:a5d:52c8:: with SMTP id r8mr27906wrv.256.1568662692303;
        Mon, 16 Sep 2019 12:38:12 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a1c:1a96:: with SMTP id a144ls171110wma.3.gmail; Mon, 16 Sep
 2019 12:38:11 -0700 (PDT)
X-Received: by 2002:a7b:c187:: with SMTP id y7mr515772wmi.17.1568662691737;
        Mon, 16 Sep 2019 12:38:11 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1568662691; cv=none;
        d=google.com; s=arc-20160816;
        b=AuQp3kM3YlPW3CUU9g4r1vkBfOJttSgNhY3iw2X47UTN0N/9U0p3kWraA6fcuIln2c
         jpduJXFY5xoWkIGzgoKdCP+RadOt7TQa3KlYA0Eiqj6WcNyj747bKldcmngRmWQCjC2I
         2CLbd8S6/rpNyXFE1ayO2X1+8SH96O/oClykDfCjeZwNNuO0AZMQC4TIZ6Bb/VoQLWaA
         aqqXOArN4b2wh95Ic5vzeU2+d6Ix163MJuF9s3YM39ldLTjaaJBHuhuEPw9NVNypBr5i
         6MSc9wYn/dTiGBd1ks3ga8AircgcWxFwiMIKd7kI7p6pECxWm+A7gZoUpYa/So7DMyC/
         17mw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=PZ3pkdgFUrXhK0sKA/m9FPjW+Lbf2MLI9AZC0eD2dwU=;
        b=fKntpvJRWECJNgglADRoc5IlgCYxQY8GL97sYj+AVuynNejwZkEmSSj/Yfoqzz5kgh
         MKgmEOhGFWhdu7sPq9T58/rBZWRyee2c0mGKJebSLRTkUYq4tJlhK+M4Mu3LRChs2QRA
         eu/vD33ea6b/1MHcgXoMIgjHRTsNBRAOw5Aos6HPBJyC2mhxhKIkbtdpr5nFXelHLNnZ
         hlybwEDVM7JfwCjtKnK73F0MAB3IOfZcyVBarET1I5sGH2mZq17FB7Df038szawLdDct
         jgyr9EpEZluag5s/kw9AtcuxPOJBW9TyOW1fCUkW4jHeWCMehq1mNvuL+vUo3jPsw06k
         cUJw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of quentin.perret@arm.com designates 217.140.110.172 as permitted sender) smtp.mailfrom=quentin.perret@arm.com
Received: from foss.arm.com (foss.arm.com. [217.140.110.172])
        by gmr-mx.google.com with ESMTP id n16si94435wrs.4.2019.09.16.12.38.10
        for <clang-built-linux@googlegroups.com>;
        Mon, 16 Sep 2019 12:38:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of quentin.perret@arm.com designates 217.140.110.172 as permitted sender) client-ip=217.140.110.172;
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
	by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id A481A28;
	Mon, 16 Sep 2019 12:38:09 -0700 (PDT)
Received: from queper01-lin (queper01-lin.cambridge.arm.com [10.1.195.48])
	by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 4F5DA3F575;
	Mon, 16 Sep 2019 12:38:08 -0700 (PDT)
Date: Mon, 16 Sep 2019 20:37:55 +0100
From: Quentin Perret <quentin.perret@arm.com>
To: Todd Kjos <tkjos@google.com>
Cc: Nick Desaulniers <ndesaulniers@google.com>,
	kbuild test robot <lkp@intel.com>,
	Alistair Delva <adelva@google.com>,
	Sandeep Patil <sspatil@google.com>, kbuild@01.org,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	Guenter Roeck <groeck@google.com>, kbuild-all@01.org,
	Philip Li <philip.li@intel.com>
Subject: Re: [android-common:android-mainline-tracking 26/165]
 kernel/sched/fair.c:6424:6: warning: variable 'latency_sensitive' is used
 uninitialized whenever 'if' condition is true
Message-ID: <20190916193752.qmtfcs5fuxn3fqa7@queper01-lin>
References: <201909161819.6hE3UddX%lkp@intel.com>
 <CAKwvOdk+=J0uJi3=tXewZ_BpKujMe2PPtL=NQA00whAMJWeQtQ@mail.gmail.com>
 <CAHRSSEye3PB6V9FnpBbtJTimzvDJavb6SJ_XdfkyWxjMFH_5=A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAHRSSEye3PB6V9FnpBbtJTimzvDJavb6SJ_XdfkyWxjMFH_5=A@mail.gmail.com>
User-Agent: NeoMutt/20171215
X-Original-Sender: quentin.perret@arm.com
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of quentin.perret@arm.com designates 217.140.110.172 as
 permitted sender) smtp.mailfrom=quentin.perret@arm.com
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

Hi guys,

On Monday 16 Sep 2019 at 11:16:03 (-0700), Todd Kjos wrote:
> +Quentin Perret
> 
> On Mon, Sep 16, 2019 at 11:14 AM Nick Desaulniers
> <ndesaulniers@google.com> wrote:
> 
>   Looks legit, consider when the `goto unlock` is taken, then the
>   conditional in that section compares against uninitialized memory.

Indeed, this turns out to be harmless (we'll always return prev_cpu if
we `goto unlock`) but definitely not pretty ...

>   On Mon, Sep 16, 2019 at 3:38 AM kbuild test robot <lkp@intel.com>
>   wrote:
>   >
>   > CC: kbuild-all@01.org
>   > CC: Guenter Roeck <groeck@google.com>
>   > BCC: philip.li@intel.com
>   > TO: cros-kernel-buildreports@googlegroups.com
>   >
>   > tree:   https://android.googlesource.com/kernel/common
>   android-mainline-tracking
>   > head:   01404b7c3d8961cbf4ed3dc0a7a7db617815532a
>   > commit: ba702c5960cc857e7645c309a07f6eca8fb83238 [26/165]
>   ANDROID: sched/fair: Bias EAS placement for latency
>   > config: arm64-defconfig (attached as .config)
>   > compiler: clang version 10.0.0 (git://gitmirror/llvm_project
>   45a3fd206fb06f77a08968c99a8172cbf2ccdd0f)
>   > reproduce:
>   >         wget
>   https://raw.githubusercontent.com/intel/lkp-tests/master/sbin/make
>   .cross -O ~/bin/make.cross
>   >         chmod +x ~/bin/make.cross
>   >         git checkout ba702c5960cc857e7645c309a07f6eca8fb83238
>   >         # save the attached .config to linux build tree
>   >         make.cross ARCH=arm64
>   >
>   > If you fix the issue, kindly add following tag
>   > Reported-by: kbuild test robot <lkp@intel.com>
>   >
>   > All warnings (new ones prefixed by >>):
>   >
>   > >> kernel/sched/fair.c:6424:6: warning: variable
>   'latency_sensitive' is used uninitialized whenever 'if' condition
>   is true [-Wsometimes-uninitialized]
>   >            if (!task_util_est(p))
>   >                ^~~~~~~~~~~~~~~~~
>   >    kernel/sched/fair.c:6508:6: note: uninitialized use occurs
>   here
>   >            if (latency_sensitive)
>   >                ^~~~~~~~~~~~~~~~~
>   >    kernel/sched/fair.c:6424:2: note: remove the 'if' if its
>   condition is always false
>   >            if (!task_util_est(p))
>   >            ^~~~~~~~~~~~~~~~~~~~~~
>   >    kernel/sched/fair.c:6397:24: note: initialize the variable
>   'latency_sensitive' to silence this warning
>   >            bool latency_sensitive, boosted;
>   >                                  ^
>   >                                   = 0

And that is the right fix. I fixed the patch, rebased, and force-pushed
experimental/eas-dev:

https://android.googlesource.com/kernel/common/+/2f9da1a7a3025df9031d56fff130a1fd1a2bbc33%5E%21/#F0

Thanks for reporting !
Quentin

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20190916193752.qmtfcs5fuxn3fqa7%40queper01-lin.
