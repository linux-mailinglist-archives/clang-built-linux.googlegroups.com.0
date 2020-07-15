Return-Path: <clang-built-linux+bncBCRIZROPVQPBBCP2XH4AKGQE34T5OOA@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-pl1-x63d.google.com (mail-pl1-x63d.google.com [IPv6:2607:f8b0:4864:20::63d])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D9F0220311
	for <lists+clang-built-linux@lfdr.de>; Wed, 15 Jul 2020 05:50:34 +0200 (CEST)
Received: by mail-pl1-x63d.google.com with SMTP id x14sf1394945pln.18
        for <lists+clang-built-linux@lfdr.de>; Tue, 14 Jul 2020 20:50:34 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1594785033; cv=pass;
        d=google.com; s=arc-20160816;
        b=icWU4QBnwzptibIe3i5f//xbIgPxNJJHq30pD7FaRCDd8FRlb1fp3DtKf/U2YbqpWx
         QKZvb29t7h2TYwS9qBNZmWTdpmdhyolK+RQuHgFBU+YI38yG9LaPjjfDpMO4VUr/qxEu
         NfJ9fN0BnEONfKkyQq2jHg0+pj0PduekpirTgZTpOxBk9gpEIbVV01zHHdtWbTo1zjVM
         LutQYt+Yx8iQxmvuQQkO/3zdTTj9AlVob9NJltMQOr+fNd3jORUHeFnrfShiEJ6FZixA
         09ZSf4s/FDoCrJeSw0PwMegbr47HI/1Ko4UHIh8ZnHVXUWnfxyTIYhBesYR7ZllVF0CJ
         TLhA==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:message-id:subject:cc
         :to:from:date:sender:dkim-signature;
        bh=O3YuNPYzbIILRwRnJPaThsqnU2eVTk9p3xXnzDX1b0E=;
        b=XLCrBMnjUqjhYXDk5jGCOQgbuGnY7sx5SOzXPVwrMRPAB6L+p7abx28D9Bn8awAkgx
         dqJZ2olrtCS1lk+/PyqPpwkIYDuAzorcHR9LoKNUHhU/pPvVRrIoZxbskJjHWDCpPwJ/
         Wdkznygbd/HfIuIM9JNx3A0GFh7VW+h42KK+D8YZFVXR4N05knnYbtGZ4/2FonflKchI
         31SWLkK0Nu+QjQd1nrc99SKjznU+ZWGb1ldP4eeNOow4XZM509sBO39l0HzWOgqo4P4J
         DpmA5SnR0Elg/jBCzlXzoTgmkSEgzTkPmHunjn/WsUt+SnCFNqY7/13wMlVb3J35eVGX
         i8Dg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=DnYSXdJL;
       spf=pass (google.com: domain of viresh.kumar@linaro.org designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=viresh.kumar@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=O3YuNPYzbIILRwRnJPaThsqnU2eVTk9p3xXnzDX1b0E=;
        b=HWFmEKD8M1ax2gCDwbQxgCdzl0OK6GK/iiwzn2NYKhJ3g22BcfFpOBx1H8KskwkQy7
         LpUtd0MeFD1zn+8tQubjYpFNhQ0+ZuAGgPXTqi++VuxpMKtybT5fzmkOrYBZvxn+sEwA
         IY2jzKKQ0Cx2c+Ov4+kqaUFQBRLqf+kcD/5WxGDDzpU7jzADumGGK35sJnaDUkyGoZAv
         tYwI8WzHuw8Mo2Y17L2rT1YpFdOTtr7vTUz4Z2epOU/K2bWvXK1VDDY/YSkYmsYPLh/1
         5Q9Xk6Ot0BVSZLCP0JQkGOFcPmy6MfjSIA37tZwJeG/hR02xSipxwYYeK6cg2Fc6zx8n
         PBTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:x-spam-checked-in-group:list-post:list-help
         :list-archive:list-subscribe:list-unsubscribe;
        bh=O3YuNPYzbIILRwRnJPaThsqnU2eVTk9p3xXnzDX1b0E=;
        b=oeVpb7Wce94jq2IEVbAK58/+Yj0rzWVLEkc5iOV4VabwI4AXw0ShNEshBayX8xZfg9
         wAEq72emQjJCw2H5B0mMwidyyTRNnQH795Gix3r/n91Mr/uT0BIPP4b1lkMA79lhGDWZ
         9ULi50ABwP0cZpi+VfPVsOqO3Q8Ya5iWfAYUC4ra6QHZqfrK15v3GqkFxOs7g2nMgAu3
         X5psGIMrkINrrIe+KITF1g/6sKiZDyydGHlBqkVNDI+sPSCq71XQXQQ+Ameeb6NZk6yw
         oQu8NNkTxoFzFQKHwiMg5E9jJg6djziUgmpBcdQRvRNjDpG5pxcm+2KuxoOQDHfnegFi
         iodw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM533Asi7/ti0kXMGUTEr18tNLTZ4JzG1OnTAs0DpSUT15B0Ao9Ng3
	hYmWd/KfdJLuF+dLrFEiC1g=
X-Google-Smtp-Source: ABdhPJwL4qU5giZUnvPvNMqwIqPmSw1lmmYGgnAM/RhCwA1M+a0ErZt9xMbJcX2ZqPc3JCO+ZBAvBQ==
X-Received: by 2002:a63:e80e:: with SMTP id s14mr6392893pgh.32.1594785033235;
        Tue, 14 Jul 2020 20:50:33 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a17:90b:380c:: with SMTP id mq12ls423053pjb.1.gmail; Tue, 14
 Jul 2020 20:50:32 -0700 (PDT)
X-Received: by 2002:a17:90a:ce09:: with SMTP id f9mr8507576pju.55.1594785032825;
        Tue, 14 Jul 2020 20:50:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1594785032; cv=none;
        d=google.com; s=arc-20160816;
        b=PoFEe8K//XTq/9sA1MT6aOBZncgJ6LYCADBgO8M8ACJuMx7hUF0S90tn5Oxpt3J0uo
         msjB+fnb4jGwkDoKEIrZqZNDbRYmcbhCAcYa1EqkW0OIYTo+3g5Ao/q40xxTmJ98sUu0
         UMjJR0bzxCVkrfceF6aMuyBIpIQ9rCJWcjDefPd7YIefe5eGhAf5kmHXHV0DXNmq31mw
         +SqvJ5OLApRnHx2BwPXwaU0X/2VcEBlcCWPFxbz9DVb2Wf+cuCVEWtlQCUwz1QGEbzb5
         JVRIZbNCnqOTi1UmlIYXNqemKBWWGBOWJ+xynHtvLHOZSMPOA+2bAJNtvUsVRv8P/w0l
         0ePQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=vqrZLlqDpn0lsc3w2rmuURn0QkkHlSV+cbDewjXUjME=;
        b=Bgo0kIenXV4m68JzIMyNDqXtKShxdjIM5OqYDXRNrZzIOqFv7Nij4Z4E/aLix5t/NV
         J6V+i3jzGm4id0+UIuNt9ElpFU8r1lm3bpL2WPveNSX+1KMO9VI8n12cXb7+jIh2quFD
         wEjYTXzUEBVasTLTPAiDiiuVb+GXUknRtP2U8WZcIdFfof5ZvL41Tk/xaNZzdzOjmHGs
         dZstzSePZ3Lsznb5Cl3idnIDt6nm+HJqD7zvUSYUWFE9J7vC8ITiEu7sNtCN2xEmX1QK
         EubK+oQzgIuIFB2fTj6nIJRx6XjehCVbM2CryJQCwsrDG9e96fna8C5l6sE7t5hemQet
         RnWw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linaro.org header.s=google header.b=DnYSXdJL;
       spf=pass (google.com: domain of viresh.kumar@linaro.org designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=viresh.kumar@linaro.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linaro.org
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id y9si59985pgv.0.2020.07.14.20.50.32
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Jul 2020 20:50:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of viresh.kumar@linaro.org designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Received: by mail-pl1-x643.google.com with SMTP id l6so1547854plt.7
        for <clang-built-linux@googlegroups.com>; Tue, 14 Jul 2020 20:50:32 -0700 (PDT)
X-Received: by 2002:a17:902:b682:: with SMTP id c2mr6336031pls.273.1594785032500;
        Tue, 14 Jul 2020 20:50:32 -0700 (PDT)
Received: from localhost ([122.172.34.142])
        by smtp.gmail.com with ESMTPSA id y17sm535318pfe.30.2020.07.14.20.50.31
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 14 Jul 2020 20:50:31 -0700 (PDT)
Date: Wed, 15 Jul 2020 09:20:30 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: kernel test robot <lkp@intel.com>
Cc: Ingo Molnar <mingo@redhat.com>, Peter Zijlstra <peterz@infradead.org>,
	Vincent Guittot <vincent.guittot@linaro.org>,
	Zhang Rui <rui.zhang@intel.com>,
	Daniel Lezcano <daniel.lezcano@linaro.org>,
	Juri Lelli <juri.lelli@redhat.com>,
	Dietmar Eggemann <dietmar.eggemann@arm.com>,
	Steven Rostedt <rostedt@goodmis.org>,
	Ben Segall <bsegall@google.com>, Mel Gorman <mgorman@suse.de>,
	kbuild-all@lists.01.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH 1/2] sched/core: Rename and move schedutil_cpu_util to
 core.c
Message-ID: <20200715035030.sktx5oecvihhs5ct@vireshk-i7>
References: <83d42cb2e589235750d68c9beada882ec93aeedd.1594707424.git.viresh.kumar@linaro.org>
 <202007142126.cce7w0AU%lkp@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <202007142126.cce7w0AU%lkp@intel.com>
User-Agent: NeoMutt/20180716-391-311a52
X-Original-Sender: viresh.kumar@linaro.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@linaro.org header.s=google header.b=DnYSXdJL;       spf=pass
 (google.com: domain of viresh.kumar@linaro.org designates 2607:f8b0:4864:20::643
 as permitted sender) smtp.mailfrom=viresh.kumar@linaro.org;       dmarc=pass
 (p=NONE sp=NONE dis=NONE) header.from=linaro.org
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

On 14-07-20, 21:05, kernel test robot wrote:
> Hi Viresh,
> 
> I love your patch! Yet something to improve:
> 
> [auto build test ERROR on tip/sched/core]
> [cannot apply to tip/auto-latest pm/linux-next linus/master v5.8-rc5 next-20200713]
> [If your patch is applied to the wrong git tree, kindly drop us a note.

Yeah, I based it on tip/master.

> And when submitting patch, we suggest to use  as documented in

I think you are missing something between "use" and "as" here ? --base
?

-- 
viresh

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20200715035030.sktx5oecvihhs5ct%40vireshk-i7.
