Return-Path: <clang-built-linux+bncBDEKVJM7XAHRBRHQZXWAKGQEFBAYSVY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-yb1-xb3c.google.com (mail-yb1-xb3c.google.com [IPv6:2607:f8b0:4864:20::b3c])
	by mail.lfdr.de (Postfix) with ESMTPS id 413A2C39BB
	for <lists+clang-built-linux@lfdr.de>; Tue,  1 Oct 2019 18:01:10 +0200 (CEST)
Received: by mail-yb1-xb3c.google.com with SMTP id y18sf13860274ybr.3
        for <lists+clang-built-linux@lfdr.de>; Tue, 01 Oct 2019 09:01:10 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1569945669; cv=pass;
        d=google.com; s=arc-20160816;
        b=w60Yktx2+sWkZOiu/xfhUMXpX9OPTA7wnjRm14DDsyvk7IF4pVw0yCFUYT75UbL6oJ
         ViN1xf1mbEzWtD6cwqrwP/GbHaO+h+8n/WtzbwzeVebxY2ZQ59c+kynj6/dRknRX3z3b
         05WKoy9Yt4S++JSsig3PepgmFzAnPixbz+VclllglCssMUc1TUJ3yZq5yTBF952t7a2V
         u2l6EQvLZZD9LYoqEb8h0bmhCNeKQjqpAOBMneamoCV0solUf2EpO2kED0BV9639dd7y
         AMDAV4gKe0RyvBIF750nWA97Zt+ACDSOrqLeK78HO9nzVMkvmlHYrvgjupQoT5vGBQRT
         spHw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:sender:dkim-signature;
        bh=ZOWs9kFd5VBbHmA/qp4Nm59vYSY5XkQw2XbxW1A4Z9E=;
        b=Xp9XQky1aNd35sTcS5tYWypfC2vWgIY/xWHXVHAfsHlm1rZKBKfnRLn0ocZJDXq4iI
         mRpTlyV6PhLc7aT/U4esstqLzHdkN2+rCAkLww2ZTBEcQZ92vdX17Za5tplpeOdest9G
         anR773cGkkVY0gEWMmXyEQ51fKjec2OZH3daRuGzqQl712824DLCRlIQ43Zi5oDrsJHb
         S1YV4Wj1lxs/sZF7tHPlQyXkg+wtWJ2lkYaEGkLJOqkyeDNceBLgN7LSdxLgkjo24/ws
         W+RKZSd2fPm7FnLtUKFud7jvBnrdvOOpHdVNtxZs+ywekrrMzr2MWaBYn+3/aomXFu0P
         oQcg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       spf=pass (google.com: domain of arndbergmann@gmail.com designates 209.85.160.196 as permitted sender) smtp.mailfrom=arndbergmann@gmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:mime-version:references:in-reply-to:from:date:message-id
         :subject:to:cc:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZOWs9kFd5VBbHmA/qp4Nm59vYSY5XkQw2XbxW1A4Z9E=;
        b=ZAumyyusJKbSgklFMRUBnwzrstWttVcbwhaseBdPE/Ftt9R6SWcgn/GW0vhRBBtxiz
         F0T2lvltQnIigl3mI65+TvGe7Z05l5eGa1GIQGvxcvZ1a21B4Moc1Ws3yrqz7D8K6Vt9
         n5WR/jR4hru+TDrdWFAxk8ZLc7PYVhIQq1Cf6KCcgJrHtxPr0OGLyA45KUbPMIAn4vcH
         ToBE6mmBLd2TPEuya1ZFqCX9ebguwx/T3ziyW8PkWts5Wj8VV09Ffr1k0+TIk49+aV0O
         mYLz8Ee47b2nh4uVUlnmKKyLNLLWnHBiv0znpLZydWLv+jTE96b2iY3qGb6YFn//ZLuJ
         AEog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:mime-version:references:in-reply-to:from
         :date:message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=ZOWs9kFd5VBbHmA/qp4Nm59vYSY5XkQw2XbxW1A4Z9E=;
        b=DlskC8Tl9Mb34kFrx9rL1mRl2am1xIBRq+tYVrpOSdK4xytumRwIrWXEauXYZF+rK7
         r7xV3qvLVmgz4suWF0LGNne9HwepsuikwGTFOWMY7phRq552gPcbo8VC1ew1pS8n/3y7
         ngJHPQwyTn75dgJQE187iu7t3tmFx8vnEjZqqLgS4Omx9kkN5AKvqnOUagP/vhWUTvrD
         Wa6dqnGEXbAXocoS+KxFqbp7iB+QrpQeO5vsuMTO9bzHhAHYl0qTbAYRqlXS9goUGBZU
         kU+ww/vk4Jw4ZrXJELmY0G8ajxYp+9c9arRZX/Wj/mlvpqKzZt0qqowgqcJs6J11H7MB
         PlaQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: APjAAAVtyqfvOAqcwE97F+tCEHHx0+M9Da+0QZOw2lsIEwFgEsrhBqNS
	o2LAP2GH5aAssSKF1RMy9K4=
X-Google-Smtp-Source: APXvYqyoGT1GUlm57jDPi3NfCayXAx6AYYLGoZeh7xRZ4d44Yr9WcKsjDtlNcPNjBhu8ffzk1TnlIg==
X-Received: by 2002:a81:f54:: with SMTP id 81mr16837446ywp.330.1569945668946;
        Tue, 01 Oct 2019 09:01:08 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a25:41c3:: with SMTP id o186ls2147422yba.13.gmail; Tue, 01
 Oct 2019 09:01:08 -0700 (PDT)
