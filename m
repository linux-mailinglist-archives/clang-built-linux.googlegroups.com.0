Return-Path: <clang-built-linux+bncBCILJWNIZYHBBYGJ4P6AKGQE7F27FGI@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oo1-xc37.google.com (mail-oo1-xc37.google.com [IPv6:2607:f8b0:4864:20::c37])
	by mail.lfdr.de (Postfix) with ESMTPS id 3BE0C29CDA6
	for <lists+clang-built-linux@lfdr.de>; Wed, 28 Oct 2020 04:26:26 +0100 (CET)
Received: by mail-oo1-xc37.google.com with SMTP id f12sf1711081oos.23
        for <lists+clang-built-linux@lfdr.de>; Tue, 27 Oct 2020 20:26:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1603855585; cv=pass;
        d=google.com; s=arc-20160816;
        b=NvA188pCvoFLn4p7lLiCxdDXrRvGR4pJp5HPMepuLG8T0JiCegSLlbZBeUpVvz3NwO
         hLMTIh5v9CZ6WVEgDk+4r395sKBFaH8f2hqTFSWjSIBlfsjFtEpan8Azyy8VNzwObWWG
         FMpuY45pcfIHEaCf201mXEL/LPXZ99gYj10ppG0gsa97J/0J5tbqhXD5I2YhDN4rKH4D
         rodAPrJhp6BCt0VYLIP2Ra0Xp3L9x/vkEZL9FsVISdUXKjqux2JqA6qE4i8qGPBUb/74
         iYV4uaunne6VzzKHy8HE+YW1YSJSANcqkOgPej/o0ZVOx9apEzk2MWdYMc774jFucW6W
         LvRg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:mime-version:references:message-id
         :in-reply-to:subject:cc:to:from:date:sender:dkim-signature;
        bh=GFHUfJ86+k3syzgNR0zgdviMnplKqeVjYwlU/Wzm5pY=;
        b=zvRLBxdS3wCe194dR/PHTXgdR8WAkSNHQlKH0Sb7LQ2FUgNgXorOelXd+sQV74ASkO
         nd9Hd5ys86LEnAFPOKNnShvsHPfFxlPvMHl8C6gdI87BTyswJj4uqK5BPOlHSeiiuSgP
         jytQtNyp6VevlhvXx5GWVHg+DQvL39/U87EDRdL6MxwV2b0X+B1sr5/wAWc7GQx+Z6vz
         Rry+HlnHwLyCnDQr8y1muxY+LA1GMQ+KkDtMJoUA5BzHqhR4N/2180SOSYPtG9xQO+SX
         r6z7xmgOmedUhnDi23dDB38pgob0/J2enSh0URMZEKfUa/WoUkAPSLv/LpcoqkBWjUgB
         Pe9A==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of fthain@telegraphics.com.au designates 98.124.60.144 as permitted sender) smtp.mailfrom=fthain@telegraphics.com.au
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:in-reply-to:message-id:references
         :mime-version:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GFHUfJ86+k3syzgNR0zgdviMnplKqeVjYwlU/Wzm5pY=;
        b=lGNSbQ6F9/Os4r0wZ7DvdlACUFPfvuxE24O/INp007PZ6Q0XdseiqLSIeJRfgA3x/u
         nhq6RNWzO7SNXg+wg5h+7g+XTY/zeI2AmmHmTJ7uLpWM0bC3rAVHvWILmhvA5FcWlsGq
         M4szPer+G/qXVwFiZT/LnXVGgJwpR0DJOvUeA5+H2KAjEv2xXk1e032ROyVEszimXV0t
         vFc0QuWFpyNin4kjIUS952KoY4/+E4njno5xDnwYVSDCxYp/2U8uKiQA9nbfJ+Rmm0DM
         VZfu9BSrWUHGJGK0952k8nF0tvjkyXpZlVUBsQEArjkVTurkxoiL9t1JpquqVL2uf41b
         oV1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:in-reply-to
         :message-id:references:mime-version:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=GFHUfJ86+k3syzgNR0zgdviMnplKqeVjYwlU/Wzm5pY=;
        b=qrosex/CYFCWpMLLLaKKXhlukuNDmBGDUJApJ38EG/NzdlrRIjJWX0OMGIdyFoOQWX
         evNo3Mf1oIXqJqnw+u42XHyRAixFmReLvrQqpXIzrmK8Py+PKRU4pXPY9GGeHt4ItuNR
         DHYnM+8++NyGuLFc5PIUKFfRqiPuczRa2Il8GFfup3NB7A1ZZtaGCHT+XUn/IX6dKewT
         GiUAPWxVjBvq0HsAW3PfD1AkNdXT/nv5hEDto/SkCFrxDJHMSoL6HDwCWJoTOJBhG5VT
         Xvi3sYk0DBTwBAlR4TL3fAPmyOvseJsNVvN8pFjvVjJIJ01WC96u8wZn51S64cCdjk8b
         pOsQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532qUD6fb9llN+CaiRzkdbRpJxmc0mCsL1sVTnlYrBtxE1yQEURC
	qRLlzZTjmpzXcfR2mj3NSPM=
