Return-Path: <clang-built-linux+bncBCIJL6NQQ4CRB4NX5CCQMGQEM2D4DEA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-lf1-x13e.google.com (mail-lf1-x13e.google.com [IPv6:2a00:1450:4864:20::13e])
	by mail.lfdr.de (Postfix) with ESMTPS id 510CD39B8FC
	for <lists+clang-built-linux@lfdr.de>; Fri,  4 Jun 2021 14:26:26 +0200 (CEST)
Received: by mail-lf1-x13e.google.com with SMTP id q14-20020a19f20e0000b02901daf8ea9b7asf3670526lfh.2
        for <lists+clang-built-linux@lfdr.de>; Fri, 04 Jun 2021 05:26:26 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1622809586; cv=pass;
        d=google.com; s=arc-20160816;
        b=uhPrIk3FVuDkP+/S17XAVraF9ZGZd2bdk3lwT/W1myPGf8YMk1/OXOFhWiI6eEsxVr
         nwR8P5Wg/zrShbdByWgcDMj/FUH1Am66tcVWslyD4BB5YY3C0GYgBkb2fqB2BQToS/xF
         lKR+C9HGLOrBnCjVmDW5kEi5LdsK/uA4EJ7mtsKV1uuxOIqLLVGF4iQN5f4A7S+KUFMy
         LJOSROOFFDMVW9JlWDvziEI0TDt5cd9ep+FOOZRE9VoOZuaLP3FlhHnYP1pr9YofgNun
         KmdpZrkm9ySwkmL6VfaxBHQS7+geI2hbgvJML7lhyQegQwQc1h1tf74soQ1hH1e5uAD4
         3FGQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:mail-followup-to
         :reply-to:message-id:subject:cc:to:from:date:sender:dkim-signature;
        bh=u5mtVdEZCsUGCpcUqxS6Vps4SE/iWkgtUI5dDELsdWY=;
        b=srQUwS29OePzOB0gRaVvBqjmPVHq7HxXKHuidWF3js+TbcJQoBIe3Zrzhuk6qKiKbC
         KYZwxcDs+Ak4/qpeWCAkKvZHI0itxhfwDYoJjDc1EwJDlyYIeDxHnhmADYeApCTqNpkK
         lPh5zNOSzhF1qhWSRrrV4Hs0aRjk9D/hVT0Nl9ybOHcNx1aqFuHsL1k43hJSwqNTDhT4
         VSB2sWtWSgmz9Yda1U7BsosDGo+B1PhnfjSqUQLtN81dQEx3ROdOPSQTPpE0OUx6FpwD
         0iTyBjm09qTnO2XqD855i7NcrURkqKT7SYkCugIfwfVCIPa9tS3da0bW/laxfDHEbGu3
         /fUg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@suse.cz header.s=susede2_rsa header.b=MWGFWkeS;
       dkim=neutral (no key) header.i=@suse.cz header.b=mMXZlvJT;
       spf=pass (google.com: domain of dsterba@suse.cz designates 195.135.220.28 as permitted sender) smtp.mailfrom=dsterba@suse.cz
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:reply-to:mail-followup-to
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=u5mtVdEZCsUGCpcUqxS6Vps4SE/iWkgtUI5dDELsdWY=;
        b=C3jYvT5/FrwJwjXXGCpoyupsdutT1SeU8luM0vjypaPS6EKxR8erFspcMwUdsnnknp
         JXPvnPgEkKAyE1udJPF85XWgA7T46fE2yHODLDrip9mBP1IZs3Ai+iX56dLLs5ajDNJ0
         igIWoEGekUEN61QsTYnQE82RcxUF+TMuNySK2mQAc2Qvfb8geMWH47zc3VbWPPyrFEFD
         zEBfd+nu5W/BEv9/ygugveC+f6ajDlGfXHYd/UVJCgr1EhrWBwe87ZIUC2o8+epAVDQh
         XLJBNQfoYT+L59MAt5WTJ6zjlU1BBNXzpPgd15iqDxMFn3M6s51y6b0b8PQ+bf4x7ME2
         RruQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :reply-to:mail-followup-to:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=u5mtVdEZCsUGCpcUqxS6Vps4SE/iWkgtUI5dDELsdWY=;
        b=OuINhMorrkG8VuLAiMQK9Qq2SEwbvpmCmASOljP3iW8LYnBjwP0hvwJCWoFAYJw9BO
         9wGqR41rBFL5dmb3Sa5ONOUXZ0EVppBFLRWCorttqO7ElFv8TvfX4IXjel9XVNnViIIa
         niUVtegsuEZIOg2w6SpOb3bEHyhA9TNymEmr06Tl9Vk4i4PiJRlQpy4Naj9xBcdshbUs
         W5mE3i1swblE1LSDTV68BRGvdXth5dVAUSx7hetbF6OJyovFGN1qZAOwqUmTKzJLnZ2p
         JqTtcFZTs0/TCzBus+2aOPEAUi3CPUE4B440mkZJtPNT4Jw4cJE+V6IFKMcPs9hW13Ep
         6oyw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM531ivMBryzNhKLqcqcHZ/Ip9qm8nU31lWxljijdm78mBgDASFbxC
	XxEkafyddt92gFpyBlNrShk=
