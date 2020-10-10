Return-Path: <clang-built-linux+bncBAABBIHMQ76AKGQEW46WYBQ@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-oi1-x238.google.com (mail-oi1-x238.google.com [IPv6:2607:f8b0:4864:20::238])
	by mail.lfdr.de (Postfix) with ESMTPS id 8005B28A11A
	for <lists+clang-built-linux@lfdr.de>; Sat, 10 Oct 2020 19:57:54 +0200 (CEST)
Received: by mail-oi1-x238.google.com with SMTP id b22sf5726033oib.8
        for <lists+clang-built-linux@lfdr.de>; Sat, 10 Oct 2020 10:57:54 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602352673; cv=pass;
        d=google.com; s=arc-20160816;
        b=aWtRuP3VQeTFAg4etmlvmwKNJYeleod6vHuJAN45LABnxlsCTBjDaOkEQ5PQX+pw9E
         8A5XYY/AGEe1ByGfwqr6GzWyvF6W/j75bCW2fkZ8EXQjL4SFAEqh1YR+SRTtOyOvPP07
         4koYT8g2jb+5Mb9GK06qmFZ3kNqgstPrH5LIVXyXIw3uNNqab/gIdEof7rvQP9mKr4fc
         84vCB2+RjLJj1zencpjtVV2DIgH3j+8JmUOsSLnGiPiit05kGFTKwWGqVE0g2FUlpSV/
         oUH0APQuth28ZJ0/jfJylbw+Vsts1i92fqxkynsc87ppuyA6SoYCN2icuPHpluJPGI2Q
         77RQ==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:reply-to:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=OboDoN+iQXghjI8Bb9KnH4aZB+lpcQBHww8X+z3PKlc=;
        b=M1ueFVU3wxSGSUACR+VMnmYmU3qAXPqCinRYO0CamMjyomVV5Cd7ix1WWQ7d5iEHFS
         4EKTuTL7ifQqXxHlf//Vd48Pq8RjgVq7on8IiA+8zYbkvuf1hDwPeWk8agZrywEUFYEt
         htrcMXkeFs3YhSkE3PRoGzGSfIaM4CohW03AiL1AUn3CqEA+v6vbwxx4VZIeEidYH9a4
         MIpAs2BRORUnmKx414jTLH4ye7FIHkKL7DIzmEeEuN3QB2SBB23Y1IRIsRptyl93hHIf
         MgeJPjGJY1OWE1+/H7VWsovbGXgNb5G7drf/wkv2SMn2ZoCanWwubnBZ/I+G/STT7NM7
         4RTQ==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Ij3EzWpW;
       spf=pass (google.com: domain of srs0=blqi=dr=paulmck-thinkpad-p72.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=bLqi=DR=paulmck-ThinkPad-P72.home=paulmck@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:reply-to:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=OboDoN+iQXghjI8Bb9KnH4aZB+lpcQBHww8X+z3PKlc=;
        b=F96CxWUds0xLMZ96H6JE7CMTpSjmYhZeKahZu4ezibK+a6i3o7h0ecYKZj5qx7KadR
         LQWBRjrhOnZoqOyIYgWRIjfbaYyCKYivK5P+WVvB/ONQ38KtxQpE4Jc3YzhyQpvAY84h
         kbMYc1e3Vw75nWZskBC1CpCkJanWA1uCBeNpnfZ3LrWFRQQq27FaEOz0OOWKRzVJWsON
         mPtdquq9PuNML84a9HRrVUxYmWn7bQ0NqpwVni4QuwEjC01Fgzu4UDP34w53eGGJMw83
         xpqyyKAJ1zi26DRygZ25ZqHnHFB8j9exhGwqniH0GC1hUwawS5ypfQJ6Em/o637kYInX
         b0bQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :reply-to:references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=OboDoN+iQXghjI8Bb9KnH4aZB+lpcQBHww8X+z3PKlc=;
        b=Eb+3Vii0HZpxs85ug5qrFkx0XqoDnF6fMFO+OCu0l+TUl63M/vBaANXSGYDEDzjtzO
         nVLBKCzvIDUg8SCNTkEGDj8KFzRORJKoTs5aWlFg5PaHbC+yfqV+qWmDRnQWce23bkrt
         xnfgBgJ77yEN4bTY4v6rG+vke9LGbw3QMCeR3sTWh6qYxa+P2W2v59/buptXaL2ufrA7
         Sq9e/2gfx+0jwDuNkCFhPtsXBsjLi+pFcu93kFb2cHaWqp5XVdQ9W6O2yUzJwOrY0HYB
         +vSUfdmkTH2WVfBGRNN9s9DuLhTO1UpVKz7vWh/P2JMkyGUMDRS/u1IMjUdxCUa/y+V8
         hVQQ==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM532b3qMMGnzcbe+QdVM2YYf52qFk7OWBBvFKmSbXmu0L+JNw7Kc5
	RMsXVjNps1d/o/42NXxhXKc=
X-Google-Smtp-Source: ABdhPJxP0IvW8oX4vnawlOO5bDr4oFwE+RzIqMaJmqN6tC3y3PKP1Csyrfgie0bEFPJLKHNMd9joLg==
X-Received: by 2002:a9d:5b3:: with SMTP id 48mr13606811otd.110.1602352673001;
        Sat, 10 Oct 2020 10:57:53 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:a9d:3e85:: with SMTP id b5ls2895153otc.1.gmail; Sat, 10 Oct
 2020 10:57:52 -0700 (PDT)
X-Received: by 2002:a9d:6d15:: with SMTP id o21mr13486017otp.232.1602352672663;
        Sat, 10 Oct 2020 10:57:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602352672; cv=none;
        d=google.com; s=arc-20160816;
        b=JUtvaWF2783y7/oh94b9HNLEuCwIzEuDVQPI6iWTWtRewCkI2GMFT3V02phUklrZfK
         66HRMg43qweBo1mvYfEpdm9J+0lM/ef4ySv3Zgl+OH00NrVMG5Ow5trKe24esow4QAi4
         a+FRIjT5kFr2Nka6SVxsrFVnDZyVRXy6S2KA0YerKybM+mNbo/6WAgweO4s2AMkT6mS5
         IW3EYe0YadopwEFUTgteLG6c9QzjGL1SLW19RwcGy6NivUNXUHfCFda6uhYl5JE4icp2
         fsSoK5MzCVjwd99JWOY6vSTcvdiAg/3ZCAkN0PS5fBbatJ6TlteH9f7WtlJssID8ehHs
         l1kA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:reply-to:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=qwuzovEHLivE2lijAHkfGIzJ935ZgW2RZC4dUtom6tI=;
        b=eL46bCKGVu5nwMJCxmiaT3IpaKDoKd8u1lloMXyFVn29IOmeXQDcLHrrZT8Q4Vi4W8
         y5oC6wChZJr7rbEW1vVRu7SXpJ+UagA6xps/VFBJhTkY19w7rynrVOJ6JsS+g7FUJnwg
         zEqTTrS0Yazp4uUwn5Eytcz69cj2cQhIyZZ7DLu76tcOvnkxBe/O9bEWJzTT/GYI76tp
         EZU6An1+01kQb/2FRM578wtFnv0VcmuQ+69diNVha4nV+DqgHazfswtZBb/t9Qc5FE2M
         YweqkTiCL1g3P/0mStwnB0X94uKvXeXrtOQIEKAJf5vjuUbEwTNZFPG2ADXOzvTArWqV
         DUpw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Ij3EzWpW;
       spf=pass (google.com: domain of srs0=blqi=dr=paulmck-thinkpad-p72.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=bLqi=DR=paulmck-ThinkPad-P72.home=paulmck@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id u15si1289296oth.1.2020.10.10.10.57.52
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 10 Oct 2020 10:57:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of srs0=blqi=dr=paulmck-thinkpad-p72.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from paulmck-ThinkPad-P72.home (50-39-104-11.bvtn.or.frontiernet.net [50.39.104.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id C0406224B0;
	Sat, 10 Oct 2020 17:57:51 +0000 (UTC)
Received: by paulmck-ThinkPad-P72.home (Postfix, from userid 1000)
	id 860C4352261C; Sat, 10 Oct 2020 10:57:51 -0700 (PDT)
Date: Sat, 10 Oct 2020 10:57:51 -0700
From: "Paul E. McKenney" <paulmck@kernel.org>
To: Tom Rix <trix@redhat.com>
Cc: dave@stgolabs.net, josh@joshtriplett.org, rostedt@goodmis.org,
	mathieu.desnoyers@efficios.com, jiangshanlai@gmail.com,
	joel@joelfernandes.org, natechancellor@gmail.com,
	ndesaulniers@google.com, linux-kernel@vger.kernel.org,
	rcu@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] rcutorture: remove unneeded check
Message-ID: <20201010175751.GA5714@paulmck-ThinkPad-P72>
Reply-To: paulmck@kernel.org
References: <20201009194736.2364-1-trix@redhat.com>
 <20201009201825.GL29330@paulmck-ThinkPad-P72>
 <03e3eeed-6072-ccb8-a9c6-c79a99c701b8@redhat.com>
 <20201009235033.GM29330@paulmck-ThinkPad-P72>
 <92f82632-adbd-ca85-d516-6540a49f01ab@redhat.com>
 <20201010025743.GN29330@paulmck-ThinkPad-P72>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20201010025743.GN29330@paulmck-ThinkPad-P72>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: paulmck@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=Ij3EzWpW;       spf=pass
 (google.com: domain of srs0=blqi=dr=paulmck-thinkpad-p72.home=paulmck@kernel.org
 designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=bLqi=DR=paulmck-ThinkPad-P72.home=paulmck@kernel.org";
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

On Fri, Oct 09, 2020 at 07:57:43PM -0700, Paul E. McKenney wrote:
> On Fri, Oct 09, 2020 at 05:24:37PM -0700, Tom Rix wrote:
> >=20
> > On 10/9/20 4:50 PM, Paul E. McKenney wrote:
> > > On Fri, Oct 09, 2020 at 02:18:41PM -0700, Tom Rix wrote:
> > >> On 10/9/20 1:18 PM, Paul E. McKenney wrote:
> > >>> On Fri, Oct 09, 2020 at 12:47:36PM -0700, trix@redhat.com wrote:
> > >>>> From: Tom Rix <trix@redhat.com>
> > >>>>
> > >>>> clang static analysis reports this problem:
> > >>>>
> > >>>> rcutorture.c:1999:2: warning: Called function pointer
> > >>>>   is null (null dereference)
> > >>>>         cur_ops->sync(); /* Later readers see above write. */
> > >>>>         ^~~~~~~~~~~~~~~
> > >>>>
> > >>>> This is a false positive triggered by an earlier, later ignored
> > >>>> NULL check of sync() op.  By inspection of the rcu_torture_ops,
> > >>>> the sync() op is never uninitialized.  So this earlier check is
> > >>>> not needed.
> > >>> You lost me on this one.  This check is at the very beginning of
> > >>> rcu_torture_fwd_prog_nr().  Or are you saying that clang is seeing =
an
> > >>> earlier check in one of rcu_torture_fwd_prog_nr()'s callers?  If so=
,
> > >>> where exactly is this check?
> > >>>
> > >>> In any case, the check is needed because all three functions are in=
voked
> > >>> if there is a self-propagating RCU callback that ensures that there=
 is
> > >>> always an RCU grace period outstanding.
> > >>>
> > >>> Ah.  Is clang doing local analysis and assuming that because there =
was
> > >>> a NULL check earlier, then the pointer might be NULL later?  That d=
oes
> > >>> not seem to me to be a sound check.

In this case, the diagnostic was clearly pointing out a latent bug, so
my bad.  So more of a code-review comment than a diagnostic.  Therefore,
if clang really wants to be in the code-review space, I suggest that it
more clearly explain its code-review feedback.  ;-)

							Thanx, Paul

> > >>> So please let me know exactly what is causing clang to emit this
> > >>> diagnostic.  It might or might not be worth fixing this, but either=
 way
> > >>> I need to understand the situation so as to be able to understand t=
he
> > >>> set of feasible fixes.
> > >>>
> > >>> 						Thanx, Paul
> > >> In rcu_prog_nr() there is check for for sync.
> > >>
> > >> if ( ... cur_op->sync ...
> > >>
> > >> =C2=A0=C2=A0 do something
> > >>
> > >> This flags in clang's static analyzer as 'could be null'
> > >>
> > >> later in the function, in a reachable block it is used
> > >>
> > >> cur_ops->sync()
> > >>
> > >> I agree this is not a good check that's why i said is was a false po=
sitive.
> > >>
> > >> However when looking closer at how cur_ops is set, it is never unini=
tialized.
> > >>
> > >> So the check is not needed.
> > > OK, got it, and thank you for the explanation.
> > >
> > >> This is not a fix, the code works fine.=C2=A0 It is a small optimiza=
tion.
> > > Well, there really is a bug.  Yes, right now all ->sync pointers are
> > > non-NULL, but they have not been in the past and might not be in the
> > > future.  So if ->sync is NULL, rcu_torture_fwd_prog_nr() either shoul=
d
> > > not be called or it should return immediately without doing anything.
> > >
> > > My current thought is something like the (untested) patch below, of
> > > course with your Reported-by.
> > >
> > > Thoughts?
> >=20
> > Yes that would be fine.
> >=20
> > In in review these other cases need to be been take care of.
>=20
> I am having a difficult time interpreting this sentence, but will
> optimistically assume that it means that you are good with this approach.
> If my optimism is unwarranted, please let me know so I can fix whatever
> might be broken.
>=20
> > Reported-by: Tom Rix <trix@redhat.com>
>=20
> How does the commit below look?
>=20
> 							Thanx, Paul
>=20
> ------------------------------------------------------------------------
>=20
> commit 75c79a5dd72c1bb59f6bd6c5ec36f3a6516795cd
> Author: Paul E. McKenney <paulmck@kernel.org>
> Date:   Fri Oct 9 19:51:55 2020 -0700
>=20
>     rcutorture: Don't do need_resched() testing if ->sync is NULL
>    =20
>     If cur_ops->sync is NULL, rcu_torture_fwd_prog_nr() will nevertheless
>     attempt to call through it.  This commit therefore flags cases where
>     neither need_resched() nor call_rcu() forward-progress testing
>     can be performed due to NULL function pointers, and also causes
>     rcu_torture_fwd_prog_nr() to take an early exit if cur_ops->sync()
>     is NULL.
>    =20
>     Reported-by: Tom Rix <trix@redhat.com>
>     Signed-off-by: Paul E. McKenney <paulmck@kernel.org>
>=20
> diff --git a/kernel/rcu/rcutorture.c b/kernel/rcu/rcutorture.c
> index beba9e7..44749be 100644
> --- a/kernel/rcu/rcutorture.c
> +++ b/kernel/rcu/rcutorture.c
> @@ -1989,7 +1989,9 @@ static void rcu_torture_fwd_prog_nr(struct rcu_fwd =
*rfp,
>  	unsigned long stopat;
>  	static DEFINE_TORTURE_RANDOM(trs);
> =20
> -	if  (cur_ops->call && cur_ops->sync && cur_ops->cb_barrier) {
> +	if (!cur_ops->sync)=20
> +		return; // Cannot do need_resched() forward progress testing without -=
>sync.
> +	if (cur_ops->call && cur_ops->cb_barrier) {
>  		init_rcu_head_on_stack(&fcs.rh);
>  		selfpropcb =3D true;
>  	}
> @@ -2215,8 +2217,8 @@ static int __init rcu_torture_fwd_prog_init(void)
> =20
>  	if (!fwd_progress)
>  		return 0; /* Not requested, so don't do it. */
> -	if (!cur_ops->stall_dur || cur_ops->stall_dur() <=3D 0 ||
> -	    cur_ops =3D=3D &rcu_busted_ops) {
> +	if ((!cur_ops->sync && !cur_ops->call) ||
> +	    !cur_ops->stall_dur || cur_ops->stall_dur() <=3D 0 || cur_ops =3D=
=3D &rcu_busted_ops) {
>  		VERBOSE_TOROUT_STRING("rcu_torture_fwd_prog_init: Disabled, unsupporte=
d by RCU flavor under test");
>  		return 0;
>  	}

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20201010175751.GA5714%40paulmck-ThinkPad-P72.