X-Google-Smtp-Source: ABdhPJwaEx0scflltnl1VQhPpqKTy8QTWvDmL0BerOuQJKLNWTwrozM4iUS6yvmJvPpR/0E8u1QyXw==
X-Received: by 2002:a4a:972c:: with SMTP id u41mr4293447ooi.10.1603855584999;
        Tue, 27 Oct 2020 20:26:24 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:6b81:: with SMTP id b1ls888892otq.8.gmail; Tue, 27 Oct
 2020 20:26:24 -0700 (PDT)
X-Received: by 2002:a9d:3b84:: with SMTP id k4mr3982990otc.4.1603855584647;
        Tue, 27 Oct 2020 20:26:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603855584; cv=none;
        d=google.com; s=arc-20160816;
        b=KEeERsXgYYDnv3bUmaBLYRdz+CeV0V7uXjI4vRIpkqCDXuAh518tck38vBxnsSonrJ
         XIL54bwtTYHFVdrP+OU8cdKgmyIIMnPXK2X/RE88wURq424AAiR9MMUE9Ac+iRWHYFUT
         gbKr7d9Fb7UR2LSpejmh9UYyLQ0YUy+vY6u2L2jIRz0MWZbryrVftff4OZyn60Rnf3EQ
         6sOHEyjMOeVGdc3EhlVFl20ymhzX2zz0yoPekrsTsJyP0CAvp1Tlw67+ljAOG9I7efum
         sN7e3vOvB3IfacrBtdt78ym5dKRqfTOQzlW4hUK9rjKYe060B05L4N3ZM9jQaDpgWAPW
         DFrQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:references:message-id:in-reply-to:subject:cc:to:from
         :date;
        bh=1H/+XRuk87ocJVI4DFUJqadNY+HYTZRFdhQvIeG0Gcw=;
        b=ORPQ8Q2BpNsB8z4cHB6cUaEUGnt4npZ9rd4oq8acc420cZkP1WIgWtiTD6qHu/ERb4
         scJnODZ9RsnGkGCTt5zoYvJ4r09LHEf9YQ8jwYtycJboBhxx3JKlIW4ofXpMSakfJ6om
         r8mVGqsz4xH/76G0escoG0TMp0aYqJ0gC5/YGg0tuwckgxMXe8BqhpQ3H562gzYw3aKD
         LvCQshx/b0qEmWkWsr2JKCilJJ84cPFeWWDFshYK8t1uf7HDhUHrQw+11nLdclE5iHuy
         hu7+kpXw9SsI26fyj/6uR9Zn/b2cnwYqrc/rtnAvJdWCHWaKgF+GIhjSSTEaYrTA9aNh
         6HEQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of fthain@telegraphics.com.au designates 98.124.60.144 as permitted sender) smtp.mailfrom=fthain@telegraphics.com.au
