Return-Path: <clang-built-linux+bncBCUJ7YGL3QFBBEUZ5SBAMGQEYV7TXZQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63f.google.com (mail-pl1-x63f.google.com [IPv6:2607:f8b0:4864:20::63f])
	by mail.lfdr.de (Postfix) with ESMTPS id 7FD1E34751B
	for <lists+clang-built-linux@lfdr.de>; Wed, 24 Mar 2021 10:55:32 +0100 (CET)
Received: by mail-pl1-x63f.google.com with SMTP id h4sf750344plf.3
        for <lists+clang-built-linux@lfdr.de>; Wed, 24 Mar 2021 02:55:32 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1616579731; cv=pass;
        d=google.com; s=arc-20160816;
        b=FAVmJ1/8g6610PJz9unu0jaVjuAFOVO2i3Sp9vfli5jBMemiqhqoqaYZezUqq0KlIH
         tfvhcdtaizX8Pj87SLXsPk/BVV6BW+PqCJodLZwf5DtEujTFplQxttROaNsSZiucAWkW
         N0hyVo0pLHVf/Yx5Pj/D4F3u3mIyg2fGNr008MTHIYnh9vBJZKtXPM0/QCHCchFPfF6d
         fnPECjpG0TqeqRUQClGC62vsJuBsNF4SGE4T4//slOVTUzzoGY0Ish+OeTr20CwBffWT
         sVs0mjP3vpB7zHhkoUGn1lCyxjGD18GYL7fN5+/aYpjHdd68HlWfQFj/6cYfB+4fHGZY
         KBQg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=zoXuG7jGsGDcm2vzyzF5oUI0w1r6H1EHyBudw21GozM=;
        b=OHOwLiUMOyToQ8dr7hxIM83EMQ8JrpPYJbBGYr0Z6r3nxwlQlV4EO4yTjRr923h6J6
         q3oIVR0uCWKdYDCHbADUBfub6K4jmegKCRUo1vwdUyw7Dig296U2nXVAzXcBr4CAvySw
         L+2ysbFieARHIJFHdAQEaYgrcaRsntd1LLql6/zHUx17H4gQBeU+IPn0H9wT7/RnblDL
         QmaVnsXDc6NZgnuY0eIWT4jyct144fzwv+PXhC/LWtmLNY+bSnncFQhSz8VLg0y0g5sq
         VksfGpTelFklXcf5lWPTKhiDgf49BlSWrw6ljrK1HpE28F5NRL3jw2iTI/Loc9bqUDqf
         9isA==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=ye9LfB9h;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=zoXuG7jGsGDcm2vzyzF5oUI0w1r6H1EHyBudw21GozM=;
        b=qdCxfgqr9bl/PMkM8gjTOvHA1QXk1Z7GP6zOMtJjsT8hwHqM8S5PttKbbRQstR0AIk
         zdd9pUV3OLx8c+JD+QXF0U/lzrc5OwgGudXKxKuKxARaXAIif1sxSTi7bJwAU9MaV2HJ
         pTvjRm2t1Ehv4T1sqY0yfR1JXnqBRwkTZUHxW8xgDqH4utZoTRq3XHVDjsVg63cFZraN
         F1q7BE9oQ+LAkLM71yL+ibr3RdoYISsQ9fNPzNfnf8/6YGhA7YWvkl+Cr3++cY5nspST
         viayFxGE8VTqBMZqDwkScu5tMwQ6NrPhYNpi5g6letZ8iBlcXwjz5njpMGp7jYzRh3AX
         b09w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=zoXuG7jGsGDcm2vzyzF5oUI0w1r6H1EHyBudw21GozM=;
        b=D8WtxdgkgZLJOHBmzo7Cbw/PBN2ybeAkM2EtLfieoovi/IUM1xC1DyJFK5m5CkIs/3
         c9e9prsv/SlGYiQQwGsWQVT7u4195qr5fUsikI4dvtC6XmsRYdko3vXKuBJe4r4d4snT
         I1LuqEUTlrMeIaRTEml/BQVMrPxclzEIaBY1acmBHXWS9bdXzccf199yEACXKQFEfXQC
         mIV7wuD6KdgnD3Cekc5zGhg/28mkf5QLh4udCwasHkBy1+WW6vgct6TEyUlwOKn107D3
         U6BCmdvZ32hQK3zlnYC/P5MyrcCO6gopiaexLTqa8LevPp7u4wbxGiN//aVtKY2x5BuH
         4LUg==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533Gx2TuGce+YToWrS7n6bdeYdhxaeSzWdIjVEKkzGQ3yDmg5sSM
	RBagsmK/VqWrpCjVF7rvNsM=
X-Google-Smtp-Source: ABdhPJxJXq2gnmGvoJu0mr1DT5I3ndVxSsDAsv3nNoeeSwGrGzvHQt9rtTdwXKBT5IuEUE779hSMuw==
X-Received: by 2002:a17:90b:909:: with SMTP id bo9mr2558717pjb.107.1616579731100;
        Wed, 24 Mar 2021 02:55:31 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90a:ab81:: with SMTP id n1ls955548pjq.3.gmail; Wed, 24
 Mar 2021 02:55:30 -0700 (PDT)
