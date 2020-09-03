Return-Path: <clang-built-linux+bncBC2ORX645YPRBPWQYX5AKGQE3KDEZDY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-wm1-x33e.google.com (mail-wm1-x33e.google.com [IPv6:2a00:1450:4864:20::33e])
	by mail.lfdr.de (Postfix) with ESMTPS id 6367C25CD0F
	for <lists+clang-built-linux@lfdr.de>; Fri,  4 Sep 2020 00:03:43 +0200 (CEST)
Received: by mail-wm1-x33e.google.com with SMTP id m125sf1439726wmm.7
        for <lists+clang-built-linux@lfdr.de>; Thu, 03 Sep 2020 15:03:43 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1599170623; cv=pass;
        d=google.com; s=arc-20160816;
        b=EDzSyk11/hKifAHN36WUDmIVF16uhYMgeRFA30LvKok92W0lLNfYQSgMC3C3waypgI
         NjOghBLT3GRjz/VF/fnB/rCSSs5LxkQ88GpXpIv4u3zfRJVWJjswSwh8yZgtY5NvFlM/
         HyFGtDUqaqhXSbUGDn1VfJLMn4BTiqXBvg8Pn4AGvi9n/0TdvcAKAElQI0jrGL0y+p0j
         Mmc+0aUuSEd68fb3vl3Mix1D/GS32/Qs9LyUuyNr3gHxwVcRlx25EYORfmLvYedsSJ6p
         Pc72eDkHYvyvdbdhO+q5I+t2+ZozNg76iTes4YYx5a5MLfWQc/4ta2726C+CqYsdjut5
         H+2Q==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:reply-to:cc:to:subject:message-id
         :date:from:in-reply-to:references:mime-version:dkim-signature;
        bh=IrEbP/Ij+mj8QU2GlBpcJX3bWn78tqS5zJucSuG0Smg=;
        b=TAZj5VaHJ0VtbAnwz5yGkSYeIaAf0cmyuGqhX4zKHqY2mLPr4w8p/x+cuW1Sgsm3KQ
         dGiM85DphquzbXCb8MQ008oK2uGxN8NaYgatpsB8tWNH+T+QYba2FYGUuex5ZVan3iH/
         yscubGYZP5m3NB2bVuchBdedYlgn6h+pgfDept/LCXlCMeBXj33lxP+MtnshkmBLaMmR
         Gt/iFvZcWYBlwAb4rEH8+i3TcQLPmC7wy+24AK8kZ/F973ysrggWDKIHaVUH+F3eTqOf
         nfPxpqf1SHtgGTL1hTEwx+Jg2SQerxr3uRiwVVJh12W3dSZ9WMApQ4d419G6ZXZkXPSS
         3hPg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=KSOF4MSb;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2a00:1450:4864:20::543 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:x-original-sender:x-original-authentication-results:reply-to
         :precedence:mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IrEbP/Ij+mj8QU2GlBpcJX3bWn78tqS5zJucSuG0Smg=;
        b=kXvgc+ICHrb8VrF1zoS8CfSlMy27ckuL+RIadTBWK0tgmm+zOMR3DNiWYp1R92hHez
         PQf8S+wS9m7WItgMD/6rZxCW18BpUWtDJh9BwN5Bf+zDbe4dfOGggq17p06bCDXiMALJ
         pN83hqKt/ud/vlHWTHMWy6EumPRH3CnqZ1RWSfkYkncOxwUIgGT8+BmjDR8JzLY2SFvM
         CrZQ4eORFlluvcEvpMZqnMLUDWe/X4GzPk2vf5WNE1yLZnsDisV2ApdNrwaXZe3AnwJx
         afsEFRRlFdMKylkUaPbA7FFAT+EixTGihgjdJnAkj/62/WbQx+Nb9LyD6x4mbWUuiq+y
         0kEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:x-original-sender
         :x-original-authentication-results:reply-to:precedence:mailing-list
         :list-id:x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=IrEbP/Ij+mj8QU2GlBpcJX3bWn78tqS5zJucSuG0Smg=;
        b=lGzaiUcUa7gMRSTREtYx1PsEHqItwhwu64zaz9Lld4BHbeVvmODcvqZ2BoSUNRFOvH
         MxCINwFuF74Ek67oTgdTW38LdTAcLAak0h+jl0LMuLwa1KM15ukzNL1CYBuzWZPWaXca
         wkg+co3DzyBPv++9DSEmQWzxgNd7HFAUQj3gbhAqDu0uRbR8m18fj0tdTFr5Y/plquIb
         nXg2avjpGJJtnq89yRbVq9KsU+PScTt0JfTfCNgW7vopnr9woo6soxXRN7Yq0Ym8AhXY
         SLSXU8ZHdiZ5q0BjSHGd1ivFC2PAwQNCC4oFXqfe3tmWaqVvJn666BHYGoXUcH0FxH2M
         zhtQ==