X-Received: by 2002:a25:830b:: with SMTP id s11mr11371263ybk.224.1569945668574;
        Tue, 01 Oct 2019 09:01:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1569945668; cv=none;
        d=google.com; s=arc-20160816;
        b=K8zak3INBvMyE7pdkF+4dqBJf7m5DQYr5UwvpA/xOPCCACz5oO19OUeesfy0mUt04w
         Z5CgnNBP3hD1SvsrlxQ4Thu8aWd5a5y7EpQl56N9opxrl9JO7Q4MZj2hgKHEy0RA7hOr
         MTBC+xvall9zNsF7h9z8rRa3tdHvEs6b1XP98Z7Y0yo7VvIJnBRLG4UhSylmHFEvPFp/
         45OsoQiwVYVns6j6lNYpPyJ/HvCo7Ttxj750m1MfVlNQGNnXPn+1uKcKFYfIJe0vlHxP
         NBazTc7OGl3q2D8rU9PUoWZjgcBAJ6WkYp+ajYwv1sJLp1J+f0ro38YY5xkBX9Fg2zvc
         CLrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=x01awrD5TSlsk6NlvH+kQSXg+iJmGObI88cW5UgsE3c=;
        b=MapzLVoTYryQAb5GUD9cHzsDnIel84WTgiVUC630QmSIAfG9NmxG72yo2sII/EFuEM
         YzgUDE67H6nZ8hxR4t5I+BfcqG8azS/SN67KaflljeNNP+OKz15TO0zXQi/8TNWqVDnb
         x28TPLLPjMyrVWe2sNoRz3wfTpvN212uTdBzWJ5UX0uNEwG0LJc1/6UoYoNDo6LyvVXz
         bfptyOPCzsqYgi7Zgzpiwv/vbHzDsFkRkXJ0/g7H2siiNxO0ZJiAV5oifWaozWaV9k0E
         YRwd61XgfWMGv0nboJCSN65JGu4TPXyFw1x/nwSi0j/VCxf+aCt1KOw0dDTc4cxGjrvz
         NG8Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of arndbergmann@gmail.com designates 209.85.160.196 as permitted sender) smtp.mailfrom=arndbergmann@gmail.com
Received: from mail-qt1-f196.google.com (mail-qt1-f196.google.com. [209.85.160.196])
        by gmr-mx.google.com with ESMTPS id r70si1223236ybc.1.2019.10.01.09.01.08
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Oct 2019 09:01:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of arndbergmann@gmail.com designates 209.85.160.196 as permitted sender) client-ip=209.85.160.196;
Received: by mail-qt1-f196.google.com with SMTP id r5so22296705qtd.0
        for <clang-built-linux@googlegroups.com>; Tue, 01 Oct 2019 09:01:08 -0700 (PDT)
X-Received: by 2002:a05:6214:2b0:: with SMTP id m16mr25953761qvv.45.1569945667079;
 Tue, 01 Oct 2019 09:01:07 -0700 (PDT)
MIME-Version: 1.0
References: <20191001142227.1227176-1-arnd@arndb.de> <1569940805.5576.257.camel@lca.pw>
In-Reply-To: <1569940805.5576.257.camel@lca.pw>
From: Arnd Bergmann <arnd@arndb.de>
Date: Tue, 1 Oct 2019 18:00:50 +0200
Message-ID: <CAK8P3a04nMwy3VpdtD6x_tdPC14LPPbt3JKrGN48qRo_sDVk-Q@mail.gmail.com>
Subject: Re: [PATCH] mm/memcontrol.c: fix another unused function warning
To: Qian Cai <cai@lca.pw>
Cc: Johannes Weiner <hannes@cmpxchg.org>, Michal Hocko <mhocko@kernel.org>, 
	Vladimir Davydov <vdavydov.dev@gmail.com>, Michal Hocko <mhocko@suse.com>, 
	Andrew Morton <akpm@linux-foundation.org>, Roman Gushchin <guro@fb.com>, 
	Shakeel Butt <shakeelb@google.com>, Chris Down <chris@chrisdown.name>, Tejun Heo <tj@kernel.org>, 
	cgroups@vger.kernel.org, Linux-MM <linux-mm@kvack.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	clang-built-linux <clang-built-linux@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: arnd@arndb.de
X-Original-Authentication-Results: gmr-mx.google.com;       spf=pass
 (google.com: domain of arndbergmann@gmail.com designates 209.85.160.196 as
 permitted sender) smtp.mailfrom=arndbergmann@gmail.com
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

On Tue, Oct 1, 2019 at 4:40 PM Qian Cai <cai@lca.pw> wrote:
>
> On Tue, 2019-10-01 at 16:22 +0200, Arnd Bergmann wrote:
> > Removing the mem_cgroup_id_get() stub function introduced a new warning
> > of the same kind when CONFIG_MMU is disabled:
>
> Shouldn't CONFIG_MEMCG depends on CONFIG_MMU instead?

Maybe. Generally we allow building a lot of stuff without CONFIG_MMU that
may not make sense, so I just followed the same idea here.

      Arnd

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CAK8P3a04nMwy3VpdtD6x_tdPC14LPPbt3JKrGN48qRo_sDVk-Q%40mail.gmail.com.