X-Received: by 2002:a17:90a:bb02:: with SMTP id u2mr2647952pjr.175.1616579730568;
        Wed, 24 Mar 2021 02:55:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1616579730; cv=none;
        d=google.com; s=arc-20160816;
        b=TrqQ1sS1gVVHT6iWgEH3W9WfhFE0fOp1EB6QSTs3+pUSXJSJNsoshdBm3nWSBGEgYa
         wawe45f3SN4WlUBXIlQdyjZ6HOddhWhHSiYZAA2LFEU12syREkM9R1s2re7jLOiynWmg
         rVGHUosPXyvbGGlkNwJb0ZrY1dWyAaebI7Xn2Y9IObkrItfN/jsxZZLhfQ/4iVVzyOg7
         H436S0/guwR0jKMZB6XJfS6MM7C/lQTt18PpXl9hRzvEvyDxJJaJ/ru6GBFgUS0Tu3NH
         swP5Z+V5wrcV2ovtN4rACOX6UTb/Go1SqZ2Ehe5WDpWP9v+QoLjYgG4JISP/IhJAipvn
         nr7g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=y87o/dhXEoQeoI9wjN5qrgxBM2iUO/e92+y4G+QuboQ=;
        b=ojHwBCm2DBxcq7OQzCFc5FI3n4Ud3FyrzqdhrDd1FRq0EnRR+VhHKK1kcTRtxqLWOr
         TYcZ5m9hhYAp3krwBd1Ham2RbXSdDGwyQA/5xl33wiS3Vr1QuvoQhM02Pfdhye5YasHt
         Y1aI+apQW3ABe7QmcM9YYlpUnMKyKv3u9aN+cXOtos54dcDJVkYVHhKQFEb7b8L5lk5L
         DjVMGNLBzt+3yo8hsFS37T02EoCnPqk+r6gOcw8bu4w7W4qfCw/uR5i3KLbL8ITfnrUn
         aNnjnkNZOS0BjBRrozUbMWsn114m3vrTqjX/glS/mIEkyYlsOSdMzHW+cU/yHvlIFwTq
         yVLw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=ye9LfB9h;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id k21si100830pfa.5.2021.03.24.02.55.30
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Mar 2021 02:55:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: by mail.kernel.org (Postfix) with ESMTPSA id 8714B619FF;
	Wed, 24 Mar 2021 09:55:29 +0000 (UTC)
Date: Wed, 24 Mar 2021 10:55:27 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Nick Desaulniers <ndesaulniers@google.com>
Cc: Sasha Levin <sashal@kernel.org>,
	clang-built-linux <clang-built-linux@googlegroups.com>,
	LKML <linux-kernel@vger.kernel.org>,
	"# 3.4.x" <stable@vger.kernel.org>
Subject: Re: [PATCH] scripts: stable: add script to validate backports
Message-ID: <YFsMj3kL5Rl/Dc5R@kroah.com>
References: <20210316213136.1866983-1-ndesaulniers@google.com>
 <YFnyHaVyvgYl/qWg@kroah.com>
 <CAKwvOd=9HwLcTD8GaMsbEWiTPfZ+fj=vgFOefqBxDYkFiv_6YQ@mail.gmail.com>
 <YFo78StZ6Tq82hHJ@kroah.com>
 <CAKwvOdmL4cF7ConV8841BX+Pey571KDWM8CBt8NnYY47vJ_Gfg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <CAKwvOdmL4cF7ConV8841BX+Pey571KDWM8CBt8NnYY47vJ_Gfg@mail.gmail.com>
X-Original-Sender: gregkh@linuxfoundation.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linuxfoundation.org header.s=korg header.b=ye9LfB9h;       spf=pass
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

On Tue, Mar 23, 2021 at 01:28:38PM -0700, Nick Desaulniers wrote:
> On Tue, Mar 23, 2021 at 12:05 PM Greg Kroah-Hartman
> <gregkh@linuxfoundation.org> wrote:
> >
> > The only time git gets involved is when we do a -rc release or when we
> > do a "real" release, and then we use 'git quiltimport' on the whole
> > stack.
> >
> > Here's a script that I use (much too slow, I know), for checking this
> > type of thing and I try to remember to run it before every cycle of -rc
> > releases:
> >         https://github.com/gregkh/commit_tree/blob/master/find_fixes_in_queue
> >
> > It's a hack, and picks up more things than is really needed, but I would
> > rather it error on that side than the other.
> 
> Yes, my script is similar.  Looks like yours also runs on a git tree.
> 
> I noticed that id_fixed_in runs `git grep -l --threads=3 <sha>` to
> find fixes; that's neat, I didn't know about `--threads=`.  I tried it
> with ae46578b963f manually:
> 
> $ git grep -l --threads=3 ae46578b963f
> $
> 
> Should it have found a7889c6320b9 and 773e0c402534?  Perhaps `git log
> --grep=<sha>` should be used instead?  I thought `git grep` only greps
> files in the archive, not commit history?

Yes, it does only grep the files in the archive.

But look closer at the archive that this script lives in :)

This archive is a "blown up" copy of the Linux kernel tree, with one
file per commit.  The name of the file is the commit id, and the content
of the file is the changelog of the commit itself.

So it's a hack that I use to be able to simply search the changelogs of
all commits to find out if they have a "Fixes:" tag with a specific
commit id in it.

So in your example above, in the repo I run it and get:

~/linux/stable/commit_tree $ git grep -l --threads=3 ae46578b963f
changes/5.2/773e0c40253443e0ce5491cb0e414b62f7cc45ed
ids/5.2

Which shows me that in commit 773e0c402534 ("afs: Fix
afs_xattr_get_yfs() to not try freeing an error value") in the kernel
tree, it has a "Fixes:" tag that references "ae46578b963f".

It also shows me that commit ae46578b963f was contained in the 5.2
kernel release, as I use the "ids/" subdirectory here for other fast
lookups (it's a tiny bit faster than 'git describe --contains').

I don't know how your script is walking through all possible commits to
see if they are fixing a specific one, maybe I should look and see if
it's doing it better than my "git tree/directory as a database hack"
does :)

thanks,

greg k-h

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/YFsMj3kL5Rl/Dc5R%40kroah.com.