X-Gm-Message-State: AOAM533ocjucKXPQqkZ6Hp+bADvljX39jkXliHfBOKQ32807zJsIw3lP
	jx7gpQHkeQxIlu6iErYH1RE=
X-Google-Smtp-Source: ABdhPJz0EuT1ynrknvdxDfCuppTv4Sn7RobS+0xhrtSCtlK5q6g8D2Pv6/3CPS0HOqJnehnJFAbKSg==
X-Received: by 2002:a5d:570b:: with SMTP id a11mr813075wrv.139.1599170623133;
        Thu, 03 Sep 2020 15:03:43 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:adf:8288:: with SMTP id 8ls6387396wrc.0.gmail; Thu, 03 Sep
 2020 15:03:42 -0700 (PDT)
X-Received: by 2002:adf:fa52:: with SMTP id y18mr4616428wrr.264.1599170622394;
        Thu, 03 Sep 2020 15:03:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1599170622; cv=none;
        d=google.com; s=arc-20160816;
        b=jDJk5t0fwhdQ2o2SpLyP0o4MzFuv9B+Gp2Y/Ur4NMHawL6nyQdJDhBlX54WTaln+uN
         ddwEY8NR4jUMbn5upQ6iOkaDrACulHqInA8pgatcxComPa4M5L2xPd0mRH9KoQrsO1Ka
         b1OenwLx2AWQVExkqJ12fMQ1x6EkcSTHqxTSBRtY+ryrXVZm/ye10MO3eeKqMrlmLj6i
         cqNBR9mtrzdZv/lJnbcixVSgUXvh6eSQQILH8Oad+p2W/X4jRGrCm5HA/+nyVuhum6ON
         9Pb81T3pfxWqPZsAHMTpQI5t/7kV3CShdXWh8OTFb1C80hcrsk5brOYl95tyrHIliXr9
         puLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=qVIO+W41RwcDMaSobjfrJM37v+XlNEpsXghdOpMJtkI=;
        b=d+vnFqn2X3VH5X39NdzZvbngLG5hsyj6ACXumLObbDC5voHnJZk1MNHVmTGoe6Wi9q
         L6d2BYjGmM/4aYBGpr5B35QyoRkYPm4sqKXSxDmCdValVCu+bY0jSKKZV371js4t1f8E
         fyxbxGzXCpiTLi86ZDwd6lSgn6wYwYtJHSWqu3CLZBbTsToHVwNkPWhv4VG5VCXbtccD
         xgTTM1LQKY9c02ncBcFOlsF5MmlL3nuZS7BLSm/qaDVEM/p0uSilcNscZF0eHR9aXNoL
         FbbTv8zV9UUGnHyQBfhI05MHikHVG2y0UAIgNlT3ictHVwGuMMKQ4mYNT00RfKNPKcZU
         ylbA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@google.com header.s=20161025 header.b=KSOF4MSb;
       spf=pass (google.com: domain of samitolvanen@google.com designates 2a00:1450:4864:20::543 as permitted sender) smtp.mailfrom=samitolvanen@google.com;
       dmarc=pass (p=REJECT sp=REJECT dis=NONE) header.from=google.com