Received: from kvm5.telegraphics.com.au (kvm5.telegraphics.com.au. [98.124.60.144])
        by gmr-mx.google.com with ESMTP id q10si325851oov.2.2020.10.27.20.26.24
        for <clang-built-linux@googlegroups.com>;
        Tue, 27 Oct 2020 20:26:24 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of fthain@telegraphics.com.au designates 98.124.60.144 as permitted sender) client-ip=98.124.60.144;
Received: from localhost (localhost.localdomain [127.0.0.1])
	by kvm5.telegraphics.com.au (Postfix) with ESMTP id A654929A58;
	Tue, 27 Oct 2020 23:26:19 -0400 (EDT)
Date: Wed, 28 Oct 2020 14:26:12 +1100 (AEDT)
From: Finn Thain <fthain@telegraphics.com.au>
To: Tom Rix <trix@redhat.com>
cc: linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com, 
    linux-pm@vger.kernel.org, linux-crypto@vger.kernel.org, 
    qat-linux@intel.com, amd-gfx@lists.freedesktop.org, 
    dri-devel@lists.freedesktop.org, linux-iio@vger.kernel.org, 
    linux-rdma@vger.kernel.org, linux-mmc@vger.kernel.org, 
    netdev@vger.kernel.org, linux-mediatek@lists.infradead.org, 
    linux-amlogic@lists.infradead.org, 
    linux-stm32@st-md-mailman.stormreply.com, linux-rtc@vger.kernel.org, 
    linux-scsi@vger.kernel.org, linux-aspeed@lists.ozlabs.org, 
    linux-samsung-soc@vger.kernel.org, linux-btrfs@vger.kernel.org, 
    linux-nfs@vger.kernel.org, tipc-discussion@lists.sourceforge.net, 
    alsa-devel@alsa-project.org, linux-rpi-kernel@lists.infradead.org, 
    linux-tegra@vger.kernel.org
Subject: Re: [RFC] clang tooling cleanups
In-Reply-To: <20201027164255.1573301-1-trix@redhat.com>
Message-ID: <alpine.LNX.2.23.453.2010281344120.31@nippy.intranet>
References: <20201027164255.1573301-1-trix@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: fthain@telegraphics.com.au
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: best guess record for domain of fthain@telegraphics.com.au
 designates 98.124.60.144 as permitted sender) smtp.mailfrom=fthain@telegraphics.com.au
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


On Tue, 27 Oct 2020, trix@redhat.com wrote:

> This rfc will describe
> An upcoming treewide cleanup.
> How clang tooling was used to programatically do the clean up.
> Solicit opinions on how to generally use clang tooling.
> 

This tooling is very impressive. It makes possible an idea that I had a 
while ago, to help make code review more efficient. It works like this. 

Suppose a patch, p, is the difference between the new tree, n, and the old 
tree, o. That is, p = n - o.

Now let clang-tidy be the transformation 't'. This gets you a much more 
readable patch submission, P = t(n) - t(o).

The only difficulty is that, if I submit P intead of p then 'git am' will 
probably reject it. This is solved by a little tooling around git, such 
that, should a patch P fail to apply, the relevant files are automatically 
reformatted with the officially endorsed transformation t, to generate a 
minimal cleanup patch, such that P can be automatically applied on top.

If the patch submission process required* that every patch submission was 
generated like P and not like p, it would immediately eliminate all 
clean-up patches from the workload of all reviewers, and also make the 
reviewers' job easier because all submissions are now formatted correctly, 
and also avoid time lost to round-trips, such as, "you can have a 
reviewed-by if you respin to fix some minor style issues".

* Enforcing this, e.g. with checkpatch, is slightly more complicated, but 
it works the same way: generate a minimal cleanup patch for the relevant 
files, apply the patch-to-be-submitted, and finally confirm that the 
modified files are unchanged under t.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/alpine.LNX.2.23.453.2010281344120.31%40nippy.intranet.
