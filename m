Return-Path: <clang-built-linux+bncBAABBS7OQP6AKGQEC5NIREY@googlegroups.com>
X-Original-To: lists+clang-built-linux@lfdr.de
Delivered-To: lists+clang-built-linux@lfdr.de
Received: from mail-ua1-x940.google.com (mail-ua1-x940.google.com [IPv6:2607:f8b0:4864:20::940])
	by mail.lfdr.de (Postfix) with ESMTPS id BE5B1289C3A
	for <lists+clang-built-linux@lfdr.de>; Sat, 10 Oct 2020 01:50:36 +0200 (CEST)
Received: by mail-ua1-x940.google.com with SMTP id q3sf2997140uad.16
        for <lists+clang-built-linux@lfdr.de>; Fri, 09 Oct 2020 16:50:36 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1602287435; cv=pass;
        d=google.com; s=arc-20160816;
        b=zOGnJmXfolMXI84reCG2HX4D9SIxzmF4FOXdIafa9C3bfonAVTFAtiCqTnO8KBiVI7
         c+ykNeF3NVQgj5YPbcSmy8TpGEBasYesaD5pevPy9sZtHMyD12Emx8HcRkxytO1eE7/2
         sDG9OKgL8hUyVm/sahVVAUxkso0cc1lLdk7c43TFAUmrqJly+VuSZTLQmlxg2expd0K/
         O8y4jkrmhuJl5wDC63iuktt4JEyB6yuukk1sXcNURLDkh8vx0Sojiwr1Ti+Hvj6jSSKz
         cPDFuO/ULpm4gGaiUUiegyNMQzOZ5meirwAu3k+VZdT0zBiveHkcs0I00X09+X2yX3Gu
         fFCg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=list-unsubscribe:list-subscribe:list-archive:list-help:list-post
         :list-id:mailing-list:precedence:user-agent:in-reply-to
         :content-transfer-encoding:content-disposition:mime-version
         :references:reply-to:message-id:subject:cc:to:from:date:sender
         :dkim-signature;
        bh=TkP/LMkZwXnd9pjRP/Tmwj8bnTmmnq7qD6imx8i/tgg=;
        b=V1jLg/SB7bncxJ+LnW/TeSEUMrFfZfluntw1y53DH2Atcd93YfBDQqji3zDoprqQGm
         iMJcVVjS5XvZPHhUCnHfTw3vOYVuHC1i+y5w0zDVeBq8c7wzl1WBHmOwlsoknWZDaR7I
         /MzhFZ62if4hSL2jF4USR4HeDqLObXTPQYCfgq8sGJWH4npNI2pLBwZjyz8zS+CLdtNW
         RFoWyoQ7Wxyj6J7TKmrsY9XfK+D2PZvPbGvcc9rKyBBgjMPXD+diQBvaUbS6hp33MXZ2
         wSwCrgS7EPROypvIiKWnrcAoBPRkTLWdF0XPAZxIMcG6iOTwTbhXZo4qGHFkqO58ExCg
         ND/g==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=LXKdzvvV;
       spf=pass (google.com: domain of srs0=ds6p=dq=paulmck-thinkpad-p72.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=dS6P=DQ=paulmck-ThinkPad-P72.home=paulmck@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlegroups.com; s=20161025;
        h=sender:date:from:to:cc:subject:message-id:reply-to:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :list-post:list-help:list-archive:list-subscribe:list-unsubscribe;
        bh=TkP/LMkZwXnd9pjRP/Tmwj8bnTmmnq7qD6imx8i/tgg=;
        b=mOUd9fbaEx1elq91vlQeKwwZlJMwmY8BZ/dymWmWUEBzUdRlTbDmNL6JmbxVNTb6o7
         D46Ql82iK6HS2QJgwf+7wwG1w+bgaTJdexCQfg6O4bk8AoHjU5eO7hOSSijtGwNNodcP
         AwyFGNoMb+vpkmF3c9vsxzXew11It/A1VqkbI1joklQvp3mUY288hjJXOPi4jiOVjsXG
         MJ5ZZCimx6WzcljSZUOqGI6wEIeg4i2JYZ3B6yFSzk52bMuxL+lP8nR3IZgI63yHfUFy
         WcZQU1FHyVslsvLf3U+jJJWvoI6AySpieBDvEwlWTTXlbpoeLu3k8sOrCH//VjCVSdY5
         n/fQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=sender:x-gm-message-state:date:from:to:cc:subject:message-id
         :reply-to:references:mime-version:content-disposition
         :content-transfer-encoding:in-reply-to:user-agent:x-original-sender
         :x-original-authentication-results:precedence:mailing-list:list-id
         :x-spam-checked-in-group:list-post:list-help:list-archive
         :list-subscribe:list-unsubscribe;
        bh=TkP/LMkZwXnd9pjRP/Tmwj8bnTmmnq7qD6imx8i/tgg=;
        b=NwXavJKwIivNl1eVmQ64CxlHeN9knO/+M67uJHH3bXsWtWj0NRKVvxYvxrchoTtpmw
         77O40Or6lr2UEgjCBcbdiYB5Cs6HyO+xv5jIpkSbAjWHrb+IfmTASTDSObtl6C8uv5wP
         lWgkYcwGvA+8ldvAJngwIEASwROnMeFMoWa6QcnGZlmI30FhbDoDnWaYP6752XM140lv
         ICkVSbkGJ0mWVCihRKU7vyadqCzlulGkCLouFyeO+q3WjqKySAH3O9ikNgBI1TQGE0XQ
         Imt7lM3Q9cE51DRK2rJWHGJcWf9ll3mm/G1xHlTKLwh+YIhEjBk+pdfy3BTDYOfxf8ay
         hO5g==
Sender: clang-built-linux@googlegroups.com
X-Gm-Message-State: AOAM530S3eEdRuHY6zSkKdXMN4h51JwywWCGtTWoGYs18PJqK4LRSN4K
	ytXYLDxDAl50elga3bsCkRo=
X-Google-Smtp-Source: ABdhPJwCbcs8E2JD2HC1ORYyLKviriupxVA+aMU3nSCgUbiONP3kJg3DONgcr74K0d7T+t/qSqoz6g==
X-Received: by 2002:a67:cb02:: with SMTP id b2mr9885626vsl.46.1602287435464;
        Fri, 09 Oct 2020 16:50:35 -0700 (PDT)
X-BeenThere: clang-built-linux@googlegroups.com
Received: by 2002:ab0:36c9:: with SMTP id v9ls793579uau.1.gmail; Fri, 09 Oct
 2020 16:50:35 -0700 (PDT)
X-Received: by 2002:ab0:658c:: with SMTP id v12mr9327357uam.39.1602287435039;
        Fri, 09 Oct 2020 16:50:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602287435; cv=none;
        d=google.com; s=arc-20160816;
        b=n40/jehKDApFdZLPK3H4iEjnn+tD/AUFWFwOGE5t1rwoA+x/s//7bJ5dNafYqdOTDj
         +1c6Sw482RPSsddsgv9LYYAsuzE7BmkE9h3ZDWheLy8dteCUdzXl4zUe4DF7/MlUr4PI
         AeHYGmwdIHWO9byaumO1RBaTMROLj1yyCe7uZlPt9Gey0DeUNjSfbUz/7AD8O1GgqbK1
         FlE5V9+OUgEr1p0N0Iph+n9MPn03ST3qQRVRpEir/2RCv8JlZsP1f0d1ymndkQ7Hjy+0
         oLgaY5zvs8CBnvwe4ZK7F0WaHt2xwxBm0SHwn4qEvWTjzzAGH4ZZKsDLV1uuDlFZC+o+
         LhRg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-transfer-encoding
         :content-disposition:mime-version:references:reply-to:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=jwWujmqEq1AaWK5X82jo4rN1l1hGJ+Kzh40MLGsRrMM=;
        b=sddRIqKnSbbWjE9KwGhhHRkUYjd2SL2MYcnceWcvo2w56DaB6qI0dZJv9bxJRnBmqV
         qOCQHaZPJ4hP9lMLgZX0GdLb845Z5kj08j89OkiNMtVhjRumni2TD0iCKCxlFU4av/cw
         ub1dxPZyocnIXdW/cdYw6Gm7aC80QDLRcpXZV0fKEW3qdw9CmyJyzYW8qnuFqK2x+rPU
         xmKWOm+MTJNNfxJDg8moUpWQBDfChmnWSLJo6wS8QTyXwnFoGc49zNaoskkByX2QLRce
         Qw95poaYD090ntWnY++OmznA7mjtFsq4wrGy7odMRyz8XvV29iLVT9zfl4LrK340uD/q
         L/lw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=LXKdzvvV;
       spf=pass (google.com: domain of srs0=ds6p=dq=paulmck-thinkpad-p72.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=dS6P=DQ=paulmck-ThinkPad-P72.home=paulmck@kernel.org";
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=kernel.org
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id u25si701504vkl.5.2020.10.09.16.50.34
        for <clang-built-linux@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 09 Oct 2020 16:50:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of srs0=ds6p=dq=paulmck-thinkpad-p72.home=paulmck@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Received: from paulmck-ThinkPad-P72.home (50-39-104-11.bvtn.or.frontiernet.net [50.39.104.11])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id C307C208C7;
	Fri,  9 Oct 2020 23:50:33 +0000 (UTC)
Received: by paulmck-ThinkPad-P72.home (Postfix, from userid 1000)
	id 7D57B3522837; Fri,  9 Oct 2020 16:50:33 -0700 (PDT)
Date: Fri, 9 Oct 2020 16:50:33 -0700
From: "Paul E. McKenney" <paulmck@kernel.org>
To: Tom Rix <trix@redhat.com>
Cc: dave@stgolabs.net, josh@joshtriplett.org, rostedt@goodmis.org,
	mathieu.desnoyers@efficios.com, jiangshanlai@gmail.com,
	joel@joelfernandes.org, natechancellor@gmail.com,
	ndesaulniers@google.com, linux-kernel@vger.kernel.org,
	rcu@vger.kernel.org, clang-built-linux@googlegroups.com
Subject: Re: [PATCH] rcutorture: remove unneeded check
Message-ID: <20201009235033.GM29330@paulmck-ThinkPad-P72>
Reply-To: paulmck@kernel.org
References: <20201009194736.2364-1-trix@redhat.com>
 <20201009201825.GL29330@paulmck-ThinkPad-P72>
 <03e3eeed-6072-ccb8-a9c6-c79a99c701b8@redhat.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="UTF-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <03e3eeed-6072-ccb8-a9c6-c79a99c701b8@redhat.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-Original-Sender: paulmck@kernel.org
X-Original-Authentication-Results: gmr-mx.google.com;       dkim=pass
 header.i=@kernel.org header.s=default header.b=LXKdzvvV;       spf=pass
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

On Fri, Oct 09, 2020 at 02:18:41PM -0700, Tom Rix wrote:
>=20
> On 10/9/20 1:18 PM, Paul E. McKenney wrote:
> > On Fri, Oct 09, 2020 at 12:47:36PM -0700, trix@redhat.com wrote:
> >> From: Tom Rix <trix@redhat.com>
> >>
> >> clang static analysis reports this problem:
> >>
> >> rcutorture.c:1999:2: warning: Called function pointer
> >>   is null (null dereference)
> >>         cur_ops->sync(); /* Later readers see above write. */
> >>         ^~~~~~~~~~~~~~~
> >>
> >> This is a false positive triggered by an earlier, later ignored
> >> NULL check of sync() op.  By inspection of the rcu_torture_ops,
> >> the sync() op is never uninitialized.  So this earlier check is
> >> not needed.
> > You lost me on this one.  This check is at the very beginning of
> > rcu_torture_fwd_prog_nr().  Or are you saying that clang is seeing an
> > earlier check in one of rcu_torture_fwd_prog_nr()'s callers?  If so,
> > where exactly is this check?
> >
> > In any case, the check is needed because all three functions are invoke=
d
> > if there is a self-propagating RCU callback that ensures that there is
> > always an RCU grace period outstanding.
> >
> > Ah.  Is clang doing local analysis and assuming that because there was
> > a NULL check earlier, then the pointer might be NULL later?  That does
> > not seem to me to be a sound check.
> >
> > So please let me know exactly what is causing clang to emit this
> > diagnostic.  It might or might not be worth fixing this, but either way
> > I need to understand the situation so as to be able to understand the
> > set of feasible fixes.
> >
> > 						Thanx, Paul
>=20
> In rcu_prog_nr() there is check for for sync.
>=20
> if ( ... cur_op->sync ...
>=20
> =C2=A0=C2=A0 do something
>=20
> This flags in clang's static analyzer as 'could be null'
>=20
> later in the function, in a reachable block it is used
>=20
> cur_ops->sync()
>=20
> I agree this is not a good check that's why i said is was a false positiv=
e.
>=20
> However when looking closer at how cur_ops is set, it is never uninitiali=
zed.
>=20
> So the check is not needed.

OK, got it, and thank you for the explanation.

> This is not a fix, the code works fine.=C2=A0 It is a small optimization.

Well, there really is a bug.  Yes, right now all ->sync pointers are
non-NULL, but they have not been in the past and might not be in the
future.  So if ->sync is NULL, rcu_torture_fwd_prog_nr() either should
not be called or it should return immediately without doing anything.

My current thought is something like the (untested) patch below, of
course with your Reported-by.

Thoughts?

							Thanx, Paul

------------------------------------------------------------------------

diff --git a/kernel/rcu/rcutorture.c b/kernel/rcu/rcutorture.c
index beba9e7..44749be 100644
--- a/kernel/rcu/rcutorture.c
+++ b/kernel/rcu/rcutorture.c
@@ -1989,7 +1989,9 @@ static void rcu_torture_fwd_prog_nr(struct rcu_fwd *r=
fp,
 	unsigned long stopat;
 	static DEFINE_TORTURE_RANDOM(trs);
=20
-	if  (cur_ops->call && cur_ops->sync && cur_ops->cb_barrier) {
+	if (!cur_ops->sync)=20
+		return; // Cannot do need_resched() forward progress testing without ->s=
ync.
+	if (cur_ops->call && cur_ops->cb_barrier) {
 		init_rcu_head_on_stack(&fcs.rh);
 		selfpropcb =3D true;
 	}
@@ -2215,8 +2217,8 @@ static int __init rcu_torture_fwd_prog_init(void)
=20
 	if (!fwd_progress)
 		return 0; /* Not requested, so don't do it. */
-	if (!cur_ops->stall_dur || cur_ops->stall_dur() <=3D 0 ||
-	    cur_ops =3D=3D &rcu_busted_ops) {
+	if ((!cur_ops->sync && !cur_ops->call) ||
+	    !cur_ops->stall_dur || cur_ops->stall_dur() <=3D 0 || cur_ops =3D=3D =
&rcu_busted_ops) {
 		VERBOSE_TOROUT_STRING("rcu_torture_fwd_prog_init: Disabled, unsupported =
by RCU flavor under test");
 		return 0;
 	}

--=20
You received this message because you are subscribed to the Google Groups "=
Clang Built Linux" group.
To unsubscribe from this group and stop receiving emails from it, send an e=
mail to clang-built-linux+unsubscribe@googlegroups.com.
To view this discussion on the web visit https://groups.google.com/d/msgid/=
clang-built-linux/20201009235033.GM29330%40paulmck-ThinkPad-P72.
