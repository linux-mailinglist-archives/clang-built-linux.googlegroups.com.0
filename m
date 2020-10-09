Return-Path: <clang-built-linux+bncBAABBEULQP6AKGQELX54Z3I@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-il1-x139.google.com (mail-il1-x139.google.com [IPv6:2607:f8b0:4864:20::139])
	by mail.lfdr.de (Postfix) with ESMTPS id A921B28999F
	for <lists+clang-built-linux@lfdr.de>; Fri,  9 Oct 2020 22:18:27 +0200 (CEST)
Received: by mail-il1-x139.google.com with SMTP id c66sf7795265ilf.4
        for <lists+clang-built-linux@lfdr.de>; Fri, 09 Oct 2020 13:18:27 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602274706; cv=pass;
        d=google.com; s=arc-20160816;
        b=jv7uaNEN+u5xI9j+muBOTcGShGClyKHBjrzf2r2QTKUI8cXpdGvoeK03yipL4pXOjQ
         Tn343ZL2facs27gqPmtD9cXH/mKBq9p7xueArzb1DhflyScr8TjDWfIxVn74inJZtUZY
         /pFax8E5Qe/OeDsn1yVkWL3LiRnHY+84uAz1v7vg7IuxPwhdgU2aj+hkRv34fCCTfpUH
         rj9C007hMoFSg73nxTIIt38XYXZ+QNkK9NexljGPZQTXFSIvGY3kohGqQ4yjth4yo+Rs
         zaPmUk4np/aSscbImkLOB8S50AddJQAPV/6xmewqmLFI78fFTgmgr2ce/JjwP3L3evLd
         P5Kw==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-disposition:mime-version:references:reply-to:message-id
         :subject:cc:to:from:date:sender:dkim-signature;
        bh=bLKRIQTe3e2xOnZDauvXcM2oW/ZGXR/tYuy++YpS3bI=;
        b=cSmmKOWD80fN9DYpCjtm38U/cTFaHZF/HXDvRTXx6Sk53hHD49wwxdY4n2A3sVQmxW
         2RVbvAfyCZP8Nvb25jbx8Szavc16wRV/k2g7FDdXIvRr4ClyzCVIp9AnC8Uf2KokMF4J
         jUg14OzvUR46uaGVK3ZwOD/xturEGntRncDq46G4y+chB4SmVBaaMt2N/0jgamGcMJOK
         0QPM3HHC6JOS7Yq0Sp5cjZ3jq9bBAAxY1alEIfaFbJJUc1cK5T9JFopGb6YuGlPmDYoO
         2oVzhGVU6o8NK6dGGzaaN9beNqO34n4XG1LMxojF34oIP4lWVmpWhAjAIAxcDsKgd1cG
         s6cQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="n/kZTsz7";
       spf=pass (google.com: domain of srs0=ds6p=dq=paulmck-thinkpad-p72.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=dS6P=DQ=paulmck-ThinkPad-P72.home=paulmck@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:reply-to:references
         :mime-version:content-disposition:in-reply-to:user-agent
         :x-original-sender:x-original-authentication-results:precedence
         :mailing-list:list-id:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=bLKRIQTe3e2xOnZDauvXcM2oW/ZGXR/tYuy++YpS3bI=;
        b=BhRcBiV1pJOmAC7oRgXnoTMatp/MDAD5b7DAOSXF0k+uXkgxOkf4MYX2UirU4UzU/f
         +HSQrAZ5vu7OVODg5jIu6hJGbL6SQqeL6GJgtqBm4jaj4Z5WLaczC1P9hWJw43aMd3Wx
         eqqaQQSmyGteJ/PhysChlhpOCgqKIlQi9uK0wdbzzQTSZoEnyC70bUhn6Urn9blPpmFN
         LHkzMk+31XC4cJ6moMnfp43O0FQs9qzkDxTpsUhFJBj8Ac+NvuvUr9xFPJsxa2zd1THm
         qxVdPhX7n2RLwtmgDIY8LTZmwQt2Y88EsuALgnuvTrE1IaXdNZ9vKjRWWD+nNgcUR64o
         OkHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :reply-to:references:mime-version:content-disposition:in-reply-to
         :user-agent:x-original-sender:x-original-authentication-results
         :precedence:mailing-list:list-id:x-spam-checked-in-group:list-post
         :list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=bLKRIQTe3e2xOnZDauvXcM2oW/ZGXR/tYuy++YpS3bI=;
        b=TNd4sHrw+2NONC5NDDzlp6QB8U2YN0ujoZNPstXWIsZqhE3SXYvpHfl1AHQci3NcDf
         BpAExzdSL0gCghDSbJffku12aDJCFbamqPzx60aQfgjIFOMfqgw4tS/zf/fqzEfPnVlg
         XHSYldNte1hCHW+m+j24d3zOyGBAr3S5w+lvfX5pDq3sid63D/LBnz+nYX+b3aJUjkiC
         dI57DrdKYPZLVTN9bWrjox2RdrmFsngNndWEEQBZWXig4PPsrxu8mV/rgVr54JlPf+8S
         34CD2im3jydtOsZyk2DW5HzXDgR9hq+tdVJ6ljllyGw729ikXGZlDOi0ZG4ARBpbZaiC
         U4iw==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532xwW7Jm7kMsgIi2o+pugACRvUXiQKob6oOSzF4wIniBdqjwSmt
	Cf9d6PG2RNxyUTFl7bdjaMY=
X-Google-Smtp-Source: ABdhPJwqyDroXZoqZDWoNrOaEAluO62ex3oUdRTMMO5tnnz0Qa4WNTeYRi12hTkx61Oj1tC76kHiGA==
X-Received: by 2002:a6b:8bd7:: with SMTP id n206mr10121560iod.13.1602274706659;
        Fri, 09 Oct 2020 13:18:26 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a05:6638:130e:: with SMTP id r14ls256664jad.8.gmail; Fri, 09
 Oct 2020 13:18:26 -0700 (PDT)
X-Received: by 2002:a02:7b1d:: with SMTP id q29mr12220446jac.118.1602274706389;
        Fri, 09 Oct 2020 13:18:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602274706; cv=none;
        d=google.com; s=arc-20160816;
        b=Y81dHuBydkjw6qa8Xwo1zEuK0o2zWwXvqG8EMOYCuCN1bVZCzb7XXBLND029SLYsdf
         RgORAdttGDBe21u9JXhMXRU9qGmuWJ5/nVLL0vQwxKBRhErOp7N96dfvC82BjbxRzNj6
         hBYgukHg4QQLV2jm2SgrFjptoZMdREJup7MQkk/DS3SYOP77pciYkDbf5cMMMnbskOzN
         J+ewPSwf+Aj7TD6HAJSQGF4HwBF54xISDtM6OeMeOz/nyM6XDRZSAqvPrmGAZ/gTLQyO
         3qtPOUV7zCC8xCsIYwFpTq0cPcM9DKwbqXVtE7b4MCJgngfhHRAEZVhFZQKgrR54Pvay
         075g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=/JXADfI4TWtWFji/KYVN0czjmieIXL2MSs4wwZDBFps=;
        b=MyAzKc1wvB31Ayjq9l4OIDte+8KAwrfXeXKhBj+ISpJOLaFPyqjSr45q80/Rsnf29y
         FkbyvL0ClNwoHw/aCw6h6uOeJeSaUfQPaZA6+M875Hhg0JyCkxUgWNzXdAPJpIT/q228
         Gi9nMm0+FOq0tFwVjzIqvkJqh6TPk0HWqGZTQLmLQytCcafoLMW1doevAxYJuLvUAiU2
         p/FU5TFv/uujaa9IP2yr1/jcK0x3jCPMEJHgN2pWoIDPxFqQ4Efqbe5hPTRYS3DI5gKK
         Jt7/2LPe4YNF0M4Y/6j4LXP3/0qp7zS+ZU8BueC+9tG45CCEbFw9fORE1fvrX/cCxQxK
         3L5w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="n/kZTsz7";
       spf=pass (google.com: domain of srs0=ds6p=dq=paulmck-thinkpad-p72.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=dS6P=DQ=paulmck-ThinkPad-P72.home=paulmck@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id n86si665516ild.4.2020.10.09.13.18.26
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Oct 2020 13:18:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of srs0=ds6p=dq=paulmck-thinkpad-p72.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from paulmck-ThinkPad-P72.home (50-39-104-11.bvtn.or.frontiernet.net [50.39.104.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 9A59D2222F;
	Fri,  9 Oct 2020 20:18:25 +0000 (UTC)
Received: by paulmck-ThinkPad-P72.home (Postfix, from userid 1000)
	id 5E9C235227D5; Fri,  9 Oct 2020 13:18:25 -0700 (PDT)
Date: Fri, 9 Oct 2020 13:18:25 -0700
From: "Paul E. McKenney" <paulmck@kernel.org>
To: trix@redhat.com
Cc: dave@stgolabs.net, josh@joshtriplett.org, rostedt@goodmis.org,
	mathieu.desnoyers@efficios.com, jiangshanlai@gmail.com,
	joel@joelfernandes.org, natechancellor@gmail.com,
	ndesaulniers@google.com, linux-kernel@vger.kernel.org,
	rcu@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] rcutorture: remove unneeded check
Message-ID: <20201009201825.GL29330@paulmck-ThinkPad-P72>
Reply-To: paulmck@kernel.org
References: <20201009194736.2364-1-trix@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
In-Reply-To: <20201009194736.2364-1-trix@redhat.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: paulmck@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b="n/kZTsz7";       spf=pass
 (google.com: domain of srs0=ds6p=dq=paulmck-thinkpad-p72.home=paulmck@kernel.org
 designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=dS6P=DQ=paulmck-ThinkPad-P72.home=paulmck@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
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

On Fri, Oct 09, 2020 at 12:47:36PM -0700, trix@redhat.com wrote:
> From: Tom Rix <trix@redhat.com>
> 
> clang static analysis reports this problem:
> 
> rcutorture.c:1999:2: warning: Called function pointer
>   is null (null dereference)
>         cur_ops->sync(); /* Later readers see above write. */
>         ^~~~~~~~~~~~~~~
> 
> This is a false positive triggered by an earlier, later ignored
> NULL check of sync() op.  By inspection of the rcu_torture_ops,
> the sync() op is never uninitialized.  So this earlier check is
> not needed.

You lost me on this one.  This check is at the very beginning of
rcu_torture_fwd_prog_nr().  Or are you saying that clang is seeing an
earlier check in one of rcu_torture_fwd_prog_nr()'s callers?  If so,
where exactly is this check?

In any case, the check is needed because all three functions are invoked
if there is a self-propagating RCU callback that ensures that there is
always an RCU grace period outstanding.

Ah.  Is clang doing local analysis and assuming that because there was
a NULL check earlier, then the pointer might be NULL later?  That does
not seem to me to be a sound check.

So please let me know exactly what is causing clang to emit this
diagnostic.  It might or might not be worth fixing this, but either way
I need to understand the situation so as to be able to understand the
set of feasible fixes.

						Thanx, Paul

> Signed-off-by: Tom Rix <trix@redhat.com>
> ---
>  kernel/rcu/rcutorture.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/kernel/rcu/rcutorture.c b/kernel/rcu/rcutorture.c
> index beba9e7963c8..6efc03a1d623 100644
> --- a/kernel/rcu/rcutorture.c
> +++ b/kernel/rcu/rcutorture.c
> @@ -1989,7 +1989,7 @@ static void rcu_torture_fwd_prog_nr(struct rcu_fwd *rfp,
>  	unsigned long stopat;
>  	static DEFINE_TORTURE_RANDOM(trs);
>  
> -	if  (cur_ops->call && cur_ops->sync && cur_ops->cb_barrier) {
> +	if  (cur_ops->call && cur_ops->cb_barrier) {
>  		init_rcu_head_on_stack(&fcs.rh);
>  		selfpropcb = true;
>  	}
> -- 
> 2.18.1
> 

-- 
You received this message because you are subscribed to the Google Groups "Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an email to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/clang-built-linux/20201009201825.GL29330%40paulmck-ThinkPad-P72.