X-Google-Smtp-Source: ABdhPJzl0HIxta6KJBN3wMPqB4yFJnVHfi33GZnaBfei9an8G+/k/sF9izVNlepQXy/9FSPn3ISa8w==
X-Received: by 2002:a05:6512:603:: with SMTP id b3mr2482553lfe.376.1622809585909;
        Fri, 04 Jun 2021 05:26:25 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a2e:a371:: with SMTP id i17ls1571563ljn.11.gmail; Fri, 04
 Jun 2021 05:26:24 -0700 (PDT)
X-Received: by 2002:a2e:9c05:: with SMTP id s5mr3185721lji.208.1622809584913;
        Fri, 04 Jun 2021 05:26:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1622809584; cv=none;
        d=google.com; s=arc-20160816;
        b=Vn7Dnyc30iQhYPVVx5F1kQJpaepiOXL/SY+i2WlA1JO2tulmq7E4x/91NeXJtsFREk
         GNT30VbxpL+VT/GvGzmKBEIEG+EcUHbmLiBQEzgYt7fuBlAOlaM6HREEEC6L0pGIe8/x
         6Hvs7qXUIo25Bb8v6ZzMGsySPw4ZTHEVP40Tg7ru6LJid2VwqVT1N+ZzXAiJrROOOWhV
         6ZpyOz2Eb6jxUBzSh28xvJ/aqJmpcG6WVYR6ovBQQUazsLGW3kdX+dhYu05xJsY3ILAt
         WK4msEQHkTSlG/ITUfiNc++qr9RGoRS5pUxGfUZaBsZitgciMf5AmknI36CTl0NbcO8+
         qJjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:reply-to:message-id:subject:cc:to:from:date
         :dkim-signature:dkim-signature;
        bh=68aSFdxQrCcgu3e4kaM9HdB6LJTQPLk85xJqiAjeVBA=;
        b=syAPNAMkSO8u+Km+HgbONriDU7sMZVte3OWuPm74eRkNDZMvaJP8rXSQ7efmJuHBTm
         pqN95qQ4nIQE93Xi7eA61SRvAF44ZvM3ASpMm5UsFP7+GVmV7pA5NrkID4nfaBXukJX1
         9W4y1I/aWEwFlLMMKOAUu0RTO6bdeEkzzMqFIDvK9Y3Md/kWvYpuLWVOCkzVqDnkkhcr
         BReRg+r5cfxhO+lkhrnApm3Ocl6XvCnGJKKpAkZEoCeHHRLH2gbZv109M1D5qi74O4qf
         tKbkrAaKm/Njl0LLOWFzgtSGwU3yMdJ1cVdas79kQwsXhMoM9SU2Ma7YEYiG+IirBdUN
         d0HA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@suse.cz header.s=susede2_rsa header.b=MWGFWkeS;
       dkim=neutral (no key) header.i=@suse.cz header.b=mMXZlvJT;
       spf=pass (google.com: domain of dsterba@suse.cz designates 195.135.220.28 as permitted sender) smtp.mailfrom=dsterba@suse.cz