Received: from mail-ed1-x543.google.com (mail-ed1-x543.google.com. [2a00:1450:4864:20::543])
        by gmr-mx.google.com with ESMTPS id q2si136381wrx.4.2020.09.03.15.03.42
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Sep 2020 15:03:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of samitolvanen@google.com designates 2a00:1450:4864:20::543 as permitted sender) client-ip=2a00:1450:4864:20::543;
Received: by mail-ed1-x543.google.com with SMTP id n13so4181675edo.10
        for <clang-built-linux@googlegroups.com>; Thu, 03 Sep 2020 15:03:42 -0700 (PDT)
X-Received: by 2002:a50:e004:: with SMTP id e4mr5429575edl.114.1599170621796;
 Thu, 03 Sep 2020 15:03:41 -0700 (PDT)
MIME-Version: 1.0
References: <20200624203200.78870-1-samitolvanen@google.com>
 <20200903203053.3411268-1-samitolvanen@google.com> <20200903203053.3411268-6-samitolvanen@google.com>
 <202009031450.31C71DB@keescook>
In-Reply-To: <202009031450.31C71DB@keescook>
From: "'Sami Tolvanen' via Clang Built Linux" <clang-built-linux@googlegroups.com>
Date: Thu, 3 Sep 2020 15:03:30 -0700
Message-ID: <CABCJKueF1RbpOKHsA8yS_yMujzHi8dzAVz8APwpMJyMTTGhmDA@mail.gmail.com>
Subject: Re: [PATCH v2 05/28] objtool: Add a pass for generating __mcount_loc
To: Kees Cook <keescook@chromium.org>
Cc: Masahiro Yamada <masahiroy@kernel.org>, Will Deacon <will@kernel.org>, 
	Peter Zijlstra <peterz@infradead.org>, Steven Rostedt <rostedt@goodmis.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Paul E. McKenney" <paulmck@kernel.org>, 
	Nick Desaulniers <ndesaulniers@google.com>, 
	clang-built-linux <clang-built-linux@googlegroups.com>, 
	Kernel Hardening <kernel-hardening@lists.openwall.com>, 
	linux-arch <linux-arch@vger.kernel.org>, 
	linux-arm-kernel <linux-arm-kernel@lists.infradead.org>, 
	linux-kbuild <linux-kbuild@vger.kernel.org>, LKML <linux-kernel@vger.kernel.org>, 
	linux-pci@vger.kernel.org, X86 ML <x86@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-Original-Sender: samitolvanen@google.com
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@google.com header.s=20161025 header.b=KSOF4MSb;       spf=pass
 (google.com: domain of samitolvanen@google.com designates 2a00:1450:4864:20::543
 as permitted sender) smtp.mailfrom=samitolvanen@google.com;       dmarc=pass
 (p=REJECT sp=REJECT dis=NONE) header.from=google.com
X-Original-From: Sami Tolvanen <samitolvanen@google.com>
Reply-To: Sami Tolvanen <samitolvanen@google.com>
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

On Thu, Sep 3, 2020 at 2:51 PM Kees Cook <keescook@chromium.org> wrote:
>
> On Thu, Sep 03, 2020 at 01:30:30PM -0700, Sami Tolvanen wrote:
> > From: Peter Zijlstra <peterz@infradead.org>
> >
> > Add the --mcount option for generating __mcount_loc sections
> > needed for dynamic ftrace. Using this pass requires the kernel to
> > be compiled with -mfentry and CC_USING_NOP_MCOUNT to be defined
> > in Makefile.
> >
> > Link: https://lore.kernel.org/lkml/20200625200235.GQ4781@hirez.programming.kicks-ass.net/
> > Signed-off-by: Peter Zijlstra <peterz@infradead.org>
>
> Hmm, I'm not sure why this hasn't gotten picked up yet. Is this expected
> to go through -tip or something else?

Note that I picked up this patch from Peter's original email, to which
I included a link in the commit message, but it wasn't officially
submitted as a patch. However, the previous discussion seems to have
died, so I included the patch in this series, as it cleanly solves the
problem of whitelisting non-call references to __fentry__. I was
hoping for Peter and Steven to comment on how they prefer to proceed
here.

Sami

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/CABCJKueF1RbpOKHsA8yS_yMujzHi8dzAVz8APwpMJyMTTGhmDA%40mail.gmail.com.