Received: from smtp-out1.suse.de (smtp-out1.suse.de. [195.135.220.28])
        by gmr-mx.google.com with ESMTPS id d10si76780ljl.5.2021.06.04.05.26.24
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Jun 2021 05:26:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of dsterba@suse.cz designates 195.135.220.28 as permitted sender) client-ip=195.135.220.28;
Received: from relay2.suse.de (unknown [149.44.160.134])
	by smtp-out1.suse.de (Postfix) with ESMTP id 211A221A28;
	Fri,  4 Jun 2021 12:26:24 +0000 (UTC)
Received: from ds.suse.cz (ds.suse.cz [10.100.12.205])
	by relay2.suse.de (Postfix) with ESMTP id EBE66A3B81;
	Fri,  4 Jun 2021 12:26:23 +0000 (UTC)
Received: by ds.suse.cz (Postfix, from userid 10065)
	id 85E78DB225; Fri,  4 Jun 2021 14:23:42 +0200 (CEST)
Date: Fri, 4 Jun 2021 14:23:42 +0200
From: David Sterba <dsterba@suse.cz>
To: Nathan Chancellor <nathan@kernel.org>
Cc: Chris Mason <clm@fb.com>, Josef Bacik <josef@toxicpanda.com>,
	David Sterba <dsterba@suse.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nikolay Borisov <nborisov@suse.com>, linux-btrfs@vger.kernel.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] btrfs: Remove total_data_size variable in
 btrfs_batch_insert_items()
Message-ID: <20210604122342.GB31483@suse.cz>
Reply-To: dsterba@suse.cz
Mail-Followup-To: dsterba@suse.cz, Nathan Chancellor <nathan@kernel.org>,
	Chris Mason <clm@fb.com>, Josef Bacik <josef@toxicpanda.com>,
	David Sterba <dsterba@suse.com>,
	Nick Desaulniers <ndesaulniers@google.com>,
	Nikolay Borisov <nborisov@suse.com>, linux-btrfs@vger.kernel.org,
	linux-kernel@vger.kernel.org, clang-built-linux@googlegroups.com
References: <20210603174311.1008645-1-nathan@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20210603174311.1008645-1-nathan@kernel.org>
User-Agent: Mutt/1.5.23.1-rc1 (2014-03-12)
X-Original-Sender: dsterba@suse.cz
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@suse.cz header.s=susede2_rsa header.b=MWGFWkeS;       dkim=neutral
 (no key) header.i=@suse.cz header.b=mMXZlvJT;       spf=pass (google.com:
 domain of dsterba@suse.cz designates 195.135.220.28 as permitted sender) smtp.mailfrom=dsterba@suse.cz
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

On Thu, Jun 03, 2021 at 10:43:11AM -0700, Nathan Chancellor wrote:
> clang warns:
> 
> fs/btrfs/delayed-inode.c:684:6: warning: variable 'total_data_size' set
> but not used [-Wunused-but-set-variable]
>         int total_data_size = 0, total_size = 0;
>             ^
> 1 warning generated.
> 
> This variable's value has been unused since commit fc0d82e103c7 ("btrfs:
> sink total_data parameter in setup_items_for_insert"). Eliminate it.
> 
> Fixes: fc0d82e103c7 ("btrfs: sink total_data parameter in setup_items_for_insert")
> Link: https://github.com/ClangBuiltLinux/linux/issues/1391
> Signed-off-by: Nathan Chancellor <nathan@kernel.org>

Added to misc-next, thanks. I've removed the Fixes: tag, we've been
using this is for patches that should be backported or otherwise point
to a patch that causes a real bug.

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20210604122342.GB31483%40suse.cz.
